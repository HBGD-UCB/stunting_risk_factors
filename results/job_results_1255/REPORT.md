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

**Intervention Variable:** feducyrs

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
Birth       ki0047075b-MAL-ED          BANGLADESH                     Q4      144      52      44      8
Birth       ki0047075b-MAL-ED          BANGLADESH                     Q1      144      29      24      5
Birth       ki0047075b-MAL-ED          BANGLADESH                     Q2      144       9       6      3
Birth       ki0047075b-MAL-ED          BANGLADESH                     Q3      144      54      44     10
Birth       ki0047075b-MAL-ED          INDIA                          Q4      123      38      32      6
Birth       ki0047075b-MAL-ED          INDIA                          Q1      123      21      20      1
Birth       ki0047075b-MAL-ED          INDIA                          Q2      123      37      33      4
Birth       ki0047075b-MAL-ED          INDIA                          Q3      123      27      23      4
Birth       ki0047075b-MAL-ED          NEPAL                          Q4       67      27      26      1
Birth       ki0047075b-MAL-ED          NEPAL                          Q1       67      18      16      2
Birth       ki0047075b-MAL-ED          NEPAL                          Q2       67      17      13      4
Birth       ki0047075b-MAL-ED          NEPAL                          Q3       67       5       4      1
Birth       ki0047075b-MAL-ED          PERU                           Q4      236     116     106     10
Birth       ki0047075b-MAL-ED          PERU                           Q1      236      47      37     10
Birth       ki0047075b-MAL-ED          PERU                           Q2      236      62      56      6
Birth       ki0047075b-MAL-ED          PERU                           Q3      236      11      11      0
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Q4       91      35      30      5
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Q1       91      15      15      0
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Q2       91      22      22      0
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Q3       91      19      16      3
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4      101       3       3      0
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1      101      20      18      2
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2      101      16      11      5
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3      101      62      54      8
Birth       ki1000304b-SAS-CompFeed    INDIA                          Q4       70      11      11      0
Birth       ki1000304b-SAS-CompFeed    INDIA                          Q1       70      11       6      5
Birth       ki1000304b-SAS-CompFeed    INDIA                          Q2       70      26      17      9
Birth       ki1000304b-SAS-CompFeed    INDIA                          Q3       70      22      19      3
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Q4       27       5       5      0
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Q1       27       4       3      1
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Q2       27      11       9      2
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Q3       27       7       5      2
Birth       ki1119695-PROBIT           BELARUS                        Q4     6530     978     977      1
Birth       ki1119695-PROBIT           BELARUS                        Q1     6530      11      11      0
Birth       ki1119695-PROBIT           BELARUS                        Q2     6530     119     117      2
Birth       ki1119695-PROBIT           BELARUS                        Q3     6530    5422    5405     17
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Q4    13460   11504   10338   1166
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Q1    13460      82      74      8
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Q2    13460      97      84     13
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Q3    13460    1777    1578    199
Birth       ki1135781-COHORTS          GUATEMALA                      Q4      381       3       3      0
Birth       ki1135781-COHORTS          GUATEMALA                      Q1      381     280     267     13
Birth       ki1135781-COHORTS          GUATEMALA                      Q2      381      97      91      6
Birth       ki1135781-COHORTS          GUATEMALA                      Q3      381       1       1      0
Birth       ki1135781-COHORTS          INDIA                          Q4     1354     380     348     32
Birth       ki1135781-COHORTS          INDIA                          Q1     1354     242     220     22
Birth       ki1135781-COHORTS          INDIA                          Q2     1354     197     172     25
Birth       ki1135781-COHORTS          INDIA                          Q3     1354     535     485     50
Birth       ki1135781-COHORTS          PHILIPPINES                    Q4     2873     830     802     28
Birth       ki1135781-COHORTS          PHILIPPINES                    Q1     2873     623     567     56
Birth       ki1135781-COHORTS          PHILIPPINES                    Q2     2873     204     191     13
Birth       ki1135781-COHORTS          PHILIPPINES                    Q3     2873    1216    1140     76
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Q4     9373     743     571    172
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Q1     9373    4926    3198   1728
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Q2     9373    1751    1110    641
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Q3     9373    1953    1316    637
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Q4      117       2       0      2
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Q1      117      83      61     22
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Q2      117       9       4      5
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Q3      117      23      16      7
3 months    ki0047075b-MAL-ED          BANGLADESH                     Q4      140      51      46      5
3 months    ki0047075b-MAL-ED          BANGLADESH                     Q1      140      31      25      6
3 months    ki0047075b-MAL-ED          BANGLADESH                     Q2      140       8       6      2
3 months    ki0047075b-MAL-ED          BANGLADESH                     Q3      140      50      44      6
3 months    ki0047075b-MAL-ED          INDIA                          Q4      138      42      40      2
3 months    ki0047075b-MAL-ED          INDIA                          Q1      138      22      18      4
3 months    ki0047075b-MAL-ED          INDIA                          Q2      138      44      39      5
3 months    ki0047075b-MAL-ED          INDIA                          Q3      138      30      28      2
3 months    ki0047075b-MAL-ED          NEPAL                          Q4       95      40      37      3
3 months    ki0047075b-MAL-ED          NEPAL                          Q1       95      23      23      0
3 months    ki0047075b-MAL-ED          NEPAL                          Q2       95      25      21      4
3 months    ki0047075b-MAL-ED          NEPAL                          Q3       95       7       7      0
3 months    ki0047075b-MAL-ED          PERU                           Q4      239     115      84     31
3 months    ki0047075b-MAL-ED          PERU                           Q1      239      47      36     11
3 months    ki0047075b-MAL-ED          PERU                           Q2      239      65      51     14
3 months    ki0047075b-MAL-ED          PERU                           Q3      239      12      10      2
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q4      100      39      32      7
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q1      100      19      18      1
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q2      100      26      24      2
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q3      100      16      11      5
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4      206       8       8      0
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1      206      45      38      7
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2      206      32      23      9
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3      206     121     104     17
3 months    ki1000304b-SAS-CompFeed    INDIA                          Q4      410     112      89     23
3 months    ki1000304b-SAS-CompFeed    INDIA                          Q1      410      94      57     37
3 months    ki1000304b-SAS-CompFeed    INDIA                          Q2      410     100      74     26
3 months    ki1000304b-SAS-CompFeed    INDIA                          Q3      410     104      81     23
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q4       97       3       3      0
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q1       97      35      21     14
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q2       97      20      11      9
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q3       97      39      24     15
3 months    ki1017093b-PROVIDE         BANGLADESH                     Q4      645      17      14      3
3 months    ki1017093b-PROVIDE         BANGLADESH                     Q1      645     291     243     48
3 months    ki1017093b-PROVIDE         BANGLADESH                     Q2      645     254     234     20
3 months    ki1017093b-PROVIDE         BANGLADESH                     Q3      645      83      76      7
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q4      728     193     164     29
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q1      728     169     131     38
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q2      728     188     143     45
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q3      728     178     134     44
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q4     2281     212     199     13
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q1     2281      12      12      0
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q2     2281    1965    1846    119
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q3     2281      92      89      3
3 months    ki1113344-GMS-Nepal        NEPAL                          Q4      570     138     123     15
3 months    ki1113344-GMS-Nepal        NEPAL                          Q1      570     248     201     47
3 months    ki1113344-GMS-Nepal        NEPAL                          Q2      570      90      76     14
3 months    ki1113344-GMS-Nepal        NEPAL                          Q3      570      94      86      8
3 months    ki1119695-PROBIT           BELARUS                        Q4     7756    1231    1168     63
3 months    ki1119695-PROBIT           BELARUS                        Q1     7756      12      11      1
3 months    ki1119695-PROBIT           BELARUS                        Q2     7756     143     133     10
3 months    ki1119695-PROBIT           BELARUS                        Q3     7756    6370    5970    400
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       Q4     8921    7595    6296   1299
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       Q1     8921      56      44     12
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       Q2     8921      68      52     16
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       Q3     8921    1202     957    245
3 months    ki1135781-COHORTS          GUATEMALA                      Q4      442       3       2      1
3 months    ki1135781-COHORTS          GUATEMALA                      Q1      442     332     223    109
3 months    ki1135781-COHORTS          GUATEMALA                      Q2      442     106      80     26
3 months    ki1135781-COHORTS          GUATEMALA                      Q3      442       1       1      0
3 months    ki1135781-COHORTS          INDIA                          Q4     1397     394     363     31
3 months    ki1135781-COHORTS          INDIA                          Q1     1397     249     208     41
3 months    ki1135781-COHORTS          INDIA                          Q2     1397     200     163     37
3 months    ki1135781-COHORTS          INDIA                          Q3     1397     554     487     67
3 months    ki1135781-COHORTS          PHILIPPINES                    Q4     2717     774     708     66
3 months    ki1135781-COHORTS          PHILIPPINES                    Q1     2717     591     496     95
3 months    ki1135781-COHORTS          PHILIPPINES                    Q2     2717     190     166     24
3 months    ki1135781-COHORTS          PHILIPPINES                    Q3     2717    1162    1012    150
3 months    kiGH5241-JiVitA-3          BANGLADESH                     Q4    11872    1312    1123    189
3 months    kiGH5241-JiVitA-3          BANGLADESH                     Q1    11872    5703    3952   1751
3 months    kiGH5241-JiVitA-3          BANGLADESH                     Q2    11872    2167    1517    650
3 months    kiGH5241-JiVitA-3          BANGLADESH                     Q3    11872    2690    2018    672
3 months    kiGH5241-JiVitA-4          BANGLADESH                     Q4      491       8       8      0
3 months    kiGH5241-JiVitA-4          BANGLADESH                     Q1      491     356     288     68
3 months    kiGH5241-JiVitA-4          BANGLADESH                     Q2      491      45      28     17
3 months    kiGH5241-JiVitA-4          BANGLADESH                     Q3      491      82      66     16
6 months    ki0047075b-MAL-ED          BANGLADESH                     Q4      132      50      44      6
6 months    ki0047075b-MAL-ED          BANGLADESH                     Q1      132      29      24      5
6 months    ki0047075b-MAL-ED          BANGLADESH                     Q2      132       7       5      2
6 months    ki0047075b-MAL-ED          BANGLADESH                     Q3      132      46      39      7
6 months    ki0047075b-MAL-ED          INDIA                          Q4      138      43      37      6
6 months    ki0047075b-MAL-ED          INDIA                          Q1      138      21      17      4
6 months    ki0047075b-MAL-ED          INDIA                          Q2      138      44      35      9
6 months    ki0047075b-MAL-ED          INDIA                          Q3      138      30      27      3
6 months    ki0047075b-MAL-ED          NEPAL                          Q4       95      40      40      0
6 months    ki0047075b-MAL-ED          NEPAL                          Q1       95      23      22      1
6 months    ki0047075b-MAL-ED          NEPAL                          Q2       95      25      21      4
6 months    ki0047075b-MAL-ED          NEPAL                          Q3       95       7       7      0
6 months    ki0047075b-MAL-ED          PERU                           Q4      224     107      85     22
6 months    ki0047075b-MAL-ED          PERU                           Q1      224      44      32     12
6 months    ki0047075b-MAL-ED          PERU                           Q2      224      62      51     11
6 months    ki0047075b-MAL-ED          PERU                           Q3      224      11      10      1
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q4       92      33      29      4
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q1       92      18      17      1
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q2       92      25      20      5
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q3       92      16      13      3
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4      201       8       5      3
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1      201      42      33      9
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2      201      32      22     10
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3      201     119      96     23
6 months    ki1000304b-SAS-CompFeed    INDIA                          Q4      409     113      87     26
6 months    ki1000304b-SAS-CompFeed    INDIA                          Q1      409      88      55     33
6 months    ki1000304b-SAS-CompFeed    INDIA                          Q2      409     103      69     34
6 months    ki1000304b-SAS-CompFeed    INDIA                          Q3      409     105      87     18
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q4       96       3       2      1
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q1       96      33      18     15
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q2       96      21       8     13
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q3       96      39      20     19
6 months    ki1017093b-PROVIDE         BANGLADESH                     Q4      583      16      13      3
6 months    ki1017093b-PROVIDE         BANGLADESH                     Q1      583     261     204     57
6 months    ki1017093b-PROVIDE         BANGLADESH                     Q2      583     231     205     26
6 months    ki1017093b-PROVIDE         BANGLADESH                     Q3      583      75      67      8
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q4      715     193     162     31
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q1      715     163     123     40
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q2      715     184     139     45
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q3      715     175     141     34
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q4     2018     178     164     14
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q1     2018      10      10      0
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q2     2018    1752    1576    176
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q3     2018      78      73      5
6 months    ki1113344-GMS-Nepal        NEPAL                          Q4      562     136     116     20
6 months    ki1113344-GMS-Nepal        NEPAL                          Q1      562     243     183     60
6 months    ki1113344-GMS-Nepal        NEPAL                          Q2      562      91      68     23
6 months    ki1113344-GMS-Nepal        NEPAL                          Q3      562      92      76     16
6 months    ki1119695-PROBIT           BELARUS                        Q4     7377    1170    1116     54
6 months    ki1119695-PROBIT           BELARUS                        Q1     7377      12      11      1
6 months    ki1119695-PROBIT           BELARUS                        Q2     7377     132     122     10
6 months    ki1119695-PROBIT           BELARUS                        Q3     7377    6063    5617    446
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Q4     8063    6852    5776   1076
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Q1     8063      57      46     11
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Q2     8063      64      52     12
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Q3     8063    1090     862    228
6 months    ki1135781-COHORTS          GUATEMALA                      Q4      430       5       4      1
6 months    ki1135781-COHORTS          GUATEMALA                      Q1      430     321     168    153
6 months    ki1135781-COHORTS          GUATEMALA                      Q2      430     103      62     41
6 months    ki1135781-COHORTS          GUATEMALA                      Q3      430       1       1      0
6 months    ki1135781-COHORTS          INDIA                          Q4     1385     392     356     36
6 months    ki1135781-COHORTS          INDIA                          Q1     1385     247     173     74
6 months    ki1135781-COHORTS          INDIA                          Q2     1385     203     161     42
6 months    ki1135781-COHORTS          INDIA                          Q3     1385     543     455     88
6 months    ki1135781-COHORTS          PHILIPPINES                    Q4     2564     715     609    106
6 months    ki1135781-COHORTS          PHILIPPINES                    Q1     2564     567     407    160
6 months    ki1135781-COHORTS          PHILIPPINES                    Q2     2564     179     137     42
6 months    ki1135781-COHORTS          PHILIPPINES                    Q3     2564    1103     869    234
6 months    ki1148112-LCNI-5           MALAWI                         Q4      812      57      43     14
6 months    ki1148112-LCNI-5           MALAWI                         Q1      812     372     227    145
6 months    ki1148112-LCNI-5           MALAWI                         Q2      812     257     161     96
6 months    ki1148112-LCNI-5           MALAWI                         Q3      812     126      86     40
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Q4     7980     912     782    130
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Q1     7980    3690    2600   1090
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Q2     7980    1470    1067    403
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Q3     7980    1908    1462    446
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Q4      692      13      12      1
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Q1      692     493     385    108
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Q2      692      69      47     22
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Q3      692     117      95     22
9 months    ki0047075b-MAL-ED          BANGLADESH                     Q4      128      47      38      9
9 months    ki0047075b-MAL-ED          BANGLADESH                     Q1      128      30      23      7
9 months    ki0047075b-MAL-ED          BANGLADESH                     Q2      128       6       4      2
9 months    ki0047075b-MAL-ED          BANGLADESH                     Q3      128      45      34     11
9 months    ki0047075b-MAL-ED          INDIA                          Q4      135      43      34      9
9 months    ki0047075b-MAL-ED          INDIA                          Q1      135      21      17      4
9 months    ki0047075b-MAL-ED          INDIA                          Q2      135      41      30     11
9 months    ki0047075b-MAL-ED          INDIA                          Q3      135      30      23      7
9 months    ki0047075b-MAL-ED          NEPAL                          Q4       92      39      38      1
9 months    ki0047075b-MAL-ED          NEPAL                          Q1       92      23      20      3
9 months    ki0047075b-MAL-ED          NEPAL                          Q2       92      23      20      3
9 months    ki0047075b-MAL-ED          NEPAL                          Q3       92       7       6      1
9 months    ki0047075b-MAL-ED          PERU                           Q4      210      98      75     23
9 months    ki0047075b-MAL-ED          PERU                           Q1      210      43      29     14
9 months    ki0047075b-MAL-ED          PERU                           Q2      210      59      48     11
9 months    ki0047075b-MAL-ED          PERU                           Q3      210      10       9      1
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q4       92      34      29      5
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q1       92      19      17      2
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q2       92      24      20      4
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q3       92      15      11      4
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4      196       7       4      3
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1      196      42      26     16
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2      196      29      18     11
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3      196     118      78     40
9 months    ki1000304b-SAS-CompFeed    INDIA                          Q4      402     108      74     34
9 months    ki1000304b-SAS-CompFeed    INDIA                          Q1      402      90      49     41
9 months    ki1000304b-SAS-CompFeed    INDIA                          Q2      402     103      54     49
9 months    ki1000304b-SAS-CompFeed    INDIA                          Q3      402     101      74     27
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q4       85       2       1      1
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q1       85      31      13     18
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q2       85      18       3     15
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q3       85      34      11     23
9 months    ki1017093b-PROVIDE         BANGLADESH                     Q4      605      17      14      3
9 months    ki1017093b-PROVIDE         BANGLADESH                     Q1      605     269     192     77
9 months    ki1017093b-PROVIDE         BANGLADESH                     Q2      605     240     200     40
9 months    ki1017093b-PROVIDE         BANGLADESH                     Q3      605      79      70      9
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q4      706     196     160     36
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q1      706     162     119     43
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q2      706     181     129     52
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q3      706     167     134     33
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q4     1779     155     132     23
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q1     1779       6       6      0
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q2     1779    1544    1314    230
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q3     1779      74      64     10
9 months    ki1113344-GMS-Nepal        NEPAL                          Q4      550     134     106     28
9 months    ki1113344-GMS-Nepal        NEPAL                          Q1      550     235     165     70
9 months    ki1113344-GMS-Nepal        NEPAL                          Q2      550      87      57     30
9 months    ki1113344-GMS-Nepal        NEPAL                          Q3      550      94      67     27
9 months    ki1119695-PROBIT           BELARUS                        Q4     7212    1143    1114     29
9 months    ki1119695-PROBIT           BELARUS                        Q1     7212      11      10      1
9 months    ki1119695-PROBIT           BELARUS                        Q2     7212     128     122      6
9 months    ki1119695-PROBIT           BELARUS                        Q3     7212    5930    5651    279
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       Q4     7443    6289    5108   1181
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       Q1     7443      51      37     14
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       Q2     7443      55      43     12
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       Q3     7443    1048     808    240
9 months    ki1135781-COHORTS          GUATEMALA                      Q4      425       4       3      1
9 months    ki1135781-COHORTS          GUATEMALA                      Q1      425     316     105    211
9 months    ki1135781-COHORTS          GUATEMALA                      Q2      425     104      50     54
9 months    ki1135781-COHORTS          GUATEMALA                      Q3      425       1       0      1
9 months    ki1135781-COHORTS          INDIA                          Q4     1256     355     304     51
9 months    ki1135781-COHORTS          INDIA                          Q1     1256     224     138     86
9 months    ki1135781-COHORTS          INDIA                          Q2     1256     190     140     50
9 months    ki1135781-COHORTS          INDIA                          Q3     1256     487     372    115
9 months    ki1135781-COHORTS          PHILIPPINES                    Q4     2565     714     587    127
9 months    ki1135781-COHORTS          PHILIPPINES                    Q1     2565     567     352    215
9 months    ki1135781-COHORTS          PHILIPPINES                    Q2     2565     187     128     59
9 months    ki1135781-COHORTS          PHILIPPINES                    Q3     2565    1097     790    307
9 months    ki1148112-LCNI-5           MALAWI                         Q4      654      47      39      8
9 months    ki1148112-LCNI-5           MALAWI                         Q1      654     305     204    101
9 months    ki1148112-LCNI-5           MALAWI                         Q2      654     204     130     74
9 months    ki1148112-LCNI-5           MALAWI                         Q3      654      98      65     33
9 months    kiGH5241-JiVitA-4          BANGLADESH                     Q4      704      11      10      1
9 months    kiGH5241-JiVitA-4          BANGLADESH                     Q1      704     510     378    132
9 months    kiGH5241-JiVitA-4          BANGLADESH                     Q2      704      63      41     22
9 months    kiGH5241-JiVitA-4          BANGLADESH                     Q3      704     120      91     29
12 months   ki0047075b-MAL-ED          BANGLADESH                     Q4      127      47      37     10
12 months   ki0047075b-MAL-ED          BANGLADESH                     Q1      127      29      20      9
12 months   ki0047075b-MAL-ED          BANGLADESH                     Q2      127       6       4      2
12 months   ki0047075b-MAL-ED          BANGLADESH                     Q3      127      45      29     16
12 months   ki0047075b-MAL-ED          INDIA                          Q4      132      42      31     11
12 months   ki0047075b-MAL-ED          INDIA                          Q1      132      21      14      7
12 months   ki0047075b-MAL-ED          INDIA                          Q2      132      41      27     14
12 months   ki0047075b-MAL-ED          INDIA                          Q3      132      28      18     10
12 months   ki0047075b-MAL-ED          NEPAL                          Q4       92      39      36      3
12 months   ki0047075b-MAL-ED          NEPAL                          Q1       92      23      20      3
12 months   ki0047075b-MAL-ED          NEPAL                          Q2       92      23      18      5
12 months   ki0047075b-MAL-ED          NEPAL                          Q3       92       7       6      1
12 months   ki0047075b-MAL-ED          PERU                           Q4      201      94      73     21
12 months   ki0047075b-MAL-ED          PERU                           Q1      201      40      28     12
12 months   ki0047075b-MAL-ED          PERU                           Q2      201      57      38     19
12 months   ki0047075b-MAL-ED          PERU                           Q3      201      10       8      2
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q4       93      35      29      6
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q1       93      19      16      3
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q2       93      24      17      7
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q3       93      15      10      5
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4      190       7       3      4
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1      190      40      15     25
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2      190      28      15     13
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3      190     115      58     57
12 months   ki1000304b-SAS-CompFeed    INDIA                          Q4      412     115      75     40
12 months   ki1000304b-SAS-CompFeed    INDIA                          Q1      412      90      35     55
12 months   ki1000304b-SAS-CompFeed    INDIA                          Q2      412     103      50     53
12 months   ki1000304b-SAS-CompFeed    INDIA                          Q3      412     104      71     33
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q4       92       3       1      2
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q1       92      32       8     24
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q2       92      19       5     14
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q3       92      38       5     33
12 months   ki1017093b-PROVIDE         BANGLADESH                     Q4      600      17      15      2
12 months   ki1017093b-PROVIDE         BANGLADESH                     Q1      600     263     174     89
12 months   ki1017093b-PROVIDE         BANGLADESH                     Q2      600     241     184     57
12 months   ki1017093b-PROVIDE         BANGLADESH                     Q3      600      79      70      9
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q4      706     193     160     33
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q1      706     160     111     49
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q2      706     183     128     55
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q3      706     170     136     34
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q4     1439     135     114     21
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q1     1439       7       6      1
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q2     1439    1242    1032    210
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q3     1439      55      49      6
12 months   ki1113344-GMS-Nepal        NEPAL                          Q4      557     136     102     34
12 months   ki1113344-GMS-Nepal        NEPAL                          Q1      557     239     147     92
12 months   ki1113344-GMS-Nepal        NEPAL                          Q2      557      90      59     31
12 months   ki1113344-GMS-Nepal        NEPAL                          Q3      557      92      58     34
12 months   ki1119695-PROBIT           BELARUS                        Q4     7450    1186    1165     21
12 months   ki1119695-PROBIT           BELARUS                        Q1     7450      10       9      1
12 months   ki1119695-PROBIT           BELARUS                        Q2     7450     139     132      7
12 months   ki1119695-PROBIT           BELARUS                        Q3     7450    6115    5890    225
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       Q4     6549    5522    4235   1287
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       Q1     6549      45      30     15
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       Q2     6549      51      39     12
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       Q3     6549     931     658    273
12 months   ki1135781-COHORTS          GUATEMALA                      Q4      489       4       2      2
12 months   ki1135781-COHORTS          GUATEMALA                      Q1      489     359     101    258
12 months   ki1135781-COHORTS          GUATEMALA                      Q2      489     125      40     85
12 months   ki1135781-COHORTS          GUATEMALA                      Q3      489       1       0      1
12 months   ki1135781-COHORTS          INDIA                          Q4     1185     340     274     66
12 months   ki1135781-COHORTS          INDIA                          Q1     1185     203      98    105
12 months   ki1135781-COHORTS          INDIA                          Q2     1185     180     111     69
12 months   ki1135781-COHORTS          INDIA                          Q3     1185     462     314    148
12 months   ki1135781-COHORTS          PHILIPPINES                    Q4     2447     682     498    184
12 months   ki1135781-COHORTS          PHILIPPINES                    Q1     2447     550     270    280
12 months   ki1135781-COHORTS          PHILIPPINES                    Q2     2447     174      82     92
12 months   ki1135781-COHORTS          PHILIPPINES                    Q3     2447    1041     645    396
12 months   ki1148112-LCNI-5           MALAWI                         Q4      619      43      32     11
12 months   ki1148112-LCNI-5           MALAWI                         Q1      619     283     171    112
12 months   ki1148112-LCNI-5           MALAWI                         Q2      619     202     117     85
12 months   ki1148112-LCNI-5           MALAWI                         Q3      619      91      57     34
12 months   kiGH5241-JiVitA-3          BANGLADESH                     Q4     6924     762     592    170
12 months   kiGH5241-JiVitA-3          BANGLADESH                     Q1     6924    3226    1765   1461
12 months   kiGH5241-JiVitA-3          BANGLADESH                     Q2     6924    1282     763    519
12 months   kiGH5241-JiVitA-3          BANGLADESH                     Q3     6924    1654    1069    585
12 months   kiGH5241-JiVitA-4          BANGLADESH                     Q4      707      11       7      4
12 months   kiGH5241-JiVitA-4          BANGLADESH                     Q1      707     507     356    151
12 months   kiGH5241-JiVitA-4          BANGLADESH                     Q2      707      66      39     27
12 months   kiGH5241-JiVitA-4          BANGLADESH                     Q3      707     123      83     40
18 months   ki0047075b-MAL-ED          BANGLADESH                     Q4      121      42      30     12
18 months   ki0047075b-MAL-ED          BANGLADESH                     Q1      121      30      14     16
18 months   ki0047075b-MAL-ED          BANGLADESH                     Q2      121       6       3      3
18 months   ki0047075b-MAL-ED          BANGLADESH                     Q3      121      43      22     21
18 months   ki0047075b-MAL-ED          INDIA                          Q4      132      42      25     17
18 months   ki0047075b-MAL-ED          INDIA                          Q1      132      20      11      9
18 months   ki0047075b-MAL-ED          INDIA                          Q2      132      41      20     21
18 months   ki0047075b-MAL-ED          INDIA                          Q3      132      29      16     13
18 months   ki0047075b-MAL-ED          NEPAL                          Q4       92      39      32      7
18 months   ki0047075b-MAL-ED          NEPAL                          Q1       92      23      17      6
18 months   ki0047075b-MAL-ED          NEPAL                          Q2       92      23      17      6
18 months   ki0047075b-MAL-ED          NEPAL                          Q3       92       7       5      2
18 months   ki0047075b-MAL-ED          PERU                           Q4      180      87      49     38
18 months   ki0047075b-MAL-ED          PERU                           Q1      180      35      19     16
18 months   ki0047075b-MAL-ED          PERU                           Q2      180      51      27     24
18 months   ki0047075b-MAL-ED          PERU                           Q3      180       7       6      1
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q4       92      34      23     11
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q1       92      19      14      5
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q2       92      24      15      9
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q3       92      15      10      5
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4      184       6       1      5
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1      184      39       9     30
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2      184      27      12     15
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3      184     112      36     76
18 months   ki1000304b-SAS-CompFeed    INDIA                          Q4      393     111      64     47
18 months   ki1000304b-SAS-CompFeed    INDIA                          Q1      393      86      22     64
18 months   ki1000304b-SAS-CompFeed    INDIA                          Q2      393      94      39     55
18 months   ki1000304b-SAS-CompFeed    INDIA                          Q3      393     102      63     39
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q4       84       3       1      2
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q1       84      29       4     25
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q2       84      18       1     17
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q3       84      34       4     30
18 months   ki1017093b-PROVIDE         BANGLADESH                     Q4      552      16      14      2
18 months   ki1017093b-PROVIDE         BANGLADESH                     Q1      552     248     132    116
18 months   ki1017093b-PROVIDE         BANGLADESH                     Q2      552     219     144     75
18 months   ki1017093b-PROVIDE         BANGLADESH                     Q3      552      69      56     13
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q4      634     178     140     38
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q1      634     136      79     57
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q2      634     168     104     64
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q3      634     152     120     32
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q4      977      89      71     18
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q1      977       6       5      1
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q2      977     837     624    213
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q3      977      45      41      4
18 months   ki1113344-GMS-Nepal        NEPAL                          Q4      549     131      76     55
18 months   ki1113344-GMS-Nepal        NEPAL                          Q1      549     238     100    138
18 months   ki1113344-GMS-Nepal        NEPAL                          Q2      549      87      39     48
18 months   ki1113344-GMS-Nepal        NEPAL                          Q3      549      93      42     51
18 months   ki1119695-PROBIT           BELARUS                        Q4      735     137     128      9
18 months   ki1119695-PROBIT           BELARUS                        Q1      735       0       0      0
18 months   ki1119695-PROBIT           BELARUS                        Q2      735       9       6      3
18 months   ki1119695-PROBIT           BELARUS                        Q3      735     589     526     63
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Q4     1641    1341     734    607
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Q1     1641      20       8     12
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Q2     1641      19      11      8
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Q3     1641     261     116    145
18 months   ki1135781-COHORTS          GUATEMALA                      Q4      403       6       2      4
18 months   ki1135781-COHORTS          GUATEMALA                      Q1      403     296      41    255
18 months   ki1135781-COHORTS          GUATEMALA                      Q2      403     100      20     80
18 months   ki1135781-COHORTS          GUATEMALA                      Q3      403       1       0      1
18 months   ki1135781-COHORTS          PHILIPPINES                    Q4     2355     651     363    288
18 months   ki1135781-COHORTS          PHILIPPINES                    Q1     2355     524     148    376
18 months   ki1135781-COHORTS          PHILIPPINES                    Q2     2355     172      58    114
18 months   ki1135781-COHORTS          PHILIPPINES                    Q3     2355    1008     393    615
18 months   ki1148112-LCNI-5           MALAWI                         Q4      716      53      34     19
18 months   ki1148112-LCNI-5           MALAWI                         Q1      716     327     179    148
18 months   ki1148112-LCNI-5           MALAWI                         Q2      716     231     122    109
18 months   ki1148112-LCNI-5           MALAWI                         Q3      716     105      53     52
18 months   kiGH5241-JiVitA-4          BANGLADESH                     Q4      679      11       7      4
18 months   kiGH5241-JiVitA-4          BANGLADESH                     Q1      679     479     276    203
18 months   kiGH5241-JiVitA-4          BANGLADESH                     Q2      679      68      32     36
18 months   kiGH5241-JiVitA-4          BANGLADESH                     Q3      679     121      76     45
24 months   ki0047075b-MAL-ED          BANGLADESH                     Q4      117      40      28     12
24 months   ki0047075b-MAL-ED          BANGLADESH                     Q1      117      29      17     12
24 months   ki0047075b-MAL-ED          BANGLADESH                     Q2      117       6       4      2
24 months   ki0047075b-MAL-ED          BANGLADESH                     Q3      117      42      20     22
24 months   ki0047075b-MAL-ED          INDIA                          Q4      132      42      29     13
24 months   ki0047075b-MAL-ED          INDIA                          Q1      132      20      11      9
24 months   ki0047075b-MAL-ED          INDIA                          Q2      132      41      22     19
24 months   ki0047075b-MAL-ED          INDIA                          Q3      132      29      15     14
24 months   ki0047075b-MAL-ED          NEPAL                          Q4       91      38      31      7
24 months   ki0047075b-MAL-ED          NEPAL                          Q1       91      23      17      6
24 months   ki0047075b-MAL-ED          NEPAL                          Q2       91      23      17      6
24 months   ki0047075b-MAL-ED          NEPAL                          Q3       91       7       5      2
24 months   ki0047075b-MAL-ED          PERU                           Q4      164      77      47     30
24 months   ki0047075b-MAL-ED          PERU                           Q1      164      32      18     14
24 months   ki0047075b-MAL-ED          PERU                           Q2      164      48      32     16
24 months   ki0047075b-MAL-ED          PERU                           Q3      164       7       4      3
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q4       91      34      23     11
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q1       91      19      13      6
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q2       91      23      15      8
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q3       91      15       6      9
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4      177       6       1      5
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1      177      37       9     28
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2      177      26       7     19
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3      177     108      37     71
24 months   ki1017093b-PROVIDE         BANGLADESH                     Q4      577      17      17      0
24 months   ki1017093b-PROVIDE         BANGLADESH                     Q1      577     257     144    113
24 months   ki1017093b-PROVIDE         BANGLADESH                     Q2      577     228     163     65
24 months   ki1017093b-PROVIDE         BANGLADESH                     Q3      577      75      63     12
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q4      514     153     131     22
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q1      514     102      63     39
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q2      514     137      87     50
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q3      514     122     101     21
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q4        6       0       0      0
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q1        6       0       0      0
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q2        6       6       5      1
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q3        6       0       0      0
24 months   ki1113344-GMS-Nepal        NEPAL                          Q4      498     116      76     40
24 months   ki1113344-GMS-Nepal        NEPAL                          Q1      498     221     119    102
24 months   ki1113344-GMS-Nepal        NEPAL                          Q2      498      74      34     40
24 months   ki1113344-GMS-Nepal        NEPAL                          Q3      498      87      46     41
24 months   ki1119695-PROBIT           BELARUS                        Q4     1578     269     250     19
24 months   ki1119695-PROBIT           BELARUS                        Q1     1578       1       1      0
24 months   ki1119695-PROBIT           BELARUS                        Q2     1578      20      18      2
24 months   ki1119695-PROBIT           BELARUS                        Q3     1578    1288    1150    138
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Q4      434     344     132    212
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Q1      434       9       1      8
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Q2      434       5       0      5
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Q3      434      76      24     52
24 months   ki1135781-COHORTS          GUATEMALA                      Q4      472       5       1      4
24 months   ki1135781-COHORTS          GUATEMALA                      Q1      472     350      55    295
24 months   ki1135781-COHORTS          GUATEMALA                      Q2      472     116      19     97
24 months   ki1135781-COHORTS          GUATEMALA                      Q3      472       1       0      1
24 months   ki1135781-COHORTS          INDIA                          Q4     1380     388     286    102
24 months   ki1135781-COHORTS          INDIA                          Q1     1380     243      79    164
24 months   ki1135781-COHORTS          INDIA                          Q2     1380     207      84    123
24 months   ki1135781-COHORTS          INDIA                          Q3     1380     542     295    247
24 months   ki1135781-COHORTS          PHILIPPINES                    Q4     2314     640     359    281
24 months   ki1135781-COHORTS          PHILIPPINES                    Q1     2314     519     118    401
24 months   ki1135781-COHORTS          PHILIPPINES                    Q2     2314     173      48    125
24 months   ki1135781-COHORTS          PHILIPPINES                    Q3     2314     982     351    631
24 months   ki1148112-LCNI-5           MALAWI                         Q4      571      41      27     14
24 months   ki1148112-LCNI-5           MALAWI                         Q1      571     268     157    111
24 months   ki1148112-LCNI-5           MALAWI                         Q2      571     176      91     85
24 months   ki1148112-LCNI-5           MALAWI                         Q3      571      86      47     39
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Q4     4123     418     305    113
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Q1     4123    2015     924   1091
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Q2     4123     745     377    368
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Q3     4123     945     539    406
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q4      690      12       8      4
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q1      690     494     318    176
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q2      690      66      35     31
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q3      690     118      72     46


