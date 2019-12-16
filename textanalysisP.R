install.packages("gutenbergr")
install.packages("tm")
install.packages("topicmodels")
install.packages("stringr")
install.packages("tidytext")
install.packages("data.table")
install.packages("NLP")
install.packages("afinn")


install.packages("devtools")
library(devtools)

slam_url <- "https://cran.r-project.org/src/contrib/Archive/slam/slam_0.1-37.tar.gz"
install_url(slam_url)

pkgbuild::check_build_tools(debug = TRUE)

library(tidyverse)
library(tm)
library(stringr)
library(topicmodels)
library(gutenbergr)
library(tidytext)
library(dplyr)
library(data.table)
library(NLP)
library(afinn)

text <- ("Because I could not stop for             Death-
He kindly stopped for me -               
The Carriage held but just 0urselves - 
and Immortality")
text 

tolower(text)
removePunctuation(text)
stripWhitespace(text)
text

text1 <- tolower(text)
removePunctuation(text1)
stripWhitespace(text1)


stopwords("en")
removeWords(text1, stopwords("en"))
my_stops <- c(stopwords("en"), "death")

removeWords(text1, my_stops)

# I kept text1 not changed them to text_new 

nvec <- unlist(strsplit(text1, split = " "))
stem_text <- stemDocument(nvec)
stem_text
print(stem_text)

#this function actually broke up all words into just letters, I realized that I needed a space in the "" 

nvec <- unlist(strsplit(text1, split = " "))
stem_text <- stemDocument(nvec)
stem_text
print(stem_text)

completed_text <- stemCompletion(stem_text,nvec)
completed_text


peace_res <- read.csv("Desktop/Data Analysis - 640/info640-master/DataSets/pax_20_02_2018_1_CSV.csv", encoding = "utf-8", 
                      header = TRUE, stringsAsFactors = FALSE)
str(peace_res)
glimpse(peace_res)

names(peace_res)[names(peace_res) == "AgtId"] <- "doc_id"
peace_res$doc_id <- as.character(peace_res$doc_id)
names(peace_res)[names(peace_res)== "OthAgr"] <- "text"
colnames(peace_res)
peace_source <- DataframeSource(peace_res)
peace_corpus <- VCorpus (peace_source)

print(peace_corpus)

print(peace_corpus[[10]])
print(peace_corpus[[10]][1])

print(peace_corpus[[5]])
print(peace_corpus[[12]]) #just looking around 
print(peace_corpus[[10]][2])

peace_cleaned <- tm_map (peace_corpus, removeNumbers) 
peace_cleaned [[10]][1]

peace_cleaned <- tm_map(peace_cleaned, content_transformer(tolower))
peace_cleaned [[10]][1]

my_stops1 <- c(stopwords("en"), "agreement", "shall", "page")
peace_cleaned <- tm_map(peace_cleaned, removePunctuation)
peace_cleaned <- tm_map(peace_cleaned, stripWhitespace)
peace_cleaned <- tm_map(peace_cleaned, removeWords, my_stops1)

peace_cleaned[[10]][1]

peace_dtm <- DocumentTermMatrix(peace_cleaned)
peace_dtm

peace_dtm <- DocumentTermMatrix(peace_cleaned)
peace_dtm

unique_indexes <- unique(peace_dtm$i)
peace_dtm <- peace_dtm[unique_indexes,]
peace_dtm

peace_dtm_tidy <- tidy(peace_dtm)
peace_dtm_tidy

cleaned_peace_res <- peace_dtm_tidy %>%
  group_by(document)%>%
  mutate(terms = toString(rep(term, count))) %>%
  select(document, terms)%>%
  unique()
head(cleaned_peace_res)

k <- 6
peace_lda <- LDA(peace_dtm, k=k, control = list(seed=1234))
peace_lda
peace_lda_words <- terms(peace_lda,5)

peace_lda_topics <- as.matrix(peace_lda_words)
head(peace_lda_topics)
write.csv(peace_lda_topics, file=paste("Desktop/peace_LDA_",k,".csv"))

peace_lda_tidy <- tidy(peace_lda)
peace_lda_tidy
top_terms <- peace_lda_tidy %>%
  group_by(topic)%>%
  top_n(5,beta)%>%
  ungroup() %>%
  arrange (topic, -beta)

top_terms  

top_terms %>%
  mutate(term = reorder(term, beta))%>%
  ggplot (aes(term, beta, fill=factor(topic))) +
  geom_col(show.legend = FALSE) +
  facet_wrap(~ topic, scales = "free") +
  coord_flip ()

my_stops1 <- c(stopwords("en"), "agreement", "shall", "page", "agreements")
peace_cleaned <- tm_map(peace_cleaned, removePunctuation)
peace_cleaned <- tm_map(peace_cleaned, stripWhitespace)
peace_cleaned <- tm_map(peace_cleaned, removeWords, my_stops1)


peace_cleaned[[10]][1]

peace_dtm <- DocumentTermMatrix(peace_cleaned)
peace_dtm

peace_dtm <- DocumentTermMatrix(peace_cleaned)
peace_dtm

unique_indexes <- unique(peace_dtm$i)
peace_dtm <- peace_dtm[unique_indexes,]
peace_dtm

peace_dtm_tidy <- tidy(peace_dtm)
peace_dtm_tidy

cleaned_peace_res <- peace_dtm_tidy %>%
  group_by(document)%>%
  mutate(terms = toString(rep(term, count))) %>%
  select(document, terms)%>%
  unique()
head(cleaned_peace_res)

k <- 6
peace_lda <- LDA(peace_dtm, k=k, control = list(seed=1234))
peace_lda
peace_lda_words <- terms(peace_lda,5)

peace_lda_topics <- as.matrix(peace_lda_words)
head(peace_lda_topics)
write.csv(peace_lda_topics, file=paste("Desktop/peace_LDA_",k,".csv"))

peace_lda_tidy <- tidy(peace_lda)
peace_lda_tidy
top_terms <- peace_lda_tidy %>%
  group_by(topic)%>%
  top_n(5,beta)%>%
  ungroup() %>%
  arrange (topic, -beta)

top_terms  

top_terms %>%
  mutate(term = reorder(term, beta))%>%
  ggplot (aes(term, beta, fill=factor(topic))) +
  geom_col(show.legend = FALSE) +
  facet_wrap(~ topic, scales = "free") +
  coord_flip ()

get_LDA_topics_terms_by_topic <- function(input_corpus, plot = TRUE, number_of_topics = 6)
{
  my_dtm <- DocumentTermMatrix(input_corpus)
  unique_indexes <- unique(my_dtm$i)
  my_dtm <- my_dtm[unique_indexes,]
  my_lda <- LDA(my_dtm, k= number_of_topics, control = list(seed=1234))
  my_topics <- tidy(my_lda, matrix="beta")
  my_lda_words<- terms(my_lda, number_of_words)
  my_lda_topics <- as.matrix((my_lda_words))
  write.csv(my_lda_topics, file = paste (path,k,".csv"))
  
  my_top_terms <- my_topics %>%
    group_by(topic) %>%
    top_n(number_of_words, beta)%>%
    ungroup()%>%
    arrange(topic, -beta)
  
  if(plot == TRUE) {
    my_top_terms %>%
      mutate(term = reorder(term,beta))%>%
      ggplot(aes(term, beta, fill = factor(topic)))+
      geom_col(show.legend=FALSE) +
      facet_wrap(~ topic, scales = "free") + 
      coord_flip ()
  }else{
return(my_top_terms)

  }
}

get_LDA_topics_terms_by_topic(peace_cleaned)
get_LDA_topics_terms_by_topic(peace_cleaned, number_of_topics = 4, number_of_words = 4)

peace_lda_document_topics <- tidy(peace_lda, matrix = "gamma")
peace_lda_document_topics

write.csv(peace_lda_document_topics, file = paste("Desktop/peace_LDA_document_topics"))
head(peace_lda_document_topics)

head(peace_lda_document_topics)
dim(peace_lda_document_topics)

peace_lda_document <- spread(peace_lda_document_topics, topic, gamma)
dim(peace_lda_document)
head(peace_lda_document)

peace_lda_document$max_topic <- colnames(peace_lda_document[2:7])[apply(peace_lda_document)]
head(peace_lda_document)

#error FUN argument is missing, sapply also not working,  think the worksheet got cut off, some google trys:

peace_lda_document$max_topic <- colnames(peace_lda_document[2:7])[apply(peace_lda_document[2:7], nchar)]
head(peace_lda_document)
#nope

peace_lda_document$max_topic <- colnames(peace_lda_document[2:7])[apply(peace_lda_document, na.rm = TRUE)]
head(peace_lda_document)
 #nope

peace_lda_document$max_topic <- colnames(peace_lda_document[2:7])[apply(peace_lda_document,1,which.max)]
head(peace_lda_document)

dt1 <- data.table(peace_lda_document, key="document")
dt2 <- data.table(peace_res, key="doc_id")

peace_merged <- dt1[dt2]
dim(peace_merged)

colnames(peace_merged)

dq <- gutenberg_download(996)
dq
dq_source <- VectorSource(dq)
dq_corpus <- VCorpus(dq_source)

dq_corpus[[1]][2]

sentiments

get_sentiments("afinn")
get_sentiments("nrc")
get_sentiments("bing")

lyrics_raw <- read.csv("Desktop/Data Analysis - 640/info640-master/DataSets/songdata.csv", 
                       encoding="utf-8", header=TRUE, stringsAsFactors = FALSE)
summary(lyrics_raw)

tidy_lyrics <- lyrics_raw %>%
  ungroup() %>%
  unnest_tokens(word, text)
summary(tidy_lyrics)
head(tidy_lyrics)

nrc_sent <- get_sentiments("nrc") %>%
  filter(sentiment == "joy")

tidy_lyrics_bowie <- tidy_lyrics %>%
  filter(artist=="David Bowie")

tidy_lyrics_bowie %>%
  inner_join(nrc_sent) %>%
  dplyr::count(word, sort=TRUE)

bowie_sentiment <- tidy_lyrics_bowie %>%
  inner_join(get_sentiments("bing")) %>%
  dplyr::count(song, sentiment) %>%
  spread(sentiment, n, fill = 0) %>%
  mutate(sentiment = positive - negative)

head(bowie_sentiment)


ggplot(bowie_sentiment, aes(negative, positive, color = song)) +
  geom_jitter(show.legend = FALSE)

bowie_career_sentiment <- mean(bowie_sentiment$sentiment)
bowie_career_sentiment

unique(lyrics_raw$artist)
summary("Iggy_Pop")

tidy_pop <- "Iggy_Pop" %>%
  unnest_tokens(word, text)
  

tidy_lyrics <- lyrics_raw %>%
  ungroup() %>%
  unnest_tokens(word, text)
summary(tidy_lyrics)
head(tidy_lyrics)

nrc_sent <- get_sentiments("nrc") %>%
  filter(sentiment == "joy")

tidy_lyrics_bowie <- tidy_lyrics %>%
  filter(artist=="Iggy Pop")
#Warning in install.packages :package ‘afinn’ is not available (for R version 3.6.1)// I can not get these to run even with devtools 