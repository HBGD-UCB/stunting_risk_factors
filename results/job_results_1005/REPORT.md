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

**Intervention Variable:** birthwt

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                    country                        A             n     nA   nAY0   nAY1
-------------------------  -----------------------------  --------  -----  -----  -----  -----
ki0047075b-MAL-ED          BANGLADESH                     >=0         234     33     33      0
ki0047075b-MAL-ED          BANGLADESH                     <-3         234      4      4      0
ki0047075b-MAL-ED          BANGLADESH                     [-3--2)     234     32     29      3
ki0047075b-MAL-ED          BANGLADESH                     [-2--1)     234     86     80      6
ki0047075b-MAL-ED          BANGLADESH                     [-1-0)      234     79     77      2
ki0047075b-MAL-ED          BRAZIL                         >=0         220    125    119      6
ki0047075b-MAL-ED          BRAZIL                         <-3         220      0      0      0
ki0047075b-MAL-ED          BRAZIL                         [-3--2)     220      7      2      5
ki0047075b-MAL-ED          BRAZIL                         [-2--1)     220     21     14      7
ki0047075b-MAL-ED          BRAZIL                         [-1-0)      220     67     62      5
ki0047075b-MAL-ED          INDIA                          >=0         238     44     44      0
ki0047075b-MAL-ED          INDIA                          <-3         238      5      4      1
ki0047075b-MAL-ED          INDIA                          [-3--2)     238     22     18      4
ki0047075b-MAL-ED          INDIA                          [-2--1)     238     76     68      8
ki0047075b-MAL-ED          INDIA                          [-1-0)      238     91     85      6
ki0047075b-MAL-ED          NEPAL                          >=0         230     48     48      0
ki0047075b-MAL-ED          NEPAL                          <-3         230      3      3      0
ki0047075b-MAL-ED          NEPAL                          [-3--2)     230     15      9      6
ki0047075b-MAL-ED          NEPAL                          [-2--1)     230     53     46      7
ki0047075b-MAL-ED          NEPAL                          [-1-0)      230    111    109      2
ki0047075b-MAL-ED          PERU                           >=0         272     88     84      4
ki0047075b-MAL-ED          PERU                           <-3         272      3      1      2
ki0047075b-MAL-ED          PERU                           [-3--2)     272      6      6      0
ki0047075b-MAL-ED          PERU                           [-2--1)     272     37     28      9
ki0047075b-MAL-ED          PERU                           [-1-0)      272    138    124     14
ki0047075b-MAL-ED          SOUTH AFRICA                   >=0         296    112    108      4
ki0047075b-MAL-ED          SOUTH AFRICA                   <-3         296      3      0      3
ki0047075b-MAL-ED          SOUTH AFRICA                   [-3--2)     296     12      9      3
ki0047075b-MAL-ED          SOUTH AFRICA                   [-2--1)     296     42     30     12
ki0047075b-MAL-ED          SOUTH AFRICA                   [-1-0)      296    127    118      9
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=0         127     58     58      0
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <-3         127      0      0      0
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-3--2)     127      5      5      0
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-2--1)     127     17     17      0
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-1-0)      127     47     47      0
ki1000108-CMC-V-BCS-2002   INDIA                          >=0         362     68     65      3
ki1000108-CMC-V-BCS-2002   INDIA                          <-3         362     12     10      2
ki1000108-CMC-V-BCS-2002   INDIA                          [-3--2)     362     30     28      2
ki1000108-CMC-V-BCS-2002   INDIA                          [-2--1)     362    106    100      6
ki1000108-CMC-V-BCS-2002   INDIA                          [-1-0)      362    146    136     10
ki1000108-IRC              INDIA                          >=0         404     61     56      5
ki1000108-IRC              INDIA                          <-3         404     13     13      0
ki1000108-IRC              INDIA                          [-3--2)     404     41     30     11
ki1000108-IRC              INDIA                          [-2--1)     404    133    117     16
ki1000108-IRC              INDIA                          [-1-0)      404    156    144     12
ki1000109-EE               PAKISTAN                       >=0         124     26     26      0
ki1000109-EE               PAKISTAN                       <-3         124      6      6      0
ki1000109-EE               PAKISTAN                       [-3--2)     124      8      8      0
ki1000109-EE               PAKISTAN                       [-2--1)     124     36     36      0
ki1000109-EE               PAKISTAN                       [-1-0)      124     48     48      0
ki1000109-ResPak           PAKISTAN                       >=0           3      2      2      0
ki1000109-ResPak           PAKISTAN                       <-3           3      0      0      0
ki1000109-ResPak           PAKISTAN                       [-3--2)       3      0      0      0
ki1000109-ResPak           PAKISTAN                       [-2--1)       3      0      0      0
ki1000109-ResPak           PAKISTAN                       [-1-0)        3      1      1      0
ki1017093b-PROVIDE         BANGLADESH                     >=0         686     66     65      1
ki1017093b-PROVIDE         BANGLADESH                     <-3         686      4      4      0
ki1017093b-PROVIDE         BANGLADESH                     [-3--2)     686    107     89     18
ki1017093b-PROVIDE         BANGLADESH                     [-2--1)     686    286    277      9
ki1017093b-PROVIDE         BANGLADESH                     [-1-0)      686    223    222      1
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=0        2181   1001   1000      1
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <-3        2181     13     13      0
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-3--2)    2181     31     31      0
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-2--1)    2181    242    242      0
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-1-0)     2181    894    893      1
ki1101329-Keneba           GAMBIA                         >=0        1972    390    376     14
ki1101329-Keneba           GAMBIA                         <-3        1972     23     19      4
ki1101329-Keneba           GAMBIA                         [-3--2)    1972    111     95     16
ki1101329-Keneba           GAMBIA                         [-2--1)    1972    547    500     47
ki1101329-Keneba           GAMBIA                         [-1-0)     1972    901    850     51
ki1114097-CMIN             BANGLADESH                     >=0           7      2      2      0
ki1114097-CMIN             BANGLADESH                     <-3           7      0      0      0
ki1114097-CMIN             BANGLADESH                     [-3--2)       7      1      1      0
ki1114097-CMIN             BANGLADESH                     [-2--1)       7      1      1      0
ki1114097-CMIN             BANGLADESH                     [-1-0)        7      3      3      0
ki1114097-CMIN             PERU                           >=0          10      8      8      0
ki1114097-CMIN             PERU                           <-3          10      0      0      0
ki1114097-CMIN             PERU                           [-3--2)      10      0      0      0
ki1114097-CMIN             PERU                           [-2--1)      10      0      0      0
ki1114097-CMIN             PERU                           [-1-0)       10      2      2      0
ki1114097-CONTENT          PERU                           >=0           2      1      1      0
ki1114097-CONTENT          PERU                           <-3           2      0      0      0
ki1114097-CONTENT          PERU                           [-3--2)       2      0      0      0
ki1114097-CONTENT          PERU                           [-2--1)       2      0      0      0
ki1114097-CONTENT          PERU                           [-1-0)        2      1      1      0


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
* studyid: ki1000109-EE, country: PAKISTAN
* studyid: ki1000109-ResPak, country: PAKISTAN
* studyid: ki1017093b-PROVIDE, country: BANGLADESH
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1101329-Keneba, country: GAMBIA
* studyid: ki1114097-CMIN, country: BANGLADESH
* studyid: ki1114097-CMIN, country: PERU
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
* studyid: ki1000109-EE, country: PAKISTAN
* studyid: ki1000109-ResPak, country: PAKISTAN
* studyid: ki1017093b-PROVIDE, country: BANGLADESH
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1101329-Keneba, country: GAMBIA
* studyid: ki1114097-CMIN, country: BANGLADESH
* studyid: ki1114097-CMIN, country: PERU
* studyid: ki1114097-CONTENT, country: PERU


ALL STRATA DROPPED. JOB FINISHED














