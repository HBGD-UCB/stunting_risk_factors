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

**Intervention Variable:** hhwealth_quart

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        A                n     nA   nAY0   nAY1
----------  -------------------------  -----------------------------  ----------  ------  -----  -----  -----
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4       82     26     26      0
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1       82      4      4      0
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2       82     15     13      2
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3       82     37     35      2
Birth       ki0047075b-MAL-ED          BRAZIL                         Wealth Q4        3      2      2      0
Birth       ki0047075b-MAL-ED          BRAZIL                         Wealth Q1        3      0      0      0
Birth       ki0047075b-MAL-ED          BRAZIL                         Wealth Q2        3      1      1      0
Birth       ki0047075b-MAL-ED          BRAZIL                         Wealth Q3        3      0      0      0
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q4       55     21     19      2
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q1       55      1      1      0
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q2       55      9      9      0
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q3       55     24     23      1
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q4       31     14     13      1
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q1       31     11     11      0
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q2       31      4      4      0
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q3       31      2      2      0
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q4       36      1      1      0
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q1       36     23     23      0
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q2       36     11     11      0
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q3       36      1      1      0
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4       61     12     12      0
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1       61     10     10      0
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2       61     22     22      0
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3       61     17     17      0
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4       23      0      0      0
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1       23     16     16      0
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2       23      7      7      0
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3       23      0      0      0
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4       90     31     31      0
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1       90     14     14      0
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2       90     20     19      1
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3       90     25     23      2
Birth       ki1000108-IRC              INDIA                          Wealth Q4      388     91     87      4
Birth       ki1000108-IRC              INDIA                          Wealth Q1      388     98     96      2
Birth       ki1000108-IRC              INDIA                          Wealth Q2      388     99     92      7
Birth       ki1000108-IRC              INDIA                          Wealth Q3      388    100     97      3
Birth       ki1114097-CONTENT          PERU                           Wealth Q4        2      0      0      0
Birth       ki1114097-CONTENT          PERU                           Wealth Q1        2      0      0      0
Birth       ki1114097-CONTENT          PERU                           Wealth Q2        2      1      1      0
Birth       ki1114097-CONTENT          PERU                           Wealth Q3        2      1      1      0
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q4      381    144    144      0
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q1      381     91     91      0
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q2      381     64     63      1
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q3      381     82     81      1
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q4     3049    842    835      7
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q1     3049    687    675     12
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q2     3049    538    524     14
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q3     3049    982    969     13
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4     9734   2095   1944    151
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1     9734   2575   2217    358
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2     9734   2620   2313    307
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3     9734   2444   2164    280
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4      224     49     42      7
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1      224     52     48      4
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2      224     53     51      2
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3      224     70     65      5
3 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4       82     26     26      0
3 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1       82      4      4      0
3 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2       82     15     14      1
3 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3       82     37     33      4
3 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q4        3      2      2      0
3 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q1        3      0      0      0
3 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q2        3      1      1      0
3 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q3        3      0      0      0
3 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4       71     29     27      2
3 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1       71      1      1      0
3 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2       71     10     10      0
3 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3       71     31     27      4
3 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4       42     21     20      1
3 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1       42     11     11      0
3 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2       42      6      6      0
3 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3       42      4      4      0
3 months    ki0047075b-MAL-ED          PERU                           Wealth Q4       37      1      1      0
3 months    ki0047075b-MAL-ED          PERU                           Wealth Q1       37     24     22      2
3 months    ki0047075b-MAL-ED          PERU                           Wealth Q2       37     11     10      1
3 months    ki0047075b-MAL-ED          PERU                           Wealth Q3       37      1      1      0
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4       68     13     13      0
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1       68     12     12      0
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2       68     24     23      1
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3       68     19     19      0
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4       59      0      0      0
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1       59     38     35      3
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2       59     21     21      0
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3       59      0      0      0
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4      362     93     79     14
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1      362     90     85      5
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2      362     92     85      7
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3      362     87     80      7
3 months    ki1000108-IRC              INDIA                          Wealth Q4      407     98     93      5
3 months    ki1000108-IRC              INDIA                          Wealth Q1      407    105     93     12
3 months    ki1000108-IRC              INDIA                          Wealth Q2      407    101     88     13
3 months    ki1000108-IRC              INDIA                          Wealth Q3      407    103     97      6
3 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4      643    168    165      3
3 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1      643    159    153      6
3 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2      643    156    156      0
3 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3      643    160    159      1
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4     2283    569    560      9
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1     2283    691    687      4
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2     2283    460    454      6
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3     2283    563    559      4
3 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4      571    142    138      4
3 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1      571    146    137      9
3 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2      571    142    136      6
3 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3      571    141    138      3
3 months    ki1114097-CONTENT          PERU                           Wealth Q4      215     52     51      1
3 months    ki1114097-CONTENT          PERU                           Wealth Q1      215     59     59      0
3 months    ki1114097-CONTENT          PERU                           Wealth Q2      215     52     52      0
3 months    ki1114097-CONTENT          PERU                           Wealth Q3      215     52     50      2
3 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4      453    173    163     10
3 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1      453    103     93     10
3 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2      453     81     76      5
3 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3      453     96     79     17
3 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4     2874    791    773     18
3 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1     2874    632    615     17
3 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2     2874    512    498     14
3 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3     2874    939    914     25
3 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4    12294   3196   3035    161
3 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1    12294   2992   2649    343
3 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2    12294   3097   2809    288
3 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3    12294   3009   2776    233
3 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4      900    200    192      8
3 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1      900    224    205     19
3 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2      900    212    200     12
3 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3      900    264    255      9
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4       81     26     26      0
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1       81      4      4      0
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2       81     15     15      0
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3       81     36     30      6
6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q4        3      2      2      0
6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q1        3      0      0      0
6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q2        3      1      1      0
6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q3        3      0      0      0
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4       71     29     27      2
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1       71      1      1      0
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2       71     10     10      0
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3       71     31     28      3
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4       42     21     21      0
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1       42     11     11      0
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2       42      6      6      0
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3       42      4      4      0
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4       36      1      1      0
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q1       36     23     20      3
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q2       36     11     10      1
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q3       36      1      1      0
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4       65     12     12      0
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1       65     12     12      0
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2       65     22     21      1
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3       65     19     19      0
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4       58      0      0      0
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1       58     37     35      2
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2       58     21     20      1
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3       58      0      0      0
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4      369     94     79     15
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1      369     91     89      2
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2      369     94     83     11
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3      369     90     76     14
6 months    ki1000108-IRC              INDIA                          Wealth Q4      407     99     92      7
6 months    ki1000108-IRC              INDIA                          Wealth Q1      407    105     95     10
6 months    ki1000108-IRC              INDIA                          Wealth Q2      407    100     92      8
6 months    ki1000108-IRC              INDIA                          Wealth Q3      407    103     99      4
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4      581    155    153      2
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1      581    138    130      8
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2      581    140    137      3
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3      581    148    147      1
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4     2020    502    497      5
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1     2020    605    598      7
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2     2020    409    403      6
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3     2020    504    503      1
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4      563    141    139      2
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1      563    145    134     11
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2      563    139    135      4
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3      563    138    135      3
6 months    ki1114097-CONTENT          PERU                           Wealth Q4      215     52     51      1
6 months    ki1114097-CONTENT          PERU                           Wealth Q1      215     59     59      0
6 months    ki1114097-CONTENT          PERU                           Wealth Q2      215     52     51      1
6 months    ki1114097-CONTENT          PERU                           Wealth Q3      215     52     50      2
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4      440    170    155     15
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1      440     95     79     16
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2      440     84     68     16
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3      440     91     71     20
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4     2708    743    719     24
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1     2708    570    540     30
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2     2708    485    459     26
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3     2708    910    858     52
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4      816    217    201     16
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1      816    203    182     21
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2      816    199    184     15
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3      816    197    184     13
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4     8314   2374   2266    108
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1     8314   1806   1647    159
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2     8314   2045   1895    150
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3     8314   2089   1958    131
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4     1254    286    272     14
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1     1254    331    303     28
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2     1254    294    276     18
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3     1254    343    333     10
9 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4       79     26     26      0
9 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1       79      4      4      0
9 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2       79     15     13      2
9 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3       79     34     28      6
9 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q4        3      2      2      0
9 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q1        3      0      0      0
9 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q2        3      1      1      0
9 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q3        3      0      0      0
9 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4       71     29     27      2
9 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1       71      1      1      0
9 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2       71     10     10      0
9 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3       71     31     28      3
9 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4       42     21     21      0
9 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1       42     11     11      0
9 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2       42      6      6      0
9 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3       42      4      4      0
9 months    ki0047075b-MAL-ED          PERU                           Wealth Q4       36      1      1      0
9 months    ki0047075b-MAL-ED          PERU                           Wealth Q1       36     23     20      3
9 months    ki0047075b-MAL-ED          PERU                           Wealth Q2       36     11      9      2
9 months    ki0047075b-MAL-ED          PERU                           Wealth Q3       36      1      1      0
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4       67     13     13      0
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1       67     11     11      0
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2       67     24     23      1
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3       67     19     18      1
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4       60      0      0      0
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1       60     39     35      4
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2       60     21     19      2
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3       60      0      0      0
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4      366     94     78     16
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1      366     88     84      4
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2      366     95     81     14
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3      366     89     76     13
9 months    ki1000108-IRC              INDIA                          Wealth Q4      407     99     91      8
9 months    ki1000108-IRC              INDIA                          Wealth Q1      407    105     95     10
9 months    ki1000108-IRC              INDIA                          Wealth Q2      407    100     91      9
9 months    ki1000108-IRC              INDIA                          Wealth Q3      407    103     96      7
9 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4      604    160    158      2
9 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1      604    145    131     14
9 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2      604    148    141      7
9 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3      604    151    149      2
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4     1780    430    419     11
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1     1780    538    527     11
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2     1780    361    353      8
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3     1780    451    447      4
9 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4      551    139    134      5
9 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1      551    141    129     12
9 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2      551    139    129     10
9 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3      551    132    124      8
9 months    ki1114097-CONTENT          PERU                           Wealth Q4      214     52     51      1
9 months    ki1114097-CONTENT          PERU                           Wealth Q1      214     59     58      1
9 months    ki1114097-CONTENT          PERU                           Wealth Q2      214     52     50      2
9 months    ki1114097-CONTENT          PERU                           Wealth Q3      214     51     50      1
9 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4      433    170    137     33
9 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1      433     98     73     25
9 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2      433     83     59     24
9 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3      433     82     54     28
9 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4     2712    745    715     30
9 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1     2712    575    515     60
9 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2     2712    484    450     34
9 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3     2712    908    836     72
9 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4      657    185    171     14
9 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1      657    158    144     14
9 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2      657    151    141     10
9 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3      657    163    155      8
9 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4     1280    295    279     16
9 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1     1280    334    304     30
9 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2     1280    304    282     22
9 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3     1280    347    335     12
12 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4       80     26     26      0
12 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1       80      4      3      1
12 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2       80     15     12      3
12 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3       80     35     28      7
12 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4        3      2      2      0
12 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1        3      0      0      0
12 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2        3      1      1      0
12 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3        3      0      0      0
12 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4       70     28     24      4
12 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1       70      1      1      0
12 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2       70     10      9      1
12 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3       70     31     28      3
12 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4       42     21     20      1
12 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1       42     11     11      0
12 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2       42      6      6      0
12 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3       42      4      4      0
12 months   ki0047075b-MAL-ED          PERU                           Wealth Q4       36      1      1      0
12 months   ki0047075b-MAL-ED          PERU                           Wealth Q1       36     23     22      1
12 months   ki0047075b-MAL-ED          PERU                           Wealth Q2       36     11      9      2
12 months   ki0047075b-MAL-ED          PERU                           Wealth Q3       36      1      1      0
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4       68     13     13      0
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1       68     12     11      1
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2       68     24     23      1
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3       68     19     18      1
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4       60      0      0      0
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1       60     39     33      6
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2       60     21     16      5
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3       60      0      0      0
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4      368     95     69     26
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1      368     88     79      9
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2      368     95     71     24
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3      368     90     66     24
12 months   ki1000108-IRC              INDIA                          Wealth Q4      406     99     92      7
12 months   ki1000108-IRC              INDIA                          Wealth Q1      406    104     94     10
12 months   ki1000108-IRC              INDIA                          Wealth Q2      406    100     89     11
12 months   ki1000108-IRC              INDIA                          Wealth Q3      406    103     97      6
12 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4      599    160    157      3
12 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1      599    141    123     18
12 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2      599    146    138      8
12 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3      599    152    145      7
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4     1438    357    344     13
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1     1438    432    424      8
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2     1438    297    293      4
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3     1438    352    344      8
12 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4      558    142    135      7
12 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1      558    140    121     19
12 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2      558    141    127     14
12 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3      558    135    124     11
12 months   ki1114097-CONTENT          PERU                           Wealth Q4      215     52     51      1
12 months   ki1114097-CONTENT          PERU                           Wealth Q1      215     59     58      1
12 months   ki1114097-CONTENT          PERU                           Wealth Q2      215     52     52      0
12 months   ki1114097-CONTENT          PERU                           Wealth Q3      215     52     51      1
12 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4      501    207    147     60
12 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1      501    107     70     37
12 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2      501     93     56     37
12 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3      501     94     56     38
12 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4     2585    724    665     59
12 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1     2585    527    422    105
12 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2     2585    463    409     54
12 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3     2585    871    745    126
12 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4      621    171    151     20
12 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1      621    147    127     20
12 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2      621    140    123     17
12 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3      621    163    154      9
12 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4     7203   2050   1904    146
12 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1     7203   1559   1327    232
12 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2     7203   1779   1550    229
12 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3     7203   1815   1603    212
12 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4     1276    293    273     20
12 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1     1276    327    286     41
12 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2     1276    303    278     25
12 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3     1276    353    333     20
18 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4       78     26     26      0
18 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1       78      4      2      2
18 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2       78     15     12      3
18 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3       78     33     24      9
18 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4        3      2      2      0
18 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1        3      0      0      0
18 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2        3      1      1      0
18 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3        3      0      0      0
18 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4       71     29     26      3
18 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1       71      1      1      0
18 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2       71     10      9      1
18 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3       71     31     26      5
18 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4       42     21     20      1
18 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1       42     11     10      1
18 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2       42      6      6      0
18 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3       42      4      4      0
18 months   ki0047075b-MAL-ED          PERU                           Wealth Q4       34      1      1      0
18 months   ki0047075b-MAL-ED          PERU                           Wealth Q1       34     21     16      5
18 months   ki0047075b-MAL-ED          PERU                           Wealth Q2       34     11      9      2
18 months   ki0047075b-MAL-ED          PERU                           Wealth Q3       34      1      1      0
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4       66     13     12      1
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1       66     12     11      1
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2       66     24     21      3
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3       66     17     16      1
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4       58      0      0      0
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1       58     38     28     10
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2       58     20     13      7
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3       58      0      0      0
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4      369     96     65     31
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1      369     90     70     20
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2      369     93     61     32
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3      369     90     64     26
18 months   ki1000108-IRC              INDIA                          Wealth Q4      405     99     92      7
18 months   ki1000108-IRC              INDIA                          Wealth Q1      405    104     94     10
18 months   ki1000108-IRC              INDIA                          Wealth Q2      405     99     91      8
18 months   ki1000108-IRC              INDIA                          Wealth Q3      405    103     94      9
18 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4      551    146    138      8
18 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1      551    128     97     31
18 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2      551    133    121     12
18 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3      551    144    138      6
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4      977    233    215     18
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1      977    302    295      7
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2      977    207    199      8
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3      977    235    228      7
18 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4      550    144    127     17
18 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1      550    135    110     25
18 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2      550    140    121     19
18 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3      550    131    107     24
18 months   ki1114097-CONTENT          PERU                           Wealth Q4      200     48     47      1
18 months   ki1114097-CONTENT          PERU                           Wealth Q1      200     54     54      0
18 months   ki1114097-CONTENT          PERU                           Wealth Q2      200     48     45      3
18 months   ki1114097-CONTENT          PERU                           Wealth Q3      200     50     49      1
18 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4      421    179    103     76
18 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1      421     90     39     51
18 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2      421     80     33     47
18 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3      421     72     35     37
18 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4     2492    706    593    113
18 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1     2492    502    340    162
18 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2     2492    434    317    117
18 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3     2492    850    615    235
18 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4      719    195    166     29
18 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1      719    173    151     22
18 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2      719    177    150     27
18 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3      719    174    158     16
18 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4     1231    278    252     26
18 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1     1231    312    255     57
18 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2     1231    297    255     42
18 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3     1231    344    321     23
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4       77     26     25      1
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1       77      4      2      2
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2       77     15     10      5
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3       77     32     25      7
24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4        3      2      2      0
24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1        3      0      0      0
24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2        3      1      1      0
24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3        3      0      0      0
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4       71     29     26      3
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1       71      1      1      0
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2       71     10      9      1
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3       71     31     26      5
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4       42     21     20      1
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1       42     11     10      1
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2       42      6      6      0
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3       42      4      4      0
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4       32      1      1      0
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1       32     21     18      3
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2       32      9      7      2
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3       32      1      1      0
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4       66     13     11      2
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1       66     12     10      2
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2       66     23     20      3
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3       66     18     16      2
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4       59      0      0      0
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1       59     39     31      8
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2       59     20     11      9
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3       59      0      0      0
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4      372     95     62     33
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1      372     91     68     23
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2      372     95     59     36
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3      372     91     60     31
24 months   ki1000108-IRC              INDIA                          Wealth Q4      409    100     95      5
24 months   ki1000108-IRC              INDIA                          Wealth Q1      409    105     90     15
24 months   ki1000108-IRC              INDIA                          Wealth Q2      409    101     91     10
24 months   ki1000108-IRC              INDIA                          Wealth Q3      409    103     92     11
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4      576    156    148      8
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1      576    129    104     25
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2      576    142    133      9
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3      576    149    142      7
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4        6      1      0      1
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1        6      4      4      0
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2        6      1      1      0
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3        6      0      0      0
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4      499    127    118      9
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1      499    127    105     22
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2      499    126    111     15
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3      499    119    111      8
24 months   ki1114097-CONTENT          PERU                           Wealth Q4      164     41     41      0
24 months   ki1114097-CONTENT          PERU                           Wealth Q1      164     40     40      0
24 months   ki1114097-CONTENT          PERU                           Wealth Q2      164     42     40      2
24 months   ki1114097-CONTENT          PERU                           Wealth Q3      164     41     40      1
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4      497    205    126     79
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1      497    108     45     63
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2      497     96     38     58
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3      497     88     41     47
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4     2445    688    571    117
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1     2445    489    311    178
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2     2445    423    286    137
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3     2445    845    588    257
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4      574    160    143     17
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1      574    129    112     17
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2      574    146    123     23
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3      574    139    130      9
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4     4288   1121   1012    109
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1     4288    999    796    203
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2     4288   1090    914    176
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3     4288   1078    900    178
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4     1250    294    277     17
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1     1250    310    273     37
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2     1250    294    268     26
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3     1250    352    335     17


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
* agecat: 12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 12 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 12 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 12 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
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
* agecat: 18 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 18 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 18 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 18 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 18 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
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
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
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
* agecat: 3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 3 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 3 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 3 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
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
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
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
* agecat: 9 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 9 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 9 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 9 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 9 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
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
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
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
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 9 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 9 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots

