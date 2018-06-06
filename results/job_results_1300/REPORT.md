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

**Intervention Variable:** brthmon

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
3 months    ki0047075b-MAL-ED          BANGLADESH                     1       265     21     15      6
3 months    ki0047075b-MAL-ED          BANGLADESH                     2       265     25     16      9
3 months    ki0047075b-MAL-ED          BANGLADESH                     3       265     25     15     10
3 months    ki0047075b-MAL-ED          BANGLADESH                     4       265     22     22      0
3 months    ki0047075b-MAL-ED          BANGLADESH                     5       265     22     12     10
3 months    ki0047075b-MAL-ED          BANGLADESH                     6       265     11      7      4
3 months    ki0047075b-MAL-ED          BANGLADESH                     7       265     20     15      5
3 months    ki0047075b-MAL-ED          BANGLADESH                     8       265     26     16     10
3 months    ki0047075b-MAL-ED          BANGLADESH                     9       265     23     18      5
3 months    ki0047075b-MAL-ED          BANGLADESH                     10      265     25     17      8
3 months    ki0047075b-MAL-ED          BANGLADESH                     11      265     17     12      5
3 months    ki0047075b-MAL-ED          BANGLADESH                     12      265     28     22      6
3 months    ki0047075b-MAL-ED          BRAZIL                         1       233     15     13      2
3 months    ki0047075b-MAL-ED          BRAZIL                         2       233     25     21      4
3 months    ki0047075b-MAL-ED          BRAZIL                         3       233     20     16      4
3 months    ki0047075b-MAL-ED          BRAZIL                         4       233     12     11      1
3 months    ki0047075b-MAL-ED          BRAZIL                         5       233     23     19      4
3 months    ki0047075b-MAL-ED          BRAZIL                         6       233      9      6      3
3 months    ki0047075b-MAL-ED          BRAZIL                         7       233     18     14      4
3 months    ki0047075b-MAL-ED          BRAZIL                         8       233     21     18      3
3 months    ki0047075b-MAL-ED          BRAZIL                         9       233     32     25      7
3 months    ki0047075b-MAL-ED          BRAZIL                         10      233     21     19      2
3 months    ki0047075b-MAL-ED          BRAZIL                         11      233     22     22      0
3 months    ki0047075b-MAL-ED          BRAZIL                         12      233     15     11      4
3 months    ki0047075b-MAL-ED          INDIA                          1       251     20     12      8
3 months    ki0047075b-MAL-ED          INDIA                          2       251     21     21      0
3 months    ki0047075b-MAL-ED          INDIA                          3       251     23     17      6
3 months    ki0047075b-MAL-ED          INDIA                          4       251     17     12      5
3 months    ki0047075b-MAL-ED          INDIA                          5       251      8      7      1
3 months    ki0047075b-MAL-ED          INDIA                          6       251     20     18      2
3 months    ki0047075b-MAL-ED          INDIA                          7       251     25     18      7
3 months    ki0047075b-MAL-ED          INDIA                          8       251     24     18      6
3 months    ki0047075b-MAL-ED          INDIA                          9       251     23     17      6
3 months    ki0047075b-MAL-ED          INDIA                          10      251     26     16     10
3 months    ki0047075b-MAL-ED          INDIA                          11      251     25     16      9
3 months    ki0047075b-MAL-ED          INDIA                          12      251     19     11      8
3 months    ki0047075b-MAL-ED          NEPAL                          1       240     20     15      5
3 months    ki0047075b-MAL-ED          NEPAL                          2       240     19     17      2
3 months    ki0047075b-MAL-ED          NEPAL                          3       240     17     15      2
3 months    ki0047075b-MAL-ED          NEPAL                          4       240     22     20      2
3 months    ki0047075b-MAL-ED          NEPAL                          5       240     22     17      5
3 months    ki0047075b-MAL-ED          NEPAL                          6       240     18     18      0
3 months    ki0047075b-MAL-ED          NEPAL                          7       240     20     16      4
3 months    ki0047075b-MAL-ED          NEPAL                          8       240     24     20      4
3 months    ki0047075b-MAL-ED          NEPAL                          9       240     16     14      2
3 months    ki0047075b-MAL-ED          NEPAL                          10      240     21     18      3
3 months    ki0047075b-MAL-ED          NEPAL                          11      240     24     19      5
3 months    ki0047075b-MAL-ED          NEPAL                          12      240     17     13      4
3 months    ki0047075b-MAL-ED          PERU                           1       303     42     29     13
3 months    ki0047075b-MAL-ED          PERU                           2       303     23     13     10
3 months    ki0047075b-MAL-ED          PERU                           3       303     23     16      7
3 months    ki0047075b-MAL-ED          PERU                           4       303     21     16      5
3 months    ki0047075b-MAL-ED          PERU                           5       303     28     16     12
3 months    ki0047075b-MAL-ED          PERU                           6       303     17     10      7
3 months    ki0047075b-MAL-ED          PERU                           7       303     24     12     12
3 months    ki0047075b-MAL-ED          PERU                           8       303     19     16      3
3 months    ki0047075b-MAL-ED          PERU                           9       303     23     18      5
3 months    ki0047075b-MAL-ED          PERU                           10      303     27     22      5
3 months    ki0047075b-MAL-ED          PERU                           11      303     33     18     15
3 months    ki0047075b-MAL-ED          PERU                           12      303     23     16      7
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1       314     42     33      9
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2       314     30     26      4
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3       314     18     15      3
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4       314     15     11      4
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   5       314     16     14      2
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   6       314     23     17      6
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   7       314     26     17      9
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   8       314     12      8      4
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   9       314     25     20      5
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   10      314     31     22      9
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   11      314     31     18     13
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   12      314     45     31     14
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1       262     20     16      4
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2       262     31     23      8
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3       262     19     11      8
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4       262     10      5      5
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5       262     20     16      4
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6       262     19     14      5
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7       262     23     15      8
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8       262     12      8      4
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9       262     23     14      9
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10      262     24     13     11
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11      262     27     22      5
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12      262     34     23     11
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
3 months    ki1000108-IRC              INDIA                          1       410     38     27     11
3 months    ki1000108-IRC              INDIA                          2       410     28     16     12
3 months    ki1000108-IRC              INDIA                          3       410     27     17     10
3 months    ki1000108-IRC              INDIA                          4       410     21     13      8
3 months    ki1000108-IRC              INDIA                          5       410     22     15      7
3 months    ki1000108-IRC              INDIA                          6       410     37     27     10
3 months    ki1000108-IRC              INDIA                          7       410     36     25     11
3 months    ki1000108-IRC              INDIA                          8       410     44     37      7
3 months    ki1000108-IRC              INDIA                          9       410     27     18      9
3 months    ki1000108-IRC              INDIA                          10      410     38     29      9
3 months    ki1000108-IRC              INDIA                          11      410     40     27     13
3 months    ki1000108-IRC              INDIA                          12      410     52     29     23
3 months    ki1000109-EE               PAKISTAN                       1       379     95     26     69
3 months    ki1000109-EE               PAKISTAN                       2       379     67     27     40
3 months    ki1000109-EE               PAKISTAN                       3       379     42     22     20
3 months    ki1000109-EE               PAKISTAN                       4       379     16      4     12
3 months    ki1000109-EE               PAKISTAN                       5       379      0      0      0
3 months    ki1000109-EE               PAKISTAN                       6       379      0      0      0
3 months    ki1000109-EE               PAKISTAN                       7       379      0      0      0
3 months    ki1000109-EE               PAKISTAN                       8       379      0      0      0
3 months    ki1000109-EE               PAKISTAN                       9       379      0      0      0
3 months    ki1000109-EE               PAKISTAN                       10      379      4      3      1
3 months    ki1000109-EE               PAKISTAN                       11      379     70     21     49
3 months    ki1000109-EE               PAKISTAN                       12      379     85     35     50
3 months    ki1000109-ResPak           PAKISTAN                       1       276     11      6      5
3 months    ki1000109-ResPak           PAKISTAN                       2       276     12      8      4
3 months    ki1000109-ResPak           PAKISTAN                       3       276     20      9     11
3 months    ki1000109-ResPak           PAKISTAN                       4       276     27      9     18
3 months    ki1000109-ResPak           PAKISTAN                       5       276     52     25     27
3 months    ki1000109-ResPak           PAKISTAN                       6       276     49     19     30
3 months    ki1000109-ResPak           PAKISTAN                       7       276     34     11     23
3 months    ki1000109-ResPak           PAKISTAN                       8       276     37     24     13
3 months    ki1000109-ResPak           PAKISTAN                       9       276     20     16      4
3 months    ki1000109-ResPak           PAKISTAN                       10      276      6      4      2
3 months    ki1000109-ResPak           PAKISTAN                       11      276      3      0      3
3 months    ki1000109-ResPak           PAKISTAN                       12      276      5      4      1
3 months    ki1000304b-SAS-CompFeed    INDIA                          1       470     57     38     19
3 months    ki1000304b-SAS-CompFeed    INDIA                          2       470     42     30     12
3 months    ki1000304b-SAS-CompFeed    INDIA                          3       470     36     26     10
3 months    ki1000304b-SAS-CompFeed    INDIA                          4       470     27     23      4
3 months    ki1000304b-SAS-CompFeed    INDIA                          5       470     42     29     13
3 months    ki1000304b-SAS-CompFeed    INDIA                          6       470     52     34     18
3 months    ki1000304b-SAS-CompFeed    INDIA                          7       470      0      0      0
3 months    ki1000304b-SAS-CompFeed    INDIA                          8       470      0      0      0
3 months    ki1000304b-SAS-CompFeed    INDIA                          9       470      0      0      0
3 months    ki1000304b-SAS-CompFeed    INDIA                          10      470     82     51     31
3 months    ki1000304b-SAS-CompFeed    INDIA                          11      470     56     40     16
3 months    ki1000304b-SAS-CompFeed    INDIA                          12      470     76     43     33
3 months    ki1017093-NIH-Birth        BANGLADESH                     1       629     73     47     26
3 months    ki1017093-NIH-Birth        BANGLADESH                     2       629     58     46     12
3 months    ki1017093-NIH-Birth        BANGLADESH                     3       629     59     51      8
3 months    ki1017093-NIH-Birth        BANGLADESH                     4       629     53     40     13
3 months    ki1017093-NIH-Birth        BANGLADESH                     5       629     49     41      8
3 months    ki1017093-NIH-Birth        BANGLADESH                     6       629     50     39     11
3 months    ki1017093-NIH-Birth        BANGLADESH                     7       629     41     34      7
3 months    ki1017093-NIH-Birth        BANGLADESH                     8       629     41     34      7
3 months    ki1017093-NIH-Birth        BANGLADESH                     9       629     48     34     14
3 months    ki1017093-NIH-Birth        BANGLADESH                     10      629     49     39     10
3 months    ki1017093-NIH-Birth        BANGLADESH                     11      629     53     39     14
3 months    ki1017093-NIH-Birth        BANGLADESH                     12      629     55     45     10
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1      2393    170    151     19
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2      2393    178    158     20
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3      2393    164    152     12
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4      2393    190    167     23
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5      2393    185    164     21
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6      2393    166    152     14
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7      2393    218    198     20
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8      2393    231    210     21
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9      2393    216    191     25
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10     2393    249    226     23
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11     2393    221    196     25
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12     2393    205    184     21
3 months    ki1101329-Keneba           GAMBIA                         1      2296    235    178     57
3 months    ki1101329-Keneba           GAMBIA                         2      2296    207    169     38
3 months    ki1101329-Keneba           GAMBIA                         3      2296    251    209     42
3 months    ki1101329-Keneba           GAMBIA                         4      2296    155    121     34
3 months    ki1101329-Keneba           GAMBIA                         5      2296    159    125     34
3 months    ki1101329-Keneba           GAMBIA                         6      2296    133     97     36
3 months    ki1101329-Keneba           GAMBIA                         7      2296    104     73     31
3 months    ki1101329-Keneba           GAMBIA                         8      2296    192    140     52
3 months    ki1101329-Keneba           GAMBIA                         9      2296    206    150     56
3 months    ki1101329-Keneba           GAMBIA                         10     2296    261    181     80
3 months    ki1101329-Keneba           GAMBIA                         11     2296    196    146     50
3 months    ki1101329-Keneba           GAMBIA                         12     2296    197    145     52
3 months    ki1113344-GMS-Nepal        NEPAL                          1       593      0      0      0
3 months    ki1113344-GMS-Nepal        NEPAL                          2       593      0      0      0
3 months    ki1113344-GMS-Nepal        NEPAL                          3       593      0      0      0
3 months    ki1113344-GMS-Nepal        NEPAL                          4       593      0      0      0
3 months    ki1113344-GMS-Nepal        NEPAL                          5       593      0      0      0
3 months    ki1113344-GMS-Nepal        NEPAL                          6       593    128    111     17
3 months    ki1113344-GMS-Nepal        NEPAL                          7       593    230    191     39
3 months    ki1113344-GMS-Nepal        NEPAL                          8       593    235    197     38
3 months    ki1113344-GMS-Nepal        NEPAL                          9       593      0      0      0
3 months    ki1113344-GMS-Nepal        NEPAL                          10      593      0      0      0
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
3 months    ki1114097-CMIN             GUINEA-BISSAU                  1       563     65     53     12
3 months    ki1114097-CMIN             GUINEA-BISSAU                  2       563     55     41     14
3 months    ki1114097-CMIN             GUINEA-BISSAU                  3       563     51     43      8
3 months    ki1114097-CMIN             GUINEA-BISSAU                  4       563     34     30      4
3 months    ki1114097-CMIN             GUINEA-BISSAU                  5       563     36     33      3
3 months    ki1114097-CMIN             GUINEA-BISSAU                  6       563     35     31      4
3 months    ki1114097-CMIN             GUINEA-BISSAU                  7       563     48     45      3
3 months    ki1114097-CMIN             GUINEA-BISSAU                  8       563     40     34      6
3 months    ki1114097-CMIN             GUINEA-BISSAU                  9       563     63     52     11
3 months    ki1114097-CMIN             GUINEA-BISSAU                  10      563     53     45      8
3 months    ki1114097-CMIN             GUINEA-BISSAU                  11      563     36     31      5
3 months    ki1114097-CMIN             GUINEA-BISSAU                  12      563     47     38      9
3 months    ki1114097-CMIN             PERU                           1       632     41     41      0
3 months    ki1114097-CMIN             PERU                           2       632     67     63      4
3 months    ki1114097-CMIN             PERU                           3       632     68     64      4
3 months    ki1114097-CMIN             PERU                           4       632     60     51      9
3 months    ki1114097-CMIN             PERU                           5       632     61     54      7
3 months    ki1114097-CMIN             PERU                           6       632     56     50      6
3 months    ki1114097-CMIN             PERU                           7       632     46     40      6
3 months    ki1114097-CMIN             PERU                           8       632     61     57      4
3 months    ki1114097-CMIN             PERU                           9       632     37     32      5
3 months    ki1114097-CMIN             PERU                           10      632     49     44      5
3 months    ki1114097-CMIN             PERU                           11      632     36     34      2
3 months    ki1114097-CMIN             PERU                           12      632     50     48      2
3 months    ki1114097-CONTENT          PERU                           1       215     10     10      0
3 months    ki1114097-CONTENT          PERU                           2       215     18     16      2
3 months    ki1114097-CONTENT          PERU                           3       215     30     28      2
3 months    ki1114097-CONTENT          PERU                           4       215     19     14      5
3 months    ki1114097-CONTENT          PERU                           5       215     14     11      3
3 months    ki1114097-CONTENT          PERU                           6       215     13     11      2
3 months    ki1114097-CONTENT          PERU                           7       215     28     25      3
3 months    ki1114097-CONTENT          PERU                           8       215     23     17      6
3 months    ki1114097-CONTENT          PERU                           9       215     26     22      4
3 months    ki1114097-CONTENT          PERU                           10      215     14     10      4
3 months    ki1114097-CONTENT          PERU                           11      215      9      5      4
3 months    ki1114097-CONTENT          PERU                           12      215     11     11      0
3 months    ki1119695-PROBIT           BELARUS                        1      8125    501    459     42
3 months    ki1119695-PROBIT           BELARUS                        2      8125    501    465     36
3 months    ki1119695-PROBIT           BELARUS                        3      8125    580    534     46
3 months    ki1119695-PROBIT           BELARUS                        4      8125    548    509     39
3 months    ki1119695-PROBIT           BELARUS                        5      8125    609    573     36
3 months    ki1119695-PROBIT           BELARUS                        6      8125    624    582     42
3 months    ki1119695-PROBIT           BELARUS                        7      8125    767    718     49
3 months    ki1119695-PROBIT           BELARUS                        8      8125    802    757     45
3 months    ki1119695-PROBIT           BELARUS                        9      8125    737    684     53
3 months    ki1119695-PROBIT           BELARUS                        10     8125    820    743     77
3 months    ki1119695-PROBIT           BELARUS                        11     8125    761    697     64
3 months    ki1119695-PROBIT           BELARUS                        12     8125    875    802     73
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       1     14031   1358   1064    294
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       2     14031   1069    818    251
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       3     14031   1198    941    257
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       4     14031   1004    788    216
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       5     14031   1034    778    256
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       6     14031   1151    886    265
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       7     14031   1180    895    285
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       8     14031   1265    987    278
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       9     14031   1307   1099    208
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       10    14031   1048    862    186
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       11    14031   1196    973    223
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       12    14031   1221   1000    221
3 months    kiGH5241-JiVitA-3          BANGLADESH                     1     13368   1222    690    532
3 months    kiGH5241-JiVitA-3          BANGLADESH                     2     13368    999    579    420
3 months    kiGH5241-JiVitA-3          BANGLADESH                     3     13368   1179    752    427
3 months    kiGH5241-JiVitA-3          BANGLADESH                     4     13368    856    559    297
3 months    kiGH5241-JiVitA-3          BANGLADESH                     5     13368    670    436    234
3 months    kiGH5241-JiVitA-3          BANGLADESH                     6     13368    693    462    231
3 months    kiGH5241-JiVitA-3          BANGLADESH                     7     13368    763    524    239
3 months    kiGH5241-JiVitA-3          BANGLADESH                     8     13368   1088    677    411
3 months    kiGH5241-JiVitA-3          BANGLADESH                     9     13368   1413    862    551
3 months    kiGH5241-JiVitA-3          BANGLADESH                     10    13368   1460    831    629
3 months    kiGH5241-JiVitA-3          BANGLADESH                     11    13368   1513    800    713
3 months    kiGH5241-JiVitA-3          BANGLADESH                     12    13368   1512    804    708
3 months    kiGH5241-JiVitA-4          BANGLADESH                     1      1156      0      0      0
3 months    kiGH5241-JiVitA-4          BANGLADESH                     2      1156    133     91     42
3 months    kiGH5241-JiVitA-4          BANGLADESH                     3      1156    205    148     57
3 months    kiGH5241-JiVitA-4          BANGLADESH                     4      1156    178    127     51
3 months    kiGH5241-JiVitA-4          BANGLADESH                     5      1156    171    121     50
3 months    kiGH5241-JiVitA-4          BANGLADESH                     6      1156    117     78     39
3 months    kiGH5241-JiVitA-4          BANGLADESH                     7      1156    133    106     27
3 months    kiGH5241-JiVitA-4          BANGLADESH                     8      1156    119     91     28
3 months    kiGH5241-JiVitA-4          BANGLADESH                     9      1156     72     56     16
3 months    kiGH5241-JiVitA-4          BANGLADESH                     10     1156     28     22      6
3 months    kiGH5241-JiVitA-4          BANGLADESH                     11     1156      0      0      0
3 months    kiGH5241-JiVitA-4          BANGLADESH                     12     1156      0      0      0
6 months    ki0047075b-MAL-ED          BANGLADESH                     1       246     18     14      4
6 months    ki0047075b-MAL-ED          BANGLADESH                     2       246     21     10     11
6 months    ki0047075b-MAL-ED          BANGLADESH                     3       246     23     11     12
6 months    ki0047075b-MAL-ED          BANGLADESH                     4       246     22     21      1
6 months    ki0047075b-MAL-ED          BANGLADESH                     5       246     21     12      9
6 months    ki0047075b-MAL-ED          BANGLADESH                     6       246     10      6      4
6 months    ki0047075b-MAL-ED          BANGLADESH                     7       246     18     10      8
6 months    ki0047075b-MAL-ED          BANGLADESH                     8       246     25     16      9
6 months    ki0047075b-MAL-ED          BANGLADESH                     9       246     22     16      6
6 months    ki0047075b-MAL-ED          BANGLADESH                     10      246     22     14      8
6 months    ki0047075b-MAL-ED          BANGLADESH                     11      246     16     12      4
6 months    ki0047075b-MAL-ED          BANGLADESH                     12      246     28     20      8
6 months    ki0047075b-MAL-ED          BRAZIL                         1       218     15     13      2
6 months    ki0047075b-MAL-ED          BRAZIL                         2       218     25     20      5
6 months    ki0047075b-MAL-ED          BRAZIL                         3       218     16     13      3
6 months    ki0047075b-MAL-ED          BRAZIL                         4       218     11     10      1
6 months    ki0047075b-MAL-ED          BRAZIL                         5       218     22     18      4
6 months    ki0047075b-MAL-ED          BRAZIL                         6       218      8      6      2
6 months    ki0047075b-MAL-ED          BRAZIL                         7       218     16     12      4
6 months    ki0047075b-MAL-ED          BRAZIL                         8       218     19     14      5
6 months    ki0047075b-MAL-ED          BRAZIL                         9       218     30     23      7
6 months    ki0047075b-MAL-ED          BRAZIL                         10      218     21     19      2
6 months    ki0047075b-MAL-ED          BRAZIL                         11      218     22     21      1
6 months    ki0047075b-MAL-ED          BRAZIL                         12      218     13      9      4
6 months    ki0047075b-MAL-ED          INDIA                          1       240     20     11      9
6 months    ki0047075b-MAL-ED          INDIA                          2       240     19     18      1
6 months    ki0047075b-MAL-ED          INDIA                          3       240     22     15      7
6 months    ki0047075b-MAL-ED          INDIA                          4       240     15     10      5
6 months    ki0047075b-MAL-ED          INDIA                          5       240      8      6      2
6 months    ki0047075b-MAL-ED          INDIA                          6       240     19     16      3
6 months    ki0047075b-MAL-ED          INDIA                          7       240     24     13     11
6 months    ki0047075b-MAL-ED          INDIA                          8       240     23     14      9
6 months    ki0047075b-MAL-ED          INDIA                          9       240     20     13      7
6 months    ki0047075b-MAL-ED          INDIA                          10      240     26     15     11
6 months    ki0047075b-MAL-ED          INDIA                          11      240     25     14     11
6 months    ki0047075b-MAL-ED          INDIA                          12      240     19     11      8
6 months    ki0047075b-MAL-ED          NEPAL                          1       238     20     14      6
6 months    ki0047075b-MAL-ED          NEPAL                          2       238     19     17      2
6 months    ki0047075b-MAL-ED          NEPAL                          3       238     17     14      3
6 months    ki0047075b-MAL-ED          NEPAL                          4       238     22     19      3
6 months    ki0047075b-MAL-ED          NEPAL                          5       238     22     17      5
6 months    ki0047075b-MAL-ED          NEPAL                          6       238     18     18      0
6 months    ki0047075b-MAL-ED          NEPAL                          7       238     18     15      3
6 months    ki0047075b-MAL-ED          NEPAL                          8       238     24     20      4
6 months    ki0047075b-MAL-ED          NEPAL                          9       238     16     14      2
6 months    ki0047075b-MAL-ED          NEPAL                          10      238     21     18      3
6 months    ki0047075b-MAL-ED          NEPAL                          11      238     24     18      6
6 months    ki0047075b-MAL-ED          NEPAL                          12      238     17     13      4
6 months    ki0047075b-MAL-ED          PERU                           1       282     40     22     18
6 months    ki0047075b-MAL-ED          PERU                           2       282     21     10     11
6 months    ki0047075b-MAL-ED          PERU                           3       282     22     13      9
6 months    ki0047075b-MAL-ED          PERU                           4       282     20     13      7
6 months    ki0047075b-MAL-ED          PERU                           5       282     27     15     12
6 months    ki0047075b-MAL-ED          PERU                           6       282     15      8      7
6 months    ki0047075b-MAL-ED          PERU                           7       282     23     12     11
6 months    ki0047075b-MAL-ED          PERU                           8       282     16     12      4
6 months    ki0047075b-MAL-ED          PERU                           9       282     23     14      9
6 months    ki0047075b-MAL-ED          PERU                           10      282     22     14      8
6 months    ki0047075b-MAL-ED          PERU                           11      282     32     12     20
6 months    ki0047075b-MAL-ED          PERU                           12      282     21     12      9
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1       271     38     24     14
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2       271     24     15      9
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3       271     15     11      4
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4       271     13     10      3
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   5       271     14     11      3
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   6       271     19     12      7
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   7       271     26     13     13
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   8       271     10      5      5
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   9       271     22     17      5
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   10      271     27     17     10
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   11      271     28     12     16
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   12      271     35     20     15
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1       253     20     13      7
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2       253     30     17     13
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3       253     18      7     11
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4       253      9      4      5
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5       253     20     14      6
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6       253     19     12      7
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7       253     23     13     10
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8       253     12      8      4
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9       253     22     13      9
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10      253     23      8     15
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11      253     27     20      7
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12      253     30     20     10
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
6 months    ki1000108-IRC              INDIA                          1       408     37     22     15
6 months    ki1000108-IRC              INDIA                          2       408     28     13     15
6 months    ki1000108-IRC              INDIA                          3       408     27     16     11
6 months    ki1000108-IRC              INDIA                          4       408     21     11     10
6 months    ki1000108-IRC              INDIA                          5       408     21     11     10
6 months    ki1000108-IRC              INDIA                          6       408     37     23     14
6 months    ki1000108-IRC              INDIA                          7       408     36     20     16
6 months    ki1000108-IRC              INDIA                          8       408     44     31     13
6 months    ki1000108-IRC              INDIA                          9       408     27     15     12
6 months    ki1000108-IRC              INDIA                          10      408     38     25     13
6 months    ki1000108-IRC              INDIA                          11      408     40     25     15
6 months    ki1000108-IRC              INDIA                          12      408     52     23     29
6 months    ki1000109-EE               PAKISTAN                       1       373     93     18     75
6 months    ki1000109-EE               PAKISTAN                       2       373     65     18     47
6 months    ki1000109-EE               PAKISTAN                       3       373     42     18     24
6 months    ki1000109-EE               PAKISTAN                       4       373     15      2     13
6 months    ki1000109-EE               PAKISTAN                       5       373      0      0      0
6 months    ki1000109-EE               PAKISTAN                       6       373      0      0      0
6 months    ki1000109-EE               PAKISTAN                       7       373      0      0      0
6 months    ki1000109-EE               PAKISTAN                       8       373      0      0      0
6 months    ki1000109-EE               PAKISTAN                       9       373      0      0      0
6 months    ki1000109-EE               PAKISTAN                       10      373      4      2      2
6 months    ki1000109-EE               PAKISTAN                       11      373     70     18     52
6 months    ki1000109-EE               PAKISTAN                       12      373     84     20     64
6 months    ki1000109-ResPak           PAKISTAN                       1       255     10      3      7
6 months    ki1000109-ResPak           PAKISTAN                       2       255     12      6      6
6 months    ki1000109-ResPak           PAKISTAN                       3       255     21      8     13
6 months    ki1000109-ResPak           PAKISTAN                       4       255     23      6     17
6 months    ki1000109-ResPak           PAKISTAN                       5       255     50     22     28
6 months    ki1000109-ResPak           PAKISTAN                       6       255     45     15     30
6 months    ki1000109-ResPak           PAKISTAN                       7       255     28      7     21
6 months    ki1000109-ResPak           PAKISTAN                       8       255     33     19     14
6 months    ki1000109-ResPak           PAKISTAN                       9       255     20     13      7
6 months    ki1000109-ResPak           PAKISTAN                       10      255      5      3      2
6 months    ki1000109-ResPak           PAKISTAN                       11      255      3      0      3
6 months    ki1000109-ResPak           PAKISTAN                       12      255      5      2      3
6 months    ki1000304b-SAS-CompFeed    INDIA                          1       367     43     25     18
6 months    ki1000304b-SAS-CompFeed    INDIA                          2       367     29     20      9
6 months    ki1000304b-SAS-CompFeed    INDIA                          3       367     29     18     11
6 months    ki1000304b-SAS-CompFeed    INDIA                          4       367     24     18      6
6 months    ki1000304b-SAS-CompFeed    INDIA                          5       367     35     20     15
6 months    ki1000304b-SAS-CompFeed    INDIA                          6       367     46     23     23
6 months    ki1000304b-SAS-CompFeed    INDIA                          7       367      0      0      0
6 months    ki1000304b-SAS-CompFeed    INDIA                          8       367      0      0      0
6 months    ki1000304b-SAS-CompFeed    INDIA                          9       367      0      0      0
6 months    ki1000304b-SAS-CompFeed    INDIA                          10      367     64     36     28
6 months    ki1000304b-SAS-CompFeed    INDIA                          11      367     38     22     16
6 months    ki1000304b-SAS-CompFeed    INDIA                          12      367     59     27     32
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1       105      7      4      3
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2       105      9      6      3
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3       105      6      5      1
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          4       105      1      1      0
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          5       105      3      3      0
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          6       105      6      2      4
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          7       105     10      6      4
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          8       105     17     10      7
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          9       105     17     11      6
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          10      105     13      7      6
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          11      105      6      3      3
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          12      105     10      4      6
6 months    ki1017093-NIH-Birth        BANGLADESH                     1       551     57     26     31
6 months    ki1017093-NIH-Birth        BANGLADESH                     2       551     43     29     14
6 months    ki1017093-NIH-Birth        BANGLADESH                     3       551     53     40     13
6 months    ki1017093-NIH-Birth        BANGLADESH                     4       551     46     31     15
6 months    ki1017093-NIH-Birth        BANGLADESH                     5       551     46     33     13
6 months    ki1017093-NIH-Birth        BANGLADESH                     6       551     45     24     21
6 months    ki1017093-NIH-Birth        BANGLADESH                     7       551     38     22     16
6 months    ki1017093-NIH-Birth        BANGLADESH                     8       551     37     24     13
6 months    ki1017093-NIH-Birth        BANGLADESH                     9       551     43     25     18
6 months    ki1017093-NIH-Birth        BANGLADESH                     10      551     47     32     15
6 months    ki1017093-NIH-Birth        BANGLADESH                     11      551     52     28     24
6 months    ki1017093-NIH-Birth        BANGLADESH                     12      551     44     36      8
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1      2234    160    135     25
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2      2234    165    135     30
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3      2234    156    130     26
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4      2234    171    134     37
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5      2234    170    132     38
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6      2234    158    129     29
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7      2234    207    160     47
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8      2234    213    168     45
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9      2234    206    160     46
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10     2234    226    179     47
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11     2234    213    169     44
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12     2234    189    156     33
6 months    ki1101329-Keneba           GAMBIA                         1      2264    228    159     69
6 months    ki1101329-Keneba           GAMBIA                         2      2264    199    143     56
6 months    ki1101329-Keneba           GAMBIA                         3      2264    233    168     65
6 months    ki1101329-Keneba           GAMBIA                         4      2264    159    110     49
6 months    ki1101329-Keneba           GAMBIA                         5      2264    161    107     54
6 months    ki1101329-Keneba           GAMBIA                         6      2264    130     88     42
6 months    ki1101329-Keneba           GAMBIA                         7      2264    100     61     39
6 months    ki1101329-Keneba           GAMBIA                         8      2264    186    124     62
6 months    ki1101329-Keneba           GAMBIA                         9      2264    194    129     65
6 months    ki1101329-Keneba           GAMBIA                         10     2264    271    171    100
6 months    ki1101329-Keneba           GAMBIA                         11     2264    193    130     63
6 months    ki1101329-Keneba           GAMBIA                         12     2264    210    143     67
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1       295     29     16     13
6 months    ki1112895-Guatemala BSC    GUATEMALA                      2       295     23     20      3
6 months    ki1112895-Guatemala BSC    GUATEMALA                      3       295     25     16      9
6 months    ki1112895-Guatemala BSC    GUATEMALA                      4       295     30     19     11
6 months    ki1112895-Guatemala BSC    GUATEMALA                      5       295     35     23     12
6 months    ki1112895-Guatemala BSC    GUATEMALA                      6       295     25     16      9
6 months    ki1112895-Guatemala BSC    GUATEMALA                      7       295     21     15      6
6 months    ki1112895-Guatemala BSC    GUATEMALA                      8       295     15     10      5
6 months    ki1112895-Guatemala BSC    GUATEMALA                      9       295     15      9      6
6 months    ki1112895-Guatemala BSC    GUATEMALA                      10      295     26     21      5
6 months    ki1112895-Guatemala BSC    GUATEMALA                      11      295     20     13      7
6 months    ki1112895-Guatemala BSC    GUATEMALA                      12      295     31     24      7
6 months    ki1113344-GMS-Nepal        NEPAL                          1       567      0      0      0
6 months    ki1113344-GMS-Nepal        NEPAL                          2       567      0      0      0
6 months    ki1113344-GMS-Nepal        NEPAL                          3       567      0      0      0
6 months    ki1113344-GMS-Nepal        NEPAL                          4       567      1      0      1
6 months    ki1113344-GMS-Nepal        NEPAL                          5       567      0      0      0
6 months    ki1113344-GMS-Nepal        NEPAL                          6       567    118     87     31
6 months    ki1113344-GMS-Nepal        NEPAL                          7       567    221    155     66
6 months    ki1113344-GMS-Nepal        NEPAL                          8       567    227    163     64
6 months    ki1113344-GMS-Nepal        NEPAL                          9       567      0      0      0
6 months    ki1113344-GMS-Nepal        NEPAL                          10      567      0      0      0
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
6 months    ki1114097-CMIN             GUINEA-BISSAU                  1       832     96     82     14
6 months    ki1114097-CMIN             GUINEA-BISSAU                  2       832     66     53     13
6 months    ki1114097-CMIN             GUINEA-BISSAU                  3       832     56     48      8
6 months    ki1114097-CMIN             GUINEA-BISSAU                  4       832     50     47      3
6 months    ki1114097-CMIN             GUINEA-BISSAU                  5       832     61     51     10
6 months    ki1114097-CMIN             GUINEA-BISSAU                  6       832     48     44      4
6 months    ki1114097-CMIN             GUINEA-BISSAU                  7       832     46     40      6
6 months    ki1114097-CMIN             GUINEA-BISSAU                  8       832     51     42      9
6 months    ki1114097-CMIN             GUINEA-BISSAU                  9       832     95     74     21
6 months    ki1114097-CMIN             GUINEA-BISSAU                  10      832     89     75     14
6 months    ki1114097-CMIN             GUINEA-BISSAU                  11      832     81     72      9
6 months    ki1114097-CMIN             GUINEA-BISSAU                  12      832     93     80     13
6 months    ki1114097-CMIN             PERU                           1       673     42     41      1
6 months    ki1114097-CMIN             PERU                           2       673     61     51     10
6 months    ki1114097-CMIN             PERU                           3       673     70     61      9
6 months    ki1114097-CMIN             PERU                           4       673     61     49     12
6 months    ki1114097-CMIN             PERU                           5       673     62     54      8
6 months    ki1114097-CMIN             PERU                           6       673     58     50      8
6 months    ki1114097-CMIN             PERU                           7       673     52     46      6
6 months    ki1114097-CMIN             PERU                           8       673     73     66      7
6 months    ki1114097-CMIN             PERU                           9       673     55     45     10
6 months    ki1114097-CMIN             PERU                           10      673     53     44      9
6 months    ki1114097-CMIN             PERU                           11      673     41     38      3
6 months    ki1114097-CMIN             PERU                           12      673     45     41      4
6 months    ki1114097-CONTENT          PERU                           1       215     10     10      0
6 months    ki1114097-CONTENT          PERU                           2       215     18     15      3
6 months    ki1114097-CONTENT          PERU                           3       215     30     26      4
6 months    ki1114097-CONTENT          PERU                           4       215     19     10      9
6 months    ki1114097-CONTENT          PERU                           5       215     14     11      3
6 months    ki1114097-CONTENT          PERU                           6       215     13      8      5
6 months    ki1114097-CONTENT          PERU                           7       215     28     23      5
6 months    ki1114097-CONTENT          PERU                           8       215     23     16      7
6 months    ki1114097-CONTENT          PERU                           9       215     26     22      4
6 months    ki1114097-CONTENT          PERU                           10      215     14     10      4
6 months    ki1114097-CONTENT          PERU                           11      215      9      5      4
6 months    ki1114097-CONTENT          PERU                           12      215     11     11      0
6 months    ki1119695-PROBIT           BELARUS                        1      7807    474    414     60
6 months    ki1119695-PROBIT           BELARUS                        2      7807    453    403     50
6 months    ki1119695-PROBIT           BELARUS                        3      7807    558    497     61
6 months    ki1119695-PROBIT           BELARUS                        4      7807    531    488     43
6 months    ki1119695-PROBIT           BELARUS                        5      7807    583    533     50
6 months    ki1119695-PROBIT           BELARUS                        6      7807    606    546     60
6 months    ki1119695-PROBIT           BELARUS                        7      7807    751    680     71
6 months    ki1119695-PROBIT           BELARUS                        8      7807    779    706     73
6 months    ki1119695-PROBIT           BELARUS                        9      7807    719    647     72
6 months    ki1119695-PROBIT           BELARUS                        10     7807    793    700     93
6 months    ki1119695-PROBIT           BELARUS                        11     7807    735    643     92
6 months    ki1119695-PROBIT           BELARUS                        12     7807    825    736     89
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1      9102    893    637    256
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2      9102    624    417    207
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3      9102    790    573    217
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       4      9102    661    473    188
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       5      9102    708    469    239
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       6      9102    798    499    299
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       7      9102    733    490    243
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       8      9102    836    573    263
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       9      9102    783    597    186
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       10     9102    654    473    181
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       11     9102    789    591    198
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       12     9102    833    629    204
6 months    ki1148112-LCNI-5           MALAWI                         1       272     29     18     11
6 months    ki1148112-LCNI-5           MALAWI                         2       272      4      4      0
6 months    ki1148112-LCNI-5           MALAWI                         3       272      4      2      2
6 months    ki1148112-LCNI-5           MALAWI                         4       272      5      2      3
6 months    ki1148112-LCNI-5           MALAWI                         5       272     10      9      1
6 months    ki1148112-LCNI-5           MALAWI                         6       272      5      2      3
6 months    ki1148112-LCNI-5           MALAWI                         7       272      3      2      1
6 months    ki1148112-LCNI-5           MALAWI                         8       272     32     25      7
6 months    ki1148112-LCNI-5           MALAWI                         9       272     53     33     20
6 months    ki1148112-LCNI-5           MALAWI                         10      272     69     40     29
6 months    ki1148112-LCNI-5           MALAWI                         11      272     30     19     11
6 months    ki1148112-LCNI-5           MALAWI                         12      272     28     19      9
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1      9600    498    283    215
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2      9600    360    200    160
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3      9600   1085    659    426
6 months    kiGH5241-JiVitA-3          BANGLADESH                     4      9600    479    304    175
6 months    kiGH5241-JiVitA-3          BANGLADESH                     5      9600    613    383    230
6 months    kiGH5241-JiVitA-3          BANGLADESH                     6      9600    621    404    217
6 months    kiGH5241-JiVitA-3          BANGLADESH                     7      9600    670    446    224
6 months    kiGH5241-JiVitA-3          BANGLADESH                     8      9600    877    517    360
6 months    kiGH5241-JiVitA-3          BANGLADESH                     9      9600    980    564    416
6 months    kiGH5241-JiVitA-3          BANGLADESH                     10     9600   1327    689    638
6 months    kiGH5241-JiVitA-3          BANGLADESH                     11     9600   1376    692    684
6 months    kiGH5241-JiVitA-3          BANGLADESH                     12     9600    714    375    339
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1      1181      0      0      0
6 months    kiGH5241-JiVitA-4          BANGLADESH                     2      1181    153     98     55
6 months    kiGH5241-JiVitA-4          BANGLADESH                     3      1181    226    156     70
6 months    kiGH5241-JiVitA-4          BANGLADESH                     4      1181    179    116     63
6 months    kiGH5241-JiVitA-4          BANGLADESH                     5      1181    139     84     55
6 months    kiGH5241-JiVitA-4          BANGLADESH                     6      1181    102     66     36
6 months    kiGH5241-JiVitA-4          BANGLADESH                     7      1181    142    104     38
6 months    kiGH5241-JiVitA-4          BANGLADESH                     8      1181    124     84     40
6 months    kiGH5241-JiVitA-4          BANGLADESH                     9      1181     80     60     20
6 months    kiGH5241-JiVitA-4          BANGLADESH                     10     1181     36     26     10
6 months    kiGH5241-JiVitA-4          BANGLADESH                     11     1181      0      0      0
6 months    kiGH5241-JiVitA-4          BANGLADESH                     12     1181      0      0      0
12 months   ki0047075b-MAL-ED          BANGLADESH                     1       239     18     14      4
12 months   ki0047075b-MAL-ED          BANGLADESH                     2       239     20      7     13
12 months   ki0047075b-MAL-ED          BANGLADESH                     3       239     22     10     12
12 months   ki0047075b-MAL-ED          BANGLADESH                     4       239     22     17      5
12 months   ki0047075b-MAL-ED          BANGLADESH                     5       239     21      9     12
12 months   ki0047075b-MAL-ED          BANGLADESH                     6       239     10      6      4
12 months   ki0047075b-MAL-ED          BANGLADESH                     7       239     18     10      8
12 months   ki0047075b-MAL-ED          BANGLADESH                     8       239     23     12     11
12 months   ki0047075b-MAL-ED          BANGLADESH                     9       239     20     12      8
12 months   ki0047075b-MAL-ED          BANGLADESH                     10      239     22     12     10
12 months   ki0047075b-MAL-ED          BANGLADESH                     11      239     15      9      6
12 months   ki0047075b-MAL-ED          BANGLADESH                     12      239     28     18     10
12 months   ki0047075b-MAL-ED          BRAZIL                         1       207     15     13      2
12 months   ki0047075b-MAL-ED          BRAZIL                         2       207     22     17      5
12 months   ki0047075b-MAL-ED          BRAZIL                         3       207     16     13      3
12 months   ki0047075b-MAL-ED          BRAZIL                         4       207     11     10      1
12 months   ki0047075b-MAL-ED          BRAZIL                         5       207     21     16      5
12 months   ki0047075b-MAL-ED          BRAZIL                         6       207      8      6      2
12 months   ki0047075b-MAL-ED          BRAZIL                         7       207     16     10      6
12 months   ki0047075b-MAL-ED          BRAZIL                         8       207     16     11      5
12 months   ki0047075b-MAL-ED          BRAZIL                         9       207     30     23      7
12 months   ki0047075b-MAL-ED          BRAZIL                         10      207     19     18      1
12 months   ki0047075b-MAL-ED          BRAZIL                         11      207     21     20      1
12 months   ki0047075b-MAL-ED          BRAZIL                         12      207     12      8      4
12 months   ki0047075b-MAL-ED          INDIA                          1       235     19      7     12
12 months   ki0047075b-MAL-ED          INDIA                          2       235     18     13      5
12 months   ki0047075b-MAL-ED          INDIA                          3       235     22     13      9
12 months   ki0047075b-MAL-ED          INDIA                          4       235     14      7      7
12 months   ki0047075b-MAL-ED          INDIA                          5       235      8      4      4
12 months   ki0047075b-MAL-ED          INDIA                          6       235     19     13      6
12 months   ki0047075b-MAL-ED          INDIA                          7       235     23     11     12
12 months   ki0047075b-MAL-ED          INDIA                          8       235     22     10     12
12 months   ki0047075b-MAL-ED          INDIA                          9       235     20     11      9
12 months   ki0047075b-MAL-ED          INDIA                          10      235     26     13     13
12 months   ki0047075b-MAL-ED          INDIA                          11      235     25     11     14
12 months   ki0047075b-MAL-ED          INDIA                          12      235     19     10      9
12 months   ki0047075b-MAL-ED          NEPAL                          1       235     20     14      6
12 months   ki0047075b-MAL-ED          NEPAL                          2       235     19     14      5
12 months   ki0047075b-MAL-ED          NEPAL                          3       235     17     13      4
12 months   ki0047075b-MAL-ED          NEPAL                          4       235     22     18      4
12 months   ki0047075b-MAL-ED          NEPAL                          5       235     20     16      4
12 months   ki0047075b-MAL-ED          NEPAL                          6       235     18     17      1
12 months   ki0047075b-MAL-ED          NEPAL                          7       235     18     15      3
12 months   ki0047075b-MAL-ED          NEPAL                          8       235     24     20      4
12 months   ki0047075b-MAL-ED          NEPAL                          9       235     15     13      2
12 months   ki0047075b-MAL-ED          NEPAL                          10      235     21     18      3
12 months   ki0047075b-MAL-ED          NEPAL                          11      235     24     17      7
12 months   ki0047075b-MAL-ED          NEPAL                          12      235     17     13      4
12 months   ki0047075b-MAL-ED          PERU                           1       270     38     18     20
12 months   ki0047075b-MAL-ED          PERU                           2       270     19      8     11
12 months   ki0047075b-MAL-ED          PERU                           3       270     22     13      9
12 months   ki0047075b-MAL-ED          PERU                           4       270     19     10      9
12 months   ki0047075b-MAL-ED          PERU                           5       270     26     13     13
12 months   ki0047075b-MAL-ED          PERU                           6       270     15      8      7
12 months   ki0047075b-MAL-ED          PERU                           7       270     22      9     13
12 months   ki0047075b-MAL-ED          PERU                           8       270     16     10      6
12 months   ki0047075b-MAL-ED          PERU                           9       270     23     11     12
12 months   ki0047075b-MAL-ED          PERU                           10      270     19     11      8
12 months   ki0047075b-MAL-ED          PERU                           11      270     32     11     21
12 months   ki0047075b-MAL-ED          PERU                           12      270     19      8     11
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1       259     37     19     18
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2       259     24     12     12
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3       259     15     11      4
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4       259     13      9      4
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5       259     13     10      3
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6       259     18      9      9
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7       259     23     10     13
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8       259      9      4      5
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9       259     19     13      6
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10      259     27     15     12
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11      259     26      8     18
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12      259     35     17     18
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1       245     17      9      8
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2       245     30      7     23
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3       245     18      5     13
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4       245      9      3      6
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5       245     19      6     13
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6       245     19      7     12
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7       245     23     11     12
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8       245     12      5      7
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9       245     21      6     15
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10      245     22      4     18
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11      245     27     11     16
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12      245     28     10     18
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
12 months   ki1000108-IRC              INDIA                          1       408     38     18     20
12 months   ki1000108-IRC              INDIA                          2       408     28     11     17
12 months   ki1000108-IRC              INDIA                          3       408     27     14     13
12 months   ki1000108-IRC              INDIA                          4       408     21      8     13
12 months   ki1000108-IRC              INDIA                          5       408     21      7     14
12 months   ki1000108-IRC              INDIA                          6       408     37     21     16
12 months   ki1000108-IRC              INDIA                          7       408     36     19     17
12 months   ki1000108-IRC              INDIA                          8       408     44     26     18
12 months   ki1000108-IRC              INDIA                          9       408     27     13     14
12 months   ki1000108-IRC              INDIA                          10      408     38     22     16
12 months   ki1000108-IRC              INDIA                          11      408     40     21     19
12 months   ki1000108-IRC              INDIA                          12      408     51     21     30
12 months   ki1000109-EE               PAKISTAN                       1       373     91     13     78
12 months   ki1000109-EE               PAKISTAN                       2       373     66     12     54
12 months   ki1000109-EE               PAKISTAN                       3       373     41     10     31
12 months   ki1000109-EE               PAKISTAN                       4       373     16      2     14
12 months   ki1000109-EE               PAKISTAN                       5       373      0      0      0
12 months   ki1000109-EE               PAKISTAN                       6       373      0      0      0
12 months   ki1000109-EE               PAKISTAN                       7       373      0      0      0
12 months   ki1000109-EE               PAKISTAN                       8       373      0      0      0
12 months   ki1000109-EE               PAKISTAN                       9       373      0      0      0
12 months   ki1000109-EE               PAKISTAN                       10      373      4      1      3
12 months   ki1000109-EE               PAKISTAN                       11      373     70     14     56
12 months   ki1000109-EE               PAKISTAN                       12      373     85     13     72
12 months   ki1000109-ResPak           PAKISTAN                       1       230     10      2      8
12 months   ki1000109-ResPak           PAKISTAN                       2       230     11      4      7
12 months   ki1000109-ResPak           PAKISTAN                       3       230     20      7     13
12 months   ki1000109-ResPak           PAKISTAN                       4       230     16      3     13
12 months   ki1000109-ResPak           PAKISTAN                       5       230     46     19     27
12 months   ki1000109-ResPak           PAKISTAN                       6       230     40     13     27
12 months   ki1000109-ResPak           PAKISTAN                       7       230     26      4     22
12 months   ki1000109-ResPak           PAKISTAN                       8       230     30     16     14
12 months   ki1000109-ResPak           PAKISTAN                       9       230     20     12      8
12 months   ki1000109-ResPak           PAKISTAN                       10      230      5      3      2
12 months   ki1000109-ResPak           PAKISTAN                       11      230      1      0      1
12 months   ki1000109-ResPak           PAKISTAN                       12      230      5      2      3
12 months   ki1000304b-SAS-CompFeed    INDIA                          1       425     49     16     33
12 months   ki1000304b-SAS-CompFeed    INDIA                          2       425     37     19     18
12 months   ki1000304b-SAS-CompFeed    INDIA                          3       425     32     18     14
12 months   ki1000304b-SAS-CompFeed    INDIA                          4       425     26     13     13
12 months   ki1000304b-SAS-CompFeed    INDIA                          5       425     40     17     23
12 months   ki1000304b-SAS-CompFeed    INDIA                          6       425     49     23     26
12 months   ki1000304b-SAS-CompFeed    INDIA                          7       425      0      0      0
12 months   ki1000304b-SAS-CompFeed    INDIA                          8       425      0      0      0
12 months   ki1000304b-SAS-CompFeed    INDIA                          9       425      0      0      0
12 months   ki1000304b-SAS-CompFeed    INDIA                          10      425     75     26     49
12 months   ki1000304b-SAS-CompFeed    INDIA                          11      425     46     16     30
12 months   ki1000304b-SAS-CompFeed    INDIA                          12      425     71     27     44
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          1        99      6      0      6
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          2        99      9      2      7
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          3        99      6      1      5
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          4        99      1      0      1
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          5        99      3      0      3
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          6        99      5      1      4
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          7        99     10      2      8
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          8        99     16      4     12
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          9        99     17      1     16
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          10       99     11      2      9
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          11       99      5      1      4
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          12       99     10      1      9
12 months   ki1017093-NIH-Birth        BANGLADESH                     1       541     54     19     35
12 months   ki1017093-NIH-Birth        BANGLADESH                     2       541     49     22     27
12 months   ki1017093-NIH-Birth        BANGLADESH                     3       541     51     29     22
12 months   ki1017093-NIH-Birth        BANGLADESH                     4       541     43     26     17
12 months   ki1017093-NIH-Birth        BANGLADESH                     5       541     44     25     19
12 months   ki1017093-NIH-Birth        BANGLADESH                     6       541     44     18     26
12 months   ki1017093-NIH-Birth        BANGLADESH                     7       541     39     19     20
12 months   ki1017093-NIH-Birth        BANGLADESH                     8       541     34     16     18
12 months   ki1017093-NIH-Birth        BANGLADESH                     9       541     41     17     24
12 months   ki1017093-NIH-Birth        BANGLADESH                     10      541     43     24     19
12 months   ki1017093-NIH-Birth        BANGLADESH                     11      541     48     21     27
12 months   ki1017093-NIH-Birth        BANGLADESH                     12      541     51     29     22
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1      1996    136     97     39
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2      1996    149    104     45
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3      1996    136     95     41
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4      1996    146     90     56
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5      1996    146     96     50
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6      1996    139     93     46
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7      1996    194    126     68
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8      1996    202    142     60
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9      1996    184    125     59
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10     1996    208    153     55
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11     1996    189    124     65
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12     1996    167    118     49
12 months   ki1101329-Keneba           GAMBIA                         1      2384    231    135     96
12 months   ki1101329-Keneba           GAMBIA                         2      2384    217    135     82
12 months   ki1101329-Keneba           GAMBIA                         3      2384    245    153     92
12 months   ki1101329-Keneba           GAMBIA                         4      2384    156     94     62
12 months   ki1101329-Keneba           GAMBIA                         5      2384    173     99     74
12 months   ki1101329-Keneba           GAMBIA                         6      2384    140     80     60
12 months   ki1101329-Keneba           GAMBIA                         7      2384    112     64     48
12 months   ki1101329-Keneba           GAMBIA                         8      2384    204    127     77
12 months   ki1101329-Keneba           GAMBIA                         9      2384    205    116     89
12 months   ki1101329-Keneba           GAMBIA                         10     2384    279    157    122
12 months   ki1101329-Keneba           GAMBIA                         11     2384    209    129     80
12 months   ki1101329-Keneba           GAMBIA                         12     2384    213    124     89
12 months   ki1112895-Guatemala BSC    GUATEMALA                      1       277     28      9     19
12 months   ki1112895-Guatemala BSC    GUATEMALA                      2       277     23     16      7
12 months   ki1112895-Guatemala BSC    GUATEMALA                      3       277     27     13     14
12 months   ki1112895-Guatemala BSC    GUATEMALA                      4       277     30     16     14
12 months   ki1112895-Guatemala BSC    GUATEMALA                      5       277     27     13     14
12 months   ki1112895-Guatemala BSC    GUATEMALA                      6       277     19      8     11
12 months   ki1112895-Guatemala BSC    GUATEMALA                      7       277     20     11      9
12 months   ki1112895-Guatemala BSC    GUATEMALA                      8       277     12      5      7
12 months   ki1112895-Guatemala BSC    GUATEMALA                      9       277     14      5      9
12 months   ki1112895-Guatemala BSC    GUATEMALA                      10      277     27     15     12
12 months   ki1112895-Guatemala BSC    GUATEMALA                      11      277     22     10     12
12 months   ki1112895-Guatemala BSC    GUATEMALA                      12      277     28     11     17
12 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1       796     72     53     19
12 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2       796     48     43      5
12 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   3       796     48     38     10
12 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   4       796     38     30      8
12 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   5       796     58     45     13
12 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   6       796     46     40      6
12 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   7       796     56     43     13
12 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   8       796     82     60     22
12 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   9       796     92     72     20
12 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   10      796     91     76     15
12 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   11      796     74     58     16
12 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   12      796     91     69     22
12 months   ki1113344-GMS-Nepal        NEPAL                          1       582      0      0      0
12 months   ki1113344-GMS-Nepal        NEPAL                          2       582      0      0      0
12 months   ki1113344-GMS-Nepal        NEPAL                          3       582      0      0      0
12 months   ki1113344-GMS-Nepal        NEPAL                          4       582      1      0      1
12 months   ki1113344-GMS-Nepal        NEPAL                          5       582      0      0      0
12 months   ki1113344-GMS-Nepal        NEPAL                          6       582    124     56     68
12 months   ki1113344-GMS-Nepal        NEPAL                          7       582    228    125    103
12 months   ki1113344-GMS-Nepal        NEPAL                          8       582    229    136     93
12 months   ki1113344-GMS-Nepal        NEPAL                          9       582      0      0      0
12 months   ki1113344-GMS-Nepal        NEPAL                          10      582      0      0      0
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
12 months   ki1114097-CMIN             GUINEA-BISSAU                  1      1170    118     81     37
12 months   ki1114097-CMIN             GUINEA-BISSAU                  2      1170     77     54     23
12 months   ki1114097-CMIN             GUINEA-BISSAU                  3      1170     86     65     21
12 months   ki1114097-CMIN             GUINEA-BISSAU                  4      1170     70     55     15
12 months   ki1114097-CMIN             GUINEA-BISSAU                  5      1170     83     60     23
12 months   ki1114097-CMIN             GUINEA-BISSAU                  6      1170     70     57     13
12 months   ki1114097-CMIN             GUINEA-BISSAU                  7      1170     79     63     16
12 months   ki1114097-CMIN             GUINEA-BISSAU                  8      1170     92     73     19
12 months   ki1114097-CMIN             GUINEA-BISSAU                  9      1170    134    100     34
12 months   ki1114097-CMIN             GUINEA-BISSAU                  10     1170    126     94     32
12 months   ki1114097-CMIN             GUINEA-BISSAU                  11     1170    112     88     24
12 months   ki1114097-CMIN             GUINEA-BISSAU                  12     1170    123     91     32
12 months   ki1114097-CMIN             PERU                           1       722     43     36      7
12 months   ki1114097-CMIN             PERU                           2       722     66     46     20
12 months   ki1114097-CMIN             PERU                           3       722     80     60     20
12 months   ki1114097-CMIN             PERU                           4       722     70     50     20
12 months   ki1114097-CMIN             PERU                           5       722     72     52     20
12 months   ki1114097-CMIN             PERU                           6       722     61     43     18
12 months   ki1114097-CMIN             PERU                           7       722     67     48     19
12 months   ki1114097-CMIN             PERU                           8       722     76     61     15
12 months   ki1114097-CMIN             PERU                           9       722     50     37     13
12 months   ki1114097-CMIN             PERU                           10      722     47     34     13
12 months   ki1114097-CMIN             PERU                           11      722     40     32      8
12 months   ki1114097-CMIN             PERU                           12      722     50     39     11
12 months   ki1114097-CONTENT          PERU                           1       215     10     10      0
12 months   ki1114097-CONTENT          PERU                           2       215     18     15      3
12 months   ki1114097-CONTENT          PERU                           3       215     30     25      5
12 months   ki1114097-CONTENT          PERU                           4       215     19     10      9
12 months   ki1114097-CONTENT          PERU                           5       215     14     11      3
12 months   ki1114097-CONTENT          PERU                           6       215     13      6      7
12 months   ki1114097-CONTENT          PERU                           7       215     28     22      6
12 months   ki1114097-CONTENT          PERU                           8       215     23     16      7
12 months   ki1114097-CONTENT          PERU                           9       215     26     21      5
12 months   ki1114097-CONTENT          PERU                           10      215     14     10      4
12 months   ki1114097-CONTENT          PERU                           11      215      9      4      5
12 months   ki1114097-CONTENT          PERU                           12      215     11     11      0
12 months   ki1119695-PROBIT           BELARUS                        1      7943    494    408     86
12 months   ki1119695-PROBIT           BELARUS                        2      7943    491    406     85
12 months   ki1119695-PROBIT           BELARUS                        3      7943    571    486     85
12 months   ki1119695-PROBIT           BELARUS                        4      7943    539    477     62
12 months   ki1119695-PROBIT           BELARUS                        5      7943    587    519     68
12 months   ki1119695-PROBIT           BELARUS                        6      7943    613    523     90
12 months   ki1119695-PROBIT           BELARUS                        7      7943    746    649     97
12 months   ki1119695-PROBIT           BELARUS                        8      7943    787    680    107
12 months   ki1119695-PROBIT           BELARUS                        9      7943    722    625     97
12 months   ki1119695-PROBIT           BELARUS                        10     7943    808    676    132
12 months   ki1119695-PROBIT           BELARUS                        11     7943    736    614    122
12 months   ki1119695-PROBIT           BELARUS                        12     7943    849    723    126
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       1     10186    996    632    364
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       2     10186    794    481    313
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       3     10186    870    524    346
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       4     10186    733    468    265
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       5     10186    735    421    314
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       6     10186    808    467    341
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       7     10186    824    493    331
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       8     10186    882    531    351
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       9     10186    947    638    309
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       10    10186    752    468    284
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       11    10186    899    593    306
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       12    10186    946    631    315
12 months   ki1148112-LCNI-5           MALAWI                         1       815     67     29     38
12 months   ki1148112-LCNI-5           MALAWI                         2       815     46     28     18
12 months   ki1148112-LCNI-5           MALAWI                         3       815     26     14     12
12 months   ki1148112-LCNI-5           MALAWI                         4       815     38     20     18
12 months   ki1148112-LCNI-5           MALAWI                         5       815     40     21     19
12 months   ki1148112-LCNI-5           MALAWI                         6       815     34     18     16
12 months   ki1148112-LCNI-5           MALAWI                         7       815     61     34     27
12 months   ki1148112-LCNI-5           MALAWI                         8       815     92     52     40
12 months   ki1148112-LCNI-5           MALAWI                         9       815     90     51     39
12 months   ki1148112-LCNI-5           MALAWI                         10      815    128     56     72
12 months   ki1148112-LCNI-5           MALAWI                         11      815    102     55     47
12 months   ki1148112-LCNI-5           MALAWI                         12      815     91     50     41
12 months   kiGH5241-JiVitA-3          BANGLADESH                     1      8376    662    372    290
12 months   kiGH5241-JiVitA-3          BANGLADESH                     2      8376    562    307    255
12 months   kiGH5241-JiVitA-3          BANGLADESH                     3      8376    720    406    314
12 months   kiGH5241-JiVitA-3          BANGLADESH                     4      8376    593    342    251
12 months   kiGH5241-JiVitA-3          BANGLADESH                     5      8376    591    340    251
12 months   kiGH5241-JiVitA-3          BANGLADESH                     6      8376    599    352    247
12 months   kiGH5241-JiVitA-3          BANGLADESH                     7      8376    619    389    230
12 months   kiGH5241-JiVitA-3          BANGLADESH                     8      8376    764    431    333
12 months   kiGH5241-JiVitA-3          BANGLADESH                     9      8376    805    469    336
12 months   kiGH5241-JiVitA-3          BANGLADESH                     10     8376    810    391    419
12 months   kiGH5241-JiVitA-3          BANGLADESH                     11     8376    862    400    462
12 months   kiGH5241-JiVitA-3          BANGLADESH                     12     8376    789    393    396
12 months   kiGH5241-JiVitA-4          BANGLADESH                     1      1420      0      0      0
12 months   kiGH5241-JiVitA-4          BANGLADESH                     2      1420    230    131     99
12 months   kiGH5241-JiVitA-4          BANGLADESH                     3      1420    268    144    124
12 months   kiGH5241-JiVitA-4          BANGLADESH                     4      1420    202    109     93
12 months   kiGH5241-JiVitA-4          BANGLADESH                     5      1420    188     99     89
12 months   kiGH5241-JiVitA-4          BANGLADESH                     6      1420    123     69     54
12 months   kiGH5241-JiVitA-4          BANGLADESH                     7      1420    148     90     58
12 months   kiGH5241-JiVitA-4          BANGLADESH                     8      1420    135     78     57
12 months   kiGH5241-JiVitA-4          BANGLADESH                     9      1420     88     58     30
12 months   kiGH5241-JiVitA-4          BANGLADESH                     10     1420     38     25     13
12 months   kiGH5241-JiVitA-4          BANGLADESH                     11     1420      0      0      0
12 months   kiGH5241-JiVitA-4          BANGLADESH                     12     1420      0      0      0
18 months   ki0047075b-MAL-ED          BANGLADESH                     1       231     18      9      9
18 months   ki0047075b-MAL-ED          BANGLADESH                     2       231     19      3     16
18 months   ki0047075b-MAL-ED          BANGLADESH                     3       231     20      5     15
18 months   ki0047075b-MAL-ED          BANGLADESH                     4       231     21     13      8
18 months   ki0047075b-MAL-ED          BANGLADESH                     5       231     21      7     14
18 months   ki0047075b-MAL-ED          BANGLADESH                     6       231      9      4      5
18 months   ki0047075b-MAL-ED          BANGLADESH                     7       231     18      7     11
18 months   ki0047075b-MAL-ED          BANGLADESH                     8       231     22     10     12
18 months   ki0047075b-MAL-ED          BANGLADESH                     9       231     20      9     11
18 months   ki0047075b-MAL-ED          BANGLADESH                     10      231     21     12      9
18 months   ki0047075b-MAL-ED          BANGLADESH                     11      231     14      7      7
18 months   ki0047075b-MAL-ED          BANGLADESH                     12      231     28     14     14
18 months   ki0047075b-MAL-ED          BRAZIL                         1       194     15     12      3
18 months   ki0047075b-MAL-ED          BRAZIL                         2       194     21     15      6
18 months   ki0047075b-MAL-ED          BRAZIL                         3       194     16     13      3
18 months   ki0047075b-MAL-ED          BRAZIL                         4       194     10      9      1
18 months   ki0047075b-MAL-ED          BRAZIL                         5       194     20     15      5
18 months   ki0047075b-MAL-ED          BRAZIL                         6       194      7      5      2
18 months   ki0047075b-MAL-ED          BRAZIL                         7       194     16     10      6
18 months   ki0047075b-MAL-ED          BRAZIL                         8       194     13      9      4
18 months   ki0047075b-MAL-ED          BRAZIL                         9       194     28     20      8
18 months   ki0047075b-MAL-ED          BRAZIL                         10      194     16     14      2
18 months   ki0047075b-MAL-ED          BRAZIL                         11      194     21     20      1
18 months   ki0047075b-MAL-ED          BRAZIL                         12      194     11      7      4
18 months   ki0047075b-MAL-ED          INDIA                          1       229     19      6     13
18 months   ki0047075b-MAL-ED          INDIA                          2       229     18     13      5
18 months   ki0047075b-MAL-ED          INDIA                          3       229     19      7     12
18 months   ki0047075b-MAL-ED          INDIA                          4       229     14      6      8
18 months   ki0047075b-MAL-ED          INDIA                          5       229      8      4      4
18 months   ki0047075b-MAL-ED          INDIA                          6       229     19     10      9
18 months   ki0047075b-MAL-ED          INDIA                          7       229     23     10     13
18 months   ki0047075b-MAL-ED          INDIA                          8       229     22      6     16
18 months   ki0047075b-MAL-ED          INDIA                          9       229     18      6     12
18 months   ki0047075b-MAL-ED          INDIA                          10      229     26     10     16
18 months   ki0047075b-MAL-ED          INDIA                          11      229     24      9     15
18 months   ki0047075b-MAL-ED          INDIA                          12      229     19      9     10
18 months   ki0047075b-MAL-ED          NEPAL                          1       231     20     13      7
18 months   ki0047075b-MAL-ED          NEPAL                          2       231     17     11      6
18 months   ki0047075b-MAL-ED          NEPAL                          3       231     17     11      6
18 months   ki0047075b-MAL-ED          NEPAL                          4       231     22     17      5
18 months   ki0047075b-MAL-ED          NEPAL                          5       231     19     11      8
18 months   ki0047075b-MAL-ED          NEPAL                          6       231     18     16      2
18 months   ki0047075b-MAL-ED          NEPAL                          7       231     18     15      3
18 months   ki0047075b-MAL-ED          NEPAL                          8       231     24     17      7
18 months   ki0047075b-MAL-ED          NEPAL                          9       231     15     12      3
18 months   ki0047075b-MAL-ED          NEPAL                          10      231     20     15      5
18 months   ki0047075b-MAL-ED          NEPAL                          11      231     24     14     10
18 months   ki0047075b-MAL-ED          NEPAL                          12      231     17     11      6
18 months   ki0047075b-MAL-ED          PERU                           1       244     35     12     23
18 months   ki0047075b-MAL-ED          PERU                           2       244     18      4     14
18 months   ki0047075b-MAL-ED          PERU                           3       244     19      9     10
18 months   ki0047075b-MAL-ED          PERU                           4       244     17      6     11
18 months   ki0047075b-MAL-ED          PERU                           5       244     21      4     17
18 months   ki0047075b-MAL-ED          PERU                           6       244     15      6      9
18 months   ki0047075b-MAL-ED          PERU                           7       244     20      3     17
18 months   ki0047075b-MAL-ED          PERU                           8       244     14      6      8
18 months   ki0047075b-MAL-ED          PERU                           9       244     22      9     13
18 months   ki0047075b-MAL-ED          PERU                           10      244     17      7     10
18 months   ki0047075b-MAL-ED          PERU                           11      244     27      8     19
18 months   ki0047075b-MAL-ED          PERU                           12      244     19      6     13
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1       253     37     18     19
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2       253     24      8     16
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3       253     15      9      6
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4       253     13      7      6
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5       253     13     10      3
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6       253     16      8      8
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7       253     22      9     13
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8       253      9      4      5
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9       253     19     10      9
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10      253     25      9     16
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11      253     26      7     19
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12      253     34     13     21
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1       233     15      6      9
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2       233     27      3     24
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3       233     18      4     14
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4       233      9      3      6
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5       233     19      3     16
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6       233     19      3     16
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7       233     23      6     17
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8       233     11      3      8
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9       233     20      3     17
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10      233     19      1     18
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11      233     26      5     21
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12      233     27      3     24
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
18 months   ki1000108-IRC              INDIA                          1       409     38     18     20
18 months   ki1000108-IRC              INDIA                          2       409     28     10     18
18 months   ki1000108-IRC              INDIA                          3       409     27     11     16
18 months   ki1000108-IRC              INDIA                          4       409     21      6     15
18 months   ki1000108-IRC              INDIA                          5       409     22      6     16
18 months   ki1000108-IRC              INDIA                          6       409     37     20     17
18 months   ki1000108-IRC              INDIA                          7       409     36     17     19
18 months   ki1000108-IRC              INDIA                          8       409     44     24     20
18 months   ki1000108-IRC              INDIA                          9       409     27     10     17
18 months   ki1000108-IRC              INDIA                          10      409     38     22     16
18 months   ki1000108-IRC              INDIA                          11      409     40     18     22
18 months   ki1000108-IRC              INDIA                          12      409     51     17     34
18 months   ki1000109-EE               PAKISTAN                       1       363     90      6     84
18 months   ki1000109-EE               PAKISTAN                       2       363     63      8     55
18 months   ki1000109-EE               PAKISTAN                       3       363     40      4     36
18 months   ki1000109-EE               PAKISTAN                       4       363     16      2     14
18 months   ki1000109-EE               PAKISTAN                       5       363      0      0      0
18 months   ki1000109-EE               PAKISTAN                       6       363      0      0      0
18 months   ki1000109-EE               PAKISTAN                       7       363      0      0      0
18 months   ki1000109-EE               PAKISTAN                       8       363      0      0      0
18 months   ki1000109-EE               PAKISTAN                       9       363      0      0      0
18 months   ki1000109-EE               PAKISTAN                       10      363      4      1      3
18 months   ki1000109-EE               PAKISTAN                       11      363     67      7     60
18 months   ki1000109-EE               PAKISTAN                       12      363     83      4     79
18 months   ki1000109-ResPak           PAKISTAN                       1       184      5      1      4
18 months   ki1000109-ResPak           PAKISTAN                       2       184      9      2      7
18 months   ki1000109-ResPak           PAKISTAN                       3       184     14      5      9
18 months   ki1000109-ResPak           PAKISTAN                       4       184     13      2     11
18 months   ki1000109-ResPak           PAKISTAN                       5       184     42     16     26
18 months   ki1000109-ResPak           PAKISTAN                       6       184     37     12     25
18 months   ki1000109-ResPak           PAKISTAN                       7       184     21      3     18
18 months   ki1000109-ResPak           PAKISTAN                       8       184     26     11     15
18 months   ki1000109-ResPak           PAKISTAN                       9       184     14      7      7
18 months   ki1000109-ResPak           PAKISTAN                       10      184      0      0      0
18 months   ki1000109-ResPak           PAKISTAN                       11      184      0      0      0
18 months   ki1000109-ResPak           PAKISTAN                       12      184      3      0      3
18 months   ki1000304b-SAS-CompFeed    INDIA                          1       416     49     12     37
18 months   ki1000304b-SAS-CompFeed    INDIA                          2       416     35     14     21
18 months   ki1000304b-SAS-CompFeed    INDIA                          3       416     34     15     19
18 months   ki1000304b-SAS-CompFeed    INDIA                          4       416     25      8     17
18 months   ki1000304b-SAS-CompFeed    INDIA                          5       416     39     11     28
18 months   ki1000304b-SAS-CompFeed    INDIA                          6       416     47     15     32
18 months   ki1000304b-SAS-CompFeed    INDIA                          7       416      0      0      0
18 months   ki1000304b-SAS-CompFeed    INDIA                          8       416      0      0      0
18 months   ki1000304b-SAS-CompFeed    INDIA                          9       416      0      0      0
18 months   ki1000304b-SAS-CompFeed    INDIA                          10      416     74     20     54
18 months   ki1000304b-SAS-CompFeed    INDIA                          11      416     44     13     31
18 months   ki1000304b-SAS-CompFeed    INDIA                          12      416     69     17     52
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          1        93      7      1      6
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          2        93      7      1      6
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          3        93      6      1      5
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          4        93      1      0      1
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          5        93      3      0      3
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          6        93      6      1      5
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          7        93      8      2      6
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          8        93     14      1     13
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          9        93     17      1     16
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          10       93     11      1     10
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          11       93      5      1      4
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          12       93      8      0      8
18 months   ki1017093-NIH-Birth        BANGLADESH                     1       497     47     13     34
18 months   ki1017093-NIH-Birth        BANGLADESH                     2       497     43     13     30
18 months   ki1017093-NIH-Birth        BANGLADESH                     3       497     45     19     26
18 months   ki1017093-NIH-Birth        BANGLADESH                     4       497     38     14     24
18 months   ki1017093-NIH-Birth        BANGLADESH                     5       497     39     17     22
18 months   ki1017093-NIH-Birth        BANGLADESH                     6       497     40     11     29
18 months   ki1017093-NIH-Birth        BANGLADESH                     7       497     38     15     23
18 months   ki1017093-NIH-Birth        BANGLADESH                     8       497     30      9     21
18 months   ki1017093-NIH-Birth        BANGLADESH                     9       497     37     13     24
18 months   ki1017093-NIH-Birth        BANGLADESH                     10      497     41     17     24
18 months   ki1017093-NIH-Birth        BANGLADESH                     11      497     49     14     35
18 months   ki1017093-NIH-Birth        BANGLADESH                     12      497     50     19     31
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1      1454     96     51     45
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2      1454    110     71     39
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3      1454    106     60     46
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4      1454    118     63     55
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5      1454    112     69     43
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6      1454    108     64     44
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7      1454    145     86     59
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8      1454    147     95     52
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9      1454    131     76     55
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10     1454    148     93     55
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11     1454    122     73     49
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12     1454    111     65     46
18 months   ki1101329-Keneba           GAMBIA                         1      2284    228    115    113
18 months   ki1101329-Keneba           GAMBIA                         2      2284    215    115    100
18 months   ki1101329-Keneba           GAMBIA                         3      2284    237    126    111
18 months   ki1101329-Keneba           GAMBIA                         4      2284    161     87     74
18 months   ki1101329-Keneba           GAMBIA                         5      2284    160     78     82
18 months   ki1101329-Keneba           GAMBIA                         6      2284    134     59     75
18 months   ki1101329-Keneba           GAMBIA                         7      2284    111     52     59
18 months   ki1101329-Keneba           GAMBIA                         8      2284    190     95     95
18 months   ki1101329-Keneba           GAMBIA                         9      2284    189     81    108
18 months   ki1101329-Keneba           GAMBIA                         10     2284    261    129    132
18 months   ki1101329-Keneba           GAMBIA                         11     2284    199    104     95
18 months   ki1101329-Keneba           GAMBIA                         12     2284    199    102     97
18 months   ki1112895-Guatemala BSC    GUATEMALA                      1       186     20      4     16
18 months   ki1112895-Guatemala BSC    GUATEMALA                      2       186     17     12      5
18 months   ki1112895-Guatemala BSC    GUATEMALA                      3       186     21      9     12
18 months   ki1112895-Guatemala BSC    GUATEMALA                      4       186     22      9     13
18 months   ki1112895-Guatemala BSC    GUATEMALA                      5       186     15      4     11
18 months   ki1112895-Guatemala BSC    GUATEMALA                      6       186     10      4      6
18 months   ki1112895-Guatemala BSC    GUATEMALA                      7       186     11      3      8
18 months   ki1112895-Guatemala BSC    GUATEMALA                      8       186      5      2      3
18 months   ki1112895-Guatemala BSC    GUATEMALA                      9       186     11      1     10
18 months   ki1112895-Guatemala BSC    GUATEMALA                      10      186     21     10     11
18 months   ki1112895-Guatemala BSC    GUATEMALA                      11      186     15      6      9
18 months   ki1112895-Guatemala BSC    GUATEMALA                      12      186     18      6     12
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1       124      6      5      1
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2       124      4      2      2
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   3       124      2      2      0
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   4       124      1      1      0
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   5       124      2      1      1
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   6       124      6      3      3
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   7       124      7      5      2
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   8       124     18     13      5
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   9       124     22     12     10
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   10      124     19     14      5
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   11      124     14      9      5
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   12      124     23     10     13
18 months   ki1113344-GMS-Nepal        NEPAL                          1       574      0      0      0
18 months   ki1113344-GMS-Nepal        NEPAL                          2       574      0      0      0
18 months   ki1113344-GMS-Nepal        NEPAL                          3       574      0      0      0
18 months   ki1113344-GMS-Nepal        NEPAL                          4       574      1      0      1
18 months   ki1113344-GMS-Nepal        NEPAL                          5       574      0      0      0
18 months   ki1113344-GMS-Nepal        NEPAL                          6       574    124     43     81
18 months   ki1113344-GMS-Nepal        NEPAL                          7       574    223     83    140
18 months   ki1113344-GMS-Nepal        NEPAL                          8       574    226     90    136
18 months   ki1113344-GMS-Nepal        NEPAL                          9       574      0      0      0
18 months   ki1113344-GMS-Nepal        NEPAL                          10      574      0      0      0
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
18 months   ki1114097-CMIN             GUINEA-BISSAU                  1      1123    122     79     43
18 months   ki1114097-CMIN             GUINEA-BISSAU                  2      1123     94     61     33
18 months   ki1114097-CMIN             GUINEA-BISSAU                  3      1123     86     59     27
18 months   ki1114097-CMIN             GUINEA-BISSAU                  4      1123     71     45     26
18 months   ki1114097-CMIN             GUINEA-BISSAU                  5      1123     70     39     31
18 months   ki1114097-CMIN             GUINEA-BISSAU                  6      1123     64     39     25
18 months   ki1114097-CMIN             GUINEA-BISSAU                  7      1123     69     48     21
18 months   ki1114097-CMIN             GUINEA-BISSAU                  8      1123     86     54     32
18 months   ki1114097-CMIN             GUINEA-BISSAU                  9      1123    114     67     47
18 months   ki1114097-CMIN             GUINEA-BISSAU                  10     1123    124     80     44
18 months   ki1114097-CMIN             GUINEA-BISSAU                  11     1123    107     64     43
18 months   ki1114097-CMIN             GUINEA-BISSAU                  12     1123    116     72     44
18 months   ki1114097-CMIN             PERU                           1       656     33     22     11
18 months   ki1114097-CMIN             PERU                           2       656     58     31     27
18 months   ki1114097-CMIN             PERU                           3       656     73     45     28
18 months   ki1114097-CMIN             PERU                           4       656     61     39     22
18 months   ki1114097-CMIN             PERU                           5       656     63     35     28
18 months   ki1114097-CMIN             PERU                           6       656     55     34     21
18 months   ki1114097-CMIN             PERU                           7       656     61     38     23
18 months   ki1114097-CMIN             PERU                           8       656     68     44     24
18 months   ki1114097-CMIN             PERU                           9       656     53     33     20
18 months   ki1114097-CMIN             PERU                           10      656     46     29     17
18 months   ki1114097-CMIN             PERU                           11      656     40     28     12
18 months   ki1114097-CMIN             PERU                           12      656     45     31     14
18 months   ki1114097-CONTENT          PERU                           1       214     10     10      0
18 months   ki1114097-CONTENT          PERU                           2       214     18     14      4
18 months   ki1114097-CONTENT          PERU                           3       214     30     23      7
18 months   ki1114097-CONTENT          PERU                           4       214     19     10      9
18 months   ki1114097-CONTENT          PERU                           5       214     14     11      3
18 months   ki1114097-CONTENT          PERU                           6       214     13      6      7
18 months   ki1114097-CONTENT          PERU                           7       214     27     20      7
18 months   ki1114097-CONTENT          PERU                           8       214     23     16      7
18 months   ki1114097-CONTENT          PERU                           9       214     26     20      6
18 months   ki1114097-CONTENT          PERU                           10      214     14     10      4
18 months   ki1114097-CONTENT          PERU                           11      214      9      4      5
18 months   ki1114097-CONTENT          PERU                           12      214     11     10      1
18 months   ki1119695-PROBIT           BELARUS                        1      7475    470    388     82
18 months   ki1119695-PROBIT           BELARUS                        2      7475    460    379     81
18 months   ki1119695-PROBIT           BELARUS                        3      7475    539    451     88
18 months   ki1119695-PROBIT           BELARUS                        4      7475    506    442     64
18 months   ki1119695-PROBIT           BELARUS                        5      7475    552    481     71
18 months   ki1119695-PROBIT           BELARUS                        6      7475    566    473     93
18 months   ki1119695-PROBIT           BELARUS                        7      7475    699    591    108
18 months   ki1119695-PROBIT           BELARUS                        8      7475    742    634    108
18 months   ki1119695-PROBIT           BELARUS                        9      7475    680    580    100
18 months   ki1119695-PROBIT           BELARUS                        10     7475    768    633    135
18 months   ki1119695-PROBIT           BELARUS                        11     7475    701    587    114
18 months   ki1119695-PROBIT           BELARUS                        12     7475    792    666    126
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       1      7284    710    345    365
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       2      7284    552    270    282
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       3      7284    641    312    329
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       4      7284    555    288    267
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       5      7284    524    246    278
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       6      7284    617    291    326
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       7      7284    579    290    289
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       8      7284    646    342    304
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       9      7284    667    389    278
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       10     7284    512    267    245
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       11     7284    659    348    311
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       12     7284    622    319    303
18 months   ki1148112-LCNI-5           MALAWI                         1       676     55     20     35
18 months   ki1148112-LCNI-5           MALAWI                         2       676     40     23     17
18 months   ki1148112-LCNI-5           MALAWI                         3       676     20      7     13
18 months   ki1148112-LCNI-5           MALAWI                         4       676     31     16     15
18 months   ki1148112-LCNI-5           MALAWI                         5       676     34     18     16
18 months   ki1148112-LCNI-5           MALAWI                         6       676     23     12     11
18 months   ki1148112-LCNI-5           MALAWI                         7       676     44     24     20
18 months   ki1148112-LCNI-5           MALAWI                         8       676     76     40     36
18 months   ki1148112-LCNI-5           MALAWI                         9       676     83     41     42
18 months   ki1148112-LCNI-5           MALAWI                         10      676    109     34     75
18 months   ki1148112-LCNI-5           MALAWI                         11      676     81     32     49
18 months   ki1148112-LCNI-5           MALAWI                         12      676     80     34     46
18 months   kiGH5241-JiVitA-3          BANGLADESH                     1      7332    612    283    329
18 months   kiGH5241-JiVitA-3          BANGLADESH                     2      7332    529    234    295
18 months   kiGH5241-JiVitA-3          BANGLADESH                     3      7332    646    312    334
18 months   kiGH5241-JiVitA-3          BANGLADESH                     4      7332    538    265    273
18 months   kiGH5241-JiVitA-3          BANGLADESH                     5      7332    542    273    269
18 months   kiGH5241-JiVitA-3          BANGLADESH                     6      7332    521    249    272
18 months   kiGH5241-JiVitA-3          BANGLADESH                     7      7332    556    297    259
18 months   kiGH5241-JiVitA-3          BANGLADESH                     8      7332    578    266    312
18 months   kiGH5241-JiVitA-3          BANGLADESH                     9      7332    667    324    343
18 months   kiGH5241-JiVitA-3          BANGLADESH                     10     7332    711    285    426
18 months   kiGH5241-JiVitA-3          BANGLADESH                     11     7332    745    281    464
18 months   kiGH5241-JiVitA-3          BANGLADESH                     12     7332    687    276    411
18 months   kiGH5241-JiVitA-4          BANGLADESH                     1      1373      0      0      0
18 months   kiGH5241-JiVitA-4          BANGLADESH                     2      1373    226    106    120
18 months   kiGH5241-JiVitA-4          BANGLADESH                     3      1373    257    106    151
18 months   kiGH5241-JiVitA-4          BANGLADESH                     4      1373    196     88    108
18 months   kiGH5241-JiVitA-4          BANGLADESH                     5      1373    179     76    103
18 months   kiGH5241-JiVitA-4          BANGLADESH                     6      1373    117     52     65
18 months   kiGH5241-JiVitA-4          BANGLADESH                     7      1373    147     64     83
18 months   kiGH5241-JiVitA-4          BANGLADESH                     8      1373    130     61     69
18 months   kiGH5241-JiVitA-4          BANGLADESH                     9      1373     86     48     38
18 months   kiGH5241-JiVitA-4          BANGLADESH                     10     1373     35     20     15
18 months   kiGH5241-JiVitA-4          BANGLADESH                     11     1373      0      0      0
18 months   kiGH5241-JiVitA-4          BANGLADESH                     12     1373      0      0      0
24 months   ki0047075b-MAL-ED          BANGLADESH                     1       219     17      7     10
24 months   ki0047075b-MAL-ED          BANGLADESH                     2       219     17      3     14
24 months   ki0047075b-MAL-ED          BANGLADESH                     3       219     19      5     14
24 months   ki0047075b-MAL-ED          BANGLADESH                     4       219     20     11      9
24 months   ki0047075b-MAL-ED          BANGLADESH                     5       219     19      5     14
24 months   ki0047075b-MAL-ED          BANGLADESH                     6       219      8      4      4
24 months   ki0047075b-MAL-ED          BANGLADESH                     7       219     18      5     13
24 months   ki0047075b-MAL-ED          BANGLADESH                     8       219     22      9     13
24 months   ki0047075b-MAL-ED          BANGLADESH                     9       219     19      8     11
24 months   ki0047075b-MAL-ED          BANGLADESH                     10      219     21     11     10
24 months   ki0047075b-MAL-ED          BANGLADESH                     11      219     11      4      7
24 months   ki0047075b-MAL-ED          BANGLADESH                     12      219     28     11     17
24 months   ki0047075b-MAL-ED          BRAZIL                         1       176     15     12      3
24 months   ki0047075b-MAL-ED          BRAZIL                         2       176     16     12      4
24 months   ki0047075b-MAL-ED          BRAZIL                         3       176     15     13      2
24 months   ki0047075b-MAL-ED          BRAZIL                         4       176     10      9      1
24 months   ki0047075b-MAL-ED          BRAZIL                         5       176     17     13      4
24 months   ki0047075b-MAL-ED          BRAZIL                         6       176      7      5      2
24 months   ki0047075b-MAL-ED          BRAZIL                         7       176     13      8      5
24 months   ki0047075b-MAL-ED          BRAZIL                         8       176     13      9      4
24 months   ki0047075b-MAL-ED          BRAZIL                         9       176     27     19      8
24 months   ki0047075b-MAL-ED          BRAZIL                         10      176     14     12      2
24 months   ki0047075b-MAL-ED          BRAZIL                         11      176     18     17      1
24 months   ki0047075b-MAL-ED          BRAZIL                         12      176     11      7      4
24 months   ki0047075b-MAL-ED          INDIA                          1       228     19      4     15
24 months   ki0047075b-MAL-ED          INDIA                          2       228     18     11      7
24 months   ki0047075b-MAL-ED          INDIA                          3       228     19      7     12
24 months   ki0047075b-MAL-ED          INDIA                          4       228     14      6      8
24 months   ki0047075b-MAL-ED          INDIA                          5       228      8      3      5
24 months   ki0047075b-MAL-ED          INDIA                          6       228     19     10      9
24 months   ki0047075b-MAL-ED          INDIA                          7       228     23     10     13
24 months   ki0047075b-MAL-ED          INDIA                          8       228     21      5     16
24 months   ki0047075b-MAL-ED          INDIA                          9       228     18      6     12
24 months   ki0047075b-MAL-ED          INDIA                          10      228     26      9     17
24 months   ki0047075b-MAL-ED          INDIA                          11      228     24      8     16
24 months   ki0047075b-MAL-ED          INDIA                          12      228     19      7     12
24 months   ki0047075b-MAL-ED          NEPAL                          1       229     20     12      8
24 months   ki0047075b-MAL-ED          NEPAL                          2       229     17     11      6
24 months   ki0047075b-MAL-ED          NEPAL                          3       229     17      7     10
24 months   ki0047075b-MAL-ED          NEPAL                          4       229     22     17      5
24 months   ki0047075b-MAL-ED          NEPAL                          5       229     19     10      9
24 months   ki0047075b-MAL-ED          NEPAL                          6       229     18     16      2
24 months   ki0047075b-MAL-ED          NEPAL                          7       229     17     12      5
24 months   ki0047075b-MAL-ED          NEPAL                          8       229     24     17      7
24 months   ki0047075b-MAL-ED          NEPAL                          9       229     15     12      3
24 months   ki0047075b-MAL-ED          NEPAL                          10      229     20     14      6
24 months   ki0047075b-MAL-ED          NEPAL                          11      229     24     12     12
24 months   ki0047075b-MAL-ED          NEPAL                          12      229     16      9      7
24 months   ki0047075b-MAL-ED          PERU                           1       218     34     11     23
24 months   ki0047075b-MAL-ED          PERU                           2       218     17      3     14
24 months   ki0047075b-MAL-ED          PERU                           3       218     16      6     10
24 months   ki0047075b-MAL-ED          PERU                           4       218     14      3     11
24 months   ki0047075b-MAL-ED          PERU                           5       218     20      4     16
24 months   ki0047075b-MAL-ED          PERU                           6       218     13      4      9
24 months   ki0047075b-MAL-ED          PERU                           7       218     16      1     15
24 months   ki0047075b-MAL-ED          PERU                           8       218     13      5      8
24 months   ki0047075b-MAL-ED          PERU                           9       218     21      8     13
24 months   ki0047075b-MAL-ED          PERU                           10      218     15      6      9
24 months   ki0047075b-MAL-ED          PERU                           11      218     23      6     17
24 months   ki0047075b-MAL-ED          PERU                           12      218     16      4     12
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1       242     35     12     23
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2       242     23      5     18
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3       242     14      8      6
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4       242     12      6      6
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5       242     12      8      4
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6       242     16      8      8
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7       242     22      9     13
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8       242      8      4      4
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9       242     19      9     10
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10      242     25      6     19
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11      242     24      7     17
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12      242     32     11     21
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1       228     15      4     11
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2       228     25      2     23
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3       228     18      3     15
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4       228      8      1      7
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5       228     18      2     16
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6       228     19      1     18
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7       228     23      5     18
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8       228     11      2      9
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9       228     19      3     16
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10      228     19      1     18
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11      228     26      2     24
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12      228     27      1     26
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
24 months   ki1000108-IRC              INDIA                          1       410     38     11     27
24 months   ki1000108-IRC              INDIA                          2       410     28      8     20
24 months   ki1000108-IRC              INDIA                          3       410     27      9     18
24 months   ki1000108-IRC              INDIA                          4       410     21      4     17
24 months   ki1000108-IRC              INDIA                          5       410     22      5     17
24 months   ki1000108-IRC              INDIA                          6       410     37     16     21
24 months   ki1000108-IRC              INDIA                          7       410     36     14     22
24 months   ki1000108-IRC              INDIA                          8       410     44     21     23
24 months   ki1000108-IRC              INDIA                          9       410     27      9     18
24 months   ki1000108-IRC              INDIA                          10      410     38     20     18
24 months   ki1000108-IRC              INDIA                          11      410     40     16     24
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
24 months   ki1000304b-SAS-CompFeed    INDIA                          1        43     10      2      8
24 months   ki1000304b-SAS-CompFeed    INDIA                          2        43      7      2      5
24 months   ki1000304b-SAS-CompFeed    INDIA                          3        43      3      2      1
24 months   ki1000304b-SAS-CompFeed    INDIA                          4        43      3      2      1
24 months   ki1000304b-SAS-CompFeed    INDIA                          5        43      2      0      2
24 months   ki1000304b-SAS-CompFeed    INDIA                          6        43      4      2      2
24 months   ki1000304b-SAS-CompFeed    INDIA                          7        43      0      0      0
24 months   ki1000304b-SAS-CompFeed    INDIA                          8        43      0      0      0
24 months   ki1000304b-SAS-CompFeed    INDIA                          9        43      0      0      0
24 months   ki1000304b-SAS-CompFeed    INDIA                          10       43      4      1      3
24 months   ki1000304b-SAS-CompFeed    INDIA                          11       43      3      1      2
24 months   ki1000304b-SAS-CompFeed    INDIA                          12       43      7      1      6
24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1         9      0      0      0
24 months   ki1000304b-SAS-FoodSuppl   INDIA                          2         9      2      0      2
24 months   ki1000304b-SAS-FoodSuppl   INDIA                          3         9      1      1      0
24 months   ki1000304b-SAS-FoodSuppl   INDIA                          4         9      0      0      0
24 months   ki1000304b-SAS-FoodSuppl   INDIA                          5         9      0      0      0
24 months   ki1000304b-SAS-FoodSuppl   INDIA                          6         9      1      0      1
24 months   ki1000304b-SAS-FoodSuppl   INDIA                          7         9      1      0      1
24 months   ki1000304b-SAS-FoodSuppl   INDIA                          8         9      0      0      0
24 months   ki1000304b-SAS-FoodSuppl   INDIA                          9         9      2      0      2
24 months   ki1000304b-SAS-FoodSuppl   INDIA                          10        9      0      0      0
24 months   ki1000304b-SAS-FoodSuppl   INDIA                          11        9      0      0      0
24 months   ki1000304b-SAS-FoodSuppl   INDIA                          12        9      2      0      2
24 months   ki1017093-NIH-Birth        BANGLADESH                     1       470     45      9     36
24 months   ki1017093-NIH-Birth        BANGLADESH                     2       470     36      7     29
24 months   ki1017093-NIH-Birth        BANGLADESH                     3       470     44     14     30
24 months   ki1017093-NIH-Birth        BANGLADESH                     4       470     36      6     30
24 months   ki1017093-NIH-Birth        BANGLADESH                     5       470     37      9     28
24 months   ki1017093-NIH-Birth        BANGLADESH                     6       470     39      7     32
24 months   ki1017093-NIH-Birth        BANGLADESH                     7       470     37     11     26
24 months   ki1017093-NIH-Birth        BANGLADESH                     8       470     28      7     21
24 months   ki1017093-NIH-Birth        BANGLADESH                     9       470     34      6     28
24 months   ki1017093-NIH-Birth        BANGLADESH                     10      470     38     12     26
24 months   ki1017093-NIH-Birth        BANGLADESH                     11      470     47     11     36
24 months   ki1017093-NIH-Birth        BANGLADESH                     12      470     49     16     33
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1       960     67     33     34
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2       960     76     57     19
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3       960     72     41     31
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4       960     79     41     38
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5       960     71     42     29
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6       960     67     35     32
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7       960     86     48     38
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8       960     97     56     41
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9       960     91     51     40
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10      960     99     51     48
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11      960     83     47     36
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12      960     72     42     30
24 months   ki1101329-Keneba           GAMBIA                         1      2207    222    103    119
24 months   ki1101329-Keneba           GAMBIA                         2      2207    203     92    111
24 months   ki1101329-Keneba           GAMBIA                         3      2207    219     87    132
24 months   ki1101329-Keneba           GAMBIA                         4      2207    148     65     83
24 months   ki1101329-Keneba           GAMBIA                         5      2207    161     66     95
24 months   ki1101329-Keneba           GAMBIA                         6      2207    129     49     80
24 months   ki1101329-Keneba           GAMBIA                         7      2207    113     47     66
24 months   ki1101329-Keneba           GAMBIA                         8      2207    190     89    101
24 months   ki1101329-Keneba           GAMBIA                         9      2207    187     69    118
24 months   ki1101329-Keneba           GAMBIA                         10     2207    251    104    147
24 months   ki1101329-Keneba           GAMBIA                         11     2207    191     88    103
24 months   ki1101329-Keneba           GAMBIA                         12     2207    193     86    107
24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1       551     54     30     24
24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2       551     41     30     11
24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   3       551     40     21     19
24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   4       551     29     15     14
24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   5       551     43     25     18
24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   6       551     32     20     12
24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   7       551     40     21     19
24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   8       551     54     29     25
24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   9       551     62     33     29
24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   10      551     60     39     21
24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   11      551     43     27     16
24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   12      551     53     30     23
24 months   ki1113344-GMS-Nepal        NEPAL                          1       568      0      0      0
24 months   ki1113344-GMS-Nepal        NEPAL                          2       568      0      0      0
24 months   ki1113344-GMS-Nepal        NEPAL                          3       568      0      0      0
24 months   ki1113344-GMS-Nepal        NEPAL                          4       568      0      0      0
24 months   ki1113344-GMS-Nepal        NEPAL                          5       568      0      0      0
24 months   ki1113344-GMS-Nepal        NEPAL                          6       568    124     36     88
24 months   ki1113344-GMS-Nepal        NEPAL                          7       568    223     65    158
24 months   ki1113344-GMS-Nepal        NEPAL                          8       568    221     75    146
24 months   ki1113344-GMS-Nepal        NEPAL                          9       568      0      0      0
24 months   ki1113344-GMS-Nepal        NEPAL                          10      568      0      0      0
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
24 months   ki1114097-CMIN             GUINEA-BISSAU                  1      1067    101     57     44
24 months   ki1114097-CMIN             GUINEA-BISSAU                  2      1067     74     38     36
24 months   ki1114097-CMIN             GUINEA-BISSAU                  3      1067     83     51     32
24 months   ki1114097-CMIN             GUINEA-BISSAU                  4      1067     73     32     41
24 months   ki1114097-CMIN             GUINEA-BISSAU                  5      1067     85     41     44
24 months   ki1114097-CMIN             GUINEA-BISSAU                  6      1067     60     31     29
24 months   ki1114097-CMIN             GUINEA-BISSAU                  7      1067     79     44     35
24 months   ki1114097-CMIN             GUINEA-BISSAU                  8      1067     98     57     41
24 months   ki1114097-CMIN             GUINEA-BISSAU                  9      1067    122     59     63
24 months   ki1114097-CMIN             GUINEA-BISSAU                  10     1067    112     63     49
24 months   ki1114097-CMIN             GUINEA-BISSAU                  11     1067     97     56     41
24 months   ki1114097-CMIN             GUINEA-BISSAU                  12     1067     83     45     38
24 months   ki1114097-CMIN             PERU                           1       571     24     14     10
24 months   ki1114097-CMIN             PERU                           2       571     48     25     23
24 months   ki1114097-CMIN             PERU                           3       571     68     41     27
24 months   ki1114097-CMIN             PERU                           4       571     65     34     31
24 months   ki1114097-CMIN             PERU                           5       571     46     20     26
24 months   ki1114097-CMIN             PERU                           6       571     51     29     22
24 months   ki1114097-CMIN             PERU                           7       571     47     26     21
24 months   ki1114097-CMIN             PERU                           8       571     54     33     21
24 months   ki1114097-CMIN             PERU                           9       571     47     23     24
24 months   ki1114097-CMIN             PERU                           10      571     42     22     20
24 months   ki1114097-CMIN             PERU                           11      571     37     20     17
24 months   ki1114097-CMIN             PERU                           12      571     42     24     18
24 months   ki1114097-CONTENT          PERU                           1       197      9      9      0
24 months   ki1114097-CONTENT          PERU                           2       197     17     13      4
24 months   ki1114097-CONTENT          PERU                           3       197     28     22      6
24 months   ki1114097-CONTENT          PERU                           4       197     19     10      9
24 months   ki1114097-CONTENT          PERU                           5       197     14     11      3
24 months   ki1114097-CONTENT          PERU                           6       197     12      6      6
24 months   ki1114097-CONTENT          PERU                           7       197     24     18      6
24 months   ki1114097-CONTENT          PERU                           8       197     22     14      8
24 months   ki1114097-CONTENT          PERU                           9       197     23     16      7
24 months   ki1114097-CONTENT          PERU                           10      197     12      9      3
24 months   ki1114097-CONTENT          PERU                           11      197      7      3      4
24 months   ki1114097-CONTENT          PERU                           12      197     10      9      1
24 months   ki1119695-PROBIT           BELARUS                        1      2076    103     69     34
24 months   ki1119695-PROBIT           BELARUS                        2      2076    111     73     38
24 months   ki1119695-PROBIT           BELARUS                        3      2076    134     98     36
24 months   ki1119695-PROBIT           BELARUS                        4      2076    142    123     19
24 months   ki1119695-PROBIT           BELARUS                        5      2076    155    123     32
24 months   ki1119695-PROBIT           BELARUS                        6      2076    158    133     25
24 months   ki1119695-PROBIT           BELARUS                        7      2076    184    153     31
24 months   ki1119695-PROBIT           BELARUS                        8      2076    207    173     34
24 months   ki1119695-PROBIT           BELARUS                        9      2076    196    169     27
24 months   ki1119695-PROBIT           BELARUS                        10     2076    242    196     46
24 months   ki1119695-PROBIT           BELARUS                        11     2076    195    155     40
24 months   ki1119695-PROBIT           BELARUS                        12     2076    249    183     66
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1      1879    224     56    168
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2      1879    206     54    152
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3      1879    178     57    121
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4      1879    155     46    109
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5      1879    143     38    105
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6      1879    161     46    115
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7      1879    121     34     87
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8      1879    138     44     94
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9      1879    120     44     76
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10     1879    100     24     76
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11     1879    152     39    113
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12     1879    181     51    130
24 months   ki1148112-LCNI-5           MALAWI                         1       726     58     21     37
24 months   ki1148112-LCNI-5           MALAWI                         2       726     44     18     26
24 months   ki1148112-LCNI-5           MALAWI                         3       726     25      9     16
24 months   ki1148112-LCNI-5           MALAWI                         4       726     37     15     22
24 months   ki1148112-LCNI-5           MALAWI                         5       726     34     16     18
24 months   ki1148112-LCNI-5           MALAWI                         6       726     30      9     21
24 months   ki1148112-LCNI-5           MALAWI                         7       726     57     21     36
24 months   ki1148112-LCNI-5           MALAWI                         8       726     80     31     49
24 months   ki1148112-LCNI-5           MALAWI                         9       726     83     32     51
24 months   ki1148112-LCNI-5           MALAWI                         10      726    110     27     83
24 months   ki1148112-LCNI-5           MALAWI                         11      726     84     27     57
24 months   ki1148112-LCNI-5           MALAWI                         12      726     84     26     58
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1         3      0      0      0
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2         3      0      0      0
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3         3      0      0      0
24 months   kiGH5241-JiVitA-3          BANGLADESH                     4         3      0      0      0
24 months   kiGH5241-JiVitA-3          BANGLADESH                     5         3      0      0      0
24 months   kiGH5241-JiVitA-3          BANGLADESH                     6         3      0      0      0
24 months   kiGH5241-JiVitA-3          BANGLADESH                     7         3      2      1      1
24 months   kiGH5241-JiVitA-3          BANGLADESH                     8         3      0      0      0
24 months   kiGH5241-JiVitA-3          BANGLADESH                     9         3      1      1      0
24 months   kiGH5241-JiVitA-3          BANGLADESH                     10        3      0      0      0
24 months   kiGH5241-JiVitA-3          BANGLADESH                     11        3      0      0      0
24 months   kiGH5241-JiVitA-3          BANGLADESH                     12        3      0      0      0
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1      1196      0      0      0
24 months   kiGH5241-JiVitA-4          BANGLADESH                     2      1196    194     78    116
24 months   kiGH5241-JiVitA-4          BANGLADESH                     3      1196    213     78    135
24 months   kiGH5241-JiVitA-4          BANGLADESH                     4      1196    174     70    104
24 months   kiGH5241-JiVitA-4          BANGLADESH                     5      1196    166     66    100
24 months   kiGH5241-JiVitA-4          BANGLADESH                     6      1196    104     40     64
24 months   kiGH5241-JiVitA-4          BANGLADESH                     7      1196    130     50     80
24 months   kiGH5241-JiVitA-4          BANGLADESH                     8      1196    111     45     66
24 months   kiGH5241-JiVitA-4          BANGLADESH                     9      1196     74     41     33
24 months   kiGH5241-JiVitA-4          BANGLADESH                     10     1196     30     16     14
24 months   kiGH5241-JiVitA-4          BANGLADESH                     11     1196      0      0      0
24 months   kiGH5241-JiVitA-4          BANGLADESH                     12     1196      0      0      0


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
* agecat: 12 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 12 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 12 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 12 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 12 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 12 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 12 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 12 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 12 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 12 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 12 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 12 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 12 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 12 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 12 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 12 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 12 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
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
* agecat: 18 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 18 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 18 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 18 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 18 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 18 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 18 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 18 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 18 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 18 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 18 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 18 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 18 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 18 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 18 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 18 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 18 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
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
* agecat: 24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
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
* agecat: 3 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 3 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 3 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 3 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 3 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 3 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 3 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 3 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 3 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 3 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 3 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 3 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
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
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

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
* agecat: 3 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 3 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 3 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 3 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 3 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 3 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 3 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 3 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 12 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 12 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 12 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 12 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 12 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 12 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 12 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 12 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
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
* agecat: 18 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 18 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 18 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 18 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 18 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 18 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 18 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 18 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 18 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
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
* agecat: 24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots

