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

**Outcome Variable:** stunted

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
Birth       ki0047075b-MAL-ED          BANGLADESH                     1       257     19     16      3
Birth       ki0047075b-MAL-ED          BANGLADESH                     2       257     24     18      6
Birth       ki0047075b-MAL-ED          BANGLADESH                     3       257     28     20      8
Birth       ki0047075b-MAL-ED          BANGLADESH                     4       257     21     21      0
Birth       ki0047075b-MAL-ED          BANGLADESH                     5       257     21     16      5
Birth       ki0047075b-MAL-ED          BANGLADESH                     6       257      9      5      4
Birth       ki0047075b-MAL-ED          BANGLADESH                     7       257     22     17      5
Birth       ki0047075b-MAL-ED          BANGLADESH                     8       257     25     20      5
Birth       ki0047075b-MAL-ED          BANGLADESH                     9       257     22     20      2
Birth       ki0047075b-MAL-ED          BANGLADESH                     10      257     24     19      5
Birth       ki0047075b-MAL-ED          BANGLADESH                     11      257     15     13      2
Birth       ki0047075b-MAL-ED          BANGLADESH                     12      257     27     25      2
Birth       ki0047075b-MAL-ED          BRAZIL                         1       191      9      9      0
Birth       ki0047075b-MAL-ED          BRAZIL                         2       191     21     18      3
Birth       ki0047075b-MAL-ED          BRAZIL                         3       191     18     17      1
Birth       ki0047075b-MAL-ED          BRAZIL                         4       191      8      8      0
Birth       ki0047075b-MAL-ED          BRAZIL                         5       191     19     16      3
Birth       ki0047075b-MAL-ED          BRAZIL                         6       191      7      6      1
Birth       ki0047075b-MAL-ED          BRAZIL                         7       191     17     13      4
Birth       ki0047075b-MAL-ED          BRAZIL                         8       191     18     16      2
Birth       ki0047075b-MAL-ED          BRAZIL                         9       191     28     24      4
Birth       ki0047075b-MAL-ED          BRAZIL                         10      191     18     18      0
Birth       ki0047075b-MAL-ED          BRAZIL                         11      191     15     15      0
Birth       ki0047075b-MAL-ED          BRAZIL                         12      191     13     10      3
Birth       ki0047075b-MAL-ED          INDIA                          1       206     16     15      1
Birth       ki0047075b-MAL-ED          INDIA                          2       206     16     16      0
Birth       ki0047075b-MAL-ED          INDIA                          3       206     20     18      2
Birth       ki0047075b-MAL-ED          INDIA                          4       206     15     13      2
Birth       ki0047075b-MAL-ED          INDIA                          5       206      7      6      1
Birth       ki0047075b-MAL-ED          INDIA                          6       206     17     16      1
Birth       ki0047075b-MAL-ED          INDIA                          7       206     21     16      5
Birth       ki0047075b-MAL-ED          INDIA                          8       206     17     13      4
Birth       ki0047075b-MAL-ED          INDIA                          9       206     19     14      5
Birth       ki0047075b-MAL-ED          INDIA                          10      206     24     19      5
Birth       ki0047075b-MAL-ED          INDIA                          11      206     20     16      4
Birth       ki0047075b-MAL-ED          INDIA                          12      206     14     11      3
Birth       ki0047075b-MAL-ED          NEPAL                          1       173     17     13      4
Birth       ki0047075b-MAL-ED          NEPAL                          2       173     14     12      2
Birth       ki0047075b-MAL-ED          NEPAL                          3       173     12     11      1
Birth       ki0047075b-MAL-ED          NEPAL                          4       173     15     14      1
Birth       ki0047075b-MAL-ED          NEPAL                          5       173     18     18      0
Birth       ki0047075b-MAL-ED          NEPAL                          6       173     13     12      1
Birth       ki0047075b-MAL-ED          NEPAL                          7       173     17     15      2
Birth       ki0047075b-MAL-ED          NEPAL                          8       173     14     12      2
Birth       ki0047075b-MAL-ED          NEPAL                          9       173      9      8      1
Birth       ki0047075b-MAL-ED          NEPAL                          10      173     16     16      0
Birth       ki0047075b-MAL-ED          NEPAL                          11      173     18     15      3
Birth       ki0047075b-MAL-ED          NEPAL                          12      173     10      9      1
Birth       ki0047075b-MAL-ED          PERU                           1       287     37     32      5
Birth       ki0047075b-MAL-ED          PERU                           2       287     23     19      4
Birth       ki0047075b-MAL-ED          PERU                           3       287     22     19      3
Birth       ki0047075b-MAL-ED          PERU                           4       287     21     18      3
Birth       ki0047075b-MAL-ED          PERU                           5       287     25     23      2
Birth       ki0047075b-MAL-ED          PERU                           6       287     19     17      2
Birth       ki0047075b-MAL-ED          PERU                           7       287     23     21      2
Birth       ki0047075b-MAL-ED          PERU                           8       287     19     19      0
Birth       ki0047075b-MAL-ED          PERU                           9       287     22     22      0
Birth       ki0047075b-MAL-ED          PERU                           10      287     24     21      3
Birth       ki0047075b-MAL-ED          PERU                           11      287     31     24      7
Birth       ki0047075b-MAL-ED          PERU                           12      287     21     18      3
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1       262     28     26      2
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   2       262     24     23      1
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   3       262     18     16      2
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   4       262     13     12      1
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   5       262     13     13      0
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   6       262     18     15      3
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   7       262     22     20      2
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   8       262     10      9      1
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   9       262     21     19      2
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   10      262     28     24      4
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   11      262     27     20      7
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   12      262     40     37      3
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1       123     10      9      1
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2       123      8      7      1
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3       123      7      6      1
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4       123      4      3      1
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5       123      8      6      2
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6       123     11     10      1
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7       123     14     13      1
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8       123      7      6      1
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9       123     16     11      5
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10      123      9      8      1
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11      123     13     12      1
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12      123     16     14      2
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1        90      9      7      2
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          2        90      1      0      1
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          3        90      8      7      1
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          4        90      9      7      2
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          5        90     11     10      1
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          6        90      9      8      1
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          7        90      7      7      0
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          8        90      4      3      1
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          9        90      7      5      2
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          10       90     10      8      2
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          11       90     11     10      1
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          12       90      4      2      2
Birth       ki1000108-IRC              INDIA                          1       388     34     27      7
Birth       ki1000108-IRC              INDIA                          2       388     25     23      2
Birth       ki1000108-IRC              INDIA                          3       388     27     23      4
Birth       ki1000108-IRC              INDIA                          4       388     22     20      2
Birth       ki1000108-IRC              INDIA                          5       388     21     20      1
Birth       ki1000108-IRC              INDIA                          6       388     34     30      4
Birth       ki1000108-IRC              INDIA                          7       388     35     31      4
Birth       ki1000108-IRC              INDIA                          8       388     39     36      3
Birth       ki1000108-IRC              INDIA                          9       388     25     23      2
Birth       ki1000108-IRC              INDIA                          10      388     37     33      4
Birth       ki1000108-IRC              INDIA                          11      388     40     34      6
Birth       ki1000108-IRC              INDIA                          12      388     49     43      6
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
Birth       ki1000109-EE               PAKISTAN                       12        2      2      1      1
Birth       ki1000109-ResPak           PAKISTAN                       1         7      1      1      0
Birth       ki1000109-ResPak           PAKISTAN                       2         7      0      0      0
Birth       ki1000109-ResPak           PAKISTAN                       3         7      0      0      0
Birth       ki1000109-ResPak           PAKISTAN                       4         7      2      0      2
Birth       ki1000109-ResPak           PAKISTAN                       5         7      1      1      0
Birth       ki1000109-ResPak           PAKISTAN                       6         7      2      2      0
Birth       ki1000109-ResPak           PAKISTAN                       7         7      1      1      0
Birth       ki1000109-ResPak           PAKISTAN                       8         7      0      0      0
Birth       ki1000109-ResPak           PAKISTAN                       9         7      0      0      0
Birth       ki1000109-ResPak           PAKISTAN                       10        7      0      0      0
Birth       ki1000109-ResPak           PAKISTAN                       11        7      0      0      0
Birth       ki1000109-ResPak           PAKISTAN                       12        7      0      0      0
Birth       ki1000304b-SAS-CompFeed    INDIA                          1        70      7      5      2
Birth       ki1000304b-SAS-CompFeed    INDIA                          2        70      6      4      2
Birth       ki1000304b-SAS-CompFeed    INDIA                          3        70      5      2      3
Birth       ki1000304b-SAS-CompFeed    INDIA                          4        70      9      9      0
Birth       ki1000304b-SAS-CompFeed    INDIA                          5        70      9      7      2
Birth       ki1000304b-SAS-CompFeed    INDIA                          6        70      5      3      2
Birth       ki1000304b-SAS-CompFeed    INDIA                          7        70      1      1      0
Birth       ki1000304b-SAS-CompFeed    INDIA                          8        70      0      0      0
Birth       ki1000304b-SAS-CompFeed    INDIA                          9        70      0      0      0
Birth       ki1000304b-SAS-CompFeed    INDIA                          10       70     11     10      1
Birth       ki1000304b-SAS-CompFeed    INDIA                          11       70      9      8      1
Birth       ki1000304b-SAS-CompFeed    INDIA                          12       70      8      4      4
Birth       ki1017093-NIH-Birth        BANGLADESH                     1        28     10      9      1
Birth       ki1017093-NIH-Birth        BANGLADESH                     2        28      4      4      0
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
Birth       ki1114097-CMIN             BANGLADESH                     1        13      1      0      1
Birth       ki1114097-CMIN             BANGLADESH                     2        13      2      2      0
Birth       ki1114097-CMIN             BANGLADESH                     3        13      0      0      0
Birth       ki1114097-CMIN             BANGLADESH                     4        13      1      0      1
Birth       ki1114097-CMIN             BANGLADESH                     5        13      1      1      0
Birth       ki1114097-CMIN             BANGLADESH                     6        13      0      0      0
Birth       ki1114097-CMIN             BANGLADESH                     7        13      0      0      0
Birth       ki1114097-CMIN             BANGLADESH                     8        13      3      0      3
Birth       ki1114097-CMIN             BANGLADESH                     9        13      1      1      0
Birth       ki1114097-CMIN             BANGLADESH                     10       13      1      1      0
Birth       ki1114097-CMIN             BANGLADESH                     11       13      3      2      1
Birth       ki1114097-CMIN             BANGLADESH                     12       13      0      0      0
Birth       ki1114097-CMIN             BRAZIL                         1       115     13     13      0
Birth       ki1114097-CMIN             BRAZIL                         2       115      7      7      0
Birth       ki1114097-CMIN             BRAZIL                         3       115     13     12      1
Birth       ki1114097-CMIN             BRAZIL                         4       115      9      9      0
Birth       ki1114097-CMIN             BRAZIL                         5       115      5      5      0
Birth       ki1114097-CMIN             BRAZIL                         6       115      6      6      0
Birth       ki1114097-CMIN             BRAZIL                         7       115      4      4      0
Birth       ki1114097-CMIN             BRAZIL                         8       115     13     12      1
Birth       ki1114097-CMIN             BRAZIL                         9       115      8      8      0
Birth       ki1114097-CMIN             BRAZIL                         10      115     16     14      2
Birth       ki1114097-CMIN             BRAZIL                         11      115     11     11      0
Birth       ki1114097-CMIN             BRAZIL                         12      115     10      9      1
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
Birth       ki1119695-PROBIT           BELARUS                        1      6779    433    433      0
Birth       ki1119695-PROBIT           BELARUS                        2      6779    413    412      1
Birth       ki1119695-PROBIT           BELARUS                        3      6779    505    501      4
Birth       ki1119695-PROBIT           BELARUS                        4      6779    467    466      1
Birth       ki1119695-PROBIT           BELARUS                        5      6779    483    483      0
Birth       ki1119695-PROBIT           BELARUS                        6      6779    521    519      2
Birth       ki1119695-PROBIT           BELARUS                        7      6779    612    611      1
Birth       ki1119695-PROBIT           BELARUS                        8      6779    679    678      1
Birth       ki1119695-PROBIT           BELARUS                        9      6779    619    616      3
Birth       ki1119695-PROBIT           BELARUS                        10     6779    710    705      5
Birth       ki1119695-PROBIT           BELARUS                        11     6779    620    617      3
Birth       ki1119695-PROBIT           BELARUS                        12     6779    717    717      0
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1     13805   1344   1171    173
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2     13805   1036    882    154
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3     13805   1140   1004    136
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       4     13805   1007    896    111
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       5     13805   1000    871    129
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       6     13805   1132   1003    129
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       7     13805   1176   1055    121
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       8     13805   1226   1135     91
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       9     13805   1313   1230     83
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       10    13805   1042    957     85
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       11    13805   1134   1039     95
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       12    13805   1255   1131    124
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1      9746    932    589    343
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2      9746    729    474    255
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3      9746    905    610    295
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4      9746    662    471    191
Birth       kiGH5241-JiVitA-3          BANGLADESH                     5      9746    500    353    147
Birth       kiGH5241-JiVitA-3          BANGLADESH                     6      9746    503    344    159
Birth       kiGH5241-JiVitA-3          BANGLADESH                     7      9746    528    375    153
Birth       kiGH5241-JiVitA-3          BANGLADESH                     8      9746    779    522    257
Birth       kiGH5241-JiVitA-3          BANGLADESH                     9      9746    970    668    302
Birth       kiGH5241-JiVitA-3          BANGLADESH                     10     9746   1068    686    382
Birth       kiGH5241-JiVitA-3          BANGLADESH                     11     9746   1089    660    429
Birth       kiGH5241-JiVitA-3          BANGLADESH                     12     9746   1081    668    413
Birth       kiGH5241-JiVitA-4          BANGLADESH                     1       224      0      0      0
Birth       kiGH5241-JiVitA-4          BANGLADESH                     2       224     33     25      8
Birth       kiGH5241-JiVitA-4          BANGLADESH                     3       224     48     32     16
Birth       kiGH5241-JiVitA-4          BANGLADESH                     4       224     35     23     12
Birth       kiGH5241-JiVitA-4          BANGLADESH                     5       224     39     26     13
Birth       kiGH5241-JiVitA-4          BANGLADESH                     6       224     31     18     13
Birth       kiGH5241-JiVitA-4          BANGLADESH                     7       224     24     20      4
Birth       kiGH5241-JiVitA-4          BANGLADESH                     8       224      6      5      1
Birth       kiGH5241-JiVitA-4          BANGLADESH                     9       224      5      3      2
Birth       kiGH5241-JiVitA-4          BANGLADESH                     10      224      3      3      0
Birth       kiGH5241-JiVitA-4          BANGLADESH                     11      224      0      0      0
Birth       kiGH5241-JiVitA-4          BANGLADESH                     12      224      0      0      0
3 months    ki0047075b-MAL-ED          BANGLADESH                     1       250     19     17      2
3 months    ki0047075b-MAL-ED          BANGLADESH                     2       250     21     14      7
3 months    ki0047075b-MAL-ED          BANGLADESH                     3       250     26     18      8
3 months    ki0047075b-MAL-ED          BANGLADESH                     4       250     22     22      0
3 months    ki0047075b-MAL-ED          BANGLADESH                     5       250     21     18      3
3 months    ki0047075b-MAL-ED          BANGLADESH                     6       250      8      6      2
3 months    ki0047075b-MAL-ED          BANGLADESH                     7       250     21     17      4
3 months    ki0047075b-MAL-ED          BANGLADESH                     8       250     24     20      4
3 months    ki0047075b-MAL-ED          BANGLADESH                     9       250     23     20      3
3 months    ki0047075b-MAL-ED          BANGLADESH                     10      250     22     16      6
3 months    ki0047075b-MAL-ED          BANGLADESH                     11      250     15     13      2
3 months    ki0047075b-MAL-ED          BANGLADESH                     12      250     28     26      2
3 months    ki0047075b-MAL-ED          BRAZIL                         1       225     13     12      1
3 months    ki0047075b-MAL-ED          BRAZIL                         2       225     26     25      1
3 months    ki0047075b-MAL-ED          BRAZIL                         3       225     19     19      0
3 months    ki0047075b-MAL-ED          BRAZIL                         4       225     11     10      1
3 months    ki0047075b-MAL-ED          BRAZIL                         5       225     23     22      1
3 months    ki0047075b-MAL-ED          BRAZIL                         6       225      8      8      0
3 months    ki0047075b-MAL-ED          BRAZIL                         7       225     17     15      2
3 months    ki0047075b-MAL-ED          BRAZIL                         8       225     20     18      2
3 months    ki0047075b-MAL-ED          BRAZIL                         9       225     29     26      3
3 months    ki0047075b-MAL-ED          BRAZIL                         10      225     22     20      2
3 months    ki0047075b-MAL-ED          BRAZIL                         11      225     19     19      0
3 months    ki0047075b-MAL-ED          BRAZIL                         12      225     18     17      1
3 months    ki0047075b-MAL-ED          INDIA                          1       241     20     15      5
3 months    ki0047075b-MAL-ED          INDIA                          2       241     19     18      1
3 months    ki0047075b-MAL-ED          INDIA                          3       241     21     19      2
3 months    ki0047075b-MAL-ED          INDIA                          4       241     16     13      3
3 months    ki0047075b-MAL-ED          INDIA                          5       241      8      8      0
3 months    ki0047075b-MAL-ED          INDIA                          6       241     17     17      0
3 months    ki0047075b-MAL-ED          INDIA                          7       241     25     20      5
3 months    ki0047075b-MAL-ED          INDIA                          8       241     23     21      2
3 months    ki0047075b-MAL-ED          INDIA                          9       241     21     16      5
3 months    ki0047075b-MAL-ED          INDIA                          10      241     27     21      6
3 months    ki0047075b-MAL-ED          INDIA                          11      241     25     21      4
3 months    ki0047075b-MAL-ED          INDIA                          12      241     19     16      3
3 months    ki0047075b-MAL-ED          NEPAL                          1       236     20     19      1
3 months    ki0047075b-MAL-ED          NEPAL                          2       236     19     18      1
3 months    ki0047075b-MAL-ED          NEPAL                          3       236     16     15      1
3 months    ki0047075b-MAL-ED          NEPAL                          4       236     20     20      0
3 months    ki0047075b-MAL-ED          NEPAL                          5       236     21     20      1
3 months    ki0047075b-MAL-ED          NEPAL                          6       236     21     21      0
3 months    ki0047075b-MAL-ED          NEPAL                          7       236     17     16      1
3 months    ki0047075b-MAL-ED          NEPAL                          8       236     24     22      2
3 months    ki0047075b-MAL-ED          NEPAL                          9       236     14     12      2
3 months    ki0047075b-MAL-ED          NEPAL                          10      236     22     21      1
3 months    ki0047075b-MAL-ED          NEPAL                          11      236     24     23      1
3 months    ki0047075b-MAL-ED          NEPAL                          12      236     18     16      2
3 months    ki0047075b-MAL-ED          PERU                           1       291     39     31      8
3 months    ki0047075b-MAL-ED          PERU                           2       291     24     15      9
3 months    ki0047075b-MAL-ED          PERU                           3       291     21     17      4
3 months    ki0047075b-MAL-ED          PERU                           4       291     20     17      3
3 months    ki0047075b-MAL-ED          PERU                           5       291     25     14     11
3 months    ki0047075b-MAL-ED          PERU                           6       291     19     13      6
3 months    ki0047075b-MAL-ED          PERU                           7       291     24     17      7
3 months    ki0047075b-MAL-ED          PERU                           8       291     18     15      3
3 months    ki0047075b-MAL-ED          PERU                           9       291     23     21      2
3 months    ki0047075b-MAL-ED          PERU                           10      291     24     20      4
3 months    ki0047075b-MAL-ED          PERU                           11      291     32     20     12
3 months    ki0047075b-MAL-ED          PERU                           12      291     22     18      4
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1       281     40     29     11
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2       281     23     18      5
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3       281     17     15      2
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4       281     13     13      0
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   5       281     14     12      2
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   6       281     18     14      4
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   7       281     26     21      5
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   8       281     12      9      3
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   9       281     23     21      2
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   10      281     29     25      4
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   11      281     26     18      8
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   12      281     40     32      8
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1       254     22     19      3
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2       254     29     27      2
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3       254     19     15      4
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4       254      8      7      1
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5       254     19     15      4
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6       254     20     17      3
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7       254     23     18      5
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8       254     12      9      3
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9       254     23     20      3
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10      254     22     18      4
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11      254     27     23      4
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12      254     30     23      7
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          1       362     33     23     10
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          2       362     15     12      3
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          3       362     31     29      2
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          4       362     42     35      7
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          5       362     36     26     10
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          6       362     36     27      9
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          7       362     37     26     11
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          8       362     16     12      4
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          9       362     21     16      5
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          10      362     29     22      7
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          11      362     41     31     10
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          12      362     25     13     12
3 months    ki1000108-IRC              INDIA                          1       407     34     25      9
3 months    ki1000108-IRC              INDIA                          2       407     27     17     10
3 months    ki1000108-IRC              INDIA                          3       407     29     20      9
3 months    ki1000108-IRC              INDIA                          4       407     22     17      5
3 months    ki1000108-IRC              INDIA                          5       407     21     14      7
3 months    ki1000108-IRC              INDIA                          6       407     37     32      5
3 months    ki1000108-IRC              INDIA                          7       407     36     32      4
3 months    ki1000108-IRC              INDIA                          8       407     44     42      2
3 months    ki1000108-IRC              INDIA                          9       407     27     20      7
3 months    ki1000108-IRC              INDIA                          10      407     37     31      6
3 months    ki1000108-IRC              INDIA                          11      407     41     32      9
3 months    ki1000108-IRC              INDIA                          12      407     52     34     18
3 months    ki1000109-EE               PAKISTAN                       1       376     94     31     63
3 months    ki1000109-EE               PAKISTAN                       2       376     65     33     32
3 months    ki1000109-EE               PAKISTAN                       3       376     42     24     18
3 months    ki1000109-EE               PAKISTAN                       4       376     16      5     11
3 months    ki1000109-EE               PAKISTAN                       5       376      0      0      0
3 months    ki1000109-EE               PAKISTAN                       6       376      0      0      0
3 months    ki1000109-EE               PAKISTAN                       7       376      0      0      0
3 months    ki1000109-EE               PAKISTAN                       8       376      0      0      0
3 months    ki1000109-EE               PAKISTAN                       9       376      0      0      0
3 months    ki1000109-EE               PAKISTAN                       10      376      4      2      2
3 months    ki1000109-EE               PAKISTAN                       11      376     70     25     45
3 months    ki1000109-EE               PAKISTAN                       12      376     85     39     46
3 months    ki1000109-ResPak           PAKISTAN                       1       260      9      6      3
3 months    ki1000109-ResPak           PAKISTAN                       2       260     11      8      3
3 months    ki1000109-ResPak           PAKISTAN                       3       260     17      7     10
3 months    ki1000109-ResPak           PAKISTAN                       4       260     31     20     11
3 months    ki1000109-ResPak           PAKISTAN                       5       260     35     20     15
3 months    ki1000109-ResPak           PAKISTAN                       6       260     49     26     23
3 months    ki1000109-ResPak           PAKISTAN                       7       260     35     23     12
3 months    ki1000109-ResPak           PAKISTAN                       8       260     35     20     15
3 months    ki1000109-ResPak           PAKISTAN                       9       260     24     15      9
3 months    ki1000109-ResPak           PAKISTAN                       10      260      8      7      1
3 months    ki1000109-ResPak           PAKISTAN                       11      260      4      1      3
3 months    ki1000109-ResPak           PAKISTAN                       12      260      2      1      1
3 months    ki1000304b-SAS-CompFeed    INDIA                          1       412     52     41     11
3 months    ki1000304b-SAS-CompFeed    INDIA                          2       412     35     28      7
3 months    ki1000304b-SAS-CompFeed    INDIA                          3       412     36     31      5
3 months    ki1000304b-SAS-CompFeed    INDIA                          4       412     29     24      5
3 months    ki1000304b-SAS-CompFeed    INDIA                          5       412     33     24      9
3 months    ki1000304b-SAS-CompFeed    INDIA                          6       412     45     30     15
3 months    ki1000304b-SAS-CompFeed    INDIA                          7       412      6      4      2
3 months    ki1000304b-SAS-CompFeed    INDIA                          8       412      0      0      0
3 months    ki1000304b-SAS-CompFeed    INDIA                          9       412      0      0      0
3 months    ki1000304b-SAS-CompFeed    INDIA                          10      412     61     40     21
3 months    ki1000304b-SAS-CompFeed    INDIA                          11      412     42     33      9
3 months    ki1000304b-SAS-CompFeed    INDIA                          12      412     73     47     26
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          1        97     14      8      6
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          2        97      9      4      5
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          3        97      9      3      6
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          4        97      7      5      2
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          5        97      8      5      3
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          6        97      8      7      1
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          7        97      5      4      1
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          8        97      0      0      0
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          9        97      3      2      1
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          10       97      6      3      3
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          11       97     12      8      4
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          12       97     16     10      6
3 months    ki1017093-NIH-Birth        BANGLADESH                     1       570     60     43     17
3 months    ki1017093-NIH-Birth        BANGLADESH                     2       570     52     41     11
3 months    ki1017093-NIH-Birth        BANGLADESH                     3       570     52     45      7
3 months    ki1017093-NIH-Birth        BANGLADESH                     4       570     48     41      7
3 months    ki1017093-NIH-Birth        BANGLADESH                     5       570     44     35      9
3 months    ki1017093-NIH-Birth        BANGLADESH                     6       570     41     31     10
3 months    ki1017093-NIH-Birth        BANGLADESH                     7       570     43     30     13
3 months    ki1017093-NIH-Birth        BANGLADESH                     8       570     40     30     10
3 months    ki1017093-NIH-Birth        BANGLADESH                     9       570     30     24      6
3 months    ki1017093-NIH-Birth        BANGLADESH                     10      570     56     38     18
3 months    ki1017093-NIH-Birth        BANGLADESH                     11      570     52     38     14
3 months    ki1017093-NIH-Birth        BANGLADESH                     12      570     52     44      8
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1      2292    156    147      9
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2      2292    172    159     13
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3      2292    168    157     11
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4      2292    172    161     11
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5      2292    178    169      9
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6      2292    158    148     10
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7      2292    200    191      9
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8      2292    226    207     19
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9      2292    209    196     13
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10     2292    238    226     12
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11     2292    213    200     13
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12     2292    202    194      8
3 months    ki1112895-Guatemala BSC    GUATEMALA                      1        23      0      0      0
3 months    ki1112895-Guatemala BSC    GUATEMALA                      2        23      0      0      0
3 months    ki1112895-Guatemala BSC    GUATEMALA                      3        23      8      5      3
3 months    ki1112895-Guatemala BSC    GUATEMALA                      4        23      4      4      0
3 months    ki1112895-Guatemala BSC    GUATEMALA                      5        23      3      3      0
3 months    ki1112895-Guatemala BSC    GUATEMALA                      6        23      2      2      0
3 months    ki1112895-Guatemala BSC    GUATEMALA                      7        23      0      0      0
3 months    ki1112895-Guatemala BSC    GUATEMALA                      8        23      2      2      0
3 months    ki1112895-Guatemala BSC    GUATEMALA                      9        23      0      0      0
3 months    ki1112895-Guatemala BSC    GUATEMALA                      10       23      2      2      0
3 months    ki1112895-Guatemala BSC    GUATEMALA                      11       23      0      0      0
3 months    ki1112895-Guatemala BSC    GUATEMALA                      12       23      2      1      1
3 months    ki1113344-GMS-Nepal        NEPAL                          1       571      0      0      0
3 months    ki1113344-GMS-Nepal        NEPAL                          2       571      0      0      0
3 months    ki1113344-GMS-Nepal        NEPAL                          3       571      0      0      0
3 months    ki1113344-GMS-Nepal        NEPAL                          4       571      0      0      0
3 months    ki1113344-GMS-Nepal        NEPAL                          5       571      0      0      0
3 months    ki1113344-GMS-Nepal        NEPAL                          6       571    103     91     12
3 months    ki1113344-GMS-Nepal        NEPAL                          7       571    220    181     39
3 months    ki1113344-GMS-Nepal        NEPAL                          8       571    231    200     31
3 months    ki1113344-GMS-Nepal        NEPAL                          9       571     15     13      2
3 months    ki1113344-GMS-Nepal        NEPAL                          10      571      2      2      0
3 months    ki1113344-GMS-Nepal        NEPAL                          11      571      0      0      0
3 months    ki1113344-GMS-Nepal        NEPAL                          12      571      0      0      0
3 months    ki1114097-CMIN             BANGLADESH                     1       256     28     16     12
3 months    ki1114097-CMIN             BANGLADESH                     2       256     24     18      6
3 months    ki1114097-CMIN             BANGLADESH                     3       256     19     16      3
3 months    ki1114097-CMIN             BANGLADESH                     4       256     22     14      8
3 months    ki1114097-CMIN             BANGLADESH                     5       256     17     13      4
3 months    ki1114097-CMIN             BANGLADESH                     6       256      9      5      4
3 months    ki1114097-CMIN             BANGLADESH                     7       256     17     12      5
3 months    ki1114097-CMIN             BANGLADESH                     8       256     19     10      9
3 months    ki1114097-CMIN             BANGLADESH                     9       256     20     13      7
3 months    ki1114097-CMIN             BANGLADESH                     10      256     26     15     11
3 months    ki1114097-CMIN             BANGLADESH                     11      256     27     15     12
3 months    ki1114097-CMIN             BANGLADESH                     12      256     28     14     14
3 months    ki1114097-CMIN             BRAZIL                         1        92      9      9      0
3 months    ki1114097-CMIN             BRAZIL                         2        92      6      5      1
3 months    ki1114097-CMIN             BRAZIL                         3        92     10      9      1
3 months    ki1114097-CMIN             BRAZIL                         4        92      7      7      0
3 months    ki1114097-CMIN             BRAZIL                         5        92      4      4      0
3 months    ki1114097-CMIN             BRAZIL                         6        92      6      4      2
3 months    ki1114097-CMIN             BRAZIL                         7        92      3      2      1
3 months    ki1114097-CMIN             BRAZIL                         8        92      9      9      0
3 months    ki1114097-CMIN             BRAZIL                         9        92      4      4      0
3 months    ki1114097-CMIN             BRAZIL                         10       92     16     15      1
3 months    ki1114097-CMIN             BRAZIL                         11       92     10      9      1
3 months    ki1114097-CMIN             BRAZIL                         12       92      8      7      1
3 months    ki1114097-CMIN             GUINEA-BISSAU                  1       507     46     41      5
3 months    ki1114097-CMIN             GUINEA-BISSAU                  2       507     42     32     10
3 months    ki1114097-CMIN             GUINEA-BISSAU                  3       507     22     18      4
3 months    ki1114097-CMIN             GUINEA-BISSAU                  4       507     74     67      7
3 months    ki1114097-CMIN             GUINEA-BISSAU                  5       507     46     39      7
3 months    ki1114097-CMIN             GUINEA-BISSAU                  6       507     42     40      2
3 months    ki1114097-CMIN             GUINEA-BISSAU                  7       507     28     24      4
3 months    ki1114097-CMIN             GUINEA-BISSAU                  8       507     22     22      0
3 months    ki1114097-CMIN             GUINEA-BISSAU                  9       507     73     64      9
3 months    ki1114097-CMIN             GUINEA-BISSAU                  10      507     26     23      3
3 months    ki1114097-CMIN             GUINEA-BISSAU                  11      507     40     36      4
3 months    ki1114097-CMIN             GUINEA-BISSAU                  12      507     46     41      5
3 months    ki1114097-CMIN             PERU                           1       630     51     49      2
3 months    ki1114097-CMIN             PERU                           2       630     54     53      1
3 months    ki1114097-CMIN             PERU                           3       630     65     59      6
3 months    ki1114097-CMIN             PERU                           4       630     66     62      4
3 months    ki1114097-CMIN             PERU                           5       630     61     55      6
3 months    ki1114097-CMIN             PERU                           6       630     54     52      2
3 months    ki1114097-CMIN             PERU                           7       630     42     40      2
3 months    ki1114097-CMIN             PERU                           8       630     45     40      5
3 months    ki1114097-CMIN             PERU                           9       630     38     37      1
3 months    ki1114097-CMIN             PERU                           10      630     26     24      2
3 months    ki1114097-CMIN             PERU                           11      630     79     73      6
3 months    ki1114097-CMIN             PERU                           12      630     49     47      2
3 months    ki1114097-CONTENT          PERU                           1       215      9      9      0
3 months    ki1114097-CONTENT          PERU                           2       215     16     16      0
3 months    ki1114097-CONTENT          PERU                           3       215     30     27      3
3 months    ki1114097-CONTENT          PERU                           4       215     12     10      2
3 months    ki1114097-CONTENT          PERU                           5       215     25     23      2
3 months    ki1114097-CONTENT          PERU                           6       215     14     12      2
3 months    ki1114097-CONTENT          PERU                           7       215     24     23      1
3 months    ki1114097-CONTENT          PERU                           8       215     18     15      3
3 months    ki1114097-CONTENT          PERU                           9       215     20     17      3
3 months    ki1114097-CONTENT          PERU                           10      215     24     22      2
3 months    ki1114097-CONTENT          PERU                           11      215     18     16      2
3 months    ki1114097-CONTENT          PERU                           12      215      5      5      0
3 months    ki1119695-PROBIT           BELARUS                        1      8057    505    468     37
3 months    ki1119695-PROBIT           BELARUS                        2      8057    490    457     33
3 months    ki1119695-PROBIT           BELARUS                        3      8057    589    548     41
3 months    ki1119695-PROBIT           BELARUS                        4      8057    539    506     33
3 months    ki1119695-PROBIT           BELARUS                        5      8057    600    571     29
3 months    ki1119695-PROBIT           BELARUS                        6      8057    616    585     31
3 months    ki1119695-PROBIT           BELARUS                        7      8057    744    703     41
3 months    ki1119695-PROBIT           BELARUS                        8      8057    814    770     44
3 months    ki1119695-PROBIT           BELARUS                        9      8057    722    674     48
3 months    ki1119695-PROBIT           BELARUS                        10     8057    822    767     55
3 months    ki1119695-PROBIT           BELARUS                        11     8057    759    702     57
3 months    ki1119695-PROBIT           BELARUS                        12     8057    857    800     57
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       1      9172    927    776    151
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       2      9172    666    555    111
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       3      9172    798    658    140
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       4      9172    683    555    128
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       5      9172    684    541    143
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       6      9172    793    584    209
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       7      9172    785    628    157
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       8      9172    843    698    145
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       9      9172    806    685    121
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       10     9172    622    515    107
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       11     9172    706    593    113
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       12     9172    859    751    108
3 months    kiGH5241-JiVitA-3          BANGLADESH                     1     12305   1153    822    331
3 months    kiGH5241-JiVitA-3          BANGLADESH                     2     12305    927    678    249
3 months    kiGH5241-JiVitA-3          BANGLADESH                     3     12305   1123    865    258
3 months    kiGH5241-JiVitA-3          BANGLADESH                     4     12305    829    655    174
3 months    kiGH5241-JiVitA-3          BANGLADESH                     5     12305    632    512    120
3 months    kiGH5241-JiVitA-3          BANGLADESH                     6     12305    625    507    118
3 months    kiGH5241-JiVitA-3          BANGLADESH                     7     12305    712    564    148
3 months    kiGH5241-JiVitA-3          BANGLADESH                     8     12305    946    687    259
3 months    kiGH5241-JiVitA-3          BANGLADESH                     9     12305   1258    889    369
3 months    kiGH5241-JiVitA-3          BANGLADESH                     10    12305   1325    859    466
3 months    kiGH5241-JiVitA-3          BANGLADESH                     11    12305   1372    890    482
3 months    kiGH5241-JiVitA-3          BANGLADESH                     12    12305   1403    971    432
3 months    kiGH5241-JiVitA-4          BANGLADESH                     1       900     11      9      2
3 months    kiGH5241-JiVitA-4          BANGLADESH                     2       900     91     71     20
3 months    kiGH5241-JiVitA-4          BANGLADESH                     3       900     98     76     22
3 months    kiGH5241-JiVitA-4          BANGLADESH                     4       900    217    173     44
3 months    kiGH5241-JiVitA-4          BANGLADESH                     5       900     92     68     24
3 months    kiGH5241-JiVitA-4          BANGLADESH                     6       900     45     34     11
3 months    kiGH5241-JiVitA-4          BANGLADESH                     7       900    111     89     22
3 months    kiGH5241-JiVitA-4          BANGLADESH                     8       900     96     74     22
3 months    kiGH5241-JiVitA-4          BANGLADESH                     9       900     51     39     12
3 months    kiGH5241-JiVitA-4          BANGLADESH                     10      900     50     38     12
3 months    kiGH5241-JiVitA-4          BANGLADESH                     11      900     24     21      3
3 months    kiGH5241-JiVitA-4          BANGLADESH                     12      900     14      9      5
6 months    ki0047075b-MAL-ED          BANGLADESH                     1       241     16     13      3
6 months    ki0047075b-MAL-ED          BANGLADESH                     2       241     20     14      6
6 months    ki0047075b-MAL-ED          BANGLADESH                     3       241     25     20      5
6 months    ki0047075b-MAL-ED          BANGLADESH                     4       241     22     21      1
6 months    ki0047075b-MAL-ED          BANGLADESH                     5       241     21     17      4
6 months    ki0047075b-MAL-ED          BANGLADESH                     6       241      8      6      2
6 months    ki0047075b-MAL-ED          BANGLADESH                     7       241     20     13      7
6 months    ki0047075b-MAL-ED          BANGLADESH                     8       241     22     16      6
6 months    ki0047075b-MAL-ED          BANGLADESH                     9       241     23     21      2
6 months    ki0047075b-MAL-ED          BANGLADESH                     10      241     21     15      6
6 months    ki0047075b-MAL-ED          BANGLADESH                     11      241     16     15      1
6 months    ki0047075b-MAL-ED          BANGLADESH                     12      241     27     25      2
6 months    ki0047075b-MAL-ED          BRAZIL                         1       209     13     12      1
6 months    ki0047075b-MAL-ED          BRAZIL                         2       209     24     23      1
6 months    ki0047075b-MAL-ED          BRAZIL                         3       209     17     17      0
6 months    ki0047075b-MAL-ED          BRAZIL                         4       209     11     11      0
6 months    ki0047075b-MAL-ED          BRAZIL                         5       209     21     20      1
6 months    ki0047075b-MAL-ED          BRAZIL                         6       209      7      7      0
6 months    ki0047075b-MAL-ED          BRAZIL                         7       209     17     16      1
6 months    ki0047075b-MAL-ED          BRAZIL                         8       209     16     16      0
6 months    ki0047075b-MAL-ED          BRAZIL                         9       209     29     28      1
6 months    ki0047075b-MAL-ED          BRAZIL                         10      209     21     21      0
6 months    ki0047075b-MAL-ED          BRAZIL                         11      209     18     18      0
6 months    ki0047075b-MAL-ED          BRAZIL                         12      209     15     14      1
6 months    ki0047075b-MAL-ED          INDIA                          1       236     19     15      4
6 months    ki0047075b-MAL-ED          INDIA                          2       236     18     17      1
6 months    ki0047075b-MAL-ED          INDIA                          3       236     21     17      4
6 months    ki0047075b-MAL-ED          INDIA                          4       236     16     10      6
6 months    ki0047075b-MAL-ED          INDIA                          5       236      8      7      1
6 months    ki0047075b-MAL-ED          INDIA                          6       236     18     16      2
6 months    ki0047075b-MAL-ED          INDIA                          7       236     23     17      6
6 months    ki0047075b-MAL-ED          INDIA                          8       236     22     19      3
6 months    ki0047075b-MAL-ED          INDIA                          9       236     20     17      3
6 months    ki0047075b-MAL-ED          INDIA                          10      236     27     20      7
6 months    ki0047075b-MAL-ED          INDIA                          11      236     25     19      6
6 months    ki0047075b-MAL-ED          INDIA                          12      236     19     16      3
6 months    ki0047075b-MAL-ED          NEPAL                          1       236     20     19      1
6 months    ki0047075b-MAL-ED          NEPAL                          2       236     19     16      3
6 months    ki0047075b-MAL-ED          NEPAL                          3       236     17     15      2
6 months    ki0047075b-MAL-ED          NEPAL                          4       236     20     19      1
6 months    ki0047075b-MAL-ED          NEPAL                          5       236     19     18      1
6 months    ki0047075b-MAL-ED          NEPAL                          6       236     21     21      0
6 months    ki0047075b-MAL-ED          NEPAL                          7       236     18     17      1
6 months    ki0047075b-MAL-ED          NEPAL                          8       236     24     24      0
6 months    ki0047075b-MAL-ED          NEPAL                          9       236     14     12      2
6 months    ki0047075b-MAL-ED          NEPAL                          10      236     22     22      0
6 months    ki0047075b-MAL-ED          NEPAL                          11      236     24     23      1
6 months    ki0047075b-MAL-ED          NEPAL                          12      236     18     18      0
6 months    ki0047075b-MAL-ED          PERU                           1       273     36     27      9
6 months    ki0047075b-MAL-ED          PERU                           2       273     21     16      5
6 months    ki0047075b-MAL-ED          PERU                           3       273     21     14      7
6 months    ki0047075b-MAL-ED          PERU                           4       273     20     16      4
6 months    ki0047075b-MAL-ED          PERU                           5       273     25     22      3
6 months    ki0047075b-MAL-ED          PERU                           6       273     18     15      3
6 months    ki0047075b-MAL-ED          PERU                           7       273     22     19      3
6 months    ki0047075b-MAL-ED          PERU                           8       273     16     13      3
6 months    ki0047075b-MAL-ED          PERU                           9       273     23     18      5
6 months    ki0047075b-MAL-ED          PERU                           10      273     19     16      3
6 months    ki0047075b-MAL-ED          PERU                           11      273     32     21     11
6 months    ki0047075b-MAL-ED          PERU                           12      273     20     16      4
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1       254     38     29      9
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2       254     22     20      2
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3       254     16     14      2
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4       254     13     12      1
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   5       254     12     10      2
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   6       254     17     17      0
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   7       254     24     18      6
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   8       254      9      7      2
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   9       254     18     16      2
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   10      254     26     22      4
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   11      254     23     14      9
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   12      254     36     25     11
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1       247     22     18      4
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2       247     29     22      7
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3       247     19     13      6
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4       247      8      5      3
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5       247     15     11      4
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6       247     20     20      0
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7       247     23     17      6
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8       247     12     10      2
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9       247     22     18      4
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10      247     21     15      6
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11      247     27     20      7
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12      247     29     20      9
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1       369     34     24     10
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2       369     16     11      5
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3       369     31     25      6
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4       369     44     36      8
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          5       369     35     23     12
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          6       369     37     21     16
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          7       369     39     19     20
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          8       369     17     11      6
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          9       369     20     14      6
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          10      369     29     21      8
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          11      369     42     35      7
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          12      369     25     18      7
6 months    ki1000108-IRC              INDIA                          1       407     36     25     11
6 months    ki1000108-IRC              INDIA                          2       407     27     16     11
6 months    ki1000108-IRC              INDIA                          3       407     29     19     10
6 months    ki1000108-IRC              INDIA                          4       407     22     16      6
6 months    ki1000108-IRC              INDIA                          5       407     20     13      7
6 months    ki1000108-IRC              INDIA                          6       407     37     32      5
6 months    ki1000108-IRC              INDIA                          7       407     36     25     11
6 months    ki1000108-IRC              INDIA                          8       407     45     39      6
6 months    ki1000108-IRC              INDIA                          9       407     27     20      7
6 months    ki1000108-IRC              INDIA                          10      407     36     31      5
6 months    ki1000108-IRC              INDIA                          11      407     41     34      7
6 months    ki1000108-IRC              INDIA                          12      407     51     37     14
6 months    ki1000109-EE               PAKISTAN                       1       372     90     39     51
6 months    ki1000109-EE               PAKISTAN                       2       372     66     36     30
6 months    ki1000109-EE               PAKISTAN                       3       372     43     24     19
6 months    ki1000109-EE               PAKISTAN                       4       372     16      5     11
6 months    ki1000109-EE               PAKISTAN                       5       372      0      0      0
6 months    ki1000109-EE               PAKISTAN                       6       372      0      0      0
6 months    ki1000109-EE               PAKISTAN                       7       372      0      0      0
6 months    ki1000109-EE               PAKISTAN                       8       372      0      0      0
6 months    ki1000109-EE               PAKISTAN                       9       372      0      0      0
6 months    ki1000109-EE               PAKISTAN                       10      372      4      3      1
6 months    ki1000109-EE               PAKISTAN                       11      372     70     28     42
6 months    ki1000109-EE               PAKISTAN                       12      372     83     44     39
6 months    ki1000109-ResPak           PAKISTAN                       1       235      8      4      4
6 months    ki1000109-ResPak           PAKISTAN                       2       235     12      8      4
6 months    ki1000109-ResPak           PAKISTAN                       3       235     16      6     10
6 months    ki1000109-ResPak           PAKISTAN                       4       235     26     16     10
6 months    ki1000109-ResPak           PAKISTAN                       5       235     32     20     12
6 months    ki1000109-ResPak           PAKISTAN                       6       235     48     30     18
6 months    ki1000109-ResPak           PAKISTAN                       7       235     28     22      6
6 months    ki1000109-ResPak           PAKISTAN                       8       235     33     21     12
6 months    ki1000109-ResPak           PAKISTAN                       9       235     22     16      6
6 months    ki1000109-ResPak           PAKISTAN                       10      235      7      7      0
6 months    ki1000109-ResPak           PAKISTAN                       11      235      1      1      0
6 months    ki1000109-ResPak           PAKISTAN                       12      235      2      1      1
6 months    ki1000304b-SAS-CompFeed    INDIA                          1       411     45     33     12
6 months    ki1000304b-SAS-CompFeed    INDIA                          2       411     34     22     12
6 months    ki1000304b-SAS-CompFeed    INDIA                          3       411     39     33      6
6 months    ki1000304b-SAS-CompFeed    INDIA                          4       411     31     24      7
6 months    ki1000304b-SAS-CompFeed    INDIA                          5       411     31     18     13
6 months    ki1000304b-SAS-CompFeed    INDIA                          6       411     49     34     15
6 months    ki1000304b-SAS-CompFeed    INDIA                          7       411      6      4      2
6 months    ki1000304b-SAS-CompFeed    INDIA                          8       411      0      0      0
6 months    ki1000304b-SAS-CompFeed    INDIA                          9       411      0      0      0
6 months    ki1000304b-SAS-CompFeed    INDIA                          10      411     64     51     13
6 months    ki1000304b-SAS-CompFeed    INDIA                          11      411     39     29     10
6 months    ki1000304b-SAS-CompFeed    INDIA                          12      411     73     50     23
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1        96     15      8      7
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2        96      9      5      4
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3        96      9      4      5
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          4        96      7      3      4
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          5        96      7      2      5
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          6        96      9      3      6
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          7        96      5      2      3
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          8        96      0      0      0
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          9        96      4      2      2
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          10       96      6      2      4
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          11       96     10      7      3
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          12       96     15     10      5
6 months    ki1017093-NIH-Birth        BANGLADESH                     1       537     50     35     15
6 months    ki1017093-NIH-Birth        BANGLADESH                     2       537     50     36     14
6 months    ki1017093-NIH-Birth        BANGLADESH                     3       537     50     36     14
6 months    ki1017093-NIH-Birth        BANGLADESH                     4       537     44     34     10
6 months    ki1017093-NIH-Birth        BANGLADESH                     5       537     40     32      8
6 months    ki1017093-NIH-Birth        BANGLADESH                     6       537     39     28     11
6 months    ki1017093-NIH-Birth        BANGLADESH                     7       537     45     27     18
6 months    ki1017093-NIH-Birth        BANGLADESH                     8       537     38     31      7
6 months    ki1017093-NIH-Birth        BANGLADESH                     9       537     30     23      7
6 months    ki1017093-NIH-Birth        BANGLADESH                     10      537     52     37     15
6 months    ki1017093-NIH-Birth        BANGLADESH                     11      537     49     31     18
6 months    ki1017093-NIH-Birth        BANGLADESH                     12      537     50     43      7
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1      2029    138    123     15
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2      2029    148    136     12
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3      2029    146    133     13
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4      2029    147    133     14
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5      2029    153    133     20
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6      2029    142    126     16
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7      2029    187    166     21
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8      2029    206    178     28
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9      2029    182    168     14
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10     2029    209    185     24
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11     2029    192    181     11
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12     2029    179    170      9
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1       299     18     16      2
6 months    ki1112895-Guatemala BSC    GUATEMALA                      2       299     19     15      4
6 months    ki1112895-Guatemala BSC    GUATEMALA                      3       299     21     12      9
6 months    ki1112895-Guatemala BSC    GUATEMALA                      4       299     28     20      8
6 months    ki1112895-Guatemala BSC    GUATEMALA                      5       299     30     24      6
6 months    ki1112895-Guatemala BSC    GUATEMALA                      6       299     39     27     12
6 months    ki1112895-Guatemala BSC    GUATEMALA                      7       299     24     15      9
6 months    ki1112895-Guatemala BSC    GUATEMALA                      8       299     19     14      5
6 months    ki1112895-Guatemala BSC    GUATEMALA                      9       299     34     23     11
6 months    ki1112895-Guatemala BSC    GUATEMALA                      10      299     29     18     11
6 months    ki1112895-Guatemala BSC    GUATEMALA                      11      299     28     18     10
6 months    ki1112895-Guatemala BSC    GUATEMALA                      12      299     10      7      3
6 months    ki1113344-GMS-Nepal        NEPAL                          1       563      0      0      0
6 months    ki1113344-GMS-Nepal        NEPAL                          2       563      0      0      0
6 months    ki1113344-GMS-Nepal        NEPAL                          3       563      0      0      0
6 months    ki1113344-GMS-Nepal        NEPAL                          4       563      0      0      0
6 months    ki1113344-GMS-Nepal        NEPAL                          5       563      0      0      0
6 months    ki1113344-GMS-Nepal        NEPAL                          6       563    104     83     21
6 months    ki1113344-GMS-Nepal        NEPAL                          7       563    216    166     50
6 months    ki1113344-GMS-Nepal        NEPAL                          8       563    226    181     45
6 months    ki1113344-GMS-Nepal        NEPAL                          9       563     15     13      2
6 months    ki1113344-GMS-Nepal        NEPAL                          10      563      2      1      1
6 months    ki1113344-GMS-Nepal        NEPAL                          11      563      0      0      0
6 months    ki1113344-GMS-Nepal        NEPAL                          12      563      0      0      0
6 months    ki1114097-CMIN             BANGLADESH                     1       243     26     13     13
6 months    ki1114097-CMIN             BANGLADESH                     2       243     23     19      4
6 months    ki1114097-CMIN             BANGLADESH                     3       243     17     13      4
6 months    ki1114097-CMIN             BANGLADESH                     4       243     22     16      6
6 months    ki1114097-CMIN             BANGLADESH                     5       243     17     14      3
6 months    ki1114097-CMIN             BANGLADESH                     6       243      8      5      3
6 months    ki1114097-CMIN             BANGLADESH                     7       243     15     10      5
6 months    ki1114097-CMIN             BANGLADESH                     8       243     17      7     10
6 months    ki1114097-CMIN             BANGLADESH                     9       243     20     10     10
6 months    ki1114097-CMIN             BANGLADESH                     10      243     24     16      8
6 months    ki1114097-CMIN             BANGLADESH                     11      243     27     15     12
6 months    ki1114097-CMIN             BANGLADESH                     12      243     27     12     15
6 months    ki1114097-CMIN             BRAZIL                         1       108     11     10      1
6 months    ki1114097-CMIN             BRAZIL                         2       108      6      6      0
6 months    ki1114097-CMIN             BRAZIL                         3       108     12     10      2
6 months    ki1114097-CMIN             BRAZIL                         4       108      9      9      0
6 months    ki1114097-CMIN             BRAZIL                         5       108      5      5      0
6 months    ki1114097-CMIN             BRAZIL                         6       108      7      6      1
6 months    ki1114097-CMIN             BRAZIL                         7       108      4      3      1
6 months    ki1114097-CMIN             BRAZIL                         8       108     12     12      0
6 months    ki1114097-CMIN             BRAZIL                         9       108      7      5      2
6 months    ki1114097-CMIN             BRAZIL                         10      108     15     13      2
6 months    ki1114097-CMIN             BRAZIL                         11      108     11     11      0
6 months    ki1114097-CMIN             BRAZIL                         12      108      9      8      1
6 months    ki1114097-CMIN             GUINEA-BISSAU                  1       848     59     53      6
6 months    ki1114097-CMIN             GUINEA-BISSAU                  2       848     62     50     12
6 months    ki1114097-CMIN             GUINEA-BISSAU                  3       848     63     55      8
6 months    ki1114097-CMIN             GUINEA-BISSAU                  4       848    141    134      7
6 months    ki1114097-CMIN             GUINEA-BISSAU                  5       848     99     92      7
6 months    ki1114097-CMIN             GUINEA-BISSAU                  6       848     78     73      5
6 months    ki1114097-CMIN             GUINEA-BISSAU                  7       848     45     40      5
6 months    ki1114097-CMIN             GUINEA-BISSAU                  8       848     37     36      1
6 months    ki1114097-CMIN             GUINEA-BISSAU                  9       848     94     85      9
6 months    ki1114097-CMIN             GUINEA-BISSAU                  10      848     60     57      3
6 months    ki1114097-CMIN             GUINEA-BISSAU                  11      848     54     48      6
6 months    ki1114097-CMIN             GUINEA-BISSAU                  12      848     56     49      7
6 months    ki1114097-CMIN             PERU                           1       637     62     56      6
6 months    ki1114097-CMIN             PERU                           2       637     51     48      3
6 months    ki1114097-CMIN             PERU                           3       637     63     57      6
6 months    ki1114097-CMIN             PERU                           4       637     71     67      4
6 months    ki1114097-CMIN             PERU                           5       637     54     49      5
6 months    ki1114097-CMIN             PERU                           6       637     54     52      2
6 months    ki1114097-CMIN             PERU                           7       637     47     44      3
6 months    ki1114097-CMIN             PERU                           8       637     47     45      2
6 months    ki1114097-CMIN             PERU                           9       637     41     40      1
6 months    ki1114097-CMIN             PERU                           10      637     28     23      5
6 months    ki1114097-CMIN             PERU                           11      637     74     71      3
6 months    ki1114097-CMIN             PERU                           12      637     45     42      3
6 months    ki1114097-CONTENT          PERU                           1       215      9      9      0
6 months    ki1114097-CONTENT          PERU                           2       215     16     16      0
6 months    ki1114097-CONTENT          PERU                           3       215     30     26      4
6 months    ki1114097-CONTENT          PERU                           4       215     12     10      2
6 months    ki1114097-CONTENT          PERU                           5       215     25     22      3
6 months    ki1114097-CONTENT          PERU                           6       215     14     11      3
6 months    ki1114097-CONTENT          PERU                           7       215     24     23      1
6 months    ki1114097-CONTENT          PERU                           8       215     18     16      2
6 months    ki1114097-CONTENT          PERU                           9       215     20     17      3
6 months    ki1114097-CONTENT          PERU                           10      215     24     24      0
6 months    ki1114097-CONTENT          PERU                           11      215     18     17      1
6 months    ki1114097-CONTENT          PERU                           12      215      5      5      0
6 months    ki1119695-PROBIT           BELARUS                        1      7665    497    450     47
6 months    ki1119695-PROBIT           BELARUS                        2      7665    474    433     41
6 months    ki1119695-PROBIT           BELARUS                        3      7665    567    528     39
6 months    ki1119695-PROBIT           BELARUS                        4      7665    518    485     33
6 months    ki1119695-PROBIT           BELARUS                        5      7665    576    546     30
6 months    ki1119695-PROBIT           BELARUS                        6      7665    577    536     41
6 months    ki1119695-PROBIT           BELARUS                        7      7665    704    663     41
6 months    ki1119695-PROBIT           BELARUS                        8      7665    769    718     51
6 months    ki1119695-PROBIT           BELARUS                        9      7665    694    641     53
6 months    ki1119695-PROBIT           BELARUS                        10     7665    774    718     56
6 months    ki1119695-PROBIT           BELARUS                        11     7665    709    647     62
6 months    ki1119695-PROBIT           BELARUS                        12     7665    806    753     53
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1      8279    804    665    139
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2      8279    579    479    100
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3      8279    724    569    155
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       4      8279    651    535    116
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       5      8279    594    491    103
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       6      8279    650    544    106
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       7      8279    637    517    120
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       8      8279    730    629    101
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       9      8279    762    661    101
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       10     8279    599    501     98
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       11     8279    729    611    118
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       12     8279    820    702    118
6 months    ki1148112-LCNI-5           MALAWI                         1       839     56     41     15
6 months    ki1148112-LCNI-5           MALAWI                         2       839    114     75     39
6 months    ki1148112-LCNI-5           MALAWI                         3       839     98     63     35
6 months    ki1148112-LCNI-5           MALAWI                         4       839    111     61     50
6 months    ki1148112-LCNI-5           MALAWI                         5       839    109     71     38
6 months    ki1148112-LCNI-5           MALAWI                         6       839     91     61     30
6 months    ki1148112-LCNI-5           MALAWI                         7       839     72     40     32
6 months    ki1148112-LCNI-5           MALAWI                         8       839     43     29     14
6 months    ki1148112-LCNI-5           MALAWI                         9       839     27     18      9
6 months    ki1148112-LCNI-5           MALAWI                         10      839     35     21     14
6 months    ki1148112-LCNI-5           MALAWI                         11      839     49     32     17
6 months    ki1148112-LCNI-5           MALAWI                         12      839     34     18     16
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1      8319    675    487    188
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2      8319    568    419    149
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3      8319    724    546    178
6 months    kiGH5241-JiVitA-3          BANGLADESH                     4      8319    603    452    151
6 months    kiGH5241-JiVitA-3          BANGLADESH                     5      8319    585    436    149
6 months    kiGH5241-JiVitA-3          BANGLADESH                     6      8319    586    431    155
6 months    kiGH5241-JiVitA-3          BANGLADESH                     7      8319    608    458    150
6 months    kiGH5241-JiVitA-3          BANGLADESH                     8      8319    742    567    175
6 months    kiGH5241-JiVitA-3          BANGLADESH                     9      8319    785    604    181
6 months    kiGH5241-JiVitA-3          BANGLADESH                     10     8319    790    564    226
6 months    kiGH5241-JiVitA-3          BANGLADESH                     11     8319    844    584    260
6 months    kiGH5241-JiVitA-3          BANGLADESH                     12     8319    809    593    216
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1      1256     19     15      4
6 months    kiGH5241-JiVitA-4          BANGLADESH                     2      1256     39     31      8
6 months    kiGH5241-JiVitA-4          BANGLADESH                     3      1256    108     81     27
6 months    kiGH5241-JiVitA-4          BANGLADESH                     4      1256    234    177     57
6 months    kiGH5241-JiVitA-4          BANGLADESH                     5      1256    165    125     40
6 months    kiGH5241-JiVitA-4          BANGLADESH                     6      1256    114     91     23
6 months    kiGH5241-JiVitA-4          BANGLADESH                     7      1256    218    163     55
6 months    kiGH5241-JiVitA-4          BANGLADESH                     8      1256    141    107     34
6 months    kiGH5241-JiVitA-4          BANGLADESH                     9      1256     93     69     24
6 months    kiGH5241-JiVitA-4          BANGLADESH                     10     1256     68     51     17
6 months    kiGH5241-JiVitA-4          BANGLADESH                     11     1256     36     31      5
6 months    kiGH5241-JiVitA-4          BANGLADESH                     12     1256     21     16      5
9 months    ki0047075b-MAL-ED          BANGLADESH                     1       234     17     15      2
9 months    ki0047075b-MAL-ED          BANGLADESH                     2       234     19     12      7
9 months    ki0047075b-MAL-ED          BANGLADESH                     3       234     23     14      9
9 months    ki0047075b-MAL-ED          BANGLADESH                     4       234     20     18      2
9 months    ki0047075b-MAL-ED          BANGLADESH                     5       234     21     15      6
9 months    ki0047075b-MAL-ED          BANGLADESH                     6       234      7      5      2
9 months    ki0047075b-MAL-ED          BANGLADESH                     7       234     20     13      7
9 months    ki0047075b-MAL-ED          BANGLADESH                     8       234     22     15      7
9 months    ki0047075b-MAL-ED          BANGLADESH                     9       234     21     20      1
9 months    ki0047075b-MAL-ED          BANGLADESH                     10      234     21     13      8
9 months    ki0047075b-MAL-ED          BANGLADESH                     11      234     15     11      4
9 months    ki0047075b-MAL-ED          BANGLADESH                     12      234     28     25      3
9 months    ki0047075b-MAL-ED          BRAZIL                         1       199     13     13      0
9 months    ki0047075b-MAL-ED          BRAZIL                         2       199     22     21      1
9 months    ki0047075b-MAL-ED          BRAZIL                         3       199     17     17      0
9 months    ki0047075b-MAL-ED          BRAZIL                         4       199     10     10      0
9 months    ki0047075b-MAL-ED          BRAZIL                         5       199     20     19      1
9 months    ki0047075b-MAL-ED          BRAZIL                         6       199      6      6      0
9 months    ki0047075b-MAL-ED          BRAZIL                         7       199     17     17      0
9 months    ki0047075b-MAL-ED          BRAZIL                         8       199     14     14      0
9 months    ki0047075b-MAL-ED          BRAZIL                         9       199     29     28      1
9 months    ki0047075b-MAL-ED          BRAZIL                         10      199     19     19      0
9 months    ki0047075b-MAL-ED          BRAZIL                         11      199     18     18      0
9 months    ki0047075b-MAL-ED          BRAZIL                         12      199     14     13      1
9 months    ki0047075b-MAL-ED          INDIA                          1       232     19     14      5
9 months    ki0047075b-MAL-ED          INDIA                          2       232     18     16      2
9 months    ki0047075b-MAL-ED          INDIA                          3       232     20     17      3
9 months    ki0047075b-MAL-ED          INDIA                          4       232     15     10      5
9 months    ki0047075b-MAL-ED          INDIA                          5       232      8      6      2
9 months    ki0047075b-MAL-ED          INDIA                          6       232     18     15      3
9 months    ki0047075b-MAL-ED          INDIA                          7       232     23     14      9
9 months    ki0047075b-MAL-ED          INDIA                          8       232     22     18      4
9 months    ki0047075b-MAL-ED          INDIA                          9       232     19     16      3
9 months    ki0047075b-MAL-ED          INDIA                          10      232     27     20      7
9 months    ki0047075b-MAL-ED          INDIA                          11      232     24     17      7
9 months    ki0047075b-MAL-ED          INDIA                          12      232     19     16      3
9 months    ki0047075b-MAL-ED          NEPAL                          1       231     20     18      2
9 months    ki0047075b-MAL-ED          NEPAL                          2       231     17     14      3
9 months    ki0047075b-MAL-ED          NEPAL                          3       231     17     14      3
9 months    ki0047075b-MAL-ED          NEPAL                          4       231     20     18      2
9 months    ki0047075b-MAL-ED          NEPAL                          5       231     18     17      1
9 months    ki0047075b-MAL-ED          NEPAL                          6       231     21     19      2
9 months    ki0047075b-MAL-ED          NEPAL                          7       231     18     17      1
9 months    ki0047075b-MAL-ED          NEPAL                          8       231     24     24      0
9 months    ki0047075b-MAL-ED          NEPAL                          9       231     13     12      1
9 months    ki0047075b-MAL-ED          NEPAL                          10      231     21     21      0
9 months    ki0047075b-MAL-ED          NEPAL                          11      231     24     23      1
9 months    ki0047075b-MAL-ED          NEPAL                          12      231     18     16      2
9 months    ki0047075b-MAL-ED          PERU                           1       256     34     22     12
9 months    ki0047075b-MAL-ED          PERU                           2       256     21     16      5
9 months    ki0047075b-MAL-ED          PERU                           3       256     20     16      4
9 months    ki0047075b-MAL-ED          PERU                           4       256     20     17      3
9 months    ki0047075b-MAL-ED          PERU                           5       256     21     16      5
9 months    ki0047075b-MAL-ED          PERU                           6       256     17     11      6
9 months    ki0047075b-MAL-ED          PERU                           7       256     20     13      7
9 months    ki0047075b-MAL-ED          PERU                           8       256     14     10      4
9 months    ki0047075b-MAL-ED          PERU                           9       256     23     22      1
9 months    ki0047075b-MAL-ED          PERU                           10      256     16     14      2
9 months    ki0047075b-MAL-ED          PERU                           11      256     30     20     10
9 months    ki0047075b-MAL-ED          PERU                           12      256     20     16      4
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1       250     37     27     10
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2       250     22     16      6
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3       250     16     14      2
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4       250     12     11      1
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   5       250     11      9      2
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   6       250     15     14      1
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   7       250     24     18      6
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   8       250      9      8      1
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   9       250     19     18      1
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   10      250     26     20      6
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   11      250     24     16      8
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   12      250     35     26      9
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1       238     18     13      5
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2       238     28     15     13
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3       238     19     11      8
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4       238      8      4      4
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5       238     18     14      4
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6       238     20     15      5
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7       238     21     14      7
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8       238     12      7      5
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9       238     21     14      7
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10      238     21     11     10
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11      238     25     14     11
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12      238     27     16     11
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          1       366     34     20     14
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          2       366     15      7      8
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          3       366     30     18     12
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          4       366     44     30     14
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          5       366     35     18     17
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          6       366     37     20     17
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          7       366     38     21     17
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          8       366     17     12      5
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          9       366     20     17      3
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          10      366     29     23      6
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          11      366     42     33      9
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          12      366     25     12     13
9 months    ki1000108-IRC              INDIA                          1       407     36     22     14
9 months    ki1000108-IRC              INDIA                          2       407     27     18      9
9 months    ki1000108-IRC              INDIA                          3       407     29     22      7
9 months    ki1000108-IRC              INDIA                          4       407     22     12     10
9 months    ki1000108-IRC              INDIA                          5       407     20     10     10
9 months    ki1000108-IRC              INDIA                          6       407     37     32      5
9 months    ki1000108-IRC              INDIA                          7       407     36     27      9
9 months    ki1000108-IRC              INDIA                          8       407     45     37      8
9 months    ki1000108-IRC              INDIA                          9       407     27     19      8
9 months    ki1000108-IRC              INDIA                          10      407     36     30      6
9 months    ki1000108-IRC              INDIA                          11      407     41     32      9
9 months    ki1000108-IRC              INDIA                          12      407     51     35     16
9 months    ki1000109-EE               PAKISTAN                       1       366     90     35     55
9 months    ki1000109-EE               PAKISTAN                       2       366     65     24     41
9 months    ki1000109-EE               PAKISTAN                       3       366     42     17     25
9 months    ki1000109-EE               PAKISTAN                       4       366     16      4     12
9 months    ki1000109-EE               PAKISTAN                       5       366      0      0      0
9 months    ki1000109-EE               PAKISTAN                       6       366      0      0      0
9 months    ki1000109-EE               PAKISTAN                       7       366      0      0      0
9 months    ki1000109-EE               PAKISTAN                       8       366      0      0      0
9 months    ki1000109-EE               PAKISTAN                       9       366      0      0      0
9 months    ki1000109-EE               PAKISTAN                       10      366      4      2      2
9 months    ki1000109-EE               PAKISTAN                       11      366     68     30     38
9 months    ki1000109-EE               PAKISTAN                       12      366     81     37     44
9 months    ki1000109-ResPak           PAKISTAN                       1       211      8      4      4
9 months    ki1000109-ResPak           PAKISTAN                       2       211      9      5      4
9 months    ki1000109-ResPak           PAKISTAN                       3       211     13      9      4
9 months    ki1000109-ResPak           PAKISTAN                       4       211     20     15      5
9 months    ki1000109-ResPak           PAKISTAN                       5       211     33     24      9
9 months    ki1000109-ResPak           PAKISTAN                       6       211     46     28     18
9 months    ki1000109-ResPak           PAKISTAN                       7       211     19     15      4
9 months    ki1000109-ResPak           PAKISTAN                       8       211     30     19     11
9 months    ki1000109-ResPak           PAKISTAN                       9       211     22     14      8
9 months    ki1000109-ResPak           PAKISTAN                       10      211      7      6      1
9 months    ki1000109-ResPak           PAKISTAN                       11      211      2      1      1
9 months    ki1000109-ResPak           PAKISTAN                       12      211      2      1      1
9 months    ki1000304b-SAS-CompFeed    INDIA                          1       404     48     29     19
9 months    ki1000304b-SAS-CompFeed    INDIA                          2       404     35     21     14
9 months    ki1000304b-SAS-CompFeed    INDIA                          3       404     34     27      7
9 months    ki1000304b-SAS-CompFeed    INDIA                          4       404     29     19     10
9 months    ki1000304b-SAS-CompFeed    INDIA                          5       404     34     15     19
9 months    ki1000304b-SAS-CompFeed    INDIA                          6       404     51     35     16
9 months    ki1000304b-SAS-CompFeed    INDIA                          7       404      6      3      3
9 months    ki1000304b-SAS-CompFeed    INDIA                          8       404      0      0      0
9 months    ki1000304b-SAS-CompFeed    INDIA                          9       404      0      0      0
9 months    ki1000304b-SAS-CompFeed    INDIA                          10      404     60     31     29
9 months    ki1000304b-SAS-CompFeed    INDIA                          11      404     38     27     11
9 months    ki1000304b-SAS-CompFeed    INDIA                          12      404     69     44     25
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          1        85     12      4      8
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          2        85      7      1      6
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          3        85      7      2      5
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          4        85      8      3      5
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          5        85      7      1      6
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          6        85      7      4      3
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          7        85      5      1      4
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          8        85      0      0      0
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          9        85      4      0      4
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          10       85      4      2      2
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          11       85     10      3      7
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          12       85     14      7      7
9 months    ki1017093-NIH-Birth        BANGLADESH                     1       507     49     26     23
9 months    ki1017093-NIH-Birth        BANGLADESH                     2       507     44     29     15
9 months    ki1017093-NIH-Birth        BANGLADESH                     3       507     47     31     16
9 months    ki1017093-NIH-Birth        BANGLADESH                     4       507     42     32     10
9 months    ki1017093-NIH-Birth        BANGLADESH                     5       507     39     25     14
9 months    ki1017093-NIH-Birth        BANGLADESH                     6       507     39     30      9
9 months    ki1017093-NIH-Birth        BANGLADESH                     7       507     45     27     18
9 months    ki1017093-NIH-Birth        BANGLADESH                     8       507     31     17     14
9 months    ki1017093-NIH-Birth        BANGLADESH                     9       507     25     17      8
9 months    ki1017093-NIH-Birth        BANGLADESH                     10      507     49     31     18
9 months    ki1017093-NIH-Birth        BANGLADESH                     11      507     47     25     22
9 months    ki1017093-NIH-Birth        BANGLADESH                     12      507     50     36     14
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1      1788    121    103     18
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2      1788    133    117     16
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3      1788    130    110     20
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4      1788    124     92     32
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5      1788    134    107     27
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6      1788    122    104     18
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7      1788    170    140     30
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8      1788    185    157     28
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9      1788    165    150     15
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10     1788    188    162     26
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11     1788    168    150     18
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12     1788    148    131     17
9 months    ki1112895-Guatemala BSC    GUATEMALA                      1       238     11      8      3
9 months    ki1112895-Guatemala BSC    GUATEMALA                      2       238     17     11      6
9 months    ki1112895-Guatemala BSC    GUATEMALA                      3       238     17      8      9
9 months    ki1112895-Guatemala BSC    GUATEMALA                      4       238     20      7     13
9 months    ki1112895-Guatemala BSC    GUATEMALA                      5       238     24     17      7
9 months    ki1112895-Guatemala BSC    GUATEMALA                      6       238     35     23     12
9 months    ki1112895-Guatemala BSC    GUATEMALA                      7       238     22     13      9
9 months    ki1112895-Guatemala BSC    GUATEMALA                      8       238     18     13      5
9 months    ki1112895-Guatemala BSC    GUATEMALA                      9       238     27     19      8
9 months    ki1112895-Guatemala BSC    GUATEMALA                      10      238     20     10     10
9 months    ki1112895-Guatemala BSC    GUATEMALA                      11      238     20     11      9
9 months    ki1112895-Guatemala BSC    GUATEMALA                      12      238      7      2      5
9 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   1       762     47     37     10
9 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   2       762     43     31     12
9 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   3       762     56     48      8
9 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   4       762     34     31      3
9 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   5       762     74     51     23
9 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   6       762     90     68     22
9 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   7       762     91     73     18
9 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   8       762     77     63     14
9 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   9       762     84     65     19
9 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   10      762     71     54     17
9 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   11      762     53     43     10
9 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   12      762     42     34      8
9 months    ki1113344-GMS-Nepal        NEPAL                          1       551      0      0      0
9 months    ki1113344-GMS-Nepal        NEPAL                          2       551      0      0      0
9 months    ki1113344-GMS-Nepal        NEPAL                          3       551      0      0      0
9 months    ki1113344-GMS-Nepal        NEPAL                          4       551      0      0      0
9 months    ki1113344-GMS-Nepal        NEPAL                          5       551      0      0      0
9 months    ki1113344-GMS-Nepal        NEPAL                          6       551    102     72     30
9 months    ki1113344-GMS-Nepal        NEPAL                          7       551    212    153     59
9 months    ki1113344-GMS-Nepal        NEPAL                          8       551    220    159     61
9 months    ki1113344-GMS-Nepal        NEPAL                          9       551     15     11      4
9 months    ki1113344-GMS-Nepal        NEPAL                          10      551      2      1      1
9 months    ki1113344-GMS-Nepal        NEPAL                          11      551      0      0      0
9 months    ki1113344-GMS-Nepal        NEPAL                          12      551      0      0      0
9 months    ki1114097-CMIN             BANGLADESH                     1       245     26     12     14
9 months    ki1114097-CMIN             BANGLADESH                     2       245     25     19      6
9 months    ki1114097-CMIN             BANGLADESH                     3       245     16     12      4
9 months    ki1114097-CMIN             BANGLADESH                     4       245     22     13      9
9 months    ki1114097-CMIN             BANGLADESH                     5       245     15     10      5
9 months    ki1114097-CMIN             BANGLADESH                     6       245      9      4      5
9 months    ki1114097-CMIN             BANGLADESH                     7       245     16     11      5
9 months    ki1114097-CMIN             BANGLADESH                     8       245     19      6     13
9 months    ki1114097-CMIN             BANGLADESH                     9       245     20     12      8
9 months    ki1114097-CMIN             BANGLADESH                     10      245     25     10     15
9 months    ki1114097-CMIN             BANGLADESH                     11      245     26     14     12
9 months    ki1114097-CMIN             BANGLADESH                     12      245     26     11     15
9 months    ki1114097-CMIN             BRAZIL                         1       110     14     12      2
9 months    ki1114097-CMIN             BRAZIL                         2       110      7      4      3
9 months    ki1114097-CMIN             BRAZIL                         3       110     13     11      2
9 months    ki1114097-CMIN             BRAZIL                         4       110      8      7      1
9 months    ki1114097-CMIN             BRAZIL                         5       110      5      5      0
9 months    ki1114097-CMIN             BRAZIL                         6       110      7      5      2
9 months    ki1114097-CMIN             BRAZIL                         7       110      3      3      0
9 months    ki1114097-CMIN             BRAZIL                         8       110     10     10      0
9 months    ki1114097-CMIN             BRAZIL                         9       110      8      6      2
9 months    ki1114097-CMIN             BRAZIL                         10      110     15     12      3
9 months    ki1114097-CMIN             BRAZIL                         11      110     11     10      1
9 months    ki1114097-CMIN             BRAZIL                         12      110      9      8      1
9 months    ki1114097-CMIN             GUINEA-BISSAU                  1       866     65     57      8
9 months    ki1114097-CMIN             GUINEA-BISSAU                  2       866     55     40     15
9 months    ki1114097-CMIN             GUINEA-BISSAU                  3       866     56     49      7
9 months    ki1114097-CMIN             GUINEA-BISSAU                  4       866    158    137     21
9 months    ki1114097-CMIN             GUINEA-BISSAU                  5       866    103     88     15
9 months    ki1114097-CMIN             GUINEA-BISSAU                  6       866     84     76      8
9 months    ki1114097-CMIN             GUINEA-BISSAU                  7       866     61     52      9
9 months    ki1114097-CMIN             GUINEA-BISSAU                  8       866     37     34      3
9 months    ki1114097-CMIN             GUINEA-BISSAU                  9       866     87     75     12
9 months    ki1114097-CMIN             GUINEA-BISSAU                  10      866     47     43      4
9 months    ki1114097-CMIN             GUINEA-BISSAU                  11      866     54     47      7
9 months    ki1114097-CMIN             GUINEA-BISSAU                  12      866     59     50      9
9 months    ki1114097-CMIN             PERU                           1       625     79     70      9
9 months    ki1114097-CMIN             PERU                           2       625     45     41      4
9 months    ki1114097-CMIN             PERU                           3       625     58     51      7
9 months    ki1114097-CMIN             PERU                           4       625     66     57      9
9 months    ki1114097-CMIN             PERU                           5       625     63     54      9
9 months    ki1114097-CMIN             PERU                           6       625     48     44      4
9 months    ki1114097-CMIN             PERU                           7       625     48     43      5
9 months    ki1114097-CMIN             PERU                           8       625     47     40      7
9 months    ki1114097-CMIN             PERU                           9       625     34     32      2
9 months    ki1114097-CMIN             PERU                           10      625     25     17      8
9 months    ki1114097-CMIN             PERU                           11      625     70     63      7
9 months    ki1114097-CMIN             PERU                           12      625     42     36      6
9 months    ki1114097-CONTENT          PERU                           1       214      9      9      0
9 months    ki1114097-CONTENT          PERU                           2       214     16     16      0
9 months    ki1114097-CONTENT          PERU                           3       214     30     28      2
9 months    ki1114097-CONTENT          PERU                           4       214     12     10      2
9 months    ki1114097-CONTENT          PERU                           5       214     24     20      4
9 months    ki1114097-CONTENT          PERU                           6       214     14     11      3
9 months    ki1114097-CONTENT          PERU                           7       214     24     22      2
9 months    ki1114097-CONTENT          PERU                           8       214     18     16      2
9 months    ki1114097-CONTENT          PERU                           9       214     20     17      3
9 months    ki1114097-CONTENT          PERU                           10      214     24     22      2
9 months    ki1114097-CONTENT          PERU                           11      214     18     17      1
9 months    ki1114097-CONTENT          PERU                           12      214      5      4      1
9 months    ki1119695-PROBIT           BELARUS                        1      7483    463    436     27
9 months    ki1119695-PROBIT           BELARUS                        2      7483    460    440     20
9 months    ki1119695-PROBIT           BELARUS                        3      7483    538    519     19
9 months    ki1119695-PROBIT           BELARUS                        4      7483    512    495     17
9 months    ki1119695-PROBIT           BELARUS                        5      7483    562    548     14
9 months    ki1119695-PROBIT           BELARUS                        6      7483    571    542     29
9 months    ki1119695-PROBIT           BELARUS                        7      7483    688    664     24
9 months    ki1119695-PROBIT           BELARUS                        8      7483    761    728     33
9 months    ki1119695-PROBIT           BELARUS                        9      7483    666    630     36
9 months    ki1119695-PROBIT           BELARUS                        10     7483    773    739     34
9 months    ki1119695-PROBIT           BELARUS                        11     7483    706    655     51
9 months    ki1119695-PROBIT           BELARUS                        12     7483    783    751     32
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       1      7656    769    609    160
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       2      7656    605    480    125
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       3      7656    611    500    111
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       4      7656    550    462     88
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       5      7656    548    427    121
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       6      7656    617    484    133
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       7      7656    586    469    117
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       8      7656    687    559    128
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       9      7656    735    598    137
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       10     7656    569    445    124
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       11     7656    653    534    119
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       12     7656    726    574    152
9 months    ki1148112-LCNI-5           MALAWI                         1       664     44     28     16
9 months    ki1148112-LCNI-5           MALAWI                         2       664    100     76     24
9 months    ki1148112-LCNI-5           MALAWI                         3       664     83     53     30
9 months    ki1148112-LCNI-5           MALAWI                         4       664     93     54     39
9 months    ki1148112-LCNI-5           MALAWI                         5       664     84     60     24
9 months    ki1148112-LCNI-5           MALAWI                         6       664     72     46     26
9 months    ki1148112-LCNI-5           MALAWI                         7       664     53     31     22
9 months    ki1148112-LCNI-5           MALAWI                         8       664     32     28      4
9 months    ki1148112-LCNI-5           MALAWI                         9       664     21     12      9
9 months    ki1148112-LCNI-5           MALAWI                         10      664     24     17      7
9 months    ki1148112-LCNI-5           MALAWI                         11      664     35     25     10
9 months    ki1148112-LCNI-5           MALAWI                         12      664     23     13     10
9 months    kiGH5241-JiVitA-4          BANGLADESH                     1      1281     19     15      4
9 months    kiGH5241-JiVitA-4          BANGLADESH                     2      1281     94     69     25
9 months    kiGH5241-JiVitA-4          BANGLADESH                     3      1281    107     78     29
9 months    kiGH5241-JiVitA-4          BANGLADESH                     4      1281    226    147     79
9 months    kiGH5241-JiVitA-4          BANGLADESH                     5      1281    151    108     43
9 months    kiGH5241-JiVitA-4          BANGLADESH                     6      1281    117     84     33
9 months    kiGH5241-JiVitA-4          BANGLADESH                     7      1281    209    159     50
9 months    kiGH5241-JiVitA-4          BANGLADESH                     8      1281    138    103     35
9 months    kiGH5241-JiVitA-4          BANGLADESH                     9      1281    100     71     29
9 months    kiGH5241-JiVitA-4          BANGLADESH                     10     1281     65     47     18
9 months    kiGH5241-JiVitA-4          BANGLADESH                     11     1281     36     31      5
9 months    kiGH5241-JiVitA-4          BANGLADESH                     12     1281     19     14      5
12 months   ki0047075b-MAL-ED          BANGLADESH                     1       233     16     13      3
12 months   ki0047075b-MAL-ED          BANGLADESH                     2       233     19      7     12
12 months   ki0047075b-MAL-ED          BANGLADESH                     3       233     23     13     10
12 months   ki0047075b-MAL-ED          BANGLADESH                     4       233     21     17      4
12 months   ki0047075b-MAL-ED          BANGLADESH                     5       233     21     14      7
12 months   ki0047075b-MAL-ED          BANGLADESH                     6       233      7      4      3
12 months   ki0047075b-MAL-ED          BANGLADESH                     7       233     20     13      7
12 months   ki0047075b-MAL-ED          BANGLADESH                     8       233     21     13      8
12 months   ki0047075b-MAL-ED          BANGLADESH                     9       233     21     16      5
12 months   ki0047075b-MAL-ED          BANGLADESH                     10      233     21     14      7
12 months   ki0047075b-MAL-ED          BANGLADESH                     11      233     15     11      4
12 months   ki0047075b-MAL-ED          BANGLADESH                     12      233     28     23      5
12 months   ki0047075b-MAL-ED          BRAZIL                         1       195     13     13      0
12 months   ki0047075b-MAL-ED          BRAZIL                         2       195     22     21      1
12 months   ki0047075b-MAL-ED          BRAZIL                         3       195     17     17      0
12 months   ki0047075b-MAL-ED          BRAZIL                         4       195     10     10      0
12 months   ki0047075b-MAL-ED          BRAZIL                         5       195     20     19      1
12 months   ki0047075b-MAL-ED          BRAZIL                         6       195      6      6      0
12 months   ki0047075b-MAL-ED          BRAZIL                         7       195     17     15      2
12 months   ki0047075b-MAL-ED          BRAZIL                         8       195     13     13      0
12 months   ki0047075b-MAL-ED          BRAZIL                         9       195     28     27      1
12 months   ki0047075b-MAL-ED          BRAZIL                         10      195     17     17      0
12 months   ki0047075b-MAL-ED          BRAZIL                         11      195     18     18      0
12 months   ki0047075b-MAL-ED          BRAZIL                         12      195     14     13      1
12 months   ki0047075b-MAL-ED          INDIA                          1       228     19     12      7
12 months   ki0047075b-MAL-ED          INDIA                          2       228     18     15      3
12 months   ki0047075b-MAL-ED          INDIA                          3       228     18     14      4
12 months   ki0047075b-MAL-ED          INDIA                          4       228     15     10      5
12 months   ki0047075b-MAL-ED          INDIA                          5       228      8      6      2
12 months   ki0047075b-MAL-ED          INDIA                          6       228     18     12      6
12 months   ki0047075b-MAL-ED          INDIA                          7       228     23     14      9
12 months   ki0047075b-MAL-ED          INDIA                          8       228     21     14      7
12 months   ki0047075b-MAL-ED          INDIA                          9       228     18     12      6
12 months   ki0047075b-MAL-ED          INDIA                          10      228     27     16     11
12 months   ki0047075b-MAL-ED          INDIA                          11      228     24     15      9
12 months   ki0047075b-MAL-ED          INDIA                          12      228     19     13      6
12 months   ki0047075b-MAL-ED          NEPAL                          1       231     20     16      4
12 months   ki0047075b-MAL-ED          NEPAL                          2       231     17     12      5
12 months   ki0047075b-MAL-ED          NEPAL                          3       231     17     13      4
12 months   ki0047075b-MAL-ED          NEPAL                          4       231     20     17      3
12 months   ki0047075b-MAL-ED          NEPAL                          5       231     18     16      2
12 months   ki0047075b-MAL-ED          NEPAL                          6       231     21     20      1
12 months   ki0047075b-MAL-ED          NEPAL                          7       231     18     17      1
12 months   ki0047075b-MAL-ED          NEPAL                          8       231     24     23      1
12 months   ki0047075b-MAL-ED          NEPAL                          9       231     13     12      1
12 months   ki0047075b-MAL-ED          NEPAL                          10      231     21     21      0
12 months   ki0047075b-MAL-ED          NEPAL                          11      231     24     22      2
12 months   ki0047075b-MAL-ED          NEPAL                          12      231     18     16      2
12 months   ki0047075b-MAL-ED          PERU                           1       246     34     23     11
12 months   ki0047075b-MAL-ED          PERU                           2       246     20     15      5
12 months   ki0047075b-MAL-ED          PERU                           3       246     18     14      4
12 months   ki0047075b-MAL-ED          PERU                           4       246     18     12      6
12 months   ki0047075b-MAL-ED          PERU                           5       246     19     17      2
12 months   ki0047075b-MAL-ED          PERU                           6       246     17     10      7
12 months   ki0047075b-MAL-ED          PERU                           7       246     20     13      7
12 months   ki0047075b-MAL-ED          PERU                           8       246     14     11      3
12 months   ki0047075b-MAL-ED          PERU                           9       246     22     19      3
12 months   ki0047075b-MAL-ED          PERU                           10      246     16     12      4
12 months   ki0047075b-MAL-ED          PERU                           11      246     28     18     10
12 months   ki0047075b-MAL-ED          PERU                           12      246     20     13      7
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1       252     37     26     11
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2       252     22     15      7
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3       252     16     13      3
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4       252     12     11      1
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5       252     12     11      1
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6       252     15     11      4
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7       252     24     17      7
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8       252      9      7      2
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9       252     19     17      2
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10      252     25     20      5
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11      252     25     17      8
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12      252     36     27      9
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1       231     16     10      6
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2       231     26      7     19
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3       231     19      8     11
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4       231      8      3      5
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5       231     18      8     10
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6       231     20     12      8
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7       231     23     13     10
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8       231     11      4      7
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9       231     20      8     12
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10      231     19      7     12
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11      231     25     12     13
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12      231     26     14     12
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          1       368     34     17     17
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          2       368     16      4     12
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          3       368     31     16     15
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          4       368     43     22     21
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          5       368     36     16     20
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          6       368     37     17     20
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          7       368     38     20     18
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          8       368     18     12      6
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          9       368     20     14      6
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          10      368     29     16     13
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          11      368     43     27     16
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          12      368     23      4     19
12 months   ki1000108-IRC              INDIA                          1       406     35     20     15
12 months   ki1000108-IRC              INDIA                          2       406     27     14     13
12 months   ki1000108-IRC              INDIA                          3       406     29     21      8
12 months   ki1000108-IRC              INDIA                          4       406     21     10     11
12 months   ki1000108-IRC              INDIA                          5       406     20      9     11
12 months   ki1000108-IRC              INDIA                          6       406     37     32      5
12 months   ki1000108-IRC              INDIA                          7       406     36     30      6
12 months   ki1000108-IRC              INDIA                          8       406     45     37      8
12 months   ki1000108-IRC              INDIA                          9       406     27     18      9
12 months   ki1000108-IRC              INDIA                          10      406     37     32      5
12 months   ki1000108-IRC              INDIA                          11      406     41     30     11
12 months   ki1000108-IRC              INDIA                          12      406     51     34     17
12 months   ki1000109-EE               PAKISTAN                       1       357     89     19     70
12 months   ki1000109-EE               PAKISTAN                       2       357     61     15     46
12 months   ki1000109-EE               PAKISTAN                       3       357     41     12     29
12 months   ki1000109-EE               PAKISTAN                       4       357     16      3     13
12 months   ki1000109-EE               PAKISTAN                       5       357      0      0      0
12 months   ki1000109-EE               PAKISTAN                       6       357      0      0      0
12 months   ki1000109-EE               PAKISTAN                       7       357      0      0      0
12 months   ki1000109-EE               PAKISTAN                       8       357      0      0      0
12 months   ki1000109-EE               PAKISTAN                       9       357      0      0      0
12 months   ki1000109-EE               PAKISTAN                       10      357      3      0      3
12 months   ki1000109-EE               PAKISTAN                       11      357     65     26     39
12 months   ki1000109-EE               PAKISTAN                       12      357     82     27     55
12 months   ki1000109-ResPak           PAKISTAN                       1       194      6      3      3
12 months   ki1000109-ResPak           PAKISTAN                       2       194      6      4      2
12 months   ki1000109-ResPak           PAKISTAN                       3       194     12      9      3
12 months   ki1000109-ResPak           PAKISTAN                       4       194     17     13      4
12 months   ki1000109-ResPak           PAKISTAN                       5       194     31     21     10
12 months   ki1000109-ResPak           PAKISTAN                       6       194     45     24     21
12 months   ki1000109-ResPak           PAKISTAN                       7       194     19     16      3
12 months   ki1000109-ResPak           PAKISTAN                       8       194     29     19     10
12 months   ki1000109-ResPak           PAKISTAN                       9       194     20     15      5
12 months   ki1000109-ResPak           PAKISTAN                       10      194      7      6      1
12 months   ki1000109-ResPak           PAKISTAN                       11      194      1      0      1
12 months   ki1000109-ResPak           PAKISTAN                       12      194      1      0      1
12 months   ki1000304b-SAS-CompFeed    INDIA                          1       414     49     24     25
12 months   ki1000304b-SAS-CompFeed    INDIA                          2       414     33     22     11
12 months   ki1000304b-SAS-CompFeed    INDIA                          3       414     34     20     14
12 months   ki1000304b-SAS-CompFeed    INDIA                          4       414     30     22      8
12 months   ki1000304b-SAS-CompFeed    INDIA                          5       414     34     17     17
12 months   ki1000304b-SAS-CompFeed    INDIA                          6       414     49     31     18
12 months   ki1000304b-SAS-CompFeed    INDIA                          7       414      6      3      3
12 months   ki1000304b-SAS-CompFeed    INDIA                          8       414      0      0      0
12 months   ki1000304b-SAS-CompFeed    INDIA                          9       414      0      0      0
12 months   ki1000304b-SAS-CompFeed    INDIA                          10      414     62     29     33
12 months   ki1000304b-SAS-CompFeed    INDIA                          11      414     41     19     22
12 months   ki1000304b-SAS-CompFeed    INDIA                          12      414     76     44     32
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          1        92     13      0     13
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          2        92      8      2      6
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          3        92      7      2      5
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          4        92      8      2      6
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          5        92      8      2      6
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          6        92      8      1      7
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          7        92      5      1      4
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          8        92      0      0      0
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          9        92      4      1      3
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          10       92      5      1      4
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          11       92     10      2      8
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          12       92     16      5     11
12 months   ki1017093-NIH-Birth        BANGLADESH                     1       491     47     26     21
12 months   ki1017093-NIH-Birth        BANGLADESH                     2       491     41     27     14
12 months   ki1017093-NIH-Birth        BANGLADESH                     3       491     46     32     14
12 months   ki1017093-NIH-Birth        BANGLADESH                     4       491     40     26     14
12 months   ki1017093-NIH-Birth        BANGLADESH                     5       491     37     25     12
12 months   ki1017093-NIH-Birth        BANGLADESH                     6       491     36     25     11
12 months   ki1017093-NIH-Birth        BANGLADESH                     7       491     41     23     18
12 months   ki1017093-NIH-Birth        BANGLADESH                     8       491     33     19     14
12 months   ki1017093-NIH-Birth        BANGLADESH                     9       491     24     15      9
12 months   ki1017093-NIH-Birth        BANGLADESH                     10      491     49     32     17
12 months   ki1017093-NIH-Birth        BANGLADESH                     11      491     48     26     22
12 months   ki1017093-NIH-Birth        BANGLADESH                     12      491     49     31     18
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1      1444     92     73     19
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2      1444    111     95     16
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3      1444    101     83     18
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4      1444    106     78     28
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5      1444    111     94     17
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6      1444    106     85     21
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7      1444    142    118     24
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8      1444    154    127     27
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9      1444    130    113     17
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10     1444    148    132     16
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11     1444    127    110     17
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12     1444    116     97     19
12 months   ki1112895-Guatemala BSC    GUATEMALA                      1       201      8      3      5
12 months   ki1112895-Guatemala BSC    GUATEMALA                      2       201     15     10      5
12 months   ki1112895-Guatemala BSC    GUATEMALA                      3       201     16      6     10
12 months   ki1112895-Guatemala BSC    GUATEMALA                      4       201     13      5      8
12 months   ki1112895-Guatemala BSC    GUATEMALA                      5       201     22     13      9
12 months   ki1112895-Guatemala BSC    GUATEMALA                      6       201     32     18     14
12 months   ki1112895-Guatemala BSC    GUATEMALA                      7       201     20     11      9
12 months   ki1112895-Guatemala BSC    GUATEMALA                      8       201     13      9      4
12 months   ki1112895-Guatemala BSC    GUATEMALA                      9       201     24     12     12
12 months   ki1112895-Guatemala BSC    GUATEMALA                      10      201     14      5      9
12 months   ki1112895-Guatemala BSC    GUATEMALA                      11      201     17      7     10
12 months   ki1112895-Guatemala BSC    GUATEMALA                      12      201      7      2      5
12 months   ki1113344-GMS-Nepal        NEPAL                          1       558      0      0      0
12 months   ki1113344-GMS-Nepal        NEPAL                          2       558      0      0      0
12 months   ki1113344-GMS-Nepal        NEPAL                          3       558      0      0      0
12 months   ki1113344-GMS-Nepal        NEPAL                          4       558      0      0      0
12 months   ki1113344-GMS-Nepal        NEPAL                          5       558      0      0      0
12 months   ki1113344-GMS-Nepal        NEPAL                          6       558    106     67     39
12 months   ki1113344-GMS-Nepal        NEPAL                          7       558    214    137     77
12 months   ki1113344-GMS-Nepal        NEPAL                          8       558    221    151     70
12 months   ki1113344-GMS-Nepal        NEPAL                          9       558     15     11      4
12 months   ki1113344-GMS-Nepal        NEPAL                          10      558      2      1      1
12 months   ki1113344-GMS-Nepal        NEPAL                          11      558      0      0      0
12 months   ki1113344-GMS-Nepal        NEPAL                          12      558      0      0      0
12 months   ki1114097-CMIN             BANGLADESH                     1       242     27      9     18
12 months   ki1114097-CMIN             BANGLADESH                     2       242     23     14      9
12 months   ki1114097-CMIN             BANGLADESH                     3       242     17     11      6
12 months   ki1114097-CMIN             BANGLADESH                     4       242     22     13      9
12 months   ki1114097-CMIN             BANGLADESH                     5       242     17     12      5
12 months   ki1114097-CMIN             BANGLADESH                     6       242      9      3      6
12 months   ki1114097-CMIN             BANGLADESH                     7       242     16      8      8
12 months   ki1114097-CMIN             BANGLADESH                     8       242     19      7     12
12 months   ki1114097-CMIN             BANGLADESH                     9       242     20     10     10
12 months   ki1114097-CMIN             BANGLADESH                     10      242     25      9     16
12 months   ki1114097-CMIN             BANGLADESH                     11      242     24     11     13
12 months   ki1114097-CMIN             BANGLADESH                     12      242     23      6     17
12 months   ki1114097-CMIN             BRAZIL                         1       115     14     12      2
12 months   ki1114097-CMIN             BRAZIL                         2       115      7      3      4
12 months   ki1114097-CMIN             BRAZIL                         3       115     11      9      2
12 months   ki1114097-CMIN             BRAZIL                         4       115      9      9      0
12 months   ki1114097-CMIN             BRAZIL                         5       115      5      3      2
12 months   ki1114097-CMIN             BRAZIL                         6       115      7      4      3
12 months   ki1114097-CMIN             BRAZIL                         7       115      4      3      1
12 months   ki1114097-CMIN             BRAZIL                         8       115     14     13      1
12 months   ki1114097-CMIN             BRAZIL                         9       115      8      6      2
12 months   ki1114097-CMIN             BRAZIL                         10      115     15     13      2
12 months   ki1114097-CMIN             BRAZIL                         11      115     10      9      1
12 months   ki1114097-CMIN             BRAZIL                         12      115     11      7      4
12 months   ki1114097-CMIN             GUINEA-BISSAU                  1       620     37     29      8
12 months   ki1114097-CMIN             GUINEA-BISSAU                  2       620     40     29     11
12 months   ki1114097-CMIN             GUINEA-BISSAU                  3       620     43     34      9
12 months   ki1114097-CMIN             GUINEA-BISSAU                  4       620    135    107     28
12 months   ki1114097-CMIN             GUINEA-BISSAU                  5       620     79     69     10
12 months   ki1114097-CMIN             GUINEA-BISSAU                  6       620     52     43      9
12 months   ki1114097-CMIN             GUINEA-BISSAU                  7       620     36     29      7
12 months   ki1114097-CMIN             GUINEA-BISSAU                  8       620     33     26      7
12 months   ki1114097-CMIN             GUINEA-BISSAU                  9       620     63     52     11
12 months   ki1114097-CMIN             GUINEA-BISSAU                  10      620     39     30      9
12 months   ki1114097-CMIN             GUINEA-BISSAU                  11      620     34     25      9
12 months   ki1114097-CMIN             GUINEA-BISSAU                  12      620     29     23      6
12 months   ki1114097-CMIN             PERU                           1       601     93     70     23
12 months   ki1114097-CMIN             PERU                           2       601     41     36      5
12 months   ki1114097-CMIN             PERU                           3       601     53     40     13
12 months   ki1114097-CMIN             PERU                           4       601     70     58     12
12 months   ki1114097-CMIN             PERU                           5       601     55     49      6
12 months   ki1114097-CMIN             PERU                           6       601     47     40      7
12 months   ki1114097-CMIN             PERU                           7       601     47     37     10
12 months   ki1114097-CMIN             PERU                           8       601     43     35      8
12 months   ki1114097-CMIN             PERU                           9       601     31     26      5
12 months   ki1114097-CMIN             PERU                           10      601     27     18      9
12 months   ki1114097-CMIN             PERU                           11      601     62     50     12
12 months   ki1114097-CMIN             PERU                           12      601     32     27      5
12 months   ki1114097-CONTENT          PERU                           1       215      9      9      0
12 months   ki1114097-CONTENT          PERU                           2       215     16     16      0
12 months   ki1114097-CONTENT          PERU                           3       215     30     28      2
12 months   ki1114097-CONTENT          PERU                           4       215     12      8      4
12 months   ki1114097-CONTENT          PERU                           5       215     25     20      5
12 months   ki1114097-CONTENT          PERU                           6       215     14      9      5
12 months   ki1114097-CONTENT          PERU                           7       215     24     22      2
12 months   ki1114097-CONTENT          PERU                           8       215     18     16      2
12 months   ki1114097-CONTENT          PERU                           9       215     20     18      2
12 months   ki1114097-CONTENT          PERU                           10      215     24     21      3
12 months   ki1114097-CONTENT          PERU                           11      215     18     18      0
12 months   ki1114097-CONTENT          PERU                           12      215      5      4      1
12 months   ki1119695-PROBIT           BELARUS                        1      7736    488    470     18
12 months   ki1119695-PROBIT           BELARUS                        2      7736    469    454     15
12 months   ki1119695-PROBIT           BELARUS                        3      7736    570    553     17
12 months   ki1119695-PROBIT           BELARUS                        4      7736    526    509     17
12 months   ki1119695-PROBIT           BELARUS                        5      7736    579    560     19
12 months   ki1119695-PROBIT           BELARUS                        6      7736    578    553     25
12 months   ki1119695-PROBIT           BELARUS                        7      7736    710    689     21
12 months   ki1119695-PROBIT           BELARUS                        8      7736    785    759     26
12 months   ki1119695-PROBIT           BELARUS                        9      7736    689    661     28
12 months   ki1119695-PROBIT           BELARUS                        10     7736    793    765     28
12 months   ki1119695-PROBIT           BELARUS                        11     7736    731    703     28
12 months   ki1119695-PROBIT           BELARUS                        12     7736    818    796     22
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       1      6734    624    473    151
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       2      6734    501    373    128
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       3      6734    607    457    150
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       4      6734    515    398    117
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       5      6734    498    376    122
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       6      6734    566    415    151
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       7      6734    562    410    152
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       8      6734    611    461    150
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       9      6734    634    489    145
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       10     6734    461    342    119
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       11     6734    548    416    132
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       12     6734    607    479    128
12 months   ki1148112-LCNI-5           MALAWI                         1       626     43     28     15
12 months   ki1148112-LCNI-5           MALAWI                         2       626     94     63     31
12 months   ki1148112-LCNI-5           MALAWI                         3       626     71     47     24
12 months   ki1148112-LCNI-5           MALAWI                         4       626     81     41     40
12 months   ki1148112-LCNI-5           MALAWI                         5       626     71     43     28
12 months   ki1148112-LCNI-5           MALAWI                         6       626     69     40     29
12 months   ki1148112-LCNI-5           MALAWI                         7       626     55     29     26
12 months   ki1148112-LCNI-5           MALAWI                         8       626     37     27     10
12 months   ki1148112-LCNI-5           MALAWI                         9       626     19     10      9
12 months   ki1148112-LCNI-5           MALAWI                         10      626     25     17      8
12 months   ki1148112-LCNI-5           MALAWI                         11      626     38     22     16
12 months   ki1148112-LCNI-5           MALAWI                         12      626     23     12     11
12 months   kiGH5241-JiVitA-3          BANGLADESH                     1      7208    609    347    262
12 months   kiGH5241-JiVitA-3          BANGLADESH                     2      7208    528    305    223
12 months   kiGH5241-JiVitA-3          BANGLADESH                     3      7208    651    400    251
12 months   kiGH5241-JiVitA-3          BANGLADESH                     4      7208    545    342    203
12 months   kiGH5241-JiVitA-3          BANGLADESH                     5      7208    543    359    184
12 months   kiGH5241-JiVitA-3          BANGLADESH                     6      7208    509    300    209
12 months   kiGH5241-JiVitA-3          BANGLADESH                     7      7208    536    347    189
12 months   kiGH5241-JiVitA-3          BANGLADESH                     8      7208    561    371    190
12 months   kiGH5241-JiVitA-3          BANGLADESH                     9      7208    635    394    241
12 months   kiGH5241-JiVitA-3          BANGLADESH                     10     7208    667    392    275
12 months   kiGH5241-JiVitA-3          BANGLADESH                     11     7208    718    392    326
12 months   kiGH5241-JiVitA-3          BANGLADESH                     12     7208    706    399    307
12 months   kiGH5241-JiVitA-4          BANGLADESH                     1      1277     18     13      5
12 months   kiGH5241-JiVitA-4          BANGLADESH                     2      1277     90     64     26
12 months   kiGH5241-JiVitA-4          BANGLADESH                     3      1277    104     69     35
12 months   kiGH5241-JiVitA-4          BANGLADESH                     4      1277    229    158     71
12 months   kiGH5241-JiVitA-4          BANGLADESH                     5      1277    160    103     57
12 months   kiGH5241-JiVitA-4          BANGLADESH                     6      1277    116     75     41
12 months   kiGH5241-JiVitA-4          BANGLADESH                     7      1277    210    141     69
12 months   kiGH5241-JiVitA-4          BANGLADESH                     8      1277    131     85     46
12 months   kiGH5241-JiVitA-4          BANGLADESH                     9      1277    103     61     42
12 months   kiGH5241-JiVitA-4          BANGLADESH                     10     1277     64     45     19
12 months   kiGH5241-JiVitA-4          BANGLADESH                     11     1277     32     26      6
12 months   kiGH5241-JiVitA-4          BANGLADESH                     12     1277     20     11      9
18 months   ki0047075b-MAL-ED          BANGLADESH                     1       221     16     11      5
18 months   ki0047075b-MAL-ED          BANGLADESH                     2       221     18      5     13
18 months   ki0047075b-MAL-ED          BANGLADESH                     3       221     20      7     13
18 months   ki0047075b-MAL-ED          BANGLADESH                     4       221     20     12      8
18 months   ki0047075b-MAL-ED          BANGLADESH                     5       221     19      9     10
18 months   ki0047075b-MAL-ED          BANGLADESH                     6       221      6      2      4
18 months   ki0047075b-MAL-ED          BANGLADESH                     7       221     20     10     10
18 months   ki0047075b-MAL-ED          BANGLADESH                     8       221     21     12      9
18 months   ki0047075b-MAL-ED          BANGLADESH                     9       221     21     13      8
18 months   ki0047075b-MAL-ED          BANGLADESH                     10      221     21     13      8
18 months   ki0047075b-MAL-ED          BANGLADESH                     11      221     11      4      7
18 months   ki0047075b-MAL-ED          BANGLADESH                     12      221     28     18     10
18 months   ki0047075b-MAL-ED          BRAZIL                         1       180     13     12      1
18 months   ki0047075b-MAL-ED          BRAZIL                         2       180     17     15      2
18 months   ki0047075b-MAL-ED          BRAZIL                         3       180     17     17      0
18 months   ki0047075b-MAL-ED          BRAZIL                         4       180     10     10      0
18 months   ki0047075b-MAL-ED          BRAZIL                         5       180     17     17      0
18 months   ki0047075b-MAL-ED          BRAZIL                         6       180      6      6      0
18 months   ki0047075b-MAL-ED          BRAZIL                         7       180     16     15      1
18 months   ki0047075b-MAL-ED          BRAZIL                         8       180     13     13      0
18 months   ki0047075b-MAL-ED          BRAZIL                         9       180     26     25      1
18 months   ki0047075b-MAL-ED          BRAZIL                         10      180     15     14      1
18 months   ki0047075b-MAL-ED          BRAZIL                         11      180     16     16      0
18 months   ki0047075b-MAL-ED          BRAZIL                         12      180     14     13      1
18 months   ki0047075b-MAL-ED          INDIA                          1       228     19      7     12
18 months   ki0047075b-MAL-ED          INDIA                          2       228     18     13      5
18 months   ki0047075b-MAL-ED          INDIA                          3       228     18     11      7
18 months   ki0047075b-MAL-ED          INDIA                          4       228     15      7      8
18 months   ki0047075b-MAL-ED          INDIA                          5       228      8      4      4
18 months   ki0047075b-MAL-ED          INDIA                          6       228     18     10      8
18 months   ki0047075b-MAL-ED          INDIA                          7       228     23     11     12
18 months   ki0047075b-MAL-ED          INDIA                          8       228     21     11     10
18 months   ki0047075b-MAL-ED          INDIA                          9       228     18     11      7
18 months   ki0047075b-MAL-ED          INDIA                          10      228     27     13     14
18 months   ki0047075b-MAL-ED          INDIA                          11      228     24     13     11
18 months   ki0047075b-MAL-ED          INDIA                          12      228     19     13      6
18 months   ki0047075b-MAL-ED          NEPAL                          1       229     20     17      3
18 months   ki0047075b-MAL-ED          NEPAL                          2       229     16     11      5
18 months   ki0047075b-MAL-ED          NEPAL                          3       229     17     12      5
18 months   ki0047075b-MAL-ED          NEPAL                          4       229     20     16      4
18 months   ki0047075b-MAL-ED          NEPAL                          5       229     18     12      6
18 months   ki0047075b-MAL-ED          NEPAL                          6       229     21     18      3
18 months   ki0047075b-MAL-ED          NEPAL                          7       229     18     15      3
18 months   ki0047075b-MAL-ED          NEPAL                          8       229     24     20      4
18 months   ki0047075b-MAL-ED          NEPAL                          9       229     13     11      2
18 months   ki0047075b-MAL-ED          NEPAL                          10      229     21     18      3
18 months   ki0047075b-MAL-ED          NEPAL                          11      229     24     19      5
18 months   ki0047075b-MAL-ED          NEPAL                          12      229     17     15      2
18 months   ki0047075b-MAL-ED          PERU                           1       222     32     15     17
18 months   ki0047075b-MAL-ED          PERU                           2       222     19     10      9
18 months   ki0047075b-MAL-ED          PERU                           3       222     15      9      6
18 months   ki0047075b-MAL-ED          PERU                           4       222     15      5     10
18 months   ki0047075b-MAL-ED          PERU                           5       222     19      9     10
18 months   ki0047075b-MAL-ED          PERU                           6       222     15      8      7
18 months   ki0047075b-MAL-ED          PERU                           7       222     18      5     13
18 months   ki0047075b-MAL-ED          PERU                           8       222     14      8      6
18 months   ki0047075b-MAL-ED          PERU                           9       222     21     18      3
18 months   ki0047075b-MAL-ED          PERU                           10      222     14     11      3
18 months   ki0047075b-MAL-ED          PERU                           11      222     23     14      9
18 months   ki0047075b-MAL-ED          PERU                           12      222     17     11      6
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1       241     35     22     13
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2       241     22     13      9
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3       241     14     11      3
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4       241     12     10      2
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5       241     11     10      1
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6       241     15     11      4
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7       241     24     15      9
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8       241      8      6      2
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9       241     19     14      5
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10      241     25     17      8
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11      241     23     11     12
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12      241     33     19     14
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1       225     16      4     12
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2       225     24      3     21
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3       225     19      7     12
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4       225      8      3      5
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5       225     16      7      9
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6       225     20      7     13
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7       225     23     10     13
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8       225     12      5      7
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9       225     19      6     13
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10      225     18      4     14
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11      225     25      7     18
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12      225     25      6     19
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          1       369     34     15     19
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          2       369     16      2     14
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          3       369     30      7     23
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          4       369     43     19     24
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          5       369     35      7     28
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          6       369     36     11     25
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          7       369     39     12     27
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          8       369     18      7     11
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          9       369     21      7     14
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          10      369     29     12     17
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          11      369     43     15     28
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          12      369     25      1     24
18 months   ki1000108-IRC              INDIA                          1       405     36     21     15
18 months   ki1000108-IRC              INDIA                          2       405     27     16     11
18 months   ki1000108-IRC              INDIA                          3       405     29     18     11
18 months   ki1000108-IRC              INDIA                          4       405     22     12     10
18 months   ki1000108-IRC              INDIA                          5       405     21      9     12
18 months   ki1000108-IRC              INDIA                          6       405     37     32      5
18 months   ki1000108-IRC              INDIA                          7       405     36     26     10
18 months   ki1000108-IRC              INDIA                          8       405     44     31     13
18 months   ki1000108-IRC              INDIA                          9       405     27     12     15
18 months   ki1000108-IRC              INDIA                          10      405     34     28      6
18 months   ki1000108-IRC              INDIA                          11      405     41     25     16
18 months   ki1000108-IRC              INDIA                          12      405     51     31     20
18 months   ki1000109-EE               PAKISTAN                       1       350     87     12     75
18 months   ki1000109-EE               PAKISTAN                       2       350     56     10     46
18 months   ki1000109-EE               PAKISTAN                       3       350     40      5     35
18 months   ki1000109-EE               PAKISTAN                       4       350     16      1     15
18 months   ki1000109-EE               PAKISTAN                       5       350      0      0      0
18 months   ki1000109-EE               PAKISTAN                       6       350      0      0      0
18 months   ki1000109-EE               PAKISTAN                       7       350      0      0      0
18 months   ki1000109-EE               PAKISTAN                       8       350      0      0      0
18 months   ki1000109-EE               PAKISTAN                       9       350      0      0      0
18 months   ki1000109-EE               PAKISTAN                       10      350      4      1      3
18 months   ki1000109-EE               PAKISTAN                       11      350     65     10     55
18 months   ki1000109-EE               PAKISTAN                       12      350     82     14     68
18 months   ki1000109-ResPak           PAKISTAN                       1         9      1      1      0
18 months   ki1000109-ResPak           PAKISTAN                       2         9      2      1      1
18 months   ki1000109-ResPak           PAKISTAN                       3         9      2      2      0
18 months   ki1000109-ResPak           PAKISTAN                       4         9      2      2      0
18 months   ki1000109-ResPak           PAKISTAN                       5         9      2      1      1
18 months   ki1000109-ResPak           PAKISTAN                       6         9      0      0      0
18 months   ki1000109-ResPak           PAKISTAN                       7         9      0      0      0
18 months   ki1000109-ResPak           PAKISTAN                       8         9      0      0      0
18 months   ki1000109-ResPak           PAKISTAN                       9         9      0      0      0
18 months   ki1000109-ResPak           PAKISTAN                       10        9      0      0      0
18 months   ki1000109-ResPak           PAKISTAN                       11        9      0      0      0
18 months   ki1000109-ResPak           PAKISTAN                       12        9      0      0      0
18 months   ki1000304b-SAS-CompFeed    INDIA                          1       395     48     20     28
18 months   ki1000304b-SAS-CompFeed    INDIA                          2       395     32     17     15
18 months   ki1000304b-SAS-CompFeed    INDIA                          3       395     34     20     14
18 months   ki1000304b-SAS-CompFeed    INDIA                          4       395     29     12     17
18 months   ki1000304b-SAS-CompFeed    INDIA                          5       395     32     11     21
18 months   ki1000304b-SAS-CompFeed    INDIA                          6       395     46     23     23
18 months   ki1000304b-SAS-CompFeed    INDIA                          7       395      5      3      2
18 months   ki1000304b-SAS-CompFeed    INDIA                          8       395      0      0      0
18 months   ki1000304b-SAS-CompFeed    INDIA                          9       395      0      0      0
18 months   ki1000304b-SAS-CompFeed    INDIA                          10      395     60     27     33
18 months   ki1000304b-SAS-CompFeed    INDIA                          11      395     40     21     19
18 months   ki1000304b-SAS-CompFeed    INDIA                          12      395     69     34     35
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          1        84     13      1     12
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          2        84      6      0      6
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          3        84      7      1      6
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          4        84      7      0      7
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          5        84      6      0      6
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          6        84      7      1      6
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          7        84      5      2      3
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          8        84      0      0      0
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          9        84      4      0      4
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          10       84      5      1      4
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          11       84     11      2      9
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          12       84     13      2     11
18 months   ki1017093-NIH-Birth        BANGLADESH                     1       463     45     18     27
18 months   ki1017093-NIH-Birth        BANGLADESH                     2       463     35     13     22
18 months   ki1017093-NIH-Birth        BANGLADESH                     3       463     44     21     23
18 months   ki1017093-NIH-Birth        BANGLADESH                     4       463     38     13     25
18 months   ki1017093-NIH-Birth        BANGLADESH                     5       463     35     13     22
18 months   ki1017093-NIH-Birth        BANGLADESH                     6       463     35     12     23
18 months   ki1017093-NIH-Birth        BANGLADESH                     7       463     41     14     27
18 months   ki1017093-NIH-Birth        BANGLADESH                     8       463     31     15     16
18 months   ki1017093-NIH-Birth        BANGLADESH                     9       463     25     11     14
18 months   ki1017093-NIH-Birth        BANGLADESH                     10      463     45     18     27
18 months   ki1017093-NIH-Birth        BANGLADESH                     11      463     44     18     26
18 months   ki1017093-NIH-Birth        BANGLADESH                     12      463     45     25     20
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1       980     69     48     21
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2       980     79     67     12
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3       980     77     54     23
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4       980     83     57     26
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5       980     78     62     16
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6       980     66     52     14
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7       980     85     64     21
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8       980     98     78     20
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9       980     85     63     22
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10      980    102     78     24
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11      980     81     64     17
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12      980     77     57     20
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1       611     32     17     15
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2       611     30     20     10
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   3       611     46     30     16
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   4       611     27     17     10
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   5       611     61     34     27
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   6       611     72     43     29
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   7       611     75     40     35
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   8       611     63     44     19
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   9       611     66     37     29
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   10      611     54     32     22
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   11      611     46     30     16
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   12      611     39     26     13
18 months   ki1113344-GMS-Nepal        NEPAL                          1       550      0      0      0
18 months   ki1113344-GMS-Nepal        NEPAL                          2       550      0      0      0
18 months   ki1113344-GMS-Nepal        NEPAL                          3       550      0      0      0
18 months   ki1113344-GMS-Nepal        NEPAL                          4       550      0      0      0
18 months   ki1113344-GMS-Nepal        NEPAL                          5       550      0      0      0
18 months   ki1113344-GMS-Nepal        NEPAL                          6       550    104     52     52
18 months   ki1113344-GMS-Nepal        NEPAL                          7       550    216     95    121
18 months   ki1113344-GMS-Nepal        NEPAL                          8       550    213     99    114
18 months   ki1113344-GMS-Nepal        NEPAL                          9       550     15     11      4
18 months   ki1113344-GMS-Nepal        NEPAL                          10      550      2      1      1
18 months   ki1113344-GMS-Nepal        NEPAL                          11      550      0      0      0
18 months   ki1113344-GMS-Nepal        NEPAL                          12      550      0      0      0
18 months   ki1114097-CMIN             BANGLADESH                     1       237     24      8     16
18 months   ki1114097-CMIN             BANGLADESH                     2       237     23      8     15
18 months   ki1114097-CMIN             BANGLADESH                     3       237     17      8      9
18 months   ki1114097-CMIN             BANGLADESH                     4       237     20      5     15
18 months   ki1114097-CMIN             BANGLADESH                     5       237     17      6     11
18 months   ki1114097-CMIN             BANGLADESH                     6       237      9      2      7
18 months   ki1114097-CMIN             BANGLADESH                     7       237     16      6     10
18 months   ki1114097-CMIN             BANGLADESH                     8       237     17      1     16
18 months   ki1114097-CMIN             BANGLADESH                     9       237     20      5     15
18 months   ki1114097-CMIN             BANGLADESH                     10      237     24      7     17
18 months   ki1114097-CMIN             BANGLADESH                     11      237     25      5     20
18 months   ki1114097-CMIN             BANGLADESH                     12      237     25      5     20
18 months   ki1114097-CMIN             BRAZIL                         1       115     14     11      3
18 months   ki1114097-CMIN             BRAZIL                         2       115      7      3      4
18 months   ki1114097-CMIN             BRAZIL                         3       115     13     10      3
18 months   ki1114097-CMIN             BRAZIL                         4       115      9      8      1
18 months   ki1114097-CMIN             BRAZIL                         5       115      5      4      1
18 months   ki1114097-CMIN             BRAZIL                         6       115      7      6      1
18 months   ki1114097-CMIN             BRAZIL                         7       115      4      3      1
18 months   ki1114097-CMIN             BRAZIL                         8       115     14     13      1
18 months   ki1114097-CMIN             BRAZIL                         9       115      8      5      3
18 months   ki1114097-CMIN             BRAZIL                         10      115     12      7      5
18 months   ki1114097-CMIN             BRAZIL                         11      115     11     10      1
18 months   ki1114097-CMIN             BRAZIL                         12      115     11      7      4
18 months   ki1114097-CMIN             GUINEA-BISSAU                  1       754     51     34     17
18 months   ki1114097-CMIN             GUINEA-BISSAU                  2       754     47     34     13
18 months   ki1114097-CMIN             GUINEA-BISSAU                  3       754     53     43     10
18 months   ki1114097-CMIN             GUINEA-BISSAU                  4       754    166    106     60
18 months   ki1114097-CMIN             GUINEA-BISSAU                  5       754     80     64     16
18 months   ki1114097-CMIN             GUINEA-BISSAU                  6       754     67     54     13
18 months   ki1114097-CMIN             GUINEA-BISSAU                  7       754     40     27     13
18 months   ki1114097-CMIN             GUINEA-BISSAU                  8       754     35     26      9
18 months   ki1114097-CMIN             GUINEA-BISSAU                  9       754     78     56     22
18 months   ki1114097-CMIN             GUINEA-BISSAU                  10      754     43     32     11
18 months   ki1114097-CMIN             GUINEA-BISSAU                  11      754     43     29     14
18 months   ki1114097-CMIN             GUINEA-BISSAU                  12      754     51     37     14
18 months   ki1114097-CMIN             PERU                           1       489    126     73     53
18 months   ki1114097-CMIN             PERU                           2       489     37     29      8
18 months   ki1114097-CMIN             PERU                           3       489     42     29     13
18 months   ki1114097-CMIN             PERU                           4       489     44     34     10
18 months   ki1114097-CMIN             PERU                           5       489     37     25     12
18 months   ki1114097-CMIN             PERU                           6       489     25     18      7
18 months   ki1114097-CMIN             PERU                           7       489     25     20      5
18 months   ki1114097-CMIN             PERU                           8       489     28     22      6
18 months   ki1114097-CMIN             PERU                           9       489     20     14      6
18 months   ki1114097-CMIN             PERU                           10      489     23     12     11
18 months   ki1114097-CMIN             PERU                           11      489     60     43     17
18 months   ki1114097-CMIN             PERU                           12      489     22     16      6
18 months   ki1114097-CONTENT          PERU                           1       200      9      9      0
18 months   ki1114097-CONTENT          PERU                           2       200     15     13      2
18 months   ki1114097-CONTENT          PERU                           3       200     27     24      3
18 months   ki1114097-CONTENT          PERU                           4       200     12      6      6
18 months   ki1114097-CONTENT          PERU                           5       200     25     20      5
18 months   ki1114097-CONTENT          PERU                           6       200     13      9      4
18 months   ki1114097-CONTENT          PERU                           7       200     20     19      1
18 months   ki1114097-CONTENT          PERU                           8       200     18     16      2
18 months   ki1114097-CONTENT          PERU                           9       200     19     16      3
18 months   ki1114097-CONTENT          PERU                           10      200     21     20      1
18 months   ki1114097-CONTENT          PERU                           11      200     18     18      0
18 months   ki1114097-CONTENT          PERU                           12      200      3      3      0
18 months   ki1119695-PROBIT           BELARUS                        1       764     39     34      5
18 months   ki1119695-PROBIT           BELARUS                        2       764     38     29      9
18 months   ki1119695-PROBIT           BELARUS                        3       764     65     56      9
18 months   ki1119695-PROBIT           BELARUS                        4       764     74     63     11
18 months   ki1119695-PROBIT           BELARUS                        5       764     70     53     17
18 months   ki1119695-PROBIT           BELARUS                        6       764     73     68      5
18 months   ki1119695-PROBIT           BELARUS                        7       764     62     60      2
18 months   ki1119695-PROBIT           BELARUS                        8       764     67     63      4
18 months   ki1119695-PROBIT           BELARUS                        9       764     66     61      5
18 months   ki1119695-PROBIT           BELARUS                        10      764     76     73      3
18 months   ki1119695-PROBIT           BELARUS                        11      764     68     64      4
18 months   ki1119695-PROBIT           BELARUS                        12      764     66     61      5
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       1      1705    207     98    109
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       2      1705    184     90     94
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       3      1705    139     73     66
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       4      1705    138     76     62
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       5      1705    117     63     54
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       6      1705    143     89     54
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       7      1705    115     53     62
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       8      1705    130     74     56
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       9      1705    119     65     54
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       10     1705    107     56     51
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       11     1705    132     68     64
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       12     1705    174     89     85
18 months   ki1148112-LCNI-5           MALAWI                         1       725     48     25     23
18 months   ki1148112-LCNI-5           MALAWI                         2       725    101     63     38
18 months   ki1148112-LCNI-5           MALAWI                         3       725     87     51     36
18 months   ki1148112-LCNI-5           MALAWI                         4       725     97     44     53
18 months   ki1148112-LCNI-5           MALAWI                         5       725     84     41     43
18 months   ki1148112-LCNI-5           MALAWI                         6       725     84     41     43
18 months   ki1148112-LCNI-5           MALAWI                         7       725     60     32     28
18 months   ki1148112-LCNI-5           MALAWI                         8       725     41     28     13
18 months   ki1148112-LCNI-5           MALAWI                         9       725     22     11     11
18 months   ki1148112-LCNI-5           MALAWI                         10      725     31     20     11
18 months   ki1148112-LCNI-5           MALAWI                         11      725     40     24     16
18 months   ki1148112-LCNI-5           MALAWI                         12      725     30     12     18
18 months   kiGH5241-JiVitA-4          BANGLADESH                     1      1232     17     13      4
18 months   kiGH5241-JiVitA-4          BANGLADESH                     2      1232     79     52     27
18 months   kiGH5241-JiVitA-4          BANGLADESH                     3      1232    103     60     43
18 months   kiGH5241-JiVitA-4          BANGLADESH                     4      1232    225    122    103
18 months   kiGH5241-JiVitA-4          BANGLADESH                     5      1232    163     90     73
18 months   kiGH5241-JiVitA-4          BANGLADESH                     6      1232    109     59     50
18 months   kiGH5241-JiVitA-4          BANGLADESH                     7      1232    200    106     94
18 months   kiGH5241-JiVitA-4          BANGLADESH                     8      1232    130     67     63
18 months   kiGH5241-JiVitA-4          BANGLADESH                     9      1232     97     49     48
18 months   kiGH5241-JiVitA-4          BANGLADESH                     10     1232     59     39     20
18 months   kiGH5241-JiVitA-4          BANGLADESH                     11     1232     31     22      9
18 months   kiGH5241-JiVitA-4          BANGLADESH                     12     1232     19      8     11
24 months   ki0047075b-MAL-ED          BANGLADESH                     1       212     14      8      6
24 months   ki0047075b-MAL-ED          BANGLADESH                     2       212     17      6     11
24 months   ki0047075b-MAL-ED          BANGLADESH                     3       212     20      7     13
24 months   ki0047075b-MAL-ED          BANGLADESH                     4       212     20     13      7
24 months   ki0047075b-MAL-ED          BANGLADESH                     5       212     19      9     10
24 months   ki0047075b-MAL-ED          BANGLADESH                     6       212      5      2      3
24 months   ki0047075b-MAL-ED          BANGLADESH                     7       212     20     11      9
24 months   ki0047075b-MAL-ED          BANGLADESH                     8       212     21     11     10
24 months   ki0047075b-MAL-ED          BANGLADESH                     9       212     19     12      7
24 months   ki0047075b-MAL-ED          BANGLADESH                     10      212     20     13      7
24 months   ki0047075b-MAL-ED          BANGLADESH                     11      212     10      4      6
24 months   ki0047075b-MAL-ED          BANGLADESH                     12      212     27     18      9
24 months   ki0047075b-MAL-ED          BRAZIL                         1       169     13     12      1
24 months   ki0047075b-MAL-ED          BRAZIL                         2       169     17     16      1
24 months   ki0047075b-MAL-ED          BRAZIL                         3       169     15     15      0
24 months   ki0047075b-MAL-ED          BRAZIL                         4       169     10     10      0
24 months   ki0047075b-MAL-ED          BRAZIL                         5       169     15     15      0
24 months   ki0047075b-MAL-ED          BRAZIL                         6       169      5      5      0
24 months   ki0047075b-MAL-ED          BRAZIL                         7       169     11     10      1
24 months   ki0047075b-MAL-ED          BRAZIL                         8       169     13     13      0
24 months   ki0047075b-MAL-ED          BRAZIL                         9       169     26     25      1
24 months   ki0047075b-MAL-ED          BRAZIL                         10      169     15     14      1
24 months   ki0047075b-MAL-ED          BRAZIL                         11      169     15     15      0
24 months   ki0047075b-MAL-ED          BRAZIL                         12      169     14     13      1
24 months   ki0047075b-MAL-ED          INDIA                          1       227     19      6     13
24 months   ki0047075b-MAL-ED          INDIA                          2       227     18     14      4
24 months   ki0047075b-MAL-ED          INDIA                          3       227     18     11      7
24 months   ki0047075b-MAL-ED          INDIA                          4       227     15      8      7
24 months   ki0047075b-MAL-ED          INDIA                          5       227      8      5      3
24 months   ki0047075b-MAL-ED          INDIA                          6       227     17     12      5
24 months   ki0047075b-MAL-ED          INDIA                          7       227     23     12     11
24 months   ki0047075b-MAL-ED          INDIA                          8       227     21     11     10
24 months   ki0047075b-MAL-ED          INDIA                          9       227     18     12      6
24 months   ki0047075b-MAL-ED          INDIA                          10      227     27     14     13
24 months   ki0047075b-MAL-ED          INDIA                          11      227     24     14     10
24 months   ki0047075b-MAL-ED          INDIA                          12      227     19     13      6
24 months   ki0047075b-MAL-ED          NEPAL                          1       228     19     15      4
24 months   ki0047075b-MAL-ED          NEPAL                          2       228     17     12      5
24 months   ki0047075b-MAL-ED          NEPAL                          3       228     17      8      9
24 months   ki0047075b-MAL-ED          NEPAL                          4       228     20     17      3
24 months   ki0047075b-MAL-ED          NEPAL                          5       228     18     13      5
24 months   ki0047075b-MAL-ED          NEPAL                          6       228     21     19      2
24 months   ki0047075b-MAL-ED          NEPAL                          7       228     17     15      2
24 months   ki0047075b-MAL-ED          NEPAL                          8       228     24     22      2
24 months   ki0047075b-MAL-ED          NEPAL                          9       228     13     11      2
24 months   ki0047075b-MAL-ED          NEPAL                          10      228     21     18      3
24 months   ki0047075b-MAL-ED          NEPAL                          11      228     24     15      9
24 months   ki0047075b-MAL-ED          NEPAL                          12      228     17     14      3
24 months   ki0047075b-MAL-ED          PERU                           1       201     28     13     15
24 months   ki0047075b-MAL-ED          PERU                           2       201     19     13      6
24 months   ki0047075b-MAL-ED          PERU                           3       201     14      8      6
24 months   ki0047075b-MAL-ED          PERU                           4       201     12      7      5
24 months   ki0047075b-MAL-ED          PERU                           5       201     19     11      8
24 months   ki0047075b-MAL-ED          PERU                           6       201     11      8      3
24 months   ki0047075b-MAL-ED          PERU                           7       201     15     11      4
24 months   ki0047075b-MAL-ED          PERU                           8       201     12      8      4
24 months   ki0047075b-MAL-ED          PERU                           9       201     21     17      4
24 months   ki0047075b-MAL-ED          PERU                           10      201     13     11      2
24 months   ki0047075b-MAL-ED          PERU                           11      201     21     12      9
24 months   ki0047075b-MAL-ED          PERU                           12      201     16      8      8
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1       238     34     21     13
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2       238     21     10     11
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3       238     15     11      4
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4       238     12     11      1
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5       238     11      9      2
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6       238     15      9      6
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7       238     24     15      9
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8       238      8      7      1
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9       238     19     14      5
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10      238     25     18      7
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11      238     22     11     11
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12      238     32     18     14
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1       214     17      6     11
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2       214     21      3     18
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3       214     19      5     14
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4       214      6      0      6
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5       214     16      4     12
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6       214     19      6     13
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7       214     23      9     14
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8       214     12      4      8
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9       214     18      6     12
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10      214     15      3     12
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11      214     23      7     16
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12      214     25      8     17
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1       372     34     15     19
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2       372     16      4     12
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3       372     31      6     25
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4       372     44     15     29
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          5       372     36      8     28
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          6       372     37     10     27
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          7       372     39     11     28
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          8       372     17      5     12
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          9       372     21      7     14
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          10      372     29      9     20
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          11      372     43     12     31
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          12      372     25      4     21
24 months   ki1000108-IRC              INDIA                          1       409     36     17     19
24 months   ki1000108-IRC              INDIA                          2       409     27     13     14
24 months   ki1000108-IRC              INDIA                          3       409     29     14     15
24 months   ki1000108-IRC              INDIA                          4       409     22      9     13
24 months   ki1000108-IRC              INDIA                          5       409     21      4     17
24 months   ki1000108-IRC              INDIA                          6       409     37     29      8
24 months   ki1000108-IRC              INDIA                          7       409     36     21     15
24 months   ki1000108-IRC              INDIA                          8       409     45     34     11
24 months   ki1000108-IRC              INDIA                          9       409     27     13     14
24 months   ki1000108-IRC              INDIA                          10      409     36     27      9
24 months   ki1000108-IRC              INDIA                          11      409     41     27     14
24 months   ki1000108-IRC              INDIA                          12      409     52     31     21
24 months   ki1017093-NIH-Birth        BANGLADESH                     1       429     42     15     27
24 months   ki1017093-NIH-Birth        BANGLADESH                     2       429     36     13     23
24 months   ki1017093-NIH-Birth        BANGLADESH                     3       429     41     23     18
24 months   ki1017093-NIH-Birth        BANGLADESH                     4       429     34     12     22
24 months   ki1017093-NIH-Birth        BANGLADESH                     5       429     34     13     21
24 months   ki1017093-NIH-Birth        BANGLADESH                     6       429     30     13     17
24 months   ki1017093-NIH-Birth        BANGLADESH                     7       429     37     17     20
24 months   ki1017093-NIH-Birth        BANGLADESH                     8       429     30     14     16
24 months   ki1017093-NIH-Birth        BANGLADESH                     9       429     19     11      8
24 months   ki1017093-NIH-Birth        BANGLADESH                     10      429     40     19     21
24 months   ki1017093-NIH-Birth        BANGLADESH                     11      429     41     20     21
24 months   ki1017093-NIH-Birth        BANGLADESH                     12      429     45     21     24
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
24 months   ki1113344-GMS-Nepal        NEPAL                          1       499      0      0      0
24 months   ki1113344-GMS-Nepal        NEPAL                          2       499      0      0      0
24 months   ki1113344-GMS-Nepal        NEPAL                          3       499      0      0      0
24 months   ki1113344-GMS-Nepal        NEPAL                          4       499      0      0      0
24 months   ki1113344-GMS-Nepal        NEPAL                          5       499      0      0      0
24 months   ki1113344-GMS-Nepal        NEPAL                          6       499     79     44     35
24 months   ki1113344-GMS-Nepal        NEPAL                          7       499    201    106     95
24 months   ki1113344-GMS-Nepal        NEPAL                          8       499    201    115     86
24 months   ki1113344-GMS-Nepal        NEPAL                          9       499     16      9      7
24 months   ki1113344-GMS-Nepal        NEPAL                          10      499      2      2      0
24 months   ki1113344-GMS-Nepal        NEPAL                          11      499      0      0      0
24 months   ki1113344-GMS-Nepal        NEPAL                          12      499      0      0      0
24 months   ki1114097-CMIN             BANGLADESH                     1       242     26      8     18
24 months   ki1114097-CMIN             BANGLADESH                     2       242     24      8     16
24 months   ki1114097-CMIN             BANGLADESH                     3       242     18      9      9
24 months   ki1114097-CMIN             BANGLADESH                     4       242     22      7     15
24 months   ki1114097-CMIN             BANGLADESH                     5       242     16      5     11
24 months   ki1114097-CMIN             BANGLADESH                     6       242      8      2      6
24 months   ki1114097-CMIN             BANGLADESH                     7       242     15      7      8
24 months   ki1114097-CMIN             BANGLADESH                     8       242     18      4     14
24 months   ki1114097-CMIN             BANGLADESH                     9       242     20      8     12
24 months   ki1114097-CMIN             BANGLADESH                     10      242     24      6     18
24 months   ki1114097-CMIN             BANGLADESH                     11      242     25      8     17
24 months   ki1114097-CMIN             BANGLADESH                     12      242     26      5     21
24 months   ki1114097-CMIN             GUINEA-BISSAU                  1       551     29     17     12
24 months   ki1114097-CMIN             GUINEA-BISSAU                  2       551     42     32     10
24 months   ki1114097-CMIN             GUINEA-BISSAU                  3       551     45     30     15
24 months   ki1114097-CMIN             GUINEA-BISSAU                  4       551    157     94     63
24 months   ki1114097-CMIN             GUINEA-BISSAU                  5       551     51     35     16
24 months   ki1114097-CMIN             GUINEA-BISSAU                  6       551     38     26     12
24 months   ki1114097-CMIN             GUINEA-BISSAU                  7       551     23     14      9
24 months   ki1114097-CMIN             GUINEA-BISSAU                  8       551     24     16      8
24 months   ki1114097-CMIN             GUINEA-BISSAU                  9       551     60     41     19
24 months   ki1114097-CMIN             GUINEA-BISSAU                  10      551     34     24     10
24 months   ki1114097-CMIN             GUINEA-BISSAU                  11      551     23     17      6
24 months   ki1114097-CMIN             GUINEA-BISSAU                  12      551     25     18      7
24 months   ki1114097-CMIN             PERU                           1       429    186    118     68
24 months   ki1114097-CMIN             PERU                           2       429     20     16      4
24 months   ki1114097-CMIN             PERU                           3       429     27     18      9
24 months   ki1114097-CMIN             PERU                           4       429     22     14      8
24 months   ki1114097-CMIN             PERU                           5       429     23     14      9
24 months   ki1114097-CMIN             PERU                           6       429     20     15      5
24 months   ki1114097-CMIN             PERU                           7       429     21     16      5
24 months   ki1114097-CMIN             PERU                           8       429     24     18      6
24 months   ki1114097-CMIN             PERU                           9       429      8      7      1
24 months   ki1114097-CMIN             PERU                           10      429     17     10      7
24 months   ki1114097-CMIN             PERU                           11      429     46     34     12
24 months   ki1114097-CMIN             PERU                           12      429     15     12      3
24 months   ki1114097-CONTENT          PERU                           1       164      8      8      0
24 months   ki1114097-CONTENT          PERU                           2       164     13     12      1
24 months   ki1114097-CONTENT          PERU                           3       164     20     19      1
24 months   ki1114097-CONTENT          PERU                           4       164     10      6      4
24 months   ki1114097-CONTENT          PERU                           5       164     22     19      3
24 months   ki1114097-CONTENT          PERU                           6       164     11      8      3
24 months   ki1114097-CONTENT          PERU                           7       164     19     19      0
24 months   ki1114097-CONTENT          PERU                           8       164     17     15      2
24 months   ki1114097-CONTENT          PERU                           9       164     12      9      3
24 months   ki1114097-CONTENT          PERU                           10      164     13     10      3
24 months   ki1114097-CONTENT          PERU                           11      164     16     15      1
24 months   ki1114097-CONTENT          PERU                           12      164      3      3      0
24 months   ki1119695-PROBIT           BELARUS                        1      1619    126    122      4
24 months   ki1119695-PROBIT           BELARUS                        2      1619    106     96     10
24 months   ki1119695-PROBIT           BELARUS                        3      1619    136    128      8
24 months   ki1119695-PROBIT           BELARUS                        4      1619    139    133      6
24 months   ki1119695-PROBIT           BELARUS                        5      1619    139    132      7
24 months   ki1119695-PROBIT           BELARUS                        6      1619    119    107     12
24 months   ki1119695-PROBIT           BELARUS                        7      1619    148    134     14
24 months   ki1119695-PROBIT           BELARUS                        8      1619    147    131     16
24 months   ki1119695-PROBIT           BELARUS                        9      1619    138    122     16
24 months   ki1119695-PROBIT           BELARUS                        10     1619    125    104     21
24 months   ki1119695-PROBIT           BELARUS                        11     1619    125    106     19
24 months   ki1119695-PROBIT           BELARUS                        12     1619    171    142     29
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1       456     52     18     34
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2       456     65     20     45
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3       456     60     21     39
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4       456     45     20     25
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5       456     52     19     33
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6       456     47     19     28
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7       456     32      5     27
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8       456     31      9     22
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9       456      3      1      2
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10      456      6      5      1
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11      456     25     10     15
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12      456     38     11     27
24 months   ki1148112-LCNI-5           MALAWI                         1       579     41     21     20
24 months   ki1148112-LCNI-5           MALAWI                         2       579     88     57     31
24 months   ki1148112-LCNI-5           MALAWI                         3       579     71     39     32
24 months   ki1148112-LCNI-5           MALAWI                         4       579     80     38     42
24 months   ki1148112-LCNI-5           MALAWI                         5       579     62     33     29
24 months   ki1148112-LCNI-5           MALAWI                         6       579     64     30     34
24 months   ki1148112-LCNI-5           MALAWI                         7       579     41     27     14
24 months   ki1148112-LCNI-5           MALAWI                         8       579     28     21      7
24 months   ki1148112-LCNI-5           MALAWI                         9       579     19     11      8
24 months   ki1148112-LCNI-5           MALAWI                         10      579     25     17      8
24 months   ki1148112-LCNI-5           MALAWI                         11      579     36     20     16
24 months   ki1148112-LCNI-5           MALAWI                         12      579     24      9     15
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1      4293    358    165    193
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2      4293    297    148    149
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3      4293    362    190    172
24 months   kiGH5241-JiVitA-3          BANGLADESH                     4      4293    273    154    119
24 months   kiGH5241-JiVitA-3          BANGLADESH                     5      4293    192    110     82
24 months   kiGH5241-JiVitA-3          BANGLADESH                     6      4293    295    139    156
24 months   kiGH5241-JiVitA-3          BANGLADESH                     7      4293    309    184    125
24 months   kiGH5241-JiVitA-3          BANGLADESH                     8      4293    348    190    158
24 months   kiGH5241-JiVitA-3          BANGLADESH                     9      4293    350    175    175
24 months   kiGH5241-JiVitA-3          BANGLADESH                     10     4293    422    225    197
24 months   kiGH5241-JiVitA-3          BANGLADESH                     11     4293    500    246    254
24 months   kiGH5241-JiVitA-3          BANGLADESH                     12     4293    587    300    287
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1      1251     17     11      6
24 months   kiGH5241-JiVitA-4          BANGLADESH                     2      1251     91     53     38
24 months   kiGH5241-JiVitA-4          BANGLADESH                     3      1251    103     55     48
24 months   kiGH5241-JiVitA-4          BANGLADESH                     4      1251    228    126    102
24 months   kiGH5241-JiVitA-4          BANGLADESH                     5      1251    156     99     57
24 months   kiGH5241-JiVitA-4          BANGLADESH                     6      1251    109     71     38
24 months   kiGH5241-JiVitA-4          BANGLADESH                     7      1251    197    120     77
24 months   kiGH5241-JiVitA-4          BANGLADESH                     8      1251    139     94     45
24 months   kiGH5241-JiVitA-4          BANGLADESH                     9      1251     99     53     46
24 months   kiGH5241-JiVitA-4          BANGLADESH                     10     1251     58     42     16
24 months   kiGH5241-JiVitA-4          BANGLADESH                     11     1251     33     24      9
24 months   kiGH5241-JiVitA-4          BANGLADESH                     12     1251     21     14      7


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
* agecat: 3 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
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
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 9 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 9 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 9 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 9 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 9 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 9 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 9 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 9 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 9 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 9 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 9 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 9 months, studyid: ki1114097-CONTENT, country: PERU
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
* agecat: 12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 12 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 12 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
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
* agecat: 18 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 18 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 18 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 18 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 18 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 18 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 18 months, studyid: ki1119695-PROBIT, country: BELARUS
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
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots

