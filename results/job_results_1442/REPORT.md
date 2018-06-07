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

**Intervention Variable:** nrooms

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                    country                        A       n    nA   nAY0   nAY1
-------------------------  -----------------------------  ---  ----  ----  -----  -----
ki0047075b-MAL-ED          BANGLADESH                     1     234   146    141      5
ki0047075b-MAL-ED          BANGLADESH                     2     234    48     47      1
ki0047075b-MAL-ED          BANGLADESH                     3     234    28     26      2
ki0047075b-MAL-ED          BANGLADESH                     4+    234    12     12      0
ki0047075b-MAL-ED          BRAZIL                         1     204     4      4      0
ki0047075b-MAL-ED          BRAZIL                         2     204    19     16      3
ki0047075b-MAL-ED          BRAZIL                         3     204    59     51      8
ki0047075b-MAL-ED          BRAZIL                         4+    204   122    115      7
ki0047075b-MAL-ED          INDIA                          1     233    84     79      5
ki0047075b-MAL-ED          INDIA                          2     233    76     72      4
ki0047075b-MAL-ED          INDIA                          3     233    48     45      3
ki0047075b-MAL-ED          INDIA                          4+    233    25     24      1
ki0047075b-MAL-ED          NEPAL                          1     235    51     48      3
ki0047075b-MAL-ED          NEPAL                          2     235    31     30      1
ki0047075b-MAL-ED          NEPAL                          3     235    22     21      1
ki0047075b-MAL-ED          NEPAL                          4+    235   131    125      6
ki0047075b-MAL-ED          PERU                           1     258    19     17      2
ki0047075b-MAL-ED          PERU                           2     258    48     43      5
ki0047075b-MAL-ED          PERU                           3     258    58     51      7
ki0047075b-MAL-ED          PERU                           4+    258   133    128      5
ki0047075b-MAL-ED          SOUTH AFRICA                   1     253    14     14      0
ki0047075b-MAL-ED          SOUTH AFRICA                   2     253    21     18      3
ki0047075b-MAL-ED          SOUTH AFRICA                   3     253    25     24      1
ki0047075b-MAL-ED          SOUTH AFRICA                   4+    253   193    178     15
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1     245    13     13      0
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2     245    61     61      0
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3     245    65     65      0
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+    245   106    105      1
ki1000108-CMC-V-BCS-2002   INDIA                          1     370   200    189     11
ki1000108-CMC-V-BCS-2002   INDIA                          2     370   105    102      3
ki1000108-CMC-V-BCS-2002   INDIA                          3     370    51     48      3
ki1000108-CMC-V-BCS-2002   INDIA                          4+    370    14     14      0
ki1000108-IRC              INDIA                          1     408   185    177      8
ki1000108-IRC              INDIA                          2     408   170    154     16
ki1000108-IRC              INDIA                          3     408    36     34      2
ki1000108-IRC              INDIA                          4+    408    17     15      2
ki1017093b-PROVIDE         BANGLADESH                     1     690   498    484     14
ki1017093b-PROVIDE         BANGLADESH                     2     690   107    103      4
ki1017093b-PROVIDE         BANGLADESH                     3     690    62     59      3
ki1017093b-PROVIDE         BANGLADESH                     4+    690    23     22      1
ki1113344-GMS-Nepal        NEPAL                          1     594    40     40      0
ki1113344-GMS-Nepal        NEPAL                          2     594   127    123      4
ki1113344-GMS-Nepal        NEPAL                          3     594   149    141      8
ki1113344-GMS-Nepal        NEPAL                          4+    594   278    275      3
ki1114097-CONTENT          PERU                           1     214    44     43      1
ki1114097-CONTENT          PERU                           2     214    54     53      1
ki1114097-CONTENT          PERU                           3     214    39     34      5
ki1114097-CONTENT          PERU                           4+    214    77     70      7


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
* studyid: ki1113344-GMS-Nepal, country: NEPAL
* studyid: ki1114097-CONTENT, country: PERU


ALL STRATA DROPPED. JOB FINISHED














