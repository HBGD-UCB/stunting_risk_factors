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
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4       82     26     23      3
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1       82      4      3      1
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2       82     15     13      2
Birth       ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3       82     37     27     10
Birth       ki0047075b-MAL-ED          BRAZIL                         Wealth Q4        3      2      1      1
Birth       ki0047075b-MAL-ED          BRAZIL                         Wealth Q1        3      0      0      0
Birth       ki0047075b-MAL-ED          BRAZIL                         Wealth Q2        3      1      0      1
Birth       ki0047075b-MAL-ED          BRAZIL                         Wealth Q3        3      0      0      0
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q4       55     21     16      5
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q1       55      1      1      0
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q2       55      9      7      2
Birth       ki0047075b-MAL-ED          INDIA                          Wealth Q3       55     24     18      6
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q4       31     14     11      3
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q1       31     11      9      2
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q2       31      4      4      0
Birth       ki0047075b-MAL-ED          NEPAL                          Wealth Q3       31      2      2      0
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q4       36      1      1      0
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q1       36     23     19      4
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q2       36     11      9      2
Birth       ki0047075b-MAL-ED          PERU                           Wealth Q3       36      1      1      0
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4       61     12     12      0
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1       61     10      9      1
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2       61     22     21      1
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3       61     17     14      3
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4       23      0      0      0
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1       23     16     14      2
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2       23      7      7      0
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3       23      0      0      0
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4       90     31     24      7
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1       90     14     12      2
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2       90     20     18      2
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3       90     25     20      5
Birth       ki1000108-IRC              INDIA                          Wealth Q4      388     91     80     11
Birth       ki1000108-IRC              INDIA                          Wealth Q1      388     98     90      8
Birth       ki1000108-IRC              INDIA                          Wealth Q2      388     99     83     16
Birth       ki1000108-IRC              INDIA                          Wealth Q3      388    100     90     10
Birth       ki1114097-CONTENT          PERU                           Wealth Q4        2      0      0      0
Birth       ki1114097-CONTENT          PERU                           Wealth Q1        2      0      0      0
Birth       ki1114097-CONTENT          PERU                           Wealth Q2        2      1      1      0
Birth       ki1114097-CONTENT          PERU                           Wealth Q3        2      1      1      0
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q4      381    144    140      4
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q1      381     91     88      3
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q2      381     64     58      6
Birth       ki1135781-COHORTS          GUATEMALA                      Wealth Q3      381     82     78      4
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q4     3049    842    810     32
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q1     3049    687    635     52
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q2     3049    538    500     38
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q3     3049    982    917     65
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4     9734   2095   1535    560
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1     9734   2575   1577    998
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2     9734   2620   1706    914
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3     9734   2444   1593    851
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4      224     49     31     18
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1      224     52     35     17
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2      224     53     41     12
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3      224     70     48     22
3 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4       82     26     24      2
3 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1       82      4      2      2
3 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2       82     15     14      1
3 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3       82     37     27     10
3 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q4        3      2      2      0
3 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q1        3      0      0      0
3 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q2        3      1      1      0
3 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q3        3      0      0      0
3 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4       71     29     26      3
3 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1       71      1      1      0
3 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2       71     10      7      3
3 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3       71     31     25      6
3 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4       42     21     20      1
3 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1       42     11     11      0
3 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2       42      6      5      1
3 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3       42      4      3      1
3 months    ki0047075b-MAL-ED          PERU                           Wealth Q4       37      1      1      0
3 months    ki0047075b-MAL-ED          PERU                           Wealth Q1       37     24     15      9
3 months    ki0047075b-MAL-ED          PERU                           Wealth Q2       37     11      8      3
3 months    ki0047075b-MAL-ED          PERU                           Wealth Q3       37      1      1      0
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4       68     13     12      1
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1       68     12      8      4
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2       68     24     23      1
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3       68     19     13      6
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4       59      0      0      0
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1       59     38     34      4
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2       59     21     17      4
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3       59      0      0      0
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4      362     93     61     32
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1      362     90     77     13
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2      362     92     69     23
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3      362     87     65     22
3 months    ki1000108-IRC              INDIA                          Wealth Q4      407     98     77     21
3 months    ki1000108-IRC              INDIA                          Wealth Q1      407    105     82     23
3 months    ki1000108-IRC              INDIA                          Wealth Q2      407    101     73     28
3 months    ki1000108-IRC              INDIA                          Wealth Q3      407    103     84     19
3 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4      643    168    151     17
3 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1      643    159    125     34
3 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2      643    156    143     13
3 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3      643    160    146     14
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4     2283    569    522     47
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1     2283    691    661     30
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2     2283    460    430     30
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3     2283    563    535     28
3 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4      571    142    127     15
3 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1      571    146    122     24
3 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2      571    142    119     23
3 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3      571    141    119     22
3 months    ki1114097-CONTENT          PERU                           Wealth Q4      215     52     48      4
3 months    ki1114097-CONTENT          PERU                           Wealth Q1      215     59     54      5
3 months    ki1114097-CONTENT          PERU                           Wealth Q2      215     52     45      7
3 months    ki1114097-CONTENT          PERU                           Wealth Q3      215     52     48      4
3 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4      453    173    125     48
3 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1      453    103     69     34
3 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2      453     81     56     25
3 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3      453     96     60     36
3 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4     2874    791    717     74
3 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1     2874    632    546     86
3 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2     2874    512    433     79
3 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3     2874    939    823    116
3 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4    12294   3196   2572    624
3 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1    12294   2992   1977   1015
3 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2    12294   3097   2147    950
3 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3    12294   3009   2195    814
3 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4      900    200    157     43
3 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1      900    224    161     63
3 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2      900    212    167     45
3 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3      900    264    216     48
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4       81     26     24      2
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1       81      4      3      1
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2       81     15     11      4
6 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3       81     36     27      9
6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q4        3      2      2      0
6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q1        3      0      0      0
6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q2        3      1      1      0
6 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q3        3      0      0      0
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4       71     29     24      5
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1       71      1      1      0
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2       71     10      9      1
6 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3       71     31     23      8
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4       42     21     20      1
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1       42     11     10      1
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2       42      6      6      0
6 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3       42      4      4      0
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q4       36      1      0      1
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q1       36     23     16      7
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q2       36     11      8      3
6 months    ki0047075b-MAL-ED          PERU                           Wealth Q3       36      1      1      0
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4       65     12     11      1
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1       65     12     11      1
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2       65     22     21      1
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3       65     19     15      4
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4       58      0      0      0
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1       58     37     28      9
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2       58     21     18      3
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3       58      0      0      0
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4      369     94     54     40
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1      369     91     77     14
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2      369     94     64     30
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3      369     90     63     27
6 months    ki1000108-IRC              INDIA                          Wealth Q4      407     99     78     21
6 months    ki1000108-IRC              INDIA                          Wealth Q1      407    105     79     26
6 months    ki1000108-IRC              INDIA                          Wealth Q2      407    100     67     33
6 months    ki1000108-IRC              INDIA                          Wealth Q3      407    103     83     20
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4      581    155    132     23
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1      581    138    103     35
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2      581    140    123     17
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3      581    148    129     19
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4     2020    502    435     67
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1     2020    605    556     49
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2     2020    409    366     43
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3     2020    504    468     36
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4      563    141    117     24
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1      563    145    112     33
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2      563    139    109     30
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3      563    138    106     32
6 months    ki1114097-CONTENT          PERU                           Wealth Q4      215     52     50      2
6 months    ki1114097-CONTENT          PERU                           Wealth Q1      215     59     52      7
6 months    ki1114097-CONTENT          PERU                           Wealth Q2      215     52     45      7
6 months    ki1114097-CONTENT          PERU                           Wealth Q3      215     52     49      3
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4      440    170    104     66
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1      440     95     50     45
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2      440     84     41     43
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3      440     91     46     45
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4     2708    743    623    120
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1     2708    570    431    139
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2     2708    485    382    103
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3     2708    910    700    210
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4      816    217    142     75
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1      816    203    127     76
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2      816    199    122     77
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3      816    197    129     68
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4     8314   2374   1922    452
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1     8314   1806   1233    573
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2     8314   2045   1453    592
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3     8314   2089   1530    559
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4     1254    286    229     57
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1     1254    331    228    103
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2     1254    294    217     77
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3     1254    343    282     61
9 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4       79     26     23      3
9 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1       79      4      1      3
9 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2       79     15     10      5
9 months    ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3       79     34     20     14
9 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q4        3      2      2      0
9 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q1        3      0      0      0
9 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q2        3      1      1      0
9 months    ki0047075b-MAL-ED          BRAZIL                         Wealth Q3        3      0      0      0
9 months    ki0047075b-MAL-ED          INDIA                          Wealth Q4       71     29     22      7
9 months    ki0047075b-MAL-ED          INDIA                          Wealth Q1       71      1      1      0
9 months    ki0047075b-MAL-ED          INDIA                          Wealth Q2       71     10      9      1
9 months    ki0047075b-MAL-ED          INDIA                          Wealth Q3       71     31     25      6
9 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q4       42     21     19      2
9 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q1       42     11     10      1
9 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q2       42      6      5      1
9 months    ki0047075b-MAL-ED          NEPAL                          Wealth Q3       42      4      4      0
9 months    ki0047075b-MAL-ED          PERU                           Wealth Q4       36      1      1      0
9 months    ki0047075b-MAL-ED          PERU                           Wealth Q1       36     23     14      9
9 months    ki0047075b-MAL-ED          PERU                           Wealth Q2       36     11      7      4
9 months    ki0047075b-MAL-ED          PERU                           Wealth Q3       36      1      1      0
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4       67     13     12      1
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1       67     11     10      1
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2       67     24     23      1
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3       67     19     15      4
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4       60      0      0      0
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1       60     39     29     10
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2       60     21     13      8
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3       60      0      0      0
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4      366     94     59     35
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1      366     88     68     20
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2      366     95     55     40
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3      366     89     49     40
9 months    ki1000108-IRC              INDIA                          Wealth Q4      407     99     78     21
9 months    ki1000108-IRC              INDIA                          Wealth Q1      407    105     71     34
9 months    ki1000108-IRC              INDIA                          Wealth Q2      407    100     65     35
9 months    ki1000108-IRC              INDIA                          Wealth Q3      407    103     82     21
9 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4      604    160    133     27
9 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1      604    145     96     49
9 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2      604    148    120     28
9 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3      604    151    126     25
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4     1780    430    343     87
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1     1780    538    466     72
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2     1780    361    303     58
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3     1780    451    405     46
9 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4      551    139     99     40
9 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1      551    141     95     46
9 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2      551    139    102     37
9 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3      551    132    100     32
9 months    ki1114097-CONTENT          PERU                           Wealth Q4      214     52     49      3
9 months    ki1114097-CONTENT          PERU                           Wealth Q1      214     59     49     10
9 months    ki1114097-CONTENT          PERU                           Wealth Q2      214     52     47      5
9 months    ki1114097-CONTENT          PERU                           Wealth Q3      214     51     47      4
9 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4      433    170     74     96
9 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1      433     98     32     66
9 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2      433     83     22     61
9 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3      433     82     35     47
9 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4     2712    745    609    136
9 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1     2712    575    380    195
9 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2     2712    484    355    129
9 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3     2712    908    622    286
9 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4      657    185    131     54
9 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1      657    158    107     51
9 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2      657    151     92     59
9 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3      657    163    110     53
9 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4     1280    295    229     66
9 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1     1280    334    208    126
9 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2     1280    304    215     89
9 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3     1280    347    274     73
12 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4       80     26     18      8
12 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1       80      4      1      3
12 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2       80     15      9      6
12 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3       80     35     21     14
12 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4        3      2      2      0
12 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1        3      0      0      0
12 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2        3      1      1      0
12 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3        3      0      0      0
12 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4       70     28     20      8
12 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1       70      1      1      0
12 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2       70     10      8      2
12 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3       70     31     23      8
12 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4       42     21     17      4
12 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1       42     11      8      3
12 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2       42      6      5      1
12 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3       42      4      4      0
12 months   ki0047075b-MAL-ED          PERU                           Wealth Q4       36      1      1      0
12 months   ki0047075b-MAL-ED          PERU                           Wealth Q1       36     23     11     12
12 months   ki0047075b-MAL-ED          PERU                           Wealth Q2       36     11      7      4
12 months   ki0047075b-MAL-ED          PERU                           Wealth Q3       36      1      1      0
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4       68     13     11      2
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1       68     12      9      3
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2       68     24     20      4
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3       68     19     16      3
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4       60      0      0      0
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1       60     39     22     17
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2       60     21      8     13
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3       60      0      0      0
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4      368     95     45     50
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1      368     88     48     40
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2      368     95     45     50
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3      368     90     47     43
12 months   ki1000108-IRC              INDIA                          Wealth Q4      406     99     77     22
12 months   ki1000108-IRC              INDIA                          Wealth Q1      406    104     66     38
12 months   ki1000108-IRC              INDIA                          Wealth Q2      406    100     67     33
12 months   ki1000108-IRC              INDIA                          Wealth Q3      406    103     77     26
12 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4      599    160    134     26
12 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1      599    141     84     57
12 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2      599    146    106     40
12 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3      599    152    118     34
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4     1438    357    277     80
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1     1438    432    377     55
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2     1438    297    248     49
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3     1438    352    298     54
12 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4      558    142     96     46
12 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1      558    140     89     51
12 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2      558    141     96     45
12 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3      558    135     86     49
12 months   ki1114097-CONTENT          PERU                           Wealth Q4      215     52     49      3
12 months   ki1114097-CONTENT          PERU                           Wealth Q1      215     59     48     11
12 months   ki1114097-CONTENT          PERU                           Wealth Q2      215     52     46      6
12 months   ki1114097-CONTENT          PERU                           Wealth Q3      215     52     46      6
12 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4      501    207     70    137
12 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1      501    107     22     85
12 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2      501     93     23     70
12 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3      501     94     33     61
12 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4     2585    724    519    205
12 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1     2585    527    279    248
12 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2     2585    463    277    186
12 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3     2585    871    510    361
12 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4      621    171    113     58
12 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1      621    147     82     65
12 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2      621    140     82     58
12 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3      621    163    100     63
12 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4     7203   2050   1453    597
12 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1     7203   1559    807    752
12 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2     7203   1779   1008    771
12 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3     7203   1815   1080    735
12 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4     1276    293    205     88
12 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1     1276    327    189    138
12 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2     1276    303    187    116
12 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3     1276    353    269     84
18 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4       78     26     14     12
18 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1       78      4      1      3
18 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2       78     15      7      8
18 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3       78     33     15     18
18 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4        3      2      2      0
18 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1        3      0      0      0
18 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2        3      1      1      0
18 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3        3      0      0      0
18 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4       71     29     14     15
18 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1       71      1      1      0
18 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2       71     10      8      2
18 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3       71     31     17     14
18 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4       42     21     18      3
18 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1       42     11      9      2
18 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2       42      6      4      2
18 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3       42      4      3      1
18 months   ki0047075b-MAL-ED          PERU                           Wealth Q4       34      1      1      0
18 months   ki0047075b-MAL-ED          PERU                           Wealth Q1       34     21      7     14
18 months   ki0047075b-MAL-ED          PERU                           Wealth Q2       34     11      3      8
18 months   ki0047075b-MAL-ED          PERU                           Wealth Q3       34      1      1      0
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4       66     13     10      3
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1       66     12      8      4
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2       66     24     17      7
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3       66     17     12      5
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4       58      0      0      0
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1       58     38     14     24
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2       58     20      6     14
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3       58      0      0      0
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4      369     96     28     68
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1      369     90     30     60
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2      369     93     32     61
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3      369     90     25     65
18 months   ki1000108-IRC              INDIA                          Wealth Q4      405     99     73     26
18 months   ki1000108-IRC              INDIA                          Wealth Q1      405    104     62     42
18 months   ki1000108-IRC              INDIA                          Wealth Q2      405     99     61     38
18 months   ki1000108-IRC              INDIA                          Wealth Q3      405    103     65     38
18 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4      551    146    110     36
18 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1      551    128     53     75
18 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2      551    133     83     50
18 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3      551    144    100     44
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4      977    233    164     69
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1      977    302    249     53
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2      977    207    153     54
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3      977    235    175     60
18 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4      550    144     73     71
18 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1      550    135     59     76
18 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2      550    140     67     73
18 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3      550    131     59     72
18 months   ki1114097-CONTENT          PERU                           Wealth Q4      200     48     46      2
18 months   ki1114097-CONTENT          PERU                           Wealth Q1      200     54     41     13
18 months   ki1114097-CONTENT          PERU                           Wealth Q2      200     48     43      5
18 months   ki1114097-CONTENT          PERU                           Wealth Q3      200     50     43      7
18 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4      421    179     40    139
18 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1      421     90      4     86
18 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2      421     80     12     68
18 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3      421     72     12     60
18 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4     2492    706    396    310
18 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1     2492    502    157    345
18 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2     2492    434    180    254
18 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3     2492    850    295    555
18 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4      719    195    114     81
18 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1      719    173     93     80
18 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2      719    177     92     85
18 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3      719    174     90     84
18 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4     1231    278    172    106
18 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1     1231    312    147    165
18 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2     1231    297    152    145
18 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3     1231    344    216    128
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4       77     26     15     11
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1       77      4      1      3
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2       77     15      8      7
24 months   ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3       77     32     16     16
24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q4        3      2      2      0
24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q1        3      0      0      0
24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q2        3      1      1      0
24 months   ki0047075b-MAL-ED          BRAZIL                         Wealth Q3        3      0      0      0
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q4       71     29     16     13
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q1       71      1      1      0
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q2       71     10      7      3
24 months   ki0047075b-MAL-ED          INDIA                          Wealth Q3       71     31     19     12
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q4       42     21     14      7
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q1       42     11      7      4
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q2       42      6      5      1
24 months   ki0047075b-MAL-ED          NEPAL                          Wealth Q3       42      4      3      1
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q4       32      1      1      0
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q1       32     21     10     11
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q2       32      9      5      4
24 months   ki0047075b-MAL-ED          PERU                           Wealth Q3       32      1      1      0
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4       66     13     10      3
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1       66     12      7      5
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2       66     23     14      9
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3       66     18     12      6
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4       59      0      0      0
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1       59     39     10     29
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2       59     20      4     16
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3       59      0      0      0
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4      372     95     27     68
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1      372     91     21     70
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2      372     95     26     69
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3      372     91     32     59
24 months   ki1000108-IRC              INDIA                          Wealth Q4      409    100     69     31
24 months   ki1000108-IRC              INDIA                          Wealth Q1      409    105     51     54
24 months   ki1000108-IRC              INDIA                          Wealth Q2      409    101     55     46
24 months   ki1000108-IRC              INDIA                          Wealth Q3      409    103     64     39
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4      576    156    123     33
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1      576    129     60     69
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2      576    142     95     47
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3      576    149    108     41
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4        6      1      0      1
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1        6      4      4      0
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2        6      1      1      0
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3        6      0      0      0
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4      499    127     77     50
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1      499    127     64     63
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2      499    126     72     54
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3      499    119     63     56
24 months   ki1114097-CONTENT          PERU                           Wealth Q4      164     41     38      3
24 months   ki1114097-CONTENT          PERU                           Wealth Q1      164     40     30     10
24 months   ki1114097-CONTENT          PERU                           Wealth Q2      164     42     38      4
24 months   ki1114097-CONTENT          PERU                           Wealth Q3      164     41     37      4
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4      497    205     49    156
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1      497    108     10     98
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2      497     96     10     86
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3      497     88     13     75
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4     2445    688    372    316
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1     2445    489    144    345
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2     2445    423    140    283
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3     2445    845    281    564
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4      574    160     97     63
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1      574    129     72     57
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2      574    146     75     71
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3      574    139     78     61
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4     4288   1121    722    399
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1     4288    999    407    592
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2     4288   1090    531    559
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3     4288   1078    563    515
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4     1250    294    203     91
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1     1250    310    168    142
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2     1250    294    169    125
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3     1250    352    222    130


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
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 18 months, studyid: ki1135781-COHORTS, country: GUATEMALA
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
## Warning: Removed 48 rows containing missing values (geom_errorbar).
```

![](/tmp/eb5c2514-c284-4dc7-8789-44d9e2f04a1c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->


```
## Warning: Removed 95 rows containing missing values (geom_errorbar).
```

![](/tmp/eb5c2514-c284-4dc7-8789-44d9e2f04a1c/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


```
## Warning: Removed 12 rows containing missing values (geom_errorbar).
```

![](/tmp/eb5c2514-c284-4dc7-8789-44d9e2f04a1c/REPORT_files/figure-html/plot_paf-1.png)<!-- -->


```
## Warning: Removed 12 rows containing missing values (geom_errorbar).
```

![](/tmp/eb5c2514-c284-4dc7-8789-44d9e2f04a1c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA                          Wealth Q4            NA                0.1208791   0.0538154   0.1879429
Birth       ki1000108-IRC              INDIA                          Wealth Q1            NA                0.0816327   0.0273532   0.1359121
Birth       ki1000108-IRC              INDIA                          Wealth Q2            NA                0.1616162   0.0890131   0.2342192
Birth       ki1000108-IRC              INDIA                          Wealth Q3            NA                0.1000000   0.0411252   0.1588748
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.0380048   0.0250875   0.0509220
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.0756914   0.0559093   0.0954735
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.0706320   0.0489787   0.0922852
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.0661914   0.0506392   0.0817437
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.2673031          NA          NA
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.3875728          NA          NA
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.3488550          NA          NA
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.3481997          NA          NA
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.3673469          NA          NA
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.3269231          NA          NA
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.2264151          NA          NA
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.3142857          NA          NA
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.3440860   0.2473999   0.4407722
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.1444444   0.0717164   0.2171725
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.2500000   0.1613956   0.3386044
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.2528736   0.1614121   0.3443350
3 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                0.2142857   0.1329468   0.2956246
3 months    ki1000108-IRC              INDIA                          Wealth Q1            NA                0.2190476   0.1398396   0.2982556
3 months    ki1000108-IRC              INDIA                          Wealth Q2            NA                0.2772277   0.1898218   0.3646336
3 months    ki1000108-IRC              INDIA                          Wealth Q3            NA                0.1844660   0.1094692   0.2594628
3 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                0.1011905   0.0555516   0.1468294
3 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                0.2138365   0.1500564   0.2776165
3 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                0.0833333   0.0399284   0.1267382
3 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                0.0875000   0.0436826   0.1313174
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.0826011   0.0599776   0.1052245
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.0434153   0.0282173   0.0586134
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.0652174   0.0426490   0.0877858
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.0497336   0.0317723   0.0676948
3 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.1056338   0.0550346   0.1562330
3 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.1643836   0.1042129   0.2245542
3 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.1619718   0.1013214   0.2226222
3 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.1560284   0.0960790   0.2159778
3 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.2774566   0.2106631   0.3442502
3 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.3300971   0.2391820   0.4210122
3 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.3086420   0.2079339   0.4093501
3 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.3750000   0.2780500   0.4719500
3 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.0935525   0.0732554   0.1138496
3 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.1360759   0.1093401   0.1628118
3 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.1542969   0.1230018   0.1855920
3 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.1235357   0.1024856   0.1445858
3 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.1952441          NA          NA
3 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.3392380          NA          NA
3 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.3067485          NA          NA
3 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.2705218          NA          NA
3 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.2150000          NA          NA
3 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.2812500          NA          NA
3 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.2122642          NA          NA
3 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.1818182          NA          NA
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.4255319   0.3254461   0.5256177
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.1538462   0.0796153   0.2280770
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.3191489   0.2247871   0.4135107
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.3000000   0.2051962   0.3948038
6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                0.2121212   0.1314931   0.2927493
6 months    ki1000108-IRC              INDIA                          Wealth Q1            NA                0.2476190   0.1649584   0.3302796
6 months    ki1000108-IRC              INDIA                          Wealth Q2            NA                0.3300000   0.2377266   0.4222734
6 months    ki1000108-IRC              INDIA                          Wealth Q3            NA                0.1941748   0.1176890   0.2706605
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                0.1483871   0.0923758   0.2043984
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                0.2536232   0.1809698   0.3262766
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                0.1214286   0.0672775   0.1755797
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                0.1283784   0.0744396   0.1823172
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.1334661   0.1037096   0.1632227
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.0809917   0.0592468   0.1027367
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.1051345   0.0754010   0.1348679
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.0714286   0.0489389   0.0939183
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.1702128   0.1081253   0.2323002
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.2275862   0.1592819   0.2958905
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.2158273   0.1473754   0.2842793
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.2318841   0.1614077   0.3023604
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.3882353   0.3148925   0.4615781
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.4736842   0.3731652   0.5742032
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.5119048   0.4048886   0.6189209
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.4945055   0.3916647   0.5973462
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.1615074   0.1350419   0.1879729
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.2438596   0.2086013   0.2791180
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.2123711   0.1759657   0.2487765
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.2307692   0.2033898   0.2581487
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                0.3456221   0.2823081   0.4089361
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1            NA                0.3743842   0.3077682   0.4410003
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2            NA                0.3869347   0.3192235   0.4546458
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3            NA                0.3451777   0.2787477   0.4116077
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.1903960          NA          NA
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.3172757          NA          NA
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.2894866          NA          NA
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.2675921          NA          NA
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.1993007          NA          NA
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.3111782          NA          NA
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.2619048          NA          NA
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.1778426          NA          NA
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.3723404   0.2744792   0.4702016
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.2272727   0.1395953   0.3149501
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.4210526   0.3216339   0.5204713
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.4494382   0.3459513   0.5529251
9 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                0.2121212   0.1314931   0.2927493
9 months    ki1000108-IRC              INDIA                          Wealth Q1            NA                0.3238095   0.2341974   0.4134217
9 months    ki1000108-IRC              INDIA                          Wealth Q2            NA                0.3500000   0.2564006   0.4435994
9 months    ki1000108-IRC              INDIA                          Wealth Q3            NA                0.2038835   0.1259825   0.2817845
9 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                0.1687500   0.1106688   0.2268312
9 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                0.3379310   0.2608780   0.4149840
9 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                0.1891892   0.1260375   0.2523409
9 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                0.1655629   0.1062297   0.2248961
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.2023256   0.1643439   0.2403073
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.1338290   0.1050513   0.1626067
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.1606648   0.1227731   0.1985566
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.1019956   0.0740565   0.1299346
9 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.2877698   0.2124398   0.3630998
9 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.3262411   0.2487852   0.4036971
9 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.2661871   0.1926474   0.3397267
9 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.2424242   0.1692503   0.3155982
9 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.5647059   0.4900905   0.6393212
9 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.6734694   0.5805175   0.7664212
9 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.7349398   0.6398772   0.8300023
9 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.5731707   0.4659911   0.6803504
9 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.1825503   0.1548062   0.2102945
9 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.3391304   0.3004282   0.3778326
9 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.2665289   0.2271314   0.3059265
9 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.3149780   0.2847591   0.3451968
9 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                0.2918919   0.2263297   0.3574541
9 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1            NA                0.3227848   0.2498273   0.3957424
9 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2            NA                0.3907285   0.3128471   0.4686098
9 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3            NA                0.3251534   0.2531867   0.3971201
9 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.2237288          NA          NA
9 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.3772455          NA          NA
9 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.2927632          NA          NA
9 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.2103746          NA          NA
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.5263158   0.4257744   0.6268572
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.4545455   0.3503700   0.5587210
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.5263158   0.4257744   0.6268572
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.4777778   0.3744402   0.5811154
12 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                0.2222222   0.1402272   0.3042172
12 months   ki1000108-IRC              INDIA                          Wealth Q1            NA                0.3653846   0.2727235   0.4580457
12 months   ki1000108-IRC              INDIA                          Wealth Q2            NA                0.3300000   0.2377263   0.4222737
12 months   ki1000108-IRC              INDIA                          Wealth Q3            NA                0.2524272   0.1684310   0.3364234
12 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                0.1625000   0.1052903   0.2197097
12 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                0.4042553   0.3231855   0.4853252
12 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                0.2739726   0.2015683   0.3463769
12 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                0.2236842   0.1573823   0.2899861
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.2240896   0.1808202   0.2673591
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.1273148   0.0958717   0.1587579
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.1649832   0.1227563   0.2072100
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.1534091   0.1157482   0.1910699
12 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.3239437   0.2469031   0.4009843
12 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.3642857   0.2844999   0.4440715
12 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.3191489   0.2421383   0.3961596
12 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.3629630   0.2817764   0.4441495
12 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.6618357   0.5973245   0.7263470
12 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.7943925   0.7177399   0.8710452
12 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.7526882   0.6649132   0.8404631
12 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.6489362   0.5523506   0.7455217
12 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.2831492   0.2503257   0.3159727
12 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.4705882   0.4279652   0.5132112
12 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.4017279   0.3570639   0.4463918
12 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.4144661   0.3817439   0.4471884
12 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                0.3391813   0.2681651   0.4101974
12 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            NA                0.4421769   0.3618269   0.5225268
12 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            NA                0.4142857   0.3326224   0.4959490
12 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            NA                0.3865031   0.3116884   0.4613178
12 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.2912195          NA          NA
12 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.4823605          NA          NA
12 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.4333895          NA          NA
12 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.4049587          NA          NA
12 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.3003413          NA          NA
12 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.4220183          NA          NA
12 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.3828383          NA          NA
12 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.2379603          NA          NA
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.7083333   0.6172867   0.7993800
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.6666667   0.5691430   0.7641903
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.6559140   0.5592304   0.7525976
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.7222222   0.6295605   0.8148839
18 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                0.2626263   0.1758342   0.3494184
18 months   ki1000108-IRC              INDIA                          Wealth Q1            NA                0.4038462   0.3094280   0.4982643
18 months   ki1000108-IRC              INDIA                          Wealth Q2            NA                0.3838384   0.2879229   0.4797539
18 months   ki1000108-IRC              INDIA                          Wealth Q3            NA                0.3689320   0.2756329   0.4622312
18 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                0.2465753   0.1765975   0.3165532
18 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                0.5859375   0.5005300   0.6713450
18 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                0.3759398   0.2935471   0.4583326
18 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                0.3055556   0.2302503   0.3808608
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                0.2961373   0.2374853   0.3547894
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            NA                0.1754967   0.1325729   0.2184204
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            NA                0.2608696   0.2010205   0.3207187
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            NA                0.2553191   0.1995411   0.3110972
18 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.4930556   0.4113239   0.5747872
18 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.5629630   0.4792148   0.6467111
18 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.5214286   0.4386057   0.6042514
18 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.5496183   0.4643420   0.6348947
18 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.4390935   0.4024787   0.4757083
18 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.6872510   0.6466872   0.7278148
18 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.5852535   0.5388924   0.6316146
18 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.6529412   0.6209327   0.6849496
18 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                0.4153846   0.3461707   0.4845985
18 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            NA                0.4624277   0.3880800   0.5367755
18 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            NA                0.4802260   0.4065724   0.5538796
18 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            NA                0.4827586   0.4084589   0.5570584
18 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.3812950          NA          NA
18 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.5288462          NA          NA
18 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.4882155          NA          NA
18 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.3720930          NA          NA
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                0.7157895   0.6249690   0.8066099
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            NA                0.7692308   0.6825487   0.8559128
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            NA                0.7263158   0.6365402   0.8160914
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            NA                0.6483516   0.5501155   0.7465878
24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                0.3100000   0.2192420   0.4007580
24 months   ki1000108-IRC              INDIA                          Wealth Q1            NA                0.5142857   0.4185712   0.6100002
24 months   ki1000108-IRC              INDIA                          Wealth Q2            NA                0.4554455   0.3582027   0.5526884
24 months   ki1000108-IRC              INDIA                          Wealth Q3            NA                0.3786408   0.2848530   0.4724285
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                0.2115385   0.1473956   0.2756813
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            NA                0.5348837   0.4487366   0.6210309
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            NA                0.3309859   0.2535213   0.4084506
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            NA                0.2751678   0.2033967   0.3469389
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                0.3937008   0.3086441   0.4787575
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            NA                0.4960630   0.4090191   0.5831069
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            NA                0.4285714   0.3420764   0.5150664
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            NA                0.4705882   0.3808190   0.5603575
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                0.7609756   0.7025350   0.8194163
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            NA                0.9074074   0.8526853   0.9621295
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            NA                0.8958333   0.8346648   0.9570018
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            NA                0.8522727   0.7780625   0.9264830
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                0.4593023   0.4220572   0.4965474
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            NA                0.7055215   0.6651137   0.7459292
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            NA                0.6690307   0.6241785   0.7138829
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            NA                0.6674556   0.6356836   0.6992276
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                0.3937500   0.3179790   0.4695210
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            NA                0.4418605   0.3560884   0.5276325
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            NA                0.4863014   0.4051572   0.5674455
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            NA                0.4388489   0.3562800   0.5214179
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                0.3559322          NA          NA
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            NA                0.5925926          NA          NA
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            NA                0.5128440          NA          NA
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            NA                0.4777365          NA          NA
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                0.3095238          NA          NA
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            NA                0.4580645          NA          NA
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            NA                0.4251701          NA          NA
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            NA                0.3693182          NA          NA


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA                          NA                   NA                0.1159794   0.0840777   0.1478811
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0613316   0.0528136   0.0698496
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.3413807          NA          NA
Birth       kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.3080357          NA          NA
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.2486188   0.2040335   0.2932041
3 months    ki1000108-IRC              INDIA                          NA                   NA                0.2235872   0.1830592   0.2641152
3 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1213064   0.0960517   0.1465610
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0591327   0.0494551   0.0688103
3 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1471103   0.1180314   0.1761893
3 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.3156733   0.2728254   0.3585212
3 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1235212   0.1114897   0.1355528
3 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2768017          NA          NA
3 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2211111          NA          NA
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.3008130   0.2539566   0.3476694
6 months    ki1000108-IRC              INDIA                          NA                   NA                0.2457002   0.2038248   0.2875757
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1617900   0.1318200   0.1917600
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0965347   0.0836528   0.1094165
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.2113677   0.1776128   0.2451225
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.4522727   0.4057143   0.4988311
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2112260   0.1958496   0.2266024
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                0.3627451   0.3297365   0.3957537
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2617272          NA          NA
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2376396          NA          NA
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.3688525   0.3193538   0.4183511
9 months    ki1000108-IRC              INDIA                          NA                   NA                0.2727273   0.2294063   0.3160482
9 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2135762   0.1808651   0.2462872
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1477528   0.1312632   0.1642424
9 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.2813067   0.2437292   0.3188843
9 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.6235566   0.5778694   0.6692437
9 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2750737   0.2582642   0.2918832
9 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                0.3302892   0.2942988   0.3662796
9 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2765625          NA          NA
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.4972826   0.4461287   0.5484365
12 months   ki1000108-IRC              INDIA                          NA                   NA                0.2931034   0.2487723   0.3374346
12 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2621035   0.2268557   0.2973513
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1655076   0.1462927   0.1847226
12 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.3422939   0.3028903   0.3816975
12 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7045908   0.6646015   0.7445801
12 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.3868472   0.3680689   0.4056255
12 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.3929147   0.3544709   0.4313584
12 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.3963626          NA          NA
12 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.3338558          NA          NA
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.6883469   0.6410248   0.7356689
18 months   ki1000108-IRC              INDIA                          NA                   NA                0.3555556   0.3088785   0.4022327
18 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3720508   0.3316556   0.4124461
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2415558   0.2147027   0.2684088
18 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.5309091   0.4891645   0.5726537
18 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.5874799   0.5681478   0.6068121
18 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.4589708   0.4225215   0.4954201
18 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.4419171          NA          NA
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.7150538   0.6691221   0.7609854
24 months   ki1000108-IRC              INDIA                          NA                   NA                0.4156479   0.3678270   0.4634689
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3298611   0.2914318   0.3682904
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.4468938   0.4032281   0.4905594
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.8350101   0.8023451   0.8676750
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6167689   0.5974942   0.6360437
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.4390244   0.3983906   0.4796582
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4815765          NA          NA
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.3904000          NA          NA


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
Birth       ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         0.6753247   0.2840672   1.6054774
Birth       ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         1.3370064   0.6547919   2.7300066
Birth       ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         0.8272727   0.3683993   1.8577130
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         1.9916303   1.2971947   3.0578225
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         1.8585037   1.1759273   2.9372872
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         1.7416624   1.1521723   2.6327556
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000          NA          NA
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         1.4499376          NA          NA
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         1.3050913          NA          NA
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         1.3026398          NA          NA
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000          NA          NA
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         0.8899573          NA          NA
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         0.6163522          NA          NA
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         0.8555556          NA          NA
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         0.4197917   0.2358403   0.7472220
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         0.7265625   0.4622153   1.1420935
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         0.7349138   0.4648617   1.1618472
3 months    ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
3 months    ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         1.0222222   0.6051548   1.7267289
3 months    ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         1.2937294   0.7898478   2.1190610
3 months    ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         0.8608414   0.4935854   1.5013572
3 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
3 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4         2.1132075   1.2305784   3.6289002
3 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4         0.8235294   0.4134784   1.6402325
3 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         0.8647059   0.4407393   1.6965045
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         0.5256028   0.3369960   0.8197673
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         0.7895467   0.5078252   1.2275563
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         0.6020937   0.3826628   0.9473532
3 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
3 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         1.5561644   0.8516088   2.8436150
3 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.5333333   0.8348090   2.8163461
3 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         1.4770686   0.7993129   2.7295089
3 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
3 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         1.1897249   0.8252431   1.7151859
3 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         1.1123971   0.7415804   1.6686355
3 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         1.3515625   0.9493298   1.9242220
3 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
3 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         1.4545415   1.0854429   1.9491499
3 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         1.6493084   1.2255086   2.2196646
3 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         1.3204961   1.0021355   1.7399943
3 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000          NA          NA
3 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         1.7375073          NA          NA
3 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         1.5711027          NA          NA
3 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         1.3855570          NA          NA
3 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000          NA          NA
3 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         1.3081395          NA          NA
3 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         0.9872751          NA          NA
3 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         0.8456660          NA          NA
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         0.3615385   0.2113666   0.6184046
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         0.7500000   0.5140216   1.0943119
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         0.7050000   0.4754511   1.0453757
6 months    ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         1.1673469   0.7038798   1.9359824
6 months    ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         1.5557143   0.9705053   2.4938009
6 months    ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         0.9153953   0.5295166   1.5824783
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4         1.7091997   1.0641395   2.7452827
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4         0.8183230   0.4562326   1.4677874
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         0.8651586   0.4918146   1.5219140
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         0.6068336   0.4280625   0.8602646
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         0.7877240   0.5495069   1.1292107
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         0.5351812   0.3638731   0.7871397
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         1.3370690   0.8336980   2.1443659
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.2679856   0.7819711   2.0560702
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         1.3623188   0.8473835   2.1901685
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         1.2200957   0.9183440   1.6209976
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         1.3185426   0.9947746   1.7476869
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         1.2737263   0.9617381   1.6869236
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         1.5098977   1.2135004   1.8786899
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         1.3149313   1.0373186   1.6668402
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         1.4288462   1.1671439   1.7492284
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         1.0832184   0.8390850   1.3983828
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         1.1195310   0.8689850   1.4423145
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         0.9987140   0.7656844   1.3026643
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000          NA          NA
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         1.6663996          NA          NA
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         1.5204449          NA          NA
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         1.4054508          NA          NA
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000          NA          NA
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         1.5613505          NA          NA
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         1.3141186          NA          NA
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         0.8923329          NA          NA
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         0.6103896   0.3827166   0.9735023
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         1.1308271   0.7942442   1.6100462
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         1.2070626   0.8510929   1.7119167
9 months    ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
9 months    ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         1.5265306   0.9539167   2.4428712
9 months    ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         1.6500000   1.0366781   2.6261767
9 months    ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         0.9611650   0.5607049   1.6476371
9 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
9 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4         2.0025543   1.3251997   3.0261277
9 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4         1.1211211   0.6941022   1.8108465
9 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         0.9811136   0.5969324   1.6125509
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         0.6614537   0.4972001   0.8799695
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         0.7940905   0.5874332   1.0734492
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         0.5041160   0.3616689   0.7026675
9 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
9 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         1.1336879   0.7961839   1.6142607
9 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         0.9250000   0.6321978   1.3534134
9 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         0.8424242   0.5649528   1.2561732
9 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
9 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         1.1926020   0.9851776   1.4436986
9 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         1.3014558   1.0817495   1.5657851
9 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         1.0149898   0.8072776   1.2761464
9 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
9 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         1.8577366   1.5361833   2.2465973
9 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         1.4600298   1.1811011   1.8048303
9 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         1.7254308   1.4415912   2.0651565
9 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
9 months    ki1148112-LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         1.1058368   0.8040873   1.5208239
9 months    ki1148112-LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         1.3386068   0.9913669   1.8074724
9 months    ki1148112-LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         1.1139514   0.8126747   1.5269180
9 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000          NA          NA
9 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         1.6861731          NA          NA
9 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         1.3085626          NA          NA
9 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         0.9403109          NA          NA
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         0.8636364   0.6408482   1.1638759
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         1.0000000   0.7632610   1.3101678
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         0.9077778   0.6802293   1.2114451
12 months   ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
12 months   ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         1.6442308   1.0507967   2.5728048
12 months   ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         1.4850000   0.9346871   2.3593189
12 months   ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         1.1359223   0.6911385   1.8669480
12 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
12 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4         2.4877250   1.6589723   3.7304877
12 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4         1.6859852   1.0856041   2.6184004
12 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         1.3765182   0.8687806   2.1809907
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         0.5681424   0.4152488   0.7773310
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         0.7362374   0.5342908   1.0145139
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         0.6845881   0.5009400   0.9355627
12 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
12 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         1.1245342   0.8138821   1.5537596
12 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         0.9851989   0.7020783   1.3824909
12 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         1.1204509   0.8083577   1.5530379
12 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
12 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         1.2002865   1.0464508   1.3767371
12 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         1.1372734   0.9769169   1.3239517
12 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         0.9805094   0.8207005   1.1714368
12 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
12 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         1.6619799   1.4346174   1.9253755
12 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         1.4187852   1.2082587   1.6659938
12 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         1.4637731   1.2722194   1.6841683
12 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
12 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         1.3036594   0.9880146   1.7201444
12 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         1.2214286   0.9161787   1.6283807
12 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         1.1395177   0.8568109   1.5155042
12 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000          NA          NA
12 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         1.6563467          NA          NA
12 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         1.4881886          NA          NA
12 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         1.3905616          NA          NA
12 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000          NA          NA
12 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         1.4051293          NA          NA
12 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         1.2746775          NA          NA
12 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         0.7922998          NA          NA
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         0.9411765   0.7746392   1.1435171
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         0.9259962   0.7615045   1.1260196
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         1.0196078   0.8502768   1.2226609
18 months   ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
18 months   ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         1.5377219   1.0258128   2.3050879
18 months   ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         1.4615385   0.9657727   2.2117985
18 months   ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         1.4047797   0.9265800   2.1297741
18 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
18 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4         2.3763021   1.7272011   3.2693422
18 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4         1.5246449   1.0652268   2.1822041
18 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         1.2391975   0.8509431   1.8045984
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1            Wealth Q4         0.5926193   0.4326085   0.8118139
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2            Wealth Q4         0.8809074   0.6505818   1.1927751
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3            Wealth Q4         0.8621647   0.6419871   1.1578548
18 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
18 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         1.1417840   0.9138049   1.4266401
18 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.0575453   0.8406067   1.3304700
18 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         1.1147188   0.8882987   1.3988517
18 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
18 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         1.5651587   1.4131549   1.7335127
18 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         1.3328675   1.1880548   1.4953316
18 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         1.4870209   1.3499199   1.6380461
18 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
18 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         1.1132520   0.8831499   1.4033065
18 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         1.1560996   0.9218107   1.4499357
18 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         1.1621967   0.9263369   1.4581101
18 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000          NA          NA
18 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         1.3869739          NA          NA
18 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         1.2804142          NA          NA
18 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         0.9758666          NA          NA
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1            Wealth Q4         1.0746606   0.9069278   1.2734150
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2            Wealth Q4         1.0147059   0.8499851   1.2113483
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3            Wealth Q4         0.9057854   0.7433566   1.1037061
24 months   ki1000108-IRC              INDIA                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   ki1000108-IRC              INDIA                          Wealth Q1            Wealth Q4         1.6589862   1.1726791   2.3469635
24 months   ki1000108-IRC              INDIA                          Wealth Q2            Wealth Q4         1.4691792   1.0226018   2.1107800
24 months   ki1000108-IRC              INDIA                          Wealth Q3            Wealth Q4         1.2214219   0.8323714   1.7923145
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1            Wealth Q4         2.5285412   1.7937396   3.5643528
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2            Wealth Q4         1.5646607   1.0667648   2.2949417
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3            Wealth Q4         1.3007932   0.8719768   1.9404907
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q1            Wealth Q4         1.2600000   0.9538844   1.6643526
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q2            Wealth Q4         1.0885714   0.8099518   1.4630349
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q3            Wealth Q4         1.1952941   0.8959986   1.5945650
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q1            Wealth Q4         1.1924264   1.0814957   1.3147354
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q2            Wealth Q4         1.1772169   1.0622516   1.3046246
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q3            Wealth Q4         1.1199738   0.9972077   1.2578535
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q1            Wealth Q4         1.5360721   1.3909006   1.6963955
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q2            Wealth Q4         1.4566239   1.3111527   1.6182349
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q3            Wealth Q4         1.4531945   1.3227785   1.5964686
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.0000000
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q1            Wealth Q4         1.1221853   0.8538014   1.4749331
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q2            Wealth Q4         1.2350511   0.9573467   1.5933112
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q3            Wealth Q4         1.1145369   0.8515552   1.4587341
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000          NA          NA
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q1            Wealth Q4         1.6649030          NA          NA
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q2            Wealth Q4         1.4408475          NA          NA
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q3            Wealth Q4         1.3422122          NA          NA
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            Wealth Q4         1.0000000          NA          NA
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q1            Wealth Q4         1.4799007          NA          NA
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q2            Wealth Q4         1.3736264          NA          NA
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q3            Wealth Q4         1.1931818          NA          NA


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.0048997   -0.0632572    0.0534577
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0233268    0.0111920    0.0354617
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0740776           NA           NA
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -0.0593112           NA           NA
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.0954672   -0.1762932   -0.0146413
3 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0093015   -0.0619196    0.0805226
3 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.0201159   -0.0202856    0.0605174
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0234683   -0.0421860   -0.0047507
3 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0414765   -0.0047019    0.0876550
3 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0382166   -0.0155396    0.0919729
3 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0299688    0.0118040    0.0481336
3 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0815576           NA           NA
3 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0061111           NA           NA
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.1247189   -0.2090344   -0.0404035
6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0335790   -0.0377782    0.1049362
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.0134029   -0.0351927    0.0619986
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0369315   -0.0616559   -0.0122071
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0411549   -0.0141930    0.0965029
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0640374    0.0058118    0.1222631
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0497186    0.0262132    0.0732240
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.0171230   -0.0373396    0.0715855
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.0713313           NA           NA
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0383389           NA           NA
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.0034880   -0.0877951    0.0808192
9 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0606061   -0.0116089    0.1328210
9 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.0448262   -0.0067121    0.0963644
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0545728   -0.0864714   -0.0226741
9 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0064631   -0.0714525    0.0585264
9 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0588507    0.0015524    0.1161490
9 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.0925234    0.0674356    0.1176112
9 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.0383973   -0.0179321    0.0947267
9 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0528337           NA           NA
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.0290332   -0.1156715    0.0576051
12 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0708812   -0.0026690    0.1444315
12 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.0996035    0.0470025    0.1522046
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0585820   -0.0948014   -0.0223625
12 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0183502   -0.0484860    0.0851865
12 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0427551   -0.0054303    0.0909405
12 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.1036980    0.0749490    0.1324470
12 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.0537334   -0.0074528    0.1149196
12 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.1051431           NA           NA
12 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0335145           NA           NA
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.0199864   -0.0988258    0.0588529
18 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0929293    0.0152834    0.1705752
18 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.1254755    0.0627572    0.1881938
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.0545816   -0.1047845   -0.0043786
18 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0378535   -0.0323230    0.1080301
18 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.1483865    0.1174874    0.1792855
18 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.0435862   -0.0157486    0.1029209
18 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0606222           NA           NA
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.0007357   -0.0791270    0.0776556
24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.1056479    0.0250503    0.1862456
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.1183226    0.0603353    0.1763100
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0531930   -0.0206905    0.1270765
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0740344    0.0332319    0.1148370
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.1574666    0.1261932    0.1887400
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.0452744   -0.0194686    0.1100174
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.1256443           NA           NA
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0808762           NA           NA


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              INDIA                          Wealth Q4            NA                -0.0422466   -0.6888711    0.3568023
Birth       ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.3803397    0.1562675    0.5449044
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.2169942           NA           NA
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                -0.1925466           NA           NA
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.3839904   -0.7496708   -0.0947371
3 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.0416013   -0.3362028    0.3125833
3 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.1658272   -0.2414656    0.4394978
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.3968756   -0.7452078   -0.1180683
3 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.2819416   -0.1059863    0.5338027
3 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.1210639   -0.0666605    0.2757502
3 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.2426203    0.0821357    0.3750449
3 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.2946428           NA           NA
3 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.0276382           NA           NA
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.4146061   -0.7265610   -0.1590152
6 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.1366667   -0.2080049    0.3829955
6 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.0828415   -0.2721917    0.3387948
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.3825723   -0.6596108   -0.1517797
6 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.1947077   -0.1132835    0.4174927
6 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.1415903    0.0022952    0.2614377
6 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.2353810    0.1164988    0.3382667
6 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.0472039   -0.1154182    0.1861165
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.2725405           NA           NA
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.1613320           NA           NA
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.0094563   -0.2659683    0.1950810
9 months    ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.2222222   -0.0918404    0.4459463
9 months    ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.2098837   -0.0706714    0.4169231
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.3693518   -0.6007640   -0.1713934
9 months    ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                -0.0229752   -0.2821645    0.1838191
9 months    ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0943791   -0.0029086    0.1822293
9 months    ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.3363586    0.2399168    0.4205635
9 months    ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.1162536   -0.0717866    0.2713029
9 months    kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.1910371           NA           NA
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.0583837   -0.2479005    0.1023516
12 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.2418301   -0.0542404    0.4547528
12 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.3800159    0.1481030    0.5487949
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.3539533   -0.5893633   -0.1534114
12 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0536096   -0.1632514    0.2300420
12 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0606807   -0.0105821    0.1269183
12 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.2680594    0.1899358    0.3386486
12 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.1367558   -0.0339788    0.2792981
12 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.2652700           NA           NA
12 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.1003862           NA           NA
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.0290354   -0.1502558    0.0794101
18 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.2613636    0.0079419    0.4500487
18 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.3372536    0.1464035    0.4854328
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4            NA                -0.2259584   -0.4520516   -0.0350693
18 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.0712995   -0.0709028    0.1946191
18 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.2525813    0.1973004    0.3040551
18 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.0949650   -0.0441377    0.2155361
18 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.1371800           NA           NA
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4            NA                -0.0010289   -0.1168874    0.1028112
24 months   ki1000108-IRC              INDIA                          Wealth Q4            NA                 0.2541765    0.0325520    0.4250309
24 months   ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4            NA                 0.3587045    0.1588737    0.5110603
24 months   ki1113344-GMS-Nepal        NEPAL                          Wealth Q4            NA                 0.1190283   -0.0630380    0.2699121
24 months   ki1135781-COHORTS          GUATEMALA                      Wealth Q4            NA                 0.0886629    0.0374065    0.1371900
24 months   ki1135781-COHORTS          PHILIPPINES                    Wealth Q4            NA                 0.2553089    0.2019063    0.3051382
24 months   ki1148112-LCNI-5           MALAWI                         Wealth Q4            NA                 0.1031250   -0.0573088    0.2392149
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Wealth Q4            NA                 0.2609020           NA           NA
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Wealth Q4            NA                 0.2071624           NA           NA
