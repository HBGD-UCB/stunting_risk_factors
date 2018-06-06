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
Birth       ki0047075b-MAL-ED          BANGLADESH                     1       257     19     19      0
Birth       ki0047075b-MAL-ED          BANGLADESH                     2       257     24     23      1
Birth       ki0047075b-MAL-ED          BANGLADESH                     3       257     28     28      0
Birth       ki0047075b-MAL-ED          BANGLADESH                     4       257     21     21      0
Birth       ki0047075b-MAL-ED          BANGLADESH                     5       257     21     19      2
Birth       ki0047075b-MAL-ED          BANGLADESH                     6       257      9      9      0
Birth       ki0047075b-MAL-ED          BANGLADESH                     7       257     22     21      1
Birth       ki0047075b-MAL-ED          BANGLADESH                     8       257     25     22      3
Birth       ki0047075b-MAL-ED          BANGLADESH                     9       257     22     21      1
Birth       ki0047075b-MAL-ED          BANGLADESH                     10      257     24     24      0
Birth       ki0047075b-MAL-ED          BANGLADESH                     11      257     15     15      0
Birth       ki0047075b-MAL-ED          BANGLADESH                     12      257     27     26      1
Birth       ki0047075b-MAL-ED          BRAZIL                         1       191      9      9      0
Birth       ki0047075b-MAL-ED          BRAZIL                         2       191     21     19      2
Birth       ki0047075b-MAL-ED          BRAZIL                         3       191     18     17      1
Birth       ki0047075b-MAL-ED          BRAZIL                         4       191      8      8      0
Birth       ki0047075b-MAL-ED          BRAZIL                         5       191     19     17      2
Birth       ki0047075b-MAL-ED          BRAZIL                         6       191      7      7      0
Birth       ki0047075b-MAL-ED          BRAZIL                         7       191     17     16      1
Birth       ki0047075b-MAL-ED          BRAZIL                         8       191     18     18      0
Birth       ki0047075b-MAL-ED          BRAZIL                         9       191     28     26      2
Birth       ki0047075b-MAL-ED          BRAZIL                         10      191     18     18      0
Birth       ki0047075b-MAL-ED          BRAZIL                         11      191     15     15      0
Birth       ki0047075b-MAL-ED          BRAZIL                         12      191     13     13      0
Birth       ki0047075b-MAL-ED          INDIA                          1       206     16     16      0
Birth       ki0047075b-MAL-ED          INDIA                          2       206     16     16      0
Birth       ki0047075b-MAL-ED          INDIA                          3       206     20     20      0
Birth       ki0047075b-MAL-ED          INDIA                          4       206     15     14      1
Birth       ki0047075b-MAL-ED          INDIA                          5       206      7      7      0
Birth       ki0047075b-MAL-ED          INDIA                          6       206     17     17      0
Birth       ki0047075b-MAL-ED          INDIA                          7       206     21     20      1
Birth       ki0047075b-MAL-ED          INDIA                          8       206     17     17      0
Birth       ki0047075b-MAL-ED          INDIA                          9       206     19     17      2
Birth       ki0047075b-MAL-ED          INDIA                          10      206     24     21      3
Birth       ki0047075b-MAL-ED          INDIA                          11      206     20     20      0
Birth       ki0047075b-MAL-ED          INDIA                          12      206     14     14      0
Birth       ki0047075b-MAL-ED          NEPAL                          1       173     17     15      2
Birth       ki0047075b-MAL-ED          NEPAL                          2       173     14     13      1
Birth       ki0047075b-MAL-ED          NEPAL                          3       173     12     12      0
Birth       ki0047075b-MAL-ED          NEPAL                          4       173     15     15      0
Birth       ki0047075b-MAL-ED          NEPAL                          5       173     18     18      0
Birth       ki0047075b-MAL-ED          NEPAL                          6       173     13     13      0
Birth       ki0047075b-MAL-ED          NEPAL                          7       173     17     16      1
Birth       ki0047075b-MAL-ED          NEPAL                          8       173     14     14      0
Birth       ki0047075b-MAL-ED          NEPAL                          9       173      9      9      0
Birth       ki0047075b-MAL-ED          NEPAL                          10      173     16     16      0
Birth       ki0047075b-MAL-ED          NEPAL                          11      173     18     16      2
Birth       ki0047075b-MAL-ED          NEPAL                          12      173     10     10      0
Birth       ki0047075b-MAL-ED          PERU                           1       287     37     35      2
Birth       ki0047075b-MAL-ED          PERU                           2       287     23     23      0
Birth       ki0047075b-MAL-ED          PERU                           3       287     22     22      0
Birth       ki0047075b-MAL-ED          PERU                           4       287     21     20      1
Birth       ki0047075b-MAL-ED          PERU                           5       287     25     25      0
Birth       ki0047075b-MAL-ED          PERU                           6       287     19     18      1
Birth       ki0047075b-MAL-ED          PERU                           7       287     23     23      0
Birth       ki0047075b-MAL-ED          PERU                           8       287     19     19      0
Birth       ki0047075b-MAL-ED          PERU                           9       287     22     22      0
Birth       ki0047075b-MAL-ED          PERU                           10      287     24     22      2
Birth       ki0047075b-MAL-ED          PERU                           11      287     31     30      1
Birth       ki0047075b-MAL-ED          PERU                           12      287     21     20      1
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1       262     28     27      1
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   2       262     24     24      0
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   3       262     18     18      0
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   4       262     13     13      0
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   5       262     13     13      0
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   6       262     18     18      0
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   7       262     22     22      0
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   8       262     10     10      0
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   9       262     21     21      0
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   10      262     28     28      0
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   11      262     27     27      0
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   12      262     40     39      1
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1       123     10     10      0
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2       123      8      8      0
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3       123      7      7      0
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4       123      4      4      0
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5       123      8      7      1
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6       123     11     11      0
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7       123     14     14      0
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
Birth       ki1000108-IRC              INDIA                          1       388     34     31      3
Birth       ki1000108-IRC              INDIA                          2       388     25     24      1
Birth       ki1000108-IRC              INDIA                          3       388     27     27      0
Birth       ki1000108-IRC              INDIA                          4       388     22     22      0
Birth       ki1000108-IRC              INDIA                          5       388     21     20      1
Birth       ki1000108-IRC              INDIA                          6       388     34     31      3
Birth       ki1000108-IRC              INDIA                          7       388     35     34      1
Birth       ki1000108-IRC              INDIA                          8       388     39     39      0
Birth       ki1000108-IRC              INDIA                          9       388     25     24      1
Birth       ki1000108-IRC              INDIA                          10      388     37     35      2
Birth       ki1000108-IRC              INDIA                          11      388     40     39      1
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
Birth       ki1000109-ResPak           PAKISTAN                       5         7      1      1      0
Birth       ki1000109-ResPak           PAKISTAN                       6         7      2      2      0
Birth       ki1000109-ResPak           PAKISTAN                       7         7      1      1      0
Birth       ki1000109-ResPak           PAKISTAN                       8         7      0      0      0
Birth       ki1000109-ResPak           PAKISTAN                       9         7      0      0      0
Birth       ki1000109-ResPak           PAKISTAN                       10        7      0      0      0
Birth       ki1000109-ResPak           PAKISTAN                       11        7      0      0      0
Birth       ki1000109-ResPak           PAKISTAN                       12        7      0      0      0
Birth       ki1017093-NIH-Birth        BANGLADESH                     1        28     10     10      0
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
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1     13805   1344   1288     56
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       2     13805   1036    992     44
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       3     13805   1140   1099     41
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       4     13805   1007    971     36
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       5     13805   1000    965     35
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       6     13805   1132   1088     44
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       7     13805   1176   1131     45
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       8     13805   1226   1201     25
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       9     13805   1313   1293     20
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       10    13805   1042   1007     35
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       11    13805   1134   1102     32
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       12    13805   1255   1227     28
3 months    ki0047075b-MAL-ED          BANGLADESH                     1       250     19     19      0
3 months    ki0047075b-MAL-ED          BANGLADESH                     2       250     21     20      1
3 months    ki0047075b-MAL-ED          BANGLADESH                     3       250     26     25      1
3 months    ki0047075b-MAL-ED          BANGLADESH                     4       250     22     22      0
3 months    ki0047075b-MAL-ED          BANGLADESH                     5       250     21     20      1
3 months    ki0047075b-MAL-ED          BANGLADESH                     6       250      8      8      0
3 months    ki0047075b-MAL-ED          BANGLADESH                     7       250     21     21      0
3 months    ki0047075b-MAL-ED          BANGLADESH                     8       250     24     21      3
3 months    ki0047075b-MAL-ED          BANGLADESH                     9       250     23     23      0
3 months    ki0047075b-MAL-ED          BANGLADESH                     10      250     22     21      1
3 months    ki0047075b-MAL-ED          BANGLADESH                     11      250     15     15      0
3 months    ki0047075b-MAL-ED          BANGLADESH                     12      250     28     28      0
3 months    ki0047075b-MAL-ED          BRAZIL                         1       225     13     13      0
3 months    ki0047075b-MAL-ED          BRAZIL                         2       225     26     26      0
3 months    ki0047075b-MAL-ED          BRAZIL                         3       225     19     19      0
3 months    ki0047075b-MAL-ED          BRAZIL                         4       225     11     11      0
3 months    ki0047075b-MAL-ED          BRAZIL                         5       225     23     22      1
3 months    ki0047075b-MAL-ED          BRAZIL                         6       225      8      8      0
3 months    ki0047075b-MAL-ED          BRAZIL                         7       225     17     17      0
3 months    ki0047075b-MAL-ED          BRAZIL                         8       225     20     20      0
3 months    ki0047075b-MAL-ED          BRAZIL                         9       225     29     29      0
3 months    ki0047075b-MAL-ED          BRAZIL                         10      225     22     22      0
3 months    ki0047075b-MAL-ED          BRAZIL                         11      225     19     19      0
3 months    ki0047075b-MAL-ED          BRAZIL                         12      225     18     18      0
3 months    ki0047075b-MAL-ED          INDIA                          1       241     20     19      1
3 months    ki0047075b-MAL-ED          INDIA                          2       241     19     19      0
3 months    ki0047075b-MAL-ED          INDIA                          3       241     21     19      2
3 months    ki0047075b-MAL-ED          INDIA                          4       241     16     16      0
3 months    ki0047075b-MAL-ED          INDIA                          5       241      8      8      0
3 months    ki0047075b-MAL-ED          INDIA                          6       241     17     17      0
3 months    ki0047075b-MAL-ED          INDIA                          7       241     25     22      3
3 months    ki0047075b-MAL-ED          INDIA                          8       241     23     22      1
3 months    ki0047075b-MAL-ED          INDIA                          9       241     21     19      2
3 months    ki0047075b-MAL-ED          INDIA                          10      241     27     25      2
3 months    ki0047075b-MAL-ED          INDIA                          11      241     25     25      0
3 months    ki0047075b-MAL-ED          INDIA                          12      241     19     18      1
3 months    ki0047075b-MAL-ED          NEPAL                          1       236     20     19      1
3 months    ki0047075b-MAL-ED          NEPAL                          2       236     19     18      1
3 months    ki0047075b-MAL-ED          NEPAL                          3       236     16     16      0
3 months    ki0047075b-MAL-ED          NEPAL                          4       236     20     20      0
3 months    ki0047075b-MAL-ED          NEPAL                          5       236     21     21      0
3 months    ki0047075b-MAL-ED          NEPAL                          6       236     21     21      0
3 months    ki0047075b-MAL-ED          NEPAL                          7       236     17     17      0
3 months    ki0047075b-MAL-ED          NEPAL                          8       236     24     24      0
3 months    ki0047075b-MAL-ED          NEPAL                          9       236     14     13      1
3 months    ki0047075b-MAL-ED          NEPAL                          10      236     22     22      0
3 months    ki0047075b-MAL-ED          NEPAL                          11      236     24     24      0
3 months    ki0047075b-MAL-ED          NEPAL                          12      236     18     18      0
3 months    ki0047075b-MAL-ED          PERU                           1       291     39     36      3
3 months    ki0047075b-MAL-ED          PERU                           2       291     24     24      0
3 months    ki0047075b-MAL-ED          PERU                           3       291     21     21      0
3 months    ki0047075b-MAL-ED          PERU                           4       291     20     18      2
3 months    ki0047075b-MAL-ED          PERU                           5       291     25     20      5
3 months    ki0047075b-MAL-ED          PERU                           6       291     19     17      2
3 months    ki0047075b-MAL-ED          PERU                           7       291     24     22      2
3 months    ki0047075b-MAL-ED          PERU                           8       291     18     18      0
3 months    ki0047075b-MAL-ED          PERU                           9       291     23     23      0
3 months    ki0047075b-MAL-ED          PERU                           10      291     24     22      2
3 months    ki0047075b-MAL-ED          PERU                           11      291     32     29      3
3 months    ki0047075b-MAL-ED          PERU                           12      291     22     21      1
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1       281     40     35      5
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2       281     23     22      1
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3       281     17     17      0
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4       281     13     13      0
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   5       281     14     13      1
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   6       281     18     18      0
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   7       281     26     26      0
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   8       281     12     12      0
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   9       281     23     23      0
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   10      281     29     28      1
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   11      281     26     24      2
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   12      281     40     40      0
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1       254     22     22      0
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2       254     29     29      0
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3       254     19     18      1
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4       254      8      8      0
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5       254     19     17      2
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6       254     20     20      0
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7       254     23     22      1
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8       254     12     11      1
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9       254     23     21      2
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10      254     22     21      1
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11      254     27     26      1
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12      254     30     26      4
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
3 months    ki1000108-IRC              INDIA                          1       407     34     28      6
3 months    ki1000108-IRC              INDIA                          2       407     27     22      5
3 months    ki1000108-IRC              INDIA                          3       407     29     27      2
3 months    ki1000108-IRC              INDIA                          4       407     22     20      2
3 months    ki1000108-IRC              INDIA                          5       407     21     17      4
3 months    ki1000108-IRC              INDIA                          6       407     37     37      0
3 months    ki1000108-IRC              INDIA                          7       407     36     35      1
3 months    ki1000108-IRC              INDIA                          8       407     44     44      0
3 months    ki1000108-IRC              INDIA                          9       407     27     24      3
3 months    ki1000108-IRC              INDIA                          10      407     37     35      2
3 months    ki1000108-IRC              INDIA                          11      407     41     37      4
3 months    ki1000108-IRC              INDIA                          12      407     52     45      7
3 months    ki1000109-EE               PAKISTAN                       1       376     94     60     34
3 months    ki1000109-EE               PAKISTAN                       2       376     65     49     16
3 months    ki1000109-EE               PAKISTAN                       3       376     42     33      9
3 months    ki1000109-EE               PAKISTAN                       4       376     16      9      7
3 months    ki1000109-EE               PAKISTAN                       5       376      0      0      0
3 months    ki1000109-EE               PAKISTAN                       6       376      0      0      0
3 months    ki1000109-EE               PAKISTAN                       7       376      0      0      0
3 months    ki1000109-EE               PAKISTAN                       8       376      0      0      0
3 months    ki1000109-EE               PAKISTAN                       9       376      0      0      0
3 months    ki1000109-EE               PAKISTAN                       10      376      4      3      1
3 months    ki1000109-EE               PAKISTAN                       11      376     70     41     29
3 months    ki1000109-EE               PAKISTAN                       12      376     85     59     26
3 months    ki1000109-ResPak           PAKISTAN                       1       260      9      8      1
3 months    ki1000109-ResPak           PAKISTAN                       2       260     11     11      0
3 months    ki1000109-ResPak           PAKISTAN                       3       260     17     10      7
3 months    ki1000109-ResPak           PAKISTAN                       4       260     31     25      6
3 months    ki1000109-ResPak           PAKISTAN                       5       260     35     27      8
3 months    ki1000109-ResPak           PAKISTAN                       6       260     49     37     12
3 months    ki1000109-ResPak           PAKISTAN                       7       260     35     29      6
3 months    ki1000109-ResPak           PAKISTAN                       8       260     35     28      7
3 months    ki1000109-ResPak           PAKISTAN                       9       260     24     19      5
3 months    ki1000109-ResPak           PAKISTAN                       10      260      8      8      0
3 months    ki1000109-ResPak           PAKISTAN                       11      260      4      2      2
3 months    ki1000109-ResPak           PAKISTAN                       12      260      2      1      1
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          1        97     14     11      3
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          2        97      9      7      2
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          3        97      9      6      3
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          4        97      7      6      1
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          5        97      8      7      1
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          6        97      8      8      0
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          7        97      5      5      0
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          8        97      0      0      0
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          9        97      3      2      1
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          10       97      6      5      1
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          11       97     12     12      0
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          12       97     16     15      1
3 months    ki1017093-NIH-Birth        BANGLADESH                     1       570     60     55      5
3 months    ki1017093-NIH-Birth        BANGLADESH                     2       570     52     50      2
3 months    ki1017093-NIH-Birth        BANGLADESH                     3       570     52     49      3
3 months    ki1017093-NIH-Birth        BANGLADESH                     4       570     48     45      3
3 months    ki1017093-NIH-Birth        BANGLADESH                     5       570     44     41      3
3 months    ki1017093-NIH-Birth        BANGLADESH                     6       570     41     38      3
3 months    ki1017093-NIH-Birth        BANGLADESH                     7       570     43     42      1
3 months    ki1017093-NIH-Birth        BANGLADESH                     8       570     40     36      4
3 months    ki1017093-NIH-Birth        BANGLADESH                     9       570     30     29      1
3 months    ki1017093-NIH-Birth        BANGLADESH                     10      570     56     52      4
3 months    ki1017093-NIH-Birth        BANGLADESH                     11      570     52     50      2
3 months    ki1017093-NIH-Birth        BANGLADESH                     12      570     52     50      2
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1      2292    156    155      1
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2      2292    172    171      1
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3      2292    168    166      2
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4      2292    172    172      0
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5      2292    178    177      1
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6      2292    158    156      2
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7      2292    200    200      0
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8      2292    226    219      7
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9      2292    209    207      2
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10     2292    238    233      5
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11     2292    213    213      0
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12     2292    202    198      4
3 months    ki1112895-Guatemala BSC    GUATEMALA                      1        23      0      0      0
3 months    ki1112895-Guatemala BSC    GUATEMALA                      2        23      0      0      0
3 months    ki1112895-Guatemala BSC    GUATEMALA                      3        23      8      7      1
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
3 months    ki1113344-GMS-Nepal        NEPAL                          6       571    103    100      3
3 months    ki1113344-GMS-Nepal        NEPAL                          7       571    220    209     11
3 months    ki1113344-GMS-Nepal        NEPAL                          8       571    231    223      8
3 months    ki1113344-GMS-Nepal        NEPAL                          9       571     15     15      0
3 months    ki1113344-GMS-Nepal        NEPAL                          10      571      2      2      0
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
3 months    ki1114097-CMIN             GUINEA-BISSAU                  1       507     46     45      1
3 months    ki1114097-CMIN             GUINEA-BISSAU                  2       507     42     38      4
3 months    ki1114097-CMIN             GUINEA-BISSAU                  3       507     22     21      1
3 months    ki1114097-CMIN             GUINEA-BISSAU                  4       507     74     71      3
3 months    ki1114097-CMIN             GUINEA-BISSAU                  5       507     46     44      2
3 months    ki1114097-CMIN             GUINEA-BISSAU                  6       507     42     42      0
3 months    ki1114097-CMIN             GUINEA-BISSAU                  7       507     28     26      2
3 months    ki1114097-CMIN             GUINEA-BISSAU                  8       507     22     22      0
3 months    ki1114097-CMIN             GUINEA-BISSAU                  9       507     73     71      2
3 months    ki1114097-CMIN             GUINEA-BISSAU                  10      507     26     26      0
3 months    ki1114097-CMIN             GUINEA-BISSAU                  11      507     40     38      2
3 months    ki1114097-CMIN             GUINEA-BISSAU                  12      507     46     45      1
3 months    ki1114097-CMIN             PERU                           1       630     51     51      0
3 months    ki1114097-CMIN             PERU                           2       630     54     53      1
3 months    ki1114097-CMIN             PERU                           3       630     65     62      3
3 months    ki1114097-CMIN             PERU                           4       630     66     66      0
3 months    ki1114097-CMIN             PERU                           5       630     61     60      1
3 months    ki1114097-CMIN             PERU                           6       630     54     53      1
3 months    ki1114097-CMIN             PERU                           7       630     42     41      1
3 months    ki1114097-CMIN             PERU                           8       630     45     45      0
3 months    ki1114097-CMIN             PERU                           9       630     38     38      0
3 months    ki1114097-CMIN             PERU                           10      630     26     26      0
3 months    ki1114097-CMIN             PERU                           11      630     79     78      1
3 months    ki1114097-CMIN             PERU                           12      630     49     49      0
3 months    ki1114097-CONTENT          PERU                           1       215      9      9      0
3 months    ki1114097-CONTENT          PERU                           2       215     16     16      0
3 months    ki1114097-CONTENT          PERU                           3       215     30     30      0
3 months    ki1114097-CONTENT          PERU                           4       215     12     12      0
3 months    ki1114097-CONTENT          PERU                           5       215     25     25      0
3 months    ki1114097-CONTENT          PERU                           6       215     14     13      1
3 months    ki1114097-CONTENT          PERU                           7       215     24     24      0
3 months    ki1114097-CONTENT          PERU                           8       215     18     17      1
3 months    ki1114097-CONTENT          PERU                           9       215     20     19      1
3 months    ki1114097-CONTENT          PERU                           10      215     24     24      0
3 months    ki1114097-CONTENT          PERU                           11      215     18     18      0
3 months    ki1114097-CONTENT          PERU                           12      215      5      5      0
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       1      9172    927    886     41
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       2      9172    666    622     44
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       3      9172    798    752     46
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       4      9172    683    639     44
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       5      9172    684    645     39
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       6      9172    793    703     90
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       7      9172    785    746     39
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       8      9172    843    799     44
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       9      9172    806    779     27
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       10     9172    622    584     38
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       11     9172    706    670     36
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       12     9172    859    822     37
6 months    ki0047075b-MAL-ED          BANGLADESH                     1       241     16     15      1
6 months    ki0047075b-MAL-ED          BANGLADESH                     2       241     20     20      0
6 months    ki0047075b-MAL-ED          BANGLADESH                     3       241     25     24      1
6 months    ki0047075b-MAL-ED          BANGLADESH                     4       241     22     22      0
6 months    ki0047075b-MAL-ED          BANGLADESH                     5       241     21     20      1
6 months    ki0047075b-MAL-ED          BANGLADESH                     6       241      8      8      0
6 months    ki0047075b-MAL-ED          BANGLADESH                     7       241     20     19      1
6 months    ki0047075b-MAL-ED          BANGLADESH                     8       241     22     20      2
6 months    ki0047075b-MAL-ED          BANGLADESH                     9       241     23     23      0
6 months    ki0047075b-MAL-ED          BANGLADESH                     10      241     21     19      2
6 months    ki0047075b-MAL-ED          BANGLADESH                     11      241     16     16      0
6 months    ki0047075b-MAL-ED          BANGLADESH                     12      241     27     27      0
6 months    ki0047075b-MAL-ED          BRAZIL                         1       209     13     13      0
6 months    ki0047075b-MAL-ED          BRAZIL                         2       209     24     24      0
6 months    ki0047075b-MAL-ED          BRAZIL                         3       209     17     17      0
6 months    ki0047075b-MAL-ED          BRAZIL                         4       209     11     11      0
6 months    ki0047075b-MAL-ED          BRAZIL                         5       209     21     21      0
6 months    ki0047075b-MAL-ED          BRAZIL                         6       209      7      7      0
6 months    ki0047075b-MAL-ED          BRAZIL                         7       209     17     17      0
6 months    ki0047075b-MAL-ED          BRAZIL                         8       209     16     16      0
6 months    ki0047075b-MAL-ED          BRAZIL                         9       209     29     29      0
6 months    ki0047075b-MAL-ED          BRAZIL                         10      209     21     21      0
6 months    ki0047075b-MAL-ED          BRAZIL                         11      209     18     18      0
6 months    ki0047075b-MAL-ED          BRAZIL                         12      209     15     15      0
6 months    ki0047075b-MAL-ED          INDIA                          1       236     19     18      1
6 months    ki0047075b-MAL-ED          INDIA                          2       236     18     18      0
6 months    ki0047075b-MAL-ED          INDIA                          3       236     21     21      0
6 months    ki0047075b-MAL-ED          INDIA                          4       236     16     16      0
6 months    ki0047075b-MAL-ED          INDIA                          5       236      8      8      0
6 months    ki0047075b-MAL-ED          INDIA                          6       236     18     18      0
6 months    ki0047075b-MAL-ED          INDIA                          7       236     23     20      3
6 months    ki0047075b-MAL-ED          INDIA                          8       236     22     21      1
6 months    ki0047075b-MAL-ED          INDIA                          9       236     20     19      1
6 months    ki0047075b-MAL-ED          INDIA                          10      236     27     25      2
6 months    ki0047075b-MAL-ED          INDIA                          11      236     25     25      0
6 months    ki0047075b-MAL-ED          INDIA                          12      236     19     18      1
6 months    ki0047075b-MAL-ED          NEPAL                          1       236     20     20      0
6 months    ki0047075b-MAL-ED          NEPAL                          2       236     19     18      1
6 months    ki0047075b-MAL-ED          NEPAL                          3       236     17     17      0
6 months    ki0047075b-MAL-ED          NEPAL                          4       236     20     20      0
6 months    ki0047075b-MAL-ED          NEPAL                          5       236     19     19      0
6 months    ki0047075b-MAL-ED          NEPAL                          6       236     21     21      0
6 months    ki0047075b-MAL-ED          NEPAL                          7       236     18     18      0
6 months    ki0047075b-MAL-ED          NEPAL                          8       236     24     24      0
6 months    ki0047075b-MAL-ED          NEPAL                          9       236     14     14      0
6 months    ki0047075b-MAL-ED          NEPAL                          10      236     22     22      0
6 months    ki0047075b-MAL-ED          NEPAL                          11      236     24     24      0
6 months    ki0047075b-MAL-ED          NEPAL                          12      236     18     18      0
6 months    ki0047075b-MAL-ED          PERU                           1       273     36     35      1
6 months    ki0047075b-MAL-ED          PERU                           2       273     21     19      2
6 months    ki0047075b-MAL-ED          PERU                           3       273     21     20      1
6 months    ki0047075b-MAL-ED          PERU                           4       273     20     19      1
6 months    ki0047075b-MAL-ED          PERU                           5       273     25     25      0
6 months    ki0047075b-MAL-ED          PERU                           6       273     18     17      1
6 months    ki0047075b-MAL-ED          PERU                           7       273     22     22      0
6 months    ki0047075b-MAL-ED          PERU                           8       273     16     15      1
6 months    ki0047075b-MAL-ED          PERU                           9       273     23     23      0
6 months    ki0047075b-MAL-ED          PERU                           10      273     19     18      1
6 months    ki0047075b-MAL-ED          PERU                           11      273     32     28      4
6 months    ki0047075b-MAL-ED          PERU                           12      273     20     20      0
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1       254     38     36      2
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2       254     22     22      0
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3       254     16     16      0
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4       254     13     13      0
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   5       254     12     11      1
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   6       254     17     17      0
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   7       254     24     24      0
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   8       254      9      9      0
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   9       254     18     18      0
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   10      254     26     25      1
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   11      254     23     22      1
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   12      254     36     35      1
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1       247     22     20      2
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2       247     29     28      1
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3       247     19     17      2
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4       247      8      8      0
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5       247     15     14      1
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6       247     20     20      0
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7       247     23     21      2
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8       247     12     11      1
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9       247     22     22      0
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10      247     21     19      2
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11      247     27     25      2
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12      247     29     28      1
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
6 months    ki1000108-IRC              INDIA                          1       407     36     32      4
6 months    ki1000108-IRC              INDIA                          2       407     27     23      4
6 months    ki1000108-IRC              INDIA                          3       407     29     28      1
6 months    ki1000108-IRC              INDIA                          4       407     22     18      4
6 months    ki1000108-IRC              INDIA                          5       407     20     17      3
6 months    ki1000108-IRC              INDIA                          6       407     37     36      1
6 months    ki1000108-IRC              INDIA                          7       407     36     35      1
6 months    ki1000108-IRC              INDIA                          8       407     45     44      1
6 months    ki1000108-IRC              INDIA                          9       407     27     26      1
6 months    ki1000108-IRC              INDIA                          10      407     36     36      0
6 months    ki1000108-IRC              INDIA                          11      407     41     36      5
6 months    ki1000108-IRC              INDIA                          12      407     51     47      4
6 months    ki1000109-EE               PAKISTAN                       1       372     90     62     28
6 months    ki1000109-EE               PAKISTAN                       2       372     66     52     14
6 months    ki1000109-EE               PAKISTAN                       3       372     43     37      6
6 months    ki1000109-EE               PAKISTAN                       4       372     16     11      5
6 months    ki1000109-EE               PAKISTAN                       5       372      0      0      0
6 months    ki1000109-EE               PAKISTAN                       6       372      0      0      0
6 months    ki1000109-EE               PAKISTAN                       7       372      0      0      0
6 months    ki1000109-EE               PAKISTAN                       8       372      0      0      0
6 months    ki1000109-EE               PAKISTAN                       9       372      0      0      0
6 months    ki1000109-EE               PAKISTAN                       10      372      4      3      1
6 months    ki1000109-EE               PAKISTAN                       11      372     70     49     21
6 months    ki1000109-EE               PAKISTAN                       12      372     83     64     19
6 months    ki1000109-ResPak           PAKISTAN                       1       235      8      7      1
6 months    ki1000109-ResPak           PAKISTAN                       2       235     12     12      0
6 months    ki1000109-ResPak           PAKISTAN                       3       235     16      8      8
6 months    ki1000109-ResPak           PAKISTAN                       4       235     26     20      6
6 months    ki1000109-ResPak           PAKISTAN                       5       235     32     25      7
6 months    ki1000109-ResPak           PAKISTAN                       6       235     48     39      9
6 months    ki1000109-ResPak           PAKISTAN                       7       235     28     26      2
6 months    ki1000109-ResPak           PAKISTAN                       8       235     33     26      7
6 months    ki1000109-ResPak           PAKISTAN                       9       235     22     19      3
6 months    ki1000109-ResPak           PAKISTAN                       10      235      7      7      0
6 months    ki1000109-ResPak           PAKISTAN                       11      235      1      1      0
6 months    ki1000109-ResPak           PAKISTAN                       12      235      2      1      1
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1        96     15     11      4
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          2        96      9      9      0
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          3        96      9      5      4
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          4        96      7      6      1
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          5        96      7      5      2
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          6        96      9      7      2
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          7        96      5      5      0
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          8        96      0      0      0
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          9        96      4      4      0
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          10       96      6      5      1
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          11       96     10     10      0
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          12       96     15     14      1
6 months    ki1017093-NIH-Birth        BANGLADESH                     1       537     50     46      4
6 months    ki1017093-NIH-Birth        BANGLADESH                     2       537     50     47      3
6 months    ki1017093-NIH-Birth        BANGLADESH                     3       537     50     46      4
6 months    ki1017093-NIH-Birth        BANGLADESH                     4       537     44     42      2
6 months    ki1017093-NIH-Birth        BANGLADESH                     5       537     40     39      1
6 months    ki1017093-NIH-Birth        BANGLADESH                     6       537     39     35      4
6 months    ki1017093-NIH-Birth        BANGLADESH                     7       537     45     42      3
6 months    ki1017093-NIH-Birth        BANGLADESH                     8       537     38     36      2
6 months    ki1017093-NIH-Birth        BANGLADESH                     9       537     30     28      2
6 months    ki1017093-NIH-Birth        BANGLADESH                     10      537     52     48      4
6 months    ki1017093-NIH-Birth        BANGLADESH                     11      537     49     44      5
6 months    ki1017093-NIH-Birth        BANGLADESH                     12      537     50     49      1
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1      2029    138    136      2
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2      2029    148    146      2
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3      2029    146    144      2
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4      2029    147    147      0
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5      2029    153    152      1
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6      2029    142    141      1
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7      2029    187    185      2
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8      2029    206    203      3
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9      2029    182    181      1
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10     2029    209    204      5
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11     2029    192    192      0
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12     2029    179    179      0
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1       299     18     17      1
6 months    ki1112895-Guatemala BSC    GUATEMALA                      2       299     19     19      0
6 months    ki1112895-Guatemala BSC    GUATEMALA                      3       299     21     21      0
6 months    ki1112895-Guatemala BSC    GUATEMALA                      4       299     28     26      2
6 months    ki1112895-Guatemala BSC    GUATEMALA                      5       299     30     29      1
6 months    ki1112895-Guatemala BSC    GUATEMALA                      6       299     39     35      4
6 months    ki1112895-Guatemala BSC    GUATEMALA                      7       299     24     20      4
6 months    ki1112895-Guatemala BSC    GUATEMALA                      8       299     19     16      3
6 months    ki1112895-Guatemala BSC    GUATEMALA                      9       299     34     32      2
6 months    ki1112895-Guatemala BSC    GUATEMALA                      10      299     29     23      6
6 months    ki1112895-Guatemala BSC    GUATEMALA                      11      299     28     25      3
6 months    ki1112895-Guatemala BSC    GUATEMALA                      12      299     10      9      1
6 months    ki1113344-GMS-Nepal        NEPAL                          1       563      0      0      0
6 months    ki1113344-GMS-Nepal        NEPAL                          2       563      0      0      0
6 months    ki1113344-GMS-Nepal        NEPAL                          3       563      0      0      0
6 months    ki1113344-GMS-Nepal        NEPAL                          4       563      0      0      0
6 months    ki1113344-GMS-Nepal        NEPAL                          5       563      0      0      0
6 months    ki1113344-GMS-Nepal        NEPAL                          6       563    104    100      4
6 months    ki1113344-GMS-Nepal        NEPAL                          7       563    216    208      8
6 months    ki1113344-GMS-Nepal        NEPAL                          8       563    226    218      8
6 months    ki1113344-GMS-Nepal        NEPAL                          9       563     15     15      0
6 months    ki1113344-GMS-Nepal        NEPAL                          10      563      2      2      0
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
6 months    ki1114097-CMIN             GUINEA-BISSAU                  1       848     59     59      0
6 months    ki1114097-CMIN             GUINEA-BISSAU                  2       848     62     58      4
6 months    ki1114097-CMIN             GUINEA-BISSAU                  3       848     63     60      3
6 months    ki1114097-CMIN             GUINEA-BISSAU                  4       848    141    140      1
6 months    ki1114097-CMIN             GUINEA-BISSAU                  5       848     99     97      2
6 months    ki1114097-CMIN             GUINEA-BISSAU                  6       848     78     78      0
6 months    ki1114097-CMIN             GUINEA-BISSAU                  7       848     45     43      2
6 months    ki1114097-CMIN             GUINEA-BISSAU                  8       848     37     37      0
6 months    ki1114097-CMIN             GUINEA-BISSAU                  9       848     94     91      3
6 months    ki1114097-CMIN             GUINEA-BISSAU                  10      848     60     60      0
6 months    ki1114097-CMIN             GUINEA-BISSAU                  11      848     54     51      3
6 months    ki1114097-CMIN             GUINEA-BISSAU                  12      848     56     56      0
6 months    ki1114097-CMIN             PERU                           1       637     62     61      1
6 months    ki1114097-CMIN             PERU                           2       637     51     49      2
6 months    ki1114097-CMIN             PERU                           3       637     63     62      1
6 months    ki1114097-CMIN             PERU                           4       637     71     69      2
6 months    ki1114097-CMIN             PERU                           5       637     54     54      0
6 months    ki1114097-CMIN             PERU                           6       637     54     54      0
6 months    ki1114097-CMIN             PERU                           7       637     47     47      0
6 months    ki1114097-CMIN             PERU                           8       637     47     46      1
6 months    ki1114097-CMIN             PERU                           9       637     41     41      0
6 months    ki1114097-CMIN             PERU                           10      637     28     28      0
6 months    ki1114097-CMIN             PERU                           11      637     74     73      1
6 months    ki1114097-CMIN             PERU                           12      637     45     45      0
6 months    ki1114097-CONTENT          PERU                           1       215      9      9      0
6 months    ki1114097-CONTENT          PERU                           2       215     16     16      0
6 months    ki1114097-CONTENT          PERU                           3       215     30     30      0
6 months    ki1114097-CONTENT          PERU                           4       215     12     12      0
6 months    ki1114097-CONTENT          PERU                           5       215     25     24      1
6 months    ki1114097-CONTENT          PERU                           6       215     14     13      1
6 months    ki1114097-CONTENT          PERU                           7       215     24     24      0
6 months    ki1114097-CONTENT          PERU                           8       215     18     17      1
6 months    ki1114097-CONTENT          PERU                           9       215     20     19      1
6 months    ki1114097-CONTENT          PERU                           10      215     24     24      0
6 months    ki1114097-CONTENT          PERU                           11      215     18     18      0
6 months    ki1114097-CONTENT          PERU                           12      215      5      5      0
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1      8279    804    776     28
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       2      8279    579    558     21
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       3      8279    724    678     46
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       4      8279    651    624     27
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       5      8279    594    572     22
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       6      8279    650    618     32
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       7      8279    637    603     34
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       8      8279    730    707     23
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       9      8279    762    737     25
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       10     8279    599    576     23
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       11     8279    729    699     30
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       12     8279    820    785     35
6 months    ki1148112-LCNI-5           MALAWI                         1       839     56     52      4
6 months    ki1148112-LCNI-5           MALAWI                         2       839    114    111      3
6 months    ki1148112-LCNI-5           MALAWI                         3       839     98     89      9
6 months    ki1148112-LCNI-5           MALAWI                         4       839    111     96     15
6 months    ki1148112-LCNI-5           MALAWI                         5       839    109    100      9
6 months    ki1148112-LCNI-5           MALAWI                         6       839     91     87      4
6 months    ki1148112-LCNI-5           MALAWI                         7       839     72     63      9
6 months    ki1148112-LCNI-5           MALAWI                         8       839     43     40      3
6 months    ki1148112-LCNI-5           MALAWI                         9       839     27     25      2
6 months    ki1148112-LCNI-5           MALAWI                         10      839     35     34      1
6 months    ki1148112-LCNI-5           MALAWI                         11      839     49     43      6
6 months    ki1148112-LCNI-5           MALAWI                         12      839     34     28      6
9 months    ki0047075b-MAL-ED          BANGLADESH                     1       234     17     16      1
9 months    ki0047075b-MAL-ED          BANGLADESH                     2       234     19     18      1
9 months    ki0047075b-MAL-ED          BANGLADESH                     3       234     23     22      1
9 months    ki0047075b-MAL-ED          BANGLADESH                     4       234     20     20      0
9 months    ki0047075b-MAL-ED          BANGLADESH                     5       234     21     20      1
9 months    ki0047075b-MAL-ED          BANGLADESH                     6       234      7      7      0
9 months    ki0047075b-MAL-ED          BANGLADESH                     7       234     20     18      2
9 months    ki0047075b-MAL-ED          BANGLADESH                     8       234     22     19      3
9 months    ki0047075b-MAL-ED          BANGLADESH                     9       234     21     21      0
9 months    ki0047075b-MAL-ED          BANGLADESH                     10      234     21     19      2
9 months    ki0047075b-MAL-ED          BANGLADESH                     11      234     15     15      0
9 months    ki0047075b-MAL-ED          BANGLADESH                     12      234     28     28      0
9 months    ki0047075b-MAL-ED          BRAZIL                         1       199     13     13      0
9 months    ki0047075b-MAL-ED          BRAZIL                         2       199     22     22      0
9 months    ki0047075b-MAL-ED          BRAZIL                         3       199     17     17      0
9 months    ki0047075b-MAL-ED          BRAZIL                         4       199     10     10      0
9 months    ki0047075b-MAL-ED          BRAZIL                         5       199     20     20      0
9 months    ki0047075b-MAL-ED          BRAZIL                         6       199      6      6      0
9 months    ki0047075b-MAL-ED          BRAZIL                         7       199     17     17      0
9 months    ki0047075b-MAL-ED          BRAZIL                         8       199     14     14      0
9 months    ki0047075b-MAL-ED          BRAZIL                         9       199     29     29      0
9 months    ki0047075b-MAL-ED          BRAZIL                         10      199     19     19      0
9 months    ki0047075b-MAL-ED          BRAZIL                         11      199     18     18      0
9 months    ki0047075b-MAL-ED          BRAZIL                         12      199     14     14      0
9 months    ki0047075b-MAL-ED          INDIA                          1       232     19     18      1
9 months    ki0047075b-MAL-ED          INDIA                          2       232     18     18      0
9 months    ki0047075b-MAL-ED          INDIA                          3       232     20     20      0
9 months    ki0047075b-MAL-ED          INDIA                          4       232     15     14      1
9 months    ki0047075b-MAL-ED          INDIA                          5       232      8      8      0
9 months    ki0047075b-MAL-ED          INDIA                          6       232     18     18      0
9 months    ki0047075b-MAL-ED          INDIA                          7       232     23     22      1
9 months    ki0047075b-MAL-ED          INDIA                          8       232     22     21      1
9 months    ki0047075b-MAL-ED          INDIA                          9       232     19     17      2
9 months    ki0047075b-MAL-ED          INDIA                          10      232     27     25      2
9 months    ki0047075b-MAL-ED          INDIA                          11      232     24     23      1
9 months    ki0047075b-MAL-ED          INDIA                          12      232     19     18      1
9 months    ki0047075b-MAL-ED          NEPAL                          1       231     20     20      0
9 months    ki0047075b-MAL-ED          NEPAL                          2       231     17     17      0
9 months    ki0047075b-MAL-ED          NEPAL                          3       231     17     16      1
9 months    ki0047075b-MAL-ED          NEPAL                          4       231     20     20      0
9 months    ki0047075b-MAL-ED          NEPAL                          5       231     18     18      0
9 months    ki0047075b-MAL-ED          NEPAL                          6       231     21     21      0
9 months    ki0047075b-MAL-ED          NEPAL                          7       231     18     18      0
9 months    ki0047075b-MAL-ED          NEPAL                          8       231     24     24      0
9 months    ki0047075b-MAL-ED          NEPAL                          9       231     13     13      0
9 months    ki0047075b-MAL-ED          NEPAL                          10      231     21     21      0
9 months    ki0047075b-MAL-ED          NEPAL                          11      231     24     24      0
9 months    ki0047075b-MAL-ED          NEPAL                          12      231     18     18      0
9 months    ki0047075b-MAL-ED          PERU                           1       256     34     33      1
9 months    ki0047075b-MAL-ED          PERU                           2       256     21     19      2
9 months    ki0047075b-MAL-ED          PERU                           3       256     20     19      1
9 months    ki0047075b-MAL-ED          PERU                           4       256     20     18      2
9 months    ki0047075b-MAL-ED          PERU                           5       256     21     20      1
9 months    ki0047075b-MAL-ED          PERU                           6       256     17     16      1
9 months    ki0047075b-MAL-ED          PERU                           7       256     20     20      0
9 months    ki0047075b-MAL-ED          PERU                           8       256     14     14      0
9 months    ki0047075b-MAL-ED          PERU                           9       256     23     22      1
9 months    ki0047075b-MAL-ED          PERU                           10      256     16     16      0
9 months    ki0047075b-MAL-ED          PERU                           11      256     30     28      2
9 months    ki0047075b-MAL-ED          PERU                           12      256     20     19      1
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1       250     37     34      3
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2       250     22     22      0
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3       250     16     16      0
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4       250     12     12      0
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   5       250     11     11      0
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   6       250     15     15      0
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   7       250     24     23      1
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   8       250      9      9      0
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   9       250     19     19      0
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   10      250     26     24      2
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   11      250     24     22      2
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   12      250     35     34      1
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1       238     18     16      2
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2       238     28     27      1
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3       238     19     16      3
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4       238      8      7      1
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5       238     18     17      1
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6       238     20     20      0
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7       238     21     19      2
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8       238     12     10      2
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9       238     21     20      1
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10      238     21     17      4
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11      238     25     19      6
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12      238     27     21      6
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
9 months    ki1000108-IRC              INDIA                          1       407     36     31      5
9 months    ki1000108-IRC              INDIA                          2       407     27     23      4
9 months    ki1000108-IRC              INDIA                          3       407     29     28      1
9 months    ki1000108-IRC              INDIA                          4       407     22     18      4
9 months    ki1000108-IRC              INDIA                          5       407     20     14      6
9 months    ki1000108-IRC              INDIA                          6       407     37     36      1
9 months    ki1000108-IRC              INDIA                          7       407     36     34      2
9 months    ki1000108-IRC              INDIA                          8       407     45     44      1
9 months    ki1000108-IRC              INDIA                          9       407     27     26      1
9 months    ki1000108-IRC              INDIA                          10      407     36     36      0
9 months    ki1000108-IRC              INDIA                          11      407     41     37      4
9 months    ki1000108-IRC              INDIA                          12      407     51     46      5
9 months    ki1000109-EE               PAKISTAN                       1       366     90     63     27
9 months    ki1000109-EE               PAKISTAN                       2       366     65     45     20
9 months    ki1000109-EE               PAKISTAN                       3       366     42     33      9
9 months    ki1000109-EE               PAKISTAN                       4       366     16      8      8
9 months    ki1000109-EE               PAKISTAN                       5       366      0      0      0
9 months    ki1000109-EE               PAKISTAN                       6       366      0      0      0
9 months    ki1000109-EE               PAKISTAN                       7       366      0      0      0
9 months    ki1000109-EE               PAKISTAN                       8       366      0      0      0
9 months    ki1000109-EE               PAKISTAN                       9       366      0      0      0
9 months    ki1000109-EE               PAKISTAN                       10      366      4      3      1
9 months    ki1000109-EE               PAKISTAN                       11      366     68     53     15
9 months    ki1000109-EE               PAKISTAN                       12      366     81     66     15
9 months    ki1000109-ResPak           PAKISTAN                       1       211      8      5      3
9 months    ki1000109-ResPak           PAKISTAN                       2       211      9      8      1
9 months    ki1000109-ResPak           PAKISTAN                       3       211     13      9      4
9 months    ki1000109-ResPak           PAKISTAN                       4       211     20     19      1
9 months    ki1000109-ResPak           PAKISTAN                       5       211     33     27      6
9 months    ki1000109-ResPak           PAKISTAN                       6       211     46     38      8
9 months    ki1000109-ResPak           PAKISTAN                       7       211     19     18      1
9 months    ki1000109-ResPak           PAKISTAN                       8       211     30     27      3
9 months    ki1000109-ResPak           PAKISTAN                       9       211     22     17      5
9 months    ki1000109-ResPak           PAKISTAN                       10      211      7      7      0
9 months    ki1000109-ResPak           PAKISTAN                       11      211      2      1      1
9 months    ki1000109-ResPak           PAKISTAN                       12      211      2      2      0
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          1        85     12     10      2
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          2        85      7      5      2
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          3        85      7      4      3
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          4        85      8      4      4
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          5        85      7      5      2
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          6        85      7      5      2
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          7        85      5      5      0
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          8        85      0      0      0
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          9        85      4      4      0
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          10       85      4      3      1
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          11       85     10      9      1
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          12       85     14     11      3
9 months    ki1017093-NIH-Birth        BANGLADESH                     1       507     49     46      3
9 months    ki1017093-NIH-Birth        BANGLADESH                     2       507     44     42      2
9 months    ki1017093-NIH-Birth        BANGLADESH                     3       507     47     41      6
9 months    ki1017093-NIH-Birth        BANGLADESH                     4       507     42     38      4
9 months    ki1017093-NIH-Birth        BANGLADESH                     5       507     39     37      2
9 months    ki1017093-NIH-Birth        BANGLADESH                     6       507     39     36      3
9 months    ki1017093-NIH-Birth        BANGLADESH                     7       507     45     39      6
9 months    ki1017093-NIH-Birth        BANGLADESH                     8       507     31     29      2
9 months    ki1017093-NIH-Birth        BANGLADESH                     9       507     25     23      2
9 months    ki1017093-NIH-Birth        BANGLADESH                     10      507     49     45      4
9 months    ki1017093-NIH-Birth        BANGLADESH                     11      507     47     37     10
9 months    ki1017093-NIH-Birth        BANGLADESH                     12      507     50     49      1
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1      1788    121    115      6
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2      1788    133    132      1
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3      1788    130    125      5
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4      1788    124    120      4
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5      1788    134    131      3
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6      1788    122    121      1
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7      1788    170    167      3
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8      1788    185    181      4
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9      1788    165    165      0
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10     1788    188    182      6
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11     1788    168    166      2
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12     1788    148    148      0
9 months    ki1112895-Guatemala BSC    GUATEMALA                      1       238     11     10      1
9 months    ki1112895-Guatemala BSC    GUATEMALA                      2       238     17     16      1
9 months    ki1112895-Guatemala BSC    GUATEMALA                      3       238     17     14      3
9 months    ki1112895-Guatemala BSC    GUATEMALA                      4       238     20     17      3
9 months    ki1112895-Guatemala BSC    GUATEMALA                      5       238     24     22      2
9 months    ki1112895-Guatemala BSC    GUATEMALA                      6       238     35     32      3
9 months    ki1112895-Guatemala BSC    GUATEMALA                      7       238     22     18      4
9 months    ki1112895-Guatemala BSC    GUATEMALA                      8       238     18     16      2
9 months    ki1112895-Guatemala BSC    GUATEMALA                      9       238     27     24      3
9 months    ki1112895-Guatemala BSC    GUATEMALA                      10      238     20     18      2
9 months    ki1112895-Guatemala BSC    GUATEMALA                      11      238     20     16      4
9 months    ki1112895-Guatemala BSC    GUATEMALA                      12      238      7      5      2
9 months    ki1113344-GMS-Nepal        NEPAL                          1       551      0      0      0
9 months    ki1113344-GMS-Nepal        NEPAL                          2       551      0      0      0
9 months    ki1113344-GMS-Nepal        NEPAL                          3       551      0      0      0
9 months    ki1113344-GMS-Nepal        NEPAL                          4       551      0      0      0
9 months    ki1113344-GMS-Nepal        NEPAL                          5       551      0      0      0
9 months    ki1113344-GMS-Nepal        NEPAL                          6       551    102     96      6
9 months    ki1113344-GMS-Nepal        NEPAL                          7       551    212    197     15
9 months    ki1113344-GMS-Nepal        NEPAL                          8       551    220    206     14
9 months    ki1113344-GMS-Nepal        NEPAL                          9       551     15     15      0
9 months    ki1113344-GMS-Nepal        NEPAL                          10      551      2      2      0
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
9 months    ki1114097-CMIN             GUINEA-BISSAU                  1       866     65     62      3
9 months    ki1114097-CMIN             GUINEA-BISSAU                  2       866     55     48      7
9 months    ki1114097-CMIN             GUINEA-BISSAU                  3       866     56     55      1
9 months    ki1114097-CMIN             GUINEA-BISSAU                  4       866    158    154      4
9 months    ki1114097-CMIN             GUINEA-BISSAU                  5       866    103    102      1
9 months    ki1114097-CMIN             GUINEA-BISSAU                  6       866     84     79      5
9 months    ki1114097-CMIN             GUINEA-BISSAU                  7       866     61     56      5
9 months    ki1114097-CMIN             GUINEA-BISSAU                  8       866     37     35      2
9 months    ki1114097-CMIN             GUINEA-BISSAU                  9       866     87     86      1
9 months    ki1114097-CMIN             GUINEA-BISSAU                  10      866     47     47      0
9 months    ki1114097-CMIN             GUINEA-BISSAU                  11      866     54     53      1
9 months    ki1114097-CMIN             GUINEA-BISSAU                  12      866     59     56      3
9 months    ki1114097-CMIN             PERU                           1       625     79     78      1
9 months    ki1114097-CMIN             PERU                           2       625     45     43      2
9 months    ki1114097-CMIN             PERU                           3       625     58     56      2
9 months    ki1114097-CMIN             PERU                           4       625     66     65      1
9 months    ki1114097-CMIN             PERU                           5       625     63     63      0
9 months    ki1114097-CMIN             PERU                           6       625     48     48      0
9 months    ki1114097-CMIN             PERU                           7       625     48     47      1
9 months    ki1114097-CMIN             PERU                           8       625     47     45      2
9 months    ki1114097-CMIN             PERU                           9       625     34     34      0
9 months    ki1114097-CMIN             PERU                           10      625     25     25      0
9 months    ki1114097-CMIN             PERU                           11      625     70     69      1
9 months    ki1114097-CMIN             PERU                           12      625     42     42      0
9 months    ki1114097-CONTENT          PERU                           1       214      9      9      0
9 months    ki1114097-CONTENT          PERU                           2       214     16     16      0
9 months    ki1114097-CONTENT          PERU                           3       214     30     30      0
9 months    ki1114097-CONTENT          PERU                           4       214     12     11      1
9 months    ki1114097-CONTENT          PERU                           5       214     24     23      1
9 months    ki1114097-CONTENT          PERU                           6       214     14     12      2
9 months    ki1114097-CONTENT          PERU                           7       214     24     24      0
9 months    ki1114097-CONTENT          PERU                           8       214     18     17      1
9 months    ki1114097-CONTENT          PERU                           9       214     20     20      0
9 months    ki1114097-CONTENT          PERU                           10      214     24     24      0
9 months    ki1114097-CONTENT          PERU                           11      214     18     18      0
9 months    ki1114097-CONTENT          PERU                           12      214      5      5      0
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       1      7656    769    732     37
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       2      7656    605    567     38
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       3      7656    611    589     22
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       4      7656    550    529     21
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       5      7656    548    519     29
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       6      7656    617    584     33
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       7      7656    586    558     28
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       8      7656    687    658     29
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       9      7656    735    704     31
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       10     7656    569    544     25
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       11     7656    653    624     29
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       12     7656    726    680     46
9 months    ki1148112-LCNI-5           MALAWI                         1       664     44     41      3
9 months    ki1148112-LCNI-5           MALAWI                         2       664    100     97      3
9 months    ki1148112-LCNI-5           MALAWI                         3       664     83     77      6
9 months    ki1148112-LCNI-5           MALAWI                         4       664     93     84      9
9 months    ki1148112-LCNI-5           MALAWI                         5       664     84     80      4
9 months    ki1148112-LCNI-5           MALAWI                         6       664     72     69      3
9 months    ki1148112-LCNI-5           MALAWI                         7       664     53     46      7
9 months    ki1148112-LCNI-5           MALAWI                         8       664     32     32      0
9 months    ki1148112-LCNI-5           MALAWI                         9       664     21     19      2
9 months    ki1148112-LCNI-5           MALAWI                         10      664     24     24      0
9 months    ki1148112-LCNI-5           MALAWI                         11      664     35     31      4
9 months    ki1148112-LCNI-5           MALAWI                         12      664     23     17      6
12 months   ki0047075b-MAL-ED          BANGLADESH                     1       233     16     15      1
12 months   ki0047075b-MAL-ED          BANGLADESH                     2       233     19     16      3
12 months   ki0047075b-MAL-ED          BANGLADESH                     3       233     23     22      1
12 months   ki0047075b-MAL-ED          BANGLADESH                     4       233     21     21      0
12 months   ki0047075b-MAL-ED          BANGLADESH                     5       233     21     19      2
12 months   ki0047075b-MAL-ED          BANGLADESH                     6       233      7      7      0
12 months   ki0047075b-MAL-ED          BANGLADESH                     7       233     20     18      2
12 months   ki0047075b-MAL-ED          BANGLADESH                     8       233     21     18      3
12 months   ki0047075b-MAL-ED          BANGLADESH                     9       233     21     20      1
12 months   ki0047075b-MAL-ED          BANGLADESH                     10      233     21     18      3
12 months   ki0047075b-MAL-ED          BANGLADESH                     11      233     15     15      0
12 months   ki0047075b-MAL-ED          BANGLADESH                     12      233     28     27      1
12 months   ki0047075b-MAL-ED          BRAZIL                         1       195     13     13      0
12 months   ki0047075b-MAL-ED          BRAZIL                         2       195     22     22      0
12 months   ki0047075b-MAL-ED          BRAZIL                         3       195     17     17      0
12 months   ki0047075b-MAL-ED          BRAZIL                         4       195     10     10      0
12 months   ki0047075b-MAL-ED          BRAZIL                         5       195     20     20      0
12 months   ki0047075b-MAL-ED          BRAZIL                         6       195      6      6      0
12 months   ki0047075b-MAL-ED          BRAZIL                         7       195     17     17      0
12 months   ki0047075b-MAL-ED          BRAZIL                         8       195     13     13      0
12 months   ki0047075b-MAL-ED          BRAZIL                         9       195     28     28      0
12 months   ki0047075b-MAL-ED          BRAZIL                         10      195     17     17      0
12 months   ki0047075b-MAL-ED          BRAZIL                         11      195     18     18      0
12 months   ki0047075b-MAL-ED          BRAZIL                         12      195     14     14      0
12 months   ki0047075b-MAL-ED          INDIA                          1       228     19     16      3
12 months   ki0047075b-MAL-ED          INDIA                          2       228     18     18      0
12 months   ki0047075b-MAL-ED          INDIA                          3       228     18     18      0
12 months   ki0047075b-MAL-ED          INDIA                          4       228     15     13      2
12 months   ki0047075b-MAL-ED          INDIA                          5       228      8      8      0
12 months   ki0047075b-MAL-ED          INDIA                          6       228     18     18      0
12 months   ki0047075b-MAL-ED          INDIA                          7       228     23     22      1
12 months   ki0047075b-MAL-ED          INDIA                          8       228     21     19      2
12 months   ki0047075b-MAL-ED          INDIA                          9       228     18     15      3
12 months   ki0047075b-MAL-ED          INDIA                          10      228     27     24      3
12 months   ki0047075b-MAL-ED          INDIA                          11      228     24     21      3
12 months   ki0047075b-MAL-ED          INDIA                          12      228     19     18      1
12 months   ki0047075b-MAL-ED          NEPAL                          1       231     20     19      1
12 months   ki0047075b-MAL-ED          NEPAL                          2       231     17     16      1
12 months   ki0047075b-MAL-ED          NEPAL                          3       231     17     16      1
12 months   ki0047075b-MAL-ED          NEPAL                          4       231     20     20      0
12 months   ki0047075b-MAL-ED          NEPAL                          5       231     18     17      1
12 months   ki0047075b-MAL-ED          NEPAL                          6       231     21     21      0
12 months   ki0047075b-MAL-ED          NEPAL                          7       231     18     18      0
12 months   ki0047075b-MAL-ED          NEPAL                          8       231     24     24      0
12 months   ki0047075b-MAL-ED          NEPAL                          9       231     13     12      1
12 months   ki0047075b-MAL-ED          NEPAL                          10      231     21     21      0
12 months   ki0047075b-MAL-ED          NEPAL                          11      231     24     24      0
12 months   ki0047075b-MAL-ED          NEPAL                          12      231     18     18      0
12 months   ki0047075b-MAL-ED          PERU                           1       246     34     32      2
12 months   ki0047075b-MAL-ED          PERU                           2       246     20     20      0
12 months   ki0047075b-MAL-ED          PERU                           3       246     18     17      1
12 months   ki0047075b-MAL-ED          PERU                           4       246     18     16      2
12 months   ki0047075b-MAL-ED          PERU                           5       246     19     17      2
12 months   ki0047075b-MAL-ED          PERU                           6       246     17     17      0
12 months   ki0047075b-MAL-ED          PERU                           7       246     20     20      0
12 months   ki0047075b-MAL-ED          PERU                           8       246     14     14      0
12 months   ki0047075b-MAL-ED          PERU                           9       246     22     22      0
12 months   ki0047075b-MAL-ED          PERU                           10      246     16     15      1
12 months   ki0047075b-MAL-ED          PERU                           11      246     28     24      4
12 months   ki0047075b-MAL-ED          PERU                           12      246     20     19      1
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1       252     37     34      3
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2       252     22     21      1
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3       252     16     16      0
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4       252     12     12      0
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5       252     12     12      0
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6       252     15     14      1
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7       252     24     23      1
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8       252      9      8      1
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9       252     19     19      0
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10      252     25     24      1
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11      252     25     22      3
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12      252     36     35      1
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1       231     16     13      3
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2       231     26     23      3
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3       231     19     16      3
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4       231      8      6      2
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5       231     18     16      2
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6       231     20     18      2
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7       231     23     20      3
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8       231     11      9      2
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9       231     20     17      3
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10      231     19     15      4
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11      231     25     21      4
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
12 months   ki1000108-IRC              INDIA                          1       406     35     29      6
12 months   ki1000108-IRC              INDIA                          2       406     27     23      4
12 months   ki1000108-IRC              INDIA                          3       406     29     27      2
12 months   ki1000108-IRC              INDIA                          4       406     21     18      3
12 months   ki1000108-IRC              INDIA                          5       406     20     15      5
12 months   ki1000108-IRC              INDIA                          6       406     37     37      0
12 months   ki1000108-IRC              INDIA                          7       406     36     34      2
12 months   ki1000108-IRC              INDIA                          8       406     45     44      1
12 months   ki1000108-IRC              INDIA                          9       406     27     25      2
12 months   ki1000108-IRC              INDIA                          10      406     37     36      1
12 months   ki1000108-IRC              INDIA                          11      406     41     38      3
12 months   ki1000108-IRC              INDIA                          12      406     51     46      5
12 months   ki1000109-EE               PAKISTAN                       1       357     89     56     33
12 months   ki1000109-EE               PAKISTAN                       2       357     61     39     22
12 months   ki1000109-EE               PAKISTAN                       3       357     41     27     14
12 months   ki1000109-EE               PAKISTAN                       4       357     16      7      9
12 months   ki1000109-EE               PAKISTAN                       5       357      0      0      0
12 months   ki1000109-EE               PAKISTAN                       6       357      0      0      0
12 months   ki1000109-EE               PAKISTAN                       7       357      0      0      0
12 months   ki1000109-EE               PAKISTAN                       8       357      0      0      0
12 months   ki1000109-EE               PAKISTAN                       9       357      0      0      0
12 months   ki1000109-EE               PAKISTAN                       10      357      3      2      1
12 months   ki1000109-EE               PAKISTAN                       11      357     65     45     20
12 months   ki1000109-EE               PAKISTAN                       12      357     82     61     21
12 months   ki1000109-ResPak           PAKISTAN                       1       194      6      5      1
12 months   ki1000109-ResPak           PAKISTAN                       2       194      6      6      0
12 months   ki1000109-ResPak           PAKISTAN                       3       194     12     10      2
12 months   ki1000109-ResPak           PAKISTAN                       4       194     17     16      1
12 months   ki1000109-ResPak           PAKISTAN                       5       194     31     27      4
12 months   ki1000109-ResPak           PAKISTAN                       6       194     45     37      8
12 months   ki1000109-ResPak           PAKISTAN                       7       194     19     18      1
12 months   ki1000109-ResPak           PAKISTAN                       8       194     29     26      3
12 months   ki1000109-ResPak           PAKISTAN                       9       194     20     17      3
12 months   ki1000109-ResPak           PAKISTAN                       10      194      7      7      0
12 months   ki1000109-ResPak           PAKISTAN                       11      194      1      1      0
12 months   ki1000109-ResPak           PAKISTAN                       12      194      1      1      0
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          1        92     13      6      7
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          2        92      8      2      6
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          3        92      7      3      4
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          4        92      8      5      3
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          5        92      8      5      3
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          6        92      8      5      3
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          7        92      5      5      0
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          8        92      0      0      0
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          9        92      4      2      2
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          10       92      5      3      2
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          11       92     10      4      6
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          12       92     16     11      5
12 months   ki1017093-NIH-Birth        BANGLADESH                     1       491     47     39      8
12 months   ki1017093-NIH-Birth        BANGLADESH                     2       491     41     40      1
12 months   ki1017093-NIH-Birth        BANGLADESH                     3       491     46     44      2
12 months   ki1017093-NIH-Birth        BANGLADESH                     4       491     40     36      4
12 months   ki1017093-NIH-Birth        BANGLADESH                     5       491     37     35      2
12 months   ki1017093-NIH-Birth        BANGLADESH                     6       491     36     33      3
12 months   ki1017093-NIH-Birth        BANGLADESH                     7       491     41     35      6
12 months   ki1017093-NIH-Birth        BANGLADESH                     8       491     33     30      3
12 months   ki1017093-NIH-Birth        BANGLADESH                     9       491     24     21      3
12 months   ki1017093-NIH-Birth        BANGLADESH                     10      491     49     43      6
12 months   ki1017093-NIH-Birth        BANGLADESH                     11      491     48     41      7
12 months   ki1017093-NIH-Birth        BANGLADESH                     12      491     49     46      3
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1      1444     92     90      2
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2      1444    111    109      2
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3      1444    101     97      4
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4      1444    106    102      4
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5      1444    111    107      4
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6      1444    106    105      1
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7      1444    142    137      5
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8      1444    154    152      2
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9      1444    130    127      3
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10     1444    148    145      3
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11     1444    127    125      2
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12     1444    116    114      2
12 months   ki1112895-Guatemala BSC    GUATEMALA                      1       201      8      7      1
12 months   ki1112895-Guatemala BSC    GUATEMALA                      2       201     15     14      1
12 months   ki1112895-Guatemala BSC    GUATEMALA                      3       201     16     13      3
12 months   ki1112895-Guatemala BSC    GUATEMALA                      4       201     13      9      4
12 months   ki1112895-Guatemala BSC    GUATEMALA                      5       201     22     20      2
12 months   ki1112895-Guatemala BSC    GUATEMALA                      6       201     32     29      3
12 months   ki1112895-Guatemala BSC    GUATEMALA                      7       201     20     15      5
12 months   ki1112895-Guatemala BSC    GUATEMALA                      8       201     13     11      2
12 months   ki1112895-Guatemala BSC    GUATEMALA                      9       201     24     19      5
12 months   ki1112895-Guatemala BSC    GUATEMALA                      10      201     14     11      3
12 months   ki1112895-Guatemala BSC    GUATEMALA                      11      201     17     14      3
12 months   ki1112895-Guatemala BSC    GUATEMALA                      12      201      7      4      3
12 months   ki1113344-GMS-Nepal        NEPAL                          1       558      0      0      0
12 months   ki1113344-GMS-Nepal        NEPAL                          2       558      0      0      0
12 months   ki1113344-GMS-Nepal        NEPAL                          3       558      0      0      0
12 months   ki1113344-GMS-Nepal        NEPAL                          4       558      0      0      0
12 months   ki1113344-GMS-Nepal        NEPAL                          5       558      0      0      0
12 months   ki1113344-GMS-Nepal        NEPAL                          6       558    106     97      9
12 months   ki1113344-GMS-Nepal        NEPAL                          7       558    214    195     19
12 months   ki1113344-GMS-Nepal        NEPAL                          8       558    221    199     22
12 months   ki1113344-GMS-Nepal        NEPAL                          9       558     15     14      1
12 months   ki1113344-GMS-Nepal        NEPAL                          10      558      2      2      0
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
12 months   ki1114097-CMIN             GUINEA-BISSAU                  1       620     37     33      4
12 months   ki1114097-CMIN             GUINEA-BISSAU                  2       620     40     34      6
12 months   ki1114097-CMIN             GUINEA-BISSAU                  3       620     43     42      1
12 months   ki1114097-CMIN             GUINEA-BISSAU                  4       620    135    128      7
12 months   ki1114097-CMIN             GUINEA-BISSAU                  5       620     79     76      3
12 months   ki1114097-CMIN             GUINEA-BISSAU                  6       620     52     47      5
12 months   ki1114097-CMIN             GUINEA-BISSAU                  7       620     36     34      2
12 months   ki1114097-CMIN             GUINEA-BISSAU                  8       620     33     30      3
12 months   ki1114097-CMIN             GUINEA-BISSAU                  9       620     63     61      2
12 months   ki1114097-CMIN             GUINEA-BISSAU                  10      620     39     39      0
12 months   ki1114097-CMIN             GUINEA-BISSAU                  11      620     34     31      3
12 months   ki1114097-CMIN             GUINEA-BISSAU                  12      620     29     26      3
12 months   ki1114097-CMIN             PERU                           1       601     93     87      6
12 months   ki1114097-CMIN             PERU                           2       601     41     41      0
12 months   ki1114097-CMIN             PERU                           3       601     53     51      2
12 months   ki1114097-CMIN             PERU                           4       601     70     67      3
12 months   ki1114097-CMIN             PERU                           5       601     55     53      2
12 months   ki1114097-CMIN             PERU                           6       601     47     46      1
12 months   ki1114097-CMIN             PERU                           7       601     47     45      2
12 months   ki1114097-CMIN             PERU                           8       601     43     41      2
12 months   ki1114097-CMIN             PERU                           9       601     31     31      0
12 months   ki1114097-CMIN             PERU                           10      601     27     25      2
12 months   ki1114097-CMIN             PERU                           11      601     62     59      3
12 months   ki1114097-CMIN             PERU                           12      601     32     32      0
12 months   ki1114097-CONTENT          PERU                           1       215      9      9      0
12 months   ki1114097-CONTENT          PERU                           2       215     16     16      0
12 months   ki1114097-CONTENT          PERU                           3       215     30     30      0
12 months   ki1114097-CONTENT          PERU                           4       215     12     12      0
12 months   ki1114097-CONTENT          PERU                           5       215     25     24      1
12 months   ki1114097-CONTENT          PERU                           6       215     14     13      1
12 months   ki1114097-CONTENT          PERU                           7       215     24     24      0
12 months   ki1114097-CONTENT          PERU                           8       215     18     17      1
12 months   ki1114097-CONTENT          PERU                           9       215     20     20      0
12 months   ki1114097-CONTENT          PERU                           10      215     24     24      0
12 months   ki1114097-CONTENT          PERU                           11      215     18     18      0
12 months   ki1114097-CONTENT          PERU                           12      215      5      5      0
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       1      6734    624    583     41
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       2      6734    501    462     39
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       3      6734    607    556     51
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       4      6734    515    478     37
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       5      6734    498    471     27
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       6      6734    566    517     49
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       7      6734    562    516     46
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       8      6734    611    579     32
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       9      6734    634    603     31
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       10     6734    461    432     29
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       11     6734    548    519     29
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       12     6734    607    571     36
12 months   ki1148112-LCNI-5           MALAWI                         1       626     43     39      4
12 months   ki1148112-LCNI-5           MALAWI                         2       626     94     89      5
12 months   ki1148112-LCNI-5           MALAWI                         3       626     71     66      5
12 months   ki1148112-LCNI-5           MALAWI                         4       626     81     67     14
12 months   ki1148112-LCNI-5           MALAWI                         5       626     71     63      8
12 months   ki1148112-LCNI-5           MALAWI                         6       626     69     65      4
12 months   ki1148112-LCNI-5           MALAWI                         7       626     55     46      9
12 months   ki1148112-LCNI-5           MALAWI                         8       626     37     35      2
12 months   ki1148112-LCNI-5           MALAWI                         9       626     19     16      3
12 months   ki1148112-LCNI-5           MALAWI                         10      626     25     24      1
12 months   ki1148112-LCNI-5           MALAWI                         11      626     38     32      6
12 months   ki1148112-LCNI-5           MALAWI                         12      626     23     17      6
18 months   ki0047075b-MAL-ED          BANGLADESH                     1       221     16     15      1
18 months   ki0047075b-MAL-ED          BANGLADESH                     2       221     18     14      4
18 months   ki0047075b-MAL-ED          BANGLADESH                     3       221     20     17      3
18 months   ki0047075b-MAL-ED          BANGLADESH                     4       221     20     17      3
18 months   ki0047075b-MAL-ED          BANGLADESH                     5       221     19     16      3
18 months   ki0047075b-MAL-ED          BANGLADESH                     6       221      6      5      1
18 months   ki0047075b-MAL-ED          BANGLADESH                     7       221     20     18      2
18 months   ki0047075b-MAL-ED          BANGLADESH                     8       221     21     15      6
18 months   ki0047075b-MAL-ED          BANGLADESH                     9       221     21     19      2
18 months   ki0047075b-MAL-ED          BANGLADESH                     10      221     21     17      4
18 months   ki0047075b-MAL-ED          BANGLADESH                     11      221     11     10      1
18 months   ki0047075b-MAL-ED          BANGLADESH                     12      221     28     27      1
18 months   ki0047075b-MAL-ED          BRAZIL                         1       180     13     13      0
18 months   ki0047075b-MAL-ED          BRAZIL                         2       180     17     17      0
18 months   ki0047075b-MAL-ED          BRAZIL                         3       180     17     17      0
18 months   ki0047075b-MAL-ED          BRAZIL                         4       180     10     10      0
18 months   ki0047075b-MAL-ED          BRAZIL                         5       180     17     17      0
18 months   ki0047075b-MAL-ED          BRAZIL                         6       180      6      6      0
18 months   ki0047075b-MAL-ED          BRAZIL                         7       180     16     16      0
18 months   ki0047075b-MAL-ED          BRAZIL                         8       180     13     13      0
18 months   ki0047075b-MAL-ED          BRAZIL                         9       180     26     26      0
18 months   ki0047075b-MAL-ED          BRAZIL                         10      180     15     15      0
18 months   ki0047075b-MAL-ED          BRAZIL                         11      180     16     16      0
18 months   ki0047075b-MAL-ED          BRAZIL                         12      180     14     14      0
18 months   ki0047075b-MAL-ED          INDIA                          1       228     19     16      3
18 months   ki0047075b-MAL-ED          INDIA                          2       228     18     17      1
18 months   ki0047075b-MAL-ED          INDIA                          3       228     18     17      1
18 months   ki0047075b-MAL-ED          INDIA                          4       228     15     13      2
18 months   ki0047075b-MAL-ED          INDIA                          5       228      8      7      1
18 months   ki0047075b-MAL-ED          INDIA                          6       228     18     17      1
18 months   ki0047075b-MAL-ED          INDIA                          7       228     23     17      6
18 months   ki0047075b-MAL-ED          INDIA                          8       228     21     19      2
18 months   ki0047075b-MAL-ED          INDIA                          9       228     18     14      4
18 months   ki0047075b-MAL-ED          INDIA                          10      228     27     21      6
18 months   ki0047075b-MAL-ED          INDIA                          11      228     24     20      4
18 months   ki0047075b-MAL-ED          INDIA                          12      228     19     18      1
18 months   ki0047075b-MAL-ED          NEPAL                          1       229     20     19      1
18 months   ki0047075b-MAL-ED          NEPAL                          2       229     16     14      2
18 months   ki0047075b-MAL-ED          NEPAL                          3       229     17     16      1
18 months   ki0047075b-MAL-ED          NEPAL                          4       229     20     20      0
18 months   ki0047075b-MAL-ED          NEPAL                          5       229     18     17      1
18 months   ki0047075b-MAL-ED          NEPAL                          6       229     21     21      0
18 months   ki0047075b-MAL-ED          NEPAL                          7       229     18     17      1
18 months   ki0047075b-MAL-ED          NEPAL                          8       229     24     24      0
18 months   ki0047075b-MAL-ED          NEPAL                          9       229     13     12      1
18 months   ki0047075b-MAL-ED          NEPAL                          10      229     21     21      0
18 months   ki0047075b-MAL-ED          NEPAL                          11      229     24     24      0
18 months   ki0047075b-MAL-ED          NEPAL                          12      229     17     17      0
18 months   ki0047075b-MAL-ED          PERU                           1       222     32     29      3
18 months   ki0047075b-MAL-ED          PERU                           2       222     19     18      1
18 months   ki0047075b-MAL-ED          PERU                           3       222     15     15      0
18 months   ki0047075b-MAL-ED          PERU                           4       222     15     12      3
18 months   ki0047075b-MAL-ED          PERU                           5       222     19     16      3
18 months   ki0047075b-MAL-ED          PERU                           6       222     15     14      1
18 months   ki0047075b-MAL-ED          PERU                           7       222     18     15      3
18 months   ki0047075b-MAL-ED          PERU                           8       222     14     13      1
18 months   ki0047075b-MAL-ED          PERU                           9       222     21     21      0
18 months   ki0047075b-MAL-ED          PERU                           10      222     14     13      1
18 months   ki0047075b-MAL-ED          PERU                           11      222     23     20      3
18 months   ki0047075b-MAL-ED          PERU                           12      222     17     16      1
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1       241     35     29      6
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2       241     22     20      2
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3       241     14     13      1
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4       241     12     12      0
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5       241     11     11      0
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6       241     15     14      1
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7       241     24     21      3
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8       241      8      7      1
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9       241     19     18      1
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10      241     25     22      3
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11      241     23     19      4
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12      241     33     29      4
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1       225     16     12      4
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2       225     24     19      5
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3       225     19     11      8
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4       225      8      4      4
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5       225     16     12      4
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6       225     20     16      4
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7       225     23     16      7
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8       225     12      7      5
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9       225     19     13      6
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10      225     18     10      8
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11      225     25     20      5
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12      225     25     16      9
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
18 months   ki1000108-IRC              INDIA                          1       405     36     32      4
18 months   ki1000108-IRC              INDIA                          2       405     27     25      2
18 months   ki1000108-IRC              INDIA                          3       405     29     28      1
18 months   ki1000108-IRC              INDIA                          4       405     22     20      2
18 months   ki1000108-IRC              INDIA                          5       405     21     15      6
18 months   ki1000108-IRC              INDIA                          6       405     37     35      2
18 months   ki1000108-IRC              INDIA                          7       405     36     34      2
18 months   ki1000108-IRC              INDIA                          8       405     44     42      2
18 months   ki1000108-IRC              INDIA                          9       405     27     24      3
18 months   ki1000108-IRC              INDIA                          10      405     34     33      1
18 months   ki1000108-IRC              INDIA                          11      405     41     39      2
18 months   ki1000108-IRC              INDIA                          12      405     51     44      7
18 months   ki1000109-EE               PAKISTAN                       1       350     87     45     42
18 months   ki1000109-EE               PAKISTAN                       2       350     56     29     27
18 months   ki1000109-EE               PAKISTAN                       3       350     40     18     22
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
18 months   ki1000109-ResPak           PAKISTAN                       2         9      2      2      0
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
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          1        84     13      8      5
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          2        84      6      3      3
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          3        84      7      2      5
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          4        84      7      5      2
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          5        84      6      3      3
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          6        84      7      5      2
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          7        84      5      5      0
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          8        84      0      0      0
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          9        84      4      0      4
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          10       84      5      2      3
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          11       84     11      5      6
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          12       84     13      9      4
18 months   ki1017093-NIH-Birth        BANGLADESH                     1       463     45     34     11
18 months   ki1017093-NIH-Birth        BANGLADESH                     2       463     35     32      3
18 months   ki1017093-NIH-Birth        BANGLADESH                     3       463     44     37      7
18 months   ki1017093-NIH-Birth        BANGLADESH                     4       463     38     31      7
18 months   ki1017093-NIH-Birth        BANGLADESH                     5       463     35     28      7
18 months   ki1017093-NIH-Birth        BANGLADESH                     6       463     35     28      7
18 months   ki1017093-NIH-Birth        BANGLADESH                     7       463     41     29     12
18 months   ki1017093-NIH-Birth        BANGLADESH                     8       463     31     23      8
18 months   ki1017093-NIH-Birth        BANGLADESH                     9       463     25     19      6
18 months   ki1017093-NIH-Birth        BANGLADESH                     10      463     45     32     13
18 months   ki1017093-NIH-Birth        BANGLADESH                     11      463     44     31     13
18 months   ki1017093-NIH-Birth        BANGLADESH                     12      463     45     38      7
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1       980     69     66      3
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2       980     79     77      2
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3       980     77     73      4
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4       980     83     81      2
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5       980     78     74      4
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6       980     66     64      2
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7       980     85     83      2
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8       980     98     94      4
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9       980     85     83      2
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10      980    102     95      7
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11      980     81     76      5
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12      980     77     74      3
18 months   ki1113344-GMS-Nepal        NEPAL                          1       550      0      0      0
18 months   ki1113344-GMS-Nepal        NEPAL                          2       550      0      0      0
18 months   ki1113344-GMS-Nepal        NEPAL                          3       550      0      0      0
18 months   ki1113344-GMS-Nepal        NEPAL                          4       550      0      0      0
18 months   ki1113344-GMS-Nepal        NEPAL                          5       550      0      0      0
18 months   ki1113344-GMS-Nepal        NEPAL                          6       550    104     87     17
18 months   ki1113344-GMS-Nepal        NEPAL                          7       550    216    186     30
18 months   ki1113344-GMS-Nepal        NEPAL                          8       550    213    177     36
18 months   ki1113344-GMS-Nepal        NEPAL                          9       550     15     13      2
18 months   ki1113344-GMS-Nepal        NEPAL                          10      550      2      2      0
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
18 months   ki1114097-CMIN             GUINEA-BISSAU                  1       754     51     46      5
18 months   ki1114097-CMIN             GUINEA-BISSAU                  2       754     47     42      5
18 months   ki1114097-CMIN             GUINEA-BISSAU                  3       754     53     48      5
18 months   ki1114097-CMIN             GUINEA-BISSAU                  4       754    166    146     20
18 months   ki1114097-CMIN             GUINEA-BISSAU                  5       754     80     76      4
18 months   ki1114097-CMIN             GUINEA-BISSAU                  6       754     67     62      5
18 months   ki1114097-CMIN             GUINEA-BISSAU                  7       754     40     35      5
18 months   ki1114097-CMIN             GUINEA-BISSAU                  8       754     35     33      2
18 months   ki1114097-CMIN             GUINEA-BISSAU                  9       754     78     69      9
18 months   ki1114097-CMIN             GUINEA-BISSAU                  10      754     43     41      2
18 months   ki1114097-CMIN             GUINEA-BISSAU                  11      754     43     39      4
18 months   ki1114097-CMIN             GUINEA-BISSAU                  12      754     51     44      7
18 months   ki1114097-CMIN             PERU                           1       489    126    112     14
18 months   ki1114097-CMIN             PERU                           2       489     37     35      2
18 months   ki1114097-CMIN             PERU                           3       489     42     37      5
18 months   ki1114097-CMIN             PERU                           4       489     44     43      1
18 months   ki1114097-CMIN             PERU                           5       489     37     33      4
18 months   ki1114097-CMIN             PERU                           6       489     25     25      0
18 months   ki1114097-CMIN             PERU                           7       489     25     25      0
18 months   ki1114097-CMIN             PERU                           8       489     28     28      0
18 months   ki1114097-CMIN             PERU                           9       489     20     20      0
18 months   ki1114097-CMIN             PERU                           10      489     23     20      3
18 months   ki1114097-CMIN             PERU                           11      489     60     57      3
18 months   ki1114097-CMIN             PERU                           12      489     22     21      1
18 months   ki1114097-CONTENT          PERU                           1       200      9      9      0
18 months   ki1114097-CONTENT          PERU                           2       200     15     15      0
18 months   ki1114097-CONTENT          PERU                           3       200     27     27      0
18 months   ki1114097-CONTENT          PERU                           4       200     12     10      2
18 months   ki1114097-CONTENT          PERU                           5       200     25     23      2
18 months   ki1114097-CONTENT          PERU                           6       200     13     13      0
18 months   ki1114097-CONTENT          PERU                           7       200     20     20      0
18 months   ki1114097-CONTENT          PERU                           8       200     18     18      0
18 months   ki1114097-CONTENT          PERU                           9       200     19     18      1
18 months   ki1114097-CONTENT          PERU                           10      200     21     21      0
18 months   ki1114097-CONTENT          PERU                           11      200     18     18      0
18 months   ki1114097-CONTENT          PERU                           12      200      3      3      0
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       1      1705    207    161     46
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       2      1705    184    147     37
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       3      1705    139    118     21
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       4      1705    138    112     26
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       5      1705    117     93     24
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       6      1705    143    118     25
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       7      1705    115     90     25
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       8      1705    130    114     16
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       9      1705    119    106     13
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       10     1705    107     94     13
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       11     1705    132    109     23
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       12     1705    174    145     29
18 months   ki1148112-LCNI-5           MALAWI                         1       725     48     42      6
18 months   ki1148112-LCNI-5           MALAWI                         2       725    101     93      8
18 months   ki1148112-LCNI-5           MALAWI                         3       725     87     76     11
18 months   ki1148112-LCNI-5           MALAWI                         4       725     97     77     20
18 months   ki1148112-LCNI-5           MALAWI                         5       725     84     74     10
18 months   ki1148112-LCNI-5           MALAWI                         6       725     84     75      9
18 months   ki1148112-LCNI-5           MALAWI                         7       725     60     49     11
18 months   ki1148112-LCNI-5           MALAWI                         8       725     41     39      2
18 months   ki1148112-LCNI-5           MALAWI                         9       725     22     20      2
18 months   ki1148112-LCNI-5           MALAWI                         10      725     31     29      2
18 months   ki1148112-LCNI-5           MALAWI                         11      725     40     33      7
18 months   ki1148112-LCNI-5           MALAWI                         12      725     30     22      8
24 months   ki0047075b-MAL-ED          BANGLADESH                     1       212     14     14      0
24 months   ki0047075b-MAL-ED          BANGLADESH                     2       212     17     12      5
24 months   ki0047075b-MAL-ED          BANGLADESH                     3       212     20     18      2
24 months   ki0047075b-MAL-ED          BANGLADESH                     4       212     20     19      1
24 months   ki0047075b-MAL-ED          BANGLADESH                     5       212     19     14      5
24 months   ki0047075b-MAL-ED          BANGLADESH                     6       212      5      5      0
24 months   ki0047075b-MAL-ED          BANGLADESH                     7       212     20     19      1
24 months   ki0047075b-MAL-ED          BANGLADESH                     8       212     21     14      7
24 months   ki0047075b-MAL-ED          BANGLADESH                     9       212     19     18      1
24 months   ki0047075b-MAL-ED          BANGLADESH                     10      212     20     17      3
24 months   ki0047075b-MAL-ED          BANGLADESH                     11      212     10      9      1
24 months   ki0047075b-MAL-ED          BANGLADESH                     12      212     27     27      0
24 months   ki0047075b-MAL-ED          BRAZIL                         1       169     13     13      0
24 months   ki0047075b-MAL-ED          BRAZIL                         2       169     17     17      0
24 months   ki0047075b-MAL-ED          BRAZIL                         3       169     15     15      0
24 months   ki0047075b-MAL-ED          BRAZIL                         4       169     10     10      0
24 months   ki0047075b-MAL-ED          BRAZIL                         5       169     15     15      0
24 months   ki0047075b-MAL-ED          BRAZIL                         6       169      5      5      0
24 months   ki0047075b-MAL-ED          BRAZIL                         7       169     11     10      1
24 months   ki0047075b-MAL-ED          BRAZIL                         8       169     13     13      0
24 months   ki0047075b-MAL-ED          BRAZIL                         9       169     26     26      0
24 months   ki0047075b-MAL-ED          BRAZIL                         10      169     15     15      0
24 months   ki0047075b-MAL-ED          BRAZIL                         11      169     15     15      0
24 months   ki0047075b-MAL-ED          BRAZIL                         12      169     14     14      0
24 months   ki0047075b-MAL-ED          INDIA                          1       227     19     15      4
24 months   ki0047075b-MAL-ED          INDIA                          2       227     18     17      1
24 months   ki0047075b-MAL-ED          INDIA                          3       227     18     17      1
24 months   ki0047075b-MAL-ED          INDIA                          4       227     15     13      2
24 months   ki0047075b-MAL-ED          INDIA                          5       227      8      7      1
24 months   ki0047075b-MAL-ED          INDIA                          6       227     17     17      0
24 months   ki0047075b-MAL-ED          INDIA                          7       227     23     19      4
24 months   ki0047075b-MAL-ED          INDIA                          8       227     21     18      3
24 months   ki0047075b-MAL-ED          INDIA                          9       227     18     15      3
24 months   ki0047075b-MAL-ED          INDIA                          10      227     27     23      4
24 months   ki0047075b-MAL-ED          INDIA                          11      227     24     20      4
24 months   ki0047075b-MAL-ED          INDIA                          12      227     19     18      1
24 months   ki0047075b-MAL-ED          NEPAL                          1       228     19     18      1
24 months   ki0047075b-MAL-ED          NEPAL                          2       228     17     16      1
24 months   ki0047075b-MAL-ED          NEPAL                          3       228     17     14      3
24 months   ki0047075b-MAL-ED          NEPAL                          4       228     20     20      0
24 months   ki0047075b-MAL-ED          NEPAL                          5       228     18     17      1
24 months   ki0047075b-MAL-ED          NEPAL                          6       228     21     21      0
24 months   ki0047075b-MAL-ED          NEPAL                          7       228     17     17      0
24 months   ki0047075b-MAL-ED          NEPAL                          8       228     24     24      0
24 months   ki0047075b-MAL-ED          NEPAL                          9       228     13     12      1
24 months   ki0047075b-MAL-ED          NEPAL                          10      228     21     21      0
24 months   ki0047075b-MAL-ED          NEPAL                          11      228     24     24      0
24 months   ki0047075b-MAL-ED          NEPAL                          12      228     17     17      0
24 months   ki0047075b-MAL-ED          PERU                           1       201     28     24      4
24 months   ki0047075b-MAL-ED          PERU                           2       201     19     18      1
24 months   ki0047075b-MAL-ED          PERU                           3       201     14     14      0
24 months   ki0047075b-MAL-ED          PERU                           4       201     12     10      2
24 months   ki0047075b-MAL-ED          PERU                           5       201     19     17      2
24 months   ki0047075b-MAL-ED          PERU                           6       201     11     10      1
24 months   ki0047075b-MAL-ED          PERU                           7       201     15     15      0
24 months   ki0047075b-MAL-ED          PERU                           8       201     12     11      1
24 months   ki0047075b-MAL-ED          PERU                           9       201     21     21      0
24 months   ki0047075b-MAL-ED          PERU                           10      201     13     13      0
24 months   ki0047075b-MAL-ED          PERU                           11      201     21     18      3
24 months   ki0047075b-MAL-ED          PERU                           12      201     16     15      1
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1       238     34     27      7
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2       238     21     17      4
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3       238     15     13      2
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4       238     12     11      1
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5       238     11     11      0
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6       238     15     14      1
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7       238     24     22      2
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8       238      8      8      0
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9       238     19     19      0
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10      238     25     23      2
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11      238     22     18      4
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12      238     32     29      3
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1       214     17     14      3
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2       214     21     13      8
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3       214     19     10      9
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4       214      6      3      3
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5       214     16     13      3
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6       214     19     15      4
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7       214     23     17      6
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8       214     12      9      3
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9       214     18     13      5
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10      214     15      8      7
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11      214     23     14      9
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12      214     25     16      9
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
24 months   ki1000108-IRC              INDIA                          1       409     36     31      5
24 months   ki1000108-IRC              INDIA                          2       409     27     24      3
24 months   ki1000108-IRC              INDIA                          3       409     29     24      5
24 months   ki1000108-IRC              INDIA                          4       409     22     19      3
24 months   ki1000108-IRC              INDIA                          5       409     21     15      6
24 months   ki1000108-IRC              INDIA                          6       409     37     36      1
24 months   ki1000108-IRC              INDIA                          7       409     36     36      0
24 months   ki1000108-IRC              INDIA                          8       409     45     41      4
24 months   ki1000108-IRC              INDIA                          9       409     27     24      3
24 months   ki1000108-IRC              INDIA                          10      409     36     35      1
24 months   ki1000108-IRC              INDIA                          11      409     41     39      2
24 months   ki1000108-IRC              INDIA                          12      409     52     44      8
24 months   ki1017093-NIH-Birth        BANGLADESH                     1       429     42     35      7
24 months   ki1017093-NIH-Birth        BANGLADESH                     2       429     36     32      4
24 months   ki1017093-NIH-Birth        BANGLADESH                     3       429     41     35      6
24 months   ki1017093-NIH-Birth        BANGLADESH                     4       429     34     24     10
24 months   ki1017093-NIH-Birth        BANGLADESH                     5       429     34     25      9
24 months   ki1017093-NIH-Birth        BANGLADESH                     6       429     30     25      5
24 months   ki1017093-NIH-Birth        BANGLADESH                     7       429     37     29      8
24 months   ki1017093-NIH-Birth        BANGLADESH                     8       429     30     21      9
24 months   ki1017093-NIH-Birth        BANGLADESH                     9       429     19     16      3
24 months   ki1017093-NIH-Birth        BANGLADESH                     10      429     40     30     10
24 months   ki1017093-NIH-Birth        BANGLADESH                     11      429     41     29     12
24 months   ki1017093-NIH-Birth        BANGLADESH                     12      429     45     35     10
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
24 months   ki1113344-GMS-Nepal        NEPAL                          6       499     79     70      9
24 months   ki1113344-GMS-Nepal        NEPAL                          7       499    201    180     21
24 months   ki1113344-GMS-Nepal        NEPAL                          8       499    201    179     22
24 months   ki1113344-GMS-Nepal        NEPAL                          9       499     16     14      2
24 months   ki1113344-GMS-Nepal        NEPAL                          10      499      2      2      0
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
24 months   ki1114097-CMIN             GUINEA-BISSAU                  1       551     29     26      3
24 months   ki1114097-CMIN             GUINEA-BISSAU                  2       551     42     40      2
24 months   ki1114097-CMIN             GUINEA-BISSAU                  3       551     45     39      6
24 months   ki1114097-CMIN             GUINEA-BISSAU                  4       551    157    136     21
24 months   ki1114097-CMIN             GUINEA-BISSAU                  5       551     51     47      4
24 months   ki1114097-CMIN             GUINEA-BISSAU                  6       551     38     35      3
24 months   ki1114097-CMIN             GUINEA-BISSAU                  7       551     23     20      3
24 months   ki1114097-CMIN             GUINEA-BISSAU                  8       551     24     21      3
24 months   ki1114097-CMIN             GUINEA-BISSAU                  9       551     60     55      5
24 months   ki1114097-CMIN             GUINEA-BISSAU                  10      551     34     33      1
24 months   ki1114097-CMIN             GUINEA-BISSAU                  11      551     23     22      1
24 months   ki1114097-CMIN             GUINEA-BISSAU                  12      551     25     22      3
24 months   ki1114097-CMIN             PERU                           1       429    186    171     15
24 months   ki1114097-CMIN             PERU                           2       429     20     19      1
24 months   ki1114097-CMIN             PERU                           3       429     27     24      3
24 months   ki1114097-CMIN             PERU                           4       429     22     20      2
24 months   ki1114097-CMIN             PERU                           5       429     23     20      3
24 months   ki1114097-CMIN             PERU                           6       429     20     20      0
24 months   ki1114097-CMIN             PERU                           7       429     21     20      1
24 months   ki1114097-CMIN             PERU                           8       429     24     24      0
24 months   ki1114097-CMIN             PERU                           9       429      8      8      0
24 months   ki1114097-CMIN             PERU                           10      429     17     16      1
24 months   ki1114097-CMIN             PERU                           11      429     46     42      4
24 months   ki1114097-CMIN             PERU                           12      429     15     15      0
24 months   ki1114097-CONTENT          PERU                           1       164      8      8      0
24 months   ki1114097-CONTENT          PERU                           2       164     13     13      0
24 months   ki1114097-CONTENT          PERU                           3       164     20     20      0
24 months   ki1114097-CONTENT          PERU                           4       164     10      9      1
24 months   ki1114097-CONTENT          PERU                           5       164     22     21      1
24 months   ki1114097-CONTENT          PERU                           6       164     11     11      0
24 months   ki1114097-CONTENT          PERU                           7       164     19     19      0
24 months   ki1114097-CONTENT          PERU                           8       164     17     17      0
24 months   ki1114097-CONTENT          PERU                           9       164     12     11      1
24 months   ki1114097-CONTENT          PERU                           10      164     13     13      0
24 months   ki1114097-CONTENT          PERU                           11      164     16     16      0
24 months   ki1114097-CONTENT          PERU                           12      164      3      3      0
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1       456     52     42     10
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       2       456     65     45     20
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       3       456     60     40     20
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       4       456     45     33     12
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       5       456     52     38     14
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       6       456     47     31     16
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       7       456     32     15     17
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       8       456     31     25      6
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       9       456      3      3      0
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       10      456      6      6      0
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       11      456     25     19      6
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       12      456     38     28     10
24 months   ki1148112-LCNI-5           MALAWI                         1       579     41     36      5
24 months   ki1148112-LCNI-5           MALAWI                         2       579     88     83      5
24 months   ki1148112-LCNI-5           MALAWI                         3       579     71     66      5
24 months   ki1148112-LCNI-5           MALAWI                         4       579     80     62     18
24 months   ki1148112-LCNI-5           MALAWI                         5       579     62     58      4
24 months   ki1148112-LCNI-5           MALAWI                         6       579     64     53     11
24 months   ki1148112-LCNI-5           MALAWI                         7       579     41     36      5
24 months   ki1148112-LCNI-5           MALAWI                         8       579     28     28      0
24 months   ki1148112-LCNI-5           MALAWI                         9       579     19     18      1
24 months   ki1148112-LCNI-5           MALAWI                         10      579     25     24      1
24 months   ki1148112-LCNI-5           MALAWI                         11      579     36     30      6
24 months   ki1148112-LCNI-5           MALAWI                         12      579     24     18      6


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
* agecat: 3 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
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
* agecat: 9 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 9 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 9 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 9 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 9 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 9 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 9 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 9 months, studyid: ki1148112-LCNI-5, country: MALAWI
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
* agecat: 18 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 18 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 18 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 18 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 18 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 18 months, studyid: ki1114097-CONTENT, country: PERU
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
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/4833e533-4101-4e9b-a5ad-fb52a777a7b8/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->


