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

**Intervention Variable:** fage

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid             country                        A            n    nA   nAY0   nAY1
------------------  -----------------------------  --------  ----  ----  -----  -----
ki0047075b-MAL-ED   BANGLADESH                     >=35       151   102     98      4
ki0047075b-MAL-ED   BANGLADESH                     <25        151     0      0      0
ki0047075b-MAL-ED   BANGLADESH                     [25-30)    151    14     12      2
ki0047075b-MAL-ED   BANGLADESH                     [30-35)    151    35     33      2
ki0047075b-MAL-ED   BRAZIL                         >=35        79    40     36      4
ki0047075b-MAL-ED   BRAZIL                         <25         79     3      2      1
ki0047075b-MAL-ED   BRAZIL                         [25-30)     79     8      7      1
ki0047075b-MAL-ED   BRAZIL                         [30-35)     79    28     21      7
ki0047075b-MAL-ED   INDIA                          >=35       161    71     65      6
ki0047075b-MAL-ED   INDIA                          <25        161     3      3      0
ki0047075b-MAL-ED   INDIA                          [25-30)    161    27     25      2
ki0047075b-MAL-ED   INDIA                          [30-35)    161    60     55      5
ki0047075b-MAL-ED   NEPAL                          >=35        79    38     36      2
ki0047075b-MAL-ED   NEPAL                          <25         79     0      0      0
ki0047075b-MAL-ED   NEPAL                          [25-30)     79    10     10      0
ki0047075b-MAL-ED   NEPAL                          [30-35)     79    31     30      1
ki0047075b-MAL-ED   PERU                           >=35        84    45     39      6
ki0047075b-MAL-ED   PERU                           <25         84     5      3      2
ki0047075b-MAL-ED   PERU                           [25-30)     84    18     15      3
ki0047075b-MAL-ED   PERU                           [30-35)     84    16     15      1
ki0047075b-MAL-ED   SOUTH AFRICA                   >=35        90    75     65     10
ki0047075b-MAL-ED   SOUTH AFRICA                   <25         90     1      1      0
ki0047075b-MAL-ED   SOUTH AFRICA                   [25-30)     90     6      5      1
ki0047075b-MAL-ED   SOUTH AFRICA                   [30-35)     90     8      8      0
ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   >=35       100    65     65      0
ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   <25        100     2      2      0
ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   [25-30)    100     6      6      0
ki0047075b-MAL-ED   TANZANIA, UNITED REPUBLIC OF   [30-35)    100    27     26      1


The following strata were considered:

* studyid: ki0047075b-MAL-ED, country: BANGLADESH
* studyid: ki0047075b-MAL-ED, country: BRAZIL
* studyid: ki0047075b-MAL-ED, country: INDIA
* studyid: ki0047075b-MAL-ED, country: NEPAL
* studyid: ki0047075b-MAL-ED, country: PERU
* studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

### Dropped Strata

Some strata were dropped due to rare outcomes:

* studyid: ki0047075b-MAL-ED, country: BANGLADESH
* studyid: ki0047075b-MAL-ED, country: BRAZIL
* studyid: ki0047075b-MAL-ED, country: INDIA
* studyid: ki0047075b-MAL-ED, country: NEPAL
* studyid: ki0047075b-MAL-ED, country: PERU
* studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF


ALL STRATA DROPPED. JOB FINISHED














