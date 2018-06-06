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

**Intervention Variable:** feducyrs

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        A         n      nA   nAY0   nAY1
----------  -------------------------  -----------------------------  ---  ------  ------  -----  -----
3 months    ki0047075b-MAL-ED          BANGLADESH                     Q4      149      54     40     14
3 months    ki0047075b-MAL-ED          BANGLADESH                     Q1      149      31     23      8
3 months    ki0047075b-MAL-ED          BANGLADESH                     Q2      149       9      5      4
3 months    ki0047075b-MAL-ED          BANGLADESH                     Q3      149      55     38     17
3 months    ki0047075b-MAL-ED          INDIA                          Q4      147      44     31     13
3 months    ki0047075b-MAL-ED          INDIA                          Q1      147      25     18      7
3 months    ki0047075b-MAL-ED          INDIA                          Q2      147      45     38      7
3 months    ki0047075b-MAL-ED          INDIA                          Q3      147      33     26      7
3 months    ki0047075b-MAL-ED          NEPAL                          Q4       98      42     36      6
3 months    ki0047075b-MAL-ED          NEPAL                          Q1       98      24     21      3
3 months    ki0047075b-MAL-ED          NEPAL                          Q2       98      25     19      6
3 months    ki0047075b-MAL-ED          NEPAL                          Q3       98       7      6      1
3 months    ki0047075b-MAL-ED          PERU                           Q4      250     120     77     43
3 months    ki0047075b-MAL-ED          PERU                           Q1      250      51     35     16
3 months    ki0047075b-MAL-ED          PERU                           Q2      250      66     44     22
3 months    ki0047075b-MAL-ED          PERU                           Q3      250      13     10      3
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q4      110      43     30     13
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q1      110      19     18      1
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q2      110      28     22      6
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q3      110      20     13      7
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4      212       9      8      1
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1      212      45     31     14
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2      212      37     21     16
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3      212     121     90     31
3 months    ki1017093b-PROVIDE         BANGLADESH                     Q4      700      18     15      3
3 months    ki1017093b-PROVIDE         BANGLADESH                     Q1      700     317    245     72
3 months    ki1017093b-PROVIDE         BANGLADESH                     Q2      700     277    231     46
3 months    ki1017093b-PROVIDE         BANGLADESH                     Q3      700      88     79      9
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q4      758     206    182     24
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q1      758     174    142     32
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q2      758     196    167     29
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q3      758     182    146     36
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q4     2380     221    198     23
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q1     2380      12     12      0
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q2     2380    2053   1840    213
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q3     2380      94     87      7
3 months    ki1113344-GMS-Nepal        NEPAL                          Q4      592     143    125     18
3 months    ki1113344-GMS-Nepal        NEPAL                          Q1      592     257    205     52
3 months    ki1113344-GMS-Nepal        NEPAL                          Q2      592      91     74     17
3 months    ki1113344-GMS-Nepal        NEPAL                          Q3      592     101     94      7
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       Q4    13653   11676   9286   2390
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       Q1    13653      84     69     15
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       Q2    13653      98     76     22
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       Q3    13653    1795   1376    419
3 months    ki1135781-COHORTS          GUATEMALA                      Q4      477       4      3      1
3 months    ki1135781-COHORTS          GUATEMALA                      Q1      477     356    253    103
3 months    ki1135781-COHORTS          GUATEMALA                      Q2      477     116     93     23
3 months    ki1135781-COHORTS          GUATEMALA                      Q3      477       1      1      0
3 months    ki1135781-COHORTS          INDIA                          Q4     1421     401    354     47
3 months    ki1135781-COHORTS          INDIA                          Q1     1421     253    202     51
3 months    ki1135781-COHORTS          INDIA                          Q2     1421     205    159     46
3 months    ki1135781-COHORTS          INDIA                          Q3     1421     562    473     89
3 months    ki1135781-COHORTS          PHILIPPINES                    Q4     2878     832    754     78
3 months    ki1135781-COHORTS          PHILIPPINES                    Q1     2878     624    502    122
3 months    ki1135781-COHORTS          PHILIPPINES                    Q2     2878     204    174     30
3 months    ki1135781-COHORTS          PHILIPPINES                    Q3     2878    1218   1033    185
6 months    ki0047075b-MAL-ED          BANGLADESH                     Q4      136      50     37     13
6 months    ki0047075b-MAL-ED          BANGLADESH                     Q1      136      31     21     10
6 months    ki0047075b-MAL-ED          BANGLADESH                     Q2      136       7      4      3
6 months    ki0047075b-MAL-ED          BANGLADESH                     Q3      136      48     30     18
6 months    ki0047075b-MAL-ED          INDIA                          Q4      138      43     28     15
6 months    ki0047075b-MAL-ED          INDIA                          Q1      138      21     14      7
6 months    ki0047075b-MAL-ED          INDIA                          Q2      138      44     30     14
6 months    ki0047075b-MAL-ED          INDIA                          Q3      138      30     22      8
6 months    ki0047075b-MAL-ED          NEPAL                          Q4       96      41     35      6
6 months    ki0047075b-MAL-ED          NEPAL                          Q1       96      23     20      3
6 months    ki0047075b-MAL-ED          NEPAL                          Q2       96      25     19      6
6 months    ki0047075b-MAL-ED          NEPAL                          Q3       96       7      6      1
6 months    ki0047075b-MAL-ED          PERU                           Q4      233     110     56     54
6 months    ki0047075b-MAL-ED          PERU                           Q1      233      47     25     22
6 months    ki0047075b-MAL-ED          PERU                           Q2      233      64     38     26
6 months    ki0047075b-MAL-ED          PERU                           Q3      233      12      8      4
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q4       99      38     21     17
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q1       99      19     15      4
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q2       99      26     19      7
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q3       99      16      6     10
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4      206       8      5      3
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1      206      45     28     17
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2      206      32     16     16
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3      206     121     75     46
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q4      105       3      2      1
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q1      105      37     23     14
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q2      105      23     12     11
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q3      105      42     25     17
6 months    ki1017093b-PROVIDE         BANGLADESH                     Q4      640      17     14      3
6 months    ki1017093b-PROVIDE         BANGLADESH                     Q1      640     287    197     90
6 months    ki1017093b-PROVIDE         BANGLADESH                     Q2      640     253    197     56
6 months    ki1017093b-PROVIDE         BANGLADESH                     Q3      640      83     69     14
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q4      736     199    154     45
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q1      736     169    109     60
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q2      736     190    126     64
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q3      736     178    121     57
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q4     2223     200    164     36
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q1     2223      11     10      1
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q2     2223    1922   1526    396
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q3     2223      90     78     12
6 months    ki1113344-GMS-Nepal        NEPAL                          Q4      566     138    106     32
6 months    ki1113344-GMS-Nepal        NEPAL                          Q1      566     246    165     81
6 months    ki1113344-GMS-Nepal        NEPAL                          Q2      566      91     61     30
6 months    ki1113344-GMS-Nepal        NEPAL                          Q3      566      91     72     19
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Q4     8835    7565   5397   2168
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Q1     8835      57     39     18
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Q2     8835      60     38     22
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Q3     8835    1153    779    374
6 months    ki1135781-COHORTS          GUATEMALA                      Q4      135       2      1      1
6 months    ki1135781-COHORTS          GUATEMALA                      Q1      135      94     57     37
6 months    ki1135781-COHORTS          GUATEMALA                      Q2      135      38     28     10
6 months    ki1135781-COHORTS          GUATEMALA                      Q3      135       1      1      0
6 months    ki1135781-COHORTS          PHILIPPINES                    Q4     2653     744    619    125
6 months    ki1135781-COHORTS          PHILIPPINES                    Q1     2653     591    397    194
6 months    ki1135781-COHORTS          PHILIPPINES                    Q2     2653     186    138     48
6 months    ki1135781-COHORTS          PHILIPPINES                    Q3     2653    1132    840    292
6 months    ki1148112-LCNI-5           MALAWI                         Q4      267      22     17      5
6 months    ki1148112-LCNI-5           MALAWI                         Q1      267     124     76     48
6 months    ki1148112-LCNI-5           MALAWI                         Q2      267      87     53     34
6 months    ki1148112-LCNI-5           MALAWI                         Q3      267      34     26      8
12 months   ki0047075b-MAL-ED          BANGLADESH                     Q4      131      48     30     18
12 months   ki0047075b-MAL-ED          BANGLADESH                     Q1      131      31     20     11
12 months   ki0047075b-MAL-ED          BANGLADESH                     Q2      131       6      3      3
12 months   ki0047075b-MAL-ED          BANGLADESH                     Q3      131      46     25     21
12 months   ki0047075b-MAL-ED          INDIA                          Q4      137      43     24     19
12 months   ki0047075b-MAL-ED          INDIA                          Q1      137      21     11     10
12 months   ki0047075b-MAL-ED          INDIA                          Q2      137      43     23     20
12 months   ki0047075b-MAL-ED          INDIA                          Q3      137      30     16     14
12 months   ki0047075b-MAL-ED          NEPAL                          Q4       94      39     32      7
12 months   ki0047075b-MAL-ED          NEPAL                          Q1       94      23     19      4
12 months   ki0047075b-MAL-ED          NEPAL                          Q2       94      25     19      6
12 months   ki0047075b-MAL-ED          NEPAL                          Q3       94       7      5      2
12 months   ki0047075b-MAL-ED          PERU                           Q4      223     106     47     59
12 months   ki0047075b-MAL-ED          PERU                           Q1      223      44     19     25
12 months   ki0047075b-MAL-ED          PERU                           Q2      223      62     33     29
12 months   ki0047075b-MAL-ED          PERU                           Q3      223      11      6      5
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q4       96      36     17     19
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q1       96      19     14      5
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q2       96      25     15     10
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q3       96      16      5     11
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4      202       8      3      5
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1      202      43     15     28
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2      202      31     12     19
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3      202     120     42     78
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q4       99       3      1      2
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q1       99      35      8     27
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q2       99      21      2     19
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q3       99      40      4     36
12 months   ki1017093b-PROVIDE         BANGLADESH                     Q4      609      17     14      3
12 months   ki1017093b-PROVIDE         BANGLADESH                     Q1      609     272    159    113
12 months   ki1017093b-PROVIDE         BANGLADESH                     Q2      609     241    170     71
12 months   ki1017093b-PROVIDE         BANGLADESH                     Q3      609      79     64     15
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q4      729     199    142     57
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q1      729     166     93     73
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q2      729     189    105     84
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q3      729     175    112     63
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q4     1987     178    118     60
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q1     1987      10      9      1
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q2     1987    1721   1177    544
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q3     1987      78     52     26
12 months   ki1113344-GMS-Nepal        NEPAL                          Q4      581     142     87     55
12 months   ki1113344-GMS-Nepal        NEPAL                          Q1      581     249    125    124
12 months   ki1113344-GMS-Nepal        NEPAL                          Q2      581      93     51     42
12 months   ki1113344-GMS-Nepal        NEPAL                          Q3      581      97     53     44
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       Q4     9892    8414   5310   3104
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       Q1     9892      62     39     23
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       Q2     9892      73     43     30
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       Q3     9892    1343    799    544
12 months   ki1135781-COHORTS          GUATEMALA                      Q4      512       5      4      1
12 months   ki1135781-COHORTS          GUATEMALA                      Q1      512     377     95    282
12 months   ki1135781-COHORTS          GUATEMALA                      Q2      512     129     40     89
12 months   ki1135781-COHORTS          GUATEMALA                      Q3      512       1      0      1
12 months   ki1135781-COHORTS          INDIA                          Q4     1406     396    292    104
12 months   ki1135781-COHORTS          INDIA                          Q1     1406     252    118    134
12 months   ki1135781-COHORTS          INDIA                          Q2     1406     207    113     94
12 months   ki1135781-COHORTS          INDIA                          Q3     1406     551    342    209
12 months   ki1135781-COHORTS          PHILIPPINES                    Q4     2612     729    498    231
12 months   ki1135781-COHORTS          PHILIPPINES                    Q1     2612     579    258    321
12 months   ki1135781-COHORTS          PHILIPPINES                    Q2     2612     188     88    100
12 months   ki1135781-COHORTS          PHILIPPINES                    Q3     2612    1116    618    498
12 months   ki1148112-LCNI-5           MALAWI                         Q4      791      56     38     18
12 months   ki1148112-LCNI-5           MALAWI                         Q1      791     366    185    181
12 months   ki1148112-LCNI-5           MALAWI                         Q2      791     247    127    120
12 months   ki1148112-LCNI-5           MALAWI                         Q3      791     122     69     53
18 months   ki0047075b-MAL-ED          BANGLADESH                     Q4      127      47     28     19
18 months   ki0047075b-MAL-ED          BANGLADESH                     Q1      127      30     11     19
18 months   ki0047075b-MAL-ED          BANGLADESH                     Q2      127       6      2      4
18 months   ki0047075b-MAL-ED          BANGLADESH                     Q3      127      44     18     26
18 months   ki0047075b-MAL-ED          INDIA                          Q4      133      42     18     24
18 months   ki0047075b-MAL-ED          INDIA                          Q1      133      21     10     11
18 months   ki0047075b-MAL-ED          INDIA                          Q2      133      41     17     24
18 months   ki0047075b-MAL-ED          INDIA                          Q3      133      29     14     15
18 months   ki0047075b-MAL-ED          NEPAL                          Q4       92      39     30      9
18 months   ki0047075b-MAL-ED          NEPAL                          Q1       92      23     16      7
18 months   ki0047075b-MAL-ED          NEPAL                          Q2       92      23     13     10
18 months   ki0047075b-MAL-ED          NEPAL                          Q3       92       7      5      2
18 months   ki0047075b-MAL-ED          PERU                           Q4      199      92     28     64
18 months   ki0047075b-MAL-ED          PERU                           Q1      199      40     14     26
18 months   ki0047075b-MAL-ED          PERU                           Q2      199      57     17     40
18 months   ki0047075b-MAL-ED          PERU                           Q3      199      10      3      7
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q4       94      35     13     22
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q1       94      19     11      8
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q2       94      25     11     14
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q3       94      15      5     10
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4      192       7      0      7
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1      192      41      6     35
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2      192      29      6     23
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3      192     115     25     90
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q4       93       3      1      2
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q1       93      33      4     29
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q2       93      19      2     17
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q3       93      38      3     35
18 months   ki1017093b-PROVIDE         BANGLADESH                     Q4      604      17     14      3
18 months   ki1017093b-PROVIDE         BANGLADESH                     Q1      604     266    134    132
18 months   ki1017093b-PROVIDE         BANGLADESH                     Q2      604     242    145     97
18 months   ki1017093b-PROVIDE         BANGLADESH                     Q3      604      79     59     20
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q4      715     196    135     61
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q1      715     163     79     84
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q2      715     183     81    102
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q3      715     173    103     70
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q4     1448     136     84     52
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q1     1448       8      6      2
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q2     1448    1240    732    508
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q3     1448      64     40     24
18 months   ki1113344-GMS-Nepal        NEPAL                          Q4      573     141     71     70
18 months   ki1113344-GMS-Nepal        NEPAL                          Q1      573     247     75    172
18 months   ki1113344-GMS-Nepal        NEPAL                          Q2      573      90     34     56
18 months   ki1113344-GMS-Nepal        NEPAL                          Q3      573      95     35     60
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Q4     7058    5932   3082   2850
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Q1     7058      50     24     26
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Q2     7058      54     26     28
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Q3     7058    1022    480    542
18 months   ki1135781-COHORTS          GUATEMALA                      Q4      415       5      3      2
18 months   ki1135781-COHORTS          GUATEMALA                      Q1      415     303     46    257
18 months   ki1135781-COHORTS          GUATEMALA                      Q2      415     106     20     86
18 months   ki1135781-COHORTS          GUATEMALA                      Q3      415       1      0      1
18 months   ki1135781-COHORTS          PHILIPPINES                    Q4     2491     691    360    331
18 months   ki1135781-COHORTS          PHILIPPINES                    Q1     2491     565    146    419
18 months   ki1135781-COHORTS          PHILIPPINES                    Q2     2491     181     54    127
18 months   ki1135781-COHORTS          PHILIPPINES                    Q3     2491    1054    383    671
18 months   ki1148112-LCNI-5           MALAWI                         Q4      669      51     27     24
18 months   ki1148112-LCNI-5           MALAWI                         Q1      669     306    137    169
18 months   ki1148112-LCNI-5           MALAWI                         Q2      669     210     89    121
18 months   ki1148112-LCNI-5           MALAWI                         Q3      669     102     47     55
24 months   ki0047075b-MAL-ED          BANGLADESH                     Q4      121      42     24     18
24 months   ki0047075b-MAL-ED          BANGLADESH                     Q1      121      30     10     20
24 months   ki0047075b-MAL-ED          BANGLADESH                     Q2      121       6      2      4
24 months   ki0047075b-MAL-ED          BANGLADESH                     Q3      121      43     16     27
24 months   ki0047075b-MAL-ED          INDIA                          Q4      132      42     16     26
24 months   ki0047075b-MAL-ED          INDIA                          Q1      132      20      9     11
24 months   ki0047075b-MAL-ED          INDIA                          Q2      132      41     15     26
24 months   ki0047075b-MAL-ED          INDIA                          Q3      132      29     12     17
24 months   ki0047075b-MAL-ED          NEPAL                          Q4       91      38     28     10
24 months   ki0047075b-MAL-ED          NEPAL                          Q1       91      23     14      9
24 months   ki0047075b-MAL-ED          NEPAL                          Q2       91      23     11     12
24 months   ki0047075b-MAL-ED          NEPAL                          Q3       91       7      5      2
24 months   ki0047075b-MAL-ED          PERU                           Q4      178      86     21     65
24 months   ki0047075b-MAL-ED          PERU                           Q1      178      35     10     25
24 months   ki0047075b-MAL-ED          PERU                           Q2      178      50     12     38
24 months   ki0047075b-MAL-ED          PERU                           Q3      178       7      1      6
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q4       92      34     11     23
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q1       92      19     11      8
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q2       92      24      9     15
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q3       92      15      3     12
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4      187       6      0      6
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1      187      40      4     36
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2      187      28      5     23
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3      187     113     14     99
24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q4        9       1      0      1
24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q1        9       4      1      3
24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q2        9       0      0      0
24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q3        9       4      0      4
24 months   ki1017093b-PROVIDE         BANGLADESH                     Q4      582      17     13      4
24 months   ki1017093b-PROVIDE         BANGLADESH                     Q1      582     261    115    146
24 months   ki1017093b-PROVIDE         BANGLADESH                     Q2      582     229    124    105
24 months   ki1017093b-PROVIDE         BANGLADESH                     Q3      582      75     50     25
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q4      634     175    112     63
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q1      634     137     55     82
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q2      634     170     65    105
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q3      634     152     84     68
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q4      958      90     52     38
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q1      958       5      4      1
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q2      958     818    456    362
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q3      958      45     30     15
24 months   ki1113344-GMS-Nepal        NEPAL                          Q4      567     137     57     80
24 months   ki1113344-GMS-Nepal        NEPAL                          Q1      567     245     64    181
24 months   ki1113344-GMS-Nepal        NEPAL                          Q2      567      91     28     63
24 months   ki1113344-GMS-Nepal        NEPAL                          Q3      567      94     26     68
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Q4     1806    1476    438   1038
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Q1     1806      20      3     17
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Q2     1806      23      8     15
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Q3     1806     287     71    216
24 months   ki1135781-COHORTS          GUATEMALA                      Q4      436       6      0      6
24 months   ki1135781-COHORTS          GUATEMALA                      Q1      436     325     31    294
24 months   ki1135781-COHORTS          GUATEMALA                      Q2      436     104     12     92
24 months   ki1135781-COHORTS          GUATEMALA                      Q3      436       1      0      1
24 months   ki1135781-COHORTS          PHILIPPINES                    Q4     2424     674    261    413
24 months   ki1135781-COHORTS          PHILIPPINES                    Q1     2424     540     73    467
24 months   ki1135781-COHORTS          PHILIPPINES                    Q2     2424     176     27    149
24 months   ki1135781-COHORTS          PHILIPPINES                    Q3     2424    1034    231    803
24 months   ki1148112-LCNI-5           MALAWI                         Q4      717      53     24     29
24 months   ki1148112-LCNI-5           MALAWI                         Q1      717     327    112    215
24 months   ki1148112-LCNI-5           MALAWI                         Q2      717     226     77    149
24 months   ki1148112-LCNI-5           MALAWI                         Q3      717     111     38     73