The following strata were considered:

* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 12 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 12 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 12 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 12 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 12 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 12 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 12 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 12 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 12 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 18 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 18 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 18 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 18 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 18 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 18 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 18 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 18 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 18 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 18 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 3 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 3 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 3 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 3 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 3 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 3 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 3 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 3 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 9 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 9 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 9 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 9 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 9 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 9 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 9 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 9 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 9 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 9 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 9 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 3 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 3 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 9 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 9 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 9 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 9 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 12 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 12 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 18 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 18 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 18 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 18 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots

```
## Warning: Removed 40 rows containing missing values (geom_errorbar).
```

![](/tmp/0a15d3e2-1bfe-4676-812d-2708380d240d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->


```
## Warning: Removed 81 rows containing missing values (geom_errorbar).
```

![](/tmp/0a15d3e2-1bfe-4676-812d-2708380d240d/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


```
## Warning: Removed 10 rows containing missing values (geom_errorbar).
```

![](/tmp/0a15d3e2-1bfe-4676-812d-2708380d240d/REPORT_files/figure-html/plot_paf-1.png)<!-- -->


```
## Warning: Removed 10 rows containing missing values (geom_errorbar).
```

![](/tmp/0a15d3e2-1bfe-4676-812d-2708380d240d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                   country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO        ZIMBABWE       Q4                   NA                0.1013561   0.0958409   0.1068712
Birth       ki1126311-ZVITAMBO        ZIMBABWE       Q1                   NA                0.0975610   0.0333360   0.1617860
Birth       ki1126311-ZVITAMBO        ZIMBABWE       Q2                   NA                0.1340206   0.0662225   0.2018188
Birth       ki1126311-ZVITAMBO        ZIMBABWE       Q3                   NA                0.1119865   0.0973238   0.1266492
Birth       ki1135781-COHORTS         INDIA          Q4                   NA                0.0842105   0.0562788   0.1121423
Birth       ki1135781-COHORTS         INDIA          Q1                   NA                0.0909091   0.0546758   0.1271424
Birth       ki1135781-COHORTS         INDIA          Q2                   NA                0.1269036   0.0804046   0.1734025
Birth       ki1135781-COHORTS         INDIA          Q3                   NA                0.0934579   0.0687843   0.1181316
Birth       ki1135781-COHORTS         PHILIPPINES    Q4                   NA                0.0337349   0.0214500   0.0460199
Birth       ki1135781-COHORTS         PHILIPPINES    Q1                   NA                0.0898876   0.0674242   0.1123511
Birth       ki1135781-COHORTS         PHILIPPINES    Q2                   NA                0.0637255   0.0302006   0.0972503
Birth       ki1135781-COHORTS         PHILIPPINES    Q3                   NA                0.0625000   0.0488924   0.0761076
Birth       kiGH5241-JiVitA-3         BANGLADESH     Q4                   NA                0.2314939          NA          NA
Birth       kiGH5241-JiVitA-3         BANGLADESH     Q1                   NA                0.3507917          NA          NA
Birth       kiGH5241-JiVitA-3         BANGLADESH     Q2                   NA                0.3660765          NA          NA
Birth       kiGH5241-JiVitA-3         BANGLADESH     Q3                   NA                0.3261649          NA          NA
3 months    ki1000304b-SAS-CompFeed   INDIA          Q4                   NA                0.2053571          NA          NA
3 months    ki1000304b-SAS-CompFeed   INDIA          Q1                   NA                0.3936170          NA          NA
3 months    ki1000304b-SAS-CompFeed   INDIA          Q2                   NA                0.2600000          NA          NA
3 months    ki1000304b-SAS-CompFeed   INDIA          Q3                   NA                0.2211538          NA          NA
3 months    ki1017093c-NIH-Crypto     BANGLADESH     Q4                   NA                0.1502591   0.0998125   0.2007056
3 months    ki1017093c-NIH-Crypto     BANGLADESH     Q1                   NA                0.2248521   0.1618661   0.2878381
3 months    ki1017093c-NIH-Crypto     BANGLADESH     Q2                   NA                0.2393617   0.1783260   0.3003974
3 months    ki1017093c-NIH-Crypto     BANGLADESH     Q3                   NA                0.2471910   0.1837755   0.3106065
3 months    ki1113344-GMS-Nepal       NEPAL          Q4                   NA                0.1086957   0.0567189   0.1606724
3 months    ki1113344-GMS-Nepal       NEPAL          Q1                   NA                0.1895161   0.1406960   0.2383362
3 months    ki1113344-GMS-Nepal       NEPAL          Q2                   NA                0.1555556   0.0806116   0.2304995
3 months    ki1113344-GMS-Nepal       NEPAL          Q3                   NA                0.0851064   0.0286476   0.1415652
3 months    ki1126311-ZVITAMBO        ZIMBABWE       Q4                   NA                0.1710336   0.1625649   0.1795023
3 months    ki1126311-ZVITAMBO        ZIMBABWE       Q1                   NA                0.2142857   0.1068107   0.3217607
3 months    ki1126311-ZVITAMBO        ZIMBABWE       Q2                   NA                0.2352941   0.1344685   0.3361197
3 months    ki1126311-ZVITAMBO        ZIMBABWE       Q3                   NA                0.2038270   0.1810521   0.2266018
3 months    ki1135781-COHORTS         INDIA          Q4                   NA                0.0786802   0.0520856   0.1052748
3 months    ki1135781-COHORTS         INDIA          Q1                   NA                0.1646586   0.1185770   0.2107403
3 months    ki1135781-COHORTS         INDIA          Q2                   NA                0.1850000   0.1311664   0.2388336
3 months    ki1135781-COHORTS         INDIA          Q3                   NA                0.1209386   0.0937779   0.1480993
3 months    ki1135781-COHORTS         PHILIPPINES    Q4                   NA                0.0852713   0.0655922   0.1049504
3 months    ki1135781-COHORTS         PHILIPPINES    Q1                   NA                0.1607445   0.1311269   0.1903621
3 months    ki1135781-COHORTS         PHILIPPINES    Q2                   NA                0.1263158   0.0790706   0.1735609
3 months    ki1135781-COHORTS         PHILIPPINES    Q3                   NA                0.1290878   0.1098057   0.1483699
3 months    kiGH5241-JiVitA-3         BANGLADESH     Q4                   NA                0.1440549          NA          NA
3 months    kiGH5241-JiVitA-3         BANGLADESH     Q1                   NA                0.3070314          NA          NA
3 months    kiGH5241-JiVitA-3         BANGLADESH     Q2                   NA                0.2999539          NA          NA
3 months    kiGH5241-JiVitA-3         BANGLADESH     Q3                   NA                0.2498141          NA          NA
6 months    ki1000304b-SAS-CompFeed   INDIA          Q4                   NA                0.2300885          NA          NA
6 months    ki1000304b-SAS-CompFeed   INDIA          Q1                   NA                0.3750000          NA          NA
6 months    ki1000304b-SAS-CompFeed   INDIA          Q2                   NA                0.3300971          NA          NA
6 months    ki1000304b-SAS-CompFeed   INDIA          Q3                   NA                0.1714286          NA          NA
6 months    ki1017093c-NIH-Crypto     BANGLADESH     Q4                   NA                0.1606218   0.1087830   0.2124605
6 months    ki1017093c-NIH-Crypto     BANGLADESH     Q1                   NA                0.2453988   0.1792909   0.3115066
6 months    ki1017093c-NIH-Crypto     BANGLADESH     Q2                   NA                0.2445652   0.1824155   0.3067149
6 months    ki1017093c-NIH-Crypto     BANGLADESH     Q3                   NA                0.1942857   0.1356255   0.2529460
6 months    ki1113344-GMS-Nepal       NEPAL          Q4                   NA                0.1470588   0.0874829   0.2066347
6 months    ki1113344-GMS-Nepal       NEPAL          Q1                   NA                0.2469136   0.1926477   0.3011794
6 months    ki1113344-GMS-Nepal       NEPAL          Q2                   NA                0.2527473   0.1633774   0.3421171
6 months    ki1113344-GMS-Nepal       NEPAL          Q3                   NA                0.1739130   0.0963920   0.2514341
6 months    ki1126311-ZVITAMBO        ZIMBABWE       Q4                   NA                0.1570344   0.1484192   0.1656497
6 months    ki1126311-ZVITAMBO        ZIMBABWE       Q1                   NA                0.1929825   0.0905263   0.2954386
6 months    ki1126311-ZVITAMBO        ZIMBABWE       Q2                   NA                0.1875000   0.0918693   0.2831307
6 months    ki1126311-ZVITAMBO        ZIMBABWE       Q3                   NA                0.2091743   0.1850277   0.2333209
6 months    ki1135781-COHORTS         INDIA          Q4                   NA                0.0918367   0.0632377   0.1204358
6 months    ki1135781-COHORTS         INDIA          Q1                   NA                0.2995951   0.2424475   0.3567428
6 months    ki1135781-COHORTS         INDIA          Q2                   NA                0.2068966   0.1511525   0.2626406
6 months    ki1135781-COHORTS         INDIA          Q3                   NA                0.1620626   0.1310562   0.1930691
6 months    ki1135781-COHORTS         PHILIPPINES    Q4                   NA                0.1482517   0.1222001   0.1743034
6 months    ki1135781-COHORTS         PHILIPPINES    Q1                   NA                0.2821869   0.2451346   0.3192393
6 months    ki1135781-COHORTS         PHILIPPINES    Q2                   NA                0.2346369   0.1725445   0.2967292
6 months    ki1135781-COHORTS         PHILIPPINES    Q3                   NA                0.2121487   0.1880170   0.2362804
6 months    ki1148112-LCNI-5          MALAWI         Q4                   NA                0.2456140   0.1337986   0.3574294
6 months    ki1148112-LCNI-5          MALAWI         Q1                   NA                0.3897849   0.3401945   0.4393754
6 months    ki1148112-LCNI-5          MALAWI         Q2                   NA                0.3735409   0.3143623   0.4327194
6 months    ki1148112-LCNI-5          MALAWI         Q3                   NA                0.3174603   0.2361325   0.3987881
6 months    kiGH5241-JiVitA-3         BANGLADESH     Q4                   NA                0.1425439          NA          NA
6 months    kiGH5241-JiVitA-3         BANGLADESH     Q1                   NA                0.2953930          NA          NA
6 months    kiGH5241-JiVitA-3         BANGLADESH     Q2                   NA                0.2741497          NA          NA
6 months    kiGH5241-JiVitA-3         BANGLADESH     Q3                   NA                0.2337526          NA          NA
9 months    ki1000304b-SAS-CompFeed   INDIA          Q4                   NA                0.3148148          NA          NA
9 months    ki1000304b-SAS-CompFeed   INDIA          Q1                   NA                0.4555556          NA          NA
9 months    ki1000304b-SAS-CompFeed   INDIA          Q2                   NA                0.4757282          NA          NA
9 months    ki1000304b-SAS-CompFeed   INDIA          Q3                   NA                0.2673267          NA          NA
9 months    ki1017093c-NIH-Crypto     BANGLADESH     Q4                   NA                0.1836735   0.1294256   0.2379214
9 months    ki1017093c-NIH-Crypto     BANGLADESH     Q1                   NA                0.2654321   0.1973879   0.3334763
9 months    ki1017093c-NIH-Crypto     BANGLADESH     Q2                   NA                0.2872928   0.2213246   0.3532610
9 months    ki1017093c-NIH-Crypto     BANGLADESH     Q3                   NA                0.1976048   0.1371695   0.2580401
9 months    ki1113344-GMS-Nepal       NEPAL          Q4                   NA                0.2089552   0.1400554   0.2778550
9 months    ki1113344-GMS-Nepal       NEPAL          Q1                   NA                0.2978723   0.2393485   0.3563961
9 months    ki1113344-GMS-Nepal       NEPAL          Q2                   NA                0.3448276   0.2448593   0.4447959
9 months    ki1113344-GMS-Nepal       NEPAL          Q3                   NA                0.2872340   0.1956814   0.3787867
9 months    ki1126311-ZVITAMBO        ZIMBABWE       Q4                   NA                0.1877882   0.1781354   0.1974410
9 months    ki1126311-ZVITAMBO        ZIMBABWE       Q1                   NA                0.2745098   0.1520237   0.3969959
9 months    ki1126311-ZVITAMBO        ZIMBABWE       Q2                   NA                0.2181818   0.1090232   0.3273405
9 months    ki1126311-ZVITAMBO        ZIMBABWE       Q3                   NA                0.2290076   0.2035659   0.2544494
9 months    ki1135781-COHORTS         INDIA          Q4                   NA                0.1436620   0.1071613   0.1801626
9 months    ki1135781-COHORTS         INDIA          Q1                   NA                0.3839286   0.3202141   0.4476430
9 months    ki1135781-COHORTS         INDIA          Q2                   NA                0.2631579   0.2005196   0.3257962
9 months    ki1135781-COHORTS         INDIA          Q3                   NA                0.2361396   0.1984043   0.2738749
9 months    ki1135781-COHORTS         PHILIPPINES    Q4                   NA                0.1778711   0.1498164   0.2059259
9 months    ki1135781-COHORTS         PHILIPPINES    Q1                   NA                0.3791887   0.3392450   0.4191325
9 months    ki1135781-COHORTS         PHILIPPINES    Q2                   NA                0.3155080   0.2488885   0.3821275
9 months    ki1135781-COHORTS         PHILIPPINES    Q3                   NA                0.2798541   0.2532833   0.3064250
9 months    ki1148112-LCNI-5          MALAWI         Q4                   NA                0.1702128   0.0626874   0.2777381
9 months    ki1148112-LCNI-5          MALAWI         Q1                   NA                0.3311475   0.2782901   0.3840050
9 months    ki1148112-LCNI-5          MALAWI         Q2                   NA                0.3627451   0.2967179   0.4287723
9 months    ki1148112-LCNI-5          MALAWI         Q3                   NA                0.3367347   0.2430961   0.4303733
12 months   ki0047075b-MAL-ED         INDIA          Q4                   NA                0.2619048   0.1284289   0.3953806
12 months   ki0047075b-MAL-ED         INDIA          Q1                   NA                0.3333333   0.1309459   0.5357207
12 months   ki0047075b-MAL-ED         INDIA          Q2                   NA                0.3414634   0.1957601   0.4871668
12 months   ki0047075b-MAL-ED         INDIA          Q3                   NA                0.3571429   0.1789876   0.5352981
12 months   ki1000304b-SAS-CompFeed   INDIA          Q4                   NA                0.3478261          NA          NA
12 months   ki1000304b-SAS-CompFeed   INDIA          Q1                   NA                0.6111111          NA          NA
12 months   ki1000304b-SAS-CompFeed   INDIA          Q2                   NA                0.5145631          NA          NA
12 months   ki1000304b-SAS-CompFeed   INDIA          Q3                   NA                0.3173077          NA          NA
12 months   ki1017093c-NIH-Crypto     BANGLADESH     Q4                   NA                0.1709845   0.1178303   0.2241386
12 months   ki1017093c-NIH-Crypto     BANGLADESH     Q1                   NA                0.3062500   0.2347781   0.3777219
12 months   ki1017093c-NIH-Crypto     BANGLADESH     Q2                   NA                0.3005464   0.2340703   0.3670226
12 months   ki1017093c-NIH-Crypto     BANGLADESH     Q3                   NA                0.2000000   0.1398284   0.2601716
12 months   ki1113344-GMS-Nepal       NEPAL          Q4                   NA                0.2500000   0.1771601   0.3228399
12 months   ki1113344-GMS-Nepal       NEPAL          Q1                   NA                0.3849372   0.3231933   0.4466811
12 months   ki1113344-GMS-Nepal       NEPAL          Q2                   NA                0.3444444   0.2461834   0.4427055
12 months   ki1113344-GMS-Nepal       NEPAL          Q3                   NA                0.3695652   0.2708441   0.4682863
12 months   ki1126311-ZVITAMBO        ZIMBABWE       Q4                   NA                0.2330677   0.2219157   0.2442197
12 months   ki1126311-ZVITAMBO        ZIMBABWE       Q1                   NA                0.3333333   0.1955906   0.4710761
12 months   ki1126311-ZVITAMBO        ZIMBABWE       Q2                   NA                0.2352941   0.1188684   0.3517198
12 months   ki1126311-ZVITAMBO        ZIMBABWE       Q3                   NA                0.2932331   0.2639881   0.3224780
12 months   ki1135781-COHORTS         INDIA          Q4                   NA                0.1941176   0.1520585   0.2361768
12 months   ki1135781-COHORTS         INDIA          Q1                   NA                0.5172414   0.4484720   0.5860107
12 months   ki1135781-COHORTS         INDIA          Q2                   NA                0.3833333   0.3122760   0.4543906
12 months   ki1135781-COHORTS         INDIA          Q3                   NA                0.3203463   0.2777802   0.3629124
12 months   ki1135781-COHORTS         PHILIPPINES    Q4                   NA                0.2697947   0.2364763   0.3031131
12 months   ki1135781-COHORTS         PHILIPPINES    Q1                   NA                0.5090909   0.4673027   0.5508791
12 months   ki1135781-COHORTS         PHILIPPINES    Q2                   NA                0.5287356   0.4545510   0.6029202
12 months   ki1135781-COHORTS         PHILIPPINES    Q3                   NA                0.3804035   0.3509058   0.4099012
12 months   ki1148112-LCNI-5          MALAWI         Q4                   NA                0.2558140   0.1252967   0.3863312
12 months   ki1148112-LCNI-5          MALAWI         Q1                   NA                0.3957597   0.3387398   0.4527796
12 months   ki1148112-LCNI-5          MALAWI         Q2                   NA                0.4207921   0.3526564   0.4889277
12 months   ki1148112-LCNI-5          MALAWI         Q3                   NA                0.3736264   0.2741514   0.4731014
12 months   kiGH5241-JiVitA-3         BANGLADESH     Q4                   NA                0.2230971          NA          NA
12 months   kiGH5241-JiVitA-3         BANGLADESH     Q1                   NA                0.4528828          NA          NA
12 months   kiGH5241-JiVitA-3         BANGLADESH     Q2                   NA                0.4048362          NA          NA
12 months   kiGH5241-JiVitA-3         BANGLADESH     Q3                   NA                0.3536880          NA          NA
18 months   ki0047075b-MAL-ED         INDIA          Q4                   NA                0.4047619   0.2557504   0.5537735
18 months   ki0047075b-MAL-ED         INDIA          Q1                   NA                0.4500000   0.2311372   0.6688628
18 months   ki0047075b-MAL-ED         INDIA          Q2                   NA                0.5121951   0.3586103   0.6657799
18 months   ki0047075b-MAL-ED         INDIA          Q3                   NA                0.4482759   0.2665846   0.6299671
18 months   ki0047075b-MAL-ED         SOUTH AFRICA   Q4                   NA                0.3235294   0.1654180   0.4816408
18 months   ki0047075b-MAL-ED         SOUTH AFRICA   Q1                   NA                0.2631579   0.0640723   0.4622435
18 months   ki0047075b-MAL-ED         SOUTH AFRICA   Q2                   NA                0.3750000   0.1802528   0.5697472
18 months   ki0047075b-MAL-ED         SOUTH AFRICA   Q3                   NA                0.3333333   0.0934669   0.5731997
18 months   ki1000304b-SAS-CompFeed   INDIA          Q4                   NA                0.4234234          NA          NA
18 months   ki1000304b-SAS-CompFeed   INDIA          Q1                   NA                0.7441860          NA          NA
18 months   ki1000304b-SAS-CompFeed   INDIA          Q2                   NA                0.5851064          NA          NA
18 months   ki1000304b-SAS-CompFeed   INDIA          Q3                   NA                0.3823529          NA          NA
18 months   ki1017093c-NIH-Crypto     BANGLADESH     Q4                   NA                0.2134831   0.1532387   0.2737275
18 months   ki1017093c-NIH-Crypto     BANGLADESH     Q1                   NA                0.4191176   0.3361262   0.5021091
18 months   ki1017093c-NIH-Crypto     BANGLADESH     Q2                   NA                0.3809524   0.3074615   0.4544433
18 months   ki1017093c-NIH-Crypto     BANGLADESH     Q3                   NA                0.2105263   0.1456642   0.2753884
18 months   ki1113344-GMS-Nepal       NEPAL          Q4                   NA                0.4198473   0.3352561   0.5044385
18 months   ki1113344-GMS-Nepal       NEPAL          Q1                   NA                0.5798319   0.5170669   0.6425970
18 months   ki1113344-GMS-Nepal       NEPAL          Q2                   NA                0.5517241   0.4471274   0.6563208
18 months   ki1113344-GMS-Nepal       NEPAL          Q3                   NA                0.5483871   0.4471524   0.6496218
18 months   ki1126311-ZVITAMBO        ZIMBABWE       Q4                   NA                0.4526473   0.4259984   0.4792962
18 months   ki1126311-ZVITAMBO        ZIMBABWE       Q1                   NA                0.6000000   0.3852312   0.8147687
18 months   ki1126311-ZVITAMBO        ZIMBABWE       Q2                   NA                0.4210526   0.1989819   0.6431234
18 months   ki1126311-ZVITAMBO        ZIMBABWE       Q3                   NA                0.5555556   0.4952534   0.6158577
18 months   ki1135781-COHORTS         PHILIPPINES    Q4                   NA                0.4423963   0.4042354   0.4805572
18 months   ki1135781-COHORTS         PHILIPPINES    Q1                   NA                0.7175573   0.6790034   0.7561111
18 months   ki1135781-COHORTS         PHILIPPINES    Q2                   NA                0.6627907   0.5921241   0.7334573
18 months   ki1135781-COHORTS         PHILIPPINES    Q3                   NA                0.6101190   0.5800040   0.6402341
18 months   ki1148112-LCNI-5          MALAWI         Q4                   NA                0.3584906   0.2292931   0.4876880
18 months   ki1148112-LCNI-5          MALAWI         Q1                   NA                0.4525994   0.3986126   0.5065862
18 months   ki1148112-LCNI-5          MALAWI         Q2                   NA                0.4718615   0.4074406   0.5362824
18 months   ki1148112-LCNI-5          MALAWI         Q3                   NA                0.4952381   0.3995391   0.5909371
24 months   ki0047075b-MAL-ED         INDIA          Q4                   NA                0.3095238   0.1691791   0.4498686
24 months   ki0047075b-MAL-ED         INDIA          Q1                   NA                0.4500000   0.2311372   0.6688628
24 months   ki0047075b-MAL-ED         INDIA          Q2                   NA                0.4634146   0.3101959   0.6166333
24 months   ki0047075b-MAL-ED         INDIA          Q3                   NA                0.4827586   0.3001959   0.6653213
24 months   ki0047075b-MAL-ED         SOUTH AFRICA   Q4                   NA                0.3235294   0.1654085   0.4816504
24 months   ki0047075b-MAL-ED         SOUTH AFRICA   Q1                   NA                0.3157895   0.1056225   0.5259564
24 months   ki0047075b-MAL-ED         SOUTH AFRICA   Q2                   NA                0.3478261   0.1521010   0.5435511
24 months   ki0047075b-MAL-ED         SOUTH AFRICA   Q3                   NA                0.6000000   0.3507085   0.8492915
24 months   ki1017093c-NIH-Crypto     BANGLADESH     Q4                   NA                0.1437908   0.0881388   0.1994429
24 months   ki1017093c-NIH-Crypto     BANGLADESH     Q1                   NA                0.3823529   0.2879527   0.4767532
24 months   ki1017093c-NIH-Crypto     BANGLADESH     Q2                   NA                0.3649635   0.2842707   0.4456563
24 months   ki1017093c-NIH-Crypto     BANGLADESH     Q3                   NA                0.1721311   0.1050807   0.2391816
24 months   ki1113344-GMS-Nepal       NEPAL          Q4                   NA                0.3448276   0.2582442   0.4314109
24 months   ki1113344-GMS-Nepal       NEPAL          Q1                   NA                0.4615385   0.3957470   0.5273300
24 months   ki1113344-GMS-Nepal       NEPAL          Q2                   NA                0.5405405   0.4268809   0.6542002
24 months   ki1113344-GMS-Nepal       NEPAL          Q3                   NA                0.4712644   0.3662675   0.5762613
24 months   ki1135781-COHORTS         INDIA          Q4                   NA                0.2628866   0.2190698   0.3067034
24 months   ki1135781-COHORTS         INDIA          Q1                   NA                0.6748971   0.6159813   0.7338129
24 months   ki1135781-COHORTS         INDIA          Q2                   NA                0.5942029   0.5272850   0.6611208
24 months   ki1135781-COHORTS         INDIA          Q3                   NA                0.4557196   0.4137759   0.4976632
24 months   ki1135781-COHORTS         PHILIPPINES    Q4                   NA                0.4390625   0.4006058   0.4775192
24 months   ki1135781-COHORTS         PHILIPPINES    Q1                   NA                0.7726397   0.7365732   0.8087062
24 months   ki1135781-COHORTS         PHILIPPINES    Q2                   NA                0.7225434   0.6558092   0.7892775
24 months   ki1135781-COHORTS         PHILIPPINES    Q3                   NA                0.6425662   0.6125854   0.6725470
24 months   ki1148112-LCNI-5          MALAWI         Q4                   NA                0.3414634   0.1961858   0.4867411
24 months   ki1148112-LCNI-5          MALAWI         Q1                   NA                0.4141791   0.3551539   0.4732044
24 months   ki1148112-LCNI-5          MALAWI         Q2                   NA                0.4829545   0.4090638   0.5568453
24 months   ki1148112-LCNI-5          MALAWI         Q3                   NA                0.4534884   0.3481802   0.5587966
24 months   kiGH5241-JiVitA-3         BANGLADESH     Q4                   NA                0.2703349          NA          NA
24 months   kiGH5241-JiVitA-3         BANGLADESH     Q1                   NA                0.5414392          NA          NA
24 months   kiGH5241-JiVitA-3         BANGLADESH     Q2                   NA                0.4939597          NA          NA
24 months   kiGH5241-JiVitA-3         BANGLADESH     Q3                   NA                0.4296296          NA          NA


### Parameter: E(Y)


agecat      studyid                   country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO        ZIMBABWE       NA                   NA                0.1029718   0.0978372   0.1081063
Birth       ki1135781-COHORTS         INDIA          NA                   NA                0.0952733   0.0796294   0.1109171
Birth       ki1135781-COHORTS         PHILIPPINES    NA                   NA                0.0602158   0.0515157   0.0689159
Birth       kiGH5241-JiVitA-3         BANGLADESH     NA                   NA                0.3390590          NA          NA
3 months    ki1000304b-SAS-CompFeed   INDIA          NA                   NA                0.2658537          NA          NA
3 months    ki1017093c-NIH-Crypto     BANGLADESH     NA                   NA                0.2142857   0.1844587   0.2441127
3 months    ki1113344-GMS-Nepal       NEPAL          NA                   NA                0.1473684   0.1182428   0.1764940
3 months    ki1126311-ZVITAMBO        ZIMBABWE       NA                   NA                0.1762134   0.1683068   0.1841201
3 months    ki1135781-COHORTS         INDIA          NA                   NA                0.1259843   0.1085773   0.1433912
3 months    ki1135781-COHORTS         PHILIPPINES    NA                   NA                0.1232978   0.1109330   0.1356625
3 months    kiGH5241-JiVitA-3         BANGLADESH     NA                   NA                0.2747642          NA          NA
6 months    ki1000304b-SAS-CompFeed   INDIA          NA                   NA                0.2713936          NA          NA
6 months    ki1017093c-NIH-Crypto     BANGLADESH     NA                   NA                0.2097902   0.1799252   0.2396552
6 months    ki1113344-GMS-Nepal       NEPAL          NA                   NA                0.2117438   0.1779368   0.2455507
6 months    ki1126311-ZVITAMBO        ZIMBABWE       NA                   NA                0.1645789   0.1564849   0.1726730
6 months    ki1135781-COHORTS         INDIA          NA                   NA                0.1732852   0.1533446   0.1932258
6 months    ki1135781-COHORTS         PHILIPPINES    NA                   NA                0.2113885   0.1955816   0.2271953
6 months    ki1148112-LCNI-5          MALAWI         NA                   NA                0.3633005   0.3301997   0.3964012
6 months    kiGH5241-JiVitA-3         BANGLADESH     NA                   NA                0.2592732          NA          NA
9 months    ki1000304b-SAS-CompFeed   INDIA          NA                   NA                0.3756219          NA          NA
9 months    ki1017093c-NIH-Crypto     BANGLADESH     NA                   NA                0.2322946   0.2011222   0.2634670
9 months    ki1113344-GMS-Nepal       NEPAL          NA                   NA                0.2818182   0.2441856   0.3194507
9 months    ki1126311-ZVITAMBO        ZIMBABWE       NA                   NA                0.1944109   0.1854196   0.2034021
9 months    ki1135781-COHORTS         INDIA          NA                   NA                0.2404459   0.2168022   0.2640895
9 months    ki1135781-COHORTS         PHILIPPINES    NA                   NA                0.2760234   0.2587203   0.2933265
9 months    ki1148112-LCNI-5          MALAWI         NA                   NA                0.3302752   0.2942026   0.3663478
12 months   ki0047075b-MAL-ED         INDIA          NA                   NA                0.3181818   0.2384220   0.3979417
12 months   ki1000304b-SAS-CompFeed   INDIA          NA                   NA                0.4393204          NA          NA
12 months   ki1017093c-NIH-Crypto     BANGLADESH     NA                   NA                0.2422096   0.2105851   0.2738341
12 months   ki1113344-GMS-Nepal       NEPAL          NA                   NA                0.3429084   0.3034525   0.3823644
12 months   ki1126311-ZVITAMBO        ZIMBABWE       NA                   NA                0.2423271   0.2319485   0.2527056
12 months   ki1135781-COHORTS         INDIA          NA                   NA                0.3274262   0.3006962   0.3541562
12 months   ki1135781-COHORTS         PHILIPPINES    NA                   NA                0.3890478   0.3697270   0.4083686
12 months   ki1148112-LCNI-5          MALAWI         NA                   NA                0.3909532   0.3524814   0.4294249
12 months   kiGH5241-JiVitA-3         BANGLADESH     NA                   NA                0.3950029          NA          NA
18 months   ki0047075b-MAL-ED         INDIA          NA                   NA                0.4545455   0.3692786   0.5398123
18 months   ki0047075b-MAL-ED         SOUTH AFRICA   NA                   NA                0.3260870   0.2297715   0.4224024
18 months   ki1000304b-SAS-CompFeed   INDIA          NA                   NA                0.5216285          NA          NA
18 months   ki1017093c-NIH-Crypto     BANGLADESH     NA                   NA                0.3012618   0.2655201   0.3370036
18 months   ki1113344-GMS-Nepal       NEPAL          NA                   NA                0.5318761   0.4900985   0.5736537
18 months   ki1126311-ZVITAMBO        ZIMBABWE       NA                   NA                0.4704449   0.4462882   0.4946015
18 months   ki1135781-COHORTS         PHILIPPINES    NA                   NA                0.5915074   0.5716503   0.6113646
18 months   ki1148112-LCNI-5          MALAWI         NA                   NA                0.4581006   0.4215802   0.4946209
24 months   ki0047075b-MAL-ED         INDIA          NA                   NA                0.4166667   0.3322428   0.5010905
24 months   ki0047075b-MAL-ED         SOUTH AFRICA   NA                   NA                0.3736264   0.2736811   0.4735717
24 months   ki1017093c-NIH-Crypto     BANGLADESH     NA                   NA                0.2568093   0.2190047   0.2946140
24 months   ki1113344-GMS-Nepal       NEPAL          NA                   NA                0.4477912   0.4040733   0.4915091
24 months   ki1135781-COHORTS         INDIA          NA                   NA                0.4608696   0.4345607   0.4871784
24 months   ki1135781-COHORTS         PHILIPPINES    NA                   NA                0.6214347   0.6016683   0.6412012
24 months   ki1148112-LCNI-5          MALAWI         NA                   NA                0.4360771   0.3953670   0.4767872
24 months   kiGH5241-JiVitA-3         BANGLADESH     NA                   NA                0.4797478          NA          NA


### Parameter: RR


agecat      studyid                   country        intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  ------------------------  -------------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki1126311-ZVITAMBO        ZIMBABWE       Q4                   Q4                1.0000000   1.0000000   1.000000
Birth       ki1126311-ZVITAMBO        ZIMBABWE       Q1                   Q4                0.9625570   0.4972246   1.863375
Birth       ki1126311-ZVITAMBO        ZIMBABWE       Q2                   Q4                1.3222755   0.7949766   2.199326
Birth       ki1126311-ZVITAMBO        ZIMBABWE       Q3                   Q4                1.1048822   0.9588214   1.273193
Birth       ki1135781-COHORTS         INDIA          Q4                   Q4                1.0000000   1.0000000   1.000000
Birth       ki1135781-COHORTS         INDIA          Q1                   Q4                1.0795455   0.6427563   1.813157
Birth       ki1135781-COHORTS         INDIA          Q2                   Q4                1.5069797   0.9193073   2.470325
Birth       ki1135781-COHORTS         INDIA          Q3                   Q4                1.1098131   0.7263378   1.695747
Birth       ki1135781-COHORTS         PHILIPPINES    Q4                   Q4                1.0000000   1.0000000   1.000000
Birth       ki1135781-COHORTS         PHILIPPINES    Q1                   Q4                2.6645265   1.7132011   4.144114
Birth       ki1135781-COHORTS         PHILIPPINES    Q2                   Q4                1.8890056   0.9962332   3.581834
Birth       ki1135781-COHORTS         PHILIPPINES    Q3                   Q4                1.8526786   1.2120945   2.831807
Birth       kiGH5241-JiVitA-3         BANGLADESH     Q4                   Q4                1.0000000          NA         NA
Birth       kiGH5241-JiVitA-3         BANGLADESH     Q1                   Q4                1.5153386          NA         NA
Birth       kiGH5241-JiVitA-3         BANGLADESH     Q2                   Q4                1.5813655          NA         NA
Birth       kiGH5241-JiVitA-3         BANGLADESH     Q3                   Q4                1.4089564          NA         NA
3 months    ki1000304b-SAS-CompFeed   INDIA          Q4                   Q4                1.0000000          NA         NA
3 months    ki1000304b-SAS-CompFeed   INDIA          Q1                   Q4                1.9167438          NA         NA
3 months    ki1000304b-SAS-CompFeed   INDIA          Q2                   Q4                1.2660870          NA         NA
3 months    ki1000304b-SAS-CompFeed   INDIA          Q3                   Q4                1.0769231          NA         NA
3 months    ki1017093c-NIH-Crypto     BANGLADESH     Q4                   Q4                1.0000000   1.0000000   1.000000
3 months    ki1017093c-NIH-Crypto     BANGLADESH     Q1                   Q4                1.4964293   0.9664137   2.317124
3 months    ki1017093c-NIH-Crypto     BANGLADESH     Q2                   Q4                1.5929934   1.0450100   2.428329
3 months    ki1017093c-NIH-Crypto     BANGLADESH     Q3                   Q4                1.6450988   1.0781777   2.510115
3 months    ki1113344-GMS-Nepal       NEPAL          Q4                   Q4                1.0000000   1.0000000   1.000000
3 months    ki1113344-GMS-Nepal       NEPAL          Q1                   Q4                1.7435484   1.0128452   3.001407
3 months    ki1113344-GMS-Nepal       NEPAL          Q2                   Q4                1.4311111   0.7258922   2.821464
3 months    ki1113344-GMS-Nepal       NEPAL          Q3                   Q4                0.7829787   0.3456181   1.773795
3 months    ki1126311-ZVITAMBO        ZIMBABWE       Q4                   Q4                1.0000000   1.0000000   1.000000
3 months    ki1126311-ZVITAMBO        ZIMBABWE       Q1                   Q4                1.2528868   0.7568897   2.073916
3 months    ki1126311-ZVITAMBO        ZIMBABWE       Q2                   Q4                1.3757189   0.8937014   2.117712
3 months    ki1126311-ZVITAMBO        ZIMBABWE       Q3                   Q4                1.1917365   1.0546362   1.346660
3 months    ki1135781-COHORTS         INDIA          Q4                   Q4                1.0000000   1.0000000   1.000000
3 months    ki1135781-COHORTS         INDIA          Q1                   Q4                2.0927581   1.3493891   3.245644
3 months    ki1135781-COHORTS         INDIA          Q2                   Q4                2.3512903   1.5052403   3.672880
3 months    ki1135781-COHORTS         INDIA          Q3                   Q4                1.5370910   1.0243671   2.306447
3 months    ki1135781-COHORTS         PHILIPPINES    Q4                   Q4                1.0000000   1.0000000   1.000000
3 months    ki1135781-COHORTS         PHILIPPINES    Q1                   Q4                1.8850946   1.4030742   2.532711
3 months    ki1135781-COHORTS         PHILIPPINES    Q2                   Q4                1.4813397   0.9545201   2.298922
3 months    ki1135781-COHORTS         PHILIPPINES    Q3                   Q4                1.5138476   1.1499864   1.992836
3 months    kiGH5241-JiVitA-3         BANGLADESH     Q4                   Q4                1.0000000          NA         NA
3 months    kiGH5241-JiVitA-3         BANGLADESH     Q1                   Q4                2.1313502          NA         NA
3 months    kiGH5241-JiVitA-3         BANGLADESH     Q2                   Q4                2.0822193          NA         NA
3 months    kiGH5241-JiVitA-3         BANGLADESH     Q3                   Q4                1.7341594          NA         NA
6 months    ki1000304b-SAS-CompFeed   INDIA          Q4                   Q4                1.0000000          NA         NA
6 months    ki1000304b-SAS-CompFeed   INDIA          Q1                   Q4                1.6298077          NA         NA
6 months    ki1000304b-SAS-CompFeed   INDIA          Q2                   Q4                1.4346527          NA         NA
6 months    ki1000304b-SAS-CompFeed   INDIA          Q3                   Q4                0.7450549          NA         NA
6 months    ki1017093c-NIH-Crypto     BANGLADESH     Q4                   Q4                1.0000000   1.0000000   1.000000
6 months    ki1017093c-NIH-Crypto     BANGLADESH     Q1                   Q4                1.5278053   1.0034449   2.326176
6 months    ki1017093c-NIH-Crypto     BANGLADESH     Q2                   Q4                1.5226157   1.0096987   2.296089
6 months    ki1017093c-NIH-Crypto     BANGLADESH     Q3                   Q4                1.2095853   0.7774990   1.881798
6 months    ki1113344-GMS-Nepal       NEPAL          Q4                   Q4                1.0000000   1.0000000   1.000000
6 months    ki1113344-GMS-Nepal       NEPAL          Q1                   Q4                1.6790123   1.0589888   2.662051
6 months    ki1113344-GMS-Nepal       NEPAL          Q2                   Q4                1.7186813   1.0038403   2.942565
6 months    ki1113344-GMS-Nepal       NEPAL          Q3                   Q4                1.1826087   0.6475150   2.159893
6 months    ki1126311-ZVITAMBO        ZIMBABWE       Q4                   Q4                1.0000000   1.0000000   1.000000
6 months    ki1126311-ZVITAMBO        ZIMBABWE       Q1                   Q4                1.2289180   0.7206497   2.095664
6 months    ki1126311-ZVITAMBO        ZIMBABWE       Q2                   Q4                1.1940056   0.7148669   1.994286
6 months    ki1126311-ZVITAMBO        ZIMBABWE       Q3                   Q4                1.3320282   1.1722106   1.513635
6 months    ki1135781-COHORTS         INDIA          Q4                   Q4                1.0000000   1.0000000   1.000000
6 months    ki1135781-COHORTS         INDIA          Q1                   Q4                3.2622580   2.2642207   4.700216
6 months    ki1135781-COHORTS         INDIA          Q2                   Q4                2.2528734   1.4924482   3.400747
6 months    ki1135781-COHORTS         INDIA          Q3                   Q4                1.7646817   1.2244369   2.543293
6 months    ki1135781-COHORTS         PHILIPPINES    Q4                   Q4                1.0000000   1.0000000   1.000000
6 months    ki1135781-COHORTS         PHILIPPINES    Q1                   Q4                1.9034308   1.5285117   2.370312
6 months    ki1135781-COHORTS         PHILIPPINES    Q2                   Q4                1.5826921   1.1519598   2.174481
6 months    ki1135781-COHORTS         PHILIPPINES    Q3                   Q4                1.4310029   1.1607278   1.764212
6 months    ki1148112-LCNI-5          MALAWI         Q4                   Q4                1.0000000   1.0000000   1.000000
6 months    ki1148112-LCNI-5          MALAWI         Q1                   Q4                1.5869816   0.9892009   2.546005
6 months    ki1148112-LCNI-5          MALAWI         Q2                   Q4                1.5208449   0.9391680   2.462785
6 months    ki1148112-LCNI-5          MALAWI         Q3                   Q4                1.2925170   0.7666014   2.179229
6 months    kiGH5241-JiVitA-3         BANGLADESH     Q4                   Q4                1.0000000          NA         NA
6 months    kiGH5241-JiVitA-3         BANGLADESH     Q1                   Q4                2.0722952          NA         NA
6 months    kiGH5241-JiVitA-3         BANGLADESH     Q2                   Q4                1.9232653          NA         NA
6 months    kiGH5241-JiVitA-3         BANGLADESH     Q3                   Q4                1.6398645          NA         NA
9 months    ki1000304b-SAS-CompFeed   INDIA          Q4                   Q4                1.0000000          NA         NA
9 months    ki1000304b-SAS-CompFeed   INDIA          Q1                   Q4                1.4470588          NA         NA
9 months    ki1000304b-SAS-CompFeed   INDIA          Q2                   Q4                1.5111365          NA         NA
9 months    ki1000304b-SAS-CompFeed   INDIA          Q3                   Q4                0.8491555          NA         NA
9 months    ki1017093c-NIH-Crypto     BANGLADESH     Q4                   Q4                1.0000000   1.0000000   1.000000
9 months    ki1017093c-NIH-Crypto     BANGLADESH     Q1                   Q4                1.4451303   0.9773736   2.136748
9 months    ki1017093c-NIH-Crypto     BANGLADESH     Q2                   Q4                1.5641498   1.0759827   2.273795
9 months    ki1017093c-NIH-Crypto     BANGLADESH     Q3                   Q4                1.0758483   0.7032379   1.645886
9 months    ki1113344-GMS-Nepal       NEPAL          Q4                   Q4                1.0000000   1.0000000   1.000000
9 months    ki1113344-GMS-Nepal       NEPAL          Q1                   Q4                1.4255319   0.9711383   2.092535
9 months    ki1113344-GMS-Nepal       NEPAL          Q2                   Q4                1.6502463   1.0638206   2.559936
9 months    ki1113344-GMS-Nepal       NEPAL          Q3                   Q4                1.3746201   0.8689857   2.174466
9 months    ki1126311-ZVITAMBO        ZIMBABWE       Q4                   Q4                1.0000000   1.0000000   1.000000
9 months    ki1126311-ZVITAMBO        ZIMBABWE       Q1                   Q4                1.4618054   0.9328804   2.290621
9 months    ki1126311-ZVITAMBO        ZIMBABWE       Q2                   Q4                1.1618505   0.7026263   1.921215
9 months    ki1126311-ZVITAMBO        ZIMBABWE       Q3                   Q4                1.2194996   1.0789944   1.378301
9 months    ki1135781-COHORTS         INDIA          Q4                   Q4                1.0000000   1.0000000   1.000000
9 months    ki1135781-COHORTS         INDIA          Q1                   Q4                2.6724440   1.9729380   3.619960
9 months    ki1135781-COHORTS         INDIA          Q2                   Q4                1.8317853   1.2932262   2.594625
9 months    ki1135781-COHORTS         INDIA          Q3                   Q4                1.6437170   1.2175141   2.219117
9 months    ki1135781-COHORTS         PHILIPPINES    Q4                   Q4                1.0000000   1.0000000   1.000000
9 months    ki1135781-COHORTS         PHILIPPINES    Q1                   Q4                2.1318169   1.7635118   2.577041
9 months    ki1135781-COHORTS         PHILIPPINES    Q2                   Q4                1.7738010   1.3628379   2.308690
9 months    ki1135781-COHORTS         PHILIPPINES    Q3                   Q4                1.5733532   1.3088015   1.891380
9 months    ki1148112-LCNI-5          MALAWI         Q4                   Q4                1.0000000   1.0000000   1.000000
9 months    ki1148112-LCNI-5          MALAWI         Q1                   Q4                1.9454918   1.0140470   3.732508
9 months    ki1148112-LCNI-5          MALAWI         Q2                   Q4                2.1311275   1.1043300   4.112633
9 months    ki1148112-LCNI-5          MALAWI         Q3                   Q4                1.9783163   0.9920699   3.945020
12 months   ki0047075b-MAL-ED         INDIA          Q4                   Q4                1.0000000   1.0000000   1.000000
12 months   ki0047075b-MAL-ED         INDIA          Q1                   Q4                1.2727273   0.5760630   2.811906
12 months   ki0047075b-MAL-ED         INDIA          Q2                   Q4                1.3037694   0.6707069   2.534363
12 months   ki0047075b-MAL-ED         INDIA          Q3                   Q4                1.3636364   0.6683243   2.782338
12 months   ki1000304b-SAS-CompFeed   INDIA          Q4                   Q4                1.0000000          NA         NA
12 months   ki1000304b-SAS-CompFeed   INDIA          Q1                   Q4                1.7569444          NA         NA
12 months   ki1000304b-SAS-CompFeed   INDIA          Q2                   Q4                1.4793689          NA         NA
12 months   ki1000304b-SAS-CompFeed   INDIA          Q3                   Q4                0.9122596          NA         NA
12 months   ki1017093c-NIH-Crypto     BANGLADESH     Q4                   Q4                1.0000000   1.0000000   1.000000
12 months   ki1017093c-NIH-Crypto     BANGLADESH     Q1                   Q4                1.7910985   1.2142245   2.642043
12 months   ki1017093c-NIH-Crypto     BANGLADESH     Q2                   Q4                1.7577413   1.2002168   2.574247
12 months   ki1017093c-NIH-Crypto     BANGLADESH     Q3                   Q4                1.1696970   0.7589109   1.802835
12 months   ki1113344-GMS-Nepal       NEPAL          Q4                   Q4                1.0000000   1.0000000   1.000000
12 months   ki1113344-GMS-Nepal       NEPAL          Q1                   Q4                1.5397490   1.1040946   2.147304
12 months   ki1113344-GMS-Nepal       NEPAL          Q2                   Q4                1.3777778   0.9164091   2.071424
12 months   ki1113344-GMS-Nepal       NEPAL          Q3                   Q4                1.4782609   0.9955943   2.194925
12 months   ki1126311-ZVITAMBO        ZIMBABWE       Q4                   Q4                1.0000000   1.0000000   1.000000
12 months   ki1126311-ZVITAMBO        ZIMBABWE       Q1                   Q4                1.4301994   0.9434845   2.167996
12 months   ki1126311-ZVITAMBO        ZIMBABWE       Q2                   Q4                1.0095525   0.6140922   1.659680
12 months   ki1126311-ZVITAMBO        ZIMBABWE       Q3                   Q4                1.2581454   1.1263943   1.405307
12 months   ki1135781-COHORTS         INDIA          Q4                   Q4                1.0000000   1.0000000   1.000000
12 months   ki1135781-COHORTS         INDIA          Q1                   Q4                2.6645768   2.0664596   3.435813
12 months   ki1135781-COHORTS         INDIA          Q2                   Q4                1.9747475   1.4848273   2.626317
12 months   ki1135781-COHORTS         INDIA          Q3                   Q4                1.6502689   1.2798860   2.127836
12 months   ki1135781-COHORTS         PHILIPPINES    Q4                   Q4                1.0000000   1.0000000   1.000000
12 months   ki1135781-COHORTS         PHILIPPINES    Q1                   Q4                1.8869565   1.6269039   2.188577
12 months   ki1135781-COHORTS         PHILIPPINES    Q2                   Q4                1.9597701   1.6256592   2.362549
12 months   ki1135781-COHORTS         PHILIPPINES    Q3                   Q4                1.4099737   1.2186566   1.631326
12 months   ki1148112-LCNI-5          MALAWI         Q4                   Q4                1.0000000   1.0000000   1.000000
12 months   ki1148112-LCNI-5          MALAWI         Q1                   Q4                1.5470607   0.9104650   2.628763
12 months   ki1148112-LCNI-5          MALAWI         Q2                   Q4                1.6449145   0.9631044   2.809398
12 months   ki1148112-LCNI-5          MALAWI         Q3                   Q4                1.4605395   0.8214473   2.596850
12 months   kiGH5241-JiVitA-3         BANGLADESH     Q4                   Q4                1.0000000          NA         NA
12 months   kiGH5241-JiVitA-3         BANGLADESH     Q1                   Q4                2.0299807          NA         NA
12 months   kiGH5241-JiVitA-3         BANGLADESH     Q2                   Q4                1.8146187          NA         NA
12 months   kiGH5241-JiVitA-3         BANGLADESH     Q3                   Q4                1.5853546          NA         NA
18 months   ki0047075b-MAL-ED         INDIA          Q4                   Q4                1.0000000   1.0000000   1.000000
18 months   ki0047075b-MAL-ED         INDIA          Q1                   Q4                1.1117647   0.6040885   2.046092
18 months   ki0047075b-MAL-ED         INDIA          Q2                   Q4                1.2654232   0.7870967   2.034434
18 months   ki0047075b-MAL-ED         INDIA          Q3                   Q4                1.1075051   0.6405435   1.914886
18 months   ki0047075b-MAL-ED         SOUTH AFRICA   Q4                   Q4                1.0000000   1.0000000   1.000000
18 months   ki0047075b-MAL-ED         SOUTH AFRICA   Q1                   Q4                0.8133971   0.3304885   2.001930
18 months   ki0047075b-MAL-ED         SOUTH AFRICA   Q2                   Q4                1.1590909   0.5680872   2.364939
18 months   ki0047075b-MAL-ED         SOUTH AFRICA   Q3                   Q4                1.0303030   0.4317070   2.458900
18 months   ki1000304b-SAS-CompFeed   INDIA          Q4                   Q4                1.0000000          NA         NA
18 months   ki1000304b-SAS-CompFeed   INDIA          Q1                   Q4                1.7575458          NA         NA
18 months   ki1000304b-SAS-CompFeed   INDIA          Q2                   Q4                1.3818470          NA         NA
18 months   ki1000304b-SAS-CompFeed   INDIA          Q3                   Q4                0.9030038          NA         NA
18 months   ki1017093c-NIH-Crypto     BANGLADESH     Q4                   Q4                1.0000000   1.0000000   1.000000
18 months   ki1017093c-NIH-Crypto     BANGLADESH     Q1                   Q4                1.9632353   1.3907656   2.771346
18 months   ki1017093c-NIH-Crypto     BANGLADESH     Q2                   Q4                1.7844612   1.2677981   2.511679
18 months   ki1017093c-NIH-Crypto     BANGLADESH     Q3                   Q4                0.9861496   0.6493726   1.497585
18 months   ki1113344-GMS-Nepal       NEPAL          Q4                   Q4                1.0000000   1.0000000   1.000000
18 months   ki1113344-GMS-Nepal       NEPAL          Q1                   Q4                1.3810542   1.0987016   1.735968
18 months   ki1113344-GMS-Nepal       NEPAL          Q2                   Q4                1.3141066   0.9965123   1.732920
18 months   ki1113344-GMS-Nepal       NEPAL          Q3                   Q4                1.3061584   0.9938451   1.716615
18 months   ki1126311-ZVITAMBO        ZIMBABWE       Q4                   Q4                1.0000000   1.0000000   1.000000
18 months   ki1126311-ZVITAMBO        ZIMBABWE       Q1                   Q4                1.3255354   0.9222483   1.905175
18 months   ki1126311-ZVITAMBO        ZIMBABWE       Q2                   Q4                0.9302003   0.5471408   1.581444
18 months   ki1126311-ZVITAMBO        ZIMBABWE       Q3                   Q4                1.2273476   1.0847757   1.388658
18 months   ki1135781-COHORTS         PHILIPPINES    Q4                   Q4                1.0000000   1.0000000   1.000000
18 months   ki1135781-COHORTS         PHILIPPINES    Q1                   Q4                1.6219784   1.4652445   1.795478
18 months   ki1135781-COHORTS         PHILIPPINES    Q2                   Q4                1.4981831   1.3061830   1.718406
18 months   ki1135781-COHORTS         PHILIPPINES    Q3                   Q4                1.3791233   1.2486522   1.523227
18 months   ki1148112-LCNI-5          MALAWI         Q4                   Q4                1.0000000   1.0000000   1.000000
18 months   ki1148112-LCNI-5          MALAWI         Q1                   Q4                1.2625141   0.8637130   1.845453
18 months   ki1148112-LCNI-5          MALAWI         Q2                   Q4                1.3162452   0.8952944   1.935119
18 months   ki1148112-LCNI-5          MALAWI         Q3                   Q4                1.3814536   0.9177831   2.079374
24 months   ki0047075b-MAL-ED         INDIA          Q4                   Q4                1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED         INDIA          Q1                   Q4                1.4538462   0.7477230   2.826807
24 months   ki0047075b-MAL-ED         INDIA          Q2                   Q4                1.4971857   0.8542096   2.624140
24 months   ki0047075b-MAL-ED         INDIA          Q3                   Q4                1.5596817   0.8642078   2.814840
24 months   ki0047075b-MAL-ED         SOUTH AFRICA   Q4                   Q4                1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED         SOUTH AFRICA   Q1                   Q4                0.9760766   0.4274484   2.228867
24 months   ki0047075b-MAL-ED         SOUTH AFRICA   Q2                   Q4                1.0750988   0.5102215   2.265364
24 months   ki0047075b-MAL-ED         SOUTH AFRICA   Q3                   Q4                1.8545455   0.9764444   3.522309
24 months   ki1017093c-NIH-Crypto     BANGLADESH     Q4                   Q4                1.0000000   1.0000000   1.000000
24 months   ki1017093c-NIH-Crypto     BANGLADESH     Q1                   Q4                2.6590909   1.6801905   4.208311
24 months   ki1017093c-NIH-Crypto     BANGLADESH     Q2                   Q4                2.5381553   1.6253158   3.963680
24 months   ki1017093c-NIH-Crypto     BANGLADESH     Q3                   Q4                1.1970939   0.6912728   2.073036
24 months   ki1113344-GMS-Nepal       NEPAL          Q4                   Q4                1.0000000   1.0000000   1.000000
24 months   ki1113344-GMS-Nepal       NEPAL          Q1                   Q4                1.3384615   1.0027912   1.786493
24 months   ki1113344-GMS-Nepal       NEPAL          Q2                   Q4                1.5675676   1.1297748   2.175007
24 months   ki1113344-GMS-Nepal       NEPAL          Q3                   Q4                1.3666667   0.9769568   1.911833
24 months   ki1135781-COHORTS         INDIA          Q4                   Q4                1.0000000   1.0000000   1.000000
24 months   ki1135781-COHORTS         INDIA          Q1                   Q4                2.5672557   2.1269412   3.098723
24 months   ki1135781-COHORTS         INDIA          Q2                   Q4                2.2603012   1.8484406   2.763931
24 months   ki1135781-COHORTS         INDIA          Q3                   Q4                1.7335215   1.4329792   2.097097
24 months   ki1135781-COHORTS         PHILIPPINES    Q4                   Q4                1.0000000   1.0000000   1.000000
24 months   ki1135781-COHORTS         PHILIPPINES    Q1                   Q4                1.7597488   1.5934801   1.943366
24 months   ki1135781-COHORTS         PHILIPPINES    Q2                   Q4                1.6456503   1.4489631   1.869037
24 months   ki1135781-COHORTS         PHILIPPINES    Q3                   Q4                1.4634960   1.3252321   1.616185
24 months   ki1148112-LCNI-5          MALAWI         Q4                   Q4                1.0000000   1.0000000   1.000000
24 months   ki1148112-LCNI-5          MALAWI         Q1                   Q4                1.2129531   0.7744272   1.899798
24 months   ki1148112-LCNI-5          MALAWI         Q2                   Q4                1.4143669   0.8999218   2.222897
24 months   ki1148112-LCNI-5          MALAWI         Q3                   Q4                1.3280731   0.8179329   2.156385
24 months   kiGH5241-JiVitA-3         BANGLADESH     Q4                   Q4                1.0000000          NA         NA
24 months   kiGH5241-JiVitA-3         BANGLADESH     Q1                   Q4                2.0028459          NA         NA
24 months   kiGH5241-JiVitA-3         BANGLADESH     Q2                   Q4                1.8272139          NA         NA
24 months   kiGH5241-JiVitA-3         BANGLADESH     Q3                   Q4                1.5892494          NA         NA


### Parameter: PAR


agecat      studyid                   country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  ------------------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1126311-ZVITAMBO        ZIMBABWE       Q4                   NA                0.0016157   -0.0005722   0.0038037
Birth       ki1135781-COHORTS         INDIA          Q4                   NA                0.0110627   -0.0131653   0.0352907
Birth       ki1135781-COHORTS         PHILIPPINES    Q4                   NA                0.0264809    0.0146736   0.0382881
Birth       kiGH5241-JiVitA-3         BANGLADESH     Q4                   NA                0.1075651           NA          NA
3 months    ki1000304b-SAS-CompFeed   INDIA          Q4                   NA                0.0604965           NA          NA
3 months    ki1017093c-NIH-Crypto     BANGLADESH     Q4                   NA                0.0640266    0.0183629   0.1096903
3 months    ki1113344-GMS-Nepal       NEPAL          Q4                   NA                0.0386728   -0.0086743   0.0860199
3 months    ki1126311-ZVITAMBO        ZIMBABWE       Q4                   NA                0.0051799    0.0016990   0.0086607
3 months    ki1135781-COHORTS         INDIA          Q4                   NA                0.0473040    0.0225790   0.0720291
3 months    ki1135781-COHORTS         PHILIPPINES    Q4                   NA                0.0380264    0.0201516   0.0559013
3 months    kiGH5241-JiVitA-3         BANGLADESH     Q4                   NA                0.1307093           NA          NA
6 months    ki1000304b-SAS-CompFeed   INDIA          Q4                   NA                0.0413051           NA          NA
6 months    ki1017093c-NIH-Crypto     BANGLADESH     Q4                   NA                0.0491684    0.0030335   0.0953034
6 months    ki1113344-GMS-Nepal       NEPAL          Q4                   NA                0.0646849    0.0101470   0.1192229
6 months    ki1126311-ZVITAMBO        ZIMBABWE       Q4                   NA                0.0075445    0.0038585   0.0112305
6 months    ki1135781-COHORTS         INDIA          Q4                   NA                0.0814485    0.0540159   0.1088810
6 months    ki1135781-COHORTS         PHILIPPINES    Q4                   NA                0.0631367    0.0396841   0.0865893
6 months    ki1148112-LCNI-5          MALAWI         Q4                   NA                0.1176865    0.0088607   0.2265122
6 months    kiGH5241-JiVitA-3         BANGLADESH     Q4                   NA                0.1167293           NA          NA
9 months    ki1000304b-SAS-CompFeed   INDIA          Q4                   NA                0.0608071           NA          NA
9 months    ki1017093c-NIH-Crypto     BANGLADESH     Q4                   NA                0.0486211    0.0008658   0.0963765
9 months    ki1113344-GMS-Nepal       NEPAL          Q4                   NA                0.0728630    0.0108128   0.1349131
9 months    ki1126311-ZVITAMBO        ZIMBABWE       Q4                   NA                0.0066227    0.0025534   0.0106919
9 months    ki1135781-COHORTS         INDIA          Q4                   NA                0.0967839    0.0630468   0.1305209
9 months    ki1135781-COHORTS         PHILIPPINES    Q4                   NA                0.0981522    0.0726908   0.1236137
9 months    ki1148112-LCNI-5          MALAWI         Q4                   NA                0.1600625    0.0542269   0.2658980
12 months   ki0047075b-MAL-ED         INDIA          Q4                   NA                0.0562771   -0.0570371   0.1695913
12 months   ki1000304b-SAS-CompFeed   INDIA          Q4                   NA                0.0914943           NA          NA
12 months   ki1017093c-NIH-Crypto     BANGLADESH     Q4                   NA                0.0712252    0.0234682   0.1189821
12 months   ki1113344-GMS-Nepal       NEPAL          Q4                   NA                0.0929084    0.0275516   0.1582653
12 months   ki1126311-ZVITAMBO        ZIMBABWE       Q4                   NA                0.0092593    0.0045315   0.0139872
12 months   ki1135781-COHORTS         INDIA          Q4                   NA                0.1333085    0.0949894   0.1716277
12 months   ki1135781-COHORTS         PHILIPPINES    Q4                   NA                0.1192531    0.0898488   0.1486574
12 months   ki1148112-LCNI-5          MALAWI         Q4                   NA                0.1351392    0.0080640   0.2622144
12 months   kiGH5241-JiVitA-3         BANGLADESH     Q4                   NA                0.1719058           NA          NA
18 months   ki0047075b-MAL-ED         INDIA          Q4                   NA                0.0497835   -0.0740905   0.1736576
18 months   ki0047075b-MAL-ED         SOUTH AFRICA   Q4                   NA                0.0025575   -0.1231334   0.1282485
18 months   ki1000304b-SAS-CompFeed   INDIA          Q4                   NA                0.0982051           NA          NA
18 months   ki1017093c-NIH-Crypto     BANGLADESH     Q4                   NA                0.0877787    0.0342165   0.1413409
18 months   ki1113344-GMS-Nepal       NEPAL          Q4                   NA                0.1120288    0.0379604   0.1860972
18 months   ki1126311-ZVITAMBO        ZIMBABWE       Q4                   NA                0.0177976    0.0062635   0.0293317
18 months   ki1135781-COHORTS         PHILIPPINES    Q4                   NA                0.1491111    0.1167778   0.1814445
18 months   ki1148112-LCNI-5          MALAWI         Q4                   NA                0.0996100   -0.0251079   0.2243279
24 months   ki0047075b-MAL-ED         INDIA          Q4                   NA                0.1071429   -0.0123971   0.2266828
24 months   ki0047075b-MAL-ED         SOUTH AFRICA   Q4                   NA                0.0500970   -0.0776070   0.1778009
24 months   ki1017093c-NIH-Crypto     BANGLADESH     Q4                   NA                0.1130185    0.0612255   0.1648114
24 months   ki1113344-GMS-Nepal       NEPAL          Q4                   NA                0.1029636    0.0260513   0.1798759
24 months   ki1135781-COHORTS         INDIA          Q4                   NA                0.1979830    0.1588362   0.2371297
24 months   ki1135781-COHORTS         PHILIPPINES    Q4                   NA                0.1823722    0.1499445   0.2148000
24 months   ki1148112-LCNI-5          MALAWI         Q4                   NA                0.0946136   -0.0458569   0.2350842
24 months   kiGH5241-JiVitA-3         BANGLADESH     Q4                   NA                0.2094128           NA          NA


### Parameter: PAF


agecat      studyid                   country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  ------------------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1126311-ZVITAMBO        ZIMBABWE       Q4                   NA                0.0156909   -0.0057768   0.0367003
Birth       ki1135781-COHORTS         INDIA          Q4                   NA                0.1161159   -0.1777657   0.3366668
Birth       ki1135781-COHORTS         PHILIPPINES    Q4                   NA                0.4397660    0.2187758   0.5982432
Birth       kiGH5241-JiVitA-3         BANGLADESH     Q4                   NA                0.3172458           NA          NA
3 months    ki1000304b-SAS-CompFeed   INDIA          Q4                   NA                0.2275557           NA          NA
3 months    ki1017093c-NIH-Crypto     BANGLADESH     Q4                   NA                0.2987910    0.0531787   0.4806897
3 months    ki1113344-GMS-Nepal       NEPAL          Q4                   NA                0.2624224   -0.1353717   0.5208434
3 months    ki1126311-ZVITAMBO        ZIMBABWE       Q4                   NA                0.0293953    0.0094656   0.0489240
3 months    ki1135781-COHORTS         INDIA          Q4                   NA                0.3754759    0.1526604   0.5397001
3 months    ki1135781-COHORTS         PHILIPPINES    Q4                   NA                0.3084114    0.1504248   0.4370189
3 months    kiGH5241-JiVitA-3         BANGLADESH     Q4                   NA                0.4757144           NA          NA
6 months    ki1000304b-SAS-CompFeed   INDIA          Q4                   NA                0.1521964           NA          NA
6 months    ki1017093c-NIH-Crypto     BANGLADESH     Q4                   NA                0.2343696   -0.0183695   0.4243839
6 months    ki1113344-GMS-Nepal       NEPAL          Q4                   NA                0.3054869   -0.0021242   0.5186740
6 months    ki1126311-ZVITAMBO        ZIMBABWE       Q4                   NA                0.0458412    0.0232525   0.0679075
6 months    ki1135781-COHORTS         INDIA          Q4                   NA                0.4700255    0.2953820   0.6013826
6 months    ki1135781-COHORTS         PHILIPPINES    Q4                   NA                0.2986762    0.1801255   0.4000850
6 months    ki1148112-LCNI-5          MALAWI         Q4                   NA                0.3239370   -0.0524446   0.5657147
6 months    kiGH5241-JiVitA-3         BANGLADESH     Q4                   NA                0.4502175           NA          NA
9 months    ki1000304b-SAS-CompFeed   INDIA          Q4                   NA                0.1618837           NA          NA
9 months    ki1017093c-NIH-Crypto     BANGLADESH     Q4                   NA                0.2093081   -0.0241733   0.3895626
9 months    ki1113344-GMS-Nepal       NEPAL          Q4                   NA                0.2585460    0.0037113   0.4481980
9 months    ki1126311-ZVITAMBO        ZIMBABWE       Q4                   NA                0.0340652    0.0129381   0.0547402
9 months    ki1135781-COHORTS         INDIA          Q4                   NA                0.4025184    0.2487963   0.5247837
9 months    ki1135781-COHORTS         PHILIPPINES    Q4                   NA                0.3555939    0.2580123   0.4403422
9 months    ki1148112-LCNI-5          MALAWI         Q4                   NA                0.4846336    0.0442685   0.7220950
12 months   ki0047075b-MAL-ED         INDIA          Q4                   NA                0.1768707   -0.2677383   0.4655508
12 months   ki1000304b-SAS-CompFeed   INDIA          Q4                   NA                0.2082633           NA          NA
12 months   ki1017093c-NIH-Crypto     BANGLADESH     Q4                   NA                0.2940642    0.0693260   0.4645328
12 months   ki1113344-GMS-Nepal       NEPAL          Q4                   NA                0.2709424    0.0539053   0.4381905
12 months   ki1126311-ZVITAMBO        ZIMBABWE       Q4                   NA                0.0382101    0.0185276   0.0574979
12 months   ki1135781-COHORTS         INDIA          Q4                   NA                0.4071407    0.2802068   0.5116901
12 months   ki1135781-COHORTS         PHILIPPINES    Q4                   NA                0.3065255    0.2268729   0.3779718
12 months   ki1148112-LCNI-5          MALAWI         Q4                   NA                0.3456660   -0.0748446   0.6016605
12 months   kiGH5241-JiVitA-3         BANGLADESH     Q4                   NA                0.4352013           NA          NA
18 months   ki0047075b-MAL-ED         INDIA          Q4                   NA                0.1095238   -0.2098104   0.3445685
18 months   ki0047075b-MAL-ED         SOUTH AFRICA   Q4                   NA                0.0078431   -0.4631986   0.3272442
18 months   ki1000304b-SAS-CompFeed   INDIA          Q4                   NA                0.1882663           NA          NA
18 months   ki1017093c-NIH-Crypto     BANGLADESH     Q4                   NA                0.2913701    0.0909696   0.4475912
18 months   ki1113344-GMS-Nepal       NEPAL          Q4                   NA                0.2106295    0.0574031   0.3389478
18 months   ki1126311-ZVITAMBO        ZIMBABWE       Q4                   NA                0.0378314    0.0129430   0.0620922
18 months   ki1135781-COHORTS         PHILIPPINES    Q4                   NA                0.2520866    0.1945604   0.3055042
18 months   ki1148112-LCNI-5          MALAWI         Q4                   NA                0.2174413   -0.1084236   0.4475054
24 months   ki0047075b-MAL-ED         INDIA          Q4                   NA                0.2571429   -0.0934570   0.4953284
24 months   ki0047075b-MAL-ED         SOUTH AFRICA   Q4                   NA                0.1340830   -0.2850876   0.4165284
24 months   ki1017093c-NIH-Crypto     BANGLADESH     Q4                   NA                0.4400871    0.2065435   0.6048902
24 months   ki1113344-GMS-Nepal       NEPAL          Q4                   NA                0.2299366    0.0370589   0.3841808
24 months   ki1135781-COHORTS         INDIA          Q4                   NA                0.4295857    0.3380962   0.5084293
24 months   ki1135781-COHORTS         PHILIPPINES    Q4                   NA                0.2934697    0.2381374   0.3447833
24 months   ki1148112-LCNI-5          MALAWI         Q4                   NA                0.2169654   -0.1817203   0.4811436
24 months   kiGH5241-JiVitA-3         BANGLADESH     Q4                   NA                0.4365061           NA          NA
