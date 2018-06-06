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

**Intervention Variable:** mhtcm

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                    country                        A               n     nA   nAY0   nAY1
-------------------------  -----------------------------  ----------  -----  -----  -----  -----
ki0047075b-MAL-ED          BANGLADESH                     >=160         241      4      4      0
ki0047075b-MAL-ED          BANGLADESH                     <145          241     51     48      3
ki0047075b-MAL-ED          BANGLADESH                     [145-150)     241     87     85      2
ki0047075b-MAL-ED          BANGLADESH                     [150-155)     241     78     76      2
ki0047075b-MAL-ED          BANGLADESH                     [155-160)     241     21     20      1
ki0047075b-MAL-ED          BRAZIL                         >=160         214     66     63      3
ki0047075b-MAL-ED          BRAZIL                         <145          214      8      7      1
ki0047075b-MAL-ED          BRAZIL                         [145-150)     214     31     28      3
ki0047075b-MAL-ED          BRAZIL                         [150-155)     214     49     45      4
ki0047075b-MAL-ED          BRAZIL                         [155-160)     214     60     53      7
ki0047075b-MAL-ED          INDIA                          >=160         238     14     13      1
ki0047075b-MAL-ED          INDIA                          <145          238     28     28      0
ki0047075b-MAL-ED          INDIA                          [145-150)     238     70     66      4
ki0047075b-MAL-ED          INDIA                          [150-155)     238     85     78      7
ki0047075b-MAL-ED          INDIA                          [155-160)     238     41     40      1
ki0047075b-MAL-ED          NEPAL                          >=160         237      5      5      0
ki0047075b-MAL-ED          NEPAL                          <145          237     37     34      3
ki0047075b-MAL-ED          NEPAL                          [145-150)     237     85     85      0
ki0047075b-MAL-ED          NEPAL                          [150-155)     237     74     69      5
ki0047075b-MAL-ED          NEPAL                          [155-160)     237     36     33      3
ki0047075b-MAL-ED          PERU                           >=160         272     11     10      1
ki0047075b-MAL-ED          PERU                           <145          272     38     36      2
ki0047075b-MAL-ED          PERU                           [145-150)     272    101     97      4
ki0047075b-MAL-ED          PERU                           [150-155)     272     74     68      6
ki0047075b-MAL-ED          PERU                           [155-160)     272     48     42      6
ki0047075b-MAL-ED          SOUTH AFRICA                   >=160         264    121    114      7
ki0047075b-MAL-ED          SOUTH AFRICA                   <145          264      9      8      1
ki0047075b-MAL-ED          SOUTH AFRICA                   [145-150)     264     13     12      1
ki0047075b-MAL-ED          SOUTH AFRICA                   [150-155)     264     42     40      2
ki0047075b-MAL-ED          SOUTH AFRICA                   [155-160)     264     79     72      7
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=160         248     64     64      0
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <145          248     10     10      0
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [145-150)     248     23     23      0
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [150-155)     248     66     65      1
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [155-160)     248     85     85      0
ki1017093b-PROVIDE         BANGLADESH                     >=160         660     33     33      0
ki1017093b-PROVIDE         BANGLADESH                     <145          660     86     82      4
ki1017093b-PROVIDE         BANGLADESH                     [145-150)     660    229    221      8
ki1017093b-PROVIDE         BANGLADESH                     [150-155)     660    207    201      6
ki1017093b-PROVIDE         BANGLADESH                     [155-160)     660    105    101      4
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=160        2244    659    659      0
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <145         2244     33     33      0
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [145-150)    2244    167    167      0
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [150-155)    2244    616    615      1
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [155-160)    2244    769    768      1
ki1101329-Keneba           GAMBIA                         >=160        2189   1106   1079     27
ki1101329-Keneba           GAMBIA                         <145         2189      7      7      0
ki1101329-Keneba           GAMBIA                         [145-150)    2189     36     34      2
ki1101329-Keneba           GAMBIA                         [150-155)    2189    329    311     18
ki1101329-Keneba           GAMBIA                         [155-160)    2189    711    695     16


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
* studyid: ki1101329-Keneba, country: GAMBIA

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
* studyid: ki1101329-Keneba, country: GAMBIA


ALL STRATA DROPPED. JOB FINISHED














