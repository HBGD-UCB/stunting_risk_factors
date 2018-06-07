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
ki0047075b-MAL-ED          BANGLADESH                     Q4     140     51     50      1
ki0047075b-MAL-ED          BANGLADESH                     Q1     140     31     31      0
ki0047075b-MAL-ED          BANGLADESH                     Q2     140      8      7      1
ki0047075b-MAL-ED          BANGLADESH                     Q3     140     50     48      2
ki0047075b-MAL-ED          INDIA                          Q4     146     44     40      4
ki0047075b-MAL-ED          INDIA                          Q1     146     25     25      0
ki0047075b-MAL-ED          INDIA                          Q2     146     44     43      1
ki0047075b-MAL-ED          INDIA                          Q3     146     33     32      1
ki0047075b-MAL-ED          NEPAL                          Q4      96     42     39      3
ki0047075b-MAL-ED          NEPAL                          Q1      96     23     23      0
ki0047075b-MAL-ED          NEPAL                          Q2      96     24     22      2
ki0047075b-MAL-ED          NEPAL                          Q3      96      7      7      0
ki0047075b-MAL-ED          PERU                           Q4     236    113    105      8
ki0047075b-MAL-ED          PERU                           Q1     236     47     43      4
ki0047075b-MAL-ED          PERU                           Q2     236     63     59      4
ki0047075b-MAL-ED          PERU                           Q3     236     13     12      1
ki0047075b-MAL-ED          SOUTH AFRICA                   Q4     104     39     37      2
ki0047075b-MAL-ED          SOUTH AFRICA                   Q1     104     19     19      0
ki0047075b-MAL-ED          SOUTH AFRICA                   Q2     104     27     26      1
ki0047075b-MAL-ED          SOUTH AFRICA                   Q3     104     19     17      2
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4     204      9      9      0
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1     204     43     43      0
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2     204     32     32      0
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3     204    120    119      1
ki1017093b-PROVIDE         BANGLADESH                     Q4     690     18     16      2
ki1017093b-PROVIDE         BANGLADESH                     Q1     690    313    305      8
ki1017093b-PROVIDE         BANGLADESH                     Q2     690    271    264      7
ki1017093b-PROVIDE         BANGLADESH                     Q3     690     88     83      5
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q4    2264    211    211      0
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q1    2264     12     12      0
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q2    2264   1950   1948      2
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q3    2264     91     91      0
ki1113344-GMS-Nepal        NEPAL                          Q4     593    143    140      3
ki1113344-GMS-Nepal        NEPAL                          Q1     593    255    246      9
ki1113344-GMS-Nepal        NEPAL                          Q2     593     93     91      2
ki1113344-GMS-Nepal        NEPAL                          Q3     593    102    101      1


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














