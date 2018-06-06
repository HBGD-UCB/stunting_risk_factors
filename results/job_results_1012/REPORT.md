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
ki0047075b-MAL-ED          BANGLADESH                     >=57.5        236     49     46      3
ki0047075b-MAL-ED          BANGLADESH                     <42.5         236     51     51      0
ki0047075b-MAL-ED          BANGLADESH                     [42.5-50)     236     82     78      4
ki0047075b-MAL-ED          BANGLADESH                     [50-57.5)     236     54     50      4
ki0047075b-MAL-ED          BRAZIL                         >=57.5        211    136    122     14
ki0047075b-MAL-ED          BRAZIL                         <42.5         211     13     10      3
ki0047075b-MAL-ED          BRAZIL                         [42.5-50)     211     19     17      2
ki0047075b-MAL-ED          BRAZIL                         [50-57.5)     211     43     40      3
ki0047075b-MAL-ED          INDIA                          >=57.5        237     43     40      3
ki0047075b-MAL-ED          INDIA                          <42.5         237     46     43      3
ki0047075b-MAL-ED          INDIA                          [42.5-50)     237     75     65     10
ki0047075b-MAL-ED          INDIA                          [50-57.5)     237     73     70      3
ki0047075b-MAL-ED          NEPAL                          >=57.5        236     86     78      8
ki0047075b-MAL-ED          NEPAL                          <42.5         236      2      2      0
ki0047075b-MAL-ED          NEPAL                          [42.5-50)     236     49     46      3
ki0047075b-MAL-ED          NEPAL                          [50-57.5)     236     99     95      4
ki0047075b-MAL-ED          PERU                           >=57.5        264     97     84     13
ki0047075b-MAL-ED          PERU                           <42.5         264     13     12      1
ki0047075b-MAL-ED          PERU                           [42.5-50)     264     52     46      6
ki0047075b-MAL-ED          PERU                           [50-57.5)     264    102     93      9
ki0047075b-MAL-ED          SOUTH AFRICA                   >=57.5        261    187    165     22
ki0047075b-MAL-ED          SOUTH AFRICA                   <42.5         261      3      1      2
ki0047075b-MAL-ED          SOUTH AFRICA                   [42.5-50)     261     16     14      2
ki0047075b-MAL-ED          SOUTH AFRICA                   [50-57.5)     261     55     51      4
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=57.5        243     97     96      1
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <42.5         243      8      8      0
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [42.5-50)     243     66     65      1
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [50-57.5)     243     72     72      0
ki1017093b-PROVIDE         BANGLADESH                     >=57.5        656    119    116      3
ki1017093b-PROVIDE         BANGLADESH                     <42.5         656    175    168      7
ki1017093b-PROVIDE         BANGLADESH                     [42.5-50)     656    195    189      6
ki1017093b-PROVIDE         BANGLADESH                     [50-57.5)     656    167    154     13
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=57.5       2165   1388   1387      1
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <42.5        2165     20     20      0
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [42.5-50)    2165    189    189      0
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [50-57.5)    2165    568    567      1


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














