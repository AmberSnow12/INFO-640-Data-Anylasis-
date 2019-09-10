
R version 3.6.1 (2019-07-05) -- "Action of the Toes"
Copyright (C) 2019 The R Foundation for Statistical Computing
Platform: x86_64-apple-darwin15.6.0 (64-bit)

R is free software and comes with ABSOLUTELY NO WARRANTY.
You are welcome to redistribute it under certain conditions.
Type 'license()' or 'licence()' for distribution details.

Natural language support but running in an English locale

R is a collaborative project with many contributors.
Type 'contributors()' for more information and
'citation()' on how to cite R or R packages in publications.

Type 'demo()' for some demos, 'help()' for on-line help, or
'help.start()' for an HTML browser interface to help.
Type 'q()' to quit R.

> 2+3
[1] 5
> x<-4
> x+2
[1] 6
> x+2
Error: object 'x' not found
> my_num <-2/2
> my_char <-"hi!"
> my_bool <-TRUE
> typeof(my_num)
[1] "double"
> typeof(my_char)
[1] "character"
> typeof(my_bool)
[1] "logical"
> my_nan<-0/0
> my_nan
[1] NaN
> install.packages("tidyverse")
also installing the dependencies ‘colorspace’, ‘sys’, ‘ps’, ‘highr’, ‘markdown’, ‘plyr’, ‘labeling’, ‘munsell’, ‘RColorBrewer’, ‘zeallot’, ‘askpass’, ‘rematch’, ‘prettyunits’, ‘processx’, ‘knitr’, ‘yaml’, ‘htmltools’, ‘evaluate’, ‘base64enc’, ‘tinytex’, ‘xfun’, ‘utf8’, ‘backports’, ‘generics’, ‘reshape2’, ‘assertthat’, ‘glue’, ‘pkgconfig’, ‘R6’, ‘Rcpp’, ‘tidyselect’, ‘BH’, ‘plogr’, ‘DBI’, ‘ellipsis’, ‘digest’, ‘gtable’, ‘lazyeval’, ‘scales’, ‘viridisLite’, ‘withr’, ‘vctrs’, ‘curl’, ‘mime’, ‘openssl’, ‘clipr’, ‘cellranger’, ‘progress’, ‘callr’, ‘fs’, ‘rmarkdown’, ‘whisker’, ‘selectr’, ‘stringi’, ‘fansi’, ‘pillar’, ‘broom’, ‘cli’, ‘crayon’, ‘dplyr’, ‘dbplyr’, ‘forcats’, ‘ggplot2’, ‘haven’, ‘hms’, ‘httr’, ‘jsonlite’, ‘lubridate’, ‘magrittr’, ‘modelr’, ‘purrr’, ‘readr’, ‘readxl’, ‘reprex’, ‘rlang’, ‘rstudioapi’, ‘rvest’, ‘stringr’, ‘tibble’, ‘tidyr’, ‘xml2’

trying URL 'https://cran.rstudio.com/bin/macosx/el-capitan/contrib/3.6/colorspace_1.4-1.tgz'
Content type 'application/x-gzip' length 2522321 bytes (2.4 MB)
==================================================
  downloaded 2.4 MB

trying URL 'https://cran.rstudio.com/bin/macosx/el-capitan/contrib/3.6/sys_3.3.tgz'
Content type 'application/x-gzip' length 47231 bytes (46 KB)
==================================================
  downloaded 46 KB

trying URL 'https://cran.rstudio.com/bin/macosx/el-capitan/contrib/3.6/ps_1.3.0.tgz'
Content type 'application/x-gzip' length 209460 bytes (204 KB)
==================================================
  downloaded 204 KB

trying URL 'https://cran.rstudio.com/bin/macosx/el-capitan/contrib/3.6/highr_0.8.tgz'
Content type 'application/x-gzip' length 41180 bytes (40 KB)
==================================================
  downloaded 40 KB

trying URL 'https://cran.rstudio.com/bin/macosx/el-capitan/contrib/3.6/markdown_1.1.tgz'
Content type 'application/x-gzip' length 199930 bytes (195 KB)
==================================================
  downloaded 195 KB

