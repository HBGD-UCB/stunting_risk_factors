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

**Outcome Variable:** ever_stunted

## Predictor Variables

**Intervention Variable:** month

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        A         n     nA   nAY0   nAY1
----------  -------------------------  -----------------------------  ---  ------  -----  -----  -----
3 months    ki0047075b-MAL-ED          BANGLADESH                     1       265     20     15      5
3 months    ki0047075b-MAL-ED          BANGLADESH                     2       265     24     16      8
3 months    ki0047075b-MAL-ED          BANGLADESH                     3       265     28     16     12
3 months    ki0047075b-MAL-ED          BANGLADESH                     4       265     22     22      0
3 months    ki0047075b-MAL-ED          BANGLADESH                     5       265     22     12     10
3 months    ki0047075b-MAL-ED          BANGLADESH                     6       265      9      5      4
3 months    ki0047075b-MAL-ED          BANGLADESH                     7       265     22     17      5
3 months    ki0047075b-MAL-ED          BANGLADESH                     8       265     25     15     10
3 months    ki0047075b-MAL-ED          BANGLADESH                     9       265     24     19      5
3 months    ki0047075b-MAL-ED          BANGLADESH                     10      265     24     17      7
3 months    ki0047075b-MAL-ED          BANGLADESH                     11      265     17     11      6
3 months    ki0047075b-MAL-ED          BANGLADESH                     12      265     28     22      6
3 months    ki0047075b-MAL-ED          BRAZIL                         1       233     13     12      1
3 months    ki0047075b-MAL-ED          BRAZIL                         2       233     26     21      5
3 months    ki0047075b-MAL-ED          BRAZIL                         3       233     21     17      4
3 months    ki0047075b-MAL-ED          BRAZIL                         4       233     11     10      1
3 months    ki0047075b-MAL-ED          BRAZIL                         5       233     24     20      4
3 months    ki0047075b-MAL-ED          BRAZIL                         6       233      8      6      2
3 months    ki0047075b-MAL-ED          BRAZIL                         7       233     19     14      5
3 months    ki0047075b-MAL-ED          BRAZIL                         8       233     21     18      3
3 months    ki0047075b-MAL-ED          BRAZIL                         9       233     31     24      7
3 months    ki0047075b-MAL-ED          BRAZIL                         10      233     22     20      2
3 months    ki0047075b-MAL-ED          BRAZIL                         11      233     19     19      0
3 months    ki0047075b-MAL-ED          BRAZIL                         12      233     18     14      4
3 months    ki0047075b-MAL-ED          INDIA                          1       251     20     12      8
3 months    ki0047075b-MAL-ED          INDIA                          2       251     21     21      0
3 months    ki0047075b-MAL-ED          INDIA                          3       251     22     16      6
3 months    ki0047075b-MAL-ED          INDIA                          4       251     18     13      5
3 months    ki0047075b-MAL-ED          INDIA                          5       251      8      7      1
3 months    ki0047075b-MAL-ED          INDIA                          6       251     19     17      2
3 months    ki0047075b-MAL-ED          INDIA                          7       251     25     18      7
3 months    ki0047075b-MAL-ED          INDIA                          8       251     24     18      6
3 months    ki0047075b-MAL-ED          INDIA                          9       251     23     17      6
3 months    ki0047075b-MAL-ED          INDIA                          10      251     27     17     10
3 months    ki0047075b-MAL-ED          INDIA                          11      251     25     16      9
3 months    ki0047075b-MAL-ED          INDIA                          12      251     19     11      8
3 months    ki0047075b-MAL-ED          NEPAL                          1       240     20     15      5
3 months    ki0047075b-MAL-ED          NEPAL                          2       240     19     17      2
3 months    ki0047075b-MAL-ED          NEPAL                          3       240     17     15      2
3 months    ki0047075b-MAL-ED          NEPAL                          4       240     20     18      2
3 months    ki0047075b-MAL-ED          NEPAL                          5       240     21     17      4
3 months    ki0047075b-MAL-ED          NEPAL                          6       240     21     20      1
3 months    ki0047075b-MAL-ED          NEPAL                          7       240     20     16      4
3 months    ki0047075b-MAL-ED          NEPAL                          8       240     24     20      4
3 months    ki0047075b-MAL-ED          NEPAL                          9       240     14     12      2
3 months    ki0047075b-MAL-ED          NEPAL                          10      240     22     19      3
3 months    ki0047075b-MAL-ED          NEPAL                          11      240     24     19      5
3 months    ki0047075b-MAL-ED          NEPAL                          12      240     18     14      4
3 months    ki0047075b-MAL-ED          PERU                           1       303     40     28     12
3 months    ki0047075b-MAL-ED          PERU                           2       303     25     14     11
3 months    ki0047075b-MAL-ED          PERU                           3       303     22     15      7
3 months    ki0047075b-MAL-ED          PERU                           4       303     21     16      5
3 months    ki0047075b-MAL-ED          PERU                           5       303     26     14     12
3 months    ki0047075b-MAL-ED          PERU                           6       303     20     13      7
3 months    ki0047075b-MAL-ED          PERU                           7       303     24     12     12
3 months    ki0047075b-MAL-ED          PERU                           8       303     19     16      3
3 months    ki0047075b-MAL-ED          PERU                           9       303     23     18      5
3 months    ki0047075b-MAL-ED          PERU                           10      303     26     21      5
3 months    ki0047075b-MAL-ED          PERU                           11      303     33     18     15
3 months    ki0047075b-MAL-ED          PERU                           12      303     24     17      7
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1       314     43     33     10
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2       314     29     26      3
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3       314     19     15      4
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4       314     15     11      4
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   5       314     15     13      2
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   6       314     22     17      5
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   7       314     26     17      9
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   8       314     14      9      5
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   9       314     25     20      5
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   10      314     31     22      9
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   11      314     29     16     13
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   12      314     46     33     13
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1       262     22     17      5
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2       262     30     22      8
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3       262     20     12      8
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4       262      9      5      4
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5       262     19     15      4
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6       262     20     14      6
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7       262     23     16      7
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8       262     12      8      4
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9       262     24     14     10
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10      262     23     13     10
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11      262     27     21      6
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12      262     33     23     10
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          1       362     33     16     17
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          2       362     15     12      3
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          3       362     30     25      5
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          4       362     43     35      8
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          5       362     35     24     11
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          6       362     35     22     13
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          7       362     38     25     13
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          8       362     17     11      6
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          9       362     21     13      8
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          10      362     29     19     10
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          11      362     41     26     15
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          12      362     25      9     16
3 months    ki1000108-IRC              INDIA                          1       410     36     25     11
3 months    ki1000108-IRC              INDIA                          2       410     27     16     11
3 months    ki1000108-IRC              INDIA                          3       410     29     18     11
3 months    ki1000108-IRC              INDIA                          4       410     22     14      8
3 months    ki1000108-IRC              INDIA                          5       410     21     14      7
3 months    ki1000108-IRC              INDIA                          6       410     37     27     10
3 months    ki1000108-IRC              INDIA                          7       410     36     25     11
3 months    ki1000108-IRC              INDIA                          8       410     45     38      7
3 months    ki1000108-IRC              INDIA                          9       410     27     18      9
3 months    ki1000108-IRC              INDIA                          10      410     37     28      9
3 months    ki1000108-IRC              INDIA                          11      410     41     28     13
3 months    ki1000108-IRC              INDIA                          12      410     52     29     23
3 months    ki1000109-EE               PAKISTAN                       1       379     95     26     69
3 months    ki1000109-EE               PAKISTAN                       2       379     66     27     39
3 months    ki1000109-EE               PAKISTAN                       3       379     43     22     21
3 months    ki1000109-EE               PAKISTAN                       4       379     16      4     12
3 months    ki1000109-EE               PAKISTAN                       5       379      0      0      0
3 months    ki1000109-EE               PAKISTAN                       6       379      0      0      0
3 months    ki1000109-EE               PAKISTAN                       7       379      0      0      0
3 months    ki1000109-EE               PAKISTAN                       8       379      0      0      0
3 months    ki1000109-EE               PAKISTAN                       9       379      0      0      0
3 months    ki1000109-EE               PAKISTAN                       10      379      4      3      1
3 months    ki1000109-EE               PAKISTAN                       11      379     70     21     49
3 months    ki1000109-EE               PAKISTAN                       12      379     85     35     50
3 months    ki1000109-ResPak           PAKISTAN                       1       276     10      6      4
3 months    ki1000109-ResPak           PAKISTAN                       2       276     12      7      5
3 months    ki1000109-ResPak           PAKISTAN                       3       276     17      7     10
3 months    ki1000109-ResPak           PAKISTAN                       4       276     33     14     19
3 months    ki1000109-ResPak           PAKISTAN                       5       276     35     18     17
3 months    ki1000109-ResPak           PAKISTAN                       6       276     54     21     33
3 months    ki1000109-ResPak           PAKISTAN                       7       276     37     12     25
3 months    ki1000109-ResPak           PAKISTAN                       8       276     38     24     14
3 months    ki1000109-ResPak           PAKISTAN                       9       276     26     17      9
3 months    ki1000109-ResPak           PAKISTAN                       10      276      8      7      1
3 months    ki1000109-ResPak           PAKISTAN                       11      276      4      0      4
3 months    ki1000109-ResPak           PAKISTAN                       12      276      2      2      0
3 months    ki1017093-NIH-Birth        BANGLADESH                     1       629     68     44     24
3 months    ki1017093-NIH-Birth        BANGLADESH                     2       629     61     45     16
3 months    ki1017093-NIH-Birth        BANGLADESH                     3       629     61     54      7
3 months    ki1017093-NIH-Birth        BANGLADESH                     4       629     53     41     12
3 months    ki1017093-NIH-Birth        BANGLADESH                     5       629     47     38      9
3 months    ki1017093-NIH-Birth        BANGLADESH                     6       629     47     37     10
3 months    ki1017093-NIH-Birth        BANGLADESH                     7       629     48     39      9
3 months    ki1017093-NIH-Birth        BANGLADESH                     8       629     43     36      7
3 months    ki1017093-NIH-Birth        BANGLADESH                     9       629     34     27      7
3 months    ki1017093-NIH-Birth        BANGLADESH                     10      629     61     44     17
3 months    ki1017093-NIH-Birth        BANGLADESH                     11      629     52     39     13
3 months    ki1017093-NIH-Birth        BANGLADESH                     12      629     54     45      9
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1      2393    162    145     17
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2      2393    179    160     19
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3      2393    171    155     16
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4      2393    184    163     21
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5      2393    190    169     21
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6      2393    164    148     16
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7      2393    208    189     19
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8      2393    238    216     22
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9      2393    217    193     24
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10     2393    249    225     24
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11     2393    218    194     24
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12     2393    213    192     21
3 months    ki1113344-GMS-Nepal        NEPAL                          1       593      0      0      0
3 months    ki1113344-GMS-Nepal        NEPAL                          2       593      0      0      0
3 months    ki1113344-GMS-Nepal        NEPAL                          3       593      0      0      0
3 months    ki1113344-GMS-Nepal        NEPAL                          4       593      0      0      0
3 months    ki1113344-GMS-Nepal        NEPAL                          5       593      0      0      0
3 months    ki1113344-GMS-Nepal        NEPAL                          6       593    111     98     13
3 months    ki1113344-GMS-Nepal        NEPAL                          7       593    227    189     38
3 months    ki1113344-GMS-Nepal        NEPAL                          8       593    237    198     39
3 months    ki1113344-GMS-Nepal        NEPAL                          9       593     16     12      4
3 months    ki1113344-GMS-Nepal        NEPAL                          10      593      2      2      0
3 months    ki1113344-GMS-Nepal        NEPAL                          11      593      0      0      0
3 months    ki1113344-GMS-Nepal        NEPAL                          12      593      0      0      0
3 months    ki1114097-CMIN             BANGLADESH                     1       269     29     15     14
3 months    ki1114097-CMIN             BANGLADESH                     2       269     25     17      8
3 months    ki1114097-CMIN             BANGLADESH                     3       269     18     12      6
3 months    ki1114097-CMIN             BANGLADESH                     4       269     23     13     10
3 months    ki1114097-CMIN             BANGLADESH                     5       269     20      8     12
3 months    ki1114097-CMIN             BANGLADESH                     6       269      9      3      6
3 months    ki1114097-CMIN             BANGLADESH                     7       269     16     11      5
3 months    ki1114097-CMIN             BANGLADESH                     8       269     23      8     15
3 months    ki1114097-CMIN             BANGLADESH                     9       269     21      9     12
3 months    ki1114097-CMIN             BANGLADESH                     10      269     27     17     10
3 months    ki1114097-CMIN             BANGLADESH                     11      269     30     16     14
3 months    ki1114097-CMIN             BANGLADESH                     12      269     28     10     18
3 months    ki1114097-CMIN             BRAZIL                         1       116     13     13      0
3 months    ki1114097-CMIN             BRAZIL                         2       116      7      6      1
3 months    ki1114097-CMIN             BRAZIL                         3       116     13     12      1
3 months    ki1114097-CMIN             BRAZIL                         4       116      9      9      0
3 months    ki1114097-CMIN             BRAZIL                         5       116      5      5      0
3 months    ki1114097-CMIN             BRAZIL                         6       116      6      5      1
3 months    ki1114097-CMIN             BRAZIL                         7       116      4      4      0
3 months    ki1114097-CMIN             BRAZIL                         8       116     13     12      1
3 months    ki1114097-CMIN             BRAZIL                         9       116      8      8      0
3 months    ki1114097-CMIN             BRAZIL                         10      116     16     14      2
3 months    ki1114097-CMIN             BRAZIL                         11      116     11     11      0
3 months    ki1114097-CMIN             BRAZIL                         12      116     11     10      1
3 months    ki1114097-CMIN             GUINEA-BISSAU                  1       563     60     51      9
3 months    ki1114097-CMIN             GUINEA-BISSAU                  2       563     45     33     12
3 months    ki1114097-CMIN             GUINEA-BISSAU                  3       563     32     25      7
3 months    ki1114097-CMIN             GUINEA-BISSAU                  4       563     63     55      8
3 months    ki1114097-CMIN             GUINEA-BISSAU                  5       563     55     47      8
3 months    ki1114097-CMIN             GUINEA-BISSAU                  6       563     42     36      6
3 months    ki1114097-CMIN             GUINEA-BISSAU                  7       563     41     37      4
3 months    ki1114097-CMIN             GUINEA-BISSAU                  8       563     32     30      2
3 months    ki1114097-CMIN             GUINEA-BISSAU                  9       563     72     60     12
3 months    ki1114097-CMIN             GUINEA-BISSAU                  10      563     41     34      7
3 months    ki1114097-CMIN             GUINEA-BISSAU                  11      563     37     32      5
3 months    ki1114097-CMIN             GUINEA-BISSAU                  12      563     43     36      7
3 months    ki1114097-CMIN             PERU                           1       632     49     48      1
3 months    ki1114097-CMIN             PERU                           2       632     60     59      1
3 months    ki1114097-CMIN             PERU                           3       632     66     61      5
3 months    ki1114097-CMIN             PERU                           4       632     67     63      4
3 months    ki1114097-CMIN             PERU                           5       632     63     53     10
3 months    ki1114097-CMIN             PERU                           6       632     56     50      6
3 months    ki1114097-CMIN             PERU                           7       632     46     40      6
3 months    ki1114097-CMIN             PERU                           8       632     50     44      6
3 months    ki1114097-CMIN             PERU                           9       632     38     35      3
3 months    ki1114097-CMIN             PERU                           10      632     29     25      4
3 months    ki1114097-CMIN             PERU                           11      632     61     56      5
3 months    ki1114097-CMIN             PERU                           12      632     47     44      3
3 months    ki1114097-CONTENT          PERU                           1       215      9      8      1
3 months    ki1114097-CONTENT          PERU                           2       215     16     16      0
3 months    ki1114097-CONTENT          PERU                           3       215     30     27      3
3 months    ki1114097-CONTENT          PERU                           4       215     12     10      2
3 months    ki1114097-CONTENT          PERU                           5       215     25     20      5
3 months    ki1114097-CONTENT          PERU                           6       215     14     11      3
3 months    ki1114097-CONTENT          PERU                           7       215     24     23      1
3 months    ki1114097-CONTENT          PERU                           8       215     18     14      4
3 months    ki1114097-CONTENT          PERU                           9       215     20     14      6
3 months    ki1114097-CONTENT          PERU                           10      215     24     18      6
3 months    ki1114097-CONTENT          PERU                           11      215     18     14      4
3 months    ki1114097-CONTENT          PERU                           12      215      5      5      0
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       1     14006   1366   1070    296
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       2     14006   1056    809    247
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       3     14006   1182    926    256
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       4     14006   1021    800    221
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       5     14006   1019    766    253
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       6     14006   1150    885    265
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       7     14006   1183    900    283
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       8     14006   1237    961    276
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       9     14006   1324   1111    213
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       10    14006   1050    865    185
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       11    14006   1152    945    207
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       12    14006   1266   1032    234
6 months    ki0047075b-MAL-ED          BANGLADESH                     1       246     17     14      3
6 months    ki0047075b-MAL-ED          BANGLADESH                     2       246     20     10     10
6 months    ki0047075b-MAL-ED          BANGLADESH                     3       246     26     12     14
6 months    ki0047075b-MAL-ED          BANGLADESH                     4       246     22     21      1
6 months    ki0047075b-MAL-ED          BANGLADESH                     5       246     21     12      9
6 months    ki0047075b-MAL-ED          BANGLADESH                     6       246      8      4      4
6 months    ki0047075b-MAL-ED          BANGLADESH                     7       246     20     12      8
6 months    ki0047075b-MAL-ED          BANGLADESH                     8       246     24     15      9
6 months    ki0047075b-MAL-ED          BANGLADESH                     9       246     23     17      6
6 months    ki0047075b-MAL-ED          BANGLADESH                     10      246     21     14      7
6 months    ki0047075b-MAL-ED          BANGLADESH                     11      246     16     11      5
6 months    ki0047075b-MAL-ED          BANGLADESH                     12      246     28     20      8
6 months    ki0047075b-MAL-ED          BRAZIL                         1       218     13     12      1
6 months    ki0047075b-MAL-ED          BRAZIL                         2       218     26     20      6
6 months    ki0047075b-MAL-ED          BRAZIL                         3       218     17     14      3
6 months    ki0047075b-MAL-ED          BRAZIL                         4       218     11     10      1
6 months    ki0047075b-MAL-ED          BRAZIL                         5       218     22     18      4
6 months    ki0047075b-MAL-ED          BRAZIL                         6       218      7      6      1
6 months    ki0047075b-MAL-ED          BRAZIL                         7       218     17     12      5
6 months    ki0047075b-MAL-ED          BRAZIL                         8       218     19     14      5
6 months    ki0047075b-MAL-ED          BRAZIL                         9       218     29     22      7
6 months    ki0047075b-MAL-ED          BRAZIL                         10      218     22     20      2
6 months    ki0047075b-MAL-ED          BRAZIL                         11      218     19     19      0
6 months    ki0047075b-MAL-ED          BRAZIL                         12      218     16     11      5
6 months    ki0047075b-MAL-ED          INDIA                          1       240     20     11      9
6 months    ki0047075b-MAL-ED          INDIA                          2       240     19     18      1
6 months    ki0047075b-MAL-ED          INDIA                          3       240     21     14      7
6 months    ki0047075b-MAL-ED          INDIA                          4       240     16     11      5
6 months    ki0047075b-MAL-ED          INDIA                          5       240      8      6      2
6 months    ki0047075b-MAL-ED          INDIA                          6       240     18     15      3
6 months    ki0047075b-MAL-ED          INDIA                          7       240     24     13     11
6 months    ki0047075b-MAL-ED          INDIA                          8       240     23     15      8
6 months    ki0047075b-MAL-ED          INDIA                          9       240     20     13      7
6 months    ki0047075b-MAL-ED          INDIA                          10      240     27     15     12
6 months    ki0047075b-MAL-ED          INDIA                          11      240     25     14     11
6 months    ki0047075b-MAL-ED          INDIA                          12      240     19     11      8
6 months    ki0047075b-MAL-ED          NEPAL                          1       238     20     14      6
6 months    ki0047075b-MAL-ED          NEPAL                          2       238     19     17      2
6 months    ki0047075b-MAL-ED          NEPAL                          3       238     17     14      3
6 months    ki0047075b-MAL-ED          NEPAL                          4       238     20     17      3
6 months    ki0047075b-MAL-ED          NEPAL                          5       238     21     17      4
6 months    ki0047075b-MAL-ED          NEPAL                          6       238     21     20      1
6 months    ki0047075b-MAL-ED          NEPAL                          7       238     18     15      3
6 months    ki0047075b-MAL-ED          NEPAL                          8       238     24     20      4
6 months    ki0047075b-MAL-ED          NEPAL                          9       238     14     12      2
6 months    ki0047075b-MAL-ED          NEPAL                          10      238     22     19      3
6 months    ki0047075b-MAL-ED          NEPAL                          11      238     24     18      6
6 months    ki0047075b-MAL-ED          NEPAL                          12      238     18     14      4
6 months    ki0047075b-MAL-ED          PERU                           1       282     38     21     17
6 months    ki0047075b-MAL-ED          PERU                           2       282     23     11     12
6 months    ki0047075b-MAL-ED          PERU                           3       282     21     13      8
6 months    ki0047075b-MAL-ED          PERU                           4       282     20     12      8
6 months    ki0047075b-MAL-ED          PERU                           5       282     25     13     12
6 months    ki0047075b-MAL-ED          PERU                           6       282     18     11      7
6 months    ki0047075b-MAL-ED          PERU                           7       282     23     12     11
6 months    ki0047075b-MAL-ED          PERU                           8       282     16     12      4
6 months    ki0047075b-MAL-ED          PERU                           9       282     23     14      9
6 months    ki0047075b-MAL-ED          PERU                           10      282     21     14      7
6 months    ki0047075b-MAL-ED          PERU                           11      282     32     11     21
6 months    ki0047075b-MAL-ED          PERU                           12      282     22     13      9
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1       271     38     24     14
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2       271     23     15      8
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3       271     16     11      5
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4       271     13     10      3
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   5       271     13     10      3
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   6       271     18     12      6
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   7       271     26     14     12
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   8       271     12      5      7
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   9       271     22     17      5
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   10      271     27     17     10
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   11      271     26     10     16
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   12      271     37     22     15
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1       253     22     14      8
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2       253     29     17     12
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3       253     19      7     12
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4       253      8      4      4
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5       253     19     13      6
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6       253     20     12      8
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7       253     23     14      9
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8       253     12      8      4
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9       253     23     13     10
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10      253     22      8     14
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11      253     27     19      8
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12      253     29     20      9
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1       367     34     14     20
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2       367     15      9      6
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3       367     31     19     12
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4       367     44     28     16
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          5       367     35     18     17
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          6       367     36     15     21
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          7       367     39     16     23
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          8       367     17      8      9
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          9       367     21     11     10
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          10      367     29     13     16
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          11      367     41     20     21
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          12      367     25      8     17
6 months    ki1000108-IRC              INDIA                          1       408     35     20     15
6 months    ki1000108-IRC              INDIA                          2       408     27     14     13
6 months    ki1000108-IRC              INDIA                          3       408     29     16     13
6 months    ki1000108-IRC              INDIA                          4       408     22     12     10
6 months    ki1000108-IRC              INDIA                          5       408     20     10     10
6 months    ki1000108-IRC              INDIA                          6       408     37     23     14
6 months    ki1000108-IRC              INDIA                          7       408     36     20     16
6 months    ki1000108-IRC              INDIA                          8       408     45     32     13
6 months    ki1000108-IRC              INDIA                          9       408     27     15     12
6 months    ki1000108-IRC              INDIA                          10      408     37     24     13
6 months    ki1000108-IRC              INDIA                          11      408     41     26     15
6 months    ki1000108-IRC              INDIA                          12      408     52     23     29
6 months    ki1000109-EE               PAKISTAN                       1       373     93     18     75
6 months    ki1000109-EE               PAKISTAN                       2       373     64     18     46
6 months    ki1000109-EE               PAKISTAN                       3       373     43     18     25
6 months    ki1000109-EE               PAKISTAN                       4       373     15      2     13
6 months    ki1000109-EE               PAKISTAN                       5       373      0      0      0
6 months    ki1000109-EE               PAKISTAN                       6       373      0      0      0
6 months    ki1000109-EE               PAKISTAN                       7       373      0      0      0
6 months    ki1000109-EE               PAKISTAN                       8       373      0      0      0
6 months    ki1000109-EE               PAKISTAN                       9       373      0      0      0
6 months    ki1000109-EE               PAKISTAN                       10      373      4      2      2
6 months    ki1000109-EE               PAKISTAN                       11      373     70     18     52
6 months    ki1000109-EE               PAKISTAN                       12      373     84     20     64
6 months    ki1000109-ResPak           PAKISTAN                       1       255      9      3      6
6 months    ki1000109-ResPak           PAKISTAN                       2       255     12      6      6
6 months    ki1000109-ResPak           PAKISTAN                       3       255     17      5     12
6 months    ki1000109-ResPak           PAKISTAN                       4       255     29     10     19
6 months    ki1000109-ResPak           PAKISTAN                       5       255     36     16     20
6 months    ki1000109-ResPak           PAKISTAN                       6       255     50     17     33
6 months    ki1000109-ResPak           PAKISTAN                       7       255     32      9     23
6 months    ki1000109-ResPak           PAKISTAN                       8       255     33     17     16
6 months    ki1000109-ResPak           PAKISTAN                       9       255     24     14     10
6 months    ki1000109-ResPak           PAKISTAN                       10      255      7      6      1
6 months    ki1000109-ResPak           PAKISTAN                       11      255      4      0      4
6 months    ki1000109-ResPak           PAKISTAN                       12      255      2      1      1
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1       105     16      9      7
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2       105      9      4      5
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3       105     10      4      6
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          4       105      8      5      3
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          5       105      8      5      3
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          6       105      9      6      3
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          7       105      5      4      1
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          8       105      0      0      0
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          9       105      4      3      1
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          10      105      7      3      4
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          11      105     12      8      4
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          12      105     17     11      6
6 months    ki1017093-NIH-Birth        BANGLADESH                     1       551     55     27     28
6 months    ki1017093-NIH-Birth        BANGLADESH                     2       551     44     28     16
6 months    ki1017093-NIH-Birth        BANGLADESH                     3       551     53     40     13
6 months    ki1017093-NIH-Birth        BANGLADESH                     4       551     48     33     15
6 months    ki1017093-NIH-Birth        BANGLADESH                     5       551     44     33     11
6 months    ki1017093-NIH-Birth        BANGLADESH                     6       551     42     23     19
6 months    ki1017093-NIH-Birth        BANGLADESH                     7       551     43     21     22
6 months    ki1017093-NIH-Birth        BANGLADESH                     8       551     40     27     13
6 months    ki1017093-NIH-Birth        BANGLADESH                     9       551     30     20     10
6 months    ki1017093-NIH-Birth        BANGLADESH                     10      551     57     35     22
6 months    ki1017093-NIH-Birth        BANGLADESH                     11      551     52     29     23
6 months    ki1017093-NIH-Birth        BANGLADESH                     12      551     43     34      9
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1      2234    152    129     23
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2      2234    166    138     28
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3      2234    163    133     30
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4      2234    166    129     37
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5      2234    174    137     37
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6      2234    156    125     31
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7      2234    198    154     44
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8      2234    220    172     48
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9      2234    206    162     44
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10     2234    227    180     47
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11     2234    211    168     43
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12     2234    195    160     35
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1       295     18     13      5
6 months    ki1112895-Guatemala BSC    GUATEMALA                      2       295     20     15      5
6 months    ki1112895-Guatemala BSC    GUATEMALA                      3       295     21     13      8
6 months    ki1112895-Guatemala BSC    GUATEMALA                      4       295     25     18      7
6 months    ki1112895-Guatemala BSC    GUATEMALA                      5       295     27     21      6
6 months    ki1112895-Guatemala BSC    GUATEMALA                      6       295     37     26     11
6 months    ki1112895-Guatemala BSC    GUATEMALA                      7       295     25     17      8
6 months    ki1112895-Guatemala BSC    GUATEMALA                      8       295     18     12      6
6 months    ki1112895-Guatemala BSC    GUATEMALA                      9       295     31     19     12
6 months    ki1112895-Guatemala BSC    GUATEMALA                      10      295     32     20     12
6 months    ki1112895-Guatemala BSC    GUATEMALA                      11      295     31     22      9
6 months    ki1112895-Guatemala BSC    GUATEMALA                      12      295     10      6      4
6 months    ki1113344-GMS-Nepal        NEPAL                          1       567      0      0      0
6 months    ki1113344-GMS-Nepal        NEPAL                          2       567      0      0      0
6 months    ki1113344-GMS-Nepal        NEPAL                          3       567      0      0      0
6 months    ki1113344-GMS-Nepal        NEPAL                          4       567      0      0      0
6 months    ki1113344-GMS-Nepal        NEPAL                          5       567      0      0      0
6 months    ki1113344-GMS-Nepal        NEPAL                          6       567    101     75     26
6 months    ki1113344-GMS-Nepal        NEPAL                          7       567    219    157     62
6 months    ki1113344-GMS-Nepal        NEPAL                          8       567    230    163     67
6 months    ki1113344-GMS-Nepal        NEPAL                          9       567     15      9      6
6 months    ki1113344-GMS-Nepal        NEPAL                          10      567      2      1      1
6 months    ki1113344-GMS-Nepal        NEPAL                          11      567      0      0      0
6 months    ki1113344-GMS-Nepal        NEPAL                          12      567      0      0      0
6 months    ki1114097-CMIN             BANGLADESH                     1       257     28     11     17
6 months    ki1114097-CMIN             BANGLADESH                     2       257     25     15     10
6 months    ki1114097-CMIN             BANGLADESH                     3       257     19     11      8
6 months    ki1114097-CMIN             BANGLADESH                     4       257     22     12     10
6 months    ki1114097-CMIN             BANGLADESH                     5       257     17      7     10
6 months    ki1114097-CMIN             BANGLADESH                     6       257      9      2      7
6 months    ki1114097-CMIN             BANGLADESH                     7       257     17      9      8
6 months    ki1114097-CMIN             BANGLADESH                     8       257     20      5     15
6 months    ki1114097-CMIN             BANGLADESH                     9       257     20      8     12
6 months    ki1114097-CMIN             BANGLADESH                     10      257     26     13     13
6 months    ki1114097-CMIN             BANGLADESH                     11      257     27     12     15
6 months    ki1114097-CMIN             BANGLADESH                     12      257     27      8     19
6 months    ki1114097-CMIN             BRAZIL                         1        91      9      8      1
6 months    ki1114097-CMIN             BRAZIL                         2        91      5      4      1
6 months    ki1114097-CMIN             BRAZIL                         3        91      7      6      1
6 months    ki1114097-CMIN             BRAZIL                         4        91      6      6      0
6 months    ki1114097-CMIN             BRAZIL                         5        91      5      5      0
6 months    ki1114097-CMIN             BRAZIL                         6        91      6      4      2
6 months    ki1114097-CMIN             BRAZIL                         7        91      4      3      1
6 months    ki1114097-CMIN             BRAZIL                         8        91     11     10      1
6 months    ki1114097-CMIN             BRAZIL                         9        91      7      6      1
6 months    ki1114097-CMIN             BRAZIL                         10       91     14     10      4
6 months    ki1114097-CMIN             BRAZIL                         11       91      9      8      1
6 months    ki1114097-CMIN             BRAZIL                         12       91      8      6      2
6 months    ki1114097-CMIN             GUINEA-BISSAU                  1       832     59     51      8
6 months    ki1114097-CMIN             GUINEA-BISSAU                  2       832     59     46     13
6 months    ki1114097-CMIN             GUINEA-BISSAU                  3       832     46     38      8
6 months    ki1114097-CMIN             GUINEA-BISSAU                  4       832    135    126      9
6 months    ki1114097-CMIN             GUINEA-BISSAU                  5       832     92     78     14
6 months    ki1114097-CMIN             GUINEA-BISSAU                  6       832     73     64      9
6 months    ki1114097-CMIN             GUINEA-BISSAU                  7       832     42     33      9
6 months    ki1114097-CMIN             GUINEA-BISSAU                  8       832     33     30      3
6 months    ki1114097-CMIN             GUINEA-BISSAU                  9       832    104     84     20
6 months    ki1114097-CMIN             GUINEA-BISSAU                  10      832     63     53     10
6 months    ki1114097-CMIN             GUINEA-BISSAU                  11      832     65     53     12
6 months    ki1114097-CMIN             GUINEA-BISSAU                  12      832     61     52      9
6 months    ki1114097-CMIN             PERU                           1       673     66     59      7
6 months    ki1114097-CMIN             PERU                           2       673     54     50      4
6 months    ki1114097-CMIN             PERU                           3       673     66     55     11
6 months    ki1114097-CMIN             PERU                           4       673     70     61      9
6 months    ki1114097-CMIN             PERU                           5       673     62     49     13
6 months    ki1114097-CMIN             PERU                           6       673     55     49      6
6 months    ki1114097-CMIN             PERU                           7       673     45     39      6
6 months    ki1114097-CMIN             PERU                           8       673     50     43      7
6 months    ki1114097-CMIN             PERU                           9       673     43     39      4
6 months    ki1114097-CMIN             PERU                           10      673     29     21      8
6 months    ki1114097-CMIN             PERU                           11      673     83     75      8
6 months    ki1114097-CMIN             PERU                           12      673     50     46      4
6 months    ki1114097-CONTENT          PERU                           1       215      9      8      1
6 months    ki1114097-CONTENT          PERU                           2       215     16     16      0
6 months    ki1114097-CONTENT          PERU                           3       215     30     25      5
6 months    ki1114097-CONTENT          PERU                           4       215     12      7      5
6 months    ki1114097-CONTENT          PERU                           5       215     25     18      7
6 months    ki1114097-CONTENT          PERU                           6       215     14     10      4
6 months    ki1114097-CONTENT          PERU                           7       215     24     20      4
6 months    ki1114097-CONTENT          PERU                           8       215     18     12      6
6 months    ki1114097-CONTENT          PERU                           9       215     20     14      6
6 months    ki1114097-CONTENT          PERU                           10      215     24     18      6
6 months    ki1114097-CONTENT          PERU                           11      215     18     14      4
6 months    ki1114097-CONTENT          PERU                           12      215      5      5      0
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1      9082    900    642    258
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2      9082    622    418    204
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3      9082    768    554    214
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       4      9082    673    481    192
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       5      9082    696    461    235
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       6      9082    795    498    297
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       7      9082    745    499    246
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       8      9082    814    554    260
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       9      9082    798    606    192
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       10     9082    651    473    178
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       11     9082    762    575    187
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       12     9082    858    645    213
6 months    ki1148112-LCNI-5           MALAWI                         1       272      7      5      2
6 months    ki1148112-LCNI-5           MALAWI                         2       272     47     31     16
6 months    ki1148112-LCNI-5           MALAWI                         3       272     58     38     20
6 months    ki1148112-LCNI-5           MALAWI                         4       272     49     29     20
6 months    ki1148112-LCNI-5           MALAWI                         5       272     26     16     10
6 months    ki1148112-LCNI-5           MALAWI                         6       272     28     19      9
6 months    ki1148112-LCNI-5           MALAWI                         7       272     29     18     11
6 months    ki1148112-LCNI-5           MALAWI                         8       272      4      4      0
6 months    ki1148112-LCNI-5           MALAWI                         9       272      4      2      2
6 months    ki1148112-LCNI-5           MALAWI                         10      272      5      2      3
6 months    ki1148112-LCNI-5           MALAWI                         11      272     10      9      1
6 months    ki1148112-LCNI-5           MALAWI                         12      272      5      2      3
12 months   ki0047075b-MAL-ED          BANGLADESH                     1       239     17     14      3
12 months   ki0047075b-MAL-ED          BANGLADESH                     2       239     20      8     12
12 months   ki0047075b-MAL-ED          BANGLADESH                     3       239     24     10     14
12 months   ki0047075b-MAL-ED          BANGLADESH                     4       239     22     17      5
12 months   ki0047075b-MAL-ED          BANGLADESH                     5       239     21      9     12
12 months   ki0047075b-MAL-ED          BANGLADESH                     6       239      8      4      4
12 months   ki0047075b-MAL-ED          BANGLADESH                     7       239     20     12      8
12 months   ki0047075b-MAL-ED          BANGLADESH                     8       239     22     12     10
12 months   ki0047075b-MAL-ED          BANGLADESH                     9       239     21     12      9
12 months   ki0047075b-MAL-ED          BANGLADESH                     10      239     21     12      9
12 months   ki0047075b-MAL-ED          BANGLADESH                     11      239     15      8      7
12 months   ki0047075b-MAL-ED          BANGLADESH                     12      239     28     18     10
12 months   ki0047075b-MAL-ED          BRAZIL                         1       207     13     12      1
12 months   ki0047075b-MAL-ED          BRAZIL                         2       207     23     17      6
12 months   ki0047075b-MAL-ED          BRAZIL                         3       207     17     14      3
12 months   ki0047075b-MAL-ED          BRAZIL                         4       207     11     10      1
12 months   ki0047075b-MAL-ED          BRAZIL                         5       207     21     16      5
12 months   ki0047075b-MAL-ED          BRAZIL                         6       207      7      6      1
12 months   ki0047075b-MAL-ED          BRAZIL                         7       207     17     10      7
12 months   ki0047075b-MAL-ED          BRAZIL                         8       207     16     11      5
12 months   ki0047075b-MAL-ED          BRAZIL                         9       207     29     22      7
12 months   ki0047075b-MAL-ED          BRAZIL                         10      207     20     19      1
12 months   ki0047075b-MAL-ED          BRAZIL                         11      207     18     18      0
12 months   ki0047075b-MAL-ED          BRAZIL                         12      207     15     10      5
12 months   ki0047075b-MAL-ED          INDIA                          1       235     19      7     12
12 months   ki0047075b-MAL-ED          INDIA                          2       235     18     13      5
12 months   ki0047075b-MAL-ED          INDIA                          3       235     21     12      9
12 months   ki0047075b-MAL-ED          INDIA                          4       235     15      8      7
12 months   ki0047075b-MAL-ED          INDIA                          5       235      8      4      4
12 months   ki0047075b-MAL-ED          INDIA                          6       235     18     12      6
12 months   ki0047075b-MAL-ED          INDIA                          7       235     23     11     12
12 months   ki0047075b-MAL-ED          INDIA                          8       235     22     11     11
12 months   ki0047075b-MAL-ED          INDIA                          9       235     20     11      9
12 months   ki0047075b-MAL-ED          INDIA                          10      235     27     13     14
12 months   ki0047075b-MAL-ED          INDIA                          11      235     25     11     14
12 months   ki0047075b-MAL-ED          INDIA                          12      235     19     10      9
12 months   ki0047075b-MAL-ED          NEPAL                          1       235     20     14      6
12 months   ki0047075b-MAL-ED          NEPAL                          2       235     19     14      5
12 months   ki0047075b-MAL-ED          NEPAL                          3       235     17     13      4
12 months   ki0047075b-MAL-ED          NEPAL                          4       235     20     16      4
12 months   ki0047075b-MAL-ED          NEPAL                          5       235     19     16      3
12 months   ki0047075b-MAL-ED          NEPAL                          6       235     21     19      2
12 months   ki0047075b-MAL-ED          NEPAL                          7       235     18     15      3
12 months   ki0047075b-MAL-ED          NEPAL                          8       235     24     20      4
12 months   ki0047075b-MAL-ED          NEPAL                          9       235     13     11      2
12 months   ki0047075b-MAL-ED          NEPAL                          10      235     22     19      3
12 months   ki0047075b-MAL-ED          NEPAL                          11      235     24     17      7
12 months   ki0047075b-MAL-ED          NEPAL                          12      235     18     14      4
12 months   ki0047075b-MAL-ED          PERU                           1       270     36     17     19
12 months   ki0047075b-MAL-ED          PERU                           2       270     21      9     12
12 months   ki0047075b-MAL-ED          PERU                           3       270     21     13      8
12 months   ki0047075b-MAL-ED          PERU                           4       270     20     10     10
12 months   ki0047075b-MAL-ED          PERU                           5       270     23     11     12
12 months   ki0047075b-MAL-ED          PERU                           6       270     18     10      8
12 months   ki0047075b-MAL-ED          PERU                           7       270     22      9     13
12 months   ki0047075b-MAL-ED          PERU                           8       270     16     10      6
12 months   ki0047075b-MAL-ED          PERU                           9       270     23     11     12
12 months   ki0047075b-MAL-ED          PERU                           10      270     18     11      7
12 months   ki0047075b-MAL-ED          PERU                           11      270     32     10     22
12 months   ki0047075b-MAL-ED          PERU                           12      270     20      9     11
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1       259     37     19     18
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2       259     23     12     11
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3       259     16     11      5
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4       259     13      9      4
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5       259     12      9      3
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6       259     17      9      8
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7       259     24     11     13
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8       259     10      4      6
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9       259     19     13      6
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10      259     27     15     12
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11      259     25      8     17
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12      259     36     17     19
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1       245     19     10      9
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2       245     29      7     22
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3       245     19      5     14
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4       245      8      3      5
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5       245     18      6     12
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6       245     20      6     14
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7       245     23     12     11
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8       245     12      5      7
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9       245     22      6     16
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10      245     21      4     17
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11      245     27     10     17
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12      245     27     10     17
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          1       372     34      9     25
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          2       372     16      3     13
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          3       372     31     11     20
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          4       372     44     19     25
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          5       372     36     11     25
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          6       372     37      7     30
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          7       372     39     12     27
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          8       372     18      6     12
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          9       372     20      6     14
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          10      372     29      9     20
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          11      372     43     15     28
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          12      372     25      4     21
12 months   ki1000108-IRC              INDIA                          1       408     36     16     20
12 months   ki1000108-IRC              INDIA                          2       408     27     12     15
12 months   ki1000108-IRC              INDIA                          3       408     29     14     15
12 months   ki1000108-IRC              INDIA                          4       408     22      9     13
12 months   ki1000108-IRC              INDIA                          5       408     20      6     14
12 months   ki1000108-IRC              INDIA                          6       408     37     21     16
12 months   ki1000108-IRC              INDIA                          7       408     36     19     17
12 months   ki1000108-IRC              INDIA                          8       408     45     27     18
12 months   ki1000108-IRC              INDIA                          9       408     27     13     14
12 months   ki1000108-IRC              INDIA                          10      408     37     21     16
12 months   ki1000108-IRC              INDIA                          11      408     41     22     19
12 months   ki1000108-IRC              INDIA                          12      408     51     21     30
12 months   ki1000109-EE               PAKISTAN                       1       373     91     13     78
12 months   ki1000109-EE               PAKISTAN                       2       373     65     12     53
12 months   ki1000109-EE               PAKISTAN                       3       373     42     10     32
12 months   ki1000109-EE               PAKISTAN                       4       373     16      2     14
12 months   ki1000109-EE               PAKISTAN                       5       373      0      0      0
12 months   ki1000109-EE               PAKISTAN                       6       373      0      0      0
12 months   ki1000109-EE               PAKISTAN                       7       373      0      0      0
12 months   ki1000109-EE               PAKISTAN                       8       373      0      0      0
12 months   ki1000109-EE               PAKISTAN                       9       373      0      0      0
12 months   ki1000109-EE               PAKISTAN                       10      373      4      1      3
12 months   ki1000109-EE               PAKISTAN                       11      373     70     14     56
12 months   ki1000109-EE               PAKISTAN                       12      373     85     13     72
12 months   ki1000109-ResPak           PAKISTAN                       1       230      9      2      7
12 months   ki1000109-ResPak           PAKISTAN                       2       230     11      4      7
12 months   ki1000109-ResPak           PAKISTAN                       3       230     17      5     12
12 months   ki1000109-ResPak           PAKISTAN                       4       230     21      6     15
12 months   ki1000109-ResPak           PAKISTAN                       5       230     34     16     18
12 months   ki1000109-ResPak           PAKISTAN                       6       230     46     13     33
12 months   ki1000109-ResPak           PAKISTAN                       7       230     26      6     20
12 months   ki1000109-ResPak           PAKISTAN                       8       230     32     13     19
12 months   ki1000109-ResPak           PAKISTAN                       9       230     23     13     10
12 months   ki1000109-ResPak           PAKISTAN                       10      230      7      6      1
12 months   ki1000109-ResPak           PAKISTAN                       11      230      2      0      2
12 months   ki1000109-ResPak           PAKISTAN                       12      230      2      1      1
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          1        99     15      0     15
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          2        99      9      2      7
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          3        99      8      1      7
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          4        99      8      1      7
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          5        99      7      1      6
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          6        99      9      1      8
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          7        99      5      1      4
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          8        99      0      0      0
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          9        99      4      0      4
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          10       99      6      1      5
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          11       99     11      2      9
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          12       99     17      5     12
12 months   ki1017093-NIH-Birth        BANGLADESH                     1       541     52     18     34
12 months   ki1017093-NIH-Birth        BANGLADESH                     2       541     50     23     27
12 months   ki1017093-NIH-Birth        BANGLADESH                     3       541     51     28     23
12 months   ki1017093-NIH-Birth        BANGLADESH                     4       541     45     27     18
12 months   ki1017093-NIH-Birth        BANGLADESH                     5       541     42     25     17
12 months   ki1017093-NIH-Birth        BANGLADESH                     6       541     40     19     21
12 months   ki1017093-NIH-Birth        BANGLADESH                     7       541     45     18     27
12 months   ki1017093-NIH-Birth        BANGLADESH                     8       541     37     17     20
12 months   ki1017093-NIH-Birth        BANGLADESH                     9       541     29     16     13
12 months   ki1017093-NIH-Birth        BANGLADESH                     10      541     53     25     28
12 months   ki1017093-NIH-Birth        BANGLADESH                     11      541     47     20     27
12 months   ki1017093-NIH-Birth        BANGLADESH                     12      541     50     29     21
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1      1996    133     97     36
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2      1996    146    103     43
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3      1996    143     98     45
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4      1996    140     86     54
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5      1996    150     99     51
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6      1996    138     90     48
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7      1996    185    120     65
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8      1996    208    145     63
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9      1996    184    127     57
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10     1996    209    153     56
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11     1996    187    124     63
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12     1996    173    121     52
12 months   ki1112895-Guatemala BSC    GUATEMALA                      1       277     15      6      9
12 months   ki1112895-Guatemala BSC    GUATEMALA                      2       277     18     11      7
12 months   ki1112895-Guatemala BSC    GUATEMALA                      3       277     19      5     14
12 months   ki1112895-Guatemala BSC    GUATEMALA                      4       277     24     10     14
12 months   ki1112895-Guatemala BSC    GUATEMALA                      5       277     30     17     13
12 months   ki1112895-Guatemala BSC    GUATEMALA                      6       277     37     16     21
12 months   ki1112895-Guatemala BSC    GUATEMALA                      7       277     24     12     12
12 months   ki1112895-Guatemala BSC    GUATEMALA                      8       277     19     11      8
12 months   ki1112895-Guatemala BSC    GUATEMALA                      9       277     32     17     15
12 months   ki1112895-Guatemala BSC    GUATEMALA                      10      277     24     10     14
12 months   ki1112895-Guatemala BSC    GUATEMALA                      11      277     26     13     13
12 months   ki1112895-Guatemala BSC    GUATEMALA                      12      277      9      4      5
12 months   ki1113344-GMS-Nepal        NEPAL                          1       582      0      0      0
12 months   ki1113344-GMS-Nepal        NEPAL                          2       582      0      0      0
12 months   ki1113344-GMS-Nepal        NEPAL                          3       582      0      0      0
12 months   ki1113344-GMS-Nepal        NEPAL                          4       582      0      0      0
12 months   ki1113344-GMS-Nepal        NEPAL                          5       582      0      0      0
12 months   ki1113344-GMS-Nepal        NEPAL                          6       582    107     51     56
12 months   ki1113344-GMS-Nepal        NEPAL                          7       582    226    121    105
12 months   ki1113344-GMS-Nepal        NEPAL                          8       582    231    135     96
12 months   ki1113344-GMS-Nepal        NEPAL                          9       582     16      9      7
12 months   ki1113344-GMS-Nepal        NEPAL                          10      582      2      1      1
12 months   ki1113344-GMS-Nepal        NEPAL                          11      582      0      0      0
12 months   ki1113344-GMS-Nepal        NEPAL                          12      582      0      0      0
12 months   ki1114097-CMIN             BANGLADESH                     1       252     27      9     18
12 months   ki1114097-CMIN             BANGLADESH                     2       252     25     11     14
12 months   ki1114097-CMIN             BANGLADESH                     3       252     18      7     11
12 months   ki1114097-CMIN             BANGLADESH                     4       252     22      9     13
12 months   ki1114097-CMIN             BANGLADESH                     5       252     17      5     12
12 months   ki1114097-CMIN             BANGLADESH                     6       252      9      1      8
12 months   ki1114097-CMIN             BANGLADESH                     7       252     16      7      9
12 months   ki1114097-CMIN             BANGLADESH                     8       252     19      3     16
12 months   ki1114097-CMIN             BANGLADESH                     9       252     20      7     13
12 months   ki1114097-CMIN             BANGLADESH                     10      252     26      6     20
12 months   ki1114097-CMIN             BANGLADESH                     11      252     26     10     16
12 months   ki1114097-CMIN             BANGLADESH                     12      252     27      4     23
12 months   ki1114097-CMIN             BRAZIL                         1       116     14     11      3
12 months   ki1114097-CMIN             BRAZIL                         2       116      7      4      3
12 months   ki1114097-CMIN             BRAZIL                         3       116     13     10      3
12 months   ki1114097-CMIN             BRAZIL                         4       116      9      8      1
12 months   ki1114097-CMIN             BRAZIL                         5       116      5      3      2
12 months   ki1114097-CMIN             BRAZIL                         6       116      7      3      4
12 months   ki1114097-CMIN             BRAZIL                         7       116      4      3      1
12 months   ki1114097-CMIN             BRAZIL                         8       116     13     11      2
12 months   ki1114097-CMIN             BRAZIL                         9       116      8      6      2
12 months   ki1114097-CMIN             BRAZIL                         10      116     15     11      4
12 months   ki1114097-CMIN             BRAZIL                         11      116     11      9      2
12 months   ki1114097-CMIN             BRAZIL                         12      116     10      6      4
12 months   ki1114097-CMIN             GUINEA-BISSAU                  1      1170     88     67     21
12 months   ki1114097-CMIN             GUINEA-BISSAU                  2      1170     79     51     28
12 months   ki1114097-CMIN             GUINEA-BISSAU                  3      1170     74     55     19
12 months   ki1114097-CMIN             GUINEA-BISSAU                  4      1170    227    174     53
12 months   ki1114097-CMIN             GUINEA-BISSAU                  5      1170    132     96     36
12 months   ki1114097-CMIN             GUINEA-BISSAU                  6      1170     99     79     20
12 months   ki1114097-CMIN             GUINEA-BISSAU                  7      1170     80     60     20
12 months   ki1114097-CMIN             GUINEA-BISSAU                  8      1170     53     44      9
12 months   ki1114097-CMIN             GUINEA-BISSAU                  9      1170    124     88     36
12 months   ki1114097-CMIN             GUINEA-BISSAU                  10     1170     70     57     13
12 months   ki1114097-CMIN             GUINEA-BISSAU                  11     1170     72     54     18
12 months   ki1114097-CMIN             GUINEA-BISSAU                  12     1170     72     56     16
12 months   ki1114097-CMIN             PERU                           1       722    107     76     31
12 months   ki1114097-CMIN             PERU                           2       722     57     46     11
12 months   ki1114097-CMIN             PERU                           3       722     65     47     18
12 months   ki1114097-CMIN             PERU                           4       722     76     55     21
12 months   ki1114097-CMIN             PERU                           5       722     64     44     20
12 months   ki1114097-CMIN             PERU                           6       722     57     46     11
12 months   ki1114097-CMIN             PERU                           7       722     53     36     17
12 months   ki1114097-CMIN             PERU                           8       722     55     41     14
12 months   ki1114097-CMIN             PERU                           9       722     39     34      5
12 months   ki1114097-CMIN             PERU                           10      722     28     15     13
12 months   ki1114097-CMIN             PERU                           11      722     75     60     15
12 months   ki1114097-CMIN             PERU                           12      722     46     38      8
12 months   ki1114097-CONTENT          PERU                           1       215      9      8      1
12 months   ki1114097-CONTENT          PERU                           2       215     16     16      0
12 months   ki1114097-CONTENT          PERU                           3       215     30     25      5
12 months   ki1114097-CONTENT          PERU                           4       215     12      7      5
12 months   ki1114097-CONTENT          PERU                           5       215     25     17      8
12 months   ki1114097-CONTENT          PERU                           6       215     14      9      5
12 months   ki1114097-CONTENT          PERU                           7       215     24     19      5
12 months   ki1114097-CONTENT          PERU                           8       215     18     11      7
12 months   ki1114097-CONTENT          PERU                           9       215     20     14      6
12 months   ki1114097-CONTENT          PERU                           10      215     24     17      7
12 months   ki1114097-CONTENT          PERU                           11      215     18     14      4
12 months   ki1114097-CONTENT          PERU                           12      215      5      4      1
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       1     10164   1005    639    366
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       2     10164    784    479    305
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       3     10164    856    510    346
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       4     10164    749    480    269
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       5     10164    723    415    308
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       6     10164    810    469    341
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       7     10164    824    492    332
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       8     10164    867    519    348
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       9     10164    952    637    315
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       10    10164    754    474    280
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       11    10164    863    575    288
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       12    10164    977    644    333
12 months   ki1148112-LCNI-5           MALAWI                         1       815     55     32     23
12 months   ki1148112-LCNI-5           MALAWI                         2       815    114     62     52
12 months   ki1148112-LCNI-5           MALAWI                         3       815     92     51     41
12 months   ki1148112-LCNI-5           MALAWI                         4       815    107     47     60
12 months   ki1148112-LCNI-5           MALAWI                         5       815    106     57     49
12 months   ki1148112-LCNI-5           MALAWI                         6       815     87     47     40
12 months   ki1148112-LCNI-5           MALAWI                         7       815     71     31     40
12 months   ki1148112-LCNI-5           MALAWI                         8       815     43     27     16
12 months   ki1148112-LCNI-5           MALAWI                         9       815     27     14     13
12 months   ki1148112-LCNI-5           MALAWI                         10      815     34     19     15
12 months   ki1148112-LCNI-5           MALAWI                         11      815     45     24     21
12 months   ki1148112-LCNI-5           MALAWI                         12      815     34     17     17
18 months   ki0047075b-MAL-ED          BANGLADESH                     1       231     17      9      8
18 months   ki0047075b-MAL-ED          BANGLADESH                     2       231     19      3     16
18 months   ki0047075b-MAL-ED          BANGLADESH                     3       231     22      5     17
18 months   ki0047075b-MAL-ED          BANGLADESH                     4       231     21     13      8
18 months   ki0047075b-MAL-ED          BANGLADESH                     5       231     21      7     14
18 months   ki0047075b-MAL-ED          BANGLADESH                     6       231      7      2      5
18 months   ki0047075b-MAL-ED          BANGLADESH                     7       231     20      9     11
18 months   ki0047075b-MAL-ED          BANGLADESH                     8       231     21     10     11
18 months   ki0047075b-MAL-ED          BANGLADESH                     9       231     21      9     12
18 months   ki0047075b-MAL-ED          BANGLADESH                     10      231     21     12      9
18 months   ki0047075b-MAL-ED          BANGLADESH                     11      231     13      6      7
18 months   ki0047075b-MAL-ED          BANGLADESH                     12      231     28     15     13
18 months   ki0047075b-MAL-ED          BRAZIL                         1       194     13     11      2
18 months   ki0047075b-MAL-ED          BRAZIL                         2       194     22     15      7
18 months   ki0047075b-MAL-ED          BRAZIL                         3       194     17     14      3
18 months   ki0047075b-MAL-ED          BRAZIL                         4       194     10      9      1
18 months   ki0047075b-MAL-ED          BRAZIL                         5       194     20     15      5
18 months   ki0047075b-MAL-ED          BRAZIL                         6       194      6      5      1
18 months   ki0047075b-MAL-ED          BRAZIL                         7       194     17     10      7
18 months   ki0047075b-MAL-ED          BRAZIL                         8       194     13      9      4
18 months   ki0047075b-MAL-ED          BRAZIL                         9       194     27     19      8
18 months   ki0047075b-MAL-ED          BRAZIL                         10      194     17     15      2
18 months   ki0047075b-MAL-ED          BRAZIL                         11      194     18     18      0
18 months   ki0047075b-MAL-ED          BRAZIL                         12      194     14      9      5
18 months   ki0047075b-MAL-ED          INDIA                          1       229     19      6     13
18 months   ki0047075b-MAL-ED          INDIA                          2       229     18     13      5
18 months   ki0047075b-MAL-ED          INDIA                          3       229     18      7     11
18 months   ki0047075b-MAL-ED          INDIA                          4       229     15      6      9
18 months   ki0047075b-MAL-ED          INDIA                          5       229      8      4      4
18 months   ki0047075b-MAL-ED          INDIA                          6       229     18      9      9
18 months   ki0047075b-MAL-ED          INDIA                          7       229     23     11     12
18 months   ki0047075b-MAL-ED          INDIA                          8       229     22      6     16
18 months   ki0047075b-MAL-ED          INDIA                          9       229     18      6     12
18 months   ki0047075b-MAL-ED          INDIA                          10      229     27     10     17
18 months   ki0047075b-MAL-ED          INDIA                          11      229     24      9     15
18 months   ki0047075b-MAL-ED          INDIA                          12      229     19      9     10
18 months   ki0047075b-MAL-ED          NEPAL                          1       231     20     13      7
18 months   ki0047075b-MAL-ED          NEPAL                          2       231     17     11      6
18 months   ki0047075b-MAL-ED          NEPAL                          3       231     17     11      6
18 months   ki0047075b-MAL-ED          NEPAL                          4       231     20     15      5
18 months   ki0047075b-MAL-ED          NEPAL                          5       231     18     11      7
18 months   ki0047075b-MAL-ED          NEPAL                          6       231     21     18      3
18 months   ki0047075b-MAL-ED          NEPAL                          7       231     18     15      3
18 months   ki0047075b-MAL-ED          NEPAL                          8       231     24     17      7
18 months   ki0047075b-MAL-ED          NEPAL                          9       231     13     10      3
18 months   ki0047075b-MAL-ED          NEPAL                          10      231     21     16      5
18 months   ki0047075b-MAL-ED          NEPAL                          11      231     24     14     10
18 months   ki0047075b-MAL-ED          NEPAL                          12      231     18     12      6
18 months   ki0047075b-MAL-ED          PERU                           1       244     33     11     22
18 months   ki0047075b-MAL-ED          PERU                           2       244     20      5     15
18 months   ki0047075b-MAL-ED          PERU                           3       244     18      9      9
18 months   ki0047075b-MAL-ED          PERU                           4       244     18      6     12
18 months   ki0047075b-MAL-ED          PERU                           5       244     19      4     15
18 months   ki0047075b-MAL-ED          PERU                           6       244     17      6     11
18 months   ki0047075b-MAL-ED          PERU                           7       244     20      3     17
18 months   ki0047075b-MAL-ED          PERU                           8       244     14      6      8
18 months   ki0047075b-MAL-ED          PERU                           9       244     22      9     13
18 months   ki0047075b-MAL-ED          PERU                           10      244     16      7      9
18 months   ki0047075b-MAL-ED          PERU                           11      244     27      8     19
18 months   ki0047075b-MAL-ED          PERU                           12      244     20      6     14
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1       253     37     18     19
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2       253     23      8     15
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3       253     16      9      7
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4       253     13      7      6
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5       253     12      9      3
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6       253     15      8      7
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7       253     24     10     14
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8       253      9      4      5
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9       253     19     10      9
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10      253     25      9     16
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11      253     25      7     18
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12      253     35     13     22
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1       233     17      6     11
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2       233     26      3     23
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3       233     19      4     15
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4       233      8      3      5
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5       233     18      3     15
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6       233     20      3     17
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7       233     23      6     17
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8       233     12      3      9
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9       233     20      3     17
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10      233     19      1     18
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11      233     25      4     21
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12      233     26      4     22
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          1       373     34      4     30
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          2       373     16      1     15
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          3       373     31      2     29
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          4       373     44     12     32
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          5       373     36      5     31
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          6       373     37      4     33
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          7       373     39      8     31
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          8       373     18      3     15
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          9       373     21      4     17
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          10      373     29      4     25
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          11      373     43     10     33
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          12      373     25      0     25
18 months   ki1000108-IRC              INDIA                          1       409     36     16     20
18 months   ki1000108-IRC              INDIA                          2       409     27     11     16
18 months   ki1000108-IRC              INDIA                          3       409     29     11     18
18 months   ki1000108-IRC              INDIA                          4       409     22      7     15
18 months   ki1000108-IRC              INDIA                          5       409     21      5     16
18 months   ki1000108-IRC              INDIA                          6       409     37     20     17
18 months   ki1000108-IRC              INDIA                          7       409     36     17     19
18 months   ki1000108-IRC              INDIA                          8       409     45     25     20
18 months   ki1000108-IRC              INDIA                          9       409     27     10     17
18 months   ki1000108-IRC              INDIA                          10      409     37     21     16
18 months   ki1000108-IRC              INDIA                          11      409     41     19     22
18 months   ki1000108-IRC              INDIA                          12      409     51     17     34
18 months   ki1000109-EE               PAKISTAN                       1       363     90      6     84
18 months   ki1000109-EE               PAKISTAN                       2       363     62      8     54
18 months   ki1000109-EE               PAKISTAN                       3       363     41      4     37
18 months   ki1000109-EE               PAKISTAN                       4       363     16      2     14
18 months   ki1000109-EE               PAKISTAN                       5       363      0      0      0
18 months   ki1000109-EE               PAKISTAN                       6       363      0      0      0
18 months   ki1000109-EE               PAKISTAN                       7       363      0      0      0
18 months   ki1000109-EE               PAKISTAN                       8       363      0      0      0
18 months   ki1000109-EE               PAKISTAN                       9       363      0      0      0
18 months   ki1000109-EE               PAKISTAN                       10      363      4      1      3
18 months   ki1000109-EE               PAKISTAN                       11      363     67      7     60
18 months   ki1000109-EE               PAKISTAN                       12      363     83      4     79
18 months   ki1000109-ResPak           PAKISTAN                       1       184      6      1      5
18 months   ki1000109-ResPak           PAKISTAN                       2       184      6      1      5
18 months   ki1000109-ResPak           PAKISTAN                       3       184     12      4      8
18 months   ki1000109-ResPak           PAKISTAN                       4       184     17      4     13
18 months   ki1000109-ResPak           PAKISTAN                       5       184     31     14     17
18 months   ki1000109-ResPak           PAKISTAN                       6       184     44     12     32
18 months   ki1000109-ResPak           PAKISTAN                       7       184     21      4     17
18 months   ki1000109-ResPak           PAKISTAN                       8       184     28     10     18
18 months   ki1000109-ResPak           PAKISTAN                       9       184     17      9      8
18 months   ki1000109-ResPak           PAKISTAN                       10      184      1      0      1
18 months   ki1000109-ResPak           PAKISTAN                       11      184      0      0      0
18 months   ki1000109-ResPak           PAKISTAN                       12      184      1      0      1
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          1        93     16      0     16
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          2        93      8      1      7
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          3        93      7      1      6
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          4        93      7      0      7
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          5        93      8      2      6
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          6        93      7      0      7
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          7        93      5      1      4
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          8        93      0      0      0
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          9        93      4      0      4
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          10       93      6      1      5
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          11       93     10      2      8
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          12       93     15      2     13
18 months   ki1017093-NIH-Birth        BANGLADESH                     1       497     47     15     32
18 months   ki1017093-NIH-Birth        BANGLADESH                     2       497     42     12     30
18 months   ki1017093-NIH-Birth        BANGLADESH                     3       497     46     19     27
18 months   ki1017093-NIH-Birth        BANGLADESH                     4       497     40     14     26
18 months   ki1017093-NIH-Birth        BANGLADESH                     5       497     37     17     20
18 months   ki1017093-NIH-Birth        BANGLADESH                     6       497     36     11     25
18 months   ki1017093-NIH-Birth        BANGLADESH                     7       497     43     15     28
18 months   ki1017093-NIH-Birth        BANGLADESH                     8       497     33      9     24
18 months   ki1017093-NIH-Birth        BANGLADESH                     9       497     27     12     15
18 months   ki1017093-NIH-Birth        BANGLADESH                     10      497     49     19     30
18 months   ki1017093-NIH-Birth        BANGLADESH                     11      497     48     12     36
18 months   ki1017093-NIH-Birth        BANGLADESH                     12      497     49     19     30
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1      1454     94     51     43
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2      1454    107     70     37
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3      1454    111     63     48
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4      1454    114     61     53
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5      1454    116     71     45
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6      1454    105     60     45
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7      1454    139     82     57
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8      1454    152     99     53
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9      1454    130     76     54
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10     1454    149     93     56
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11     1454    123     74     49
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12     1454    114     66     48
18 months   ki1112895-Guatemala BSC    GUATEMALA                      1       186      8      2      6
18 months   ki1112895-Guatemala BSC    GUATEMALA                      2       186     15      7      8
18 months   ki1112895-Guatemala BSC    GUATEMALA                      3       186     16      3     13
18 months   ki1112895-Guatemala BSC    GUATEMALA                      4       186     12      4      8
18 months   ki1112895-Guatemala BSC    GUATEMALA                      5       186     21     10     11
18 months   ki1112895-Guatemala BSC    GUATEMALA                      6       186     26     10     16
18 months   ki1112895-Guatemala BSC    GUATEMALA                      7       186     20      9     11
18 months   ki1112895-Guatemala BSC    GUATEMALA                      8       186     12      6      6
18 months   ki1112895-Guatemala BSC    GUATEMALA                      9       186     22      8     14
18 months   ki1112895-Guatemala BSC    GUATEMALA                      10      186     13      4      9
18 months   ki1112895-Guatemala BSC    GUATEMALA                      11      186     15      5     10
18 months   ki1112895-Guatemala BSC    GUATEMALA                      12      186      6      2      4
18 months   ki1113344-GMS-Nepal        NEPAL                          1       574      0      0      0
18 months   ki1113344-GMS-Nepal        NEPAL                          2       574      0      0      0
18 months   ki1113344-GMS-Nepal        NEPAL                          3       574      0      0      0
18 months   ki1113344-GMS-Nepal        NEPAL                          4       574      0      0      0
18 months   ki1113344-GMS-Nepal        NEPAL                          5       574      0      0      0
18 months   ki1113344-GMS-Nepal        NEPAL                          6       574    107     39     68
18 months   ki1113344-GMS-Nepal        NEPAL                          7       574    223     81    142
18 months   ki1113344-GMS-Nepal        NEPAL                          8       574    227     89    138
18 months   ki1113344-GMS-Nepal        NEPAL                          9       574     15      6      9
18 months   ki1113344-GMS-Nepal        NEPAL                          10      574      2      1      1
18 months   ki1113344-GMS-Nepal        NEPAL                          11      574      0      0      0
18 months   ki1113344-GMS-Nepal        NEPAL                          12      574      0      0      0
18 months   ki1114097-CMIN             BANGLADESH                     1       249     27      7     20
18 months   ki1114097-CMIN             BANGLADESH                     2       249     24      6     18
18 months   ki1114097-CMIN             BANGLADESH                     3       249     18      6     12
18 months   ki1114097-CMIN             BANGLADESH                     4       249     22      5     17
18 months   ki1114097-CMIN             BANGLADESH                     5       249     17      3     14
18 months   ki1114097-CMIN             BANGLADESH                     6       249      9      1      8
18 months   ki1114097-CMIN             BANGLADESH                     7       249     16      5     11
18 months   ki1114097-CMIN             BANGLADESH                     8       249     19      2     17
18 months   ki1114097-CMIN             BANGLADESH                     9       249     20      3     17
18 months   ki1114097-CMIN             BANGLADESH                     10      249     26      6     20
18 months   ki1114097-CMIN             BANGLADESH                     11      249     25      5     20
18 months   ki1114097-CMIN             BANGLADESH                     12      249     26      2     24
18 months   ki1114097-CMIN             BRAZIL                         1       118     14     11      3
18 months   ki1114097-CMIN             BRAZIL                         2       118      7      3      4
18 months   ki1114097-CMIN             BRAZIL                         3       118     13      9      4
18 months   ki1114097-CMIN             BRAZIL                         4       118      9      8      1
18 months   ki1114097-CMIN             BRAZIL                         5       118      5      3      2
18 months   ki1114097-CMIN             BRAZIL                         6       118      7      3      4
18 months   ki1114097-CMIN             BRAZIL                         7       118      3      3      0
18 months   ki1114097-CMIN             BRAZIL                         8       118     14     12      2
18 months   ki1114097-CMIN             BRAZIL                         9       118      8      5      3
18 months   ki1114097-CMIN             BRAZIL                         10      118     16     11      5
18 months   ki1114097-CMIN             BRAZIL                         11      118     11      9      2
18 months   ki1114097-CMIN             BRAZIL                         12      118     11      6      5
18 months   ki1114097-CMIN             GUINEA-BISSAU                  1      1123     77     49     28
18 months   ki1114097-CMIN             GUINEA-BISSAU                  2      1123     76     45     31
18 months   ki1114097-CMIN             GUINEA-BISSAU                  3      1123     73     46     27
18 months   ki1114097-CMIN             GUINEA-BISSAU                  4      1123    274    170    104
18 months   ki1114097-CMIN             GUINEA-BISSAU                  5      1123    118     79     39
18 months   ki1114097-CMIN             GUINEA-BISSAU                  6      1123     87     64     23
18 months   ki1114097-CMIN             GUINEA-BISSAU                  7      1123     65     35     30
18 months   ki1114097-CMIN             GUINEA-BISSAU                  8      1123     56     37     19
18 months   ki1114097-CMIN             GUINEA-BISSAU                  9      1123    110     74     36
18 months   ki1114097-CMIN             GUINEA-BISSAU                  10     1123     58     32     26
18 months   ki1114097-CMIN             GUINEA-BISSAU                  11     1123     59     34     25
18 months   ki1114097-CMIN             GUINEA-BISSAU                  12     1123     70     42     28
18 months   ki1114097-CMIN             PERU                           1       656    132     74     58
18 months   ki1114097-CMIN             PERU                           2       656     45     32     13
18 months   ki1114097-CMIN             PERU                           3       656     55     34     21
18 months   ki1114097-CMIN             PERU                           4       656     69     43     26
18 months   ki1114097-CMIN             PERU                           5       656     55     30     25
18 months   ki1114097-CMIN             PERU                           6       656     45     28     17
18 months   ki1114097-CMIN             PERU                           7       656     49     33     16
18 months   ki1114097-CMIN             PERU                           8       656     50     33     17
18 months   ki1114097-CMIN             PERU                           9       656     33     23     10
18 months   ki1114097-CMIN             PERU                           10      656     28     13     15
18 months   ki1114097-CMIN             PERU                           11      656     67     46     21
18 months   ki1114097-CMIN             PERU                           12      656     28     20      8
18 months   ki1114097-CONTENT          PERU                           1       214      9      8      1
18 months   ki1114097-CONTENT          PERU                           2       214     16     14      2
18 months   ki1114097-CONTENT          PERU                           3       214     30     25      5
18 months   ki1114097-CONTENT          PERU                           4       214     12      5      7
18 months   ki1114097-CONTENT          PERU                           5       214     25     17      8
18 months   ki1114097-CONTENT          PERU                           6       214     14      9      5
18 months   ki1114097-CONTENT          PERU                           7       214     23     17      6
18 months   ki1114097-CONTENT          PERU                           8       214     18     11      7
18 months   ki1114097-CONTENT          PERU                           9       214     20     13      7
18 months   ki1114097-CONTENT          PERU                           10      214     24     17      7
18 months   ki1114097-CONTENT          PERU                           11      214     18     14      4
18 months   ki1114097-CONTENT          PERU                           12      214      5      4      1
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       1      7268    714    346    368
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       2      7268    547    269    278
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       3      7268    628    305    323
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       4      7268    563    292    271
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       5      7268    521    246    275
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       6      7268    611    288    323
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       7      7268    583    294    289
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       8      7268    629    329    300
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       9      7268    681    392    289
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       10     7268    507    269    238
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       11     7268    631    334    297
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       12     7268    653    334    319
18 months   ki1148112-LCNI-5           MALAWI                         1       676     40     23     17
18 months   ki1148112-LCNI-5           MALAWI                         2       676     93     49     44
18 months   ki1148112-LCNI-5           MALAWI                         3       676     88     39     49
18 months   ki1148112-LCNI-5           MALAWI                         4       676     91     28     63
18 months   ki1148112-LCNI-5           MALAWI                         5       676     81     33     48
18 months   ki1148112-LCNI-5           MALAWI                         6       676     77     31     46
18 months   ki1148112-LCNI-5           MALAWI                         7       676     58     22     36
18 months   ki1148112-LCNI-5           MALAWI                         8       676     39     23     16
18 months   ki1148112-LCNI-5           MALAWI                         9       676     19      6     13
18 months   ki1148112-LCNI-5           MALAWI                         10      676     28     16     12
18 months   ki1148112-LCNI-5           MALAWI                         11      676     39     20     19
18 months   ki1148112-LCNI-5           MALAWI                         12      676     23     11     12
24 months   ki0047075b-MAL-ED          BANGLADESH                     1       219     16      7      9
24 months   ki0047075b-MAL-ED          BANGLADESH                     2       219     18      3     15
24 months   ki0047075b-MAL-ED          BANGLADESH                     3       219     20      5     15
24 months   ki0047075b-MAL-ED          BANGLADESH                     4       219     20     11      9
24 months   ki0047075b-MAL-ED          BANGLADESH                     5       219     19      5     14
24 months   ki0047075b-MAL-ED          BANGLADESH                     6       219      6      2      4
24 months   ki0047075b-MAL-ED          BANGLADESH                     7       219     20      7     13
24 months   ki0047075b-MAL-ED          BANGLADESH                     8       219     21      9     12
24 months   ki0047075b-MAL-ED          BANGLADESH                     9       219     20      8     12
24 months   ki0047075b-MAL-ED          BANGLADESH                     10      219     21     11     10
24 months   ki0047075b-MAL-ED          BANGLADESH                     11      219     10      3      7
24 months   ki0047075b-MAL-ED          BANGLADESH                     12      219     28     12     16
24 months   ki0047075b-MAL-ED          BRAZIL                         1       176     13     11      2
24 months   ki0047075b-MAL-ED          BRAZIL                         2       176     17     12      5
24 months   ki0047075b-MAL-ED          BRAZIL                         3       176     16     14      2
24 months   ki0047075b-MAL-ED          BRAZIL                         4       176     10      9      1
24 months   ki0047075b-MAL-ED          BRAZIL                         5       176     17     13      4
24 months   ki0047075b-MAL-ED          BRAZIL                         6       176      6      5      1
24 months   ki0047075b-MAL-ED          BRAZIL                         7       176     14      8      6
24 months   ki0047075b-MAL-ED          BRAZIL                         8       176     13      9      4
24 months   ki0047075b-MAL-ED          BRAZIL                         9       176     26     18      8
24 months   ki0047075b-MAL-ED          BRAZIL                         10      176     15     13      2
24 months   ki0047075b-MAL-ED          BRAZIL                         11      176     15     15      0
24 months   ki0047075b-MAL-ED          BRAZIL                         12      176     14      9      5
24 months   ki0047075b-MAL-ED          INDIA                          1       228     19      4     15
24 months   ki0047075b-MAL-ED          INDIA                          2       228     18     11      7
24 months   ki0047075b-MAL-ED          INDIA                          3       228     18      7     11
24 months   ki0047075b-MAL-ED          INDIA                          4       228     15      6      9
24 months   ki0047075b-MAL-ED          INDIA                          5       228      8      3      5
24 months   ki0047075b-MAL-ED          INDIA                          6       228     18      9      9
24 months   ki0047075b-MAL-ED          INDIA                          7       228     23     11     12
24 months   ki0047075b-MAL-ED          INDIA                          8       228     21      5     16
24 months   ki0047075b-MAL-ED          INDIA                          9       228     18      6     12
24 months   ki0047075b-MAL-ED          INDIA                          10      228     27      9     18
24 months   ki0047075b-MAL-ED          INDIA                          11      228     24      8     16
24 months   ki0047075b-MAL-ED          INDIA                          12      228     19      7     12
24 months   ki0047075b-MAL-ED          NEPAL                          1       229     20     12      8
24 months   ki0047075b-MAL-ED          NEPAL                          2       229     17     11      6
24 months   ki0047075b-MAL-ED          NEPAL                          3       229     17      7     10
24 months   ki0047075b-MAL-ED          NEPAL                          4       229     20     15      5
24 months   ki0047075b-MAL-ED          NEPAL                          5       229     18     10      8
24 months   ki0047075b-MAL-ED          NEPAL                          6       229     21     18      3
24 months   ki0047075b-MAL-ED          NEPAL                          7       229     17     12      5
24 months   ki0047075b-MAL-ED          NEPAL                          8       229     24     17      7
24 months   ki0047075b-MAL-ED          NEPAL                          9       229     13     10      3
24 months   ki0047075b-MAL-ED          NEPAL                          10      229     21     15      6
24 months   ki0047075b-MAL-ED          NEPAL                          11      229     24     12     12
24 months   ki0047075b-MAL-ED          NEPAL                          12      229     17     10      7
24 months   ki0047075b-MAL-ED          PERU                           1       218     32     10     22
24 months   ki0047075b-MAL-ED          PERU                           2       218     19      4     15
24 months   ki0047075b-MAL-ED          PERU                           3       218     15      6      9
24 months   ki0047075b-MAL-ED          PERU                           4       218     15      3     12
24 months   ki0047075b-MAL-ED          PERU                           5       218     19      4     15
24 months   ki0047075b-MAL-ED          PERU                           6       218     14      4     10
24 months   ki0047075b-MAL-ED          PERU                           7       218     16      1     15
24 months   ki0047075b-MAL-ED          PERU                           8       218     13      5      8
24 months   ki0047075b-MAL-ED          PERU                           9       218     21      8     13
24 months   ki0047075b-MAL-ED          PERU                           10      218     14      6      8
24 months   ki0047075b-MAL-ED          PERU                           11      218     23      6     17
24 months   ki0047075b-MAL-ED          PERU                           12      218     17      4     13
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1       242     35     12     23
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2       242     22      5     17
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3       242     15      8      7
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4       242     12      6      6
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5       242     11      7      4
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6       242     15      8      7
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7       242     24     10     14
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8       242      8      4      4
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9       242     19      9     10
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10      242     25      6     19
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11      242     23      7     16
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12      242     33     11     22
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1       228     17      4     13
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2       228     24      2     22
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3       228     19      3     16
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4       228      8      1      7
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5       228     16      2     14
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6       228     20      1     19
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7       228     23      5     18
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8       228     12      2     10
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9       228     19      3     16
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10      228     19      1     18
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11      228     25      1     24
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12      228     26      2     24
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1       373     34      3     31
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2       373     16      1     15
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3       373     31      0     31
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4       373     44      8     36
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          5       373     36      1     35
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          6       373     37      2     35
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          7       373     39      4     35
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          8       373     18      2     16
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          9       373     21      0     21
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          10      373     29      3     26
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          11      373     43      4     39
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          12      373     25      0     25
24 months   ki1000108-IRC              INDIA                          1       410     36     10     26
24 months   ki1000108-IRC              INDIA                          2       410     27      9     18
24 months   ki1000108-IRC              INDIA                          3       410     29      8     21
24 months   ki1000108-IRC              INDIA                          4       410     22      5     17
24 months   ki1000108-IRC              INDIA                          5       410     21      4     17
24 months   ki1000108-IRC              INDIA                          6       410     37     16     21
24 months   ki1000108-IRC              INDIA                          7       410     36     14     22
24 months   ki1000108-IRC              INDIA                          8       410     45     22     23
24 months   ki1000108-IRC              INDIA                          9       410     27      9     18
24 months   ki1000108-IRC              INDIA                          10      410     37     19     18
24 months   ki1000108-IRC              INDIA                          11      410     41     17     24
24 months   ki1000108-IRC              INDIA                          12      410     52     14     38
24 months   ki1000109-EE               PAKISTAN                       1       338     85      6     79
24 months   ki1000109-EE               PAKISTAN                       2       338     55      6     49
24 months   ki1000109-EE               PAKISTAN                       3       338     38      3     35
24 months   ki1000109-EE               PAKISTAN                       4       338     16      1     15
24 months   ki1000109-EE               PAKISTAN                       5       338      0      0      0
24 months   ki1000109-EE               PAKISTAN                       6       338      0      0      0
24 months   ki1000109-EE               PAKISTAN                       7       338      0      0      0
24 months   ki1000109-EE               PAKISTAN                       8       338      0      0      0
24 months   ki1000109-EE               PAKISTAN                       9       338      0      0      0
24 months   ki1000109-EE               PAKISTAN                       10      338      4      1      3
24 months   ki1000109-EE               PAKISTAN                       11      338     60      6     54
24 months   ki1000109-EE               PAKISTAN                       12      338     80      4     76
24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1         9      1      0      1
24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2         9      0      0      0
24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3         9      1      0      1
24 months   ki1000304b-SAS-FoodSuppl   INDIA                          4         9      1      0      1
24 months   ki1000304b-SAS-FoodSuppl   INDIA                          5         9      1      0      1
24 months   ki1000304b-SAS-FoodSuppl   INDIA                          6         9      1      0      1
24 months   ki1000304b-SAS-FoodSuppl   INDIA                          7         9      1      1      0
24 months   ki1000304b-SAS-FoodSuppl   INDIA                          8         9      0      0      0
24 months   ki1000304b-SAS-FoodSuppl   INDIA                          9         9      0      0      0
24 months   ki1000304b-SAS-FoodSuppl   INDIA                          10        9      1      0      1
24 months   ki1000304b-SAS-FoodSuppl   INDIA                          11        9      1      0      1
24 months   ki1000304b-SAS-FoodSuppl   INDIA                          12        9      1      0      1
24 months   ki1017093-NIH-Birth        BANGLADESH                     1       470     45     11     34
24 months   ki1017093-NIH-Birth        BANGLADESH                     2       470     36      7     29
24 months   ki1017093-NIH-Birth        BANGLADESH                     3       470     44     14     30
24 months   ki1017093-NIH-Birth        BANGLADESH                     4       470     38      6     32
24 months   ki1017093-NIH-Birth        BANGLADESH                     5       470     35      9     26
24 months   ki1017093-NIH-Birth        BANGLADESH                     6       470     35      6     29
24 months   ki1017093-NIH-Birth        BANGLADESH                     7       470     42     11     31
24 months   ki1017093-NIH-Birth        BANGLADESH                     8       470     31      7     24
24 months   ki1017093-NIH-Birth        BANGLADESH                     9       470     24      6     18
24 months   ki1017093-NIH-Birth        BANGLADESH                     10      470     46     13     33
24 months   ki1017093-NIH-Birth        BANGLADESH                     11      470     46     10     36
24 months   ki1017093-NIH-Birth        BANGLADESH                     12      470     48     15     33
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1       960     65     33     32
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2       960     77     57     20
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3       960     75     43     32
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4       960     76     40     36
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5       960     73     44     29
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6       960     65     32     33
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7       960     84     47     37
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8       960     99     58     41
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9       960     90     49     41
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10      960    101     53     48
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11      960     81     45     36
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12      960     74     43     31
24 months   ki1113344-GMS-Nepal        NEPAL                          1       568      0      0      0
24 months   ki1113344-GMS-Nepal        NEPAL                          2       568      0      0      0
24 months   ki1113344-GMS-Nepal        NEPAL                          3       568      0      0      0
24 months   ki1113344-GMS-Nepal        NEPAL                          4       568      0      0      0
24 months   ki1113344-GMS-Nepal        NEPAL                          5       568      0      0      0
24 months   ki1113344-GMS-Nepal        NEPAL                          6       568    108     33     75
24 months   ki1113344-GMS-Nepal        NEPAL                          7       568    219     63    156
24 months   ki1113344-GMS-Nepal        NEPAL                          8       568    223     74    149
24 months   ki1113344-GMS-Nepal        NEPAL                          9       568     16      5     11
24 months   ki1113344-GMS-Nepal        NEPAL                          10      568      2      1      1
24 months   ki1113344-GMS-Nepal        NEPAL                          11      568      0      0      0
24 months   ki1113344-GMS-Nepal        NEPAL                          12      568      0      0      0
24 months   ki1114097-CMIN             BANGLADESH                     1       245     27      3     24
24 months   ki1114097-CMIN             BANGLADESH                     2       245     24      5     19
24 months   ki1114097-CMIN             BANGLADESH                     3       245     18      2     16
24 months   ki1114097-CMIN             BANGLADESH                     4       245     22      3     19
24 months   ki1114097-CMIN             BANGLADESH                     5       245     16      2     14
24 months   ki1114097-CMIN             BANGLADESH                     6       245      9      1      8
24 months   ki1114097-CMIN             BANGLADESH                     7       245     16      2     14
24 months   ki1114097-CMIN             BANGLADESH                     8       245     19      2     17
24 months   ki1114097-CMIN             BANGLADESH                     9       245     20      1     19
24 months   ki1114097-CMIN             BANGLADESH                     10      245     24      5     19
24 months   ki1114097-CMIN             BANGLADESH                     11      245     25      4     21
24 months   ki1114097-CMIN             BANGLADESH                     12      245     25      1     24
24 months   ki1114097-CMIN             BRAZIL                         1       119     14      9      5
24 months   ki1114097-CMIN             BRAZIL                         2       119      7      3      4
24 months   ki1114097-CMIN             BRAZIL                         3       119     13      9      4
24 months   ki1114097-CMIN             BRAZIL                         4       119      9      8      1
24 months   ki1114097-CMIN             BRAZIL                         5       119      5      3      2
24 months   ki1114097-CMIN             BRAZIL                         6       119      7      3      4
24 months   ki1114097-CMIN             BRAZIL                         7       119      4      3      1
24 months   ki1114097-CMIN             BRAZIL                         8       119     14     11      3
24 months   ki1114097-CMIN             BRAZIL                         9       119      8      5      3
24 months   ki1114097-CMIN             BRAZIL                         10      119     16     10      6
24 months   ki1114097-CMIN             BRAZIL                         11      119     11      9      2
24 months   ki1114097-CMIN             BRAZIL                         12      119     11      6      5
24 months   ki1114097-CMIN             GUINEA-BISSAU                  1      1067     74     42     32
24 months   ki1114097-CMIN             GUINEA-BISSAU                  2      1067     62     38     24
24 months   ki1114097-CMIN             GUINEA-BISSAU                  3      1067     67     35     32
24 months   ki1114097-CMIN             GUINEA-BISSAU                  4      1067    281    133    148
24 months   ki1114097-CMIN             GUINEA-BISSAU                  5      1067    108     64     44
24 months   ki1114097-CMIN             GUINEA-BISSAU                  6      1067     87     53     34
24 months   ki1114097-CMIN             GUINEA-BISSAU                  7      1067     65     32     33
24 months   ki1114097-CMIN             GUINEA-BISSAU                  8      1067     52     30     22
24 months   ki1114097-CMIN             GUINEA-BISSAU                  9      1067    109     62     47
24 months   ki1114097-CMIN             GUINEA-BISSAU                  10     1067     53     28     25
24 months   ki1114097-CMIN             GUINEA-BISSAU                  11     1067     56     29     27
24 months   ki1114097-CMIN             GUINEA-BISSAU                  12     1067     53     28     25
24 months   ki1114097-CMIN             PERU                           1       571    196     93    103
24 months   ki1114097-CMIN             PERU                           2       571     38     25     13
24 months   ki1114097-CMIN             PERU                           3       571     41     25     16
24 months   ki1114097-CMIN             PERU                           4       571     46     29     17
24 months   ki1114097-CMIN             PERU                           5       571     32     14     18
24 months   ki1114097-CMIN             PERU                           6       571     24     13     11
24 months   ki1114097-CMIN             PERU                           7       571     28     18     10
24 months   ki1114097-CMIN             PERU                           8       571     37     26     11
24 months   ki1114097-CMIN             PERU                           9       571     23     14      9
24 months   ki1114097-CMIN             PERU                           10      571     24      7     17
24 months   ki1114097-CMIN             PERU                           11      571     61     35     26
24 months   ki1114097-CMIN             PERU                           12      571     21     12      9
24 months   ki1114097-CONTENT          PERU                           1       197      8      7      1
24 months   ki1114097-CONTENT          PERU                           2       197     15     13      2
24 months   ki1114097-CONTENT          PERU                           3       197     27     23      4
24 months   ki1114097-CONTENT          PERU                           4       197     12      5      7
24 months   ki1114097-CONTENT          PERU                           5       197     25     17      8
24 months   ki1114097-CONTENT          PERU                           6       197     13      9      4
24 months   ki1114097-CONTENT          PERU                           7       197     20     15      5
24 months   ki1114097-CONTENT          PERU                           8       197     18     11      7
24 months   ki1114097-CONTENT          PERU                           9       197     19     11      8
24 months   ki1114097-CONTENT          PERU                           10      197     19     12      7
24 months   ki1114097-CONTENT          PERU                           11      197     18     14      4
24 months   ki1114097-CONTENT          PERU                           12      197      3      3      0
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1      1874    222     55    167
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2      1874    206     55    151
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3      1874    170     52    118
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4      1874    160     49    111
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5      1874    143     36    107
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6      1874    159     49    110
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7      1874    126     33     93
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8      1874    135     41     94
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9      1874    120     45     75
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10     1874    102     26     76
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11     1874    142     38    104
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12     1874    189     52    137
24 months   ki1148112-LCNI-5           MALAWI                         1       726     50     20     30
24 months   ki1148112-LCNI-5           MALAWI                         2       726    102     39     63
24 months   ki1148112-LCNI-5           MALAWI                         3       726     84     29     55
24 months   ki1148112-LCNI-5           MALAWI                         4       726     93     23     70
24 months   ki1148112-LCNI-5           MALAWI                         5       726     86     28     58
24 months   ki1148112-LCNI-5           MALAWI                         6       726     81     24     57
24 months   ki1148112-LCNI-5           MALAWI                         7       726     61     22     39
24 months   ki1148112-LCNI-5           MALAWI                         8       726     42     17     25
24 months   ki1148112-LCNI-5           MALAWI                         9       726     25     10     15
24 months   ki1148112-LCNI-5           MALAWI                         10      726     33     14     19
24 months   ki1148112-LCNI-5           MALAWI                         11      726     40     18     22
24 months   ki1148112-LCNI-5           MALAWI                         12      726     29      8     21


