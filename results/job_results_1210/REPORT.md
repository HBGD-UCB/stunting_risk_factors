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

**Intervention Variable:** gagebrth

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                    country                        A               n    nA   nAY0   nAY1
-------------------------  -----------------------------  ----------  -----  ----  -----  -----
ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)     348   145    141      4
ki1000108-CMC-V-BCS-2002   INDIA                          <259          348    47     43      4
ki1000108-CMC-V-BCS-2002   INDIA                          [259-273)     348    75     70      5
ki1000108-CMC-V-BCS-2002   INDIA                          >=287         348    81     77      4
ki1000108-IRC              INDIA                          [273-287)     390   165    155     10
ki1000108-IRC              INDIA                          <259          390    40     37      3
ki1000108-IRC              INDIA                          [259-273)     390    92     87      5
ki1000108-IRC              INDIA                          >=287         390    93     85      8
ki1000109-EE               PAKISTAN                       [273-287)     175    15     15      0
ki1000109-EE               PAKISTAN                       <259          175   105    105      0
ki1000109-EE               PAKISTAN                       [259-273)     175    54     54      0
ki1000109-EE               PAKISTAN                       >=287         175     1      1      0
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [273-287)    2140   845    845      0
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <259         2140   294    293      1
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [259-273)    2140   445    445      0
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=287        2140   556    556      0
ki1101329-Keneba           GAMBIA                         [273-287)    1624   651    642      9
ki1101329-Keneba           GAMBIA                         <259         1624   168    157     11
ki1101329-Keneba           GAMBIA                         [259-273)    1624   623    606     17
ki1101329-Keneba           GAMBIA                         >=287        1624   182    178      4
ki1113344-GMS-Nepal        NEPAL                          [273-287)     594     0      0      0
ki1113344-GMS-Nepal        NEPAL                          <259          594     1      0      1
ki1113344-GMS-Nepal        NEPAL                          [259-273)     594   589    575     14
ki1113344-GMS-Nepal        NEPAL                          >=287         594     4      4      0


The following strata were considered:

* studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* studyid: ki1000108-IRC, country: INDIA
* studyid: ki1000109-EE, country: PAKISTAN
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1101329-Keneba, country: GAMBIA
* studyid: ki1113344-GMS-Nepal, country: NEPAL

### Dropped Strata

Some strata were dropped due to rare outcomes:

* studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* studyid: ki1000108-IRC, country: INDIA
* studyid: ki1000109-EE, country: PAKISTAN
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1101329-Keneba, country: GAMBIA
* studyid: ki1113344-GMS-Nepal, country: NEPAL


ALL STRATA DROPPED. JOB FINISHED