```
## Warning: Removed 144 rows containing missing values (geom_errorbar).
```

![](/tmp/cf0b1044-d2ff-4d34-8208-f266061f2849/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->


```
## Warning: Removed 175 rows containing missing values (geom_errorbar).
```

![](/tmp/cf0b1044-d2ff-4d34-8208-f266061f2849/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


```
## Warning: Removed 12 rows containing missing values (geom_errorbar).
```

![](/tmp/cf0b1044-d2ff-4d34-8208-f266061f2849/REPORT_files/figure-html/plot_paf-1.png)<!-- -->


```
## Warning: Removed 12 rows containing missing values (geom_errorbar).
```

![](/tmp/cf0b1044-d2ff-4d34-8208-f266061f2849/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1287202   0.1108156   0.1466249
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.1486486   0.1269856   0.1703117
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3                    NA                0.1192982   0.1004816   0.1381149
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       4                    NA                0.1102284   0.0908849   0.1295719
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       5                    NA                0.1290000   0.1082237   0.1497763
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       6                    NA                0.1139576   0.0954462   0.1324690
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       7                    NA                0.1028912   0.0855263   0.1202560
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       8                    NA                0.0742251   0.0595512   0.0888991
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       9                    NA                0.0632140   0.0500509   0.0763771
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       10                   NA                0.0815739   0.0649540   0.0981938
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       11                   NA                0.0837743   0.0676487   0.0998998
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       12                   NA                0.0988048   0.0822950   0.1153145
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.3680258          NA          NA
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.3497942          NA          NA
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                0.3259669          NA          NA
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4                    NA                0.2885196          NA          NA
Birth       kiGH5241-JiVitA-3          BANGLADESH                     5                    NA                0.2940000          NA          NA
Birth       kiGH5241-JiVitA-3          BANGLADESH                     6                    NA                0.3161034          NA          NA
Birth       kiGH5241-JiVitA-3          BANGLADESH                     7                    NA                0.2897727          NA          NA
Birth       kiGH5241-JiVitA-3          BANGLADESH                     8                    NA                0.3299101          NA          NA
Birth       kiGH5241-JiVitA-3          BANGLADESH                     9                    NA                0.3113402          NA          NA
Birth       kiGH5241-JiVitA-3          BANGLADESH                     10                   NA                0.3576779          NA          NA
Birth       kiGH5241-JiVitA-3          BANGLADESH                     11                   NA                0.3939394          NA          NA
Birth       kiGH5241-JiVitA-3          BANGLADESH                     12                   NA                0.3820537          NA          NA
3 months    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.2833333   0.1692135   0.3974532
3 months    ki1017093-NIH-Birth        BANGLADESH                     2                    NA                0.2115385   0.1004388   0.3226381
3 months    ki1017093-NIH-Birth        BANGLADESH                     3                    NA                0.1346154   0.0417659   0.2274649
3 months    ki1017093-NIH-Birth        BANGLADESH                     4                    NA                0.1458333   0.0459004   0.2457662
3 months    ki1017093-NIH-Birth        BANGLADESH                     5                    NA                0.2045455   0.0852550   0.3238359
3 months    ki1017093-NIH-Birth        BANGLADESH                     6                    NA                0.2439024   0.1123392   0.3754656
3 months    ki1017093-NIH-Birth        BANGLADESH                     7                    NA                0.3023256   0.1649344   0.4397168
3 months    ki1017093-NIH-Birth        BANGLADESH                     8                    NA                0.2500000   0.1156926   0.3843074
3 months    ki1017093-NIH-Birth        BANGLADESH                     9                    NA                0.2000000   0.0567387   0.3432613
3 months    ki1017093-NIH-Birth        BANGLADESH                     10                   NA                0.3214286   0.1990021   0.4438551
3 months    ki1017093-NIH-Birth        BANGLADESH                     11                   NA                0.2692308   0.1485661   0.3898955
3 months    ki1017093-NIH-Birth        BANGLADESH                     12                   NA                0.1538462   0.0556949   0.2519974
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0576923   0.0210961   0.0942885
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.0755814   0.0360702   0.1150926
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                0.0654762   0.0280630   0.1028894
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                0.0639535   0.0273806   0.1005264
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    NA                0.0505618   0.0183676   0.0827560
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    NA                0.0632911   0.0253170   0.1012653
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    NA                0.0450000   0.0162634   0.0737366
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    NA                0.0840708   0.0478847   0.1202569
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    NA                0.0622010   0.0294501   0.0949518
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   NA                0.0504202   0.0226152   0.0782251
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   NA                0.0610329   0.0288770   0.0931887
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   NA                0.0396040   0.0127034   0.0665045
3 months    ki1119695-PROBIT           BELARUS                        1                    NA                0.0732673          NA          NA
3 months    ki1119695-PROBIT           BELARUS                        2                    NA                0.0673469          NA          NA
3 months    ki1119695-PROBIT           BELARUS                        3                    NA                0.0696095          NA          NA
3 months    ki1119695-PROBIT           BELARUS                        4                    NA                0.0612245          NA          NA
3 months    ki1119695-PROBIT           BELARUS                        5                    NA                0.0483333          NA          NA
3 months    ki1119695-PROBIT           BELARUS                        6                    NA                0.0503247          NA          NA
3 months    ki1119695-PROBIT           BELARUS                        7                    NA                0.0551075          NA          NA
3 months    ki1119695-PROBIT           BELARUS                        8                    NA                0.0540541          NA          NA
3 months    ki1119695-PROBIT           BELARUS                        9                    NA                0.0664820          NA          NA
3 months    ki1119695-PROBIT           BELARUS                        10                   NA                0.0669100          NA          NA
3 months    ki1119695-PROBIT           BELARUS                        11                   NA                0.0750988          NA          NA
3 months    ki1119695-PROBIT           BELARUS                        12                   NA                0.0665111          NA          NA
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1628910   0.1391187   0.1866634
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.1666667   0.1383613   0.1949720
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       3                    NA                0.1754386   0.1490483   0.2018289
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       4                    NA                0.1874085   0.1581405   0.2166764
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       5                    NA                0.2090643   0.1785886   0.2395401
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       6                    NA                0.2635561   0.2328912   0.2942210
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       7                    NA                0.2000000   0.1720168   0.2279832
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       8                    NA                0.1720047   0.1465281   0.1974814
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       9                    NA                0.1501241   0.1254633   0.1747849
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       10                   NA                0.1720257   0.1423650   0.2016864
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       11                   NA                0.1600567   0.1330089   0.1871044
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       12                   NA                0.1257276   0.1035551   0.1479000
3 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.2870772          NA          NA
3 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.2686084          NA          NA
3 months    kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                0.2297418          NA          NA
3 months    kiGH5241-JiVitA-3          BANGLADESH                     4                    NA                0.2098914          NA          NA
3 months    kiGH5241-JiVitA-3          BANGLADESH                     5                    NA                0.1898734          NA          NA
3 months    kiGH5241-JiVitA-3          BANGLADESH                     6                    NA                0.1888000          NA          NA
3 months    kiGH5241-JiVitA-3          BANGLADESH                     7                    NA                0.2078652          NA          NA
3 months    kiGH5241-JiVitA-3          BANGLADESH                     8                    NA                0.2737844          NA          NA
3 months    kiGH5241-JiVitA-3          BANGLADESH                     9                    NA                0.2933227          NA          NA
3 months    kiGH5241-JiVitA-3          BANGLADESH                     10                   NA                0.3516981          NA          NA
3 months    kiGH5241-JiVitA-3          BANGLADESH                     11                   NA                0.3513120          NA          NA
3 months    kiGH5241-JiVitA-3          BANGLADESH                     12                   NA                0.3079116          NA          NA
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.2941176   0.1407532   0.4474821
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                    NA                0.3125000   0.0850747   0.5399253
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                    NA                0.1935484   0.0542839   0.3328129
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4                    NA                0.1818182   0.0677001   0.2959363
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          5                    NA                0.3428571   0.1853900   0.5003242
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          6                    NA                0.4324324   0.2725855   0.5922794
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          7                    NA                0.5128205   0.3557364   0.6699046
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          8                    NA                0.3529412   0.1254650   0.5804174
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          9                    NA                0.3000000   0.0988908   0.5011092
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          10                   NA                0.2758621   0.1129718   0.4387523
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          11                   NA                0.1666667   0.0538050   0.2795283
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          12                   NA                0.2800000   0.1037567   0.4562433
6 months    ki1000108-IRC              INDIA                          1                    NA                0.3055556   0.1548966   0.4562145
6 months    ki1000108-IRC              INDIA                          2                    NA                0.4074074   0.2218437   0.5929711
6 months    ki1000108-IRC              INDIA                          3                    NA                0.3448276   0.1716219   0.5180332
6 months    ki1000108-IRC              INDIA                          4                    NA                0.2727273   0.0863968   0.4590577
6 months    ki1000108-IRC              INDIA                          5                    NA                0.3500000   0.1407054   0.5592946
6 months    ki1000108-IRC              INDIA                          6                    NA                0.1351351   0.0248442   0.2454260
6 months    ki1000108-IRC              INDIA                          7                    NA                0.3055556   0.1548966   0.4562145
6 months    ki1000108-IRC              INDIA                          8                    NA                0.1333333   0.0338910   0.2327757
6 months    ki1000108-IRC              INDIA                          9                    NA                0.2592593   0.0937582   0.4247603
6 months    ki1000108-IRC              INDIA                          10                   NA                0.1388889   0.0257806   0.2519972
6 months    ki1000108-IRC              INDIA                          11                   NA                0.1707317   0.0554143   0.2860491
6 months    ki1000108-IRC              INDIA                          12                   NA                0.2745098   0.1518812   0.3971384
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.3000000   0.1728614   0.4271386
6 months    ki1017093-NIH-Birth        BANGLADESH                     2                    NA                0.2800000   0.1554301   0.4045699
6 months    ki1017093-NIH-Birth        BANGLADESH                     3                    NA                0.2800000   0.1554301   0.4045699
6 months    ki1017093-NIH-Birth        BANGLADESH                     4                    NA                0.2272727   0.1033322   0.3512132
6 months    ki1017093-NIH-Birth        BANGLADESH                     5                    NA                0.2000000   0.0759254   0.3240746
6 months    ki1017093-NIH-Birth        BANGLADESH                     6                    NA                0.2820513   0.1406897   0.4234128
6 months    ki1017093-NIH-Birth        BANGLADESH                     7                    NA                0.4000000   0.2567310   0.5432690
6 months    ki1017093-NIH-Birth        BANGLADESH                     8                    NA                0.1842105   0.0608412   0.3075799
6 months    ki1017093-NIH-Birth        BANGLADESH                     9                    NA                0.2333333   0.0818434   0.3848233
6 months    ki1017093-NIH-Birth        BANGLADESH                     10                   NA                0.2884615   0.1652094   0.4117136
6 months    ki1017093-NIH-Birth        BANGLADESH                     11                   NA                0.3673469   0.2322406   0.5024533
6 months    ki1017093-NIH-Birth        BANGLADESH                     12                   NA                0.1400000   0.0437322   0.2362678
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1086957   0.0567517   0.1606396
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.0810811   0.0370943   0.1250679
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                0.0890411   0.0428324   0.1352498
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                0.0952381   0.0477736   0.1427026
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    NA                0.1307190   0.0772922   0.1841457
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    NA                0.1126761   0.0606564   0.1646958
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    NA                0.1122995   0.0670351   0.1575638
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    NA                0.1359223   0.0891118   0.1827328
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    NA                0.0769231   0.0382003   0.1156459
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   NA                0.1148325   0.0715984   0.1580667
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   NA                0.0572917   0.0244111   0.0901722
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   NA                0.0502793   0.0182593   0.0822993
6 months    ki1119695-PROBIT           BELARUS                        1                    NA                0.0945674          NA          NA
6 months    ki1119695-PROBIT           BELARUS                        2                    NA                0.0864979          NA          NA
6 months    ki1119695-PROBIT           BELARUS                        3                    NA                0.0687831          NA          NA
6 months    ki1119695-PROBIT           BELARUS                        4                    NA                0.0637066          NA          NA
6 months    ki1119695-PROBIT           BELARUS                        5                    NA                0.0520833          NA          NA
6 months    ki1119695-PROBIT           BELARUS                        6                    NA                0.0710572          NA          NA
6 months    ki1119695-PROBIT           BELARUS                        7                    NA                0.0582386          NA          NA
6 months    ki1119695-PROBIT           BELARUS                        8                    NA                0.0663199          NA          NA
6 months    ki1119695-PROBIT           BELARUS                        9                    NA                0.0763689          NA          NA
6 months    ki1119695-PROBIT           BELARUS                        10                   NA                0.0723514          NA          NA
6 months    ki1119695-PROBIT           BELARUS                        11                   NA                0.0874471          NA          NA
6 months    ki1119695-PROBIT           BELARUS                        12                   NA                0.0657568          NA          NA
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1728856   0.1467454   0.1990257
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.1727116   0.1419205   0.2035026
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3                    NA                0.2140884   0.1842079   0.2439689
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       4                    NA                0.1781874   0.1487900   0.2075848
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       5                    NA                0.1734007   0.1429530   0.2038483
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       6                    NA                0.1630769   0.1346744   0.1914794
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       7                    NA                0.1883830   0.1580161   0.2187500
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       8                    NA                0.1383562   0.1133080   0.1634043
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       9                    NA                0.1325459   0.1084689   0.1566230
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       10                   NA                0.1636060   0.1339805   0.1932315
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       11                   NA                0.1618656   0.1351266   0.1886045
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       12                   NA                0.1439024   0.1198775   0.1679274
6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                0.2678571   0.1518025   0.3839118
6 months    ki1148112-LCNI-5           MALAWI                         2                    NA                0.3421053   0.2549662   0.4292443
6 months    ki1148112-LCNI-5           MALAWI                         3                    NA                0.3571429   0.2622197   0.4520660
6 months    ki1148112-LCNI-5           MALAWI                         4                    NA                0.4504505   0.3578373   0.5430636
6 months    ki1148112-LCNI-5           MALAWI                         5                    NA                0.3486239   0.2591104   0.4381373
6 months    ki1148112-LCNI-5           MALAWI                         6                    NA                0.3296703   0.2330273   0.4263134
6 months    ki1148112-LCNI-5           MALAWI                         7                    NA                0.4444444   0.3295991   0.5592898
6 months    ki1148112-LCNI-5           MALAWI                         8                    NA                0.3255814   0.1854397   0.4657231
6 months    ki1148112-LCNI-5           MALAWI                         9                    NA                0.3333333   0.1554157   0.5112509
6 months    ki1148112-LCNI-5           MALAWI                         10                   NA                0.4000000   0.2376028   0.5623972
6 months    ki1148112-LCNI-5           MALAWI                         11                   NA                0.3469388   0.2135828   0.4802947
6 months    ki1148112-LCNI-5           MALAWI                         12                   NA                0.4705882   0.3027137   0.6384628
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.2785185          NA          NA
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.2623239          NA          NA
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                0.2458564          NA          NA
6 months    kiGH5241-JiVitA-3          BANGLADESH                     4                    NA                0.2504146          NA          NA
6 months    kiGH5241-JiVitA-3          BANGLADESH                     5                    NA                0.2547009          NA          NA
6 months    kiGH5241-JiVitA-3          BANGLADESH                     6                    NA                0.2645051          NA          NA
6 months    kiGH5241-JiVitA-3          BANGLADESH                     7                    NA                0.2467105          NA          NA
6 months    kiGH5241-JiVitA-3          BANGLADESH                     8                    NA                0.2358491          NA          NA
6 months    kiGH5241-JiVitA-3          BANGLADESH                     9                    NA                0.2305732          NA          NA
6 months    kiGH5241-JiVitA-3          BANGLADESH                     10                   NA                0.2860759          NA          NA
6 months    kiGH5241-JiVitA-3          BANGLADESH                     11                   NA                0.3080569          NA          NA
6 months    kiGH5241-JiVitA-3          BANGLADESH                     12                   NA                0.2669963          NA          NA
9 months    ki1000108-IRC              INDIA                          1                    NA                0.3888889   0.2294465   0.5483313
9 months    ki1000108-IRC              INDIA                          2                    NA                0.3333333   0.1553029   0.5113637
9 months    ki1000108-IRC              INDIA                          3                    NA                0.2413793   0.0854436   0.3973150
9 months    ki1000108-IRC              INDIA                          4                    NA                0.4545455   0.2462217   0.6628693
9 months    ki1000108-IRC              INDIA                          5                    NA                0.5000000   0.2805997   0.7194003
9 months    ki1000108-IRC              INDIA                          6                    NA                0.1351351   0.0248442   0.2454260
9 months    ki1000108-IRC              INDIA                          7                    NA                0.2500000   0.1083777   0.3916223
9 months    ki1000108-IRC              INDIA                          8                    NA                0.1777778   0.0659346   0.2896209
9 months    ki1000108-IRC              INDIA                          9                    NA                0.2962963   0.1238482   0.4687444
9 months    ki1000108-IRC              INDIA                          10                   NA                0.1666667   0.0447776   0.2885557
9 months    ki1000108-IRC              INDIA                          11                   NA                0.2195122   0.0926586   0.3463658
9 months    ki1000108-IRC              INDIA                          12                   NA                0.3137255   0.1862223   0.4412287
9 months    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.4693878   0.3295150   0.6092606
9 months    ki1017093-NIH-Birth        BANGLADESH                     2                    NA                0.3409091   0.2007109   0.4811073
9 months    ki1017093-NIH-Birth        BANGLADESH                     3                    NA                0.3404255   0.2048220   0.4760290
9 months    ki1017093-NIH-Birth        BANGLADESH                     4                    NA                0.2380952   0.1091581   0.3670323
9 months    ki1017093-NIH-Birth        BANGLADESH                     5                    NA                0.3589744   0.2082741   0.5096746
9 months    ki1017093-NIH-Birth        BANGLADESH                     6                    NA                0.2307692   0.0984077   0.3631308
9 months    ki1017093-NIH-Birth        BANGLADESH                     7                    NA                0.4000000   0.2567231   0.5432769
9 months    ki1017093-NIH-Birth        BANGLADESH                     8                    NA                0.4516129   0.2762560   0.6269698
9 months    ki1017093-NIH-Birth        BANGLADESH                     9                    NA                0.3200000   0.1369641   0.5030359
9 months    ki1017093-NIH-Birth        BANGLADESH                     10                   NA                0.3673469   0.2322331   0.5024608
9 months    ki1017093-NIH-Birth        BANGLADESH                     11                   NA                0.4680851   0.3252906   0.6108796
9 months    ki1017093-NIH-Birth        BANGLADESH                     12                   NA                0.2800000   0.1554232   0.4045768
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1487603   0.0853374   0.2121833
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.1203008   0.0649982   0.1756033
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                0.1538462   0.0918070   0.2158853
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                0.2580645   0.1810263   0.3351027
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    NA                0.2014925   0.1335587   0.2694264
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    NA                0.1475410   0.0845929   0.2104891
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    NA                0.1764706   0.1191487   0.2337925
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    NA                0.1513514   0.0996930   0.2030097
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    NA                0.0909091   0.0470323   0.1347859
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   NA                0.1382979   0.0889377   0.1876581
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   NA                0.1071429   0.0603599   0.1539258
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   NA                0.1148649   0.0634798   0.1662500
9 months    ki1119695-PROBIT           BELARUS                        1                    NA                0.0583153          NA          NA
9 months    ki1119695-PROBIT           BELARUS                        2                    NA                0.0434783          NA          NA
9 months    ki1119695-PROBIT           BELARUS                        3                    NA                0.0353160          NA          NA
9 months    ki1119695-PROBIT           BELARUS                        4                    NA                0.0332031          NA          NA
9 months    ki1119695-PROBIT           BELARUS                        5                    NA                0.0249110          NA          NA
9 months    ki1119695-PROBIT           BELARUS                        6                    NA                0.0507881          NA          NA
9 months    ki1119695-PROBIT           BELARUS                        7                    NA                0.0348837          NA          NA
9 months    ki1119695-PROBIT           BELARUS                        8                    NA                0.0433640          NA          NA
9 months    ki1119695-PROBIT           BELARUS                        9                    NA                0.0540541          NA          NA
9 months    ki1119695-PROBIT           BELARUS                        10                   NA                0.0439845          NA          NA
9 months    ki1119695-PROBIT           BELARUS                        11                   NA                0.0722380          NA          NA
9 months    ki1119695-PROBIT           BELARUS                        12                   NA                0.0408685          NA          NA
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.2080624   0.1793708   0.2367541
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.2066116   0.1743475   0.2388756
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       3                    NA                0.1816694   0.1510948   0.2122440
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       4                    NA                0.1600000   0.1293596   0.1906404
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       5                    NA                0.2208029   0.1860723   0.2555335
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       6                    NA                0.2155592   0.1831105   0.2480079
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       7                    NA                0.1996587   0.1672912   0.2320262
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       8                    NA                0.1863173   0.1571999   0.2154347
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       9                    NA                0.1863946   0.1582395   0.2145496
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       10                   NA                0.2179262   0.1840028   0.2518495
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       11                   NA                0.1822358   0.1526250   0.2118467
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       12                   NA                0.2093664   0.1797693   0.2389635
12 months   ki1000108-IRC              INDIA                          1                    NA                0.4285714   0.2644209   0.5927219
12 months   ki1000108-IRC              INDIA                          2                    NA                0.4814815   0.2927807   0.6701822
12 months   ki1000108-IRC              INDIA                          3                    NA                0.2758621   0.1129920   0.4387321
12 months   ki1000108-IRC              INDIA                          4                    NA                0.5238095   0.3099390   0.7376801
12 months   ki1000108-IRC              INDIA                          5                    NA                0.5500000   0.3316988   0.7683012
12 months   ki1000108-IRC              INDIA                          6                    NA                0.1351351   0.0248439   0.2454264
12 months   ki1000108-IRC              INDIA                          7                    NA                0.1666667   0.0447772   0.2885561
12 months   ki1000108-IRC              INDIA                          8                    NA                0.1777778   0.0659343   0.2896213
12 months   ki1000108-IRC              INDIA                          9                    NA                0.3333333   0.1553024   0.5113643
12 months   ki1000108-IRC              INDIA                          10                   NA                0.1351351   0.0248439   0.2454264
12 months   ki1000108-IRC              INDIA                          11                   NA                0.2682927   0.1325036   0.4040817
12 months   ki1000108-IRC              INDIA                          12                   NA                0.3333333   0.2037968   0.4628699
12 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.4468085   0.3045297   0.5890874
12 months   ki1017093-NIH-Birth        BANGLADESH                     2                    NA                0.3414634   0.1961650   0.4867618
12 months   ki1017093-NIH-Birth        BANGLADESH                     3                    NA                0.3043478   0.1712432   0.4374524
12 months   ki1017093-NIH-Birth        BANGLADESH                     4                    NA                0.3500000   0.2020376   0.4979624
12 months   ki1017093-NIH-Birth        BANGLADESH                     5                    NA                0.3243243   0.1733341   0.4753146
12 months   ki1017093-NIH-Birth        BANGLADESH                     6                    NA                0.3055556   0.1549284   0.4561828
12 months   ki1017093-NIH-Birth        BANGLADESH                     7                    NA                0.4390244   0.2869643   0.5910845
12 months   ki1017093-NIH-Birth        BANGLADESH                     8                    NA                0.4242424   0.2554470   0.5930379
12 months   ki1017093-NIH-Birth        BANGLADESH                     9                    NA                0.3750000   0.1811165   0.5688835
12 months   ki1017093-NIH-Birth        BANGLADESH                     10                   NA                0.3469388   0.2135264   0.4803512
12 months   ki1017093-NIH-Birth        BANGLADESH                     11                   NA                0.4583333   0.3172334   0.5994333
12 months   ki1017093-NIH-Birth        BANGLADESH                     12                   NA                0.3673469   0.2322288   0.5024651
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2065217   0.1237742   0.2892693
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.1441441   0.0787806   0.2095077
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                0.1782178   0.1035572   0.2528785
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                0.2641509   0.1801922   0.3481097
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    NA                0.1531532   0.0861335   0.2201728
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    NA                0.1981132   0.1222102   0.2740162
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    NA                0.1690141   0.1073528   0.2306754
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    NA                0.1753247   0.1152487   0.2354007
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    NA                0.1307692   0.0727934   0.1887451
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   NA                0.1081081   0.0580640   0.1581522
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   NA                0.1338583   0.0746184   0.1930981
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   NA                0.1637931   0.0964219   0.2311643
12 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                0.2162162   0.0834645   0.3489679
12 months   ki1114097-CMIN             GUINEA-BISSAU                  2                    NA                0.2750000   0.1365146   0.4134854
12 months   ki1114097-CMIN             GUINEA-BISSAU                  3                    NA                0.2093023   0.0876118   0.3309928
12 months   ki1114097-CMIN             GUINEA-BISSAU                  4                    NA                0.2074074   0.1389581   0.2758567
12 months   ki1114097-CMIN             GUINEA-BISSAU                  5                    NA                0.1265823   0.0532015   0.1999631
12 months   ki1114097-CMIN             GUINEA-BISSAU                  6                    NA                0.1730769   0.0701689   0.2759849
12 months   ki1114097-CMIN             GUINEA-BISSAU                  7                    NA                0.1944444   0.0650568   0.3238321
12 months   ki1114097-CMIN             GUINEA-BISSAU                  8                    NA                0.2121212   0.0725283   0.3517141
12 months   ki1114097-CMIN             GUINEA-BISSAU                  9                    NA                0.1746032   0.0807853   0.2684211
12 months   ki1114097-CMIN             GUINEA-BISSAU                  10                   NA                0.2307692   0.0984315   0.3631069
12 months   ki1114097-CMIN             GUINEA-BISSAU                  11                   NA                0.2647059   0.1162930   0.4131187
12 months   ki1114097-CMIN             GUINEA-BISSAU                  12                   NA                0.2068966   0.0593459   0.3544472
12 months   ki1114097-CMIN             PERU                           1                    NA                0.2473118   0.1595515   0.3350722
12 months   ki1114097-CMIN             PERU                           2                    NA                0.1219512   0.0217045   0.2221979
12 months   ki1114097-CMIN             PERU                           3                    NA                0.2452830   0.1293526   0.3612135
12 months   ki1114097-CMIN             PERU                           4                    NA                0.1714286   0.0830662   0.2597909
12 months   ki1114097-CMIN             PERU                           5                    NA                0.1090909   0.0266317   0.1915502
12 months   ki1114097-CMIN             PERU                           6                    NA                0.1489362   0.0470672   0.2508051
12 months   ki1114097-CMIN             PERU                           7                    NA                0.2127660   0.0956641   0.3298678
12 months   ki1114097-CMIN             PERU                           8                    NA                0.1860465   0.0696377   0.3024554
12 months   ki1114097-CMIN             PERU                           9                    NA                0.1612903   0.0317101   0.2908706
12 months   ki1114097-CMIN             PERU                           10                   NA                0.3333333   0.1553737   0.5112930
12 months   ki1114097-CMIN             PERU                           11                   NA                0.1935484   0.0951251   0.2919717
12 months   ki1114097-CMIN             PERU                           12                   NA                0.1562500   0.0303425   0.2821575
12 months   ki1119695-PROBIT           BELARUS                        1                    NA                0.0368852          NA          NA
12 months   ki1119695-PROBIT           BELARUS                        2                    NA                0.0319829          NA          NA
12 months   ki1119695-PROBIT           BELARUS                        3                    NA                0.0298246          NA          NA
12 months   ki1119695-PROBIT           BELARUS                        4                    NA                0.0323194          NA          NA
12 months   ki1119695-PROBIT           BELARUS                        5                    NA                0.0328152          NA          NA
12 months   ki1119695-PROBIT           BELARUS                        6                    NA                0.0432526          NA          NA
12 months   ki1119695-PROBIT           BELARUS                        7                    NA                0.0295775          NA          NA
12 months   ki1119695-PROBIT           BELARUS                        8                    NA                0.0331210          NA          NA
12 months   ki1119695-PROBIT           BELARUS                        9                    NA                0.0406386          NA          NA
12 months   ki1119695-PROBIT           BELARUS                        10                   NA                0.0353090          NA          NA
12 months   ki1119695-PROBIT           BELARUS                        11                   NA                0.0383037          NA          NA
12 months   ki1119695-PROBIT           BELARUS                        12                   NA                0.0268949          NA          NA
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.2419872   0.2083807   0.2755936
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.2554890   0.2172961   0.2936820
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                    NA                0.2471170   0.2128006   0.2814333
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                    NA                0.2271845   0.1909932   0.2633757
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                    NA                0.2449799   0.2072044   0.2827554
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                    NA                0.2667845   0.2303453   0.3032236
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                    NA                0.2704626   0.2337353   0.3071900
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                    NA                0.2454992   0.2113709   0.2796275
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                    NA                0.2287066   0.1960114   0.2614019
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       10                   NA                0.2581345   0.2181846   0.2980844
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       11                   NA                0.2408759   0.2050710   0.2766809
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       12                   NA                0.2108731   0.1784190   0.2433273
12 months   ki1148112-LCNI-5           MALAWI                         1                    NA                0.3488372   0.2062708   0.4914036
12 months   ki1148112-LCNI-5           MALAWI                         2                    NA                0.3297872   0.2346710   0.4249035
12 months   ki1148112-LCNI-5           MALAWI                         3                    NA                0.3380282   0.2279092   0.4481472
12 months   ki1148112-LCNI-5           MALAWI                         4                    NA                0.4938272   0.3848615   0.6027928
12 months   ki1148112-LCNI-5           MALAWI                         5                    NA                0.3943662   0.2805980   0.5081344
12 months   ki1148112-LCNI-5           MALAWI                         6                    NA                0.4202899   0.3037296   0.5368501
12 months   ki1148112-LCNI-5           MALAWI                         7                    NA                0.4727273   0.3406777   0.6047768
12 months   ki1148112-LCNI-5           MALAWI                         8                    NA                0.2702703   0.1270599   0.4134807
12 months   ki1148112-LCNI-5           MALAWI                         9                    NA                0.4736842   0.2489930   0.6983754
12 months   ki1148112-LCNI-5           MALAWI                         10                   NA                0.3200000   0.1369985   0.5030015
12 months   ki1148112-LCNI-5           MALAWI                         11                   NA                0.4210526   0.2639472   0.5781581
12 months   ki1148112-LCNI-5           MALAWI                         12                   NA                0.4782609   0.2739505   0.6825713
12 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.4302135          NA          NA
12 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.4223485          NA          NA
12 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                0.3855607          NA          NA
12 months   kiGH5241-JiVitA-3          BANGLADESH                     4                    NA                0.3724771          NA          NA
12 months   kiGH5241-JiVitA-3          BANGLADESH                     5                    NA                0.3388582          NA          NA
12 months   kiGH5241-JiVitA-3          BANGLADESH                     6                    NA                0.4106090          NA          NA
12 months   kiGH5241-JiVitA-3          BANGLADESH                     7                    NA                0.3526119          NA          NA
12 months   kiGH5241-JiVitA-3          BANGLADESH                     8                    NA                0.3386809          NA          NA
12 months   kiGH5241-JiVitA-3          BANGLADESH                     9                    NA                0.3795276          NA          NA
12 months   kiGH5241-JiVitA-3          BANGLADESH                     10                   NA                0.4122939          NA          NA
12 months   kiGH5241-JiVitA-3          BANGLADESH                     11                   NA                0.4540390          NA          NA
12 months   kiGH5241-JiVitA-3          BANGLADESH                     12                   NA                0.4348442          NA          NA
12 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.2777778          NA          NA
12 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                0.2888889          NA          NA
12 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                0.3365385          NA          NA
12 months   kiGH5241-JiVitA-4          BANGLADESH                     4                    NA                0.3100437          NA          NA
12 months   kiGH5241-JiVitA-4          BANGLADESH                     5                    NA                0.3562500          NA          NA
12 months   kiGH5241-JiVitA-4          BANGLADESH                     6                    NA                0.3534483          NA          NA
12 months   kiGH5241-JiVitA-4          BANGLADESH                     7                    NA                0.3285714          NA          NA
12 months   kiGH5241-JiVitA-4          BANGLADESH                     8                    NA                0.3511450          NA          NA
12 months   kiGH5241-JiVitA-4          BANGLADESH                     9                    NA                0.4077670          NA          NA
12 months   kiGH5241-JiVitA-4          BANGLADESH                     10                   NA                0.2968750          NA          NA
12 months   kiGH5241-JiVitA-4          BANGLADESH                     11                   NA                0.1875000          NA          NA
12 months   kiGH5241-JiVitA-4          BANGLADESH                     12                   NA                0.4500000          NA          NA
18 months   ki1000108-IRC              INDIA                          1                    NA                0.4166667   0.2554216   0.5779117
18 months   ki1000108-IRC              INDIA                          2                    NA                0.4074074   0.2218426   0.5929722
18 months   ki1000108-IRC              INDIA                          3                    NA                0.3793103   0.2024948   0.5561259
18 months   ki1000108-IRC              INDIA                          4                    NA                0.4545455   0.2462204   0.6628705
18 months   ki1000108-IRC              INDIA                          5                    NA                0.5714286   0.3595106   0.7833466
18 months   ki1000108-IRC              INDIA                          6                    NA                0.1351351   0.0248436   0.2454267
18 months   ki1000108-IRC              INDIA                          7                    NA                0.2777778   0.1312845   0.4242711
18 months   ki1000108-IRC              INDIA                          8                    NA                0.2954545   0.1604780   0.4304311
18 months   ki1000108-IRC              INDIA                          9                    NA                0.5555556   0.3678939   0.7432172
18 months   ki1000108-IRC              INDIA                          10                   NA                0.1764706   0.0481722   0.3047690
18 months   ki1000108-IRC              INDIA                          11                   NA                0.3902439   0.2407446   0.5397432
18 months   ki1000108-IRC              INDIA                          12                   NA                0.3921569   0.2579961   0.5263176
18 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.6000000   0.4567096   0.7432904
18 months   ki1017093-NIH-Birth        BANGLADESH                     2                    NA                0.6285714   0.4683212   0.7888216
18 months   ki1017093-NIH-Birth        BANGLADESH                     3                    NA                0.5227273   0.3749825   0.6704721
18 months   ki1017093-NIH-Birth        BANGLADESH                     4                    NA                0.6578947   0.5068923   0.8088971
18 months   ki1017093-NIH-Birth        BANGLADESH                     5                    NA                0.6285714   0.4683212   0.7888216
18 months   ki1017093-NIH-Birth        BANGLADESH                     6                    NA                0.6571429   0.4997192   0.8145665
18 months   ki1017093-NIH-Birth        BANGLADESH                     7                    NA                0.6585366   0.5132292   0.8038440
18 months   ki1017093-NIH-Birth        BANGLADESH                     8                    NA                0.5161290   0.3400204   0.6922377
18 months   ki1017093-NIH-Birth        BANGLADESH                     9                    NA                0.5600000   0.3652094   0.7547906
18 months   ki1017093-NIH-Birth        BANGLADESH                     10                   NA                0.6000000   0.4567096   0.7432904
18 months   ki1017093-NIH-Birth        BANGLADESH                     11                   NA                0.5909091   0.4454766   0.7363416
18 months   ki1017093-NIH-Birth        BANGLADESH                     12                   NA                0.4444444   0.2991049   0.5897840
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.3043478   0.1957237   0.4129720
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.1518987   0.0727111   0.2310863
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                0.2987013   0.1964204   0.4009822
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                0.3132530   0.2134194   0.4130866
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    NA                0.2051282   0.1154713   0.2947851
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    NA                0.2121212   0.1134434   0.3107990
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    NA                0.2470588   0.1553226   0.3387951
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    NA                0.2040816   0.1242467   0.2839166
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    NA                0.2588235   0.1656649   0.3519821
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   NA                0.2352941   0.1529330   0.3176553
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   NA                0.2098765   0.1211494   0.2986037
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   NA                0.2597403   0.1617493   0.3577312
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.4687500          NA          NA
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                    NA                0.3333333          NA          NA
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   3                    NA                0.3478261          NA          NA
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   4                    NA                0.3703704          NA          NA
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   5                    NA                0.4426230          NA          NA
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   6                    NA                0.4027778          NA          NA
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   7                    NA                0.4666667          NA          NA
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   8                    NA                0.3015873          NA          NA
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   9                    NA                0.4393939          NA          NA
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   10                   NA                0.4074074          NA          NA
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   11                   NA                0.3478261          NA          NA
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   12                   NA                0.3333333          NA          NA
18 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                0.3333333   0.2038706   0.4627961
18 months   ki1114097-CMIN             GUINEA-BISSAU                  2                    NA                0.2765957   0.1486280   0.4045635
18 months   ki1114097-CMIN             GUINEA-BISSAU                  3                    NA                0.1886792   0.0832753   0.2940831
18 months   ki1114097-CMIN             GUINEA-BISSAU                  4                    NA                0.3614458   0.2883146   0.4345770
18 months   ki1114097-CMIN             GUINEA-BISSAU                  5                    NA                0.2000000   0.1122896   0.2877104
18 months   ki1114097-CMIN             GUINEA-BISSAU                  6                    NA                0.1940299   0.0992769   0.2887828
18 months   ki1114097-CMIN             GUINEA-BISSAU                  7                    NA                0.3250000   0.1797554   0.4702446
18 months   ki1114097-CMIN             GUINEA-BISSAU                  8                    NA                0.2571429   0.1122516   0.4020341
18 months   ki1114097-CMIN             GUINEA-BISSAU                  9                    NA                0.2820513   0.1821204   0.3819822
18 months   ki1114097-CMIN             GUINEA-BISSAU                  10                   NA                0.2558140   0.1253156   0.3863123
18 months   ki1114097-CMIN             GUINEA-BISSAU                  11                   NA                0.3255814   0.1854303   0.4657325
18 months   ki1114097-CMIN             GUINEA-BISSAU                  12                   NA                0.2745098   0.1519506   0.3970690
18 months   ki1114097-CMIN             PERU                           1                    NA                0.4206349   0.3343498   0.5069201
18 months   ki1114097-CMIN             PERU                           2                    NA                0.2162162   0.0834358   0.3489966
18 months   ki1114097-CMIN             PERU                           3                    NA                0.3095238   0.1695685   0.4494791
18 months   ki1114097-CMIN             PERU                           4                    NA                0.2272727   0.1033209   0.3512246
18 months   ki1114097-CMIN             PERU                           5                    NA                0.3243243   0.1733335   0.4753152
18 months   ki1114097-CMIN             PERU                           6                    NA                0.2800000   0.1038154   0.4561846
18 months   ki1114097-CMIN             PERU                           7                    NA                0.2000000   0.0430423   0.3569577
18 months   ki1114097-CMIN             PERU                           8                    NA                0.2142857   0.0621460   0.3664254
18 months   ki1114097-CMIN             PERU                           9                    NA                0.3000000   0.0989578   0.5010422
18 months   ki1114097-CMIN             PERU                           10                   NA                0.4782609   0.2739047   0.6826171
18 months   ki1114097-CMIN             PERU                           11                   NA                0.2833333   0.1691969   0.3974698
18 months   ki1114097-CMIN             PERU                           12                   NA                0.2727273   0.0864353   0.4590193
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.5265700   0.4585329   0.5946072
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.5108696   0.4386202   0.5831189
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                    NA                0.4748201   0.3917803   0.5578600
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                    NA                0.4492754   0.3662598   0.5322909
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                    NA                0.4615385   0.3711810   0.5518959
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                    NA                0.3776224   0.2981414   0.4571034
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                    NA                0.5391304   0.4480002   0.6302607
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                    NA                0.4307692   0.3456220   0.5159164
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                    NA                0.4537815   0.3643051   0.5432579
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       10                   NA                0.4766355   0.3819728   0.5712982
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       11                   NA                0.4848485   0.3995662   0.5701308
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       12                   NA                0.4885057   0.4142113   0.5628001
18 months   ki1148112-LCNI-5           MALAWI                         1                    NA                0.4791667   0.3377437   0.6205896
18 months   ki1148112-LCNI-5           MALAWI                         2                    NA                0.3762376   0.2816950   0.4707803
18 months   ki1148112-LCNI-5           MALAWI                         3                    NA                0.4137931   0.3102299   0.5173563
18 months   ki1148112-LCNI-5           MALAWI                         4                    NA                0.5463918   0.4472505   0.6455330
18 months   ki1148112-LCNI-5           MALAWI                         5                    NA                0.5119048   0.4049365   0.6188730
18 months   ki1148112-LCNI-5           MALAWI                         6                    NA                0.5119048   0.4049365   0.6188730
18 months   ki1148112-LCNI-5           MALAWI                         7                    NA                0.4666667   0.3403458   0.5929875
18 months   ki1148112-LCNI-5           MALAWI                         8                    NA                0.3170732   0.1745378   0.4596086
18 months   ki1148112-LCNI-5           MALAWI                         9                    NA                0.5000000   0.2909229   0.7090771
18 months   ki1148112-LCNI-5           MALAWI                         10                   NA                0.3548387   0.1862934   0.5233840
18 months   ki1148112-LCNI-5           MALAWI                         11                   NA                0.4000000   0.2480770   0.5519230
18 months   ki1148112-LCNI-5           MALAWI                         12                   NA                0.6000000   0.4245745   0.7754255
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.6428571   0.4977768   0.7879374
24 months   ki1017093-NIH-Birth        BANGLADESH                     2                    NA                0.6388889   0.4818032   0.7959746
24 months   ki1017093-NIH-Birth        BANGLADESH                     3                    NA                0.4390244   0.2869419   0.5911069
24 months   ki1017093-NIH-Birth        BANGLADESH                     4                    NA                0.6470588   0.4862394   0.8078782
24 months   ki1017093-NIH-Birth        BANGLADESH                     5                    NA                0.6176471   0.4541094   0.7811847
24 months   ki1017093-NIH-Birth        BANGLADESH                     6                    NA                0.5666667   0.3891377   0.7441956
24 months   ki1017093-NIH-Birth        BANGLADESH                     7                    NA                0.5405405   0.3797755   0.7013056
24 months   ki1017093-NIH-Birth        BANGLADESH                     8                    NA                0.5333333   0.3546035   0.7120631
24 months   ki1017093-NIH-Birth        BANGLADESH                     9                    NA                0.4210526   0.1987903   0.6433149
24 months   ki1017093-NIH-Birth        BANGLADESH                     10                   NA                0.5250000   0.3700644   0.6799356
24 months   ki1017093-NIH-Birth        BANGLADESH                     11                   NA                0.5121951   0.3590145   0.6653757
24 months   ki1017093-NIH-Birth        BANGLADESH                     12                   NA                0.5333333   0.3874011   0.6792656
24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                0.4137931   0.2343773   0.5932089
24 months   ki1114097-CMIN             GUINEA-BISSAU                  2                    NA                0.2380952   0.1091683   0.3670222
24 months   ki1114097-CMIN             GUINEA-BISSAU                  3                    NA                0.3333333   0.1954759   0.4711907
24 months   ki1114097-CMIN             GUINEA-BISSAU                  4                    NA                0.4012739   0.3245329   0.4780149
24 months   ki1114097-CMIN             GUINEA-BISSAU                  5                    NA                0.3137255   0.1862633   0.4411877
24 months   ki1114097-CMIN             GUINEA-BISSAU                  6                    NA                0.3157895   0.1678635   0.4637155
24 months   ki1114097-CMIN             GUINEA-BISSAU                  7                    NA                0.3913043   0.1916696   0.5909391
24 months   ki1114097-CMIN             GUINEA-BISSAU                  8                    NA                0.3333333   0.1445643   0.5221023
24 months   ki1114097-CMIN             GUINEA-BISSAU                  9                    NA                0.3166667   0.1988561   0.4344773
24 months   ki1114097-CMIN             GUINEA-BISSAU                  10                   NA                0.2941176   0.1408220   0.4474133
24 months   ki1114097-CMIN             GUINEA-BISSAU                  11                   NA                0.2608696   0.0812511   0.4404880
24 months   ki1114097-CMIN             GUINEA-BISSAU                  12                   NA                0.2800000   0.1038357   0.4561643
24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                0.4878049   0.3346706   0.6409391
24 months   ki1148112-LCNI-5           MALAWI                         2                    NA                0.3522727   0.2523837   0.4521617
24 months   ki1148112-LCNI-5           MALAWI                         3                    NA                0.4507042   0.3348683   0.5665401
24 months   ki1148112-LCNI-5           MALAWI                         4                    NA                0.5250000   0.4154771   0.6345229
24 months   ki1148112-LCNI-5           MALAWI                         5                    NA                0.4677419   0.3434360   0.5920479
24 months   ki1148112-LCNI-5           MALAWI                         6                    NA                0.5312500   0.4088860   0.6536140
24 months   ki1148112-LCNI-5           MALAWI                         7                    NA                0.3414634   0.1961875   0.4867393
24 months   ki1148112-LCNI-5           MALAWI                         8                    NA                0.2500000   0.0894741   0.4105259
24 months   ki1148112-LCNI-5           MALAWI                         9                    NA                0.4210526   0.1988576   0.6432477
24 months   ki1148112-LCNI-5           MALAWI                         10                   NA                0.3200000   0.1369866   0.5030134
24 months   ki1148112-LCNI-5           MALAWI                         11                   NA                0.4444444   0.2819851   0.6069038
24 months   ki1148112-LCNI-5           MALAWI                         12                   NA                0.6250000   0.4311466   0.8188534
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.5391061          NA          NA
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.5016835          NA          NA
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                0.4751381          NA          NA
24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                    NA                0.4358974          NA          NA
24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                    NA                0.4270833          NA          NA
24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                    NA                0.5288136          NA          NA
24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                    NA                0.4045308          NA          NA
24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                    NA                0.4540230          NA          NA
24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                    NA                0.5000000          NA          NA
24 months   kiGH5241-JiVitA-3          BANGLADESH                     10                   NA                0.4668246          NA          NA
24 months   kiGH5241-JiVitA-3          BANGLADESH                     11                   NA                0.5080000          NA          NA
24 months   kiGH5241-JiVitA-3          BANGLADESH                     12                   NA                0.4889267          NA          NA
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.3529412          NA          NA
24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                0.4175824          NA          NA
24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                0.4660194          NA          NA
24 months   kiGH5241-JiVitA-4          BANGLADESH                     4                    NA                0.4473684          NA          NA
24 months   kiGH5241-JiVitA-4          BANGLADESH                     5                    NA                0.3653846          NA          NA
24 months   kiGH5241-JiVitA-4          BANGLADESH                     6                    NA                0.3486239          NA          NA
24 months   kiGH5241-JiVitA-4          BANGLADESH                     7                    NA                0.3908629          NA          NA
24 months   kiGH5241-JiVitA-4          BANGLADESH                     8                    NA                0.3237410          NA          NA
24 months   kiGH5241-JiVitA-4          BANGLADESH                     9                    NA                0.4646465          NA          NA
24 months   kiGH5241-JiVitA-4          BANGLADESH                     10                   NA                0.2758621          NA          NA
24 months   kiGH5241-JiVitA-4          BANGLADESH                     11                   NA                0.2727273          NA          NA
24 months   kiGH5241-JiVitA-4          BANGLADESH                     12                   NA                0.3333333          NA          NA


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1036581   0.0985732   0.1087430
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.3412682          NA          NA
3 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2280702   0.1935943   0.2625460
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0597731   0.0500657   0.0694806
3 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0628025          NA          NA
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1780419   0.1702125   0.1858712
3 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2767980          NA          NA
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.3008130   0.2539566   0.3476694
6 months    ki1000108-IRC              INDIA                          NA                   NA                0.2457002   0.2038248   0.2875757
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2681564   0.2306532   0.3056597
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0970922   0.0842059   0.1099785
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0713633          NA          NA
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1660829   0.1580659   0.1740998
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                0.3682956   0.3356382   0.4009530
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2618103          NA          NA
9 months    ki1000108-IRC              INDIA                          NA                   NA                0.2727273   0.2294063   0.3160482
9 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.3570020   0.3152562   0.3987478
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1482103   0.1317366   0.1646840
9 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0449018          NA          NA
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1978840   0.1889592   0.2068088
12 months   ki1000108-IRC              INDIA                          NA                   NA                0.2931034   0.2487723   0.3374346
12 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.3747454   0.3318860   0.4176049
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1655125   0.1463373   0.1846877
12 months   ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.2000000   0.1684890   0.2315110
12 months   ki1114097-CMIN             PERU                           NA                   NA                0.1913478   0.1598728   0.2228227
12 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0341262          NA          NA
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2442827   0.2340199   0.2545456
12 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.3945687   0.3562508   0.4328866
12 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.3967814          NA          NA
12 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.3335944          NA          NA
18 months   ki1000108-IRC              INDIA                          NA                   NA                0.3555556   0.3088785   0.4022327
18 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.5874730   0.5425832   0.6323628
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2408163   0.2140325   0.2676002
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.3944354          NA          NA
18 months   ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.2811671   0.2490566   0.3132776
18 months   ki1114097-CMIN             PERU                           NA                   NA                0.3149284   0.2737175   0.3561393
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.4756598   0.4519478   0.4993718
18 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.4593103   0.4230104   0.4956103
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.5547786   0.5076945   0.6018626
24 months   ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.3393829   0.2998111   0.3789548
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.4421416   0.4016536   0.4826297
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4814815          NA          NA
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.3908873          NA          NA


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 1.1548196   0.9441066   1.4125610
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3                    1                 0.9268026   0.7510259   1.1437195
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       4                    1                 0.8563409   0.6845361   1.0712652
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       5                    1                 1.0021734   0.8100680   1.2398361
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       6                    1                 0.8853122   0.7148568   1.0964121
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       7                    1                 0.7993394   0.6423171   0.9947477
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       8                    1                 0.5766391   0.4528181   0.7343183
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       9                    1                 0.4910962   0.3823070   0.6308424
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       10                   1                 0.6337302   0.4951837   0.8110403
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       11                   1                 0.6508242   0.5132450   0.8252826
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       12                   1                 0.7675932   0.6176032   0.9540095
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000          NA          NA
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.9504613          NA          NA
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3                    1                 0.8857175          NA          NA
Birth       kiGH5241-JiVitA-3          BANGLADESH                     4                    1                 0.7839659          NA          NA
Birth       kiGH5241-JiVitA-3          BANGLADESH                     5                    1                 0.7988571          NA          NA
Birth       kiGH5241-JiVitA-3          BANGLADESH                     6                    1                 0.8589165          NA          NA
Birth       kiGH5241-JiVitA-3          BANGLADESH                     7                    1                 0.7873708          NA          NA
Birth       kiGH5241-JiVitA-3          BANGLADESH                     8                    1                 0.8964322          NA          NA
Birth       kiGH5241-JiVitA-3          BANGLADESH                     9                    1                 0.8459740          NA          NA
Birth       kiGH5241-JiVitA-3          BANGLADESH                     10                   1                 0.9718828          NA          NA
Birth       kiGH5241-JiVitA-3          BANGLADESH                     11                   1                 1.0704126          NA          NA
Birth       kiGH5241-JiVitA-3          BANGLADESH                     12                   1                 1.0381166          NA          NA
3 months    ki1017093-NIH-Birth        BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
3 months    ki1017093-NIH-Birth        BANGLADESH                     2                    1                 0.7466063   0.3851665   1.4472209
3 months    ki1017093-NIH-Birth        BANGLADESH                     3                    1                 0.4751131   0.2137535   1.0560411
3 months    ki1017093-NIH-Birth        BANGLADESH                     4                    1                 0.5147059   0.2324642   1.1396257
3 months    ki1017093-NIH-Birth        BANGLADESH                     5                    1                 0.7219251   0.3553689   1.4665773
3 months    ki1017093-NIH-Birth        BANGLADESH                     6                    1                 0.8608321   0.4390903   1.6876527
3 months    ki1017093-NIH-Birth        BANGLADESH                     7                    1                 1.0670315   0.5813696   1.9584033
3 months    ki1017093-NIH-Birth        BANGLADESH                     8                    1                 0.8823529   0.4508537   1.7268280
3 months    ki1017093-NIH-Birth        BANGLADESH                     9                    1                 0.7058824   0.3103399   1.6055619
3 months    ki1017093-NIH-Birth        BANGLADESH                     10                   1                 1.1344538   0.6516843   1.9748602
3 months    ki1017093-NIH-Birth        BANGLADESH                     11                   1                 0.9502262   0.5201541   1.7358892
3 months    ki1017093-NIH-Birth        BANGLADESH                     12                   1                 0.5429864   0.2553403   1.1546717
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.3100775   0.5758546   2.9804452
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                 1.1349206   0.4832690   2.6652750
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                 1.1085271   0.4718832   2.6041030
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    1                 0.8764045   0.3567548   2.1529772
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    1                 1.0970464   0.4581694   2.6267812
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    1                 0.7800000   0.3170928   1.9186812
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    1                 1.4572271   0.6770267   3.1365246
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    1                 1.0781499   0.4727718   2.4587068
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   1                 0.8739496   0.3770927   2.0254643
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   1                 1.0579030   0.4637963   2.4130391
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   1                 0.6864688   0.2710170   1.7387818
3 months    ki1119695-PROBIT           BELARUS                        1                    1                 1.0000000          NA          NA
3 months    ki1119695-PROBIT           BELARUS                        2                    1                 0.9191947          NA          NA
3 months    ki1119695-PROBIT           BELARUS                        3                    1                 0.9500757          NA          NA
3 months    ki1119695-PROBIT           BELARUS                        4                    1                 0.8356316          NA          NA
3 months    ki1119695-PROBIT           BELARUS                        5                    1                 0.6596847          NA          NA
3 months    ki1119695-PROBIT           BELARUS                        6                    1                 0.6868638          NA          NA
3 months    ki1119695-PROBIT           BELARUS                        7                    1                 0.7521433          NA          NA
3 months    ki1119695-PROBIT           BELARUS                        8                    1                 0.7377648          NA          NA
3 months    ki1119695-PROBIT           BELARUS                        9                    1                 0.9073894          NA          NA
3 months    ki1119695-PROBIT           BELARUS                        10                   1                 0.9132307          NA          NA
3 months    ki1119695-PROBIT           BELARUS                        11                   1                 1.0249973          NA          NA
3 months    ki1119695-PROBIT           BELARUS                        12                   1                 0.9077864          NA          NA
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 1.0231788   0.8179055   1.2799705
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       3                    1                 1.0770303   0.8733858   1.3281580
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       4                    1                 1.1505144   0.9291002   1.4246939
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       5                    1                 1.2834611   1.0442395   1.5774854
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       6                    1                 1.6179902   1.3425099   1.9499985
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       7                    1                 1.2278146   1.0030650   1.5029221
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       8                    1                 1.0559497   0.8577058   1.3000141
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       9                    1                 0.9216226   0.7398164   1.1481068
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       10                   1                 1.0560784   0.8425438   1.3237314
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       11                   1                 0.9825995   0.7859694   1.2284216
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       12                   1                 0.7718508   0.6139314   0.9703913
3 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000          NA          NA
3 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.9356662          NA          NA
3 months    kiGH5241-JiVitA-3          BANGLADESH                     3                    1                 0.8002787          NA          NA
3 months    kiGH5241-JiVitA-3          BANGLADESH                     4                    1                 0.7311324          NA          NA
3 months    kiGH5241-JiVitA-3          BANGLADESH                     5                    1                 0.6614020          NA          NA
3 months    kiGH5241-JiVitA-3          BANGLADESH                     6                    1                 0.6576628          NA          NA
3 months    kiGH5241-JiVitA-3          BANGLADESH                     7                    1                 0.7240741          NA          NA
3 months    kiGH5241-JiVitA-3          BANGLADESH                     8                    1                 0.9536960          NA          NA
3 months    kiGH5241-JiVitA-3          BANGLADESH                     9                    1                 1.0217556          NA          NA
3 months    kiGH5241-JiVitA-3          BANGLADESH                     10                   1                 1.2250995          NA          NA
3 months    kiGH5241-JiVitA-3          BANGLADESH                     11                   1                 1.2237543          NA          NA
3 months    kiGH5241-JiVitA-3          BANGLADESH                     12                   1                 1.0725743          NA          NA
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                    1                 1.0625000   0.4340220   2.6010345
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                    1                 0.6580645   0.2706140   1.6002457
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4                    1                 0.6181818   0.2733603   1.3979672
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          5                    1                 1.1657143   0.5818574   2.3354345
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          6                    1                 1.4702703   0.7759069   2.7860231
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          7                    1                 1.7435897   0.9523644   3.1921659
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          8                    1                 1.2000000   0.5237642   2.7493287
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          9                    1                 1.0200000   0.4362746   2.3847365
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          10                   1                 0.9379310   0.4266308   2.0620045
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          11                   1                 0.5666667   0.2410738   1.3320036
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          12                   1                 0.9520000   0.4203951   2.1558387
6 months    ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1000108-IRC              INDIA                          2                    1                 1.3333333   0.6814288   2.6088974
6 months    ki1000108-IRC              INDIA                          3                    1                 1.1285266   0.5582521   2.2813569
6 months    ki1000108-IRC              INDIA                          4                    1                 0.8925620   0.3843467   2.0727817
6 months    ki1000108-IRC              INDIA                          5                    1                 1.1454545   0.5276900   2.4864336
6 months    ki1000108-IRC              INDIA                          6                    1                 0.4422604   0.1704376   1.1476006
6 months    ki1000108-IRC              INDIA                          7                    1                 1.0000000   0.4979279   2.0083230
6 months    ki1000108-IRC              INDIA                          8                    1                 0.4363636   0.1784677   1.0669336
6 months    ki1000108-IRC              INDIA                          9                    1                 0.8484848   0.3787374   1.9008596
6 months    ki1000108-IRC              INDIA                          10                   1                 0.4545455   0.1754380   1.1776903
6 months    ki1000108-IRC              INDIA                          11                   1                 0.5587583   0.2421272   1.2894496
6 months    ki1000108-IRC              INDIA                          12                   1                 0.8983957   0.4618662   1.7475080
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     2                    1                 0.9333333   0.5048827   1.7253731
6 months    ki1017093-NIH-Birth        BANGLADESH                     3                    1                 0.9333333   0.5048827   1.7253731
6 months    ki1017093-NIH-Birth        BANGLADESH                     4                    1                 0.7575758   0.3797353   1.5113714
6 months    ki1017093-NIH-Birth        BANGLADESH                     5                    1                 0.6666667   0.3144991   1.4131819
6 months    ki1017093-NIH-Birth        BANGLADESH                     6                    1                 0.9401709   0.4877056   1.8124076
6 months    ki1017093-NIH-Birth        BANGLADESH                     7                    1                 1.3333333   0.7655228   2.3223056
6 months    ki1017093-NIH-Birth        BANGLADESH                     8                    1                 0.6140351   0.2779685   1.3564095
6 months    ki1017093-NIH-Birth        BANGLADESH                     9                    1                 0.7777778   0.3582111   1.6887760
6 months    ki1017093-NIH-Birth        BANGLADESH                     10                   1                 0.9615385   0.5267535   1.7551972
6 months    ki1017093-NIH-Birth        BANGLADESH                     11                   1                 1.2244898   0.6986468   2.1461135
6 months    ki1017093-NIH-Birth        BANGLADESH                     12                   1                 0.4666667   0.2080715   1.0466490
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.7459459   0.3620145   1.5370526
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                 0.8191781   0.4045717   1.6586743
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                 0.8761905   0.4392683   1.7477012
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    1                 1.2026144   0.6412556   2.2553898
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    1                 1.0366197   0.5333901   2.0146238
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    1                 1.0331551   0.5529142   1.9305156
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    1                 1.2504854   0.6938377   2.2537169
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    1                 0.7076923   0.3535076   1.4167402
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   1                 1.0564593   0.5749600   1.9411895
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   1                 0.5270833   0.2497677   1.1123011
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   1                 0.4625698   0.2086365   1.0255679
6 months    ki1119695-PROBIT           BELARUS                        1                    1                 1.0000000          NA          NA
6 months    ki1119695-PROBIT           BELARUS                        2                    1                 0.9146692          NA          NA
6 months    ki1119695-PROBIT           BELARUS                        3                    1                 0.7273444          NA          NA
6 months    ki1119695-PROBIT           BELARUS                        4                    1                 0.6736630          NA          NA
6 months    ki1119695-PROBIT           BELARUS                        5                    1                 0.5507535          NA          NA
6 months    ki1119695-PROBIT           BELARUS                        6                    1                 0.7513920          NA          NA
6 months    ki1119695-PROBIT           BELARUS                        7                    1                 0.6158426          NA          NA
6 months    ki1119695-PROBIT           BELARUS                        8                    1                 0.7012976          NA          NA
6 months    ki1119695-PROBIT           BELARUS                        9                    1                 0.8075602          NA          NA
6 months    ki1119695-PROBIT           BELARUS                        10                   1                 0.7650778          NA          NA
6 months    ki1119695-PROBIT           BELARUS                        11                   1                 0.9247067          NA          NA
6 months    ki1119695-PROBIT           BELARUS                        12                   1                 0.6953434          NA          NA
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 0.9989936   0.7907530   1.2620732
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3                    1                 1.2383243   1.0080210   1.5212450
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       4                    1                 1.0306667   0.8240047   1.2891599
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       5                    1                 1.0029794   0.7955324   1.2645214
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       6                    1                 0.9432651   0.7489758   1.1879543
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       7                    1                 1.0896401   0.8735728   1.3591489
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       8                    1                 0.8002759   0.6321213   1.0131625
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       9                    1                 0.7666686   0.6052922   0.9710694
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       10                   1                 0.9463254   0.7474614   1.1980977
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       11                   1                 0.9362584   0.7484093   1.1712571
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       12                   1                 0.8323566   0.6644884   1.0426328
6 months    ki1148112-LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1148112-LCNI-5           MALAWI                         2                    1                 1.2771930   0.7726483   2.1112089
6 months    ki1148112-LCNI-5           MALAWI                         3                    1                 1.3333333   0.8020260   2.2166086
6 months    ki1148112-LCNI-5           MALAWI                         4                    1                 1.6816817   1.0410356   2.7165769
6 months    ki1148112-LCNI-5           MALAWI                         5                    1                 1.3015291   0.7865513   2.1536777
6 months    ki1148112-LCNI-5           MALAWI                         6                    1                 1.2307692   0.7294339   2.0766693
6 months    ki1148112-LCNI-5           MALAWI                         7                    1                 1.6592593   1.0018980   2.7479257
6 months    ki1148112-LCNI-5           MALAWI                         8                    1                 1.2155039   0.6599594   2.2386978
6 months    ki1148112-LCNI-5           MALAWI                         9                    1                 1.2444444   0.6257645   2.4748001
6 months    ki1148112-LCNI-5           MALAWI                         10                   1                 1.4933333   0.8246867   2.7041112
6 months    ki1148112-LCNI-5           MALAWI                         11                   1                 1.2952381   0.7257833   2.3114911
6 months    ki1148112-LCNI-5           MALAWI                         12                   1                 1.7568627   1.0022995   3.0794855
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000          NA          NA
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.9418546          NA          NA
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3                    1                 0.8827289          NA          NA
6 months    kiGH5241-JiVitA-3          BANGLADESH                     4                    1                 0.8990950          NA          NA
6 months    kiGH5241-JiVitA-3          BANGLADESH                     5                    1                 0.9144845          NA          NA
6 months    kiGH5241-JiVitA-3          BANGLADESH                     6                    1                 0.9496859          NA          NA
6 months    kiGH5241-JiVitA-3          BANGLADESH                     7                    1                 0.8857958          NA          NA
6 months    kiGH5241-JiVitA-3          BANGLADESH                     8                    1                 0.8467985          NA          NA
6 months    kiGH5241-JiVitA-3          BANGLADESH                     9                    1                 0.8278561          NA          NA
6 months    kiGH5241-JiVitA-3          BANGLADESH                     10                   1                 1.0271344          NA          NA
6 months    kiGH5241-JiVitA-3          BANGLADESH                     11                   1                 1.1060553          NA          NA
6 months    kiGH5241-JiVitA-3          BANGLADESH                     12                   1                 0.9586303          NA          NA
9 months    ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
9 months    ki1000108-IRC              INDIA                          2                    1                 0.8571429   0.4371571   1.6806176
9 months    ki1000108-IRC              INDIA                          3                    1                 0.6206897   0.2887880   1.3340433
9 months    ki1000108-IRC              INDIA                          4                    1                 1.1688312   0.6319585   2.1617973
9 months    ki1000108-IRC              INDIA                          5                    1                 1.2857143   0.7052379   2.3439768
9 months    ki1000108-IRC              INDIA                          6                    1                 0.3474903   0.1394060   0.8661715
9 months    ki1000108-IRC              INDIA                          7                    1                 0.6428571   0.3194603   1.2936358
9 months    ki1000108-IRC              INDIA                          8                    1                 0.4571429   0.2157399   0.9686647
9 months    ki1000108-IRC              INDIA                          9                    1                 0.7619048   0.3738665   1.5526903
9 months    ki1000108-IRC              INDIA                          10                   1                 0.4285714   0.1853116   0.9911601
9 months    ki1000108-IRC              INDIA                          11                   1                 0.5644599   0.2779146   1.1464493
9 months    ki1000108-IRC              INDIA                          12                   1                 0.8067227   0.4529060   1.4369462
9 months    ki1017093-NIH-Birth        BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
9 months    ki1017093-NIH-Birth        BANGLADESH                     2                    1                 0.7262846   0.4370645   1.2068912
9 months    ki1017093-NIH-Birth        BANGLADESH                     3                    1                 0.7252544   0.4410067   1.1927120
9 months    ki1017093-NIH-Birth        BANGLADESH                     4                    1                 0.5072464   0.2733868   0.9411533
9 months    ki1017093-NIH-Birth        BANGLADESH                     5                    1                 0.7647715   0.4570350   1.2797168
9 months    ki1017093-NIH-Birth        BANGLADESH                     6                    1                 0.4916388   0.2575948   0.9383291
9 months    ki1017093-NIH-Birth        BANGLADESH                     7                    1                 0.8521739   0.5347777   1.3579482
9 months    ki1017093-NIH-Birth        BANGLADESH                     8                    1                 0.9621318   0.5897481   1.5696494
9 months    ki1017093-NIH-Birth        BANGLADESH                     9                    1                 0.6817391   0.3576990   1.2993278
9 months    ki1017093-NIH-Birth        BANGLADESH                     10                   1                 0.7826087   0.4874851   1.2564002
9 months    ki1017093-NIH-Birth        BANGLADESH                     11                   1                 0.9972248   0.6510104   1.5275598
9 months    ki1017093-NIH-Birth        BANGLADESH                     12                   1                 0.5965217   0.3491934   1.0190288
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.8086884   0.4320067   1.5138120
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                 1.0341880   0.5750924   1.8597794
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                 1.7347670   1.0308746   2.9192848
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    1                 1.3544776   0.7865266   2.3325461
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    1                 0.9918033   0.5425980   1.8128960
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    1                 1.1862745   0.6940810   2.0274972
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    1                 1.0174174   0.5892717   1.7566400
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    1                 0.6111112   0.3209533   1.1635862
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   1                 0.9296690   0.5331548   1.6210763
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   1                 0.7202381   0.3912382   1.3259004
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   1                 0.7721471   0.4162144   1.4324619
9 months    ki1119695-PROBIT           BELARUS                        1                    1                 1.0000000          NA          NA
9 months    ki1119695-PROBIT           BELARUS                        2                    1                 0.7455717          NA          NA
9 months    ki1119695-PROBIT           BELARUS                        3                    1                 0.6056037          NA          NA
9 months    ki1119695-PROBIT           BELARUS                        4                    1                 0.5693721          NA          NA
9 months    ki1119695-PROBIT           BELARUS                        5                    1                 0.4271781          NA          NA
9 months    ki1119695-PROBIT           BELARUS                        6                    1                 0.8709217          NA          NA
9 months    ki1119695-PROBIT           BELARUS                        7                    1                 0.5981912          NA          NA
9 months    ki1119695-PROBIT           BELARUS                        8                    1                 0.7436122          NA          NA
9 months    ki1119695-PROBIT           BELARUS                        9                    1                 0.9269269          NA          NA
9 months    ki1119695-PROBIT           BELARUS                        10                   1                 0.7542523          NA          NA
9 months    ki1119695-PROBIT           BELARUS                        11                   1                 1.2387472          NA          NA
9 months    ki1119695-PROBIT           BELARUS                        12                   1                 0.7008183          NA          NA
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 0.9930269   0.8062770   1.2230317
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       3                    1                 0.8731485   0.7024168   1.0853788
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       4                    1                 0.7690000   0.6073497   0.9736746
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       5                    1                 1.0612340   0.8609236   1.3081505
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       6                    1                 1.0360312   0.8447197   1.2706708
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       7                    1                 0.9596096   0.7756451   1.1872061
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       8                    1                 0.8954876   0.7270155   1.1030000
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       9                    1                 0.8958588   0.7301520   1.0991726
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       10                   1                 1.0474077   0.8507454   1.2895315
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       11                   1                 0.8758710   0.7077591   1.0839140
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       12                   1                 1.0062672   0.8259366   1.2259703
12 months   ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
12 months   ki1000108-IRC              INDIA                          2                    1                 1.1234568   0.6494773   1.9433399
12 months   ki1000108-IRC              INDIA                          3                    1                 0.6436782   0.3184412   1.3010928
12 months   ki1000108-IRC              INDIA                          4                    1                 1.2222222   0.6982628   2.1393481
12 months   ki1000108-IRC              INDIA                          5                    1                 1.2833333   0.7392495   2.2278601
12 months   ki1000108-IRC              INDIA                          6                    1                 0.3153153   0.1279977   0.7767619
12 months   ki1000108-IRC              INDIA                          7                    1                 0.3888889   0.1703286   0.8878987
12 months   ki1000108-IRC              INDIA                          8                    1                 0.4148148   0.1985995   0.8664238
12 months   ki1000108-IRC              INDIA                          9                    1                 0.7777778   0.4031086   1.5006832
12 months   ki1000108-IRC              INDIA                          10                   1                 0.3153153   0.1279977   0.7767619
12 months   ki1000108-IRC              INDIA                          11                   1                 0.6260163   0.3318428   1.1809698
12 months   ki1000108-IRC              INDIA                          12                   1                 0.7777778   0.4507007   1.3422172
12 months   ki1017093-NIH-Birth        BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
12 months   ki1017093-NIH-Birth        BANGLADESH                     2                    1                 0.7642276   0.4491657   1.3002861
12 months   ki1017093-NIH-Birth        BANGLADESH                     3                    1                 0.6811594   0.3965519   1.1700312
12 months   ki1017093-NIH-Birth        BANGLADESH                     4                    1                 0.7833333   0.4614147   1.3298474
12 months   ki1017093-NIH-Birth        BANGLADESH                     5                    1                 0.7258687   0.4129516   1.2759011
12 months   ki1017093-NIH-Birth        BANGLADESH                     6                    1                 0.6838624   0.3802737   1.2298191
12 months   ki1017093-NIH-Birth        BANGLADESH                     7                    1                 0.9825784   0.6138105   1.5728965
12 months   ki1017093-NIH-Birth        BANGLADESH                     8                    1                 0.9494949   0.5703888   1.5805723
12 months   ki1017093-NIH-Birth        BANGLADESH                     9                    1                 0.8392857   0.4572976   1.5403548
12 months   ki1017093-NIH-Birth        BANGLADESH                     10                   1                 0.7764820   0.4713033   1.2792703
12 months   ki1017093-NIH-Birth        BANGLADESH                     11                   1                 1.0257937   0.6587250   1.5974081
12 months   ki1017093-NIH-Birth        BANGLADESH                     12                   1                 0.8221574   0.5054358   1.3373465
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.6979611   0.3810949   1.2782897
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                 0.8629495   0.4833140   1.5407824
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                 1.2790467   0.7669626   2.1330381
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    1                 0.7415837   0.4097166   1.3422603
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    1                 0.9592850   0.5510459   1.6699658
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    1                 0.8183840   0.4760140   1.4070013
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    1                 0.8489405   0.5010863   1.4382753
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    1                 0.6331984   0.3483513   1.1509653
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   1                 0.5234708   0.2837956   0.9655602
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   1                 0.6481558   0.3567886   1.1774647
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   1                 0.7931034   0.4466342   1.4083406
12 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    1                 1.0000000   1.0000000   1.0000000
12 months   ki1114097-CMIN             GUINEA-BISSAU                  2                    1                 1.2718750   0.5748835   2.8139025
12 months   ki1114097-CMIN             GUINEA-BISSAU                  3                    1                 0.9680233   0.4155806   2.2548432
12 months   ki1114097-CMIN             GUINEA-BISSAU                  4                    1                 0.9592593   0.4777601   1.9260261
12 months   ki1114097-CMIN             GUINEA-BISSAU                  5                    1                 0.5854430   0.2516297   1.3620951
12 months   ki1114097-CMIN             GUINEA-BISSAU                  6                    1                 0.8004808   0.3405372   1.8816432
12 months   ki1114097-CMIN             GUINEA-BISSAU                  7                    1                 0.8993056   0.3636603   2.2239174
12 months   ki1114097-CMIN             GUINEA-BISSAU                  8                    1                 0.9810606   0.3988611   2.4130702
12 months   ki1114097-CMIN             GUINEA-BISSAU                  9                    1                 0.8075397   0.3571299   1.8260033
12 months   ki1114097-CMIN             GUINEA-BISSAU                  10                   1                 1.0673077   0.4607056   2.4726109
12 months   ki1114097-CMIN             GUINEA-BISSAU                  11                   1                 1.2242647   0.5330631   2.8117197
12 months   ki1114097-CMIN             GUINEA-BISSAU                  12                   1                 0.9568966   0.3733999   2.4521997
12 months   ki1114097-CMIN             PERU                           1                    1                 1.0000000   1.0000000   1.0000000
12 months   ki1114097-CMIN             PERU                           2                    1                 0.4931071   0.2014175   1.2072170
12 months   ki1114097-CMIN             PERU                           3                    1                 0.9917966   0.5492162   1.7910260
12 months   ki1114097-CMIN             PERU                           4                    1                 0.6931677   0.3707341   1.2960271
12 months   ki1114097-CMIN             PERU                           5                    1                 0.4411067   0.1913795   1.0166979
12 months   ki1114097-CMIN             PERU                           6                    1                 0.6022202   0.2786823   1.3013714
12 months   ki1114097-CMIN             PERU                           7                    1                 0.8603145   0.4469466   1.6559944
12 months   ki1114097-CMIN             PERU                           8                    1                 0.7522750   0.3664207   1.5444479
12 months   ki1114097-CMIN             PERU                           9                    1                 0.6521739   0.2709770   1.5696197
12 months   ki1114097-CMIN             PERU                           10                   1                 1.3478261   0.7099498   2.5588220
12 months   ki1114097-CMIN             PERU                           11                   1                 0.7826087   0.4209605   1.4549497
12 months   ki1114097-CMIN             PERU                           12                   1                 0.6317935   0.2619306   1.5239264
12 months   ki1119695-PROBIT           BELARUS                        1                    1                 1.0000000          NA          NA
12 months   ki1119695-PROBIT           BELARUS                        2                    1                 0.8670931          NA          NA
12 months   ki1119695-PROBIT           BELARUS                        3                    1                 0.8085770          NA          NA
12 months   ki1119695-PROBIT           BELARUS                        4                    1                 0.8762146          NA          NA
12 months   ki1119695-PROBIT           BELARUS                        5                    1                 0.8896565          NA          NA
12 months   ki1119695-PROBIT           BELARUS                        6                    1                 1.1726259          NA          NA
12 months   ki1119695-PROBIT           BELARUS                        7                    1                 0.8018779          NA          NA
12 months   ki1119695-PROBIT           BELARUS                        8                    1                 0.8979476          NA          NA
12 months   ki1119695-PROBIT           BELARUS                        9                    1                 1.1017578          NA          NA
12 months   ki1119695-PROBIT           BELARUS                        10                   1                 0.9572650          NA          NA
12 months   ki1119695-PROBIT           BELARUS                        11                   1                 1.0384557          NA          NA
12 months   ki1119695-PROBIT           BELARUS                        12                   1                 0.7291497          NA          NA
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 1.0557957   0.8609238   1.2947772
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                    1                 1.0211986   0.8391067   1.2428058
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                    1                 0.9388285   0.7599809   1.1597647
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                    1                 1.0123674   0.8226479   1.2458400
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                    1                 1.1024735   0.9073450   1.3395652
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                    1                 1.1176734   0.9203649   1.3572811
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                    1                 1.0145132   0.8335254   1.2347998
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                    1                 0.9451188   0.7743337   1.1535718
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       10                   1                 1.0667280   0.8664568   1.3132895
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       11                   1                 0.9954077   0.8121837   1.2199661
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       12                   1                 0.8714228   0.7082716   1.0721560
12 months   ki1148112-LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.0000000
12 months   ki1148112-LCNI-5           MALAWI                         2                    1                 0.9453901   0.5732865   1.5590154
12 months   ki1148112-LCNI-5           MALAWI                         3                    1                 0.9690141   0.5745796   1.6342179
12 months   ki1148112-LCNI-5           MALAWI                         4                    1                 1.4156379   0.8896983   2.2524833
12 months   ki1148112-LCNI-5           MALAWI                         5                    1                 1.1305164   0.6855211   1.8643737
12 months   ki1148112-LCNI-5           MALAWI                         6                    1                 1.2048309   0.7352350   1.9743585
12 months   ki1148112-LCNI-5           MALAWI                         7                    1                 1.3551515   0.8260349   2.2231937
12 months   ki1148112-LCNI-5           MALAWI                         8                    1                 0.7747748   0.3967850   1.5128495
12 months   ki1148112-LCNI-5           MALAWI                         9                    1                 1.3578947   0.7260106   2.5397399
12 months   ki1148112-LCNI-5           MALAWI                         10                   1                 0.9173333   0.4542132   1.8526551
12 months   ki1148112-LCNI-5           MALAWI                         11                   1                 1.2070175   0.6940256   2.0991897
12 months   ki1148112-LCNI-5           MALAWI                         12                   1                 1.3710145   0.7590758   2.4762755
12 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000          NA          NA
12 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.9817184          NA          NA
12 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    1                 0.8962078          NA          NA
12 months   kiGH5241-JiVitA-3          BANGLADESH                     4                    1                 0.8657959          NA          NA
12 months   kiGH5241-JiVitA-3          BANGLADESH                     5                    1                 0.7876513          NA          NA
12 months   kiGH5241-JiVitA-3          BANGLADESH                     6                    1                 0.9544309          NA          NA
12 months   kiGH5241-JiVitA-3          BANGLADESH                     7                    1                 0.8196209          NA          NA
12 months   kiGH5241-JiVitA-3          BANGLADESH                     8                    1                 0.7872393          NA          NA
12 months   kiGH5241-JiVitA-3          BANGLADESH                     9                    1                 0.8821843          NA          NA
12 months   kiGH5241-JiVitA-3          BANGLADESH                     10                   1                 0.9583472          NA          NA
12 months   kiGH5241-JiVitA-3          BANGLADESH                     11                   1                 1.0553807          NA          NA
12 months   kiGH5241-JiVitA-3          BANGLADESH                     12                   1                 1.0107638          NA          NA
12 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    1                 1.0000000          NA          NA
12 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    1                 1.0400000          NA          NA
12 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    1                 1.2115385          NA          NA
12 months   kiGH5241-JiVitA-4          BANGLADESH                     4                    1                 1.1161572          NA          NA
12 months   kiGH5241-JiVitA-4          BANGLADESH                     5                    1                 1.2825000          NA          NA
12 months   kiGH5241-JiVitA-4          BANGLADESH                     6                    1                 1.2724138          NA          NA
12 months   kiGH5241-JiVitA-4          BANGLADESH                     7                    1                 1.1828571          NA          NA
12 months   kiGH5241-JiVitA-4          BANGLADESH                     8                    1                 1.2641221          NA          NA
12 months   kiGH5241-JiVitA-4          BANGLADESH                     9                    1                 1.4679612          NA          NA
12 months   kiGH5241-JiVitA-4          BANGLADESH                     10                   1                 1.0687500          NA          NA
12 months   kiGH5241-JiVitA-4          BANGLADESH                     11                   1                 0.6750000          NA          NA
12 months   kiGH5241-JiVitA-4          BANGLADESH                     12                   1                 1.6200000          NA          NA
18 months   ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
18 months   ki1000108-IRC              INDIA                          2                    1                 0.9777778   0.5378631   1.7774957
18 months   ki1000108-IRC              INDIA                          3                    1                 0.9103448   0.4966930   1.6684908
18 months   ki1000108-IRC              INDIA                          4                    1                 1.0909091   0.5987971   1.9874555
18 months   ki1000108-IRC              INDIA                          5                    1                 1.3714286   0.8024020   2.3439826
18 months   ki1000108-IRC              INDIA                          6                    1                 0.3243243   0.1314317   0.8003115
18 months   ki1000108-IRC              INDIA                          7                    1                 0.6666667   0.3465963   1.2823115
18 months   ki1000108-IRC              INDIA                          8                    1                 0.7090909   0.3896556   1.2903956
18 months   ki1000108-IRC              INDIA                          9                    1                 1.3333333   0.7977233   2.2285644
18 months   ki1000108-IRC              INDIA                          10                   1                 0.4235294   0.1858646   0.9650957
18 months   ki1000108-IRC              INDIA                          11                   1                 0.9365854   0.5433235   1.6144934
18 months   ki1000108-IRC              INDIA                          12                   1                 0.9411765   0.5614960   1.5775947
18 months   ki1017093-NIH-Birth        BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
18 months   ki1017093-NIH-Birth        BANGLADESH                     2                    1                 1.0476190   0.7387411   1.4856431
18 months   ki1017093-NIH-Birth        BANGLADESH                     3                    1                 0.8712121   0.6017596   1.2613185
18 months   ki1017093-NIH-Birth        BANGLADESH                     4                    1                 1.0964912   0.7873228   1.5270649
18 months   ki1017093-NIH-Birth        BANGLADESH                     5                    1                 1.0476190   0.7387411   1.4856431
18 months   ki1017093-NIH-Birth        BANGLADESH                     6                    1                 1.0952381   0.7809135   1.5360811
18 months   ki1017093-NIH-Birth        BANGLADESH                     7                    1                 1.0975610   0.7929008   1.5192823
18 months   ki1017093-NIH-Birth        BANGLADESH                     8                    1                 0.8602151   0.5671927   1.3046181
18 months   ki1017093-NIH-Birth        BANGLADESH                     9                    1                 0.9333333   0.6120601   1.4232444
18 months   ki1017093-NIH-Birth        BANGLADESH                     10                   1                 1.0000000   0.7133817   1.4017740
18 months   ki1017093-NIH-Birth        BANGLADESH                     11                   1                 0.9848485   0.6989289   1.3877328
18 months   ki1017093-NIH-Birth        BANGLADESH                     12                   1                 0.7407407   0.4940893   1.1105216
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.4990958   0.2653395   0.9387847
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                 0.9814471   0.5984982   1.6094259
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                 1.0292599   0.6378513   1.6608508
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    1                 0.6739927   0.3833438   1.1850098
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    1                 0.6969697   0.3877674   1.2527271
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    1                 0.8117647   0.4850149   1.3586428
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    1                 0.6705539   0.3948725   1.1387031
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    1                 0.8504202   0.5122662   1.4117943
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   1                 0.7731092   0.4689577   1.2745240
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   1                 0.6895944   0.3965622   1.1991571
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   1                 0.8534323   0.5077188   1.4345473
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    1                 1.0000000          NA          NA
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                    1                 0.7111111          NA          NA
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   3                    1                 0.7420290          NA          NA
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   4                    1                 0.7901235          NA          NA
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   5                    1                 0.9442623          NA          NA
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   6                    1                 0.8592593          NA          NA
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   7                    1                 0.9955556          NA          NA
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   8                    1                 0.6433862          NA          NA
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   9                    1                 0.9373737          NA          NA
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   10                   1                 0.8691358          NA          NA
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   11                   1                 0.7420290          NA          NA
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   12                   1                 0.7111111          NA          NA
18 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    1                 1.0000000   1.0000000   1.0000000
18 months   ki1114097-CMIN             GUINEA-BISSAU                  2                    1                 0.8297872   0.4535500   1.5181277
18 months   ki1114097-CMIN             GUINEA-BISSAU                  3                    1                 0.5660377   0.2866537   1.1177205
18 months   ki1114097-CMIN             GUINEA-BISSAU                  4                    1                 1.0843373   0.6997997   1.6801771
18 months   ki1114097-CMIN             GUINEA-BISSAU                  5                    1                 0.6000000   0.3339928   1.0778675
18 months   ki1114097-CMIN             GUINEA-BISSAU                  6                    1                 0.5820896   0.3118950   1.0863537
18 months   ki1114097-CMIN             GUINEA-BISSAU                  7                    1                 0.9750000   0.5393406   1.7625689
18 months   ki1114097-CMIN             GUINEA-BISSAU                  8                    1                 0.7714286   0.3891212   1.5293489
18 months   ki1114097-CMIN             GUINEA-BISSAU                  9                    1                 0.8461538   0.5001900   1.4314087
18 months   ki1114097-CMIN             GUINEA-BISSAU                  10                   1                 0.7674419   0.4041997   1.4571188
18 months   ki1114097-CMIN             GUINEA-BISSAU                  11                   1                 0.9767442   0.5469978   1.7441190
18 months   ki1114097-CMIN             GUINEA-BISSAU                  12                   1                 0.8235294   0.4557032   1.4882510
18 months   ki1114097-CMIN             PERU                           1                    1                 1.0000000   1.0000000   1.0000000
18 months   ki1114097-CMIN             PERU                           2                    1                 0.5140235   0.2690253   0.9821386
18 months   ki1114097-CMIN             PERU                           3                    1                 0.7358491   0.4478717   1.2089931
18 months   ki1114097-CMIN             PERU                           4                    1                 0.5403087   0.3017055   0.9676110
18 months   ki1114097-CMIN             PERU                           5                    1                 0.7710352   0.4635852   1.2823861
18 months   ki1114097-CMIN             PERU                           6                    1                 0.6656604   0.3434208   1.2902647
18 months   ki1114097-CMIN             PERU                           7                    1                 0.4754717   0.2112734   1.0700512
18 months   ki1114097-CMIN             PERU                           8                    1                 0.5094340   0.2432952   1.0667000
18 months   ki1114097-CMIN             PERU                           9                    1                 0.7132075   0.3538734   1.4374208
18 months   ki1114097-CMIN             PERU                           10                   1                 1.1369975   0.7078045   1.8264415
18 months   ki1114097-CMIN             PERU                           11                   1                 0.6735849   0.4286147   1.0585653
18 months   ki1114097-CMIN             PERU                           12                   1                 0.6483705   0.3177470   1.3230160
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 0.9701835   0.8010508   1.1750267
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                    1                 0.9017227   0.7255042   1.1207430
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                    1                 0.8532110   0.6809821   1.0689988
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                    1                 0.8764996   0.6932341   1.1082138
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                    1                 0.7171361   0.5601995   0.9180376
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                    1                 1.0238532   0.8276324   1.2665954
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                    1                 0.8180663   0.6459979   1.0359670
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                    1                 0.8617686   0.6807834   1.0908683
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       10                   1                 0.9051702   0.7142164   1.1471776
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       11                   1                 0.9207673   0.7402262   1.1453424
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       12                   1                 0.9277127   0.7598804   1.1326136
18 months   ki1148112-LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.0000000
18 months   ki1148112-LCNI-5           MALAWI                         2                    1                 0.7851916   0.5328831   1.1569625
18 months   ki1148112-LCNI-5           MALAWI                         3                    1                 0.8635682   0.5864569   1.2716195
18 months   ki1148112-LCNI-5           MALAWI                         4                    1                 1.1402958   0.8064045   1.6124346
18 months   ki1148112-LCNI-5           MALAWI                         5                    1                 1.0683230   0.7441315   1.5337531
18 months   ki1148112-LCNI-5           MALAWI                         6                    1                 1.0683230   0.7441315   1.5337531
18 months   ki1148112-LCNI-5           MALAWI                         7                    1                 0.9739130   0.6525224   1.4536000
18 months   ki1148112-LCNI-5           MALAWI                         8                    1                 0.6617179   0.3864778   1.1329774
18 months   ki1148112-LCNI-5           MALAWI                         9                    1                 1.0434783   0.6254629   1.7408656
18 months   ki1148112-LCNI-5           MALAWI                         10                   1                 0.7405330   0.4233294   1.2954192
18 months   ki1148112-LCNI-5           MALAWI                         11                   1                 0.8347826   0.5160320   1.3504239
18 months   ki1148112-LCNI-5           MALAWI                         12                   1                 1.2521739   0.8264942   1.8970969
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     2                    1                 0.9938272   0.7118156   1.3875678
24 months   ki1017093-NIH-Birth        BANGLADESH                     3                    1                 0.6829268   0.4516687   1.0325911
24 months   ki1017093-NIH-Birth        BANGLADESH                     4                    1                 1.0065359   0.7195002   1.4080811
24 months   ki1017093-NIH-Birth        BANGLADESH                     5                    1                 0.9607843   0.6784734   1.3605639
24 months   ki1017093-NIH-Birth        BANGLADESH                     6                    1                 0.8814815   0.5991400   1.2968750
24 months   ki1017093-NIH-Birth        BANGLADESH                     7                    1                 0.8408408   0.5788573   1.2213949
24 months   ki1017093-NIH-Birth        BANGLADESH                     8                    1                 0.8296296   0.5538836   1.2426533
24 months   ki1017093-NIH-Birth        BANGLADESH                     9                    1                 0.6549708   0.3688901   1.1629120
24 months   ki1017093-NIH-Birth        BANGLADESH                     10                   1                 0.8166667   0.5632447   1.1841114
24 months   ki1017093-NIH-Birth        BANGLADESH                     11                   1                 0.7967480   0.5477807   1.1588713
24 months   ki1017093-NIH-Birth        BANGLADESH                     12                   1                 0.8296296   0.5818977   1.1828287
24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1114097-CMIN             GUINEA-BISSAU                  2                    1                 0.5753968   0.2875407   1.1514248
24 months   ki1114097-CMIN             GUINEA-BISSAU                  3                    1                 0.8055556   0.4424521   1.4666441
24 months   ki1114097-CMIN             GUINEA-BISSAU                  4                    1                 0.9697452   0.6037392   1.5576357
24 months   ki1114097-CMIN             GUINEA-BISSAU                  5                    1                 0.7581699   0.4185153   1.3734783
24 months   ki1114097-CMIN             GUINEA-BISSAU                  6                    1                 0.7631579   0.4030919   1.4448566
24 months   ki1114097-CMIN             GUINEA-BISSAU                  7                    1                 0.9456522   0.4841224   1.8471734
24 months   ki1114097-CMIN             GUINEA-BISSAU                  8                    1                 0.8055556   0.3947681   1.6437999
24 months   ki1114097-CMIN             GUINEA-BISSAU                  9                    1                 0.7652778   0.4322128   1.3550041
24 months   ki1114097-CMIN             GUINEA-BISSAU                  10                   1                 0.7107843   0.3608244   1.4001666
24 months   ki1114097-CMIN             GUINEA-BISSAU                  11                   1                 0.6304348   0.2794226   1.4223904
24 months   ki1114097-CMIN             GUINEA-BISSAU                  12                   1                 0.6766667   0.3151616   1.4528350
24 months   ki1148112-LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1148112-LCNI-5           MALAWI                         2                    1                 0.7221591   0.4730576   1.1024319
24 months   ki1148112-LCNI-5           MALAWI                         3                    1                 0.9239437   0.6158093   1.3862601
24 months   ki1148112-LCNI-5           MALAWI                         4                    1                 1.0762500   0.7382757   1.5689452
24 months   ki1148112-LCNI-5           MALAWI                         5                    1                 0.9588710   0.6355217   1.4467381
24 months   ki1148112-LCNI-5           MALAWI                         6                    1                 1.0890625   0.7378286   1.6074968
24 months   ki1148112-LCNI-5           MALAWI                         7                    1                 0.7000000   0.4125463   1.1877455
24 months   ki1148112-LCNI-5           MALAWI                         8                    1                 0.5125000   0.2507774   1.0473680
24 months   ki1148112-LCNI-5           MALAWI                         9                    1                 0.8631579   0.4671123   1.5949945
24 months   ki1148112-LCNI-5           MALAWI                         10                   1                 0.6560000   0.3416379   1.2596260
24 months   ki1148112-LCNI-5           MALAWI                         11                   1                 0.9111111   0.5627475   1.4751259
24 months   ki1148112-LCNI-5           MALAWI                         12                   1                 1.2812500   0.8240941   1.9920075
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000          NA          NA
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.9305839          NA          NA
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    1                 0.8813443          NA          NA
24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                    1                 0.8085559          NA          NA
24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                    1                 0.7922064          NA          NA
24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                    1                 0.9809081          NA          NA
24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                    1                 0.7503731          NA          NA
24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                    1                 0.8421774          NA          NA
24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                    1                 0.9274611          NA          NA
24 months   kiGH5241-JiVitA-3          BANGLADESH                     10                   1                 0.8659234          NA          NA
24 months   kiGH5241-JiVitA-3          BANGLADESH                     11                   1                 0.9423005          NA          NA
24 months   kiGH5241-JiVitA-3          BANGLADESH                     12                   1                 0.9069211          NA          NA
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    1                 1.0000000          NA          NA
24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    1                 1.1831502          NA          NA
24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    1                 1.3203883          NA          NA
24 months   kiGH5241-JiVitA-4          BANGLADESH                     4                    1                 1.2675439          NA          NA
24 months   kiGH5241-JiVitA-4          BANGLADESH                     5                    1                 1.0352564          NA          NA
24 months   kiGH5241-JiVitA-4          BANGLADESH                     6                    1                 0.9877676          NA          NA
24 months   kiGH5241-JiVitA-4          BANGLADESH                     7                    1                 1.1074450          NA          NA
24 months   kiGH5241-JiVitA-4          BANGLADESH                     8                    1                 0.9172662          NA          NA
24 months   kiGH5241-JiVitA-4          BANGLADESH                     9                    1                 1.3164983          NA          NA
24 months   kiGH5241-JiVitA-4          BANGLADESH                     10                   1                 0.7816092          NA          NA
24 months   kiGH5241-JiVitA-4          BANGLADESH                     11                   1                 0.7727273          NA          NA
24 months   kiGH5241-JiVitA-4          BANGLADESH                     12                   1                 0.9444444          NA          NA


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0250621   -0.0419148   -0.0082094
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0267575           NA           NA
3 months    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.0552632   -0.1623620    0.0518357
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0020808   -0.0332916    0.0374532
3 months    ki1119695-PROBIT           BELARUS                        1                    NA                -0.0104648           NA           NA
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0151508   -0.0074808    0.0377824
3 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0102791           NA           NA
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                 0.0066954   -0.1395296    0.1529203
6 months    ki1000108-IRC              INDIA                          1                    NA                -0.0598553   -0.2028108    0.0831002
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.0318436   -0.1525110    0.0888238
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0116035   -0.0615755    0.0383685
6 months    ki1119695-PROBIT           BELARUS                        1                    NA                -0.0232041           NA           NA
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0068027   -0.0315992    0.0179937
6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                 0.1004384   -0.0124209    0.2132978
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0167082           NA           NA
9 months    ki1000108-IRC              INDIA                          1                    NA                -0.1161616   -0.2671628    0.0348396
9 months    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.1123858   -0.2447695    0.0199979
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0005500   -0.0617826    0.0606825
9 months    ki1119695-PROBIT           BELARUS                        1                    NA                -0.0134136           NA           NA
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0101784   -0.0373352    0.0169784
12 months   ki1000108-IRC              INDIA                          1                    NA                -0.1354680   -0.2912399    0.0203039
12 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.0720631   -0.2069879    0.0628617
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0410093   -0.1206482    0.0386296
12 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                -0.0162162   -0.1447174    0.1122850
12 months   ki1114097-CMIN             PERU                           1                    NA                -0.0559641   -0.1353929    0.0234648
12 months   ki1119695-PROBIT           BELARUS                        1                    NA                -0.0027591           NA           NA
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0022956   -0.0297265    0.0343176
12 months   ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0457315   -0.0921132    0.1835762
12 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0334321           NA           NA
12 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                 0.0558166           NA           NA
18 months   ki1000108-IRC              INDIA                          1                    NA                -0.0611111   -0.2145924    0.0923702
18 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.0125270   -0.1487477    0.1236937
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0635315   -0.1677191    0.0406561
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                -0.0743146           NA           NA
18 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                -0.0521662   -0.1767630    0.0724305
18 months   ki1114097-CMIN             PERU                           1                    NA                -0.1057065   -0.1785537   -0.0328593
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0509102   -0.1146857    0.0128652
18 months   ki1148112-LCNI-5           MALAWI                         1                    NA                -0.0198563   -0.1564938    0.1167812
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.0880786   -0.2264399    0.0502827
24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                -0.0744102   -0.2486730    0.0998527
24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                -0.0456633   -0.1932041    0.1018776
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0576247           NA           NA
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                 0.0379461           NA           NA


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.2417770   -0.4151278   -0.0896613
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0784062           NA           NA
3 months    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.2423077   -0.8124161    0.1484691
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0348119   -0.7818718    0.4771857
3 months    ki1119695-PROBIT           BELARUS                        1                    NA                -0.1666301           NA           NA
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0850970   -0.0512328    0.2037467
3 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0371359           NA           NA
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                 0.0222576   -0.6074578    0.4052843
6 months    ki1000108-IRC              INDIA                          1                    NA                -0.2436111   -0.9850568    0.2208946
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.1187500   -0.6726134    0.2517090
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1195100   -0.7726362    0.2929724
6 months    ki1119695-PROBIT           BELARUS                        1                    NA                -0.3251538           NA           NA
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0409597   -0.2014903    0.0981224
6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                 0.2727115   -0.1081699    0.5226828
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0638180           NA           NA
9 months    ki1000108-IRC              INDIA                          1                    NA                -0.4259259   -1.1028874    0.0331081
9 months    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.3148044   -0.7443137    0.0089452
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0037112   -0.5148599    0.3349641
9 months    ki1119695-PROBIT           BELARUS                        1                    NA                -0.2987311           NA           NA
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0514362   -0.1980201    0.0772124
12 months   ki1000108-IRC              INDIA                          1                    NA                -0.4621849   -1.1044774   -0.0159219
12 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.1922988   -0.6130060    0.1186788
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.2477715   -0.8342438    0.1511849
12 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                -0.0810811   -0.9585917    0.4032772
12 months   ki1114097-CMIN             PERU                           1                    NA                -0.2924731   -0.7804881    0.0617816
12 months   ki1119695-PROBIT           BELARUS                        1                    NA                -0.0808495           NA           NA
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0093972   -0.1307574    0.1321799
12 months   ki1148112-LCNI-5           MALAWI                         1                    NA                 0.1159025   -0.3125847    0.4045120
12 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0842583           NA           NA
12 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                 0.1673187           NA           NA
18 months   ki1000108-IRC              INDIA                          1                    NA                -0.1718750   -0.6940254    0.1893327
18 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.0213235   -0.2816453    0.1861229
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.2638172   -0.7794625    0.1024065
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                -0.1884077           NA           NA
18 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                -0.1855346   -0.7228036    0.1841831
18 months   ki1114097-CMIN             PERU                           1                    NA                -0.3356524   -0.5893326   -0.1224632
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.1070307   -0.2496868    0.0193406
18 months   ki1148112-LCNI-5           MALAWI                         1                    NA                -0.0432307   -0.3874859    0.2156098
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.1587635   -0.4378866    0.0661761
24 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                -0.2192513   -0.8580064    0.1999092
24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                -0.1032774   -0.4930707    0.1847532
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.1196820           NA           NA
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                 0.0970769           NA           NA
