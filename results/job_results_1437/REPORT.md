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

**Intervention Variable:** mwtkg

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                    country                        A               n     nA   nAY0   nAY1
-------------------------  -----------------------------  ----------  -----  -----  -----  -----
ki0047075b-MAL-ED          BANGLADESH                     >=57.5        241     50     48      2
ki0047075b-MAL-ED          BANGLADESH                     <42.5         241     54     54      0
ki0047075b-MAL-ED          BANGLADESH                     [42.5-50)     241     82     80      2
ki0047075b-MAL-ED          BANGLADESH                     [50-57.5)     241     55     51      4
ki0047075b-MAL-ED          BRAZIL                         >=57.5        213    138    128     10
ki0047075b-MAL-ED          BRAZIL                         <42.5         213     13     10      3
ki0047075b-MAL-ED          BRAZIL                         [42.5-50)     213     19     17      2
ki0047075b-MAL-ED          BRAZIL                         [50-57.5)     213     43     41      2
ki0047075b-MAL-ED          INDIA                          >=57.5        238     43     43      0
ki0047075b-MAL-ED          INDIA                          <42.5         238     46     43      3
ki0047075b-MAL-ED          INDIA                          [42.5-50)     238     76     67      9
ki0047075b-MAL-ED          INDIA                          [50-57.5)     238     73     72      1
ki0047075b-MAL-ED          NEPAL                          >=57.5        237     87     82      5
ki0047075b-MAL-ED          NEPAL                          <42.5         237      2      2      0
ki0047075b-MAL-ED          NEPAL                          [42.5-50)     237     49     47      2
ki0047075b-MAL-ED          NEPAL                          [50-57.5)     237     99     95      4
ki0047075b-MAL-ED          PERU                           >=57.5        272     99     89     10
ki0047075b-MAL-ED          PERU                           <42.5         272     13     13      0
ki0047075b-MAL-ED          PERU                           [42.5-50)     272     53     50      3
ki0047075b-MAL-ED          PERU                           [50-57.5)     272    107    101      6
ki0047075b-MAL-ED          SOUTH AFRICA                   >=57.5        264    190    178     12
ki0047075b-MAL-ED          SOUTH AFRICA                   <42.5         264      3      1      2
ki0047075b-MAL-ED          SOUTH AFRICA                   [42.5-50)     264     16     15      1
ki0047075b-MAL-ED          SOUTH AFRICA                   [50-57.5)     264     55     52      3
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=57.5        248     99     99      0
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <42.5         248      9      9      0
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [42.5-50)     248     66     65      1
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [50-57.5)     248     74     74      0
ki1017093b-PROVIDE         BANGLADESH                     >=57.5        660    119    116      3
ki1017093b-PROVIDE         BANGLADESH                     <42.5         660    176    171      5
ki1017093b-PROVIDE         BANGLADESH                     [42.5-50)     660    197    193      4
ki1017093b-PROVIDE         BANGLADESH                     [50-57.5)     660    168    158     10
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=57.5       2235   1423   1422      1
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <42.5        2235     24     24      0
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [42.5-50)    2235    198    198      0
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [50-57.5)    2235    590    589      1


The following strata were considered:

* studyid: ki0047075b-MAL-ED, country: BANGLADESH
* studyid: ki0047075b-MAL-ED, country: BRAZIL
* studyid: ki0047075b-MAL-ED, country: INDIA
* studyid: ki0047075b-MAL-ED, country: NEPAL
* studyid: ki0047075b-MAL-ED, country: PERU
* studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1017093b-PROVIDE, country: BANGLADESH
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

### Dropped Strata

Some strata were dropped due to rare outcomes:

* studyid: ki0047075b-MAL-ED, country: BANGLADESH
* studyid: ki0047075b-MAL-ED, country: BRAZIL
* studyid: ki0047075b-MAL-ED, country: INDIA
* studyid: ki0047075b-MAL-ED, country: NEPAL
* studyid: ki0047075b-MAL-ED, country: PERU
* studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1017093b-PROVIDE, country: BANGLADESH
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF


ALL STRATA DROPPED. JOB FINISHED














