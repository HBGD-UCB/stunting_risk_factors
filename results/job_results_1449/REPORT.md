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
ki0047075b-MAL-ED          BANGLADESH                     Q4     202     60     59      1
ki0047075b-MAL-ED          BANGLADESH                     Q1     202     38     36      2
ki0047075b-MAL-ED          BANGLADESH                     Q2     202     27     26      1
ki0047075b-MAL-ED          BANGLADESH                     Q3     202     77     74      3
ki0047075b-MAL-ED          BRAZIL                         Q4     222     77     68      9
ki0047075b-MAL-ED          BRAZIL                         Q1     222     45     43      2
ki0047075b-MAL-ED          BRAZIL                         Q2     222     39     37      2
ki0047075b-MAL-ED          BRAZIL                         Q3     222     61     56      5
ki0047075b-MAL-ED          INDIA                          Q4     216     60     56      4
ki0047075b-MAL-ED          INDIA                          Q1     216     35     33      2
ki0047075b-MAL-ED          INDIA                          Q2     216     51     49      2
ki0047075b-MAL-ED          INDIA                          Q3     216     70     66      4
ki0047075b-MAL-ED          NEPAL                          Q4     223     20     18      2
ki0047075b-MAL-ED          NEPAL                          Q1     223     30     29      1
ki0047075b-MAL-ED          NEPAL                          Q2     223     65     60      5
ki0047075b-MAL-ED          NEPAL                          Q3     223    108    106      2
ki0047075b-MAL-ED          PERU                           Q4     283     86     79      7
ki0047075b-MAL-ED          PERU                           Q1     283     61     56      5
ki0047075b-MAL-ED          PERU                           Q2     283     65     60      5
ki0047075b-MAL-ED          PERU                           Q3     283     71     69      2
ki0047075b-MAL-ED          SOUTH AFRICA                   Q4     302     91     84      7
ki0047075b-MAL-ED          SOUTH AFRICA                   Q1     302     57     54      3
ki0047075b-MAL-ED          SOUTH AFRICA                   Q2     302     89     87      2
ki0047075b-MAL-ED          SOUTH AFRICA                   Q3     302     65     58      7
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4     209      4      4      0
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1     209     30     30      0
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2     209     34     34      0
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3     209    141    141      0
ki1000108-CMC-V-BCS-2002   INDIA                          Q4     370     22     19      3
ki1000108-CMC-V-BCS-2002   INDIA                          Q1     370    106    103      3
ki1000108-CMC-V-BCS-2002   INDIA                          Q2     370    107    102      5
ki1000108-CMC-V-BCS-2002   INDIA                          Q3     370    135    129      6
ki1000108-IRC              INDIA                          Q4     410     11     10      1
ki1000108-IRC              INDIA                          Q1     410    182    170     12
ki1000108-IRC              INDIA                          Q2     410    104     95      9
ki1000108-IRC              INDIA                          Q3     410    113    107      6
ki1000109-EE               PAKISTAN                       Q4     174      2      2      0
ki1000109-EE               PAKISTAN                       Q1     174    151    151      0
ki1000109-EE               PAKISTAN                       Q2     174     17     17      0
ki1000109-EE               PAKISTAN                       Q3     174      4      4      0
ki1017093b-PROVIDE         BANGLADESH                     Q4     690     12     11      1
ki1017093b-PROVIDE         BANGLADESH                     Q1     690    272    266      6
ki1017093b-PROVIDE         BANGLADESH                     Q2     690    265    259      6
ki1017093b-PROVIDE         BANGLADESH                     Q3     690    141    132      9
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q4    2267      5      5      0
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q1    2267     65     64      1
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q2    2267   2102   2101      1
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q3    2267     95     95      0
ki1113344-GMS-Nepal        NEPAL                          Q4     591     74     71      3
ki1113344-GMS-Nepal        NEPAL                          Q1     591    414    403     11
ki1113344-GMS-Nepal        NEPAL                          Q2     591     46     46      0
ki1113344-GMS-Nepal        NEPAL                          Q3     591     57     56      1


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














