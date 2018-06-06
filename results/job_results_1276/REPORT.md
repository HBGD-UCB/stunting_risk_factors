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

**Outcome Variable:** sstunted

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
Birth       ki0047075b-MAL-ED          BANGLADESH                     1       257     20     20      0
Birth       ki0047075b-MAL-ED          BANGLADESH                     2       257     25     24      1
Birth       ki0047075b-MAL-ED          BANGLADESH                     3       257     25     25      0
Birth       ki0047075b-MAL-ED          BANGLADESH                     4       257     21     21      0
Birth       ki0047075b-MAL-ED          BANGLADESH                     5       257     21     19      2
Birth       ki0047075b-MAL-ED          BANGLADESH                     6       257     11     11      0
Birth       ki0047075b-MAL-ED          BANGLADESH                     7       257     20     19      1
Birth       ki0047075b-MAL-ED          BANGLADESH                     8       257     26     23      3
Birth       ki0047075b-MAL-ED          BANGLADESH                     9       257     21     20      1
Birth       ki0047075b-MAL-ED          BANGLADESH                     10      257     25     25      0
Birth       ki0047075b-MAL-ED          BANGLADESH                     11      257     15     15      0
Birth       ki0047075b-MAL-ED          BANGLADESH                     12      257     27     26      1
Birth       ki0047075b-MAL-ED          BRAZIL                         1       191     11     10      1
Birth       ki0047075b-MAL-ED          BRAZIL                         2       191     19     18      1
Birth       ki0047075b-MAL-ED          BRAZIL                         3       191     18     17      1
Birth       ki0047075b-MAL-ED          BRAZIL                         4       191      9      9      0
Birth       ki0047075b-MAL-ED          BRAZIL                         5       191     18     16      2
Birth       ki0047075b-MAL-ED          BRAZIL                         6       191      8      8      0
Birth       ki0047075b-MAL-ED          BRAZIL                         7       191     16     15      1
Birth       ki0047075b-MAL-ED          BRAZIL                         8       191     18     18      0
Birth       ki0047075b-MAL-ED          BRAZIL                         9       191     29     27      2
Birth       ki0047075b-MAL-ED          BRAZIL                         10      191     17     17      0
Birth       ki0047075b-MAL-ED          BRAZIL                         11      191     18     18      0
Birth       ki0047075b-MAL-ED          BRAZIL                         12      191     10     10      0
Birth       ki0047075b-MAL-ED          INDIA                          1       206     16     16      0
Birth       ki0047075b-MAL-ED          INDIA                          2       206     16     16      0
Birth       ki0047075b-MAL-ED          INDIA                          3       206     21     21      0
Birth       ki0047075b-MAL-ED          INDIA                          4       206     14     13      1
Birth       ki0047075b-MAL-ED          INDIA                          5       206      7      7      0
Birth       ki0047075b-MAL-ED          INDIA                          6       206     18     18      0
Birth       ki0047075b-MAL-ED          INDIA                          7       206     21     20      1
Birth       ki0047075b-MAL-ED          INDIA                          8       206     17     17      0
Birth       ki0047075b-MAL-ED          INDIA                          9       206     19     17      2
Birth       ki0047075b-MAL-ED          INDIA                          10      206     23     20      3
Birth       ki0047075b-MAL-ED          INDIA                          11      206     20     20      0
Birth       ki0047075b-MAL-ED          INDIA                          12      206     14     14      0
Birth       ki0047075b-MAL-ED          NEPAL                          1       173     17     15      2
Birth       ki0047075b-MAL-ED          NEPAL                          2       173     14     13      1
Birth       ki0047075b-MAL-ED          NEPAL                          3       173     12     12      0
Birth       ki0047075b-MAL-ED          NEPAL                          4       173     17     17      0
Birth       ki0047075b-MAL-ED          NEPAL                          5       173     19     19      0
Birth       ki0047075b-MAL-ED          NEPAL                          6       173     10     10      0
Birth       ki0047075b-MAL-ED          NEPAL                          7       173     17     16      1
Birth       ki0047075b-MAL-ED          NEPAL                          8       173     14     14      0
Birth       ki0047075b-MAL-ED          NEPAL                          9       173     11     11      0
Birth       ki0047075b-MAL-ED          NEPAL                          10      173     14     14      0
Birth       ki0047075b-MAL-ED          NEPAL                          11      173     18     16      2
Birth       ki0047075b-MAL-ED          NEPAL                          12      173     10     10      0
Birth       ki0047075b-MAL-ED          PERU                           1       287     39     37      2
Birth       ki0047075b-MAL-ED          PERU                           2       287     21     21      0
Birth       ki0047075b-MAL-ED          PERU                           3       287     23     23      0
Birth       ki0047075b-MAL-ED          PERU                           4       287     21     20      1
Birth       ki0047075b-MAL-ED          PERU                           5       287     27     27      0
Birth       ki0047075b-MAL-ED          PERU                           6       287     16     15      1
Birth       ki0047075b-MAL-ED          PERU                           7       287     23     23      0
Birth       ki0047075b-MAL-ED          PERU                           8       287     19     19      0
Birth       ki0047075b-MAL-ED          PERU                           9       287     22     22      0
Birth       ki0047075b-MAL-ED          PERU                           10      287     25     23      2
Birth       ki0047075b-MAL-ED          PERU                           11      287     31     30      1
Birth       ki0047075b-MAL-ED          PERU                           12      287     20     19      1
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1       262     28     27      1
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   2       262     25     25      0
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   3       262     17     17      0
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   4       262     13     13      0
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   5       262     14     14      0
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   6       262     18     18      0
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   7       262     22     22      0
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   8       262      9      9      0
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   9       262     21     21      0
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   10      262     28     28      0
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   11      262     28     28      0
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   12      262     39     38      1
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1       123     10     10      0
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2       123      8      8      0
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3       123      7      7      0
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4       123      4      4      0
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5       123      9      8      1
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6       123     11     11      0
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7       123     13     13      0
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8       123      7      6      1
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9       123     16     13      3
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10      123      9      8      1
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11      123     13     13      0
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12      123     16     16      0
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1        90      9      9      0
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          2        90      1      1      0
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          3        90      8      7      1
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          4        90      9      9      0
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          5        90     11     11      0
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          6        90      9      9      0
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          7        90      7      7      0
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          8        90      4      4      0
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          9        90      7      7      0
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          10       90     10      9      1
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          11       90     11     11      0
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          12       90      4      3      1
Birth       ki1000108-IRC              INDIA                          1       388     35     32      3
Birth       ki1000108-IRC              INDIA                          2       388     26     25      1
Birth       ki1000108-IRC              INDIA                          3       388     26     26      0
Birth       ki1000108-IRC              INDIA                          4       388     21     21      0
Birth       ki1000108-IRC              INDIA                          5       388     22     21      1
Birth       ki1000108-IRC              INDIA                          6       388     34     31      3
Birth       ki1000108-IRC              INDIA                          7       388     35     34      1
Birth       ki1000108-IRC              INDIA                          8       388     38     38      0
Birth       ki1000108-IRC              INDIA                          9       388     25     24      1
Birth       ki1000108-IRC              INDIA                          10      388     38     36      2
Birth       ki1000108-IRC              INDIA                          11      388     39     38      1
Birth       ki1000108-IRC              INDIA                          12      388     49     46      3
Birth       ki1000109-EE               PAKISTAN                       1         2      0      0      0
Birth       ki1000109-EE               PAKISTAN                       2         2      0      0      0
Birth       ki1000109-EE               PAKISTAN                       3         2      0      0      0
Birth       ki1000109-EE               PAKISTAN                       4         2      0      0      0
Birth       ki1000109-EE               PAKISTAN                       5         2      0      0      0
Birth       ki1000109-EE               PAKISTAN                       6         2      0      0      0
Birth       ki1000109-EE               PAKISTAN                       7         2      0      0      0
Birth       ki1000109-EE               PAKISTAN                       8         2      0      0      0
Birth       ki1000109-EE               PAKISTAN                       9         2      0      0      0
Birth       ki1000109-EE               PAKISTAN                       10        2      0      0      0
Birth       ki1000109-EE               PAKISTAN                       11        2      0      0      0
Birth       ki1000109-EE               PAKISTAN                       12        2      2      2      0
Birth       ki1000109-ResPak           PAKISTAN                       1         7      1      1      0
Birth       ki1000109-ResPak           PAKISTAN                       2         7      0      0      0
Birth       ki1000109-ResPak           PAKISTAN                       3         7      0      0      0
Birth       ki1000109-ResPak           PAKISTAN                       4         7      2      2      0
Birth       ki1000109-ResPak           PAKISTAN                       5         7      2      2      0
Birth       ki1000109-ResPak           PAKISTAN                       6         7      1      1      0
Birth       ki1000109-ResPak           PAKISTAN                       7         7      1      1      0
Birth       ki1000109-ResPak           PAKISTAN                       8         7      0      0      0
Birth       ki1000109-ResPak           PAKISTAN                       9         7      0      0      0
Birth       ki1000109-ResPak           PAKISTAN                       10        7      0      0      0
Birth       ki1000109-ResPak           PAKISTAN                       11        7      0      0      0
Birth       ki1000109-ResPak           PAKISTAN                       12        7      0      0      0
Birth       ki1000304b-SAS-CompFeed    INDIA                          1        70      5      4      1
Birth       ki1000304b-SAS-CompFeed    INDIA                          2        70      7      6      1
Birth       ki1000304b-SAS-CompFeed    INDIA                          3        70      6      6      0
Birth       ki1000304b-SAS-CompFeed    INDIA                          4        70      7      7      0
Birth       ki1000304b-SAS-CompFeed    INDIA                          5        70      9      8      1
Birth       ki1000304b-SAS-CompFeed    INDIA                          6        70      6      6      0
Birth       ki1000304b-SAS-CompFeed    INDIA                          7        70      0      0      0
Birth       ki1000304b-SAS-CompFeed    INDIA                          8        70      0      0      0
Birth       ki1000304b-SAS-CompFeed    INDIA                          9        70      0      0      0
Birth       ki1000304b-SAS-CompFeed    INDIA                          10       70     11     10      1
Birth       ki1000304b-SAS-CompFeed    INDIA                          11       70      9      9      0
Birth       ki1000304b-SAS-CompFeed    INDIA                          12       70     10     10      0
Birth       ki1017093-NIH-Birth        BANGLADESH                     1        28     11     11      0
Birth       ki1017093-NIH-Birth        BANGLADESH                     2        28      3      3      0
Birth       ki1017093-NIH-Birth        BANGLADESH                     3        28      6      6      0
Birth       ki1017093-NIH-Birth        BANGLADESH                     4        28      2      2      0
Birth       ki1017093-NIH-Birth        BANGLADESH                     5        28      0      0      0
Birth       ki1017093-NIH-Birth        BANGLADESH                     6        28      2      2      0
Birth       ki1017093-NIH-Birth        BANGLADESH                     7        28      1      1      0
Birth       ki1017093-NIH-Birth        BANGLADESH                     8        28      0      0      0
Birth       ki1017093-NIH-Birth        BANGLADESH                     9        28      0      0      0
Birth       ki1017093-NIH-Birth        BANGLADESH                     10       28      1      1      0
Birth       ki1017093-NIH-Birth        BANGLADESH                     11       28      2      2      0
Birth       ki1017093-NIH-Birth        BANGLADESH                     12       28      0      0      0
Birth       ki1101329-Keneba           GAMBIA                         1      1541    163    156      7
Birth       ki1101329-Keneba           GAMBIA                         2      1541    147    143      4
Birth       ki1101329-Keneba           GAMBIA                         3      1541    165    163      2
Birth       ki1101329-Keneba           GAMBIA                         4      1541    105    104      1
Birth       ki1101329-Keneba           GAMBIA                         5      1541    108    106      2
Birth       ki1101329-Keneba           GAMBIA                         6      1541     89     88      1
Birth       ki1101329-Keneba           GAMBIA                         7      1541     75     74      1
Birth       ki1101329-Keneba           GAMBIA                         8      1541    125    124      1
Birth       ki1101329-Keneba           GAMBIA                         9      1541    124    122      2
Birth       ki1101329-Keneba           GAMBIA                         10     1541    179    175      4
Birth       ki1101329-Keneba           GAMBIA                         11     1541    124    122      2
Birth       ki1101329-Keneba           GAMBIA                         12     1541    137    135      2
Birth       ki1114097-CMIN             BANGLADESH                     1        13      1      0      1
Birth       ki1114097-CMIN             BANGLADESH                     2        13      2      2      0
Birth       ki1114097-CMIN             BANGLADESH                     3        13      0      0      0
Birth       ki1114097-CMIN             BANGLADESH                     4        13      1      0      1
Birth       ki1114097-CMIN             BANGLADESH                     5        13      1      1      0
Birth       ki1114097-CMIN             BANGLADESH                     6        13      0      0      0
Birth       ki1114097-CMIN             BANGLADESH                     7        13      0      0      0
Birth       ki1114097-CMIN             BANGLADESH                     8        13      3      1      2
Birth       ki1114097-CMIN             BANGLADESH                     9        13      1      1      0
Birth       ki1114097-CMIN             BANGLADESH                     10       13      1      1      0
Birth       ki1114097-CMIN             BANGLADESH                     11       13      3      2      1
Birth       ki1114097-CMIN             BANGLADESH                     12       13      0      0      0
Birth       ki1114097-CMIN             BRAZIL                         1       115     13     13      0
Birth       ki1114097-CMIN             BRAZIL                         2       115      7      7      0
Birth       ki1114097-CMIN             BRAZIL                         3       115     13     13      0
Birth       ki1114097-CMIN             BRAZIL                         4       115      9      9      0
Birth       ki1114097-CMIN             BRAZIL                         5       115      5      5      0
Birth       ki1114097-CMIN             BRAZIL                         6       115      6      6      0
Birth       ki1114097-CMIN             BRAZIL                         7       115      4      4      0
Birth       ki1114097-CMIN             BRAZIL                         8       115     13     12      1
Birth       ki1114097-CMIN             BRAZIL                         9       115      8      8      0
Birth       ki1114097-CMIN             BRAZIL                         10      115     16     14      2
Birth       ki1114097-CMIN             BRAZIL                         11      115     11     11      0
Birth       ki1114097-CMIN             BRAZIL                         12      115     10     10      0
Birth       ki1114097-CMIN             PERU                           1        10      1      1      0
Birth       ki1114097-CMIN             PERU                           2        10      1      1      0
Birth       ki1114097-CMIN             PERU                           3        10      2      2      0
Birth       ki1114097-CMIN             PERU                           4        10      3      3      0
Birth       ki1114097-CMIN             PERU                           5        10      0      0      0
Birth       ki1114097-CMIN             PERU                           6        10      0      0      0
Birth       ki1114097-CMIN             PERU                           7        10      0      0      0
Birth       ki1114097-CMIN             PERU                           8        10      1      1      0
Birth       ki1114097-CMIN             PERU                           9        10      2      2      0
Birth       ki1114097-CMIN             PERU                           10       10      0      0      0
Birth       ki1114097-CMIN             PERU                           11       10      0      0      0
Birth       ki1114097-CMIN             PERU                           12       10      0      0      0
Birth       ki1114097-CONTENT          PERU                           1         2      0      0      0
Birth       ki1114097-CONTENT          PERU                           2         2      0      0      0
Birth       ki1114097-CONTENT          PERU                           3         2      0      0      0
Birth       ki1114097-CONTENT          PERU                           4         2      0      0      0
Birth       ki1114097-CONTENT          PERU                           5         2      2      2      0
Birth       ki1114097-CONTENT          PERU                           6         2      0      0      0
Birth       ki1114097-CONTENT          PERU                           7         2      0      0      0
Birth       ki1114097-CONTENT          PERU                           8         2      0      0      0
Birth       ki1114097-CONTENT          PERU                           9         2      0      0      0
Birth       ki1114097-CONTENT          PERU                           10        2      0      0      0
Birth       ki1114097-CONTENT          PERU                           11        2      0      0      0
Birth       ki1114097-CONTENT          PERU                           12        2      0      0      0
Birth       ki1119695-PROBIT           BELARUS                        1      6779    422    422      0
Birth       ki1119695-PROBIT           BELARUS                        2      6779    421    421      0
Birth       ki1119695-PROBIT           BELARUS                        3      6779    494    493      1
Birth       ki1119695-PROBIT           BELARUS                        4      6779    470    470      0
Birth       ki1119695-PROBIT           BELARUS                        5      6779    483    483      0
Birth       ki1119695-PROBIT           BELARUS                        6      6779    527    527      0
Birth       ki1119695-PROBIT           BELARUS                        7      6779    622    622      0
Birth       ki1119695-PROBIT           BELARUS                        8      6779    669    669      0
Birth       ki1119695-PROBIT           BELARUS                        9      6779    624    624      0
Birth       ki1119695-PROBIT           BELARUS                        10     6779    704    701      3
Birth       ki1119695-PROBIT           BELARUS                        11     6779    615    614      1
Birth       ki1119695-PROBIT           BELARUS                        12     6779    728    728      0
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1     13830   1339   1284     55
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2     13830   1049   1004     45
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3     13830   1159   1117     42
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       4     13830    989    954     35
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       5     13830   1014    980     34
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       6     13830   1135   1090     45
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       7     13830   1173   1129     44
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       8     13830   1253   1228     25
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       9     13830   1295   1274     21
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       10    13830   1039   1005     34
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       11    13830   1179   1142     37
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       12    13830   1206   1182     24
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1      9746    922    794    128
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2      9746    740    662     78
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3      9746    905    822     83
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4      9746    653    606     47
Birth       kiGH5241-JiVitA-3          BANGLADESH                     5      9746    494    438     56
Birth       kiGH5241-JiVitA-3          BANGLADESH                     6      9746    506    459     47
Birth       kiGH5241-JiVitA-3          BANGLADESH                     7      9746    521    473     48
Birth       kiGH5241-JiVitA-3          BANGLADESH                     8      9746    791    706     85
Birth       kiGH5241-JiVitA-3          BANGLADESH                     9      9746    969    876     93
Birth       kiGH5241-JiVitA-3          BANGLADESH                     10     9746   1076    931    145
Birth       kiGH5241-JiVitA-3          BANGLADESH                     11     9746   1098    949    149
Birth       kiGH5241-JiVitA-3          BANGLADESH                     12     9746   1071    934    137
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1       224      0      0      0
Birth       kiGH5241-JiVitA-4          BANGLADESH                     2       224     35     32      3
Birth       kiGH5241-JiVitA-4          BANGLADESH                     3       224     49     44      5
Birth       kiGH5241-JiVitA-4          BANGLADESH                     4       224     35     35      0
Birth       kiGH5241-JiVitA-4          BANGLADESH                     5       224     37     34      3
Birth       kiGH5241-JiVitA-4          BANGLADESH                     6       224     30     26      4
Birth       kiGH5241-JiVitA-4          BANGLADESH                     7       224     26     24      2
Birth       kiGH5241-JiVitA-4          BANGLADESH                     8       224      4      4      0
Birth       kiGH5241-JiVitA-4          BANGLADESH                     9       224      5      4      1
Birth       kiGH5241-JiVitA-4          BANGLADESH                     10      224      3      3      0
Birth       kiGH5241-JiVitA-4          BANGLADESH                     11      224      0      0      0
Birth       kiGH5241-JiVitA-4          BANGLADESH                     12      224      0      0      0
3 months    ki0047075b-MAL-ED          BANGLADESH                     1       250     20     20      0
3 months    ki0047075b-MAL-ED          BANGLADESH                     2       250     22     21      1
3 months    ki0047075b-MAL-ED          BANGLADESH                     3       250     23     22      1
3 months    ki0047075b-MAL-ED          BANGLADESH                     4       250     22     22      0
3 months    ki0047075b-MAL-ED          BANGLADESH                     5       250     21     20      1
3 months    ki0047075b-MAL-ED          BANGLADESH                     6       250     10     10      0
3 months    ki0047075b-MAL-ED          BANGLADESH                     7       250     19     19      0
3 months    ki0047075b-MAL-ED          BANGLADESH                     8       250     25     22      3
3 months    ki0047075b-MAL-ED          BANGLADESH                     9       250     22     22      0
3 months    ki0047075b-MAL-ED          BANGLADESH                     10      250     23     22      1
3 months    ki0047075b-MAL-ED          BANGLADESH                     11      250     15     15      0
3 months    ki0047075b-MAL-ED          BANGLADESH                     12      250     28     28      0
3 months    ki0047075b-MAL-ED          BRAZIL                         1       225     15     15      0
3 months    ki0047075b-MAL-ED          BRAZIL                         2       225     25     25      0
3 months    ki0047075b-MAL-ED          BRAZIL                         3       225     18     18      0
3 months    ki0047075b-MAL-ED          BRAZIL                         4       225     11     11      0
3 months    ki0047075b-MAL-ED          BRAZIL                         5       225     23     22      1
3 months    ki0047075b-MAL-ED          BRAZIL                         6       225      9      9      0
3 months    ki0047075b-MAL-ED          BRAZIL                         7       225     16     16      0
3 months    ki0047075b-MAL-ED          BRAZIL                         8       225     20     20      0
3 months    ki0047075b-MAL-ED          BRAZIL                         9       225     30     30      0
3 months    ki0047075b-MAL-ED          BRAZIL                         10      225     21     21      0
3 months    ki0047075b-MAL-ED          BRAZIL                         11      225     22     22      0
3 months    ki0047075b-MAL-ED          BRAZIL                         12      225     15     15      0
3 months    ki0047075b-MAL-ED          INDIA                          1       241     20     19      1
3 months    ki0047075b-MAL-ED          INDIA                          2       241     19     19      0
3 months    ki0047075b-MAL-ED          INDIA                          3       241     22     20      2
3 months    ki0047075b-MAL-ED          INDIA                          4       241     15     15      0
3 months    ki0047075b-MAL-ED          INDIA                          5       241      8      8      0
3 months    ki0047075b-MAL-ED          INDIA                          6       241     18     18      0
3 months    ki0047075b-MAL-ED          INDIA                          7       241     25     22      3
3 months    ki0047075b-MAL-ED          INDIA                          8       241     23     22      1
3 months    ki0047075b-MAL-ED          INDIA                          9       241     21     19      2
3 months    ki0047075b-MAL-ED          INDIA                          10      241     26     24      2
3 months    ki0047075b-MAL-ED          INDIA                          11      241     25     25      0
3 months    ki0047075b-MAL-ED          INDIA                          12      241     19     18      1
3 months    ki0047075b-MAL-ED          NEPAL                          1       236     20     19      1
3 months    ki0047075b-MAL-ED          NEPAL                          2       236     19     18      1
3 months    ki0047075b-MAL-ED          NEPAL                          3       236     16     16      0
3 months    ki0047075b-MAL-ED          NEPAL                          4       236     22     22      0
3 months    ki0047075b-MAL-ED          NEPAL                          5       236     22     22      0
3 months    ki0047075b-MAL-ED          NEPAL                          6       236     18     18      0
3 months    ki0047075b-MAL-ED          NEPAL                          7       236     17     17      0
3 months    ki0047075b-MAL-ED          NEPAL                          8       236     24     24      0
3 months    ki0047075b-MAL-ED          NEPAL                          9       236     16     15      1
3 months    ki0047075b-MAL-ED          NEPAL                          10      236     21     21      0
3 months    ki0047075b-MAL-ED          NEPAL                          11      236     24     24      0
3 months    ki0047075b-MAL-ED          NEPAL                          12      236     17     17      0
3 months    ki0047075b-MAL-ED          PERU                           1       291     41     38      3
3 months    ki0047075b-MAL-ED          PERU                           2       291     22     22      0
3 months    ki0047075b-MAL-ED          PERU                           3       291     22     22      0
3 months    ki0047075b-MAL-ED          PERU                           4       291     20     18      2
3 months    ki0047075b-MAL-ED          PERU                           5       291     27     22      5
3 months    ki0047075b-MAL-ED          PERU                           6       291     16     14      2
3 months    ki0047075b-MAL-ED          PERU                           7       291     24     22      2
3 months    ki0047075b-MAL-ED          PERU                           8       291     18     18      0
3 months    ki0047075b-MAL-ED          PERU                           9       291     23     23      0
3 months    ki0047075b-MAL-ED          PERU                           10      291     25     23      2
3 months    ki0047075b-MAL-ED          PERU                           11      291     32     29      3
3 months    ki0047075b-MAL-ED          PERU                           12      291     21     20      1
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1       281     39     35      4
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2       281     24     23      1
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3       281     16     16      0
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4       281     13     13      0
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   5       281     15     14      1
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   6       281     19     19      0
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   7       281     26     26      0
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   8       281     10     10      0
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   9       281     23     23      0
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   10      281     29     28      1
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   11      281     28     26      2
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   12      281     39     38      1
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1       254     20     20      0
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2       254     30     30      0
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3       254     18     17      1
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4       254      9      8      1
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5       254     20     19      1
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6       254     19     19      0
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7       254     23     22      1
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8       254     12     11      1
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9       254     22     20      2
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10      254     23     22      1
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11      254     27     26      1
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12      254     31     27      4
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          1       362     33     31      2
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          2       362     15     13      2
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          3       362     31     30      1
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          4       362     42     40      2
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          5       362     36     34      2
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          6       362     36     33      3
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          7       362     37     32      5
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          8       362     16     14      2
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          9       362     21     20      1
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          10      362     29     27      2
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          11      362     41     37      4
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          12      362     25     18      7
3 months    ki1000108-IRC              INDIA                          1       407     36     30      6
3 months    ki1000108-IRC              INDIA                          2       407     28     23      5
3 months    ki1000108-IRC              INDIA                          3       407     27     25      2
3 months    ki1000108-IRC              INDIA                          4       407     21     19      2
3 months    ki1000108-IRC              INDIA                          5       407     22     18      4
3 months    ki1000108-IRC              INDIA                          6       407     37     37      0
3 months    ki1000108-IRC              INDIA                          7       407     36     35      1
3 months    ki1000108-IRC              INDIA                          8       407     43     43      0
3 months    ki1000108-IRC              INDIA                          9       407     27     24      3
3 months    ki1000108-IRC              INDIA                          10      407     38     36      2
3 months    ki1000108-IRC              INDIA                          11      407     40     36      4
3 months    ki1000108-IRC              INDIA                          12      407     52     45      7
3 months    ki1000109-EE               PAKISTAN                       1       376     94     60     34
3 months    ki1000109-EE               PAKISTAN                       2       376     66     50     16
3 months    ki1000109-EE               PAKISTAN                       3       376     41     32      9
3 months    ki1000109-EE               PAKISTAN                       4       376     16      9      7
3 months    ki1000109-EE               PAKISTAN                       5       376      0      0      0
3 months    ki1000109-EE               PAKISTAN                       6       376      0      0      0
3 months    ki1000109-EE               PAKISTAN                       7       376      0      0      0
3 months    ki1000109-EE               PAKISTAN                       8       376      0      0      0
3 months    ki1000109-EE               PAKISTAN                       9       376      0      0      0
3 months    ki1000109-EE               PAKISTAN                       10      376      4      3      1
3 months    ki1000109-EE               PAKISTAN                       11      376     70     41     29
3 months    ki1000109-EE               PAKISTAN                       12      376     85     59     26
3 months    ki1000109-ResPak           PAKISTAN                       1       260     10     10      0
3 months    ki1000109-ResPak           PAKISTAN                       2       260     11     10      1
3 months    ki1000109-ResPak           PAKISTAN                       3       260     21     14      7
3 months    ki1000109-ResPak           PAKISTAN                       4       260     25     18      7
3 months    ki1000109-ResPak           PAKISTAN                       5       260     48     38     10
3 months    ki1000109-ResPak           PAKISTAN                       6       260     46     34     12
3 months    ki1000109-ResPak           PAKISTAN                       7       260     33     26      7
3 months    ki1000109-ResPak           PAKISTAN                       8       260     33     28      5
3 months    ki1000109-ResPak           PAKISTAN                       9       260     19     17      2
3 months    ki1000109-ResPak           PAKISTAN                       10      260      6      5      1
3 months    ki1000109-ResPak           PAKISTAN                       11      260      3      2      1
3 months    ki1000109-ResPak           PAKISTAN                       12      260      5      3      2
3 months    ki1000304b-SAS-CompFeed    INDIA                          1       412     50     46      4
3 months    ki1000304b-SAS-CompFeed    INDIA                          2       412     36     35      1
3 months    ki1000304b-SAS-CompFeed    INDIA                          3       412     32     30      2
3 months    ki1000304b-SAS-CompFeed    INDIA                          4       412     24     24      0
3 months    ki1000304b-SAS-CompFeed    INDIA                          5       412     39     35      4
3 months    ki1000304b-SAS-CompFeed    INDIA                          6       412     43     41      2
3 months    ki1000304b-SAS-CompFeed    INDIA                          7       412      0      0      0
3 months    ki1000304b-SAS-CompFeed    INDIA                          8       412      0      0      0
3 months    ki1000304b-SAS-CompFeed    INDIA                          9       412      0      0      0
3 months    ki1000304b-SAS-CompFeed    INDIA                          10      412     73     66      7
3 months    ki1000304b-SAS-CompFeed    INDIA                          11      412     46     43      3
3 months    ki1000304b-SAS-CompFeed    INDIA                          12      412     69     62      7
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          1        97      7      6      1
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          2        97      8      8      0
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          3        97      6      6      0
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          4        97      1      1      0
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          5        97      2      2      0
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          6        97      5      4      1
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          7        97     10      9      1
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          8        97     16     15      1
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          9        97     15     12      3
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          10       97     12     10      2
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          11       97      6      3      3
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          12       97      9      8      1
3 months    ki1017093-NIH-Birth        BANGLADESH                     1       570     60     55      5
3 months    ki1017093-NIH-Birth        BANGLADESH                     2       570     51     50      1
3 months    ki1017093-NIH-Birth        BANGLADESH                     3       570     53     50      3
3 months    ki1017093-NIH-Birth        BANGLADESH                     4       570     46     43      3
3 months    ki1017093-NIH-Birth        BANGLADESH                     5       570     46     43      3
3 months    ki1017093-NIH-Birth        BANGLADESH                     6       570     44     41      3
3 months    ki1017093-NIH-Birth        BANGLADESH                     7       570     38     37      1
3 months    ki1017093-NIH-Birth        BANGLADESH                     8       570     37     33      4
3 months    ki1017093-NIH-Birth        BANGLADESH                     9       570     43     41      2
3 months    ki1017093-NIH-Birth        BANGLADESH                     10      570     46     43      3
3 months    ki1017093-NIH-Birth        BANGLADESH                     11      570     52     50      2
3 months    ki1017093-NIH-Birth        BANGLADESH                     12      570     54     51      3
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1      2292    163    161      2
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2      2292    172    172      0
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3      2292    161    159      2
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4      2292    177    177      0
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5      2292    174    173      1
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6      2292    160    158      2
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7      2292    209    209      0
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8      2292    219    212      7
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9      2292    209    207      2
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10     2292    238    233      5
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11     2292    215    215      0
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12     2292    195    191      4
3 months    ki1101329-Keneba           GAMBIA                         1      2190    228    219      9
3 months    ki1101329-Keneba           GAMBIA                         2      2190    197    187     10
3 months    ki1101329-Keneba           GAMBIA                         3      2190    232    226      6
3 months    ki1101329-Keneba           GAMBIA                         4      2190    153    148      5
3 months    ki1101329-Keneba           GAMBIA                         5      2190    150    147      3
3 months    ki1101329-Keneba           GAMBIA                         6      2190    130    126      4
3 months    ki1101329-Keneba           GAMBIA                         7      2190     98     95      3
3 months    ki1101329-Keneba           GAMBIA                         8      2190    184    177      7
3 months    ki1101329-Keneba           GAMBIA                         9      2190    193    186      7
3 months    ki1101329-Keneba           GAMBIA                         10     2190    252    246      6
3 months    ki1101329-Keneba           GAMBIA                         11     2190    176    173      3
3 months    ki1101329-Keneba           GAMBIA                         12     2190    197    188      9
3 months    ki1112895-Guatemala BSC    GUATEMALA                      1        23      3      3      0
3 months    ki1112895-Guatemala BSC    GUATEMALA                      2        23      2      2      0
3 months    ki1112895-Guatemala BSC    GUATEMALA                      3        23      0      0      0
3 months    ki1112895-Guatemala BSC    GUATEMALA                      4        23      2      2      0
3 months    ki1112895-Guatemala BSC    GUATEMALA                      5        23      0      0      0
3 months    ki1112895-Guatemala BSC    GUATEMALA                      6        23      2      2      0
3 months    ki1112895-Guatemala BSC    GUATEMALA                      7        23      0      0      0
3 months    ki1112895-Guatemala BSC    GUATEMALA                      8        23      2      1      1
3 months    ki1112895-Guatemala BSC    GUATEMALA                      9        23      0      0      0
3 months    ki1112895-Guatemala BSC    GUATEMALA                      10       23      0      0      0
3 months    ki1112895-Guatemala BSC    GUATEMALA                      11       23      8      7      1
3 months    ki1112895-Guatemala BSC    GUATEMALA                      12       23      4      4      0
3 months    ki1113344-GMS-Nepal        NEPAL                          1       571      0      0      0
3 months    ki1113344-GMS-Nepal        NEPAL                          2       571      0      0      0
3 months    ki1113344-GMS-Nepal        NEPAL                          3       571      0      0      0
3 months    ki1113344-GMS-Nepal        NEPAL                          4       571      1      0      1
3 months    ki1113344-GMS-Nepal        NEPAL                          5       571      0      0      0
3 months    ki1113344-GMS-Nepal        NEPAL                          6       571    120    115      5
3 months    ki1113344-GMS-Nepal        NEPAL                          7       571    221    212      9
3 months    ki1113344-GMS-Nepal        NEPAL                          8       571    229    222      7
3 months    ki1113344-GMS-Nepal        NEPAL                          9       571      0      0      0
3 months    ki1113344-GMS-Nepal        NEPAL                          10      571      0      0      0
3 months    ki1113344-GMS-Nepal        NEPAL                          11      571      0      0      0
3 months    ki1113344-GMS-Nepal        NEPAL                          12      571      0      0      0
3 months    ki1114097-CMIN             BANGLADESH                     1       256     28     26      2
3 months    ki1114097-CMIN             BANGLADESH                     2       256     24     23      1
3 months    ki1114097-CMIN             BANGLADESH                     3       256     19     19      0
3 months    ki1114097-CMIN             BANGLADESH                     4       256     22     20      2
3 months    ki1114097-CMIN             BANGLADESH                     5       256     17     16      1
3 months    ki1114097-CMIN             BANGLADESH                     6       256      9      6      3
3 months    ki1114097-CMIN             BANGLADESH                     7       256     17     16      1
3 months    ki1114097-CMIN             BANGLADESH                     8       256     19     14      5
3 months    ki1114097-CMIN             BANGLADESH                     9       256     20     19      1
3 months    ki1114097-CMIN             BANGLADESH                     10      256     26     22      4
3 months    ki1114097-CMIN             BANGLADESH                     11      256     27     22      5
3 months    ki1114097-CMIN             BANGLADESH                     12      256     28     20      8
3 months    ki1114097-CMIN             BRAZIL                         1        92      9      9      0
3 months    ki1114097-CMIN             BRAZIL                         2        92      6      6      0
3 months    ki1114097-CMIN             BRAZIL                         3        92     10      9      1
3 months    ki1114097-CMIN             BRAZIL                         4        92      7      7      0
3 months    ki1114097-CMIN             BRAZIL                         5        92      4      4      0
3 months    ki1114097-CMIN             BRAZIL                         6        92      6      5      1
3 months    ki1114097-CMIN             BRAZIL                         7        92      3      2      1
3 months    ki1114097-CMIN             BRAZIL                         8        92      9      9      0
3 months    ki1114097-CMIN             BRAZIL                         9        92      4      4      0
3 months    ki1114097-CMIN             BRAZIL                         10       92     16     16      0
3 months    ki1114097-CMIN             BRAZIL                         11       92     10     10      0
3 months    ki1114097-CMIN             BRAZIL                         12       92      8      8      0
3 months    ki1114097-CMIN             GUINEA-BISSAU                  1       507     64     61      3
3 months    ki1114097-CMIN             GUINEA-BISSAU                  2       507     49     45      4
3 months    ki1114097-CMIN             GUINEA-BISSAU                  3       507     46     45      1
3 months    ki1114097-CMIN             GUINEA-BISSAU                  4       507     21     21      0
3 months    ki1114097-CMIN             GUINEA-BISSAU                  5       507     28     28      0
3 months    ki1114097-CMIN             GUINEA-BISSAU                  6       507     34     34      0
3 months    ki1114097-CMIN             GUINEA-BISSAU                  7       507     39     37      2
3 months    ki1114097-CMIN             GUINEA-BISSAU                  8       507     33     32      1
3 months    ki1114097-CMIN             GUINEA-BISSAU                  9       507     53     51      2
3 months    ki1114097-CMIN             GUINEA-BISSAU                  10      507     34     34      0
3 months    ki1114097-CMIN             GUINEA-BISSAU                  11      507     39     38      1
3 months    ki1114097-CMIN             GUINEA-BISSAU                  12      507     67     63      4
3 months    ki1114097-CMIN             PERU                           1       630     43     43      0
3 months    ki1114097-CMIN             PERU                           2       630     59     56      3
3 months    ki1114097-CMIN             PERU                           3       630     67     66      1
3 months    ki1114097-CMIN             PERU                           4       630     59     58      1
3 months    ki1114097-CMIN             PERU                           5       630     58     58      0
3 months    ki1114097-CMIN             PERU                           6       630     57     55      2
3 months    ki1114097-CMIN             PERU                           7       630     52     52      0
3 months    ki1114097-CMIN             PERU                           8       630     61     61      0
3 months    ki1114097-CMIN             PERU                           9       630     40     40      0
3 months    ki1114097-CMIN             PERU                           10      630     48     47      1
3 months    ki1114097-CMIN             PERU                           11      630     38     38      0
3 months    ki1114097-CMIN             PERU                           12      630     48     48      0
3 months    ki1114097-CONTENT          PERU                           1       215     10     10      0
3 months    ki1114097-CONTENT          PERU                           2       215     18     18      0
3 months    ki1114097-CONTENT          PERU                           3       215     30     30      0
3 months    ki1114097-CONTENT          PERU                           4       215     19     19      0
3 months    ki1114097-CONTENT          PERU                           5       215     14     13      1
3 months    ki1114097-CONTENT          PERU                           6       215     13     13      0
3 months    ki1114097-CONTENT          PERU                           7       215     28     28      0
3 months    ki1114097-CONTENT          PERU                           8       215     23     21      2
3 months    ki1114097-CONTENT          PERU                           9       215     26     26      0
3 months    ki1114097-CONTENT          PERU                           10      215     14     14      0
3 months    ki1114097-CONTENT          PERU                           11      215      9      9      0
3 months    ki1114097-CONTENT          PERU                           12      215     11     11      0
3 months    ki1119695-PROBIT           BELARUS                        1      8057    496    490      6
3 months    ki1119695-PROBIT           BELARUS                        2      8057    498    494      4
3 months    ki1119695-PROBIT           BELARUS                        3      8057    574    567      7
3 months    ki1119695-PROBIT           BELARUS                        4      8057    544    540      4
3 months    ki1119695-PROBIT           BELARUS                        5      8057    601    595      6
3 months    ki1119695-PROBIT           BELARUS                        6      8057    621    615      6
3 months    ki1119695-PROBIT           BELARUS                        7      8057    761    759      2
3 months    ki1119695-PROBIT           BELARUS                        8      8057    797    796      1
3 months    ki1119695-PROBIT           BELARUS                        9      8057    730    721      9
3 months    ki1119695-PROBIT           BELARUS                        10     8057    815    808      7
3 months    ki1119695-PROBIT           BELARUS                        11     8057    753    748      5
3 months    ki1119695-PROBIT           BELARUS                        12     8057    867    858      9
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       1      9193    917    876     41
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       2      9193    672    628     44
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       3      9193    821    773     48
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       4      9193    665    624     41
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       5      9193    692    653     39
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       6      9193    802    712     90
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       7      9193    782    741     41
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       8      9193    849    806     43
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       9      9193    799    772     27
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       10     9193    624    586     38
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       11     9193    735    695     40
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       12     9193    835    801     34
3 months    kiGH5241-JiVitA-3          BANGLADESH                     1     12305   1130   1039     91
3 months    kiGH5241-JiVitA-3          BANGLADESH                     2     12305    924    858     66
3 months    kiGH5241-JiVitA-3          BANGLADESH                     3     12305   1088   1024     64
3 months    kiGH5241-JiVitA-3          BANGLADESH                     4     12305    790    757     33
3 months    kiGH5241-JiVitA-3          BANGLADESH                     5     12305    613    577     36
3 months    kiGH5241-JiVitA-3          BANGLADESH                     6     12305    635    607     28
3 months    kiGH5241-JiVitA-3          BANGLADESH                     7     12305    710    667     43
3 months    kiGH5241-JiVitA-3          BANGLADESH                     8     12305    997    920     77
3 months    kiGH5241-JiVitA-3          BANGLADESH                     9     12305   1308   1182    126
3 months    kiGH5241-JiVitA-3          BANGLADESH                     10    12305   1339   1184    155
3 months    kiGH5241-JiVitA-3          BANGLADESH                     11    12305   1383   1213    170
3 months    kiGH5241-JiVitA-3          BANGLADESH                     12    12305   1388   1252    136
3 months    kiGH5241-JiVitA-4          BANGLADESH                     1       900      0      0      0
3 months    kiGH5241-JiVitA-4          BANGLADESH                     2       900    124    122      2
3 months    kiGH5241-JiVitA-4          BANGLADESH                     3       900    189    177     12
3 months    kiGH5241-JiVitA-4          BANGLADESH                     4       900    163    154      9
3 months    kiGH5241-JiVitA-4          BANGLADESH                     5       900     93     85      8
3 months    kiGH5241-JiVitA-4          BANGLADESH                     6       900     40     37      3
3 months    kiGH5241-JiVitA-4          BANGLADESH                     7       900     93     89      4
3 months    kiGH5241-JiVitA-4          BANGLADESH                     8       900    104     98      6
3 months    kiGH5241-JiVitA-4          BANGLADESH                     9       900     61     59      2
3 months    kiGH5241-JiVitA-4          BANGLADESH                     10      900     33     31      2
3 months    kiGH5241-JiVitA-4          BANGLADESH                     11      900      0      0      0
3 months    kiGH5241-JiVitA-4          BANGLADESH                     12      900      0      0      0
6 months    ki0047075b-MAL-ED          BANGLADESH                     1       241     18     17      1
6 months    ki0047075b-MAL-ED          BANGLADESH                     2       241     20     20      0
6 months    ki0047075b-MAL-ED          BANGLADESH                     3       241     23     22      1
6 months    ki0047075b-MAL-ED          BANGLADESH                     4       241     22     22      0
6 months    ki0047075b-MAL-ED          BANGLADESH                     5       241     21     20      1
6 months    ki0047075b-MAL-ED          BANGLADESH                     6       241     10     10      0
6 months    ki0047075b-MAL-ED          BANGLADESH                     7       241     18     17      1
6 months    ki0047075b-MAL-ED          BANGLADESH                     8       241     23     21      2
6 months    ki0047075b-MAL-ED          BANGLADESH                     9       241     22     22      0
6 months    ki0047075b-MAL-ED          BANGLADESH                     10      241     22     20      2
6 months    ki0047075b-MAL-ED          BANGLADESH                     11      241     16     16      0
6 months    ki0047075b-MAL-ED          BANGLADESH                     12      241     26     26      0
6 months    ki0047075b-MAL-ED          BRAZIL                         1       209     15     15      0
6 months    ki0047075b-MAL-ED          BRAZIL                         2       209     23     23      0
6 months    ki0047075b-MAL-ED          BRAZIL                         3       209     16     16      0
6 months    ki0047075b-MAL-ED          BRAZIL                         4       209     11     11      0
6 months    ki0047075b-MAL-ED          BRAZIL                         5       209     21     21      0
6 months    ki0047075b-MAL-ED          BRAZIL                         6       209      8      8      0
6 months    ki0047075b-MAL-ED          BRAZIL                         7       209     16     16      0
6 months    ki0047075b-MAL-ED          BRAZIL                         8       209     16     16      0
6 months    ki0047075b-MAL-ED          BRAZIL                         9       209     30     30      0
6 months    ki0047075b-MAL-ED          BRAZIL                         10      209     20     20      0
6 months    ki0047075b-MAL-ED          BRAZIL                         11      209     21     21      0
6 months    ki0047075b-MAL-ED          BRAZIL                         12      209     12     12      0
6 months    ki0047075b-MAL-ED          INDIA                          1       236     19     18      1
6 months    ki0047075b-MAL-ED          INDIA                          2       236     18     18      0
6 months    ki0047075b-MAL-ED          INDIA                          3       236     22     22      0
6 months    ki0047075b-MAL-ED          INDIA                          4       236     15     15      0
6 months    ki0047075b-MAL-ED          INDIA                          5       236      8      8      0
6 months    ki0047075b-MAL-ED          INDIA                          6       236     19     19      0
6 months    ki0047075b-MAL-ED          INDIA                          7       236     23     20      3
6 months    ki0047075b-MAL-ED          INDIA                          8       236     22     21      1
6 months    ki0047075b-MAL-ED          INDIA                          9       236     20     19      1
6 months    ki0047075b-MAL-ED          INDIA                          10      236     26     24      2
6 months    ki0047075b-MAL-ED          INDIA                          11      236     25     25      0
6 months    ki0047075b-MAL-ED          INDIA                          12      236     19     18      1
6 months    ki0047075b-MAL-ED          NEPAL                          1       236     20     20      0
6 months    ki0047075b-MAL-ED          NEPAL                          2       236     19     18      1
6 months    ki0047075b-MAL-ED          NEPAL                          3       236     17     17      0
6 months    ki0047075b-MAL-ED          NEPAL                          4       236     22     22      0
6 months    ki0047075b-MAL-ED          NEPAL                          5       236     20     20      0
6 months    ki0047075b-MAL-ED          NEPAL                          6       236     18     18      0
6 months    ki0047075b-MAL-ED          NEPAL                          7       236     18     18      0
6 months    ki0047075b-MAL-ED          NEPAL                          8       236     24     24      0
6 months    ki0047075b-MAL-ED          NEPAL                          9       236     16     16      0
6 months    ki0047075b-MAL-ED          NEPAL                          10      236     21     21      0
6 months    ki0047075b-MAL-ED          NEPAL                          11      236     24     24      0
6 months    ki0047075b-MAL-ED          NEPAL                          12      236     17     17      0
6 months    ki0047075b-MAL-ED          PERU                           1       273     38     36      2
6 months    ki0047075b-MAL-ED          PERU                           2       273     19     18      1
6 months    ki0047075b-MAL-ED          PERU                           3       273     22     21      1
6 months    ki0047075b-MAL-ED          PERU                           4       273     20     19      1
6 months    ki0047075b-MAL-ED          PERU                           5       273     27     27      0
6 months    ki0047075b-MAL-ED          PERU                           6       273     15     14      1
6 months    ki0047075b-MAL-ED          PERU                           7       273     22     22      0
6 months    ki0047075b-MAL-ED          PERU                           8       273     16     15      1
6 months    ki0047075b-MAL-ED          PERU                           9       273     23     23      0
6 months    ki0047075b-MAL-ED          PERU                           10      273     20     19      1
6 months    ki0047075b-MAL-ED          PERU                           11      273     32     28      4
6 months    ki0047075b-MAL-ED          PERU                           12      273     19     19      0
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1       254     38     36      2
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2       254     23     23      0
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3       254     15     15      0
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4       254     13     13      0
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   5       254     13     12      1
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   6       254     18     18      0
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   7       254     22     22      0
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   8       254      9      9      0
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   9       254     18     18      0
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   10      254     26     25      1
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   11      254     24     23      1
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   12      254     35     34      1
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1       247     20     18      2
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2       247     30     29      1
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3       247     18     16      2
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4       247      9      9      0
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5       247     16     15      1
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6       247     19     19      0
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7       247     23     21      2
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8       247     12     11      1
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9       247     21     21      0
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10      247     22     20      2
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11      247     27     25      2
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12      247     30     29      1
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1       369     34     31      3
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2       369     16     14      2
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3       369     31     31      0
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4       369     44     40      4
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          5       369     35     29      6
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          6       369     37     31      6
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          7       369     39     28     11
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          8       369     17     17      0
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          9       369     20     18      2
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          10      369     29     27      2
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          11      369     42     41      1
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          12      369     25     20      5
6 months    ki1000108-IRC              INDIA                          1       407     38     34      4
6 months    ki1000108-IRC              INDIA                          2       407     28     23      5
6 months    ki1000108-IRC              INDIA                          3       407     27     27      0
6 months    ki1000108-IRC              INDIA                          4       407     21     17      4
6 months    ki1000108-IRC              INDIA                          5       407     21     18      3
6 months    ki1000108-IRC              INDIA                          6       407     37     36      1
6 months    ki1000108-IRC              INDIA                          7       407     36     35      1
6 months    ki1000108-IRC              INDIA                          8       407     44     43      1
6 months    ki1000108-IRC              INDIA                          9       407     27     26      1
6 months    ki1000108-IRC              INDIA                          10      407     37     37      0
6 months    ki1000108-IRC              INDIA                          11      407     40     35      5
6 months    ki1000108-IRC              INDIA                          12      407     51     47      4
6 months    ki1000109-EE               PAKISTAN                       1       372     90     62     28
6 months    ki1000109-EE               PAKISTAN                       2       372     67     53     14
6 months    ki1000109-EE               PAKISTAN                       3       372     42     36      6
6 months    ki1000109-EE               PAKISTAN                       4       372     16     11      5
6 months    ki1000109-EE               PAKISTAN                       5       372      0      0      0
6 months    ki1000109-EE               PAKISTAN                       6       372      0      0      0
6 months    ki1000109-EE               PAKISTAN                       7       372      0      0      0
6 months    ki1000109-EE               PAKISTAN                       8       372      0      0      0
6 months    ki1000109-EE               PAKISTAN                       9       372      0      0      0
6 months    ki1000109-EE               PAKISTAN                       10      372      4      3      1
6 months    ki1000109-EE               PAKISTAN                       11      372     70     49     21
6 months    ki1000109-EE               PAKISTAN                       12      372     83     64     19
6 months    ki1000109-ResPak           PAKISTAN                       1       235      9      9      0
6 months    ki1000109-ResPak           PAKISTAN                       2       235     11     11      0
6 months    ki1000109-ResPak           PAKISTAN                       3       235     20     10     10
6 months    ki1000109-ResPak           PAKISTAN                       4       235     21     16      5
6 months    ki1000109-ResPak           PAKISTAN                       5       235     45     36      9
6 months    ki1000109-ResPak           PAKISTAN                       6       235     42     36      6
6 months    ki1000109-ResPak           PAKISTAN                       7       235     26     20      6
6 months    ki1000109-ResPak           PAKISTAN                       8       235     31     27      4
6 months    ki1000109-ResPak           PAKISTAN                       9       235     20     18      2
6 months    ki1000109-ResPak           PAKISTAN                       10      235      4      4      0
6 months    ki1000109-ResPak           PAKISTAN                       11      235      1      1      0
6 months    ki1000109-ResPak           PAKISTAN                       12      235      5      3      2
6 months    ki1000304b-SAS-CompFeed    INDIA                          1       411     44     37      7
6 months    ki1000304b-SAS-CompFeed    INDIA                          2       411     39     38      1
6 months    ki1000304b-SAS-CompFeed    INDIA                          3       411     33     32      1
6 months    ki1000304b-SAS-CompFeed    INDIA                          4       411     26     26      0
6 months    ki1000304b-SAS-CompFeed    INDIA                          5       411     36     31      5
6 months    ki1000304b-SAS-CompFeed    INDIA                          6       411     48     40      8
6 months    ki1000304b-SAS-CompFeed    INDIA                          7       411      0      0      0
6 months    ki1000304b-SAS-CompFeed    INDIA                          8       411      0      0      0
6 months    ki1000304b-SAS-CompFeed    INDIA                          9       411      0      0      0
6 months    ki1000304b-SAS-CompFeed    INDIA                          10      411     76     71      5
6 months    ki1000304b-SAS-CompFeed    INDIA                          11      411     43     41      2
6 months    ki1000304b-SAS-CompFeed    INDIA                          12      411     66     58      8
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1        96      6      4      2
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2        96      9      7      2
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3        96      6      6      0
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          4        96      1      1      0
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          5        96      3      3      0
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          6        96      5      5      0
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          7        96      9      8      1
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          8        96     14     13      1
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          9        96     17     13      4
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          10       96     12     12      0
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          11       96      5      3      2
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          12       96      9      6      3
6 months    ki1017093-NIH-Birth        BANGLADESH                     1       537     52     48      4
6 months    ki1017093-NIH-Birth        BANGLADESH                     2       537     49     47      2
6 months    ki1017093-NIH-Birth        BANGLADESH                     3       537     50     46      4
6 months    ki1017093-NIH-Birth        BANGLADESH                     4       537     42     40      2
6 months    ki1017093-NIH-Birth        BANGLADESH                     5       537     42     40      2
6 months    ki1017093-NIH-Birth        BANGLADESH                     6       537     43     38      5
6 months    ki1017093-NIH-Birth        BANGLADESH                     7       537     39     38      1
6 months    ki1017093-NIH-Birth        BANGLADESH                     8       537     35     33      2
6 months    ki1017093-NIH-Birth        BANGLADESH                     9       537     42     40      2
6 months    ki1017093-NIH-Birth        BANGLADESH                     10      537     42     38      4
6 months    ki1017093-NIH-Birth        BANGLADESH                     11      537     50     45      5
6 months    ki1017093-NIH-Birth        BANGLADESH                     12      537     51     49      2
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1      2029    142    140      2
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2      2029    149    148      1
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3      2029    140    138      2
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4      2029    153    153      0
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5      2029    149    148      1
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6      2029    143    142      1
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7      2029    195    193      2
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8      2029    199    196      3
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9      2029    184    183      1
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10     2029    208    203      5
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11     2029    195    194      1
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12     2029    172    172      0
6 months    ki1101329-Keneba           GAMBIA                         1      2089    210    203      7
6 months    ki1101329-Keneba           GAMBIA                         2      2089    187    178      9
6 months    ki1101329-Keneba           GAMBIA                         3      2089    221    211     10
6 months    ki1101329-Keneba           GAMBIA                         4      2089    143    141      2
6 months    ki1101329-Keneba           GAMBIA                         5      2089    143    139      4
6 months    ki1101329-Keneba           GAMBIA                         6      2089    118    111      7
6 months    ki1101329-Keneba           GAMBIA                         7      2089     92     87      5
6 months    ki1101329-Keneba           GAMBIA                         8      2089    174    169      5
6 months    ki1101329-Keneba           GAMBIA                         9      2089    174    169      5
6 months    ki1101329-Keneba           GAMBIA                         10     2089    248    242      6
6 months    ki1101329-Keneba           GAMBIA                         11     2089    187    183      4
6 months    ki1101329-Keneba           GAMBIA                         12     2089    192    186      6
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1       299     28     23      5
6 months    ki1112895-Guatemala BSC    GUATEMALA                      2       299     25     23      2
6 months    ki1112895-Guatemala BSC    GUATEMALA                      3       299     27     23      4
6 months    ki1112895-Guatemala BSC    GUATEMALA                      4       299     31     28      3
6 months    ki1112895-Guatemala BSC    GUATEMALA                      5       299     31     26      5
6 months    ki1112895-Guatemala BSC    GUATEMALA                      6       299     22     19      3
6 months    ki1112895-Guatemala BSC    GUATEMALA                      7       299     21     20      1
6 months    ki1112895-Guatemala BSC    GUATEMALA                      8       299     14     13      1
6 months    ki1112895-Guatemala BSC    GUATEMALA                      9       299     16     15      1
6 months    ki1112895-Guatemala BSC    GUATEMALA                      10      299     29     28      1
6 months    ki1112895-Guatemala BSC    GUATEMALA                      11      299     24     24      0
6 months    ki1112895-Guatemala BSC    GUATEMALA                      12      299     31     30      1
6 months    ki1113344-GMS-Nepal        NEPAL                          1       563      0      0      0
6 months    ki1113344-GMS-Nepal        NEPAL                          2       563      0      0      0
6 months    ki1113344-GMS-Nepal        NEPAL                          3       563      0      0      0
6 months    ki1113344-GMS-Nepal        NEPAL                          4       563      1      0      1
6 months    ki1113344-GMS-Nepal        NEPAL                          5       563      0      0      0
6 months    ki1113344-GMS-Nepal        NEPAL                          6       563    121    115      6
6 months    ki1113344-GMS-Nepal        NEPAL                          7       563    218    212      6
6 months    ki1113344-GMS-Nepal        NEPAL                          8       563    223    216      7
6 months    ki1113344-GMS-Nepal        NEPAL                          9       563      0      0      0
6 months    ki1113344-GMS-Nepal        NEPAL                          10      563      0      0      0
6 months    ki1113344-GMS-Nepal        NEPAL                          11      563      0      0      0
6 months    ki1113344-GMS-Nepal        NEPAL                          12      563      0      0      0
6 months    ki1114097-CMIN             BANGLADESH                     1       243     26     24      2
6 months    ki1114097-CMIN             BANGLADESH                     2       243     23     23      0
6 months    ki1114097-CMIN             BANGLADESH                     3       243     17     16      1
6 months    ki1114097-CMIN             BANGLADESH                     4       243     22     21      1
6 months    ki1114097-CMIN             BANGLADESH                     5       243     17     17      0
6 months    ki1114097-CMIN             BANGLADESH                     6       243      8      5      3
6 months    ki1114097-CMIN             BANGLADESH                     7       243     15     13      2
6 months    ki1114097-CMIN             BANGLADESH                     8       243     17     11      6
6 months    ki1114097-CMIN             BANGLADESH                     9       243     20     18      2
6 months    ki1114097-CMIN             BANGLADESH                     10      243     24     22      2
6 months    ki1114097-CMIN             BANGLADESH                     11      243     27     23      4
6 months    ki1114097-CMIN             BANGLADESH                     12      243     27     22      5
6 months    ki1114097-CMIN             BRAZIL                         1       108     11     11      0
6 months    ki1114097-CMIN             BRAZIL                         2       108      6      6      0
6 months    ki1114097-CMIN             BRAZIL                         3       108     12     11      1
6 months    ki1114097-CMIN             BRAZIL                         4       108      9      9      0
6 months    ki1114097-CMIN             BRAZIL                         5       108      5      5      0
6 months    ki1114097-CMIN             BRAZIL                         6       108      7      7      0
6 months    ki1114097-CMIN             BRAZIL                         7       108      4      3      1
6 months    ki1114097-CMIN             BRAZIL                         8       108     12     12      0
6 months    ki1114097-CMIN             BRAZIL                         9       108      7      7      0
6 months    ki1114097-CMIN             BRAZIL                         10      108     15     14      1
6 months    ki1114097-CMIN             BRAZIL                         11      108     11     11      0
6 months    ki1114097-CMIN             BRAZIL                         12      108      9      9      0
6 months    ki1114097-CMIN             GUINEA-BISSAU                  1       848    102    100      2
6 months    ki1114097-CMIN             GUINEA-BISSAU                  2       848     57     56      1
6 months    ki1114097-CMIN             GUINEA-BISSAU                  3       848     68     65      3
6 months    ki1114097-CMIN             GUINEA-BISSAU                  4       848     46     45      1
6 months    ki1114097-CMIN             GUINEA-BISSAU                  5       848     56     55      1
6 months    ki1114097-CMIN             GUINEA-BISSAU                  6       848     38     38      0
6 months    ki1114097-CMIN             GUINEA-BISSAU                  7       848     38     37      1
6 months    ki1114097-CMIN             GUINEA-BISSAU                  8       848     55     54      1
6 months    ki1114097-CMIN             GUINEA-BISSAU                  9       848    116    111      5
6 months    ki1114097-CMIN             GUINEA-BISSAU                  10      848    100    100      0
6 months    ki1114097-CMIN             GUINEA-BISSAU                  11      848     74     72      2
6 months    ki1114097-CMIN             GUINEA-BISSAU                  12      848     98     97      1
6 months    ki1114097-CMIN             PERU                           1       637     42     42      0
6 months    ki1114097-CMIN             PERU                           2       637     60     57      3
6 months    ki1114097-CMIN             PERU                           3       637     67     67      0
6 months    ki1114097-CMIN             PERU                           4       637     61     60      1
6 months    ki1114097-CMIN             PERU                           5       637     54     54      0
6 months    ki1114097-CMIN             PERU                           6       637     54     54      0
6 months    ki1114097-CMIN             PERU                           7       637     52     52      0
6 months    ki1114097-CMIN             PERU                           8       637     73     72      1
6 months    ki1114097-CMIN             PERU                           9       637     50     50      0
6 months    ki1114097-CMIN             PERU                           10      637     50     49      1
6 months    ki1114097-CMIN             PERU                           11      637     34     33      1
6 months    ki1114097-CMIN             PERU                           12      637     40     39      1
6 months    ki1114097-CONTENT          PERU                           1       215     10     10      0
6 months    ki1114097-CONTENT          PERU                           2       215     18     18      0
6 months    ki1114097-CONTENT          PERU                           3       215     30     30      0
6 months    ki1114097-CONTENT          PERU                           4       215     19     18      1
6 months    ki1114097-CONTENT          PERU                           5       215     14     13      1
6 months    ki1114097-CONTENT          PERU                           6       215     13     13      0
6 months    ki1114097-CONTENT          PERU                           7       215     28     28      0
6 months    ki1114097-CONTENT          PERU                           8       215     23     21      2
6 months    ki1114097-CONTENT          PERU                           9       215     26     26      0
6 months    ki1114097-CONTENT          PERU                           10      215     14     14      0
6 months    ki1114097-CONTENT          PERU                           11      215      9      9      0
6 months    ki1114097-CONTENT          PERU                           12      215     11     11      0
6 months    ki1119695-PROBIT           BELARUS                        1      7665    489    472     17
6 months    ki1119695-PROBIT           BELARUS                        2      7665    483    475      8
6 months    ki1119695-PROBIT           BELARUS                        3      7665    551    543      8
6 months    ki1119695-PROBIT           BELARUS                        4      7665    524    515      9
6 months    ki1119695-PROBIT           BELARUS                        5      7665    575    571      4
6 months    ki1119695-PROBIT           BELARUS                        6      7665    583    571     12
6 months    ki1119695-PROBIT           BELARUS                        7      7665    720    707     13
6 months    ki1119695-PROBIT           BELARUS                        8      7665    754    740     14
6 months    ki1119695-PROBIT           BELARUS                        9      7665    702    686     16
6 months    ki1119695-PROBIT           BELARUS                        10     7665    767    757     10
6 months    ki1119695-PROBIT           BELARUS                        11     7665    702    681     21
6 months    ki1119695-PROBIT           BELARUS                        12     7665    815    801     14
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1      8295    794    765     29
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2      8295    587    566     21
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3      8295    737    690     47
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       4      8295    636    611     25
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       5      8295    608    586     22
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       6      8295    645    612     33
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       7      8295    638    604     34
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       8      8295    746    724     22
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       9      8295    749    724     25
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       10     8295    600    576     24
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       11     8295    765    734     31
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       12     8295    790    757     33
6 months    ki1148112-LCNI-5           MALAWI                         1       839     68     59      9
6 months    ki1148112-LCNI-5           MALAWI                         2       839     46     44      2
6 months    ki1148112-LCNI-5           MALAWI                         3       839     26     23      3
6 months    ki1148112-LCNI-5           MALAWI                         4       839     39     38      1
6 months    ki1148112-LCNI-5           MALAWI                         5       839     44     38      6
6 months    ki1148112-LCNI-5           MALAWI                         6       839     34     28      6
6 months    ki1148112-LCNI-5           MALAWI                         7       839     61     57      4
6 months    ki1148112-LCNI-5           MALAWI                         8       839     93     89      4
6 months    ki1148112-LCNI-5           MALAWI                         9       839     93     88      5
6 months    ki1148112-LCNI-5           MALAWI                         10      839    135    117     18
6 months    ki1148112-LCNI-5           MALAWI                         11      839    105     96      9
6 months    ki1148112-LCNI-5           MALAWI                         12      839     95     91      4
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1      8319    670    626     44
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2      8319    566    531     35
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3      8319    711    657     54
6 months    kiGH5241-JiVitA-3          BANGLADESH                     4      8319    589    551     38
6 months    kiGH5241-JiVitA-3          BANGLADESH                     5      8319    573    528     45
6 months    kiGH5241-JiVitA-3          BANGLADESH                     6      8319    594    559     35
6 months    kiGH5241-JiVitA-3          BANGLADESH                     7      8319    610    586     24
6 months    kiGH5241-JiVitA-3          BANGLADESH                     8      8319    757    717     40
6 months    kiGH5241-JiVitA-3          BANGLADESH                     9      8319    806    748     58
6 months    kiGH5241-JiVitA-3          BANGLADESH                     10     8319    804    745     59
6 months    kiGH5241-JiVitA-3          BANGLADESH                     11     8319    868    801     67
6 months    kiGH5241-JiVitA-3          BANGLADESH                     12     8319    771    721     50
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1      1256      0      0      0
6 months    kiGH5241-JiVitA-4          BANGLADESH                     2      1256    131    127      4
6 months    kiGH5241-JiVitA-4          BANGLADESH                     3      1256    251    238     13
6 months    kiGH5241-JiVitA-4          BANGLADESH                     4      1256    191    177     14
6 months    kiGH5241-JiVitA-4          BANGLADESH                     5      1256    176    163     13
6 months    kiGH5241-JiVitA-4          BANGLADESH                     6      1256    114    106      8
6 months    kiGH5241-JiVitA-4          BANGLADESH                     7      1256    141    135      6
6 months    kiGH5241-JiVitA-4          BANGLADESH                     8      1256    127    121      6
6 months    kiGH5241-JiVitA-4          BANGLADESH                     9      1256     88     85      3
6 months    kiGH5241-JiVitA-4          BANGLADESH                     10     1256     37     34      3
6 months    kiGH5241-JiVitA-4          BANGLADESH                     11     1256      0      0      0
6 months    kiGH5241-JiVitA-4          BANGLADESH                     12     1256      0      0      0
9 months    ki0047075b-MAL-ED          BANGLADESH                     1       234     18     16      2
9 months    ki0047075b-MAL-ED          BANGLADESH                     2       234     19     19      0
9 months    ki0047075b-MAL-ED          BANGLADESH                     3       234     21     20      1
9 months    ki0047075b-MAL-ED          BANGLADESH                     4       234     20     20      0
9 months    ki0047075b-MAL-ED          BANGLADESH                     5       234     21     20      1
9 months    ki0047075b-MAL-ED          BANGLADESH                     6       234      9      9      0
9 months    ki0047075b-MAL-ED          BANGLADESH                     7       234     18     16      2
9 months    ki0047075b-MAL-ED          BANGLADESH                     8       234     23     20      3
9 months    ki0047075b-MAL-ED          BANGLADESH                     9       234     20     20      0
9 months    ki0047075b-MAL-ED          BANGLADESH                     10      234     22     20      2
9 months    ki0047075b-MAL-ED          BANGLADESH                     11      234     15     15      0
9 months    ki0047075b-MAL-ED          BANGLADESH                     12      234     28     28      0
9 months    ki0047075b-MAL-ED          BRAZIL                         1       199     15     15      0
9 months    ki0047075b-MAL-ED          BRAZIL                         2       199     21     21      0
9 months    ki0047075b-MAL-ED          BRAZIL                         3       199     16     16      0
9 months    ki0047075b-MAL-ED          BRAZIL                         4       199     10     10      0
9 months    ki0047075b-MAL-ED          BRAZIL                         5       199     20     20      0
9 months    ki0047075b-MAL-ED          BRAZIL                         6       199      7      7      0
9 months    ki0047075b-MAL-ED          BRAZIL                         7       199     16     16      0
9 months    ki0047075b-MAL-ED          BRAZIL                         8       199     14     14      0
9 months    ki0047075b-MAL-ED          BRAZIL                         9       199     30     30      0
9 months    ki0047075b-MAL-ED          BRAZIL                         10      199     18     18      0
9 months    ki0047075b-MAL-ED          BRAZIL                         11      199     21     21      0
9 months    ki0047075b-MAL-ED          BRAZIL                         12      199     11     11      0
9 months    ki0047075b-MAL-ED          INDIA                          1       232     19     18      1
9 months    ki0047075b-MAL-ED          INDIA                          2       232     18     18      0
9 months    ki0047075b-MAL-ED          INDIA                          3       232     21     21      0
9 months    ki0047075b-MAL-ED          INDIA                          4       232     14     13      1
9 months    ki0047075b-MAL-ED          INDIA                          5       232      8      8      0
9 months    ki0047075b-MAL-ED          INDIA                          6       232     19     19      0
9 months    ki0047075b-MAL-ED          INDIA                          7       232     23     22      1
9 months    ki0047075b-MAL-ED          INDIA                          8       232     22     21      1
9 months    ki0047075b-MAL-ED          INDIA                          9       232     19     17      2
9 months    ki0047075b-MAL-ED          INDIA                          10      232     26     24      2
9 months    ki0047075b-MAL-ED          INDIA                          11      232     24     23      1
9 months    ki0047075b-MAL-ED          INDIA                          12      232     19     18      1
9 months    ki0047075b-MAL-ED          NEPAL                          1       231     20     20      0
9 months    ki0047075b-MAL-ED          NEPAL                          2       231     17     17      0
9 months    ki0047075b-MAL-ED          NEPAL                          3       231     17     16      1
9 months    ki0047075b-MAL-ED          NEPAL                          4       231     22     22      0
9 months    ki0047075b-MAL-ED          NEPAL                          5       231     19     19      0
9 months    ki0047075b-MAL-ED          NEPAL                          6       231     18     18      0
9 months    ki0047075b-MAL-ED          NEPAL                          7       231     18     18      0
9 months    ki0047075b-MAL-ED          NEPAL                          8       231     24     24      0
9 months    ki0047075b-MAL-ED          NEPAL                          9       231     15     15      0
9 months    ki0047075b-MAL-ED          NEPAL                          10      231     20     20      0
9 months    ki0047075b-MAL-ED          NEPAL                          11      231     24     24      0
9 months    ki0047075b-MAL-ED          NEPAL                          12      231     17     17      0
9 months    ki0047075b-MAL-ED          PERU                           1       256     36     34      2
9 months    ki0047075b-MAL-ED          PERU                           2       256     19     18      1
9 months    ki0047075b-MAL-ED          PERU                           3       256     21     20      1
9 months    ki0047075b-MAL-ED          PERU                           4       256     19     17      2
9 months    ki0047075b-MAL-ED          PERU                           5       256     23     22      1
9 months    ki0047075b-MAL-ED          PERU                           6       256     15     14      1
9 months    ki0047075b-MAL-ED          PERU                           7       256     20     20      0
9 months    ki0047075b-MAL-ED          PERU                           8       256     14     14      0
9 months    ki0047075b-MAL-ED          PERU                           9       256     23     22      1
9 months    ki0047075b-MAL-ED          PERU                           10      256     17     17      0
9 months    ki0047075b-MAL-ED          PERU                           11      256     30     28      2
9 months    ki0047075b-MAL-ED          PERU                           12      256     19     18      1
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1       250     37     34      3
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2       250     23     23      0
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3       250     15     15      0
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4       250     12     12      0
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   5       250     12     12      0
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   6       250     16     16      0
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   7       250     22     21      1
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   8       250      9      9      0
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   9       250     19     19      0
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   10      250     26     24      2
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   11      250     25     23      2
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   12      250     34     33      1
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1       238     16     14      2
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2       238     29     28      1
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3       238     18     15      3
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4       238      9      7      2
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5       238     19     19      0
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6       238     19     19      0
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7       238     21     19      2
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8       238     12     10      2
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9       238     20     19      1
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10      238     21     17      4
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11      238     26     20      6
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12      238     28     22      6
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          1       366     34     29      5
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          2       366     15     13      2
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          3       366     30     27      3
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          4       366     44     42      2
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          5       366     35     27      8
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          6       366     37     29      8
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          7       366     38     30      8
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          8       366     17     15      2
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          9       366     20     19      1
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          10      366     29     26      3
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          11      366     42     42      0
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          12      366     25     20      5
9 months    ki1000108-IRC              INDIA                          1       407     38     33      5
9 months    ki1000108-IRC              INDIA                          2       407     28     23      5
9 months    ki1000108-IRC              INDIA                          3       407     27     27      0
9 months    ki1000108-IRC              INDIA                          4       407     21     17      4
9 months    ki1000108-IRC              INDIA                          5       407     21     15      6
9 months    ki1000108-IRC              INDIA                          6       407     37     36      1
9 months    ki1000108-IRC              INDIA                          7       407     36     34      2
9 months    ki1000108-IRC              INDIA                          8       407     44     43      1
9 months    ki1000108-IRC              INDIA                          9       407     27     26      1
9 months    ki1000108-IRC              INDIA                          10      407     37     37      0
9 months    ki1000108-IRC              INDIA                          11      407     40     36      4
9 months    ki1000108-IRC              INDIA                          12      407     51     46      5
9 months    ki1000109-EE               PAKISTAN                       1       366     90     63     27
9 months    ki1000109-EE               PAKISTAN                       2       366     66     46     20
9 months    ki1000109-EE               PAKISTAN                       3       366     41     32      9
9 months    ki1000109-EE               PAKISTAN                       4       366     16      8      8
9 months    ki1000109-EE               PAKISTAN                       5       366      0      0      0
9 months    ki1000109-EE               PAKISTAN                       6       366      0      0      0
9 months    ki1000109-EE               PAKISTAN                       7       366      0      0      0
9 months    ki1000109-EE               PAKISTAN                       8       366      0      0      0
9 months    ki1000109-EE               PAKISTAN                       9       366      0      0      0
9 months    ki1000109-EE               PAKISTAN                       10      366      4      3      1
9 months    ki1000109-EE               PAKISTAN                       11      366     68     53     15
9 months    ki1000109-EE               PAKISTAN                       12      366     81     66     15
9 months    ki1000109-ResPak           PAKISTAN                       1       211      9      6      3
9 months    ki1000109-ResPak           PAKISTAN                       2       211      9      8      1
9 months    ki1000109-ResPak           PAKISTAN                       3       211     15     11      4
9 months    ki1000109-ResPak           PAKISTAN                       4       211     16     15      1
9 months    ki1000109-ResPak           PAKISTAN                       5       211     45     37      8
9 months    ki1000109-ResPak           PAKISTAN                       6       211     37     32      5
9 months    ki1000109-ResPak           PAKISTAN                       7       211     20     17      3
9 months    ki1000109-ResPak           PAKISTAN                       8       211     30     27      3
9 months    ki1000109-ResPak           PAKISTAN                       9       211     19     16      3
9 months    ki1000109-ResPak           PAKISTAN                       10      211      5      4      1
9 months    ki1000109-ResPak           PAKISTAN                       11      211      1      1      0
9 months    ki1000109-ResPak           PAKISTAN                       12      211      5      4      1
9 months    ki1000304b-SAS-CompFeed    INDIA                          1       404     47     39      8
9 months    ki1000304b-SAS-CompFeed    INDIA                          2       404     36     33      3
9 months    ki1000304b-SAS-CompFeed    INDIA                          3       404     30     28      2
9 months    ki1000304b-SAS-CompFeed    INDIA                          4       404     24     22      2
9 months    ki1000304b-SAS-CompFeed    INDIA                          5       404     40     31      9
9 months    ki1000304b-SAS-CompFeed    INDIA                          6       404     49     46      3
9 months    ki1000304b-SAS-CompFeed    INDIA                          7       404      0      0      0
9 months    ki1000304b-SAS-CompFeed    INDIA                          8       404      0      0      0
9 months    ki1000304b-SAS-CompFeed    INDIA                          9       404      0      0      0
9 months    ki1000304b-SAS-CompFeed    INDIA                          10      404     72     60     12
9 months    ki1000304b-SAS-CompFeed    INDIA                          11      404     41     37      4
9 months    ki1000304b-SAS-CompFeed    INDIA                          12      404     65     57      8
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          1        85      6      3      3
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          2        85      7      5      2
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          3        85      6      6      0
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          4        85      1      1      0
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          5        85      3      3      0
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          6        85      4      3      1
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          7        85      8      8      0
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          8        85     13      9      4
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          9        85     15     13      2
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          10       85      8      6      2
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          11       85      4      2      2
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          12       85     10      6      4
9 months    ki1017093-NIH-Birth        BANGLADESH                     1       507     51     48      3
9 months    ki1017093-NIH-Birth        BANGLADESH                     2       507     43     40      3
9 months    ki1017093-NIH-Birth        BANGLADESH                     3       507     46     41      5
9 months    ki1017093-NIH-Birth        BANGLADESH                     4       507     40     36      4
9 months    ki1017093-NIH-Birth        BANGLADESH                     5       507     41     39      2
9 months    ki1017093-NIH-Birth        BANGLADESH                     6       507     44     38      6
9 months    ki1017093-NIH-Birth        BANGLADESH                     7       507     39     36      3
9 months    ki1017093-NIH-Birth        BANGLADESH                     8       507     28     26      2
9 months    ki1017093-NIH-Birth        BANGLADESH                     9       507     35     32      3
9 months    ki1017093-NIH-Birth        BANGLADESH                     10      507     41     38      3
9 months    ki1017093-NIH-Birth        BANGLADESH                     11      507     48     38     10
9 months    ki1017093-NIH-Birth        BANGLADESH                     12      507     51     50      1
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1      1788    123    118      5
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2      1788    137    136      1
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3      1788    122    117      5
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4      1788    130    126      4
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5      1788    130    127      3
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6      1788    124    123      1
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7      1788    177    174      3
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8      1788    181    177      4
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9      1788    163    163      0
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10     1788    189    183      6
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11     1788    169    166      3
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12     1788    143    143      0
9 months    ki1101329-Keneba           GAMBIA                         1      2067    212    205      7
9 months    ki1101329-Keneba           GAMBIA                         2      2067    187    177     10
9 months    ki1101329-Keneba           GAMBIA                         3      2067    216    206     10
9 months    ki1101329-Keneba           GAMBIA                         4      2067    135    130      5
9 months    ki1101329-Keneba           GAMBIA                         5      2067    138    132      6
9 months    ki1101329-Keneba           GAMBIA                         6      2067    105     98      7
9 months    ki1101329-Keneba           GAMBIA                         7      2067     98     88     10
9 months    ki1101329-Keneba           GAMBIA                         8      2067    184    175      9
9 months    ki1101329-Keneba           GAMBIA                         9      2067    176    170      6
9 months    ki1101329-Keneba           GAMBIA                         10     2067    241    228     13
9 months    ki1101329-Keneba           GAMBIA                         11     2067    187    178      9
9 months    ki1101329-Keneba           GAMBIA                         12     2067    188    182      6
9 months    ki1112895-Guatemala BSC    GUATEMALA                      1       238     23     18      5
9 months    ki1112895-Guatemala BSC    GUATEMALA                      2       238     23     21      2
9 months    ki1112895-Guatemala BSC    GUATEMALA                      3       238     25     22      3
9 months    ki1112895-Guatemala BSC    GUATEMALA                      4       238     26     22      4
9 months    ki1112895-Guatemala BSC    GUATEMALA                      5       238     22     20      2
9 months    ki1112895-Guatemala BSC    GUATEMALA                      6       238     17     16      1
9 months    ki1112895-Guatemala BSC    GUATEMALA                      7       238     13     10      3
9 months    ki1112895-Guatemala BSC    GUATEMALA                      8       238      9      7      2
9 months    ki1112895-Guatemala BSC    GUATEMALA                      9       238     12     10      2
9 months    ki1112895-Guatemala BSC    GUATEMALA                      10      238     25     24      1
9 months    ki1112895-Guatemala BSC    GUATEMALA                      11      238     19     16      3
9 months    ki1112895-Guatemala BSC    GUATEMALA                      12      238     24     22      2
9 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   1       762     70     62      8
9 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   2       762     48     48      0
9 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   3       762     36     34      2
9 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   4       762     34     33      1
9 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   5       762     57     56      1
9 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   6       762     44     43      1
9 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   7       762     52     48      4
9 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   8       762     80     77      3
9 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   9       762     91     85      6
9 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   10      762     90     84      6
9 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   11      762     71     67      4
9 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   12      762     89     82      7
9 months    ki1113344-GMS-Nepal        NEPAL                          1       551      0      0      0
9 months    ki1113344-GMS-Nepal        NEPAL                          2       551      0      0      0
9 months    ki1113344-GMS-Nepal        NEPAL                          3       551      0      0      0
9 months    ki1113344-GMS-Nepal        NEPAL                          4       551      1      0      1
9 months    ki1113344-GMS-Nepal        NEPAL                          5       551      0      0      0
9 months    ki1113344-GMS-Nepal        NEPAL                          6       551    118    109      9
9 months    ki1113344-GMS-Nepal        NEPAL                          7       551    215    202     13
9 months    ki1113344-GMS-Nepal        NEPAL                          8       551    217    205     12
9 months    ki1113344-GMS-Nepal        NEPAL                          9       551      0      0      0
9 months    ki1113344-GMS-Nepal        NEPAL                          10      551      0      0      0
9 months    ki1113344-GMS-Nepal        NEPAL                          11      551      0      0      0
9 months    ki1113344-GMS-Nepal        NEPAL                          12      551      0      0      0
9 months    ki1114097-CMIN             BANGLADESH                     1       245     26     23      3
9 months    ki1114097-CMIN             BANGLADESH                     2       245     25     23      2
9 months    ki1114097-CMIN             BANGLADESH                     3       245     16     15      1
9 months    ki1114097-CMIN             BANGLADESH                     4       245     22     20      2
9 months    ki1114097-CMIN             BANGLADESH                     5       245     15     14      1
9 months    ki1114097-CMIN             BANGLADESH                     6       245      9      7      2
9 months    ki1114097-CMIN             BANGLADESH                     7       245     16     15      1
9 months    ki1114097-CMIN             BANGLADESH                     8       245     19     12      7
9 months    ki1114097-CMIN             BANGLADESH                     9       245     20     17      3
9 months    ki1114097-CMIN             BANGLADESH                     10      245     25     18      7
9 months    ki1114097-CMIN             BANGLADESH                     11      245     26     21      5
9 months    ki1114097-CMIN             BANGLADESH                     12      245     26     20      6
9 months    ki1114097-CMIN             BRAZIL                         1       110     14     14      0
9 months    ki1114097-CMIN             BRAZIL                         2       110      7      5      2
9 months    ki1114097-CMIN             BRAZIL                         3       110     13     12      1
9 months    ki1114097-CMIN             BRAZIL                         4       110      8      8      0
9 months    ki1114097-CMIN             BRAZIL                         5       110      5      5      0
9 months    ki1114097-CMIN             BRAZIL                         6       110      7      6      1
9 months    ki1114097-CMIN             BRAZIL                         7       110      3      3      0
9 months    ki1114097-CMIN             BRAZIL                         8       110     10     10      0
9 months    ki1114097-CMIN             BRAZIL                         9       110      8      6      2
9 months    ki1114097-CMIN             BRAZIL                         10      110     15     14      1
9 months    ki1114097-CMIN             BRAZIL                         11      110     11     11      0
9 months    ki1114097-CMIN             BRAZIL                         12      110      9      8      1
9 months    ki1114097-CMIN             GUINEA-BISSAU                  1       866    101     94      7
9 months    ki1114097-CMIN             GUINEA-BISSAU                  2       866     59     54      5
9 months    ki1114097-CMIN             GUINEA-BISSAU                  3       866     59     56      3
9 months    ki1114097-CMIN             GUINEA-BISSAU                  4       866     45     44      1
9 months    ki1114097-CMIN             GUINEA-BISSAU                  5       866     58     56      2
9 months    ki1114097-CMIN             GUINEA-BISSAU                  6       866     56     54      2
9 months    ki1114097-CMIN             GUINEA-BISSAU                  7       866     60     58      2
9 months    ki1114097-CMIN             GUINEA-BISSAU                  8       866     59     59      0
9 months    ki1114097-CMIN             GUINEA-BISSAU                  9       866     88     85      3
9 months    ki1114097-CMIN             GUINEA-BISSAU                  10      866     98     97      1
9 months    ki1114097-CMIN             GUINEA-BISSAU                  11      866     85     83      2
9 months    ki1114097-CMIN             GUINEA-BISSAU                  12      866     98     93      5
9 months    ki1114097-CMIN             PERU                           1       625     38     38      0
9 months    ki1114097-CMIN             PERU                           2       625     51     48      3
9 months    ki1114097-CMIN             PERU                           3       625     61     61      0
9 months    ki1114097-CMIN             PERU                           4       625     59     59      0
9 months    ki1114097-CMIN             PERU                           5       625     64     63      1
9 months    ki1114097-CMIN             PERU                           6       625     56     55      1
9 months    ki1114097-CMIN             PERU                           7       625     62     61      1
9 months    ki1114097-CMIN             PERU                           8       625     69     67      2
9 months    ki1114097-CMIN             PERU                           9       625     46     46      0
9 months    ki1114097-CMIN             PERU                           10      625     43     42      1
9 months    ki1114097-CMIN             PERU                           11      625     32     31      1
9 months    ki1114097-CMIN             PERU                           12      625     44     44      0
9 months    ki1114097-CONTENT          PERU                           1       214     10     10      0
9 months    ki1114097-CONTENT          PERU                           2       214     18     18      0
9 months    ki1114097-CONTENT          PERU                           3       214     29     28      1
9 months    ki1114097-CONTENT          PERU                           4       214     19     18      1
9 months    ki1114097-CONTENT          PERU                           5       214     14     12      2
9 months    ki1114097-CONTENT          PERU                           6       214     13     13      0
9 months    ki1114097-CONTENT          PERU                           7       214     28     28      0
9 months    ki1114097-CONTENT          PERU                           8       214     23     22      1
9 months    ki1114097-CONTENT          PERU                           9       214     26     26      0
9 months    ki1114097-CONTENT          PERU                           10      214     14     14      0
9 months    ki1114097-CONTENT          PERU                           11      214      9      9      0
9 months    ki1114097-CONTENT          PERU                           12      214     11     11      0
9 months    ki1119695-PROBIT           BELARUS                        1      7483    456    450      6
9 months    ki1119695-PROBIT           BELARUS                        2      7483    468    461      7
9 months    ki1119695-PROBIT           BELARUS                        3      7483    523    516      7
9 months    ki1119695-PROBIT           BELARUS                        4      7483    517    512      5
9 months    ki1119695-PROBIT           BELARUS                        5      7483    563    560      3
9 months    ki1119695-PROBIT           BELARUS                        6      7483    577    567     10
9 months    ki1119695-PROBIT           BELARUS                        7      7483    703    695      8
9 months    ki1119695-PROBIT           BELARUS                        8      7483    743    737      6
9 months    ki1119695-PROBIT           BELARUS                        9      7483    674    663     11
9 months    ki1119695-PROBIT           BELARUS                        10     7483    769    766      3
9 months    ki1119695-PROBIT           BELARUS                        11     7483    699    690      9
9 months    ki1119695-PROBIT           BELARUS                        12     7483    791    782      9
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       1      7675    764    728     36
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       2      7675    613    575     38
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       3      7675    615    592     23
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       4      7675    546    524     22
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       5      7675    554    526     28
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       6      7675    618    585     33
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       7      7675    585    556     29
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       8      7675    701    673     28
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       9      7675    728    697     31
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       10     7675    571    545     26
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       11     7675    682    649     33
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       12     7675    698    656     42
9 months    ki1148112-LCNI-5           MALAWI                         1       664     51     44      7
9 months    ki1148112-LCNI-5           MALAWI                         2       664     35     35      0
9 months    ki1148112-LCNI-5           MALAWI                         3       664     20     18      2
9 months    ki1148112-LCNI-5           MALAWI                         4       664     25     25      0
9 months    ki1148112-LCNI-5           MALAWI                         5       664     32     28      4
9 months    ki1148112-LCNI-5           MALAWI                         6       664     24     19      5
9 months    ki1148112-LCNI-5           MALAWI                         7       664     48     44      4
9 months    ki1148112-LCNI-5           MALAWI                         8       664     81     78      3
9 months    ki1148112-LCNI-5           MALAWI                         9       664     80     76      4
9 months    ki1148112-LCNI-5           MALAWI                         10      664    113    102     11
9 months    ki1148112-LCNI-5           MALAWI                         11      664     81     77      4
9 months    ki1148112-LCNI-5           MALAWI                         12      664     74     71      3
9 months    kiGH5241-JiVitA-4          BANGLADESH                     1      1281      0      0      0
9 months    kiGH5241-JiVitA-4          BANGLADESH                     2      1281    211    202      9
9 months    kiGH5241-JiVitA-4          BANGLADESH                     3      1281    228    213     15
9 months    kiGH5241-JiVitA-4          BANGLADESH                     4      1281    185    164     21
9 months    kiGH5241-JiVitA-4          BANGLADESH                     5      1281    162    149     13
9 months    kiGH5241-JiVitA-4          BANGLADESH                     6      1281    113    106      7
9 months    kiGH5241-JiVitA-4          BANGLADESH                     7      1281    139    133      6
9 months    kiGH5241-JiVitA-4          BANGLADESH                     8      1281    124    118      6
9 months    kiGH5241-JiVitA-4          BANGLADESH                     9      1281     86     83      3
9 months    kiGH5241-JiVitA-4          BANGLADESH                     10     1281     33     32      1
9 months    kiGH5241-JiVitA-4          BANGLADESH                     11     1281      0      0      0
9 months    kiGH5241-JiVitA-4          BANGLADESH                     12     1281      0      0      0
12 months   ki0047075b-MAL-ED          BANGLADESH                     1       233     17     15      2
12 months   ki0047075b-MAL-ED          BANGLADESH                     2       233     19     17      2
12 months   ki0047075b-MAL-ED          BANGLADESH                     3       233     21     20      1
12 months   ki0047075b-MAL-ED          BANGLADESH                     4       233     21     21      0
12 months   ki0047075b-MAL-ED          BANGLADESH                     5       233     21     19      2
12 months   ki0047075b-MAL-ED          BANGLADESH                     6       233      9      9      0
12 months   ki0047075b-MAL-ED          BANGLADESH                     7       233     18     16      2
12 months   ki0047075b-MAL-ED          BANGLADESH                     8       233     22     19      3
12 months   ki0047075b-MAL-ED          BANGLADESH                     9       233     20     19      1
12 months   ki0047075b-MAL-ED          BANGLADESH                     10      233     22     19      3
12 months   ki0047075b-MAL-ED          BANGLADESH                     11      233     15     15      0
12 months   ki0047075b-MAL-ED          BANGLADESH                     12      233     28     27      1
12 months   ki0047075b-MAL-ED          BRAZIL                         1       195     15     15      0
12 months   ki0047075b-MAL-ED          BRAZIL                         2       195     21     21      0
12 months   ki0047075b-MAL-ED          BRAZIL                         3       195     16     16      0
12 months   ki0047075b-MAL-ED          BRAZIL                         4       195     10     10      0
12 months   ki0047075b-MAL-ED          BRAZIL                         5       195     20     20      0
12 months   ki0047075b-MAL-ED          BRAZIL                         6       195      7      7      0
12 months   ki0047075b-MAL-ED          BRAZIL                         7       195     16     16      0
12 months   ki0047075b-MAL-ED          BRAZIL                         8       195     13     13      0
12 months   ki0047075b-MAL-ED          BRAZIL                         9       195     29     29      0
12 months   ki0047075b-MAL-ED          BRAZIL                         10      195     16     16      0
12 months   ki0047075b-MAL-ED          BRAZIL                         11      195     21     21      0
12 months   ki0047075b-MAL-ED          BRAZIL                         12      195     11     11      0
12 months   ki0047075b-MAL-ED          INDIA                          1       228     19     16      3
12 months   ki0047075b-MAL-ED          INDIA                          2       228     18     18      0
12 months   ki0047075b-MAL-ED          INDIA                          3       228     19     19      0
12 months   ki0047075b-MAL-ED          INDIA                          4       228     14     12      2
12 months   ki0047075b-MAL-ED          INDIA                          5       228      8      8      0
12 months   ki0047075b-MAL-ED          INDIA                          6       228     19     19      0
12 months   ki0047075b-MAL-ED          INDIA                          7       228     23     22      1
12 months   ki0047075b-MAL-ED          INDIA                          8       228     21     19      2
12 months   ki0047075b-MAL-ED          INDIA                          9       228     18     15      3
12 months   ki0047075b-MAL-ED          INDIA                          10      228     26     23      3
12 months   ki0047075b-MAL-ED          INDIA                          11      228     24     21      3
12 months   ki0047075b-MAL-ED          INDIA                          12      228     19     18      1
12 months   ki0047075b-MAL-ED          NEPAL                          1       231     20     19      1
12 months   ki0047075b-MAL-ED          NEPAL                          2       231     17     16      1
12 months   ki0047075b-MAL-ED          NEPAL                          3       231     17     16      1
12 months   ki0047075b-MAL-ED          NEPAL                          4       231     22     22      0
12 months   ki0047075b-MAL-ED          NEPAL                          5       231     19     18      1
12 months   ki0047075b-MAL-ED          NEPAL                          6       231     18     18      0
12 months   ki0047075b-MAL-ED          NEPAL                          7       231     18     18      0
12 months   ki0047075b-MAL-ED          NEPAL                          8       231     24     24      0
12 months   ki0047075b-MAL-ED          NEPAL                          9       231     15     14      1
12 months   ki0047075b-MAL-ED          NEPAL                          10      231     20     20      0
12 months   ki0047075b-MAL-ED          NEPAL                          11      231     24     24      0
12 months   ki0047075b-MAL-ED          NEPAL                          12      231     17     17      0
12 months   ki0047075b-MAL-ED          PERU                           1       246     36     34      2
12 months   ki0047075b-MAL-ED          PERU                           2       246     18     18      0
12 months   ki0047075b-MAL-ED          PERU                           3       246     19     18      1
12 months   ki0047075b-MAL-ED          PERU                           4       246     17     15      2
12 months   ki0047075b-MAL-ED          PERU                           5       246     21     19      2
12 months   ki0047075b-MAL-ED          PERU                           6       246     15     15      0
12 months   ki0047075b-MAL-ED          PERU                           7       246     20     20      0
12 months   ki0047075b-MAL-ED          PERU                           8       246     14     14      0
12 months   ki0047075b-MAL-ED          PERU                           9       246     22     22      0
12 months   ki0047075b-MAL-ED          PERU                           10      246     17     16      1
12 months   ki0047075b-MAL-ED          PERU                           11      246     28     24      4
12 months   ki0047075b-MAL-ED          PERU                           12      246     19     18      1
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1       252     37     34      3
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2       252     23     22      1
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3       252     15     15      0
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4       252     12     12      0
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5       252     13     13      0
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6       252     16     15      1
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7       252     22     21      1
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8       252      9      8      1
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9       252     19     19      0
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10      252     25     24      1
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11      252     26     23      3
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12      252     35     34      1
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1       231     15     12      3
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2       231     27     24      3
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3       231     18     15      3
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4       231      9      6      3
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5       231     19     18      1
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6       231     19     17      2
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7       231     23     20      3
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8       231     10      8      2
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9       231     20     17      3
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10      231     19     15      4
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11      231     26     22      4
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12      231     26     20      6
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          1       368     34     27      7
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          2       368     16     11      5
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          3       368     31     23      8
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          4       368     43     34      9
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          5       368     36     25     11
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          6       368     37     28      9
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          7       368     38     25     13
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          8       368     18     15      3
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          9       368     20     19      1
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          10      368     29     24      5
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          11      368     43     38      5
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          12      368     23     16      7
12 months   ki1000108-IRC              INDIA                          1       406     37     31      6
12 months   ki1000108-IRC              INDIA                          2       406     28     23      5
12 months   ki1000108-IRC              INDIA                          3       406     27     26      1
12 months   ki1000108-IRC              INDIA                          4       406     20     17      3
12 months   ki1000108-IRC              INDIA                          5       406     21     16      5
12 months   ki1000108-IRC              INDIA                          6       406     37     37      0
12 months   ki1000108-IRC              INDIA                          7       406     36     34      2
12 months   ki1000108-IRC              INDIA                          8       406     44     43      1
12 months   ki1000108-IRC              INDIA                          9       406     27     25      2
12 months   ki1000108-IRC              INDIA                          10      406     38     37      1
12 months   ki1000108-IRC              INDIA                          11      406     40     37      3
12 months   ki1000108-IRC              INDIA                          12      406     51     46      5
12 months   ki1000109-EE               PAKISTAN                       1       357     89     56     33
12 months   ki1000109-EE               PAKISTAN                       2       357     62     40     22
12 months   ki1000109-EE               PAKISTAN                       3       357     40     26     14
12 months   ki1000109-EE               PAKISTAN                       4       357     16      7      9
12 months   ki1000109-EE               PAKISTAN                       5       357      0      0      0
12 months   ki1000109-EE               PAKISTAN                       6       357      0      0      0
12 months   ki1000109-EE               PAKISTAN                       7       357      0      0      0
12 months   ki1000109-EE               PAKISTAN                       8       357      0      0      0
12 months   ki1000109-EE               PAKISTAN                       9       357      0      0      0
12 months   ki1000109-EE               PAKISTAN                       10      357      3      2      1
12 months   ki1000109-EE               PAKISTAN                       11      357     65     45     20
12 months   ki1000109-EE               PAKISTAN                       12      357     82     61     21
12 months   ki1000109-ResPak           PAKISTAN                       1       194      5      5      0
12 months   ki1000109-ResPak           PAKISTAN                       2       194      9      8      1
12 months   ki1000109-ResPak           PAKISTAN                       3       194     14     12      2
12 months   ki1000109-ResPak           PAKISTAN                       4       194     13     12      1
12 months   ki1000109-ResPak           PAKISTAN                       5       194     43     37      6
12 months   ki1000109-ResPak           PAKISTAN                       6       194     37     32      5
12 months   ki1000109-ResPak           PAKISTAN                       7       194     19     16      3
12 months   ki1000109-ResPak           PAKISTAN                       8       194     28     26      2
12 months   ki1000109-ResPak           PAKISTAN                       9       194     18     16      2
12 months   ki1000109-ResPak           PAKISTAN                       10      194      5      5      0
12 months   ki1000109-ResPak           PAKISTAN                       11      194      0      0      0
12 months   ki1000109-ResPak           PAKISTAN                       12      194      3      2      1
12 months   ki1000304b-SAS-CompFeed    INDIA                          1       414     48     36     12
12 months   ki1000304b-SAS-CompFeed    INDIA                          2       414     34     29      5
12 months   ki1000304b-SAS-CompFeed    INDIA                          3       414     31     28      3
12 months   ki1000304b-SAS-CompFeed    INDIA                          4       414     25     21      4
12 months   ki1000304b-SAS-CompFeed    INDIA                          5       414     40     34      6
12 months   ki1000304b-SAS-CompFeed    INDIA                          6       414     47     43      4
12 months   ki1000304b-SAS-CompFeed    INDIA                          7       414      0      0      0
12 months   ki1000304b-SAS-CompFeed    INDIA                          8       414      0      0      0
12 months   ki1000304b-SAS-CompFeed    INDIA                          9       414      0      0      0
12 months   ki1000304b-SAS-CompFeed    INDIA                          10      414     74     61     13
12 months   ki1000304b-SAS-CompFeed    INDIA                          11      414     45     42      3
12 months   ki1000304b-SAS-CompFeed    INDIA                          12      414     70     57     13
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          1        92      7      3      4
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          2        92      8      6      2
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          3        92      6      5      1
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          4        92      1      1      0
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          5        92      3      2      1
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          6        92      5      2      3
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          7        92      9      4      5
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          8        92     14      9      5
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          9        92     15      7      8
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          10       92     10      4      6
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          11       92      4      2      2
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          12       92     10      6      4
12 months   ki1017093-NIH-Birth        BANGLADESH                     1       491     46     38      8
12 months   ki1017093-NIH-Birth        BANGLADESH                     2       491     43     42      1
12 months   ki1017093-NIH-Birth        BANGLADESH                     3       491     45     42      3
12 months   ki1017093-NIH-Birth        BANGLADESH                     4       491     38     35      3
12 months   ki1017093-NIH-Birth        BANGLADESH                     5       491     39     36      3
12 months   ki1017093-NIH-Birth        BANGLADESH                     6       491     38     34      4
12 months   ki1017093-NIH-Birth        BANGLADESH                     7       491     38     34      4
12 months   ki1017093-NIH-Birth        BANGLADESH                     8       491     30     27      3
12 months   ki1017093-NIH-Birth        BANGLADESH                     9       491     34     30      4
12 months   ki1017093-NIH-Birth        BANGLADESH                     10      491     41     36      5
12 months   ki1017093-NIH-Birth        BANGLADESH                     11      491     49     42      7
12 months   ki1017093-NIH-Birth        BANGLADESH                     12      491     50     47      3
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1      1444     93     91      2
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2      1444    115    112      3
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3      1444     97     92      5
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4      1444    109    107      2
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5      1444    108    104      4
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6      1444    109    108      1
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7      1444    148    143      5
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8      1444    149    147      2
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9      1444    131    128      3
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10     1444    146    143      3
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11     1444    127    125      2
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12     1444    112    110      2
12 months   ki1101329-Keneba           GAMBIA                         1      1948    181    165     16
12 months   ki1101329-Keneba           GAMBIA                         2      1948    178    167     11
12 months   ki1101329-Keneba           GAMBIA                         3      1948    194    187      7
12 months   ki1101329-Keneba           GAMBIA                         4      1948    134    126      8
12 months   ki1101329-Keneba           GAMBIA                         5      1948    139    133      6
12 months   ki1101329-Keneba           GAMBIA                         6      1948    118    110      8
12 months   ki1101329-Keneba           GAMBIA                         7      1948     98     88     10
12 months   ki1101329-Keneba           GAMBIA                         8      1948    170    161      9
12 months   ki1101329-Keneba           GAMBIA                         9      1948    176    162     14
12 months   ki1101329-Keneba           GAMBIA                         10     1948    225    211     14
12 months   ki1101329-Keneba           GAMBIA                         11     1948    173    159     14
12 months   ki1101329-Keneba           GAMBIA                         12     1948    162    151     11
12 months   ki1112895-Guatemala BSC    GUATEMALA                      1       201     21     17      4
12 months   ki1112895-Guatemala BSC    GUATEMALA                      2       201     20     16      4
12 months   ki1112895-Guatemala BSC    GUATEMALA                      3       201     22     19      3
12 months   ki1112895-Guatemala BSC    GUATEMALA                      4       201     22     18      4
12 months   ki1112895-Guatemala BSC    GUATEMALA                      5       201     17     12      5
12 months   ki1112895-Guatemala BSC    GUATEMALA                      6       201     12     11      1
12 months   ki1112895-Guatemala BSC    GUATEMALA                      7       201     12      9      3
12 months   ki1112895-Guatemala BSC    GUATEMALA                      8       201      6      4      2
12 months   ki1112895-Guatemala BSC    GUATEMALA                      9       201     11      9      2
12 months   ki1112895-Guatemala BSC    GUATEMALA                      10      201     22     20      2
12 months   ki1112895-Guatemala BSC    GUATEMALA                      11      201     15     12      3
12 months   ki1112895-Guatemala BSC    GUATEMALA                      12      201     21     19      2
12 months   ki1113344-GMS-Nepal        NEPAL                          1       558      0      0      0
12 months   ki1113344-GMS-Nepal        NEPAL                          2       558      0      0      0
12 months   ki1113344-GMS-Nepal        NEPAL                          3       558      0      0      0
12 months   ki1113344-GMS-Nepal        NEPAL                          4       558      1      0      1
12 months   ki1113344-GMS-Nepal        NEPAL                          5       558      0      0      0
12 months   ki1113344-GMS-Nepal        NEPAL                          6       558    123    111     12
12 months   ki1113344-GMS-Nepal        NEPAL                          7       558    214    197     17
12 months   ki1113344-GMS-Nepal        NEPAL                          8       558    220    199     21
12 months   ki1113344-GMS-Nepal        NEPAL                          9       558      0      0      0
12 months   ki1113344-GMS-Nepal        NEPAL                          10      558      0      0      0
12 months   ki1113344-GMS-Nepal        NEPAL                          11      558      0      0      0
12 months   ki1113344-GMS-Nepal        NEPAL                          12      558      0      0      0
12 months   ki1114097-CMIN             BANGLADESH                     1       242     27     21      6
12 months   ki1114097-CMIN             BANGLADESH                     2       242     23     23      0
12 months   ki1114097-CMIN             BANGLADESH                     3       242     17     15      2
12 months   ki1114097-CMIN             BANGLADESH                     4       242     22     20      2
12 months   ki1114097-CMIN             BANGLADESH                     5       242     17     16      1
12 months   ki1114097-CMIN             BANGLADESH                     6       242      9      6      3
12 months   ki1114097-CMIN             BANGLADESH                     7       242     16     13      3
12 months   ki1114097-CMIN             BANGLADESH                     8       242     19     12      7
12 months   ki1114097-CMIN             BANGLADESH                     9       242     20     17      3
12 months   ki1114097-CMIN             BANGLADESH                     10      242     25     16      9
12 months   ki1114097-CMIN             BANGLADESH                     11      242     24     21      3
12 months   ki1114097-CMIN             BANGLADESH                     12      242     23     18      5
12 months   ki1114097-CMIN             BRAZIL                         1       115     14     14      0
12 months   ki1114097-CMIN             BRAZIL                         2       115      7      5      2
12 months   ki1114097-CMIN             BRAZIL                         3       115     11     10      1
12 months   ki1114097-CMIN             BRAZIL                         4       115      9      9      0
12 months   ki1114097-CMIN             BRAZIL                         5       115      5      5      0
12 months   ki1114097-CMIN             BRAZIL                         6       115      7      6      1
12 months   ki1114097-CMIN             BRAZIL                         7       115      4      3      1
12 months   ki1114097-CMIN             BRAZIL                         8       115     14     14      0
12 months   ki1114097-CMIN             BRAZIL                         9       115      8      6      2
12 months   ki1114097-CMIN             BRAZIL                         10      115     15     14      1
12 months   ki1114097-CMIN             BRAZIL                         11      115     10     10      0
12 months   ki1114097-CMIN             BRAZIL                         12      115     11     11      0
12 months   ki1114097-CMIN             GUINEA-BISSAU                  1       620     47     41      6
12 months   ki1114097-CMIN             GUINEA-BISSAU                  2       620     40     39      1
12 months   ki1114097-CMIN             GUINEA-BISSAU                  3       620     67     63      4
12 months   ki1114097-CMIN             GUINEA-BISSAU                  4       620     44     40      4
12 months   ki1114097-CMIN             GUINEA-BISSAU                  5       620     37     36      1
12 months   ki1114097-CMIN             GUINEA-BISSAU                  6       620     39     37      2
12 months   ki1114097-CMIN             GUINEA-BISSAU                  7       620     38     36      2
12 months   ki1114097-CMIN             GUINEA-BISSAU                  8       620     52     50      2
12 months   ki1114097-CMIN             GUINEA-BISSAU                  9       620     80     74      6
12 months   ki1114097-CMIN             GUINEA-BISSAU                  10      620     63     59      4
12 months   ki1114097-CMIN             GUINEA-BISSAU                  11      620     52     49      3
12 months   ki1114097-CMIN             GUINEA-BISSAU                  12      620     61     57      4
12 months   ki1114097-CMIN             PERU                           1       601     29     28      1
12 months   ki1114097-CMIN             PERU                           2       601     57     55      2
12 months   ki1114097-CMIN             PERU                           3       601     69     68      1
12 months   ki1114097-CMIN             PERU                           4       601     62     60      2
12 months   ki1114097-CMIN             PERU                           5       601     61     58      3
12 months   ki1114097-CMIN             PERU                           6       601     54     52      2
12 months   ki1114097-CMIN             PERU                           7       601     59     57      2
12 months   ki1114097-CMIN             PERU                           8       601     66     63      3
12 months   ki1114097-CMIN             PERU                           9       601     46     45      1
12 months   ki1114097-CMIN             PERU                           10      601     39     36      3
12 months   ki1114097-CMIN             PERU                           11      601     26     24      2
12 months   ki1114097-CMIN             PERU                           12      601     33     32      1
12 months   ki1114097-CONTENT          PERU                           1       215     10     10      0
12 months   ki1114097-CONTENT          PERU                           2       215     18     18      0
12 months   ki1114097-CONTENT          PERU                           3       215     30     30      0
12 months   ki1114097-CONTENT          PERU                           4       215     19     18      1
12 months   ki1114097-CONTENT          PERU                           5       215     14     13      1
12 months   ki1114097-CONTENT          PERU                           6       215     13     13      0
12 months   ki1114097-CONTENT          PERU                           7       215     28     28      0
12 months   ki1114097-CONTENT          PERU                           8       215     23     22      1
12 months   ki1114097-CONTENT          PERU                           9       215     26     26      0
12 months   ki1114097-CONTENT          PERU                           10      215     14     14      0
12 months   ki1114097-CONTENT          PERU                           11      215      9      9      0
12 months   ki1114097-CONTENT          PERU                           12      215     11     11      0
12 months   ki1119695-PROBIT           BELARUS                        1      7736    480    474      6
12 months   ki1119695-PROBIT           BELARUS                        2      7736    477    474      3
12 months   ki1119695-PROBIT           BELARUS                        3      7736    556    552      4
12 months   ki1119695-PROBIT           BELARUS                        4      7736    530    525      5
12 months   ki1119695-PROBIT           BELARUS                        5      7736    580    574      6
12 months   ki1119695-PROBIT           BELARUS                        6      7736    583    578      5
12 months   ki1119695-PROBIT           BELARUS                        7      7736    727    724      3
12 months   ki1119695-PROBIT           BELARUS                        8      7736    769    759     10
12 months   ki1119695-PROBIT           BELARUS                        9      7736    697    693      4
12 months   ki1119695-PROBIT           BELARUS                        10     7736    784    780      4
12 months   ki1119695-PROBIT           BELARUS                        11     7736    726    719      7
12 months   ki1119695-PROBIT           BELARUS                        12     7736    827    822      5
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       1      6749    620    578     42
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       2      6749    505    467     38
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       3      6749    620    567     53
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       4      6749    505    468     37
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       5      6749    506    481     25
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       6      6749    566    515     51
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       7      6749    566    519     47
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       8      6749    618    588     30
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       9      6749    620    590     30
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       10     6749    465    435     30
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       11     6749    574    546     28
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       12     6749    584    548     36
12 months   ki1148112-LCNI-5           MALAWI                         1       626     52     44      8
12 months   ki1148112-LCNI-5           MALAWI                         2       626     38     37      1
12 months   ki1148112-LCNI-5           MALAWI                         3       626     20     16      4
12 months   ki1148112-LCNI-5           MALAWI                         4       626     28     27      1
12 months   ki1148112-LCNI-5           MALAWI                         5       626     33     27      6
12 months   ki1148112-LCNI-5           MALAWI                         6       626     24     19      5
12 months   ki1148112-LCNI-5           MALAWI                         7       626     46     42      4
12 months   ki1148112-LCNI-5           MALAWI                         8       626     78     74      4
12 months   ki1148112-LCNI-5           MALAWI                         9       626     69     64      5
12 months   ki1148112-LCNI-5           MALAWI                         10      626     96     82     14
12 months   ki1148112-LCNI-5           MALAWI                         11      626     70     60     10
12 months   ki1148112-LCNI-5           MALAWI                         12      626     72     67      5
12 months   kiGH5241-JiVitA-3          BANGLADESH                     1      7208    608    525     83
12 months   kiGH5241-JiVitA-3          BANGLADESH                     2      7208    527    464     63
12 months   kiGH5241-JiVitA-3          BANGLADESH                     3      7208    642    571     71
12 months   kiGH5241-JiVitA-3          BANGLADESH                     4      7208    536    488     48
12 months   kiGH5241-JiVitA-3          BANGLADESH                     5      7208    534    485     49
12 months   kiGH5241-JiVitA-3          BANGLADESH                     6      7208    509    453     56
12 months   kiGH5241-JiVitA-3          BANGLADESH                     7      7208    549    502     47
12 months   kiGH5241-JiVitA-3          BANGLADESH                     8      7208    546    502     44
12 months   kiGH5241-JiVitA-3          BANGLADESH                     9      7208    651    586     65
12 months   kiGH5241-JiVitA-3          BANGLADESH                     10     7208    695    606     89
12 months   kiGH5241-JiVitA-3          BANGLADESH                     11     7208    736    630    106
12 months   kiGH5241-JiVitA-3          BANGLADESH                     12     7208    675    576     99
12 months   kiGH5241-JiVitA-4          BANGLADESH                     1      1277      0      0      0
12 months   kiGH5241-JiVitA-4          BANGLADESH                     2      1277    206    190     16
12 months   kiGH5241-JiVitA-4          BANGLADESH                     3      1277    224    204     20
12 months   kiGH5241-JiVitA-4          BANGLADESH                     4      1277    187    161     26
12 months   kiGH5241-JiVitA-4          BANGLADESH                     5      1277    169    153     16
12 months   kiGH5241-JiVitA-4          BANGLADESH                     6      1277    116    109      7
12 months   kiGH5241-JiVitA-4          BANGLADESH                     7      1277    140    133      7
12 months   kiGH5241-JiVitA-4          BANGLADESH                     8      1277    119    112      7
12 months   kiGH5241-JiVitA-4          BANGLADESH                     9      1277     83     79      4
12 months   kiGH5241-JiVitA-4          BANGLADESH                     10     1277     33     30      3
12 months   kiGH5241-JiVitA-4          BANGLADESH                     11     1277      0      0      0
12 months   kiGH5241-JiVitA-4          BANGLADESH                     12     1277      0      0      0
18 months   ki0047075b-MAL-ED          BANGLADESH                     1       221     17     15      2
18 months   ki0047075b-MAL-ED          BANGLADESH                     2       221     17     13      4
18 months   ki0047075b-MAL-ED          BANGLADESH                     3       221     19     17      2
18 months   ki0047075b-MAL-ED          BANGLADESH                     4       221     20     17      3
18 months   ki0047075b-MAL-ED          BANGLADESH                     5       221     19     16      3
18 months   ki0047075b-MAL-ED          BANGLADESH                     6       221      8      7      1
18 months   ki0047075b-MAL-ED          BANGLADESH                     7       221     18     16      2
18 months   ki0047075b-MAL-ED          BANGLADESH                     8       221     22     16      6
18 months   ki0047075b-MAL-ED          BANGLADESH                     9       221     20     18      2
18 months   ki0047075b-MAL-ED          BANGLADESH                     10      221     21     17      4
18 months   ki0047075b-MAL-ED          BANGLADESH                     11      221     12     11      1
18 months   ki0047075b-MAL-ED          BANGLADESH                     12      221     28     27      1
18 months   ki0047075b-MAL-ED          BRAZIL                         1       180     15     15      0
18 months   ki0047075b-MAL-ED          BRAZIL                         2       180     16     16      0
18 months   ki0047075b-MAL-ED          BRAZIL                         3       180     16     16      0
18 months   ki0047075b-MAL-ED          BRAZIL                         4       180     10     10      0
18 months   ki0047075b-MAL-ED          BRAZIL                         5       180     17     17      0
18 months   ki0047075b-MAL-ED          BRAZIL                         6       180      7      7      0
18 months   ki0047075b-MAL-ED          BRAZIL                         7       180     15     15      0
18 months   ki0047075b-MAL-ED          BRAZIL                         8       180     13     13      0
18 months   ki0047075b-MAL-ED          BRAZIL                         9       180     27     27      0
18 months   ki0047075b-MAL-ED          BRAZIL                         10      180     14     14      0
18 months   ki0047075b-MAL-ED          BRAZIL                         11      180     19     19      0
18 months   ki0047075b-MAL-ED          BRAZIL                         12      180     11     11      0
18 months   ki0047075b-MAL-ED          INDIA                          1       228     19     16      3
18 months   ki0047075b-MAL-ED          INDIA                          2       228     18     17      1
18 months   ki0047075b-MAL-ED          INDIA                          3       228     19     18      1
18 months   ki0047075b-MAL-ED          INDIA                          4       228     14     12      2
18 months   ki0047075b-MAL-ED          INDIA                          5       228      8      7      1
18 months   ki0047075b-MAL-ED          INDIA                          6       228     19     18      1
18 months   ki0047075b-MAL-ED          INDIA                          7       228     23     17      6
18 months   ki0047075b-MAL-ED          INDIA                          8       228     21     19      2
18 months   ki0047075b-MAL-ED          INDIA                          9       228     18     14      4
18 months   ki0047075b-MAL-ED          INDIA                          10      228     26     20      6
18 months   ki0047075b-MAL-ED          INDIA                          11      228     24     20      4
18 months   ki0047075b-MAL-ED          INDIA                          12      228     19     18      1
18 months   ki0047075b-MAL-ED          NEPAL                          1       229     20     19      1
18 months   ki0047075b-MAL-ED          NEPAL                          2       229     16     14      2
18 months   ki0047075b-MAL-ED          NEPAL                          3       229     17     16      1
18 months   ki0047075b-MAL-ED          NEPAL                          4       229     22     22      0
18 months   ki0047075b-MAL-ED          NEPAL                          5       229     19     18      1
18 months   ki0047075b-MAL-ED          NEPAL                          6       229     18     18      0
18 months   ki0047075b-MAL-ED          NEPAL                          7       229     18     17      1
18 months   ki0047075b-MAL-ED          NEPAL                          8       229     24     24      0
18 months   ki0047075b-MAL-ED          NEPAL                          9       229     15     14      1
18 months   ki0047075b-MAL-ED          NEPAL                          10      229     20     20      0
18 months   ki0047075b-MAL-ED          NEPAL                          11      229     24     24      0
18 months   ki0047075b-MAL-ED          NEPAL                          12      229     16     16      0
18 months   ki0047075b-MAL-ED          PERU                           1       222     34     31      3
18 months   ki0047075b-MAL-ED          PERU                           2       222     17     16      1
18 months   ki0047075b-MAL-ED          PERU                           3       222     16     16      0
18 months   ki0047075b-MAL-ED          PERU                           4       222     14     11      3
18 months   ki0047075b-MAL-ED          PERU                           5       222     20     17      3
18 months   ki0047075b-MAL-ED          PERU                           6       222     14     13      1
18 months   ki0047075b-MAL-ED          PERU                           7       222     18     15      3
18 months   ki0047075b-MAL-ED          PERU                           8       222     14     13      1
18 months   ki0047075b-MAL-ED          PERU                           9       222     21     21      0
18 months   ki0047075b-MAL-ED          PERU                           10      222     15     14      1
18 months   ki0047075b-MAL-ED          PERU                           11      222     23     20      3
18 months   ki0047075b-MAL-ED          PERU                           12      222     16     15      1
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1       241     35     29      6
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2       241     23     21      2
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3       241     13     12      1
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4       241     12     12      0
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5       241     12     12      0
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6       241     16     15      1
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7       241     22     19      3
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8       241      8      7      1
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9       241     19     18      1
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10      241     25     22      3
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11      241     24     20      4
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12      241     32     28      4
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1       225     14     10      4
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2       225     25     20      5
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3       225     18     10      8
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4       225      8      4      4
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5       225     18     14      4
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6       225     19     15      4
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7       225     23     15      8
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8       225     11      7      4
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9       225     19     13      6
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10      225     18     10      8
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11      225     25     20      5
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12      225     27     18      9
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          1       369     34     23     11
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          2       369     16      7      9
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          3       369     30     22      8
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          4       369     43     29     14
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          5       369     35     23     12
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          6       369     36     28      8
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          7       369     39     28     11
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          8       369     18     15      3
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          9       369     21     20      1
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          10      369     29     20      9
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          11      369     43     32     11
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          12      369     25     13     12
18 months   ki1000108-IRC              INDIA                          1       405     38     34      4
18 months   ki1000108-IRC              INDIA                          2       405     28     25      3
18 months   ki1000108-IRC              INDIA                          3       405     27     27      0
18 months   ki1000108-IRC              INDIA                          4       405     21     19      2
18 months   ki1000108-IRC              INDIA                          5       405     22     16      6
18 months   ki1000108-IRC              INDIA                          6       405     37     35      2
18 months   ki1000108-IRC              INDIA                          7       405     36     34      2
18 months   ki1000108-IRC              INDIA                          8       405     43     41      2
18 months   ki1000108-IRC              INDIA                          9       405     27     24      3
18 months   ki1000108-IRC              INDIA                          10      405     35     34      1
18 months   ki1000108-IRC              INDIA                          11      405     40     38      2
18 months   ki1000108-IRC              INDIA                          12      405     51     44      7
18 months   ki1000109-EE               PAKISTAN                       1       350     87     45     42
18 months   ki1000109-EE               PAKISTAN                       2       350     57     29     28
18 months   ki1000109-EE               PAKISTAN                       3       350     39     18     21
18 months   ki1000109-EE               PAKISTAN                       4       350     16      5     11
18 months   ki1000109-EE               PAKISTAN                       5       350      0      0      0
18 months   ki1000109-EE               PAKISTAN                       6       350      0      0      0
18 months   ki1000109-EE               PAKISTAN                       7       350      0      0      0
18 months   ki1000109-EE               PAKISTAN                       8       350      0      0      0
18 months   ki1000109-EE               PAKISTAN                       9       350      0      0      0
18 months   ki1000109-EE               PAKISTAN                       10      350      4      2      2
18 months   ki1000109-EE               PAKISTAN                       11      350     65     36     29
18 months   ki1000109-EE               PAKISTAN                       12      350     82     44     38
18 months   ki1000109-ResPak           PAKISTAN                       1         9      1      1      0
18 months   ki1000109-ResPak           PAKISTAN                       2         9      1      1      0
18 months   ki1000109-ResPak           PAKISTAN                       3         9      4      3      1
18 months   ki1000109-ResPak           PAKISTAN                       4         9      2      2      0
18 months   ki1000109-ResPak           PAKISTAN                       5         9      0      0      0
18 months   ki1000109-ResPak           PAKISTAN                       6         9      0      0      0
18 months   ki1000109-ResPak           PAKISTAN                       7         9      0      0      0
18 months   ki1000109-ResPak           PAKISTAN                       8         9      0      0      0
18 months   ki1000109-ResPak           PAKISTAN                       9         9      0      0      0
18 months   ki1000109-ResPak           PAKISTAN                       10        9      0      0      0
18 months   ki1000109-ResPak           PAKISTAN                       11        9      0      0      0
18 months   ki1000109-ResPak           PAKISTAN                       12        9      1      1      0
18 months   ki1000304b-SAS-CompFeed    INDIA                          1       395     46     36     10
18 months   ki1000304b-SAS-CompFeed    INDIA                          2       395     34     27      7
18 months   ki1000304b-SAS-CompFeed    INDIA                          3       395     31     26      5
18 months   ki1000304b-SAS-CompFeed    INDIA                          4       395     24     20      4
18 months   ki1000304b-SAS-CompFeed    INDIA                          5       395     37     25     12
18 months   ki1000304b-SAS-CompFeed    INDIA                          6       395     44     31     13
18 months   ki1000304b-SAS-CompFeed    INDIA                          7       395      0      0      0
18 months   ki1000304b-SAS-CompFeed    INDIA                          8       395      0      0      0
18 months   ki1000304b-SAS-CompFeed    INDIA                          9       395      0      0      0
18 months   ki1000304b-SAS-CompFeed    INDIA                          10      395     72     57     15
18 months   ki1000304b-SAS-CompFeed    INDIA                          11      395     43     37      6
18 months   ki1000304b-SAS-CompFeed    INDIA                          12      395     64     52     12
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          1        84      6      3      3
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          2        84      6      4      2
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          3        84      6      5      1
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          4        84      1      1      0
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          5        84      3      0      3
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          6        84      6      2      4
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          7        84      8      3      5
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          8        84     12      7      5
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          9        84     15     11      4
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          10       84      8      4      4
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          11       84      5      2      3
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          12       84      8      5      3
18 months   ki1017093-NIH-Birth        BANGLADESH                     1       463     45     34     11
18 months   ki1017093-NIH-Birth        BANGLADESH                     2       463     35     31      4
18 months   ki1017093-NIH-Birth        BANGLADESH                     3       463     44     38      6
18 months   ki1017093-NIH-Birth        BANGLADESH                     4       463     36     29      7
18 months   ki1017093-NIH-Birth        BANGLADESH                     5       463     37     30      7
18 months   ki1017093-NIH-Birth        BANGLADESH                     6       463     39     28     11
18 months   ki1017093-NIH-Birth        BANGLADESH                     7       463     36     27      9
18 months   ki1017093-NIH-Birth        BANGLADESH                     8       463     28     22      6
18 months   ki1017093-NIH-Birth        BANGLADESH                     9       463     35     26      9
18 months   ki1017093-NIH-Birth        BANGLADESH                     10      463     37     26     11
18 months   ki1017093-NIH-Birth        BANGLADESH                     11      463     44     32     12
18 months   ki1017093-NIH-Birth        BANGLADESH                     12      463     47     39      8
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1       980     71     67      4
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2       980     80     78      2
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3       980     72     69      3
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4       980     86     84      2
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5       980     76     72      4
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6       980     68     66      2
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7       980     87     85      2
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8       980     96     92      4
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9       980     86     84      2
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10      980    100     93      7
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11      980     83     78      5
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12      980     75     72      3
18 months   ki1101329-Keneba           GAMBIA                         1      1923    204    192     12
18 months   ki1101329-Keneba           GAMBIA                         2      1923    178    160     18
18 months   ki1101329-Keneba           GAMBIA                         3      1923    201    182     19
18 months   ki1101329-Keneba           GAMBIA                         4      1923    136    126     10
18 months   ki1101329-Keneba           GAMBIA                         5      1923    135    122     13
18 months   ki1101329-Keneba           GAMBIA                         6      1923    111     96     15
18 months   ki1101329-Keneba           GAMBIA                         7      1923     89     78     11
18 months   ki1101329-Keneba           GAMBIA                         8      1923    154    142     12
18 months   ki1101329-Keneba           GAMBIA                         9      1923    168    156     12
18 months   ki1101329-Keneba           GAMBIA                         10     1923    208    191     17
18 months   ki1101329-Keneba           GAMBIA                         11     1923    162    147     15
18 months   ki1101329-Keneba           GAMBIA                         12     1923    177    162     15
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1       611     57     44     13
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2       611     45     41      4
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   3       611     25     23      2
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   4       611     25     22      3
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   5       611     43     37      6
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   6       611     35     32      3
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   7       611     40     34      6
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   8       611     63     54      9
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   9       611     80     67     13
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   10      611     76     66     10
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   11      611     55     49      6
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   12      611     67     54     13
18 months   ki1113344-GMS-Nepal        NEPAL                          1       550      0      0      0
18 months   ki1113344-GMS-Nepal        NEPAL                          2       550      0      0      0
18 months   ki1113344-GMS-Nepal        NEPAL                          3       550      0      0      0
18 months   ki1113344-GMS-Nepal        NEPAL                          4       550      0      0      0
18 months   ki1113344-GMS-Nepal        NEPAL                          5       550      0      0      0
18 months   ki1113344-GMS-Nepal        NEPAL                          6       550    121     98     23
18 months   ki1113344-GMS-Nepal        NEPAL                          7       550    216    187     29
18 months   ki1113344-GMS-Nepal        NEPAL                          8       550    213    180     33
18 months   ki1113344-GMS-Nepal        NEPAL                          9       550      0      0      0
18 months   ki1113344-GMS-Nepal        NEPAL                          10      550      0      0      0
18 months   ki1113344-GMS-Nepal        NEPAL                          11      550      0      0      0
18 months   ki1113344-GMS-Nepal        NEPAL                          12      550      0      0      0
18 months   ki1114097-CMIN             BANGLADESH                     1       237     24     12     12
18 months   ki1114097-CMIN             BANGLADESH                     2       237     23     18      5
18 months   ki1114097-CMIN             BANGLADESH                     3       237     17     14      3
18 months   ki1114097-CMIN             BANGLADESH                     4       237     20     15      5
18 months   ki1114097-CMIN             BANGLADESH                     5       237     17     15      2
18 months   ki1114097-CMIN             BANGLADESH                     6       237      9      4      5
18 months   ki1114097-CMIN             BANGLADESH                     7       237     16     13      3
18 months   ki1114097-CMIN             BANGLADESH                     8       237     17     10      7
18 months   ki1114097-CMIN             BANGLADESH                     9       237     20     16      4
18 months   ki1114097-CMIN             BANGLADESH                     10      237     24     15      9
18 months   ki1114097-CMIN             BANGLADESH                     11      237     25     20      5
18 months   ki1114097-CMIN             BANGLADESH                     12      237     25     18      7
18 months   ki1114097-CMIN             BRAZIL                         1       115     14     14      0
18 months   ki1114097-CMIN             BRAZIL                         2       115      7      6      1
18 months   ki1114097-CMIN             BRAZIL                         3       115     13     11      2
18 months   ki1114097-CMIN             BRAZIL                         4       115      9      9      0
18 months   ki1114097-CMIN             BRAZIL                         5       115      5      5      0
18 months   ki1114097-CMIN             BRAZIL                         6       115      7      6      1
18 months   ki1114097-CMIN             BRAZIL                         7       115      4      3      1
18 months   ki1114097-CMIN             BRAZIL                         8       115     14     14      0
18 months   ki1114097-CMIN             BRAZIL                         9       115      8      7      1
18 months   ki1114097-CMIN             BRAZIL                         10      115     12     11      1
18 months   ki1114097-CMIN             BRAZIL                         11      115     11     11      0
18 months   ki1114097-CMIN             BRAZIL                         12      115     11     10      1
18 months   ki1114097-CMIN             GUINEA-BISSAU                  1       754     77     69      8
18 months   ki1114097-CMIN             GUINEA-BISSAU                  2       754     61     57      4
18 months   ki1114097-CMIN             GUINEA-BISSAU                  3       754     60     55      5
18 months   ki1114097-CMIN             GUINEA-BISSAU                  4       754     55     49      6
18 months   ki1114097-CMIN             GUINEA-BISSAU                  5       754     48     43      5
18 months   ki1114097-CMIN             GUINEA-BISSAU                  6       754     30     28      2
18 months   ki1114097-CMIN             GUINEA-BISSAU                  7       754     39     37      2
18 months   ki1114097-CMIN             GUINEA-BISSAU                  8       754     62     54      8
18 months   ki1114097-CMIN             GUINEA-BISSAU                  9       754     98     86     12
18 months   ki1114097-CMIN             GUINEA-BISSAU                  10      754     89     81      8
18 months   ki1114097-CMIN             GUINEA-BISSAU                  11      754     63     56      7
18 months   ki1114097-CMIN             GUINEA-BISSAU                  12      754     72     66      6
18 months   ki1114097-CMIN             PERU                           1       489     26     25      1
18 months   ki1114097-CMIN             PERU                           2       489     49     44      5
18 months   ki1114097-CMIN             PERU                           3       489     55     53      2
18 months   ki1114097-CMIN             PERU                           4       489     46     43      3
18 months   ki1114097-CMIN             PERU                           5       489     34     31      3
18 months   ki1114097-CMIN             PERU                           6       489     38     38      0
18 months   ki1114097-CMIN             PERU                           7       489     37     37      0
18 months   ki1114097-CMIN             PERU                           8       489     48     46      2
18 months   ki1114097-CMIN             PERU                           9       489     42     39      3
18 months   ki1114097-CMIN             PERU                           10      489     42     35      7
18 months   ki1114097-CMIN             PERU                           11      489     33     29      4
18 months   ki1114097-CMIN             PERU                           12      489     39     36      3
18 months   ki1114097-CONTENT          PERU                           1       200      9      9      0
18 months   ki1114097-CONTENT          PERU                           2       200     17     17      0
18 months   ki1114097-CONTENT          PERU                           3       200     28     27      1
18 months   ki1114097-CONTENT          PERU                           4       200     19     16      3
18 months   ki1114097-CONTENT          PERU                           5       200     14     14      0
18 months   ki1114097-CONTENT          PERU                           6       200     12     12      0
18 months   ki1114097-CONTENT          PERU                           7       200     24     24      0
18 months   ki1114097-CONTENT          PERU                           8       200     22     21      1
18 months   ki1114097-CONTENT          PERU                           9       200     25     25      0
18 months   ki1114097-CONTENT          PERU                           10      200     12     12      0
18 months   ki1114097-CONTENT          PERU                           11      200      7      7      0
18 months   ki1114097-CONTENT          PERU                           12      200     11     11      0
18 months   ki1119695-PROBIT           BELARUS                        1       764     38     37      1
18 months   ki1119695-PROBIT           BELARUS                        2       764     37     35      2
18 months   ki1119695-PROBIT           BELARUS                        3       764     65     64      1
18 months   ki1119695-PROBIT           BELARUS                        4       764     77     73      4
18 months   ki1119695-PROBIT           BELARUS                        5       764     68     61      7
18 months   ki1119695-PROBIT           BELARUS                        6       764     74     73      1
18 months   ki1119695-PROBIT           BELARUS                        7       764     62     61      1
18 months   ki1119695-PROBIT           BELARUS                        8       764     65     63      2
18 months   ki1119695-PROBIT           BELARUS                        9       764     70     70      0
18 months   ki1119695-PROBIT           BELARUS                        10      764     74     74      0
18 months   ki1119695-PROBIT           BELARUS                        11      764     68     67      1
18 months   ki1119695-PROBIT           BELARUS                        12      764     66     66      0
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       1      1710    207    161     46
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       2      1710    184    146     38
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       3      1710    144    123     21
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       4      1710    137    111     26
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       5      1710    117     93     24
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       6      1710    148    122     26
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       7      1710    107     84     23
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       8      1710    132    116     16
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       9      1710    121    108     13
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       10     1710    104     91     13
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       11     1710    142    117     25
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       12     1710    167    140     27
18 months   ki1148112-LCNI-5           MALAWI                         1       725     56     47      9
18 months   ki1148112-LCNI-5           MALAWI                         2       725     42     41      1
18 months   ki1148112-LCNI-5           MALAWI                         3       725     23     20      3
18 months   ki1148112-LCNI-5           MALAWI                         4       725     34     32      2
18 months   ki1148112-LCNI-5           MALAWI                         5       725     35     28      7
18 months   ki1148112-LCNI-5           MALAWI                         6       725     31     24      7
18 months   ki1148112-LCNI-5           MALAWI                         7       725     54     48      6
18 months   ki1148112-LCNI-5           MALAWI                         8       725     79     72      7
18 months   ki1148112-LCNI-5           MALAWI                         9       725     85     77      8
18 months   ki1148112-LCNI-5           MALAWI                         10      725    116     91     25
18 months   ki1148112-LCNI-5           MALAWI                         11      725     82     72     10
18 months   ki1148112-LCNI-5           MALAWI                         12      725     88     77     11
18 months   kiGH5241-JiVitA-4          BANGLADESH                     1      1232      0      0      0
18 months   kiGH5241-JiVitA-4          BANGLADESH                     2      1232    188    168     20
18 months   kiGH5241-JiVitA-4          BANGLADESH                     3      1232    219    194     25
18 months   kiGH5241-JiVitA-4          BANGLADESH                     4      1232    180    153     27
18 months   kiGH5241-JiVitA-4          BANGLADESH                     5      1232    168    144     24
18 months   kiGH5241-JiVitA-4          BANGLADESH                     6      1232    108     95     13
18 months   kiGH5241-JiVitA-4          BANGLADESH                     7      1232    138    120     18
18 months   kiGH5241-JiVitA-4          BANGLADESH                     8      1232    119    104     15
18 months   kiGH5241-JiVitA-4          BANGLADESH                     9      1232     79     74      5
18 months   kiGH5241-JiVitA-4          BANGLADESH                     10     1232     33     31      2
18 months   kiGH5241-JiVitA-4          BANGLADESH                     11     1232      0      0      0
18 months   kiGH5241-JiVitA-4          BANGLADESH                     12     1232      0      0      0
24 months   ki0047075b-MAL-ED          BANGLADESH                     1       212     14     13      1
24 months   ki0047075b-MAL-ED          BANGLADESH                     2       212     17     12      5
24 months   ki0047075b-MAL-ED          BANGLADESH                     3       212     19     18      1
24 months   ki0047075b-MAL-ED          BANGLADESH                     4       212     20     19      1
24 months   ki0047075b-MAL-ED          BANGLADESH                     5       212     19     14      5
24 months   ki0047075b-MAL-ED          BANGLADESH                     6       212      7      7      0
24 months   ki0047075b-MAL-ED          BANGLADESH                     7       212     18     17      1
24 months   ki0047075b-MAL-ED          BANGLADESH                     8       212     22     15      7
24 months   ki0047075b-MAL-ED          BANGLADESH                     9       212     18     17      1
24 months   ki0047075b-MAL-ED          BANGLADESH                     10      212     20     17      3
24 months   ki0047075b-MAL-ED          BANGLADESH                     11      212     11     10      1
24 months   ki0047075b-MAL-ED          BANGLADESH                     12      212     27     27      0
24 months   ki0047075b-MAL-ED          BRAZIL                         1       169     15     15      0
24 months   ki0047075b-MAL-ED          BRAZIL                         2       169     16     16      0
24 months   ki0047075b-MAL-ED          BRAZIL                         3       169     14     14      0
24 months   ki0047075b-MAL-ED          BRAZIL                         4       169     10     10      0
24 months   ki0047075b-MAL-ED          BRAZIL                         5       169     15     15      0
24 months   ki0047075b-MAL-ED          BRAZIL                         6       169      6      6      0
24 months   ki0047075b-MAL-ED          BRAZIL                         7       169     10      9      1
24 months   ki0047075b-MAL-ED          BRAZIL                         8       169     13     13      0
24 months   ki0047075b-MAL-ED          BRAZIL                         9       169     27     27      0
24 months   ki0047075b-MAL-ED          BRAZIL                         10      169     14     14      0
24 months   ki0047075b-MAL-ED          BRAZIL                         11      169     18     18      0
24 months   ki0047075b-MAL-ED          BRAZIL                         12      169     11     11      0
24 months   ki0047075b-MAL-ED          INDIA                          1       227     19     15      4
24 months   ki0047075b-MAL-ED          INDIA                          2       227     18     17      1
24 months   ki0047075b-MAL-ED          INDIA                          3       227     19     18      1
24 months   ki0047075b-MAL-ED          INDIA                          4       227     14     12      2
24 months   ki0047075b-MAL-ED          INDIA                          5       227      8      7      1
24 months   ki0047075b-MAL-ED          INDIA                          6       227     18     18      0
24 months   ki0047075b-MAL-ED          INDIA                          7       227     23     19      4
24 months   ki0047075b-MAL-ED          INDIA                          8       227     21     18      3
24 months   ki0047075b-MAL-ED          INDIA                          9       227     18     15      3
24 months   ki0047075b-MAL-ED          INDIA                          10      227     26     22      4
24 months   ki0047075b-MAL-ED          INDIA                          11      227     24     20      4
24 months   ki0047075b-MAL-ED          INDIA                          12      227     19     18      1
24 months   ki0047075b-MAL-ED          NEPAL                          1       228     19     18      1
24 months   ki0047075b-MAL-ED          NEPAL                          2       228     17     16      1
24 months   ki0047075b-MAL-ED          NEPAL                          3       228     17     14      3
24 months   ki0047075b-MAL-ED          NEPAL                          4       228     22     22      0
24 months   ki0047075b-MAL-ED          NEPAL                          5       228     19     18      1
24 months   ki0047075b-MAL-ED          NEPAL                          6       228     18     18      0
24 months   ki0047075b-MAL-ED          NEPAL                          7       228     17     17      0
24 months   ki0047075b-MAL-ED          NEPAL                          8       228     24     24      0
24 months   ki0047075b-MAL-ED          NEPAL                          9       228     15     14      1
24 months   ki0047075b-MAL-ED          NEPAL                          10      228     20     20      0
24 months   ki0047075b-MAL-ED          NEPAL                          11      228     24     24      0
24 months   ki0047075b-MAL-ED          NEPAL                          12      228     16     16      0
24 months   ki0047075b-MAL-ED          PERU                           1       201     30     26      4
24 months   ki0047075b-MAL-ED          PERU                           2       201     17     16      1
24 months   ki0047075b-MAL-ED          PERU                           3       201     15     15      0
24 months   ki0047075b-MAL-ED          PERU                           4       201     11      9      2
24 months   ki0047075b-MAL-ED          PERU                           5       201     19     17      2
24 months   ki0047075b-MAL-ED          PERU                           6       201     11     10      1
24 months   ki0047075b-MAL-ED          PERU                           7       201     15     15      0
24 months   ki0047075b-MAL-ED          PERU                           8       201     12     11      1
24 months   ki0047075b-MAL-ED          PERU                           9       201     21     21      0
24 months   ki0047075b-MAL-ED          PERU                           10      201     14     14      0
24 months   ki0047075b-MAL-ED          PERU                           11      201     21     18      3
24 months   ki0047075b-MAL-ED          PERU                           12      201     15     14      1
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1       238     34     27      7
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2       238     22     18      4
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3       238     14     12      2
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4       238     12     11      1
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5       238     12     12      0
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6       238     16     15      1
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7       238     22     20      2
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8       238      8      8      0
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9       238     19     19      0
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10      238     25     23      2
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11      238     23     19      4
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12      238     31     28      3
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1       214     15     12      3
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2       214     22     14      8
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3       214     18      9      9
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4       214      6      3      3
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5       214     18     14      4
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6       214     18     15      3
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7       214     23     17      6
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8       214     11      8      3
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9       214     18     13      5
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10      214     15      8      7
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11      214     24     15      9
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12      214     26     17      9
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1       372     34     26      8
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2       372     16      9      7
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3       372     31     18     13
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4       372     44     28     16
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          5       372     36     23     13
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          6       372     37     26     11
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          7       372     39     29     10
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          8       372     17     12      5
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          9       372     21     18      3
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          10      372     29     20      9
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          11      372     43     28     15
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          12      372     25     12     13
24 months   ki1000108-IRC              INDIA                          1       409     38     33      5
24 months   ki1000108-IRC              INDIA                          2       409     28     24      4
24 months   ki1000108-IRC              INDIA                          3       409     27     23      4
24 months   ki1000108-IRC              INDIA                          4       409     21     18      3
24 months   ki1000108-IRC              INDIA                          5       409     22     16      6
24 months   ki1000108-IRC              INDIA                          6       409     37     36      1
24 months   ki1000108-IRC              INDIA                          7       409     36     36      0
24 months   ki1000108-IRC              INDIA                          8       409     44     40      4
24 months   ki1000108-IRC              INDIA                          9       409     27     24      3
24 months   ki1000108-IRC              INDIA                          10      409     37     36      1
24 months   ki1000108-IRC              INDIA                          11      409     40     38      2
24 months   ki1000108-IRC              INDIA                          12      409     52     44      8
24 months   ki1017093-NIH-Birth        BANGLADESH                     1       429     43     34      9
24 months   ki1017093-NIH-Birth        BANGLADESH                     2       429     36     32      4
24 months   ki1017093-NIH-Birth        BANGLADESH                     3       429     39     33      6
24 months   ki1017093-NIH-Birth        BANGLADESH                     4       429     34     24     10
24 months   ki1017093-NIH-Birth        BANGLADESH                     5       429     35     26      9
24 months   ki1017093-NIH-Birth        BANGLADESH                     6       429     33     26      7
24 months   ki1017093-NIH-Birth        BANGLADESH                     7       429     34     29      5
24 months   ki1017093-NIH-Birth        BANGLADESH                     8       429     27     19      8
24 months   ki1017093-NIH-Birth        BANGLADESH                     9       429     26     22      4
24 months   ki1017093-NIH-Birth        BANGLADESH                     10      429     33     24      9
24 months   ki1017093-NIH-Birth        BANGLADESH                     11      429     43     31     12
24 months   ki1017093-NIH-Birth        BANGLADESH                     12      429     46     36     10
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1         6      0      0      0
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2         6      0      0      0
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3         6      2      2      0
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4         6      1      1      0
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5         6      1      1      0
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6         6      1      0      1
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7         6      1      1      0
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8         6      0      0      0
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9         6      0      0      0
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10        6      0      0      0
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11        6      0      0      0
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12        6      0      0      0
24 months   ki1101329-Keneba           GAMBIA                         1      1725    171    159     12
24 months   ki1101329-Keneba           GAMBIA                         2      1725    167    149     18
24 months   ki1101329-Keneba           GAMBIA                         3      1725    170    158     12
24 months   ki1101329-Keneba           GAMBIA                         4      1725    114    105      9
24 months   ki1101329-Keneba           GAMBIA                         5      1725    122    117      5
24 months   ki1101329-Keneba           GAMBIA                         6      1725     92     86      6
24 months   ki1101329-Keneba           GAMBIA                         7      1725     81     76      5
24 months   ki1101329-Keneba           GAMBIA                         8      1725    158    149      9
24 months   ki1101329-Keneba           GAMBIA                         9      1725    159    143     16
24 months   ki1101329-Keneba           GAMBIA                         10     1725    200    187     13
24 months   ki1101329-Keneba           GAMBIA                         11     1725    141    127     14
24 months   ki1101329-Keneba           GAMBIA                         12     1725    150    132     18
24 months   ki1113344-GMS-Nepal        NEPAL                          1       499      0      0      0
24 months   ki1113344-GMS-Nepal        NEPAL                          2       499      0      0      0
24 months   ki1113344-GMS-Nepal        NEPAL                          3       499      0      0      0
24 months   ki1113344-GMS-Nepal        NEPAL                          4       499      0      0      0
24 months   ki1113344-GMS-Nepal        NEPAL                          5       499      0      0      0
24 months   ki1113344-GMS-Nepal        NEPAL                          6       499     91     81     10
24 months   ki1113344-GMS-Nepal        NEPAL                          7       499    206    183     23
24 months   ki1113344-GMS-Nepal        NEPAL                          8       499    202    181     21
24 months   ki1113344-GMS-Nepal        NEPAL                          9       499      0      0      0
24 months   ki1113344-GMS-Nepal        NEPAL                          10      499      0      0      0
24 months   ki1113344-GMS-Nepal        NEPAL                          11      499      0      0      0
24 months   ki1113344-GMS-Nepal        NEPAL                          12      499      0      0      0
24 months   ki1114097-CMIN             BANGLADESH                     1       242     26     17      9
24 months   ki1114097-CMIN             BANGLADESH                     2       242     24     19      5
24 months   ki1114097-CMIN             BANGLADESH                     3       242     18     16      2
24 months   ki1114097-CMIN             BANGLADESH                     4       242     22     16      6
24 months   ki1114097-CMIN             BANGLADESH                     5       242     16     15      1
24 months   ki1114097-CMIN             BANGLADESH                     6       242      8      3      5
24 months   ki1114097-CMIN             BANGLADESH                     7       242     15     13      2
24 months   ki1114097-CMIN             BANGLADESH                     8       242     18      9      9
24 months   ki1114097-CMIN             BANGLADESH                     9       242     20     16      4
24 months   ki1114097-CMIN             BANGLADESH                     10      242     24     14     10
24 months   ki1114097-CMIN             BANGLADESH                     11      242     25     18      7
24 months   ki1114097-CMIN             BANGLADESH                     12      242     26     18      8
24 months   ki1114097-CMIN             GUINEA-BISSAU                  1       551     48     43      5
24 months   ki1114097-CMIN             GUINEA-BISSAU                  2       551     41     37      4
24 months   ki1114097-CMIN             GUINEA-BISSAU                  3       551     54     51      3
24 months   ki1114097-CMIN             GUINEA-BISSAU                  4       551     51     41     10
24 months   ki1114097-CMIN             GUINEA-BISSAU                  5       551     45     44      1
24 months   ki1114097-CMIN             GUINEA-BISSAU                  6       551     29     28      1
24 months   ki1114097-CMIN             GUINEA-BISSAU                  7       551     40     34      6
24 months   ki1114097-CMIN             GUINEA-BISSAU                  8       551     49     42      7
24 months   ki1114097-CMIN             GUINEA-BISSAU                  9       551     65     61      4
24 months   ki1114097-CMIN             GUINEA-BISSAU                  10      551     57     53      4
24 months   ki1114097-CMIN             GUINEA-BISSAU                  11      551     43     38      5
24 months   ki1114097-CMIN             GUINEA-BISSAU                  12      551     29     24      5
24 months   ki1114097-CMIN             PERU                           1       429     13     13      0
24 months   ki1114097-CMIN             PERU                           2       429     39     36      3
24 months   ki1114097-CMIN             PERU                           3       429     51     48      3
24 months   ki1114097-CMIN             PERU                           4       429     47     43      4
24 months   ki1114097-CMIN             PERU                           5       429     33     28      5
24 months   ki1114097-CMIN             PERU                           6       429     40     38      2
24 months   ki1114097-CMIN             PERU                           7       429     41     40      1
24 months   ki1114097-CMIN             PERU                           8       429     34     33      1
24 months   ki1114097-CMIN             PERU                           9       429     39     37      2
24 months   ki1114097-CMIN             PERU                           10      429     33     27      6
24 months   ki1114097-CMIN             PERU                           11      429     32     29      3
24 months   ki1114097-CMIN             PERU                           12      429     27     27      0
24 months   ki1114097-CONTENT          PERU                           1       164      7      7      0
24 months   ki1114097-CONTENT          PERU                           2       164     14     14      0
24 months   ki1114097-CONTENT          PERU                           3       164     22     21      1
24 months   ki1114097-CONTENT          PERU                           4       164     15     14      1
24 months   ki1114097-CONTENT          PERU                           5       164     14     14      0
24 months   ki1114097-CONTENT          PERU                           6       164     11     11      0
24 months   ki1114097-CONTENT          PERU                           7       164     23     23      0
24 months   ki1114097-CONTENT          PERU                           8       164     14     13      1
24 months   ki1114097-CONTENT          PERU                           9       164     17     17      0
24 months   ki1114097-CONTENT          PERU                           10      164     11     11      0
24 months   ki1114097-CONTENT          PERU                           11      164      6      6      0
24 months   ki1114097-CONTENT          PERU                           12      164     10     10      0
24 months   ki1119695-PROBIT           BELARUS                        1      1619    122    122      0
24 months   ki1119695-PROBIT           BELARUS                        2      1619    106    105      1
24 months   ki1119695-PROBIT           BELARUS                        3      1619    133    132      1
24 months   ki1119695-PROBIT           BELARUS                        4      1619    142    140      2
24 months   ki1119695-PROBIT           BELARUS                        5      1619    137    136      1
24 months   ki1119695-PROBIT           BELARUS                        6      1619    122    118      4
24 months   ki1119695-PROBIT           BELARUS                        7      1619    154    152      2
24 months   ki1119695-PROBIT           BELARUS                        8      1619    138    135      3
24 months   ki1119695-PROBIT           BELARUS                        9      1619    141    139      2
24 months   ki1119695-PROBIT           BELARUS                        10     1619    126    122      4
24 months   ki1119695-PROBIT           BELARUS                        11     1619    119    115      4
24 months   ki1119695-PROBIT           BELARUS                        12     1619    179    172      7
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1       457     52     42     10
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2       457     66     46     20
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3       457     61     39     22
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4       457     46     35     11
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5       457     53     39     14
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6       457     48     31     17
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7       457     28     13     15
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8       457     31     25      6
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9       457      3      3      0
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10      457      6      6      0
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11      457     25     19      6
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12      457     38     28     10
24 months   ki1148112-LCNI-5           MALAWI                         1       579     41     36      5
24 months   ki1148112-LCNI-5           MALAWI                         2       579     30     30      0
24 months   ki1148112-LCNI-5           MALAWI                         3       579     19     18      1
24 months   ki1148112-LCNI-5           MALAWI                         4       579     28     27      1
24 months   ki1148112-LCNI-5           MALAWI                         5       579     31     25      6
24 months   ki1148112-LCNI-5           MALAWI                         6       579     24     19      5
24 months   ki1148112-LCNI-5           MALAWI                         7       579     47     41      6
24 months   ki1148112-LCNI-5           MALAWI                         8       579     71     67      4
24 months   ki1148112-LCNI-5           MALAWI                         9       579     67     63      4
24 months   ki1148112-LCNI-5           MALAWI                         10      579     93     75     18
24 months   ki1148112-LCNI-5           MALAWI                         11      579     64     58      6
24 months   ki1148112-LCNI-5           MALAWI                         12      579     64     53     11
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1      4293    338    280     58
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2      4293    277    219     58
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3      4293    347    298     49
24 months   kiGH5241-JiVitA-3          BANGLADESH                     4      4293    254    221     33
24 months   kiGH5241-JiVitA-3          BANGLADESH                     5      4293    189    154     35
24 months   kiGH5241-JiVitA-3          BANGLADESH                     6      4293    316    271     45
24 months   kiGH5241-JiVitA-3          BANGLADESH                     7      4293    322    285     37
24 months   kiGH5241-JiVitA-3          BANGLADESH                     8      4293    326    279     47
24 months   kiGH5241-JiVitA-3          BANGLADESH                     9      4293    378    336     42
24 months   kiGH5241-JiVitA-3          BANGLADESH                     10     4293    430    373     57
24 months   kiGH5241-JiVitA-3          BANGLADESH                     11     4293    524    422    102
24 months   kiGH5241-JiVitA-3          BANGLADESH                     12     4293    592    488    104
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1      1251      0      0      0
24 months   kiGH5241-JiVitA-4          BANGLADESH                     2      1251    197    182     15
24 months   kiGH5241-JiVitA-4          BANGLADESH                     3      1251    230    206     24
24 months   kiGH5241-JiVitA-4          BANGLADESH                     4      1251    172    146     26
24 months   kiGH5241-JiVitA-4          BANGLADESH                     5      1251    165    150     15
24 months   kiGH5241-JiVitA-4          BANGLADESH                     6      1251    109    107      2
24 months   kiGH5241-JiVitA-4          BANGLADESH                     7      1251    137    129      8
24 months   kiGH5241-JiVitA-4          BANGLADESH                     8      1251    123    118      5
24 months   kiGH5241-JiVitA-4          BANGLADESH                     9      1251     84     82      2
24 months   kiGH5241-JiVitA-4          BANGLADESH                     10     1251     34     33      1
24 months   kiGH5241-JiVitA-4          BANGLADESH                     11     1251      0      0      0
24 months   kiGH5241-JiVitA-4          BANGLADESH                     12     1251      0      0      0


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
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
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
* agecat: 3 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 3 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 3 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
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
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 9 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 9 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 9 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 9 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 9 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 9 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 9 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 9 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 9 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 9 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 9 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 9 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 9 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 9 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 9 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 9 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 9 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 9 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 9 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: Birth, studyid: ki1114097-CMIN, country: PERU
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: Birth, studyid: ki1114097-CMIN, country: PERU
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
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
* agecat: 3 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 3 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 3 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 3 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 3 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 3 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 3 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 3 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 3 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 3 months, studyid: ki1119695-PROBIT, country: BELARUS
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
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 9 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 9 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 9 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 9 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 9 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 9 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 9 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 9 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 9 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 9 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 9 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 9 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 9 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 9 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 9 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 9 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 9 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
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
* agecat: 12 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 12 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 12 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 12 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 12 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 12 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 12 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 12 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 12 months, studyid: ki1148112-LCNI-5, country: MALAWI
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
* agecat: 18 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 18 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 18 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 18 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 18 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 18 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 18 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 18 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 18 months, studyid: ki1148112-LCNI-5, country: MALAWI
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
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots

