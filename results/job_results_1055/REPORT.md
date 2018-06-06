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

**Intervention Variable:** enstunt

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        A         n      nA    nAY0   nAY1
----------  -------------------------  -----------------------------  ---  ------  ------  ------  -----
Birth       ki0047075b-MAL-ED          BANGLADESH                     0       257     210     210      0
Birth       ki0047075b-MAL-ED          BANGLADESH                     1       257      47      38      9
Birth       ki0047075b-MAL-ED          BRAZIL                         0       191     170     170      0
Birth       ki0047075b-MAL-ED          BRAZIL                         1       191      21      13      8
Birth       ki0047075b-MAL-ED          INDIA                          0       206     173     173      0
Birth       ki0047075b-MAL-ED          INDIA                          1       206      33      26      7
Birth       ki0047075b-MAL-ED          NEPAL                          0       173     155     155      0
Birth       ki0047075b-MAL-ED          NEPAL                          1       173      18      12      6
Birth       ki0047075b-MAL-ED          PERU                           0       287     253     253      0
Birth       ki0047075b-MAL-ED          PERU                           1       287      34      26      8
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   0       262     234     234      0
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1       262      28      26      2
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0       123     105     105      0
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1       123      18      12      6
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0        90      74      74      0
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1        90      16      13      3
Birth       ki1000108-IRC              INDIA                          0       388     343     343      0
Birth       ki1000108-IRC              INDIA                          1       388      45      29     16
Birth       ki1000109-EE               PAKISTAN                       0         2       1       1      0
Birth       ki1000109-EE               PAKISTAN                       1         2       1       1      0
Birth       ki1000109-ResPak           PAKISTAN                       0         7       5       5      0
Birth       ki1000109-ResPak           PAKISTAN                       1         7       2       2      0
Birth       ki1017093-NIH-Birth        BANGLADESH                     0        28      27      27      0
Birth       ki1017093-NIH-Birth        BANGLADESH                     1        28       1       1      0
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0        27      22      22      0
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1        27       5       4      1
Birth       ki1101329-Keneba           GAMBIA                         0      1541    1459    1459      0
Birth       ki1101329-Keneba           GAMBIA                         1      1541      82      53     29
Birth       ki1114097-CMIN             BANGLADESH                     0        13       7       7      0
Birth       ki1114097-CMIN             BANGLADESH                     1        13       6       1      5
Birth       ki1114097-CMIN             BRAZIL                         0       115     110     110      0
Birth       ki1114097-CMIN             BRAZIL                         1       115       5       2      3
Birth       ki1114097-CMIN             PERU                           0        10      10      10      0
Birth       ki1114097-CMIN             PERU                           1        10       0       0      0
Birth       ki1114097-CONTENT          PERU                           0         2       2       2      0
Birth       ki1114097-CONTENT          PERU                           1         2       0       0      0
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0     13830   12398   12398      0
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1     13830    1432     991    441
Birth       ki1135781-COHORTS          GUATEMALA                      0       407     388     388      0
Birth       ki1135781-COHORTS          GUATEMALA                      1       407      19      15      4
Birth       ki1135781-COHORTS          INDIA                          0      6640    5848    5848      0
Birth       ki1135781-COHORTS          INDIA                          1      6640     792     586    206
Birth       ki1135781-COHORTS          PHILIPPINES                    0      3050    2863    2863      0
Birth       ki1135781-COHORTS          PHILIPPINES                    1      3050     187     141     46
3 months    ki0047075b-MAL-ED          BANGLADESH                     0       242     202     201      1
3 months    ki0047075b-MAL-ED          BANGLADESH                     1       242      40      34      6
3 months    ki0047075b-MAL-ED          BRAZIL                         0       185     166     166      0
3 months    ki0047075b-MAL-ED          BRAZIL                         1       185      19      19      0
3 months    ki0047075b-MAL-ED          INDIA                          0       196     165     164      1
3 months    ki0047075b-MAL-ED          INDIA                          1       196      31      22      9
3 months    ki0047075b-MAL-ED          NEPAL                          0       171     153     153      0
3 months    ki0047075b-MAL-ED          NEPAL                          1       171      18      16      2
3 months    ki0047075b-MAL-ED          PERU                           0       277     244     239      5
3 months    ki0047075b-MAL-ED          PERU                           1       277      33      20     13
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0       237     212     208      4
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1       237      25      22      3
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0       119     102     102      0
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1       119      17      12      5
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          0        96      81      78      3
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          1        96      15       9      6
3 months    ki1000108-IRC              INDIA                          0       407     359     342     17
3 months    ki1000108-IRC              INDIA                          1       407      48      29     19
3 months    ki1000109-EE               PAKISTAN                       0         9       6       6      0
3 months    ki1000109-EE               PAKISTAN                       1         9       3       0      3
3 months    ki1000109-ResPak           PAKISTAN                       0        83      65      50     15
3 months    ki1000109-ResPak           PAKISTAN                       1        83      18      10      8
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          0        96      58      58      0
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          1        96      38      25     13
3 months    ki1017093-NIH-Birth        BANGLADESH                     0       565     476     467      9
3 months    ki1017093-NIH-Birth        BANGLADESH                     1       565      89      65     24
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     0        26      21      19      2
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     1        26       5       4      1
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0        20      19      19      0
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1        20       1       0      1
3 months    ki1101329-Keneba           GAMBIA                         0      2189    1981    1949     32
3 months    ki1101329-Keneba           GAMBIA                         1      2189     208     168     40
3 months    ki1112895-Guatemala BSC    GUATEMALA                      0        23      19      19      0
3 months    ki1112895-Guatemala BSC    GUATEMALA                      1        23       4       2      2
3 months    ki1113344-GMS-Nepal        NEPAL                          0        51      41      41      0
3 months    ki1113344-GMS-Nepal        NEPAL                          1        51      10       7      3
3 months    ki1114097-CMIN             BRAZIL                         0        88      83      81      2
3 months    ki1114097-CMIN             BRAZIL                         1        88       5       4      1
3 months    ki1114097-CMIN             GUINEA-BISSAU                  0       143     124     124      0
3 months    ki1114097-CMIN             GUINEA-BISSAU                  1       143      19      13      6
3 months    ki1114097-CMIN             PERU                           0        98      93      93      0
3 months    ki1114097-CMIN             PERU                           1        98       5       3      2
3 months    ki1114097-CONTENT          PERU                           0        55      49      49      0
3 months    ki1114097-CONTENT          PERU                           1        55       6       4      2
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       0      9082    8134    7801    333
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       1      9082     948     760    188
3 months    ki1135781-COHORTS          GUATEMALA                      0       415     377     355     22
3 months    ki1135781-COHORTS          GUATEMALA                      1       415      38      22     16
3 months    ki1135781-COHORTS          INDIA                          0      7000    6159    6093     66
3 months    ki1135781-COHORTS          INDIA                          1      7000     841     651    190
3 months    ki1135781-COHORTS          PHILIPPINES                    0      2870    2704    2673     31
3 months    ki1135781-COHORTS          PHILIPPINES                    1      2870     166     123     43
6 months    ki0047075b-MAL-ED          BANGLADESH                     0       233     195     195      0
6 months    ki0047075b-MAL-ED          BANGLADESH                     1       233      38      30      8
6 months    ki0047075b-MAL-ED          BRAZIL                         0       173     156     156      0
6 months    ki0047075b-MAL-ED          BRAZIL                         1       173      17      17      0
6 months    ki0047075b-MAL-ED          INDIA                          0       192     162     161      1
6 months    ki0047075b-MAL-ED          INDIA                          1       192      30      24      6
6 months    ki0047075b-MAL-ED          NEPAL                          0       171     153     153      0
6 months    ki0047075b-MAL-ED          NEPAL                          1       171      18      17      1
6 months    ki0047075b-MAL-ED          PERU                           0       260     229     226      3
6 months    ki0047075b-MAL-ED          PERU                           1       260      31      23      8
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0       214     193     190      3
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1       214      21      19      2
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0       117     101      99      2
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1       117      16      13      3
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0        96      81      77      4
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1        96      15      14      1
6 months    ki1000108-IRC              INDIA                          0       407     361     343     18
6 months    ki1000108-IRC              INDIA                          1       407      46      35     11
6 months    ki1000109-EE               PAKISTAN                       0         8       5       4      1
6 months    ki1000109-EE               PAKISTAN                       1         8       3       1      2
6 months    ki1000109-ResPak           PAKISTAN                       0        77      61      48     13
6 months    ki1000109-ResPak           PAKISTAN                       1        77      16      11      5
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0        94      58      58      0
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1        94      36      22     14
6 months    ki1017093-NIH-Birth        BANGLADESH                     0       533     448     433     15
6 months    ki1017093-NIH-Birth        BANGLADESH                     1       533      85      65     20
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0        27      22      22      0
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1        27       5       5      0
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0        15      14      13      1
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1        15       1       0      1
6 months    ki1101329-Keneba           GAMBIA                         0      2088    1891    1851     40
6 months    ki1101329-Keneba           GAMBIA                         1      2088     197     167     30
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0       294     223     223      0
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1       294      71      44     27
6 months    ki1113344-GMS-Nepal        NEPAL                          0        52      42      42      0
6 months    ki1113344-GMS-Nepal        NEPAL                          1        52      10       7      3
6 months    ki1114097-CMIN             BRAZIL                         0       104     100      98      2
6 months    ki1114097-CMIN             BRAZIL                         1       104       4       3      1
6 months    ki1114097-CMIN             GUINEA-BISSAU                  0       319     279     278      1
6 months    ki1114097-CMIN             GUINEA-BISSAU                  1       319      40      37      3
6 months    ki1114097-CMIN             PERU                           0        96      92      92      0
6 months    ki1114097-CMIN             PERU                           1        96       4       4      0
6 months    ki1114097-CONTENT          PERU                           0        55      49      49      0
6 months    ki1114097-CONTENT          PERU                           1        55       6       3      3
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0      8198    7366    7129    237
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1      8198     832     729    103
6 months    ki1135781-COHORTS          GUATEMALA                      0       403     353     318     35
6 months    ki1135781-COHORTS          GUATEMALA                      1       403      50      23     27
6 months    ki1135781-COHORTS          INDIA                          0      6730    5933    5804    129
6 months    ki1135781-COHORTS          INDIA                          1      6730     797     617    180
6 months    ki1135781-COHORTS          PHILIPPINES                    0      2702    2547    2447    100
6 months    ki1135781-COHORTS          PHILIPPINES                    1      2702     155     123     32
6 months    ki1148112-LCNI-5           MALAWI                         0       826     523     523      0
6 months    ki1148112-LCNI-5           MALAWI                         1       826     303     233     70
9 months    ki0047075b-MAL-ED          BANGLADESH                     0       227     190     187      3
9 months    ki0047075b-MAL-ED          BANGLADESH                     1       227      37      29      8
9 months    ki0047075b-MAL-ED          BRAZIL                         0       163     147     147      0
9 months    ki0047075b-MAL-ED          BRAZIL                         1       163      16      16      0
9 months    ki0047075b-MAL-ED          INDIA                          0       188     160     159      1
9 months    ki0047075b-MAL-ED          INDIA                          1       188      28      21      7
9 months    ki0047075b-MAL-ED          NEPAL                          0       167     150     150      0
9 months    ki0047075b-MAL-ED          NEPAL                          1       167      17      16      1
9 months    ki0047075b-MAL-ED          PERU                           0       244     213     209      4
9 months    ki0047075b-MAL-ED          PERU                           1       244      31      23      8
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0       211     190     184      6
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1       211      21      19      2
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0       114      98      90      8
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1       114      16      12      4
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          0        97      82      76      6
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          1        97      15      12      3
9 months    ki1000108-IRC              INDIA                          0       407     361     338     23
9 months    ki1000108-IRC              INDIA                          1       407      46      35     11
9 months    ki1000109-EE               PAKISTAN                       0         8       5       4      1
9 months    ki1000109-EE               PAKISTAN                       1         8       3       1      2
9 months    ki1000109-ResPak           PAKISTAN                       0        67      55      45     10
9 months    ki1000109-ResPak           PAKISTAN                       1        67      12       9      3
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          0        84      51      47      4
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          1        84      33      17     16
9 months    ki1017093-NIH-Birth        BANGLADESH                     0       503     423     402     21
9 months    ki1017093-NIH-Birth        BANGLADESH                     1       503      80      56     24
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     0        26      21      21      0
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     1        26       5       5      0
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0        14      14      13      1
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1        14       0       0      0
9 months    ki1101329-Keneba           GAMBIA                         0      2066    1877    1820     57
9 months    ki1101329-Keneba           GAMBIA                         1      2066     189     148     41
9 months    ki1112895-Guatemala BSC    GUATEMALA                      0       233     176     173      3
9 months    ki1112895-Guatemala BSC    GUATEMALA                      1       233      57      30     27
9 months    ki1113344-GMS-Nepal        NEPAL                          0        51      41      40      1
9 months    ki1113344-GMS-Nepal        NEPAL                          1        51      10       6      4
9 months    ki1114097-CMIN             BRAZIL                         0       106     101      94      7
9 months    ki1114097-CMIN             BRAZIL                         1       106       5       4      1
9 months    ki1114097-CMIN             GUINEA-BISSAU                  0       343     296     295      1
9 months    ki1114097-CMIN             GUINEA-BISSAU                  1       343      47      36     11
9 months    ki1114097-CMIN             PERU                           0        87      83      82      1
9 months    ki1114097-CMIN             PERU                           1        87       4       4      0
9 months    ki1114097-CONTENT          PERU                           0        54      48      47      1
9 months    ki1114097-CONTENT          PERU                           1        54       6       3      3
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       0      7581    6794    6525    269
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       1      7581     787     694     93
9 months    ki1135781-COHORTS          GUATEMALA                      0       393     335     271     64
9 months    ki1135781-COHORTS          GUATEMALA                      1       393      58      23     35
9 months    ki1135781-COHORTS          INDIA                          0      5871    5173    4916    257
9 months    ki1135781-COHORTS          INDIA                          1      5871     698     513    185
9 months    ki1135781-COHORTS          PHILIPPINES                    0      2706    2549    2403    146
9 months    ki1135781-COHORTS          PHILIPPINES                    1      2706     157     107     50
9 months    ki1148112-LCNI-5           MALAWI                         0       654     409     408      1
9 months    ki1148112-LCNI-5           MALAWI                         1       654     245     200     45
12 months   ki0047075b-MAL-ED          BANGLADESH                     0       226     189     180      9
12 months   ki0047075b-MAL-ED          BANGLADESH                     1       226      37      29      8
12 months   ki0047075b-MAL-ED          BRAZIL                         0       161     145     145      0
12 months   ki0047075b-MAL-ED          BRAZIL                         1       161      16      16      0
12 months   ki0047075b-MAL-ED          INDIA                          0       184     156     147      9
12 months   ki0047075b-MAL-ED          INDIA                          1       184      28      20      8
12 months   ki0047075b-MAL-ED          NEPAL                          0       167     150     150      0
12 months   ki0047075b-MAL-ED          NEPAL                          1       167      17      15      2
12 months   ki0047075b-MAL-ED          PERU                           0       235     206     202      4
12 months   ki0047075b-MAL-ED          PERU                           1       235      29      21      8
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0       214     192     185      7
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1       214      22      18      4
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0       111      95      86      9
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1       111      16      12      4
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          0        97      81      72      9
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          1        97      16      15      1
12 months   ki1000108-IRC              INDIA                          0       406     360     339     21
12 months   ki1000108-IRC              INDIA                          1       406      46      33     13
12 months   ki1000109-EE               PAKISTAN                       0         7       4       3      1
12 months   ki1000109-EE               PAKISTAN                       1         7       3       1      2
12 months   ki1000109-ResPak           PAKISTAN                       0        59      49      44      5
12 months   ki1000109-ResPak           PAKISTAN                       1        59      10       9      1
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          0        91      56      42     14
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          1        91      35       8     27
12 months   ki1017093-NIH-Birth        BANGLADESH                     0       488     409     387     22
12 months   ki1017093-NIH-Birth        BANGLADESH                     1       488      79      54     25
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     0        25      21      20      1
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     1        25       4       4      0
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0        11      11       9      2
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1        11       0       0      0
12 months   ki1101329-Keneba           GAMBIA                         0      1947    1753    1671     82
12 months   ki1101329-Keneba           GAMBIA                         1      1947     194     148     46
12 months   ki1112895-Guatemala BSC    GUATEMALA                      0       196     145     140      5
12 months   ki1112895-Guatemala BSC    GUATEMALA                      1       196      51      22     29
12 months   ki1113344-GMS-Nepal        NEPAL                          0        50      40      39      1
12 months   ki1113344-GMS-Nepal        NEPAL                          1        50      10       5      5
12 months   ki1114097-CMIN             BRAZIL                         0       111     106      99      7
12 months   ki1114097-CMIN             BRAZIL                         1       111       5       4      1
12 months   ki1114097-CMIN             GUINEA-BISSAU                  0       209     176     175      1
12 months   ki1114097-CMIN             GUINEA-BISSAU                  1       209      33      27      6
12 months   ki1114097-CMIN             PERU                           0        82      78      76      2
12 months   ki1114097-CMIN             PERU                           1        82       4       3      1
12 months   ki1114097-CONTENT          PERU                           0        55      49      47      2
12 months   ki1114097-CONTENT          PERU                           1        55       6       5      1
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       0      6665    5944    5607    337
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       1      6665     721     618    103
12 months   ki1135781-COHORTS          GUATEMALA                      0       468     368     270     98
12 months   ki1135781-COHORTS          GUATEMALA                      1       468     100      37     63
12 months   ki1135781-COHORTS          INDIA                          0      5243    4622    4244    378
12 months   ki1135781-COHORTS          INDIA                          1      5243     621     421    200
12 months   ki1135781-COHORTS          PHILIPPINES                    0      2581    2431    2154    277
12 months   ki1135781-COHORTS          PHILIPPINES                    1      2581     150      83     67
12 months   ki1148112-LCNI-5           MALAWI                         0       614     386     381      5
12 months   ki1148112-LCNI-5           MALAWI                         1       614     228     170     58
18 months   ki0047075b-MAL-ED          BANGLADESH                     0       215     182     162     20
18 months   ki0047075b-MAL-ED          BANGLADESH                     1       215      33      24      9
18 months   ki0047075b-MAL-ED          BRAZIL                         0       148     134     134      0
18 months   ki0047075b-MAL-ED          BRAZIL                         1       148      14      14      0
18 months   ki0047075b-MAL-ED          INDIA                          0       184     156     140     16
18 months   ki0047075b-MAL-ED          INDIA                          1       184      28      18     10
18 months   ki0047075b-MAL-ED          NEPAL                          0       167     150     150      0
18 months   ki0047075b-MAL-ED          NEPAL                          1       167      17      13      4
18 months   ki0047075b-MAL-ED          PERU                           0       211     184     174     10
18 months   ki0047075b-MAL-ED          PERU                           1       211      27      19      8
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0       204     184     167     17
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1       204      20      16      4
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0       107      92      73     19
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1       107      15       5     10
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          0        97      81      63     18
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          1        97      16      13      3
18 months   ki1000108-IRC              INDIA                          0       405     358     334     24
18 months   ki1000108-IRC              INDIA                          1       405      47      37     10
18 months   ki1000109-EE               PAKISTAN                       0         7       4       3      1
18 months   ki1000109-EE               PAKISTAN                       1         7       3       1      2
18 months   ki1000109-ResPak           PAKISTAN                       0         1       0       0      0
18 months   ki1000109-ResPak           PAKISTAN                       1         1       1       1      0
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          0        82      51      37     14
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          1        82      31      10     21
18 months   ki1017093-NIH-Birth        BANGLADESH                     0       460     382     320     62
18 months   ki1017093-NIH-Birth        BANGLADESH                     1       460      78      40     38
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     0        25      20      19      1
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     1        25       5       4      1
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0         7       6       6      0
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1         7       1       0      1
18 months   ki1101329-Keneba           GAMBIA                         0      1922    1740    1621    119
18 months   ki1101329-Keneba           GAMBIA                         1      1922     182     132     50
18 months   ki1113344-GMS-Nepal        NEPAL                          0        49      39      34      5
18 months   ki1113344-GMS-Nepal        NEPAL                          1        49      10       3      7
18 months   ki1114097-CMIN             BRAZIL                         0       111     106      99      7
18 months   ki1114097-CMIN             BRAZIL                         1       111       5       4      1
18 months   ki1114097-CMIN             GUINEA-BISSAU                  0       287     243     234      9
18 months   ki1114097-CMIN             GUINEA-BISSAU                  1       287      44      31     13
18 months   ki1114097-CMIN             PERU                           0        55      53      50      3
18 months   ki1114097-CMIN             PERU                           1        55       2       1      1
18 months   ki1114097-CONTENT          PERU                           0        54      48      47      1
18 months   ki1114097-CONTENT          PERU                           1        54       6       5      1
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       0      1688    1423    1205    218
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       1      1688     265     189     76
18 months   ki1135781-COHORTS          GUATEMALA                      0       376     291     167    124
18 months   ki1135781-COHORTS          GUATEMALA                      1       376      85      26     59
18 months   ki1135781-COHORTS          PHILIPPINES                    0      2490    2350    1803    547
18 months   ki1135781-COHORTS          PHILIPPINES                    1      2490     140      60     80
18 months   ki1148112-LCNI-5           MALAWI                         0       713     457     446     11
18 months   ki1148112-LCNI-5           MALAWI                         1       713     256     175     81
24 months   ki0047075b-MAL-ED          BANGLADESH                     0       206     174     159     15
24 months   ki0047075b-MAL-ED          BANGLADESH                     1       206      32      23      9
24 months   ki0047075b-MAL-ED          BRAZIL                         0       139     126     125      1
24 months   ki0047075b-MAL-ED          BRAZIL                         1       139      13      13      0
24 months   ki0047075b-MAL-ED          INDIA                          0       183     155     140     15
24 months   ki0047075b-MAL-ED          INDIA                          1       183      28      20      8
24 months   ki0047075b-MAL-ED          NEPAL                          0       165     148     147      1
24 months   ki0047075b-MAL-ED          NEPAL                          1       165      17      15      2
24 months   ki0047075b-MAL-ED          PERU                           0       190     166     160      6
24 months   ki0047075b-MAL-ED          PERU                           1       190      24      17      7
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0       201     182     163     19
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1       201      19      17      2
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0       101      87      65     22
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1       101      14       6      8
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0        98      82      57     25
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1        98      16      12      4
24 months   ki1000108-IRC              INDIA                          0       409     362     332     30
24 months   ki1000108-IRC              INDIA                          1       409      47      36     11
24 months   ki1017093-NIH-Birth        BANGLADESH                     0       426     352     296     56
24 months   ki1017093-NIH-Birth        BANGLADESH                     1       426      74      38     36
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0        19      16      16      0
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1        19       3       3      0
24 months   ki1101329-Keneba           GAMBIA                         0      1724    1548    1454     94
24 months   ki1101329-Keneba           GAMBIA                         1      1724     176     133     43
24 months   ki1113344-GMS-Nepal        NEPAL                          0        44      38      35      3
24 months   ki1113344-GMS-Nepal        NEPAL                          1        44       6       3      3
24 months   ki1114097-CMIN             GUINEA-BISSAU                  0       176     151     148      3
24 months   ki1114097-CMIN             GUINEA-BISSAU                  1       176      25      16      9
24 months   ki1114097-CMIN             PERU                           0        41      39      37      2
24 months   ki1114097-CMIN             PERU                           1        41       2       2      0
24 months   ki1114097-CONTENT          PERU                           0        46      40      40      0
24 months   ki1114097-CONTENT          PERU                           1        46       6       5      1
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0       447     350     263     87
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1       447      97      56     41
24 months   ki1135781-COHORTS          GUATEMALA                      0       462     317     185    132
24 months   ki1135781-COHORTS          GUATEMALA                      1       462     145      51     94
24 months   ki1135781-COHORTS          INDIA                          0      5237    4607    3915    692
24 months   ki1135781-COHORTS          INDIA                          1      5237     630     360    270
24 months   ki1135781-COHORTS          PHILIPPINES                    0      2443    2308    1694    614
24 months   ki1135781-COHORTS          PHILIPPINES                    1      2443     135      60     75
24 months   ki1148112-LCNI-5           MALAWI                         0       570     371     360     11
24 months   ki1148112-LCNI-5           MALAWI                         1       570     199     146     53


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
* agecat: 12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 12 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 12 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 12 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 12 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 12 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 12 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 12 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 12 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 12 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 12 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
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
* agecat: 18 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 18 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 18 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 18 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 18 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 18 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 18 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 18 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 18 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 18 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
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
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
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
* agecat: 3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 3 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 3 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 3 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 3 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 3 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 3 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 3 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 3 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 3 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 3 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
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
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
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
* agecat: 9 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 9 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 9 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 9 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 9 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 9 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 9 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 9 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 9 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 9 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 9 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 9 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
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
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: Birth, studyid: ki1114097-CMIN, country: PERU
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES

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
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: Birth, studyid: ki1114097-CMIN, country: PERU
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 3 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 3 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 3 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: 9 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 9 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 9 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 9 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 9 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 9 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 9 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 9 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 9 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 9 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 9 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 12 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 12 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 12 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 12 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 12 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 18 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 18 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 18 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 18 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 18 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 18 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 18 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 18 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/41633e9b-4a75-4d0e-8358-227d184e65b5/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->


