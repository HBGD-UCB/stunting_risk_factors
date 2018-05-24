library(longbowtools)
library(progress)
load_all("~/Dropbox/tlverse/longbowtools/")

configure_cluster("~/cluster_credentials.json")

setwd("~/Dropbox/gates/wasting_risk_factors/")
rmd_filename <- system.file("templates/longbow_RiskFactors.Rmd", package="longbowRiskFactors")
inputs <- system.file("sample_data/ghap_test.json", package="longbowRiskFactors")
inputs <- "inputs_template.json"
run_on_longbow(rmd_filename, inputs)

# send the batch to longbow
job_ids <- submit_batch(rmd_filename, inputs_folder="inputs", results_folder="results")

# wait for the job to finish and track progress
wait_for_batch(job_ids)

# download the longbow outputs
get_batch_results(job_ids, results_folder="results")

# load and concatenate the rdata from the jobs
results <- load_batch_results("results.rdata")


one_result <- results[type=="RR"&agecat=="12 months"&intervention_level=="Male"]
pooled <- rma(yi=one_result$untransformed_estimate, sei=one_result$untransformed_se)

# save concatenated results
save(results, file="stunting_prevalance_results.rdata")
