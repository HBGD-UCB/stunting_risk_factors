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
Birth       ki0047075b-MAL-ED          BANGLADESH                     1       257     20     16      4
Birth       ki0047075b-MAL-ED          BANGLADESH                     2       257     25     19      6
Birth       ki0047075b-MAL-ED          BANGLADESH                     3       257     25     18      7
Birth       ki0047075b-MAL-ED          BANGLADESH                     4       257     21     21      0
Birth       ki0047075b-MAL-ED          BANGLADESH                     5       257     21     16      5
Birth       ki0047075b-MAL-ED          BANGLADESH                     6       257     11      7      4
Birth       ki0047075b-MAL-ED          BANGLADESH                     7       257     20     15      5
Birth       ki0047075b-MAL-ED          BANGLADESH                     8       257     26     21      5
Birth       ki0047075b-MAL-ED          BANGLADESH                     9       257     21     19      2
Birth       ki0047075b-MAL-ED          BANGLADESH                     10      257     25     20      5
Birth       ki0047075b-MAL-ED          BANGLADESH                     11      257     15     13      2
Birth       ki0047075b-MAL-ED          BANGLADESH                     12      257     27     25      2
Birth       ki0047075b-MAL-ED          BRAZIL                         1       191     11     10      1
Birth       ki0047075b-MAL-ED          BRAZIL                         2       191     19     17      2
Birth       ki0047075b-MAL-ED          BRAZIL                         3       191     18     17      1
Birth       ki0047075b-MAL-ED          BRAZIL                         4       191      9      9      0
Birth       ki0047075b-MAL-ED          BRAZIL                         5       191     18     15      3
Birth       ki0047075b-MAL-ED          BRAZIL                         6       191      8      6      2
Birth       ki0047075b-MAL-ED          BRAZIL                         7       191     16     13      3
Birth       ki0047075b-MAL-ED          BRAZIL                         8       191     18     16      2
Birth       ki0047075b-MAL-ED          BRAZIL                         9       191     29     25      4
Birth       ki0047075b-MAL-ED          BRAZIL                         10      191     17     17      0
Birth       ki0047075b-MAL-ED          BRAZIL                         11      191     18     18      0
Birth       ki0047075b-MAL-ED          BRAZIL                         12      191     10      7      3
Birth       ki0047075b-MAL-ED          INDIA                          1       206     16     15      1
Birth       ki0047075b-MAL-ED          INDIA                          2       206     16     16      0
Birth       ki0047075b-MAL-ED          INDIA                          3       206     21     19      2
Birth       ki0047075b-MAL-ED          INDIA                          4       206     14     12      2
Birth       ki0047075b-MAL-ED          INDIA                          5       206      7      6      1
Birth       ki0047075b-MAL-ED          INDIA                          6       206     18     17      1
Birth       ki0047075b-MAL-ED          INDIA                          7       206     21     16      5
Birth       ki0047075b-MAL-ED          INDIA                          8       206     17     13      4
Birth       ki0047075b-MAL-ED          INDIA                          9       206     19     14      5
Birth       ki0047075b-MAL-ED          INDIA                          10      206     23     18      5
Birth       ki0047075b-MAL-ED          INDIA                          11      206     20     16      4
Birth       ki0047075b-MAL-ED          INDIA                          12      206     14     11      3
Birth       ki0047075b-MAL-ED          NEPAL                          1       173     17     13      4
Birth       ki0047075b-MAL-ED          NEPAL                          2       173     14     12      2
Birth       ki0047075b-MAL-ED          NEPAL                          3       173     12     11      1
Birth       ki0047075b-MAL-ED          NEPAL                          4       173     17     16      1
Birth       ki0047075b-MAL-ED          NEPAL                          5       173     19     18      1
Birth       ki0047075b-MAL-ED          NEPAL                          6       173     10     10      0
Birth       ki0047075b-MAL-ED          NEPAL                          7       173     17     15      2
Birth       ki0047075b-MAL-ED          NEPAL                          8       173     14     12      2
Birth       ki0047075b-MAL-ED          NEPAL                          9       173     11     10      1
Birth       ki0047075b-MAL-ED          NEPAL                          10      173     14     14      0
Birth       ki0047075b-MAL-ED          NEPAL                          11      173     18     15      3
Birth       ki0047075b-MAL-ED          NEPAL                          12      173     10      9      1
Birth       ki0047075b-MAL-ED          PERU                           1       287     39     33      6
Birth       ki0047075b-MAL-ED          PERU                           2       287     21     18      3
Birth       ki0047075b-MAL-ED          PERU                           3       287     23     20      3
Birth       ki0047075b-MAL-ED          PERU                           4       287     21     18      3
Birth       ki0047075b-MAL-ED          PERU                           5       287     27     25      2
Birth       ki0047075b-MAL-ED          PERU                           6       287     16     14      2
Birth       ki0047075b-MAL-ED          PERU                           7       287     23     21      2
Birth       ki0047075b-MAL-ED          PERU                           8       287     19     19      0
Birth       ki0047075b-MAL-ED          PERU                           9       287     22     22      0
Birth       ki0047075b-MAL-ED          PERU                           10      287     25     22      3
Birth       ki0047075b-MAL-ED          PERU                           11      287     31     24      7
Birth       ki0047075b-MAL-ED          PERU                           12      287     20     17      3
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1       262     28     26      2
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   2       262     25     23      2
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   3       262     17     16      1
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   4       262     13     12      1
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   5       262     14     14      0
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   6       262     18     15      3
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   7       262     22     20      2
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   8       262      9      8      1
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   9       262     21     19      2
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   10      262     28     24      4
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   11      262     28     21      7
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   12      262     39     36      3
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1       123     10      9      1
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2       123      8      7      1
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3       123      7      6      1
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4       123      4      3      1
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5       123      9      7      2
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6       123     11     10      1
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7       123     13     12      1
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
Birth       ki1000108-IRC              INDIA                          1       388     35     28      7
Birth       ki1000108-IRC              INDIA                          2       388     26     24      2
Birth       ki1000108-IRC              INDIA                          3       388     26     22      4
Birth       ki1000108-IRC              INDIA                          4       388     21     19      2
Birth       ki1000108-IRC              INDIA                          5       388     22     21      1
Birth       ki1000108-IRC              INDIA                          6       388     34     30      4
Birth       ki1000108-IRC              INDIA                          7       388     35     31      4
Birth       ki1000108-IRC              INDIA                          8       388     38     35      3
Birth       ki1000108-IRC              INDIA                          9       388     25     23      2
Birth       ki1000108-IRC              INDIA                          10      388     38     34      4
Birth       ki1000108-IRC              INDIA                          11      388     39     33      6
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
Birth       ki1000109-ResPak           PAKISTAN                       5         7      2      2      0
Birth       ki1000109-ResPak           PAKISTAN                       6         7      1      1      0
Birth       ki1000109-ResPak           PAKISTAN                       7         7      1      1      0
Birth       ki1000109-ResPak           PAKISTAN                       8         7      0      0      0
Birth       ki1000109-ResPak           PAKISTAN                       9         7      0      0      0
Birth       ki1000109-ResPak           PAKISTAN                       10        7      0      0      0
Birth       ki1000109-ResPak           PAKISTAN                       11        7      0      0      0
Birth       ki1000109-ResPak           PAKISTAN                       12        7      0      0      0
Birth       ki1017093-NIH-Birth        BANGLADESH                     1        28     11     10      1
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
Birth       ki1101329-Keneba           GAMBIA                         1      1541    163    151     12
Birth       ki1101329-Keneba           GAMBIA                         2      1541    147    142      5
Birth       ki1101329-Keneba           GAMBIA                         3      1541    165    161      4
Birth       ki1101329-Keneba           GAMBIA                         4      1541    105    103      2
Birth       ki1101329-Keneba           GAMBIA                         5      1541    108    105      3
Birth       ki1101329-Keneba           GAMBIA                         6      1541     89     85      4
Birth       ki1101329-Keneba           GAMBIA                         7      1541     75     71      4
Birth       ki1101329-Keneba           GAMBIA                         8      1541    125    119      6
Birth       ki1101329-Keneba           GAMBIA                         9      1541    124    116      8
Birth       ki1101329-Keneba           GAMBIA                         10     1541    179    164     15
Birth       ki1101329-Keneba           GAMBIA                         11     1541    124    113     11
Birth       ki1101329-Keneba           GAMBIA                         12     1541    137    129      8
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
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1     13830   1339   1167    172
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2     13830   1049    891    158
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3     13830   1159   1024    135
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       4     13830    989    880    109
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       5     13830   1014    886    128
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       6     13830   1135   1005    130
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       7     13830   1173   1053    120
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       8     13830   1253   1160     93
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       9     13830   1295   1213     82
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       10    13830   1039    956     83
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       11    13830   1179   1069    110
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       12    13830   1206   1094    112
3 months    ki0047075b-MAL-ED          BANGLADESH                     1       250     20     17      3
3 months    ki0047075b-MAL-ED          BANGLADESH                     2       250     22     14      8
3 months    ki0047075b-MAL-ED          BANGLADESH                     3       250     23     17      6
3 months    ki0047075b-MAL-ED          BANGLADESH                     4       250     22     22      0
3 months    ki0047075b-MAL-ED          BANGLADESH                     5       250     21     18      3
3 months    ki0047075b-MAL-ED          BANGLADESH                     6       250     10      8      2
3 months    ki0047075b-MAL-ED          BANGLADESH                     7       250     19     15      4
3 months    ki0047075b-MAL-ED          BANGLADESH                     8       250     25     21      4
3 months    ki0047075b-MAL-ED          BANGLADESH                     9       250     22     19      3
3 months    ki0047075b-MAL-ED          BANGLADESH                     10      250     23     17      6
3 months    ki0047075b-MAL-ED          BANGLADESH                     11      250     15     13      2
3 months    ki0047075b-MAL-ED          BANGLADESH                     12      250     28     26      2
3 months    ki0047075b-MAL-ED          BRAZIL                         1       225     15     14      1
3 months    ki0047075b-MAL-ED          BRAZIL                         2       225     25     24      1
3 months    ki0047075b-MAL-ED          BRAZIL                         3       225     18     18      0
3 months    ki0047075b-MAL-ED          BRAZIL                         4       225     11     10      1
3 months    ki0047075b-MAL-ED          BRAZIL                         5       225     23     22      1
3 months    ki0047075b-MAL-ED          BRAZIL                         6       225      9      9      0
3 months    ki0047075b-MAL-ED          BRAZIL                         7       225     16     14      2
3 months    ki0047075b-MAL-ED          BRAZIL                         8       225     20     18      2
3 months    ki0047075b-MAL-ED          BRAZIL                         9       225     30     27      3
3 months    ki0047075b-MAL-ED          BRAZIL                         10      225     21     19      2
3 months    ki0047075b-MAL-ED          BRAZIL                         11      225     22     21      1
3 months    ki0047075b-MAL-ED          BRAZIL                         12      225     15     15      0
3 months    ki0047075b-MAL-ED          INDIA                          1       241     20     15      5
3 months    ki0047075b-MAL-ED          INDIA                          2       241     19     18      1
3 months    ki0047075b-MAL-ED          INDIA                          3       241     22     20      2
3 months    ki0047075b-MAL-ED          INDIA                          4       241     15     12      3
3 months    ki0047075b-MAL-ED          INDIA                          5       241      8      8      0
3 months    ki0047075b-MAL-ED          INDIA                          6       241     18     18      0
3 months    ki0047075b-MAL-ED          INDIA                          7       241     25     20      5
3 months    ki0047075b-MAL-ED          INDIA                          8       241     23     21      2
3 months    ki0047075b-MAL-ED          INDIA                          9       241     21     16      5
3 months    ki0047075b-MAL-ED          INDIA                          10      241     26     20      6
3 months    ki0047075b-MAL-ED          INDIA                          11      241     25     21      4
3 months    ki0047075b-MAL-ED          INDIA                          12      241     19     16      3
3 months    ki0047075b-MAL-ED          NEPAL                          1       236     20     19      1
3 months    ki0047075b-MAL-ED          NEPAL                          2       236     19     18      1
3 months    ki0047075b-MAL-ED          NEPAL                          3       236     16     15      1
3 months    ki0047075b-MAL-ED          NEPAL                          4       236     22     22      0
3 months    ki0047075b-MAL-ED          NEPAL                          5       236     22     21      1
3 months    ki0047075b-MAL-ED          NEPAL                          6       236     18     18      0
3 months    ki0047075b-MAL-ED          NEPAL                          7       236     17     16      1
3 months    ki0047075b-MAL-ED          NEPAL                          8       236     24     22      2
3 months    ki0047075b-MAL-ED          NEPAL                          9       236     16     14      2
3 months    ki0047075b-MAL-ED          NEPAL                          10      236     21     20      1
3 months    ki0047075b-MAL-ED          NEPAL                          11      236     24     23      1
3 months    ki0047075b-MAL-ED          NEPAL                          12      236     17     15      2
3 months    ki0047075b-MAL-ED          PERU                           1       291     41     32      9
3 months    ki0047075b-MAL-ED          PERU                           2       291     22     14      8
3 months    ki0047075b-MAL-ED          PERU                           3       291     22     18      4
3 months    ki0047075b-MAL-ED          PERU                           4       291     20     17      3
3 months    ki0047075b-MAL-ED          PERU                           5       291     27     16     11
3 months    ki0047075b-MAL-ED          PERU                           6       291     16     10      6
3 months    ki0047075b-MAL-ED          PERU                           7       291     24     17      7
3 months    ki0047075b-MAL-ED          PERU                           8       291     18     15      3
3 months    ki0047075b-MAL-ED          PERU                           9       291     23     21      2
3 months    ki0047075b-MAL-ED          PERU                           10      291     25     21      4
3 months    ki0047075b-MAL-ED          PERU                           11      291     32     20     12
3 months    ki0047075b-MAL-ED          PERU                           12      291     21     17      4
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1       281     39     29     10
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2       281     24     19      5
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3       281     16     14      2
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4       281     13     13      0
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   5       281     15     13      2
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   6       281     19     14      5
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   7       281     26     20      6
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   8       281     10      9      1
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   9       281     23     21      2
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   10      281     29     25      4
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   11      281     28     20      8
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   12      281     39     30      9
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1       254     20     17      3
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2       254     30     28      2
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3       254     18     14      4
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4       254      9      7      2
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5       254     20     16      4
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6       254     19     17      2
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7       254     23     18      5
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8       254     12      9      3
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9       254     22     19      3
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10      254     23     19      4
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11      254     27     23      4
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12      254     31     24      7
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
3 months    ki1000108-IRC              INDIA                          1       407     36     27      9
3 months    ki1000108-IRC              INDIA                          2       407     28     17     11
3 months    ki1000108-IRC              INDIA                          3       407     27     19      8
3 months    ki1000108-IRC              INDIA                          4       407     21     16      5
3 months    ki1000108-IRC              INDIA                          5       407     22     15      7
3 months    ki1000108-IRC              INDIA                          6       407     37     32      5
3 months    ki1000108-IRC              INDIA                          7       407     36     32      4
3 months    ki1000108-IRC              INDIA                          8       407     43     41      2
3 months    ki1000108-IRC              INDIA                          9       407     27     20      7
3 months    ki1000108-IRC              INDIA                          10      407     38     32      6
3 months    ki1000108-IRC              INDIA                          11      407     40     31      9
3 months    ki1000108-IRC              INDIA                          12      407     52     34     18
3 months    ki1000109-EE               PAKISTAN                       1       376     94     31     63
3 months    ki1000109-EE               PAKISTAN                       2       376     66     34     32
3 months    ki1000109-EE               PAKISTAN                       3       376     41     23     18
3 months    ki1000109-EE               PAKISTAN                       4       376     16      5     11
3 months    ki1000109-EE               PAKISTAN                       5       376      0      0      0
3 months    ki1000109-EE               PAKISTAN                       6       376      0      0      0
3 months    ki1000109-EE               PAKISTAN                       7       376      0      0      0
3 months    ki1000109-EE               PAKISTAN                       8       376      0      0      0
3 months    ki1000109-EE               PAKISTAN                       9       376      0      0      0
3 months    ki1000109-EE               PAKISTAN                       10      376      4      2      2
3 months    ki1000109-EE               PAKISTAN                       11      376     70     25     45
3 months    ki1000109-EE               PAKISTAN                       12      376     85     39     46
3 months    ki1000109-ResPak           PAKISTAN                       1       260     10      6      4
3 months    ki1000109-ResPak           PAKISTAN                       2       260     11      9      2
3 months    ki1000109-ResPak           PAKISTAN                       3       260     21     11     10
3 months    ki1000109-ResPak           PAKISTAN                       4       260     25     13     12
3 months    ki1000109-ResPak           PAKISTAN                       5       260     48     28     20
3 months    ki1000109-ResPak           PAKISTAN                       6       260     46     25     21
3 months    ki1000109-ResPak           PAKISTAN                       7       260     33     20     13
3 months    ki1000109-ResPak           PAKISTAN                       8       260     33     20     13
3 months    ki1000109-ResPak           PAKISTAN                       9       260     19     14      5
3 months    ki1000109-ResPak           PAKISTAN                       10      260      6      4      2
3 months    ki1000109-ResPak           PAKISTAN                       11      260      3      1      2
3 months    ki1000109-ResPak           PAKISTAN                       12      260      5      3      2
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          1        97      7      4      3
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          2        97      8      7      1
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          3        97      6      5      1
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          4        97      1      1      0
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          5        97      2      2      0
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          6        97      5      2      3
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          7        97     10      6      4
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          8        97     16      9      7
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          9        97     15     10      5
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          10       97     12      6      6
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          11       97      6      3      3
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          12       97      9      4      5
3 months    ki1017093-NIH-Birth        BANGLADESH                     1       570     60     41     19
3 months    ki1017093-NIH-Birth        BANGLADESH                     2       570     51     43      8
3 months    ki1017093-NIH-Birth        BANGLADESH                     3       570     53     47      6
3 months    ki1017093-NIH-Birth        BANGLADESH                     4       570     46     37      9
3 months    ki1017093-NIH-Birth        BANGLADESH                     5       570     46     39      7
3 months    ki1017093-NIH-Birth        BANGLADESH                     6       570     44     31     13
3 months    ki1017093-NIH-Birth        BANGLADESH                     7       570     38     28     10
3 months    ki1017093-NIH-Birth        BANGLADESH                     8       570     37     27     10
3 months    ki1017093-NIH-Birth        BANGLADESH                     9       570     43     31     12
3 months    ki1017093-NIH-Birth        BANGLADESH                     10      570     46     33     13
3 months    ki1017093-NIH-Birth        BANGLADESH                     11      570     52     38     14
3 months    ki1017093-NIH-Birth        BANGLADESH                     12      570     54     45      9
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1      2292    163    153     10
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2      2292    172    159     13
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3      2292    161    152      9
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4      2292    177    166     11
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5      2292    174    165      9
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6      2292    160    150     10
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7      2292    209    199     10
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8      2292    219    201     18
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9      2292    209    196     13
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10     2292    238    226     12
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11     2292    215    201     14
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12     2292    195    187      8
3 months    ki1101329-Keneba           GAMBIA                         1      2190    228    189     39
3 months    ki1101329-Keneba           GAMBIA                         2      2190    197    176     21
3 months    ki1101329-Keneba           GAMBIA                         3      2190    232    210     22
3 months    ki1101329-Keneba           GAMBIA                         4      2190    153    135     18
3 months    ki1101329-Keneba           GAMBIA                         5      2190    150    130     20
3 months    ki1101329-Keneba           GAMBIA                         6      2190    130    114     16
3 months    ki1101329-Keneba           GAMBIA                         7      2190     98     82     16
3 months    ki1101329-Keneba           GAMBIA                         8      2190    184    158     26
3 months    ki1101329-Keneba           GAMBIA                         9      2190    193    157     36
3 months    ki1101329-Keneba           GAMBIA                         10     2190    252    208     44
3 months    ki1101329-Keneba           GAMBIA                         11     2190    176    152     24
3 months    ki1101329-Keneba           GAMBIA                         12     2190    197    163     34
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
3 months    ki1112895-Guatemala BSC    GUATEMALA                      11       23      8      5      3
3 months    ki1112895-Guatemala BSC    GUATEMALA                      12       23      4      4      0
3 months    ki1113344-GMS-Nepal        NEPAL                          1       571      0      0      0
3 months    ki1113344-GMS-Nepal        NEPAL                          2       571      0      0      0
3 months    ki1113344-GMS-Nepal        NEPAL                          3       571      0      0      0
3 months    ki1113344-GMS-Nepal        NEPAL                          4       571      1      0      1
3 months    ki1113344-GMS-Nepal        NEPAL                          5       571      0      0      0
3 months    ki1113344-GMS-Nepal        NEPAL                          6       571    120    104     16
3 months    ki1113344-GMS-Nepal        NEPAL                          7       571    221    182     39
3 months    ki1113344-GMS-Nepal        NEPAL                          8       571    229    201     28
3 months    ki1113344-GMS-Nepal        NEPAL                          9       571      0      0      0
3 months    ki1113344-GMS-Nepal        NEPAL                          10      571      0      0      0
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
3 months    ki1114097-CMIN             GUINEA-BISSAU                  1       507     64     55      9
3 months    ki1114097-CMIN             GUINEA-BISSAU                  2       507     49     37     12
3 months    ki1114097-CMIN             GUINEA-BISSAU                  3       507     46     40      6
3 months    ki1114097-CMIN             GUINEA-BISSAU                  4       507     21     20      1
3 months    ki1114097-CMIN             GUINEA-BISSAU                  5       507     28     27      1
3 months    ki1114097-CMIN             GUINEA-BISSAU                  6       507     34     32      2
3 months    ki1114097-CMIN             GUINEA-BISSAU                  7       507     39     35      4
3 months    ki1114097-CMIN             GUINEA-BISSAU                  8       507     33     31      2
3 months    ki1114097-CMIN             GUINEA-BISSAU                  9       507     53     45      8
3 months    ki1114097-CMIN             GUINEA-BISSAU                  10      507     34     31      3
3 months    ki1114097-CMIN             GUINEA-BISSAU                  11      507     39     36      3
3 months    ki1114097-CMIN             GUINEA-BISSAU                  12      507     67     58      9
3 months    ki1114097-CMIN             PERU                           1       630     43     43      0
3 months    ki1114097-CMIN             PERU                           2       630     59     54      5
3 months    ki1114097-CMIN             PERU                           3       630     67     64      3
3 months    ki1114097-CMIN             PERU                           4       630     59     52      7
3 months    ki1114097-CMIN             PERU                           5       630     58     56      2
3 months    ki1114097-CMIN             PERU                           6       630     57     53      4
3 months    ki1114097-CMIN             PERU                           7       630     52     47      5
3 months    ki1114097-CMIN             PERU                           8       630     61     58      3
3 months    ki1114097-CMIN             PERU                           9       630     40     37      3
3 months    ki1114097-CMIN             PERU                           10      630     48     45      3
3 months    ki1114097-CMIN             PERU                           11      630     38     36      2
3 months    ki1114097-CMIN             PERU                           12      630     48     46      2
3 months    ki1114097-CONTENT          PERU                           1       215     10     10      0
3 months    ki1114097-CONTENT          PERU                           2       215     18     17      1
3 months    ki1114097-CONTENT          PERU                           3       215     30     27      3
3 months    ki1114097-CONTENT          PERU                           4       215     19     17      2
3 months    ki1114097-CONTENT          PERU                           5       215     14     11      3
3 months    ki1114097-CONTENT          PERU                           6       215     13     12      1
3 months    ki1114097-CONTENT          PERU                           7       215     28     26      2
3 months    ki1114097-CONTENT          PERU                           8       215     23     20      3
3 months    ki1114097-CONTENT          PERU                           9       215     26     23      3
3 months    ki1114097-CONTENT          PERU                           10      215     14     13      1
3 months    ki1114097-CONTENT          PERU                           11      215      9      8      1
3 months    ki1114097-CONTENT          PERU                           12      215     11     11      0
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       1      9193    917    765    152
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       2      9193    672    561    111
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       3      9193    821    678    143
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       4      9193    665    540    125
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       5      9193    692    548    144
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       6      9193    802    591    211
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       7      9193    782    625    157
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       8      9193    849    704    145
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       9      9193    799    678    121
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       10     9193    624    518    106
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       11     9193    735    614    121
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       12     9193    835    734    101
6 months    ki0047075b-MAL-ED          BANGLADESH                     1       241     18     14      4
6 months    ki0047075b-MAL-ED          BANGLADESH                     2       241     20     14      6
6 months    ki0047075b-MAL-ED          BANGLADESH                     3       241     23     19      4
6 months    ki0047075b-MAL-ED          BANGLADESH                     4       241     22     21      1
6 months    ki0047075b-MAL-ED          BANGLADESH                     5       241     21     17      4
6 months    ki0047075b-MAL-ED          BANGLADESH                     6       241     10      8      2
6 months    ki0047075b-MAL-ED          BANGLADESH                     7       241     18     11      7
6 months    ki0047075b-MAL-ED          BANGLADESH                     8       241     23     17      6
6 months    ki0047075b-MAL-ED          BANGLADESH                     9       241     22     20      2
6 months    ki0047075b-MAL-ED          BANGLADESH                     10      241     22     16      6
6 months    ki0047075b-MAL-ED          BANGLADESH                     11      241     16     15      1
6 months    ki0047075b-MAL-ED          BANGLADESH                     12      241     26     24      2
6 months    ki0047075b-MAL-ED          BRAZIL                         1       209     15     14      1
6 months    ki0047075b-MAL-ED          BRAZIL                         2       209     23     22      1
6 months    ki0047075b-MAL-ED          BRAZIL                         3       209     16     16      0
6 months    ki0047075b-MAL-ED          BRAZIL                         4       209     11     11      0
6 months    ki0047075b-MAL-ED          BRAZIL                         5       209     21     20      1
6 months    ki0047075b-MAL-ED          BRAZIL                         6       209      8      8      0
6 months    ki0047075b-MAL-ED          BRAZIL                         7       209     16     15      1
6 months    ki0047075b-MAL-ED          BRAZIL                         8       209     16     16      0
6 months    ki0047075b-MAL-ED          BRAZIL                         9       209     30     29      1
6 months    ki0047075b-MAL-ED          BRAZIL                         10      209     20     20      0
6 months    ki0047075b-MAL-ED          BRAZIL                         11      209     21     20      1
6 months    ki0047075b-MAL-ED          BRAZIL                         12      209     12     12      0
6 months    ki0047075b-MAL-ED          INDIA                          1       236     19     15      4
6 months    ki0047075b-MAL-ED          INDIA                          2       236     18     17      1
6 months    ki0047075b-MAL-ED          INDIA                          3       236     22     18      4
6 months    ki0047075b-MAL-ED          INDIA                          4       236     15      9      6
6 months    ki0047075b-MAL-ED          INDIA                          5       236      8      7      1
6 months    ki0047075b-MAL-ED          INDIA                          6       236     19     17      2
6 months    ki0047075b-MAL-ED          INDIA                          7       236     23     17      6
6 months    ki0047075b-MAL-ED          INDIA                          8       236     22     19      3
6 months    ki0047075b-MAL-ED          INDIA                          9       236     20     17      3
6 months    ki0047075b-MAL-ED          INDIA                          10      236     26     19      7
6 months    ki0047075b-MAL-ED          INDIA                          11      236     25     19      6
6 months    ki0047075b-MAL-ED          INDIA                          12      236     19     16      3
6 months    ki0047075b-MAL-ED          NEPAL                          1       236     20     19      1
6 months    ki0047075b-MAL-ED          NEPAL                          2       236     19     16      3
6 months    ki0047075b-MAL-ED          NEPAL                          3       236     17     15      2
6 months    ki0047075b-MAL-ED          NEPAL                          4       236     22     21      1
6 months    ki0047075b-MAL-ED          NEPAL                          5       236     20     19      1
6 months    ki0047075b-MAL-ED          NEPAL                          6       236     18     18      0
6 months    ki0047075b-MAL-ED          NEPAL                          7       236     18     17      1
6 months    ki0047075b-MAL-ED          NEPAL                          8       236     24     24      0
6 months    ki0047075b-MAL-ED          NEPAL                          9       236     16     14      2
6 months    ki0047075b-MAL-ED          NEPAL                          10      236     21     21      0
6 months    ki0047075b-MAL-ED          NEPAL                          11      236     24     23      1
6 months    ki0047075b-MAL-ED          NEPAL                          12      236     17     17      0
6 months    ki0047075b-MAL-ED          PERU                           1       273     38     28     10
6 months    ki0047075b-MAL-ED          PERU                           2       273     19     15      4
6 months    ki0047075b-MAL-ED          PERU                           3       273     22     15      7
6 months    ki0047075b-MAL-ED          PERU                           4       273     20     16      4
6 months    ki0047075b-MAL-ED          PERU                           5       273     27     24      3
6 months    ki0047075b-MAL-ED          PERU                           6       273     15     12      3
6 months    ki0047075b-MAL-ED          PERU                           7       273     22     19      3
6 months    ki0047075b-MAL-ED          PERU                           8       273     16     13      3
6 months    ki0047075b-MAL-ED          PERU                           9       273     23     18      5
6 months    ki0047075b-MAL-ED          PERU                           10      273     20     16      4
6 months    ki0047075b-MAL-ED          PERU                           11      273     32     22     10
6 months    ki0047075b-MAL-ED          PERU                           12      273     19     15      4
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1       254     38     29      9
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2       254     23     21      2
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3       254     15     13      2
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4       254     13     12      1
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   5       254     13     11      2
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   6       254     18     18      0
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   7       254     22     16      6
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   8       254      9      7      2
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   9       254     18     16      2
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   10      254     26     22      4
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   11      254     24     15      9
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   12      254     35     24     11
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1       247     20     17      3
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2       247     30     23      7
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3       247     18     12      6
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4       247      9      5      4
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5       247     16     13      3
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6       247     19     19      0
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7       247     23     17      6
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8       247     12     10      2
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9       247     21     17      4
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10      247     22     16      6
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11      247     27     20      7
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12      247     30     20     10
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
6 months    ki1000108-IRC              INDIA                          1       407     38     27     11
6 months    ki1000108-IRC              INDIA                          2       407     28     15     13
6 months    ki1000108-IRC              INDIA                          3       407     27     19      8
6 months    ki1000108-IRC              INDIA                          4       407     21     15      6
6 months    ki1000108-IRC              INDIA                          5       407     21     14      7
6 months    ki1000108-IRC              INDIA                          6       407     37     32      5
6 months    ki1000108-IRC              INDIA                          7       407     36     25     11
6 months    ki1000108-IRC              INDIA                          8       407     44     38      6
6 months    ki1000108-IRC              INDIA                          9       407     27     20      7
6 months    ki1000108-IRC              INDIA                          10      407     37     32      5
6 months    ki1000108-IRC              INDIA                          11      407     40     33      7
6 months    ki1000108-IRC              INDIA                          12      407     51     37     14
6 months    ki1000109-EE               PAKISTAN                       1       372     90     39     51
6 months    ki1000109-EE               PAKISTAN                       2       372     67     36     31
6 months    ki1000109-EE               PAKISTAN                       3       372     42     24     18
6 months    ki1000109-EE               PAKISTAN                       4       372     16      5     11
6 months    ki1000109-EE               PAKISTAN                       5       372      0      0      0
6 months    ki1000109-EE               PAKISTAN                       6       372      0      0      0
6 months    ki1000109-EE               PAKISTAN                       7       372      0      0      0
6 months    ki1000109-EE               PAKISTAN                       8       372      0      0      0
6 months    ki1000109-EE               PAKISTAN                       9       372      0      0      0
6 months    ki1000109-EE               PAKISTAN                       10      372      4      3      1
6 months    ki1000109-EE               PAKISTAN                       11      372     70     28     42
6 months    ki1000109-EE               PAKISTAN                       12      372     83     44     39
6 months    ki1000109-ResPak           PAKISTAN                       1       235      9      4      5
6 months    ki1000109-ResPak           PAKISTAN                       2       235     11      9      2
6 months    ki1000109-ResPak           PAKISTAN                       3       235     20      8     12
6 months    ki1000109-ResPak           PAKISTAN                       4       235     21     13      8
6 months    ki1000109-ResPak           PAKISTAN                       5       235     45     30     15
6 months    ki1000109-ResPak           PAKISTAN                       6       235     42     27     15
6 months    ki1000109-ResPak           PAKISTAN                       7       235     26     16     10
6 months    ki1000109-ResPak           PAKISTAN                       8       235     31     23      8
6 months    ki1000109-ResPak           PAKISTAN                       9       235     20     15      5
6 months    ki1000109-ResPak           PAKISTAN                       10      235      4      4      0
6 months    ki1000109-ResPak           PAKISTAN                       11      235      1      1      0
6 months    ki1000109-ResPak           PAKISTAN                       12      235      5      2      3
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1        96      6      1      5
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2        96      9      4      5
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3        96      6      2      4
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          4        96      1      0      1
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          5        96      3      2      1
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          6        96      5      1      4
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          7        96      9      6      3
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          8        96     14      8      6
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          9        96     17     10      7
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          10       96     12      8      4
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          11       96      5      3      2
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          12       96      9      3      6
6 months    ki1017093-NIH-Birth        BANGLADESH                     1       537     52     37     15
6 months    ki1017093-NIH-Birth        BANGLADESH                     2       537     49     35     14
6 months    ki1017093-NIH-Birth        BANGLADESH                     3       537     50     38     12
6 months    ki1017093-NIH-Birth        BANGLADESH                     4       537     42     32     10
6 months    ki1017093-NIH-Birth        BANGLADESH                     5       537     42     33      9
6 months    ki1017093-NIH-Birth        BANGLADESH                     6       537     43     27     16
6 months    ki1017093-NIH-Birth        BANGLADESH                     7       537     39     28     11
6 months    ki1017093-NIH-Birth        BANGLADESH                     8       537     35     28      7
6 months    ki1017093-NIH-Birth        BANGLADESH                     9       537     42     29     13
6 months    ki1017093-NIH-Birth        BANGLADESH                     10      537     42     32     10
6 months    ki1017093-NIH-Birth        BANGLADESH                     11      537     50     33     17
6 months    ki1017093-NIH-Birth        BANGLADESH                     12      537     51     41     10
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1      2029    142    126     16
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2      2029    149    137     12
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3      2029    140    128     12
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4      2029    153    139     14
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5      2029    149    130     19
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6      2029    143    126     17
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7      2029    195    175     20
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8      2029    199    171     28
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9      2029    184    170     14
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10     2029    208    184     24
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11     2029    195    182     13
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12     2029    172    164      8
6 months    ki1101329-Keneba           GAMBIA                         1      2089    210    183     27
6 months    ki1101329-Keneba           GAMBIA                         2      2089    187    166     21
6 months    ki1101329-Keneba           GAMBIA                         3      2089    221    190     31
6 months    ki1101329-Keneba           GAMBIA                         4      2089    143    128     15
6 months    ki1101329-Keneba           GAMBIA                         5      2089    143    123     20
6 months    ki1101329-Keneba           GAMBIA                         6      2089    118     96     22
6 months    ki1101329-Keneba           GAMBIA                         7      2089     92     73     19
6 months    ki1101329-Keneba           GAMBIA                         8      2089    174    149     25
6 months    ki1101329-Keneba           GAMBIA                         9      2089    174    146     28
6 months    ki1101329-Keneba           GAMBIA                         10     2089    248    208     40
6 months    ki1101329-Keneba           GAMBIA                         11     2089    187    163     24
6 months    ki1101329-Keneba           GAMBIA                         12     2089    192    169     23
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1       299     28     16     12
6 months    ki1112895-Guatemala BSC    GUATEMALA                      2       299     25     23      2
6 months    ki1112895-Guatemala BSC    GUATEMALA                      3       299     27     17     10
6 months    ki1112895-Guatemala BSC    GUATEMALA                      4       299     31     21     10
6 months    ki1112895-Guatemala BSC    GUATEMALA                      5       299     31     21     10
6 months    ki1112895-Guatemala BSC    GUATEMALA                      6       299     22     12     10
6 months    ki1112895-Guatemala BSC    GUATEMALA                      7       299     21     15      6
6 months    ki1112895-Guatemala BSC    GUATEMALA                      8       299     14     12      2
6 months    ki1112895-Guatemala BSC    GUATEMALA                      9       299     16     11      5
6 months    ki1112895-Guatemala BSC    GUATEMALA                      10      299     29     25      4
6 months    ki1112895-Guatemala BSC    GUATEMALA                      11      299     24     16      8
6 months    ki1112895-Guatemala BSC    GUATEMALA                      12      299     31     20     11
6 months    ki1113344-GMS-Nepal        NEPAL                          1       563      0      0      0
6 months    ki1113344-GMS-Nepal        NEPAL                          2       563      0      0      0
6 months    ki1113344-GMS-Nepal        NEPAL                          3       563      0      0      0
6 months    ki1113344-GMS-Nepal        NEPAL                          4       563      1      0      1
6 months    ki1113344-GMS-Nepal        NEPAL                          5       563      0      0      0
6 months    ki1113344-GMS-Nepal        NEPAL                          6       563    121     94     27
6 months    ki1113344-GMS-Nepal        NEPAL                          7       563    218    168     50
6 months    ki1113344-GMS-Nepal        NEPAL                          8       563    223    182     41
6 months    ki1113344-GMS-Nepal        NEPAL                          9       563      0      0      0
6 months    ki1113344-GMS-Nepal        NEPAL                          10      563      0      0      0
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
6 months    ki1114097-CMIN             GUINEA-BISSAU                  1       848    102     85     17
6 months    ki1114097-CMIN             GUINEA-BISSAU                  2       848     57     54      3
6 months    ki1114097-CMIN             GUINEA-BISSAU                  3       848     68     58     10
6 months    ki1114097-CMIN             GUINEA-BISSAU                  4       848     46     45      1
6 months    ki1114097-CMIN             GUINEA-BISSAU                  5       848     56     52      4
6 months    ki1114097-CMIN             GUINEA-BISSAU                  6       848     38     38      0
6 months    ki1114097-CMIN             GUINEA-BISSAU                  7       848     38     35      3
6 months    ki1114097-CMIN             GUINEA-BISSAU                  8       848     55     50      5
6 months    ki1114097-CMIN             GUINEA-BISSAU                  9       848    116    102     14
6 months    ki1114097-CMIN             GUINEA-BISSAU                  10      848    100     95      5
6 months    ki1114097-CMIN             GUINEA-BISSAU                  11      848     74     70      4
6 months    ki1114097-CMIN             GUINEA-BISSAU                  12      848     98     88     10
6 months    ki1114097-CMIN             PERU                           1       637     42     41      1
6 months    ki1114097-CMIN             PERU                           2       637     60     52      8
6 months    ki1114097-CMIN             PERU                           3       637     67     66      1
6 months    ki1114097-CMIN             PERU                           4       637     61     54      7
6 months    ki1114097-CMIN             PERU                           5       637     54     52      2
6 months    ki1114097-CMIN             PERU                           6       637     54     49      5
6 months    ki1114097-CMIN             PERU                           7       637     52     51      1
6 months    ki1114097-CMIN             PERU                           8       637     73     70      3
6 months    ki1114097-CMIN             PERU                           9       637     50     45      5
6 months    ki1114097-CMIN             PERU                           10      637     50     45      5
6 months    ki1114097-CMIN             PERU                           11      637     34     31      3
6 months    ki1114097-CMIN             PERU                           12      637     40     38      2
6 months    ki1114097-CONTENT          PERU                           1       215     10     10      0
6 months    ki1114097-CONTENT          PERU                           2       215     18     16      2
6 months    ki1114097-CONTENT          PERU                           3       215     30     27      3
6 months    ki1114097-CONTENT          PERU                           4       215     19     15      4
6 months    ki1114097-CONTENT          PERU                           5       215     14     12      2
6 months    ki1114097-CONTENT          PERU                           6       215     13     11      2
6 months    ki1114097-CONTENT          PERU                           7       215     28     27      1
6 months    ki1114097-CONTENT          PERU                           8       215     23     21      2
6 months    ki1114097-CONTENT          PERU                           9       215     26     24      2
6 months    ki1114097-CONTENT          PERU                           10      215     14     14      0
6 months    ki1114097-CONTENT          PERU                           11      215      9      8      1
6 months    ki1114097-CONTENT          PERU                           12      215     11     11      0
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1      8295    794    653    141
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2      8295    587    485    102
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3      8295    737    579    158
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       4      8295    636    522    114
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       5      8295    608    505    103
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       6      8295    645    540    105
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       7      8295    638    518    120
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       8      8295    746    641    105
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       9      8295    749    652     97
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       10     8295    600    500    100
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       11     8295    765    644    121
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       12     8295    790    677    113
6 months    ki1148112-LCNI-5           MALAWI                         1       839     68     38     30
6 months    ki1148112-LCNI-5           MALAWI                         2       839     46     33     13
6 months    ki1148112-LCNI-5           MALAWI                         3       839     26     15     11
6 months    ki1148112-LCNI-5           MALAWI                         4       839     39     23     16
6 months    ki1148112-LCNI-5           MALAWI                         5       839     44     28     16
6 months    ki1148112-LCNI-5           MALAWI                         6       839     34     19     15
6 months    ki1148112-LCNI-5           MALAWI                         7       839     61     41     20
6 months    ki1148112-LCNI-5           MALAWI                         8       839     93     66     27
6 months    ki1148112-LCNI-5           MALAWI                         9       839     93     59     34
6 months    ki1148112-LCNI-5           MALAWI                         10      839    135     74     61
6 months    ki1148112-LCNI-5           MALAWI                         11      839    105     70     35
6 months    ki1148112-LCNI-5           MALAWI                         12      839     95     64     31
9 months    ki0047075b-MAL-ED          BANGLADESH                     1       234     18     15      3
9 months    ki0047075b-MAL-ED          BANGLADESH                     2       234     19     11      8
9 months    ki0047075b-MAL-ED          BANGLADESH                     3       234     21     14      7
9 months    ki0047075b-MAL-ED          BANGLADESH                     4       234     20     18      2
9 months    ki0047075b-MAL-ED          BANGLADESH                     5       234     21     15      6
9 months    ki0047075b-MAL-ED          BANGLADESH                     6       234      9      7      2
9 months    ki0047075b-MAL-ED          BANGLADESH                     7       234     18     11      7
9 months    ki0047075b-MAL-ED          BANGLADESH                     8       234     23     16      7
9 months    ki0047075b-MAL-ED          BANGLADESH                     9       234     20     19      1
9 months    ki0047075b-MAL-ED          BANGLADESH                     10      234     22     14      8
9 months    ki0047075b-MAL-ED          BANGLADESH                     11      234     15     11      4
9 months    ki0047075b-MAL-ED          BANGLADESH                     12      234     28     25      3
9 months    ki0047075b-MAL-ED          BRAZIL                         1       199     15     15      0
9 months    ki0047075b-MAL-ED          BRAZIL                         2       199     21     20      1
9 months    ki0047075b-MAL-ED          BRAZIL                         3       199     16     16      0
9 months    ki0047075b-MAL-ED          BRAZIL                         4       199     10     10      0
9 months    ki0047075b-MAL-ED          BRAZIL                         5       199     20     19      1
9 months    ki0047075b-MAL-ED          BRAZIL                         6       199      7      7      0
9 months    ki0047075b-MAL-ED          BRAZIL                         7       199     16     16      0
9 months    ki0047075b-MAL-ED          BRAZIL                         8       199     14     14      0
9 months    ki0047075b-MAL-ED          BRAZIL                         9       199     30     29      1
9 months    ki0047075b-MAL-ED          BRAZIL                         10      199     18     18      0
9 months    ki0047075b-MAL-ED          BRAZIL                         11      199     21     20      1
9 months    ki0047075b-MAL-ED          BRAZIL                         12      199     11     11      0
9 months    ki0047075b-MAL-ED          INDIA                          1       232     19     14      5
9 months    ki0047075b-MAL-ED          INDIA                          2       232     18     16      2
9 months    ki0047075b-MAL-ED          INDIA                          3       232     21     18      3
9 months    ki0047075b-MAL-ED          INDIA                          4       232     14      9      5
9 months    ki0047075b-MAL-ED          INDIA                          5       232      8      6      2
9 months    ki0047075b-MAL-ED          INDIA                          6       232     19     16      3
9 months    ki0047075b-MAL-ED          INDIA                          7       232     23     14      9
9 months    ki0047075b-MAL-ED          INDIA                          8       232     22     18      4
9 months    ki0047075b-MAL-ED          INDIA                          9       232     19     15      4
9 months    ki0047075b-MAL-ED          INDIA                          10      232     26     20      6
9 months    ki0047075b-MAL-ED          INDIA                          11      232     24     17      7
9 months    ki0047075b-MAL-ED          INDIA                          12      232     19     16      3
9 months    ki0047075b-MAL-ED          NEPAL                          1       231     20     18      2
9 months    ki0047075b-MAL-ED          NEPAL                          2       231     17     14      3
9 months    ki0047075b-MAL-ED          NEPAL                          3       231     17     14      3
9 months    ki0047075b-MAL-ED          NEPAL                          4       231     22     20      2
9 months    ki0047075b-MAL-ED          NEPAL                          5       231     19     17      2
9 months    ki0047075b-MAL-ED          NEPAL                          6       231     18     17      1
9 months    ki0047075b-MAL-ED          NEPAL                          7       231     18     17      1
9 months    ki0047075b-MAL-ED          NEPAL                          8       231     24     24      0
9 months    ki0047075b-MAL-ED          NEPAL                          9       231     15     14      1
9 months    ki0047075b-MAL-ED          NEPAL                          10      231     20     20      0
9 months    ki0047075b-MAL-ED          NEPAL                          11      231     24     23      1
9 months    ki0047075b-MAL-ED          NEPAL                          12      231     17     15      2
9 months    ki0047075b-MAL-ED          PERU                           1       256     36     23     13
9 months    ki0047075b-MAL-ED          PERU                           2       256     19     15      4
9 months    ki0047075b-MAL-ED          PERU                           3       256     21     17      4
9 months    ki0047075b-MAL-ED          PERU                           4       256     19     16      3
9 months    ki0047075b-MAL-ED          PERU                           5       256     23     18      5
9 months    ki0047075b-MAL-ED          PERU                           6       256     15      9      6
9 months    ki0047075b-MAL-ED          PERU                           7       256     20     13      7
9 months    ki0047075b-MAL-ED          PERU                           8       256     14     10      4
9 months    ki0047075b-MAL-ED          PERU                           9       256     23     22      1
9 months    ki0047075b-MAL-ED          PERU                           10      256     17     15      2
9 months    ki0047075b-MAL-ED          PERU                           11      256     30     20     10
9 months    ki0047075b-MAL-ED          PERU                           12      256     19     15      4
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1       250     37     27     10
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2       250     23     17      6
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3       250     15     13      2
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4       250     12     11      1
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   5       250     12     10      2
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   6       250     16     14      2
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   7       250     22     17      5
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   8       250      9      8      1
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   9       250     19     18      1
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   10      250     26     20      6
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   11      250     25     17      8
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   12      250     34     25      9
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1       238     16     12      4
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2       238     29     16     13
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3       238     18     10      8
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4       238      9      4      5
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5       238     19     15      4
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6       238     19     15      4
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7       238     21     13      8
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8       238     12      8      4
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9       238     20     13      7
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10      238     21     11     10
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11      238     26     15     11
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12      238     28     16     12
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
9 months    ki1000108-IRC              INDIA                          1       407     38     24     14
9 months    ki1000108-IRC              INDIA                          2       407     28     17     11
9 months    ki1000108-IRC              INDIA                          3       407     27     22      5
9 months    ki1000108-IRC              INDIA                          4       407     21     11     10
9 months    ki1000108-IRC              INDIA                          5       407     21     11     10
9 months    ki1000108-IRC              INDIA                          6       407     37     32      5
9 months    ki1000108-IRC              INDIA                          7       407     36     27      9
9 months    ki1000108-IRC              INDIA                          8       407     44     36      8
9 months    ki1000108-IRC              INDIA                          9       407     27     19      8
9 months    ki1000108-IRC              INDIA                          10      407     37     31      6
9 months    ki1000108-IRC              INDIA                          11      407     40     31      9
9 months    ki1000108-IRC              INDIA                          12      407     51     35     16
9 months    ki1000109-EE               PAKISTAN                       1       366     90     35     55
9 months    ki1000109-EE               PAKISTAN                       2       366     66     24     42
9 months    ki1000109-EE               PAKISTAN                       3       366     41     17     24
9 months    ki1000109-EE               PAKISTAN                       4       366     16      4     12
9 months    ki1000109-EE               PAKISTAN                       5       366      0      0      0
9 months    ki1000109-EE               PAKISTAN                       6       366      0      0      0
9 months    ki1000109-EE               PAKISTAN                       7       366      0      0      0
9 months    ki1000109-EE               PAKISTAN                       8       366      0      0      0
9 months    ki1000109-EE               PAKISTAN                       9       366      0      0      0
9 months    ki1000109-EE               PAKISTAN                       10      366      4      2      2
9 months    ki1000109-EE               PAKISTAN                       11      366     68     30     38
9 months    ki1000109-EE               PAKISTAN                       12      366     81     37     44
9 months    ki1000109-ResPak           PAKISTAN                       1       211      9      3      6
9 months    ki1000109-ResPak           PAKISTAN                       2       211      9      7      2
9 months    ki1000109-ResPak           PAKISTAN                       3       211     15      9      6
9 months    ki1000109-ResPak           PAKISTAN                       4       211     16     13      3
9 months    ki1000109-ResPak           PAKISTAN                       5       211     45     31     14
9 months    ki1000109-ResPak           PAKISTAN                       6       211     37     24     13
9 months    ki1000109-ResPak           PAKISTAN                       7       211     20     14      6
9 months    ki1000109-ResPak           PAKISTAN                       8       211     30     20     10
9 months    ki1000109-ResPak           PAKISTAN                       9       211     19     13      6
9 months    ki1000109-ResPak           PAKISTAN                       10      211      5      3      2
9 months    ki1000109-ResPak           PAKISTAN                       11      211      1      1      0
9 months    ki1000109-ResPak           PAKISTAN                       12      211      5      3      2
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          1        85      6      0      6
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          2        85      7      4      3
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          3        85      6      2      4
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          4        85      1      0      1
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          5        85      3      0      3
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          6        85      4      1      3
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          7        85      8      3      5
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          8        85     13      4      9
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          9        85     15      8      7
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          10       85      8      1      7
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          11       85      4      2      2
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          12       85     10      3      7
9 months    ki1017093-NIH-Birth        BANGLADESH                     1       507     51     28     23
9 months    ki1017093-NIH-Birth        BANGLADESH                     2       507     43     28     15
9 months    ki1017093-NIH-Birth        BANGLADESH                     3       507     46     31     15
9 months    ki1017093-NIH-Birth        BANGLADESH                     4       507     40     30     10
9 months    ki1017093-NIH-Birth        BANGLADESH                     5       507     41     28     13
9 months    ki1017093-NIH-Birth        BANGLADESH                     6       507     44     29     15
9 months    ki1017093-NIH-Birth        BANGLADESH                     7       507     39     26     13
9 months    ki1017093-NIH-Birth        BANGLADESH                     8       507     28     16     12
9 months    ki1017093-NIH-Birth        BANGLADESH                     9       507     35     22     13
9 months    ki1017093-NIH-Birth        BANGLADESH                     10      507     41     26     15
9 months    ki1017093-NIH-Birth        BANGLADESH                     11      507     48     28     20
9 months    ki1017093-NIH-Birth        BANGLADESH                     12      507     51     34     17
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1      1788    123    104     19
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2      1788    137    122     15
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3      1788    122    102     20
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4      1788    130     98     32
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5      1788    130    104     26
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6      1788    124    106     18
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7      1788    177    146     31
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8      1788    181    154     27
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9      1788    163    148     15
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10     1788    189    163     26
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11     1788    169    149     20
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12     1788    143    127     16
9 months    ki1101329-Keneba           GAMBIA                         1      2067    212    172     40
9 months    ki1101329-Keneba           GAMBIA                         2      2067    187    159     28
9 months    ki1101329-Keneba           GAMBIA                         3      2067    216    183     33
9 months    ki1101329-Keneba           GAMBIA                         4      2067    135    110     25
9 months    ki1101329-Keneba           GAMBIA                         5      2067    138    114     24
9 months    ki1101329-Keneba           GAMBIA                         6      2067    105     82     23
9 months    ki1101329-Keneba           GAMBIA                         7      2067     98     73     25
9 months    ki1101329-Keneba           GAMBIA                         8      2067    184    160     24
9 months    ki1101329-Keneba           GAMBIA                         9      2067    176    150     26
9 months    ki1101329-Keneba           GAMBIA                         10     2067    241    193     48
9 months    ki1101329-Keneba           GAMBIA                         11     2067    187    151     36
9 months    ki1101329-Keneba           GAMBIA                         12     2067    188    148     40
9 months    ki1112895-Guatemala BSC    GUATEMALA                      1       238     23     13     10
9 months    ki1112895-Guatemala BSC    GUATEMALA                      2       238     23     17      6
9 months    ki1112895-Guatemala BSC    GUATEMALA                      3       238     25     16      9
9 months    ki1112895-Guatemala BSC    GUATEMALA                      4       238     26     18      8
9 months    ki1112895-Guatemala BSC    GUATEMALA                      5       238     22     14      8
9 months    ki1112895-Guatemala BSC    GUATEMALA                      6       238     17      8      9
9 months    ki1112895-Guatemala BSC    GUATEMALA                      7       238     13      6      7
9 months    ki1112895-Guatemala BSC    GUATEMALA                      8       238      9      5      4
9 months    ki1112895-Guatemala BSC    GUATEMALA                      9       238     12      7      5
9 months    ki1112895-Guatemala BSC    GUATEMALA                      10      238     25     17      8
9 months    ki1112895-Guatemala BSC    GUATEMALA                      11      238     19     10      9
9 months    ki1112895-Guatemala BSC    GUATEMALA                      12      238     24     11     13
9 months    ki1113344-GMS-Nepal        NEPAL                          1       551      0      0      0
9 months    ki1113344-GMS-Nepal        NEPAL                          2       551      0      0      0
9 months    ki1113344-GMS-Nepal        NEPAL                          3       551      0      0      0
9 months    ki1113344-GMS-Nepal        NEPAL                          4       551      1      0      1
9 months    ki1113344-GMS-Nepal        NEPAL                          5       551      0      0      0
9 months    ki1113344-GMS-Nepal        NEPAL                          6       551    118     80     38
9 months    ki1113344-GMS-Nepal        NEPAL                          7       551    215    155     60
9 months    ki1113344-GMS-Nepal        NEPAL                          8       551    217    161     56
9 months    ki1113344-GMS-Nepal        NEPAL                          9       551      0      0      0
9 months    ki1113344-GMS-Nepal        NEPAL                          10      551      0      0      0
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
9 months    ki1114097-CMIN             GUINEA-BISSAU                  1       866    101     82     19
9 months    ki1114097-CMIN             GUINEA-BISSAU                  2       866     59     47     12
9 months    ki1114097-CMIN             GUINEA-BISSAU                  3       866     59     53      6
9 months    ki1114097-CMIN             GUINEA-BISSAU                  4       866     45     38      7
9 months    ki1114097-CMIN             GUINEA-BISSAU                  5       866     58     49      9
9 months    ki1114097-CMIN             GUINEA-BISSAU                  6       866     56     52      4
9 months    ki1114097-CMIN             GUINEA-BISSAU                  7       866     60     51      9
9 months    ki1114097-CMIN             GUINEA-BISSAU                  8       866     59     56      3
9 months    ki1114097-CMIN             GUINEA-BISSAU                  9       866     88     74     14
9 months    ki1114097-CMIN             GUINEA-BISSAU                  10      866     98     85     13
9 months    ki1114097-CMIN             GUINEA-BISSAU                  11      866     85     76      9
9 months    ki1114097-CMIN             GUINEA-BISSAU                  12      866     98     85     13
9 months    ki1114097-CMIN             PERU                           1       625     38     37      1
9 months    ki1114097-CMIN             PERU                           2       625     51     44      7
9 months    ki1114097-CMIN             PERU                           3       625     61     57      4
9 months    ki1114097-CMIN             PERU                           4       625     59     49     10
9 months    ki1114097-CMIN             PERU                           5       625     64     53     11
9 months    ki1114097-CMIN             PERU                           6       625     56     50      6
9 months    ki1114097-CMIN             PERU                           7       625     62     53      9
9 months    ki1114097-CMIN             PERU                           8       625     69     62      7
9 months    ki1114097-CMIN             PERU                           9       625     46     43      3
9 months    ki1114097-CMIN             PERU                           10      625     43     33     10
9 months    ki1114097-CMIN             PERU                           11      625     32     29      3
9 months    ki1114097-CMIN             PERU                           12      625     44     38      6
9 months    ki1114097-CONTENT          PERU                           1       214     10     10      0
9 months    ki1114097-CONTENT          PERU                           2       214     18     16      2
9 months    ki1114097-CONTENT          PERU                           3       214     29     28      1
9 months    ki1114097-CONTENT          PERU                           4       214     19     14      5
9 months    ki1114097-CONTENT          PERU                           5       214     14     12      2
9 months    ki1114097-CONTENT          PERU                           6       214     13     11      2
9 months    ki1114097-CONTENT          PERU                           7       214     28     26      2
9 months    ki1114097-CONTENT          PERU                           8       214     23     21      2
9 months    ki1114097-CONTENT          PERU                           9       214     26     24      2
9 months    ki1114097-CONTENT          PERU                           10      214     14     12      2
9 months    ki1114097-CONTENT          PERU                           11      214      9      7      2
9 months    ki1114097-CONTENT          PERU                           12      214     11     11      0
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       1      7675    764    603    161
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       2      7675    613    488    125
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       3      7675    615    503    112
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       4      7675    546    456     90
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       5      7675    554    431    123
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       6      7675    618    485    133
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       7      7675    585    470    115
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       8      7675    701    570    131
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       9      7675    728    595    133
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       10     7675    571    445    126
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       11     7675    682    555    127
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       12     7675    698    555    143
9 months    ki1148112-LCNI-5           MALAWI                         1       664     51     30     21
9 months    ki1148112-LCNI-5           MALAWI                         2       664     35     30      5
9 months    ki1148112-LCNI-5           MALAWI                         3       664     20     12      8
9 months    ki1148112-LCNI-5           MALAWI                         4       664     25     18      7
9 months    ki1148112-LCNI-5           MALAWI                         5       664     32     22     10
9 months    ki1148112-LCNI-5           MALAWI                         6       664     24     14     10
9 months    ki1148112-LCNI-5           MALAWI                         7       664     48     31     17
9 months    ki1148112-LCNI-5           MALAWI                         8       664     81     61     20
9 months    ki1148112-LCNI-5           MALAWI                         9       664     80     55     25
9 months    ki1148112-LCNI-5           MALAWI                         10      664    113     67     46
9 months    ki1148112-LCNI-5           MALAWI                         11      664     81     56     25
9 months    ki1148112-LCNI-5           MALAWI                         12      664     74     47     27
12 months   ki0047075b-MAL-ED          BANGLADESH                     1       233     17     13      4
12 months   ki0047075b-MAL-ED          BANGLADESH                     2       233     19      6     13
12 months   ki0047075b-MAL-ED          BANGLADESH                     3       233     21     13      8
12 months   ki0047075b-MAL-ED          BANGLADESH                     4       233     21     17      4
12 months   ki0047075b-MAL-ED          BANGLADESH                     5       233     21     14      7
12 months   ki0047075b-MAL-ED          BANGLADESH                     6       233      9      6      3
12 months   ki0047075b-MAL-ED          BANGLADESH                     7       233     18     11      7
12 months   ki0047075b-MAL-ED          BANGLADESH                     8       233     22     13      9
12 months   ki0047075b-MAL-ED          BANGLADESH                     9       233     20     16      4
12 months   ki0047075b-MAL-ED          BANGLADESH                     10      233     22     15      7
12 months   ki0047075b-MAL-ED          BANGLADESH                     11      233     15     11      4
12 months   ki0047075b-MAL-ED          BANGLADESH                     12      233     28     23      5
12 months   ki0047075b-MAL-ED          BRAZIL                         1       195     15     15      0
12 months   ki0047075b-MAL-ED          BRAZIL                         2       195     21     20      1
12 months   ki0047075b-MAL-ED          BRAZIL                         3       195     16     16      0
12 months   ki0047075b-MAL-ED          BRAZIL                         4       195     10     10      0
12 months   ki0047075b-MAL-ED          BRAZIL                         5       195     20     19      1
12 months   ki0047075b-MAL-ED          BRAZIL                         6       195      7      7      0
12 months   ki0047075b-MAL-ED          BRAZIL                         7       195     16     14      2
12 months   ki0047075b-MAL-ED          BRAZIL                         8       195     13     13      0
12 months   ki0047075b-MAL-ED          BRAZIL                         9       195     29     28      1
12 months   ki0047075b-MAL-ED          BRAZIL                         10      195     16     16      0
12 months   ki0047075b-MAL-ED          BRAZIL                         11      195     21     20      1
12 months   ki0047075b-MAL-ED          BRAZIL                         12      195     11     11      0
12 months   ki0047075b-MAL-ED          INDIA                          1       228     19     12      7
12 months   ki0047075b-MAL-ED          INDIA                          2       228     18     15      3
12 months   ki0047075b-MAL-ED          INDIA                          3       228     19     15      4
12 months   ki0047075b-MAL-ED          INDIA                          4       228     14      9      5
12 months   ki0047075b-MAL-ED          INDIA                          5       228      8      6      2
12 months   ki0047075b-MAL-ED          INDIA                          6       228     19     13      6
12 months   ki0047075b-MAL-ED          INDIA                          7       228     23     14      9
12 months   ki0047075b-MAL-ED          INDIA                          8       228     21     14      7
12 months   ki0047075b-MAL-ED          INDIA                          9       228     18     11      7
12 months   ki0047075b-MAL-ED          INDIA                          10      228     26     16     10
12 months   ki0047075b-MAL-ED          INDIA                          11      228     24     15      9
12 months   ki0047075b-MAL-ED          INDIA                          12      228     19     13      6
12 months   ki0047075b-MAL-ED          NEPAL                          1       231     20     16      4
12 months   ki0047075b-MAL-ED          NEPAL                          2       231     17     12      5
12 months   ki0047075b-MAL-ED          NEPAL                          3       231     17     13      4
12 months   ki0047075b-MAL-ED          NEPAL                          4       231     22     19      3
12 months   ki0047075b-MAL-ED          NEPAL                          5       231     19     16      3
12 months   ki0047075b-MAL-ED          NEPAL                          6       231     18     18      0
12 months   ki0047075b-MAL-ED          NEPAL                          7       231     18     17      1
12 months   ki0047075b-MAL-ED          NEPAL                          8       231     24     23      1
12 months   ki0047075b-MAL-ED          NEPAL                          9       231     15     14      1
12 months   ki0047075b-MAL-ED          NEPAL                          10      231     20     20      0
12 months   ki0047075b-MAL-ED          NEPAL                          11      231     24     22      2
12 months   ki0047075b-MAL-ED          NEPAL                          12      231     17     15      2
12 months   ki0047075b-MAL-ED          PERU                           1       246     36     24     12
12 months   ki0047075b-MAL-ED          PERU                           2       246     18     14      4
12 months   ki0047075b-MAL-ED          PERU                           3       246     19     14      5
12 months   ki0047075b-MAL-ED          PERU                           4       246     17     12      5
12 months   ki0047075b-MAL-ED          PERU                           5       246     21     18      3
12 months   ki0047075b-MAL-ED          PERU                           6       246     15      9      6
12 months   ki0047075b-MAL-ED          PERU                           7       246     20     13      7
12 months   ki0047075b-MAL-ED          PERU                           8       246     14     11      3
12 months   ki0047075b-MAL-ED          PERU                           9       246     22     19      3
12 months   ki0047075b-MAL-ED          PERU                           10      246     17     13      4
12 months   ki0047075b-MAL-ED          PERU                           11      246     28     18     10
12 months   ki0047075b-MAL-ED          PERU                           12      246     19     12      7
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1       252     37     26     11
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2       252     23     15      8
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3       252     15     13      2
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4       252     12     11      1
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5       252     13     12      1
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6       252     16     11      5
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7       252     22     16      6
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8       252      9      7      2
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9       252     19     17      2
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10      252     25     20      5
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11      252     26     18      8
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12      252     35     26      9
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1       231     15      9      6
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2       231     27      8     19
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3       231     18      7     11
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4       231      9      3      6
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5       231     19      8     11
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6       231     19     13      6
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7       231     23     12     11
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8       231     10      4      6
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9       231     20      8     12
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10      231     19      7     12
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11      231     26     13     13
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
12 months   ki1000108-IRC              INDIA                          1       406     37     22     15
12 months   ki1000108-IRC              INDIA                          2       406     28     14     14
12 months   ki1000108-IRC              INDIA                          3       406     27     20      7
12 months   ki1000108-IRC              INDIA                          4       406     20      9     11
12 months   ki1000108-IRC              INDIA                          5       406     21     10     11
12 months   ki1000108-IRC              INDIA                          6       406     37     32      5
12 months   ki1000108-IRC              INDIA                          7       406     36     30      6
12 months   ki1000108-IRC              INDIA                          8       406     44     36      8
12 months   ki1000108-IRC              INDIA                          9       406     27     18      9
12 months   ki1000108-IRC              INDIA                          10      406     38     33      5
12 months   ki1000108-IRC              INDIA                          11      406     40     29     11
12 months   ki1000108-IRC              INDIA                          12      406     51     34     17
12 months   ki1000109-EE               PAKISTAN                       1       357     89     19     70
12 months   ki1000109-EE               PAKISTAN                       2       357     62     15     47
12 months   ki1000109-EE               PAKISTAN                       3       357     40     12     28
12 months   ki1000109-EE               PAKISTAN                       4       357     16      3     13
12 months   ki1000109-EE               PAKISTAN                       5       357      0      0      0
12 months   ki1000109-EE               PAKISTAN                       6       357      0      0      0
12 months   ki1000109-EE               PAKISTAN                       7       357      0      0      0
12 months   ki1000109-EE               PAKISTAN                       8       357      0      0      0
12 months   ki1000109-EE               PAKISTAN                       9       357      0      0      0
12 months   ki1000109-EE               PAKISTAN                       10      357      3      0      3
12 months   ki1000109-EE               PAKISTAN                       11      357     65     26     39
12 months   ki1000109-EE               PAKISTAN                       12      357     82     27     55
12 months   ki1000109-ResPak           PAKISTAN                       1       194      5      2      3
12 months   ki1000109-ResPak           PAKISTAN                       2       194      9      7      2
12 months   ki1000109-ResPak           PAKISTAN                       3       194     14     10      4
12 months   ki1000109-ResPak           PAKISTAN                       4       194     13      9      4
12 months   ki1000109-ResPak           PAKISTAN                       5       194     43     28     15
12 months   ki1000109-ResPak           PAKISTAN                       6       194     37     22     15
12 months   ki1000109-ResPak           PAKISTAN                       7       194     19     14      5
12 months   ki1000109-ResPak           PAKISTAN                       8       194     28     19      9
12 months   ki1000109-ResPak           PAKISTAN                       9       194     18     14      4
12 months   ki1000109-ResPak           PAKISTAN                       10      194      5      4      1
12 months   ki1000109-ResPak           PAKISTAN                       11      194      0      0      0
12 months   ki1000109-ResPak           PAKISTAN                       12      194      3      1      2
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          1        92      7      1      6
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          2        92      8      2      6
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          3        92      6      1      5
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          4        92      1      0      1
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          5        92      3      1      2
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          6        92      5      1      4
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          7        92      9      2      7
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          8        92     14      4     10
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          9        92     15      1     14
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          10       92     10      2      8
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          11       92      4      1      3
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          12       92     10      3      7
12 months   ki1017093-NIH-Birth        BANGLADESH                     1       491     46     26     20
12 months   ki1017093-NIH-Birth        BANGLADESH                     2       491     43     28     15
12 months   ki1017093-NIH-Birth        BANGLADESH                     3       491     45     31     14
12 months   ki1017093-NIH-Birth        BANGLADESH                     4       491     38     25     13
12 months   ki1017093-NIH-Birth        BANGLADESH                     5       491     39     28     11
12 months   ki1017093-NIH-Birth        BANGLADESH                     6       491     38     23     15
12 months   ki1017093-NIH-Birth        BANGLADESH                     7       491     38     23     15
12 months   ki1017093-NIH-Birth        BANGLADESH                     8       491     30     18     12
12 months   ki1017093-NIH-Birth        BANGLADESH                     9       491     34     20     14
12 months   ki1017093-NIH-Birth        BANGLADESH                     10      491     41     27     14
12 months   ki1017093-NIH-Birth        BANGLADESH                     11      491     49     29     20
12 months   ki1017093-NIH-Birth        BANGLADESH                     12      491     50     29     21
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1      1444     93     74     19
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2      1444    115     97     18
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3      1444     97     79     18
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4      1444    109     82     27
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5      1444    108     92     16
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6      1444    109     88     21
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7      1444    148    123     25
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8      1444    149    123     26
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9      1444    131    112     19
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10     1444    146    132     14
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11     1444    127    109     18
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12     1444    112     94     18
12 months   ki1101329-Keneba           GAMBIA                         1      1948    181    132     49
12 months   ki1101329-Keneba           GAMBIA                         2      1948    178    139     39
12 months   ki1101329-Keneba           GAMBIA                         3      1948    194    151     43
12 months   ki1101329-Keneba           GAMBIA                         4      1948    134    107     27
12 months   ki1101329-Keneba           GAMBIA                         5      1948    139    107     32
12 months   ki1101329-Keneba           GAMBIA                         6      1948    118     95     23
12 months   ki1101329-Keneba           GAMBIA                         7      1948     98     74     24
12 months   ki1101329-Keneba           GAMBIA                         8      1948    170    129     41
12 months   ki1101329-Keneba           GAMBIA                         9      1948    176    130     46
12 months   ki1101329-Keneba           GAMBIA                         10     1948    225    158     67
12 months   ki1101329-Keneba           GAMBIA                         11     1948    173    128     45
12 months   ki1101329-Keneba           GAMBIA                         12     1948    162    115     47
12 months   ki1112895-Guatemala BSC    GUATEMALA                      1       201     21      8     13
12 months   ki1112895-Guatemala BSC    GUATEMALA                      2       201     20     14      6
12 months   ki1112895-Guatemala BSC    GUATEMALA                      3       201     22     12     10
12 months   ki1112895-Guatemala BSC    GUATEMALA                      4       201     22     12     10
12 months   ki1112895-Guatemala BSC    GUATEMALA                      5       201     17      8      9
12 months   ki1112895-Guatemala BSC    GUATEMALA                      6       201     12      5      7
12 months   ki1112895-Guatemala BSC    GUATEMALA                      7       201     12      4      8
12 months   ki1112895-Guatemala BSC    GUATEMALA                      8       201      6      2      4
12 months   ki1112895-Guatemala BSC    GUATEMALA                      9       201     11      5      6
12 months   ki1112895-Guatemala BSC    GUATEMALA                      10      201     22     13      9
12 months   ki1112895-Guatemala BSC    GUATEMALA                      11      201     15      7      8
12 months   ki1112895-Guatemala BSC    GUATEMALA                      12      201     21     11     10
12 months   ki1113344-GMS-Nepal        NEPAL                          1       558      0      0      0
12 months   ki1113344-GMS-Nepal        NEPAL                          2       558      0      0      0
12 months   ki1113344-GMS-Nepal        NEPAL                          3       558      0      0      0
12 months   ki1113344-GMS-Nepal        NEPAL                          4       558      1      0      1
12 months   ki1113344-GMS-Nepal        NEPAL                          5       558      0      0      0
12 months   ki1113344-GMS-Nepal        NEPAL                          6       558    123     75     48
12 months   ki1113344-GMS-Nepal        NEPAL                          7       558    214    139     75
12 months   ki1113344-GMS-Nepal        NEPAL                          8       558    220    153     67
12 months   ki1113344-GMS-Nepal        NEPAL                          9       558      0      0      0
12 months   ki1113344-GMS-Nepal        NEPAL                          10      558      0      0      0
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
12 months   ki1114097-CMIN             GUINEA-BISSAU                  1       620     47     35     12
12 months   ki1114097-CMIN             GUINEA-BISSAU                  2       620     40     36      4
12 months   ki1114097-CMIN             GUINEA-BISSAU                  3       620     67     57     10
12 months   ki1114097-CMIN             GUINEA-BISSAU                  4       620     44     31     13
12 months   ki1114097-CMIN             GUINEA-BISSAU                  5       620     37     31      6
12 months   ki1114097-CMIN             GUINEA-BISSAU                  6       620     39     33      6
12 months   ki1114097-CMIN             GUINEA-BISSAU                  7       620     38     33      5
12 months   ki1114097-CMIN             GUINEA-BISSAU                  8       620     52     44      8
12 months   ki1114097-CMIN             GUINEA-BISSAU                  9       620     80     61     19
12 months   ki1114097-CMIN             GUINEA-BISSAU                  10      620     63     47     16
12 months   ki1114097-CMIN             GUINEA-BISSAU                  11      620     52     39     13
12 months   ki1114097-CMIN             GUINEA-BISSAU                  12      620     61     49     12
12 months   ki1114097-CMIN             PERU                           1       601     29     24      5
12 months   ki1114097-CMIN             PERU                           2       601     57     43     14
12 months   ki1114097-CMIN             PERU                           3       601     69     58     11
12 months   ki1114097-CMIN             PERU                           4       601     62     50     12
12 months   ki1114097-CMIN             PERU                           5       601     61     52      9
12 months   ki1114097-CMIN             PERU                           6       601     54     42     12
12 months   ki1114097-CMIN             PERU                           7       601     59     48     11
12 months   ki1114097-CMIN             PERU                           8       601     66     53     13
12 months   ki1114097-CMIN             PERU                           9       601     46     37      9
12 months   ki1114097-CMIN             PERU                           10      601     39     30      9
12 months   ki1114097-CMIN             PERU                           11      601     26     23      3
12 months   ki1114097-CMIN             PERU                           12      601     33     26      7
12 months   ki1114097-CONTENT          PERU                           1       215     10     10      0
12 months   ki1114097-CONTENT          PERU                           2       215     18     16      2
12 months   ki1114097-CONTENT          PERU                           3       215     30     28      2
12 months   ki1114097-CONTENT          PERU                           4       215     19     12      7
12 months   ki1114097-CONTENT          PERU                           5       215     14     12      2
12 months   ki1114097-CONTENT          PERU                           6       215     13      8      5
12 months   ki1114097-CONTENT          PERU                           7       215     28     27      1
12 months   ki1114097-CONTENT          PERU                           8       215     23     21      2
12 months   ki1114097-CONTENT          PERU                           9       215     26     24      2
12 months   ki1114097-CONTENT          PERU                           10      215     14     12      2
12 months   ki1114097-CONTENT          PERU                           11      215      9      8      1
12 months   ki1114097-CONTENT          PERU                           12      215     11     11      0
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       1      6749    620    466    154
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       2      6749    505    377    128
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       3      6749    620    467    153
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       4      6749    505    388    117
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       5      6749    506    383    123
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       6      6749    566    417    149
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       7      6749    566    411    155
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       8      6749    618    469    149
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       9      6749    620    479    141
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       10     6749    465    342    123
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       11     6749    574    440    134
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       12     6749    584    460    124
12 months   ki1148112-LCNI-5           MALAWI                         1       626     52     28     24
12 months   ki1148112-LCNI-5           MALAWI                         2       626     38     27     11
12 months   ki1148112-LCNI-5           MALAWI                         3       626     20     11      9
12 months   ki1148112-LCNI-5           MALAWI                         4       626     28     18     10
12 months   ki1148112-LCNI-5           MALAWI                         5       626     33     19     14
12 months   ki1148112-LCNI-5           MALAWI                         6       626     24     13     11
12 months   ki1148112-LCNI-5           MALAWI                         7       626     46     30     16
12 months   ki1148112-LCNI-5           MALAWI                         8       626     78     52     26
12 months   ki1148112-LCNI-5           MALAWI                         9       626     69     48     21
12 months   ki1148112-LCNI-5           MALAWI                         10      626     96     49     47
12 months   ki1148112-LCNI-5           MALAWI                         11      626     70     42     28
12 months   ki1148112-LCNI-5           MALAWI                         12      626     72     42     30
18 months   ki0047075b-MAL-ED          BANGLADESH                     1       221     17     11      6
18 months   ki0047075b-MAL-ED          BANGLADESH                     2       221     17      5     12
18 months   ki0047075b-MAL-ED          BANGLADESH                     3       221     19      7     12
18 months   ki0047075b-MAL-ED          BANGLADESH                     4       221     20     12      8
18 months   ki0047075b-MAL-ED          BANGLADESH                     5       221     19      9     10
18 months   ki0047075b-MAL-ED          BANGLADESH                     6       221      8      4      4
18 months   ki0047075b-MAL-ED          BANGLADESH                     7       221     18      8     10
18 months   ki0047075b-MAL-ED          BANGLADESH                     8       221     22     13      9
18 months   ki0047075b-MAL-ED          BANGLADESH                     9       221     20     12      8
18 months   ki0047075b-MAL-ED          BANGLADESH                     10      221     21     13      8
18 months   ki0047075b-MAL-ED          BANGLADESH                     11      221     12      5      7
18 months   ki0047075b-MAL-ED          BANGLADESH                     12      221     28     17     11
18 months   ki0047075b-MAL-ED          BRAZIL                         1       180     15     14      1
18 months   ki0047075b-MAL-ED          BRAZIL                         2       180     16     14      2
18 months   ki0047075b-MAL-ED          BRAZIL                         3       180     16     16      0
18 months   ki0047075b-MAL-ED          BRAZIL                         4       180     10     10      0
18 months   ki0047075b-MAL-ED          BRAZIL                         5       180     17     17      0
18 months   ki0047075b-MAL-ED          BRAZIL                         6       180      7      7      0
18 months   ki0047075b-MAL-ED          BRAZIL                         7       180     15     14      1
18 months   ki0047075b-MAL-ED          BRAZIL                         8       180     13     13      0
18 months   ki0047075b-MAL-ED          BRAZIL                         9       180     27     26      1
18 months   ki0047075b-MAL-ED          BRAZIL                         10      180     14     13      1
18 months   ki0047075b-MAL-ED          BRAZIL                         11      180     19     18      1
18 months   ki0047075b-MAL-ED          BRAZIL                         12      180     11     11      0
18 months   ki0047075b-MAL-ED          INDIA                          1       228     19      7     12
18 months   ki0047075b-MAL-ED          INDIA                          2       228     18     13      5
18 months   ki0047075b-MAL-ED          INDIA                          3       228     19     11      8
18 months   ki0047075b-MAL-ED          INDIA                          4       228     14      7      7
18 months   ki0047075b-MAL-ED          INDIA                          5       228      8      4      4
18 months   ki0047075b-MAL-ED          INDIA                          6       228     19     11      8
18 months   ki0047075b-MAL-ED          INDIA                          7       228     23     10     13
18 months   ki0047075b-MAL-ED          INDIA                          8       228     21     11     10
18 months   ki0047075b-MAL-ED          INDIA                          9       228     18     11      7
18 months   ki0047075b-MAL-ED          INDIA                          10      228     26     13     13
18 months   ki0047075b-MAL-ED          INDIA                          11      228     24     13     11
18 months   ki0047075b-MAL-ED          INDIA                          12      228     19     13      6
18 months   ki0047075b-MAL-ED          NEPAL                          1       229     20     17      3
18 months   ki0047075b-MAL-ED          NEPAL                          2       229     16     11      5
18 months   ki0047075b-MAL-ED          NEPAL                          3       229     17     12      5
18 months   ki0047075b-MAL-ED          NEPAL                          4       229     22     18      4
18 months   ki0047075b-MAL-ED          NEPAL                          5       229     19     12      7
18 months   ki0047075b-MAL-ED          NEPAL                          6       229     18     16      2
18 months   ki0047075b-MAL-ED          NEPAL                          7       229     18     15      3
18 months   ki0047075b-MAL-ED          NEPAL                          8       229     24     20      4
18 months   ki0047075b-MAL-ED          NEPAL                          9       229     15     13      2
18 months   ki0047075b-MAL-ED          NEPAL                          10      229     20     17      3
18 months   ki0047075b-MAL-ED          NEPAL                          11      229     24     19      5
18 months   ki0047075b-MAL-ED          NEPAL                          12      229     16     14      2
18 months   ki0047075b-MAL-ED          PERU                           1       222     34     16     18
18 months   ki0047075b-MAL-ED          PERU                           2       222     17      9      8
18 months   ki0047075b-MAL-ED          PERU                           3       222     16      9      7
18 months   ki0047075b-MAL-ED          PERU                           4       222     14      5      9
18 months   ki0047075b-MAL-ED          PERU                           5       222     20     10     10
18 months   ki0047075b-MAL-ED          PERU                           6       222     14      7      7
18 months   ki0047075b-MAL-ED          PERU                           7       222     18      5     13
18 months   ki0047075b-MAL-ED          PERU                           8       222     14      8      6
18 months   ki0047075b-MAL-ED          PERU                           9       222     21     18      3
18 months   ki0047075b-MAL-ED          PERU                           10      222     15     11      4
18 months   ki0047075b-MAL-ED          PERU                           11      222     23     14      9
18 months   ki0047075b-MAL-ED          PERU                           12      222     16     11      5
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1       241     35     22     13
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2       241     23     14      9
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3       241     13     10      3
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4       241     12     10      2
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5       241     12     11      1
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6       241     16     11      5
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7       241     22     14      8
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8       241      8      6      2
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9       241     19     14      5
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10      241     25     17      8
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11      241     24     12     12
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12      241     32     18     14
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1       225     14      4     10
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2       225     25      3     22
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3       225     18      7     11
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4       225      8      3      5
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5       225     18      7     11
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6       225     19      8     11
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7       225     23      9     14
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8       225     11      5      6
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9       225     19      6     13
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10      225     18      4     14
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11      225     25      7     18
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12      225     27      6     21
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
18 months   ki1000108-IRC              INDIA                          1       405     38     23     15
18 months   ki1000108-IRC              INDIA                          2       405     28     16     12
18 months   ki1000108-IRC              INDIA                          3       405     27     17     10
18 months   ki1000108-IRC              INDIA                          4       405     21     11     10
18 months   ki1000108-IRC              INDIA                          5       405     22     10     12
18 months   ki1000108-IRC              INDIA                          6       405     37     32      5
18 months   ki1000108-IRC              INDIA                          7       405     36     26     10
18 months   ki1000108-IRC              INDIA                          8       405     43     30     13
18 months   ki1000108-IRC              INDIA                          9       405     27     12     15
18 months   ki1000108-IRC              INDIA                          10      405     35     29      6
18 months   ki1000108-IRC              INDIA                          11      405     40     24     16
18 months   ki1000108-IRC              INDIA                          12      405     51     31     20
18 months   ki1000109-EE               PAKISTAN                       1       350     87     12     75
18 months   ki1000109-EE               PAKISTAN                       2       350     57     10     47
18 months   ki1000109-EE               PAKISTAN                       3       350     39      5     34
18 months   ki1000109-EE               PAKISTAN                       4       350     16      1     15
18 months   ki1000109-EE               PAKISTAN                       5       350      0      0      0
18 months   ki1000109-EE               PAKISTAN                       6       350      0      0      0
18 months   ki1000109-EE               PAKISTAN                       7       350      0      0      0
18 months   ki1000109-EE               PAKISTAN                       8       350      0      0      0
18 months   ki1000109-EE               PAKISTAN                       9       350      0      0      0
18 months   ki1000109-EE               PAKISTAN                       10      350      4      1      3
18 months   ki1000109-EE               PAKISTAN                       11      350     65     10     55
18 months   ki1000109-EE               PAKISTAN                       12      350     82     14     68
18 months   ki1000109-ResPak           PAKISTAN                       1         9      1      0      1
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
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          1        84      6      0      6
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          2        84      6      1      5
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          3        84      6      2      4
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          4        84      1      0      1
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          5        84      3      0      3
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          6        84      6      1      5
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          7        84      8      2      6
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          8        84     12      1     11
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          9        84     15      2     13
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          10       84      8      0      8
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          11       84      5      1      4
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          12       84      8      0      8
18 months   ki1017093-NIH-Birth        BANGLADESH                     1       463     45     16     29
18 months   ki1017093-NIH-Birth        BANGLADESH                     2       463     35     13     22
18 months   ki1017093-NIH-Birth        BANGLADESH                     3       463     44     21     23
18 months   ki1017093-NIH-Birth        BANGLADESH                     4       463     36     12     24
18 months   ki1017093-NIH-Birth        BANGLADESH                     5       463     37     13     24
18 months   ki1017093-NIH-Birth        BANGLADESH                     6       463     39     14     25
18 months   ki1017093-NIH-Birth        BANGLADESH                     7       463     36     14     22
18 months   ki1017093-NIH-Birth        BANGLADESH                     8       463     28     14     14
18 months   ki1017093-NIH-Birth        BANGLADESH                     9       463     35     14     21
18 months   ki1017093-NIH-Birth        BANGLADESH                     10      463     37     14     23
18 months   ki1017093-NIH-Birth        BANGLADESH                     11      463     44     21     23
18 months   ki1017093-NIH-Birth        BANGLADESH                     12      463     47     25     22
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1       980     71     48     23
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2       980     80     68     12
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3       980     72     51     21
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4       980     86     60     26
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5       980     76     60     16
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6       980     68     54     14
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7       980     87     65     22
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8       980     96     77     19
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9       980     86     63     23
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10      980    100     77     23
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11      980     83     65     18
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12      980     75     56     19
18 months   ki1101329-Keneba           GAMBIA                         1      1923    204    143     61
18 months   ki1101329-Keneba           GAMBIA                         2      1923    178    120     58
18 months   ki1101329-Keneba           GAMBIA                         3      1923    201    129     72
18 months   ki1101329-Keneba           GAMBIA                         4      1923    136     89     47
18 months   ki1101329-Keneba           GAMBIA                         5      1923    135     90     45
18 months   ki1101329-Keneba           GAMBIA                         6      1923    111     70     41
18 months   ki1101329-Keneba           GAMBIA                         7      1923     89     53     36
18 months   ki1101329-Keneba           GAMBIA                         8      1923    154    112     42
18 months   ki1101329-Keneba           GAMBIA                         9      1923    168    119     49
18 months   ki1101329-Keneba           GAMBIA                         10     1923    208    133     75
18 months   ki1101329-Keneba           GAMBIA                         11     1923    162    120     42
18 months   ki1101329-Keneba           GAMBIA                         12     1923    177    125     52
18 months   ki1113344-GMS-Nepal        NEPAL                          1       550      0      0      0
18 months   ki1113344-GMS-Nepal        NEPAL                          2       550      0      0      0
18 months   ki1113344-GMS-Nepal        NEPAL                          3       550      0      0      0
18 months   ki1113344-GMS-Nepal        NEPAL                          4       550      0      0      0
18 months   ki1113344-GMS-Nepal        NEPAL                          5       550      0      0      0
18 months   ki1113344-GMS-Nepal        NEPAL                          6       550    121     57     64
18 months   ki1113344-GMS-Nepal        NEPAL                          7       550    216     97    119
18 months   ki1113344-GMS-Nepal        NEPAL                          8       550    213    104    109
18 months   ki1113344-GMS-Nepal        NEPAL                          9       550      0      0      0
18 months   ki1113344-GMS-Nepal        NEPAL                          10      550      0      0      0
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
18 months   ki1114097-CMIN             GUINEA-BISSAU                  1       754     77     56     21
18 months   ki1114097-CMIN             GUINEA-BISSAU                  2       754     61     43     18
18 months   ki1114097-CMIN             GUINEA-BISSAU                  3       754     60     46     14
18 months   ki1114097-CMIN             GUINEA-BISSAU                  4       754     55     40     15
18 months   ki1114097-CMIN             GUINEA-BISSAU                  5       754     48     32     16
18 months   ki1114097-CMIN             GUINEA-BISSAU                  6       754     30     22      8
18 months   ki1114097-CMIN             GUINEA-BISSAU                  7       754     39     30      9
18 months   ki1114097-CMIN             GUINEA-BISSAU                  8       754     62     46     16
18 months   ki1114097-CMIN             GUINEA-BISSAU                  9       754     98     67     31
18 months   ki1114097-CMIN             GUINEA-BISSAU                  10      754     89     66     23
18 months   ki1114097-CMIN             GUINEA-BISSAU                  11      754     63     42     21
18 months   ki1114097-CMIN             GUINEA-BISSAU                  12      754     72     52     20
18 months   ki1114097-CMIN             PERU                           1       489     26     18      8
18 months   ki1114097-CMIN             PERU                           2       489     49     32     17
18 months   ki1114097-CMIN             PERU                           3       489     55     39     16
18 months   ki1114097-CMIN             PERU                           4       489     46     33     13
18 months   ki1114097-CMIN             PERU                           5       489     34     23     11
18 months   ki1114097-CMIN             PERU                           6       489     38     25     13
18 months   ki1114097-CMIN             PERU                           7       489     37     27     10
18 months   ki1114097-CMIN             PERU                           8       489     48     33     15
18 months   ki1114097-CMIN             PERU                           9       489     42     27     15
18 months   ki1114097-CMIN             PERU                           10      489     42     26     16
18 months   ki1114097-CMIN             PERU                           11      489     33     25      8
18 months   ki1114097-CMIN             PERU                           12      489     39     27     12
18 months   ki1114097-CONTENT          PERU                           1       200      9      9      0
18 months   ki1114097-CONTENT          PERU                           2       200     17     13      4
18 months   ki1114097-CONTENT          PERU                           3       200     28     24      4
18 months   ki1114097-CONTENT          PERU                           4       200     19     12      7
18 months   ki1114097-CONTENT          PERU                           5       200     14     12      2
18 months   ki1114097-CONTENT          PERU                           6       200     12      9      3
18 months   ki1114097-CONTENT          PERU                           7       200     24     22      2
18 months   ki1114097-CONTENT          PERU                           8       200     22     20      2
18 months   ki1114097-CONTENT          PERU                           9       200     25     24      1
18 months   ki1114097-CONTENT          PERU                           10      200     12     11      1
18 months   ki1114097-CONTENT          PERU                           11      200      7      7      0
18 months   ki1114097-CONTENT          PERU                           12      200     11     10      1
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       1      1710    207     97    110
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       2      1710    184     90     94
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       3      1710    144     78     66
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       4      1710    137     74     63
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       5      1710    117     64     53
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       6      1710    148     91     57
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       7      1710    107     49     58
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       8      1710    132     76     56
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       9      1710    121     66     55
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       10     1710    104     53     51
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       11     1710    142     70     72
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       12     1710    167     89     78
18 months   ki1148112-LCNI-5           MALAWI                         1       725     56     31     25
18 months   ki1148112-LCNI-5           MALAWI                         2       725     42     30     12
18 months   ki1148112-LCNI-5           MALAWI                         3       725     23     11     12
18 months   ki1148112-LCNI-5           MALAWI                         4       725     34     20     14
18 months   ki1148112-LCNI-5           MALAWI                         5       725     35     22     13
18 months   ki1148112-LCNI-5           MALAWI                         6       725     31     13     18
18 months   ki1148112-LCNI-5           MALAWI                         7       725     54     29     25
18 months   ki1148112-LCNI-5           MALAWI                         8       725     79     48     31
18 months   ki1148112-LCNI-5           MALAWI                         9       725     85     55     30
18 months   ki1148112-LCNI-5           MALAWI                         10      725    116     50     66
18 months   ki1148112-LCNI-5           MALAWI                         11      725     82     41     41
18 months   ki1148112-LCNI-5           MALAWI                         12      725     88     42     46
24 months   ki0047075b-MAL-ED          BANGLADESH                     1       212     14      8      6
24 months   ki0047075b-MAL-ED          BANGLADESH                     2       212     17      6     11
24 months   ki0047075b-MAL-ED          BANGLADESH                     3       212     19      7     12
24 months   ki0047075b-MAL-ED          BANGLADESH                     4       212     20     13      7
24 months   ki0047075b-MAL-ED          BANGLADESH                     5       212     19      9     10
24 months   ki0047075b-MAL-ED          BANGLADESH                     6       212      7      4      3
24 months   ki0047075b-MAL-ED          BANGLADESH                     7       212     18      9      9
24 months   ki0047075b-MAL-ED          BANGLADESH                     8       212     22     12     10
24 months   ki0047075b-MAL-ED          BANGLADESH                     9       212     18     11      7
24 months   ki0047075b-MAL-ED          BANGLADESH                     10      212     20     13      7
24 months   ki0047075b-MAL-ED          BANGLADESH                     11      212     11      5      6
24 months   ki0047075b-MAL-ED          BANGLADESH                     12      212     27     17     10
24 months   ki0047075b-MAL-ED          BRAZIL                         1       169     15     14      1
24 months   ki0047075b-MAL-ED          BRAZIL                         2       169     16     15      1
24 months   ki0047075b-MAL-ED          BRAZIL                         3       169     14     14      0
24 months   ki0047075b-MAL-ED          BRAZIL                         4       169     10     10      0
24 months   ki0047075b-MAL-ED          BRAZIL                         5       169     15     15      0
24 months   ki0047075b-MAL-ED          BRAZIL                         6       169      6      6      0
24 months   ki0047075b-MAL-ED          BRAZIL                         7       169     10      9      1
24 months   ki0047075b-MAL-ED          BRAZIL                         8       169     13     13      0
24 months   ki0047075b-MAL-ED          BRAZIL                         9       169     27     26      1
24 months   ki0047075b-MAL-ED          BRAZIL                         10      169     14     13      1
24 months   ki0047075b-MAL-ED          BRAZIL                         11      169     18     17      1
24 months   ki0047075b-MAL-ED          BRAZIL                         12      169     11     11      0
24 months   ki0047075b-MAL-ED          INDIA                          1       227     19      6     13
24 months   ki0047075b-MAL-ED          INDIA                          2       227     18     14      4
24 months   ki0047075b-MAL-ED          INDIA                          3       227     19     12      7
24 months   ki0047075b-MAL-ED          INDIA                          4       227     14      7      7
24 months   ki0047075b-MAL-ED          INDIA                          5       227      8      5      3
24 months   ki0047075b-MAL-ED          INDIA                          6       227     18     13      5
24 months   ki0047075b-MAL-ED          INDIA                          7       227     23     11     12
24 months   ki0047075b-MAL-ED          INDIA                          8       227     21     12      9
24 months   ki0047075b-MAL-ED          INDIA                          9       227     18     12      6
24 months   ki0047075b-MAL-ED          INDIA                          10      227     26     13     13
24 months   ki0047075b-MAL-ED          INDIA                          11      227     24     14     10
24 months   ki0047075b-MAL-ED          INDIA                          12      227     19     13      6
24 months   ki0047075b-MAL-ED          NEPAL                          1       228     19     15      4
24 months   ki0047075b-MAL-ED          NEPAL                          2       228     17     12      5
24 months   ki0047075b-MAL-ED          NEPAL                          3       228     17      8      9
24 months   ki0047075b-MAL-ED          NEPAL                          4       228     22     19      3
24 months   ki0047075b-MAL-ED          NEPAL                          5       228     19     13      6
24 months   ki0047075b-MAL-ED          NEPAL                          6       228     18     17      1
24 months   ki0047075b-MAL-ED          NEPAL                          7       228     17     15      2
24 months   ki0047075b-MAL-ED          NEPAL                          8       228     24     22      2
24 months   ki0047075b-MAL-ED          NEPAL                          9       228     15     13      2
24 months   ki0047075b-MAL-ED          NEPAL                          10      228     20     17      3
24 months   ki0047075b-MAL-ED          NEPAL                          11      228     24     15      9
24 months   ki0047075b-MAL-ED          NEPAL                          12      228     16     13      3
24 months   ki0047075b-MAL-ED          PERU                           1       201     30     15     15
24 months   ki0047075b-MAL-ED          PERU                           2       201     17     11      6
24 months   ki0047075b-MAL-ED          PERU                           3       201     15      8      7
24 months   ki0047075b-MAL-ED          PERU                           4       201     11      7      4
24 months   ki0047075b-MAL-ED          PERU                           5       201     19     11      8
24 months   ki0047075b-MAL-ED          PERU                           6       201     11      8      3
24 months   ki0047075b-MAL-ED          PERU                           7       201     15     11      4
24 months   ki0047075b-MAL-ED          PERU                           8       201     12      8      4
24 months   ki0047075b-MAL-ED          PERU                           9       201     21     17      4
24 months   ki0047075b-MAL-ED          PERU                           10      201     14     11      3
24 months   ki0047075b-MAL-ED          PERU                           11      201     21     13      8
24 months   ki0047075b-MAL-ED          PERU                           12      201     15      7      8
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1       238     34     21     13
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2       238     22     11     11
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3       238     14     10      4
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4       238     12     11      1
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5       238     12     10      2
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6       238     16      9      7
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7       238     22     14      8
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8       238      8      7      1
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9       238     19     14      5
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10      238     25     18      7
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11      238     23     11     12
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12      238     31     18     13
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1       214     15      6      9
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2       214     22      3     19
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3       214     18      5     13
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4       214      6      0      6
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5       214     18      4     14
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6       214     18      7     11
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7       214     23      8     15
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8       214     11      4      7
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9       214     18      6     12
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10      214     15      3     12
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11      214     24      8     16
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12      214     26      7     19
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
24 months   ki1000108-IRC              INDIA                          1       409     38     18     20
24 months   ki1000108-IRC              INDIA                          2       409     28     12     16
24 months   ki1000108-IRC              INDIA                          3       409     27     15     12
24 months   ki1000108-IRC              INDIA                          4       409     21      8     13
24 months   ki1000108-IRC              INDIA                          5       409     22      5     17
24 months   ki1000108-IRC              INDIA                          6       409     37     29      8
24 months   ki1000108-IRC              INDIA                          7       409     36     21     15
24 months   ki1000108-IRC              INDIA                          8       409     44     33     11
24 months   ki1000108-IRC              INDIA                          9       409     27     13     14
24 months   ki1000108-IRC              INDIA                          10      409     37     28      9
24 months   ki1000108-IRC              INDIA                          11      409     40     26     14
24 months   ki1000108-IRC              INDIA                          12      409     52     31     21
24 months   ki1017093-NIH-Birth        BANGLADESH                     1       429     43     14     29
24 months   ki1017093-NIH-Birth        BANGLADESH                     2       429     36     13     23
24 months   ki1017093-NIH-Birth        BANGLADESH                     3       429     39     22     17
24 months   ki1017093-NIH-Birth        BANGLADESH                     4       429     34     12     22
24 months   ki1017093-NIH-Birth        BANGLADESH                     5       429     35     12     23
24 months   ki1017093-NIH-Birth        BANGLADESH                     6       429     33     16     17
24 months   ki1017093-NIH-Birth        BANGLADESH                     7       429     34     16     18
24 months   ki1017093-NIH-Birth        BANGLADESH                     8       429     27     14     13
24 months   ki1017093-NIH-Birth        BANGLADESH                     9       429     26     14     12
24 months   ki1017093-NIH-Birth        BANGLADESH                     10      429     33     15     18
24 months   ki1017093-NIH-Birth        BANGLADESH                     11      429     43     21     22
24 months   ki1017093-NIH-Birth        BANGLADESH                     12      429     46     22     24
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
24 months   ki1101329-Keneba           GAMBIA                         1      1725    171    115     56
24 months   ki1101329-Keneba           GAMBIA                         2      1725    167    117     50
24 months   ki1101329-Keneba           GAMBIA                         3      1725    170    121     49
24 months   ki1101329-Keneba           GAMBIA                         4      1725    114     75     39
24 months   ki1101329-Keneba           GAMBIA                         5      1725    122     76     46
24 months   ki1101329-Keneba           GAMBIA                         6      1725     92     61     31
24 months   ki1101329-Keneba           GAMBIA                         7      1725     81     46     35
24 months   ki1101329-Keneba           GAMBIA                         8      1725    158    114     44
24 months   ki1101329-Keneba           GAMBIA                         9      1725    159    109     50
24 months   ki1101329-Keneba           GAMBIA                         10     1725    200    122     78
24 months   ki1101329-Keneba           GAMBIA                         11     1725    141     95     46
24 months   ki1101329-Keneba           GAMBIA                         12     1725    150     97     53
24 months   ki1113344-GMS-Nepal        NEPAL                          1       499      0      0      0
24 months   ki1113344-GMS-Nepal        NEPAL                          2       499      0      0      0
24 months   ki1113344-GMS-Nepal        NEPAL                          3       499      0      0      0
24 months   ki1113344-GMS-Nepal        NEPAL                          4       499      0      0      0
24 months   ki1113344-GMS-Nepal        NEPAL                          5       499      0      0      0
24 months   ki1113344-GMS-Nepal        NEPAL                          6       499     91     49     42
24 months   ki1113344-GMS-Nepal        NEPAL                          7       499    206    110     96
24 months   ki1113344-GMS-Nepal        NEPAL                          8       499    202    117     85
24 months   ki1113344-GMS-Nepal        NEPAL                          9       499      0      0      0
24 months   ki1113344-GMS-Nepal        NEPAL                          10      499      0      0      0
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
24 months   ki1114097-CMIN             GUINEA-BISSAU                  1       551     48     29     19
24 months   ki1114097-CMIN             GUINEA-BISSAU                  2       551     41     26     15
24 months   ki1114097-CMIN             GUINEA-BISSAU                  3       551     54     38     16
24 months   ki1114097-CMIN             GUINEA-BISSAU                  4       551     51     29     22
24 months   ki1114097-CMIN             GUINEA-BISSAU                  5       551     45     29     16
24 months   ki1114097-CMIN             GUINEA-BISSAU                  6       551     29     25      4
24 months   ki1114097-CMIN             GUINEA-BISSAU                  7       551     40     28     12
24 months   ki1114097-CMIN             GUINEA-BISSAU                  8       551     49     33     16
24 months   ki1114097-CMIN             GUINEA-BISSAU                  9       551     65     40     25
24 months   ki1114097-CMIN             GUINEA-BISSAU                  10      551     57     40     17
24 months   ki1114097-CMIN             GUINEA-BISSAU                  11      551     43     30     13
24 months   ki1114097-CMIN             GUINEA-BISSAU                  12      551     29     17     12
24 months   ki1114097-CMIN             PERU                           1       429     13     10      3
24 months   ki1114097-CMIN             PERU                           2       429     39     28     11
24 months   ki1114097-CMIN             PERU                           3       429     51     33     18
24 months   ki1114097-CMIN             PERU                           4       429     47     29     18
24 months   ki1114097-CMIN             PERU                           5       429     33     18     15
24 months   ki1114097-CMIN             PERU                           6       429     40     27     13
24 months   ki1114097-CMIN             PERU                           7       429     41     31     10
24 months   ki1114097-CMIN             PERU                           8       429     34     25      9
24 months   ki1114097-CMIN             PERU                           9       429     39     26     13
24 months   ki1114097-CMIN             PERU                           10      429     33     22     11
24 months   ki1114097-CMIN             PERU                           11      429     32     23      9
24 months   ki1114097-CMIN             PERU                           12      429     27     20      7
24 months   ki1114097-CONTENT          PERU                           1       164      7      7      0
24 months   ki1114097-CONTENT          PERU                           2       164     14     12      2
24 months   ki1114097-CONTENT          PERU                           3       164     22     20      2
24 months   ki1114097-CONTENT          PERU                           4       164     15     10      5
24 months   ki1114097-CONTENT          PERU                           5       164     14     12      2
24 months   ki1114097-CONTENT          PERU                           6       164     11     10      1
24 months   ki1114097-CONTENT          PERU                           7       164     23     21      2
24 months   ki1114097-CONTENT          PERU                           8       164     14     12      2
24 months   ki1114097-CONTENT          PERU                           9       164     17     14      3
24 months   ki1114097-CONTENT          PERU                           10      164     11     10      1
24 months   ki1114097-CONTENT          PERU                           11      164      6      5      1
24 months   ki1114097-CONTENT          PERU                           12      164     10     10      0
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1       457     52     18     34
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2       457     66     20     46
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3       457     61     21     40
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4       457     46     20     26
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5       457     53     21     32
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6       457     48     18     30
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7       457     28      5     23
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8       457     31      9     22
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9       457      3      1      2
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10      457      6      5      1
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11      457     25     10     15
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12      457     38     11     27
24 months   ki1148112-LCNI-5           MALAWI                         1       579     41     27     14
24 months   ki1148112-LCNI-5           MALAWI                         2       579     30     23      7
24 months   ki1148112-LCNI-5           MALAWI                         3       579     19     11      8
24 months   ki1148112-LCNI-5           MALAWI                         4       579     28     17     11
24 months   ki1148112-LCNI-5           MALAWI                         5       579     31     18     13
24 months   ki1148112-LCNI-5           MALAWI                         6       579     24     10     14
24 months   ki1148112-LCNI-5           MALAWI                         7       579     47     23     24
24 months   ki1148112-LCNI-5           MALAWI                         8       579     71     47     24
24 months   ki1148112-LCNI-5           MALAWI                         9       579     67     40     27
24 months   ki1148112-LCNI-5           MALAWI                         10      579     93     44     49
24 months   ki1148112-LCNI-5           MALAWI                         11      579     64     33     31
24 months   ki1148112-LCNI-5           MALAWI                         12      579     64     30     34


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
* agecat: 12 months, studyid: ki1101329-Keneba, country: GAMBIA
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
* agecat: 18 months, studyid: ki1101329-Keneba, country: GAMBIA
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
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
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
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
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
* agecat: 9 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 9 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 9 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 9 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 9 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 9 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 9 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 9 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 9 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 9 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 9 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 9 months, studyid: ki1148112-LCNI-5, country: MALAWI
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
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: Birth, studyid: ki1114097-CMIN, country: PERU
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE

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
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: Birth, studyid: ki1114097-CMIN, country: PERU
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
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
* agecat: 3 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 3 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
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
* agecat: 9 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 9 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 9 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 9 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 9 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 9 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 9 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 9 months, studyid: ki1114097-CONTENT, country: PERU
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
* agecat: 12 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 12 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 12 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 12 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 12 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 12 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 12 months, studyid: ki1114097-CMIN, country: PERU
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
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/90ecdafb-90ed-46f6-ad16-1a707b932828/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->