trying URL 'https://cran.rstudio.com/bin/macosx/el-capitan/contrib/3.6/plyr_1.8.4.tgz'
Content type 'application/x-gzip' length 965992 bytes (943 KB)
==================================================
  downloaded 943 KB

trying URL 'https://cran.rstudio.com/bin/macosx/el-capitan/contrib/3.6/labeling_0.3.tgz'
Content type 'application/x-gzip' length 61520 bytes (60 KB)
==================================================
  downloaded 60 KB

trying URL 'https://cran.rstudio.com/bin/macosx/el-capitan/contrib/3.6/munsell_0.5.0.tgz'
Content type 'application/x-gzip' length 243642 bytes (237 KB)
==================================================
  downloaded 237 KB

trying URL 'https://cran.rstudio.com/bin/macosx/el-capitan/contrib/3.6/RColorBrewer_1.1-2.tgz'
Content type 'application/x-gzip' length 53161 bytes (51 KB)
==================================================
  downloaded 51 KB

trying URL 'https://cran.rstudio.com/bin/macosx/el-capitan/contrib/3.6/zeallot_0.1.0.tgz'
Content type 'application/x-gzip' length 58378 bytes (57 KB)
==================================================
  downloaded 57 KB

trying URL 'https://cran.rstudio.com/bin/macosx/el-capitan/contrib/3.6/askpass_1.1.tgz'
Content type 'application/x-gzip' length 21926 bytes (21 KB)
==================================================
  downloaded 21 KB

trying URL 'https://cran.rstudio.com/bin/macosx/el-capitan/contrib/3.6/rematch_1.0.1.tgz'
Content type 'application/x-gzip' length 12480 bytes (12 KB)
==================================================
  downloaded 12 KB

trying URL 'https://cran.rstudio.com/bin/macosx/el-capitan/contrib/3.6/prettyunits_1.0.2.tgz'
Content type 'application/x-gzip' length 30087 bytes (29 KB)
==================================================
  downloaded 29 KB

trying URL 'https://cran.rstudio.com/bin/macosx/el-capitan/contrib/3.6/processx_3.4.1.tgz'
Content type 'application/x-gzip' length 236878 bytes (231 KB)
==================================================
  downloaded 231 KB

trying URL 'https://cran.rstudio.com/bin/macosx/el-capitan/contrib/3.6/knitr_1.24.tgz'
Content type 'application/x-gzip' length 1364617 bytes (1.3 MB)
==================================================
  downloaded 1.3 MB

trying URL 'https://cran.rstudio.com/bin/macosx/el-capitan/contrib/3.6/yaml_2.2.0.tgz'
Content type 'application/x-gzip' length 201073 bytes (196 KB)
==================================================
  downloaded 196 KB

trying URL 'https://cran.rstudio.com/bin/macosx/el-capitan/contrib/3.6/htmltools_0.3.6.tgz'
Content type 'application/x-gzip' length 315564 bytes (308 KB)
==================================================
  downloaded 308 KB

trying URL 'https://cran.rstudio.com/bin/macosx/el-capitan/contrib/3.6/evaluate_0.14.tgz'
Content type 'application/x-gzip' length 74657 bytes (72 KB)
==================================================
  downloaded 72 KB

trying URL 'https://cran.rstudio.com/bin/macosx/el-capitan/contrib/3.6/base64enc_0.1-3.tgz'
Content type 'application/x-gzip' length 32230 bytes (31 KB)
==================================================
  downloaded 31 KB

trying URL 'https://cran.rstudio.com/bin/macosx/el-capitan/contrib/3.6/tinytex_0.15.tgz'
Content type 'application/x-gzip' length 96609 bytes (94 KB)
==================================================
  downloaded 94 KB

trying URL 'https://cran.rstudio.com/bin/macosx/el-capitan/contrib/3.6/xfun_0.9.tgz'
Content type 'application/x-gzip' length 173636 bytes (169 KB)
==================================================
  downloaded 169 KB