The following strata were considered:

* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 12 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 12 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 12 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 12 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 12 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 18 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 18 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 18 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 18 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 18 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 18 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 18 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 3 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 3 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 3 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 3 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 18 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 18 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/5779ff4f-c2cc-4016-94a0-428760f48faf/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->


```
## Warning: Removed 33 rows containing missing values (geom_errorbar).
```

![](/tmp/5779ff4f-c2cc-4016-94a0-428760f48faf/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/5779ff4f-c2cc-4016-94a0-428760f48faf/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/5779ff4f-c2cc-4016-94a0-428760f48faf/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                 country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki0047075b-MAL-ED       INDIA          Q4                   NA                0.2954545   0.1601838   0.4307253
3 months    ki0047075b-MAL-ED       INDIA          Q1                   NA                0.2800000   0.1033939   0.4566061
3 months    ki0047075b-MAL-ED       INDIA          Q2                   NA                0.1555556   0.0492998   0.2618113
3 months    ki0047075b-MAL-ED       INDIA          Q3                   NA                0.2121212   0.0721641   0.3520784
3 months    ki1017093c-NIH-Crypto   BANGLADESH     Q4                   NA                0.1165049   0.0726644   0.1603453
3 months    ki1017093c-NIH-Crypto   BANGLADESH     Q1                   NA                0.1839080   0.1263070   0.2415090
3 months    ki1017093c-NIH-Crypto   BANGLADESH     Q2                   NA                0.1479592   0.0982189   0.1976994
3 months    ki1017093c-NIH-Crypto   BANGLADESH     Q3                   NA                0.1978022   0.1398920   0.2557124
3 months    ki1113344-GMS-Nepal     NEPAL          Q4                   NA                0.1258741   0.0714612   0.1802871
3 months    ki1113344-GMS-Nepal     NEPAL          Q1                   NA                0.2023346   0.1531766   0.2514926
3 months    ki1113344-GMS-Nepal     NEPAL          Q2                   NA                0.1868132   0.1066650   0.2669613
3 months    ki1113344-GMS-Nepal     NEPAL          Q3                   NA                0.0693069   0.0197338   0.1188800
3 months    ki1126311-ZVITAMBO      ZIMBABWE       Q4                   NA                0.2046934   0.1973747   0.2120121
3 months    ki1126311-ZVITAMBO      ZIMBABWE       Q1                   NA                0.1785714   0.0966655   0.2604773
3 months    ki1126311-ZVITAMBO      ZIMBABWE       Q2                   NA                0.2244898   0.1418778   0.3071018
3 months    ki1126311-ZVITAMBO      ZIMBABWE       Q3                   NA                0.2334262   0.2138565   0.2529959
3 months    ki1135781-COHORTS       INDIA          Q4                   NA                0.1172070   0.0857125   0.1487015
3 months    ki1135781-COHORTS       INDIA          Q1                   NA                0.2015810   0.1521294   0.2510327
3 months    ki1135781-COHORTS       INDIA          Q2                   NA                0.2243902   0.1672624   0.2815181
3 months    ki1135781-COHORTS       INDIA          Q3                   NA                0.1583630   0.1281689   0.1885571
3 months    ki1135781-COHORTS       PHILIPPINES    Q4                   NA                0.0937500   0.0739406   0.1135594
3 months    ki1135781-COHORTS       PHILIPPINES    Q1                   NA                0.1955128   0.1643900   0.2266356
3 months    ki1135781-COHORTS       PHILIPPINES    Q2                   NA                0.1470588   0.0984502   0.1956675
3 months    ki1135781-COHORTS       PHILIPPINES    Q3                   NA                0.1518883   0.1317284   0.1720483
6 months    ki0047075b-MAL-ED       INDIA          Q4                   NA                0.3488372   0.2058658   0.4918087
6 months    ki0047075b-MAL-ED       INDIA          Q1                   NA                0.3333333   0.1309795   0.5356872
6 months    ki0047075b-MAL-ED       INDIA          Q2                   NA                0.3181818   0.1800566   0.4563070
6 months    ki0047075b-MAL-ED       INDIA          Q3                   NA                0.2666667   0.1078479   0.4254854
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Q4                   NA                0.2261307   0.1679699   0.2842914
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Q1                   NA                0.3550296   0.2828354   0.4272238
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Q2                   NA                0.3368421   0.2695927   0.4040915
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Q3                   NA                0.3202247   0.2516375   0.3888120
6 months    ki1113344-GMS-Nepal     NEPAL          Q4                   NA                0.2318841   0.1614080   0.3023601
6 months    ki1113344-GMS-Nepal     NEPAL          Q1                   NA                0.3292683   0.2704904   0.3880462
6 months    ki1113344-GMS-Nepal     NEPAL          Q2                   NA                0.3296703   0.2329995   0.4263412
6 months    ki1113344-GMS-Nepal     NEPAL          Q3                   NA                0.2087912   0.1252092   0.2923733
6 months    ki1126311-ZVITAMBO      ZIMBABWE       Q4                   NA                0.2865829   0.2763932   0.2967727
6 months    ki1126311-ZVITAMBO      ZIMBABWE       Q1                   NA                0.3157895   0.1951112   0.4364677
6 months    ki1126311-ZVITAMBO      ZIMBABWE       Q2                   NA                0.3666667   0.2447259   0.4886074
6 months    ki1126311-ZVITAMBO      ZIMBABWE       Q3                   NA                0.3243712   0.2973482   0.3513942
6 months    ki1135781-COHORTS       PHILIPPINES    Q4                   NA                0.1680108   0.1411406   0.1948810
6 months    ki1135781-COHORTS       PHILIPPINES    Q1                   NA                0.3282572   0.2903916   0.3661228
6 months    ki1135781-COHORTS       PHILIPPINES    Q2                   NA                0.2580645   0.1951689   0.3209602
6 months    ki1135781-COHORTS       PHILIPPINES    Q3                   NA                0.2579505   0.2324593   0.2834418
6 months    ki1148112-LCNI-5        MALAWI         Q4                   NA                0.2272727   0.0518288   0.4027167
6 months    ki1148112-LCNI-5        MALAWI         Q1                   NA                0.3870968   0.3012038   0.4729898
6 months    ki1148112-LCNI-5        MALAWI         Q2                   NA                0.3908046   0.2880831   0.4935261
6 months    ki1148112-LCNI-5        MALAWI         Q3                   NA                0.2352941   0.0924454   0.3781428
12 months   ki0047075b-MAL-ED       INDIA          Q4                   NA                0.4418605   0.2928837   0.5908373
12 months   ki0047075b-MAL-ED       INDIA          Q1                   NA                0.4761905   0.2617996   0.6905814
12 months   ki0047075b-MAL-ED       INDIA          Q2                   NA                0.4651163   0.3154875   0.6147451
12 months   ki0047075b-MAL-ED       INDIA          Q3                   NA                0.4666667   0.2874902   0.6458432
12 months   ki0047075b-MAL-ED       PERU           Q4                   NA                0.5566038   0.4618187   0.6513889
12 months   ki0047075b-MAL-ED       PERU           Q1                   NA                0.5681818   0.4214947   0.7148689
12 months   ki0047075b-MAL-ED       PERU           Q2                   NA                0.4677419   0.3432640   0.5922199
12 months   ki0047075b-MAL-ED       PERU           Q3                   NA                0.4545455   0.1596313   0.7494596
12 months   ki0047075b-MAL-ED       SOUTH AFRICA   Q4                   NA                0.5277778   0.3638436   0.6917119
12 months   ki0047075b-MAL-ED       SOUTH AFRICA   Q1                   NA                0.2631579   0.0641178   0.4621980
12 months   ki0047075b-MAL-ED       SOUTH AFRICA   Q2                   NA                0.4000000   0.2069555   0.5930445
12 months   ki0047075b-MAL-ED       SOUTH AFRICA   Q3                   NA                0.6875000   0.4591909   0.9158091
12 months   ki1017093c-NIH-Crypto   BANGLADESH     Q4                   NA                0.2864322   0.2235760   0.3492884
12 months   ki1017093c-NIH-Crypto   BANGLADESH     Q1                   NA                0.4397590   0.3641999   0.5153182
12 months   ki1017093c-NIH-Crypto   BANGLADESH     Q2                   NA                0.4444444   0.3735540   0.5153349
12 months   ki1017093c-NIH-Crypto   BANGLADESH     Q3                   NA                0.3600000   0.2888347   0.4311653
12 months   ki1113344-GMS-Nepal     NEPAL          Q4                   NA                0.3873239   0.3071320   0.4675159
12 months   ki1113344-GMS-Nepal     NEPAL          Q1                   NA                0.4979920   0.4358351   0.5601488
12 months   ki1113344-GMS-Nepal     NEPAL          Q2                   NA                0.4516129   0.3503833   0.5528425
12 months   ki1113344-GMS-Nepal     NEPAL          Q3                   NA                0.4536082   0.3544500   0.5527665
12 months   ki1126311-ZVITAMBO      ZIMBABWE       Q4                   NA                0.3689090   0.3585986   0.3792193
12 months   ki1126311-ZVITAMBO      ZIMBABWE       Q1                   NA                0.3709677   0.2507195   0.4912160
12 months   ki1126311-ZVITAMBO      ZIMBABWE       Q2                   NA                0.4109589   0.2980884   0.5238294
12 months   ki1126311-ZVITAMBO      ZIMBABWE       Q3                   NA                0.4050633   0.3788073   0.4313193
12 months   ki1135781-COHORTS       INDIA          Q4                   NA                0.2626263   0.2192684   0.3059841
12 months   ki1135781-COHORTS       INDIA          Q1                   NA                0.5317460   0.4701156   0.5933765
12 months   ki1135781-COHORTS       INDIA          Q2                   NA                0.4541063   0.3862562   0.5219563
12 months   ki1135781-COHORTS       INDIA          Q3                   NA                0.3793103   0.3387818   0.4198389
12 months   ki1135781-COHORTS       PHILIPPINES    Q4                   NA                0.3168724   0.2830924   0.3506525
12 months   ki1135781-COHORTS       PHILIPPINES    Q1                   NA                0.5544041   0.5139115   0.5948968
12 months   ki1135781-COHORTS       PHILIPPINES    Q2                   NA                0.5319149   0.4605745   0.6032553
12 months   ki1135781-COHORTS       PHILIPPINES    Q3                   NA                0.4462366   0.4170661   0.4754071
12 months   ki1148112-LCNI-5        MALAWI         Q4                   NA                0.3214286   0.1990321   0.4438250
12 months   ki1148112-LCNI-5        MALAWI         Q1                   NA                0.4945355   0.4432817   0.5457893
12 months   ki1148112-LCNI-5        MALAWI         Q2                   NA                0.4858300   0.4234608   0.5481991
12 months   ki1148112-LCNI-5        MALAWI         Q3                   NA                0.4344262   0.3464135   0.5224390
18 months   ki0047075b-MAL-ED       INDIA          Q4                   NA                0.5714286   0.4211992   0.7216580
18 months   ki0047075b-MAL-ED       INDIA          Q1                   NA                0.5238095   0.3093949   0.7382241
18 months   ki0047075b-MAL-ED       INDIA          Q2                   NA                0.5853659   0.4339954   0.7367364
18 months   ki0047075b-MAL-ED       INDIA          Q3                   NA                0.5172414   0.3346839   0.6997988
18 months   ki0047075b-MAL-ED       SOUTH AFRICA   Q4                   NA                0.6285714   0.4676361   0.7895068
18 months   ki0047075b-MAL-ED       SOUTH AFRICA   Q1                   NA                0.4210526   0.1978592   0.6442461
18 months   ki0047075b-MAL-ED       SOUTH AFRICA   Q2                   NA                0.5600000   0.3643766   0.7556234
18 months   ki0047075b-MAL-ED       SOUTH AFRICA   Q3                   NA                0.6666667   0.4268283   0.9065050
18 months   ki1017093c-NIH-Crypto   BANGLADESH     Q4                   NA                0.3112245   0.2463611   0.3760879
18 months   ki1017093c-NIH-Crypto   BANGLADESH     Q1                   NA                0.5153374   0.4385617   0.5921131
18 months   ki1017093c-NIH-Crypto   BANGLADESH     Q2                   NA                0.5573770   0.4853629   0.6293912
18 months   ki1017093c-NIH-Crypto   BANGLADESH     Q3                   NA                0.4046243   0.3314345   0.4778141
18 months   ki1113344-GMS-Nepal     NEPAL          Q4                   NA                0.4964539   0.4138545   0.5790533
18 months   ki1113344-GMS-Nepal     NEPAL          Q1                   NA                0.6963563   0.6389609   0.7537516
18 months   ki1113344-GMS-Nepal     NEPAL          Q2                   NA                0.6222222   0.5219693   0.7224752
18 months   ki1113344-GMS-Nepal     NEPAL          Q3                   NA                0.6315789   0.5344941   0.7286638
18 months   ki1126311-ZVITAMBO      ZIMBABWE       Q4                   NA                0.4804450   0.4677301   0.4931600
18 months   ki1126311-ZVITAMBO      ZIMBABWE       Q1                   NA                0.5200000   0.3815107   0.6584893
18 months   ki1126311-ZVITAMBO      ZIMBABWE       Q2                   NA                0.5185185   0.3852419   0.6517951
18 months   ki1126311-ZVITAMBO      ZIMBABWE       Q3                   NA                0.5303327   0.4997326   0.5609328
18 months   ki1135781-COHORTS       PHILIPPINES    Q4                   NA                0.4790159   0.4417610   0.5162708
18 months   ki1135781-COHORTS       PHILIPPINES    Q1                   NA                0.7415929   0.7054897   0.7776961
18 months   ki1135781-COHORTS       PHILIPPINES    Q2                   NA                0.7016575   0.6349897   0.7683253
18 months   ki1135781-COHORTS       PHILIPPINES    Q3                   NA                0.6366224   0.6075798   0.6656650
18 months   ki1148112-LCNI-5        MALAWI         Q4                   NA                0.4705882   0.3334984   0.6076780
18 months   ki1148112-LCNI-5        MALAWI         Q1                   NA                0.5522876   0.4965312   0.6080439
18 months   ki1148112-LCNI-5        MALAWI         Q2                   NA                0.5761905   0.5093050   0.6430759
18 months   ki1148112-LCNI-5        MALAWI         Q3                   NA                0.5392157   0.4424095   0.6360218
24 months   ki0047075b-MAL-ED       INDIA          Q4                   NA                0.6190476   0.4716223   0.7664730
24 months   ki0047075b-MAL-ED       INDIA          Q1                   NA                0.5500000   0.3311372   0.7688628
24 months   ki0047075b-MAL-ED       INDIA          Q2                   NA                0.6341463   0.4861483   0.7821444
24 months   ki0047075b-MAL-ED       INDIA          Q3                   NA                0.5862069   0.4062711   0.7661427
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Q4                   NA                0.3600000   0.2888274   0.4311726
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Q1                   NA                0.5985401   0.5163919   0.6806884
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Q2                   NA                0.6176471   0.5445384   0.6907557
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Q3                   NA                0.4473684   0.3682606   0.5264763
24 months   ki1113344-GMS-Nepal     NEPAL          Q4                   NA                0.5839416   0.5013315   0.6665517
24 months   ki1113344-GMS-Nepal     NEPAL          Q1                   NA                0.7387755   0.6837186   0.7938324
24 months   ki1113344-GMS-Nepal     NEPAL          Q2                   NA                0.6923077   0.5973962   0.7872191
24 months   ki1113344-GMS-Nepal     NEPAL          Q3                   NA                0.7234043   0.6328976   0.8139110
24 months   ki1135781-COHORTS       PHILIPPINES    Q4                   NA                0.6127596   0.5759770   0.6495423
24 months   ki1135781-COHORTS       PHILIPPINES    Q1                   NA                0.8648148   0.8359701   0.8936596
24 months   ki1135781-COHORTS       PHILIPPINES    Q2                   NA                0.8465909   0.7933380   0.8998439
24 months   ki1135781-COHORTS       PHILIPPINES    Q3                   NA                0.7765957   0.7512024   0.8019891
24 months   ki1148112-LCNI-5        MALAWI         Q4                   NA                0.5471698   0.4130657   0.6812739
24 months   ki1148112-LCNI-5        MALAWI         Q1                   NA                0.6574924   0.6060219   0.7089628
24 months   ki1148112-LCNI-5        MALAWI         Q2                   NA                0.6592920   0.5974581   0.7211260
24 months   ki1148112-LCNI-5        MALAWI         Q3                   NA                0.6576577   0.5693253   0.7459900


### Parameter: E(Y)


agecat      studyid                 country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki0047075b-MAL-ED       INDIA          NA                   NA                0.2312925   0.2217317   0.2408534
3 months    ki1017093c-NIH-Crypto   BANGLADESH     NA                   NA                0.1596306   0.1573490   0.1619122
3 months    ki1113344-GMS-Nepal     NEPAL          NA                   NA                0.1587838   0.1546953   0.1628723
3 months    ki1126311-ZVITAMBO      ZIMBABWE       NA                   NA                0.2084524   0.2082834   0.2086213
3 months    ki1135781-COHORTS       INDIA          NA                   NA                0.1639690   0.1620173   0.1659207
3 months    ki1135781-COHORTS       PHILIPPINES    NA                   NA                0.1441974   0.1428636   0.1455311
6 months    ki0047075b-MAL-ED       INDIA          NA                   NA                0.3188406   0.3138052   0.3238759
6 months    ki1017093c-NIH-Crypto   BANGLADESH     NA                   NA                0.3070652   0.3034001   0.3107303
6 months    ki1113344-GMS-Nepal     NEPAL          NA                   NA                0.2862191   0.2818616   0.2905766
6 months    ki1126311-ZVITAMBO      ZIMBABWE       NA                   NA                0.2922467   0.2919494   0.2925441
6 months    ki1135781-COHORTS       PHILIPPINES    NA                   NA                0.2483980   0.2462189   0.2505772
6 months    ki1148112-LCNI-5        MALAWI         NA                   NA                0.3558052   0.3481438   0.3634667
12 months   ki0047075b-MAL-ED       INDIA          NA                   NA                0.4598540   0.4577190   0.4619891
12 months   ki0047075b-MAL-ED       PERU           NA                   NA                0.5291480   0.5232919   0.5350040
12 months   ki0047075b-MAL-ED       SOUTH AFRICA   NA                   NA                0.4687500   0.4411208   0.4963792
12 months   ki1017093c-NIH-Crypto   BANGLADESH     NA                   NA                0.3799726   0.3751674   0.3847778
12 months   ki1113344-GMS-Nepal     NEPAL          NA                   NA                0.4561102   0.4525511   0.4596692
12 months   ki1126311-ZVITAMBO      ZIMBABWE       NA                   NA                0.3741407   0.3738890   0.3743925
12 months   ki1135781-COHORTS       INDIA          NA                   NA                0.3847795   0.3798763   0.3896828
12 months   ki1135781-COHORTS       PHILIPPINES    NA                   NA                0.4402757   0.4368974   0.4436539
12 months   ki1148112-LCNI-5        MALAWI         NA                   NA                0.4702908   0.4670841   0.4734974
18 months   ki0047075b-MAL-ED       INDIA          NA                   NA                0.5563910   0.5514703   0.5613117
18 months   ki0047075b-MAL-ED       SOUTH AFRICA   NA                   NA                0.5744681   0.5571517   0.5917844
18 months   ki1017093c-NIH-Crypto   BANGLADESH     NA                   NA                0.4433566   0.4361484   0.4505649
18 months   ki1113344-GMS-Nepal     NEPAL          NA                   NA                0.6247818   0.6182931   0.6312706
18 months   ki1126311-ZVITAMBO      ZIMBABWE       NA                   NA                0.4882403   0.4878218   0.4886588
18 months   ki1135781-COHORTS       PHILIPPINES    NA                   NA                0.6214372   0.6176156   0.6252588
18 months   ki1148112-LCNI-5        MALAWI         NA                   NA                0.5515695   0.5495436   0.5535954
24 months   ki0047075b-MAL-ED       INDIA          NA                   NA                0.6060606   0.6010345   0.6110867
24 months   ki1017093c-NIH-Crypto   BANGLADESH     NA                   NA                0.5015773   0.4930859   0.5100686
24 months   ki1113344-GMS-Nepal     NEPAL          NA                   NA                0.6913580   0.6861935   0.6965225
24 months   ki1135781-COHORTS       PHILIPPINES    NA                   NA                0.7557756   0.7519732   0.7595780
24 months   ki1148112-LCNI-5        MALAWI         NA                   NA                0.6499303   0.6478029   0.6520576


### Parameter: RR


agecat      studyid                 country        intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  ----------------------  -------------  -------------------  ---------------  ----------  ----------  ---------
3 months    ki0047075b-MAL-ED       INDIA          Q4                   Q4                1.0000000   1.0000000   1.000000
3 months    ki0047075b-MAL-ED       INDIA          Q1                   Q4                0.9476923   0.4346941   2.066098
3 months    ki0047075b-MAL-ED       INDIA          Q2                   Q4                0.5264957   0.2313488   1.198181
3 months    ki0047075b-MAL-ED       INDIA          Q3                   Q4                0.7179487   0.3216005   1.602766
3 months    ki1017093c-NIH-Crypto   BANGLADESH     Q4                   Q4                1.0000000   1.0000000   1.000000
3 months    ki1017093c-NIH-Crypto   BANGLADESH     Q1                   Q4                1.5785441   0.9674553   2.575624
3 months    ki1017093c-NIH-Crypto   BANGLADESH     Q2                   Q4                1.2699830   0.7667542   2.103486
3 months    ki1017093c-NIH-Crypto   BANGLADESH     Q3                   Q4                1.6978022   1.0539668   2.734936
3 months    ki1113344-GMS-Nepal     NEPAL          Q4                   Q4                1.0000000   1.0000000   1.000000
3 months    ki1113344-GMS-Nepal     NEPAL          Q1                   Q4                1.6074362   0.9789881   2.639308
3 months    ki1113344-GMS-Nepal     NEPAL          Q2                   Q4                1.4841270   0.8071747   2.728818
3 months    ki1113344-GMS-Nepal     NEPAL          Q3                   Q4                0.5506051   0.2387146   1.269993
3 months    ki1126311-ZVITAMBO      ZIMBABWE       Q4                   Q4                1.0000000   1.0000000   1.000000
3 months    ki1126311-ZVITAMBO      ZIMBABWE       Q1                   Q4                0.8723849   0.5506868   1.382011
3 months    ki1126311-ZVITAMBO      ZIMBABWE       Q2                   Q4                1.0967125   0.7577403   1.587323
3 months    ki1126311-ZVITAMBO      ZIMBABWE       Q3                   Q4                1.1403699   1.0410294   1.249190
3 months    ki1135781-COHORTS       INDIA          Q4                   Q4                1.0000000   1.0000000   1.000000
3 months    ki1135781-COHORTS       INDIA          Q1                   Q4                1.7198722   1.1953051   2.474649
3 months    ki1135781-COHORTS       INDIA          Q2                   Q4                1.9144785   1.3221798   2.772110
3 months    ki1135781-COHORTS       INDIA          Q3                   Q4                1.3511395   0.9718717   1.878415
3 months    ki1135781-COHORTS       PHILIPPINES    Q4                   Q4                1.0000000   1.0000000   1.000000
3 months    ki1135781-COHORTS       PHILIPPINES    Q1                   Q4                2.0854700   1.6007017   2.717049
3 months    ki1135781-COHORTS       PHILIPPINES    Q2                   Q4                1.5686274   1.0596040   2.322180
3 months    ki1135781-COHORTS       PHILIPPINES    Q3                   Q4                1.6201422   1.2623625   2.079324
6 months    ki0047075b-MAL-ED       INDIA          Q4                   Q4                1.0000000   1.0000000   1.000000
6 months    ki0047075b-MAL-ED       INDIA          Q1                   Q4                0.9555556   0.4593581   1.987744
6 months    ki0047075b-MAL-ED       INDIA          Q2                   Q4                0.9121212   0.5020788   1.657041
6 months    ki0047075b-MAL-ED       INDIA          Q3                   Q4                0.7644444   0.3709924   1.575168
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Q4                   Q4                1.0000000   1.0000000   1.000000
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Q1                   Q4                1.5700197   1.1311259   2.179211
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Q2                   Q4                1.4895906   1.0756323   2.062861
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Q3                   Q4                1.4161049   1.0132934   1.979045
6 months    ki1113344-GMS-Nepal     NEPAL          Q4                   Q4                1.0000000   1.0000000   1.000000
6 months    ki1113344-GMS-Nepal     NEPAL          Q1                   Q4                1.4199695   0.9981627   2.020025
6 months    ki1113344-GMS-Nepal     NEPAL          Q2                   Q4                1.4217033   0.9319558   2.168816
6 months    ki1113344-GMS-Nepal     NEPAL          Q3                   Q4                0.9004121   0.5447004   1.488418
6 months    ki1126311-ZVITAMBO      ZIMBABWE       Q4                   Q4                1.0000000   1.0000000   1.000000
6 months    ki1126311-ZVITAMBO      ZIMBABWE       Q1                   Q4                1.1019130   0.7506990   1.617442
6 months    ki1126311-ZVITAMBO      ZIMBABWE       Q2                   Q4                1.2794434   0.9157280   1.787622
6 months    ki1126311-ZVITAMBO      ZIMBABWE       Q3                   Q4                1.1318580   1.0338413   1.239167
6 months    ki1135781-COHORTS       PHILIPPINES    Q4                   Q4                1.0000000   1.0000000   1.000000
6 months    ki1135781-COHORTS       PHILIPPINES    Q1                   Q4                1.9537868   1.6041242   2.379668
6 months    ki1135781-COHORTS       PHILIPPINES    Q2                   Q4                1.5360000   1.1475991   2.055854
6 months    ki1135781-COHORTS       PHILIPPINES    Q3                   Q4                1.5353216   1.2721903   1.852877
6 months    ki1148112-LCNI-5        MALAWI         Q4                   Q4                1.0000000   1.0000000   1.000000
6 months    ki1148112-LCNI-5        MALAWI         Q1                   Q4                1.7032258   0.7628556   3.802788
6 months    ki1148112-LCNI-5        MALAWI         Q2                   Q4                1.7195402   0.7607744   3.886590
6 months    ki1148112-LCNI-5        MALAWI         Q3                   Q4                1.0352941   0.3877481   2.764253
12 months   ki0047075b-MAL-ED       INDIA          Q4                   Q4                1.0000000   1.0000000   1.000000
12 months   ki0047075b-MAL-ED       INDIA          Q1                   Q4                1.0776942   0.6140691   1.891359
12 months   ki0047075b-MAL-ED       INDIA          Q2                   Q4                1.0526316   0.6605257   1.677502
12 months   ki0047075b-MAL-ED       INDIA          Q3                   Q4                1.0561404   0.6335912   1.760492
12 months   ki0047075b-MAL-ED       PERU           Q4                   Q4                1.0000000   1.0000000   1.000000
12 months   ki0047075b-MAL-ED       PERU           Q1                   Q4                1.0208012   0.7492470   1.390777
12 months   ki0047075b-MAL-ED       PERU           Q2                   Q4                0.8403499   0.6126980   1.152587
12 months   ki0047075b-MAL-ED       PERU           Q3                   Q4                0.8166410   0.4175534   1.597167
12 months   ki0047075b-MAL-ED       SOUTH AFRICA   Q4                   Q4                1.0000000   1.0000000   1.000000
12 months   ki0047075b-MAL-ED       SOUTH AFRICA   Q1                   Q4                0.4986150   0.2201229   1.129446
12 months   ki0047075b-MAL-ED       SOUTH AFRICA   Q2                   Q4                0.7578947   0.4269284   1.345435
12 months   ki0047075b-MAL-ED       SOUTH AFRICA   Q3                   Q4                1.3026316   0.8266919   2.052577
12 months   ki1017093c-NIH-Crypto   BANGLADESH     Q4                   Q4                1.0000000   1.0000000   1.000000
12 months   ki1017093c-NIH-Crypto   BANGLADESH     Q1                   Q4                1.5352991   1.1618542   2.028777
12 months   ki1017093c-NIH-Crypto   BANGLADESH     Q2                   Q4                1.5516569   1.1829774   2.035237
12 months   ki1017093c-NIH-Crypto   BANGLADESH     Q3                   Q4                1.2568421   0.9354271   1.688696
12 months   ki1113344-GMS-Nepal     NEPAL          Q4                   Q4                1.0000000   1.0000000   1.000000
12 months   ki1113344-GMS-Nepal     NEPAL          Q1                   Q4                1.2857247   1.0096150   1.637345
12 months   ki1113344-GMS-Nepal     NEPAL          Q2                   Q4                1.1659824   0.8593535   1.582021
12 months   ki1113344-GMS-Nepal     NEPAL          Q3                   Q4                1.1711340   0.8666577   1.582580
12 months   ki1126311-ZVITAMBO      ZIMBABWE       Q4                   Q4                1.0000000   1.0000000   1.000000
12 months   ki1126311-ZVITAMBO      ZIMBABWE       Q1                   Q4                1.0055807   0.7263053   1.392242
12 months   ki1126311-ZVITAMBO      ZIMBABWE       Q2                   Q4                1.1139846   0.8452468   1.468165
12 months   ki1126311-ZVITAMBO      ZIMBABWE       Q3                   Q4                1.0980034   1.0231697   1.178310
12 months   ki1135781-COHORTS       INDIA          Q4                   Q4                1.0000000   1.0000000   1.000000
12 months   ki1135781-COHORTS       INDIA          Q1                   Q4                2.0247253   1.6548636   2.477251
12 months   ki1135781-COHORTS       INDIA          Q2                   Q4                1.7290970   1.3839372   2.160341
12 months   ki1135781-COHORTS       INDIA          Q3                   Q4                1.4442971   1.1864550   1.758174
12 months   ki1135781-COHORTS       PHILIPPINES    Q4                   Q4                1.0000000   1.0000000   1.000000
12 months   ki1135781-COHORTS       PHILIPPINES    Q1                   Q4                1.7496131   1.5375183   1.990965
12 months   ki1135781-COHORTS       PHILIPPINES    Q2                   Q4                1.6786405   1.4143327   1.992342
12 months   ki1135781-COHORTS       PHILIPPINES    Q3                   Q4                1.4082530   1.2427154   1.595841
12 months   ki1148112-LCNI-5        MALAWI         Q4                   Q4                1.0000000   1.0000000   1.000000
12 months   ki1148112-LCNI-5        MALAWI         Q1                   Q4                1.5385549   1.0368659   2.282987
12 months   ki1148112-LCNI-5        MALAWI         Q2                   Q4                1.5114710   1.0113000   2.259018
12 months   ki1148112-LCNI-5        MALAWI         Q3                   Q4                1.3515483   0.8780264   2.080442
18 months   ki0047075b-MAL-ED       INDIA          Q4                   Q4                1.0000000   1.0000000   1.000000
18 months   ki0047075b-MAL-ED       INDIA          Q1                   Q4                0.9166667   0.5635480   1.491049
18 months   ki0047075b-MAL-ED       INDIA          Q2                   Q4                1.0243902   0.7084569   1.481213
18 months   ki0047075b-MAL-ED       INDIA          Q3                   Q4                0.9051724   0.5829064   1.405607
18 months   ki0047075b-MAL-ED       SOUTH AFRICA   Q4                   Q4                1.0000000   1.0000000   1.000000
18 months   ki0047075b-MAL-ED       SOUTH AFRICA   Q1                   Q4                0.6698565   0.3718106   1.206818
18 months   ki0047075b-MAL-ED       SOUTH AFRICA   Q2                   Q4                0.8909091   0.5777458   1.373820
18 months   ki0047075b-MAL-ED       SOUTH AFRICA   Q3                   Q4                1.0606061   0.6820015   1.649388
18 months   ki1017093c-NIH-Crypto   BANGLADESH     Q4                   Q4                1.0000000   1.0000000   1.000000
18 months   ki1017093c-NIH-Crypto   BANGLADESH     Q1                   Q4                1.6558383   1.2816145   2.139333
18 months   ki1017093c-NIH-Crypto   BANGLADESH     Q2                   Q4                1.7909164   1.4014601   2.288600
18 months   ki1017093c-NIH-Crypto   BANGLADESH     Q3                   Q4                1.3001042   0.9865735   1.713274
18 months   ki1113344-GMS-Nepal     NEPAL          Q4                   Q4                1.0000000   1.0000000   1.000000
18 months   ki1113344-GMS-Nepal     NEPAL          Q1                   Q4                1.4026605   1.1649700   1.688847
18 months   ki1113344-GMS-Nepal     NEPAL          Q2                   Q4                1.2533333   0.9942164   1.579982
18 months   ki1113344-GMS-Nepal     NEPAL          Q3                   Q4                1.2721805   1.0143144   1.595603
18 months   ki1126311-ZVITAMBO      ZIMBABWE       Q4                   Q4                1.0000000   1.0000000   1.000000
18 months   ki1126311-ZVITAMBO      ZIMBABWE       Q1                   Q4                1.0823298   0.8281829   1.414468
18 months   ki1126311-ZVITAMBO      ZIMBABWE       Q2                   Q4                1.0792463   0.8334935   1.397458
18 months   ki1126311-ZVITAMBO      ZIMBABWE       Q3                   Q4                1.1038363   1.0359429   1.176179
18 months   ki1135781-COHORTS       PHILIPPINES    Q4                   Q4                1.0000000   1.0000000   1.000000
18 months   ki1135781-COHORTS       PHILIPPINES    Q1                   Q4                1.5481592   1.4124311   1.696930
18 months   ki1135781-COHORTS       PHILIPPINES    Q2                   Q4                1.4647894   1.2955364   1.656154
18 months   ki1135781-COHORTS       PHILIPPINES    Q3                   Q4                1.3290214   1.2144323   1.454423
18 months   ki1148112-LCNI-5        MALAWI         Q4                   Q4                1.0000000   1.0000000   1.000000
18 months   ki1148112-LCNI-5        MALAWI         Q1                   Q4                1.1736111   0.8622349   1.597434
18 months   ki1148112-LCNI-5        MALAWI         Q2                   Q4                1.2244048   0.8948159   1.675391
18 months   ki1148112-LCNI-5        MALAWI         Q3                   Q4                1.1458333   0.8137831   1.613371
24 months   ki0047075b-MAL-ED       INDIA          Q4                   Q4                1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED       INDIA          Q1                   Q4                0.8884615   0.5587714   1.412678
24 months   ki0047075b-MAL-ED       INDIA          Q2                   Q4                1.0243902   0.7339300   1.429803
24 months   ki0047075b-MAL-ED       INDIA          Q3                   Q4                0.9469496   0.6421009   1.396531
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Q4                   Q4                1.0000000   1.0000000   1.000000
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Q1                   Q4                1.6626115   1.3069782   2.115014
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Q2                   Q4                1.7156863   1.3625885   2.160285
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Q3                   Q4                1.2426901   0.9531662   1.620157
24 months   ki1113344-GMS-Nepal     NEPAL          Q4                   Q4                1.0000000   1.0000000   1.000000
24 months   ki1113344-GMS-Nepal     NEPAL          Q1                   Q4                1.2651531   1.0782016   1.484520
24 months   ki1113344-GMS-Nepal     NEPAL          Q2                   Q4                1.1855769   0.9735858   1.443728
24 months   ki1113344-GMS-Nepal     NEPAL          Q3                   Q4                1.2388298   1.0256338   1.496342
24 months   ki1135781-COHORTS       PHILIPPINES    Q4                   Q4                1.0000000   1.0000000   1.000000
24 months   ki1135781-COHORTS       PHILIPPINES    Q1                   Q4                1.4113443   1.3176777   1.511669
24 months   ki1135781-COHORTS       PHILIPPINES    Q2                   Q4                1.3816036   1.2665491   1.507110
24 months   ki1135781-COHORTS       PHILIPPINES    Q3                   Q4                1.2673742   1.1836363   1.357036
24 months   ki1148112-LCNI-5        MALAWI         Q4                   Q4                1.0000000   1.0000000   1.000000
24 months   ki1148112-LCNI-5        MALAWI         Q1                   Q4                1.2016240   0.9290327   1.554197
24 months   ki1148112-LCNI-5        MALAWI         Q2                   Q4                1.2049130   0.9268054   1.566473
24 months   ki1148112-LCNI-5        MALAWI         Q3                   Q4                1.2019261   0.9088710   1.589473


### Parameter: PAR


agecat      studyid                 country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------------------  -------------  -------------------  ---------------  -----------  -----------  ----------
3 months    ki0047075b-MAL-ED       INDIA          Q4                   NA                -0.0641620   -0.1997702   0.0714462
3 months    ki1017093c-NIH-Crypto   BANGLADESH     Q4                   NA                 0.0431258   -0.0007741   0.0870256
3 months    ki1113344-GMS-Nepal     NEPAL          Q4                   NA                 0.0329097   -0.0216567   0.0874760
3 months    ki1126311-ZVITAMBO      ZIMBABWE       Q4                   NA                 0.0037590   -0.0035617   0.0110797
3 months    ki1135781-COHORTS       INDIA          Q4                   NA                 0.0467621    0.0152071   0.0783170
3 months    ki1135781-COHORTS       PHILIPPINES    Q4                   NA                 0.0504474    0.0305931   0.0703016
6 months    ki0047075b-MAL-ED       INDIA          Q4                   NA                -0.0299966   -0.1730567   0.1130635
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Q4                   NA                 0.0809346    0.0226584   0.1392107
6 months    ki1113344-GMS-Nepal     NEPAL          Q4                   NA                 0.0543350   -0.0162756   0.1249456
6 months    ki1126311-ZVITAMBO      ZIMBABWE       Q4                   NA                 0.0056638   -0.0045303   0.0158579
6 months    ki1135781-COHORTS       PHILIPPINES    Q4                   NA                 0.0803873    0.0534289   0.1073457
6 months    ki1148112-LCNI-5        MALAWI         Q4                   NA                 0.1285325   -0.0470786   0.3041436
12 months   ki0047075b-MAL-ED       INDIA          Q4                   NA                 0.0179935   -0.1309986   0.1669857
12 months   ki0047075b-MAL-ED       PERU           Q4                   NA                -0.0274558   -0.1224216   0.0675101
12 months   ki0047075b-MAL-ED       SOUTH AFRICA   Q4                   NA                -0.0590278   -0.2252739   0.1072183
12 months   ki1017093c-NIH-Crypto   BANGLADESH     Q4                   NA                 0.0935404    0.0305008   0.1565800
12 months   ki1113344-GMS-Nepal     NEPAL          Q4                   NA                 0.0687862   -0.0114846   0.1490571
12 months   ki1126311-ZVITAMBO      ZIMBABWE       Q4                   NA                 0.0052318   -0.0050817   0.0155452
12 months   ki1135781-COHORTS       INDIA          Q4                   NA                 0.1221533    0.0785190   0.1657875
12 months   ki1135781-COHORTS       PHILIPPINES    Q4                   NA                 0.1234032    0.0894546   0.1573518
12 months   ki1148112-LCNI-5        MALAWI         Q4                   NA                 0.1488622    0.0264238   0.2713006
18 months   ki0047075b-MAL-ED       INDIA          Q4                   NA                -0.0150376   -0.1653475   0.1352724
18 months   ki0047075b-MAL-ED       SOUTH AFRICA   Q4                   NA                -0.0541033   -0.2159676   0.1077609
18 months   ki1017093c-NIH-Crypto   BANGLADESH     Q4                   NA                 0.1321322    0.0668695   0.1973949
18 months   ki1113344-GMS-Nepal     NEPAL          Q4                   NA                 0.1283279    0.0454741   0.2111818
18 months   ki1126311-ZVITAMBO      ZIMBABWE       Q4                   NA                 0.0077953   -0.0049266   0.0205171
18 months   ki1135781-COHORTS       PHILIPPINES    Q4                   NA                 0.1424213    0.1049709   0.1798717
18 months   ki1148112-LCNI-5        MALAWI         Q4                   NA                 0.0809813   -0.0561235   0.2180860
24 months   ki0047075b-MAL-ED       INDIA          Q4                   NA                -0.0129870   -0.1604980   0.1345240
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Q4                   NA                 0.1415773    0.0698999   0.2132547
24 months   ki1113344-GMS-Nepal     NEPAL          Q4                   NA                 0.1074164    0.0246451   0.1901878
24 months   ki1135781-COHORTS       PHILIPPINES    Q4                   NA                 0.1430159    0.1060373   0.1799946
24 months   ki1148112-LCNI-5        MALAWI         Q4                   NA                 0.1027605   -0.0313605   0.2368814


### Parameter: PAF


agecat      studyid                 country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------------------  -------------  -------------------  ---------------  -----------  -----------  ----------
3 months    ki0047075b-MAL-ED       INDIA          Q4                   NA                -0.2774064   -1.0229027   0.1933536
3 months    ki1017093c-NIH-Crypto   BANGLADESH     Q4                   NA                 0.2701597   -0.0635786   0.4991748
3 months    ki1113344-GMS-Nepal     NEPAL          Q4                   NA                 0.2072608   -0.2223631   0.4858848
3 months    ki1126311-ZVITAMBO      ZIMBABWE       Q4                   NA                 0.0180327   -0.0177217   0.0525311
3 months    ki1135781-COHORTS       INDIA          Q4                   NA                 0.2851883    0.0645842   0.4537662
3 months    ki1135781-COHORTS       PHILIPPINES    Q4                   NA                 0.3498494    0.1967172   0.4737895
6 months    ki0047075b-MAL-ED       INDIA          Q4                   NA                -0.0940803   -0.6488363   0.2740263
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Q4                   NA                 0.2635745    0.0473145   0.4307434
6 months    ki1113344-GMS-Nepal     NEPAL          Q4                   NA                 0.1898372   -0.0983278   0.4023972
6 months    ki1126311-ZVITAMBO      ZIMBABWE       Q4                   NA                 0.0193802   -0.0161289   0.0536484
6 months    ki1135781-COHORTS       PHILIPPINES    Q4                   NA                 0.3236229    0.2061277   0.4237285
6 months    ki1148112-LCNI-5        MALAWI         Q4                   NA                 0.3612440   -0.3826760   0.7049134
12 months   ki0047075b-MAL-ED       INDIA          Q4                   NA                 0.0391288   -0.3461855   0.3141559
12 months   ki0047075b-MAL-ED       PERU           Q4                   NA                -0.0518868   -0.2476186   0.1131378
12 months   ki0047075b-MAL-ED       SOUTH AFRICA   Q4                   NA                -0.1259259   -0.5445936   0.1792604
12 months   ki1017093c-NIH-Crypto   BANGLADESH     Q4                   NA                 0.2461767    0.0608574   0.3949274
12 months   ki1113344-GMS-Nepal     NEPAL          Q4                   NA                 0.1508105   -0.0446846   0.3097220
12 months   ki1126311-ZVITAMBO      ZIMBABWE       Q4                   NA                 0.0139834   -0.0139710   0.0411671
12 months   ki1135781-COHORTS       INDIA          Q4                   NA                 0.3174630    0.1945499   0.4216193
12 months   ki1135781-COHORTS       PHILIPPINES    Q4                   NA                 0.2802863    0.1991017   0.3532414
12 months   ki1148112-LCNI-5        MALAWI         Q4                   NA                 0.3165323   -0.0002742   0.5329999
18 months   ki0047075b-MAL-ED       INDIA          Q4                   NA                -0.0270270   -0.3360512   0.2105209
18 months   ki0047075b-MAL-ED       SOUTH AFRICA   Q4                   NA                -0.0941799   -0.4159589   0.1544743
18 months   ki1017093c-NIH-Crypto   BANGLADESH     Q4                   NA                 0.2980268    0.1348162   0.4304489
18 months   ki1113344-GMS-Nepal     NEPAL          Q4                   NA                 0.2053964    0.0612530   0.3274068
18 months   ki1126311-ZVITAMBO      ZIMBABWE       Q4                   NA                 0.0159660   -0.0104382   0.0416802
18 months   ki1135781-COHORTS       PHILIPPINES    Q4                   NA                 0.2291805    0.1666357   0.2870312
18 months   ki1148112-LCNI-5        MALAWI         Q4                   NA                 0.1468197   -0.1417414   0.3624505
24 months   ki0047075b-MAL-ED       INDIA          Q4                   NA                -0.0214286   -0.2962755   0.1951431
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Q4                   NA                 0.2822642    0.1247348   0.4114415
24 months   ki1113344-GMS-Nepal     NEPAL          Q4                   NA                 0.1553702    0.0268237   0.2669370
24 months   ki1135781-COHORTS       PHILIPPINES    Q4                   NA                 0.1892307    0.1388903   0.2366282
24 months   ki1148112-LCNI-5        MALAWI         Q4                   NA                 0.1581100   -0.0757335   0.3411204
