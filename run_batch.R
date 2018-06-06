library(longbowtools)
library(progress)
library(longbowRiskFactors)
setwd("~/Dropbox/gates/stunting_risk_factors/")

configure_cluster("~/cluster_credentials.json")


rmd_filename <- system.file("templates/longbow_RiskFactors.Rmd", package="longbowRiskFactors")

# inputs <- system.file("sample_data/ghap_test.json", package="longbowRiskFactors")
inputs <- "inputs_template.json"

#run test job
run_on_longbow(rmd_filename, inputs)

# send the batch to longbow
job_ids <- submit_batch(rmd_filename, inputs_folder="inputs", results_folder="results")

# wait for the job to finish and track progress
wait_for_batch(job_ids)

# download the longbow outputs
get_batch_results(job_ids, results_folder="results")

# load and concatenate the rdata from the jobs
results <- load_batch_results("results.rdata")

# save concatenated results
save(results, file="stunting_results.rdata")
