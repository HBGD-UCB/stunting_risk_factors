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

**Intervention Variable:** nrooms

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                    country                        A       n    nA   nAY0   nAY1
-------------------------  -----------------------------  ---  ----  ----  -----  -----
ki0047075b-MAL-ED          BANGLADESH                     1     231   145    138      7
ki0047075b-MAL-ED          BANGLADESH                     2     231    46     45      1
ki0047075b-MAL-ED          BANGLADESH                     3     231    28     25      3
ki0047075b-MAL-ED          BANGLADESH                     4+    231    12     12      0
ki0047075b-MAL-ED          BRAZIL                         1     202     4      4      0
ki0047075b-MAL-ED          BRAZIL                         2     202    19     16      3
ki0047075b-MAL-ED          BRAZIL                         3     202    59     47     12
ki0047075b-MAL-ED          BRAZIL                         4+    202   120    112      8
ki0047075b-MAL-ED          INDIA                          1     233    84     77      7
ki0047075b-MAL-ED          INDIA                          2     233    76     70      6
ki0047075b-MAL-ED          INDIA                          3     233    48     44      4
ki0047075b-MAL-ED          INDIA                          4+    233    25     23      2
ki0047075b-MAL-ED          NEPAL                          1     235    51     48      3
ki0047075b-MAL-ED          NEPAL                          2     235    31     30      1
ki0047075b-MAL-ED          NEPAL                          3     235    22     20      2
ki0047075b-MAL-ED          NEPAL                          4+    235   131    122      9
ki0047075b-MAL-ED          PERU                           1     252    18     16      2
ki0047075b-MAL-ED          PERU                           2     252    47     40      7
ki0047075b-MAL-ED          PERU                           3     252    58     48     10
ki0047075b-MAL-ED          PERU                           4+    252   129    119     10
ki0047075b-MAL-ED          SOUTH AFRICA                   1     252    14     14      0
ki0047075b-MAL-ED          SOUTH AFRICA                   2     252    21     17      4
ki0047075b-MAL-ED          SOUTH AFRICA                   3     252    25     23      2
ki0047075b-MAL-ED          SOUTH AFRICA                   4+    252   192    167     25
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1     242    12     12      0
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2     242    60     60      0
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3     242    64     63      1
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+    242   106    105      1
ki1000108-CMC-V-BCS-2002   INDIA                          1     370   200    186     14
ki1000108-CMC-V-BCS-2002   INDIA                          2     370   105    100      5
ki1000108-CMC-V-BCS-2002   INDIA                          3     370    51     47      4
ki1000108-CMC-V-BCS-2002   INDIA                          4+    370    14     14      0
ki1000108-IRC              INDIA                          1     408   185    171     14
ki1000108-IRC              INDIA                          2     408   170    149     21
ki1000108-IRC              INDIA                          3     408    36     32      4
ki1000108-IRC              INDIA                          4+    408    17     12      5
ki1017093b-PROVIDE         BANGLADESH                     1     686   494    474     20
ki1017093b-PROVIDE         BANGLADESH                     2     686   107    103      4
ki1017093b-PROVIDE         BANGLADESH                     3     686    62     58      4
ki1017093b-PROVIDE         BANGLADESH                     4+    686    23     22      1
ki1113344-GMS-Nepal        NEPAL                          1     593    40     40      0
ki1113344-GMS-Nepal        NEPAL                          2     593   127    123      4
ki1113344-GMS-Nepal        NEPAL                          3     593   149    139     10
ki1113344-GMS-Nepal        NEPAL                          4+    593   277    272      5
ki1114097-CONTENT          PERU                           1     210    42     40      2
ki1114097-CONTENT          PERU                           2     210    53     52      1
ki1114097-CONTENT          PERU                           3     210    39     33      6
ki1114097-CONTENT          PERU                           4+    210    76     66     10


The following strata were considered:

* studyid: ki0047075b-MAL-ED, country: BANGLADESH
* studyid: ki0047075b-MAL-ED, country: BRAZIL
* studyid: ki0047075b-MAL-ED, country: INDIA
* studyid: ki0047075b-MAL-ED, country: NEPAL
* studyid: ki0047075b-MAL-ED, country: PERU
* studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* studyid: ki1000108-IRC, country: INDIA
* studyid: ki1017093b-PROVIDE, country: BANGLADESH
* studyid: ki1113344-GMS-Nepal, country: NEPAL
* studyid: ki1114097-CONTENT, country: PERU

### Dropped Strata

Some strata were dropped due to rare outcomes:

* studyid: ki0047075b-MAL-ED, country: BANGLADESH
* studyid: ki0047075b-MAL-ED, country: BRAZIL
* studyid: ki0047075b-MAL-ED, country: INDIA
* studyid: ki0047075b-MAL-ED, country: NEPAL
* studyid: ki0047075b-MAL-ED, country: PERU
* studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* studyid: ki1000108-IRC, country: INDIA
* studyid: ki1017093b-PROVIDE, country: BANGLADESH
* studyid: ki1113344-GMS-Nepal, country: NEPAL
* studyid: ki1114097-CONTENT, country: PERU


ALL STRATA DROPPED. JOB FINISHED














