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
ki0047075b-MAL-ED          BANGLADESH                     >=0         240     34     34      0
ki0047075b-MAL-ED          BANGLADESH                     <-3         240      4      4      0
ki0047075b-MAL-ED          BANGLADESH                     [-3--2)     240     33     30      3
ki0047075b-MAL-ED          BANGLADESH                     [-2--1)     240     89     85      4
ki0047075b-MAL-ED          BANGLADESH                     [-1-0)      240     80     79      1
ki0047075b-MAL-ED          BRAZIL                         >=0         223    126    121      5
ki0047075b-MAL-ED          BRAZIL                         <-3         223      0      0      0
ki0047075b-MAL-ED          BRAZIL                         [-3--2)     223      7      2      5
ki0047075b-MAL-ED          BRAZIL                         [-2--1)     223     21     15      6
ki0047075b-MAL-ED          BRAZIL                         [-1-0)      223     69     67      2
ki0047075b-MAL-ED          INDIA                          >=0         240     44     44      0
ki0047075b-MAL-ED          INDIA                          <-3         240      5      4      1
ki0047075b-MAL-ED          INDIA                          [-3--2)     240     23     20      3
ki0047075b-MAL-ED          INDIA                          [-2--1)     240     77     70      7
ki0047075b-MAL-ED          INDIA                          [-1-0)      240     91     89      2
ki0047075b-MAL-ED          NEPAL                          >=0         231     48     48      0
ki0047075b-MAL-ED          NEPAL                          <-3         231      3      3      0
ki0047075b-MAL-ED          NEPAL                          [-3--2)     231     15     10      5
ki0047075b-MAL-ED          NEPAL                          [-2--1)     231     54     49      5
ki0047075b-MAL-ED          NEPAL                          [-1-0)      231    111    110      1
ki0047075b-MAL-ED          PERU                           >=0         280     90     87      3
ki0047075b-MAL-ED          PERU                           <-3         280      3      1      2
ki0047075b-MAL-ED          PERU                           [-3--2)     280      6      6      0
ki0047075b-MAL-ED          PERU                           [-2--1)     280     39     33      6
ki0047075b-MAL-ED          PERU                           [-1-0)      280    142    134      8
ki0047075b-MAL-ED          SOUTH AFRICA                   >=0         302    113    112      1
ki0047075b-MAL-ED          SOUTH AFRICA                   <-3         302      3      0      3
ki0047075b-MAL-ED          SOUTH AFRICA                   [-3--2)     302     13     10      3
ki0047075b-MAL-ED          SOUTH AFRICA                   [-2--1)     302     45     38      7
ki0047075b-MAL-ED          SOUTH AFRICA                   [-1-0)      302    128    123      5
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=0         129     59     59      0
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <-3         129      0      0      0
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-3--2)     129      5      5      0
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-2--1)     129     17     17      0
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-1-0)      129     48     48      0
ki1000108-CMC-V-BCS-2002   INDIA                          >=0         362     68     66      2
ki1000108-CMC-V-BCS-2002   INDIA                          <-3         362     12     10      2
ki1000108-CMC-V-BCS-2002   INDIA                          [-3--2)     362     30     28      2
ki1000108-CMC-V-BCS-2002   INDIA                          [-2--1)     362    106    101      5
ki1000108-CMC-V-BCS-2002   INDIA                          [-1-0)      362    146    140      6
ki1000108-IRC              INDIA                          >=0         404     61     59      2
ki1000108-IRC              INDIA                          <-3         404     13     13      0
ki1000108-IRC              INDIA                          [-3--2)     404     41     33      8
ki1000108-IRC              INDIA                          [-2--1)     404    133    123     10
ki1000108-IRC              INDIA                          [-1-0)      404    156    148      8
ki1000109-EE               PAKISTAN                       >=0         175     31     31      0
ki1000109-EE               PAKISTAN                       <-3         175      9      9      0
ki1000109-EE               PAKISTAN                       [-3--2)     175     22     22      0
ki1000109-EE               PAKISTAN                       [-2--1)     175     50     50      0
ki1000109-EE               PAKISTAN                       [-1-0)      175     63     63      0
ki1000109-ResPak           PAKISTAN                       >=0           5      4      4      0
ki1000109-ResPak           PAKISTAN                       <-3           5      0      0      0
ki1000109-ResPak           PAKISTAN                       [-3--2)       5      0      0      0
ki1000109-ResPak           PAKISTAN                       [-2--1)       5      0      0      0
ki1000109-ResPak           PAKISTAN                       [-1-0)        5      1      1      0
ki1017093b-PROVIDE         BANGLADESH                     >=0         690     66     66      0
ki1017093b-PROVIDE         BANGLADESH                     <-3         690      4      4      0
ki1017093b-PROVIDE         BANGLADESH                     [-3--2)     690    107     90     17
ki1017093b-PROVIDE         BANGLADESH                     [-2--1)     690    290    285      5
ki1017093b-PROVIDE         BANGLADESH                     [-1-0)      690    223    223      0
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=0        2251   1013   1012      1
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <-3        2251     13     13      0
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-3--2)    2251     36     36      0
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-2--1)    2251    267    267      0
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-1-0)     2251    922    921      1
ki1101329-Keneba           GAMBIA                         >=0        2002    394    391      3
ki1101329-Keneba           GAMBIA                         <-3        2002     23     20      3
ki1101329-Keneba           GAMBIA                         [-3--2)    2002    113    102     11
ki1101329-Keneba           GAMBIA                         [-2--1)    2002    562    539     23
ki1101329-Keneba           GAMBIA                         [-1-0)     2002    910    886     24
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














