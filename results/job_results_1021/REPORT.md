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

**Intervention Variable:** month

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                    country                        A        n    nA   nAY0   nAY1
-------------------------  -----------------------------  ---  -----  ----  -----  -----
ki0047075b-MAL-ED          BANGLADESH                     1      241    17     17      0
ki0047075b-MAL-ED          BANGLADESH                     2      241    22     21      1
ki0047075b-MAL-ED          BANGLADESH                     3      241    24     22      2
ki0047075b-MAL-ED          BANGLADESH                     4      241    22     22      0
ki0047075b-MAL-ED          BANGLADESH                     5      241    19     17      2
ki0047075b-MAL-ED          BANGLADESH                     6      241     6      6      0
ki0047075b-MAL-ED          BANGLADESH                     7      241    22     21      1
ki0047075b-MAL-ED          BANGLADESH                     8      241    22     20      2
ki0047075b-MAL-ED          BANGLADESH                     9      241    22     22      0
ki0047075b-MAL-ED          BANGLADESH                     10     241    23     23      0
ki0047075b-MAL-ED          BANGLADESH                     11     241    14     13      1
ki0047075b-MAL-ED          BANGLADESH                     12     241    28     26      2
ki0047075b-MAL-ED          BRAZIL                         1      220    13     13      0
ki0047075b-MAL-ED          BRAZIL                         2      220    24     21      3
ki0047075b-MAL-ED          BRAZIL                         3      220    19     17      2
ki0047075b-MAL-ED          BRAZIL                         4      220    11     10      1
ki0047075b-MAL-ED          BRAZIL                         5      220    22     20      2
ki0047075b-MAL-ED          BRAZIL                         6      220     7      6      1
ki0047075b-MAL-ED          BRAZIL                         7      220    16     15      1
ki0047075b-MAL-ED          BRAZIL                         8      220    20     17      3
ki0047075b-MAL-ED          BRAZIL                         9      220    30     25      5
ki0047075b-MAL-ED          BRAZIL                         10     220    21     20      1
ki0047075b-MAL-ED          BRAZIL                         11     220    19     19      0
ki0047075b-MAL-ED          BRAZIL                         12     220    18     14      4
ki0047075b-MAL-ED          INDIA                          1      244    19     18      1
ki0047075b-MAL-ED          INDIA                          2      244    21     21      0
ki0047075b-MAL-ED          INDIA                          3      244    21     18      3
ki0047075b-MAL-ED          INDIA                          4      244    17     16      1
ki0047075b-MAL-ED          INDIA                          5      244     8      8      0
ki0047075b-MAL-ED          INDIA                          6      244    19     19      0
ki0047075b-MAL-ED          INDIA                          7      244    24     24      0
ki0047075b-MAL-ED          INDIA                          8      244    23     19      4
ki0047075b-MAL-ED          INDIA                          9      244    22     19      3
ki0047075b-MAL-ED          INDIA                          10     244    27     25      2
ki0047075b-MAL-ED          INDIA                          11     244    24     22      2
ki0047075b-MAL-ED          INDIA                          12     244    19     16      3
ki0047075b-MAL-ED          NEPAL                          1      237    20     18      2
ki0047075b-MAL-ED          NEPAL                          2      237    18     18      0
ki0047075b-MAL-ED          NEPAL                          3      237    17     17      0
ki0047075b-MAL-ED          NEPAL                          4      237    20     19      1
ki0047075b-MAL-ED          NEPAL                          5      237    20     19      1
ki0047075b-MAL-ED          NEPAL                          6      237    21     21      0
ki0047075b-MAL-ED          NEPAL                          7      237    19     18      1
ki0047075b-MAL-ED          NEPAL                          8      237    24     21      3
ki0047075b-MAL-ED          NEPAL                          9      237    14     13      1
ki0047075b-MAL-ED          NEPAL                          10     237    22     20      2
ki0047075b-MAL-ED          NEPAL                          11     237    24     21      3
ki0047075b-MAL-ED          NEPAL                          12     237    18     17      1
ki0047075b-MAL-ED          PERU                           1      276    39     38      1
ki0047075b-MAL-ED          PERU                           2      276    23     19      4
ki0047075b-MAL-ED          PERU                           3      276    19     18      1
ki0047075b-MAL-ED          PERU                           4      276    19     18      1
ki0047075b-MAL-ED          PERU                           5      276    24     20      4
ki0047075b-MAL-ED          PERU                           6      276    17     15      2
ki0047075b-MAL-ED          PERU                           7      276    21     17      4
ki0047075b-MAL-ED          PERU                           8      276    19     18      1
ki0047075b-MAL-ED          PERU                           9      276    23     21      2
ki0047075b-MAL-ED          PERU                           10     276    23     20      3
ki0047075b-MAL-ED          PERU                           11     276    27     22      5
ki0047075b-MAL-ED          PERU                           12     276    22     21      1
ki0047075b-MAL-ED          SOUTH AFRICA                   1      296    41     38      3
ki0047075b-MAL-ED          SOUTH AFRICA                   2      296    29     27      2
ki0047075b-MAL-ED          SOUTH AFRICA                   3      296    19     17      2
ki0047075b-MAL-ED          SOUTH AFRICA                   4      296    14     11      3
ki0047075b-MAL-ED          SOUTH AFRICA                   5      296    15     14      1
ki0047075b-MAL-ED          SOUTH AFRICA                   6      296    20     20      0
ki0047075b-MAL-ED          SOUTH AFRICA                   7      296    26     21      5
ki0047075b-MAL-ED          SOUTH AFRICA                   8      296    10      8      2
ki0047075b-MAL-ED          SOUTH AFRICA                   9      296    24     22      2
ki0047075b-MAL-ED          SOUTH AFRICA                   10     296    29     24      5
ki0047075b-MAL-ED          SOUTH AFRICA                   11     296    27     23      4
ki0047075b-MAL-ED          SOUTH AFRICA                   12     296    42     40      2
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1      248    21     21      0
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2      248    29     28      1
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3      248    20     20      0
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4      248     9      9      0
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5      248    17     17      0
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6      248    20     19      1
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7      248    23     23      0
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8      248    12     12      0
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9      248    21     21      0
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10     248    20     20      0
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11     248    26     26      0
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12     248    30     30      0
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
ki1000108-IRC              INDIA                          1      410    36     35      1
ki1000108-IRC              INDIA                          2      410    27     24      3
ki1000108-IRC              INDIA                          3      410    29     27      2
ki1000108-IRC              INDIA                          4      410    22     21      1
ki1000108-IRC              INDIA                          5      410    21     21      0
ki1000108-IRC              INDIA                          6      410    37     31      6
ki1000108-IRC              INDIA                          7      410    36     33      3
ki1000108-IRC              INDIA                          8      410    45     40      5
ki1000108-IRC              INDIA                          9      410    27     22      5
ki1000108-IRC              INDIA                          10     410    37     33      4
ki1000108-IRC              INDIA                          11     410    41     36      5
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
ki1000109-ResPak           PAKISTAN                       2      126     7      7      0
ki1000109-ResPak           PAKISTAN                       3      126     7      7      0
ki1000109-ResPak           PAKISTAN                       4      126    14     14      0
ki1000109-ResPak           PAKISTAN                       5      126    17     17      0
ki1000109-ResPak           PAKISTAN                       6      126    20     20      0
ki1000109-ResPak           PAKISTAN                       7      126    12     12      0
ki1000109-ResPak           PAKISTAN                       8      126    21     21      0
ki1000109-ResPak           PAKISTAN                       9      126    15     15      0
ki1000109-ResPak           PAKISTAN                       10     126     7      7      0
ki1000109-ResPak           PAKISTAN                       11     126     0      0      0
ki1000109-ResPak           PAKISTAN                       12     126     1      1      0
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1     2204   151    151      0
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2     2204   164    164      0
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3     2204   154    154      0
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4     2204   168    168      0
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5     2204   172    172      0
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6     2204   154    153      1
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7     2204   192    192      0
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8     2204   224    224      0
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9     2204   197    196      1
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10    2204   233    233      0
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11    2204   199    199      0
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12    2204   196    196      0
ki1113344-GMS-Nepal        NEPAL                          1      593     0      0      0
ki1113344-GMS-Nepal        NEPAL                          2      593     0      0      0
ki1113344-GMS-Nepal        NEPAL                          3      593     0      0      0
ki1113344-GMS-Nepal        NEPAL                          4      593     0      0      0
ki1113344-GMS-Nepal        NEPAL                          5      593     0      0      0
ki1113344-GMS-Nepal        NEPAL                          6      593   112    110      2
ki1113344-GMS-Nepal        NEPAL                          7      593   226    218      8
ki1113344-GMS-Nepal        NEPAL                          8      593   237    229      8
ki1113344-GMS-Nepal        NEPAL                          9      593    16     15      1
ki1113344-GMS-Nepal        NEPAL                          10     593     2      2      0
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
ki1114097-CMIN             PERU                           1      721   137    137      0
ki1114097-CMIN             PERU                           2      721    62     62      0
ki1114097-CMIN             PERU                           3      721    63     63      0
ki1114097-CMIN             PERU                           4      721    64     64      0
ki1114097-CMIN             PERU                           5      721    59     58      1
ki1114097-CMIN             PERU                           6      721    52     52      0
ki1114097-CMIN             PERU                           7      721    44     44      0
ki1114097-CMIN             PERU                           8      721    53     52      1
ki1114097-CMIN             PERU                           9      721    38     38      0
ki1114097-CMIN             PERU                           10     721    33     33      0
ki1114097-CMIN             PERU                           11     721    70     70      0
ki1114097-CMIN             PERU                           12     721    46     46      0
ki1114097-CONTENT          PERU                           1      210     9      8      1
ki1114097-CONTENT          PERU                           2      210    16     16      0
ki1114097-CONTENT          PERU                           3      210    29     27      2
ki1114097-CONTENT          PERU                           4      210    12     12      0
ki1114097-CONTENT          PERU                           5      210    25     22      3
ki1114097-CONTENT          PERU                           6      210    13     13      0
ki1114097-CONTENT          PERU                           7      210    23     22      1
ki1114097-CONTENT          PERU                           8      210    18     14      4
ki1114097-CONTENT          PERU                           9      210    20     18      2
ki1114097-CONTENT          PERU                           10     210    22     19      3
ki1114097-CONTENT          PERU                           11     210    18     15      3
ki1114097-CONTENT          PERU                           12     210     5      5      0


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
* studyid: ki1113344-GMS-Nepal, country: NEPAL
* studyid: ki1114097-CMIN, country: BANGLADESH
* studyid: ki1114097-CMIN, country: PERU
* studyid: ki1114097-CONTENT, country: PERU


ALL STRATA DROPPED. JOB FINISHED














