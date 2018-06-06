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
ki0047075b-MAL-ED          BANGLADESH                     [18.5-25)     241    152    148      4
ki0047075b-MAL-ED          BANGLADESH                     <18.5         241     32     32      0
ki0047075b-MAL-ED          BANGLADESH                     [25-30)       241     52     48      4
ki0047075b-MAL-ED          BANGLADESH                     >=30          241      5      5      0
ki0047075b-MAL-ED          BRAZIL                         [18.5-25)     213     86     80      6
ki0047075b-MAL-ED          BRAZIL                         <18.5         213      9      7      2
ki0047075b-MAL-ED          BRAZIL                         [25-30)       213     80     72      8
ki0047075b-MAL-ED          BRAZIL                         >=30          213     38     37      1
ki0047075b-MAL-ED          INDIA                          [18.5-25)     238    140    130     10
ki0047075b-MAL-ED          INDIA                          <18.5         238     48     45      3
ki0047075b-MAL-ED          INDIA                          [25-30)       238     40     40      0
ki0047075b-MAL-ED          INDIA                          >=30          238     10     10      0
ki0047075b-MAL-ED          NEPAL                          [18.5-25)     237    133    129      4
ki0047075b-MAL-ED          NEPAL                          <18.5         237      0      0      0
ki0047075b-MAL-ED          NEPAL                          [25-30)       237     87     82      5
ki0047075b-MAL-ED          NEPAL                          >=30          237     17     15      2
ki0047075b-MAL-ED          PERU                           [18.5-25)     272    148    139      9
ki0047075b-MAL-ED          PERU                           <18.5         272      5      5      0
ki0047075b-MAL-ED          PERU                           [25-30)       272    103     96      7
ki0047075b-MAL-ED          PERU                           >=30          272     16     13      3
ki0047075b-MAL-ED          SOUTH AFRICA                   [18.5-25)     264    106     98      8
ki0047075b-MAL-ED          SOUTH AFRICA                   <18.5         264      8      7      1
ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)       264     84     79      5
ki0047075b-MAL-ED          SOUTH AFRICA                   >=30          264     66     62      4
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [18.5-25)     248    172    171      1
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <18.5         248     14     14      0
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)       248     50     50      0
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30          248     12     12      0
ki1017093b-PROVIDE         BANGLADESH                     [18.5-25)     660    417    403     14
ki1017093b-PROVIDE         BANGLADESH                     <18.5         660    126    123      3
ki1017093b-PROVIDE         BANGLADESH                     [25-30)       660     97     93      4
ki1017093b-PROVIDE         BANGLADESH                     >=30          660     20     19      1
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [18.5-25)    2231   1171   1170      1
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <18.5        2231     35     35      0
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)      2231    709    708      1
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30         2231    316    316      0


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














