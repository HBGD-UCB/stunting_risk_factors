---
title: "Risk Factor Analysis"
output: 
  html_document:
    keep_md: TRUE
    self_contained: true
required_packages:  ['github://HBGD-UCB/longbowRiskFactors','github://jeremyrcoyle/skimr@vector_types', 'github://tlverse/delayed']
params:
  roles:
    value:
      - exclude
      - strata
      - id
      - W
      - A
      - Y
  data: 
    value: 
      type: 'web'
      uri: 'https://raw.githubusercontent.com/HBGD-UCB/longbowRiskFactors/master/inst/sample_data/birthwt_data.rdata'
  nodes:
    value:
      strata: ['study_id', 'mrace']
      id: ['subjid']
      W: []
      A: ['parity_cat']
      Y: ['haz01']
  script_params:
    value:
      parallelize:
        input: checkbox
        value: FALSE
      baseline_level:
        input: 'character'
        value: "[1,2)"
  output_directory:
    value: ''

---







## Methods
## Outcome Variable

**Outcome Variable:** s03rec24

## Predictor Variables

**Intervention Variable:** nhh

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid              country      A              n    nA   nAY0   nAY1
-------------------  -----------  ----------  ----  ----  -----  -----
ki1000108-IRC        INDIA        3 or less    410    58     55      3
ki1000108-IRC        INDIA        4-5          410   158    147     11
ki1000108-IRC        INDIA        6-7          410   107     98      9
ki1000108-IRC        INDIA        8+           410    87     82      5
ki1017093b-PROVIDE   BANGLADESH   3 or less    690   137    133      4
ki1017093b-PROVIDE   BANGLADESH   4-5          690   318    310      8
ki1017093b-PROVIDE   BANGLADESH   6-7          690   149    140      9
ki1017093b-PROVIDE   BANGLADESH   8+           690    86     85      1


The following strata were considered:

* studyid: ki1000108-IRC, country: INDIA
* studyid: ki1017093b-PROVIDE, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* studyid: ki1000108-IRC, country: INDIA
* studyid: ki1017093b-PROVIDE, country: BANGLADESH


ALL STRATA DROPPED. JOB FINISHED