```
## Warning: Removed 36 rows containing missing values (geom_errorbar).
```

![](/tmp/90ecdafb-90ed-46f6-ad16-1a707b932828/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/90ecdafb-90ed-46f6-ad16-1a707b932828/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/90ecdafb-90ed-46f6-ad16-1a707b932828/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1284541   0.1105318   0.1463763
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.1506196   0.1289741   0.1722652
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3                    NA                0.1164797   0.0980102   0.1349492
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       4                    NA                0.1102123   0.0906948   0.1297298
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       5                    NA                0.1262327   0.1057905   0.1466750
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       6                    NA                0.1145374   0.0960096   0.1330653
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       7                    NA                0.1023018   0.0849589   0.1196447
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       8                    NA                0.0742219   0.0597072   0.0887366
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       9                    NA                0.0633205   0.0500558   0.0765851
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       10                   NA                0.0798845   0.0633988   0.0963702
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       11                   NA                0.0932994   0.0766967   0.1099021
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       12                   NA                0.0928690   0.0764872   0.1092507
3 months    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.3166667   0.1988596   0.4344737
3 months    ki1017093-NIH-Birth        BANGLADESH                     2                    NA                0.1568627   0.0569655   0.2567600
3 months    ki1017093-NIH-Birth        BANGLADESH                     3                    NA                0.1132075   0.0278307   0.1985844
3 months    ki1017093-NIH-Birth        BANGLADESH                     4                    NA                0.1956522   0.0809122   0.3103921
3 months    ki1017093-NIH-Birth        BANGLADESH                     5                    NA                0.1521739   0.0482839   0.2560640
3 months    ki1017093-NIH-Birth        BANGLADESH                     6                    NA                0.2954545   0.1605263   0.4303828
3 months    ki1017093-NIH-Birth        BANGLADESH                     7                    NA                0.2631579   0.1230273   0.4032885
3 months    ki1017093-NIH-Birth        BANGLADESH                     8                    NA                0.2702703   0.1270486   0.4134919
3 months    ki1017093-NIH-Birth        BANGLADESH                     9                    NA                0.2790698   0.1448866   0.4132530
3 months    ki1017093-NIH-Birth        BANGLADESH                     10                   NA                0.2826087   0.1523756   0.4128418
3 months    ki1017093-NIH-Birth        BANGLADESH                     11                   NA                0.2692308   0.1485661   0.3898955
3 months    ki1017093-NIH-Birth        BANGLADESH                     12                   NA                0.1666667   0.0671797   0.2661536
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0613497   0.0245023   0.0981971
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.0755814   0.0360702   0.1150926
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                0.0559006   0.0204073   0.0913940
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                0.0621469   0.0265728   0.0977209
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    NA                0.0517241   0.0188100   0.0846383
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    NA                0.0625000   0.0249847   0.1000153
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    NA                0.0478469   0.0189035   0.0767903
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    NA                0.0821918   0.0458077   0.1185758
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    NA                0.0622010   0.0294501   0.0949518
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   NA                0.0504202   0.0226152   0.0782251
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   NA                0.0651163   0.0321289   0.0981036
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   NA                0.0410256   0.0131800   0.0688713
3 months    ki1101329-Keneba           GAMBIA                         1                    NA                0.1710526   0.1221640   0.2199413
3 months    ki1101329-Keneba           GAMBIA                         2                    NA                0.1065990   0.0634953   0.1497026
3 months    ki1101329-Keneba           GAMBIA                         3                    NA                0.0948276   0.0571193   0.1325358
3 months    ki1101329-Keneba           GAMBIA                         4                    NA                0.1176471   0.0665832   0.1687109
3 months    ki1101329-Keneba           GAMBIA                         5                    NA                0.1333333   0.0789210   0.1877456
3 months    ki1101329-Keneba           GAMBIA                         6                    NA                0.1230769   0.0665904   0.1795634
3 months    ki1101329-Keneba           GAMBIA                         7                    NA                0.1632653   0.0900714   0.2364592
3 months    ki1101329-Keneba           GAMBIA                         8                    NA                0.1413043   0.0909617   0.1916470
3 months    ki1101329-Keneba           GAMBIA                         9                    NA                0.1865285   0.1315602   0.2414968
3 months    ki1101329-Keneba           GAMBIA                         10                   NA                0.1746032   0.1277214   0.2214850
3 months    ki1101329-Keneba           GAMBIA                         11                   NA                0.1363636   0.0856522   0.1870750
3 months    ki1101329-Keneba           GAMBIA                         12                   NA                0.1725888   0.1198074   0.2253703
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1657579   0.1416882   0.1898276
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.1651786   0.1371009   0.1932562
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       3                    NA                0.1741778   0.1482337   0.2001220
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       4                    NA                0.1879699   0.1582744   0.2176655
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       5                    NA                0.2080925   0.1778454   0.2383396
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       6                    NA                0.2630923   0.2326172   0.2935674
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       7                    NA                0.2007673   0.1726902   0.2288443
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       8                    NA                0.1707892   0.1454740   0.1961043
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       9                    NA                0.1514393   0.1265817   0.1762969
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       10                   NA                0.1698718   0.1404064   0.1993372
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       11                   NA                0.1646259   0.1378146   0.1914371
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       12                   NA                0.1209581   0.0988398   0.1430763
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
6 months    ki1000108-IRC              INDIA                          1                    NA                0.2894737   0.1451010   0.4338464
6 months    ki1000108-IRC              INDIA                          2                    NA                0.4642857   0.2793322   0.6492392
6 months    ki1000108-IRC              INDIA                          3                    NA                0.2962963   0.1238482   0.4687444
6 months    ki1000108-IRC              INDIA                          4                    NA                0.2857143   0.0922617   0.4791669
6 months    ki1000108-IRC              INDIA                          5                    NA                0.3333333   0.1314658   0.5352008
6 months    ki1000108-IRC              INDIA                          6                    NA                0.1351351   0.0248442   0.2454260
6 months    ki1000108-IRC              INDIA                          7                    NA                0.3055556   0.1548966   0.4562145
6 months    ki1000108-IRC              INDIA                          8                    NA                0.1363636   0.0348392   0.2378881
6 months    ki1000108-IRC              INDIA                          9                    NA                0.2592593   0.0937582   0.4247603
6 months    ki1000108-IRC              INDIA                          10                   NA                0.1351351   0.0248442   0.2454260
6 months    ki1000108-IRC              INDIA                          11                   NA                0.1750000   0.0571042   0.2928958
6 months    ki1000108-IRC              INDIA                          12                   NA                0.2745098   0.1518812   0.3971384
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.2884615   0.1652094   0.4117136
6 months    ki1017093-NIH-Birth        BANGLADESH                     2                    NA                0.2857143   0.1591076   0.4123210
6 months    ki1017093-NIH-Birth        BANGLADESH                     3                    NA                0.2400000   0.1215104   0.3584896
6 months    ki1017093-NIH-Birth        BANGLADESH                     4                    NA                0.2380952   0.1091653   0.3670252
6 months    ki1017093-NIH-Birth        BANGLADESH                     5                    NA                0.2142857   0.0900756   0.3384959
6 months    ki1017093-NIH-Birth        BANGLADESH                     6                    NA                0.3720930   0.2274851   0.5167009
6 months    ki1017093-NIH-Birth        BANGLADESH                     7                    NA                0.2820513   0.1406897   0.4234128
6 months    ki1017093-NIH-Birth        BANGLADESH                     8                    NA                0.2000000   0.0673587   0.3326413
6 months    ki1017093-NIH-Birth        BANGLADESH                     9                    NA                0.3095238   0.1695813   0.4494663
6 months    ki1017093-NIH-Birth        BANGLADESH                     10                   NA                0.2380952   0.1091653   0.3670252
6 months    ki1017093-NIH-Birth        BANGLADESH                     11                   NA                0.3400000   0.2085746   0.4714254
6 months    ki1017093-NIH-Birth        BANGLADESH                     12                   NA                0.1960784   0.0870124   0.3051445
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1126761   0.0606564   0.1646958
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.0805369   0.0368324   0.1242415
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                0.0857143   0.0393313   0.1320973
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                0.0915033   0.0458061   0.1372004
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    NA                0.1275168   0.0739465   0.1810871
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    NA                0.1188811   0.0658219   0.1719403
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    NA                0.1025641   0.0599712   0.1451570
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    NA                0.1407035   0.0923807   0.1890264
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    NA                0.0760870   0.0377677   0.1144062
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   NA                0.1153846   0.0719561   0.1588131
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   NA                0.0666667   0.0316471   0.1016862
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   NA                0.0465116   0.0150320   0.0779912
6 months    ki1101329-Keneba           GAMBIA                         1                    NA                0.1285714   0.0832889   0.1738539
6 months    ki1101329-Keneba           GAMBIA                         2                    NA                0.1122995   0.0670354   0.1575635
6 months    ki1101329-Keneba           GAMBIA                         3                    NA                0.1402715   0.0944762   0.1860668
6 months    ki1101329-Keneba           GAMBIA                         4                    NA                0.1048951   0.0546610   0.1551292
6 months    ki1101329-Keneba           GAMBIA                         5                    NA                0.1398601   0.0829990   0.1967213
6 months    ki1101329-Keneba           GAMBIA                         6                    NA                0.1864407   0.1161535   0.2567278
6 months    ki1101329-Keneba           GAMBIA                         7                    NA                0.2065217   0.1237831   0.2892604
6 months    ki1101329-Keneba           GAMBIA                         8                    NA                0.1436782   0.0915477   0.1958086
6 months    ki1101329-Keneba           GAMBIA                         9                    NA                0.1609195   0.1063081   0.2155310
6 months    ki1101329-Keneba           GAMBIA                         10                   NA                0.1612903   0.1155040   0.2070767
6 months    ki1101329-Keneba           GAMBIA                         11                   NA                0.1283422   0.0803922   0.1762923
6 months    ki1101329-Keneba           GAMBIA                         12                   NA                0.1197917   0.0738499   0.1657334
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1775819   0.1509985   0.2041652
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.1737649   0.1431108   0.2044190
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3                    NA                0.2143826   0.1847520   0.2440133
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       4                    NA                0.1792453   0.1494343   0.2090563
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       5                    NA                0.1694079   0.1395896   0.1992262
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       6                    NA                0.1627907   0.1342985   0.1912829
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       7                    NA                0.1880878   0.1577629   0.2184126
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       8                    NA                0.1407507   0.1157938   0.1657075
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       9                    NA                0.1295060   0.1054590   0.1535530
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       10                   NA                0.1666667   0.1368450   0.1964884
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       11                   NA                0.1581699   0.1323106   0.1840293
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       12                   NA                0.1430380   0.1186224   0.1674536
6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                0.4411765   0.3230911   0.5592618
6 months    ki1148112-LCNI-5           MALAWI                         2                    NA                0.2826087   0.1524123   0.4128051
6 months    ki1148112-LCNI-5           MALAWI                         3                    NA                0.4230769   0.2330614   0.6130924
6 months    ki1148112-LCNI-5           MALAWI                         4                    NA                0.4102564   0.2557900   0.5647228
6 months    ki1148112-LCNI-5           MALAWI                         5                    NA                0.3636364   0.2214143   0.5058585
6 months    ki1148112-LCNI-5           MALAWI                         6                    NA                0.4411765   0.2741785   0.6081744
6 months    ki1148112-LCNI-5           MALAWI                         7                    NA                0.3278689   0.2099945   0.4457432
6 months    ki1148112-LCNI-5           MALAWI                         8                    NA                0.2903226   0.1980152   0.3826300
6 months    ki1148112-LCNI-5           MALAWI                         9                    NA                0.3655914   0.2676541   0.4635287
6 months    ki1148112-LCNI-5           MALAWI                         10                   NA                0.4518519   0.3678503   0.5358534
6 months    ki1148112-LCNI-5           MALAWI                         11                   NA                0.3333333   0.2431126   0.4235540
6 months    ki1148112-LCNI-5           MALAWI                         12                   NA                0.3263158   0.2319765   0.4206551
9 months    ki1000108-IRC              INDIA                          1                    NA                0.3684211   0.2148616   0.5219805
9 months    ki1000108-IRC              INDIA                          2                    NA                0.3928571   0.2117373   0.5739770
9 months    ki1000108-IRC              INDIA                          3                    NA                0.1851852   0.0384842   0.3318862
9 months    ki1000108-IRC              INDIA                          4                    NA                0.4761905   0.2623206   0.6900604
9 months    ki1000108-IRC              INDIA                          5                    NA                0.4761905   0.2623206   0.6900604
9 months    ki1000108-IRC              INDIA                          6                    NA                0.1351351   0.0248442   0.2454260
9 months    ki1000108-IRC              INDIA                          7                    NA                0.2500000   0.1083777   0.3916223
9 months    ki1000108-IRC              INDIA                          8                    NA                0.1818182   0.0677145   0.2959218
9 months    ki1000108-IRC              INDIA                          9                    NA                0.2962963   0.1238482   0.4687444
9 months    ki1000108-IRC              INDIA                          10                   NA                0.1621622   0.0432473   0.2810770
9 months    ki1000108-IRC              INDIA                          11                   NA                0.2250000   0.0954330   0.3545670
9 months    ki1000108-IRC              INDIA                          12                   NA                0.3137255   0.1862223   0.4412287
9 months    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.4509804   0.3142817   0.5876791
9 months    ki1017093-NIH-Birth        BANGLADESH                     2                    NA                0.3488372   0.2062440   0.4914304
9 months    ki1017093-NIH-Birth        BANGLADESH                     3                    NA                0.3260870   0.1904848   0.4616891
9 months    ki1017093-NIH-Birth        BANGLADESH                     4                    NA                0.2500000   0.1156779   0.3843221
9 months    ki1017093-NIH-Birth        BANGLADESH                     5                    NA                0.3170732   0.1744954   0.4596509
9 months    ki1017093-NIH-Birth        BANGLADESH                     6                    NA                0.3409091   0.2007109   0.4811073
9 months    ki1017093-NIH-Birth        BANGLADESH                     7                    NA                0.3333333   0.1852391   0.4814276
9 months    ki1017093-NIH-Birth        BANGLADESH                     8                    NA                0.4285714   0.2450907   0.6120521
9 months    ki1017093-NIH-Birth        BANGLADESH                     9                    NA                0.3714286   0.2111934   0.5316637
9 months    ki1017093-NIH-Birth        BANGLADESH                     10                   NA                0.3658537   0.2182717   0.5134356
9 months    ki1017093-NIH-Birth        BANGLADESH                     11                   NA                0.4166667   0.2770591   0.5562742
9 months    ki1017093-NIH-Birth        BANGLADESH                     12                   NA                0.3333333   0.2038287   0.4628380
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1544715   0.0905856   0.2183575
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.1094891   0.0571875   0.1617906
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                0.1639344   0.0982224   0.2296465
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                0.2461538   0.1720838   0.3202239
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    NA                0.2000000   0.1312207   0.2687793
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    NA                0.1451613   0.0831421   0.2071805
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    NA                0.1751412   0.1191311   0.2311514
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    NA                0.1491713   0.0972561   0.2010864
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    NA                0.0920245   0.0476366   0.1364125
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   NA                0.1375661   0.0884463   0.1866860
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   NA                0.1183432   0.0696299   0.1670565
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   NA                0.1118881   0.0602075   0.1635687
9 months    ki1101329-Keneba           GAMBIA                         1                    NA                0.1886792   0.1359995   0.2413590
9 months    ki1101329-Keneba           GAMBIA                         2                    NA                0.1497326   0.0985799   0.2008853
9 months    ki1101329-Keneba           GAMBIA                         3                    NA                0.1527778   0.1047873   0.2007683
9 months    ki1101329-Keneba           GAMBIA                         4                    NA                0.1851852   0.1196433   0.2507271
9 months    ki1101329-Keneba           GAMBIA                         5                    NA                0.1739130   0.1106584   0.2371677
9 months    ki1101329-Keneba           GAMBIA                         6                    NA                0.2190476   0.1399178   0.2981774
9 months    ki1101329-Keneba           GAMBIA                         7                    NA                0.2551020   0.1687753   0.3414288
9 months    ki1101329-Keneba           GAMBIA                         8                    NA                0.1304348   0.0817613   0.1791082
9 months    ki1101329-Keneba           GAMBIA                         9                    NA                0.1477273   0.0952929   0.2001617
9 months    ki1101329-Keneba           GAMBIA                         10                   NA                0.1991701   0.1487357   0.2496045
9 months    ki1101329-Keneba           GAMBIA                         11                   NA                0.1925134   0.1359897   0.2490371
9 months    ki1101329-Keneba           GAMBIA                         12                   NA                0.2127660   0.1542496   0.2712823
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.2107330   0.1818123   0.2396536
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.2039152   0.1720181   0.2358122
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       3                    NA                0.1821138   0.1516098   0.2126178
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       4                    NA                0.1648352   0.1337115   0.1959589
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       5                    NA                0.2220217   0.1874116   0.2566318
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       6                    NA                0.2152104   0.1828070   0.2476137
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       7                    NA                0.1965812   0.1643749   0.2287875
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       8                    NA                0.1868759   0.1580175   0.2157343
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       9                    NA                0.1826923   0.1546209   0.2107637
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       10                   NA                0.2206655   0.1866492   0.2546818
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       11                   NA                0.1862170   0.1569992   0.2154349
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       12                   NA                0.2048711   0.1749272   0.2348149
9 months    ki1148112-LCNI-5           MALAWI                         1                    NA                0.4117647   0.2765916   0.5469378
9 months    ki1148112-LCNI-5           MALAWI                         2                    NA                0.1428571   0.0268409   0.2588734
9 months    ki1148112-LCNI-5           MALAWI                         3                    NA                0.4000000   0.1851348   0.6148652
9 months    ki1148112-LCNI-5           MALAWI                         4                    NA                0.2800000   0.1038630   0.4561370
9 months    ki1148112-LCNI-5           MALAWI                         5                    NA                0.3125000   0.1517830   0.4732170
9 months    ki1148112-LCNI-5           MALAWI                         6                    NA                0.4166667   0.2192779   0.6140555
9 months    ki1148112-LCNI-5           MALAWI                         7                    NA                0.3541667   0.2187666   0.4895667
9 months    ki1148112-LCNI-5           MALAWI                         8                    NA                0.2469136   0.1529352   0.3408919
9 months    ki1148112-LCNI-5           MALAWI                         9                    NA                0.3125000   0.2108537   0.4141463
9 months    ki1148112-LCNI-5           MALAWI                         10                   NA                0.4070796   0.3164283   0.4977309
9 months    ki1148112-LCNI-5           MALAWI                         11                   NA                0.3086420   0.2079692   0.4093147
9 months    ki1148112-LCNI-5           MALAWI                         12                   NA                0.3648649   0.2551012   0.4746285
12 months   ki1000108-IRC              INDIA                          1                    NA                0.4054054   0.2470117   0.5637991
12 months   ki1000108-IRC              INDIA                          2                    NA                0.5000000   0.3145723   0.6854277
12 months   ki1000108-IRC              INDIA                          3                    NA                0.2592593   0.0937577   0.4247608
12 months   ki1000108-IRC              INDIA                          4                    NA                0.5500000   0.3316988   0.7683012
12 months   ki1000108-IRC              INDIA                          5                    NA                0.5238095   0.3099390   0.7376801
12 months   ki1000108-IRC              INDIA                          6                    NA                0.1351351   0.0248439   0.2454264
12 months   ki1000108-IRC              INDIA                          7                    NA                0.1666667   0.0447772   0.2885561
12 months   ki1000108-IRC              INDIA                          8                    NA                0.1818182   0.0677142   0.2959222
12 months   ki1000108-IRC              INDIA                          9                    NA                0.3333333   0.1553024   0.5113643
12 months   ki1000108-IRC              INDIA                          10                   NA                0.1315789   0.0239696   0.2391883
12 months   ki1000108-IRC              INDIA                          11                   NA                0.2750000   0.1364556   0.4135444
12 months   ki1000108-IRC              INDIA                          12                   NA                0.3333333   0.2037968   0.4628699
12 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.4347826   0.2913804   0.5781848
12 months   ki1017093-NIH-Birth        BANGLADESH                     2                    NA                0.3488372   0.2062394   0.4914350
12 months   ki1017093-NIH-Birth        BANGLADESH                     3                    NA                0.3111111   0.1757117   0.4465106
12 months   ki1017093-NIH-Birth        BANGLADESH                     4                    NA                0.3421053   0.1911122   0.4930984
12 months   ki1017093-NIH-Birth        BANGLADESH                     5                    NA                0.2820513   0.1406774   0.4234252
12 months   ki1017093-NIH-Birth        BANGLADESH                     6                    NA                0.3947368   0.2391672   0.5503065
12 months   ki1017093-NIH-Birth        BANGLADESH                     7                    NA                0.3947368   0.2391672   0.5503065
12 months   ki1017093-NIH-Birth        BANGLADESH                     8                    NA                0.4000000   0.2245167   0.5754833
12 months   ki1017093-NIH-Birth        BANGLADESH                     9                    NA                0.4117647   0.2461681   0.5773613
12 months   ki1017093-NIH-Birth        BANGLADESH                     10                   NA                0.3414634   0.1961650   0.4867618
12 months   ki1017093-NIH-Birth        BANGLADESH                     11                   NA                0.4081633   0.2704072   0.5459193
12 months   ki1017093-NIH-Birth        BANGLADESH                     12                   NA                0.4200000   0.2830555   0.5569445
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2043011   0.1223288   0.2862733
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.1565217   0.0900903   0.2229532
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                0.1855670   0.1081760   0.2629581
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                0.2477064   0.1666388   0.3287741
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    NA                0.1481481   0.0811262   0.2151701
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    NA                0.1926606   0.1185961   0.2667250
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    NA                0.1689189   0.1085340   0.2293038
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    NA                0.1744966   0.1135348   0.2354585
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    NA                0.1450382   0.0847159   0.2053604
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   NA                0.0958904   0.0481133   0.1436676
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   NA                0.1417323   0.0810527   0.2024118
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   NA                0.1607143   0.0926731   0.2287554
12 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.2707182   0.2059702   0.3354663
12 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.2191011   0.1583199   0.2798823
12 months   ki1101329-Keneba           GAMBIA                         3                    NA                0.2216495   0.1631867   0.2801123
12 months   ki1101329-Keneba           GAMBIA                         4                    NA                0.2014925   0.1335603   0.2694248
12 months   ki1101329-Keneba           GAMBIA                         5                    NA                0.2302158   0.1602148   0.3002168
12 months   ki1101329-Keneba           GAMBIA                         6                    NA                0.1949153   0.1234225   0.2664081
12 months   ki1101329-Keneba           GAMBIA                         7                    NA                0.2448980   0.1597367   0.3300592
12 months   ki1101329-Keneba           GAMBIA                         8                    NA                0.2411765   0.1768525   0.3055005
12 months   ki1101329-Keneba           GAMBIA                         9                    NA                0.2613636   0.1964343   0.3262930
12 months   ki1101329-Keneba           GAMBIA                         10                   NA                0.2977778   0.2380121   0.3575434
12 months   ki1101329-Keneba           GAMBIA                         11                   NA                0.2601156   0.1947271   0.3255042
12 months   ki1101329-Keneba           GAMBIA                         12                   NA                0.2901235   0.2202222   0.3600247
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.2483871   0.2143740   0.2824002
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.2534653   0.2155235   0.2914072
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                    NA                0.2467742   0.2128354   0.2807130
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                    NA                0.2316832   0.1948828   0.2684835
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                    NA                0.2430830   0.2057058   0.2804602
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                    NA                0.2632509   0.2269667   0.2995350
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                    NA                0.2738516   0.2371113   0.3105919
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                    NA                0.2411003   0.2073734   0.2748273
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                    NA                0.2274194   0.1944227   0.2604160
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       10                   NA                0.2645161   0.2244233   0.3046089
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       11                   NA                0.2334495   0.1988403   0.2680586
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       12                   NA                0.2123288   0.1791584   0.2454992
12 months   ki1148112-LCNI-5           MALAWI                         1                    NA                0.4615385   0.3259337   0.5971432
12 months   ki1148112-LCNI-5           MALAWI                         2                    NA                0.2894737   0.1451631   0.4337842
12 months   ki1148112-LCNI-5           MALAWI                         3                    NA                0.4500000   0.2317934   0.6682066
12 months   ki1148112-LCNI-5           MALAWI                         4                    NA                0.3571429   0.1795218   0.5347639
12 months   ki1148112-LCNI-5           MALAWI                         5                    NA                0.4242424   0.2554841   0.5930007
12 months   ki1148112-LCNI-5           MALAWI                         6                    NA                0.4583333   0.2588317   0.6578349
12 months   ki1148112-LCNI-5           MALAWI                         7                    NA                0.3478261   0.2100800   0.4855721
12 months   ki1148112-LCNI-5           MALAWI                         8                    NA                0.3333333   0.2286345   0.4380321
12 months   ki1148112-LCNI-5           MALAWI                         9                    NA                0.3043478   0.1956923   0.4130034
12 months   ki1148112-LCNI-5           MALAWI                         10                   NA                0.4895833   0.3895061   0.5896606
12 months   ki1148112-LCNI-5           MALAWI                         11                   NA                0.4000000   0.2851445   0.5148555
12 months   ki1148112-LCNI-5           MALAWI                         12                   NA                0.4166667   0.3026990   0.5306344
18 months   ki1000108-IRC              INDIA                          1                    NA                0.3947368   0.2391334   0.5503402
18 months   ki1000108-IRC              INDIA                          2                    NA                0.4285714   0.2450451   0.6120978
18 months   ki1000108-IRC              INDIA                          3                    NA                0.3703704   0.1879960   0.5527447
18 months   ki1000108-IRC              INDIA                          4                    NA                0.4761905   0.2623193   0.6900617
18 months   ki1000108-IRC              INDIA                          5                    NA                0.5454545   0.3371295   0.7537796
18 months   ki1000108-IRC              INDIA                          6                    NA                0.1351351   0.0248436   0.2454267
18 months   ki1000108-IRC              INDIA                          7                    NA                0.2777778   0.1312845   0.4242711
18 months   ki1000108-IRC              INDIA                          8                    NA                0.3023256   0.1648851   0.4397660
18 months   ki1000108-IRC              INDIA                          9                    NA                0.5555556   0.3678939   0.7432172
18 months   ki1000108-IRC              INDIA                          10                   NA                0.1714286   0.0464149   0.2964422
18 months   ki1000108-IRC              INDIA                          11                   NA                0.4000000   0.2479941   0.5520059
18 months   ki1000108-IRC              INDIA                          12                   NA                0.3921569   0.2579961   0.5263176
18 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.6444444   0.5044348   0.7844540
18 months   ki1017093-NIH-Birth        BANGLADESH                     2                    NA                0.6285714   0.4683212   0.7888216
18 months   ki1017093-NIH-Birth        BANGLADESH                     3                    NA                0.5227273   0.3749825   0.6704721
18 months   ki1017093-NIH-Birth        BANGLADESH                     4                    NA                0.6666667   0.5125108   0.8208225
18 months   ki1017093-NIH-Birth        BANGLADESH                     5                    NA                0.6486486   0.4946587   0.8026386
18 months   ki1017093-NIH-Birth        BANGLADESH                     6                    NA                0.6410256   0.4903113   0.7917400
18 months   ki1017093-NIH-Birth        BANGLADESH                     7                    NA                0.6111111   0.4516924   0.7705298
18 months   ki1017093-NIH-Birth        BANGLADESH                     8                    NA                0.5000000   0.3146005   0.6853995
18 months   ki1017093-NIH-Birth        BANGLADESH                     9                    NA                0.6000000   0.4375240   0.7624760
18 months   ki1017093-NIH-Birth        BANGLADESH                     10                   NA                0.6216216   0.4651834   0.7780599
18 months   ki1017093-NIH-Birth        BANGLADESH                     11                   NA                0.5227273   0.3749825   0.6704721
18 months   ki1017093-NIH-Birth        BANGLADESH                     12                   NA                0.4680851   0.3252772   0.6108930
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.3239437   0.2150339   0.4328534
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.1500000   0.0717148   0.2282852
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                0.2916667   0.1866240   0.3967093
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                0.3023256   0.2052110   0.3994402
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    NA                0.2105263   0.1188230   0.3022296
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    NA                0.2058824   0.1097284   0.3020363
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    NA                0.2528736   0.1614919   0.3442552
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    NA                0.1979167   0.1181750   0.2776583
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    NA                0.2674419   0.1738461   0.3610376
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   NA                0.2300000   0.1474762   0.3125238
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   NA                0.2168675   0.1281630   0.3055720
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   NA                0.2533333   0.1548532   0.3518135
18 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.2990196   0.2361778   0.3618614
18 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.3258427   0.2569718   0.3947136
18 months   ki1101329-Keneba           GAMBIA                         3                    NA                0.3582090   0.2919067   0.4245112
18 months   ki1101329-Keneba           GAMBIA                         4                    NA                0.3455882   0.2656423   0.4255342
18 months   ki1101329-Keneba           GAMBIA                         5                    NA                0.3333333   0.2537929   0.4128738
18 months   ki1101329-Keneba           GAMBIA                         6                    NA                0.3693694   0.2795609   0.4591779
18 months   ki1101329-Keneba           GAMBIA                         7                    NA                0.4044944   0.3025026   0.5064862
18 months   ki1101329-Keneba           GAMBIA                         8                    NA                0.2727273   0.2023693   0.3430853
18 months   ki1101329-Keneba           GAMBIA                         9                    NA                0.2916667   0.2229173   0.3604160
18 months   ki1101329-Keneba           GAMBIA                         10                   NA                0.3605769   0.2953056   0.4258483
18 months   ki1101329-Keneba           GAMBIA                         11                   NA                0.2592593   0.1917593   0.3267593
18 months   ki1101329-Keneba           GAMBIA                         12                   NA                0.2937853   0.2266644   0.3609062
18 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                0.2727273   0.1731858   0.3722687
18 months   ki1114097-CMIN             GUINEA-BISSAU                  2                    NA                0.2950820   0.1805539   0.4096101
18 months   ki1114097-CMIN             GUINEA-BISSAU                  3                    NA                0.2333333   0.1262425   0.3404242
18 months   ki1114097-CMIN             GUINEA-BISSAU                  4                    NA                0.2727273   0.1549483   0.3905063
18 months   ki1114097-CMIN             GUINEA-BISSAU                  5                    NA                0.3333333   0.1998862   0.4667805
18 months   ki1114097-CMIN             GUINEA-BISSAU                  6                    NA                0.2666667   0.1083193   0.4250140
18 months   ki1114097-CMIN             GUINEA-BISSAU                  7                    NA                0.2307692   0.0984505   0.3630879
18 months   ki1114097-CMIN             GUINEA-BISSAU                  8                    NA                0.2580645   0.1490743   0.3670548
18 months   ki1114097-CMIN             GUINEA-BISSAU                  9                    NA                0.3163265   0.2241935   0.4084596
18 months   ki1114097-CMIN             GUINEA-BISSAU                  10                   NA                0.2584270   0.1674174   0.3494366
18 months   ki1114097-CMIN             GUINEA-BISSAU                  11                   NA                0.3333333   0.2168511   0.4498156
18 months   ki1114097-CMIN             GUINEA-BISSAU                  12                   NA                0.2777778   0.1742506   0.3813049
18 months   ki1114097-CMIN             PERU                           1                    NA                0.3076923   0.1301042   0.4852804
18 months   ki1114097-CMIN             PERU                           2                    NA                0.3469388   0.2135258   0.4803517
18 months   ki1114097-CMIN             PERU                           3                    NA                0.2909091   0.1707544   0.4110638
18 months   ki1114097-CMIN             PERU                           4                    NA                0.2826087   0.1523567   0.4128607
18 months   ki1114097-CMIN             PERU                           5                    NA                0.3235294   0.1661186   0.4809402
18 months   ki1114097-CMIN             PERU                           6                    NA                0.3421053   0.1911115   0.4930990
18 months   ki1114097-CMIN             PERU                           7                    NA                0.2702703   0.1270278   0.4135128
18 months   ki1114097-CMIN             PERU                           8                    NA                0.3125000   0.1812397   0.4437603
18 months   ki1114097-CMIN             PERU                           9                    NA                0.3571429   0.2120834   0.5022024
18 months   ki1114097-CMIN             PERU                           10                   NA                0.3809524   0.2339361   0.5279686
18 months   ki1114097-CMIN             PERU                           11                   NA                0.2424242   0.0960594   0.3887891
18 months   ki1114097-CMIN             PERU                           12                   NA                0.3076923   0.1626922   0.4526924
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.5314010   0.4634021   0.5993999
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                0.5108696   0.4386203   0.5831189
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                    NA                0.4583333   0.3769284   0.5397383
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                    NA                0.4598540   0.3763744   0.5433336
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                    NA                0.4529915   0.3627670   0.5432159
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                    NA                0.3851351   0.3067126   0.4635576
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                    NA                0.5420561   0.4476257   0.6364864
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                    NA                0.4242424   0.3399060   0.5085788
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                    NA                0.4545455   0.3657991   0.5432918
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       10                   NA                0.4903846   0.3942791   0.5864901
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       11                   NA                0.5070423   0.4247881   0.5892964
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       12                   NA                0.4670659   0.3913751   0.5427566
18 months   ki1148112-LCNI-5           MALAWI                         1                    NA                0.4464286   0.3161369   0.5767202
18 months   ki1148112-LCNI-5           MALAWI                         2                    NA                0.2857143   0.1489965   0.4224321
18 months   ki1148112-LCNI-5           MALAWI                         3                    NA                0.5217391   0.3174511   0.7260272
18 months   ki1148112-LCNI-5           MALAWI                         4                    NA                0.4117647   0.2462226   0.5773068
18 months   ki1148112-LCNI-5           MALAWI                         5                    NA                0.3714286   0.2112410   0.5316161
18 months   ki1148112-LCNI-5           MALAWI                         6                    NA                0.5806452   0.4068198   0.7544705
18 months   ki1148112-LCNI-5           MALAWI                         7                    NA                0.4629630   0.3298789   0.5960471
18 months   ki1148112-LCNI-5           MALAWI                         8                    NA                0.3924051   0.2846572   0.5001529
18 months   ki1148112-LCNI-5           MALAWI                         9                    NA                0.3529412   0.2512785   0.4546038
18 months   ki1148112-LCNI-5           MALAWI                         10                   NA                0.5689655   0.4787839   0.6591471
18 months   ki1148112-LCNI-5           MALAWI                         11                   NA                0.5000000   0.3917044   0.6082956
18 months   ki1148112-LCNI-5           MALAWI                         12                   NA                0.5227273   0.4182968   0.6271578
24 months   ki1000108-IRC              INDIA                          1                    NA                0.5263158   0.3673676   0.6852640
24 months   ki1000108-IRC              INDIA                          2                    NA                0.5714286   0.3879044   0.7549527
24 months   ki1000108-IRC              INDIA                          3                    NA                0.4444444   0.2567851   0.6321038
24 months   ki1000108-IRC              INDIA                          4                    NA                0.6190476   0.4110936   0.8270017
24 months   ki1000108-IRC              INDIA                          5                    NA                0.7727273   0.5973977   0.9480568
24 months   ki1000108-IRC              INDIA                          6                    NA                0.2162162   0.0834092   0.3490232
24 months   ki1000108-IRC              INDIA                          7                    NA                0.4166667   0.2554235   0.5779098
24 months   ki1000108-IRC              INDIA                          8                    NA                0.2500000   0.1218986   0.3781014
24 months   ki1000108-IRC              INDIA                          9                    NA                0.5185185   0.3298195   0.7072176
24 months   ki1000108-IRC              INDIA                          10                   NA                0.2432432   0.1048301   0.3816564
24 months   ki1000108-IRC              INDIA                          11                   NA                0.3500000   0.2020073   0.4979927
24 months   ki1000108-IRC              INDIA                          12                   NA                0.4038462   0.2703204   0.5373719
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.6744186   0.5341969   0.8146403
24 months   ki1017093-NIH-Birth        BANGLADESH                     2                    NA                0.6388889   0.4818032   0.7959746
24 months   ki1017093-NIH-Birth        BANGLADESH                     3                    NA                0.4358974   0.2800880   0.5917069
24 months   ki1017093-NIH-Birth        BANGLADESH                     4                    NA                0.6470588   0.4862394   0.8078782
24 months   ki1017093-NIH-Birth        BANGLADESH                     5                    NA                0.6571429   0.4997057   0.8145800
24 months   ki1017093-NIH-Birth        BANGLADESH                     6                    NA                0.5151515   0.3444378   0.6858652
24 months   ki1017093-NIH-Birth        BANGLADESH                     7                    NA                0.5294118   0.3614414   0.6973822
24 months   ki1017093-NIH-Birth        BANGLADESH                     8                    NA                0.4814815   0.2927932   0.6701698
24 months   ki1017093-NIH-Birth        BANGLADESH                     9                    NA                0.4615385   0.2696939   0.6533830
24 months   ki1017093-NIH-Birth        BANGLADESH                     10                   NA                0.5454545   0.3753696   0.7155395
24 months   ki1017093-NIH-Birth        BANGLADESH                     11                   NA                0.5116279   0.3620480   0.6612078
24 months   ki1017093-NIH-Birth        BANGLADESH                     12                   NA                0.5217391   0.3772168   0.6662615
24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.3274854   0.2571259   0.3978449
24 months   ki1101329-Keneba           GAMBIA                         2                    NA                0.2994012   0.2299184   0.3688840
24 months   ki1101329-Keneba           GAMBIA                         3                    NA                0.2882353   0.2201284   0.3563422
24 months   ki1101329-Keneba           GAMBIA                         4                    NA                0.3421053   0.2549929   0.4292176
24 months   ki1101329-Keneba           GAMBIA                         5                    NA                0.3770492   0.2910251   0.4630732
24 months   ki1101329-Keneba           GAMBIA                         6                    NA                0.3369565   0.2403430   0.4335701
24 months   ki1101329-Keneba           GAMBIA                         7                    NA                0.4320988   0.3241893   0.5400082
24 months   ki1101329-Keneba           GAMBIA                         8                    NA                0.2784810   0.2085665   0.3483955
24 months   ki1101329-Keneba           GAMBIA                         9                    NA                0.3144654   0.2422755   0.3866553
24 months   ki1101329-Keneba           GAMBIA                         10                   NA                0.3900000   0.3223829   0.4576171
24 months   ki1101329-Keneba           GAMBIA                         11                   NA                0.3262411   0.2488331   0.4036492
24 months   ki1101329-Keneba           GAMBIA                         12                   NA                0.3533333   0.2768158   0.4298509
24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                0.3414634   0.1961875   0.4867393
24 months   ki1148112-LCNI-5           MALAWI                         2                    NA                0.2333333   0.0818536   0.3848131
24 months   ki1148112-LCNI-5           MALAWI                         3                    NA                0.4210526   0.1988576   0.6432477
24 months   ki1148112-LCNI-5           MALAWI                         4                    NA                0.3928571   0.2118035   0.5739108
24 months   ki1148112-LCNI-5           MALAWI                         5                    NA                0.4193548   0.2454992   0.5932105
24 months   ki1148112-LCNI-5           MALAWI                         6                    NA                0.5833333   0.3859227   0.7807440
24 months   ki1148112-LCNI-5           MALAWI                         7                    NA                0.5106383   0.3676020   0.6536746
24 months   ki1148112-LCNI-5           MALAWI                         8                    NA                0.3380282   0.2279020   0.4481543
24 months   ki1148112-LCNI-5           MALAWI                         9                    NA                0.4029851   0.2854349   0.5205352
24 months   ki1148112-LCNI-5           MALAWI                         10                   NA                0.5268817   0.4253216   0.6284419
24 months   ki1148112-LCNI-5           MALAWI                         11                   NA                0.4843750   0.3618312   0.6069188
24 months   ki1148112-LCNI-5           MALAWI                         12                   NA                0.5312500   0.4088860   0.6536140


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1035430   0.1031404   0.1039456
3 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2280702   0.2225262   0.2336141
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0597731   0.0593080   0.0602383
3 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.1442922   0.1430334   0.1455511
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1780703   0.1773741   0.1787665
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.3008130   0.2898222   0.3118038
6 months    ki1000108-IRC              INDIA                          NA                   NA                0.2457002   0.2367038   0.2546967
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2681564   0.2636769   0.2726360
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0970922   0.0959248   0.0982595
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.1412159   0.1401457   0.1422861
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1662447   0.1657582   0.1667313
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                0.3682956   0.3642936   0.3722975
9 months    ki1000108-IRC              INDIA                          NA                   NA                0.2727273   0.2625854   0.2828692
9 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.3570020   0.3524116   0.3615923
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1482103   0.1463621   0.1500585
9 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.1799710   0.1786217   0.1813203
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1979153   0.1975467   0.1982839
9 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                0.3328313   0.3274473   0.3382153
12 months   ki1000108-IRC              INDIA                          NA                   NA                0.2931034   0.2800368   0.3061701
12 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.3747454   0.3706487   0.3788421
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1655125   0.1636467   0.1673783
12 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.2479466   0.2465399   0.2493533
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2444807   0.2440832   0.2448781
12 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.3945687   0.3893831   0.3997543
18 months   ki1000108-IRC              INDIA                          NA                   NA                0.3555556   0.3438224   0.3672887
18 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.5874730   0.5814753   0.5934707
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2408163   0.2378919   0.2437408
18 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.3224129   0.3206655   0.3241603
18 months   ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.2811671   0.2788890   0.2834452
18 months   ki1114097-CMIN             PERU                           NA                   NA                0.3149284   0.3116456   0.3182112
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.4754386   0.4733650   0.4775122
18 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.4593103   0.4530421   0.4655786
24 months   ki1000108-IRC              INDIA                          NA                   NA                0.4156479   0.4011860   0.4301098
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.5547786   0.5473248   0.5622323
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.3344928   0.3325855   0.3364000
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.4421416   0.4348141   0.4494691


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 1.1725564   0.9597224   1.4325897
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3                    1                 0.9067811   0.7341345   1.1200291
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       4                    1                 0.8579902   0.6848113   1.0749635
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       5                    1                 0.9827072   0.7935810   1.2169059
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       6                    1                 0.8916607   0.7201543   1.1040118
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       7                    1                 0.7964075   0.6394143   0.9919468
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       8                    1                 0.5778086   0.4544167   0.7347063
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       9                    1                 0.4929424   0.3832538   0.6340245
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       10                   1                 0.6218916   0.4847616   0.7978130
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       11                   1                 0.7263250   0.5793296   0.9106181
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       12                   1                 0.7229743   0.5773615   0.9053111
3 months    ki1017093-NIH-Birth        BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
3 months    ki1017093-NIH-Birth        BANGLADESH                     2                    1                 0.4953560   0.2369223   1.0356879
3 months    ki1017093-NIH-Birth        BANGLADESH                     3                    1                 0.3574975   0.1541922   0.8288649
3 months    ki1017093-NIH-Birth        BANGLADESH                     4                    1                 0.6178490   0.3085085   1.2373640
3 months    ki1017093-NIH-Birth        BANGLADESH                     5                    1                 0.4805492   0.2208406   1.0456751
3 months    ki1017093-NIH-Birth        BANGLADESH                     6                    1                 0.9330144   0.5176968   1.6815167
3 months    ki1017093-NIH-Birth        BANGLADESH                     7                    1                 0.8310249   0.4340157   1.5911921
3 months    ki1017093-NIH-Birth        BANGLADESH                     8                    1                 0.8534851   0.4466875   1.6307525
3 months    ki1017093-NIH-Birth        BANGLADESH                     9                    1                 0.8812729   0.4798277   1.6185852
3 months    ki1017093-NIH-Birth        BANGLADESH                     10                   1                 0.8924485   0.4935968   1.6135931
3 months    ki1017093-NIH-Birth        BANGLADESH                     11                   1                 0.8502024   0.4748537   1.5222461
3 months    ki1017093-NIH-Birth        BANGLADESH                     12                   1                 0.5263158   0.2604838   1.0634378
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.2319767   0.5556412   2.7315589
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                 0.9111801   0.3802154   2.1836286
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                 1.0129944   0.4418487   2.3224183
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    1                 0.8431035   0.3514500   2.0225452
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    1                 1.0187500   0.4358058   2.3814540
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    1                 0.7799043   0.3325289   1.8291663
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    1                 1.3397260   0.6353020   2.8252168
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    1                 1.0138756   0.4561415   2.2535635
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   1                 0.8218487   0.3636432   1.8574122
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   1                 1.0613953   0.4837703   2.3287084
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   1                 0.6687180   0.2701671   1.6552121
3 months    ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
3 months    ki1101329-Keneba           GAMBIA                         2                    1                 0.6231941   0.3798180   1.0225183
3 months    ki1101329-Keneba           GAMBIA                         3                    1                 0.5543767   0.3397251   0.9046536
3 months    ki1101329-Keneba           GAMBIA                         4                    1                 0.6877828   0.4090267   1.1565143
3 months    ki1101329-Keneba           GAMBIA                         5                    1                 0.7794872   0.4736234   1.2828765
3 months    ki1101329-Keneba           GAMBIA                         6                    1                 0.7195266   0.4190215   1.2355417
3 months    ki1101329-Keneba           GAMBIA                         7                    1                 0.9544741   0.5608712   1.6242959
3 months    ki1101329-Keneba           GAMBIA                         8                    1                 0.8260870   0.5231951   1.3043312
3 months    ki1101329-Keneba           GAMBIA                         9                    1                 1.0904743   0.7233138   1.6440087
3 months    ki1101329-Keneba           GAMBIA                         10                   1                 1.0207570   0.6896254   1.5108854
3 months    ki1101329-Keneba           GAMBIA                         11                   1                 0.7972028   0.4987392   1.2742778
3 months    ki1101329-Keneba           GAMBIA                         12                   1                 1.0089809   0.6638853   1.5334612
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 0.9965049   0.7968698   1.2461535
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       3                    1                 1.0507965   0.8534466   1.2937814
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       4                    1                 1.1340028   0.9150064   1.4054134
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       5                    1                 1.2554001   1.0222381   1.5417438
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       6                    1                 1.5872080   1.3181449   1.9111928
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       7                    1                 1.2112078   0.9900652   1.4817451
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       8                    1                 1.0303530   0.8372782   1.2679506
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       9                    1                 0.9136174   0.7338155   1.1374749
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       10                   1                 1.0248187   0.8173408   1.2849638
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       11                   1                 0.9931704   0.7984764   1.2353371
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       12                   1                 0.7297274   0.5777660   0.9216570
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
6 months    ki1000108-IRC              INDIA                          2                    1                 1.6038961   0.8471555   3.0366121
6 months    ki1000108-IRC              INDIA                          3                    1                 1.0235690   0.4756000   2.2028883
6 months    ki1000108-IRC              INDIA                          4                    1                 0.9870130   0.4257019   2.2884433
6 months    ki1000108-IRC              INDIA                          5                    1                 1.1515152   0.5254721   2.5234207
6 months    ki1000108-IRC              INDIA                          6                    1                 0.4668305   0.1793768   1.2149321
6 months    ki1000108-IRC              INDIA                          7                    1                 1.0555556   0.5234791   2.1284471
6 months    ki1000108-IRC              INDIA                          8                    1                 0.4710744   0.1922678   1.1541767
6 months    ki1000108-IRC              INDIA                          9                    1                 0.8956229   0.3983886   2.0134624
6 months    ki1000108-IRC              INDIA                          10                   1                 0.4668305   0.1793768   1.2149321
6 months    ki1000108-IRC              INDIA                          11                   1                 0.6045455   0.2614553   1.3978499
6 months    ki1000108-IRC              INDIA                          12                   1                 0.9483066   0.4854736   1.8523879
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     2                    1                 0.9904762   0.5351889   1.8330780
6 months    ki1017093-NIH-Birth        BANGLADESH                     3                    1                 0.8320000   0.4330741   1.5983963
6 months    ki1017093-NIH-Birth        BANGLADESH                     4                    1                 0.8253968   0.4140918   1.6452387
6 months    ki1017093-NIH-Birth        BANGLADESH                     5                    1                 0.7428571   0.3615487   1.5263138
6 months    ki1017093-NIH-Birth        BANGLADESH                     6                    1                 1.2899225   0.7239751   2.2982836
6 months    ki1017093-NIH-Birth        BANGLADESH                     7                    1                 0.9777778   0.5060732   1.8891523
6 months    ki1017093-NIH-Birth        BANGLADESH                     8                    1                 0.6933333   0.3150035   1.5260500
6 months    ki1017093-NIH-Birth        BANGLADESH                     9                    1                 1.0730159   0.5760265   1.9988023
6 months    ki1017093-NIH-Birth        BANGLADESH                     10                   1                 0.8253968   0.4140918   1.6452387
6 months    ki1017093-NIH-Birth        BANGLADESH                     11                   1                 1.1786667   0.6624611   2.0971119
6 months    ki1017093-NIH-Birth        BANGLADESH                     12                   1                 0.6797386   0.3370759   1.3707434
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.7147651   0.3505394   1.4574370
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                 0.7607143   0.3735089   1.5493239
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                 0.8120915   0.4113743   1.6031449
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    1                 1.1317114   0.6062436   2.1126338
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    1                 1.0550699   0.5551398   2.0052111
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    1                 0.9102564   0.4891934   1.6937407
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    1                 1.2487437   0.7023884   2.2200835
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    1                 0.6752717   0.3410064   1.3371945
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   1                 1.0240385   0.5644510   1.8578313
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   1                 0.5916667   0.2940069   1.1906845
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   1                 0.4127907   0.1819373   0.9365655
6 months    ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1101329-Keneba           GAMBIA                         2                    1                 0.8734403   0.5114134   1.4917440
6 months    ki1101329-Keneba           GAMBIA                         3                    1                 1.0910005   0.6749314   1.7635601
6 months    ki1101329-Keneba           GAMBIA                         4                    1                 0.8158508   0.4502343   1.4783692
6 months    ki1101329-Keneba           GAMBIA                         5                    1                 1.0878011   0.6352496   1.8627501
6 months    ki1101329-Keneba           GAMBIA                         6                    1                 1.4500942   0.8656399   2.4291545
6 months    ki1101329-Keneba           GAMBIA                         7                    1                 1.6062802   0.9422277   2.7383359
6 months    ki1101329-Keneba           GAMBIA                         8                    1                 1.1174968   0.6739739   1.8528893
6 months    ki1101329-Keneba           GAMBIA                         9                    1                 1.2515964   0.7674538   2.0411568
6 months    ki1101329-Keneba           GAMBIA                         10                   1                 1.2544803   0.7980076   1.9720625
6 months    ki1101329-Keneba           GAMBIA                         11                   1                 0.9982175   0.5973624   1.6680630
6 months    ki1101329-Keneba           GAMBIA                         12                   1                 0.9317130   0.5535364   1.5682602
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 0.9785059   0.7763952   1.2332301
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3                    1                 1.2072327   0.9847039   1.4800498
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       4                    1                 1.0093671   0.8069947   1.2624890
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       5                    1                 0.9539707   0.7571563   1.2019449
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       6                    1                 0.9167079   0.7281302   1.1541252
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       7                    1                 1.0591609   0.8499904   1.3198053
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       8                    1                 0.7925960   0.6284525   0.9996116
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       9                    1                 0.7292750   0.5745234   0.9257099
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       10                   1                 0.9385343   0.7432465   1.1851339
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       11                   1                 0.8906874   0.7135996   1.1117216
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       12                   1                 0.8054763   0.6418780   1.0107715
6 months    ki1148112-LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1148112-LCNI-5           MALAWI                         2                    1                 0.6405797   0.3759920   1.0913592
6 months    ki1148112-LCNI-5           MALAWI                         3                    1                 0.9589744   0.5685153   1.6176025
6 months    ki1148112-LCNI-5           MALAWI                         4                    1                 0.9299145   0.5858928   1.4759372
6 months    ki1148112-LCNI-5           MALAWI                         5                    1                 0.8242424   0.5131328   1.3239760
6 months    ki1148112-LCNI-5           MALAWI                         6                    1                 1.0000000   0.6290145   1.5897886
6 months    ki1148112-LCNI-5           MALAWI                         7                    1                 0.7431694   0.4747136   1.1634398
6 months    ki1148112-LCNI-5           MALAWI                         8                    1                 0.6580645   0.4342810   0.9971630
6 months    ki1148112-LCNI-5           MALAWI                         9                    1                 0.8286738   0.5674413   1.2101698
6 months    ki1148112-LCNI-5           MALAWI                         10                   1                 1.0241975   0.7393543   1.4187794
6 months    ki1148112-LCNI-5           MALAWI                         11                   1                 0.7555556   0.5163558   1.1055636
6 months    ki1148112-LCNI-5           MALAWI                         12                   1                 0.7396491   0.4987935   1.0968083
9 months    ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
9 months    ki1000108-IRC              INDIA                          2                    1                 1.0663265   0.5727580   1.9852227
9 months    ki1000108-IRC              INDIA                          3                    1                 0.5026455   0.2053552   1.2303197
9 months    ki1000108-IRC              INDIA                          4                    1                 1.2925170   0.7003741   2.3852969
9 months    ki1000108-IRC              INDIA                          5                    1                 1.2925170   0.7003741   2.3852969
9 months    ki1000108-IRC              INDIA                          6                    1                 0.3667954   0.1466988   0.9171096
9 months    ki1000108-IRC              INDIA                          7                    1                 0.6785714   0.3358573   1.3709966
9 months    ki1000108-IRC              INDIA                          8                    1                 0.4935065   0.2323311   1.0482825
9 months    ki1000108-IRC              INDIA                          9                    1                 0.8042328   0.3930838   1.6454263
9 months    ki1000108-IRC              INDIA                          10                   1                 0.4401544   0.1893582   1.0231185
9 months    ki1000108-IRC              INDIA                          11                   1                 0.6107143   0.2999937   1.2432657
9 months    ki1000108-IRC              INDIA                          12                   1                 0.8515406   0.4757517   1.5241595
9 months    ki1017093-NIH-Birth        BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
9 months    ki1017093-NIH-Birth        BANGLADESH                     2                    1                 0.7735086   0.4650044   1.2866880
9 months    ki1017093-NIH-Birth        BANGLADESH                     3                    1                 0.7230624   0.4322057   1.2096536
9 months    ki1017093-NIH-Birth        BANGLADESH                     4                    1                 0.5543478   0.2991362   1.0272962
9 months    ki1017093-NIH-Birth        BANGLADESH                     5                    1                 0.7030753   0.4087781   1.2092497
9 months    ki1017093-NIH-Birth        BANGLADESH                     6                    1                 0.7559289   0.4535304   1.2599561
9 months    ki1017093-NIH-Birth        BANGLADESH                     7                    1                 0.7391304   0.4316608   1.2656089
9 months    ki1017093-NIH-Birth        BANGLADESH                     8                    1                 0.9503106   0.5624069   1.6057594
9 months    ki1017093-NIH-Birth        BANGLADESH                     9                    1                 0.8236025   0.4861143   1.3953941
9 months    ki1017093-NIH-Birth        BANGLADESH                     10                   1                 0.8112407   0.4897932   1.3436518
9 months    ki1017093-NIH-Birth        BANGLADESH                     11                   1                 0.9239130   0.5880410   1.4516254
9 months    ki1017093-NIH-Birth        BANGLADESH                     12                   1                 0.7391304   0.4515586   1.2098404
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.7087975   0.3768029   1.3333069
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                 1.0612597   0.5966072   1.8877951
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                 1.5935223   0.9555056   2.6575598
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    1                 1.2947368   0.7561095   2.2170645
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    1                 0.9397284   0.5185115   1.7031241
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    1                 1.1338091   0.6721890   1.9124430
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    1                 0.9656877   0.5624577   1.6579962
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    1                 0.5957379   0.3155830   1.1245966
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   1                 0.8905597   0.5156670   1.5380015
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   1                 0.7661165   0.4274445   1.3731242
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   1                 0.7243283   0.3896504   1.3464671
9 months    ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
9 months    ki1101329-Keneba           GAMBIA                         2                    1                 0.7935829   0.5104801   1.2336891
9 months    ki1101329-Keneba           GAMBIA                         3                    1                 0.8097222   0.5318829   1.2326963
9 months    ki1101329-Keneba           GAMBIA                         4                    1                 0.9814815   0.6253217   1.5404964
9 months    ki1101329-Keneba           GAMBIA                         5                    1                 0.9217391   0.5827396   1.4579462
9 months    ki1101329-Keneba           GAMBIA                         6                    1                 1.1609524   0.7354119   1.8327287
9 months    ki1101329-Keneba           GAMBIA                         7                    1                 1.3520408   0.8718847   2.0966239
9 months    ki1101329-Keneba           GAMBIA                         8                    1                 0.6913043   0.4337758   1.1017251
9 months    ki1101329-Keneba           GAMBIA                         9                    1                 0.7829545   0.4984388   1.2298758
9 months    ki1101329-Keneba           GAMBIA                         10                   1                 1.0556017   0.7241052   1.5388577
9 months    ki1101329-Keneba           GAMBIA                         11                   1                 1.0203209   0.6804166   1.5300254
9 months    ki1101329-Keneba           GAMBIA                         12                   1                 1.1276596   0.7620324   1.6687166
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 0.9676471   0.7858570   1.1914903
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       3                    1                 0.8641923   0.6959329   1.0731327
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       4                    1                 0.7821992   0.6193599   0.9878514
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       5                    1                 1.0535686   0.8559817   1.2967646
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       6                    1                 1.0212467   0.8330160   1.2520105
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       7                    1                 0.9328449   0.7533435   1.1551167
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       8                    1                 0.8867899   0.7212695   1.0902948
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       9                    1                 0.8669374   0.7055289   1.0652724
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       10                   1                 1.0471332   0.8518577   1.2871726
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       11                   1                 0.8836633   0.7173925   1.0884708
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       12                   1                 0.9721832   0.7955649   1.1880113
9 months    ki1148112-LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.0000000
9 months    ki1148112-LCNI-5           MALAWI                         2                    1                 0.3469388   0.1444877   0.8330571
9 months    ki1148112-LCNI-5           MALAWI                         3                    1                 0.9714286   0.5176172   1.8231106
9 months    ki1148112-LCNI-5           MALAWI                         4                    1                 0.6800000   0.3344632   1.3825136
9 months    ki1148112-LCNI-5           MALAWI                         5                    1                 0.7589286   0.4123088   1.3969447
9 months    ki1148112-LCNI-5           MALAWI                         6                    1                 1.0119048   0.5686307   1.8007317
9 months    ki1148112-LCNI-5           MALAWI                         7                    1                 0.8601190   0.5196534   1.4236505
9 months    ki1148112-LCNI-5           MALAWI                         8                    1                 0.5996473   0.3627510   0.9912498
9 months    ki1148112-LCNI-5           MALAWI                         9                    1                 0.7589286   0.4780790   1.2047644
9 months    ki1148112-LCNI-5           MALAWI                         10                   1                 0.9886220   0.6648964   1.4699635
9 months    ki1148112-LCNI-5           MALAWI                         11                   1                 0.7495591   0.4718738   1.1906548
9 months    ki1148112-LCNI-5           MALAWI                         12                   1                 0.8861004   0.5676802   1.3831271
12 months   ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
12 months   ki1000108-IRC              INDIA                          2                    1                 1.2333333   0.7196671   2.1136316
12 months   ki1000108-IRC              INDIA                          3                    1                 0.6395062   0.3025540   1.3517196
12 months   ki1000108-IRC              INDIA                          4                    1                 1.3566667   0.7773107   2.3678362
12 months   ki1000108-IRC              INDIA                          5                    1                 1.2920635   0.7342713   2.2735849
12 months   ki1000108-IRC              INDIA                          6                    1                 0.3333333   0.1348671   0.8238563
12 months   ki1000108-IRC              INDIA                          7                    1                 0.4111111   0.1794157   0.9420155
12 months   ki1000108-IRC              INDIA                          8                    1                 0.4484848   0.2141380   0.9392944
12 months   ki1000108-IRC              INDIA                          9                    1                 0.8222222   0.4242262   1.5936061
12 months   ki1000108-IRC              INDIA                          10                   1                 0.3245614   0.1311195   0.8033899
12 months   ki1000108-IRC              INDIA                          11                   1                 0.6783333   0.3585596   1.2832904
12 months   ki1000108-IRC              INDIA                          12                   1                 0.8222222   0.4738782   1.4266310
12 months   ki1017093-NIH-Birth        BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
12 months   ki1017093-NIH-Birth        BANGLADESH                     2                    1                 0.8023256   0.4745021   1.3566353
12 months   ki1017093-NIH-Birth        BANGLADESH                     3                    1                 0.7155556   0.4144645   1.2353765
12 months   ki1017093-NIH-Birth        BANGLADESH                     4                    1                 0.7868421   0.4535204   1.3651437
12 months   ki1017093-NIH-Birth        BANGLADESH                     5                    1                 0.6487179   0.3560178   1.1820617
12 months   ki1017093-NIH-Birth        BANGLADESH                     6                    1                 0.9078947   0.5430574   1.5178376
12 months   ki1017093-NIH-Birth        BANGLADESH                     7                    1                 0.9078947   0.5430574   1.5178376
12 months   ki1017093-NIH-Birth        BANGLADESH                     8                    1                 0.9200000   0.5313982   1.5927791
12 months   ki1017093-NIH-Birth        BANGLADESH                     9                    1                 0.9470588   0.5629811   1.5931625
12 months   ki1017093-NIH-Birth        BANGLADESH                     10                   1                 0.7853659   0.4584143   1.3455068
12 months   ki1017093-NIH-Birth        BANGLADESH                     11                   1                 0.9387755   0.5856214   1.5048963
12 months   ki1017093-NIH-Birth        BANGLADESH                     12                   1                 0.9660000   0.6075149   1.5360216
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.7661327   0.4272197   1.3739052
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                 0.9083017   0.5092067   1.6201905
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                 1.2124577   0.7224337   2.0348632
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    1                 0.7251462   0.3961061   1.3275155
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    1                 0.9430227   0.5409983   1.6437976
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    1                 0.8268137   0.4830877   1.4151072
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    1                 0.8541152   0.5017249   1.4540092
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    1                 0.7099237   0.3983218   1.2652876
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   1                 0.4693583   0.2475591   0.8898773
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   1                 0.6937422   0.3858103   1.2474481
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   1                 0.7866541   0.4389997   1.4096246
12 months   ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
12 months   ki1101329-Keneba           GAMBIA                         2                    1                 0.8093327   0.5611180   1.1673470
12 months   ki1101329-Keneba           GAMBIA                         3                    1                 0.8187461   0.5734789   1.1689097
12 months   ki1101329-Keneba           GAMBIA                         4                    1                 0.7442888   0.4922885   1.1252869
12 months   ki1101329-Keneba           GAMBIA                         5                    1                 0.8503891   0.5775733   1.2520690
12 months   ki1101329-Keneba           GAMBIA                         6                    1                 0.7199931   0.4646867   1.1155688
12 months   ki1101329-Keneba           GAMBIA                         7                    1                 0.9046231   0.5931617   1.3796286
12 months   ki1101329-Keneba           GAMBIA                         8                    1                 0.8908764   0.6226375   1.2746754
12 months   ki1101329-Keneba           GAMBIA                         9                    1                 0.9654453   0.6838539   1.3629878
12 months   ki1101329-Keneba           GAMBIA                         10                   1                 1.0999546   0.8049638   1.5030493
12 months   ki1101329-Keneba           GAMBIA                         11                   1                 0.9608352   0.6791360   1.3593806
12 months   ki1101329-Keneba           GAMBIA                         12                   1                 1.0716805   0.7631798   1.5048867
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 1.0204449   0.8330690   1.2499658
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                    1                 0.9935065   0.8182465   1.2063054
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                    1                 0.9327504   0.7562867   1.1503883
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                    1                 0.9786459   0.7965347   1.2023930
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                    1                 1.0598412   0.8726930   1.2871232
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                    1                 1.1025194   0.9101856   1.3354957
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                    1                 0.9706636   0.7980930   1.1805490
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                    1                 0.9155844   0.7499868   1.1177461
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       10                   1                 1.0649351   0.8681827   1.3062766
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       11                   1                 0.9398615   0.7680971   1.1500364
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       12                   1                 0.8548301   0.6944782   1.0522065
12 months   ki1148112-LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.0000000
12 months   ki1148112-LCNI-5           MALAWI                         2                    1                 0.6271930   0.3516332   1.1186971
12 months   ki1148112-LCNI-5           MALAWI                         3                    1                 0.9750000   0.5530601   1.7188458
12 months   ki1148112-LCNI-5           MALAWI                         4                    1                 0.7738095   0.4342774   1.3787988
12 months   ki1148112-LCNI-5           MALAWI                         5                    1                 0.9191919   0.5605764   1.5072232
12 months   ki1148112-LCNI-5           MALAWI                         6                    1                 0.9930556   0.5873551   1.6789831
12 months   ki1148112-LCNI-5           MALAWI                         7                    1                 0.7536232   0.4602564   1.2339815
12 months   ki1148112-LCNI-5           MALAWI                         8                    1                 0.7222222   0.4697679   1.1103461
12 months   ki1148112-LCNI-5           MALAWI                         9                    1                 0.6594203   0.4152979   1.0470438
12 months   ki1148112-LCNI-5           MALAWI                         10                   1                 1.0607639   0.7416082   1.5172701
12 months   ki1148112-LCNI-5           MALAWI                         11                   1                 0.8666667   0.5746921   1.3069802
12 months   ki1148112-LCNI-5           MALAWI                         12                   1                 0.9027778   0.6042906   1.3487017
18 months   ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
18 months   ki1000108-IRC              INDIA                          2                    1                 1.0857143   0.6066515   1.9430852
18 months   ki1000108-IRC              INDIA                          3                    1                 0.9382716   0.4993361   1.7630482
18 months   ki1000108-IRC              INDIA                          4                    1                 1.2063492   0.6636596   2.1928085
18 months   ki1000108-IRC              INDIA                          5                    1                 1.3818182   0.7981400   2.3923392
18 months   ki1000108-IRC              INDIA                          6                    1                 0.3423423   0.1383025   0.8474055
18 months   ki1000108-IRC              INDIA                          7                    1                 0.7037037   0.3642857   1.3593694
18 months   ki1000108-IRC              INDIA                          8                    1                 0.7658915   0.4196100   1.3979405
18 months   ki1000108-IRC              INDIA                          9                    1                 1.4074074   0.8374636   2.3652320
18 months   ki1000108-IRC              INDIA                          10                   1                 0.4342857   0.1895653   0.9949296
18 months   ki1000108-IRC              INDIA                          11                   1                 1.0133333   0.5860819   1.7520495
18 months   ki1000108-IRC              INDIA                          12                   1                 0.9934641   0.5894857   1.6742914
18 months   ki1017093-NIH-Birth        BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
18 months   ki1017093-NIH-Birth        BANGLADESH                     2                    1                 0.9753695   0.6977486   1.3634503
18 months   ki1017093-NIH-Birth        BANGLADESH                     3                    1                 0.8111285   0.5678936   1.1585436
18 months   ki1017093-NIH-Birth        BANGLADESH                     4                    1                 1.0344828   0.7532314   1.4207514
18 months   ki1017093-NIH-Birth        BANGLADESH                     5                    1                 1.0065238   0.7295669   1.3886185
18 months   ki1017093-NIH-Birth        BANGLADESH                     6                    1                 0.9946950   0.7222075   1.3699913
18 months   ki1017093-NIH-Birth        BANGLADESH                     7                    1                 0.9482759   0.6753005   1.3315954
18 months   ki1017093-NIH-Birth        BANGLADESH                     8                    1                 0.7758621   0.5048273   1.1924116
18 months   ki1017093-NIH-Birth        BANGLADESH                     9                    1                 0.9310345   0.6579461   1.3174715
18 months   ki1017093-NIH-Birth        BANGLADESH                     10                   1                 0.9645853   0.6917551   1.3450205
18 months   ki1017093-NIH-Birth        BANGLADESH                     11                   1                 0.8111285   0.5678936   1.1585436
18 months   ki1017093-NIH-Birth        BANGLADESH                     12                   1                 0.7263390   0.4994349   1.0563305
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.4630435   0.2488887   0.8614665
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                 0.9003623   0.5501083   1.4736230
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                 0.9332659   0.5862229   1.4857579
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    1                 0.6498856   0.3748595   1.1266921
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    1                 0.6355499   0.3574636   1.1299713
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    1                 0.7806097   0.4765134   1.2787708
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    1                 0.6109601   0.3615071   1.0325450
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    1                 0.8255814   0.5081604   1.3412785
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   1                 0.7100000   0.4342268   1.1609141
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   1                 0.6694605   0.3942588   1.1367591
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   1                 0.7820290   0.4677526   1.3074633
18 months   ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
18 months   ki1101329-Keneba           GAMBIA                         2                    1                 1.0897034   0.8088380   1.4680981
18 months   ki1101329-Keneba           GAMBIA                         3                    1                 1.1979447   0.9053440   1.5851119
18 months   ki1101329-Keneba           GAMBIA                         4                    1                 1.1557377   0.8455209   1.5797712
18 months   ki1101329-Keneba           GAMBIA                         5                    1                 1.1147541   0.8111197   1.5320509
18 months   ki1101329-Keneba           GAMBIA                         6                    1                 1.2352681   0.8957531   1.7034686
18 months   ki1101329-Keneba           GAMBIA                         7                    1                 1.3527353   0.9742217   1.8783125
18 months   ki1101329-Keneba           GAMBIA                         8                    1                 0.9120715   0.6539113   1.2721519
18 months   ki1101329-Keneba           GAMBIA                         9                    1                 0.9754098   0.7112767   1.3376289
18 months   ki1101329-Keneba           GAMBIA                         10                   1                 1.2058638   0.9137709   1.5913261
18 months   ki1101329-Keneba           GAMBIA                         11                   1                 0.8670310   0.6204724   1.2115651
18 months   ki1101329-Keneba           GAMBIA                         12                   1                 0.9824951   0.7203001   1.3401313
18 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    1                 1.0000000   1.0000000   1.0000000
18 months   ki1114097-CMIN             GUINEA-BISSAU                  2                    1                 1.0819672   0.6350838   1.8433048
18 months   ki1114097-CMIN             GUINEA-BISSAU                  3                    1                 0.8555556   0.4759705   1.5378584
18 months   ki1114097-CMIN             GUINEA-BISSAU                  4                    1                 1.0000000   0.5681143   1.7602092
18 months   ki1114097-CMIN             GUINEA-BISSAU                  5                    1                 1.2222222   0.7110061   2.1010046
18 months   ki1114097-CMIN             GUINEA-BISSAU                  6                    1                 0.9777778   0.4870066   1.9631138
18 months   ki1114097-CMIN             GUINEA-BISSAU                  7                    1                 0.8461538   0.4288083   1.6696885
18 months   ki1114097-CMIN             GUINEA-BISSAU                  8                    1                 0.9462366   0.5414748   1.6535648
18 months   ki1114097-CMIN             GUINEA-BISSAU                  9                    1                 1.1598639   0.7271289   1.8501318
18 months   ki1114097-CMIN             GUINEA-BISSAU                  10                   1                 0.9475655   0.5706132   1.5735361
18 months   ki1114097-CMIN             GUINEA-BISSAU                  11                   1                 1.2222222   0.7373973   2.0258105
18 months   ki1114097-CMIN             GUINEA-BISSAU                  12                   1                 1.0185185   0.6045324   1.7160038
18 months   ki1114097-CMIN             PERU                           1                    1                 1.0000000   1.0000000   1.0000000
18 months   ki1114097-CMIN             PERU                           2                    1                 1.1275510   0.5635578   2.2559732
18 months   ki1114097-CMIN             PERU                           3                    1                 0.9454545   0.4649548   1.9225188
18 months   ki1114097-CMIN             PERU                           4                    1                 0.9184783   0.4388308   1.9223864
18 months   ki1114097-CMIN             PERU                           5                    1                 1.0514706   0.4942633   2.2368449
18 months   ki1114097-CMIN             PERU                           6                    1                 1.1118421   0.5376420   2.2992863
18 months   ki1114097-CMIN             PERU                           7                    1                 0.8783784   0.4012113   1.9230482
18 months   ki1114097-CMIN             PERU                           8                    1                 1.0156250   0.4974210   2.0736843
18 months   ki1114097-CMIN             PERU                           9                    1                 1.1607143   0.5730875   2.3508759
18 months   ki1114097-CMIN             PERU                           10                   1                 1.2380952   0.6183366   2.4790380
18 months   ki1114097-CMIN             PERU                           11                   1                 0.7878788   0.3417566   1.8163600
18 months   ki1114097-CMIN             PERU                           12                   1                 1.0000000   0.4746811   2.1066774
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                 1.0000000   1.0000000   1.0000000
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 0.9613636   0.7944345   1.1633684
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       3                    1                 0.8625000   0.6929303   1.0735658
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       4                    1                 0.8653616   0.6930110   1.0805756
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       5                    1                 0.8524476   0.6727501   1.0801437
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       6                    1                 0.7247543   0.5698312   0.9217971
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       7                    1                 1.0200510   0.8217647   1.2661824
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       8                    1                 0.7983471   0.6302565   1.0112678
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       9                    1                 0.8553719   0.6772888   1.0802793
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       10                   1                 0.9228147   0.7302394   1.1661751
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       11                   1                 0.9541613   0.7760490   1.1731525
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       12                   1                 0.8789330   0.7149576   1.0805162
18 months   ki1148112-LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.0000000
18 months   ki1148112-LCNI-5           MALAWI                         2                    1                 0.6400000   0.3653936   1.1209830
18 months   ki1148112-LCNI-5           MALAWI                         3                    1                 1.1686957   0.7171519   1.9045470
18 months   ki1148112-LCNI-5           MALAWI                         4                    1                 0.9223529   0.5612302   1.5158397
18 months   ki1148112-LCNI-5           MALAWI                         5                    1                 0.8320000   0.4942725   1.4004905
18 months   ki1148112-LCNI-5           MALAWI                         6                    1                 1.3006452   0.8562195   1.9757525
18 months   ki1148112-LCNI-5           MALAWI                         7                    1                 1.0370370   0.6884713   1.5620780
18 months   ki1148112-LCNI-5           MALAWI                         8                    1                 0.8789873   0.5887804   1.3122359
18 months   ki1148112-LCNI-5           MALAWI                         9                    1                 0.7905882   0.5246435   1.1913418
18 months   ki1148112-LCNI-5           MALAWI                         10                   1                 1.2744828   0.9143193   1.7765197
18 months   ki1148112-LCNI-5           MALAWI                         11                   1                 1.1200000   0.7787125   1.6108641
18 months   ki1148112-LCNI-5           MALAWI                         12                   1                 1.1709091   0.8220938   1.6677272
24 months   ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1000108-IRC              INDIA                          2                    1                 1.0857143   0.6986418   1.6872388
24 months   ki1000108-IRC              INDIA                          3                    1                 0.8444444   0.5024813   1.4191303
24 months   ki1000108-IRC              INDIA                          4                    1                 1.1761905   0.7486832   1.8478095
24 months   ki1000108-IRC              INDIA                          5                    1                 1.4681818   1.0063050   2.1420522
24 months   ki1000108-IRC              INDIA                          6                    1                 0.4108108   0.2071974   0.8145156
24 months   ki1000108-IRC              INDIA                          7                    1                 0.7916667   0.4845703   1.2933853
24 months   ki1000108-IRC              INDIA                          8                    1                 0.4750000   0.2620496   0.8610012
24 months   ki1000108-IRC              INDIA                          9                    1                 0.9851852   0.6139547   1.5808818
24 months   ki1000108-IRC              INDIA                          10                   1                 0.4621622   0.2426716   0.8801765
24 months   ki1000108-IRC              INDIA                          11                   1                 0.6650000   0.3955100   1.1181133
24 months   ki1000108-IRC              INDIA                          12                   1                 0.7673077   0.4903347   1.2007332
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     2                    1                 0.9473180   0.6865215   1.3071862
24 months   ki1017093-NIH-Birth        BANGLADESH                     3                    1                 0.6463307   0.4274319   0.9773330
24 months   ki1017093-NIH-Birth        BANGLADESH                     4                    1                 0.9594320   0.6938835   1.3266058
24 months   ki1017093-NIH-Birth        BANGLADESH                     5                    1                 0.9743842   0.7095203   1.3381219
24 months   ki1017093-NIH-Birth        BANGLADESH                     6                    1                 0.7638454   0.5165416   1.1295503
24 months   ki1017093-NIH-Birth        BANGLADESH                     7                    1                 0.7849899   0.5371824   1.1471132
24 months   ki1017093-NIH-Birth        BANGLADESH                     8                    1                 0.7139208   0.4581252   1.1125407
24 months   ki1017093-NIH-Birth        BANGLADESH                     9                    1                 0.6843501   0.4299663   1.0892368
24 months   ki1017093-NIH-Birth        BANGLADESH                     10                   1                 0.8087774   0.5559851   1.1765081
24 months   ki1017093-NIH-Birth        BANGLADESH                     11                   1                 0.7586207   0.5299324   1.0859977
24 months   ki1017093-NIH-Birth        BANGLADESH                     12                   1                 0.7736132   0.5471495   1.0938096
24 months   ki1101329-Keneba           GAMBIA                         1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1101329-Keneba           GAMBIA                         2                    1                 0.9142429   0.6663675   1.2543231
24 months   ki1101329-Keneba           GAMBIA                         3                    1                 0.8801471   0.6395257   1.2113022
24 months   ki1101329-Keneba           GAMBIA                         4                    1                 1.0446429   0.7486451   1.4576715
24 months   ki1101329-Keneba           GAMBIA                         5                    1                 1.1513466   0.8415951   1.5751031
24 months   ki1101329-Keneba           GAMBIA                         6                    1                 1.0289208   0.7190837   1.4722597
24 months   ki1101329-Keneba           GAMBIA                         7                    1                 1.3194444   0.9491177   1.8342653
24 months   ki1101329-Keneba           GAMBIA                         8                    1                 0.8503617   0.6110778   1.1833436
24 months   ki1101329-Keneba           GAMBIA                         9                    1                 0.9602426   0.7011818   1.3150168
24 months   ki1101329-Keneba           GAMBIA                         10                   1                 1.1908929   0.9035942   1.5695383
24 months   ki1101329-Keneba           GAMBIA                         11                   1                 0.9962006   0.7233248   1.3720194
24 months   ki1101329-Keneba           GAMBIA                         12                   1                 1.0789286   0.7952613   1.4637792
24 months   ki1148112-LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1148112-LCNI-5           MALAWI                         2                    1                 0.6833333   0.3144405   1.4850008
24 months   ki1148112-LCNI-5           MALAWI                         3                    1                 1.2330827   0.6260410   2.4287434
24 months   ki1148112-LCNI-5           MALAWI                         4                    1                 1.1505102   0.6144587   2.1542112
24 months   ki1148112-LCNI-5           MALAWI                         5                    1                 1.2281106   0.6780301   2.2244670
24 months   ki1148112-LCNI-5           MALAWI                         6                    1                 1.7083333   0.9919194   2.9421773
24 months   ki1148112-LCNI-5           MALAWI                         7                    1                 1.4954407   0.8985593   2.4888095
24 months   ki1148112-LCNI-5           MALAWI                         8                    1                 0.9899396   0.5792780   1.6917274
24 months   ki1148112-LCNI-5           MALAWI                         9                    1                 1.1801706   0.7045568   1.9768493
24 months   ki1148112-LCNI-5           MALAWI                         10                   1                 1.5430108   0.9672054   2.4616098
24 months   ki1148112-LCNI-5           MALAWI                         11                   1                 1.4185268   0.8647021   2.3270653
24 months   ki1148112-LCNI-5           MALAWI                         12                   1                 1.5558036   0.9590552   2.5238639


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0249110   -0.0428378   -0.0069843
3 months    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.0885965   -0.2065339    0.0293409
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0015766   -0.0384269    0.0352738
3 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.0267604   -0.0756653    0.0221445
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0123124   -0.0117674    0.0363921
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                 0.0066954   -0.1470624    0.1604531
6 months    ki1000108-IRC              INDIA                          1                    NA                -0.0437734   -0.1884262    0.1008793
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.0203051   -0.1436386    0.1030284
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0155839   -0.0676167    0.0364489
6 months    ki1101329-Keneba           GAMBIA                         1                    NA                 0.0126445   -0.0326507    0.0579396
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0113371   -0.0379249    0.0152507
6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                -0.0728809   -0.1910341    0.0452723
9 months    ki1000108-IRC              INDIA                          1                    NA                -0.0956938   -0.2495878    0.0582002
9 months    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.0939784   -0.2307542    0.0427974
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0062613   -0.0701739    0.0576514
9 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.0087083   -0.0614053    0.0439887
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0128177   -0.0417407    0.0161053
9 months    ki1148112-LCNI-5           MALAWI                         1                    NA                -0.0789334   -0.2142137    0.0563469
12 months   ki1000108-IRC              INDIA                          1                    NA                -0.1123020   -0.2712337    0.0466298
12 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.0600372   -0.2034979    0.0834235
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0387886   -0.1207821    0.0432049
12 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.0227716   -0.0875350    0.0419917
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0039064   -0.0379218    0.0301090
12 months   ki1148112-LCNI-5           MALAWI                         1                    NA                -0.0669698   -0.2026736    0.0687341
18 months   ki1000108-IRC              INDIA                          1                    NA                -0.0391813   -0.1952264    0.1168638
18 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.0569714   -0.1971094    0.0831666
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0831273   -0.1920764    0.0258217
18 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.0233933   -0.0394728    0.0862594
18 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                 0.0084398   -0.0911277    0.1080073
18 months   ki1114097-CMIN             PERU                           1                    NA                 0.0072361   -0.1703823    0.1848545
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0559624   -0.1239929    0.0120681
18 months   ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0128818   -0.1175606    0.1433241
24 months   ki1000108-IRC              INDIA                          1                    NA                -0.1106679   -0.2702726    0.0489369
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.1196400   -0.2600597    0.0207796
24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.0070074   -0.0633780    0.0773927
24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                 0.1006782   -0.0447824    0.2461388


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.2405864   -0.4264103   -0.0789706
3 months    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.3884615   -1.0157914    0.0436384
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0263759   -0.8714200    0.4370866
3 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.1854597   -0.5778678    0.1093584
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                 0.0691433   -0.0763896    0.1949995
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                 0.0222576   -0.6490651    0.4202895
6 months    ki1000108-IRC              INDIA                          1                    NA                -0.1781579   -0.9426178    0.2854714
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.0757212   -0.6496970    0.2985524
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1605062   -0.8416975    0.2687319
6 months    ki1101329-Keneba           GAMBIA                         1                    NA                 0.0895400   -0.2949520    0.3598701
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0681955   -0.2407247    0.0803427
6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                -0.1978869   -0.5658672    0.0836176
9 months    ki1000108-IRC              INDIA                          1                    NA                -0.3508772   -1.0528190    0.1110423
9 months    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.2632434   -0.7109859    0.0673307
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0422457   -0.5763991    0.3109130
9 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.0483871   -0.3861861    0.2070938
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0647634   -0.2214072    0.0717910
9 months    ki1148112-LCNI-5           MALAWI                         1                    NA                -0.2371573   -0.7185694    0.1093998
12 months   ki1000108-IRC              INDIA                          1                    NA                -0.3831479   -1.0495118    0.0665592
12 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.1602079   -0.6138221    0.1659041
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.2343546   -0.8440036    0.1737374
12 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.0918408   -0.3869454    0.1404735
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0159785   -0.1650892    0.1140487
12 months   ki1148112-LCNI-5           MALAWI                         1                    NA                -0.1697291   -0.5696870    0.1283191
18 months   ki1000108-IRC              INDIA                          1                    NA                -0.1101974   -0.6489058    0.2525115
18 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.0969771   -0.3634992    0.1174481
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.3451898   -0.8831653    0.0390990
18 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.0725569   -0.1444287    0.2484017
18 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                 0.0300172   -0.3973789    0.3266917
18 months   ki1114097-CMIN             PERU                           1                    NA                 0.0229770   -0.7402178    0.4514630
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.1177068   -0.2703786    0.0166171
18 months   ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0280459   -0.3017708    0.2743003
24 months   ki1000108-IRC              INDIA                          1                    NA                -0.2662539   -0.7161133    0.0656801
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.2156537   -0.4972507    0.0129816
24 months   ki1101329-Keneba           GAMBIA                         1                    NA                 0.0209493   -0.2137948    0.2102945
24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                 0.2277058   -0.1822079    0.4954878
