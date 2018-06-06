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

**Intervention Variable:** hhwealth_quart

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                    country                        A               n    nA   nAY0   nAY1
-------------------------  -----------------------------  ----------  -----  ----  -----  -----
ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4      80    26     24      2
ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1      80     4      4      0
ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2      80    15     14      1
ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3      80    35     34      1
ki0047075b-MAL-ED          BRAZIL                         Wealth Q4       3     2      1      1
ki0047075b-MAL-ED          BRAZIL                         Wealth Q1       3     0      0      0
ki0047075b-MAL-ED          BRAZIL                         Wealth Q2       3     1      0      1
ki0047075b-MAL-ED          BRAZIL                         Wealth Q3       3     0      0      0
ki0047075b-MAL-ED          INDIA                          Wealth Q4      71    29     27      2
ki0047075b-MAL-ED          INDIA                          Wealth Q1      71     1      1      0
ki0047075b-MAL-ED          INDIA                          Wealth Q2      71    10      9      1
ki0047075b-MAL-ED          INDIA                          Wealth Q3      71    31     27      4
ki0047075b-MAL-ED          NEPAL                          Wealth Q4      42    21     21      0
ki0047075b-MAL-ED          NEPAL                          Wealth Q1      42    11     10      1
ki0047075b-MAL-ED          NEPAL                          Wealth Q2      42     6      5      1
ki0047075b-MAL-ED          NEPAL                          Wealth Q3      42     4      3      1
ki0047075b-MAL-ED          PERU                           Wealth Q4      36     1      1      0
ki0047075b-MAL-ED          PERU                           Wealth Q1      36    23     21      2
ki0047075b-MAL-ED          PERU                           Wealth Q2      36    11     10      1
ki0047075b-MAL-ED          PERU                           Wealth Q3      36     1      1      0
ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4      68    13     13      0
ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1      68    12     12      0
ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2      68    24     24      0
ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3      68    19     15      4
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4      60     0      0      0
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1      60    39     39      0
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2      60    21     21      0
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3      60     0      0      0
ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4     370    96     91      5
ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1     370    91     87      4
ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2     370    93     89      4
ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3     370    90     86      4
ki1000108-IRC              INDIA                          Wealth Q4     410   100     91      9
ki1000108-IRC              INDIA                          Wealth Q1     410   105    102      3
ki1000108-IRC              INDIA                          Wealth Q2     410   102     94      8
ki1000108-IRC              INDIA                          Wealth Q3     410   103     95      8
ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4     688   174    166      8
ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1     688   173    169      4
ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2     688   168    162      6
ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3     688   173    169      4
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4    2265   554    553      1
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1    2265   685    685      0
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2    2265   460    460      0
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3    2265   566    565      1
ki1113344-GMS-Nepal        NEPAL                          Wealth Q4     594   149    143      6
ki1113344-GMS-Nepal        NEPAL                          Wealth Q1     594   149    145      4
ki1113344-GMS-Nepal        NEPAL                          Wealth Q2     594   150    146      4
ki1113344-GMS-Nepal        NEPAL                          Wealth Q3     594   146    145      1
ki1114097-CONTENT          PERU                           Wealth Q4     214    51     46      5
ki1114097-CONTENT          PERU                           Wealth Q1     214    59     58      1
ki1114097-CONTENT          PERU                           Wealth Q2     214    52     48      4
ki1114097-CONTENT          PERU                           Wealth Q3     214    52     48      4


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
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
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
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1113344-GMS-Nepal, country: NEPAL
* studyid: ki1114097-CONTENT, country: PERU


ALL STRATA DROPPED. JOB FINISHED














