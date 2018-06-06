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
ki0047075b-MAL-ED          BANGLADESH                     >=160         236      4      4      0
ki0047075b-MAL-ED          BANGLADESH                     <145          236     50     47      3
ki0047075b-MAL-ED          BANGLADESH                     [145-150)     236     85     83      2
ki0047075b-MAL-ED          BANGLADESH                     [150-155)     236     76     72      4
ki0047075b-MAL-ED          BANGLADESH                     [155-160)     236     21     19      2
ki0047075b-MAL-ED          BRAZIL                         >=160         212     65     62      3
ki0047075b-MAL-ED          BRAZIL                         <145          212      8      7      1
ki0047075b-MAL-ED          BRAZIL                         [145-150)     212     31     28      3
ki0047075b-MAL-ED          BRAZIL                         [150-155)     212     48     40      8
ki0047075b-MAL-ED          BRAZIL                         [155-160)     212     60     52      8
ki0047075b-MAL-ED          INDIA                          >=160         237     14     13      1
ki0047075b-MAL-ED          INDIA                          <145          237     28     28      0
ki0047075b-MAL-ED          INDIA                          [145-150)     237     70     64      6
ki0047075b-MAL-ED          INDIA                          [150-155)     237     84     74     10
ki0047075b-MAL-ED          INDIA                          [155-160)     237     41     39      2
ki0047075b-MAL-ED          NEPAL                          >=160         236      5      5      0
ki0047075b-MAL-ED          NEPAL                          <145          236     37     33      4
ki0047075b-MAL-ED          NEPAL                          [145-150)     236     85     84      1
ki0047075b-MAL-ED          NEPAL                          [150-155)     236     73     66      7
ki0047075b-MAL-ED          NEPAL                          [155-160)     236     36     33      3
ki0047075b-MAL-ED          PERU                           >=160         264     11      9      2
ki0047075b-MAL-ED          PERU                           <145          264     37     35      2
ki0047075b-MAL-ED          PERU                           [145-150)     264     98     88     10
ki0047075b-MAL-ED          PERU                           [150-155)     264     73     65      8
ki0047075b-MAL-ED          PERU                           [155-160)     264     45     38      7
ki0047075b-MAL-ED          SOUTH AFRICA                   >=160         261    120    106     14
ki0047075b-MAL-ED          SOUTH AFRICA                   <145          261      9      8      1
ki0047075b-MAL-ED          SOUTH AFRICA                   [145-150)     261     13     12      1
ki0047075b-MAL-ED          SOUTH AFRICA                   [150-155)     261     41     38      3
ki0047075b-MAL-ED          SOUTH AFRICA                   [155-160)     261     78     67     11
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=160         243     64     64      0
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <145          243      9      9      0
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [145-150)     243     23     23      0
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [150-155)     243     66     65      1
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [155-160)     243     81     80      1
ki1017093b-PROVIDE         BANGLADESH                     >=160         656     33     33      0
ki1017093b-PROVIDE         BANGLADESH                     <145          656     85     81      4
ki1017093b-PROVIDE         BANGLADESH                     [145-150)     656    226    213     13
ki1017093b-PROVIDE         BANGLADESH                     [150-155)     656    207    199      8
ki1017093b-PROVIDE         BANGLADESH                     [155-160)     656    105    101      4
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=160        2173    646    646      0
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <145         2173     30     30      0
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [145-150)    2173    159    159      0
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [150-155)    2173    592    591      1
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [155-160)    2173    746    745      1
ki1101329-Keneba           GAMBIA                         >=160        2160   1093   1018     75
ki1101329-Keneba           GAMBIA                         <145         2160      7      7      0
ki1101329-Keneba           GAMBIA                         [145-150)    2160     36     33      3
ki1101329-Keneba           GAMBIA                         [150-155)    2160    327    300     27
ki1101329-Keneba           GAMBIA                         [155-160)    2160    697    655     42


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