trying URL 'https://cran.rstudio.com/bin/macosx/el-capitan/contrib/3.6/utf8_1.1.4.tgz'
Content type 'application/x-gzip' length 196648 bytes (192 KB)
==================================================
  downloaded 192 KB

trying URL 'https://cran.rstudio.com/bin/macosx/el-capitan/contrib/3.6/backports_1.1.4.tgz'
Content type 'application/x-gzip' length 55470 bytes (54 KB)
==================================================
  downloaded 54 KB

trying URL 'https://cran.rstudio.com/bin/macosx/el-capitan/contrib/3.6/generics_0.0.2.tgz'
Content type 'application/x-gzip' length 65487 bytes (63 KB)
==================================================
  downloaded 63 KB

trying URL 'https://cran.rstudio.com/bin/macosx/el-capitan/contrib/3.6/reshape2_1.4.3.tgz'
Content type 'application/x-gzip' length 307635 bytes (300 KB)
==================================================
  downloaded 300 KB

trying URL 'https://cran.rstudio.com/bin/macosx/el-capitan/contrib/3.6/assertthat_0.2.1.tgz'
Content type 'application/x-gzip' length 53625 bytes (52 KB)
==================================================
  downloaded 52 KB

trying URL 'https://cran.rstudio.com/bin/macosx/el-capitan/contrib/3.6/glue_1.3.1.tgz'
Content type 'application/x-gzip' length 161354 bytes (157 KB)
==================================================
  downloaded 157 KB

trying URL 'https://cran.rstudio.com/bin/macosx/el-capitan/contrib/3.6/pkgconfig_2.0.2.tgz'
Content type 'application/x-gzip' length 18123 bytes (17 KB)
==================================================
  downloaded 17 KB

trying URL 'https://cran.rstudio.com/bin/macosx/el-capitan/contrib/3.6/R6_2.4.0.tgz'
Content type 'application/x-gzip' length 57215 bytes (55 KB)
==================================================
  downloaded 55 KB

trying URL 'https://cran.rstudio.com/bin/macosx/el-capitan/contrib/3.6/Rcpp_1.0.2.tgz'
Content type 'application/x-gzip' length 4639720 bytes (4.4 MB)
==================================================
  downloaded 4.4 MB

trying URL 'https://cran.rstudio.com/bin/macosx/el-capitan/contrib/3.6/tidyselect_0.2.5.tgz'
Content type 'application/x-gzip' length 322608 bytes (315 KB)
==================================================
  downloaded 315 KB

trying URL 'https://cran.rstudio.com/bin/macosx/el-capitan/contrib/3.6/BH_1.69.0-1.tgz'
Content type 'application/x-gzip' length 11724798 bytes (11.2 MB)
==================================================
  downloaded 11.2 MB

trying URL 'https://cran.rstudio.com/bin/macosx/el-capitan/contrib/3.6/plogr_0.2.0.tgz'
Content type 'application/x-gzip' length 13178 bytes (12 KB)
==================================================
  downloaded 12 KB

trying URL 'https://cran.rstudio.com/bin/macosx/el-capitan/contrib/3.6/DBI_1.0.0.tgz'
Content type 'application/x-gzip' length 879880 bytes (859 KB)
==================================================
  downloaded 859 KB

trying URL 'https://cran.rstudio.com/bin/macosx/el-capitan/contrib/3.6/ellipsis_0.2.0.1.tgz'
Content type 'application/x-gzip' length 32188 bytes (31 KB)
==================================================
  downloaded 31 KB

trying URL 'https://cran.rstudio.com/bin/macosx/el-capitan/contrib/3.6/digest_0.6.20.tgz'
Content type 'application/x-gzip' length 222854 bytes (217 KB)
==================================================
  downloaded 217 KB

trying URL 'https://cran.rstudio.com/bin/macosx/el-capitan/contrib/3.6/gtable_0.3.0.tgz'
Content type 'application/x-gzip' length 432473 bytes (422 KB)
==================================================
  downloaded 422 KB

