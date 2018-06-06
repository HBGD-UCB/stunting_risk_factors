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
Birth       ki0047075b-MAL-ED          BANGLADESH                     Q4      144      52      49      3
Birth       ki0047075b-MAL-ED          BANGLADESH                     Q1      144      29      28      1
Birth       ki0047075b-MAL-ED          BANGLADESH                     Q2      144       9       9      0
Birth       ki0047075b-MAL-ED          BANGLADESH                     Q3      144      54      52      2
Birth       ki0047075b-MAL-ED          INDIA                          Q4      123      38      38      0
Birth       ki0047075b-MAL-ED          INDIA                          Q1      123      21      20      1
Birth       ki0047075b-MAL-ED          INDIA                          Q2      123      37      36      1
Birth       ki0047075b-MAL-ED          INDIA                          Q3      123      27      26      1
Birth       ki0047075b-MAL-ED          NEPAL                          Q4       67      27      27      0
Birth       ki0047075b-MAL-ED          NEPAL                          Q1       67      18      17      1
Birth       ki0047075b-MAL-ED          NEPAL                          Q2       67      17      14      3
Birth       ki0047075b-MAL-ED          NEPAL                          Q3       67       5       5      0
Birth       ki0047075b-MAL-ED          PERU                           Q4      236     116     113      3
Birth       ki0047075b-MAL-ED          PERU                           Q1      236      47      45      2
Birth       ki0047075b-MAL-ED          PERU                           Q2      236      62      61      1
Birth       ki0047075b-MAL-ED          PERU                           Q3      236      11      11      0
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Q4       91      35      35      0
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Q1       91      15      15      0
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Q2       91      22      22      0
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Q3       91      19      19      0
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4      101       3       3      0
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1      101      20      19      1
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2      101      16      14      2
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3      101      62      59      3
Birth       ki1000304b-SAS-CompFeed    INDIA                          Q4       70      11      11      0
Birth       ki1000304b-SAS-CompFeed    INDIA                          Q1       70      11      10      1
Birth       ki1000304b-SAS-CompFeed    INDIA                          Q2       70      26      25      1
Birth       ki1000304b-SAS-CompFeed    INDIA                          Q3       70      22      20      2
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Q4       27       5       5      0
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Q1       27       4       4      0
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Q2       27      11      11      0
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Q3       27       7       6      1
Birth       ki1119695-PROBIT           BELARUS                        Q4     6530     978     978      0
Birth       ki1119695-PROBIT           BELARUS                        Q1     6530      11      11      0
Birth       ki1119695-PROBIT           BELARUS                        Q2     6530     119     119      0
Birth       ki1119695-PROBIT           BELARUS                        Q3     6530    5422    5417      5
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Q4    13460   11504   11154    350
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Q1    13460      82      77      5
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Q2    13460      97      93      4
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Q3    13460    1777    1708     69
Birth       ki1135781-COHORTS          GUATEMALA                      Q4      381       3       3      0
Birth       ki1135781-COHORTS          GUATEMALA                      Q1      381     280     277      3
Birth       ki1135781-COHORTS          GUATEMALA                      Q2      381      97      96      1
Birth       ki1135781-COHORTS          GUATEMALA                      Q3      381       1       1      0
Birth       ki1135781-COHORTS          INDIA                          Q4     1354     380     371      9
Birth       ki1135781-COHORTS          INDIA                          Q1     1354     242     237      5
Birth       ki1135781-COHORTS          INDIA                          Q2     1354     197     194      3
Birth       ki1135781-COHORTS          INDIA                          Q3     1354     535     524     11
Birth       ki1135781-COHORTS          PHILIPPINES                    Q4     2873     830     825      5
Birth       ki1135781-COHORTS          PHILIPPINES                    Q1     2873     623     608     15
Birth       ki1135781-COHORTS          PHILIPPINES                    Q2     2873     204     202      2
Birth       ki1135781-COHORTS          PHILIPPINES                    Q3     2873    1216    1195     21
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Q4     9373     743     709     34
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Q1     9373    4926    4348    578
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Q2     9373    1751    1542    209
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Q3     9373    1953    1743    210
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Q4      117       2       1      1
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Q1      117      83      77      6
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Q2      117       9       6      3
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Q3      117      23      21      2
3 months    ki0047075b-MAL-ED          BANGLADESH                     Q4      140      51      50      1
3 months    ki0047075b-MAL-ED          BANGLADESH                     Q1      140      31      30      1
3 months    ki0047075b-MAL-ED          BANGLADESH                     Q2      140       8       8      0
3 months    ki0047075b-MAL-ED          BANGLADESH                     Q3      140      50      50      0
3 months    ki0047075b-MAL-ED          INDIA                          Q4      138      42      42      0
3 months    ki0047075b-MAL-ED          INDIA                          Q1      138      22      21      1
3 months    ki0047075b-MAL-ED          INDIA                          Q2      138      44      44      0
3 months    ki0047075b-MAL-ED          INDIA                          Q3      138      30      29      1
3 months    ki0047075b-MAL-ED          NEPAL                          Q4       95      40      40      0
3 months    ki0047075b-MAL-ED          NEPAL                          Q1       95      23      23      0
3 months    ki0047075b-MAL-ED          NEPAL                          Q2       95      25      24      1
3 months    ki0047075b-MAL-ED          NEPAL                          Q3       95       7       7      0
3 months    ki0047075b-MAL-ED          PERU                           Q4      239     115     107      8
3 months    ki0047075b-MAL-ED          PERU                           Q1      239      47      42      5
3 months    ki0047075b-MAL-ED          PERU                           Q2      239      65      61      4
3 months    ki0047075b-MAL-ED          PERU                           Q3      239      12      11      1
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q4      100      39      38      1
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q1      100      19      19      0
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q2      100      26      25      1
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q3      100      16      16      0
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4      206       8       8      0
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1      206      45      41      4
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2      206      32      31      1
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3      206     121     117      4
3 months    ki1000304b-SAS-CompFeed    INDIA                          Q4      410     112     109      3
3 months    ki1000304b-SAS-CompFeed    INDIA                          Q1      410      94      84     10
3 months    ki1000304b-SAS-CompFeed    INDIA                          Q2      410     100      89     11
3 months    ki1000304b-SAS-CompFeed    INDIA                          Q3      410     104      99      5
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q4       97       3       3      0
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q1       97      35      29      6
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q2       97      20      16      4
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q3       97      39      36      3
3 months    ki1017093b-PROVIDE         BANGLADESH                     Q4      645      17      15      2
3 months    ki1017093b-PROVIDE         BANGLADESH                     Q1      645     291     287      4
3 months    ki1017093b-PROVIDE         BANGLADESH                     Q2      645     254     251      3
3 months    ki1017093b-PROVIDE         BANGLADESH                     Q3      645      83      82      1
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q4      728     193     188      5
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q1      728     169     158     11
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q2      728     188     182      6
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q3      728     178     167     11
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q4     2281     212     211      1
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q1     2281      12      12      0
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q2     2281    1965    1943     22
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q3     2281      92      92      0
3 months    ki1113344-GMS-Nepal        NEPAL                          Q4      570     138     134      4
3 months    ki1113344-GMS-Nepal        NEPAL                          Q1      570     248     234     14
3 months    ki1113344-GMS-Nepal        NEPAL                          Q2      570      90      87      3
3 months    ki1113344-GMS-Nepal        NEPAL                          Q3      570      94      93      1
3 months    ki1119695-PROBIT           BELARUS                        Q4     7756    1231    1225      6
3 months    ki1119695-PROBIT           BELARUS                        Q1     7756      12      12      0
3 months    ki1119695-PROBIT           BELARUS                        Q2     7756     143     141      2
3 months    ki1119695-PROBIT           BELARUS                        Q3     7756    6370    6316     54
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       Q4     8921    7595    7171    424
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       Q1     8921      56      51      5
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       Q2     8921      68      64      4
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       Q3     8921    1202    1130     72
3 months    ki1135781-COHORTS          GUATEMALA                      Q4      442       3       3      0
3 months    ki1135781-COHORTS          GUATEMALA                      Q1      442     332     300     32
3 months    ki1135781-COHORTS          GUATEMALA                      Q2      442     106      98      8
3 months    ki1135781-COHORTS          GUATEMALA                      Q3      442       1       1      0
3 months    ki1135781-COHORTS          INDIA                          Q4     1397     394     389      5
3 months    ki1135781-COHORTS          INDIA                          Q1     1397     249     240      9
3 months    ki1135781-COHORTS          INDIA                          Q2     1397     200     196      4
3 months    ki1135781-COHORTS          INDIA                          Q3     1397     554     537     17
3 months    ki1135781-COHORTS          PHILIPPINES                    Q4     2717     774     759     15
3 months    ki1135781-COHORTS          PHILIPPINES                    Q1     2717     591     565     26
3 months    ki1135781-COHORTS          PHILIPPINES                    Q2     2717     190     182      8
3 months    ki1135781-COHORTS          PHILIPPINES                    Q3     2717    1162    1140     22
3 months    kiGH5241-JiVitA-3          BANGLADESH                     Q4    11872    1312    1278     34
3 months    kiGH5241-JiVitA-3          BANGLADESH                     Q1    11872    5703    5163    540
3 months    kiGH5241-JiVitA-3          BANGLADESH                     Q2    11872    2167    1971    196
3 months    kiGH5241-JiVitA-3          BANGLADESH                     Q3    11872    2690    2483    207
3 months    kiGH5241-JiVitA-4          BANGLADESH                     Q4      491       8       8      0
3 months    kiGH5241-JiVitA-4          BANGLADESH                     Q1      491     356     336     20
3 months    kiGH5241-JiVitA-4          BANGLADESH                     Q2      491      45      40      5
3 months    kiGH5241-JiVitA-4          BANGLADESH                     Q3      491      82      78      4
6 months    ki0047075b-MAL-ED          BANGLADESH                     Q4      132      50      49      1
6 months    ki0047075b-MAL-ED          BANGLADESH                     Q1      132      29      27      2
6 months    ki0047075b-MAL-ED          BANGLADESH                     Q2      132       7       7      0
6 months    ki0047075b-MAL-ED          BANGLADESH                     Q3      132      46      45      1
6 months    ki0047075b-MAL-ED          INDIA                          Q4      138      43      43      0
6 months    ki0047075b-MAL-ED          INDIA                          Q1      138      21      20      1
6 months    ki0047075b-MAL-ED          INDIA                          Q2      138      44      43      1
6 months    ki0047075b-MAL-ED          INDIA                          Q3      138      30      29      1
6 months    ki0047075b-MAL-ED          NEPAL                          Q4       95      40      40      0
6 months    ki0047075b-MAL-ED          NEPAL                          Q1       95      23      23      0
6 months    ki0047075b-MAL-ED          NEPAL                          Q2       95      25      24      1
6 months    ki0047075b-MAL-ED          NEPAL                          Q3       95       7       7      0
6 months    ki0047075b-MAL-ED          PERU                           Q4      224     107     104      3
6 months    ki0047075b-MAL-ED          PERU                           Q1      224      44      41      3
6 months    ki0047075b-MAL-ED          PERU                           Q2      224      62      59      3
6 months    ki0047075b-MAL-ED          PERU                           Q3      224      11      11      0
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q4       92      33      33      0
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q1       92      18      18      0
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q2       92      25      25      0
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q3       92      16      16      0
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4      201       8       8      0
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1      201      42      40      2
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2      201      32      30      2
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3      201     119     111      8
6 months    ki1000304b-SAS-CompFeed    INDIA                          Q4      409     113     106      7
6 months    ki1000304b-SAS-CompFeed    INDIA                          Q1      409      88      75     13
6 months    ki1000304b-SAS-CompFeed    INDIA                          Q2      409     103      93     10
6 months    ki1000304b-SAS-CompFeed    INDIA                          Q3      409     105      98      7
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q4       96       3       3      0
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q1       96      33      29      4
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q2       96      21      15      6
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q3       96      39      34      5
6 months    ki1017093b-PROVIDE         BANGLADESH                     Q4      583      16      15      1
6 months    ki1017093b-PROVIDE         BANGLADESH                     Q1      583     261     252      9
6 months    ki1017093b-PROVIDE         BANGLADESH                     Q2      583     231     227      4
6 months    ki1017093b-PROVIDE         BANGLADESH                     Q3      583      75      75      0
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q4      715     193     188      5
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q1      715     163     156      7
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q2      715     184     182      2
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q3      715     175     166      9
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q4     2018     178     175      3
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q1     2018      10      10      0
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q2     2018    1752    1737     15
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q3     2018      78      77      1
6 months    ki1113344-GMS-Nepal        NEPAL                          Q4      562     136     134      2
6 months    ki1113344-GMS-Nepal        NEPAL                          Q1      562     243     227     16
6 months    ki1113344-GMS-Nepal        NEPAL                          Q2      562      91      89      2
6 months    ki1113344-GMS-Nepal        NEPAL                          Q3      562      92      92      0
6 months    ki1119695-PROBIT           BELARUS                        Q4     7377    1170    1158     12
6 months    ki1119695-PROBIT           BELARUS                        Q1     7377      12      12      0
6 months    ki1119695-PROBIT           BELARUS                        Q2     7377     132     131      1
6 months    ki1119695-PROBIT           BELARUS                        Q3     7377    6063    5941    122
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Q4     8063    6852    6575    277
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Q1     8063      57      55      2
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Q2     8063      64      62      2
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Q3     8063    1090    1041     49
6 months    ki1135781-COHORTS          GUATEMALA                      Q4      430       5       4      1
6 months    ki1135781-COHORTS          GUATEMALA                      Q1      430     321     272     49
6 months    ki1135781-COHORTS          GUATEMALA                      Q2      430     103      87     16
6 months    ki1135781-COHORTS          GUATEMALA                      Q3      430       1       1      0
6 months    ki1135781-COHORTS          INDIA                          Q4     1385     392     387      5
6 months    ki1135781-COHORTS          INDIA                          Q1     1385     247     231     16
6 months    ki1135781-COHORTS          INDIA                          Q2     1385     203     197      6
6 months    ki1135781-COHORTS          INDIA                          Q3     1385     543     526     17
6 months    ki1135781-COHORTS          PHILIPPINES                    Q4     2564     715     690     25
6 months    ki1135781-COHORTS          PHILIPPINES                    Q1     2564     567     528     39
6 months    ki1135781-COHORTS          PHILIPPINES                    Q2     2564     179     171      8
6 months    ki1135781-COHORTS          PHILIPPINES                    Q3     2564    1103    1051     52
6 months    ki1148112-LCNI-5           MALAWI                         Q4      812      57      56      1
6 months    ki1148112-LCNI-5           MALAWI                         Q1      812     372     338     34
6 months    ki1148112-LCNI-5           MALAWI                         Q2      812     257     240     17
6 months    ki1148112-LCNI-5           MALAWI                         Q3      812     126     113     13
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Q4     7980     912     886     26
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Q1     7980    3690    3404    286
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Q2     7980    1470    1364    106
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Q3     7980    1908    1807    101
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Q4      692      13      13      0
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Q1      692     493     474     19
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Q2      692      69      59     10
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Q3      692     117     114      3
9 months    ki0047075b-MAL-ED          BANGLADESH                     Q4      128      47      46      1
9 months    ki0047075b-MAL-ED          BANGLADESH                     Q1      128      30      28      2
9 months    ki0047075b-MAL-ED          BANGLADESH                     Q2      128       6       6      0
9 months    ki0047075b-MAL-ED          BANGLADESH                     Q3      128      45      44      1
9 months    ki0047075b-MAL-ED          INDIA                          Q4      135      43      42      1
9 months    ki0047075b-MAL-ED          INDIA                          Q1      135      21      21      0
9 months    ki0047075b-MAL-ED          INDIA                          Q2      135      41      40      1
9 months    ki0047075b-MAL-ED          INDIA                          Q3      135      30      29      1
9 months    ki0047075b-MAL-ED          NEPAL                          Q4       92      39      39      0
9 months    ki0047075b-MAL-ED          NEPAL                          Q1       92      23      23      0
9 months    ki0047075b-MAL-ED          NEPAL                          Q2       92      23      23      0
9 months    ki0047075b-MAL-ED          NEPAL                          Q3       92       7       7      0
9 months    ki0047075b-MAL-ED          PERU                           Q4      210      98      96      2
9 months    ki0047075b-MAL-ED          PERU                           Q1      210      43      42      1
9 months    ki0047075b-MAL-ED          PERU                           Q2      210      59      56      3
9 months    ki0047075b-MAL-ED          PERU                           Q3      210      10      10      0
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q4       92      34      33      1
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q1       92      19      18      1
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q2       92      24      23      1
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q3       92      15      15      0
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4      196       7       7      0
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1      196      42      38      4
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2      196      29      27      2
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3      196     118     103     15
9 months    ki1000304b-SAS-CompFeed    INDIA                          Q4      402     108     100      8
9 months    ki1000304b-SAS-CompFeed    INDIA                          Q1      402      90      73     17
9 months    ki1000304b-SAS-CompFeed    INDIA                          Q2      402     103      84     19
9 months    ki1000304b-SAS-CompFeed    INDIA                          Q3      402     101      95      6
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q4       85       2       1      1
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q1       85      31      25      6
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q2       85      18      12      6
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q3       85      34      27      7
9 months    ki1017093b-PROVIDE         BANGLADESH                     Q4      605      17      17      0
9 months    ki1017093b-PROVIDE         BANGLADESH                     Q1      605     269     255     14
9 months    ki1017093b-PROVIDE         BANGLADESH                     Q2      605     240     230     10
9 months    ki1017093b-PROVIDE         BANGLADESH                     Q3      605      79      78      1
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q4      706     196     189      7
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q1      706     162     153      9
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q2      706     181     177      4
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q3      706     167     159      8
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q4     1779     155     154      1
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q1     1779       6       6      0
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q2     1779    1544    1512     32
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q3     1779      74      73      1
9 months    ki1113344-GMS-Nepal        NEPAL                          Q4      550     134     128      6
9 months    ki1113344-GMS-Nepal        NEPAL                          Q1      550     235     208     27
9 months    ki1113344-GMS-Nepal        NEPAL                          Q2      550      87      86      1
9 months    ki1113344-GMS-Nepal        NEPAL                          Q3      550      94      93      1
9 months    ki1119695-PROBIT           BELARUS                        Q4     7212    1143    1136      7
9 months    ki1119695-PROBIT           BELARUS                        Q1     7212      11      11      0
9 months    ki1119695-PROBIT           BELARUS                        Q2     7212     128     126      2
9 months    ki1119695-PROBIT           BELARUS                        Q3     7212    5930    5863     67
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       Q4     7443    6289    6012    277
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       Q1     7443      51      45      6
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       Q2     7443      55      52      3
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       Q3     7443    1048     988     60
9 months    ki1135781-COHORTS          GUATEMALA                      Q4      425       4       3      1
9 months    ki1135781-COHORTS          GUATEMALA                      Q1      425     316     232     84
9 months    ki1135781-COHORTS          GUATEMALA                      Q2      425     104      82     22
9 months    ki1135781-COHORTS          GUATEMALA                      Q3      425       1       1      0
9 months    ki1135781-COHORTS          INDIA                          Q4     1256     355     349      6
9 months    ki1135781-COHORTS          INDIA                          Q1     1256     224     190     34
9 months    ki1135781-COHORTS          INDIA                          Q2     1256     190     179     11
9 months    ki1135781-COHORTS          INDIA                          Q3     1256     487     451     36
9 months    ki1135781-COHORTS          PHILIPPINES                    Q4     2565     714     680     34
9 months    ki1135781-COHORTS          PHILIPPINES                    Q1     2565     567     506     61
9 months    ki1135781-COHORTS          PHILIPPINES                    Q2     2565     187     174     13
9 months    ki1135781-COHORTS          PHILIPPINES                    Q3     2565    1097    1019     78
9 months    ki1148112-LCNI-5           MALAWI                         Q4      654      47      46      1
9 months    ki1148112-LCNI-5           MALAWI                         Q1      654     305     287     18
9 months    ki1148112-LCNI-5           MALAWI                         Q2      654     204     187     17
9 months    ki1148112-LCNI-5           MALAWI                         Q3      654      98      88     10
9 months    kiGH5241-JiVitA-4          BANGLADESH                     Q4      704      11      10      1
9 months    kiGH5241-JiVitA-4          BANGLADESH                     Q1      704     510     481     29
9 months    kiGH5241-JiVitA-4          BANGLADESH                     Q2      704      63      56      7
9 months    kiGH5241-JiVitA-4          BANGLADESH                     Q3      704     120     115      5
12 months   ki0047075b-MAL-ED          BANGLADESH                     Q4      127      47      46      1
12 months   ki0047075b-MAL-ED          BANGLADESH                     Q1      127      29      25      4
12 months   ki0047075b-MAL-ED          BANGLADESH                     Q2      127       6       6      0
12 months   ki0047075b-MAL-ED          BANGLADESH                     Q3      127      45      43      2
12 months   ki0047075b-MAL-ED          INDIA                          Q4      132      42      41      1
12 months   ki0047075b-MAL-ED          INDIA                          Q1      132      21      20      1
12 months   ki0047075b-MAL-ED          INDIA                          Q2      132      41      39      2
12 months   ki0047075b-MAL-ED          INDIA                          Q3      132      28      25      3
12 months   ki0047075b-MAL-ED          NEPAL                          Q4       92      39      39      0
12 months   ki0047075b-MAL-ED          NEPAL                          Q1       92      23      23      0
12 months   ki0047075b-MAL-ED          NEPAL                          Q2       92      23      22      1
12 months   ki0047075b-MAL-ED          NEPAL                          Q3       92       7       7      0
12 months   ki0047075b-MAL-ED          PERU                           Q4      201      94      91      3
12 months   ki0047075b-MAL-ED          PERU                           Q1      201      40      39      1
12 months   ki0047075b-MAL-ED          PERU                           Q2      201      57      52      5
12 months   ki0047075b-MAL-ED          PERU                           Q3      201      10      10      0
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q4       93      35      33      2
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q1       93      19      19      0
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q2       93      24      24      0
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q3       93      15      13      2
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4      190       7       4      3
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1      190      40      34      6
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2      190      28      25      3
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3      190     115     100     15
12 months   ki1000304b-SAS-CompFeed    INDIA                          Q4      412     115      99     16
12 months   ki1000304b-SAS-CompFeed    INDIA                          Q1      412      90      70     20
12 months   ki1000304b-SAS-CompFeed    INDIA                          Q2      412     103      85     18
12 months   ki1000304b-SAS-CompFeed    INDIA                          Q3      412     104      97      7
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q4       92       3       2      1
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q1       92      32      20     12
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q2       92      19       9     10
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q3       92      38      20     18
12 months   ki1017093b-PROVIDE         BANGLADESH                     Q4      600      17      17      0
12 months   ki1017093b-PROVIDE         BANGLADESH                     Q1      600     263     239     24
12 months   ki1017093b-PROVIDE         BANGLADESH                     Q2      600     241     232      9
12 months   ki1017093b-PROVIDE         BANGLADESH                     Q3      600      79      76      3
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q4      706     193     180     13
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q1      706     160     150     10
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q2      706     183     176      7
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q3      706     170     159     11
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q4     1439     135     132      3
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q1     1439       7       7      0
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q2     1439    1242    1212     30
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q3     1439      55      55      0
12 months   ki1113344-GMS-Nepal        NEPAL                          Q4      557     136     132      4
12 months   ki1113344-GMS-Nepal        NEPAL                          Q1      557     239     208     31
12 months   ki1113344-GMS-Nepal        NEPAL                          Q2      557      90      80     10
12 months   ki1113344-GMS-Nepal        NEPAL                          Q3      557      92      86      6
12 months   ki1119695-PROBIT           BELARUS                        Q4     7450    1186    1182      4
12 months   ki1119695-PROBIT           BELARUS                        Q1     7450      10      10      0
12 months   ki1119695-PROBIT           BELARUS                        Q2     7450     139     137      2
12 months   ki1119695-PROBIT           BELARUS                        Q3     7450    6115    6060     55
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       Q4     6549    5522    5181    341
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       Q1     6549      45      39      6
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       Q2     6549      51      45      6
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       Q3     6549     931     853     78
12 months   ki1135781-COHORTS          GUATEMALA                      Q4      489       4       3      1
12 months   ki1135781-COHORTS          GUATEMALA                      Q1      489     359     222    137
12 months   ki1135781-COHORTS          GUATEMALA                      Q2      489     125      95     30
12 months   ki1135781-COHORTS          GUATEMALA                      Q3      489       1       1      0
12 months   ki1135781-COHORTS          INDIA                          Q4     1185     340     328     12
12 months   ki1135781-COHORTS          INDIA                          Q1     1185     203     162     41
12 months   ki1135781-COHORTS          INDIA                          Q2     1185     180     164     16
12 months   ki1135781-COHORTS          INDIA                          Q3     1185     462     424     38
12 months   ki1135781-COHORTS          PHILIPPINES                    Q4     2447     682     631     51
12 months   ki1135781-COHORTS          PHILIPPINES                    Q1     2447     550     447    103
12 months   ki1135781-COHORTS          PHILIPPINES                    Q2     2447     174     149     25
12 months   ki1135781-COHORTS          PHILIPPINES                    Q3     2447    1041     895    146
12 months   ki1148112-LCNI-5           MALAWI                         Q4      619      43      41      2
12 months   ki1148112-LCNI-5           MALAWI                         Q1      619     283     255     28
12 months   ki1148112-LCNI-5           MALAWI                         Q2      619     202     178     24
12 months   ki1148112-LCNI-5           MALAWI                         Q3      619      91      79     12
12 months   kiGH5241-JiVitA-3          BANGLADESH                     Q4     6924     762     724     38
12 months   kiGH5241-JiVitA-3          BANGLADESH                     Q1     6924    3226    2785    441
12 months   kiGH5241-JiVitA-3          BANGLADESH                     Q2     6924    1282    1132    150
12 months   kiGH5241-JiVitA-3          BANGLADESH                     Q3     6924    1654    1498    156
12 months   kiGH5241-JiVitA-4          BANGLADESH                     Q4      707      11      10      1
12 months   kiGH5241-JiVitA-4          BANGLADESH                     Q1      707     507     476     31
12 months   kiGH5241-JiVitA-4          BANGLADESH                     Q2      707      66      56     10
12 months   kiGH5241-JiVitA-4          BANGLADESH                     Q3      707     123     114      9
18 months   ki0047075b-MAL-ED          BANGLADESH                     Q4      121      42      42      0
18 months   ki0047075b-MAL-ED          BANGLADESH                     Q1      121      30      26      4
18 months   ki0047075b-MAL-ED          BANGLADESH                     Q2      121       6       6      0
18 months   ki0047075b-MAL-ED          BANGLADESH                     Q3      121      43      35      8
18 months   ki0047075b-MAL-ED          INDIA                          Q4      132      42      38      4
18 months   ki0047075b-MAL-ED          INDIA                          Q1      132      20      18      2
18 months   ki0047075b-MAL-ED          INDIA                          Q2      132      41      35      6
18 months   ki0047075b-MAL-ED          INDIA                          Q3      132      29      25      4
18 months   ki0047075b-MAL-ED          NEPAL                          Q4       92      39      39      0
18 months   ki0047075b-MAL-ED          NEPAL                          Q1       92      23      22      1
18 months   ki0047075b-MAL-ED          NEPAL                          Q2       92      23      21      2
18 months   ki0047075b-MAL-ED          NEPAL                          Q3       92       7       7      0
18 months   ki0047075b-MAL-ED          PERU                           Q4      180      87      80      7
18 months   ki0047075b-MAL-ED          PERU                           Q1      180      35      31      4
18 months   ki0047075b-MAL-ED          PERU                           Q2      180      51      47      4
18 months   ki0047075b-MAL-ED          PERU                           Q3      180       7       7      0
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q4       92      34      32      2
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q1       92      19      18      1
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q2       92      24      21      3
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q3       92      15      13      2
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4      184       6       3      3
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1      184      39      28     11
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2      184      27      19      8
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3      184     112      81     31
18 months   ki1000304b-SAS-CompFeed    INDIA                          Q4      393     111      96     15
18 months   ki1000304b-SAS-CompFeed    INDIA                          Q1      393      86      51     35
18 months   ki1000304b-SAS-CompFeed    INDIA                          Q2      393      94      71     23
18 months   ki1000304b-SAS-CompFeed    INDIA                          Q3      393     102      93      9
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q4       84       3       2      1
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q1       84      29      17     12
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q2       84      18       7     11
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q3       84      34      21     13
18 months   ki1017093b-PROVIDE         BANGLADESH                     Q4      552      16      16      0
18 months   ki1017093b-PROVIDE         BANGLADESH                     Q1      552     248     213     35
18 months   ki1017093b-PROVIDE         BANGLADESH                     Q2      552     219     204     15
18 months   ki1017093b-PROVIDE         BANGLADESH                     Q3      552      69      62      7
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q4      634     178     165     13
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q1      634     136     125     11
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q2      634     168     156     12
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q3      634     152     146      6
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q4      977      89      84      5
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q1      977       6       6      0
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q2      977     837     802     35
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q3      977      45      45      0
18 months   ki1113344-GMS-Nepal        NEPAL                          Q4      549     131     115     16
18 months   ki1113344-GMS-Nepal        NEPAL                          Q1      549     238     196     42
18 months   ki1113344-GMS-Nepal        NEPAL                          Q2      549      87      72     15
18 months   ki1113344-GMS-Nepal        NEPAL                          Q3      549      93      81     12
18 months   ki1119695-PROBIT           BELARUS                        Q4      735     137     137      0
18 months   ki1119695-PROBIT           BELARUS                        Q1      735       0       0      0
18 months   ki1119695-PROBIT           BELARUS                        Q2      735       9       8      1
18 months   ki1119695-PROBIT           BELARUS                        Q3      735     589     571     18
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Q4     1641    1341    1122    219
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Q1     1641      20      14      6
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Q2     1641      19      17      2
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Q3     1641     261     209     52
18 months   ki1135781-COHORTS          GUATEMALA                      Q4      403       6       5      1
18 months   ki1135781-COHORTS          GUATEMALA                      Q1      403     296     140    156
18 months   ki1135781-COHORTS          GUATEMALA                      Q2      403     100      56     44
18 months   ki1135781-COHORTS          GUATEMALA                      Q3      403       1       1      0
18 months   ki1135781-COHORTS          PHILIPPINES                    Q4     2355     651     551    100
18 months   ki1135781-COHORTS          PHILIPPINES                    Q1     2355     524     338    186
18 months   ki1135781-COHORTS          PHILIPPINES                    Q2     2355     172     121     51
18 months   ki1135781-COHORTS          PHILIPPINES                    Q3     2355    1008     750    258
18 months   ki1148112-LCNI-5           MALAWI                         Q4      716      53      48      5
18 months   ki1148112-LCNI-5           MALAWI                         Q1      716     327     284     43
18 months   ki1148112-LCNI-5           MALAWI                         Q2      716     231     200     31
18 months   ki1148112-LCNI-5           MALAWI                         Q3      716     105      91     14
18 months   kiGH5241-JiVitA-4          BANGLADESH                     Q4      679      11      10      1
18 months   kiGH5241-JiVitA-4          BANGLADESH                     Q1      679     479     428     51
18 months   kiGH5241-JiVitA-4          BANGLADESH                     Q2      679      68      55     13
18 months   kiGH5241-JiVitA-4          BANGLADESH                     Q3      679     121     111     10
24 months   ki0047075b-MAL-ED          BANGLADESH                     Q4      117      40      39      1
24 months   ki0047075b-MAL-ED          BANGLADESH                     Q1      117      29      26      3
24 months   ki0047075b-MAL-ED          BANGLADESH                     Q2      117       6       6      0
24 months   ki0047075b-MAL-ED          BANGLADESH                     Q3      117      42      36      6
24 months   ki0047075b-MAL-ED          INDIA                          Q4      132      42      38      4
24 months   ki0047075b-MAL-ED          INDIA                          Q1      132      20      19      1
24 months   ki0047075b-MAL-ED          INDIA                          Q2      132      41      33      8
24 months   ki0047075b-MAL-ED          INDIA                          Q3      132      29      26      3
24 months   ki0047075b-MAL-ED          NEPAL                          Q4       91      38      38      0
24 months   ki0047075b-MAL-ED          NEPAL                          Q1       91      23      23      0
24 months   ki0047075b-MAL-ED          NEPAL                          Q2       91      23      22      1
24 months   ki0047075b-MAL-ED          NEPAL                          Q3       91       7       7      0
24 months   ki0047075b-MAL-ED          PERU                           Q4      164      77      73      4
24 months   ki0047075b-MAL-ED          PERU                           Q1      164      32      30      2
24 months   ki0047075b-MAL-ED          PERU                           Q2      164      48      44      4
24 months   ki0047075b-MAL-ED          PERU                           Q3      164       7       7      0
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q4       91      34      32      2
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q1       91      19      17      2
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q2       91      23      19      4
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q3       91      15      14      1
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4      177       6       2      4
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1      177      37      22     15
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2      177      26      19      7
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3      177     108      80     28
24 months   ki1017093b-PROVIDE         BANGLADESH                     Q4      577      17      17      0
24 months   ki1017093b-PROVIDE         BANGLADESH                     Q1      577     257     224     33
24 months   ki1017093b-PROVIDE         BANGLADESH                     Q2      577     228     216     12
24 months   ki1017093b-PROVIDE         BANGLADESH                     Q3      577      75      71      4
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q4      514     153     141     12
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q1      514     102      93      9
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q2      514     137     128      9
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q3      514     122     117      5
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q4        6       0       0      0
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q1        6       0       0      0
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q2        6       6       5      1
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q3        6       0       0      0
24 months   ki1113344-GMS-Nepal        NEPAL                          Q4      498     116     109      7
24 months   ki1113344-GMS-Nepal        NEPAL                          Q1      498     221     194     27
24 months   ki1113344-GMS-Nepal        NEPAL                          Q2      498      74      63     11
24 months   ki1113344-GMS-Nepal        NEPAL                          Q3      498      87      78      9
24 months   ki1119695-PROBIT           BELARUS                        Q4     1578     269     265      4
24 months   ki1119695-PROBIT           BELARUS                        Q1     1578       1       1      0
24 months   ki1119695-PROBIT           BELARUS                        Q2     1578      20      20      0
24 months   ki1119695-PROBIT           BELARUS                        Q3     1578    1288    1261     27
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Q4      434     344     250     94
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Q1      434       9       6      3
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Q2      434       5       3      2
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Q3      434      76      54     22
24 months   ki1135781-COHORTS          GUATEMALA                      Q4      472       5       4      1
24 months   ki1135781-COHORTS          GUATEMALA                      Q1      472     350     168    182
24 months   ki1135781-COHORTS          GUATEMALA                      Q2      472     116      63     53
24 months   ki1135781-COHORTS          GUATEMALA                      Q3      472       1       1      0
24 months   ki1135781-COHORTS          INDIA                          Q4     1380     388     358     30
24 months   ki1135781-COHORTS          INDIA                          Q1     1380     243     160     83
24 months   ki1135781-COHORTS          INDIA                          Q2     1380     207     165     42
24 months   ki1135781-COHORTS          INDIA                          Q3     1380     542     457     85
24 months   ki1135781-COHORTS          PHILIPPINES                    Q4     2314     640     550     90
24 months   ki1135781-COHORTS          PHILIPPINES                    Q1     2314     519     305    214
24 months   ki1135781-COHORTS          PHILIPPINES                    Q2     2314     173     111     62
24 months   ki1135781-COHORTS          PHILIPPINES                    Q3     2314     982     690    292
24 months   ki1148112-LCNI-5           MALAWI                         Q4      571      41      39      2
24 months   ki1148112-LCNI-5           MALAWI                         Q1      571     268     233     35
24 months   ki1148112-LCNI-5           MALAWI                         Q2      571     176     157     19
24 months   ki1148112-LCNI-5           MALAWI                         Q3      571      86      77      9
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Q4     4123     418     392     26
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Q1     4123    2015    1636    379
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Q2     4123     745     637    108
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Q3     4123     945     827    118
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q4      690      12      11      1
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q1      690     494     464     30
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q2      690      66      56     10
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Q3      690     118     116      2


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
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 3 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 3 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 3 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 3 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 3 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 3 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
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
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 9 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 9 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 9 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 9 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 9 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 9 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 9 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 9 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 12 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 12 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 12 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 12 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 18 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 18 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 18 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 18 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 18 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
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
## Warning: Removed 36 rows containing missing values (geom_errorbar).
```

![](/tmp/c1dd68fb-947d-44ae-b076-e5db67e13850/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->


```
## Warning: Removed 54 rows containing missing values (geom_errorbar).
```

![](/tmp/c1dd68fb-947d-44ae-b076-e5db67e13850/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


```
## Warning: Removed 9 rows containing missing values (geom_errorbar).
```

![](/tmp/c1dd68fb-947d-44ae-b076-e5db67e13850/REPORT_files/figure-html/plot_paf-1.png)<!-- -->


```
## Warning: Removed 9 rows containing missing values (geom_errorbar).
```

![](/tmp/c1dd68fb-947d-44ae-b076-e5db67e13850/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                   country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-3         BANGLADESH    Q4                   NA                0.0457604          NA          NA
Birth       kiGH5241-JiVitA-3         BANGLADESH    Q1                   NA                0.1173366          NA          NA
Birth       kiGH5241-JiVitA-3         BANGLADESH    Q2                   NA                0.1193604          NA          NA
Birth       kiGH5241-JiVitA-3         BANGLADESH    Q3                   NA                0.1075269          NA          NA
3 months    ki1017093c-NIH-Crypto     BANGLADESH    Q4                   NA                0.0259067   0.0034796   0.0483339
3 months    ki1017093c-NIH-Crypto     BANGLADESH    Q1                   NA                0.0650888   0.0278718   0.1023058
3 months    ki1017093c-NIH-Crypto     BANGLADESH    Q2                   NA                0.0319149   0.0067717   0.0570581
3 months    ki1017093c-NIH-Crypto     BANGLADESH    Q3                   NA                0.0617978   0.0264004   0.0971951
3 months    ki1135781-COHORTS         PHILIPPINES   Q4                   NA                0.0193798   0.0096662   0.0290935
3 months    ki1135781-COHORTS         PHILIPPINES   Q1                   NA                0.0439932   0.0274562   0.0605303
3 months    ki1135781-COHORTS         PHILIPPINES   Q2                   NA                0.0421053   0.0135439   0.0706666
3 months    ki1135781-COHORTS         PHILIPPINES   Q3                   NA                0.0189329   0.0110953   0.0267705
3 months    kiGH5241-JiVitA-3         BANGLADESH    Q4                   NA                0.0259146          NA          NA
3 months    kiGH5241-JiVitA-3         BANGLADESH    Q1                   NA                0.0946870          NA          NA
3 months    kiGH5241-JiVitA-3         BANGLADESH    Q2                   NA                0.0904476          NA          NA
3 months    kiGH5241-JiVitA-3         BANGLADESH    Q3                   NA                0.0769517          NA          NA
6 months    ki1000304b-SAS-CompFeed   INDIA         Q4                   NA                0.0619469          NA          NA
6 months    ki1000304b-SAS-CompFeed   INDIA         Q1                   NA                0.1477273          NA          NA
6 months    ki1000304b-SAS-CompFeed   INDIA         Q2                   NA                0.0970874          NA          NA
6 months    ki1000304b-SAS-CompFeed   INDIA         Q3                   NA                0.0666667          NA          NA
6 months    ki1135781-COHORTS         INDIA         Q4                   NA                0.0127551   0.0016425   0.0238677
6 months    ki1135781-COHORTS         INDIA         Q1                   NA                0.0647773   0.0340712   0.0954835
6 months    ki1135781-COHORTS         INDIA         Q2                   NA                0.0295567   0.0062505   0.0528628
6 months    ki1135781-COHORTS         INDIA         Q3                   NA                0.0313076   0.0166547   0.0459604
6 months    ki1135781-COHORTS         PHILIPPINES   Q4                   NA                0.0349650   0.0214981   0.0484320
6 months    ki1135781-COHORTS         PHILIPPINES   Q1                   NA                0.0687831   0.0479474   0.0896187
6 months    ki1135781-COHORTS         PHILIPPINES   Q2                   NA                0.0446927   0.0144169   0.0749686
6 months    ki1135781-COHORTS         PHILIPPINES   Q3                   NA                0.0471442   0.0346337   0.0596546
6 months    kiGH5241-JiVitA-3         BANGLADESH    Q4                   NA                0.0285088          NA          NA
6 months    kiGH5241-JiVitA-3         BANGLADESH    Q1                   NA                0.0775068          NA          NA
6 months    kiGH5241-JiVitA-3         BANGLADESH    Q2                   NA                0.0721088          NA          NA
6 months    kiGH5241-JiVitA-3         BANGLADESH    Q3                   NA                0.0529350          NA          NA
9 months    ki1000304b-SAS-CompFeed   INDIA         Q4                   NA                0.0740741          NA          NA
9 months    ki1000304b-SAS-CompFeed   INDIA         Q1                   NA                0.1888889          NA          NA
9 months    ki1000304b-SAS-CompFeed   INDIA         Q2                   NA                0.1844660          NA          NA
9 months    ki1000304b-SAS-CompFeed   INDIA         Q3                   NA                0.0594059          NA          NA
9 months    ki1135781-COHORTS         INDIA         Q4                   NA                0.0169014   0.0034871   0.0303157
9 months    ki1135781-COHORTS         INDIA         Q1                   NA                0.1517857   0.1047784   0.1987930
9 months    ki1135781-COHORTS         INDIA         Q2                   NA                0.0578947   0.0246737   0.0911158
9 months    ki1135781-COHORTS         INDIA         Q3                   NA                0.0739220   0.0506750   0.0971690
9 months    ki1135781-COHORTS         PHILIPPINES   Q4                   NA                0.0476190   0.0319955   0.0632426
9 months    ki1135781-COHORTS         PHILIPPINES   Q1                   NA                0.1075838   0.0820745   0.1330931
9 months    ki1135781-COHORTS         PHILIPPINES   Q2                   NA                0.0695187   0.0330587   0.1059787
9 months    ki1135781-COHORTS         PHILIPPINES   Q3                   NA                0.0711030   0.0558920   0.0863140
12 months   ki1000304b-SAS-CompFeed   INDIA         Q4                   NA                0.1391304          NA          NA
12 months   ki1000304b-SAS-CompFeed   INDIA         Q1                   NA                0.2222222          NA          NA
12 months   ki1000304b-SAS-CompFeed   INDIA         Q2                   NA                0.1747573          NA          NA
12 months   ki1000304b-SAS-CompFeed   INDIA         Q3                   NA                0.0673077          NA          NA
12 months   ki1017093c-NIH-Crypto     BANGLADESH    Q4                   NA                0.0673575   0.0319718   0.1027432
12 months   ki1017093c-NIH-Crypto     BANGLADESH    Q1                   NA                0.0625000   0.0249663   0.1000337
12 months   ki1017093c-NIH-Crypto     BANGLADESH    Q2                   NA                0.0382514   0.0104424   0.0660603
12 months   ki1017093c-NIH-Crypto     BANGLADESH    Q3                   NA                0.0647059   0.0276994   0.1017123
12 months   ki1126311-ZVITAMBO        ZIMBABWE      Q4                   NA                0.0617530   0.0554038   0.0681022
12 months   ki1126311-ZVITAMBO        ZIMBABWE      Q1                   NA                0.1333333   0.0340056   0.2326610
12 months   ki1126311-ZVITAMBO        ZIMBABWE      Q2                   NA                0.1176471   0.0292154   0.2060787
12 months   ki1126311-ZVITAMBO        ZIMBABWE      Q3                   NA                0.0837809   0.0659826   0.1015792
12 months   ki1135781-COHORTS         INDIA         Q4                   NA                0.0352941   0.0156722   0.0549160
12 months   ki1135781-COHORTS         INDIA         Q1                   NA                0.2019704   0.1467199   0.2572210
12 months   ki1135781-COHORTS         INDIA         Q2                   NA                0.0888889   0.0472974   0.1304804
12 months   ki1135781-COHORTS         INDIA         Q3                   NA                0.0822511   0.0571875   0.1073147
12 months   ki1135781-COHORTS         PHILIPPINES   Q4                   NA                0.0747801   0.0550349   0.0945252
12 months   ki1135781-COHORTS         PHILIPPINES   Q1                   NA                0.1872727   0.1546616   0.2198838
12 months   ki1135781-COHORTS         PHILIPPINES   Q2                   NA                0.1436782   0.0915496   0.1958068
12 months   ki1135781-COHORTS         PHILIPPINES   Q3                   NA                0.1402498   0.1191514   0.1613481
12 months   kiGH5241-JiVitA-3         BANGLADESH    Q4                   NA                0.0498688          NA          NA
12 months   kiGH5241-JiVitA-3         BANGLADESH    Q1                   NA                0.1367018          NA          NA
12 months   kiGH5241-JiVitA-3         BANGLADESH    Q2                   NA                0.1170047          NA          NA
12 months   kiGH5241-JiVitA-3         BANGLADESH    Q3                   NA                0.0943168          NA          NA
18 months   ki1000304b-SAS-CompFeed   INDIA         Q4                   NA                0.1351351          NA          NA
18 months   ki1000304b-SAS-CompFeed   INDIA         Q1                   NA                0.4069767          NA          NA
18 months   ki1000304b-SAS-CompFeed   INDIA         Q2                   NA                0.2446809          NA          NA
18 months   ki1000304b-SAS-CompFeed   INDIA         Q3                   NA                0.0882353          NA          NA
18 months   ki1017093c-NIH-Crypto     BANGLADESH    Q4                   NA                0.0730337   0.0347799   0.1112875
18 months   ki1017093c-NIH-Crypto     BANGLADESH    Q1                   NA                0.0808824   0.0350224   0.1267423
18 months   ki1017093c-NIH-Crypto     BANGLADESH    Q2                   NA                0.0714286   0.0324541   0.1104030
18 months   ki1017093c-NIH-Crypto     BANGLADESH    Q3                   NA                0.0394737   0.0084940   0.0704534
18 months   ki1113344-GMS-Nepal       NEPAL         Q4                   NA                0.1221374   0.0660137   0.1782611
18 months   ki1113344-GMS-Nepal       NEPAL         Q1                   NA                0.1764706   0.1279941   0.2249471
18 months   ki1113344-GMS-Nepal       NEPAL         Q2                   NA                0.1724138   0.0929669   0.2518607
18 months   ki1113344-GMS-Nepal       NEPAL         Q3                   NA                0.1290323   0.0608372   0.1972273
18 months   ki1135781-COHORTS         PHILIPPINES   Q4                   NA                0.1536098   0.1259057   0.1813140
18 months   ki1135781-COHORTS         PHILIPPINES   Q1                   NA                0.3549618   0.3139831   0.3959405
18 months   ki1135781-COHORTS         PHILIPPINES   Q2                   NA                0.2965116   0.2282423   0.3647809
18 months   ki1135781-COHORTS         PHILIPPINES   Q3                   NA                0.2559524   0.2290066   0.2828981
18 months   ki1148112-LCNI-5          MALAWI        Q4                   NA                0.0943396   0.0155909   0.1730883
18 months   ki1148112-LCNI-5          MALAWI        Q1                   NA                0.1314985   0.0948443   0.1681526
18 months   ki1148112-LCNI-5          MALAWI        Q2                   NA                0.1341991   0.0902116   0.1781867
18 months   ki1148112-LCNI-5          MALAWI        Q3                   NA                0.1333333   0.0682676   0.1983991
24 months   ki1017093c-NIH-Crypto     BANGLADESH    Q4                   NA                0.0784314   0.0357897   0.1210730
24 months   ki1017093c-NIH-Crypto     BANGLADESH    Q1                   NA                0.0882353   0.0331376   0.1433330
24 months   ki1017093c-NIH-Crypto     BANGLADESH    Q2                   NA                0.0656934   0.0241678   0.1072191
24 months   ki1017093c-NIH-Crypto     BANGLADESH    Q3                   NA                0.0409836   0.0057701   0.0761971
24 months   ki1113344-GMS-Nepal       NEPAL         Q4                   NA                0.0603448   0.0169678   0.1037219
24 months   ki1113344-GMS-Nepal       NEPAL         Q1                   NA                0.1221719   0.0789525   0.1653914
24 months   ki1113344-GMS-Nepal       NEPAL         Q2                   NA                0.1486486   0.0675145   0.2297828
24 months   ki1113344-GMS-Nepal       NEPAL         Q3                   NA                0.1034483   0.0393901   0.1675064
24 months   ki1135781-COHORTS         INDIA         Q4                   NA                0.0773196   0.0507332   0.1039060
24 months   ki1135781-COHORTS         INDIA         Q1                   NA                0.3415638   0.2819159   0.4012117
24 months   ki1135781-COHORTS         INDIA         Q2                   NA                0.2028986   0.1480940   0.2577031
24 months   ki1135781-COHORTS         INDIA         Q3                   NA                0.1568266   0.1262017   0.1874514
24 months   ki1135781-COHORTS         PHILIPPINES   Q4                   NA                0.1406250   0.1136864   0.1675636
24 months   ki1135781-COHORTS         PHILIPPINES   Q1                   NA                0.4123314   0.3699722   0.4546906
24 months   ki1135781-COHORTS         PHILIPPINES   Q2                   NA                0.3583815   0.2869105   0.4298525
24 months   ki1135781-COHORTS         PHILIPPINES   Q3                   NA                0.2973523   0.2687573   0.3259474
24 months   kiGH5241-JiVitA-3         BANGLADESH    Q4                   NA                0.0622010          NA          NA
24 months   kiGH5241-JiVitA-3         BANGLADESH    Q1                   NA                0.1880893          NA          NA
24 months   kiGH5241-JiVitA-3         BANGLADESH    Q2                   NA                0.1449664          NA          NA
24 months   kiGH5241-JiVitA-3         BANGLADESH    Q3                   NA                0.1248677          NA          NA


### Parameter: E(Y)


agecat      studyid                   country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-3         BANGLADESH    NA                   NA                0.1099968          NA          NA
3 months    ki1017093c-NIH-Crypto     BANGLADESH    NA                   NA                0.0453297   0.0302080   0.0604513
3 months    ki1135781-COHORTS         PHILIPPINES   NA                   NA                0.0261318   0.0201322   0.0321313
3 months    kiGH5241-JiVitA-3         BANGLADESH    NA                   NA                0.0822945          NA          NA
6 months    ki1000304b-SAS-CompFeed   INDIA         NA                   NA                0.0904645          NA          NA
6 months    ki1135781-COHORTS         INDIA         NA                   NA                0.0317690   0.0225290   0.0410089
6 months    ki1135781-COHORTS         PHILIPPINES   NA                   NA                0.0483619   0.0400565   0.0566674
6 months    kiGH5241-JiVitA-3         BANGLADESH    NA                   NA                0.0650376          NA          NA
9 months    ki1000304b-SAS-CompFeed   INDIA         NA                   NA                0.1243781          NA          NA
9 months    ki1135781-COHORTS         INDIA         NA                   NA                0.0692675   0.0552199   0.0833152
9 months    ki1135781-COHORTS         PHILIPPINES   NA                   NA                0.0725146   0.0624764   0.0825528
12 months   ki1000304b-SAS-CompFeed   INDIA         NA                   NA                0.1480583          NA          NA
12 months   ki1017093c-NIH-Crypto     BANGLADESH    NA                   NA                0.0580737   0.0408093   0.0753381
12 months   ki1126311-ZVITAMBO        ZIMBABWE      NA                   NA                0.0658116   0.0598059   0.0718173
12 months   ki1135781-COHORTS         INDIA         NA                   NA                0.0902954   0.0739703   0.1066204
12 months   ki1135781-COHORTS         PHILIPPINES   NA                   NA                0.1328157   0.1193664   0.1462650
12 months   kiGH5241-JiVitA-3         BANGLADESH    NA                   NA                0.1133738          NA          NA
18 months   ki1000304b-SAS-CompFeed   INDIA         NA                   NA                0.2086514          NA          NA
18 months   ki1017093c-NIH-Crypto     BANGLADESH    NA                   NA                0.0662461   0.0468710   0.0856211
18 months   ki1113344-GMS-Nepal       NEPAL         NA                   NA                0.1548270   0.1245401   0.1851138
18 months   ki1135781-COHORTS         PHILIPPINES   NA                   NA                0.2526539   0.2351002   0.2702076
18 months   ki1148112-LCNI-5          MALAWI        NA                   NA                0.1298883   0.1052467   0.1545298
24 months   ki1017093c-NIH-Crypto     BANGLADESH    NA                   NA                0.0680934   0.0462948   0.0898920
24 months   ki1113344-GMS-Nepal       NEPAL         NA                   NA                0.1084337   0.0810981   0.1357694
24 months   ki1135781-COHORTS         INDIA         NA                   NA                0.1739130   0.1539078   0.1939183
24 months   ki1135781-COHORTS         PHILIPPINES   NA                   NA                0.2843561   0.2659721   0.3027401
24 months   kiGH5241-JiVitA-3         BANGLADESH    NA                   NA                0.1530439          NA          NA


### Parameter: RR


agecat      studyid                   country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-3         BANGLADESH    Q4                   Q4                1.0000000          NA          NA
Birth       kiGH5241-JiVitA-3         BANGLADESH    Q1                   Q4                2.5641494          NA          NA
Birth       kiGH5241-JiVitA-3         BANGLADESH    Q2                   Q4                2.6083750          NA          NA
Birth       kiGH5241-JiVitA-3         BANGLADESH    Q3                   Q4                2.3497786          NA          NA
3 months    ki1017093c-NIH-Crypto     BANGLADESH    Q4                   Q4                1.0000000   1.0000000    1.000000
3 months    ki1017093c-NIH-Crypto     BANGLADESH    Q1                   Q4                2.5124260   0.8902717    7.090290
3 months    ki1017093c-NIH-Crypto     BANGLADESH    Q2                   Q4                1.2319149   0.3821530    3.971222
3 months    ki1017093c-NIH-Crypto     BANGLADESH    Q3                   Q4                2.3853933   0.8447894    6.735526
3 months    ki1135781-COHORTS         PHILIPPINES   Q4                   Q4                1.0000000   1.0000000    1.000000
3 months    ki1135781-COHORTS         PHILIPPINES   Q1                   Q4                2.2700507   1.2132253    4.247464
3 months    ki1135781-COHORTS         PHILIPPINES   Q2                   Q4                2.1726316   0.9347441    5.049861
3 months    ki1135781-COHORTS         PHILIPPINES   Q3                   Q4                0.9769363   0.5099680    1.871499
3 months    kiGH5241-JiVitA-3         BANGLADESH    Q4                   Q4                1.0000000          NA          NA
3 months    kiGH5241-JiVitA-3         BANGLADESH    Q1                   Q4                3.6538045          NA          NA
3 months    kiGH5241-JiVitA-3         BANGLADESH    Q2                   Q4                3.4902142          NA          NA
3 months    kiGH5241-JiVitA-3         BANGLADESH    Q3                   Q4                2.9694293          NA          NA
6 months    ki1000304b-SAS-CompFeed   INDIA         Q4                   Q4                1.0000000          NA          NA
6 months    ki1000304b-SAS-CompFeed   INDIA         Q1                   Q4                2.3847403          NA          NA
6 months    ki1000304b-SAS-CompFeed   INDIA         Q2                   Q4                1.5672677          NA          NA
6 months    ki1000304b-SAS-CompFeed   INDIA         Q3                   Q4                1.0761905          NA          NA
6 months    ki1135781-COHORTS         INDIA         Q4                   Q4                1.0000000   1.0000000    1.000000
6 months    ki1135781-COHORTS         INDIA         Q1                   Q4                5.0785425   1.8836042   13.692682
6 months    ki1135781-COHORTS         INDIA         Q2                   Q4                2.3172414   0.7155522    7.504146
6 months    ki1135781-COHORTS         INDIA         Q3                   Q4                2.4545120   0.9129653    6.598968
6 months    ki1135781-COHORTS         PHILIPPINES   Q4                   Q4                1.0000000   1.0000000    1.000000
6 months    ki1135781-COHORTS         PHILIPPINES   Q1                   Q4                1.9671958   1.2051521    3.211096
6 months    ki1135781-COHORTS         PHILIPPINES   Q2                   Q4                1.2782123   0.5863747    2.786319
6 months    ki1135781-COHORTS         PHILIPPINES   Q3                   Q4                1.3483228   0.8446279    2.152397
6 months    kiGH5241-JiVitA-3         BANGLADESH    Q4                   Q4                1.0000000          NA          NA
6 months    kiGH5241-JiVitA-3         BANGLADESH    Q1                   Q4                2.7186992          NA          NA
6 months    kiGH5241-JiVitA-3         BANGLADESH    Q2                   Q4                2.5293564          NA          NA
6 months    kiGH5241-JiVitA-3         BANGLADESH    Q3                   Q4                1.8567973          NA          NA
9 months    ki1000304b-SAS-CompFeed   INDIA         Q4                   Q4                1.0000000          NA          NA
9 months    ki1000304b-SAS-CompFeed   INDIA         Q1                   Q4                2.5500000          NA          NA
9 months    ki1000304b-SAS-CompFeed   INDIA         Q2                   Q4                2.4902913          NA          NA
9 months    ki1000304b-SAS-CompFeed   INDIA         Q3                   Q4                0.8019802          NA          NA
9 months    ki1135781-COHORTS         INDIA         Q4                   Q4                1.0000000   1.0000000    1.000000
9 months    ki1135781-COHORTS         INDIA         Q1                   Q4                8.9806541   3.8309523   21.052767
9 months    ki1135781-COHORTS         INDIA         Q2                   Q4                3.4254383   1.2863985    9.121301
9 months    ki1135781-COHORTS         INDIA         Q3                   Q4                4.3737163   1.8624683   10.270991
9 months    ki1135781-COHORTS         PHILIPPINES   Q4                   Q4                1.0000000   1.0000000    1.000000
9 months    ki1135781-COHORTS         PHILIPPINES   Q1                   Q4                2.2592592   1.5071667    3.386654
9 months    ki1135781-COHORTS         PHILIPPINES   Q2                   Q4                1.4598930   0.7864153    2.710130
9 months    ki1135781-COHORTS         PHILIPPINES   Q3                   Q4                1.4931632   1.0092618    2.209076
12 months   ki1000304b-SAS-CompFeed   INDIA         Q4                   Q4                1.0000000          NA          NA
12 months   ki1000304b-SAS-CompFeed   INDIA         Q1                   Q4                1.5972222          NA          NA
12 months   ki1000304b-SAS-CompFeed   INDIA         Q2                   Q4                1.2560680          NA          NA
12 months   ki1000304b-SAS-CompFeed   INDIA         Q3                   Q4                0.4837740          NA          NA
12 months   ki1017093c-NIH-Crypto     BANGLADESH    Q4                   Q4                1.0000000   1.0000000    1.000000
12 months   ki1017093c-NIH-Crypto     BANGLADESH    Q1                   Q4                0.9278846   0.4178053    2.060696
12 months   ki1017093c-NIH-Crypto     BANGLADESH    Q2                   Q4                0.5678857   0.2315902    1.392521
12 months   ki1017093c-NIH-Crypto     BANGLADESH    Q3                   Q4                0.9606335   0.4418695    2.088437
12 months   ki1126311-ZVITAMBO        ZIMBABWE      Q4                   Q4                1.0000000   1.0000000    1.000000
12 months   ki1126311-ZVITAMBO        ZIMBABWE      Q1                   Q4                2.1591398   1.0178478    4.580139
12 months   ki1126311-ZVITAMBO        ZIMBABWE      Q2                   Q4                1.9051233   0.8921493    4.068259
12 months   ki1126311-ZVITAMBO        ZIMBABWE      Q3                   Q4                1.3567097   1.0714908    1.717851
12 months   ki1135781-COHORTS         INDIA         Q4                   Q4                1.0000000   1.0000000    1.000000
12 months   ki1135781-COHORTS         INDIA         Q1                   Q4                5.7224959   3.0795825   10.633571
12 months   ki1135781-COHORTS         INDIA         Q2                   Q4                2.5185185   1.2177709    5.208645
12 months   ki1135781-COHORTS         INDIA         Q3                   Q4                2.3304473   1.2362394    4.393150
12 months   ki1135781-COHORTS         PHILIPPINES   Q4                   Q4                1.0000000   1.0000000    1.000000
12 months   ki1135781-COHORTS         PHILIPPINES   Q1                   Q4                2.5043137   1.8252560    3.436004
12 months   ki1135781-COHORTS         PHILIPPINES   Q2                   Q4                1.9213432   1.2266666    3.009424
12 months   ki1135781-COHORTS         PHILIPPINES   Q3                   Q4                1.8754968   1.3840082    2.541523
12 months   kiGH5241-JiVitA-3         BANGLADESH    Q4                   Q4                1.0000000          NA          NA
12 months   kiGH5241-JiVitA-3         BANGLADESH    Q1                   Q4                2.7412308          NA          NA
12 months   kiGH5241-JiVitA-3         BANGLADESH    Q2                   Q4                2.3462517          NA          NA
12 months   kiGH5241-JiVitA-3         BANGLADESH    Q3                   Q4                1.8913002          NA          NA
18 months   ki1000304b-SAS-CompFeed   INDIA         Q4                   Q4                1.0000000          NA          NA
18 months   ki1000304b-SAS-CompFeed   INDIA         Q1                   Q4                3.0116279          NA          NA
18 months   ki1000304b-SAS-CompFeed   INDIA         Q2                   Q4                1.8106383          NA          NA
18 months   ki1000304b-SAS-CompFeed   INDIA         Q3                   Q4                0.6529413          NA          NA
18 months   ki1017093c-NIH-Crypto     BANGLADESH    Q4                   Q4                1.0000000   1.0000000    1.000000
18 months   ki1017093c-NIH-Crypto     BANGLADESH    Q1                   Q4                1.1074661   0.5117968    2.396422
18 months   ki1017093c-NIH-Crypto     BANGLADESH    Q2                   Q4                0.9780220   0.4590580    2.083673
18 months   ki1017093c-NIH-Crypto     BANGLADESH    Q3                   Q4                0.5404859   0.2103803    1.388557
18 months   ki1113344-GMS-Nepal       NEPAL         Q4                   Q4                1.0000000   1.0000000    1.000000
18 months   ki1113344-GMS-Nepal       NEPAL         Q1                   Q4                1.4448529   0.8459002    2.467903
18 months   ki1113344-GMS-Nepal       NEPAL         Q2                   Q4                1.4116379   0.7363841    2.706090
18 months   ki1113344-GMS-Nepal       NEPAL         Q3                   Q4                1.0564516   0.5244400    2.128156
18 months   ki1135781-COHORTS         PHILIPPINES   Q4                   Q4                1.0000000   1.0000000    1.000000
18 months   ki1135781-COHORTS         PHILIPPINES   Q1                   Q4                2.3108015   1.8653640    2.862607
18 months   ki1135781-COHORTS         PHILIPPINES   Q2                   Q4                1.9302907   1.4408030    2.586073
18 months   ki1135781-COHORTS         PHILIPPINES   Q3                   Q4                1.6662500   1.3522150    2.053216
18 months   ki1148112-LCNI-5          MALAWI        Q4                   Q4                1.0000000   1.0000000    1.000000
18 months   ki1148112-LCNI-5          MALAWI        Q1                   Q4                1.3938837   0.5781323    3.360670
18 months   ki1148112-LCNI-5          MALAWI        Q2                   Q4                1.4225108   0.5802122    3.487580
18 months   ki1148112-LCNI-5          MALAWI        Q3                   Q4                1.4133333   0.5374269    3.716805
24 months   ki1017093c-NIH-Crypto     BANGLADESH    Q4                   Q4                1.0000000   1.0000000    1.000000
24 months   ki1017093c-NIH-Crypto     BANGLADESH    Q1                   Q4                1.1250000   0.4915580    2.574722
24 months   ki1017093c-NIH-Crypto     BANGLADESH    Q2                   Q4                0.8375912   0.3638605    1.928099
24 months   ki1017093c-NIH-Crypto     BANGLADESH    Q3                   Q4                0.5225410   0.1890345    1.444441
24 months   ki1113344-GMS-Nepal       NEPAL         Q4                   Q4                1.0000000   1.0000000    1.000000
24 months   ki1113344-GMS-Nepal       NEPAL         Q1                   Q4                2.0245637   0.9086465    4.510949
24 months   ki1113344-GMS-Nepal       NEPAL         Q2                   Q4                2.4633205   0.9989525    6.074311
24 months   ki1113344-GMS-Nepal       NEPAL         Q3                   Q4                1.7142857   0.6638073    4.427152
24 months   ki1135781-COHORTS         INDIA         Q4                   Q4                1.0000000   1.0000000    1.000000
24 months   ki1135781-COHORTS         INDIA         Q1                   Q4                4.4175583   3.0039616    6.496362
24 months   ki1135781-COHORTS         INDIA         Q2                   Q4                2.6241546   1.6946965    4.063375
24 months   ki1135781-COHORTS         INDIA         Q3                   Q4                2.0282903   1.3658270    3.012066
24 months   ki1135781-COHORTS         PHILIPPINES   Q4                   Q4                1.0000000   1.0000000    1.000000
24 months   ki1135781-COHORTS         PHILIPPINES   Q1                   Q4                2.9321344   2.3592877    3.644071
24 months   ki1135781-COHORTS         PHILIPPINES   Q2                   Q4                2.5484907   1.9328070    3.360297
24 months   ki1135781-COHORTS         PHILIPPINES   Q3                   Q4                2.1145055   1.7065519    2.619981
24 months   kiGH5241-JiVitA-3         BANGLADESH    Q4                   Q4                1.0000000          NA          NA
24 months   kiGH5241-JiVitA-3         BANGLADESH    Q1                   Q4                3.0238977          NA          NA
24 months   kiGH5241-JiVitA-3         BANGLADESH    Q2                   Q4                2.3306144          NA          NA
24 months   kiGH5241-JiVitA-3         BANGLADESH    Q3                   Q4                2.0074888          NA          NA


### Parameter: PAR


agecat      studyid                   country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ------------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
Birth       kiGH5241-JiVitA-3         BANGLADESH    Q4                   NA                 0.0642364           NA          NA
3 months    ki1017093c-NIH-Crypto     BANGLADESH    Q4                   NA                 0.0194229   -0.0021398   0.0409857
3 months    ki1135781-COHORTS         PHILIPPINES   Q4                   NA                 0.0067519   -0.0019997   0.0155036
3 months    kiGH5241-JiVitA-3         BANGLADESH    Q4                   NA                 0.0563798           NA          NA
6 months    ki1000304b-SAS-CompFeed   INDIA         Q4                   NA                 0.0285176           NA          NA
6 months    ki1135781-COHORTS         INDIA         Q4                   NA                 0.0190139    0.0072256   0.0308021
6 months    ki1135781-COHORTS         PHILIPPINES   Q4                   NA                 0.0133969    0.0011825   0.0256113
6 months    kiGH5241-JiVitA-3         BANGLADESH    Q4                   NA                 0.0365288           NA          NA
9 months    ki1000304b-SAS-CompFeed   INDIA         Q4                   NA                 0.0503040           NA          NA
9 months    ki1135781-COHORTS         INDIA         Q4                   NA                 0.0523661    0.0357661   0.0689661
9 months    ki1135781-COHORTS         PHILIPPINES   Q4                   NA                 0.0248956    0.0104399   0.0393512
12 months   ki1000304b-SAS-CompFeed   INDIA         Q4                   NA                 0.0089278           NA          NA
12 months   ki1017093c-NIH-Crypto     BANGLADESH    Q4                   NA                -0.0092839   -0.0387050   0.0201373
12 months   ki1126311-ZVITAMBO        ZIMBABWE      Q4                   NA                 0.0040586    0.0011605   0.0069567
12 months   ki1135781-COHORTS         INDIA         Q4                   NA                 0.0550012    0.0342506   0.0757518
12 months   ki1135781-COHORTS         PHILIPPINES   Q4                   NA                 0.0580356    0.0392358   0.0768355
12 months   kiGH5241-JiVitA-3         BANGLADESH    Q4                   NA                 0.0635050           NA          NA
18 months   ki1000304b-SAS-CompFeed   INDIA         Q4                   NA                 0.0735163           NA          NA
18 months   ki1017093c-NIH-Crypto     BANGLADESH    Q4                   NA                -0.0067876   -0.0386789   0.0251036
18 months   ki1113344-GMS-Nepal       NEPAL         Q4                   NA                 0.0326896   -0.0179458   0.0833249
18 months   ki1135781-COHORTS         PHILIPPINES   Q4                   NA                 0.0990441    0.0735232   0.1245650
18 months   ki1148112-LCNI-5          MALAWI        Q4                   NA                 0.0355486   -0.0412008   0.1122981
24 months   ki1017093c-NIH-Crypto     BANGLADESH    Q4                   NA                -0.0103380   -0.0451373   0.0244613
24 months   ki1113344-GMS-Nepal       NEPAL         Q4                   NA                 0.0480889    0.0062290   0.0899488
24 months   ki1135781-COHORTS         INDIA         Q4                   NA                 0.0965935    0.0699555   0.1232314
24 months   ki1135781-COHORTS         PHILIPPINES   Q4                   NA                 0.1437311    0.1179970   0.1694651
24 months   kiGH5241-JiVitA-3         BANGLADESH    Q4                   NA                 0.0908429           NA          NA


### Parameter: PAF


agecat      studyid                   country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ------------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
Birth       kiGH5241-JiVitA-3         BANGLADESH    Q4                   NA                 0.5839840           NA          NA
3 months    ki1017093c-NIH-Crypto     BANGLADESH    Q4                   NA                 0.4284817   -0.2668511   0.7421693
3 months    ki1135781-COHORTS         PHILIPPINES   Q4                   NA                 0.2583797   -0.1569792   0.5246236
3 months    kiGH5241-JiVitA-3         BANGLADESH    Q4                   NA                 0.6850987           NA          NA
6 months    ki1000304b-SAS-CompFeed   INDIA         Q4                   NA                 0.3152356           NA          NA
6 months    ki1135781-COHORTS         INDIA         Q4                   NA                 0.5985042    0.0891129   0.8230309
6 months    ki1135781-COHORTS         PHILIPPINES   Q4                   NA                 0.2770133   -0.0193615   0.4872185
6 months    kiGH5241-JiVitA-3         BANGLADESH    Q4                   NA                 0.5616570           NA          NA
9 months    ki1000304b-SAS-CompFeed   INDIA         Q4                   NA                 0.4044444           NA          NA
9 months    ki1135781-COHORTS         INDIA         Q4                   NA                 0.7559980    0.4760040   0.8863790
9 months    ki1135781-COHORTS         PHILIPPINES   Q4                   NA                 0.3433180    0.1173519   0.5114347
12 months   ki1000304b-SAS-CompFeed   INDIA         Q4                   NA                 0.0602994           NA          NA
12 months   ki1017093c-NIH-Crypto     BANGLADESH    Q4                   NA                -0.1598635   -0.7921992   0.2493673
12 months   ki1126311-ZVITAMBO        ZIMBABWE      Q4                   NA                 0.0616698    0.0169118   0.1043900
12 months   ki1135781-COHORTS         INDIA         Q4                   NA                 0.6091259    0.3412479   0.7680727
12 months   ki1135781-COHORTS         PHILIPPINES   Q4                   NA                 0.4369637    0.2835083   0.5575526
12 months   kiGH5241-JiVitA-3         BANGLADESH    Q4                   NA                 0.5601384           NA          NA
18 months   ki1000304b-SAS-CompFeed   INDIA         Q4                   NA                 0.3523402           NA          NA
18 months   ki1017093c-NIH-Crypto     BANGLADESH    Q4                   NA                -0.1024612   -0.7048814   0.2870937
18 months   ki1113344-GMS-Nepal       NEPAL         Q4                   NA                 0.2111361   -0.1913161   0.4776313
18 months   ki1135781-COHORTS         PHILIPPINES   Q4                   NA                 0.3920149    0.2847044   0.4832263
18 months   ki1148112-LCNI-5          MALAWI        Q4                   NA                 0.2736863   -0.6344524   0.6772426
24 months   ki1017093c-NIH-Crypto     BANGLADESH    Q4                   NA                -0.1518207   -0.7920555   0.2596820
24 months   ki1113344-GMS-Nepal       NEPAL         Q4                   NA                 0.4434866   -0.0854430   0.7146721
24 months   ki1135781-COHORTS         INDIA         Q4                   NA                 0.5554124    0.3882178   0.6769142
24 months   ki1135781-COHORTS         PHILIPPINES   Q4                   NA                 0.5054616    0.4105255   0.5851081
24 months   kiGH5241-JiVitA-3         BANGLADESH    Q4                   NA                 0.5935744           NA          NA