```
## Warning: Removed 61 rows containing missing values (geom_errorbar).
```

![](/tmp/41633e9b-4a75-4d0e-8358-227d184e65b5/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/41633e9b-4a75-4d0e-8358-227d184e65b5/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/41633e9b-4a75-4d0e-8358-227d184e65b5/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki0047075b-MAL-ED          PERU                           0                    NA                0.0204918   0.0026831   0.0383005
3 months    ki0047075b-MAL-ED          PERU                           1                    NA                0.3939394   0.2269268   0.5609520
3 months    ki1000108-IRC              INDIA                          0                    NA                0.0473538   0.0253560   0.0693515
3 months    ki1000108-IRC              INDIA                          1                    NA                0.3958333   0.2573185   0.5343481
3 months    ki1000109-ResPak           PAKISTAN                       0                    NA                0.2307692   0.1277209   0.3338175
3 months    ki1000109-ResPak           PAKISTAN                       1                    NA                0.4444444   0.2134953   0.6753936
3 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0189076   0.0066613   0.0311538
3 months    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.2696629   0.1773824   0.3619434
3 months    ki1101329-Keneba           GAMBIA                         0                    NA                0.0161535   0.0106008   0.0217061
3 months    ki1101329-Keneba           GAMBIA                         1                    NA                0.1923077   0.1387358   0.2458796
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0409393   0.0366329   0.0452457
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1983122   0.1729291   0.2236954
3 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0583554   0.0346643   0.0820466
3 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                0.4210526   0.2638833   0.5782220
3 months    ki1135781-COHORTS          INDIA                          0                    NA                0.0107160   0.0081444   0.0132876
3 months    ki1135781-COHORTS          INDIA                          1                    NA                0.2259215   0.1976563   0.2541867
3 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0114645   0.0074513   0.0154777
3 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.2590361   0.1923787   0.3256936
6 months    ki1000108-IRC              INDIA                          0                    NA                0.0498615   0.0273811   0.0723419
6 months    ki1000108-IRC              INDIA                          1                    NA                0.2391304   0.1157132   0.3625477
6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                0.2131148   0.1096758   0.3165537
6 months    ki1000109-ResPak           PAKISTAN                       1                    NA                0.3125000   0.0838938   0.5411062
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0334821   0.0168086   0.0501557
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.2352941   0.1450333   0.3255549
6 months    ki1101329-Keneba           GAMBIA                         0                    NA                0.0211528   0.0146658   0.0276399
6 months    ki1101329-Keneba           GAMBIA                         1                    NA                0.1522843   0.1020995   0.2024690
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0321749   0.0281448   0.0362050
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1237981   0.1014175   0.1461787
6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0991501   0.0679344   0.1303658
6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                0.5400000   0.4016821   0.6783179
6 months    ki1135781-COHORTS          INDIA                          0                    NA                0.0217428   0.0180315   0.0254541
6 months    ki1135781-COHORTS          INDIA                          1                    NA                0.2258469   0.1968153   0.2548786
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0392619   0.0317179   0.0468059
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.2064516   0.1427195   0.2701837
9 months    ki1000108-IRC              INDIA                          0                    NA                0.0637119   0.0384862   0.0889376
9 months    ki1000108-IRC              INDIA                          1                    NA                0.2391304   0.1157132   0.3625477
9 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0496454   0.0289253   0.0703655
9 months    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.3000000   0.1994818   0.4005182
9 months    ki1101329-Keneba           GAMBIA                         0                    NA                0.0303676   0.0226028   0.0381324
9 months    ki1101329-Keneba           GAMBIA                         1                    NA                0.2169312   0.1581575   0.2757050
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0395938   0.0349566   0.0442309
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1181703   0.0956156   0.1407249
9 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                0.1910448   0.1488937   0.2331959
9 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                0.6034483   0.4773941   0.7295025
9 months    ki1135781-COHORTS          INDIA                          0                    NA                0.0496810   0.0437594   0.0556027
9 months    ki1135781-COHORTS          INDIA                          1                    NA                0.2650430   0.2322979   0.2977881
9 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0572774   0.0482549   0.0662999
9 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.3184713   0.2455834   0.3913593
12 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.0476190   0.0171909   0.0780472
12 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.2162162   0.0832772   0.3491552
12 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.0576923   0.0210043   0.0943803
12 months   ki0047075b-MAL-ED          INDIA                          1                    NA                0.2857143   0.1179288   0.4534998
12 months   ki1000108-IRC              INDIA                          0                    NA                0.0583333   0.0340930   0.0825737
12 months   ki1000108-IRC              INDIA                          1                    NA                0.2826087   0.1523294   0.4128880
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.2500000   0.1359608   0.3640392
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.7714286   0.6315432   0.9113140
12 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0537897   0.0319033   0.0756762
12 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.3164557   0.2137913   0.4191201
12 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.0467770   0.0368896   0.0566644
12 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.2371134   0.1772493   0.2969776
12 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                0.0344828   0.0047075   0.0642580
12 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                0.5686275   0.4323532   0.7049017
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0566958   0.0508163   0.0625754
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1428571   0.1173130   0.1684012
12 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.2663043   0.2210942   0.3115145
12 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.6300000   0.5352708   0.7247292
12 months   ki1135781-COHORTS          INDIA                          0                    NA                0.0817828   0.0738818   0.0896837
12 months   ki1135781-COHORTS          INDIA                          1                    NA                0.3220612   0.2853069   0.3588155
12 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.1139449   0.1013116   0.1265782
12 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.4466667   0.3670926   0.5262408
12 months   ki1148112-LCNI-5           MALAWI                         0                    NA                0.0129534   0.0016640   0.0242427
12 months   ki1148112-LCNI-5           MALAWI                         1                    NA                0.2543860   0.1978092   0.3109627
18 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.1098901   0.0643467   0.1554336
18 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.2727273   0.1204215   0.4250331
18 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.1025641   0.0548256   0.1503026
18 months   ki0047075b-MAL-ED          INDIA                          1                    NA                0.3571429   0.1791795   0.5351062
18 months   ki0047075b-MAL-ED          PERU                           0                    NA                0.0543478   0.0215135   0.0871821
18 months   ki0047075b-MAL-ED          PERU                           1                    NA                0.2962963   0.1236506   0.4689420
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2065217   0.1234136   0.2896299
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.6666667   0.4269848   0.9063485
18 months   ki1000108-IRC              INDIA                          0                    NA                0.0670391   0.0411009   0.0929773
18 months   ki1000108-IRC              INDIA                          1                    NA                0.2127660   0.0956168   0.3299151
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.2745098   0.1512782   0.3977414
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.6774194   0.5118501   0.8429886
18 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.1623037   0.1252871   0.1993203
18 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.4871795   0.3761341   0.5982249
18 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.0683908   0.0565276   0.0802540
18 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.2747253   0.2098580   0.3395926
18 months   ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.0370370   0.0132508   0.0608233
18 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                0.2954545   0.1604092   0.4304999
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.1531975   0.1344781   0.1719168
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.2867925   0.2323239   0.3412610
18 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.4261168   0.3692242   0.4830095
18 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.6941176   0.5960308   0.7922045
18 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.2327660   0.2156766   0.2498553
18 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.5714286   0.4894380   0.6534191
18 months   ki1148112-LCNI-5           MALAWI                         0                    NA                0.0240700   0.0100082   0.0381319
18 months   ki1148112-LCNI-5           MALAWI                         1                    NA                0.3164063   0.2593958   0.3734167
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.0862069   0.0444022   0.1280116
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                0.2812500   0.1250917   0.4374083
24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.0967742   0.0501029   0.1434455
24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                0.2857143   0.1179263   0.4535023
24 months   ki0047075b-MAL-ED          PERU                           0                    NA                0.0361446   0.0076759   0.0646133
24 months   ki0047075b-MAL-ED          PERU                           1                    NA                0.2916667   0.1093398   0.4739935
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2528736   0.1610830   0.3446641
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.5714286   0.3109108   0.8319463
24 months   ki1000108-IRC              INDIA                          0                    NA                0.0828729   0.0544384   0.1113075
24 months   ki1000108-IRC              INDIA                          1                    NA                0.2340426   0.1128487   0.3552364
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.1590909   0.1208363   0.1973456
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                0.4864865   0.3724736   0.6004994
24 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.0607235   0.0488231   0.0726240
24 months   ki1101329-Keneba           GAMBIA                         1                    NA                0.2443182   0.1808194   0.3078169
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.2485714   0.2032431   0.2938998
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.4226804   0.3242651   0.5210957
24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.4164038   0.3620784   0.4707291
24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.6482759   0.5704694   0.7260823
24 months   ki1135781-COHORTS          INDIA                          0                    NA                0.1502062   0.1398885   0.1605239
24 months   ki1135781-COHORTS          INDIA                          1                    NA                0.4285714   0.3899248   0.4672181
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.2660312   0.2480000   0.2840624
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.5555556   0.4717172   0.6393939
24 months   ki1148112-LCNI-5           MALAWI                         0                    NA                0.0296496   0.0123747   0.0469245
24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                0.2663317   0.2048615   0.3278018


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki0047075b-MAL-ED          PERU                           NA                   NA                0.0649819   0.0507096   0.0792543
3 months    ki1000108-IRC              INDIA                          NA                   NA                0.0884521   0.0775192   0.0993850
3 months    ki1000109-ResPak           PAKISTAN                       NA                   NA                0.2771084   0.2580490   0.2961679
3 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.0584071   0.0508682   0.0659460
3 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.0328917   0.0307273   0.0350562
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0573662   0.0563766   0.0583559
3 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0915663   0.0814898   0.1016427
3 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.0365714   0.0349322   0.0382107
3 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0257840   0.0236692   0.0278987
6 months    ki1000108-IRC              INDIA                          NA                   NA                0.0712531   0.0654240   0.0770822
6 months    ki1000109-ResPak           PAKISTAN                       NA                   NA                0.2337662   0.2247006   0.2428319
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.0656660   0.0593875   0.0719446
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.0335249   0.0318804   0.0351694
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0414735   0.0408746   0.0420725
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1538462   0.1396395   0.1680529
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.0459138   0.0443381   0.0474895
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0488527   0.0473865   0.0503189
9 months    ki1000108-IRC              INDIA                          NA                   NA                0.0835381   0.0781355   0.0889406
9 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.0894632   0.0814538   0.0974726
9 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.0474347   0.0451149   0.0497544
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0477510   0.0472114   0.0482905
9 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.2519084   0.2374283   0.2663885
9 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.0752853   0.0735022   0.0770684
9 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0724316   0.0701305   0.0747327
12 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.0752212   0.0670699   0.0833726
12 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.0923913   0.0805248   0.1042578
12 months   ki1000108-IRC              INDIA                          NA                   NA                0.0837438   0.0768207   0.0906670
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.4505495   0.3981402   0.5029587
12 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.0963115   0.0877185   0.1049044
12 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.0657422   0.0632092   0.0682751
12 months   ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.1734694   0.1405764   0.2063623
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0660165   0.0653740   0.0666590
12 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.3440171   0.3304962   0.3575380
12 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.1102422   0.1081404   0.1123440
12 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1332817   0.1302779   0.1362855
12 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.1026059   0.0933715   0.1118402
18 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1348837   0.1270196   0.1427478
18 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1413043   0.1280558   0.1545529
18 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.0853081   0.0743768   0.0962393
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2710280   0.2406160   0.3014401
18 months   ki1000108-IRC              INDIA                          NA                   NA                0.0839506   0.0793993   0.0885019
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.4268293   0.3842826   0.4693759
18 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2173913   0.2062386   0.2285440
18 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.0879292   0.0852277   0.0906308
18 months   ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                0.0766551   0.0658647   0.0874454
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1741706   0.1718514   0.1764898
18 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.4867021   0.4753563   0.4980480
18 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2518072   0.2487424   0.2548720
18 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.1290323   0.1187313   0.1393333
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1165049   0.1068336   0.1261761
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1256831   0.1158014   0.1355647
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.0684211   0.0563192   0.0805229
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2970297   0.2754555   0.3186039
24 months   ki1000108-IRC              INDIA                          NA                   NA                0.1002445   0.0955665   0.1049225
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2159624   0.2041700   0.2277549
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.0794664   0.0768417   0.0820910
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2863535   0.2796929   0.2930141
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.4891775   0.4793551   0.4989999
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.1836930   0.1812402   0.1861457
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2820303   0.2794065   0.2846540
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.1122807   0.1030104   0.1215510


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
3 months    ki0047075b-MAL-ED          PERU                           0                    0                  1.000000    1.0000000    1.000000
3 months    ki0047075b-MAL-ED          PERU                           1                    0                 19.224242    7.3097687   50.558576
3 months    ki1000108-IRC              INDIA                          0                    0                  1.000000    1.0000000    1.000000
3 months    ki1000108-IRC              INDIA                          1                    0                  8.359068    4.6727790   14.953420
3 months    ki1000109-ResPak           PAKISTAN                       0                    0                  1.000000    1.0000000    1.000000
3 months    ki1000109-ResPak           PAKISTAN                       1                    0                  1.925926    0.9707012    3.821146
3 months    ki1017093-NIH-Birth        BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
3 months    ki1017093-NIH-Birth        BANGLADESH                     1                    0                 14.262172    6.8556725   29.670255
3 months    ki1101329-Keneba           GAMBIA                         0                    0                  1.000000    1.0000000    1.000000
3 months    ki1101329-Keneba           GAMBIA                         1                    0                 11.905048    7.6485073   18.530435
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  1.000000    1.0000000    1.000000
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  4.844059    4.1044811    5.716901
3 months    ki1135781-COHORTS          GUATEMALA                      0                    0                  1.000000    1.0000000    1.000000
3 months    ki1135781-COHORTS          GUATEMALA                      1                    0                  7.215311    4.1566213   12.524767
3 months    ki1135781-COHORTS          INDIA                          0                    0                  1.000000    1.0000000    1.000000
3 months    ki1135781-COHORTS          INDIA                          1                    0                 21.082586   16.0838612   27.634870
3 months    ki1135781-COHORTS          PHILIPPINES                    0                    0                  1.000000    1.0000000    1.000000
3 months    ki1135781-COHORTS          PHILIPPINES                    1                    0                 22.594637   14.6325660   34.889137
6 months    ki1000108-IRC              INDIA                          0                    0                  1.000000    1.0000000    1.000000
6 months    ki1000108-IRC              INDIA                          1                    0                  4.795894    2.4168299    9.516845
6 months    ki1000109-ResPak           PAKISTAN                       0                    0                  1.000000    1.0000000    1.000000
6 months    ki1000109-ResPak           PAKISTAN                       1                    0                  1.466346    0.6094857    3.527845
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     1                    0                  7.027451    3.7479906   13.176412
6 months    ki1101329-Keneba           GAMBIA                         0                    0                  1.000000    1.0000000    1.000000
6 months    ki1101329-Keneba           GAMBIA                         1                    0                  7.199239    4.5896676   11.292547
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  1.000000    1.0000000    1.000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  3.847665    3.0880226    4.794177
6 months    ki1135781-COHORTS          GUATEMALA                      0                    0                  1.000000    1.0000000    1.000000
6 months    ki1135781-COHORTS          GUATEMALA                      1                    0                  5.446286    3.6293916    8.172727
6 months    ki1135781-COHORTS          INDIA                          0                    0                  1.000000    1.0000000    1.000000
6 months    ki1135781-COHORTS          INDIA                          1                    0                 10.387208    8.3887704   12.861728
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    0                  1.000000    1.0000000    1.000000
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    0                  5.258323    3.6553620    7.564218
9 months    ki1000108-IRC              INDIA                          0                    0                  1.000000    1.0000000    1.000000
9 months    ki1000108-IRC              INDIA                          1                    0                  3.753308    1.9584467    7.193110
9 months    ki1017093-NIH-Birth        BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
9 months    ki1017093-NIH-Birth        BANGLADESH                     1                    0                  6.042857    3.5383481   10.320104
9 months    ki1101329-Keneba           GAMBIA                         0                    0                  1.000000    1.0000000    1.000000
9 months    ki1101329-Keneba           GAMBIA                         1                    0                  7.143507    4.9217650   10.368169
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  1.000000    1.0000000    1.000000
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  2.984568    2.3857671    3.733661
9 months    ki1135781-COHORTS          GUATEMALA                      0                    0                  1.000000    1.0000000    1.000000
9 months    ki1135781-COHORTS          GUATEMALA                      1                    0                  3.158675    2.3310513    4.280140
9 months    ki1135781-COHORTS          INDIA                          0                    0                  1.000000    1.0000000    1.000000
9 months    ki1135781-COHORTS          INDIA                          1                    0                  5.334892    4.4933473    6.334048
9 months    ki1135781-COHORTS          PHILIPPINES                    0                    0                  1.000000    1.0000000    1.000000
9 months    ki1135781-COHORTS          PHILIPPINES                    1                    0                  5.560161    4.2113728    7.340928
12 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
12 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                  4.540540    1.8706514   11.021031
12 months   ki0047075b-MAL-ED          INDIA                          0                    0                  1.000000    1.0000000    1.000000
12 months   ki0047075b-MAL-ED          INDIA                          1                    0                  4.952381    2.0839568   11.768995
12 months   ki1000108-IRC              INDIA                          0                    0                  1.000000    1.0000000    1.000000
12 months   ki1000108-IRC              INDIA                          1                    0                  4.844721    2.6045283    9.011734
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  1.000000    1.0000000    1.000000
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                  3.085714    1.8887321    5.041283
12 months   ki1017093-NIH-Birth        BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
12 months   ki1017093-NIH-Birth        BANGLADESH                     1                    0                  5.883199    3.4963158    9.899572
12 months   ki1101329-Keneba           GAMBIA                         0                    0                  1.000000    1.0000000    1.000000
12 months   ki1101329-Keneba           GAMBIA                         1                    0                  5.069022    3.6468942    7.045716
12 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    0                  1.000000    1.0000000    1.000000
12 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    0                 16.490196    6.7304530   40.402416
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  1.000000    1.0000000    1.000000
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  2.519712    2.0491800    3.098287
12 months   ki1135781-COHORTS          GUATEMALA                      0                    0                  1.000000    1.0000000    1.000000
12 months   ki1135781-COHORTS          GUATEMALA                      1                    0                  2.365714    1.8856955    2.967926
12 months   ki1135781-COHORTS          INDIA                          0                    0                  1.000000    1.0000000    1.000000
12 months   ki1135781-COHORTS          INDIA                          1                    0                  3.938007    3.3910919    4.573130
12 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                  1.000000    1.0000000    1.000000
12 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                  3.920024    3.1780364    4.835246
12 months   ki1148112-LCNI-5           MALAWI                         0                    0                  1.000000    1.0000000    1.000000
12 months   ki1148112-LCNI-5           MALAWI                         1                    0                 19.638596    7.9887138   48.277417
18 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
18 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                  2.481818    1.2380675    4.975029
18 months   ki0047075b-MAL-ED          INDIA                          0                    0                  1.000000    1.0000000    1.000000
18 months   ki0047075b-MAL-ED          INDIA                          1                    0                  3.482143    1.7608201    6.886177
18 months   ki0047075b-MAL-ED          PERU                           0                    0                  1.000000    1.0000000    1.000000
18 months   ki0047075b-MAL-ED          PERU                           1                    0                  5.451852    2.3551452   12.620321
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  1.000000    1.0000000    1.000000
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                  3.228070    1.8818543    5.537324
18 months   ki1000108-IRC              INDIA                          0                    0                  1.000000    1.0000000    1.000000
18 months   ki1000108-IRC              INDIA                          1                    0                  3.173759    1.6192562    6.220600
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                  1.000000    1.0000000    1.000000
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                  2.467742    1.4801829    4.114188
18 months   ki1017093-NIH-Birth        BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
18 months   ki1017093-NIH-Birth        BANGLADESH                     1                    0                  3.001654    2.1743269    4.143778
18 months   ki1101329-Keneba           GAMBIA                         0                    0                  1.000000    1.0000000    1.000000
18 months   ki1101329-Keneba           GAMBIA                         1                    0                  4.016991    2.9968088    5.384468
18 months   ki1114097-CMIN             GUINEA-BISSAU                  0                    0                  1.000000    1.0000000    1.000000
18 months   ki1114097-CMIN             GUINEA-BISSAU                  1                    0                  7.977273    3.6266970   17.546787
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  1.000000    1.0000000    1.000000
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  1.872044    1.4936100    2.346362
18 months   ki1135781-COHORTS          GUATEMALA                      0                    0                  1.000000    1.0000000    1.000000
18 months   ki1135781-COHORTS          GUATEMALA                      1                    0                  1.628937    1.3411381    1.978496
18 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                  1.000000    1.0000000    1.000000
18 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                  2.454949    2.0895103    2.884300
18 months   ki1148112-LCNI-5           MALAWI                         0                    0                  1.000000    1.0000000    1.000000
18 months   ki1148112-LCNI-5           MALAWI                         1                    0                 13.145241    7.1327678   24.225852
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    0                  3.262500    1.5609727    6.818765
24 months   ki0047075b-MAL-ED          INDIA                          0                    0                  1.000000    1.0000000    1.000000
24 months   ki0047075b-MAL-ED          INDIA                          1                    0                  2.952381    1.3808597    6.312410
24 months   ki0047075b-MAL-ED          PERU                           0                    0                  1.000000    1.0000000    1.000000
24 months   ki0047075b-MAL-ED          PERU                           1                    0                  8.069444    2.9521353   22.057232
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    0                  1.000000    1.0000000    1.000000
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    0                  2.259740    1.2617347    4.047147
24 months   ki1000108-IRC              INDIA                          0                    0                  1.000000    1.0000000    1.000000
24 months   ki1000108-IRC              INDIA                          1                    0                  2.824114    1.5174171    5.256048
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    0                  1.000000    1.0000000    1.000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    0                  3.057915    2.1857497    4.278095
24 months   ki1101329-Keneba           GAMBIA                         0                    0                  1.000000    1.0000000    1.000000
24 months   ki1101329-Keneba           GAMBIA                         1                    0                  4.023453    2.9055746    5.571418
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                  1.000000    1.0000000    1.000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                  1.700438    1.2650849    2.285610
24 months   ki1135781-COHORTS          GUATEMALA                      0                    0                  1.000000    1.0000000    1.000000
24 months   ki1135781-COHORTS          GUATEMALA                      1                    0                  1.556844    1.3039372    1.858804
24 months   ki1135781-COHORTS          INDIA                          0                    0                  1.000000    1.0000000    1.000000
24 months   ki1135781-COHORTS          INDIA                          1                    0                  2.853220    2.5474447    3.195699
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                  1.000000    1.0000000    1.000000
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                  2.088310    1.7699016    2.464000
24 months   ki1148112-LCNI-5           MALAWI                         0                    0                  1.000000    1.0000000    1.000000
24 months   ki1148112-LCNI-5           MALAWI                         1                    0                  8.982641    4.7999637   16.810092


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
3 months    ki0047075b-MAL-ED          PERU                           0                    NA                0.0444901    0.0216680   0.0673123
3 months    ki1000108-IRC              INDIA                          0                    NA                0.0410983    0.0165335   0.0656631
3 months    ki1000109-ResPak           PAKISTAN                       0                    NA                0.0463392   -0.0584569   0.1511353
3 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0394995    0.0251188   0.0538802
3 months    ki1101329-Keneba           GAMBIA                         0                    NA                0.0167383    0.0107787   0.0226979
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0164270    0.0120083   0.0208456
3 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0332108    0.0074659   0.0589558
3 months    ki1135781-COHORTS          INDIA                          0                    NA                0.0258554    0.0228058   0.0289050
3 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0143195    0.0097832   0.0188558
6 months    ki1000108-IRC              INDIA                          0                    NA                0.0213916   -0.0018323   0.0446155
6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                0.0206515   -0.0831840   0.1244870
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0321839    0.0143674   0.0500004
6 months    ki1101329-Keneba           GAMBIA                         0                    NA                0.0123721    0.0056798   0.0190643
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0092987    0.0052243   0.0133730
6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0546960    0.0203995   0.0889925
6 months    ki1135781-COHORTS          INDIA                          0                    NA                0.0241710    0.0201391   0.0282030
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0095908    0.0019057   0.0172760
9 months    ki1000108-IRC              INDIA                          0                    NA                0.0198262   -0.0059716   0.0456239
9 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0398178    0.0176036   0.0620321
9 months    ki1101329-Keneba           GAMBIA                         0                    NA                0.0170670    0.0089631   0.0251710
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0081572    0.0034887   0.0128257
9 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0608636    0.0162947   0.1054325
9 months    ki1135781-COHORTS          INDIA                          0                    NA                0.0256043    0.0194200   0.0317886
9 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0151543    0.0058430   0.0244656
12 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.0276022   -0.0038989   0.0591033
12 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.0346990   -0.0038604   0.0732584
12 months   ki1000108-IRC              INDIA                          0                    NA                0.0254105    0.0002009   0.0506202
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.2005495    0.0750438   0.3260551
12 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0425217    0.0190089   0.0660346
12 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.0189652    0.0087585   0.0291719
12 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                0.1389866    0.0946187   0.1833546
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0093207    0.0034061   0.0152352
12 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0777127    0.0305241   0.1249014
12 months   ki1135781-COHORTS          INDIA                          0                    NA                0.0284594    0.0202837   0.0366352
12 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0193368    0.0063513   0.0323223
12 months   ki1148112-LCNI-5           MALAWI                         0                    NA                0.0896525    0.0750675   0.1042375
18 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.0249936   -0.0212238   0.0712110
18 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.0387402   -0.0108025   0.0882830
18 months   ki0047075b-MAL-ED          PERU                           0                    NA                0.0309602   -0.0036459   0.0655663
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0645063   -0.0239915   0.1530041
18 months   ki1000108-IRC              INDIA                          0                    NA                0.0169115   -0.0094229   0.0432459
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.1523195    0.0219498   0.2826891
18 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0550876    0.0164274   0.0937478
18 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.0195384    0.0073715   0.0317054
18 months   ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.0396180    0.0134987   0.0657373
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0209731    0.0021107   0.0398356
18 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0605853    0.0025724   0.1185982
18 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0190413    0.0016793   0.0364032
18 months   ki1148112-LCNI-5           MALAWI                         0                    NA                0.1049622    0.0875311   0.1223934
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.0302980   -0.0126109   0.0732068
24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.0289089   -0.0187971   0.0766148
24 months   ki0047075b-MAL-ED          PERU                           0                    NA                0.0322765    0.0013423   0.0632106
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0441561   -0.0501357   0.1384480
24 months   ki1000108-IRC              INDIA                          0                    NA                0.0173716   -0.0114452   0.0461884
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.0568715    0.0168405   0.0969025
24 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.0187428    0.0065564   0.0309293
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0377820   -0.0080331   0.0835971
24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.0727737    0.0175675   0.1279799
24 months   ki1135781-COHORTS          INDIA                          0                    NA                0.0334867    0.0228815   0.0440919
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0159991   -0.0022220   0.0342202
24 months   ki1148112-LCNI-5           MALAWI                         0                    NA                0.0826311    0.0630259   0.1022363


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
3 months    ki0047075b-MAL-ED          PERU                           0                    NA                0.6846539    0.2271690   0.8713261
3 months    ki1000108-IRC              INDIA                          0                    NA                0.4646394    0.1342089   0.6689606
3 months    ki1000109-ResPak           PAKISTAN                       0                    NA                0.1672241   -0.3084168   0.4699581
3 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.6762796    0.3734019   0.8327558
3 months    ki1101329-Keneba           GAMBIA                         0                    NA                0.5088900    0.3030910   0.6539160
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.2863524    0.2060788   0.3585095
3 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                0.3626972    0.0294387   0.5815258
3 months    ki1135781-COHORTS          INDIA                          0                    NA                0.7069837    0.6259632   0.7704543
3 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.5553634    0.3629842   0.6896440
6 months    ki1000108-IRC              INDIA                          0                    NA                0.3002197   -0.1065321   0.5574530
6 months    ki1000109-ResPak           PAKISTAN                       0                    NA                0.0883424   -0.4835286   0.4397685
6 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.4901148    0.1533687   0.6929207
6 months    ki1101329-Keneba           GAMBIA                         0                    NA                0.3690413    0.1392409   0.5374910
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.2242074    0.1199567   0.3161085
6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                0.3555241    0.1052598   0.5357879
6 months    ki1135781-COHORTS          INDIA                          0                    NA                0.5264433    0.4363807   0.6021145
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.1963213    0.0237924   0.3383584
9 months    ki1000108-IRC              INDIA                          0                    NA                0.2373309   -0.1391133   0.4893712
9 months    ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.4450749    0.1496145   0.6378796
9 months    ki1101329-Keneba           GAMBIA                         0                    NA                0.3598012    0.1694345   0.5065357
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.1708279    0.0672934   0.2628697
9 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                0.2416101    0.0473981   0.3962271
9 months    ki1135781-COHORTS          INDIA                          0                    NA                0.3400965    0.2548260   0.4156094
9 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.2092217    0.0713682   0.3266111
12 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.3669468   -0.2103558   0.6688937
12 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.3755656   -0.1946551   0.6736143
12 months   ki1000108-IRC              INDIA                          0                    NA                0.3034314   -0.0640730   0.5440089
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.4451220    0.1115280   0.6534616
12 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.4415024    0.1529104   0.6317750
12 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.2884787    0.1179389   0.4260459
12 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                0.8012170    0.5188056   0.9178821
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.1411871    0.0469094   0.2261390
12 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.2258979    0.0785371   0.3496927
12 months   ki1135781-COHORTS          INDIA                          0                    NA                0.2581538    0.1813849   0.3277233
12 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.1450822    0.0426731   0.2365362
12 months   ki1148112-LCNI-5           MALAWI                         0                    NA                0.8737561    0.6968015   0.9474353
18 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.1852975   -0.2381198   0.4639128
18 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.2741617   -0.1669243   0.5485215
18 months   ki0047075b-MAL-ED          PERU                           0                    NA                0.3629227   -0.1814305   0.6564610
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2380060   -0.1571420   0.4982164
18 months   ki1000108-IRC              INDIA                          0                    NA                0.2014459   -0.1802639   0.4597068
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.3568627   -0.0186231   0.5939366
18 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.2534031    0.0567851   0.4090351
18 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.2222064    0.0723790   0.3478339
18 months   ki1114097-CMIN             GUINEA-BISSAU                  0                    NA                0.5168350    0.0675344   0.7496439
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.1204172    0.0053786   0.2221504
18 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.1244812   -0.0025986   0.2354537
18 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0756184    0.0042010   0.1419139
18 months   ki1148112-LCNI-5           MALAWI                         0                    NA                0.8134573    0.6636019   0.8965566
24 months   ki0047075b-MAL-ED          BANGLADESH                     0                    NA                0.2600575   -0.2102240   0.5475921
24 months   ki0047075b-MAL-ED          INDIA                          0                    NA                0.2300140   -0.2551489   0.5276430
24 months   ki0047075b-MAL-ED          PERU                           0                    NA                0.4717331   -0.1842332   0.7643488
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1486590   -0.2327443   0.4120585
24 months   ki1000108-IRC              INDIA                          0                    NA                0.1732920   -0.1687859   0.4152513
24 months   ki1017093-NIH-Birth        BANGLADESH                     0                    NA                0.2633399    0.0573394   0.4243230
24 months   ki1101329-Keneba           GAMBIA                         0                    NA                0.2358588    0.0678498   0.3735863
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.1319420   -0.0432451   0.2777107
24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.1487675    0.0286522   0.2540295
24 months   ki1135781-COHORTS          INDIA                          0                    NA                0.1822974    0.1230285   0.2375606
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.0567283   -0.0100633   0.1191032
24 months   ki1148112-LCNI-5           MALAWI                         0                    NA                0.7359333    0.5243612   0.8533946
