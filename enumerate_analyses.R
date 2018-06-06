library(longbowtools)
library(jsonlite)
inputs <- "inputs_template.json"
default_params <- fromJSON(inputs)
V <- c("agecat","studyid","country")

A <- c("sex", "gagebrth", "birthwt", "birthlen", "enstunt", "vagbrth", 
  "hdlvry", "mage", "mhtcm", "mwtkg", "mbmi", "single", "fage", 
  "fhtcm", "nrooms", "nhh", "nchldlt5", "hhwealth_quart", "month", 
  "brthmon", "parity", "meducyrs", "feducyrs", "hfoodsec")
outcome_files <- fread("outcome_files.csv")

id <- c("id")

analyses <- expand.grid(A=A,Y=outcome_files$Y, stringsAsFactors = FALSE, KEEP.OUT.ATTRS = FALSE)
analyses$id <- list(id)
analyses$strata <- list(V)

for(i in 1:nrow(analyses)){
  analysis <- analyses[i,]
  analysis_params <- default_params
  analysis_nodes <- as.list(analysis)
  analysis_params$nodes <- analysis_nodes
  analysis_params$data$repository_path <- outcome_files$file[match(analysis_nodes$Y,outcome_files$Y)]
  inputs_filename <- sprintf("inputs/unadjusted_analysis_%03d.json",i)
  writeLines(toJSON(analysis_params),inputs_filename)
}