trying URL 'https://cran.rstudio.com/bin/macosx/el-capitan/contrib/3.6/lazyeval_0.2.2.tgz'
Content type 'application/x-gzip' length 158838 bytes (155 KB)
==================================================
  downloaded 155 KB

trying URL 'https://cran.rstudio.com/bin/macosx/el-capitan/contrib/3.6/scales_1.0.0.tgz'
Content type 'application/x-gzip' length 749007 bytes (731 KB)
==================================================
  downloaded 731 KB

trying URL 'https://cran.rstudio.com/bin/macosx/el-capitan/contrib/3.6/viridisLite_0.3.0.tgz'
Content type 'application/x-gzip' length 57231 bytes (55 KB)
==================================================
  downloaded 55 KB

trying URL 'https://cran.rstudio.com/bin/macosx/el-capitan/contrib/3.6/withr_2.1.2.tgz'
Content type 'application/x-gzip' length 152438 bytes (148 KB)
==================================================
  downloaded 148 KB

trying URL 'https://cran.rstudio.com/bin/macosx/el-capitan/contrib/3.6/vctrs_0.2.0.tgz'
Content type 'application/x-gzip' length 849977 bytes (830 KB)
==================================================
  downloaded 830 KB

trying URL 'https://cran.rstudio.com/bin/macosx/el-capitan/contrib/3.6/curl_4.0.tgz'
Content type 'application/x-gzip' length 451943 bytes (441 KB)
==================================================
  downloaded 441 KB

trying URL 'https://cran.rstudio.com/bin/macosx/el-capitan/contrib/3.6/mime_0.7.tgz'
Content type 'application/x-gzip' length 35263 bytes (34 KB)
==================================================
  downloaded 34 KB

trying URL 'https://cran.rstudio.com/bin/macosx/el-capitan/contrib/3.6/openssl_1.4.1.tgz'
Content type 'application/x-gzip' length 2690137 bytes (2.6 MB)
==================================================
  downloaded 2.6 MB

trying URL 'https://cran.rstudio.com/bin/macosx/el-capitan/contrib/3.6/clipr_0.7.0.tgz'
Content type 'application/x-gzip' length 48251 bytes (47 KB)
==================================================
  downloaded 47 KB

trying URL 'https://cran.rstudio.com/bin/macosx/el-capitan/contrib/3.6/cellranger_1.1.0.tgz'
Content type 'application/x-gzip' length 103127 bytes (100 KB)
==================================================
  downloaded 100 KB

trying URL 'https://cran.rstudio.com/bin/macosx/el-capitan/contrib/3.6/progress_1.2.2.tgz'
Content type 'application/x-gzip' length 82991 bytes (81 KB)
==================================================
  downloaded 81 KB

trying URL 'https://cran.rstudio.com/bin/macosx/el-capitan/contrib/3.6/callr_3.3.1.tgz'
Content type 'application/x-gzip' length 337183 bytes (329 KB)
==================================================
  downloaded 329 KB

trying URL 'https://cran.rstudio.com/bin/macosx/el-capitan/contrib/3.6/fs_1.3.1.tgz'
Content type 'application/x-gzip' length 852880 bytes (832 KB)
==================================================
  downloaded 832 KB

trying URL 'https://cran.rstudio.com/bin/macosx/el-capitan/contrib/3.6/rmarkdown_1.15.tgz'
Content type 'application/x-gzip' length 3532644 bytes (3.4 MB)
==================================================
  downloaded 3.4 MB

trying URL 'https://cran.rstudio.com/bin/macosx/el-capitan/contrib/3.6/whisker_0.4.tgz'
Content type 'application/x-gzip' length 65424 bytes (63 KB)
==================================================
  downloaded 63 KB

trying URL 'https://cran.rstudio.com/bin/macosx/el-capitan/contrib/3.6/selectr_0.4-1.tgz'
Content type 'application/x-gzip' length 486881 bytes (475 KB)
==================================================
  downloaded 475 KB