```
## Warning: Removed 60 rows containing missing values (geom_errorbar).
```

![](/tmp/3c04b28f-ea4e-4aab-b6b7-387c429d4e33/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->


```
## Warning: Removed 70 rows containing missing values (geom_errorbar).
```

![](/tmp/3c04b28f-ea4e-4aab-b6b7-387c429d4e33/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


```
## Warning: Removed 5 rows containing missing values (geom_errorbar).
```

![](/tmp/3c04b28f-ea4e-4aab-b6b7-387c429d4e33/REPORT_files/figure-html/plot_paf-1.png)<!-- -->


```
## Warning: Removed 5 rows containing missing values (geom_errorbar).
```

![](/tmp/3c04b28f-ea4e-4aab-b6b7-387c429d4e33/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid              country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO   ZIMBABWE     1                    NA                0.0410754   0.0304449   0.0517060
Birth       ki1126311-ZVITAMBO   ZIMBABWE     2                    NA                0.0428980   0.0306356   0.0551603
Birth       ki1126311-ZVITAMBO   ZIMBABWE     3                    NA                0.0362381   0.0254787   0.0469976
Birth       ki1126311-ZVITAMBO   ZIMBABWE     4                    NA                0.0353893   0.0238739   0.0469046
Birth       ki1126311-ZVITAMBO   ZIMBABWE     5                    NA                0.0335306   0.0224501   0.0446111
Birth       ki1126311-ZVITAMBO   ZIMBABWE     6                    NA                0.0396476   0.0282951   0.0510000
Birth       ki1126311-ZVITAMBO   ZIMBABWE     7                    NA                0.0375107   0.0266366   0.0483847
Birth       ki1126311-ZVITAMBO   ZIMBABWE     8                    NA                0.0199521   0.0122092   0.0276951
Birth       ki1126311-ZVITAMBO   ZIMBABWE     9                    NA                0.0162162   0.0093368   0.0230957
Birth       ki1126311-ZVITAMBO   ZIMBABWE     10                   NA                0.0327238   0.0219054   0.0435422
Birth       ki1126311-ZVITAMBO   ZIMBABWE     11                   NA                0.0313825   0.0214301   0.0413349
Birth       ki1126311-ZVITAMBO   ZIMBABWE     12                   NA                0.0199005   0.0120181   0.0277829
Birth       kiGH5241-JiVitA-3    BANGLADESH   1                    NA                0.1388286          NA          NA
Birth       kiGH5241-JiVitA-3    BANGLADESH   2                    NA                0.1054054          NA          NA
Birth       kiGH5241-JiVitA-3    BANGLADESH   3                    NA                0.0917127          NA          NA
Birth       kiGH5241-JiVitA-3    BANGLADESH   4                    NA                0.0719755          NA          NA
Birth       kiGH5241-JiVitA-3    BANGLADESH   5                    NA                0.1133603          NA          NA
Birth       kiGH5241-JiVitA-3    BANGLADESH   6                    NA                0.0928854          NA          NA
Birth       kiGH5241-JiVitA-3    BANGLADESH   7                    NA                0.0921305          NA          NA
Birth       kiGH5241-JiVitA-3    BANGLADESH   8                    NA                0.1074589          NA          NA
Birth       kiGH5241-JiVitA-3    BANGLADESH   9                    NA                0.0959752          NA          NA
Birth       kiGH5241-JiVitA-3    BANGLADESH   10                   NA                0.1347584          NA          NA
Birth       kiGH5241-JiVitA-3    BANGLADESH   11                   NA                0.1357013          NA          NA
Birth       kiGH5241-JiVitA-3    BANGLADESH   12                   NA                0.1279178          NA          NA
3 months    ki1126311-ZVITAMBO   ZIMBABWE     1                    NA                0.0447110   0.0313339   0.0580881
3 months    ki1126311-ZVITAMBO   ZIMBABWE     2                    NA                0.0654762   0.0467726   0.0841797
3 months    ki1126311-ZVITAMBO   ZIMBABWE     3                    NA                0.0584653   0.0424156   0.0745150
3 months    ki1126311-ZVITAMBO   ZIMBABWE     4                    NA                0.0616541   0.0433721   0.0799361
3 months    ki1126311-ZVITAMBO   ZIMBABWE     5                    NA                0.0563584   0.0391753   0.0735415
3 months    ki1126311-ZVITAMBO   ZIMBABWE     6                    NA                0.1122195   0.0903735   0.1340654
3 months    ki1126311-ZVITAMBO   ZIMBABWE     7                    NA                0.0524297   0.0368067   0.0680526
3 months    ki1126311-ZVITAMBO   ZIMBABWE     8                    NA                0.0506478   0.0358971   0.0653985
3 months    ki1126311-ZVITAMBO   ZIMBABWE     9                    NA                0.0337922   0.0212625   0.0463220
3 months    ki1126311-ZVITAMBO   ZIMBABWE     10                   NA                0.0608974   0.0421330   0.0796619
3 months    ki1126311-ZVITAMBO   ZIMBABWE     11                   NA                0.0544218   0.0380210   0.0708225
3 months    ki1126311-ZVITAMBO   ZIMBABWE     12                   NA                0.0407186   0.0273126   0.0541245
3 months    kiGH5241-JiVitA-3    BANGLADESH   1                    NA                0.0805310          NA          NA
3 months    kiGH5241-JiVitA-3    BANGLADESH   2                    NA                0.0714286          NA          NA
3 months    kiGH5241-JiVitA-3    BANGLADESH   3                    NA                0.0588235          NA          NA
3 months    kiGH5241-JiVitA-3    BANGLADESH   4                    NA                0.0417722          NA          NA
3 months    kiGH5241-JiVitA-3    BANGLADESH   5                    NA                0.0587276          NA          NA
3 months    kiGH5241-JiVitA-3    BANGLADESH   6                    NA                0.0440945          NA          NA
3 months    kiGH5241-JiVitA-3    BANGLADESH   7                    NA                0.0605634          NA          NA
3 months    kiGH5241-JiVitA-3    BANGLADESH   8                    NA                0.0772317          NA          NA
3 months    kiGH5241-JiVitA-3    BANGLADESH   9                    NA                0.0963303          NA          NA
3 months    kiGH5241-JiVitA-3    BANGLADESH   10                   NA                0.1157580          NA          NA
3 months    kiGH5241-JiVitA-3    BANGLADESH   11                   NA                0.1229212          NA          NA
3 months    kiGH5241-JiVitA-3    BANGLADESH   12                   NA                0.0979827          NA          NA
6 months    ki1126311-ZVITAMBO   ZIMBABWE     1                    NA                0.0365239   0.0234750   0.0495728
6 months    ki1126311-ZVITAMBO   ZIMBABWE     2                    NA                0.0357751   0.0207494   0.0508008
6 months    ki1126311-ZVITAMBO   ZIMBABWE     3                    NA                0.0637720   0.0461301   0.0814140
6 months    ki1126311-ZVITAMBO   ZIMBABWE     4                    NA                0.0393082   0.0242046   0.0544117
6 months    ki1126311-ZVITAMBO   ZIMBABWE     5                    NA                0.0361842   0.0213392   0.0510292
6 months    ki1126311-ZVITAMBO   ZIMBABWE     6                    NA                0.0511628   0.0341582   0.0681674
6 months    ki1126311-ZVITAMBO   ZIMBABWE     7                    NA                0.0532915   0.0358614   0.0707217
6 months    ki1126311-ZVITAMBO   ZIMBABWE     8                    NA                0.0294906   0.0173498   0.0416314
6 months    ki1126311-ZVITAMBO   ZIMBABWE     9                    NA                0.0333778   0.0205134   0.0462423
6 months    ki1126311-ZVITAMBO   ZIMBABWE     10                   NA                0.0400000   0.0243193   0.0556807
6 months    ki1126311-ZVITAMBO   ZIMBABWE     11                   NA                0.0405229   0.0265492   0.0544966
6 months    ki1126311-ZVITAMBO   ZIMBABWE     12                   NA                0.0417722   0.0278201   0.0557242
6 months    kiGH5241-JiVitA-3    BANGLADESH   1                    NA                0.0656716          NA          NA
6 months    kiGH5241-JiVitA-3    BANGLADESH   2                    NA                0.0618375          NA          NA
6 months    kiGH5241-JiVitA-3    BANGLADESH   3                    NA                0.0759494          NA          NA
6 months    kiGH5241-JiVitA-3    BANGLADESH   4                    NA                0.0645161          NA          NA
6 months    kiGH5241-JiVitA-3    BANGLADESH   5                    NA                0.0785340          NA          NA
6 months    kiGH5241-JiVitA-3    BANGLADESH   6                    NA                0.0589226          NA          NA
6 months    kiGH5241-JiVitA-3    BANGLADESH   7                    NA                0.0393443          NA          NA
6 months    kiGH5241-JiVitA-3    BANGLADESH   8                    NA                0.0528402          NA          NA
6 months    kiGH5241-JiVitA-3    BANGLADESH   9                    NA                0.0719603          NA          NA
6 months    kiGH5241-JiVitA-3    BANGLADESH   10                   NA                0.0733831          NA          NA
6 months    kiGH5241-JiVitA-3    BANGLADESH   11                   NA                0.0771889          NA          NA
6 months    kiGH5241-JiVitA-3    BANGLADESH   12                   NA                0.0648508          NA          NA
9 months    ki1101329-Keneba     GAMBIA       1                    NA                0.0330189   0.0089600   0.0570777
9 months    ki1101329-Keneba     GAMBIA       2                    NA                0.0534759   0.0212224   0.0857295
9 months    ki1101329-Keneba     GAMBIA       3                    NA                0.0462963   0.0182674   0.0743252
9 months    ki1101329-Keneba     GAMBIA       4                    NA                0.0370370   0.0051724   0.0689017
9 months    ki1101329-Keneba     GAMBIA       5                    NA                0.0434783   0.0094455   0.0775110
9 months    ki1101329-Keneba     GAMBIA       6                    NA                0.0666667   0.0189433   0.1143901
9 months    ki1101329-Keneba     GAMBIA       7                    NA                0.1020408   0.0420955   0.1619862
9 months    ki1101329-Keneba     GAMBIA       8                    NA                0.0489130   0.0177409   0.0800852
9 months    ki1101329-Keneba     GAMBIA       9                    NA                0.0340909   0.0072755   0.0609063
9 months    ki1101329-Keneba     GAMBIA       10                   NA                0.0539419   0.0254142   0.0824696
9 months    ki1101329-Keneba     GAMBIA       11                   NA                0.0481283   0.0174436   0.0788131
9 months    ki1101329-Keneba     GAMBIA       12                   NA                0.0319149   0.0067829   0.0570469
9 months    ki1126311-ZVITAMBO   ZIMBABWE     1                    NA                0.0471204   0.0320941   0.0621468
9 months    ki1126311-ZVITAMBO   ZIMBABWE     2                    NA                0.0619902   0.0429000   0.0810805
9 months    ki1126311-ZVITAMBO   ZIMBABWE     3                    NA                0.0373984   0.0224019   0.0523948
9 months    ki1126311-ZVITAMBO   ZIMBABWE     4                    NA                0.0402930   0.0237976   0.0567885
9 months    ki1126311-ZVITAMBO   ZIMBABWE     5                    NA                0.0505415   0.0322990   0.0687840
9 months    ki1126311-ZVITAMBO   ZIMBABWE     6                    NA                0.0533981   0.0356713   0.0711248
9 months    ki1126311-ZVITAMBO   ZIMBABWE     7                    NA                0.0495726   0.0319821   0.0671632
9 months    ki1126311-ZVITAMBO   ZIMBABWE     8                    NA                0.0399429   0.0254457   0.0544402
9 months    ki1126311-ZVITAMBO   ZIMBABWE     9                    NA                0.0425824   0.0279142   0.0572506
9 months    ki1126311-ZVITAMBO   ZIMBABWE     10                   NA                0.0455342   0.0284337   0.0626346
9 months    ki1126311-ZVITAMBO   ZIMBABWE     11                   NA                0.0483871   0.0322814   0.0644928
9 months    ki1126311-ZVITAMBO   ZIMBABWE     12                   NA                0.0601719   0.0425290   0.0778148
12 months   ki1101329-Keneba     GAMBIA       1                    NA                0.0883978   0.0470318   0.1297638
12 months   ki1101329-Keneba     GAMBIA       2                    NA                0.0617978   0.0264156   0.0971799
12 months   ki1101329-Keneba     GAMBIA       3                    NA                0.0360825   0.0098326   0.0623323
12 months   ki1101329-Keneba     GAMBIA       4                    NA                0.0597015   0.0195749   0.0998281
12 months   ki1101329-Keneba     GAMBIA       5                    NA                0.0431655   0.0093715   0.0769594
12 months   ki1101329-Keneba     GAMBIA       6                    NA                0.0677966   0.0224257   0.1131676
12 months   ki1101329-Keneba     GAMBIA       7                    NA                0.1020408   0.0420946   0.1619870
12 months   ki1101329-Keneba     GAMBIA       8                    NA                0.0529412   0.0192729   0.0866094
12 months   ki1101329-Keneba     GAMBIA       9                    NA                0.0795455   0.0395591   0.1195318
12 months   ki1101329-Keneba     GAMBIA       10                   NA                0.0622222   0.0306510   0.0937934
12 months   ki1101329-Keneba     GAMBIA       11                   NA                0.0809249   0.0402756   0.1215742
12 months   ki1101329-Keneba     GAMBIA       12                   NA                0.0679012   0.0291512   0.1066513
12 months   ki1126311-ZVITAMBO   ZIMBABWE     1                    NA                0.0677419   0.0479594   0.0875244
12 months   ki1126311-ZVITAMBO   ZIMBABWE     2                    NA                0.0752475   0.0522388   0.0982563
12 months   ki1126311-ZVITAMBO   ZIMBABWE     3                    NA                0.0854839   0.0634738   0.1074940
12 months   ki1126311-ZVITAMBO   ZIMBABWE     4                    NA                0.0732673   0.0505390   0.0959956
12 months   ki1126311-ZVITAMBO   ZIMBABWE     5                    NA                0.0494071   0.0305230   0.0682912
12 months   ki1126311-ZVITAMBO   ZIMBABWE     6                    NA                0.0901060   0.0665151   0.1136969
12 months   ki1126311-ZVITAMBO   ZIMBABWE     7                    NA                0.0830389   0.0603042   0.1057735
12 months   ki1126311-ZVITAMBO   ZIMBABWE     8                    NA                0.0485437   0.0315985   0.0654889
12 months   ki1126311-ZVITAMBO   ZIMBABWE     9                    NA                0.0483871   0.0314952   0.0652790
12 months   ki1126311-ZVITAMBO   ZIMBABWE     10                   NA                0.0645161   0.0421852   0.0868470
12 months   ki1126311-ZVITAMBO   ZIMBABWE     11                   NA                0.0487805   0.0311572   0.0664038
12 months   ki1126311-ZVITAMBO   ZIMBABWE     12                   NA                0.0616438   0.0421363   0.0811514
12 months   kiGH5241-JiVitA-3    BANGLADESH   1                    NA                0.1365132          NA          NA
12 months   kiGH5241-JiVitA-3    BANGLADESH   2                    NA                0.1195446          NA          NA
12 months   kiGH5241-JiVitA-3    BANGLADESH   3                    NA                0.1105919          NA          NA
12 months   kiGH5241-JiVitA-3    BANGLADESH   4                    NA                0.0895522          NA          NA
12 months   kiGH5241-JiVitA-3    BANGLADESH   5                    NA                0.0917603          NA          NA
12 months   kiGH5241-JiVitA-3    BANGLADESH   6                    NA                0.1100196          NA          NA
12 months   kiGH5241-JiVitA-3    BANGLADESH   7                    NA                0.0856102          NA          NA
12 months   kiGH5241-JiVitA-3    BANGLADESH   8                    NA                0.0805861          NA          NA
12 months   kiGH5241-JiVitA-3    BANGLADESH   9                    NA                0.0998464          NA          NA
12 months   kiGH5241-JiVitA-3    BANGLADESH   10                   NA                0.1280576          NA          NA
12 months   kiGH5241-JiVitA-3    BANGLADESH   11                   NA                0.1440217          NA          NA
12 months   kiGH5241-JiVitA-3    BANGLADESH   12                   NA                0.1466667          NA          NA
18 months   ki1101329-Keneba     GAMBIA       1                    NA                0.0588235   0.0265269   0.0911201
18 months   ki1101329-Keneba     GAMBIA       2                    NA                0.1011236   0.0568212   0.1454260
18 months   ki1101329-Keneba     GAMBIA       3                    NA                0.0945274   0.0540717   0.1349830
18 months   ki1101329-Keneba     GAMBIA       4                    NA                0.0735294   0.0296523   0.1174065
18 months   ki1101329-Keneba     GAMBIA       5                    NA                0.0962963   0.0465212   0.1460714
18 months   ki1101329-Keneba     GAMBIA       6                    NA                0.1351351   0.0715204   0.1987499
18 months   ki1101329-Keneba     GAMBIA       7                    NA                0.1235955   0.0552012   0.1919898
18 months   ki1101329-Keneba     GAMBIA       8                    NA                0.0779221   0.0355758   0.1202683
18 months   ki1101329-Keneba     GAMBIA       9                    NA                0.0714286   0.0324748   0.1103824
18 months   ki1101329-Keneba     GAMBIA       10                   NA                0.0817308   0.0444910   0.1189706
18 months   ki1101329-Keneba     GAMBIA       11                   NA                0.0925926   0.0479455   0.1372396
18 months   ki1101329-Keneba     GAMBIA       12                   NA                0.0847458   0.0437061   0.1257855
18 months   ki1126311-ZVITAMBO   ZIMBABWE     1                    NA                0.2222222   0.1655707   0.2788737
18 months   ki1126311-ZVITAMBO   ZIMBABWE     2                    NA                0.2065217   0.1480136   0.2650299
18 months   ki1126311-ZVITAMBO   ZIMBABWE     3                    NA                0.1458333   0.0881708   0.2034958
18 months   ki1126311-ZVITAMBO   ZIMBABWE     4                    NA                0.1897810   0.1240996   0.2554624
18 months   ki1126311-ZVITAMBO   ZIMBABWE     5                    NA                0.2051282   0.1319396   0.2783168
18 months   ki1126311-ZVITAMBO   ZIMBABWE     6                    NA                0.1756757   0.1143490   0.2370023
18 months   ki1126311-ZVITAMBO   ZIMBABWE     7                    NA                0.2149533   0.1370953   0.2928112
18 months   ki1126311-ZVITAMBO   ZIMBABWE     8                    NA                0.1212121   0.0655188   0.1769055
18 months   ki1126311-ZVITAMBO   ZIMBABWE     9                    NA                0.1074380   0.0522454   0.1626306
18 months   ki1126311-ZVITAMBO   ZIMBABWE     10                   NA                0.1250000   0.0614204   0.1885796
18 months   ki1126311-ZVITAMBO   ZIMBABWE     11                   NA                0.1760563   0.1133942   0.2387185
18 months   ki1126311-ZVITAMBO   ZIMBABWE     12                   NA                0.1616766   0.1058237   0.2175296
24 months   ki1101329-Keneba     GAMBIA       1                    NA                0.0701754   0.0318781   0.1084728
24 months   ki1101329-Keneba     GAMBIA       2                    NA                0.1077844   0.0607378   0.1548311
24 months   ki1101329-Keneba     GAMBIA       3                    NA                0.0705882   0.0320741   0.1091023
24 months   ki1101329-Keneba     GAMBIA       4                    NA                0.0789474   0.0294328   0.1284619
24 months   ki1101329-Keneba     GAMBIA       5                    NA                0.0409836   0.0057942   0.0761730
24 months   ki1101329-Keneba     GAMBIA       6                    NA                0.0652174   0.0147493   0.1156855
24 months   ki1101329-Keneba     GAMBIA       7                    NA                0.0617284   0.0093034   0.1141534
24 months   ki1101329-Keneba     GAMBIA       8                    NA                0.0569620   0.0208125   0.0931116
24 months   ki1101329-Keneba     GAMBIA       9                    NA                0.1006289   0.0538547   0.1474031
24 months   ki1101329-Keneba     GAMBIA       10                   NA                0.0650000   0.0308240   0.0991760
24 months   ki1101329-Keneba     GAMBIA       11                   NA                0.0992908   0.0499153   0.1486662
24 months   ki1101329-Keneba     GAMBIA       12                   NA                0.1200000   0.0679812   0.1720188
24 months   kiGH5241-JiVitA-3    BANGLADESH   1                    NA                0.1715976          NA          NA
24 months   kiGH5241-JiVitA-3    BANGLADESH   2                    NA                0.2093863          NA          NA
24 months   kiGH5241-JiVitA-3    BANGLADESH   3                    NA                0.1412104          NA          NA
24 months   kiGH5241-JiVitA-3    BANGLADESH   4                    NA                0.1299213          NA          NA
24 months   kiGH5241-JiVitA-3    BANGLADESH   5                    NA                0.1851852          NA          NA
24 months   kiGH5241-JiVitA-3    BANGLADESH   6                    NA                0.1424051          NA          NA
24 months   kiGH5241-JiVitA-3    BANGLADESH   7                    NA                0.1149068          NA          NA
24 months   kiGH5241-JiVitA-3    BANGLADESH   8                    NA                0.1441718          NA          NA
24 months   kiGH5241-JiVitA-3    BANGLADESH   9                    NA                0.1111111          NA          NA
24 months   kiGH5241-JiVitA-3    BANGLADESH   10                   NA                0.1325581          NA          NA
24 months   kiGH5241-JiVitA-3    BANGLADESH   11                   NA                0.1946565          NA          NA
24 months   kiGH5241-JiVitA-3    BANGLADESH   12                   NA                0.1756757          NA          NA


### Parameter: E(Y)


agecat      studyid              country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO   ZIMBABWE     NA                   NA                0.0318872   0.0289588   0.0348156
Birth       kiGH5241-JiVitA-3    BANGLADESH   NA                   NA                0.1124564          NA          NA
3 months    ki1126311-ZVITAMBO   ZIMBABWE     NA                   NA                0.0572174   0.0524694   0.0619655
3 months    kiGH5241-JiVitA-3    BANGLADESH   NA                   NA                0.0832995          NA          NA
6 months    ki1126311-ZVITAMBO   ZIMBABWE     NA                   NA                0.0417119   0.0374091   0.0460146
6 months    kiGH5241-JiVitA-3    BANGLADESH   NA                   NA                0.0659935          NA          NA
9 months    ki1101329-Keneba     GAMBIA       NA                   NA                0.0474117   0.0382478   0.0565756
9 months    ki1126311-ZVITAMBO   ZIMBABWE     NA                   NA                0.0480782   0.0432917   0.0528646
12 months   ki1101329-Keneba     GAMBIA       NA                   NA                0.0657084   0.0547027   0.0767141
12 months   ki1126311-ZVITAMBO   ZIMBABWE     NA                   NA                0.0662320   0.0602985   0.0721656
12 months   kiGH5241-JiVitA-3    BANGLADESH   NA                   NA                0.1137625          NA          NA
18 months   ki1101329-Keneba     GAMBIA       NA                   NA                0.0878835   0.0752259   0.1005411
18 months   ki1126311-ZVITAMBO   ZIMBABWE     NA                   NA                0.1742690   0.1562842   0.1922538
24 months   ki1101329-Keneba     GAMBIA       NA                   NA                0.0794203   0.0666566   0.0921840
24 months   kiGH5241-JiVitA-3    BANGLADESH   NA                   NA                0.1553692          NA          NA


### Parameter: RR


agecat      studyid              country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO   ZIMBABWE     1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1126311-ZVITAMBO   ZIMBABWE     2                    1                 1.0443713   0.7102141   1.5357500
Birth       ki1126311-ZVITAMBO   ZIMBABWE     3                    1                 0.8822339   0.5950136   1.3080989
Birth       ki1126311-ZVITAMBO   ZIMBABWE     4                    1                 0.8615682   0.5684934   1.3057314
Birth       ki1126311-ZVITAMBO   ZIMBABWE     5                    1                 0.8163170   0.5364963   1.2420839
Birth       ki1126311-ZVITAMBO   ZIMBABWE     6                    1                 0.9652383   0.6561645   1.4198953
Birth       ki1126311-ZVITAMBO   ZIMBABWE     7                    1                 0.9132140   0.6191579   1.3469259
Birth       ki1126311-ZVITAMBO   ZIMBABWE     8                    1                 0.4857433   0.3046676   0.7744394
Birth       ki1126311-ZVITAMBO   ZIMBABWE     9                    1                 0.3947912   0.2401857   0.6489149
Birth       ki1126311-ZVITAMBO   ZIMBABWE     10                   1                 0.7966751   0.5235305   1.2123290
Birth       ki1126311-ZVITAMBO   ZIMBABWE     11                   1                 0.7640219   0.5073820   1.1504733
Birth       ki1126311-ZVITAMBO   ZIMBABWE     12                   1                 0.4844867   0.3018540   0.7776187
Birth       kiGH5241-JiVitA-3    BANGLADESH   1                    1                 1.0000000          NA          NA
Birth       kiGH5241-JiVitA-3    BANGLADESH   2                    1                 0.7592483          NA          NA
Birth       kiGH5241-JiVitA-3    BANGLADESH   3                    1                 0.6606181          NA          NA
Birth       kiGH5241-JiVitA-3    BANGLADESH   4                    1                 0.5184485          NA          NA
Birth       kiGH5241-JiVitA-3    BANGLADESH   5                    1                 0.8165486          NA          NA
Birth       kiGH5241-JiVitA-3    BANGLADESH   6                    1                 0.6690650          NA          NA
Birth       kiGH5241-JiVitA-3    BANGLADESH   7                    1                 0.6636276          NA          NA
Birth       kiGH5241-JiVitA-3    BANGLADESH   8                    1                 0.7740400          NA          NA
Birth       kiGH5241-JiVitA-3    BANGLADESH   9                    1                 0.6913216          NA          NA
Birth       kiGH5241-JiVitA-3    BANGLADESH   10                   1                 0.9706813          NA          NA
Birth       kiGH5241-JiVitA-3    BANGLADESH   11                   1                 0.9774732          NA          NA
Birth       kiGH5241-JiVitA-3    BANGLADESH   12                   1                 0.9214081          NA          NA
3 months    ki1126311-ZVITAMBO   ZIMBABWE     1                    1                 1.0000000   1.0000000   1.0000000
3 months    ki1126311-ZVITAMBO   ZIMBABWE     2                    1                 1.4644309   0.9683213   2.2147173
3 months    ki1126311-ZVITAMBO   ZIMBABWE     3                    1                 1.3076260   0.8712434   1.9625810
3 months    ki1126311-ZVITAMBO   ZIMBABWE     4                    1                 1.3789474   0.9049117   2.1013054
3 months    ki1126311-ZVITAMBO   ZIMBABWE     5                    1                 1.2605033   0.8222943   1.9322384
3 months    ki1126311-ZVITAMBO   ZIMBABWE     6                    1                 2.5098838   1.7564391   3.5865274
3 months    ki1126311-ZVITAMBO   ZIMBABWE     7                    1                 1.1726343   0.7687339   1.7887478
3 months    ki1126311-ZVITAMBO   ZIMBABWE     8                    1                 1.1327818   0.7461276   1.7198058
3 months    ki1126311-ZVITAMBO   ZIMBABWE     9                    1                 0.7557923   0.4693381   1.2170799
3 months    ki1126311-ZVITAMBO   ZIMBABWE     10                   1                 1.3620231   0.8864623   2.0927084
3 months    ki1126311-ZVITAMBO   ZIMBABWE     11                   1                 1.2171893   0.7960336   1.8611648
3 months    ki1126311-ZVITAMBO   ZIMBABWE     12                   1                 0.9107054   0.5836776   1.4209633
3 months    kiGH5241-JiVitA-3    BANGLADESH   1                    1                 1.0000000          NA          NA
3 months    kiGH5241-JiVitA-3    BANGLADESH   2                    1                 0.8869702          NA          NA
3 months    kiGH5241-JiVitA-3    BANGLADESH   3                    1                 0.7304460          NA          NA
3 months    kiGH5241-JiVitA-3    BANGLADESH   4                    1                 0.5187092          NA          NA
3 months    kiGH5241-JiVitA-3    BANGLADESH   5                    1                 0.7292544          NA          NA
3 months    kiGH5241-JiVitA-3    BANGLADESH   6                    1                 0.5475470          NA          NA
3 months    kiGH5241-JiVitA-3    BANGLADESH   7                    1                 0.7520508          NA          NA
3 months    kiGH5241-JiVitA-3    BANGLADESH   8                    1                 0.9590309          NA          NA
3 months    kiGH5241-JiVitA-3    BANGLADESH   9                    1                 1.1961891          NA          NA
3 months    kiGH5241-JiVitA-3    BANGLADESH   10                   1                 1.4374349          NA          NA
3 months    kiGH5241-JiVitA-3    BANGLADESH   11                   1                 1.5263840          NA          NA
3 months    kiGH5241-JiVitA-3    BANGLADESH   12                   1                 1.2167084          NA          NA
6 months    ki1126311-ZVITAMBO   ZIMBABWE     1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO   ZIMBABWE     2                    1                 0.9794983   0.5643292   1.7001016
6 months    ki1126311-ZVITAMBO   ZIMBABWE     3                    1                 1.7460347   1.1112594   2.7434074
6 months    ki1126311-ZVITAMBO   ZIMBABWE     4                    1                 1.0762308   0.6368609   1.8187216
6 months    ki1126311-ZVITAMBO   ZIMBABWE     5                    1                 0.9906987   0.5750131   1.7068898
6 months    ki1126311-ZVITAMBO   ZIMBABWE     6                    1                 1.4008019   0.8599191   2.2818962
6 months    ki1126311-ZVITAMBO   ZIMBABWE     7                    1                 1.4590855   0.8989182   2.3683249
6 months    ki1126311-ZVITAMBO   ZIMBABWE     8                    1                 0.8074327   0.4681407   1.3926320
6 months    ki1126311-ZVITAMBO   ZIMBABWE     9                    1                 0.9138622   0.5403100   1.5456758
6 months    ki1126311-ZVITAMBO   ZIMBABWE     10                   1                 1.0951724   0.6443697   1.8613578
6 months    ki1126311-ZVITAMBO   ZIMBABWE     11                   1                 1.1094884   0.6752710   1.8229194
6 months    ki1126311-ZVITAMBO   ZIMBABWE     12                   1                 1.1436927   0.7013007   1.8651530
6 months    kiGH5241-JiVitA-3    BANGLADESH   1                    1                 1.0000000          NA          NA
6 months    kiGH5241-JiVitA-3    BANGLADESH   2                    1                 0.9416158          NA          NA
6 months    kiGH5241-JiVitA-3    BANGLADESH   3                    1                 1.1565017          NA          NA
6 months    kiGH5241-JiVitA-3    BANGLADESH   4                    1                 0.9824047          NA          NA
6 months    kiGH5241-JiVitA-3    BANGLADESH   5                    1                 1.1958591          NA          NA
6 months    kiGH5241-JiVitA-3    BANGLADESH   6                    1                 0.8972299          NA          NA
6 months    kiGH5241-JiVitA-3    BANGLADESH   7                    1                 0.5991059          NA          NA
6 months    kiGH5241-JiVitA-3    BANGLADESH   8                    1                 0.8046115          NA          NA
6 months    kiGH5241-JiVitA-3    BANGLADESH   9                    1                 1.0957591          NA          NA
6 months    kiGH5241-JiVitA-3    BANGLADESH   10                   1                 1.1174242          NA          NA
6 months    kiGH5241-JiVitA-3    BANGLADESH   11                   1                 1.1753770          NA          NA
6 months    kiGH5241-JiVitA-3    BANGLADESH   12                   1                 0.9875015          NA          NA
9 months    ki1101329-Keneba     GAMBIA       1                    1                 1.0000000   1.0000000   1.0000000
9 months    ki1101329-Keneba     GAMBIA       2                    1                 1.6195569   0.6289327   4.1705014
9 months    ki1101329-Keneba     GAMBIA       3                    1                 1.4021164   0.5436996   3.6158392
9 months    ki1101329-Keneba     GAMBIA       4                    1                 1.1216931   0.3632745   3.4634837
9 months    ki1101329-Keneba     GAMBIA       5                    1                 1.3167702   0.4519338   3.8365878
9 months    ki1101329-Keneba     GAMBIA       6                    1                 2.0190476   0.7270038   5.6073341
9 months    ki1101329-Keneba     GAMBIA       7                    1                 3.0903790   1.2120686   7.8794567
9 months    ki1101329-Keneba     GAMBIA       8                    1                 1.4813665   0.5626734   3.9000360
9 months    ki1101329-Keneba     GAMBIA       9                    1                 1.0324675   0.3533636   3.0166918
9 months    ki1101329-Keneba     GAMBIA       10                   1                 1.6336692   0.6639757   4.0195376
9 months    ki1101329-Keneba     GAMBIA       11                   1                 1.4576012   0.5535508   3.8381328
9 months    ki1101329-Keneba     GAMBIA       12                   1                 0.9665653   0.3305936   2.8259727
9 months    ki1126311-ZVITAMBO   ZIMBABWE     1                    1                 1.0000000   1.0000000   1.0000000
9 months    ki1126311-ZVITAMBO   ZIMBABWE     2                    1                 1.3155701   0.8444701   2.0494799
9 months    ki1126311-ZVITAMBO   ZIMBABWE     3                    1                 0.7936766   0.4754878   1.3247922
9 months    ki1126311-ZVITAMBO   ZIMBABWE     4                    1                 0.8551079   0.5089225   1.4367796
9 months    ki1126311-ZVITAMBO   ZIMBABWE     5                    1                 1.0726033   0.6626262   1.7362395
9 months    ki1126311-ZVITAMBO   ZIMBABWE     6                    1                 1.1332255   0.7151546   1.7956955
9 months    ki1126311-ZVITAMBO   ZIMBABWE     7                    1                 1.0520418   0.6528890   1.6952222
9 months    ki1126311-ZVITAMBO   ZIMBABWE     8                    1                 0.8476779   0.5228844   1.3742192
9 months    ki1126311-ZVITAMBO   ZIMBABWE     9                    1                 0.9036935   0.5651418   1.4450567
9 months    ki1126311-ZVITAMBO   ZIMBABWE     10                   1                 0.9663359   0.5904196   1.5815954
9 months    ki1126311-ZVITAMBO   ZIMBABWE     11                   1                 1.0268817   0.6476331   1.6282152
9 months    ki1126311-ZVITAMBO   ZIMBABWE     12                   1                 1.2769819   0.8280333   1.9693443
12 months   ki1101329-Keneba     GAMBIA       1                    1                 1.0000000   1.0000000   1.0000000
12 months   ki1101329-Keneba     GAMBIA       2                    1                 0.6990871   0.3337267   1.4644401
12 months   ki1101329-Keneba     GAMBIA       3                    1                 0.4081832   0.1718657   0.9694402
12 months   ki1101329-Keneba     GAMBIA       4                    1                 0.6753731   0.2977595   1.5318699
12 months   ki1101329-Keneba     GAMBIA       5                    1                 0.4883094   0.1961467   1.2156515
12 months   ki1101329-Keneba     GAMBIA       6                    1                 0.7669492   0.3389387   1.7354495
12 months   ki1101329-Keneba     GAMBIA       7                    1                 1.1543367   0.5446875   2.4463445
12 months   ki1101329-Keneba     GAMBIA       8                    1                 0.5988971   0.2719234   1.3190394
12 months   ki1101329-Keneba     GAMBIA       9                    1                 0.8998580   0.4528008   1.7883016
12 months   ki1101329-Keneba     GAMBIA       10                   1                 0.7038889   0.3529697   1.4036887
12 months   ki1101329-Keneba     GAMBIA       11                   1                 0.9154624   0.4607798   1.8188110
12 months   ki1101329-Keneba     GAMBIA       12                   1                 0.7681327   0.3672170   1.6067553
12 months   ki1126311-ZVITAMBO   ZIMBABWE     1                    1                 1.0000000   1.0000000   1.0000000
12 months   ki1126311-ZVITAMBO   ZIMBABWE     2                    1                 1.1107968   0.7277891   1.6953668
12 months   ki1126311-ZVITAMBO   ZIMBABWE     3                    1                 1.2619048   0.8549578   1.8625523
12 months   ki1126311-ZVITAMBO   ZIMBABWE     4                    1                 1.0815653   0.7063592   1.6560745
12 months   ki1126311-ZVITAMBO   ZIMBABWE     5                    1                 0.7293431   0.4508509   1.1798609
12 months   ki1126311-ZVITAMBO   ZIMBABWE     6                    1                 1.3301363   0.8985930   1.9689253
12 months   ki1126311-ZVITAMBO   ZIMBABWE     7                    1                 1.2258119   0.8214427   1.8292387
12 months   ki1126311-ZVITAMBO   ZIMBABWE     8                    1                 0.7165973   0.4545909   1.1296129
12 months   ki1126311-ZVITAMBO   ZIMBABWE     9                    1                 0.7142857   0.4531145   1.1259938
12 months   ki1126311-ZVITAMBO   ZIMBABWE     10                   1                 0.9523810   0.6055286   1.4979136
12 months   ki1126311-ZVITAMBO   ZIMBABWE     11                   1                 0.7200929   0.4525216   1.1458765
12 months   ki1126311-ZVITAMBO   ZIMBABWE     12                   1                 0.9099804   0.5915901   1.3997266
12 months   kiGH5241-JiVitA-3    BANGLADESH   1                    1                 1.0000000          NA          NA
12 months   kiGH5241-JiVitA-3    BANGLADESH   2                    1                 0.8757001          NA          NA
12 months   kiGH5241-JiVitA-3    BANGLADESH   3                    1                 0.8101190          NA          NA
12 months   kiGH5241-JiVitA-3    BANGLADESH   4                    1                 0.6559971          NA          NA
12 months   kiGH5241-JiVitA-3    BANGLADESH   5                    1                 0.6721718          NA          NA
12 months   kiGH5241-JiVitA-3    BANGLADESH   6                    1                 0.8059270          NA          NA
12 months   kiGH5241-JiVitA-3    BANGLADESH   7                    1                 0.6271205          NA          NA
12 months   kiGH5241-JiVitA-3    BANGLADESH   8                    1                 0.5903173          NA          NA
12 months   kiGH5241-JiVitA-3    BANGLADESH   9                    1                 0.7314049          NA          NA
12 months   kiGH5241-JiVitA-3    BANGLADESH   10                   1                 0.9380602          NA          NA
12 months   kiGH5241-JiVitA-3    BANGLADESH   11                   1                 1.0550026          NA          NA
12 months   kiGH5241-JiVitA-3    BANGLADESH   12                   1                 1.0743775          NA          NA
18 months   ki1101329-Keneba     GAMBIA       1                    1                 1.0000000   1.0000000   1.0000000
18 months   ki1101329-Keneba     GAMBIA       2                    1                 1.7191011   0.8516250   3.4701996
18 months   ki1101329-Keneba     GAMBIA       3                    1                 1.6069652   0.8010802   3.2235688
18 months   ki1101329-Keneba     GAMBIA       4                    1                 1.2500000   0.5555813   2.8123697
18 months   ki1101329-Keneba     GAMBIA       5                    1                 1.6370370   0.7701373   3.4797564
18 months   ki1101329-Keneba     GAMBIA       6                    1                 2.2972973   1.1146157   4.7348827
18 months   ki1101329-Keneba     GAMBIA       7                    1                 2.1011236   0.9636199   4.5813918
18 months   ki1101329-Keneba     GAMBIA       8                    1                 1.3246753   0.6118018   2.8681913
18 months   ki1101329-Keneba     GAMBIA       9                    1                 1.2142857   0.5600646   2.6327139
18 months   ki1101329-Keneba     GAMBIA       10                   1                 1.3894231   0.6807280   2.8359293
18 months   ki1101329-Keneba     GAMBIA       11                   1                 1.5740741   0.7580138   3.2686863
18 months   ki1101329-Keneba     GAMBIA       12                   1                 1.4406780   0.6928224   2.9957938
18 months   ki1126311-ZVITAMBO   ZIMBABWE     1                    1                 1.0000000   1.0000000   1.0000000
18 months   ki1126311-ZVITAMBO   ZIMBABWE     2                    1                 0.9293478   0.6348352   1.3604907
18 months   ki1126311-ZVITAMBO   ZIMBABWE     3                    1                 0.6562500   0.4099696   1.0504780
18 months   ki1126311-ZVITAMBO   ZIMBABWE     4                    1                 0.8540146   0.5556290   1.3126401
18 months   ki1126311-ZVITAMBO   ZIMBABWE     5                    1                 0.9230769   0.5953806   1.4311366
18 months   ki1126311-ZVITAMBO   ZIMBABWE     6                    1                 0.7905405   0.5130897   1.2180216
18 months   ki1126311-ZVITAMBO   ZIMBABWE     7                    1                 0.9672897   0.6211483   1.5063221
18 months   ki1126311-ZVITAMBO   ZIMBABWE     8                    1                 0.5454545   0.3225198   0.9224880
18 months   ki1126311-ZVITAMBO   ZIMBABWE     9                    1                 0.4834711   0.2724619   0.8578970
18 months   ki1126311-ZVITAMBO   ZIMBABWE     10                   1                 0.5625000   0.3184431   0.9936039
18 months   ki1126311-ZVITAMBO   ZIMBABWE     11                   1                 0.7922535   0.5113631   1.2274362
18 months   ki1126311-ZVITAMBO   ZIMBABWE     12                   1                 0.7275449   0.4735867   1.1176868
24 months   ki1101329-Keneba     GAMBIA       1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1101329-Keneba     GAMBIA       2                    1                 1.5359281   0.7636187   3.0893368
24 months   ki1101329-Keneba     GAMBIA       3                    1                 1.0058824   0.4649438   2.1761756
24 months   ki1101329-Keneba     GAMBIA       4                    1                 1.1250000   0.4898799   2.5835412
24 months   ki1101329-Keneba     GAMBIA       5                    1                 0.5840165   0.2111459   1.6153529
24 months   ki1101329-Keneba     GAMBIA       6                    1                 0.9293478   0.3605242   2.3956430
24 months   ki1101329-Keneba     GAMBIA       7                    1                 0.8796296   0.3205343   2.4139332
24 months   ki1101329-Keneba     GAMBIA       8                    1                 0.8117089   0.3514741   1.8745943
24 months   ki1101329-Keneba     GAMBIA       9                    1                 1.4339623   0.7001807   2.9367389
24 months   ki1101329-Keneba     GAMBIA       10                   1                 0.9262500   0.4341248   1.9762500
24 months   ki1101329-Keneba     GAMBIA       11                   1                 1.4148936   0.6761996   2.9605519
24 months   ki1101329-Keneba     GAMBIA       12                   1                 1.7100000   0.8517524   3.4330399
24 months   kiGH5241-JiVitA-3    BANGLADESH   1                    1                 1.0000000          NA          NA
24 months   kiGH5241-JiVitA-3    BANGLADESH   2                    1                 1.2202166          NA          NA
24 months   kiGH5241-JiVitA-3    BANGLADESH   3                    1                 0.8229156          NA          NA
24 months   kiGH5241-JiVitA-3    BANGLADESH   4                    1                 0.7571273          NA          NA
24 months   kiGH5241-JiVitA-3    BANGLADESH   5                    1                 1.0791826          NA          NA
24 months   kiGH5241-JiVitA-3    BANGLADESH   6                    1                 0.8298778          NA          NA
24 months   kiGH5241-JiVitA-3    BANGLADESH   7                    1                 0.6696295          NA          NA
24 months   kiGH5241-JiVitA-3    BANGLADESH   8                    1                 0.8401735          NA          NA
24 months   kiGH5241-JiVitA-3    BANGLADESH   9                    1                 0.6475096          NA          NA
24 months   kiGH5241-JiVitA-3    BANGLADESH   10                   1                 0.7724940          NA          NA
24 months   kiGH5241-JiVitA-3    BANGLADESH   11                   1                 1.1343775          NA          NA
24 months   kiGH5241-JiVitA-3    BANGLADESH   12                   1                 1.0237651          NA          NA


### Parameter: PAR


agecat      studyid              country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1126311-ZVITAMBO   ZIMBABWE     1                    NA                -0.0091882   -0.0191733   0.0007968
Birth       kiGH5241-JiVitA-3    BANGLADESH   1                    NA                -0.0263722           NA          NA
3 months    ki1126311-ZVITAMBO   ZIMBABWE     1                    NA                 0.0125064   -0.0003695   0.0253824
3 months    kiGH5241-JiVitA-3    BANGLADESH   1                    NA                 0.0027685           NA          NA
6 months    ki1126311-ZVITAMBO   ZIMBABWE     1                    NA                 0.0051879   -0.0073096   0.0176855
6 months    kiGH5241-JiVitA-3    BANGLADESH   1                    NA                 0.0003219           NA          NA
9 months    ki1101329-Keneba     GAMBIA       1                    NA                 0.0143928   -0.0089325   0.0377182
9 months    ki1126311-ZVITAMBO   ZIMBABWE     1                    NA                 0.0009578   -0.0133163   0.0152318
12 months   ki1101329-Keneba     GAMBIA       1                    NA                -0.0226894   -0.0616032   0.0162245
12 months   ki1126311-ZVITAMBO   ZIMBABWE     1                    NA                -0.0015099   -0.0203421   0.0173223
12 months   kiGH5241-JiVitA-3    BANGLADESH   1                    NA                -0.0227507           NA          NA
18 months   ki1101329-Keneba     GAMBIA       1                    NA                 0.0290600   -0.0022766   0.0603965
18 months   ki1126311-ZVITAMBO   ZIMBABWE     1                    NA                -0.0479532   -0.1004493   0.0045428
24 months   ki1101329-Keneba     GAMBIA       1                    NA                 0.0092449   -0.0273449   0.0458347
24 months   kiGH5241-JiVitA-3    BANGLADESH   1                    NA                -0.0162284           NA          NA


### Parameter: PAF


agecat      studyid              country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1126311-ZVITAMBO   ZIMBABWE     1                    NA                -0.2881478   -0.6413201   -0.0109696
Birth       kiGH5241-JiVitA-3    BANGLADESH   1                    NA                -0.2345108           NA           NA
3 months    ki1126311-ZVITAMBO   ZIMBABWE     1                    NA                 0.2185773   -0.0413262    0.4136117
3 months    kiGH5241-JiVitA-3    BANGLADESH   1                    NA                 0.0332355           NA           NA
6 months    ki1126311-ZVITAMBO   ZIMBABWE     1                    NA                 0.1243757   -0.2325276    0.3779305
6 months    kiGH5241-JiVitA-3    BANGLADESH   1                    NA                 0.0048773           NA           NA
9 months    ki1101329-Keneba     GAMBIA       1                    NA                 0.3035714   -0.4048678    0.6547627
9 months    ki1126311-ZVITAMBO   ZIMBABWE     1                    NA                 0.0199208   -0.3268386    0.2760573
12 months   ki1101329-Keneba     GAMBIA       1                    NA                -0.3453038   -1.0857477    0.1322812
12 months   ki1126311-ZVITAMBO   ZIMBABWE     1                    NA                -0.0227971   -0.3505801    0.2254336
12 months   kiGH5241-JiVitA-3    BANGLADESH   1                    NA                -0.1999840           NA           NA
18 months   ki1101329-Keneba     GAMBIA       1                    NA                 0.3306648   -0.1355259    0.6054607
18 months   ki1126311-ZVITAMBO   ZIMBABWE     1                    NA                -0.2751678   -0.6141764   -0.0073576
24 months   ki1101329-Keneba     GAMBIA       1                    NA                 0.1164042   -0.4877795    0.4752303
24 months   kiGH5241-JiVitA-3    BANGLADESH   1                    NA                -0.1044507           NA           NA