```
## Warning: Removed 6 rows containing missing values (geom_errorbar).
```

![](/tmp/4833e533-4101-4e9b-a5ad-fb52a777a7b8/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/4833e533-4101-4e9b-a5ad-fb52a777a7b8/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/4833e533-4101-4e9b-a5ad-fb52a777a7b8/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid              country    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------  ---------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO   ZIMBABWE   1                    NA                0.0416667   0.0309831   0.0523502
Birth       ki1126311-ZVITAMBO   ZIMBABWE   2                    NA                0.0424710   0.0301908   0.0547513
Birth       ki1126311-ZVITAMBO   ZIMBABWE   3                    NA                0.0359649   0.0251556   0.0467742
Birth       ki1126311-ZVITAMBO   ZIMBABWE   4                    NA                0.0357498   0.0242819   0.0472176
Birth       ki1126311-ZVITAMBO   ZIMBABWE   5                    NA                0.0350000   0.0236090   0.0463910
Birth       ki1126311-ZVITAMBO   ZIMBABWE   6                    NA                0.0388693   0.0276093   0.0501292
Birth       ki1126311-ZVITAMBO   ZIMBABWE   7                    NA                0.0382653   0.0273008   0.0492298
Birth       ki1126311-ZVITAMBO   ZIMBABWE   8                    NA                0.0203915   0.0124798   0.0283032
Birth       ki1126311-ZVITAMBO   ZIMBABWE   9                    NA                0.0152323   0.0086074   0.0218572
Birth       ki1126311-ZVITAMBO   ZIMBABWE   10                   NA                0.0335893   0.0226494   0.0445291
Birth       ki1126311-ZVITAMBO   ZIMBABWE   11                   NA                0.0282187   0.0185802   0.0378572
Birth       ki1126311-ZVITAMBO   ZIMBABWE   12                   NA                0.0223108   0.0141393   0.0304822
3 months    ki1126311-ZVITAMBO   ZIMBABWE   1                    NA                0.0442287   0.0309926   0.0574648
3 months    ki1126311-ZVITAMBO   ZIMBABWE   2                    NA                0.0660661   0.0472000   0.0849322
3 months    ki1126311-ZVITAMBO   ZIMBABWE   3                    NA                0.0576441   0.0414724   0.0738158
3 months    ki1126311-ZVITAMBO   ZIMBABWE   4                    NA                0.0644217   0.0460090   0.0828344
3 months    ki1126311-ZVITAMBO   ZIMBABWE   5                    NA                0.0570175   0.0396395   0.0743955
3 months    ki1126311-ZVITAMBO   ZIMBABWE   6                    NA                0.1134931   0.0914150   0.1355711
3 months    ki1126311-ZVITAMBO   ZIMBABWE   7                    NA                0.0496815   0.0344806   0.0648824
3 months    ki1126311-ZVITAMBO   ZIMBABWE   8                    NA                0.0521945   0.0371794   0.0672097
3 months    ki1126311-ZVITAMBO   ZIMBABWE   9                    NA                0.0334988   0.0210760   0.0459216
3 months    ki1126311-ZVITAMBO   ZIMBABWE   10                   NA                0.0610932   0.0422704   0.0799161
3 months    ki1126311-ZVITAMBO   ZIMBABWE   11                   NA                0.0509915   0.0347639   0.0672191
3 months    ki1126311-ZVITAMBO   ZIMBABWE   12                   NA                0.0430733   0.0294959   0.0566508
6 months    ki1126311-ZVITAMBO   ZIMBABWE   1                    NA                0.0348259   0.0221523   0.0474995
6 months    ki1126311-ZVITAMBO   ZIMBABWE   2                    NA                0.0362694   0.0210400   0.0514988
6 months    ki1126311-ZVITAMBO   ZIMBABWE   3                    NA                0.0635359   0.0457670   0.0813048
6 months    ki1126311-ZVITAMBO   ZIMBABWE   4                    NA                0.0414747   0.0261575   0.0567918
6 months    ki1126311-ZVITAMBO   ZIMBABWE   5                    NA                0.0370370   0.0218489   0.0522252
6 months    ki1126311-ZVITAMBO   ZIMBABWE   6                    NA                0.0492308   0.0325977   0.0658639
6 months    ki1126311-ZVITAMBO   ZIMBABWE   7                    NA                0.0533752   0.0359185   0.0708319
6 months    ki1126311-ZVITAMBO   ZIMBABWE   8                    NA                0.0315068   0.0188343   0.0441794
6 months    ki1126311-ZVITAMBO   ZIMBABWE   9                    NA                0.0328084   0.0201597   0.0454571
6 months    ki1126311-ZVITAMBO   ZIMBABWE   10                   NA                0.0383973   0.0230084   0.0537863
6 months    ki1126311-ZVITAMBO   ZIMBABWE   11                   NA                0.0411523   0.0267317   0.0555728
6 months    ki1126311-ZVITAMBO   ZIMBABWE   12                   NA                0.0426829   0.0288465   0.0565193
9 months    ki1126311-ZVITAMBO   ZIMBABWE   1                    NA                0.0481144   0.0329878   0.0632411
9 months    ki1126311-ZVITAMBO   ZIMBABWE   2                    NA                0.0628099   0.0434757   0.0821441
9 months    ki1126311-ZVITAMBO   ZIMBABWE   3                    NA                0.0360065   0.0212330   0.0507801
9 months    ki1126311-ZVITAMBO   ZIMBABWE   4                    NA                0.0381818   0.0221652   0.0541984
9 months    ki1126311-ZVITAMBO   ZIMBABWE   5                    NA                0.0529197   0.0341746   0.0716648
9 months    ki1126311-ZVITAMBO   ZIMBABWE   6                    NA                0.0534846   0.0357300   0.0712393
9 months    ki1126311-ZVITAMBO   ZIMBABWE   7                    NA                0.0477816   0.0305102   0.0650529
9 months    ki1126311-ZVITAMBO   ZIMBABWE   8                    NA                0.0422125   0.0271758   0.0572492
9 months    ki1126311-ZVITAMBO   ZIMBABWE   9                    NA                0.0421769   0.0276453   0.0567084
9 months    ki1126311-ZVITAMBO   ZIMBABWE   10                   NA                0.0439367   0.0270954   0.0607781
9 months    ki1126311-ZVITAMBO   ZIMBABWE   11                   NA                0.0444104   0.0286089   0.0602119
9 months    ki1126311-ZVITAMBO   ZIMBABWE   12                   NA                0.0633609   0.0456392   0.0810826
12 months   ki1126311-ZVITAMBO   ZIMBABWE   1                    NA                0.0657051   0.0462636   0.0851466
12 months   ki1126311-ZVITAMBO   ZIMBABWE   2                    NA                0.0778443   0.0543817   0.1013070
12 months   ki1126311-ZVITAMBO   ZIMBABWE   3                    NA                0.0840198   0.0619489   0.1060907
12 months   ki1126311-ZVITAMBO   ZIMBABWE   4                    NA                0.0718447   0.0495406   0.0941487
12 months   ki1126311-ZVITAMBO   ZIMBABWE   5                    NA                0.0542169   0.0343271   0.0741066
12 months   ki1126311-ZVITAMBO   ZIMBABWE   6                    NA                0.0865724   0.0634039   0.1097410
12 months   ki1126311-ZVITAMBO   ZIMBABWE   7                    NA                0.0818505   0.0591843   0.1045168
12 months   ki1126311-ZVITAMBO   ZIMBABWE   8                    NA                0.0523732   0.0347074   0.0700389
12 months   ki1126311-ZVITAMBO   ZIMBABWE   9                    NA                0.0488959   0.0321084   0.0656834
12 months   ki1126311-ZVITAMBO   ZIMBABWE   10                   NA                0.0629067   0.0407416   0.0850718
12 months   ki1126311-ZVITAMBO   ZIMBABWE   11                   NA                0.0529197   0.0341744   0.0716650
12 months   ki1126311-ZVITAMBO   ZIMBABWE   12                   NA                0.0593081   0.0405163   0.0780998
18 months   ki1126311-ZVITAMBO   ZIMBABWE   1                    NA                0.2222222   0.1655707   0.2788738
18 months   ki1126311-ZVITAMBO   ZIMBABWE   2                    NA                0.2010870   0.1431563   0.2590176
18 months   ki1126311-ZVITAMBO   ZIMBABWE   3                    NA                0.1510791   0.0915261   0.2106322
18 months   ki1126311-ZVITAMBO   ZIMBABWE   4                    NA                0.1884058   0.1231450   0.2536666
18 months   ki1126311-ZVITAMBO   ZIMBABWE   5                    NA                0.2051282   0.1319395   0.2783169
18 months   ki1126311-ZVITAMBO   ZIMBABWE   6                    NA                0.1748252   0.1125547   0.2370957
18 months   ki1126311-ZVITAMBO   ZIMBABWE   7                    NA                0.2173913   0.1419829   0.2927997
18 months   ki1126311-ZVITAMBO   ZIMBABWE   8                    NA                0.1230769   0.0665868   0.1795671
18 months   ki1126311-ZVITAMBO   ZIMBABWE   9                    NA                0.1092437   0.0531803   0.1653071
18 months   ki1126311-ZVITAMBO   ZIMBABWE   10                   NA                0.1214953   0.0595747   0.1834160
18 months   ki1126311-ZVITAMBO   ZIMBABWE   11                   NA                0.1742424   0.1095145   0.2389704
18 months   ki1126311-ZVITAMBO   ZIMBABWE   12                   NA                0.1666667   0.1112763   0.2220571


### Parameter: E(Y)


agecat      studyid              country    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------  ---------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO   ZIMBABWE   NA                   NA                0.0319449   0.0317994   0.0320905
3 months    ki1126311-ZVITAMBO   ZIMBABWE   NA                   NA                0.0572394   0.0568406   0.0576383
6 months    ki1126311-ZVITAMBO   ZIMBABWE   NA                   NA                0.0417925   0.0415972   0.0419878
9 months    ki1126311-ZVITAMBO   ZIMBABWE   NA                   NA                0.0480669   0.0478783   0.0482554
12 months   ki1126311-ZVITAMBO   ZIMBABWE   NA                   NA                0.0663796   0.0660663   0.0666928
18 months   ki1126311-ZVITAMBO   ZIMBABWE   NA                   NA                0.1747801   0.1730794   0.1764807


### Parameter: RR


agecat      studyid              country    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------  ---------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO   ZIMBABWE   1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1126311-ZVITAMBO   ZIMBABWE   2                    1                 1.0193050   0.6925779   1.5001674
Birth       ki1126311-ZVITAMBO   ZIMBABWE   3                    1                 0.8631579   0.5814555   1.2813390
Birth       ki1126311-ZVITAMBO   ZIMBABWE   4                    1                 0.8579940   0.5690307   1.2936978
Birth       ki1126311-ZVITAMBO   ZIMBABWE   5                    1                 0.8400000   0.5550597   1.2712146
Birth       ki1126311-ZVITAMBO   ZIMBABWE   6                    1                 0.9328622   0.6335856   1.3735032
Birth       ki1126311-ZVITAMBO   ZIMBABWE   7                    1                 0.9183673   0.6252089   1.3489868
Birth       ki1126311-ZVITAMBO   ZIMBABWE   8                    1                 0.4893964   0.3073889   0.7791721
Birth       ki1126311-ZVITAMBO   ZIMBABWE   9                    1                 0.3655751   0.2206529   0.6056806
Birth       ki1126311-ZVITAMBO   ZIMBABWE   10                   1                 0.8061420   0.5325874   1.2202035
Birth       ki1126311-ZVITAMBO   ZIMBABWE   11                   1                 0.6772487   0.4418379   1.0380861
Birth       ki1126311-ZVITAMBO   ZIMBABWE   12                   1                 0.5354582   0.3424188   0.8373238
3 months    ki1126311-ZVITAMBO   ZIMBABWE   1                    1                 1.0000000   1.0000000   1.0000000
3 months    ki1126311-ZVITAMBO   ZIMBABWE   2                    1                 1.4937376   0.9877072   2.2590220
3 months    ki1126311-ZVITAMBO   ZIMBABWE   3                    1                 1.3033193   0.8647746   1.9642588
3 months    ki1126311-ZVITAMBO   ZIMBABWE   4                    1                 1.4565582   0.9629558   2.2031767
3 months    ki1126311-ZVITAMBO   ZIMBABWE   5                    1                 1.2891528   0.8410033   1.9761098
3 months    ki1126311-ZVITAMBO   ZIMBABWE   6                    1                 2.5660505   1.7957680   3.6667404
3 months    ki1126311-ZVITAMBO   ZIMBABWE   7                    1                 1.1232872   0.7321787   1.7233145
3 months    ki1126311-ZVITAMBO   ZIMBABWE   8                    1                 1.1801059   0.7791842   1.7873179
3 months    ki1126311-ZVITAMBO   ZIMBABWE   9                    1                 0.7573988   0.4702928   1.2197782
3 months    ki1126311-ZVITAMBO   ZIMBABWE   10                   1                 1.3813034   0.8989841   2.1223948
3 months    ki1126311-ZVITAMBO   ZIMBABWE   11                   1                 1.1529054   0.7448565   1.7844926
3 months    ki1126311-ZVITAMBO   ZIMBABWE   12                   1                 0.9738777   0.6305764   1.5040809
6 months    ki1126311-ZVITAMBO   ZIMBABWE   1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO   ZIMBABWE   2                    1                 1.0414508   0.5974799   1.8153243
6 months    ki1126311-ZVITAMBO   ZIMBABWE   3                    1                 1.8243883   1.1529020   2.8869692
6 months    ki1126311-ZVITAMBO   ZIMBABWE   4                    1                 1.1909151   0.7090982   2.0001161
6 months    ki1126311-ZVITAMBO   ZIMBABWE   5                    1                 1.0634921   0.6146451   1.8401113
6 months    ki1126311-ZVITAMBO   ZIMBABWE   6                    1                 1.4136264   0.8603531   2.3226970
6 months    ki1126311-ZVITAMBO   ZIMBABWE   7                    1                 1.5326306   0.9396019   2.4999489
6 months    ki1126311-ZVITAMBO   ZIMBABWE   8                    1                 0.9046967   0.5259406   1.5562140
6 months    ki1126311-ZVITAMBO   ZIMBABWE   9                    1                 0.9420697   0.5544190   1.6007664
6 months    ki1126311-ZVITAMBO   ZIMBABWE   10                   1                 1.1025519   0.6416437   1.8945415
6 months    ki1126311-ZVITAMBO   ZIMBABWE   11                   1                 1.1816578   0.7129945   1.9583815
6 months    ki1126311-ZVITAMBO   ZIMBABWE   12                   1                 1.2256098   0.7528279   1.9953024
9 months    ki1126311-ZVITAMBO   ZIMBABWE   1                    1                 1.0000000   1.0000000   1.0000000
9 months    ki1126311-ZVITAMBO   ZIMBABWE   2                    1                 1.3054277   0.8407482   2.0269347
9 months    ki1126311-ZVITAMBO   ZIMBABWE   3                    1                 0.7483523   0.4462914   1.2548552
9 months    ki1126311-ZVITAMBO   ZIMBABWE   4                    1                 0.7935627   0.4698029   1.3404381
9 months    ki1126311-ZVITAMBO   ZIMBABWE   5                    1                 1.0998718   0.6849417   1.7661617
9 months    ki1126311-ZVITAMBO   ZIMBABWE   6                    1                 1.1116124   0.7037065   1.7559625
9 months    ki1126311-ZVITAMBO   ZIMBABWE   7                    1                 0.9930818   0.6150812   1.6033843
9 months    ki1126311-ZVITAMBO   ZIMBABWE   8                    1                 0.8773359   0.5455419   1.4109241
9 months    ki1126311-ZVITAMBO   ZIMBABWE   9                    1                 0.8765950   0.5498386   1.3975350
9 months    ki1126311-ZVITAMBO   ZIMBABWE   10                   1                 0.9131715   0.5562260   1.4991787
9 months    ki1126311-ZVITAMBO   ZIMBABWE   11                   1                 0.9230164   0.5741228   1.4839322
9 months    ki1126311-ZVITAMBO   ZIMBABWE   12                   1                 1.3168789   0.8645622   2.0058359
12 months   ki1126311-ZVITAMBO   ZIMBABWE   1                    1                 1.0000000   1.0000000   1.0000000
12 months   ki1126311-ZVITAMBO   ZIMBABWE   2                    1                 1.1847524   0.7765957   1.8074249
12 months   ki1126311-ZVITAMBO   ZIMBABWE   3                    1                 1.2787399   0.8608840   1.8994148
12 months   ki1126311-ZVITAMBO   ZIMBABWE   4                    1                 1.0934407   0.7120975   1.6790013
12 months   ki1126311-ZVITAMBO   ZIMBABWE   5                    1                 0.8251543   0.5150480   1.3219731
12 months   ki1126311-ZVITAMBO   ZIMBABWE   6                    1                 1.3175903   0.8841233   1.9635769
12 months   ki1126311-ZVITAMBO   ZIMBABWE   7                    1                 1.2457252   0.8306525   1.8682076
12 months   ki1126311-ZVITAMBO   ZIMBABWE   8                    1                 0.7970939   0.5089138   1.2484605
12 months   ki1126311-ZVITAMBO   ZIMBABWE   9                    1                 0.7441717   0.4729695   1.1708823
12 months   ki1126311-ZVITAMBO   ZIMBABWE   10                   1                 0.9574097   0.6043310   1.5167735
12 months   ki1126311-ZVITAMBO   ZIMBABWE   11                   1                 0.8054121   0.5076586   1.2778050
12 months   ki1126311-ZVITAMBO   ZIMBABWE   12                   1                 0.9026399   0.5851090   1.3924907
18 months   ki1126311-ZVITAMBO   ZIMBABWE   1                    1                 1.0000000   1.0000000   1.0000000
18 months   ki1126311-ZVITAMBO   ZIMBABWE   2                    1                 0.9048913   0.6159261   1.3294261
18 months   ki1126311-ZVITAMBO   ZIMBABWE   3                    1                 0.6798561   0.4251506   1.0871543
18 months   ki1126311-ZVITAMBO   ZIMBABWE   4                    1                 0.8478261   0.5514721   1.3034368
18 months   ki1126311-ZVITAMBO   ZIMBABWE   5                    1                 0.9230769   0.5953804   1.4311371
18 months   ki1126311-ZVITAMBO   ZIMBABWE   6                    1                 0.7867133   0.5076772   1.2191167
18 months   ki1126311-ZVITAMBO   ZIMBABWE   7                    1                 0.9782609   0.6360606   1.5045648
18 months   ki1126311-ZVITAMBO   ZIMBABWE   8                    1                 0.5538462   0.3276212   0.9362812
18 months   ki1126311-ZVITAMBO   ZIMBABWE   9                    1                 0.4915966   0.2771700   0.8719098
18 months   ki1126311-ZVITAMBO   ZIMBABWE   10                   1                 0.5467290   0.3092331   0.9666254
18 months   ki1126311-ZVITAMBO   ZIMBABWE   11                   1                 0.7840909   0.4996869   1.2303676
18 months   ki1126311-ZVITAMBO   ZIMBABWE   12                   1                 0.7500000   0.4933483   1.1401681


### Parameter: PAR


agecat      studyid              country    intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------  ---------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1126311-ZVITAMBO   ZIMBABWE   1                    NA                -0.0097217   -0.0204063   0.0009629
3 months    ki1126311-ZVITAMBO   ZIMBABWE   1                    NA                 0.0130107   -0.0002314   0.0262529
6 months    ki1126311-ZVITAMBO   ZIMBABWE   1                    NA                 0.0069666   -0.0057085   0.0196417
9 months    ki1126311-ZVITAMBO   ZIMBABWE   1                    NA                -0.0000476   -0.0151754   0.0150803
12 months   ki1126311-ZVITAMBO   ZIMBABWE   1                    NA                 0.0006744   -0.0187696   0.0201185
18 months   ki1126311-ZVITAMBO   ZIMBABWE   1                    NA                -0.0474422   -0.1041192   0.0092349


### Parameter: PAF


agecat      studyid              country    intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ---------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1126311-ZVITAMBO   ZIMBABWE   1                    NA                -0.3043273   -0.6856207   -0.0092838
3 months    ki1126311-ZVITAMBO   ZIMBABWE   1                    NA                 0.2273036   -0.0423498    0.4271984
6 months    ki1126311-ZVITAMBO   ZIMBABWE   1                    NA                 0.1666954   -0.1991194    0.4209113
9 months    ki1126311-ZVITAMBO   ZIMBABWE   1                    NA                -0.0009894   -0.3708114    0.2690608
12 months   ki1126311-ZVITAMBO   ZIMBABWE   1                    NA                 0.0101603   -0.3307137    0.2637165
18 months   ki1126311-ZVITAMBO   ZIMBABWE   1                    NA                -0.2714392   -0.6409365    0.0148566