trying URL 'https://cran.rstudio.com/bin/macosx/el-capitan/contrib/3.6/stringi_1.4.3.tgz'
Content type 'application/x-gzip' length 13614204 bytes (13.0 MB)
==================================================
  downloaded 13.0 MB

trying URL 'https://cran.rstudio.com/bin/macosx/el-capitan/contrib/3.6/fansi_0.4.0.tgz'
Content type 'application/x-gzip' length 209760 bytes (204 KB)
==================================================
  downloaded 204 KB

trying URL 'https://cran.rstudio.com/bin/macosx/el-capitan/contrib/3.6/pillar_1.4.2.tgz'
Content type 'application/x-gzip' length 177098 bytes (172 KB)
==================================================
  downloaded 172 KB

trying URL 'https://cran.rstudio.com/bin/macosx/el-capitan/contrib/3.6/broom_0.5.2.tgz'
Content type 'application/x-gzip' length 2006887 bytes (1.9 MB)
==================================================
  downloaded 1.9 MB

trying URL 'https://cran.rstudio.com/bin/macosx/el-capitan/contrib/3.6/cli_1.1.0.tgz'
Content type 'application/x-gzip' length 177190 bytes (173 KB)
==================================================
  downloaded 173 KB

trying URL 'https://cran.rstudio.com/bin/macosx/el-capitan/contrib/3.6/crayon_1.3.4.tgz'
Content type 'application/x-gzip' length 749917 bytes (732 KB)
==================================================
  downloaded 732 KB

trying URL 'https://cran.rstudio.com/bin/macosx/el-capitan/contrib/3.6/dplyr_0.8.3.tgz'
Content type 'application/x-gzip' length 6850794 bytes (6.5 MB)
==================================================
  downloaded 6.5 MB

trying URL 'https://cran.rstudio.com/bin/macosx/el-capitan/contrib/3.6/dbplyr_1.4.2.tgz'
Content type 'application/x-gzip' length 578881 bytes (565 KB)
==================================================
  downloaded 565 KB

trying URL 'https://cran.rstudio.com/bin/macosx/el-capitan/contrib/3.6/forcats_0.4.0.tgz'
Content type 'application/x-gzip' length 343715 bytes (335 KB)
==================================================
  downloaded 335 KB

trying URL 'https://cran.rstudio.com/bin/macosx/el-capitan/contrib/3.6/ggplot2_3.2.1.tgz'
Content type 'application/x-gzip' length 3973186 bytes (3.8 MB)
==================================================
  downloaded 3.8 MB

trying URL 'https://cran.rstudio.com/bin/macosx/el-capitan/contrib/3.6/haven_2.1.1.tgz'
Content type 'application/x-gzip' length 1031428 bytes (1007 KB)
==================================================
  downloaded 1007 KB

trying URL 'https://cran.rstudio.com/bin/macosx/el-capitan/contrib/3.6/hms_0.5.1.tgz'
Content type 'application/x-gzip' length 105621 bytes (103 KB)
==================================================
  downloaded 103 KB

trying URL 'https://cran.rstudio.com/bin/macosx/el-capitan/contrib/3.6/httr_1.4.1.tgz'
Content type 'application/x-gzip' length 492648 bytes (481 KB)
==================================================
  downloaded 481 KB

trying URL 'https://cran.rstudio.com/bin/macosx/el-capitan/contrib/3.6/jsonlite_1.6.tgz'
Content type 'application/x-gzip' length 1117755 bytes (1.1 MB)
==================================================
  downloaded 1.1 MB

trying URL 'https://cran.rstudio.com/bin/macosx/el-capitan/contrib/3.6/lubridate_1.7.4.tgz'
Content type 'application/x-gzip' length 1512972 bytes (1.4 MB)
==================================================
  downloaded 1.4 MB

trying URL 'https://cran.rstudio.com/bin/macosx/el-capitan/contrib/3.6/magrittr_1.5.tgz'
Content type 'application/x-gzip' length 154842 bytes (151 KB)
==================================================
  downloaded 151 KB

