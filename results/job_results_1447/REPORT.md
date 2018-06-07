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

**Intervention Variable:** brthmon

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                    country                        A        n    nA   nAY0   nAY1
-------------------------  -----------------------------  ---  -----  ----  -----  -----
ki0047075b-MAL-ED          BANGLADESH                     1      247    19     19      0
ki0047075b-MAL-ED          BANGLADESH                     2      247    22     21      1
ki0047075b-MAL-ED          BANGLADESH                     3      247    23     21      2
ki0047075b-MAL-ED          BANGLADESH                     4      247    22     22      0
ki0047075b-MAL-ED          BANGLADESH                     5      247    20     19      1
ki0047075b-MAL-ED          BANGLADESH                     6      247     8      8      0
ki0047075b-MAL-ED          BANGLADESH                     7      247    20     19      1
ki0047075b-MAL-ED          BANGLADESH                     8      247    24     23      1
ki0047075b-MAL-ED          BANGLADESH                     9      247    22     22      0
ki0047075b-MAL-ED          BANGLADESH                     10     247    23     23      0
ki0047075b-MAL-ED          BANGLADESH                     11     247    16     15      1
ki0047075b-MAL-ED          BANGLADESH                     12     247    28     27      1
ki0047075b-MAL-ED          BRAZIL                         1      223    15     14      1
ki0047075b-MAL-ED          BRAZIL                         2      223    24     23      1
ki0047075b-MAL-ED          BRAZIL                         3      223    20     18      2
ki0047075b-MAL-ED          BRAZIL                         4      223    12     12      0
ki0047075b-MAL-ED          BRAZIL                         5      223    21     19      2
ki0047075b-MAL-ED          BRAZIL                         6      223     8      6      2
ki0047075b-MAL-ED          BRAZIL                         7      223    15     15      0
ki0047075b-MAL-ED          BRAZIL                         8      223    20     19      1
ki0047075b-MAL-ED          BRAZIL                         9      223    31     27      4
ki0047075b-MAL-ED          BRAZIL                         10     223    20     19      1
ki0047075b-MAL-ED          BRAZIL                         11     223    22     22      0
ki0047075b-MAL-ED          BRAZIL                         12     223    15     11      4
ki0047075b-MAL-ED          INDIA                          1      246    20     19      1
ki0047075b-MAL-ED          INDIA                          2      246    21     21      0
ki0047075b-MAL-ED          INDIA                          3      246    23     21      2
ki0047075b-MAL-ED          INDIA                          4      246    16     16      0
ki0047075b-MAL-ED          INDIA                          5      246     8      8      0
ki0047075b-MAL-ED          INDIA                          6      246    20     20      0
ki0047075b-MAL-ED          INDIA                          7      246    24     24      0
ki0047075b-MAL-ED          INDIA                          8      246    23     19      4
ki0047075b-MAL-ED          INDIA                          9      246    22     20      2
ki0047075b-MAL-ED          INDIA                          10     246    26     25      1
ki0047075b-MAL-ED          INDIA                          11     246    24     23      1
ki0047075b-MAL-ED          INDIA                          12     246    19     17      2
ki0047075b-MAL-ED          NEPAL                          1      238    20     19      1
ki0047075b-MAL-ED          NEPAL                          2      238    18     18      0
ki0047075b-MAL-ED          NEPAL                          3      238    17     17      0
ki0047075b-MAL-ED          NEPAL                          4      238    22     21      1
ki0047075b-MAL-ED          NEPAL                          5      238    22     21      1
ki0047075b-MAL-ED          NEPAL                          6      238    18     18      0
ki0047075b-MAL-ED          NEPAL                          7      238    19     18      1
ki0047075b-MAL-ED          NEPAL                          8      238    24     22      2
ki0047075b-MAL-ED          NEPAL                          9      238    16     15      1
ki0047075b-MAL-ED          NEPAL                          10     238    21     19      2
ki0047075b-MAL-ED          NEPAL                          11     238    24     23      1
ki0047075b-MAL-ED          NEPAL                          12     238    17     16      1
ki0047075b-MAL-ED          PERU                           1      284    41     40      1
ki0047075b-MAL-ED          PERU                           2      284    21     18      3
ki0047075b-MAL-ED          PERU                           3      284    21     20      1
ki0047075b-MAL-ED          PERU                           4      284    21     21      0
ki0047075b-MAL-ED          PERU                           5      284    26     22      4
ki0047075b-MAL-ED          PERU                           6      284    15     13      2
ki0047075b-MAL-ED          PERU                           7      284    22     20      2
ki0047075b-MAL-ED          PERU                           8      284    19     19      0
ki0047075b-MAL-ED          PERU                           9      284    23     23      0
ki0047075b-MAL-ED          PERU                           10     284    24     22      2
ki0047075b-MAL-ED          PERU                           11     284    28     24      4
ki0047075b-MAL-ED          PERU                           12     284    23     23      0
ki0047075b-MAL-ED          SOUTH AFRICA                   1      302    42     40      2
ki0047075b-MAL-ED          SOUTH AFRICA                   2      302    30     27      3
ki0047075b-MAL-ED          SOUTH AFRICA                   3      302    18     17      1
ki0047075b-MAL-ED          SOUTH AFRICA                   4      302    14     13      1
ki0047075b-MAL-ED          SOUTH AFRICA                   5      302    16     16      0
ki0047075b-MAL-ED          SOUTH AFRICA                   6      302    21     21      0
ki0047075b-MAL-ED          SOUTH AFRICA                   7      302    25     21      4
ki0047075b-MAL-ED          SOUTH AFRICA                   8      302    10     10      0
ki0047075b-MAL-ED          SOUTH AFRICA                   9      302    24     22      2
ki0047075b-MAL-ED          SOUTH AFRICA                   10     302    31     28      3
ki0047075b-MAL-ED          SOUTH AFRICA                   11     302    29     27      2
ki0047075b-MAL-ED          SOUTH AFRICA                   12     302    42     41      1
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1      253    19     19      0
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2      253    30     30      0
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3      253    19     19      0
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4      253     9      9      0
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5      253    19     19      0
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6      253    19     18      1
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7      253    23     23      0
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8      253    11     11      0
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9      253    22     22      0
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10     253    22     22      0
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11     253    27     27      0
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12     253    33     33      0
ki1000108-CMC-V-BCS-2002   INDIA                          1      370    33     31      2
ki1000108-CMC-V-BCS-2002   INDIA                          2      370    15     14      1
ki1000108-CMC-V-BCS-2002   INDIA                          3      370    31     31      0
ki1000108-CMC-V-BCS-2002   INDIA                          4      370    43     43      0
ki1000108-CMC-V-BCS-2002   INDIA                          5      370    36     34      2
ki1000108-CMC-V-BCS-2002   INDIA                          6      370    37     36      1
ki1000108-CMC-V-BCS-2002   INDIA                          7      370    39     38      1
ki1000108-CMC-V-BCS-2002   INDIA                          8      370    18     17      1
ki1000108-CMC-V-BCS-2002   INDIA                          9      370    21     19      2
ki1000108-CMC-V-BCS-2002   INDIA                          10     370    29     28      1
ki1000108-CMC-V-BCS-2002   INDIA                          11     370    43     39      4
ki1000108-CMC-V-BCS-2002   INDIA                          12     370    25     23      2
ki1000108-IRC              INDIA                          1      410    38     38      0
ki1000108-IRC              INDIA                          2      410    28     26      2
ki1000108-IRC              INDIA                          3      410    27     25      2
ki1000108-IRC              INDIA                          4      410    21     20      1
ki1000108-IRC              INDIA                          5      410    22     22      0
ki1000108-IRC              INDIA                          6      410    37     32      5
ki1000108-IRC              INDIA                          7      410    36     34      2
ki1000108-IRC              INDIA                          8      410    44     42      2
ki1000108-IRC              INDIA                          9      410    27     24      3
ki1000108-IRC              INDIA                          10     410    38     35      3
ki1000108-IRC              INDIA                          11     410    40     36      4
ki1000108-IRC              INDIA                          12     410    52     48      4
ki1000109-EE               PAKISTAN                       1      175    33     33      0
ki1000109-EE               PAKISTAN                       2      175    34     34      0
ki1000109-EE               PAKISTAN                       3      175    27     27      0
ki1000109-EE               PAKISTAN                       4      175     5      5      0
ki1000109-EE               PAKISTAN                       5      175     0      0      0
ki1000109-EE               PAKISTAN                       6      175     0      0      0
ki1000109-EE               PAKISTAN                       7      175     0      0      0
ki1000109-EE               PAKISTAN                       8      175     0      0      0
ki1000109-EE               PAKISTAN                       9      175     0      0      0
ki1000109-EE               PAKISTAN                       10     175     3      3      0
ki1000109-EE               PAKISTAN                       11     175    33     33      0
ki1000109-EE               PAKISTAN                       12     175    40     40      0
ki1000109-ResPak           PAKISTAN                       1      166     8      8      0
ki1000109-ResPak           PAKISTAN                       2      166     8      8      0
ki1000109-ResPak           PAKISTAN                       3      166    10     10      0
ki1000109-ResPak           PAKISTAN                       4      166    15     15      0
ki1000109-ResPak           PAKISTAN                       5      166    31     31      0
ki1000109-ResPak           PAKISTAN                       6      166    25     25      0
ki1000109-ResPak           PAKISTAN                       7      166    17     17      0
ki1000109-ResPak           PAKISTAN                       8      166    27     27      0
ki1000109-ResPak           PAKISTAN                       9      166    17     17      0
ki1000109-ResPak           PAKISTAN                       10     166     4      4      0
ki1000109-ResPak           PAKISTAN                       11     166     0      0      0
ki1000109-ResPak           PAKISTAN                       12     166     4      4      0
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1     2276   160    160      0
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2     2276   171    171      0
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3     2276   157    157      0
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4     2276   175    175      0
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5     2276   173    173      0
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6     2276   160    159      1
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7     2276   207    207      0
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8     2276   226    226      0
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9     2276   202    201      1
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10    2276   241    241      0
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11    2276   209    209      0
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12    2276   195    195      0
ki1101329-Keneba           GAMBIA                         1     2468   256    246     10
ki1101329-Keneba           GAMBIA                         2     2468   220    212      8
ki1101329-Keneba           GAMBIA                         3     2468   259    256      3
ki1101329-Keneba           GAMBIA                         4     2468   164    157      7
ki1101329-Keneba           GAMBIA                         5     2468   176    173      3
ki1101329-Keneba           GAMBIA                         6     2468   142    140      2
ki1101329-Keneba           GAMBIA                         7     2468   120    117      3
ki1101329-Keneba           GAMBIA                         8     2468   204    197      7
ki1101329-Keneba           GAMBIA                         9     2468   217    209      8
ki1101329-Keneba           GAMBIA                         10    2468   285    270     15
ki1101329-Keneba           GAMBIA                         11    2468   214    208      6
ki1101329-Keneba           GAMBIA                         12    2468   211    203      8
ki1113344-GMS-Nepal        NEPAL                          1      594     0      0      0
ki1113344-GMS-Nepal        NEPAL                          2      594     0      0      0
ki1113344-GMS-Nepal        NEPAL                          3      594     0      0      0
ki1113344-GMS-Nepal        NEPAL                          4      594     0      0      0
ki1113344-GMS-Nepal        NEPAL                          5      594     0      0      0
ki1113344-GMS-Nepal        NEPAL                          6      594   128    126      2
ki1113344-GMS-Nepal        NEPAL                          7      594   231    225      6
ki1113344-GMS-Nepal        NEPAL                          8      594   235    228      7
ki1113344-GMS-Nepal        NEPAL                          9      594     0      0      0
ki1113344-GMS-Nepal        NEPAL                          10     594     0      0      0
ki1113344-GMS-Nepal        NEPAL                          11     594     0      0      0
ki1113344-GMS-Nepal        NEPAL                          12     594     0      0      0
ki1114097-CMIN             BANGLADESH                     1      259    28     27      1
ki1114097-CMIN             BANGLADESH                     2      259    27     26      1
ki1114097-CMIN             BANGLADESH                     3      259    19     19      0
ki1114097-CMIN             BANGLADESH                     4      259    22     21      1
ki1114097-CMIN             BANGLADESH                     5      259    17     16      1
ki1114097-CMIN             BANGLADESH                     6      259     9      8      1
ki1114097-CMIN             BANGLADESH                     7      259    16     15      1
ki1114097-CMIN             BANGLADESH                     8      259    20     20      0
ki1114097-CMIN             BANGLADESH                     9      259    21     19      2
ki1114097-CMIN             BANGLADESH                     10     259    26     25      1
ki1114097-CMIN             BANGLADESH                     11     259    28     28      0
ki1114097-CMIN             BANGLADESH                     12     259    26     24      2
ki1114097-CMIN             PERU                           1      738    45     45      0
ki1114097-CMIN             PERU                           2      738    78     78      0
ki1114097-CMIN             PERU                           3      738    79     79      0
ki1114097-CMIN             PERU                           4      738    72     72      0
ki1114097-CMIN             PERU                           5      738    71     71      0
ki1114097-CMIN             PERU                           6      738    64     64      0
ki1114097-CMIN             PERU                           7      738    57     56      1
ki1114097-CMIN             PERU                           8      738    70     70      0
ki1114097-CMIN             PERU                           9      738    52     52      0
ki1114097-CMIN             PERU                           10     738    52     52      0
ki1114097-CMIN             PERU                           11     738    43     43      0
ki1114097-CMIN             PERU                           12     738    55     55      0
ki1114097-CONTENT          PERU                           1      214    10     10      0
ki1114097-CONTENT          PERU                           2      214    18     17      1
ki1114097-CONTENT          PERU                           3      214    30     29      1
ki1114097-CONTENT          PERU                           4      214    19     17      2
ki1114097-CONTENT          PERU                           5      214    14     13      1
ki1114097-CONTENT          PERU                           6      214    12     11      1
ki1114097-CONTENT          PERU                           7      214    28     26      2
ki1114097-CONTENT          PERU                           8      214    23     21      2
ki1114097-CONTENT          PERU                           9      214    26     25      1
ki1114097-CONTENT          PERU                           10     214    14     13      1
ki1114097-CONTENT          PERU                           11     214     9      7      2
ki1114097-CONTENT          PERU                           12     214    11     11      0


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
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1101329-Keneba, country: GAMBIA
* studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1101329-Keneba, country: GAMBIA
* studyid: ki1113344-GMS-Nepal, country: NEPAL
* studyid: ki1114097-CMIN, country: BANGLADESH
* studyid: ki1114097-CMIN, country: PERU
* studyid: ki1114097-CONTENT, country: PERU


ALL STRATA DROPPED. JOB FINISHED














