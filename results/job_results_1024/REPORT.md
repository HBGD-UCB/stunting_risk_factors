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

**Intervention Variable:** meducyrs

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                    country                        A        n     nA   nAY0   nAY1
-------------------------  -----------------------------  ---  -----  -----  -----  -----
ki0047075b-MAL-ED          BANGLADESH                     Q4     196     60     57      3
ki0047075b-MAL-ED          BANGLADESH                     Q1     196     38     36      2
ki0047075b-MAL-ED          BANGLADESH                     Q2     196     26     25      1
ki0047075b-MAL-ED          BANGLADESH                     Q3     196     72     68      4
ki0047075b-MAL-ED          BRAZIL                         Q4     219     75     63     12
ki0047075b-MAL-ED          BRAZIL                         Q1     219     45     41      4
ki0047075b-MAL-ED          BRAZIL                         Q2     219     39     37      2
ki0047075b-MAL-ED          BRAZIL                         Q3     219     60     55      5
ki0047075b-MAL-ED          INDIA                          Q4     214     60     56      4
ki0047075b-MAL-ED          INDIA                          Q1     214     35     33      2
ki0047075b-MAL-ED          INDIA                          Q2     214     49     43      6
ki0047075b-MAL-ED          INDIA                          Q3     214     70     65      5
ki0047075b-MAL-ED          NEPAL                          Q4     222     20     18      2
ki0047075b-MAL-ED          NEPAL                          Q1     222     30     28      2
ki0047075b-MAL-ED          NEPAL                          Q2     222     64     58      6
ki0047075b-MAL-ED          NEPAL                          Q3     222    108    104      4
ki0047075b-MAL-ED          PERU                           Q4     275     83     72     11
ki0047075b-MAL-ED          PERU                           Q1     275     60     53      7
ki0047075b-MAL-ED          PERU                           Q2     275     62     54      8
ki0047075b-MAL-ED          PERU                           Q3     275     70     67      3
ki0047075b-MAL-ED          SOUTH AFRICA                   Q4     296     89     77     12
ki0047075b-MAL-ED          SOUTH AFRICA                   Q1     296     57     51      6
ki0047075b-MAL-ED          SOUTH AFRICA                   Q2     296     87     83      4
ki0047075b-MAL-ED          SOUTH AFRICA                   Q3     296     63     54      9
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4     206      4      4      0
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1     206     30     30      0
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2     206     34     34      0
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3     206    138    137      1
ki1000108-CMC-V-BCS-2002   INDIA                          Q4     370     22     18      4
ki1000108-CMC-V-BCS-2002   INDIA                          Q1     370    106    103      3
ki1000108-CMC-V-BCS-2002   INDIA                          Q2     370    107    100      7
ki1000108-CMC-V-BCS-2002   INDIA                          Q3     370    135    126      9
ki1000108-IRC              INDIA                          Q4     410     11     10      1
ki1000108-IRC              INDIA                          Q1     410    182    160     22
ki1000108-IRC              INDIA                          Q2     410    104     92     12
ki1000108-IRC              INDIA                          Q3     410    113    104      9
ki1000109-EE               PAKISTAN                       Q4     123      2      2      0
ki1000109-EE               PAKISTAN                       Q1     123    105    105      0
ki1000109-EE               PAKISTAN                       Q2     123     13     13      0
ki1000109-EE               PAKISTAN                       Q3     123      3      3      0
ki1017093b-PROVIDE         BANGLADESH                     Q4     686     12     11      1
ki1017093b-PROVIDE         BANGLADESH                     Q1     686    272    264      8
ki1017093b-PROVIDE         BANGLADESH                     Q2     686    262    252     10
ki1017093b-PROVIDE         BANGLADESH                     Q3     686    140    130     10
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q4    2196      4      4      0
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q1    2196     62     61      1
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q2    2196   2036   2035      1
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q3    2196     94     94      0
ki1113344-GMS-Nepal        NEPAL                          Q4     590     74     71      3
ki1113344-GMS-Nepal        NEPAL                          Q1     590    413    398     15
ki1113344-GMS-Nepal        NEPAL                          Q2     590     46     46      0
ki1113344-GMS-Nepal        NEPAL                          Q3     590     57     56      1


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
* studyid: ki1017093b-PROVIDE, country: BANGLADESH
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1113344-GMS-Nepal, country: NEPAL

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
* studyid: ki1017093b-PROVIDE, country: BANGLADESH
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1113344-GMS-Nepal, country: NEPAL


ALL STRATA DROPPED. JOB FINISHED