The following strata were considered:

* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 12 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 12 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 12 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 12 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 12 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 12 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 12 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 12 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 12 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 12 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 12 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 12 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 12 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 18 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 18 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 18 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 18 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 18 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 18 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 18 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 18 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 18 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 18 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 18 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 18 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 18 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 18 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 3 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 3 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 3 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 3 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 3 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 3 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 3 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 3 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 3 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 3 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 3 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 3 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 3 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 3 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 3 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 3 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 3 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 3 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 12 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 12 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 12 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 12 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 12 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 12 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 12 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 18 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 18 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 18 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 18 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 18 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 18 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 18 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 18 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/e24dc896-418a-4bd8-8521-fb4069f4634a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->


```
## Warning: Removed 30 rows containing missing values (geom_errorbar).
```

![](/tmp/e24dc896-418a-4bd8-8521-fb4069f4634a/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/e24dc896-418a-4bd8-8521-fb4069f4634a/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/e24dc896-418a-4bd8-8521-fb4069f4634a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki1000108-IRC              INDIA                          1                    NA                0.3055556   0.1548980   0.4562131
3 months    ki1000108-IRC              INDIA                          2                    NA                0.4074074   0.2218454   0.5929694
3 months    ki1000108-IRC              INDIA                          3                    NA                0.3793103   0.2024974   0.5561233
3 months    ki1000108-IRC              INDIA                          4                    NA                0.3636364   0.1623783   0.5648945
3 months    ki1000108-IRC              INDIA                          5                    NA                0.3333333   0.1314677   0.5351990
3 months    ki1000108-IRC              INDIA                          6                    NA                0.2702703   0.1269995   0.4135411
3 months    ki1000108-IRC              INDIA                          7                    NA                0.3055556   0.1548980   0.4562131
3 months    ki1000108-IRC              INDIA                          8                    NA                0.1555556   0.0495325   0.2615786
3 months    ki1000108-IRC              INDIA                          9                    NA                0.3333333   0.1553045   0.5113621
3 months    ki1000108-IRC              INDIA                          10                   NA                0.2432432   0.1048305   0.3816560
3 months    ki1000108-IRC              INDIA                          11                   NA                0.3170732   0.1744621   0.4596843
3 months    ki1000108-IRC              INDIA                          12                   NA                0.4423077   0.3071514   0.5774640
3 months    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.3529412   0.2392669   0.4666154
3 months    ki1017093-NIH-Birth        BANGLADESH                     2                    NA                0.2622951   0.1518198   0.3727704
3 months    ki1017093-NIH-Birth        BANGLADESH                     3                    NA                0.1147541   0.0347072   0.1948010
3 months    ki1017093-NIH-Birth        BANGLADESH                     4                    NA                0.2264151   0.1136532   0.3391770
3 months    ki1017093-NIH-Birth        BANGLADESH                     5                    NA                0.1914894   0.0789097   0.3040690
3 months    ki1017093-NIH-Birth        BANGLADESH                     6                    NA                0.2127660   0.0956684   0.3298635
3 months    ki1017093-NIH-Birth        BANGLADESH                     7                    NA                0.1875000   0.0769941   0.2980059
3 months    ki1017093-NIH-Birth        BANGLADESH                     8                    NA                0.1627907   0.0523597   0.2732217
3 months    ki1017093-NIH-Birth        BANGLADESH                     9                    NA                0.2058824   0.0698613   0.3419034
3 months    ki1017093-NIH-Birth        BANGLADESH                     10                   NA                0.2786885   0.1660856   0.3912914
3 months    ki1017093-NIH-Birth        BANGLADESH                     11                   NA                0.2500000   0.1322143   0.3677857
3 months    ki1017093-NIH-Birth        BANGLADESH                     12                   NA                0.1666667   0.0671879   0.2661454
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1049383   0.0577347   0.1521418
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.1061453   0.0610121   0.1512784
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                0.0935673   0.0499086   0.1372259
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                0.1141304   0.0681773   0.1600836
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    NA                0.1105263   0.0659339   0.1551188
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    NA                0.0975610   0.0521392   0.1429827
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    NA                0.0913462   0.0521854   0.1305070
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    NA                0.0924370   0.0556316   0.1292424
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    NA                0.1105991   0.0688609   0.1523373
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   NA                0.0963855   0.0597218   0.1330493
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   NA                0.1100917   0.0685332   0.1516503
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   NA                0.0985916   0.0585483   0.1386348
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.2166911   0.1948424   0.2385398
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.2339015   0.2083692   0.2594338
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       3                    NA                0.2165821   0.1930986   0.2400656
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       4                    NA                0.2164545   0.1911926   0.2417164
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       5                    NA                0.2482826   0.2217563   0.2748089
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       6                    NA                0.2304348   0.2060953   0.2547743
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       7                    NA                0.2392223   0.2149114   0.2635332
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       8                    NA                0.2231205   0.1999185   0.2463224
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       9                    NA                0.1608761   0.1410846   0.1806676
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       10                   NA                0.1761905   0.1531456   0.1992353
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       11                   NA                0.1796875   0.1575165   0.2018585
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       12                   NA                0.1848341   0.1634515   0.2062167
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.5882353   0.4225816   0.7538890
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                    NA                0.4000000   0.1517435   0.6482565
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                    NA                0.3870968   0.2153987   0.5587949
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4                    NA                0.3636364   0.2213050   0.5059677
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          5                    NA                0.4857143   0.3199087   0.6515199
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          6                    NA                0.5833333   0.4220676   0.7445991
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          7                    NA                0.5897436   0.4351585   0.7443287
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          8                    NA                0.5294118   0.2918189   0.7670047
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          9                    NA                0.4761905   0.2622919   0.6900891
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          10                   NA                0.5517241   0.3704753   0.7329730
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          11                   NA                0.5121951   0.3589843   0.6654059
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          12                   NA                0.6800000   0.4968951   0.8631049
6 months    ki1000108-IRC              INDIA                          1                    NA                0.4285714   0.2644219   0.5927209
6 months    ki1000108-IRC              INDIA                          2                    NA                0.4814815   0.2927819   0.6701811
6 months    ki1000108-IRC              INDIA                          3                    NA                0.4482759   0.2670519   0.6294998
6 months    ki1000108-IRC              INDIA                          4                    NA                0.4545455   0.2462223   0.6628686
6 months    ki1000108-IRC              INDIA                          5                    NA                0.5000000   0.2806003   0.7193997
6 months    ki1000108-IRC              INDIA                          6                    NA                0.3783784   0.2219173   0.5348395
6 months    ki1000108-IRC              INDIA                          7                    NA                0.4444444   0.2819262   0.6069627
6 months    ki1000108-IRC              INDIA                          8                    NA                0.2888889   0.1562995   0.4214783
6 months    ki1000108-IRC              INDIA                          9                    NA                0.4444444   0.2567845   0.6321044
6 months    ki1000108-IRC              INDIA                          10                   NA                0.3513514   0.1973390   0.5053637
6 months    ki1000108-IRC              INDIA                          11                   NA                0.3658537   0.2182363   0.5134710
6 months    ki1000108-IRC              INDIA                          12                   NA                0.5576923   0.4225352   0.6928494
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.5090909   0.3768520   0.6413299
6 months    ki1017093-NIH-Birth        BANGLADESH                     2                    NA                0.3636364   0.2213699   0.5059028
6 months    ki1017093-NIH-Birth        BANGLADESH                     3                    NA                0.2452830   0.1293438   0.3612222
6 months    ki1017093-NIH-Birth        BANGLADESH                     4                    NA                0.3125000   0.1812548   0.4437452
6 months    ki1017093-NIH-Birth        BANGLADESH                     5                    NA                0.2500000   0.1219390   0.3780610
6 months    ki1017093-NIH-Birth        BANGLADESH                     6                    NA                0.4523810   0.3017170   0.6030449
6 months    ki1017093-NIH-Birth        BANGLADESH                     7                    NA                0.5116279   0.3620867   0.6611691
6 months    ki1017093-NIH-Birth        BANGLADESH                     8                    NA                0.3250000   0.1797199   0.4702801
6 months    ki1017093-NIH-Birth        BANGLADESH                     9                    NA                0.3333333   0.1644932   0.5021735
6 months    ki1017093-NIH-Birth        BANGLADESH                     10                   NA                0.3859649   0.2594693   0.5124606
6 months    ki1017093-NIH-Birth        BANGLADESH                     11                   NA                0.4423077   0.3071937   0.5774217
6 months    ki1017093-NIH-Birth        BANGLADESH                     12                   NA                0.2093023   0.0875995   0.3310051
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1513158   0.0943337   0.2082979
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.1686747   0.1116974   0.2256520
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                0.1840491   0.1245445   0.2435537
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                0.2228916   0.1595660   0.2862171
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    NA                0.2126437   0.1518326   0.2734547
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    NA                0.1987179   0.1360862   0.2613497
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    NA                0.2222222   0.1643015   0.2801430
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    NA                0.2181818   0.1635939   0.2727697
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    NA                0.2135922   0.1576128   0.2695716
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   NA                0.2070485   0.1543265   0.2597704
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   NA                0.2037915   0.1494276   0.2581554
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   NA                0.1794872   0.1256122   0.2333622
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.2866667   0.2571216   0.3162118
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.3279743   0.2910774   0.3648712
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3                    NA                0.2786458   0.2469361   0.3103555
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       4                    NA                0.2852897   0.2511726   0.3194069
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       5                    NA                0.3376437   0.3025085   0.3727789
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       6                    NA                0.3735849   0.3399559   0.4072139
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       7                    NA                0.3302013   0.2964294   0.3639732
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       8                    NA                0.3194103   0.2873788   0.3514418
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       9                    NA                0.2406015   0.2109426   0.2702604
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       10                   NA                0.2734255   0.2391849   0.3076661
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       11                   NA                0.2454068   0.2148510   0.2759627
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       12                   NA                0.2482517   0.2193442   0.2771593
12 months   ki0047075b-MAL-ED          PERU                           1                    NA                0.5277778   0.3643969   0.6911587
12 months   ki0047075b-MAL-ED          PERU                           2                    NA                0.5714286   0.3593793   0.7834778
12 months   ki0047075b-MAL-ED          PERU                           3                    NA                0.3809524   0.1728670   0.5890378
12 months   ki0047075b-MAL-ED          PERU                           4                    NA                0.5000000   0.2804624   0.7195376
12 months   ki0047075b-MAL-ED          PERU                           5                    NA                0.5217391   0.3172129   0.7262654
12 months   ki0047075b-MAL-ED          PERU                           6                    NA                0.4444444   0.2144644   0.6744244
12 months   ki0047075b-MAL-ED          PERU                           7                    NA                0.5909091   0.3850772   0.7967410
12 months   ki0047075b-MAL-ED          PERU                           8                    NA                0.3750000   0.1373436   0.6126564
12 months   ki0047075b-MAL-ED          PERU                           9                    NA                0.5217391   0.3172129   0.7262654
12 months   ki0047075b-MAL-ED          PERU                           10                   NA                0.3888889   0.1632622   0.6145156
12 months   ki0047075b-MAL-ED          PERU                           11                   NA                0.6875000   0.5266059   0.8483941
12 months   ki0047075b-MAL-ED          PERU                           12                   NA                0.5500000   0.3315629   0.7684371
12 months   ki1000108-IRC              INDIA                          1                    NA                0.5555556   0.3930373   0.7180738
12 months   ki1000108-IRC              INDIA                          2                    NA                0.5555556   0.3678956   0.7432155
12 months   ki1000108-IRC              INDIA                          3                    NA                0.5172414   0.3351482   0.6993345
12 months   ki1000108-IRC              INDIA                          4                    NA                0.5909091   0.3852064   0.7966117
12 months   ki1000108-IRC              INDIA                          5                    NA                0.7000000   0.4989169   0.9010831
12 months   ki1000108-IRC              INDIA                          6                    NA                0.4324324   0.2726062   0.5922586
12 months   ki1000108-IRC              INDIA                          7                    NA                0.4722222   0.3089439   0.6355005
12 months   ki1000108-IRC              INDIA                          8                    NA                0.4000000   0.2566887   0.5433113
12 months   ki1000108-IRC              INDIA                          9                    NA                0.5185185   0.3298189   0.7072181
12 months   ki1000108-IRC              INDIA                          10                   NA                0.4324324   0.2726062   0.5922586
12 months   ki1000108-IRC              INDIA                          11                   NA                0.4634146   0.3105900   0.6162393
12 months   ki1000108-IRC              INDIA                          12                   NA                0.5882353   0.4529982   0.7234724
12 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.6538462   0.5244204   0.7832719
12 months   ki1017093-NIH-Birth        BANGLADESH                     2                    NA                0.5400000   0.4017260   0.6782740
12 months   ki1017093-NIH-Birth        BANGLADESH                     3                    NA                0.4509804   0.3142901   0.5876706
12 months   ki1017093-NIH-Birth        BANGLADESH                     4                    NA                0.4000000   0.2567320   0.5432680
12 months   ki1017093-NIH-Birth        BANGLADESH                     5                    NA                0.4047619   0.2561785   0.5533453
12 months   ki1017093-NIH-Birth        BANGLADESH                     6                    NA                0.5250000   0.3701018   0.6798982
12 months   ki1017093-NIH-Birth        BANGLADESH                     7                    NA                0.6000000   0.4567320   0.7432680
12 months   ki1017093-NIH-Birth        BANGLADESH                     8                    NA                0.5405405   0.3798143   0.7012668
12 months   ki1017093-NIH-Birth        BANGLADESH                     9                    NA                0.4482759   0.2671066   0.6294451
12 months   ki1017093-NIH-Birth        BANGLADESH                     10                   NA                0.5283019   0.3937824   0.6628213
12 months   ki1017093-NIH-Birth        BANGLADESH                     11                   NA                0.5744681   0.4329865   0.7159497
12 months   ki1017093-NIH-Birth        BANGLADESH                     12                   NA                0.4200000   0.2830685   0.5569315
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2706767   0.1951472   0.3462062
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.2945205   0.2205633   0.3684777
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                0.3146853   0.2385525   0.3908182
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                0.3857143   0.3050631   0.4663655
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    NA                0.3400000   0.2641732   0.4158268
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    NA                0.3478261   0.2683420   0.4273102
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    NA                0.3513514   0.2825421   0.4201606
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    NA                0.3028846   0.2404226   0.3653467
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    NA                0.3097826   0.2429529   0.3766123
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   NA                0.2679426   0.2078837   0.3280015
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   NA                0.3368984   0.2691380   0.4046587
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   NA                0.3005780   0.2322369   0.3689192
12 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                0.2386364   0.1495407   0.3277321
12 months   ki1114097-CMIN             GUINEA-BISSAU                  2                    NA                0.3544304   0.2489049   0.4599558
12 months   ki1114097-CMIN             GUINEA-BISSAU                  3                    NA                0.2567568   0.1571831   0.3563304
12 months   ki1114097-CMIN             GUINEA-BISSAU                  4                    NA                0.2334802   0.1784238   0.2885365
12 months   ki1114097-CMIN             GUINEA-BISSAU                  5                    NA                0.2727273   0.1967192   0.3487353
12 months   ki1114097-CMIN             GUINEA-BISSAU                  6                    NA                0.2020202   0.1228960   0.2811444
12 months   ki1114097-CMIN             GUINEA-BISSAU                  7                    NA                0.2500000   0.1550731   0.3449269
12 months   ki1114097-CMIN             GUINEA-BISSAU                  8                    NA                0.1698113   0.0686842   0.2709384
12 months   ki1114097-CMIN             GUINEA-BISSAU                  9                    NA                0.2903226   0.2103955   0.3702496
12 months   ki1114097-CMIN             GUINEA-BISSAU                  10                   NA                0.1857143   0.0945771   0.2768515
12 months   ki1114097-CMIN             GUINEA-BISSAU                  11                   NA                0.2500000   0.1499382   0.3500618
12 months   ki1114097-CMIN             GUINEA-BISSAU                  12                   NA                0.2222222   0.1261519   0.3182925
12 months   ki1114097-CMIN             PERU                           1                    NA                0.2897196   0.2037072   0.3757320
12 months   ki1114097-CMIN             PERU                           2                    NA                0.1929825   0.0904616   0.2955033
12 months   ki1114097-CMIN             PERU                           3                    NA                0.2769231   0.1680641   0.3857820
12 months   ki1114097-CMIN             PERU                           4                    NA                0.2763158   0.1757108   0.3769208
12 months   ki1114097-CMIN             PERU                           5                    NA                0.3125000   0.1988628   0.4261372
12 months   ki1114097-CMIN             PERU                           6                    NA                0.1929825   0.0904616   0.2955033
12 months   ki1114097-CMIN             PERU                           7                    NA                0.3207547   0.1950039   0.4465056
12 months   ki1114097-CMIN             PERU                           8                    NA                0.2545455   0.1393432   0.3697477
12 months   ki1114097-CMIN             PERU                           9                    NA                0.1282051   0.0232082   0.2332021
12 months   ki1114097-CMIN             PERU                           10                   NA                0.4642857   0.2794315   0.6491399
12 months   ki1114097-CMIN             PERU                           11                   NA                0.2000000   0.1094104   0.2905896
12 months   ki1114097-CMIN             PERU                           12                   NA                0.1739130   0.0643033   0.2835228
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.3641791   0.3344274   0.3939308
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.3890306   0.3549024   0.4231588
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                    NA                0.4042056   0.3713294   0.4370818
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                    NA                0.3591455   0.3247863   0.3935048
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                    NA                0.4260028   0.3899564   0.4620491
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                    NA                0.4209877   0.3869856   0.4549897
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                    NA                0.4029126   0.3694215   0.4364038
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                    NA                0.4013841   0.3687543   0.4340139
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                    NA                0.3308824   0.3009915   0.3607733
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       10                   NA                0.3713528   0.3368638   0.4058418
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       11                   NA                0.3337196   0.3022578   0.3651814
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       12                   NA                0.3408393   0.3111163   0.3705623
12 months   ki1148112-LCNI-5           MALAWI                         1                    NA                0.4181818   0.2877422   0.5486215
12 months   ki1148112-LCNI-5           MALAWI                         2                    NA                0.4561404   0.3646543   0.5476264
12 months   ki1148112-LCNI-5           MALAWI                         3                    NA                0.4456522   0.3440250   0.5472794
12 months   ki1148112-LCNI-5           MALAWI                         4                    NA                0.5607477   0.4666533   0.6548420
12 months   ki1148112-LCNI-5           MALAWI                         5                    NA                0.4622642   0.3672931   0.5572352
12 months   ki1148112-LCNI-5           MALAWI                         6                    NA                0.4597701   0.3549813   0.5645589
12 months   ki1148112-LCNI-5           MALAWI                         7                    NA                0.5633803   0.4479451   0.6788154
12 months   ki1148112-LCNI-5           MALAWI                         8                    NA                0.3720930   0.2275311   0.5166549
12 months   ki1148112-LCNI-5           MALAWI                         9                    NA                0.4814815   0.2928975   0.6700654
12 months   ki1148112-LCNI-5           MALAWI                         10                   NA                0.4411765   0.2741756   0.6081773
12 months   ki1148112-LCNI-5           MALAWI                         11                   NA                0.4666667   0.3208151   0.6125183
12 months   ki1148112-LCNI-5           MALAWI                         12                   NA                0.5000000   0.3318313   0.6681687
18 months   ki1000108-IRC              INDIA                          1                    NA                0.5555556   0.3930378   0.7180733
18 months   ki1000108-IRC              INDIA                          2                    NA                0.5925926   0.4070300   0.7781552
18 months   ki1000108-IRC              INDIA                          3                    NA                0.6206897   0.4438762   0.7975031
18 months   ki1000108-IRC              INDIA                          4                    NA                0.6818182   0.4869503   0.8766861
18 months   ki1000108-IRC              INDIA                          5                    NA                0.7619048   0.5795170   0.9442925
18 months   ki1000108-IRC              INDIA                          6                    NA                0.4594595   0.2986852   0.6202337
18 months   ki1000108-IRC              INDIA                          7                    NA                0.5277778   0.3645000   0.6910556
18 months   ki1000108-IRC              INDIA                          8                    NA                0.4444444   0.2990841   0.5898048
18 months   ki1000108-IRC              INDIA                          9                    NA                0.6296296   0.4472575   0.8120018
18 months   ki1000108-IRC              INDIA                          10                   NA                0.4324324   0.2726067   0.5922582
18 months   ki1000108-IRC              INDIA                          11                   NA                0.5365854   0.3837612   0.6894095
18 months   ki1000108-IRC              INDIA                          12                   NA                0.6666667   0.5371313   0.7962020
18 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.6808511   0.5474500   0.8142521
18 months   ki1017093-NIH-Birth        BANGLADESH                     2                    NA                0.7142857   0.5775246   0.8510469
18 months   ki1017093-NIH-Birth        BANGLADESH                     3                    NA                0.5869565   0.4445246   0.7293885
18 months   ki1017093-NIH-Birth        BANGLADESH                     4                    NA                0.6500000   0.5020394   0.7979606
18 months   ki1017093-NIH-Birth        BANGLADESH                     5                    NA                0.5405405   0.3798011   0.7012799
18 months   ki1017093-NIH-Birth        BANGLADESH                     6                    NA                0.6944444   0.5438191   0.8450698
18 months   ki1017093-NIH-Birth        BANGLADESH                     7                    NA                0.6511628   0.5085668   0.7937588
18 months   ki1017093-NIH-Birth        BANGLADESH                     8                    NA                0.7272727   0.5751685   0.8793770
18 months   ki1017093-NIH-Birth        BANGLADESH                     9                    NA                0.5555556   0.3679369   0.7431742
18 months   ki1017093-NIH-Birth        BANGLADESH                     10                   NA                0.6122449   0.4756832   0.7488065
18 months   ki1017093-NIH-Birth        BANGLADESH                     11                   NA                0.7500000   0.6273788   0.8726212
18 months   ki1017093-NIH-Birth        BANGLADESH                     12                   NA                0.6122449   0.4756832   0.7488065
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.4574468   0.3567015   0.5581922
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.3457944   0.2556432   0.4359456
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                0.4324324   0.3402382   0.5246267
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                0.4649123   0.3733233   0.5565012
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    NA                0.3879310   0.2992265   0.4766356
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    NA                0.4285714   0.3338833   0.5232595
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    NA                0.4100719   0.3282783   0.4918656
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    NA                0.3486842   0.2728984   0.4244700
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    NA                0.4153846   0.3306451   0.5001242
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   NA                0.3758389   0.2980436   0.4536343
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   NA                0.3983740   0.3118266   0.4849213
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   NA                0.4210526   0.3303891   0.5117162
18 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                0.3636364   0.2561428   0.4711299
18 months   ki1114097-CMIN             GUINEA-BISSAU                  2                    NA                0.4078947   0.2973576   0.5184319
18 months   ki1114097-CMIN             GUINEA-BISSAU                  3                    NA                0.3698630   0.2590686   0.4806575
18 months   ki1114097-CMIN             GUINEA-BISSAU                  4                    NA                0.3795620   0.3220767   0.4370473
18 months   ki1114097-CMIN             GUINEA-BISSAU                  5                    NA                0.3305085   0.2455974   0.4154196
18 months   ki1114097-CMIN             GUINEA-BISSAU                  6                    NA                0.2643678   0.1716600   0.3570757
18 months   ki1114097-CMIN             GUINEA-BISSAU                  7                    NA                0.4615385   0.3402928   0.5827841
18 months   ki1114097-CMIN             GUINEA-BISSAU                  8                    NA                0.3392857   0.2152242   0.4633473
18 months   ki1114097-CMIN             GUINEA-BISSAU                  9                    NA                0.3272727   0.2395485   0.4149970
18 months   ki1114097-CMIN             GUINEA-BISSAU                  10                   NA                0.4482759   0.3202313   0.5763204
18 months   ki1114097-CMIN             GUINEA-BISSAU                  11                   NA                0.4237288   0.2975830   0.5498747
18 months   ki1114097-CMIN             GUINEA-BISSAU                  12                   NA                0.4000000   0.2851851   0.5148149
18 months   ki1114097-CMIN             PERU                           1                    NA                0.4393939   0.3546618   0.5241261
18 months   ki1114097-CMIN             PERU                           2                    NA                0.2888889   0.1563610   0.4214168
18 months   ki1114097-CMIN             PERU                           3                    NA                0.3818182   0.2533237   0.5103127
18 months   ki1114097-CMIN             PERU                           4                    NA                0.3768116   0.2623851   0.4912381
18 months   ki1114097-CMIN             PERU                           5                    NA                0.4545455   0.3228515   0.5862394
18 months   ki1114097-CMIN             PERU                           6                    NA                0.3777778   0.2360144   0.5195412
18 months   ki1114097-CMIN             PERU                           7                    NA                0.3265306   0.1951285   0.4579327
18 months   ki1114097-CMIN             PERU                           8                    NA                0.3400000   0.2085968   0.4714032
18 months   ki1114097-CMIN             PERU                           9                    NA                0.3030303   0.1461124   0.4599482
18 months   ki1114097-CMIN             PERU                           10                   NA                0.5357143   0.3508472   0.7205814
18 months   ki1114097-CMIN             PERU                           11                   NA                0.3134328   0.2022710   0.4245947
18 months   ki1114097-CMIN             PERU                           12                   NA                0.2857143   0.1182577   0.4531709
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.5154062   0.4787461   0.5520662
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.5082267   0.4663285   0.5501249
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                    NA                0.5143312   0.4752390   0.5534234
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                    NA                0.4813499   0.4400745   0.5226253
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                    NA                0.5278311   0.4849609   0.5707013
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                    NA                0.5286416   0.4890581   0.5682250
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                    NA                0.4957118   0.4551238   0.5362998
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                    NA                0.4769475   0.4379120   0.5159831
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                    NA                0.4243759   0.3872524   0.4614994
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       10                   NA                0.4694280   0.4259839   0.5128721
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       11                   NA                0.4706815   0.4317334   0.5096295
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       12                   NA                0.4885145   0.4501724   0.5268567
18 months   ki1148112-LCNI-5           MALAWI                         1                    NA                0.4250000   0.2716909   0.5783091
18 months   ki1148112-LCNI-5           MALAWI                         2                    NA                0.4731183   0.3715707   0.5746658
18 months   ki1148112-LCNI-5           MALAWI                         3                    NA                0.5568182   0.4529516   0.6606848
18 months   ki1148112-LCNI-5           MALAWI                         4                    NA                0.6923077   0.5974098   0.7872056
18 months   ki1148112-LCNI-5           MALAWI                         5                    NA                0.5925926   0.4855098   0.6996754
18 months   ki1148112-LCNI-5           MALAWI                         6                    NA                0.5974026   0.4877817   0.7070235
18 months   ki1148112-LCNI-5           MALAWI                         7                    NA                0.6206897   0.4957241   0.7456552
18 months   ki1148112-LCNI-5           MALAWI                         8                    NA                0.4102564   0.2557678   0.5647451
18 months   ki1148112-LCNI-5           MALAWI                         9                    NA                0.6842105   0.4750468   0.8933743
18 months   ki1148112-LCNI-5           MALAWI                         10                   NA                0.4285714   0.2451360   0.6120068
18 months   ki1148112-LCNI-5           MALAWI                         11                   NA                0.4871795   0.3301922   0.6441668
18 months   ki1148112-LCNI-5           MALAWI                         12                   NA                0.5217391   0.3174408   0.7260374
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.7555556   0.6298578   0.8812533
24 months   ki1017093-NIH-Birth        BANGLADESH                     2                    NA                0.8055556   0.6761345   0.9349766
24 months   ki1017093-NIH-Birth        BANGLADESH                     3                    NA                0.6818182   0.5440477   0.8195887
24 months   ki1017093-NIH-Birth        BANGLADESH                     4                    NA                0.8421053   0.7260444   0.9581661
24 months   ki1017093-NIH-Birth        BANGLADESH                     5                    NA                0.7428571   0.5979077   0.8878066
24 months   ki1017093-NIH-Birth        BANGLADESH                     6                    NA                0.8285714   0.7035792   0.9535637
24 months   ki1017093-NIH-Birth        BANGLADESH                     7                    NA                0.7380952   0.6049843   0.8712062
24 months   ki1017093-NIH-Birth        BANGLADESH                     8                    NA                0.7741935   0.6268529   0.9215342
24 months   ki1017093-NIH-Birth        BANGLADESH                     9                    NA                0.7500000   0.5765774   0.9234226
24 months   ki1017093-NIH-Birth        BANGLADESH                     10                   NA                0.7173913   0.5871339   0.8476487
24 months   ki1017093-NIH-Birth        BANGLADESH                     11                   NA                0.7826087   0.6632854   0.9019320
24 months   ki1017093-NIH-Birth        BANGLADESH                     12                   NA                0.6875000   0.5562343   0.8187657
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.4923077   0.3707069   0.6139085
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.2597403   0.1617482   0.3577323
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                0.4266667   0.3146734   0.5386599
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                0.4736842   0.3613699   0.5859986
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    NA                0.3972603   0.2849510   0.5095695
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    NA                0.5076923   0.3860915   0.6292931
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    NA                0.4404762   0.3342564   0.5466959
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    NA                0.4141414   0.3170619   0.5112209
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    NA                0.4555556   0.3526117   0.5584995
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   NA                0.4752475   0.3778045   0.5726906
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   NA                0.4444444   0.3361754   0.5527135
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   NA                0.4189189   0.3064476   0.5313903
24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                0.4324324   0.3195039   0.5453610
24 months   ki1114097-CMIN             GUINEA-BISSAU                  2                    NA                0.3870968   0.2657966   0.5083970
24 months   ki1114097-CMIN             GUINEA-BISSAU                  3                    NA                0.4776119   0.3579521   0.5972718
24 months   ki1114097-CMIN             GUINEA-BISSAU                  4                    NA                0.5266904   0.4682855   0.5850952
24 months   ki1114097-CMIN             GUINEA-BISSAU                  5                    NA                0.4074074   0.3146962   0.5001186
24 months   ki1114097-CMIN             GUINEA-BISSAU                  6                    NA                0.3908046   0.2882275   0.4933816
24 months   ki1114097-CMIN             GUINEA-BISSAU                  7                    NA                0.5076923   0.3860979   0.6292867
24 months   ki1114097-CMIN             GUINEA-BISSAU                  8                    NA                0.4230769   0.2887328   0.5574210
24 months   ki1114097-CMIN             GUINEA-BISSAU                  9                    NA                0.4311927   0.3381769   0.5242085
24 months   ki1114097-CMIN             GUINEA-BISSAU                  10                   NA                0.4716981   0.3372400   0.6061562
24 months   ki1114097-CMIN             GUINEA-BISSAU                  11                   NA                0.4821429   0.3512094   0.6130763
24 months   ki1114097-CMIN             GUINEA-BISSAU                  12                   NA                0.4716981   0.3372400   0.6061562
24 months   ki1114097-CMIN             PERU                           1                    NA                0.5255102   0.4555414   0.5954790
24 months   ki1114097-CMIN             PERU                           2                    NA                0.3421053   0.1911338   0.4930768
24 months   ki1114097-CMIN             PERU                           3                    NA                0.3902439   0.2407984   0.5396894
24 months   ki1114097-CMIN             PERU                           4                    NA                0.3695652   0.2299556   0.5091749
24 months   ki1114097-CMIN             PERU                           5                    NA                0.5625000   0.3904701   0.7345299
24 months   ki1114097-CMIN             PERU                           6                    NA                0.4583333   0.2588163   0.6578503
24 months   ki1114097-CMIN             PERU                           7                    NA                0.3571429   0.1795081   0.5347776
24 months   ki1114097-CMIN             PERU                           8                    NA                0.2972973   0.1498933   0.4447013
24 months   ki1114097-CMIN             PERU                           9                    NA                0.3913043   0.1916760   0.5909327
24 months   ki1114097-CMIN             PERU                           10                   NA                0.7083333   0.5263275   0.8903392
24 months   ki1114097-CMIN             PERU                           11                   NA                0.4262295   0.3020201   0.5504390
24 months   ki1114097-CMIN             PERU                           12                   NA                0.4285714   0.2167296   0.6404132
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.7522523   0.6954489   0.8090556
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.7330097   0.6725824   0.7934370
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                    NA                0.6941176   0.6248336   0.7634017
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                    NA                0.6937500   0.6223097   0.7651903
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                    NA                0.7482517   0.6770971   0.8194064
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                    NA                0.6918239   0.6200341   0.7636137
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                    NA                0.7380952   0.6613049   0.8148856
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                    NA                0.6962963   0.6187039   0.7738887
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                    NA                0.6250000   0.5383579   0.7116421
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10                   NA                0.7450980   0.6605006   0.8296955
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11                   NA                0.7323944   0.6595594   0.8052293
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12                   NA                0.7248677   0.6611833   0.7885522
24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                0.6000000   0.4641161   0.7358839
24 months   ki1148112-LCNI-5           MALAWI                         2                    NA                0.6176471   0.5232736   0.7120205
24 months   ki1148112-LCNI-5           MALAWI                         3                    NA                0.6547619   0.5530179   0.7565059
24 months   ki1148112-LCNI-5           MALAWI                         4                    NA                0.7526882   0.6649404   0.8404359
24 months   ki1148112-LCNI-5           MALAWI                         5                    NA                0.6744186   0.5753143   0.7735230
24 months   ki1148112-LCNI-5           MALAWI                         6                    NA                0.7037037   0.6041946   0.8032128
24 months   ki1148112-LCNI-5           MALAWI                         7                    NA                0.6393443   0.5187584   0.7599301
24 months   ki1148112-LCNI-5           MALAWI                         8                    NA                0.5952381   0.4466897   0.7437865
24 months   ki1148112-LCNI-5           MALAWI                         9                    NA                0.6000000   0.4078311   0.7921689
24 months   ki1148112-LCNI-5           MALAWI                         10                   NA                0.5757576   0.4070179   0.7444973
24 months   ki1148112-LCNI-5           MALAWI                         11                   NA                0.5500000   0.3957216   0.7042784
24 months   ki1148112-LCNI-5           MALAWI                         12                   NA                0.7241379   0.5613564   0.8869194


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki1000108-IRC              INDIA                          NA                   NA                0.3170732   0.3092453   0.3249010
3 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2225755   0.2175144   0.2276367
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1019641   0.1016502   0.1022779
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2096244   0.2091773   0.2100716
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.5122616   0.5029000   0.5216231
6 months    ki1000108-IRC              INDIA                          NA                   NA                0.4240196   0.4165201   0.4315191
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.3647913   0.3565691   0.3730135
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2000895   0.1992188   0.2009603
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2946488   0.2938128   0.2954847
12 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.5185185   0.5076186   0.5294184
12 months   ki1000108-IRC              INDIA                          NA                   NA                0.5073529   0.4998405   0.5148654
12 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.5101664   0.5034360   0.5168967
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3171343   0.3157027   0.3185659
12 months   ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.2470085   0.2445735   0.2494436
12 months   ki1114097-CMIN             PERU                           NA                   NA                0.2548476   0.2497970   0.2598983
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.3769185   0.3762947   0.3775424
12 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.4748466   0.4712809   0.4784124
18 months   ki1000108-IRC              INDIA                          NA                   NA                0.5623472   0.5531625   0.5715319
18 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.6498994   0.6443543   0.6554445
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4044017   0.4025532   0.4062501
18 months   ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.3704363   0.3675785   0.3732942
18 months   ki1114097-CMIN             PERU                           NA                   NA                0.3765244   0.3715405   0.3815083
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.4911943   0.4905220   0.4918666
18 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.5547337   0.5480506   0.5614168
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.7553191   0.7508358   0.7598025
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4333333   0.4295580   0.4371087
24 months   ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.4620431   0.4590132   0.4650731
24 months   ki1114097-CMIN             PERU                           NA                   NA                0.4553415   0.4474896   0.4631934
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.7166489   0.7151694   0.7181283
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.6528926   0.6486814   0.6571037


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
3 months    ki1000108-IRC              INDIA                          2                    1                 1.3333333   0.6814329   2.6088816
3 months    ki1000108-IRC              INDIA                          3                    1                 1.2413793   0.6298310   2.4467239
3 months    ki1000108-IRC              INDIA                          4                    1                 1.1900826   0.5671051   2.4974150
3 months    ki1000108-IRC              INDIA                          5                    1                 1.0909091   0.4996127   2.3820103
3 months    ki1000108-IRC              INDIA                          6                    1                 0.8845209   0.4288412   1.8243985
3 months    ki1000108-IRC              INDIA                          7                    1                 1.0000000   0.4979310   2.0083104
3 months    ki1000108-IRC              INDIA                          8                    1                 0.5090909   0.2195112   1.1806847
3 months    ki1000108-IRC              INDIA                          9                    1                 1.0909091   0.5273606   2.2566771
3 months    ki1000108-IRC              INDIA                          10                   1                 0.7960688   0.3749359   1.6902239
3 months    ki1000108-IRC              INDIA                          11                   1                 1.0376940   0.5323862   2.0226084
3 months    ki1000108-IRC              INDIA                          12                   1                 1.4475524   0.8104244   2.5855688
3 months    ki1017093-NIH-Birth        BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
3 months    ki1017093-NIH-Birth        BANGLADESH                     2                    1                 0.7431694   0.4373374   1.2628710
3 months    ki1017093-NIH-Birth        BANGLADESH                     3                    1                 0.3251366   0.1507959   0.7010388
3 months    ki1017093-NIH-Birth        BANGLADESH                     4                    1                 0.6415094   0.3545050   1.1608703
3 months    ki1017093-NIH-Birth        BANGLADESH                     5                    1                 0.5425532   0.2775300   1.0606565
3 months    ki1017093-NIH-Birth        BANGLADESH                     6                    1                 0.6028369   0.3186116   1.1406123
3 months    ki1017093-NIH-Birth        BANGLADESH                     7                    1                 0.5312500   0.2714030   1.0398802
3 months    ki1017093-NIH-Birth        BANGLADESH                     8                    1                 0.4612403   0.2176701   0.9773627
3 months    ki1017093-NIH-Birth        BANGLADESH                     9                    1                 0.5833333   0.2797118   1.2165298
3 months    ki1017093-NIH-Birth        BANGLADESH                     10                   1                 0.7896175   0.4709920   1.3237927
3 months    ki1017093-NIH-Birth        BANGLADESH                     11                   1                 0.7083333   0.4002965   1.2534113
3 months    ki1017093-NIH-Birth        BANGLADESH                     12                   1                 0.4722222   0.2396606   0.9304570
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.0115018   0.5446868   1.8783932
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                 0.8916409   0.4663540   1.7047639
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                 1.0875959   0.5946793   1.9890802
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    1                 1.0532508   0.5755856   1.9273192
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    1                 0.9296987   0.4866196   1.7762125
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    1                 0.8704752   0.4676151   1.6204077
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    1                 0.8808701   0.4830786   1.6062232
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    1                 1.0539442   0.5858911   1.8959124
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   1                 0.9184975   0.5096089   1.6554612
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   1                 1.0491095   0.5831632   1.8873461
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   1                 0.9395195   0.5125075   1.7223102
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 1.0794239   0.9303702   1.2523573
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       3                    1                 0.9994970   0.8619419   1.1590040
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       4                    1                 0.9989081   0.8561384   1.1654861
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       5                    1                 1.1457908   0.9892484   1.3271051
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       6                    1                 1.0634254   0.9189455   1.2306209
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       7                    1                 1.1039787   0.9567275   1.2738934
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       8                    1                 1.0296707   0.8908262   1.1901556
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       9                    1                 0.7424216   0.6332429   0.8704241
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       10                   1                 0.8130952   0.6893165   0.9591006
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       11                   1                 0.8292335   0.7070895   0.9724770
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       12                   1                 0.8529845   0.7316357   0.9944601
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                    1                 0.6800000   0.3439685   1.3443091
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                    1                 0.6580645   0.3891261   1.1128754
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4                    1                 0.6181818   0.3816836   1.0012186
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          5                    1                 0.8257143   0.5304452   1.2853430
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          6                    1                 0.9916667   0.6683135   1.4714694
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          7                    1                 1.0025641   0.6823832   1.4729771
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          8                    1                 0.9000000   0.5298373   1.5287712
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          9                    1                 0.8095238   0.4764115   1.3755519
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          10                   1                 0.9379310   0.6084898   1.4457344
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          11                   1                 0.8707317   0.5773819   1.3131234
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          12                   1                 1.1560000   0.7829666   1.7067599
6 months    ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1000108-IRC              INDIA                          2                    1                 1.1234568   0.6494795   1.9433335
6 months    ki1000108-IRC              INDIA                          3                    1                 1.0459770   0.5993284   1.8254897
6 months    ki1000108-IRC              INDIA                          4                    1                 1.0606061   0.5836552   1.9273112
6 months    ki1000108-IRC              INDIA                          5                    1                 1.1666667   0.6516176   2.0888188
6 months    ki1000108-IRC              INDIA                          6                    1                 0.8828829   0.5024799   1.5512705
6 months    ki1000108-IRC              INDIA                          7                    1                 1.0370370   0.6106860   1.7610454
6 months    ki1000108-IRC              INDIA                          8                    1                 0.6740741   0.3707596   1.2255268
6 months    ki1000108-IRC              INDIA                          9                    1                 1.0370370   0.5864281   1.8338921
6 months    ki1000108-IRC              INDIA                          10                   1                 0.8198198   0.4580509   1.4673141
6 months    ki1000108-IRC              INDIA                          11                   1                 0.8536585   0.4894104   1.4890018
6 months    ki1000108-IRC              INDIA                          12                   1                 1.3012821   0.8270426   2.0474580
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     2                    1                 0.7142857   0.4466033   1.1424101
6 months    ki1017093-NIH-Birth        BANGLADESH                     3                    1                 0.4818059   0.2809551   0.8262422
6 months    ki1017093-NIH-Birth        BANGLADESH                     4                    1                 0.6138393   0.3746198   1.0058162
6 months    ki1017093-NIH-Birth        BANGLADESH                     5                    1                 0.4910714   0.2765107   0.8721223
6 months    ki1017093-NIH-Birth        BANGLADESH                     6                    1                 0.8886054   0.5824758   1.3556265
6 months    ki1017093-NIH-Birth        BANGLADESH                     7                    1                 1.0049834   0.6797315   1.4858686
6 months    ki1017093-NIH-Birth        BANGLADESH                     8                    1                 0.6383929   0.3806755   1.0705848
6 months    ki1017093-NIH-Birth        BANGLADESH                     9                    1                 0.6547619   0.3705656   1.1569158
6 months    ki1017093-NIH-Birth        BANGLADESH                     10                   1                 0.7581454   0.4990379   1.1517850
6 months    ki1017093-NIH-Birth        BANGLADESH                     11                   1                 0.8688187   0.5818141   1.2974006
6 months    ki1017093-NIH-Birth        BANGLADESH                     12                   1                 0.4111296   0.2174693   0.7772477
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.1147197   0.6721473   1.8487021
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                 1.2163244   0.7404539   1.9980243
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                 1.4730225   0.9190516   2.3609071
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    1                 1.4052974   0.8758088   2.2548992
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    1                 1.3132664   0.8036824   2.1459582
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    1                 1.4685990   0.9289772   2.3216749
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    1                 1.4418972   0.9174519   2.2661326
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    1                 1.4115661   0.8921666   2.2333483
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   1                 1.3683202   0.8684859   2.1558213
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   1                 1.3467958   0.8489445   2.1366049
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   1                 1.1861761   0.7328365   1.9199559
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 1.1440963   0.9822029   1.3326741
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3                    1                 0.9720203   0.8336747   1.1333240
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       4                    1                 0.9951968   0.8498576   1.1653913
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       5                    1                 1.1778268   1.0173593   1.3636048
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       6                    1                 1.3032032   1.1365356   1.4943117
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       7                    1                 1.1518651   0.9961907   1.3318668
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       8                    1                 1.1142220   0.9649824   1.2865424
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       9                    1                 0.8393076   0.7147254   0.9856053
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       10                   1                 0.9538099   0.8110082   1.1217559
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       11                   1                 0.8560703   0.7283047   1.0062497
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       12                   1                 0.8659945   0.7412770   1.0116953
12 months   ki0047075b-MAL-ED          PERU                           1                    1                 1.0000000   1.0000000   1.0000000
12 months   ki0047075b-MAL-ED          PERU                           2                    1                 1.0827068   0.6677842   1.7554382
12 months   ki0047075b-MAL-ED          PERU                           3                    1                 0.7218045   0.3852561   1.3523516
12 months   ki0047075b-MAL-ED          PERU                           4                    1                 0.9473684   0.5536083   1.6211948
12 months   ki0047075b-MAL-ED          PERU                           5                    1                 0.9885584   0.5998906   1.6290429
12 months   ki0047075b-MAL-ED          PERU                           6                    1                 0.8421053   0.4607802   1.5390010
12 months   ki0047075b-MAL-ED          PERU                           7                    1                 1.1196172   0.7025618   1.7842456
12 months   ki0047075b-MAL-ED          PERU                           8                    1                 0.7105263   0.3509666   1.4384494
12 months   ki0047075b-MAL-ED          PERU                           9                    1                 0.9885584   0.5998906   1.6290429
12 months   ki0047075b-MAL-ED          PERU                           10                   1                 0.7368421   0.3817517   1.4222236
12 months   ki0047075b-MAL-ED          PERU                           11                   1                 1.3026316   0.8836589   1.9202533
12 months   ki0047075b-MAL-ED          PERU                           12                   1                 1.0421053   0.6298277   1.7242547
12 months   ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
12 months   ki1000108-IRC              INDIA                          2                    1                 1.0000000   0.6396390   1.5633819
12 months   ki1000108-IRC              INDIA                          3                    1                 0.9310345   0.5890853   1.4714765
12 months   ki1000108-IRC              INDIA                          4                    1                 1.0636364   0.6750203   1.6759826
12 months   ki1000108-IRC              INDIA                          5                    1                 1.2600000   0.8362047   1.8985782
12 months   ki1000108-IRC              INDIA                          6                    1                 0.7783784   0.4858281   1.2470932
12 months   ki1000108-IRC              INDIA                          7                    1                 0.8500000   0.5404078   1.3369532
12 months   ki1000108-IRC              INDIA                          8                    1                 0.7200000   0.4533734   1.1434283
12 months   ki1000108-IRC              INDIA                          9                    1                 0.9333333   0.5851352   1.4887347
12 months   ki1000108-IRC              INDIA                          10                   1                 0.7783784   0.4858281   1.2470932
12 months   ki1000108-IRC              INDIA                          11                   1                 0.8341463   0.5367756   1.2962589
12 months   ki1000108-IRC              INDIA                          12                   1                 1.0588235   0.7298584   1.5360613
12 months   ki1017093-NIH-Birth        BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
12 months   ki1017093-NIH-Birth        BANGLADESH                     2                    1                 0.8258824   0.5975276   1.1415066
12 months   ki1017093-NIH-Birth        BANGLADESH                     3                    1                 0.6897347   0.4802466   0.9906036
12 months   ki1017093-NIH-Birth        BANGLADESH                     4                    1                 0.6117647   0.4063111   0.9211071
12 months   ki1017093-NIH-Birth        BANGLADESH                     5                    1                 0.6190476   0.4079422   0.9393976
12 months   ki1017093-NIH-Birth        BANGLADESH                     6                    1                 0.8029412   0.5628359   1.1454751
12 months   ki1017093-NIH-Birth        BANGLADESH                     7                    1                 0.9176471   0.6729389   1.2513412
12 months   ki1017093-NIH-Birth        BANGLADESH                     8                    1                 0.8267091   0.5783896   1.1816392
12 months   ki1017093-NIH-Birth        BANGLADESH                     9                    1                 0.6855984   0.4371486   1.0752525
12 months   ki1017093-NIH-Birth        BANGLADESH                     10                   1                 0.8079911   0.5852475   1.1155104
12 months   ki1017093-NIH-Birth        BANGLADESH                     11                   1                 0.8785982   0.6405691   1.2050767
12 months   ki1017093-NIH-Birth        BANGLADESH                     12                   1                 0.6423529   0.4386599   0.9406314
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.0880898   0.7475390   1.5837828
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                 1.1625874   0.8035880   1.6819683
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                 1.4250000   1.0054978   2.0195221
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    1                 1.2561111   0.8788050   1.7954098
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    1                 1.2850242   0.8959303   1.8430976
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    1                 1.2980480   0.9230753   1.8253427
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    1                 1.1189904   0.7909285   1.5831260
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    1                 1.1444746   0.8043167   1.6284907
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   1                 0.9898990   0.6920683   1.4159008
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   1                 1.2446524   0.8823954   1.7556298
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   1                 1.1104689   0.7747928   1.5915752
12 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    1                 1.0000000   1.0000000   1.0000000
12 months   ki1114097-CMIN             GUINEA-BISSAU                  2                    1                 1.4852321   0.9213073   2.3943307
12 months   ki1114097-CMIN             GUINEA-BISSAU                  3                    1                 1.0759331   0.6280504   1.8432151
12 months   ki1114097-CMIN             GUINEA-BISSAU                  4                    1                 0.9783931   0.6291224   1.5215690
12 months   ki1114097-CMIN             GUINEA-BISSAU                  5                    1                 1.1428571   0.7172217   1.8210862
12 months   ki1114097-CMIN             GUINEA-BISSAU                  6                    1                 0.8465608   0.4927872   1.4543098
12 months   ki1114097-CMIN             GUINEA-BISSAU                  7                    1                 1.0476190   0.6150857   1.7843133
12 months   ki1114097-CMIN             GUINEA-BISSAU                  8                    1                 0.7115903   0.3523480   1.4371039
12 months   ki1114097-CMIN             GUINEA-BISSAU                  9                    1                 1.2165899   0.7650387   1.9346616
12 months   ki1114097-CMIN             GUINEA-BISSAU                  10                   1                 0.7782313   0.4200635   1.4417913
12 months   ki1114097-CMIN             GUINEA-BISSAU                  11                   1                 1.0476190   0.6060283   1.8109809
12 months   ki1114097-CMIN             GUINEA-BISSAU                  12                   1                 0.9312169   0.5259858   1.6486472
12 months   ki1114097-CMIN             PERU                           1                    1                 1.0000000   1.0000000   1.0000000
12 months   ki1114097-CMIN             PERU                           2                    1                 0.6661007   0.3624439   1.2241625
12 months   ki1114097-CMIN             PERU                           3                    1                 0.9558313   0.5840393   1.5643012
12 months   ki1114097-CMIN             PERU                           4                    1                 0.9537351   0.5962114   1.5256514
12 months   ki1114097-CMIN             PERU                           5                    1                 1.0786290   0.6745247   1.7248303
12 months   ki1114097-CMIN             PERU                           6                    1                 0.6661007   0.3624439   1.2241625
12 months   ki1114097-CMIN             PERU                           7                    1                 1.1071211   0.6770511   1.8103762
12 months   ki1114097-CMIN             PERU                           8                    1                 0.8785924   0.5113510   1.5095786
12 months   ki1114097-CMIN             PERU                           9                    1                 0.4425145   0.1851835   1.0574325
12 months   ki1114097-CMIN             PERU                           10                   1                 1.6025346   0.9752491   2.6332934
12 months   ki1114097-CMIN             PERU                           11                   1                 0.6903226   0.4016523   1.1864623
12 months   ki1114097-CMIN             PERU                           12                   1                 0.6002805   0.2990822   1.2048083
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 1.0682398   0.9475623   1.2042863
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                    1                 1.1099088   0.9890579   1.2455263
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                    1                 0.9861783   0.8695996   1.1183856
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                    1                 1.1697617   1.0399604   1.3157639
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                    1                 1.1559907   1.0305344   1.2967200
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                    1                 1.1063584   0.9846449   1.2431172
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                    1                 1.1021612   0.9821831   1.2367952
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                    1                 0.9085704   0.8043817   1.0262543
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       10                   1                 1.0196982   0.9010585   1.1539589
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       11                   1                 0.9163611   0.8088896   1.0381117
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       12                   1                 0.9359112   0.8304987   1.0547033
12 months   ki1148112-LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.0000000
12 months   ki1148112-LCNI-5           MALAWI                         2                    1                 1.0907704   0.7528011   1.5804707
12 months   ki1148112-LCNI-5           MALAWI                         3                    1                 1.0656900   0.7241419   1.5683324
12 months   ki1148112-LCNI-5           MALAWI                         4                    1                 1.3409183   0.9409763   1.9108473
12 months   ki1148112-LCNI-5           MALAWI                         5                    1                 1.1054143   0.7608787   1.6059599
12 months   ki1148112-LCNI-5           MALAWI                         6                    1                 1.0994503   0.7471377   1.6178958
12 months   ki1148112-LCNI-5           MALAWI                         7                    1                 1.3472137   0.9275946   1.9566574
12 months   ki1148112-LCNI-5           MALAWI                         8                    1                 0.8897877   0.5406387   1.4644199
12 months   ki1148112-LCNI-5           MALAWI                         9                    1                 1.1513688   0.6978497   1.8996210
12 months   ki1148112-LCNI-5           MALAWI                         10                   1                 1.0549872   0.6459943   1.7229223
12 months   ki1148112-LCNI-5           MALAWI                         11                   1                 1.1159420   0.7175869   1.7354366
12 months   ki1148112-LCNI-5           MALAWI                         12                   1                 1.1956522   0.7557678   1.8915653
18 months   ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
18 months   ki1000108-IRC              INDIA                          2                    1                 1.0666667   0.6949039   1.6373168
18 months   ki1000108-IRC              INDIA                          3                    1                 1.1172414   0.7427056   1.6806501
18 months   ki1000108-IRC              INDIA                          4                    1                 1.2272727   0.8153155   1.8473810
18 months   ki1000108-IRC              INDIA                          5                    1                 1.3714286   0.9397501   2.0014005
18 months   ki1000108-IRC              INDIA                          6                    1                 0.8270270   0.5241333   1.3049614
18 months   ki1000108-IRC              INDIA                          7                    1                 0.9500000   0.6206005   1.4542366
18 months   ki1000108-IRC              INDIA                          8                    1                 0.8000000   0.5158488   1.2406736
18 months   ki1000108-IRC              INDIA                          9                    1                 1.1333333   0.7508821   1.7105808
18 months   ki1000108-IRC              INDIA                          10                   1                 0.7783784   0.4858288   1.2470914
18 months   ki1000108-IRC              INDIA                          11                   1                 0.9658537   0.6420937   1.4528615
18 months   ki1000108-IRC              INDIA                          12                   1                 1.2000000   0.8446269   1.7048947
18 months   ki1017093-NIH-Birth        BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
18 months   ki1017093-NIH-Birth        BANGLADESH                     2                    1                 1.0491071   0.7977095   1.3797326
18 months   ki1017093-NIH-Birth        BANGLADESH                     3                    1                 0.8620924   0.6311061   1.1776202
18 months   ki1017093-NIH-Birth        BANGLADESH                     4                    1                 0.9546875   0.7070074   1.2891353
18 months   ki1017093-NIH-Birth        BANGLADESH                     5                    1                 0.7939189   0.5560550   1.1335341
18 months   ki1017093-NIH-Birth        BANGLADESH                     6                    1                 1.0199653   0.7614545   1.3662395
18 months   ki1017093-NIH-Birth        BANGLADESH                     7                    1                 0.9563953   0.7128895   1.2830769
18 months   ki1017093-NIH-Birth        BANGLADESH                     8                    1                 1.0681818   0.8020162   1.4226799
18 months   ki1017093-NIH-Birth        BANGLADESH                     9                    1                 0.8159722   0.5522189   1.2057007
18 months   ki1017093-NIH-Birth        BANGLADESH                     10                   1                 0.8992347   0.6682472   1.2100658
18 months   ki1017093-NIH-Birth        BANGLADESH                     11                   1                 1.1015625   0.8534596   1.4217895
18 months   ki1017093-NIH-Birth        BANGLADESH                     12                   1                 0.8992347   0.6682472   1.2100658
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.7559226   0.5373555   1.0633911
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                 0.9453174   0.6957544   1.2843971
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                 1.0163199   0.7563132   1.3657121
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    1                 0.8480353   0.6173585   1.1649048
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    1                 0.9368771   0.6858064   1.2798637
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    1                 0.8964363   0.6660031   1.2065982
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    1                 0.7622399   0.5593847   1.0386584
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    1                 0.9080501   0.6725655   1.2259847
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   1                 0.8216014   0.6072961   1.1115317
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   1                 0.8708641   0.6391440   1.1865937
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   1                 0.9204406   0.6764412   1.2524532
18 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    1                 1.0000000   1.0000000   1.0000000
18 months   ki1114097-CMIN             GUINEA-BISSAU                  2                    1                 1.1217105   0.7511342   1.6751127
18 months   ki1114097-CMIN             GUINEA-BISSAU                  3                    1                 1.0171233   0.6677279   1.5493433
18 months   ki1114097-CMIN             GUINEA-BISSAU                  4                    1                 1.0437956   0.7488004   1.4550063
18 months   ki1114097-CMIN             GUINEA-BISSAU                  5                    1                 0.9088983   0.6143637   1.3446369
18 months   ki1114097-CMIN             GUINEA-BISSAU                  6                    1                 0.7270115   0.4595712   1.1500846
18 months   ki1114097-CMIN             GUINEA-BISSAU                  7                    1                 1.2692308   0.8546559   1.8849068
18 months   ki1114097-CMIN             GUINEA-BISSAU                  8                    1                 0.9330357   0.5830333   1.4931492
18 months   ki1114097-CMIN             GUINEA-BISSAU                  9                    1                 0.9000000   0.6038678   1.3413532
18 months   ki1114097-CMIN             GUINEA-BISSAU                  10                   1                 1.2327586   0.8172514   1.8595181
18 months   ki1114097-CMIN             GUINEA-BISSAU                  11                   1                 1.1652542   0.7659810   1.7726517
18 months   ki1114097-CMIN             GUINEA-BISSAU                  12                   1                 1.1000000   0.7285301   1.6608784
18 months   ki1114097-CMIN             PERU                           1                    1                 1.0000000   1.0000000   1.0000000
18 months   ki1114097-CMIN             PERU                           2                    1                 0.6574713   0.3997215   1.0814242
18 months   ki1114097-CMIN             PERU                           3                    1                 0.8689655   0.5895950   1.2807116
18 months   ki1114097-CMIN             PERU                           4                    1                 0.8575712   0.5984714   1.2288447
18 months   ki1114097-CMIN             PERU                           5                    1                 1.0344828   0.7304215   1.4651192
18 months   ki1114097-CMIN             PERU                           6                    1                 0.8597701   0.5638341   1.3110322
18 months   ki1114097-CMIN             PERU                           7                    1                 0.7431386   0.4756324   1.1610962
18 months   ki1114097-CMIN             PERU                           8                    1                 0.7737931   0.5023948   1.1918034
18 months   ki1114097-CMIN             PERU                           9                    1                 0.6896552   0.3968752   1.1984229
18 months   ki1114097-CMIN             PERU                           10                   1                 1.2192118   0.8211035   1.8103413
18 months   ki1114097-CMIN             PERU                           11                   1                 0.7133299   0.4763956   1.0681029
18 months   ki1114097-CMIN             PERU                           12                   1                 0.6502463   0.3508448   1.2051489
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 0.9860703   0.8843423   1.0995003
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                    1                 0.9979144   0.8992587   1.1073934
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                    1                 0.9339235   0.8354617   1.0439893
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                    1                 1.0241071   0.9193014   1.1408611
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                    1                 1.0256796   0.9250379   1.1372707
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                    1                 0.9617887   0.8629322   1.0719702
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                    1                 0.9253819   0.8302885   1.0313664
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                    1                 0.8233815   0.7355907   0.9216500
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       10                   1                 0.9107924   0.8104522   1.0235555
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       11                   1                 0.9132244   0.8188203   1.0185125
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       12                   1                 0.9478244   0.8525630   1.0537299
18 months   ki1148112-LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.0000000
18 months   ki1148112-LCNI-5           MALAWI                         2                    1                 1.1132195   0.7316183   1.6938581
18 months   ki1148112-LCNI-5           MALAWI                         3                    1                 1.3101604   0.8728831   1.9664951
18 months   ki1148112-LCNI-5           MALAWI                         4                    1                 1.6289593   1.1074366   2.3960815
18 months   ki1148112-LCNI-5           MALAWI                         5                    1                 1.3943355   0.9314256   2.0873073
18 months   ki1148112-LCNI-5           MALAWI                         6                    1                 1.4056532   0.9378045   2.1069005
18 months   ki1148112-LCNI-5           MALAWI                         7                    1                 1.4604462   0.9662166   2.2074794
18 months   ki1148112-LCNI-5           MALAWI                         8                    1                 0.9653092   0.5730558   1.6260579
18 months   ki1148112-LCNI-5           MALAWI                         9                    1                 1.6099071   1.0033425   2.5831666
18 months   ki1148112-LCNI-5           MALAWI                         10                   1                 1.0084034   0.5761523   1.7649455
18 months   ki1148112-LCNI-5           MALAWI                         11                   1                 1.1463047   0.7066982   1.8593714
18 months   ki1148112-LCNI-5           MALAWI                         12                   1                 1.2276215   0.7208500   2.0906630
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     2                    1                 1.0661765   0.8460320   1.3436044
24 months   ki1017093-NIH-Birth        BANGLADESH                     3                    1                 0.9024064   0.6945936   1.1723940
24 months   ki1017093-NIH-Birth        BANGLADESH                     4                    1                 1.1145511   0.8979995   1.3833239
24 months   ki1017093-NIH-Birth        BANGLADESH                     5                    1                 0.9831933   0.7608124   1.2705748
24 months   ki1017093-NIH-Birth        BANGLADESH                     6                    1                 1.0966387   0.8760563   1.3727615
24 months   ki1017093-NIH-Birth        BANGLADESH                     7                    1                 0.9768908   0.7643422   1.2485449
24 months   ki1017093-NIH-Birth        BANGLADESH                     8                    1                 1.0246679   0.7957979   1.3193606
24 months   ki1017093-NIH-Birth        BANGLADESH                     9                    1                 0.9926471   0.7465901   1.3197981
24 months   ki1017093-NIH-Birth        BANGLADESH                     10                   1                 0.9494885   0.7422313   1.2146193
24 months   ki1017093-NIH-Birth        BANGLADESH                     11                   1                 1.0358056   0.8265592   1.2980235
24 months   ki1017093-NIH-Birth        BANGLADESH                     12                   1                 0.9099265   0.7063567   1.1721644
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.5275974   0.3360967   0.8282110
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                 0.8666667   0.6043946   1.2427495
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                 0.9621711   0.6832109   1.3550328
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    1                 0.8069349   0.5543691   1.1745676
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    1                 1.0312500   0.7310383   1.4547480
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    1                 0.8947173   0.6335313   1.2635824
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    1                 0.8412247   0.5984435   1.1824995
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    1                 0.9253472   0.6620852   1.2932890
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   1                 0.9653465   0.7002753   1.3307536
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   1                 0.9027778   0.6381393   1.2771627
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   1                 0.8509291   0.5908203   1.2255507
24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1114097-CMIN             GUINEA-BISSAU                  2                    1                 0.8951613   0.5953161   1.3460307
24 months   ki1114097-CMIN             GUINEA-BISSAU                  3                    1                 1.1044776   0.7691100   1.5860811
24 months   ki1114097-CMIN             GUINEA-BISSAU                  4                    1                 1.2179715   0.9171091   1.6175334
24 months   ki1114097-CMIN             GUINEA-BISSAU                  5                    1                 0.9421296   0.6663112   1.3321226
24 months   ki1114097-CMIN             GUINEA-BISSAU                  6                    1                 0.9037356   0.6240795   1.3087085
24 months   ki1114097-CMIN             GUINEA-BISSAU                  7                    1                 1.1740385   0.8237442   1.6732940
24 months   ki1114097-CMIN             GUINEA-BISSAU                  8                    1                 0.9783654   0.6485575   1.4758889
24 months   ki1114097-CMIN             GUINEA-BISSAU                  9                    1                 0.9971330   0.7106380   1.3991291
24 months   ki1114097-CMIN             GUINEA-BISSAU                  10                   1                 1.0908019   0.7410574   1.6056094
24 months   ki1114097-CMIN             GUINEA-BISSAU                  11                   1                 1.1149554   0.7649517   1.6251032
24 months   ki1114097-CMIN             GUINEA-BISSAU                  12                   1                 1.0908019   0.7410574   1.6056094
24 months   ki1114097-CMIN             PERU                           1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1114097-CMIN             PERU                           2                    1                 0.6509964   0.4105734   1.0322060
24 months   ki1114097-CMIN             PERU                           3                    1                 0.7426000   0.4950793   1.1138718
24 months   ki1114097-CMIN             PERU                           4                    1                 0.7032503   0.4711463   1.0496972
24 months   ki1114097-CMIN             PERU                           5                    1                 1.0703883   0.7667955   1.4941810
24 months   ki1114097-CMIN             PERU                           6                    1                 0.8721683   0.5532256   1.3749861
24 months   ki1114097-CMIN             PERU                           7                    1                 0.6796117   0.4061131   1.1372991
24 months   ki1114097-CMIN             PERU                           8                    1                 0.5657308   0.3385728   0.9452956
24 months   ki1114097-CMIN             PERU                           9                    1                 0.7446180   0.4394930   1.2615809
24 months   ki1114097-CMIN             PERU                           10                   1                 1.3478964   1.0091904   1.8002795
24 months   ki1114097-CMIN             PERU                           11                   1                 0.8110775   0.5887334   1.1173933
24 months   ki1114097-CMIN             PERU                           12                   1                 0.8155340   0.4887874   1.3607056
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 0.9744201   0.8713545   1.0896765
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                    1                 0.9227193   0.8141662   1.0457458
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                    1                 0.9222305   0.8116746   1.0478450
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                    1                 0.9946820   0.8809444   1.1231040
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                    1                 0.9196701   0.8089037   1.0456041
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                    1                 0.9811805   0.8628175   1.1157808
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                    1                 0.9256154   0.8090403   1.0589879
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                    1                 0.8308383   0.7095111   0.9729126
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10                   1                 0.9904896   0.8642339   1.1351900
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11                   1                 0.9736021   0.8593151   1.1030890
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12                   1                 0.9635966   0.8581895   1.0819503
24 months   ki1148112-LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1148112-LCNI-5           MALAWI                         2                    1                 1.0294118   0.7833238   1.3528104
24 months   ki1148112-LCNI-5           MALAWI                         3                    1                 1.0912698   0.8291826   1.4361974
24 months   ki1148112-LCNI-5           MALAWI                         4                    1                 1.2544803   0.9723925   1.6184007
24 months   ki1148112-LCNI-5           MALAWI                         5                    1                 1.1240310   0.8580880   1.4723964
24 months   ki1148112-LCNI-5           MALAWI                         6                    1                 1.1728395   0.8980163   1.5317679
24 months   ki1148112-LCNI-5           MALAWI                         7                    1                 1.0655738   0.7935709   1.4308079
24 months   ki1148112-LCNI-5           MALAWI                         8                    1                 0.9920635   0.7082409   1.3896261
24 months   ki1148112-LCNI-5           MALAWI                         9                    1                 1.0000000   0.6755264   1.4803271
24 months   ki1148112-LCNI-5           MALAWI                         10                   1                 0.9595960   0.6625729   1.3897707
24 months   ki1148112-LCNI-5           MALAWI                         11                   1                 0.9166667   0.6392050   1.3145671
24 months   ki1148112-LCNI-5           MALAWI                         12                   1                 1.2068966   0.8771794   1.6605488


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
3 months    ki1000108-IRC              INDIA                          1                    NA                 0.0115176   -0.1393432    0.1623784
3 months    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.1303657   -0.2441525   -0.0165788
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0029742   -0.0501788    0.0442304
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0070666   -0.0289199    0.0147866
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.0759737   -0.2418918    0.0899443
6 months    ki1000108-IRC              INDIA                          1                    NA                -0.0045518   -0.1688725    0.1597689
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.1442996   -0.2767939   -0.0118053
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0487737   -0.0082150    0.1057625
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0079821   -0.0215748    0.0375390
12 months   ki0047075b-MAL-ED          PERU                           1                    NA                -0.0092593   -0.1730034    0.1544849
12 months   ki1000108-IRC              INDIA                          1                    NA                -0.0482026   -0.2108944    0.1144892
12 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.1436798   -0.2732804   -0.0140792
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0464576   -0.0290855    0.1220006
12 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                 0.0083722   -0.0807568    0.0975012
12 months   ki1114097-CMIN             PERU                           1                    NA                -0.0348720   -0.1210325    0.0512886
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0127394   -0.0170188    0.0424976
12 months   ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0566648   -0.0738236    0.1871532
18 months   ki1000108-IRC              INDIA                          1                    NA                 0.0067916   -0.1559855    0.1695688
18 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.0309517   -0.1644679    0.1025646
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0530452   -0.1538075    0.0477172
18 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                 0.0068000   -0.1007316    0.1143315
18 months   ki1114097-CMIN             PERU                           1                    NA                -0.0628695   -0.1477482    0.0220091
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0242119   -0.0608781    0.0124543
18 months   ki1148112-LCNI-5           MALAWI                         1                    NA                 0.1297337   -0.0237210    0.2831884
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.0002364   -0.1260141    0.1255413
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0589744   -0.1806337    0.0626850
24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                 0.0296107   -0.0833585    0.1425799
24 months   ki1114097-CMIN             PERU                           1                    NA                -0.0701687   -0.1405767    0.0002393
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0356034   -0.0924260    0.0212193
24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0528926   -0.0830566    0.1888417


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
3 months    ki1000108-IRC              INDIA                          1                    NA                 0.0363248   -0.5788202    0.4117950
3 months    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.5857143   -1.1900268   -0.1481548
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0291692   -0.6137886    0.3436630
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0337109   -0.1434001    0.0654556
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.1483104   -0.5227156    0.1340361
6 months    ki1000108-IRC              INDIA                          1                    NA                -0.0107349   -0.4830508    0.3111598
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.3955676   -0.8112775   -0.0752682
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.2437596   -0.1020883    0.4810764
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0270902   -0.0785737    0.1224025
12 months   ki0047075b-MAL-ED          PERU                           1                    NA                -0.0178571   -0.3881561    0.2536624
12 months   ki1000108-IRC              INDIA                          1                    NA                -0.0950081   -0.4676597    0.1830241
12 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.2816332   -0.5628632   -0.0510092
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.1464918   -0.1282591    0.3543361
12 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                 0.0338943   -0.4035455    0.3349983
12 months   ki1114097-CMIN             PERU                           1                    NA                -0.1368346   -0.5307992    0.1557397
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0337989   -0.0484665    0.1096096
12 months   ki1148112-LCNI-5           MALAWI                         1                    NA                 0.1193329   -0.2031411    0.3553752
18 months   ki1000108-IRC              INDIA                          1                    NA                 0.0120773   -0.3242375    0.2629787
18 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.0476253   -0.2746154    0.1389412
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1311695   -0.4099208    0.0924707
18 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                 0.0183566   -0.3194049    0.2696528
18 months   ki1114097-CMIN             PERU                           1                    NA                -0.1669734   -0.4158160    0.0381328
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0492919   -0.1266595    0.0227630
18 months   ki1148112-LCNI-5           MALAWI                         1                    NA                 0.2338667   -0.0991414    0.4659829
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.0003130   -0.1814985    0.1530873
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1360947   -0.4546304    0.1126879
24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                 0.0640864   -0.2153079    0.2792491
24 months   ki1114097-CMIN             PERU                           1                    NA                -0.1541013   -0.3199298   -0.0091065
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0496804   -0.1320441    0.0266909
24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0810127   -0.1526712    0.2673212
