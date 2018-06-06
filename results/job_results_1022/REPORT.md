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
ki0047075b-MAL-ED          BANGLADESH                     1      241    18     18      0
ki0047075b-MAL-ED          BANGLADESH                     2      241    21     20      1
ki0047075b-MAL-ED          BANGLADESH                     3      241    23     21      2
ki0047075b-MAL-ED          BANGLADESH                     4      241    22     22      0
ki0047075b-MAL-ED          BANGLADESH                     5      241    19     17      2
ki0047075b-MAL-ED          BANGLADESH                     6      241     8      8      0
ki0047075b-MAL-ED          BANGLADESH                     7      241    20     19      1
ki0047075b-MAL-ED          BANGLADESH                     8      241    23     21      2
ki0047075b-MAL-ED          BANGLADESH                     9      241    21     21      0
ki0047075b-MAL-ED          BANGLADESH                     10     241    23     23      0
ki0047075b-MAL-ED          BANGLADESH                     11     241    15     14      1
ki0047075b-MAL-ED          BANGLADESH                     12     241    28     26      2
ki0047075b-MAL-ED          BRAZIL                         1      220    15     14      1
ki0047075b-MAL-ED          BRAZIL                         2      220    23     21      2
ki0047075b-MAL-ED          BRAZIL                         3      220    18     16      2
ki0047075b-MAL-ED          BRAZIL                         4      220    12     11      1
ki0047075b-MAL-ED          BRAZIL                         5      220    21     19      2
ki0047075b-MAL-ED          BRAZIL                         6      220     8      6      2
ki0047075b-MAL-ED          BRAZIL                         7      220    15     15      0
ki0047075b-MAL-ED          BRAZIL                         8      220    20     17      3
ki0047075b-MAL-ED          BRAZIL                         9      220    31     26      5
ki0047075b-MAL-ED          BRAZIL                         10     220    20     19      1
ki0047075b-MAL-ED          BRAZIL                         11     220    22     22      0
ki0047075b-MAL-ED          BRAZIL                         12     220    15     11      4
ki0047075b-MAL-ED          INDIA                          1      244    19     18      1
ki0047075b-MAL-ED          INDIA                          2      244    21     21      0
ki0047075b-MAL-ED          INDIA                          3      244    22     19      3
ki0047075b-MAL-ED          INDIA                          4      244    16     15      1
ki0047075b-MAL-ED          INDIA                          5      244     8      8      0
ki0047075b-MAL-ED          INDIA                          6      244    20     20      0
ki0047075b-MAL-ED          INDIA                          7      244    24     24      0
ki0047075b-MAL-ED          INDIA                          8      244    23     18      5
ki0047075b-MAL-ED          INDIA                          9      244    22     20      2
ki0047075b-MAL-ED          INDIA                          10     244    26     24      2
ki0047075b-MAL-ED          INDIA                          11     244    24     22      2
ki0047075b-MAL-ED          INDIA                          12     244    19     16      3
ki0047075b-MAL-ED          NEPAL                          1      237    20     18      2
ki0047075b-MAL-ED          NEPAL                          2      237    18     18      0
ki0047075b-MAL-ED          NEPAL                          3      237    17     17      0
ki0047075b-MAL-ED          NEPAL                          4      237    22     21      1
ki0047075b-MAL-ED          NEPAL                          5      237    21     20      1
ki0047075b-MAL-ED          NEPAL                          6      237    18     18      0
ki0047075b-MAL-ED          NEPAL                          7      237    19     18      1
ki0047075b-MAL-ED          NEPAL                          8      237    24     21      3
ki0047075b-MAL-ED          NEPAL                          9      237    16     15      1
ki0047075b-MAL-ED          NEPAL                          10     237    21     19      2
ki0047075b-MAL-ED          NEPAL                          11     237    24     21      3
ki0047075b-MAL-ED          NEPAL                          12     237    17     16      1
ki0047075b-MAL-ED          PERU                           1      276    41     40      1
ki0047075b-MAL-ED          PERU                           2      276    21     17      4
ki0047075b-MAL-ED          PERU                           3      276    20     19      1
ki0047075b-MAL-ED          PERU                           4      276    19     18      1
ki0047075b-MAL-ED          PERU                           5      276    26     22      4
ki0047075b-MAL-ED          PERU                           6      276    14     12      2
ki0047075b-MAL-ED          PERU                           7      276    21     17      4
ki0047075b-MAL-ED          PERU                           8      276    19     18      1
ki0047075b-MAL-ED          PERU                           9      276    23     21      2
ki0047075b-MAL-ED          PERU                           10     276    24     21      3
ki0047075b-MAL-ED          PERU                           11     276    27     22      5
ki0047075b-MAL-ED          PERU                           12     276    21     20      1
ki0047075b-MAL-ED          SOUTH AFRICA                   1      296    41     38      3
ki0047075b-MAL-ED          SOUTH AFRICA                   2      296    30     27      3
ki0047075b-MAL-ED          SOUTH AFRICA                   3      296    18     17      1
ki0047075b-MAL-ED          SOUTH AFRICA                   4      296    14     11      3
ki0047075b-MAL-ED          SOUTH AFRICA                   5      296    16     15      1
ki0047075b-MAL-ED          SOUTH AFRICA                   6      296    21     21      0
ki0047075b-MAL-ED          SOUTH AFRICA                   7      296    24     19      5
ki0047075b-MAL-ED          SOUTH AFRICA                   8      296    10      8      2
ki0047075b-MAL-ED          SOUTH AFRICA                   9      296    24     22      2
ki0047075b-MAL-ED          SOUTH AFRICA                   10     296    29     24      5
ki0047075b-MAL-ED          SOUTH AFRICA                   11     296    29     25      4
ki0047075b-MAL-ED          SOUTH AFRICA                   12     296    40     38      2
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1      248    19     19      0
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2      248    30     29      1
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3      248    19     19      0
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4      248     9      9      0
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5      248    19     19      0
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6      248    19     18      1
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7      248    23     23      0
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8      248    11     11      0
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9      248    21     21      0
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10     248    20     20      0
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11     248    27     27      0
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12     248    31     31      0
ki1000108-CMC-V-BCS-2002   INDIA                          1      370    33     29      4
ki1000108-CMC-V-BCS-2002   INDIA                          2      370    15     14      1
ki1000108-CMC-V-BCS-2002   INDIA                          3      370    31     31      0
ki1000108-CMC-V-BCS-2002   INDIA                          4      370    43     43      0
ki1000108-CMC-V-BCS-2002   INDIA                          5      370    36     34      2
ki1000108-CMC-V-BCS-2002   INDIA                          6      370    37     33      4
ki1000108-CMC-V-BCS-2002   INDIA                          7      370    39     38      1
ki1000108-CMC-V-BCS-2002   INDIA                          8      370    18     17      1
ki1000108-CMC-V-BCS-2002   INDIA                          9      370    21     18      3
ki1000108-CMC-V-BCS-2002   INDIA                          10     370    29     28      1
ki1000108-CMC-V-BCS-2002   INDIA                          11     370    43     39      4
ki1000108-CMC-V-BCS-2002   INDIA                          12     370    25     23      2
ki1000108-IRC              INDIA                          1      410    38     37      1
ki1000108-IRC              INDIA                          2      410    28     25      3
ki1000108-IRC              INDIA                          3      410    27     25      2
ki1000108-IRC              INDIA                          4      410    21     20      1
ki1000108-IRC              INDIA                          5      410    22     22      0
ki1000108-IRC              INDIA                          6      410    37     31      6
ki1000108-IRC              INDIA                          7      410    36     33      3
ki1000108-IRC              INDIA                          8      410    44     39      5
ki1000108-IRC              INDIA                          9      410    27     22      5
ki1000108-IRC              INDIA                          10     410    38     34      4
ki1000108-IRC              INDIA                          11     410    40     35      5
ki1000108-IRC              INDIA                          12     410    52     43      9
ki1000109-EE               PAKISTAN                       1      124    24     24      0
ki1000109-EE               PAKISTAN                       2      124    24     24      0
ki1000109-EE               PAKISTAN                       3      124    22     22      0
ki1000109-EE               PAKISTAN                       4      124     3      3      0
ki1000109-EE               PAKISTAN                       5      124     0      0      0
ki1000109-EE               PAKISTAN                       6      124     0      0      0
ki1000109-EE               PAKISTAN                       7      124     0      0      0
ki1000109-EE               PAKISTAN                       8      124     0      0      0
ki1000109-EE               PAKISTAN                       9      124     0      0      0
ki1000109-EE               PAKISTAN                       10     124     2      2      0
ki1000109-EE               PAKISTAN                       11     124    21     21      0
ki1000109-EE               PAKISTAN                       12     124    28     28      0
ki1000109-ResPak           PAKISTAN                       1      126     5      5      0
ki1000109-ResPak           PAKISTAN                       2      126     8      8      0
ki1000109-ResPak           PAKISTAN                       3      126     9      9      0
ki1000109-ResPak           PAKISTAN                       4      126     9      9      0
ki1000109-ResPak           PAKISTAN                       5      126    24     24      0
ki1000109-ResPak           PAKISTAN                       6      126    18     18      0
ki1000109-ResPak           PAKISTAN                       7      126    11     11      0
ki1000109-ResPak           PAKISTAN                       8      126    21     21      0
ki1000109-ResPak           PAKISTAN                       9      126    14     14      0
ki1000109-ResPak           PAKISTAN                       10     126     4      4      0
ki1000109-ResPak           PAKISTAN                       11     126     0      0      0
ki1000109-ResPak           PAKISTAN                       12     126     3      3      0
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1     2204   158    158      0
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2     2204   162    162      0
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3     2204   150    150      0
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4     2204   172    172      0
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5     2204   168    168      0
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6     2204   157    156      1
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7     2204   201    201      0
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8     2204   218    218      0
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9     2204   195    194      1
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10    2204   234    234      0
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11    2204   201    201      0
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12    2204   188    188      0
ki1101329-Keneba           GAMBIA                         1     2431   252    238     14
ki1101329-Keneba           GAMBIA                         2     2431   217    203     14
ki1101329-Keneba           GAMBIA                         3     2431   257    249      8
ki1101329-Keneba           GAMBIA                         4     2431   161    150     11
ki1101329-Keneba           GAMBIA                         5     2431   174    166      8
ki1101329-Keneba           GAMBIA                         6     2431   141    124     17
ki1101329-Keneba           GAMBIA                         7     2431   116    112      4
ki1101329-Keneba           GAMBIA                         8     2431   200    182     18
ki1101329-Keneba           GAMBIA                         9     2431   216    197     19
ki1101329-Keneba           GAMBIA                         10    2431   276    251     25
ki1101329-Keneba           GAMBIA                         11    2431   211    196     15
ki1101329-Keneba           GAMBIA                         12    2431   210    195     15
ki1113344-GMS-Nepal        NEPAL                          1      593     0      0      0
ki1113344-GMS-Nepal        NEPAL                          2      593     0      0      0
ki1113344-GMS-Nepal        NEPAL                          3      593     0      0      0
ki1113344-GMS-Nepal        NEPAL                          4      593     0      0      0
ki1113344-GMS-Nepal        NEPAL                          5      593     0      0      0
ki1113344-GMS-Nepal        NEPAL                          6      593   128    126      2
ki1113344-GMS-Nepal        NEPAL                          7      593   230    221      9
ki1113344-GMS-Nepal        NEPAL                          8      593   235    227      8
ki1113344-GMS-Nepal        NEPAL                          9      593     0      0      0
ki1113344-GMS-Nepal        NEPAL                          10     593     0      0      0
ki1113344-GMS-Nepal        NEPAL                          11     593     0      0      0
ki1113344-GMS-Nepal        NEPAL                          12     593     0      0      0
ki1114097-CMIN             BANGLADESH                     1      259    28     27      1
ki1114097-CMIN             BANGLADESH                     2      259    27     26      1
ki1114097-CMIN             BANGLADESH                     3      259    19     18      1
ki1114097-CMIN             BANGLADESH                     4      259    22     20      2
ki1114097-CMIN             BANGLADESH                     5      259    17     16      1
ki1114097-CMIN             BANGLADESH                     6      259     9      8      1
ki1114097-CMIN             BANGLADESH                     7      259    16     15      1
ki1114097-CMIN             BANGLADESH                     8      259    20     20      0
ki1114097-CMIN             BANGLADESH                     9      259    21     19      2
ki1114097-CMIN             BANGLADESH                     10     259    26     25      1
ki1114097-CMIN             BANGLADESH                     11     259    28     28      0
ki1114097-CMIN             BANGLADESH                     12     259    26     24      2
ki1114097-CMIN             PERU                           1      721    45     45      0
ki1114097-CMIN             PERU                           2      721    77     77      0
ki1114097-CMIN             PERU                           3      721    77     77      0
ki1114097-CMIN             PERU                           4      721    68     67      1
ki1114097-CMIN             PERU                           5      721    69     69      0
ki1114097-CMIN             PERU                           6      721    61     61      0
ki1114097-CMIN             PERU                           7      721    56     55      1
ki1114097-CMIN             PERU                           8      721    68     68      0
ki1114097-CMIN             PERU                           9      721    51     51      0
ki1114097-CMIN             PERU                           10     721    52     52      0
ki1114097-CMIN             PERU                           11     721    43     43      0
ki1114097-CMIN             PERU                           12     721    54     54      0
ki1114097-CONTENT          PERU                           1      210    10     10      0
ki1114097-CONTENT          PERU                           2      210    18     17      1
ki1114097-CONTENT          PERU                           3      210    29     28      1
ki1114097-CONTENT          PERU                           4      210    19     17      2
ki1114097-CONTENT          PERU                           5      210    14     13      1
ki1114097-CONTENT          PERU                           6      210    12     11      1
ki1114097-CONTENT          PERU                           7      210    27     24      3
ki1114097-CONTENT          PERU                           8      210    23     19      4
ki1114097-CONTENT          PERU                           9      210    25     24      1
ki1114097-CONTENT          PERU                           10     210    13     11      2
ki1114097-CONTENT          PERU                           11     210     9      6      3
ki1114097-CONTENT          PERU                           12     210    11     11      0


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