trying URL 'https://cran.rstudio.com/bin/macosx/el-capitan/contrib/3.6/modelr_0.1.5.tgz'
Content type 'application/x-gzip' length 199606 bytes (194 KB)
==================================================
  downloaded 194 KB

trying URL 'https://cran.rstudio.com/bin/macosx/el-capitan/contrib/3.6/purrr_0.3.2.tgz'
Content type 'application/x-gzip' length 411819 bytes (402 KB)
==================================================
  downloaded 402 KB

trying URL 'https://cran.rstudio.com/bin/macosx/el-capitan/contrib/3.6/readr_1.3.1.tgz'
Content type 'application/x-gzip' length 792657 bytes (774 KB)
==================================================
  downloaded 774 KB

trying URL 'https://cran.rstudio.com/bin/macosx/el-capitan/contrib/3.6/readxl_1.3.1.tgz'
Content type 'application/x-gzip' length 1646895 bytes (1.6 MB)
==================================================
  downloaded 1.6 MB

trying URL 'https://cran.rstudio.com/bin/macosx/el-capitan/contrib/3.6/reprex_0.3.0.tgz'
Content type 'application/x-gzip' length 424791 bytes (414 KB)
==================================================
  downloaded 414 KB

trying URL 'https://cran.rstudio.com/bin/macosx/el-capitan/contrib/3.6/rlang_0.4.0.tgz'
Content type 'application/x-gzip' length 1137629 bytes (1.1 MB)
==================================================
  downloaded 1.1 MB

trying URL 'https://cran.rstudio.com/bin/macosx/el-capitan/contrib/3.6/rstudioapi_0.10.tgz'
Content type 'application/x-gzip' length 214537 bytes (209 KB)
==================================================
  downloaded 209 KB

trying URL 'https://cran.rstudio.com/bin/macosx/el-capitan/contrib/3.6/rvest_0.3.4.tgz'
Content type 'application/x-gzip' length 912795 bytes (891 KB)
==================================================
  downloaded 891 KB

trying URL 'https://cran.rstudio.com/bin/macosx/el-capitan/contrib/3.6/stringr_1.4.0.tgz'
Content type 'application/x-gzip' length 213304 bytes (208 KB)
==================================================
  downloaded 208 KB

trying URL 'https://cran.rstudio.com/bin/macosx/el-capitan/contrib/3.6/tibble_2.1.3.tgz'
Content type 'application/x-gzip' length 318250 bytes (310 KB)
==================================================
  downloaded 310 KB

trying URL 'https://cran.rstudio.com/bin/macosx/el-capitan/contrib/3.6/tidyr_0.8.3.tgz'
Content type 'application/x-gzip' length 692214 bytes (675 KB)
==================================================
  downloaded 675 KB

trying URL 'https://cran.rstudio.com/bin/macosx/el-capitan/contrib/3.6/xml2_1.2.2.tgz'
Content type 'application/x-gzip' length 1102370 bytes (1.1 MB)
==================================================
  downloaded 1.1 MB

trying URL 'https://cran.rstudio.com/bin/macosx/el-capitan/contrib/3.6/tidyverse_1.2.1.tgz'
Content type 'application/x-gzip' length 89217 bytes (87 KB)
==================================================
  downloaded 87 KB


The downloaded binary packages are in
/var/folders/2m/gj9kdtzj3tv9cbfxcj05ykl00000gn/T//Rtmpdk5NKC/downloaded_packages
> library(tidyverse)
── Attaching packages ───────────────────────────────────────── tidyverse 1.2.1 ──
✔ ggplot2 3.2.1     ✔ purrr   0.3.2
✔ tibble  2.1.3     ✔ dplyr   0.8.3
✔ tidyr   0.8.3     ✔ stringr 1.4.0
✔ readr   1.3.1     ✔ forcats 0.4.0
── Conflicts ──────────────────────────────────────────── tidyverse_conflicts() ──
✖ dplyr::filter() masks stats::filter()
✖ dplyr::lag()    masks stats::lag()
> #creates a null variable
  > my_nan <-0/0
> keyword
Error: object 'keyword' not found
> help(type)