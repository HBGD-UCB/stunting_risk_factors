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

**Intervention Variable:** hfoodsec

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid               country        A                             n    nA   nAY0   nAY1
--------------------  -------------  -------------------------  ----  ----  -----  -----
ki0047075b-MAL-ED     BANGLADESH     Food Secure                 194   161    150     11
ki0047075b-MAL-ED     BANGLADESH     Mildly Food Insecure        194     4      4      0
ki0047075b-MAL-ED     BANGLADESH     Moderately Food Insecure    194    23     23      0
ki0047075b-MAL-ED     BANGLADESH     Severely Food Insecure      194     6      6      0
ki0047075b-MAL-ED     BRAZIL         Food Secure                 129     3      3      0
ki0047075b-MAL-ED     BRAZIL         Mildly Food Insecure        129    11      8      3
ki0047075b-MAL-ED     BRAZIL         Moderately Food Insecure    129    67     55     12
ki0047075b-MAL-ED     BRAZIL         Severely Food Insecure      129    48     45      3
ki0047075b-MAL-ED     INDIA          Food Secure                 212   190    173     17
ki0047075b-MAL-ED     INDIA          Mildly Food Insecure        212     5      5      0
ki0047075b-MAL-ED     INDIA          Moderately Food Insecure    212     4      4      0
ki0047075b-MAL-ED     INDIA          Severely Food Insecure      212    13     13      0
ki0047075b-MAL-ED     NEPAL          Food Secure                 128    94     89      5
ki0047075b-MAL-ED     NEPAL          Mildly Food Insecure        128    15     13      2
ki0047075b-MAL-ED     NEPAL          Moderately Food Insecure    128    16     16      0
ki0047075b-MAL-ED     NEPAL          Severely Food Insecure      128     3      3      0
ki0047075b-MAL-ED     PERU           Food Secure                 112    27     24      3
ki0047075b-MAL-ED     PERU           Mildly Food Insecure        112    29     24      5
ki0047075b-MAL-ED     PERU           Moderately Food Insecure    112    28     26      2
ki0047075b-MAL-ED     PERU           Severely Food Insecure      112    28     24      4
ki0047075b-MAL-ED     SOUTH AFRICA   Food Secure                 232   131    115     16
ki0047075b-MAL-ED     SOUTH AFRICA   Mildly Food Insecure        232    19     19      0
ki0047075b-MAL-ED     SOUTH AFRICA   Moderately Food Insecure    232    76     64     12
ki0047075b-MAL-ED     SOUTH AFRICA   Severely Food Insecure      232     6      5      1
ki1113344-GMS-Nepal   NEPAL          Food Secure                 575   418    404     14
ki1113344-GMS-Nepal   NEPAL          Mildly Food Insecure        575    80     78      2
ki1113344-GMS-Nepal   NEPAL          Moderately Food Insecure    575    56     55      1
ki1113344-GMS-Nepal   NEPAL          Severely Food Insecure      575    21     20      1


The following strata were considered:

* studyid: ki0047075b-MAL-ED, country: BANGLADESH
* studyid: ki0047075b-MAL-ED, country: BRAZIL
* studyid: ki0047075b-MAL-ED, country: INDIA
* studyid: ki0047075b-MAL-ED, country: NEPAL
* studyid: ki0047075b-MAL-ED, country: PERU
* studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* studyid: ki1113344-GMS-Nepal, country: NEPAL

### Dropped Strata

Some strata were dropped due to rare outcomes:

* studyid: ki0047075b-MAL-ED, country: BANGLADESH
* studyid: ki0047075b-MAL-ED, country: BRAZIL
* studyid: ki0047075b-MAL-ED, country: INDIA
* studyid: ki0047075b-MAL-ED, country: NEPAL
* studyid: ki0047075b-MAL-ED, country: PERU
* studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* studyid: ki1113344-GMS-Nepal, country: NEPAL


ALL STRATA DROPPED. JOB FINISHED














