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

**Intervention Variable:** feducyrs

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                    country                        A        n     nA   nAY0   nAY1
-------------------------  -----------------------------  ---  -----  -----  -----  -----
ki0047075b-MAL-ED          BANGLADESH                     Q4     136     49     47      2
ki0047075b-MAL-ED          BANGLADESH                     Q1     136     31     31      0
ki0047075b-MAL-ED          BANGLADESH                     Q2     136      8      7      1
ki0047075b-MAL-ED          BANGLADESH                     Q3     136     48     45      3
ki0047075b-MAL-ED          INDIA                          Q4     145     44     38      6
ki0047075b-MAL-ED          INDIA                          Q1     145     25     24      1
ki0047075b-MAL-ED          INDIA                          Q2     145     44     43      1
ki0047075b-MAL-ED          INDIA                          Q3     145     32     31      1
ki0047075b-MAL-ED          NEPAL                          Q4      96     42     39      3
ki0047075b-MAL-ED          NEPAL                          Q1      96     23     23      0
ki0047075b-MAL-ED          NEPAL                          Q2      96     24     22      2
ki0047075b-MAL-ED          NEPAL                          Q3      96      7      7      0
ki0047075b-MAL-ED          PERU                           Q4     228    108     97     11
ki0047075b-MAL-ED          PERU                           Q1     228     46     40      6
ki0047075b-MAL-ED          PERU                           Q2     228     62     56      6
ki0047075b-MAL-ED          PERU                           Q3     228     12     10      2
ki0047075b-MAL-ED          SOUTH AFRICA                   Q4     103     38     32      6
ki0047075b-MAL-ED          SOUTH AFRICA                   Q1     103     19     18      1
ki0047075b-MAL-ED          SOUTH AFRICA                   Q2     103     27     26      1
ki0047075b-MAL-ED          SOUTH AFRICA                   Q3     103     19     16      3
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4     201      9      9      0
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1     201     42     42      0
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2     201     31     31      0
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3     201    119    117      2
ki1017093b-PROVIDE         BANGLADESH                     Q4     686     18     16      2
ki1017093b-PROVIDE         BANGLADESH                     Q1     686    312    301     11
ki1017093b-PROVIDE         BANGLADESH                     Q2     686    268    257     11
ki1017093b-PROVIDE         BANGLADESH                     Q3     686     88     83      5
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q4    2193    204    204      0
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q1    2193     11     11      0
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q2    2193   1889   1887      2
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q3    2193     89     89      0
ki1113344-GMS-Nepal        NEPAL                          Q4     592    143    137      6
ki1113344-GMS-Nepal        NEPAL                          Q1     592    254    244     10
ki1113344-GMS-Nepal        NEPAL                          Q2     592     93     91      2
ki1113344-GMS-Nepal        NEPAL                          Q3     592    102    101      1


The following strata were considered:

* studyid: ki0047075b-MAL-ED, country: BANGLADESH
* studyid: ki0047075b-MAL-ED, country: INDIA
* studyid: ki0047075b-MAL-ED, country: NEPAL
* studyid: ki0047075b-MAL-ED, country: PERU
* studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1017093b-PROVIDE, country: BANGLADESH
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1113344-GMS-Nepal, country: NEPAL

### Dropped Strata

Some strata were dropped due to rare outcomes:

* studyid: ki0047075b-MAL-ED, country: BANGLADESH
* studyid: ki0047075b-MAL-ED, country: INDIA
* studyid: ki0047075b-MAL-ED, country: NEPAL
* studyid: ki0047075b-MAL-ED, country: PERU
* studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1017093b-PROVIDE, country: BANGLADESH
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1113344-GMS-Nepal, country: NEPAL


ALL STRATA DROPPED. JOB FINISHED














