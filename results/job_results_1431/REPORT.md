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

**Intervention Variable:** birthlen

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                    country                        A             n    nA   nAY0   nAY1
-------------------------  -----------------------------  --------  -----  ----  -----  -----
ki0047075b-MAL-ED          BANGLADESH                     >=0         239    39     39      0
ki0047075b-MAL-ED          BANGLADESH                     <-3         239     6      5      1
ki0047075b-MAL-ED          BANGLADESH                     [-3--2)     239    26     20      6
ki0047075b-MAL-ED          BANGLADESH                     [-2--1)     239    80     79      1
ki0047075b-MAL-ED          BANGLADESH                     [-1-0)      239    88     88      0
ki0047075b-MAL-ED          BRAZIL                         >=0         182    44     44      0
ki0047075b-MAL-ED          BRAZIL                         <-3         182     5      0      5
ki0047075b-MAL-ED          BRAZIL                         [-3--2)     182     8      1      7
ki0047075b-MAL-ED          BRAZIL                         [-2--1)     182    47     44      3
ki0047075b-MAL-ED          BRAZIL                         [-1-0)      182    78     78      0
ki0047075b-MAL-ED          INDIA                          >=0         201    34     34      0
ki0047075b-MAL-ED          INDIA                          <-3         201     6      6      0
ki0047075b-MAL-ED          INDIA                          [-3--2)     201    22     13      9
ki0047075b-MAL-ED          INDIA                          [-2--1)     201    66     65      1
ki0047075b-MAL-ED          INDIA                          [-1-0)      201    73     73      0
ki0047075b-MAL-ED          NEPAL                          >=0         172    45     45      0
ki0047075b-MAL-ED          NEPAL                          <-3         172     5      5      0
ki0047075b-MAL-ED          NEPAL                          [-3--2)     172    12      6      6
ki0047075b-MAL-ED          NEPAL                          [-2--1)     172    46     45      1
ki0047075b-MAL-ED          NEPAL                          [-1-0)      172    64     64      0
ki0047075b-MAL-ED          PERU                           >=0         269    43     43      0
ki0047075b-MAL-ED          PERU                           <-3         269     4      4      0
ki0047075b-MAL-ED          PERU                           [-3--2)     269    21     15      6
ki0047075b-MAL-ED          PERU                           [-2--1)     269    90     81      9
ki0047075b-MAL-ED          PERU                           [-1-0)      269   111    109      2
ki0047075b-MAL-ED          SOUTH AFRICA                   >=0         253    59     59      0
ki0047075b-MAL-ED          SOUTH AFRICA                   <-3         253     1      1      0
ki0047075b-MAL-ED          SOUTH AFRICA                   [-3--2)     253    19      9     10
ki0047075b-MAL-ED          SOUTH AFRICA                   [-2--1)     253    72     66      6
ki0047075b-MAL-ED          SOUTH AFRICA                   [-1-0)      253   102    101      1
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=0         120    24     24      0
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <-3         120     5      5      0
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-3--2)     120    10     10      0
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-2--1)     120    32     32      0
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-1-0)      120    49     49      0
ki1000108-CMC-V-BCS-2002   INDIA                          >=0          92    14     13      1
ki1000108-CMC-V-BCS-2002   INDIA                          <-3          92     3      2      1
ki1000108-CMC-V-BCS-2002   INDIA                          [-3--2)      92    13     11      2
ki1000108-CMC-V-BCS-2002   INDIA                          [-2--1)      92    22     21      1
ki1000108-CMC-V-BCS-2002   INDIA                          [-1-0)       92    40     40      0
ki1000108-IRC              INDIA                          >=0         388   143    142      1
ki1000108-IRC              INDIA                          <-3         388    16     10      6
ki1000108-IRC              INDIA                          [-3--2)     388    27     18      9
ki1000108-IRC              INDIA                          [-2--1)     388    65     61      4
ki1000108-IRC              INDIA                          [-1-0)      388   137    130      7
ki1000109-EE               PAKISTAN                       >=0           1     1      1      0
ki1000109-EE               PAKISTAN                       <-3           1     0      0      0
ki1000109-EE               PAKISTAN                       [-3--2)       1     0      0      0
ki1000109-EE               PAKISTAN                       [-2--1)       1     0      0      0
ki1000109-EE               PAKISTAN                       [-1-0)        1     0      0      0
ki1000109-ResPak           PAKISTAN                       >=0           5     3      3      0
ki1000109-ResPak           PAKISTAN                       <-3           5     0      0      0
ki1000109-ResPak           PAKISTAN                       [-3--2)       5     0      0      0
ki1000109-ResPak           PAKISTAN                       [-2--1)       5     0      0      0
ki1000109-ResPak           PAKISTAN                       [-1-0)        5     2      2      0
ki1017093b-PROVIDE         BANGLADESH                     >=0         690   219    219      0
ki1017093b-PROVIDE         BANGLADESH                     <-3         690     1      1      0
ki1017093b-PROVIDE         BANGLADESH                     [-3--2)     690    21     15      6
ki1017093b-PROVIDE         BANGLADESH                     [-2--1)     690   171    157     14
ki1017093b-PROVIDE         BANGLADESH                     [-1-0)      690   278    276      2
ki1101329-Keneba           GAMBIA                         >=0        1505   822    813      9
ki1101329-Keneba           GAMBIA                         <-3        1505    25     14     11
ki1101329-Keneba           GAMBIA                         [-3--2)    1505    42     32     10
ki1101329-Keneba           GAMBIA                         [-2--1)    1505   151    147      4
ki1101329-Keneba           GAMBIA                         [-1-0)     1505   465    457      8
ki1114097-CMIN             BANGLADESH                     >=0           7     2      2      0
ki1114097-CMIN             BANGLADESH                     <-3           7     0      0      0
ki1114097-CMIN             BANGLADESH                     [-3--2)       7     0      0      0
ki1114097-CMIN             BANGLADESH                     [-2--1)       7     4      4      0
ki1114097-CMIN             BANGLADESH                     [-1-0)        7     1      1      0
ki1114097-CMIN             PERU                           >=0          10    10     10      0
ki1114097-CMIN             PERU                           <-3          10     0      0      0
ki1114097-CMIN             PERU                           [-3--2)      10     0      0      0
ki1114097-CMIN             PERU                           [-2--1)      10     0      0      0
ki1114097-CMIN             PERU                           [-1-0)       10     0      0      0
ki1114097-CONTENT          PERU                           >=0           2     1      1      0
ki1114097-CONTENT          PERU                           <-3           2     0      0      0
ki1114097-CONTENT          PERU                           [-3--2)       2     0      0      0
ki1114097-CONTENT          PERU                           [-2--1)       2     1      1      0
ki1114097-CONTENT          PERU                           [-1-0)        2     0      0      0


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
* studyid: ki1101329-Keneba, country: GAMBIA
* studyid: ki1114097-CMIN, country: BANGLADESH
* studyid: ki1114097-CMIN, country: PERU
* studyid: ki1114097-CONTENT, country: PERU


ALL STRATA DROPPED. JOB FINISHED














