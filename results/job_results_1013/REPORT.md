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

**Intervention Variable:** mbmi

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                    country                        A               n     nA   nAY0   nAY1
-------------------------  -----------------------------  ----------  -----  -----  -----  -----
ki0047075b-MAL-ED          BANGLADESH                     [18.5-25)     236    150    145      5
ki0047075b-MAL-ED          BANGLADESH                     <18.5         236     31     30      1
ki0047075b-MAL-ED          BANGLADESH                     [25-30)       236     50     45      5
ki0047075b-MAL-ED          BANGLADESH                     >=30          236      5      5      0
ki0047075b-MAL-ED          BRAZIL                         [18.5-25)     211     86     79      7
ki0047075b-MAL-ED          BRAZIL                         <18.5         211      9      7      2
ki0047075b-MAL-ED          BRAZIL                         [25-30)       211     79     69     10
ki0047075b-MAL-ED          BRAZIL                         >=30          211     37     34      3
ki0047075b-MAL-ED          INDIA                          [18.5-25)     237    139    126     13
ki0047075b-MAL-ED          INDIA                          <18.5         237     48     45      3
ki0047075b-MAL-ED          INDIA                          [25-30)       237     40     38      2
ki0047075b-MAL-ED          INDIA                          >=30          237     10      9      1
ki0047075b-MAL-ED          NEPAL                          [18.5-25)     236    133    128      5
ki0047075b-MAL-ED          NEPAL                          <18.5         236      0      0      0
ki0047075b-MAL-ED          NEPAL                          [25-30)       236     87     80      7
ki0047075b-MAL-ED          NEPAL                          >=30          236     16     13      3
ki0047075b-MAL-ED          PERU                           [18.5-25)     264    142    126     16
ki0047075b-MAL-ED          PERU                           <18.5         264      5      5      0
ki0047075b-MAL-ED          PERU                           [25-30)       264    101     91     10
ki0047075b-MAL-ED          PERU                           >=30          264     16     13      3
ki0047075b-MAL-ED          SOUTH AFRICA                   [18.5-25)     261    105     92     13
ki0047075b-MAL-ED          SOUTH AFRICA                   <18.5         261      8      7      1
ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)       261     82     73      9
ki0047075b-MAL-ED          SOUTH AFRICA                   >=30          261     66     59      7
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [18.5-25)     243    169    168      1
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <18.5         243     14     14      0
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)       243     49     48      1
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30          243     11     11      0
ki1017093b-PROVIDE         BANGLADESH                     [18.5-25)     656    415    396     19
ki1017093b-PROVIDE         BANGLADESH                     <18.5         656    125    120      5
ki1017093b-PROVIDE         BANGLADESH                     [25-30)       656     96     92      4
ki1017093b-PROVIDE         BANGLADESH                     >=30          656     20     19      1
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [18.5-25)    2161   1128   1127      1
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <18.5        2161     32     32      0
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)      2161    691    690      1
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30         2161    310    310      0


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