```
## Warning: Removed 44 rows containing missing values (geom_errorbar).
```

![](/tmp/cbcfc8fa-78d2-4105-a814-b31633e20f8c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->


```
## Warning: Removed 78 rows containing missing values (geom_errorbar).
```

![](/tmp/cbcfc8fa-78d2-4105-a814-b31633e20f8c/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


```
## Warning: Removed 11 rows containing missing values (geom_errorbar).
```

![](/tmp/cbcfc8fa-78d2-4105-a814-b31633e20f8c/REPORT_files/figure-html/plot_paf-1.png)<!-- -->


```
## Warning: Removed 11 rows containing missing values (geom_errorbar).
```

![](/tmp/cbcfc8fa-78d2-4105-a814-b31633e20f8c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.0083135   0.0021795   0.0144475
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.0174672   0.0076695   0.0272650
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.0260223   0.0125676   0.0394771
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.0132383   0.0060886   0.0203880
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.0720764          NA          NA
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.1390291          NA          NA
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.1171756          NA          NA
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.1145663          NA          NA
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.1505376   0.0777593   0.2233159
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.0555556   0.0081663   0.1029448
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.0760870   0.0218337   0.1303402
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.0804598   0.0232245   0.1376951
3 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                0.0510204   0.0074020   0.0946388
3 months    ki1000108-IRC              INDIA                          Wealth Q1            NA                0.1142857   0.0533558   0.1752156
3 months    ki1000108-IRC              INDIA                          Wealth Q2            NA                0.1287129   0.0633226   0.1941032
3 months    ki1000108-IRC              INDIA                          Wealth Q3            NA                0.0582524   0.0129639   0.1035409
3 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.0578035   0.0229896   0.0926174
3 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.0970874   0.0398455   0.1543292
3 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.0617284   0.0092607   0.1141961
3 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.1770833   0.1006366   0.2535301
3 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.0227560   0.0123620   0.0331501
3 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.0268987   0.0142831   0.0395144
3 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.0273438   0.0132152   0.0414723
3 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.0266241   0.0163257   0.0369224
3 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.0503755          NA          NA
3 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.1146390          NA          NA
3 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.0929932          NA          NA
3 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.0774344          NA          NA
3 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.0400000          NA          NA
3 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.0848214          NA          NA
3 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.0566038          NA          NA
3 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.0340909          NA          NA
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.0882353   0.0455498   0.1309208
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.1684211   0.0930802   0.2437619
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.1904762   0.1064068   0.2745455
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.2197802   0.1346028   0.3049576
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.0323015   0.0195865   0.0450164
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.0526316   0.0342969   0.0709663
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.0536082   0.0335585   0.0736580
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.0571429   0.0420590   0.0722267
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                0.0737327   0.0389404   0.1085250
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1            NA                0.1034483   0.0615288   0.1453677
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2            NA                0.0753769   0.0386749   0.1120788
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3            NA                0.0659898   0.0313005   0.1006792
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.0454928          NA          NA
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.0880399          NA          NA
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.0733496          NA          NA
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.0627094          NA          NA
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.0489510          NA          NA
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.0845921          NA          NA
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.0612245          NA          NA
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.0291545          NA          NA
9 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                0.0808081   0.0270560   0.1345601
9 months    ki1000108-IRC              INDIA                          Wealth Q1            NA                0.0952381   0.0390221   0.1514541
9 months    ki1000108-IRC              INDIA                          Wealth Q2            NA                0.0900000   0.0338404   0.1461596
9 months    ki1000108-IRC              INDIA                          Wealth Q3            NA                0.0679612   0.0192968   0.1166255
9 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.0359712   0.0049858   0.0669567
9 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.0851064   0.0390065   0.1312062
9 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.0719424   0.0289477   0.1149372
9 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.0606061   0.0198645   0.1013476
9 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.1941176   0.1345934   0.2536419
9 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.2551020   0.1686963   0.3415078
9 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.2891566   0.1915083   0.3868049
9 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.3414634   0.2387079   0.4442190
9 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.0402685   0.0261493   0.0543876
9 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.1043478   0.0793556   0.1293401
9 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.0702479   0.0474757   0.0930202
9 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.0792952   0.0617172   0.0968731
9 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                0.0756757   0.0375354   0.1138159
9 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1            NA                0.0886076   0.0442632   0.1329520
9 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2            NA                0.0662252   0.0265313   0.1059190
9 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3            NA                0.0490798   0.0158897   0.0822698
9 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.0542373          NA          NA
9 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.0898204          NA          NA
9 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.0723684          NA          NA
9 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.0345821          NA          NA
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.2736842   0.1839073   0.3634611
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.1022727   0.0388785   0.1656670
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.2526316   0.1651355   0.3401276
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.2666667   0.1751811   0.3581523
12 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                0.0707071   0.0201510   0.1212632
12 months   ki1000108-IRC              INDIA                          Wealth Q1            NA                0.0961538   0.0394258   0.1528819
12 months   ki1000108-IRC              INDIA                          Wealth Q2            NA                0.1100000   0.0485991   0.1714009
12 months   ki1000108-IRC              INDIA                          Wealth Q3            NA                0.0582524   0.0129638   0.1035411
12 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.0492958   0.0136571   0.0849344
12 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.1357143   0.0789317   0.1924969
12 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.0992908   0.0498853   0.1486962
12 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.0814815   0.0352919   0.1276711
12 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.2898551   0.2279878   0.3517223
12 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.3457944   0.2555841   0.4360047
12 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.3978495   0.2982740   0.4974249
12 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.4042553   0.3049492   0.5035614
12 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.0814917   0.0615592   0.1014242
12 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.1992410   0.1651321   0.2333498
12 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.1166307   0.0873879   0.1458735
12 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.1446613   0.1212962   0.1680264
12 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                0.1169591   0.0687524   0.1651658
12 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            NA                0.1360544   0.0805869   0.1915220
12 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            NA                0.1214286   0.0672805   0.1755766
12 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            NA                0.0552147   0.0201235   0.0903059
12 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.0712195          NA          NA
12 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.1488133          NA          NA
12 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.1287240          NA          NA
12 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.1168044          NA          NA
12 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.0682594          NA          NA
12 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.1253823          NA          NA
12 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.0825083          NA          NA
12 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.0566572          NA          NA
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.3229167   0.2292537   0.4165797
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.2222222   0.1362145   0.3082300
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.3440860   0.2474024   0.4407696
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.2888889   0.1951218   0.3826559
18 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                0.0707071   0.0201508   0.1212633
18 months   ki1000108-IRC              INDIA                          Wealth Q1            NA                0.0961538   0.0394257   0.1528820
18 months   ki1000108-IRC              INDIA                          Wealth Q2            NA                0.0808081   0.0270557   0.1345605
18 months   ki1000108-IRC              INDIA                          Wealth Q3            NA                0.0873786   0.0327759   0.1419814
18 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                0.0547945   0.0178459   0.0917431
18 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                0.2421875   0.1679037   0.3164713
18 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                0.0902256   0.0414897   0.1389614
18 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                0.0416667   0.0089993   0.0743340
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.0772532   0.0429534   0.1115531
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.0231788   0.0061995   0.0401581
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.0386473   0.0123757   0.0649189
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.0297872   0.0080409   0.0515335
18 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.1180556   0.0653051   0.1708060
18 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.1851852   0.1195995   0.2507709
18 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.1357143   0.0789310   0.1924976
18 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.1832061   0.1169030   0.2495092
18 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.4245810   0.3520856   0.4970764
18 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.5666667   0.4641680   0.6691653
18 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.5875000   0.4794971   0.6955029
18 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.5138889   0.3983041   0.6294737
18 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.1600567   0.1330049   0.1871084
18 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.3227092   0.2818041   0.3636142
18 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.2695853   0.2278288   0.3113417
18 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.2764706   0.2463975   0.3065437
18 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                0.1487179   0.0987431   0.1986928
18 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            NA                0.1271676   0.0774877   0.1768476
18 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            NA                0.1525424   0.0995372   0.2055475
18 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            NA                0.0919540   0.0489890   0.1349190
18 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.0935252          NA          NA
18 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.1826923          NA          NA
18 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.1414141          NA          NA
18 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.0668605          NA          NA
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.3473684   0.2514946   0.4432422
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.2527473   0.1633367   0.3421578
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.3789474   0.2812631   0.4766316
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.3406593   0.2431543   0.4381644
24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                0.0500000   0.0072313   0.0927687
24 months   ki1000108-IRC              INDIA                          Wealth Q1            NA                0.1428571   0.0758436   0.2098707
24 months   ki1000108-IRC              INDIA                          Wealth Q2            NA                0.0990099   0.0406898   0.1573300
24 months   ki1000108-IRC              INDIA                          Wealth Q3            NA                0.1067961   0.0470769   0.1665153
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                0.0512821   0.0166391   0.0859250
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                0.1937984   0.1255288   0.2620681
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                0.0633803   0.0232715   0.1034891
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                0.0469799   0.0129751   0.0809846
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.0708661   0.0261936   0.1155387
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.1732283   0.1073437   0.2391130
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.1190476   0.0624452   0.1756500
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.0672269   0.0221899   0.1122639
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.3853659   0.3186770   0.4520547
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.5833333   0.4902598   0.6764069
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.6041667   0.5062437   0.7020896
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.5340909   0.4297626   0.6384192
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.1700581   0.1419802   0.1981361
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.3640082   0.3213538   0.4066626
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.3238771   0.2792735   0.3684806
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.3041420   0.2731173   0.3351667
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                0.1062500   0.0584598   0.1540402
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            NA                0.1317829   0.0733611   0.1902048
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            NA                0.1575342   0.0983898   0.2166787
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            NA                0.0647482   0.0238035   0.1056929
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.0972346          NA          NA
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.2032032          NA          NA
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.1614679          NA          NA
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.1651206          NA          NA
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.0578231          NA          NA
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.1193548          NA          NA
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.0884354          NA          NA
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.0482955          NA          NA


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0150869   0.0107594   0.0194144
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1125950          NA          NA
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.0911602   0.0614681   0.1208523
3 months    ki1000108-IRC              INDIA                          NA                   NA                0.0884521   0.0608318   0.1160724
3 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0927152   0.0659774   0.1194531
3 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0257481   0.0199566   0.0315396
3 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0833740          NA          NA
3 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0533333          NA          NA
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1522727   0.1186638   0.1858817
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0487445   0.0406327   0.0568562
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0796569   0.0610679   0.0982459
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0659129          NA          NA
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0558214          NA          NA
9 months    ki1000108-IRC              INDIA                          NA                   NA                0.0835381   0.0566237   0.1104525
9 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.0635209   0.0431376   0.0839041
9 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.2540416   0.2129913   0.2950918
9 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0722714   0.0625243   0.0820185
9 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0700152   0.0504885   0.0895420
9 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0625000          NA          NA
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.2255435   0.1827844   0.2683026
12 months   ki1000108-IRC              INDIA                          NA                   NA                0.0837438   0.0567661   0.1107216
12 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.0913978   0.0674660   0.1153296
12 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.3433134   0.3016948   0.3849320
12 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1330754   0.1199794   0.1461715
12 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.1062802   0.0820208   0.1305395
12 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1137026          NA          NA
12 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0830721          NA          NA
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.2953930   0.2487810   0.3420050
18 months   ki1000108-IRC              INDIA                          NA                   NA                0.0839506   0.0569092   0.1109920
18 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1034483   0.0779966   0.1288999
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0409417   0.0285100   0.0533733
18 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1545455   0.1243087   0.1847822
18 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.5011876   0.4533696   0.5490057
18 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2516051   0.2345645   0.2686458
18 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.1307371   0.1060790   0.1553953
18 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1202275          NA          NA
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.3306452   0.2827744   0.3785159
24 months   ki1000108-IRC              INDIA                          NA                   NA                0.1002445   0.0711031   0.1293859
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0850694   0.0622663   0.1078726
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1082164   0.0809323   0.1355005
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.4969819   0.4529802   0.5409836
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2817996   0.2639639   0.2996353
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.1149826   0.0888632   0.1411019
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1553172          NA          NA
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0776000          NA          NA


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         2.1010605   0.8316064   5.3083471
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         3.1301115   1.2713841   7.7062457
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         1.5923771   0.6381739   3.9733128
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000          NA          NA
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         1.9289140          NA          NA
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         1.6257141          NA          NA
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         1.5895124          NA          NA
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         0.3690476   0.1384407   0.9837871
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         0.5054348   0.2135631   1.1962004
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         0.5344828   0.2261528   1.2631807
3 months    ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
3 months    ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         2.2400000   0.8178653   6.1349952
3 months    ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         2.5227723   0.9332154   6.8198400
3 months    ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         1.1417476   0.3595144   3.6259676
3 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
3 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         1.6796116   0.7230582   3.9016155
3 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         1.0679012   0.3768020   3.0265579
3 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         3.0635417   1.4601728   6.4275186
3 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
3 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         1.1820499   0.6142072   2.2748710
3 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         1.2016059   0.6029107   2.3948105
3 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         1.1699799   0.6430368   2.1287317
3 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000          NA          NA
3 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         2.2756917          NA          NA
3 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         1.8460020          NA          NA
3 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         1.5371443          NA          NA
3 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000          NA          NA
3 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         2.1205357          NA          NA
3 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         1.4150943          NA          NA
3 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         0.8522727          NA          NA
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         1.9087719   0.9876426   3.6889967
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         2.1587302   1.1214983   4.1552591
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         2.4908425   1.3401156   4.6296726
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         1.6293860   0.9632513   2.7561849
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         1.6596220   0.9642640   2.8564224
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         1.7690476   1.1013026   2.8416616
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         1.4030172   0.7532483   2.6132914
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         1.0222990   0.5189274   2.0139527
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         0.8949873   0.4416034   1.8138498
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000          NA          NA
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         1.9352467          NA          NA
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         1.6123336          NA          NA
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         1.3784461          NA          NA
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000          NA          NA
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         1.7280967          NA          NA
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         1.2507289          NA          NA
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         0.5955852          NA          NA
9 months    ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
9 months    ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         1.1785714   0.4843181   2.8680127
9 months    ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         1.1137500   0.4473926   2.7725961
9 months    ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         0.8410194   0.3164818   2.2349265
9 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
9 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         2.3659574   0.8552435   6.5452173
9 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         2.0000000   0.7009905   5.7062117
9 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         1.6848485   0.5649699   5.0245411
9 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
9 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         1.3141620   0.8321890   2.0752759
9 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         1.4895947   0.9439874   2.3505531
9 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         1.7590540   1.1446997   2.7031289
9 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
9 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         2.5913040   1.6947599   3.9621285
9 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         1.7444901   1.0821440   2.8122375
9 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         1.9691627   1.3005468   2.9815165
9 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
9 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         1.1708861   0.5755094   2.3821926
9 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         0.8751183   0.3999130   1.9149965
9 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         0.6485539   0.2790373   1.5074049
9 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000          NA          NA
9 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         1.6560629          NA          NA
9 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         1.3342928          NA          NA
9 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         0.6376081          NA          NA
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         0.3736888   0.1853269   0.7534972
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         0.9230769   0.5728853   1.4873325
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         0.9743590   0.6061453   1.5662505
12 months   ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
12 months   ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         1.3598901   0.5381694   3.4362804
12 months   ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         1.5557143   0.6280374   3.8536667
12 months   ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         0.8238558   0.2865008   2.3690623
12 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
12 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         2.7530612   1.1941285   6.3471777
12 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         2.0141844   0.8374227   4.8445533
12 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         1.6529100   0.6595736   4.1422394
12 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
12 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         1.1929907   0.8516284   1.6711828
12 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         1.3725806   0.9878301   1.9071880
12 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         1.3946809   1.0072654   1.9311043
12 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
12 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         2.4449233   1.8138659   3.2955303
12 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         1.4311967   1.0082704   2.0315225
12 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         1.7751659   1.3241658   2.3797730
12 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
12 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         1.1632653   0.6514844   2.0770813
12 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         1.0382143   0.5656780   1.9054813
12 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         0.4720859   0.2213332   1.0069213
12 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000          NA          NA
12 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         2.0895024          NA          NA
12 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         1.8074261          NA          NA
12 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         1.6400619          NA          NA
12 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000          NA          NA
12 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         1.8368502          NA          NA
12 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         1.2087459          NA          NA
12 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         0.8300283          NA          NA
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         0.6881720   0.4242738   1.1162149
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         1.0655567   0.7115286   1.5957350
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         0.8946237   0.5788874   1.3825685
18 months   ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
18 months   ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         1.3598901   0.5381679   3.4362901
18 months   ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         1.1428571   0.4303957   3.0347016
18 months   ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         1.2357836   0.4781203   3.1940941
18 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
18 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4         4.4199219   2.1071356   9.2712161
18 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4         1.6466165   0.6940169   3.9067435
18 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         0.7604167   0.2703613   2.1387439
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         0.3000368   0.1273985   0.7066181
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         0.5002684   0.2221198   1.1267273
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         0.3855792   0.1640683   0.9061548
18 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
18 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         1.5686275   0.8869544   2.7742036
18 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.1495798   0.6232898   2.1202559
18 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         1.5518635   0.8732380   2.7578740
18 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
18 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         1.3346491   1.0407361   1.7115657
18 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         1.3837171   1.0766738   1.7783224
18 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         1.2103436   0.9125747   1.6052730
18 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
18 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         2.0162183   1.6322508   2.4905096
18 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         1.6843114   1.3392424   2.1182909
18 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         1.7273295   1.4128165   2.1118576
18 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
18 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         0.8550927   0.5107620   1.4315542
18 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         1.0257160   0.6325503   1.6632562
18 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         0.6183116   0.3477414   1.0994067
18 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000          NA          NA
18 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         1.9534024          NA          NA
18 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         1.5120435          NA          NA
18 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         0.7148927          NA          NA
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         0.7276057   0.4645521   1.1396140
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         1.0909091   0.7477798   1.5914880
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         0.9806860   0.6589407   1.4595318
24 months   ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         2.8571428   1.0770898   7.5790015
24 months   ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         1.9801980   0.7009124   5.5943998
24 months   ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         2.1359223   0.7687111   5.9348225
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4         3.7790698   1.7640433   8.0958149
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4         1.2359155   0.4897626   3.1188316
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         0.9161074   0.3403771   2.4656561
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         2.4444444   1.1706862   5.1041077
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.6798942   0.7627299   3.6999264
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         0.9486461   0.3780992   2.3801414
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         1.5137131   1.1962391   1.9154426
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         1.5677743   1.2368345   1.9872636
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         1.3859321   1.0675908   1.7991985
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         2.1404925   1.7481741   2.6208536
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         1.9045079   1.5360583   2.3613364
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         1.7884590   1.4729642   2.1715297
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         1.2403101   0.6595622   2.3324095
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         1.4826753   0.8252733   2.6637552
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         0.6093948   0.2804655   1.3240920
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000          NA          NA
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         2.0898237          NA          NA
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         1.6606009          NA          NA
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         1.6981668          NA          NA
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000          NA          NA
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         2.0641366          NA          NA
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         1.5294118          NA          NA
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         0.8352273          NA          NA


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0067734    0.0008091    0.0127376
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0405187           NA           NA
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.0593774   -0.1181720   -0.0005828
3 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0374317   -0.0043920    0.0792554
3 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0349118    0.0032702    0.0665534
3 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0029921   -0.0060693    0.0120535
3 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0329985           NA           NA
3 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0133333           NA           NA
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0640374    0.0247479    0.1033269
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0164430    0.0046635    0.0282224
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.0059241   -0.0242790    0.0361273
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0204201           NA           NA
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0068703           NA           NA
9 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0027300   -0.0442601    0.0497201
9 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0275496   -0.0023028    0.0574021
9 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0599239    0.0104656    0.1093822
9 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0320029    0.0184077    0.0455982
9 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                -0.0056605   -0.0375469    0.0262260
9 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0082627           NA           NA
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.0481407   -0.1238169    0.0275354
12 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0130368   -0.0320990    0.0581725
12 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0421021    0.0075130    0.0766912
12 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0534583    0.0045014    0.1024152
12 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0515837    0.0329757    0.0701918
12 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                -0.0106789   -0.0510841    0.0297263
12 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0424831           NA           NA
12 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0148127           NA           NA
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.0275237   -0.1074033    0.0523559
18 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0132435   -0.0318963    0.0583834
18 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.0486538    0.0127441    0.0845634
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0363116   -0.0640583   -0.0085649
18 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0364899   -0.0108366    0.0838164
18 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0766066    0.0211717    0.1320416
18 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0915485    0.0669003    0.1161967
18 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                -0.0179808   -0.0598237    0.0238620
18 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0267023           NA           NA
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.0167233   -0.0991166    0.0656701
24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0502445    0.0080079    0.0924811
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.0337874    0.0010759    0.0664989
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0373503   -0.0041737    0.0788743
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.1116160    0.0595136    0.1637185
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.1117415    0.0859965    0.1374864
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.0087326   -0.0324119    0.0498771
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0580826           NA           NA
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0197769           NA           NA


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.4489569   -0.0865616    0.7205419
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.3598619           NA           NA
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.6513522   -1.4055124   -0.1336313
3 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.4231859   -0.2719736    0.7384266
3 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.3765483   -0.0514571    0.6303301
3 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.1162060   -0.3147119    0.4058836
3 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.3957892           NA           NA
3 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.2500000           NA           NA
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.4205443    0.1164581    0.6199740
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.3373302    0.0545516    0.5355313
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.0743708   -0.3937368    0.3852574
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.3098039           NA           NA
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.1230769           NA           NA
9 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0326797   -0.7301241    0.4591668
9 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.4337102   -0.2547626    0.7444264
9 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.2358824    0.0164639    0.4063504
9 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.4428160    0.2313782    0.5960900
9 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                -0.0808461   -0.6465275    0.2904897
9 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.1322034           NA           NA
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.2134432   -0.5990037    0.0791488
12 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.1556744   -0.5948668    0.5530124
12 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.4606462   -0.0531196    0.7237707
12 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.1557128    0.0005349    0.2867977
12 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.3876277    0.2359172    0.5092157
12 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                -0.1004785   -0.5538646    0.2206188
12 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.3736335           NA           NA
12 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.1783115           NA           NA
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.0931766   -0.3999357    0.1463643
18 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.1577540   -0.5909124    0.5541060
18 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.4703196    0.0128279    0.7157929
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.8869099   -1.6365541   -0.3504099
18 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.2361111   -0.1368360    0.4867103
18 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.1528502    0.0339302    0.2571316
18 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.3638578    0.2600335    0.4531145
18 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                -0.1375341   -0.5062324    0.1409136
18 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.2220980           NA           NA
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.0505777   -0.3318076    0.1712666
24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.5012195   -0.1084738    0.7755635
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.3971743   -0.1158955    0.6743433
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.3451444   -0.1615973    0.6308222
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.2245877    0.1111881    0.3235192
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.3965281    0.3000205    0.4797300
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.0759470   -0.3605846    0.3724212
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.3739609           NA           NA
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.2548566           NA           NA