```
## Warning: Removed 132 rows containing missing values (geom_errorbar).
```

![](/tmp/753b05b0-b36b-41ad-bf09-5558de66b8ce/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->


```
## Warning: Removed 168 rows containing missing values (geom_errorbar).
```

![](/tmp/753b05b0-b36b-41ad-bf09-5558de66b8ce/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


```
## Warning: Removed 11 rows containing missing values (geom_errorbar).
```

![](/tmp/753b05b0-b36b-41ad-bf09-5558de66b8ce/REPORT_files/figure-html/plot_paf-1.png)<!-- -->


```
## Warning: Removed 11 rows containing missing values (geom_errorbar).
```

![](/tmp/753b05b0-b36b-41ad-bf09-5558de66b8ce/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki1000108-IRC              INDIA                          1                    NA                0.2894737   0.1451023   0.4338451
3 months    ki1000108-IRC              INDIA                          2                    NA                0.4285714   0.2450478   0.6120950
3 months    ki1000108-IRC              INDIA                          3                    NA                0.3703704   0.1879988   0.5527420
3 months    ki1000108-IRC              INDIA                          4                    NA                0.3809524   0.1729989   0.5889058
3 months    ki1000108-IRC              INDIA                          5                    NA                0.3181818   0.1233145   0.5130491
3 months    ki1000108-IRC              INDIA                          6                    NA                0.2702703   0.1269995   0.4135411
3 months    ki1000108-IRC              INDIA                          7                    NA                0.3055556   0.1548980   0.4562131
3 months    ki1000108-IRC              INDIA                          8                    NA                0.1590909   0.0508854   0.2672964
3 months    ki1000108-IRC              INDIA                          9                    NA                0.3333333   0.1553045   0.5113621
3 months    ki1000108-IRC              INDIA                          10                   NA                0.2368421   0.1015030   0.3721812
3 months    ki1000108-IRC              INDIA                          11                   NA                0.3250000   0.1796745   0.4703255
3 months    ki1000108-IRC              INDIA                          12                   NA                0.4423077   0.3071514   0.5774640
3 months    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.3561644   0.2462271   0.4661016
3 months    ki1017093-NIH-Birth        BANGLADESH                     2                    NA                0.2068966   0.1025637   0.3112294
3 months    ki1017093-NIH-Birth        BANGLADESH                     3                    NA                0.1355932   0.0481662   0.2230202
3 months    ki1017093-NIH-Birth        BANGLADESH                     4                    NA                0.2452830   0.1293569   0.3612092
3 months    ki1017093-NIH-Birth        BANGLADESH                     5                    NA                0.1632653   0.0596947   0.2668359
3 months    ki1017093-NIH-Birth        BANGLADESH                     6                    NA                0.2200000   0.1050875   0.3349125
3 months    ki1017093-NIH-Birth        BANGLADESH                     7                    NA                0.1707317   0.0554644   0.2859991
3 months    ki1017093-NIH-Birth        BANGLADESH                     8                    NA                0.1707317   0.0554644   0.2859991
3 months    ki1017093-NIH-Birth        BANGLADESH                     9                    NA                0.2916667   0.1629795   0.4203538
3 months    ki1017093-NIH-Birth        BANGLADESH                     10                   NA                0.2040816   0.0911458   0.3170175
3 months    ki1017093-NIH-Birth        BANGLADESH                     11                   NA                0.2641509   0.1453620   0.3829399
3 months    ki1017093-NIH-Birth        BANGLADESH                     12                   NA                0.1818182   0.0798051   0.2838313
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1117647   0.0643917   0.1591377
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.1123596   0.0659559   0.1587632
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                0.0731707   0.0333063   0.1130352
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                0.1210526   0.0746620   0.1674433
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    NA                0.1135135   0.0677928   0.1592342
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    NA                0.0843373   0.0420547   0.1266200
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    NA                0.0917431   0.0534164   0.1300698
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    NA                0.0909091   0.0538291   0.1279891
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    NA                0.1157407   0.0730686   0.1584129
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   NA                0.0923695   0.0563980   0.1283409
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   NA                0.1131222   0.0713537   0.1548906
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   NA                0.1024390   0.0609220   0.1439561
3 months    ki1101329-Keneba           GAMBIA                         1                    NA                0.2425532   0.1877396   0.2973668
3 months    ki1101329-Keneba           GAMBIA                         2                    NA                0.1835749   0.1308249   0.2363249
3 months    ki1101329-Keneba           GAMBIA                         3                    NA                0.1673307   0.1211426   0.2135188
3 months    ki1101329-Keneba           GAMBIA                         4                    NA                0.2193548   0.1541954   0.2845143
3 months    ki1101329-Keneba           GAMBIA                         5                    NA                0.2138365   0.1500922   0.2775808
3 months    ki1101329-Keneba           GAMBIA                         6                    NA                0.2706767   0.1951497   0.3462037
3 months    ki1101329-Keneba           GAMBIA                         7                    NA                0.2980769   0.2101474   0.3860065
3 months    ki1101329-Keneba           GAMBIA                         8                    NA                0.2708333   0.2079614   0.3337052
3 months    ki1101329-Keneba           GAMBIA                         9                    NA                0.2718447   0.2110757   0.3326136
3 months    ki1101329-Keneba           GAMBIA                         10                   NA                0.3065134   0.2505678   0.3624590
3 months    ki1101329-Keneba           GAMBIA                         11                   NA                0.2551020   0.1940613   0.3161428
3 months    ki1101329-Keneba           GAMBIA                         12                   NA                0.2639594   0.2023951   0.3255237
3 months    ki1119695-PROBIT           BELARUS                        1                    NA                0.0838323          NA          NA
3 months    ki1119695-PROBIT           BELARUS                        2                    NA                0.0718563          NA          NA
3 months    ki1119695-PROBIT           BELARUS                        3                    NA                0.0793103          NA          NA
3 months    ki1119695-PROBIT           BELARUS                        4                    NA                0.0711679          NA          NA
3 months    ki1119695-PROBIT           BELARUS                        5                    NA                0.0591133          NA          NA
3 months    ki1119695-PROBIT           BELARUS                        6                    NA                0.0673077          NA          NA
3 months    ki1119695-PROBIT           BELARUS                        7                    NA                0.0638853          NA          NA
3 months    ki1119695-PROBIT           BELARUS                        8                    NA                0.0561097          NA          NA
3 months    ki1119695-PROBIT           BELARUS                        9                    NA                0.0719132          NA          NA
3 months    ki1119695-PROBIT           BELARUS                        10                   NA                0.0939024          NA          NA
3 months    ki1119695-PROBIT           BELARUS                        11                   NA                0.0840999          NA          NA
3 months    ki1119695-PROBIT           BELARUS                        12                   NA                0.0834286          NA          NA
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.2164948   0.1945891   0.2384006
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.2347989   0.2093885   0.2602092
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       3                    NA                0.2145242   0.1912787   0.2377698
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       4                    NA                0.2151394   0.1897208   0.2405581
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       5                    NA                0.2475822   0.2212739   0.2738905
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       6                    NA                0.2302346   0.2059131   0.2545561
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       7                    NA                0.2415254   0.2171038   0.2659470
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       8                    NA                0.2197628   0.1969432   0.2425825
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       9                    NA                0.1591431   0.1393104   0.1789757
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       10                   NA                0.1774809   0.1543479   0.2006139
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       11                   NA                0.1864548   0.1643811   0.2085286
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       12                   NA                0.1809992   0.1594025   0.2025958
3 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.4353519          NA          NA
3 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.4204204          NA          NA
3 months    kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                0.3621713          NA          NA
3 months    kiGH5241-JiVitA-3          BANGLADESH                     4                    NA                0.3469626          NA          NA
3 months    kiGH5241-JiVitA-3          BANGLADESH                     5                    NA                0.3492537          NA          NA
3 months    kiGH5241-JiVitA-3          BANGLADESH                     6                    NA                0.3333333          NA          NA
3 months    kiGH5241-JiVitA-3          BANGLADESH                     7                    NA                0.3132372          NA          NA
3 months    kiGH5241-JiVitA-3          BANGLADESH                     8                    NA                0.3777574          NA          NA
3 months    kiGH5241-JiVitA-3          BANGLADESH                     9                    NA                0.3899505          NA          NA
3 months    kiGH5241-JiVitA-3          BANGLADESH                     10                   NA                0.4308219          NA          NA
3 months    kiGH5241-JiVitA-3          BANGLADESH                     11                   NA                0.4712492          NA          NA
3 months    kiGH5241-JiVitA-3          BANGLADESH                     12                   NA                0.4682540          NA          NA
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
6 months    ki1000108-IRC              INDIA                          1                    NA                0.4054054   0.2470126   0.5637982
6 months    ki1000108-IRC              INDIA                          2                    NA                0.5357143   0.3507614   0.7206672
6 months    ki1000108-IRC              INDIA                          3                    NA                0.4074074   0.2218443   0.5929705
6 months    ki1000108-IRC              INDIA                          4                    NA                0.4761905   0.2623212   0.6900597
6 months    ki1000108-IRC              INDIA                          5                    NA                0.4761905   0.2623212   0.6900597
6 months    ki1000108-IRC              INDIA                          6                    NA                0.3783784   0.2219173   0.5348395
6 months    ki1000108-IRC              INDIA                          7                    NA                0.4444444   0.2819262   0.6069627
6 months    ki1000108-IRC              INDIA                          8                    NA                0.2954545   0.1604792   0.4304299
6 months    ki1000108-IRC              INDIA                          9                    NA                0.4444444   0.2567845   0.6321044
6 months    ki1000108-IRC              INDIA                          10                   NA                0.3421053   0.1910808   0.4931297
6 months    ki1000108-IRC              INDIA                          11                   NA                0.3750000   0.2247873   0.5252127
6 months    ki1000108-IRC              INDIA                          12                   NA                0.5576923   0.4225352   0.6928494
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.5438596   0.4144407   0.6732786
6 months    ki1017093-NIH-Birth        BANGLADESH                     2                    NA                0.3255814   0.1853960   0.4657668
6 months    ki1017093-NIH-Birth        BANGLADESH                     3                    NA                0.2452830   0.1293438   0.3612222
6 months    ki1017093-NIH-Birth        BANGLADESH                     4                    NA                0.3260870   0.1904955   0.4616784
6 months    ki1017093-NIH-Birth        BANGLADESH                     5                    NA                0.2826087   0.1523717   0.4128457
6 months    ki1017093-NIH-Birth        BANGLADESH                     6                    NA                0.4666667   0.3207721   0.6125612
6 months    ki1017093-NIH-Birth        BANGLADESH                     7                    NA                0.4210526   0.2639301   0.5781752
6 months    ki1017093-NIH-Birth        BANGLADESH                     8                    NA                0.3513514   0.1973880   0.5053147
6 months    ki1017093-NIH-Birth        BANGLADESH                     9                    NA                0.4186047   0.2710183   0.5661910
6 months    ki1017093-NIH-Birth        BANGLADESH                     10                   NA                0.3191489   0.1857611   0.4525368
6 months    ki1017093-NIH-Birth        BANGLADESH                     11                   NA                0.4615385   0.3259190   0.5971580
6 months    ki1017093-NIH-Birth        BANGLADESH                     12                   NA                0.1818182   0.0677512   0.2958851
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1562500   0.0999767   0.2125233
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.1818182   0.1229546   0.2406818
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                0.1666667   0.1081719   0.2251614
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                0.2163743   0.1546431   0.2781054
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    NA                0.2235294   0.1608896   0.2861693
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    NA                0.1835443   0.1231698   0.2439188
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    NA                0.2270531   0.1699712   0.2841351
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    NA                0.2112676   0.1564353   0.2660999
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    NA                0.2233010   0.1664179   0.2801841
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   NA                0.2079646   0.1550399   0.2608893
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   NA                0.2065728   0.1521920   0.2609536
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   NA                0.1746032   0.1204690   0.2287374
6 months    ki1101329-Keneba           GAMBIA                         1                    NA                0.3026316   0.2429878   0.3622753
6 months    ki1101329-Keneba           GAMBIA                         2                    NA                0.2814070   0.2189147   0.3438993
6 months    ki1101329-Keneba           GAMBIA                         3                    NA                0.2789700   0.2213701   0.3365698
6 months    ki1101329-Keneba           GAMBIA                         4                    NA                0.3081761   0.2363896   0.3799626
6 months    ki1101329-Keneba           GAMBIA                         5                    NA                0.3354037   0.2624590   0.4083485
6 months    ki1101329-Keneba           GAMBIA                         6                    NA                0.3230769   0.2426697   0.4034841
6 months    ki1101329-Keneba           GAMBIA                         7                    NA                0.3900000   0.2943816   0.4856184
6 months    ki1101329-Keneba           GAMBIA                         8                    NA                0.3333333   0.2655721   0.4010946
6 months    ki1101329-Keneba           GAMBIA                         9                    NA                0.3350515   0.2686172   0.4014859
6 months    ki1101329-Keneba           GAMBIA                         10                   NA                0.3690037   0.3115407   0.4264667
6 months    ki1101329-Keneba           GAMBIA                         11                   NA                0.3264249   0.2602566   0.3925932
6 months    ki1101329-Keneba           GAMBIA                         12                   NA                0.3190476   0.2559925   0.3821028
6 months    ki1119695-PROBIT           BELARUS                        1                    NA                0.1265823          NA          NA
6 months    ki1119695-PROBIT           BELARUS                        2                    NA                0.1103753          NA          NA
6 months    ki1119695-PROBIT           BELARUS                        3                    NA                0.1093190          NA          NA
6 months    ki1119695-PROBIT           BELARUS                        4                    NA                0.0809793          NA          NA
6 months    ki1119695-PROBIT           BELARUS                        5                    NA                0.0857633          NA          NA
6 months    ki1119695-PROBIT           BELARUS                        6                    NA                0.0990099          NA          NA
6 months    ki1119695-PROBIT           BELARUS                        7                    NA                0.0945406          NA          NA
6 months    ki1119695-PROBIT           BELARUS                        8                    NA                0.0937099          NA          NA
6 months    ki1119695-PROBIT           BELARUS                        9                    NA                0.1001391          NA          NA
6 months    ki1119695-PROBIT           BELARUS                        10                   NA                0.1172762          NA          NA
6 months    ki1119695-PROBIT           BELARUS                        11                   NA                0.1251701          NA          NA
6 months    ki1119695-PROBIT           BELARUS                        12                   NA                0.1078788          NA          NA
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.2866741   0.2570132   0.3163350
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.3317308   0.2947864   0.3686751
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3                    NA                0.2746835   0.2435565   0.3058106
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       4                    NA                0.2844175   0.2500238   0.3188113
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       5                    NA                0.3375706   0.3027363   0.3724049
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       6                    NA                0.3746867   0.3411011   0.4082723
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       7                    NA                0.3315143   0.2974329   0.3655957
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       8                    NA                0.3145933   0.2831145   0.3460721
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       9                    NA                0.2375479   0.2077371   0.2673586
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       10                   NA                0.2767584   0.2424678   0.3110490
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       11                   NA                0.2509506   0.2206966   0.2812046
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       12                   NA                0.2448980   0.2156938   0.2741021
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.4317269          NA          NA
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.4444444          NA          NA
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                0.3926267          NA          NA
6 months    kiGH5241-JiVitA-3          BANGLADESH                     4                    NA                0.3653445          NA          NA
6 months    kiGH5241-JiVitA-3          BANGLADESH                     5                    NA                0.3752039          NA          NA
6 months    kiGH5241-JiVitA-3          BANGLADESH                     6                    NA                0.3494364          NA          NA
6 months    kiGH5241-JiVitA-3          BANGLADESH                     7                    NA                0.3343284          NA          NA
6 months    kiGH5241-JiVitA-3          BANGLADESH                     8                    NA                0.4104903          NA          NA
6 months    kiGH5241-JiVitA-3          BANGLADESH                     9                    NA                0.4244898          NA          NA
6 months    kiGH5241-JiVitA-3          BANGLADESH                     10                   NA                0.4807837          NA          NA
6 months    kiGH5241-JiVitA-3          BANGLADESH                     11                   NA                0.4970930          NA          NA
6 months    kiGH5241-JiVitA-3          BANGLADESH                     12                   NA                0.4747899          NA          NA
12 months   ki0047075b-MAL-ED          PERU                           1                    NA                0.5263158   0.3672672   0.6853643
12 months   ki0047075b-MAL-ED          PERU                           2                    NA                0.5789474   0.3565320   0.8013627
12 months   ki0047075b-MAL-ED          PERU                           3                    NA                0.4090909   0.2032590   0.6149228
12 months   ki0047075b-MAL-ED          PERU                           4                    NA                0.4736842   0.2487556   0.6986128
12 months   ki0047075b-MAL-ED          PERU                           5                    NA                0.5000000   0.3074528   0.6925472
12 months   ki0047075b-MAL-ED          PERU                           6                    NA                0.4666667   0.2137305   0.7196028
12 months   ki0047075b-MAL-ED          PERU                           7                    NA                0.5909091   0.3850772   0.7967410
12 months   ki0047075b-MAL-ED          PERU                           8                    NA                0.3750000   0.1373436   0.6126564
12 months   ki0047075b-MAL-ED          PERU                           9                    NA                0.5217391   0.3172129   0.7262654
12 months   ki0047075b-MAL-ED          PERU                           10                   NA                0.4210526   0.1986373   0.6434680
12 months   ki0047075b-MAL-ED          PERU                           11                   NA                0.6562500   0.4913826   0.8211174
12 months   ki0047075b-MAL-ED          PERU                           12                   NA                0.5789474   0.3565320   0.8013627
12 months   ki1000108-IRC              INDIA                          1                    NA                0.5263158   0.3673671   0.6852644
12 months   ki1000108-IRC              INDIA                          2                    NA                0.6071429   0.4260236   0.7882622
12 months   ki1000108-IRC              INDIA                          3                    NA                0.4814815   0.2927819   0.6701811
12 months   ki1000108-IRC              INDIA                          4                    NA                0.6190476   0.4110929   0.8270023
12 months   ki1000108-IRC              INDIA                          5                    NA                0.6666667   0.4647998   0.8685335
12 months   ki1000108-IRC              INDIA                          6                    NA                0.4324324   0.2726062   0.5922586
12 months   ki1000108-IRC              INDIA                          7                    NA                0.4722222   0.3089439   0.6355005
12 months   ki1000108-IRC              INDIA                          8                    NA                0.4090909   0.2636372   0.5545446
12 months   ki1000108-IRC              INDIA                          9                    NA                0.5185185   0.3298189   0.7072181
12 months   ki1000108-IRC              INDIA                          10                   NA                0.4210526   0.2638800   0.5782253
12 months   ki1000108-IRC              INDIA                          11                   NA                0.4750000   0.3200550   0.6299450
12 months   ki1000108-IRC              INDIA                          12                   NA                0.5882353   0.4529982   0.7234724
12 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.6481481   0.5206599   0.7756364
12 months   ki1017093-NIH-Birth        BANGLADESH                     2                    NA                0.5510204   0.4116248   0.6904160
12 months   ki1017093-NIH-Birth        BANGLADESH                     3                    NA                0.4313725   0.2953206   0.5674245
12 months   ki1017093-NIH-Birth        BANGLADESH                     4                    NA                0.3953488   0.2490778   0.5416199
12 months   ki1017093-NIH-Birth        BANGLADESH                     5                    NA                0.4318182   0.2853249   0.5783114
12 months   ki1017093-NIH-Birth        BANGLADESH                     6                    NA                0.5909091   0.4454993   0.7363189
12 months   ki1017093-NIH-Birth        BANGLADESH                     7                    NA                0.5128205   0.3558042   0.6698368
12 months   ki1017093-NIH-Birth        BANGLADESH                     8                    NA                0.5294118   0.3614820   0.6973415
12 months   ki1017093-NIH-Birth        BANGLADESH                     9                    NA                0.5853659   0.4344259   0.7363058
12 months   ki1017093-NIH-Birth        BANGLADESH                     10                   NA                0.4418605   0.2932910   0.5904299
12 months   ki1017093-NIH-Birth        BANGLADESH                     11                   NA                0.5625000   0.4220313   0.7029687
12 months   ki1017093-NIH-Birth        BANGLADESH                     12                   NA                0.4313725   0.2953206   0.5674245
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2867647   0.2107379   0.3627915
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.3020134   0.2282739   0.3757530
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                0.3014706   0.2243266   0.3786146
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                0.3835616   0.3046678   0.4624554
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    NA                0.3424658   0.2654733   0.4194582
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    NA                0.3309353   0.2526905   0.4091800
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    NA                0.3505155   0.2833580   0.4176729
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    NA                0.2970297   0.2339994   0.3600600
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    NA                0.3206522   0.2531976   0.3881067
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   NA                0.2644231   0.2044731   0.3243730
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   NA                0.3439153   0.2761774   0.4116532
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   NA                0.2934132   0.2243381   0.3624882
12 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.4155844   0.3520186   0.4791502
12 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.3778802   0.3133559   0.4424045
12 months   ki1101329-Keneba           GAMBIA                         3                    NA                0.3755102   0.3148604   0.4361600
12 months   ki1101329-Keneba           GAMBIA                         4                    NA                0.3974359   0.3206269   0.4742449
12 months   ki1101329-Keneba           GAMBIA                         5                    NA                0.4277457   0.3540056   0.5014857
12 months   ki1101329-Keneba           GAMBIA                         6                    NA                0.4285714   0.3465801   0.5105627
12 months   ki1101329-Keneba           GAMBIA                         7                    NA                0.4285714   0.3369024   0.5202405
12 months   ki1101329-Keneba           GAMBIA                         8                    NA                0.3774510   0.3109174   0.4439846
12 months   ki1101329-Keneba           GAMBIA                         9                    NA                0.4341463   0.3662834   0.5020092
12 months   ki1101329-Keneba           GAMBIA                         10                   NA                0.4372760   0.3790573   0.4954947
12 months   ki1101329-Keneba           GAMBIA                         11                   NA                0.3827751   0.3168639   0.4486864
12 months   ki1101329-Keneba           GAMBIA                         12                   NA                0.4178404   0.3515919   0.4840888
12 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                0.6785714   0.5052731   0.8518698
12 months   ki1112895-Guatemala BSC    GUATEMALA                      2                    NA                0.3043478   0.1159609   0.4927347
12 months   ki1112895-Guatemala BSC    GUATEMALA                      3                    NA                0.5185185   0.3297092   0.7073279
12 months   ki1112895-Guatemala BSC    GUATEMALA                      4                    NA                0.4666667   0.2878222   0.6455112
12 months   ki1112895-Guatemala BSC    GUATEMALA                      5                    NA                0.5185185   0.3297092   0.7073279
12 months   ki1112895-Guatemala BSC    GUATEMALA                      6                    NA                0.5789474   0.3565425   0.8013523
12 months   ki1112895-Guatemala BSC    GUATEMALA                      7                    NA                0.4500000   0.2315731   0.6684269
12 months   ki1112895-Guatemala BSC    GUATEMALA                      8                    NA                0.5833333   0.3038888   0.8627778
12 months   ki1112895-Guatemala BSC    GUATEMALA                      9                    NA                0.6428571   0.3914095   0.8943048
12 months   ki1112895-Guatemala BSC    GUATEMALA                      10                   NA                0.4444444   0.2566754   0.6322135
12 months   ki1112895-Guatemala BSC    GUATEMALA                      11                   NA                0.5454545   0.3370102   0.7538989
12 months   ki1112895-Guatemala BSC    GUATEMALA                      12                   NA                0.6071429   0.4259182   0.7883675
12 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.2638889          NA          NA
12 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                    NA                0.1041667          NA          NA
12 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   3                    NA                0.2083333          NA          NA
12 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   4                    NA                0.2105263          NA          NA
12 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   5                    NA                0.2241379          NA          NA
12 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   6                    NA                0.1304348          NA          NA
12 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   7                    NA                0.2321429          NA          NA
12 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   8                    NA                0.2682927          NA          NA
12 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   9                    NA                0.2173913          NA          NA
12 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   10                   NA                0.1648352          NA          NA
12 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   11                   NA                0.2162162          NA          NA
12 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   12                   NA                0.2417582          NA          NA
12 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                0.3135593   0.2298152   0.3973034
12 months   ki1114097-CMIN             GUINEA-BISSAU                  2                    NA                0.2987013   0.1964289   0.4009737
12 months   ki1114097-CMIN             GUINEA-BISSAU                  3                    NA                0.2441860   0.1533512   0.3350209
12 months   ki1114097-CMIN             GUINEA-BISSAU                  4                    NA                0.2142857   0.1181215   0.3104500
12 months   ki1114097-CMIN             GUINEA-BISSAU                  5                    NA                0.2771084   0.1807796   0.3734372
12 months   ki1114097-CMIN             GUINEA-BISSAU                  6                    NA                0.1857143   0.0945771   0.2768515
12 months   ki1114097-CMIN             GUINEA-BISSAU                  7                    NA                0.2025316   0.1138725   0.2911908
12 months   ki1114097-CMIN             GUINEA-BISSAU                  8                    NA                0.2065217   0.1237675   0.2892760
12 months   ki1114097-CMIN             GUINEA-BISSAU                  9                    NA                0.2537313   0.1800231   0.3274396
12 months   ki1114097-CMIN             GUINEA-BISSAU                  10                   NA                0.2539683   0.1779327   0.3300038
12 months   ki1114097-CMIN             GUINEA-BISSAU                  11                   NA                0.2142857   0.1382612   0.2903102
12 months   ki1114097-CMIN             GUINEA-BISSAU                  12                   NA                0.2601626   0.1825965   0.3377287
12 months   ki1114097-CMIN             PERU                           1                    NA                0.1627907   0.0523710   0.2732104
12 months   ki1114097-CMIN             PERU                           2                    NA                0.3030303   0.1920804   0.4139802
12 months   ki1114097-CMIN             PERU                           3                    NA                0.2500000   0.1550479   0.3449521
12 months   ki1114097-CMIN             PERU                           4                    NA                0.2857143   0.1798128   0.3916158
12 months   ki1114097-CMIN             PERU                           5                    NA                0.2777778   0.1742476   0.3813080
12 months   ki1114097-CMIN             PERU                           6                    NA                0.2950820   0.1805505   0.4096134
12 months   ki1114097-CMIN             PERU                           7                    NA                0.2835821   0.1755795   0.3915847
12 months   ki1114097-CMIN             PERU                           8                    NA                0.1973684   0.1078239   0.2869130
12 months   ki1114097-CMIN             PERU                           9                    NA                0.2600000   0.1383347   0.3816653
12 months   ki1114097-CMIN             PERU                           10                   NA                0.2765957   0.1486242   0.4045673
12 months   ki1114097-CMIN             PERU                           11                   NA                0.2000000   0.0759551   0.3240449
12 months   ki1114097-CMIN             PERU                           12                   NA                0.2200000   0.1050993   0.3349007
12 months   ki1119695-PROBIT           BELARUS                        1                    NA                0.1740891          NA          NA
12 months   ki1119695-PROBIT           BELARUS                        2                    NA                0.1731161          NA          NA
12 months   ki1119695-PROBIT           BELARUS                        3                    NA                0.1488616          NA          NA
12 months   ki1119695-PROBIT           BELARUS                        4                    NA                0.1150278          NA          NA
12 months   ki1119695-PROBIT           BELARUS                        5                    NA                0.1158433          NA          NA
12 months   ki1119695-PROBIT           BELARUS                        6                    NA                0.1468189          NA          NA
12 months   ki1119695-PROBIT           BELARUS                        7                    NA                0.1300268          NA          NA
12 months   ki1119695-PROBIT           BELARUS                        8                    NA                0.1359593          NA          NA
12 months   ki1119695-PROBIT           BELARUS                        9                    NA                0.1343490          NA          NA
12 months   ki1119695-PROBIT           BELARUS                        10                   NA                0.1633663          NA          NA
12 months   ki1119695-PROBIT           BELARUS                        11                   NA                0.1657609          NA          NA
12 months   ki1119695-PROBIT           BELARUS                        12                   NA                0.1484099          NA          NA
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.3654618   0.3355537   0.3953700
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.3942065   0.3602140   0.4281991
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                    NA                0.3977011   0.3651779   0.4302244
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                    NA                0.3615280   0.3267456   0.3963103
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                    NA                0.4272109   0.3914470   0.4629747
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                    NA                0.4220297   0.3879741   0.4560853
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                    NA                0.4016990   0.3682244   0.4351737
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                    NA                0.3979592   0.3656544   0.4302640
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                    NA                0.3262936   0.2964305   0.3561566
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       10                   NA                0.3776596   0.3430079   0.4123113
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       11                   NA                0.3403782   0.3094027   0.3713537
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       12                   NA                0.3329810   0.3029477   0.3630142
12 months   ki1148112-LCNI-5           MALAWI                         1                    NA                0.5671642   0.4484525   0.6858758
12 months   ki1148112-LCNI-5           MALAWI                         2                    NA                0.3913043   0.2501828   0.5324259
12 months   ki1148112-LCNI-5           MALAWI                         3                    NA                0.4615385   0.2698000   0.6532770
12 months   ki1148112-LCNI-5           MALAWI                         4                    NA                0.4736842   0.3148330   0.6325354
12 months   ki1148112-LCNI-5           MALAWI                         5                    NA                0.4750000   0.3201500   0.6298500
12 months   ki1148112-LCNI-5           MALAWI                         6                    NA                0.4705882   0.3027107   0.6384658
12 months   ki1148112-LCNI-5           MALAWI                         7                    NA                0.4426230   0.3179015   0.5673444
12 months   ki1148112-LCNI-5           MALAWI                         8                    NA                0.4347826   0.3334231   0.5361421
12 months   ki1148112-LCNI-5           MALAWI                         9                    NA                0.4333333   0.3308936   0.5357730
12 months   ki1148112-LCNI-5           MALAWI                         10                   NA                0.5625000   0.4765076   0.6484924
12 months   ki1148112-LCNI-5           MALAWI                         11                   NA                0.4607843   0.3639911   0.5575775
12 months   ki1148112-LCNI-5           MALAWI                         12                   NA                0.4505495   0.3482603   0.5528386
12 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.4380665          NA          NA
12 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.4537367          NA          NA
12 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                0.4361111          NA          NA
12 months   kiGH5241-JiVitA-3          BANGLADESH                     4                    NA                0.4232715          NA          NA
12 months   kiGH5241-JiVitA-3          BANGLADESH                     5                    NA                0.4247039          NA          NA
12 months   kiGH5241-JiVitA-3          BANGLADESH                     6                    NA                0.4123539          NA          NA
12 months   kiGH5241-JiVitA-3          BANGLADESH                     7                    NA                0.3715670          NA          NA
12 months   kiGH5241-JiVitA-3          BANGLADESH                     8                    NA                0.4358639          NA          NA
12 months   kiGH5241-JiVitA-3          BANGLADESH                     9                    NA                0.4173913          NA          NA
12 months   kiGH5241-JiVitA-3          BANGLADESH                     10                   NA                0.5172840          NA          NA
12 months   kiGH5241-JiVitA-3          BANGLADESH                     11                   NA                0.5359629          NA          NA
12 months   kiGH5241-JiVitA-3          BANGLADESH                     12                   NA                0.5019011          NA          NA
18 months   ki1000108-IRC              INDIA                          1                    NA                0.5263158   0.3673676   0.6852640
18 months   ki1000108-IRC              INDIA                          2                    NA                0.6428571   0.4651606   0.8205536
18 months   ki1000108-IRC              INDIA                          3                    NA                0.5925926   0.4070300   0.7781552
18 months   ki1000108-IRC              INDIA                          4                    NA                0.7142857   0.5208343   0.9077372
18 months   ki1000108-IRC              INDIA                          5                    NA                0.7272727   0.5409434   0.9136021
18 months   ki1000108-IRC              INDIA                          6                    NA                0.4594595   0.2986852   0.6202337
18 months   ki1000108-IRC              INDIA                          7                    NA                0.5277778   0.3645000   0.6910556
18 months   ki1000108-IRC              INDIA                          8                    NA                0.4545455   0.3072392   0.6018517
18 months   ki1000108-IRC              INDIA                          9                    NA                0.6296296   0.4472575   0.8120018
18 months   ki1000108-IRC              INDIA                          10                   NA                0.4210526   0.2638805   0.5782248
18 months   ki1000108-IRC              INDIA                          11                   NA                0.5500000   0.3956391   0.7043609
18 months   ki1000108-IRC              INDIA                          12                   NA                0.6666667   0.5371313   0.7962020
18 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.7234043   0.5953925   0.8514160
18 months   ki1017093-NIH-Birth        BANGLADESH                     2                    NA                0.6976744   0.5602655   0.8350834
18 months   ki1017093-NIH-Birth        BANGLADESH                     3                    NA                0.5777778   0.4333236   0.7222320
18 months   ki1017093-NIH-Birth        BANGLADESH                     4                    NA                0.6315789   0.4780537   0.7851042
18 months   ki1017093-NIH-Birth        BANGLADESH                     5                    NA                0.5641026   0.4083180   0.7198871
18 months   ki1017093-NIH-Birth        BANGLADESH                     6                    NA                0.7250000   0.5864869   0.8635131
18 months   ki1017093-NIH-Birth        BANGLADESH                     7                    NA                0.6052632   0.4496954   0.7608309
18 months   ki1017093-NIH-Birth        BANGLADESH                     8                    NA                0.7000000   0.5358524   0.8641476
18 months   ki1017093-NIH-Birth        BANGLADESH                     9                    NA                0.6486486   0.4946701   0.8026272
18 months   ki1017093-NIH-Birth        BANGLADESH                     10                   NA                0.5853659   0.4344136   0.7363182
18 months   ki1017093-NIH-Birth        BANGLADESH                     11                   NA                0.7142857   0.5876695   0.8409019
18 months   ki1017093-NIH-Birth        BANGLADESH                     12                   NA                0.6200000   0.4853247   0.7546753
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.4687500   0.3688922   0.5686078
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.3545455   0.2651182   0.4439727
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                0.4339623   0.3395794   0.5283451
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                0.4661017   0.3760636   0.5561397
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    NA                0.3839286   0.2938277   0.4740295
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    NA                0.4074074   0.3147077   0.5001071
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    NA                0.4068966   0.3269093   0.4868838
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    NA                0.3537415   0.2764227   0.4310603
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    NA                0.4198473   0.3353041   0.5043905
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   NA                0.3716216   0.2937413   0.4495019
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   NA                0.4016393   0.3146197   0.4886590
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   NA                0.4144144   0.3227399   0.5060889
18 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.4956140   0.4307014   0.5605266
18 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.4651163   0.3984303   0.5318022
18 months   ki1101329-Keneba           GAMBIA                         3                    NA                0.4683544   0.4048115   0.5318974
18 months   ki1101329-Keneba           GAMBIA                         4                    NA                0.4596273   0.3826293   0.5366254
18 months   ki1101329-Keneba           GAMBIA                         5                    NA                0.5125000   0.4350329   0.5899671
18 months   ki1101329-Keneba           GAMBIA                         6                    NA                0.5597015   0.4756312   0.6437718
18 months   ki1101329-Keneba           GAMBIA                         7                    NA                0.5315315   0.4386806   0.6243825
18 months   ki1101329-Keneba           GAMBIA                         8                    NA                0.5000000   0.4288891   0.5711109
18 months   ki1101329-Keneba           GAMBIA                         9                    NA                0.5714286   0.5008610   0.6419961
18 months   ki1101329-Keneba           GAMBIA                         10                   NA                0.5057471   0.4450785   0.5664158
18 months   ki1101329-Keneba           GAMBIA                         11                   NA                0.4773869   0.4079737   0.5468001
18 months   ki1101329-Keneba           GAMBIA                         12                   NA                0.4874372   0.4179748   0.5568995
18 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                0.3524590   0.2676485   0.4372695
18 months   ki1114097-CMIN             GUINEA-BISSAU                  2                    NA                0.3510638   0.2545318   0.4475959
18 months   ki1114097-CMIN             GUINEA-BISSAU                  3                    NA                0.3139535   0.2158235   0.4120835
18 months   ki1114097-CMIN             GUINEA-BISSAU                  4                    NA                0.3661972   0.2540865   0.4783079
18 months   ki1114097-CMIN             GUINEA-BISSAU                  5                    NA                0.4428571   0.3264425   0.5592718
18 months   ki1114097-CMIN             GUINEA-BISSAU                  6                    NA                0.3906250   0.2710408   0.5102092
18 months   ki1114097-CMIN             GUINEA-BISSAU                  7                    NA                0.3043478   0.1957307   0.4129649
18 months   ki1114097-CMIN             GUINEA-BISSAU                  8                    NA                0.3720930   0.2698895   0.4742965
18 months   ki1114097-CMIN             GUINEA-BISSAU                  9                    NA                0.4122807   0.3218803   0.5026812
18 months   ki1114097-CMIN             GUINEA-BISSAU                  10                   NA                0.3548387   0.2705867   0.4390907
18 months   ki1114097-CMIN             GUINEA-BISSAU                  11                   NA                0.4018692   0.3089319   0.4948065
18 months   ki1114097-CMIN             GUINEA-BISSAU                  12                   NA                0.3793103   0.2909724   0.4676483
18 months   ki1114097-CMIN             PERU                           1                    NA                0.3333333   0.1723740   0.4942927
18 months   ki1114097-CMIN             PERU                           2                    NA                0.4655172   0.3370477   0.5939868
18 months   ki1114097-CMIN             PERU                           3                    NA                0.3835616   0.2719318   0.4951915
18 months   ki1114097-CMIN             PERU                           4                    NA                0.3606557   0.2400610   0.4812504
18 months   ki1114097-CMIN             PERU                           5                    NA                0.4444444   0.3216492   0.5672397
18 months   ki1114097-CMIN             PERU                           6                    NA                0.3818182   0.2533237   0.5103127
18 months   ki1114097-CMIN             PERU                           7                    NA                0.3770492   0.2553352   0.4987631
18 months   ki1114097-CMIN             PERU                           8                    NA                0.3529412   0.2392706   0.4666117
18 months   ki1114097-CMIN             PERU                           9                    NA                0.3773585   0.2467602   0.5079568
18 months   ki1114097-CMIN             PERU                           10                   NA                0.3695652   0.2299714   0.5091590
18 months   ki1114097-CMIN             PERU                           11                   NA                0.3000000   0.1578788   0.4421212
18 months   ki1114097-CMIN             PERU                           12                   NA                0.3111111   0.1757464   0.4464758
18 months   ki1119695-PROBIT           BELARUS                        1                    NA                0.1744681          NA          NA
18 months   ki1119695-PROBIT           BELARUS                        2                    NA                0.1760870          NA          NA
18 months   ki1119695-PROBIT           BELARUS                        3                    NA                0.1632653          NA          NA
18 months   ki1119695-PROBIT           BELARUS                        4                    NA                0.1264822          NA          NA
18 months   ki1119695-PROBIT           BELARUS                        5                    NA                0.1286232          NA          NA
18 months   ki1119695-PROBIT           BELARUS                        6                    NA                0.1643110          NA          NA
18 months   ki1119695-PROBIT           BELARUS                        7                    NA                0.1545064          NA          NA
18 months   ki1119695-PROBIT           BELARUS                        8                    NA                0.1455526          NA          NA
18 months   ki1119695-PROBIT           BELARUS                        9                    NA                0.1470588          NA          NA
18 months   ki1119695-PROBIT           BELARUS                        10                   NA                0.1757813          NA          NA
18 months   ki1119695-PROBIT           BELARUS                        11                   NA                0.1626248          NA          NA
18 months   ki1119695-PROBIT           BELARUS                        12                   NA                0.1590909          NA          NA
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.5140845   0.4773185   0.5508505
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.5108696   0.4691658   0.5525734
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                    NA                0.5132605   0.4745645   0.5519565
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                    NA                0.4810811   0.4395101   0.5226521
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                    NA                0.5305344   0.4878006   0.5732681
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                    NA                0.5283630   0.4889713   0.5677548
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                    NA                0.4991364   0.4584070   0.5398658
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                    NA                0.4705882   0.4320955   0.5090810
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                    NA                0.4167916   0.3793731   0.4542101
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       10                   NA                0.4785156   0.4352432   0.5217881
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       11                   NA                0.4719272   0.4338101   0.5100442
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       12                   NA                0.4871383   0.4478549   0.5264217
18 months   ki1148112-LCNI-5           MALAWI                         1                    NA                0.6363636   0.5091380   0.7635892
18 months   ki1148112-LCNI-5           MALAWI                         2                    NA                0.4250000   0.2716909   0.5783091
18 months   ki1148112-LCNI-5           MALAWI                         3                    NA                0.6500000   0.4408079   0.8591921
18 months   ki1148112-LCNI-5           MALAWI                         4                    NA                0.4838710   0.3078223   0.6599196
18 months   ki1148112-LCNI-5           MALAWI                         5                    NA                0.4705882   0.3026895   0.6384870
18 months   ki1148112-LCNI-5           MALAWI                         6                    NA                0.4782609   0.2739626   0.6825592
18 months   ki1148112-LCNI-5           MALAWI                         7                    NA                0.4545455   0.3073104   0.6017805
18 months   ki1148112-LCNI-5           MALAWI                         8                    NA                0.4736842   0.3613452   0.5860232
18 months   ki1148112-LCNI-5           MALAWI                         9                    NA                0.5060241   0.3983853   0.6136629
18 months   ki1148112-LCNI-5           MALAWI                         10                   NA                0.6880734   0.6010372   0.7751096
18 months   ki1148112-LCNI-5           MALAWI                         11                   NA                0.6049383   0.4983977   0.7114789
18 months   ki1148112-LCNI-5           MALAWI                         12                   NA                0.5750000   0.4665941   0.6834059
18 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.5375817          NA          NA
18 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.5576560          NA          NA
18 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                0.5170279          NA          NA
18 months   kiGH5241-JiVitA-3          BANGLADESH                     4                    NA                0.5074349          NA          NA
18 months   kiGH5241-JiVitA-3          BANGLADESH                     5                    NA                0.4963100          NA          NA
18 months   kiGH5241-JiVitA-3          BANGLADESH                     6                    NA                0.5220729          NA          NA
18 months   kiGH5241-JiVitA-3          BANGLADESH                     7                    NA                0.4658273          NA          NA
18 months   kiGH5241-JiVitA-3          BANGLADESH                     8                    NA                0.5397924          NA          NA
18 months   kiGH5241-JiVitA-3          BANGLADESH                     9                    NA                0.5142429          NA          NA
18 months   kiGH5241-JiVitA-3          BANGLADESH                     10                   NA                0.5991561          NA          NA
18 months   kiGH5241-JiVitA-3          BANGLADESH                     11                   NA                0.6228188          NA          NA
18 months   kiGH5241-JiVitA-3          BANGLADESH                     12                   NA                0.5982533          NA          NA
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.8000000   0.6830058   0.9169942
24 months   ki1017093-NIH-Birth        BANGLADESH                     2                    NA                0.8055556   0.6761345   0.9349766
24 months   ki1017093-NIH-Birth        BANGLADESH                     3                    NA                0.6818182   0.5440477   0.8195887
24 months   ki1017093-NIH-Birth        BANGLADESH                     4                    NA                0.8333333   0.7114644   0.9552023
24 months   ki1017093-NIH-Birth        BANGLADESH                     5                    NA                0.7567568   0.6183656   0.8951479
24 months   ki1017093-NIH-Birth        BANGLADESH                     6                    NA                0.8205128   0.6999433   0.9410824
24 months   ki1017093-NIH-Birth        BANGLADESH                     7                    NA                0.7027027   0.5552709   0.8501345
24 months   ki1017093-NIH-Birth        BANGLADESH                     8                    NA                0.7500000   0.5894419   0.9105581
24 months   ki1017093-NIH-Birth        BANGLADESH                     9                    NA                0.8235294   0.6952530   0.9518058
24 months   ki1017093-NIH-Birth        BANGLADESH                     10                   NA                0.6842105   0.5362614   0.8321597
24 months   ki1017093-NIH-Birth        BANGLADESH                     11                   NA                0.7659574   0.6447829   0.8871320
24 months   ki1017093-NIH-Birth        BANGLADESH                     12                   NA                0.6734694   0.5420276   0.8049112
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.5074627   0.3876898   0.6272356
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.2500000   0.1525979   0.3474021
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                0.4305556   0.3161233   0.5449878
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                0.4810127   0.3707782   0.5912471
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    NA                0.4084507   0.2940548   0.5228466
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    NA                0.4776119   0.3579458   0.5972781
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    NA                0.4418605   0.3368484   0.5468725
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    NA                0.4226804   0.3243240   0.5210368
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    NA                0.4395604   0.3375306   0.5415903
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   NA                0.4848485   0.3863505   0.5833465
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   NA                0.4337349   0.3270612   0.5404087
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   NA                0.4166667   0.3027307   0.5306027
24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.5360360   0.4704201   0.6016519
24 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.5467980   0.4783032   0.6152929
24 months   ki1101329-Keneba           GAMBIA                         3                    NA                0.6027397   0.5379171   0.6675624
24 months   ki1101329-Keneba           GAMBIA                         4                    NA                0.5608108   0.4808367   0.6407850
24 months   ki1101329-Keneba           GAMBIA                         5                    NA                0.5900621   0.5140747   0.6660495
24 months   ki1101329-Keneba           GAMBIA                         6                    NA                0.6201550   0.5363819   0.7039282
24 months   ki1101329-Keneba           GAMBIA                         7                    NA                0.5840708   0.4931738   0.6749678
24 months   ki1101329-Keneba           GAMBIA                         8                    NA                0.5315789   0.4606094   0.6025485
24 months   ki1101329-Keneba           GAMBIA                         9                    NA                0.6310160   0.5618410   0.7001911
24 months   ki1101329-Keneba           GAMBIA                         10                   NA                0.5856574   0.5247021   0.6466126
24 months   ki1101329-Keneba           GAMBIA                         11                   NA                0.5392670   0.4685610   0.6099730
24 months   ki1101329-Keneba           GAMBIA                         12                   NA                0.5544041   0.4842664   0.6245419
24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.4444444          NA          NA
24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                    NA                0.2682927          NA          NA
24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   3                    NA                0.4750000          NA          NA
24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   4                    NA                0.4827586          NA          NA
24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   5                    NA                0.4186047          NA          NA
24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   6                    NA                0.3750000          NA          NA
24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   7                    NA                0.4750000          NA          NA
24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   8                    NA                0.4629630          NA          NA
24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   9                    NA                0.4677419          NA          NA
24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   10                   NA                0.3500000          NA          NA
24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   11                   NA                0.3720930          NA          NA
24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   12                   NA                0.4339623          NA          NA
24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                0.4356436   0.3388975   0.5323897
24 months   ki1114097-CMIN             GUINEA-BISSAU                  2                    NA                0.4864865   0.3725541   0.6004189
24 months   ki1114097-CMIN             GUINEA-BISSAU                  3                    NA                0.3855422   0.2807824   0.4903020
24 months   ki1114097-CMIN             GUINEA-BISSAU                  4                    NA                0.5616438   0.4477673   0.6755204
24 months   ki1114097-CMIN             GUINEA-BISSAU                  5                    NA                0.5176471   0.4113695   0.6239246
24 months   ki1114097-CMIN             GUINEA-BISSAU                  6                    NA                0.4833333   0.3568292   0.6098375
24 months   ki1114097-CMIN             GUINEA-BISSAU                  7                    NA                0.4430380   0.3334478   0.5526281
24 months   ki1114097-CMIN             GUINEA-BISSAU                  8                    NA                0.4183673   0.3206567   0.5160780
24 months   ki1114097-CMIN             GUINEA-BISSAU                  9                    NA                0.5163934   0.4276762   0.6051107
24 months   ki1114097-CMIN             GUINEA-BISSAU                  10                   NA                0.4375000   0.3455836   0.5294164
24 months   ki1114097-CMIN             GUINEA-BISSAU                  11                   NA                0.4226804   0.3243291   0.5210317
24 months   ki1114097-CMIN             GUINEA-BISSAU                  12                   NA                0.4578313   0.3505973   0.5650654
24 months   ki1114097-CMIN             PERU                           1                    NA                0.4166667   0.2192536   0.6140797
24 months   ki1114097-CMIN             PERU                           2                    NA                0.4791667   0.3377174   0.6206160
24 months   ki1114097-CMIN             PERU                           3                    NA                0.3970588   0.2806625   0.5134551
24 months   ki1114097-CMIN             PERU                           4                    NA                0.4769231   0.3553943   0.5984518
24 months   ki1114097-CMIN             PERU                           5                    NA                0.5652174   0.4218357   0.7085991
24 months   ki1114097-CMIN             PERU                           6                    NA                0.4313725   0.2953272   0.5674179
24 months   ki1114097-CMIN             PERU                           7                    NA                0.4468085   0.3045500   0.5890670
24 months   ki1114097-CMIN             PERU                           8                    NA                0.3888889   0.2587507   0.5190271
24 months   ki1114097-CMIN             PERU                           9                    NA                0.5106383   0.3676003   0.6536763
24 months   ki1114097-CMIN             PERU                           10                   NA                0.4761905   0.3250151   0.6273659
24 months   ki1114097-CMIN             PERU                           11                   NA                0.4594595   0.2987411   0.6201779
24 months   ki1114097-CMIN             PERU                           12                   NA                0.4285714   0.2787767   0.5783662
24 months   ki1119695-PROBIT           BELARUS                        1                    NA                0.3300971          NA          NA
24 months   ki1119695-PROBIT           BELARUS                        2                    NA                0.3423423          NA          NA
24 months   ki1119695-PROBIT           BELARUS                        3                    NA                0.2686567          NA          NA
24 months   ki1119695-PROBIT           BELARUS                        4                    NA                0.1338028          NA          NA
24 months   ki1119695-PROBIT           BELARUS                        5                    NA                0.2064516          NA          NA
24 months   ki1119695-PROBIT           BELARUS                        6                    NA                0.1582278          NA          NA
24 months   ki1119695-PROBIT           BELARUS                        7                    NA                0.1684783          NA          NA
24 months   ki1119695-PROBIT           BELARUS                        8                    NA                0.1642512          NA          NA
24 months   ki1119695-PROBIT           BELARUS                        9                    NA                0.1377551          NA          NA
24 months   ki1119695-PROBIT           BELARUS                        10                   NA                0.1900826          NA          NA
24 months   ki1119695-PROBIT           BELARUS                        11                   NA                0.2051282          NA          NA
24 months   ki1119695-PROBIT           BELARUS                        12                   NA                0.2650602          NA          NA
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.7500000   0.6932795   0.8067205
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.7378641   0.6777908   0.7979374
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                    NA                0.6797753   0.6112164   0.7483342
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                    NA                0.7032258   0.6312878   0.7751638
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                    NA                0.7342657   0.6618478   0.8066837
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                    NA                0.7142857   0.6444862   0.7840853
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                    NA                0.7190083   0.6388986   0.7991179
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                    NA                0.6811594   0.6033853   0.7589336
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                    NA                0.6333333   0.5470901   0.7195766
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10                   NA                0.7600000   0.6762710   0.8437290
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11                   NA                0.7434211   0.6739714   0.8128707
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12                   NA                0.7182320   0.6526775   0.7837866
24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                0.6379310   0.5141609   0.7617012
24 months   ki1148112-LCNI-5           MALAWI                         2                    NA                0.5909091   0.4455336   0.7362846
24 months   ki1148112-LCNI-5           MALAWI                         3                    NA                0.6400000   0.4517137   0.8282863
24 months   ki1148112-LCNI-5           MALAWI                         4                    NA                0.5945946   0.4362870   0.7529022
24 months   ki1148112-LCNI-5           MALAWI                         5                    NA                0.5294118   0.3615216   0.6973019
24 months   ki1148112-LCNI-5           MALAWI                         6                    NA                0.7000000   0.5359046   0.8640954
24 months   ki1148112-LCNI-5           MALAWI                         7                    NA                0.6315789   0.5062660   0.7568919
24 months   ki1148112-LCNI-5           MALAWI                         8                    NA                0.6125000   0.5056705   0.7193295
24 months   ki1148112-LCNI-5           MALAWI                         9                    NA                0.6144578   0.5096749   0.7192407
24 months   ki1148112-LCNI-5           MALAWI                         10                   NA                0.7545455   0.6740671   0.8350238
24 months   ki1148112-LCNI-5           MALAWI                         11                   NA                0.6785714   0.5786295   0.7785134
24 months   ki1148112-LCNI-5           MALAWI                         12                   NA                0.6904762   0.5915459   0.7894064


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki1000108-IRC              INDIA                          NA                   NA                0.3170732   0.2719756   0.3621708
3 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2225755   0.1900416   0.2551094
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1019641   0.0898375   0.1140906
3 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.2447735   0.2271830   0.2623640
3 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0740923          NA          NA
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2095360   0.2028018   0.2162703
3 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4033513          NA          NA
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.5122616   0.4610525   0.5634707
6 months    ki1000108-IRC              INDIA                          NA                   NA                0.4240196   0.3760078   0.4720314
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.3647913   0.3245616   0.4050210
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2000895   0.1834961   0.2166830
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.3228799   0.3036153   0.3421444
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.1042654          NA          NA
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2945506   0.2851855   0.3039158
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4254167          NA          NA
12 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.5185185   0.4588090   0.5782281
12 months   ki1000108-IRC              INDIA                          NA                   NA                0.5073529   0.4587823   0.5559236
12 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.5101664   0.4680034   0.5523294
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3171343   0.2967138   0.3375547
12 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.4072987   0.3875717   0.4270256
12 months   ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.5234657   0.4645427   0.5823887
12 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.2123116          NA          NA
12 months   ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.2470085   0.2222861   0.2717310
12 months   ki1114097-CMIN             PERU                           NA                   NA                0.2548476   0.2230391   0.2866562
12 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.1456628          NA          NA
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.3768898   0.3674784   0.3863013
12 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.4748466   0.4405418   0.5091515
12 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4517670          NA          NA
18 months   ki1000108-IRC              INDIA                          NA                   NA                0.5623472   0.5142095   0.6104849
18 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.6498994   0.6079209   0.6918779
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4044017   0.3791669   0.4296364
18 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.4995622   0.4790522   0.5200721
18 months   ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.3704363   0.3421792   0.3986935
18 months   ki1114097-CMIN             PERU                           NA                   NA                0.3765244   0.3394193   0.4136295
18 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.1565217          NA          NA
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.4910763   0.4795950   0.5025577
18 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.5547337   0.5172409   0.5922266
18 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.5437807          NA          NA
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.7553191   0.7164122   0.7942261
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4333333   0.4019706   0.4646960
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.5718169   0.5511684   0.5924654
24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.4192377          NA          NA
24 months   ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.4620431   0.4321146   0.4919716
24 months   ki1114097-CMIN             PERU                           NA                   NA                0.4553415   0.4144586   0.4962244
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.2061657          NA          NA
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.7163385   0.6959512   0.7367258
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.6528926   0.6182403   0.6875448


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
3 months    ki1000108-IRC              INDIA                          2                    1                 1.4805195   0.7672366   2.8569256
3 months    ki1000108-IRC              INDIA                          3                    1                 1.2794613   0.6348176   2.5787270
3 months    ki1000108-IRC              INDIA                          4                    1                 1.3160173   0.6282630   2.7566504
3 months    ki1000108-IRC              INDIA                          5                    1                 1.0991736   0.4989420   2.4214891
3 months    ki1000108-IRC              INDIA                          6                    1                 0.9336609   0.4509137   1.9332363
3 months    ki1000108-IRC              INDIA                          7                    1                 1.0555556   0.5234824   2.1284336
3 months    ki1000108-IRC              INDIA                          8                    1                 0.5495868   0.2364546   1.2773939
3 months    ki1000108-IRC              INDIA                          9                    1                 1.1515152   0.5545126   2.3912662
3 months    ki1000108-IRC              INDIA                          10                   1                 0.8181818   0.3832229   1.7468201
3 months    ki1000108-IRC              INDIA                          11                   1                 1.1227273   0.5746004   2.1937271
3 months    ki1000108-IRC              INDIA                          12                   1                 1.5279720   0.8513239   2.7424327
3 months    ki1017093-NIH-Birth        BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
3 months    ki1017093-NIH-Birth        BANGLADESH                     2                    1                 0.5809019   0.3216090   1.0492460
3 months    ki1017093-NIH-Birth        BANGLADESH                     3                    1                 0.3807040   0.1862653   0.7781137
3 months    ki1017093-NIH-Birth        BANGLADESH                     4                    1                 0.6886792   0.3916176   1.2110772
3 months    ki1017093-NIH-Birth        BANGLADESH                     5                    1                 0.4583987   0.2263900   0.9281743
3 months    ki1017093-NIH-Birth        BANGLADESH                     6                    1                 0.6176923   0.3367274   1.1330940
3 months    ki1017093-NIH-Birth        BANGLADESH                     7                    1                 0.4793621   0.2281729   1.0070786
3 months    ki1017093-NIH-Birth        BANGLADESH                     8                    1                 0.4793621   0.2281729   1.0070786
3 months    ki1017093-NIH-Birth        BANGLADESH                     9                    1                 0.8189103   0.4779509   1.4031023
3 months    ki1017093-NIH-Birth        BANGLADESH                     10                   1                 0.5729984   0.3040623   1.0798024
3 months    ki1017093-NIH-Birth        BANGLADESH                     11                   1                 0.7416546   0.4298518   1.2796306
3 months    ki1017093-NIH-Birth        BANGLADESH                     12                   1                 0.5104895   0.2690766   0.9684957
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.0053223   0.5562772   1.8168511
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                 0.6546855   0.3282836   1.3056183
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                 1.0831025   0.6116515   1.9179404
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    1                 1.0156472   0.5659851   1.8225557
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    1                 0.7545973   0.3913756   1.4549121
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    1                 0.8208595   0.4526946   1.4884435
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    1                 0.8133971   0.4516823   1.4647793
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    1                 1.0355750   0.5904809   1.8161732
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   1                 0.8264637   0.4647759   1.4696164
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   1                 1.0121457   0.5769150   1.7757192
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   1                 0.9165597   0.5098839   1.6475940
3 months    ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
3 months    ki1101329-Keneba           GAMBIA                         2                    1                 0.7568438   0.5251009   1.0908618
3 months    ki1101329-Keneba           GAMBIA                         3                    1                 0.6898721   0.4828804   0.9855930
3 months    ki1101329-Keneba           GAMBIA                         4                    1                 0.9043577   0.6226499   1.3135196
3 months    ki1101329-Keneba           GAMBIA                         5                    1                 0.8816065   0.6064793   1.2815443
3 months    ki1101329-Keneba           GAMBIA                         6                    1                 1.1159478   0.7792987   1.5980257
3 months    ki1101329-Keneba           GAMBIA                         7                    1                 1.2289136   0.8474936   1.7819942
3 months    ki1101329-Keneba           GAMBIA                         8                    1                 1.1165936   0.8075969   1.5438163
3 months    ki1101329-Keneba           GAMBIA                         9                    1                 1.1207631   0.8155768   1.5401491
3 months    ki1101329-Keneba           GAMBIA                         10                   1                 1.2636956   0.9451147   1.6896644
3 months    ki1101329-Keneba           GAMBIA                         11                   1                 1.0517365   0.7567788   1.4616551
3 months    ki1101329-Keneba           GAMBIA                         12                   1                 1.0882536   0.7864834   1.5058119
3 months    ki1119695-PROBIT           BELARUS                        1                    1                 1.0000000          NA          NA
3 months    ki1119695-PROBIT           BELARUS                        2                    1                 0.8571429          NA          NA
3 months    ki1119695-PROBIT           BELARUS                        3                    1                 0.9460591          NA          NA
3 months    ki1119695-PROBIT           BELARUS                        4                    1                 0.8489312          NA          NA
3 months    ki1119695-PROBIT           BELARUS                        5                    1                 0.7051372          NA          NA
3 months    ki1119695-PROBIT           BELARUS                        6                    1                 0.8028846          NA          NA
3 months    ki1119695-PROBIT           BELARUS                        7                    1                 0.7620600          NA          NA
3 months    ki1119695-PROBIT           BELARUS                        8                    1                 0.6693089          NA          NA
3 months    ki1119695-PROBIT           BELARUS                        9                    1                 0.8578213          NA          NA
3 months    ki1119695-PROBIT           BELARUS                        10                   1                 1.1201220          NA          NA
3 months    ki1119695-PROBIT           BELARUS                        11                   1                 1.0031913          NA          NA
3 months    ki1119695-PROBIT           BELARUS                        12                   1                 0.9951837          NA          NA
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 1.0845472   0.9352017   1.2577422
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       3                    1                 0.9908975   0.8543624   1.1492522
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       4                    1                 0.9937393   0.8505808   1.1609924
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       5                    1                 1.1435940   0.9875250   1.3243282
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       6                    1                 1.0634645   0.9187447   1.2309803
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       7                    1                 1.1156174   0.9669213   1.2871805
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       8                    1                 1.0150950   0.8780938   1.1734714
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       9                    1                 0.7350894   0.6260724   0.8630895
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       10                   1                 0.8197928   0.6950932   0.9668634
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       11                   1                 0.8612438   0.7370401   1.0063780
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       12                   1                 0.8360438   0.7149664   0.9776253
3 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000          NA          NA
3 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.9657025          NA          NA
3 months    kiGH5241-JiVitA-3          BANGLADESH                     3                    1                 0.8319048          NA          NA
3 months    kiGH5241-JiVitA-3          BANGLADESH                     4                    1                 0.7969705          NA          NA
3 months    kiGH5241-JiVitA-3          BANGLADESH                     5                    1                 0.8022332          NA          NA
3 months    kiGH5241-JiVitA-3          BANGLADESH                     6                    1                 0.7656642          NA          NA
3 months    kiGH5241-JiVitA-3          BANGLADESH                     7                    1                 0.7195035          NA          NA
3 months    kiGH5241-JiVitA-3          BANGLADESH                     8                    1                 0.8677058          NA          NA
3 months    kiGH5241-JiVitA-3          BANGLADESH                     9                    1                 0.8957133          NA          NA
3 months    kiGH5241-JiVitA-3          BANGLADESH                     10                   1                 0.9895947          NA          NA
3 months    kiGH5241-JiVitA-3          BANGLADESH                     11                   1                 1.0824558          NA          NA
3 months    kiGH5241-JiVitA-3          BANGLADESH                     12                   1                 1.0755758          NA          NA
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
6 months    ki1000108-IRC              INDIA                          2                    1                 1.3214286   0.7845289   2.2257606
6 months    ki1000108-IRC              INDIA                          3                    1                 1.0049383   0.5514741   1.8312755
6 months    ki1000108-IRC              INDIA                          4                    1                 1.1746032   0.6476838   2.1301947
6 months    ki1000108-IRC              INDIA                          5                    1                 1.1746032   0.6476838   2.1301947
6 months    ki1000108-IRC              INDIA                          6                    1                 0.9333333   0.5284108   1.6485490
6 months    ki1000108-IRC              INDIA                          7                    1                 1.0962963   0.6419861   1.8721052
6 months    ki1000108-IRC              INDIA                          8                    1                 0.7287879   0.3995178   1.3294322
6 months    ki1000108-IRC              INDIA                          9                    1                 1.0962963   0.6167275   1.9487791
6 months    ki1000108-IRC              INDIA                          10                   1                 0.8438596   0.4679999   1.5215797
6 months    ki1000108-IRC              INDIA                          11                   1                 0.9250000   0.5286034   1.6186522
6 months    ki1000108-IRC              INDIA                          12                   1                 1.3756410   0.8686255   2.1786008
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     2                    1                 0.5986497   0.3660333   0.9790950
6 months    ki1017093-NIH-Birth        BANGLADESH                     3                    1                 0.4510043   0.2656768   0.7656102
6 months    ki1017093-NIH-Birth        BANGLADESH                     4                    1                 0.5995792   0.3713472   0.9680839
6 months    ki1017093-NIH-Birth        BANGLADESH                     5                    1                 0.5196353   0.3093509   0.8728629
6 months    ki1017093-NIH-Birth        BANGLADESH                     6                    1                 0.8580645   0.5792801   1.2710167
6 months    ki1017093-NIH-Birth        BANGLADESH                     7                    1                 0.7741935   0.4973226   1.2052049
6 months    ki1017093-NIH-Birth        BANGLADESH                     8                    1                 0.6460331   0.3923694   1.0636885
6 months    ki1017093-NIH-Birth        BANGLADESH                     9                    1                 0.7696924   0.5030209   1.1777372
6 months    ki1017093-NIH-Birth        BANGLADESH                     10                   1                 0.5868222   0.3627729   0.9492448
6 months    ki1017093-NIH-Birth        BANGLADESH                     11                   1                 0.8486352   0.5814446   1.2386078
6 months    ki1017093-NIH-Birth        BANGLADESH                     12                   1                 0.3343109   0.1709017   0.6539650
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.1636364   0.7169680   1.8885774
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                 1.0666667   0.6451069   1.7637044
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                 1.3847953   0.8746720   2.1924311
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    1                 1.4305882   0.9064279   2.2578550
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    1                 1.1746835   0.7212582   1.9131588
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    1                 1.4531401   0.9366089   2.2545336
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    1                 1.3521127   0.8673998   2.1076887
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    1                 1.4291262   0.9193670   2.2215305
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   1                 1.3309735   0.8563475   2.0686583
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   1                 1.3220657   0.8462766   2.0653504
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   1                 1.1174603   0.6947798   1.7972854
6 months    ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1101329-Keneba           GAMBIA                         2                    1                 0.9298667   0.6909919   1.2513202
6 months    ki1101329-Keneba           GAMBIA                         3                    1                 0.9218138   0.6929155   1.2263265
6 months    ki1101329-Keneba           GAMBIA                         4                    1                 1.0183210   0.7505324   1.3816562
6 months    ki1101329-Keneba           GAMBIA                         5                    1                 1.1082906   0.8263978   1.4863399
6 months    ki1101329-Keneba           GAMBIA                         6                    1                 1.0675585   0.7771756   1.4664399
6 months    ki1101329-Keneba           GAMBIA                         7                    1                 1.2886957   0.9408823   1.7650841
6 months    ki1101329-Keneba           GAMBIA                         8                    1                 1.1014493   0.8298506   1.4619384
6 months    ki1101329-Keneba           GAMBIA                         9                    1                 1.1071268   0.8371114   1.4642375
6 months    ki1101329-Keneba           GAMBIA                         10                   1                 1.2193165   0.9484834   1.5674843
6 months    ki1101329-Keneba           GAMBIA                         11                   1                 1.0786213   0.8129885   1.4310460
6 months    ki1101329-Keneba           GAMBIA                         12                   1                 1.0542443   0.7974911   1.3936596
6 months    ki1119695-PROBIT           BELARUS                        1                    1                 1.0000000          NA          NA
6 months    ki1119695-PROBIT           BELARUS                        2                    1                 0.8719647          NA          NA
6 months    ki1119695-PROBIT           BELARUS                        3                    1                 0.8636201          NA          NA
6 months    ki1119695-PROBIT           BELARUS                        4                    1                 0.6397363          NA          NA
6 months    ki1119695-PROBIT           BELARUS                        5                    1                 0.6775300          NA          NA
6 months    ki1119695-PROBIT           BELARUS                        6                    1                 0.7821782          NA          NA
6 months    ki1119695-PROBIT           BELARUS                        7                    1                 0.7468708          NA          NA
6 months    ki1119695-PROBIT           BELARUS                        8                    1                 0.7403081          NA          NA
6 months    ki1119695-PROBIT           BELARUS                        9                    1                 0.7910987          NA          NA
6 months    ki1119695-PROBIT           BELARUS                        10                   1                 0.9264817          NA          NA
6 months    ki1119695-PROBIT           BELARUS                        11                   1                 0.9888435          NA          NA
6 months    ki1119695-PROBIT           BELARUS                        12                   1                 0.8522424          NA          NA
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 1.1571702   0.9939823   1.3471496
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3                    1                 0.9581735   0.8218683   1.1170846
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       4                    1                 0.9921284   0.8461557   1.1632832
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       5                    1                 1.1775413   1.0174505   1.3628215
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       6                    1                 1.3070126   1.1397974   1.4987593
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       7                    1                 1.1564152   0.9994688   1.3380068
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       8                    1                 1.0973899   0.9502776   1.2672767
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       9                    1                 0.8286339   0.7042491   0.9749874
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       10                   1                 0.9654112   0.8215014   1.1345309
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       11                   1                 0.8753862   0.7467993   1.0261137
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       12                   1                 0.8542730   0.7295090   1.0003746
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000          NA          NA
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 1.0294574          NA          NA
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                    1                 0.9094331          NA          NA
6 months    kiGH5241-JiVitA-3          BANGLADESH                     4                    1                 0.8462397          NA          NA
6 months    kiGH5241-JiVitA-3          BANGLADESH                     5                    1                 0.8690770          NA          NA
6 months    kiGH5241-JiVitA-3          BANGLADESH                     6                    1                 0.8093922          NA          NA
6 months    kiGH5241-JiVitA-3          BANGLADESH                     7                    1                 0.7743978          NA          NA
6 months    kiGH5241-JiVitA-3          BANGLADESH                     8                    1                 0.9508101          NA          NA
6 months    kiGH5241-JiVitA-3          BANGLADESH                     9                    1                 0.9832368          NA          NA
6 months    kiGH5241-JiVitA-3          BANGLADESH                     10                   1                 1.1136293          NA          NA
6 months    kiGH5241-JiVitA-3          BANGLADESH                     11                   1                 1.1514062          NA          NA
6 months    kiGH5241-JiVitA-3          BANGLADESH                     12                   1                 1.0997459          NA          NA
12 months   ki0047075b-MAL-ED          PERU                           1                    1                 1.0000000   1.0000000   1.0000000
12 months   ki0047075b-MAL-ED          PERU                           2                    1                 1.1000000   0.6747100   1.7933629
12 months   ki0047075b-MAL-ED          PERU                           3                    1                 0.7772727   0.4321927   1.3978785
12 months   ki0047075b-MAL-ED          PERU                           4                    1                 0.9000000   0.5126242   1.5801047
12 months   ki0047075b-MAL-ED          PERU                           5                    1                 0.9500000   0.5822816   1.5499372
12 months   ki0047075b-MAL-ED          PERU                           6                    1                 0.8866667   0.4767119   1.6491676
12 months   ki0047075b-MAL-ED          PERU                           7                    1                 1.1227273   0.7079484   1.7805204
12 months   ki0047075b-MAL-ED          PERU                           8                    1                 0.7125000   0.3530710   1.4378307
12 months   ki0047075b-MAL-ED          PERU                           9                    1                 0.9913043   0.6042911   1.6261770
12 months   ki0047075b-MAL-ED          PERU                           10                   1                 0.8000000   0.4353040   1.4702369
12 months   ki0047075b-MAL-ED          PERU                           11                   1                 1.2468750   0.8416915   1.8471105
12 months   ki0047075b-MAL-ED          PERU                           12                   1                 1.1000000   0.6747100   1.7933629
12 months   ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
12 months   ki1000108-IRC              INDIA                          2                    1                 1.1535714   0.7545504   1.7636026
12 months   ki1000108-IRC              INDIA                          3                    1                 0.9148148   0.5577699   1.5004148
12 months   ki1000108-IRC              INDIA                          4                    1                 1.1761905   0.7486822   1.8478120
12 months   ki1000108-IRC              INDIA                          5                    1                 1.2666667   0.8259082   1.9426427
12 months   ki1000108-IRC              INDIA                          6                    1                 0.8216216   0.5097841   1.3242117
12 months   ki1000108-IRC              INDIA                          7                    1                 0.8972222   0.5669199   1.4199672
12 months   ki1000108-IRC              INDIA                          8                    1                 0.7772727   0.4874997   1.2392888
12 months   ki1000108-IRC              INDIA                          9                    1                 0.9851852   0.6139539   1.5808840
12 months   ki1000108-IRC              INDIA                          10                   1                 0.8000000   0.4949509   1.2930577
12 months   ki1000108-IRC              INDIA                          11                   1                 0.9025000   0.5786126   1.4076884
12 months   ki1000108-IRC              INDIA                          12                   1                 1.1176471   0.7646570   1.6335886
12 months   ki1017093-NIH-Birth        BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
12 months   ki1017093-NIH-Birth        BANGLADESH                     2                    1                 0.8501458   0.6170562   1.1712837
12 months   ki1017093-NIH-Birth        BANGLADESH                     3                    1                 0.6655462   0.4589339   0.9651755
12 months   ki1017093-NIH-Birth        BANGLADESH                     4                    1                 0.6099668   0.4011713   0.9274328
12 months   ki1017093-NIH-Birth        BANGLADESH                     5                    1                 0.6662338   0.4501113   0.9861281
12 months   ki1017093-NIH-Birth        BANGLADESH                     6                    1                 0.9116883   0.6653201   1.2492867
12 months   ki1017093-NIH-Birth        BANGLADESH                     7                    1                 0.7912088   0.5498489   1.1385153
12 months   ki1017093-NIH-Birth        BANGLADESH                     8                    1                 0.8168067   0.5623733   1.1863530
12 months   ki1017093-NIH-Birth        BANGLADESH                     9                    1                 0.9031359   0.6529888   1.2491093
12 months   ki1017093-NIH-Birth        BANGLADESH                     10                   1                 0.6817276   0.4617791   1.0064390
12 months   ki1017093-NIH-Birth        BANGLADESH                     11                   1                 0.8678571   0.6315283   1.1926244
12 months   ki1017093-NIH-Birth        BANGLADESH                     12                   1                 0.6655462   0.4589339   0.9651755
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.0531750   0.7344672   1.5101800
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                 1.0512821   0.7272696   1.5196483
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                 1.3375483   0.9562708   1.8708461
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    1                 1.1942396   0.8435819   1.6906576
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    1                 1.1540306   0.8089880   1.6462379
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    1                 1.2223103   0.8812962   1.6952786
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    1                 1.0357959   0.7375549   1.4546350
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    1                 1.1181717   0.7971232   1.5685253
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   1                 0.9220907   0.6505399   1.3069933
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   1                 1.1992945   0.8619640   1.6686398
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   1                 1.0231844   0.7177480   1.4585987
12 months   ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
12 months   ki1101329-Keneba           GAMBIA                         2                    1                 0.9092742   0.7229965   1.1435457
12 months   ki1101329-Keneba           GAMBIA                         3                    1                 0.9035714   0.7233622   1.1286757
12 months   ki1101329-Keneba           GAMBIA                         4                    1                 0.9563301   0.7474277   1.2236197
12 months   ki1101329-Keneba           GAMBIA                         5                    1                 1.0292630   0.8174033   1.2960338
12 months   ki1101329-Keneba           GAMBIA                         6                    1                 1.0312500   0.8072118   1.3174690
12 months   ki1101329-Keneba           GAMBIA                         7                    1                 1.0312500   0.7927995   1.3414193
12 months   ki1101329-Keneba           GAMBIA                         8                    1                 0.9082414   0.7191925   1.1469842
12 months   ki1101329-Keneba           GAMBIA                         9                    1                 1.0446646   0.8394545   1.3000397
12 months   ki1101329-Keneba           GAMBIA                         10                   1                 1.0521953   0.8590695   1.2887375
12 months   ki1101329-Keneba           GAMBIA                         11                   1                 0.9210526   0.7315755   1.1596041
12 months   ki1101329-Keneba           GAMBIA                         12                   1                 1.0054284   0.8066309   1.2532203
12 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    1                 1.0000000   1.0000000   1.0000000
12 months   ki1112895-Guatemala BSC    GUATEMALA                      2                    1                 0.4485126   0.2295993   0.8761505
12 months   ki1112895-Guatemala BSC    GUATEMALA                      3                    1                 0.7641326   0.4897903   1.1921398
12 months   ki1112895-Guatemala BSC    GUATEMALA                      4                    1                 0.6877193   0.4339130   1.0899831
12 months   ki1112895-Guatemala BSC    GUATEMALA                      5                    1                 0.7641326   0.4897903   1.1921398
12 months   ki1112895-Guatemala BSC    GUATEMALA                      6                    1                 0.8531856   0.5379029   1.3532659
12 months   ki1112895-Guatemala BSC    GUATEMALA                      7                    1                 0.6631579   0.3831913   1.1476732
12 months   ki1112895-Guatemala BSC    GUATEMALA                      8                    1                 0.8596491   0.4995227   1.4794056
12 months   ki1112895-Guatemala BSC    GUATEMALA                      9                    1                 0.9473684   0.5938071   1.5114452
12 months   ki1112895-Guatemala BSC    GUATEMALA                      10                   1                 0.6549708   0.3997816   1.0730526
12 months   ki1112895-Guatemala BSC    GUATEMALA                      11                   1                 0.8038278   0.5076312   1.2728513
12 months   ki1112895-Guatemala BSC    GUATEMALA                      12                   1                 0.8947368   0.6040742   1.3252577
12 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    1                 1.0000000          NA          NA
12 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                    1                 0.3947368          NA          NA
12 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   3                    1                 0.7894737          NA          NA
12 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   4                    1                 0.7977839          NA          NA
12 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   5                    1                 0.8493648          NA          NA
12 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   6                    1                 0.4942792          NA          NA
12 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   7                    1                 0.8796992          NA          NA
12 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   8                    1                 1.0166881          NA          NA
12 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   9                    1                 0.8237986          NA          NA
12 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   10                   1                 0.6246385          NA          NA
12 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   11                   1                 0.8193457          NA          NA
12 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   12                   1                 0.9161365          NA          NA
12 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    1                 1.0000000   1.0000000   1.0000000
12 months   ki1114097-CMIN             GUINEA-BISSAU                  2                    1                 0.9526150   0.6170655   1.4706303
12 months   ki1114097-CMIN             GUINEA-BISSAU                  3                    1                 0.7787555   0.4926309   1.2310639
12 months   ki1114097-CMIN             GUINEA-BISSAU                  4                    1                 0.6833977   0.4053902   1.1520564
12 months   ki1114097-CMIN             GUINEA-BISSAU                  5                    1                 0.8837512   0.5700953   1.3699748
12 months   ki1114097-CMIN             GUINEA-BISSAU                  6                    1                 0.5922780   0.3387521   1.0355455
12 months   ki1114097-CMIN             GUINEA-BISSAU                  7                    1                 0.6459117   0.3867847   1.0786413
12 months   ki1114097-CMIN             GUINEA-BISSAU                  8                    1                 0.6586369   0.4069209   1.0660610
12 months   ki1114097-CMIN             GUINEA-BISSAU                  9                    1                 0.8091973   0.5453520   1.2006928
12 months   ki1114097-CMIN             GUINEA-BISSAU                  10                   1                 0.8099528   0.5422748   1.2097621
12 months   ki1114097-CMIN             GUINEA-BISSAU                  11                   1                 0.6833977   0.4383449   1.0654451
12 months   ki1114097-CMIN             GUINEA-BISSAU                  12                   1                 0.8297078   0.5560171   1.2381183
12 months   ki1114097-CMIN             PERU                           1                    1                 1.0000000   1.0000000   1.0000000
12 months   ki1114097-CMIN             PERU                           2                    1                 1.8614719   0.8611950   4.0235691
12 months   ki1114097-CMIN             PERU                           3                    1                 1.5357143   0.7058204   3.3413859
12 months   ki1114097-CMIN             PERU                           4                    1                 1.7551020   0.8102339   3.8018443
12 months   ki1114097-CMIN             PERU                           5                    1                 1.7063492   0.7869505   3.6998868
12 months   ki1114097-CMIN             PERU                           6                    1                 1.8126464   0.8296895   3.9601403
12 months   ki1114097-CMIN             PERU                           7                    1                 1.7420043   0.8002239   3.7921624
12 months   ki1114097-CMIN             PERU                           8                    1                 1.2124060   0.5361019   2.7418822
12 months   ki1114097-CMIN             PERU                           9                    1                 1.5971429   0.7005920   3.6410142
12 months   ki1114097-CMIN             PERU                           10                   1                 1.6990881   0.7475387   3.8618741
12 months   ki1114097-CMIN             PERU                           11                   1                 1.2285714   0.4900460   3.0800938
12 months   ki1114097-CMIN             PERU                           12                   1                 1.3514286   0.5741262   3.1811111
12 months   ki1119695-PROBIT           BELARUS                        1                    1                 1.0000000          NA          NA
12 months   ki1119695-PROBIT           BELARUS                        2                    1                 0.9944110          NA          NA
12 months   ki1119695-PROBIT           BELARUS                        3                    1                 0.8550890          NA          NA
12 months   ki1119695-PROBIT           BELARUS                        4                    1                 0.6607413          NA          NA
12 months   ki1119695-PROBIT           BELARUS                        5                    1                 0.6654253          NA          NA
12 months   ki1119695-PROBIT           BELARUS                        6                    1                 0.8433552          NA          NA
12 months   ki1119695-PROBIT           BELARUS                        7                    1                 0.7468982          NA          NA
12 months   ki1119695-PROBIT           BELARUS                        8                    1                 0.7809757          NA          NA
12 months   ki1119695-PROBIT           BELARUS                        9                    1                 0.7717258          NA          NA
12 months   ki1119695-PROBIT           BELARUS                        10                   1                 0.9384066          NA          NA
12 months   ki1119695-PROBIT           BELARUS                        11                   1                 0.9521613          NA          NA
12 months   ki1119695-PROBIT           BELARUS                        12                   1                 0.8524940          NA          NA
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 1.0786531   0.9577498   1.2148188
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                    1                 1.0882152   0.9693261   1.2216862
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                    1                 0.9892359   0.8718573   1.1224172
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                    1                 1.1689617   1.0398182   1.3141445
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                    1                 1.1547846   1.0294081   1.2954312
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                    1                 1.0991545   0.9779900   1.2353302
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                    1                 1.0889213   0.9703671   1.2219598
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                    1                 0.8928252   0.7896712   1.0094542
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       10                   1                 1.0333762   0.9138253   1.1685673
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       11                   1                 0.9313645   0.8240761   1.0526211
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       12                   1                 0.9111238   0.8066504   1.0291279
12 months   ki1148112-LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.0000000
12 months   ki1148112-LCNI-5           MALAWI                         2                    1                 0.6899314   0.4546876   1.0468842
12 months   ki1148112-LCNI-5           MALAWI                         3                    1                 0.8137652   0.5110614   1.2957618
12 months   ki1148112-LCNI-5           MALAWI                         4                    1                 0.8351801   0.5624691   1.2401139
12 months   ki1148112-LCNI-5           MALAWI                         5                    1                 0.8375000   0.5685064   1.2337703
12 months   ki1148112-LCNI-5           MALAWI                         6                    1                 0.8297214   0.5486608   1.2547598
12 months   ki1148112-LCNI-5           MALAWI                         7                    1                 0.7804142   0.5493930   1.1085803
12 months   ki1148112-LCNI-5           MALAWI                         8                    1                 0.7665904   0.5604003   1.0486448
12 months   ki1148112-LCNI-5           MALAWI                         9                    1                 0.7640351   0.5571697   1.0477053
12 months   ki1148112-LCNI-5           MALAWI                         10                   1                 0.9917763   0.7653289   1.2852255
12 months   ki1148112-LCNI-5           MALAWI                         11                   1                 0.8124355   0.6039536   1.0928844
12 months   ki1148112-LCNI-5           MALAWI                         12                   1                 0.7943898   0.5833465   1.0817845
12 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000          NA          NA
12 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 1.0357713          NA          NA
12 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    1                 0.9955364          NA          NA
12 months   kiGH5241-JiVitA-3          BANGLADESH                     4                    1                 0.9662267          NA          NA
12 months   kiGH5241-JiVitA-3          BANGLADESH                     5                    1                 0.9694965          NA          NA
12 months   kiGH5241-JiVitA-3          BANGLADESH                     6                    1                 0.9413045          NA          NA
12 months   kiGH5241-JiVitA-3          BANGLADESH                     7                    1                 0.8481979          NA          NA
12 months   kiGH5241-JiVitA-3          BANGLADESH                     8                    1                 0.9949720          NA          NA
12 months   kiGH5241-JiVitA-3          BANGLADESH                     9                    1                 0.9528036          NA          NA
12 months   kiGH5241-JiVitA-3          BANGLADESH                     10                   1                 1.1808344          NA          NA
12 months   kiGH5241-JiVitA-3          BANGLADESH                     11                   1                 1.2234739          NA          NA
12 months   kiGH5241-JiVitA-3          BANGLADESH                     12                   1                 1.1457192          NA          NA
18 months   ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
18 months   ki1000108-IRC              INDIA                          2                    1                 1.2214286   0.8110851   1.8393726
18 months   ki1000108-IRC              INDIA                          3                    1                 1.1259259   0.7287431   1.7395831
18 months   ki1000108-IRC              INDIA                          4                    1                 1.3571429   0.9045913   2.0360982
18 months   ki1000108-IRC              INDIA                          5                    1                 1.3818182   0.9299391   2.0532759
18 months   ki1000108-IRC              INDIA                          6                    1                 0.8729730   0.5498704   1.3859300
18 months   ki1000108-IRC              INDIA                          7                    1                 1.0027778   0.6507945   1.5451318
18 months   ki1000108-IRC              INDIA                          8                    1                 0.8636364   0.5545598   1.3449726
18 months   ki1000108-IRC              INDIA                          9                    1                 1.1962963   0.7872405   1.8179004
18 months   ki1000108-IRC              INDIA                          10                   1                 0.8000000   0.4949516   1.2930558
18 months   ki1000108-IRC              INDIA                          11                   1                 1.0450000   0.6919368   1.5782150
18 months   ki1000108-IRC              INDIA                          12                   1                 1.2666667   0.8845119   1.8139319
18 months   ki1017093-NIH-Birth        BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
18 months   ki1017093-NIH-Birth        BANGLADESH                     2                    1                 0.9644323   0.7400867   1.2567847
18 months   ki1017093-NIH-Birth        BANGLADESH                     3                    1                 0.7986928   0.5879677   1.0849409
18 months   ki1017093-NIH-Birth        BANGLADESH                     4                    1                 0.8730650   0.6463491   1.1793046
18 months   ki1017093-NIH-Birth        BANGLADESH                     5                    1                 0.7797888   0.5617343   1.0824880
18 months   ki1017093-NIH-Birth        BANGLADESH                     6                    1                 1.0022059   0.7724333   1.3003280
18 months   ki1017093-NIH-Birth        BANGLADESH                     7                    1                 0.8366873   0.6124085   1.1431025
18 months   ki1017093-NIH-Birth        BANGLADESH                     8                    1                 0.9676471   0.7213284   1.2980785
18 months   ki1017093-NIH-Birth        BANGLADESH                     9                    1                 0.8966614   0.6668704   1.2056340
18 months   ki1017093-NIH-Birth        BANGLADESH                     10                   1                 0.8091822   0.5918606   1.1063007
18 months   ki1017093-NIH-Birth        BANGLADESH                     11                   1                 0.9873950   0.7686214   1.2684382
18 months   ki1017093-NIH-Birth        BANGLADESH                     12                   1                 0.8570588   0.6476381   1.1341979
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.7563636   0.5436837   1.0522405
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                 0.9257862   0.6828005   1.2552423
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                 0.9943503   0.7458451   1.3256539
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    1                 0.8190476   0.5965675   1.1244980
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    1                 0.8691358   0.6363850   1.1870127
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    1                 0.8680460   0.6496112   1.1599305
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    1                 0.7546485   0.5561492   1.0239956
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    1                 0.8956743   0.6681002   1.2007666
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   1                 0.7927928   0.5880014   1.0689097
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   1                 0.8568306   0.6323177   1.1610599
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   1                 0.8840841   0.6503043   1.2019061
18 months   ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
18 months   ki1101329-Keneba           GAMBIA                         2                    1                 0.9384647   0.7728254   1.1396054
18 months   ki1101329-Keneba           GAMBIA                         3                    1                 0.9449983   0.7825877   1.1411140
18 months   ki1101329-Keneba           GAMBIA                         4                    1                 0.9273897   0.7497414   1.1471310
18 months   ki1101329-Keneba           GAMBIA                         5                    1                 1.0340708   0.8466210   1.2630238
18 months   ki1101329-Keneba           GAMBIA                         6                    1                 1.1293092   0.9252582   1.3783605
18 months   ki1101329-Keneba           GAMBIA                         7                    1                 1.0724707   0.8621138   1.3341549
18 months   ki1101329-Keneba           GAMBIA                         8                    1                 1.0088496   0.8314935   1.2240353
18 months   ki1101329-Keneba           GAMBIA                         9                    1                 1.1529709   0.9630295   1.3803751
18 months   ki1101329-Keneba           GAMBIA                         10                   1                 1.0204455   0.8543899   1.2187751
18 months   ki1101329-Keneba           GAMBIA                         11                   1                 0.9632232   0.7920237   1.1714282
18 months   ki1101329-Keneba           GAMBIA                         12                   1                 0.9835016   0.8104327   1.1935295
18 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    1                 1.0000000   1.0000000   1.0000000
18 months   ki1114097-CMIN             GUINEA-BISSAU                  2                    1                 0.9960416   0.6911799   1.4353699
18 months   ki1114097-CMIN             GUINEA-BISSAU                  3                    1                 0.8907518   0.6004082   1.3214988
18 months   ki1114097-CMIN             GUINEA-BISSAU                  4                    1                 1.0389781   0.7038740   1.5336201
18 months   ki1114097-CMIN             GUINEA-BISSAU                  5                    1                 1.2564784   0.8798001   1.7944280
18 months   ki1114097-CMIN             GUINEA-BISSAU                  6                    1                 1.1082849   0.7508347   1.6359065
18 months   ki1114097-CMIN             GUINEA-BISSAU                  7                    1                 0.8634985   0.5614740   1.3279861
18 months   ki1114097-CMIN             GUINEA-BISSAU                  8                    1                 1.0557058   0.7327469   1.5210091
18 months   ki1114097-CMIN             GUINEA-BISSAU                  9                    1                 1.1697266   0.8446992   1.6198198
18 months   ki1114097-CMIN             GUINEA-BISSAU                  10                   1                 1.0067517   0.7179755   1.4116763
18 months   ki1114097-CMIN             GUINEA-BISSAU                  11                   1                 1.1401869   0.8166469   1.5919073
18 months   ki1114097-CMIN             GUINEA-BISSAU                  12                   1                 1.0761828   0.7699339   1.5042454
18 months   ki1114097-CMIN             PERU                           1                    1                 1.0000000   1.0000000   1.0000000
18 months   ki1114097-CMIN             PERU                           2                    1                 1.3965517   0.8007796   2.4355726
18 months   ki1114097-CMIN             PERU                           3                    1                 1.1506849   0.6547875   2.0221457
18 months   ki1114097-CMIN             PERU                           4                    1                 1.0819672   0.6013562   1.9466884
18 months   ki1114097-CMIN             PERU                           5                    1                 1.3333333   0.7644097   2.3256871
18 months   ki1114097-CMIN             PERU                           6                    1                 1.1454545   0.6358594   2.0634533
18 months   ki1114097-CMIN             PERU                           7                    1                 1.1311475   0.6327958   2.0219709
18 months   ki1114097-CMIN             PERU                           8                    1                 1.0588235   0.5925792   1.8919112
18 months   ki1114097-CMIN             PERU                           9                    1                 1.1320755   0.6249772   2.0506268
18 months   ki1114097-CMIN             PERU                           10                   1                 1.1086957   0.6005681   2.0467388
18 months   ki1114097-CMIN             PERU                           11                   1                 0.9000000   0.4575722   1.7702126
18 months   ki1114097-CMIN             PERU                           12                   1                 0.9333333   0.4872488   1.7878159
18 months   ki1119695-PROBIT           BELARUS                        1                    1                 1.0000000          NA          NA
18 months   ki1119695-PROBIT           BELARUS                        2                    1                 1.0092789          NA          NA
18 months   ki1119695-PROBIT           BELARUS                        3                    1                 0.9357889          NA          NA
18 months   ki1119695-PROBIT           BELARUS                        4                    1                 0.7249590          NA          NA
18 months   ki1119695-PROBIT           BELARUS                        5                    1                 0.7372305          NA          NA
18 months   ki1119695-PROBIT           BELARUS                        6                    1                 0.9417823          NA          NA
18 months   ki1119695-PROBIT           BELARUS                        7                    1                 0.8855857          NA          NA
18 months   ki1119695-PROBIT           BELARUS                        8                    1                 0.8342647          NA          NA
18 months   ki1119695-PROBIT           BELARUS                        9                    1                 0.8428981          NA          NA
18 months   ki1119695-PROBIT           BELARUS                        10                   1                 1.0075267          NA          NA
18 months   ki1119695-PROBIT           BELARUS                        11                   1                 0.9321179          NA          NA
18 months   ki1119695-PROBIT           BELARUS                        12                   1                 0.9118625          NA          NA
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 0.9937463   0.8915417   1.1076673
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                    1                 0.9983972   0.8998554   1.1077302
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                    1                 0.9358016   0.8365073   1.0468821
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                    1                 1.0319983   0.9266130   1.1493693
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                    1                 1.0277747   0.9268953   1.1396334
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                    1                 0.9709229   0.8710875   1.0822005
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                    1                 0.9153908   0.8211436   1.0204554
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                    1                 0.8107453   0.7228290   0.9093547
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       10                   1                 0.9308112   0.8294507   1.0445582
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       11                   1                 0.9179953   0.8241158   1.0225692
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       12                   1                 0.9475840   0.8507599   1.0554275
18 months   ki1148112-LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.0000000
18 months   ki1148112-LCNI-5           MALAWI                         2                    1                 0.6678571   0.4421499   1.0087826
18 months   ki1148112-LCNI-5           MALAWI                         3                    1                 1.0214286   0.6993007   1.4919423
18 months   ki1148112-LCNI-5           MALAWI                         4                    1                 0.7603687   0.5020292   1.1516471
18 months   ki1148112-LCNI-5           MALAWI                         5                    1                 0.7394958   0.4912667   1.1131510
18 months   ki1148112-LCNI-5           MALAWI                         6                    1                 0.7515528   0.4689527   1.2044533
18 months   ki1148112-LCNI-5           MALAWI                         7                    1                 0.7142857   0.4881562   1.0451657
18 months   ki1148112-LCNI-5           MALAWI                         8                    1                 0.7443609   0.5458478   1.0150690
18 months   ki1148112-LCNI-5           MALAWI                         9                    1                 0.7951807   0.5938627   1.0647450
18 months   ki1148112-LCNI-5           MALAWI                         10                   1                 1.0812582   0.8534605   1.3698576
18 months   ki1148112-LCNI-5           MALAWI                         11                   1                 0.9506173   0.7282729   1.2408442
18 months   ki1148112-LCNI-5           MALAWI                         12                   1                 0.9035714   0.6864654   1.1893409
18 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000          NA          NA
18 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 1.0373418          NA          NA
18 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    1                 0.9617661          NA          NA
18 months   kiGH5241-JiVitA-3          BANGLADESH                     4                    1                 0.9439215          NA          NA
18 months   kiGH5241-JiVitA-3          BANGLADESH                     5                    1                 0.9232270          NA          NA
18 months   kiGH5241-JiVitA-3          BANGLADESH                     6                    1                 0.9711509          NA          NA
18 months   kiGH5241-JiVitA-3          BANGLADESH                     7                    1                 0.8665238          NA          NA
18 months   kiGH5241-JiVitA-3          BANGLADESH                     8                    1                 1.0041123          NA          NA
18 months   kiGH5241-JiVitA-3          BANGLADESH                     9                    1                 0.9565855          NA          NA
18 months   kiGH5241-JiVitA-3          BANGLADESH                     10                   1                 1.1145396          NA          NA
18 months   kiGH5241-JiVitA-3          BANGLADESH                     11                   1                 1.1585565          NA          NA
18 months   kiGH5241-JiVitA-3          BANGLADESH                     12                   1                 1.1128602          NA          NA
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     2                    1                 1.0069444   0.8103149   1.2512877
24 months   ki1017093-NIH-Birth        BANGLADESH                     3                    1                 0.8522727   0.6641275   1.0937190
24 months   ki1017093-NIH-Birth        BANGLADESH                     4                    1                 1.0416667   0.8470492   1.2809993
24 months   ki1017093-NIH-Birth        BANGLADESH                     5                    1                 0.9459459   0.7484674   1.1955279
24 months   ki1017093-NIH-Birth        BANGLADESH                     6                    1                 1.0256410   0.8336036   1.2619181
24 months   ki1017093-NIH-Birth        BANGLADESH                     7                    1                 0.8783784   0.6801626   1.1343590
24 months   ki1017093-NIH-Birth        BANGLADESH                     8                    1                 0.9375000   0.7233955   1.2149734
24 months   ki1017093-NIH-Birth        BANGLADESH                     9                    1                 1.0294118   0.8313788   1.2746158
24 months   ki1017093-NIH-Birth        BANGLADESH                     10                   1                 0.8552632   0.6587641   1.1103748
24 months   ki1017093-NIH-Birth        BANGLADESH                     11                   1                 0.9574468   0.7718811   1.1876238
24 months   ki1017093-NIH-Birth        BANGLADESH                     12                   1                 0.8418367   0.6596461   1.0743474
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.4926471   0.3123954   0.7769037
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                 0.8484477   0.5946412   1.2105847
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                 0.9478779   0.6821487   1.3171212
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    1                 0.8048882   0.5580461   1.1609165
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    1                 0.9411765   0.6670850   1.3278864
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    1                 0.8707250   0.6228966   1.2171556
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    1                 0.8329290   0.5979487   1.1602513
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    1                 0.8661926   0.6220808   1.2060967
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   1                 0.9554367   0.6997731   1.3045076
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   1                 0.8547130   0.6078284   1.2018758
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   1                 0.8210784   0.5721486   1.1783124
24 months   ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1101329-Keneba           GAMBIA                         2                    1                 1.0200770   0.8561873   1.2153381
24 months   ki1101329-Keneba           GAMBIA                         3                    1                 1.1244388   0.9553679   1.3234301
24 months   ki1101329-Keneba           GAMBIA                         4                    1                 1.0462185   0.8669671   1.2625314
24 months   ki1101329-Keneba           GAMBIA                         5                    1                 1.1007881   0.9215968   1.3148207
24 months   ki1101329-Keneba           GAMBIA                         6                    1                 1.1569279   0.9641312   1.3882780
24 months   ki1101329-Keneba           GAMBIA                         7                    1                 1.0896111   0.8938846   1.3281941
24 months   ki1101329-Keneba           GAMBIA                         8                    1                 0.9916851   0.8273892   1.1886054
24 months   ki1101329-Keneba           GAMBIA                         9                    1                 1.1771896   0.9988086   1.3874283
24 months   ki1101329-Keneba           GAMBIA                         10                   1                 1.0925709   0.9303984   1.2830107
24 months   ki1101329-Keneba           GAMBIA                         11                   1                 1.0060275   0.8408305   1.2036806
24 months   ki1101329-Keneba           GAMBIA                         12                   1                 1.0342666   0.8673228   1.2333440
24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    1                 1.0000000          NA          NA
24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                    1                 0.6036585          NA          NA
24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   3                    1                 1.0687500          NA          NA
24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   4                    1                 1.0862069          NA          NA
24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   5                    1                 0.9418605          NA          NA
24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   6                    1                 0.8437500          NA          NA
24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   7                    1                 1.0687500          NA          NA
24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   8                    1                 1.0416667          NA          NA
24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   9                    1                 1.0524194          NA          NA
24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   10                   1                 0.7875000          NA          NA
24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   11                   1                 0.8372093          NA          NA
24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   12                   1                 0.9764151          NA          NA
24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1114097-CMIN             GUINEA-BISSAU                  2                    1                 1.1167076   0.8086727   1.5420775
24 months   ki1114097-CMIN             GUINEA-BISSAU                  3                    1                 0.8849945   0.6230670   1.2570322
24 months   ki1114097-CMIN             GUINEA-BISSAU                  4                    1                 1.2892279   0.9544036   1.7415154
24 months   ki1114097-CMIN             GUINEA-BISSAU                  5                    1                 1.1882353   0.8781216   1.6078674
24 months   ki1114097-CMIN             GUINEA-BISSAU                  6                    1                 1.1094697   0.7871238   1.5638239
24 months   ki1114097-CMIN             GUINEA-BISSAU                  7                    1                 1.0169735   0.7293570   1.4180096
24 months   ki1114097-CMIN             GUINEA-BISSAU                  8                    1                 0.9603432   0.6957640   1.3255344
24 months   ki1114097-CMIN             GUINEA-BISSAU                  9                    1                 1.1853577   0.8951815   1.5695955
24 months   ki1114097-CMIN             GUINEA-BISSAU                  10                   1                 1.0042614   0.7397403   1.3633715
24 months   ki1114097-CMIN             GUINEA-BISSAU                  11                   1                 0.9702437   0.7033785   1.3383587
24 months   ki1114097-CMIN             GUINEA-BISSAU                  12                   1                 1.0509310   0.7610249   1.4512744
24 months   ki1114097-CMIN             PERU                           1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1114097-CMIN             PERU                           2                    1                 1.1500000   0.6580543   2.0097124
24 months   ki1114097-CMIN             PERU                           3                    1                 0.9529412   0.5458837   1.6635353
24 months   ki1114097-CMIN             PERU                           4                    1                 1.1446154   0.6683787   1.9601826
24 months   ki1114097-CMIN             PERU                           5                    1                 1.3565217   0.7925461   2.3218223
24 months   ki1114097-CMIN             PERU                           6                    1                 1.0352941   0.5859780   1.8291367
24 months   ki1114097-CMIN             PERU                           7                    1                 1.0723404   0.6059314   1.8977626
24 months   ki1114097-CMIN             PERU                           8                    1                 0.9333333   0.5225435   1.6670595
24 months   ki1114097-CMIN             PERU                           9                    1                 1.2255319   0.7067856   2.1250127
24 months   ki1114097-CMIN             PERU                           10                   1                 1.1428571   0.6461083   2.0215225
24 months   ki1114097-CMIN             PERU                           11                   1                 1.1027027   0.6119131   1.9871337
24 months   ki1114097-CMIN             PERU                           12                   1                 1.0285714   0.5708703   1.8532392
24 months   ki1119695-PROBIT           BELARUS                        1                    1                 1.0000000          NA          NA
24 months   ki1119695-PROBIT           BELARUS                        2                    1                 1.0370959          NA          NA
24 months   ki1119695-PROBIT           BELARUS                        3                    1                 0.8138718          NA          NA
24 months   ki1119695-PROBIT           BELARUS                        4                    1                 0.4053438          NA          NA
24 months   ki1119695-PROBIT           BELARUS                        5                    1                 0.6254269          NA          NA
24 months   ki1119695-PROBIT           BELARUS                        6                    1                 0.4793373          NA          NA
24 months   ki1119695-PROBIT           BELARUS                        7                    1                 0.5103900          NA          NA
24 months   ki1119695-PROBIT           BELARUS                        8                    1                 0.4975845          NA          NA
24 months   ki1119695-PROBIT           BELARUS                        9                    1                 0.4173169          NA          NA
24 months   ki1119695-PROBIT           BELARUS                        10                   1                 0.5758386          NA          NA
24 months   ki1119695-PROBIT           BELARUS                        11                   1                 0.6214178          NA          NA
24 months   ki1119695-PROBIT           BELARUS                        12                   1                 0.8029766          NA          NA
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 0.9838188   0.8803508   1.0994473
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                    1                 0.9063670   0.7990182   1.0281383
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                    1                 0.9376344   0.8256269   1.0648373
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                    1                 0.9790210   0.8646013   1.1085827
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                    1                 0.9523810   0.8416793   1.0776427
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                    1                 0.9586777   0.8378971   1.0968685
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                    1                 0.9082126   0.7919708   1.0415157
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                    1                 0.8444444   0.7226420   0.9867768
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10                   1                 1.0133333   0.8865796   1.1582090
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11                   1                 0.9912281   0.8789699   1.1178234
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12                   1                 0.9576427   0.8505998   1.0781564
24 months   ki1148112-LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1148112-LCNI-5           MALAWI                         2                    1                 0.9262899   0.6771333   1.2671258
24 months   ki1148112-LCNI-5           MALAWI                         3                    1                 1.0032432   0.7052696   1.4271097
24 months   ki1148112-LCNI-5           MALAWI                         4                    1                 0.9320672   0.6704621   1.2957470
24 months   ki1148112-LCNI-5           MALAWI                         5                    1                 0.8298887   0.5722197   1.2035853
24 months   ki1148112-LCNI-5           MALAWI                         6                    1                 1.0972973   0.8094123   1.4875749
24 months   ki1148112-LCNI-5           MALAWI                         7                    1                 0.9900427   0.7501255   1.3066940
24 months   ki1148112-LCNI-5           MALAWI                         8                    1                 0.9601351   0.7396548   1.2463374
24 months   ki1148112-LCNI-5           MALAWI                         9                    1                 0.9632042   0.7439376   1.2470969
24 months   ki1148112-LCNI-5           MALAWI                         10                   1                 1.1828010   0.9478899   1.4759290
24 months   ki1148112-LCNI-5           MALAWI                         11                   1                 1.0637066   0.8337441   1.3570970
24 months   ki1148112-LCNI-5           MALAWI                         12                   1                 1.0823681   0.8504099   1.3775952


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
3 months    ki1000108-IRC              INDIA                          1                    NA                 0.0275995   -0.1102892    0.1654882
3 months    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.1335889   -0.2352711   -0.0319067
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0098006   -0.0553242    0.0357229
3 months    ki1101329-Keneba           GAMBIA                         1                    NA                 0.0022203   -0.0497308    0.0541714
3 months    ki1119695-PROBIT           BELARUS                        1                    NA                -0.0097400           NA           NA
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0069588   -0.0277512    0.0138336
3 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0320006           NA           NA
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.0759737   -0.2340214    0.0820739
6 months    ki1000108-IRC              INDIA                          1                    NA                 0.0186142   -0.1325251    0.1697535
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.1790684   -0.3011434   -0.0569933
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0438395   -0.0108270    0.0985060
6 months    ki1101329-Keneba           GAMBIA                         1                    NA                 0.0202483   -0.0364262    0.0769228
6 months    ki1119695-PROBIT           BELARUS                        1                    NA                -0.0223169           NA           NA
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0078765   -0.0203165    0.0360696
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0063102           NA           NA
12 months   ki0047075b-MAL-ED          PERU                           1                    NA                -0.0077973   -0.1552462    0.1396517
12 months   ki1000108-IRC              INDIA                          1                    NA                -0.0189628   -0.1703485    0.1324228
12 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.1379818   -0.2595808   -0.0163828
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0303696   -0.0431791    0.1039182
12 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.0082858   -0.0686739    0.0521024
12 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                -0.1551057   -0.3207340    0.0105225
12 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                -0.0515773           NA           NA
12 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                -0.0665508   -0.1453522    0.0122507
12 months   ki1114097-CMIN             PERU                           1                    NA                 0.0920569   -0.0163497    0.2004636
12 months   ki1119695-PROBIT           BELARUS                        1                    NA                -0.0284262           NA           NA
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0114280   -0.0169999    0.0398559
12 months   ki1148112-LCNI-5           MALAWI                         1                    NA                -0.0923176   -0.2061254    0.0214903
12 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0137005           NA           NA
18 months   ki1000108-IRC              INDIA                          1                    NA                 0.0360314   -0.1152535    0.1873163
18 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.0735049   -0.1961827    0.0491730
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0643483   -0.1607414    0.0320447
18 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.0039481   -0.0576396    0.0655359
18 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                 0.0179773   -0.0622004    0.0981550
18 months   ki1114097-CMIN             PERU                           1                    NA                 0.0431911   -0.1139016    0.2002837
18 months   ki1119695-PROBIT           BELARUS                        1                    NA                -0.0179463           NA           NA
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0230082   -0.0579373    0.0119209
18 months   ki1148112-LCNI-5           MALAWI                         1                    NA                -0.0816299   -0.2039336    0.0406738
18 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0061990           NA           NA
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.0446809   -0.1568430    0.0674813
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0741294   -0.1895710    0.0413123
24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.0357809   -0.0263934    0.0979552
24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                -0.0252067           NA           NA
24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                 0.0263995   -0.0657067    0.1185058
24 months   ki1114097-CMIN             PERU                           1                    NA                 0.0386748   -0.1546312    0.2319809
24 months   ki1119695-PROBIT           BELARUS                        1                    NA                -0.1239314           NA           NA
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0336615   -0.0871947    0.0198716
24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0149615   -0.1036646    0.1335877


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
3 months    ki1000108-IRC              INDIA                          1                    NA                 0.0870445   -0.4699748    0.4329918
3 months    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.6001957   -1.1279885   -0.2033083
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0961186   -0.6470589    0.2705325
3 months    ki1101329-Keneba           GAMBIA                         1                    NA                 0.0090709   -0.2276130    0.2001222
3 months    ki1119695-PROBIT           BELARUS                        1                    NA                -0.1314580           NA           NA
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0332106   -0.1373600    0.0614017
3 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0793368           NA           NA
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.1483104   -0.5029207    0.1226305
6 months    ki1000108-IRC              INDIA                          1                    NA                 0.0438994   -0.3880957    0.3414515
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.4908789   -0.8699451   -0.1886552
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.2190996   -0.1074790    0.4493751
6 months    ki1101329-Keneba           GAMBIA                         1                    NA                 0.0627115   -0.1303231    0.2227800
6 months    ki1119695-PROBIT           BELARUS                        1                    NA                -0.2140391           NA           NA
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0267408   -0.0738386    0.1178996
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0148331           NA           NA
12 months   ki0047075b-MAL-ED          PERU                           1                    NA                -0.0150376   -0.3432403    0.2329732
12 months   ki1000108-IRC              INDIA                          1                    NA                -0.0373760   -0.3831323    0.2219479
12 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.2704643   -0.5347166   -0.0517118
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0957625   -0.1685920    0.3003157
12 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.0203432   -0.1799232    0.1176542
12 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                -0.2963054   -0.6588013   -0.0130253
12 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                -0.2429323           NA           NA
12 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                -0.2694270   -0.6318727    0.0125180
12 months   ki1114097-CMIN             PERU                           1                    NA                 0.3612235   -0.2406265    0.6711053
12 months   ki1119695-PROBIT           BELARUS                        1                    NA                -0.1951508           NA           NA
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0303219   -0.0481175    0.1028910
12 months   ki1148112-LCNI-5           MALAWI                         1                    NA                -0.1944155   -0.4604104    0.0231319
12 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0303265           NA           NA
18 months   ki1000108-IRC              INDIA                          1                    NA                 0.0640732   -0.2477067    0.2979448
18 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.1131019   -0.3193406    0.0608976
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1591199   -0.4239034    0.0564255
18 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.0079032   -0.1233681    0.1238348
18 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                 0.0485301   -0.1945119    0.2421215
18 months   ki1114097-CMIN             PERU                           1                    NA                 0.1147099   -0.4182875    0.4474049
18 months   ki1119695-PROBIT           BELARUS                        1                    NA                -0.1146572           NA           NA
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0468525   -0.1204614    0.0219206
18 months   ki1148112-LCNI-5           MALAWI                         1                    NA                -0.1471515   -0.3907407    0.0537729
18 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0113998           NA           NA
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.0591549   -0.2187643    0.0795520
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1710677   -0.4704936    0.0673882
24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.0625741   -0.0527536    0.1652677
24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                -0.0601251           NA           NA
24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                 0.0571365   -0.1648758    0.2368358
24 months   ki1114097-CMIN             PERU                           1                    NA                 0.0849359   -0.4553014    0.4246262
24 months   ki1119695-PROBIT           BELARUS                        1                    NA                -0.6011251           NA           NA
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0469911   -0.1245095    0.0251836
24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0229158   -0.1767816    0.1887249
