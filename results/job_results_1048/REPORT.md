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

**Intervention Variable:** meducyrs

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
Birth       ki0047075b-MAL-ED          BANGLADESH                     Q4      207     59     55      4
Birth       ki0047075b-MAL-ED          BANGLADESH                     Q1      207     40     28     12
Birth       ki0047075b-MAL-ED          BANGLADESH                     Q2      207     28     23      5
Birth       ki0047075b-MAL-ED          BANGLADESH                     Q3      207     80     65     15
Birth       ki0047075b-MAL-ED          BRAZIL                         Q4      190     65     58      7
Birth       ki0047075b-MAL-ED          BRAZIL                         Q1      190     40     37      3
Birth       ki0047075b-MAL-ED          BRAZIL                         Q2      190     36     29      7
Birth       ki0047075b-MAL-ED          BRAZIL                         Q3      190     49     45      4
Birth       ki0047075b-MAL-ED          INDIA                          Q4      183     51     42      9
Birth       ki0047075b-MAL-ED          INDIA                          Q1      183     27     24      3
Birth       ki0047075b-MAL-ED          INDIA                          Q2      183     43     38      5
Birth       ki0047075b-MAL-ED          INDIA                          Q3      183     62     52     10
Birth       ki0047075b-MAL-ED          NEPAL                          Q4      160     13     10      3
Birth       ki0047075b-MAL-ED          NEPAL                          Q1      160     21     19      2
Birth       ki0047075b-MAL-ED          NEPAL                          Q2      160     47     41      6
Birth       ki0047075b-MAL-ED          NEPAL                          Q3      160     79     73      6
Birth       ki0047075b-MAL-ED          PERU                           Q4      286     87     77     10
Birth       ki0047075b-MAL-ED          PERU                           Q1      286     60     52      8
Birth       ki0047075b-MAL-ED          PERU                           Q2      286     67     60      7
Birth       ki0047075b-MAL-ED          PERU                           Q3      286     72     63      9
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Q4      262     72     63      9
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Q1      262     51     49      2
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Q2      262     82     75      7
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Q3      262     57     47     10
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4      107      2      2      0
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1      107     15     14      1
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2      107     20     18      2
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3      107     70     58     12
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Q4       90      7      7      0
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Q1       90     15     13      2
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Q2       90     25     18      7
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Q3       90     43     36      7
Birth       ki1000108-IRC              INDIA                          Q4      388     10      9      1
Birth       ki1000108-IRC              INDIA                          Q1      388    176    155     21
Birth       ki1000108-IRC              INDIA                          Q2      388     99     86     13
Birth       ki1000108-IRC              INDIA                          Q3      388    103     93     10
Birth       ki1000109-EE               PAKISTAN                       Q4        2      0      0      0
Birth       ki1000109-EE               PAKISTAN                       Q1        2      2      1      1
Birth       ki1000109-EE               PAKISTAN                       Q2        2      0      0      0
Birth       ki1000109-EE               PAKISTAN                       Q3        2      0      0      0
Birth       ki1017093-NIH-Birth        BANGLADESH                     Q4       28      1      1      0
Birth       ki1017093-NIH-Birth        BANGLADESH                     Q1       28     14     13      1
Birth       ki1017093-NIH-Birth        BANGLADESH                     Q2       28     10     10      0
Birth       ki1017093-NIH-Birth        BANGLADESH                     Q3       28      3      3      0
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Q4       27      7      6      1
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Q1       27      9      7      2
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Q2       27      3      3      0
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Q3       27      8      6      2
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Q4    13810   8697   7839    858
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Q1    13810    208    186     22
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Q2    13810    420    365     55
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Q3    13810   4485   3988    497
Birth       ki1135781-COHORTS          GUATEMALA                      Q4      401      0      0      0
Birth       ki1135781-COHORTS          GUATEMALA                      Q1      401    296    282     14
Birth       ki1135781-COHORTS          GUATEMALA                      Q2      401     90     86      4
Birth       ki1135781-COHORTS          GUATEMALA                      Q3      401     15     14      1
Birth       ki1135781-COHORTS          INDIA                          Q4     5216   1758   1604    154
Birth       ki1135781-COHORTS          INDIA                          Q1     5216   1756   1505    251
Birth       ki1135781-COHORTS          INDIA                          Q2     5216    879    771    108
Birth       ki1135781-COHORTS          INDIA                          Q3     5216    823    719    104
Birth       ki1135781-COHORTS          PHILIPPINES                    Q4     3050    933    892     41
Birth       ki1135781-COHORTS          PHILIPPINES                    Q1     3050    638    586     52
Birth       ki1135781-COHORTS          PHILIPPINES                    Q2     3050    262    244     18
Birth       ki1135781-COHORTS          PHILIPPINES                    Q3     3050   1217   1141     76
3 months    ki0047075b-MAL-ED          BANGLADESH                     Q4      203     60     55      5
3 months    ki0047075b-MAL-ED          BANGLADESH                     Q1      203     41     29     12
3 months    ki0047075b-MAL-ED          BANGLADESH                     Q2      203     25     22      3
3 months    ki0047075b-MAL-ED          BANGLADESH                     Q3      203     77     64     13
3 months    ki0047075b-MAL-ED          BRAZIL                         Q4      224     76     71      5
3 months    ki0047075b-MAL-ED          BRAZIL                         Q1      224     47     44      3
3 months    ki0047075b-MAL-ED          BRAZIL                         Q2      224     42     37      5
3 months    ki0047075b-MAL-ED          BRAZIL                         Q3      224     59     58      1
3 months    ki0047075b-MAL-ED          INDIA                          Q4      210     60     55      5
3 months    ki0047075b-MAL-ED          INDIA                          Q1      210     33     29      4
3 months    ki0047075b-MAL-ED          INDIA                          Q2      210     51     43      8
3 months    ki0047075b-MAL-ED          INDIA                          Q3      210     66     54     12
3 months    ki0047075b-MAL-ED          NEPAL                          Q4      221     20     18      2
3 months    ki0047075b-MAL-ED          NEPAL                          Q1      221     30     29      1
3 months    ki0047075b-MAL-ED          NEPAL                          Q2      221     64     60      4
3 months    ki0047075b-MAL-ED          NEPAL                          Q3      221    107    103      4
3 months    ki0047075b-MAL-ED          PERU                           Q4      290     87     65     22
3 months    ki0047075b-MAL-ED          PERU                           Q1      290     63     49     14
3 months    ki0047075b-MAL-ED          PERU                           Q2      290     66     46     20
3 months    ki0047075b-MAL-ED          PERU                           Q3      290     74     57     17
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q4      281     82     66     16
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q1      281     57     45     12
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q2      281     81     63     18
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q3      281     61     53      8
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4      210      3      3      0
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1      210     30     25      5
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2      210     33     27      6
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3      210    144    126     18
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          Q4      362     22     19      3
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          Q1      362    103     73     30
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          Q2      362    104     75     29
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          Q3      362    133    105     28
3 months    ki1000108-IRC              INDIA                          Q4      407     11     10      1
3 months    ki1000108-IRC              INDIA                          Q1      407    181    140     41
3 months    ki1000108-IRC              INDIA                          Q2      407    103     76     27
3 months    ki1000108-IRC              INDIA                          Q3      407    112     90     22
3 months    ki1000109-EE               PAKISTAN                       Q4      373      4      2      2
3 months    ki1000109-EE               PAKISTAN                       Q1      373    325    137    188
3 months    ki1000109-EE               PAKISTAN                       Q2      373     33     15     18
3 months    ki1000109-EE               PAKISTAN                       Q3      373     11      4      7
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q4       97      2      2      0
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q1       97     79     47     32
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q2       97     12      7      5
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q3       97      4      3      1
3 months    ki1017093-NIH-Birth        BANGLADESH                     Q4      570     69     57     12
3 months    ki1017093-NIH-Birth        BANGLADESH                     Q1      570    236    174     62
3 months    ki1017093-NIH-Birth        BANGLADESH                     Q2      570    171    132     39
3 months    ki1017093-NIH-Birth        BANGLADESH                     Q3      570     94     77     17
3 months    ki1017093b-PROVIDE         BANGLADESH                     Q4      645     12     11      1
3 months    ki1017093b-PROVIDE         BANGLADESH                     Q1      645    256    219     37
3 months    ki1017093b-PROVIDE         BANGLADESH                     Q2      645    243    215     28
3 months    ki1017093b-PROVIDE         BANGLADESH                     Q3      645    134    122     12
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q4      728    243    204     39
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q1      728    180    144     36
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q2      728     52     37     15
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q3      728    253    187     66
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q4     2284      5      5      0
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q1     2284     71     64      7
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q2     2284   2114   1990    124
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q3     2284     94     90      4
3 months    ki1112895-Guatemala BSC    GUATEMALA                      Q4       21     11      8      3
3 months    ki1112895-Guatemala BSC    GUATEMALA                      Q1       21      4      4      0
3 months    ki1112895-Guatemala BSC    GUATEMALA                      Q2       21      4      3      1
3 months    ki1112895-Guatemala BSC    GUATEMALA                      Q3       21      2      2      0
3 months    ki1113344-GMS-Nepal        NEPAL                          Q4      568     68     62      6
3 months    ki1113344-GMS-Nepal        NEPAL                          Q1      568    401    332     69
3 months    ki1113344-GMS-Nepal        NEPAL                          Q2      568     46     44      2
3 months    ki1113344-GMS-Nepal        NEPAL                          Q3      568     53     46      7
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       Q4     9178   5748   4786    962
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       Q1     9178    150    120     30
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       Q2     9178    278    217     61
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       Q3     9178   3002   2418    584
3 months    ki1135781-COHORTS          GUATEMALA                      Q4      469      0      0      0
3 months    ki1135781-COHORTS          GUATEMALA                      Q1      469    344    226    118
3 months    ki1135781-COHORTS          GUATEMALA                      Q2      469    110     84     26
3 months    ki1135781-COHORTS          GUATEMALA                      Q3      469     15     11      4
3 months    ki1135781-COHORTS          INDIA                          Q4     5536   1886   1732    154
3 months    ki1135781-COHORTS          INDIA                          Q1     5536   1872   1464    408
3 months    ki1135781-COHORTS          INDIA                          Q2     5536    916    762    154
3 months    ki1135781-COHORTS          INDIA                          Q3     5536    862    740    122
3 months    ki1135781-COHORTS          PHILIPPINES                    Q4     2875    869    796     73
3 months    ki1135781-COHORTS          PHILIPPINES                    Q1     2875    616    526     90
3 months    ki1135781-COHORTS          PHILIPPINES                    Q2     2875    248    209     39
3 months    ki1135781-COHORTS          PHILIPPINES                    Q3     2875   1142    989    153
6 months    ki0047075b-MAL-ED          BANGLADESH                     Q4      196     57     53      4
6 months    ki0047075b-MAL-ED          BANGLADESH                     Q1      196     39     27     12
6 months    ki0047075b-MAL-ED          BANGLADESH                     Q2      196     25     23      2
6 months    ki0047075b-MAL-ED          BANGLADESH                     Q3      196     75     58     17
6 months    ki0047075b-MAL-ED          BRAZIL                         Q4      208     71     70      1
6 months    ki0047075b-MAL-ED          BRAZIL                         Q1      208     45     44      1
6 months    ki0047075b-MAL-ED          BRAZIL                         Q2      208     38     35      3
6 months    ki0047075b-MAL-ED          BRAZIL                         Q3      208     54     53      1
6 months    ki0047075b-MAL-ED          INDIA                          Q4      208     59     50      9
6 months    ki0047075b-MAL-ED          INDIA                          Q1      208     33     28      5
6 months    ki0047075b-MAL-ED          INDIA                          Q2      208     50     38     12
6 months    ki0047075b-MAL-ED          INDIA                          Q3      208     66     56     10
6 months    ki0047075b-MAL-ED          NEPAL                          Q4      221     20     20      0
6 months    ki0047075b-MAL-ED          NEPAL                          Q1      221     30     28      2
6 months    ki0047075b-MAL-ED          NEPAL                          Q2      221     63     59      4
6 months    ki0047075b-MAL-ED          NEPAL                          Q3      221    108    104      4
6 months    ki0047075b-MAL-ED          PERU                           Q4      272     81     60     21
6 months    ki0047075b-MAL-ED          PERU                           Q1      272     59     48     11
6 months    ki0047075b-MAL-ED          PERU                           Q2      272     62     47     15
6 months    ki0047075b-MAL-ED          PERU                           Q3      272     70     57     13
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q4      254     70     58     12
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q1      254     54     44     10
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q2      254     73     56     17
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q3      254     57     46     11
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4      203      3      3      0
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1      203     30     24      6
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2      203     32     24      8
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3      203    138    111     27
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Q4      369     22     14      8
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Q1      369    105     69     36
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Q2      369    107     77     30
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Q3      369    135     98     37
6 months    ki1000108-IRC              INDIA                          Q4      407     11      8      3
6 months    ki1000108-IRC              INDIA                          Q1      407    181    134     47
6 months    ki1000108-IRC              INDIA                          Q2      407    103     75     28
6 months    ki1000108-IRC              INDIA                          Q3      407    112     90     22
6 months    ki1000109-EE               PAKISTAN                       Q4      369      4      3      1
6 months    ki1000109-EE               PAKISTAN                       Q1      369    321    149    172
6 months    ki1000109-EE               PAKISTAN                       Q2      369     33     20     13
6 months    ki1000109-EE               PAKISTAN                       Q3      369     11      6      5
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q4       96      2      2      0
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q1       96     78     40     38
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q2       96     12      4      8
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q3       96      4      2      2
6 months    ki1017093-NIH-Birth        BANGLADESH                     Q4      537     68     52     16
6 months    ki1017093-NIH-Birth        BANGLADESH                     Q1      537    221    148     73
6 months    ki1017093-NIH-Birth        BANGLADESH                     Q2      537    161    117     44
6 months    ki1017093-NIH-Birth        BANGLADESH                     Q3      537     87     76     11
6 months    ki1017093b-PROVIDE         BANGLADESH                     Q4      583     12     11      1
6 months    ki1017093b-PROVIDE         BANGLADESH                     Q1      583    230    189     41
6 months    ki1017093b-PROVIDE         BANGLADESH                     Q2      583    218    182     36
6 months    ki1017093b-PROVIDE         BANGLADESH                     Q3      583    123    107     16
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q4      715    240    203     37
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q1      715    175    135     40
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q2      715     54     38     16
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q3      715    246    189     57
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q4     2021      4      4      0
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q1     2021     65     60      5
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q2     2021   1870   1685    185
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q3     2021     82     77      5
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Q4      277    117     81     36
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Q1      277     45     25     20
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Q2      277     81     59     22
6 months    ki1112895-Guatemala BSC    GUATEMALA                      Q3      277     34     26      8
6 months    ki1113344-GMS-Nepal        NEPAL                          Q4      560     67     57     10
6 months    ki1113344-GMS-Nepal        NEPAL                          Q1      560    399    306     93
6 months    ki1113344-GMS-Nepal        NEPAL                          Q2      560     42     37      5
6 months    ki1113344-GMS-Nepal        NEPAL                          Q3      560     52     41     11
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Q4     8282   5222   4411    811
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Q1     8282    130    103     27
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Q2     8282    246    203     43
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Q3     8282   2684   2186    498
6 months    ki1135781-COHORTS          GUATEMALA                      Q4      459      1      1      0
6 months    ki1135781-COHORTS          GUATEMALA                      Q1      459    339    178    161
6 months    ki1135781-COHORTS          GUATEMALA                      Q2      459    101     63     38
6 months    ki1135781-COHORTS          GUATEMALA                      Q3      459     18      9      9
6 months    ki1135781-COHORTS          INDIA                          Q4     5413   1894   1699    195
6 months    ki1135781-COHORTS          INDIA                          Q1     5413   1777   1264    513
6 months    ki1135781-COHORTS          INDIA                          Q2     5413    893    701    192
6 months    ki1135781-COHORTS          INDIA                          Q3     5413    849    712    137
6 months    ki1135781-COHORTS          PHILIPPINES                    Q4     2708    802    687    115
6 months    ki1135781-COHORTS          PHILIPPINES                    Q1     2708    594    435    159
6 months    ki1135781-COHORTS          PHILIPPINES                    Q2     2708    232    175     57
6 months    ki1135781-COHORTS          PHILIPPINES                    Q3     2708   1080    839    241
6 months    ki1148112-LCNI-5           MALAWI                         Q4      813      1      1      0
6 months    ki1148112-LCNI-5           MALAWI                         Q1      813    574    352    222
6 months    ki1148112-LCNI-5           MALAWI                         Q2      813    216    151     65
6 months    ki1148112-LCNI-5           MALAWI                         Q3      813     22     14      8
9 months    ki0047075b-MAL-ED          BANGLADESH                     Q4      191     55     48      7
9 months    ki0047075b-MAL-ED          BANGLADESH                     Q1      191     39     24     15
9 months    ki0047075b-MAL-ED          BANGLADESH                     Q2      191     25     21      4
9 months    ki0047075b-MAL-ED          BANGLADESH                     Q3      191     72     55     17
9 months    ki0047075b-MAL-ED          BRAZIL                         Q4      198     68     67      1
9 months    ki0047075b-MAL-ED          BRAZIL                         Q1      198     41     40      1
9 months    ki0047075b-MAL-ED          BRAZIL                         Q2      198     36     34      2
9 months    ki0047075b-MAL-ED          BRAZIL                         Q3      198     53     53      0
9 months    ki0047075b-MAL-ED          INDIA                          Q4      204     57     47     10
9 months    ki0047075b-MAL-ED          INDIA                          Q1      204     32     29      3
9 months    ki0047075b-MAL-ED          INDIA                          Q2      204     49     36     13
9 months    ki0047075b-MAL-ED          INDIA                          Q3      204     66     50     16
9 months    ki0047075b-MAL-ED          NEPAL                          Q4      216     20     19      1
9 months    ki0047075b-MAL-ED          NEPAL                          Q1      216     30     28      2
9 months    ki0047075b-MAL-ED          NEPAL                          Q2      216     62     57      5
9 months    ki0047075b-MAL-ED          NEPAL                          Q3      216    104     97      7
9 months    ki0047075b-MAL-ED          PERU                           Q4      255     76     56     20
9 months    ki0047075b-MAL-ED          PERU                           Q1      255     58     44     14
9 months    ki0047075b-MAL-ED          PERU                           Q2      255     55     41     14
9 months    ki0047075b-MAL-ED          PERU                           Q3      255     66     51     15
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q4      250     72     59     13
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q1      250     52     41     11
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q2      250     70     53     17
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Q3      250     56     44     12
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4      196      3      2      1
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1      196     30     18     12
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2      196     32     21     11
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3      196    131     86     45
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          Q4      366     22     16      6
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          Q1      366    105     64     41
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          Q2      366    107     67     40
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          Q3      366    132     84     48
9 months    ki1000108-IRC              INDIA                          Q4      407     11     10      1
9 months    ki1000108-IRC              INDIA                          Q1      407    181    130     51
9 months    ki1000108-IRC              INDIA                          Q2      407    103     69     34
9 months    ki1000108-IRC              INDIA                          Q3      407    112     87     25
9 months    ki1000109-EE               PAKISTAN                       Q4      363      4      4      0
9 months    ki1000109-EE               PAKISTAN                       Q1      363    315    119    196
9 months    ki1000109-EE               PAKISTAN                       Q2      363     33     20     13
9 months    ki1000109-EE               PAKISTAN                       Q3      363     11      6      5
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q4       85      2      2      0
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q1       85     67     21     46
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q2       85     12      4      8
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          Q3       85      4      1      3
9 months    ki1017093-NIH-Birth        BANGLADESH                     Q4      507     67     51     16
9 months    ki1017093-NIH-Birth        BANGLADESH                     Q1      507    205    121     84
9 months    ki1017093-NIH-Birth        BANGLADESH                     Q2      507    154     97     57
9 months    ki1017093-NIH-Birth        BANGLADESH                     Q3      507     81     57     24
9 months    ki1017093b-PROVIDE         BANGLADESH                     Q4      605     11     10      1
9 months    ki1017093b-PROVIDE         BANGLADESH                     Q1      605    238    177     61
9 months    ki1017093b-PROVIDE         BANGLADESH                     Q2      605    230    186     44
9 months    ki1017093b-PROVIDE         BANGLADESH                     Q3      605    126    103     23
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q4      706    241    201     40
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q1      706    170    124     46
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q2      706     54     40     14
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     Q3      706    241    177     64
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q4     1781      4      3      1
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q1     1781     52     43      9
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q2     1781   1654   1409    245
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q3     1781     71     63      8
9 months    ki1112895-Guatemala BSC    GUATEMALA                      Q4      232     98     61     37
9 months    ki1112895-Guatemala BSC    GUATEMALA                      Q1      232     37     15     22
9 months    ki1112895-Guatemala BSC    GUATEMALA                      Q2      232     67     43     24
9 months    ki1112895-Guatemala BSC    GUATEMALA                      Q3      232     30     19     11
9 months    ki1113344-GMS-Nepal        NEPAL                          Q4      549     65     51     14
9 months    ki1113344-GMS-Nepal        NEPAL                          Q1      549    392    275    117
9 months    ki1113344-GMS-Nepal        NEPAL                          Q2      549     42     33      9
9 months    ki1113344-GMS-Nepal        NEPAL                          Q3      549     50     35     15
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       Q4     7663   4822   3966    856
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       Q1     7663    126     93     33
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       Q2     7663    244    178     66
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       Q3     7663   2471   1907    564
9 months    ki1135781-COHORTS          GUATEMALA                      Q4      452      1      0      1
9 months    ki1135781-COHORTS          GUATEMALA                      Q1      452    329    114    215
9 months    ki1135781-COHORTS          GUATEMALA                      Q2      452    104     46     58
9 months    ki1135781-COHORTS          GUATEMALA                      Q3      452     18      9      9
9 months    ki1135781-COHORTS          INDIA                          Q4     4744   1649   1429    220
9 months    ki1135781-COHORTS          INDIA                          Q1     4744   1557    935    622
9 months    ki1135781-COHORTS          INDIA                          Q2     4744    787    542    245
9 months    ki1135781-COHORTS          INDIA                          Q3     4744    751    582    169
9 months    ki1135781-COHORTS          PHILIPPINES                    Q4     2712    807    667    140
9 months    ki1135781-COHORTS          PHILIPPINES                    Q1     2712    593    388    205
9 months    ki1135781-COHORTS          PHILIPPINES                    Q2     2712    233    156     77
9 months    ki1135781-COHORTS          PHILIPPINES                    Q3     2712   1079    755    324
9 months    ki1148112-LCNI-5           MALAWI                         Q4      655      1      1      0
9 months    ki1148112-LCNI-5           MALAWI                         Q1      655    466    300    166
9 months    ki1148112-LCNI-5           MALAWI                         Q2      655    171    125     46
9 months    ki1148112-LCNI-5           MALAWI                         Q3      655     17     13      4
12 months   ki0047075b-MAL-ED          BANGLADESH                     Q4      189     54     44     10
12 months   ki0047075b-MAL-ED          BANGLADESH                     Q1      189     39     22     17
12 months   ki0047075b-MAL-ED          BANGLADESH                     Q2      189     25     17      8
12 months   ki0047075b-MAL-ED          BANGLADESH                     Q3      189     71     48     23
12 months   ki0047075b-MAL-ED          BRAZIL                         Q4      194     67     65      2
12 months   ki0047075b-MAL-ED          BRAZIL                         Q1      194     40     38      2
12 months   ki0047075b-MAL-ED          BRAZIL                         Q2      194     36     34      2
12 months   ki0047075b-MAL-ED          BRAZIL                         Q3      194     51     51      0
12 months   ki0047075b-MAL-ED          INDIA                          Q4      200     56     38     18
12 months   ki0047075b-MAL-ED          INDIA                          Q1      200     32     25      7
12 months   ki0047075b-MAL-ED          INDIA                          Q2      200     49     33     16
12 months   ki0047075b-MAL-ED          INDIA                          Q3      200     63     43     20
12 months   ki0047075b-MAL-ED          NEPAL                          Q4      216     20     16      4
12 months   ki0047075b-MAL-ED          NEPAL                          Q1      216     30     28      2
12 months   ki0047075b-MAL-ED          NEPAL                          Q2      216     62     54      8
12 months   ki0047075b-MAL-ED          NEPAL                          Q3      216    104     96      8
12 months   ki0047075b-MAL-ED          PERU                           Q4      245     73     51     22
12 months   ki0047075b-MAL-ED          PERU                           Q1      245     57     41     16
12 months   ki0047075b-MAL-ED          PERU                           Q2      245     52     39     13
12 months   ki0047075b-MAL-ED          PERU                           Q3      245     63     45     18
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q4      252     71     59     12
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q1      252     54     39     15
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q2      252     72     51     21
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q3      252     55     43     12
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4      191      3      2      1
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1      191     29     12     17
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2      191     30     15     15
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3      191    129     67     62
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          Q4      368     22     13      9
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          Q1      368    106     47     59
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          Q2      368    107     57     50
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          Q3      368    133     68     65
12 months   ki1000108-IRC              INDIA                          Q4      406     11      9      2
12 months   ki1000108-IRC              INDIA                          Q1      406    181    123     58
12 months   ki1000108-IRC              INDIA                          Q2      406    102     70     32
12 months   ki1000108-IRC              INDIA                          Q3      406    112     85     27
12 months   ki1000109-EE               PAKISTAN                       Q4      354      4      2      2
12 months   ki1000109-EE               PAKISTAN                       Q1      354    308     82    226
12 months   ki1000109-EE               PAKISTAN                       Q2      354     32     13     19
12 months   ki1000109-EE               PAKISTAN                       Q3      354     10      5      5
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q4       92      2      0      2
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q1       92     74     17     57
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q2       92     11      1     10
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q3       92      5      1      4
12 months   ki1017093-NIH-Birth        BANGLADESH                     Q4      491     66     50     16
12 months   ki1017093-NIH-Birth        BANGLADESH                     Q1      491    202    109     93
12 months   ki1017093-NIH-Birth        BANGLADESH                     Q2      491    145     93     52
12 months   ki1017093-NIH-Birth        BANGLADESH                     Q3      491     78     55     23
12 months   ki1017093b-PROVIDE         BANGLADESH                     Q4      600     11     10      1
12 months   ki1017093b-PROVIDE         BANGLADESH                     Q1      600    231    154     77
12 months   ki1017093b-PROVIDE         BANGLADESH                     Q2      600    232    173     59
12 months   ki1017093b-PROVIDE         BANGLADESH                     Q3      600    126    106     20
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q4      706    240    198     42
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q1      706    174    130     44
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q2      706     53     41     12
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q3      706    239    166     73
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q4     1439      4      4      0
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q1     1439     42     31     11
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q2     1439   1336   1116    220
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q3     1439     57     50      7
12 months   ki1112895-Guatemala BSC    GUATEMALA                      Q4      200     88     53     35
12 months   ki1112895-Guatemala BSC    GUATEMALA                      Q1      200     31      8     23
12 months   ki1112895-Guatemala BSC    GUATEMALA                      Q2      200     54     24     30
12 months   ki1112895-Guatemala BSC    GUATEMALA                      Q3      200     27     15     12
12 months   ki1113344-GMS-Nepal        NEPAL                          Q4      555     65     52     13
12 months   ki1113344-GMS-Nepal        NEPAL                          Q1      555    394    246    148
12 months   ki1113344-GMS-Nepal        NEPAL                          Q2      555     44     32     12
12 months   ki1113344-GMS-Nepal        NEPAL                          Q3      555     52     34     18
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       Q4     6742   4202   3270    932
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       Q1     6742    119     82     37
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       Q2     6742    223    155     68
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       Q3     6742   2198   1586    612
12 months   ki1135781-COHORTS          GUATEMALA                      Q4      525      2      0      2
12 months   ki1135781-COHORTS          GUATEMALA                      Q1      525    383    105    278
12 months   ki1135781-COHORTS          GUATEMALA                      Q2      525    120     42     78
12 months   ki1135781-COHORTS          GUATEMALA                      Q3      525     20      7     13
12 months   ki1135781-COHORTS          INDIA                          Q4     4253   1521   1249    272
12 months   ki1135781-COHORTS          INDIA                          Q1     4253   1340    624    716
12 months   ki1135781-COHORTS          INDIA                          Q2     4253    708    406    302
12 months   ki1135781-COHORTS          INDIA                          Q3     4253    684    479    205
12 months   ki1135781-COHORTS          PHILIPPINES                    Q4     2585    773    570    203
12 months   ki1135781-COHORTS          PHILIPPINES                    Q1     2585    564    283    281
12 months   ki1135781-COHORTS          PHILIPPINES                    Q2     2585    219    126     93
12 months   ki1135781-COHORTS          PHILIPPINES                    Q3     2585   1029    606    423
12 months   ki1148112-LCNI-5           MALAWI                         Q4      619      1      1      0
12 months   ki1148112-LCNI-5           MALAWI                         Q1      619    431    248    183
12 months   ki1148112-LCNI-5           MALAWI                         Q2      619    169    113     56
12 months   ki1148112-LCNI-5           MALAWI                         Q3      619     18     15      3
18 months   ki0047075b-MAL-ED          BANGLADESH                     Q4      180     54     30     24
18 months   ki0047075b-MAL-ED          BANGLADESH                     Q1      180     37     14     23
18 months   ki0047075b-MAL-ED          BANGLADESH                     Q2      180     23     16      7
18 months   ki0047075b-MAL-ED          BANGLADESH                     Q3      180     66     37     29
18 months   ki0047075b-MAL-ED          BRAZIL                         Q4      179     66     65      1
18 months   ki0047075b-MAL-ED          BRAZIL                         Q1      179     35     32      3
18 months   ki0047075b-MAL-ED          BRAZIL                         Q2      179     29     27      2
18 months   ki0047075b-MAL-ED          BRAZIL                         Q3      179     49     48      1
18 months   ki0047075b-MAL-ED          INDIA                          Q4      200     56     32     24
18 months   ki0047075b-MAL-ED          INDIA                          Q1      200     31     20     11
18 months   ki0047075b-MAL-ED          INDIA                          Q2      200     49     26     23
18 months   ki0047075b-MAL-ED          INDIA                          Q3      200     64     31     33
18 months   ki0047075b-MAL-ED          NEPAL                          Q4      214     19     17      2
18 months   ki0047075b-MAL-ED          NEPAL                          Q1      214     30     24      6
18 months   ki0047075b-MAL-ED          NEPAL                          Q2      214     61     44     17
18 months   ki0047075b-MAL-ED          NEPAL                          Q3      214    104     89     15
18 months   ki0047075b-MAL-ED          PERU                           Q4      221     69     44     25
18 months   ki0047075b-MAL-ED          PERU                           Q1      221     50     25     25
18 months   ki0047075b-MAL-ED          PERU                           Q2      221     50     28     22
18 months   ki0047075b-MAL-ED          PERU                           Q3      221     52     25     27
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q4      241     68     47     21
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q1      241     54     37     17
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q2      241     68     43     25
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q3      241     51     32     19
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4      185      3      1      2
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1      185     30      8     22
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2      185     28      8     20
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3      185    124     43     81
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Q4      369     20      9     11
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Q1      369    106     30     76
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Q2      369    108     32     76
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          Q3      369    135     44     91
18 months   ki1000108-IRC              INDIA                          Q4      405     11     10      1
18 months   ki1000108-IRC              INDIA                          Q1      405    180    112     68
18 months   ki1000108-IRC              INDIA                          Q2      405    102     64     38
18 months   ki1000108-IRC              INDIA                          Q3      405    112     75     37
18 months   ki1000109-EE               PAKISTAN                       Q4      347      4      1      3
18 months   ki1000109-EE               PAKISTAN                       Q1      347    303     40    263
18 months   ki1000109-EE               PAKISTAN                       Q2      347     30      8     22
18 months   ki1000109-EE               PAKISTAN                       Q3      347     10      4      6
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q4       84      2      1      1
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q1       84     66      8     58
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q2       84     12      1     11
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          Q3       84      4      0      4
18 months   ki1017093-NIH-Birth        BANGLADESH                     Q4      463     60     37     23
18 months   ki1017093-NIH-Birth        BANGLADESH                     Q1      463    190     65    125
18 months   ki1017093-NIH-Birth        BANGLADESH                     Q2      463    135     51     84
18 months   ki1017093-NIH-Birth        BANGLADESH                     Q3      463     78     38     40
18 months   ki1017093b-PROVIDE         BANGLADESH                     Q4      552     10     10      0
18 months   ki1017093b-PROVIDE         BANGLADESH                     Q1      552    213    113    100
18 months   ki1017093b-PROVIDE         BANGLADESH                     Q2      552    213    131     82
18 months   ki1017093b-PROVIDE         BANGLADESH                     Q3      552    116     92     24
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q4      634    219    176     43
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q1      634    149     93     56
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q2      634     46     33     13
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q3      634    220    141     79
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q4      977      3      3      0
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q1      977     29     20      9
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q2      977    908    686    222
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q3      977     37     32      5
18 months   ki1113344-GMS-Nepal        NEPAL                          Q4      547     65     41     24
18 months   ki1113344-GMS-Nepal        NEPAL                          Q1      547    388    166    222
18 months   ki1113344-GMS-Nepal        NEPAL                          Q2      547     41     24     17
18 months   ki1113344-GMS-Nepal        NEPAL                          Q3      547     53     24     29
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Q4     1708    947    545    402
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Q1     1708     38     16     22
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Q2     1708     63     24     39
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       Q3     1708    660    311    349
18 months   ki1135781-COHORTS          GUATEMALA                      Q4      432      1      0      1
18 months   ki1135781-COHORTS          GUATEMALA                      Q1      432    322     52    270
18 months   ki1135781-COHORTS          GUATEMALA                      Q2      432     90     14     76
18 months   ki1135781-COHORTS          GUATEMALA                      Q3      432     19      3     16
18 months   ki1135781-COHORTS          PHILIPPINES                    Q4     2492    748    430    318
18 months   ki1135781-COHORTS          PHILIPPINES                    Q1     2492    546    155    391
18 months   ki1135781-COHORTS          PHILIPPINES                    Q2     2492    215     80    135
18 months   ki1135781-COHORTS          PHILIPPINES                    Q3     2492    983    363    620
18 months   ki1148112-LCNI-5           MALAWI                         Q4      717      1      1      0
18 months   ki1148112-LCNI-5           MALAWI                         Q1      717    503    262    241
18 months   ki1148112-LCNI-5           MALAWI                         Q2      717    192    115     77
18 months   ki1148112-LCNI-5           MALAWI                         Q3      717     21     11     10
24 months   ki0047075b-MAL-ED          BANGLADESH                     Q4      171     51     29     22
24 months   ki0047075b-MAL-ED          BANGLADESH                     Q1      171     36     16     20
24 months   ki0047075b-MAL-ED          BANGLADESH                     Q2      171     23     16      7
24 months   ki0047075b-MAL-ED          BANGLADESH                     Q3      171     61     34     27
24 months   ki0047075b-MAL-ED          BRAZIL                         Q4      168     62     61      1
24 months   ki0047075b-MAL-ED          BRAZIL                         Q1      168     34     33      1
24 months   ki0047075b-MAL-ED          BRAZIL                         Q2      168     25     23      2
24 months   ki0047075b-MAL-ED          BRAZIL                         Q3      168     47     45      2
24 months   ki0047075b-MAL-ED          INDIA                          Q4      199     55     33     22
24 months   ki0047075b-MAL-ED          INDIA                          Q1      199     31     20     11
24 months   ki0047075b-MAL-ED          INDIA                          Q2      199     49     29     20
24 months   ki0047075b-MAL-ED          INDIA                          Q3      199     64     36     28
24 months   ki0047075b-MAL-ED          NEPAL                          Q4      213     18     14      4
24 months   ki0047075b-MAL-ED          NEPAL                          Q1      213     30     24      6
24 months   ki0047075b-MAL-ED          NEPAL                          Q2      213     61     45     16
24 months   ki0047075b-MAL-ED          NEPAL                          Q3      213    104     86     18
24 months   ki0047075b-MAL-ED          PERU                           Q4      200     59     42     17
24 months   ki0047075b-MAL-ED          PERU                           Q1      200     45     26     19
24 months   ki0047075b-MAL-ED          PERU                           Q2      200     49     30     19
24 months   ki0047075b-MAL-ED          PERU                           Q3      200     47     28     19
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q4      238     67     50     17
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q1      238     53     31     22
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q2      238     67     42     25
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Q3      238     51     31     20
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q4      175      3      2      1
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q1      175     27      2     25
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q2      175     27      8     19
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Q3      175    118     41     77
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Q4      372     22     13      9
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Q1      372    105     18     87
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Q2      372    109     32     77
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Q3      372    136     43     93
24 months   ki1000108-IRC              INDIA                          Q4      409     11     10      1
24 months   ki1000108-IRC              INDIA                          Q1      409    181    102     79
24 months   ki1000108-IRC              INDIA                          Q2      409    104     57     47
24 months   ki1000108-IRC              INDIA                          Q3      409    113     70     43
24 months   ki1017093-NIH-Birth        BANGLADESH                     Q4      429     59     40     19
24 months   ki1017093-NIH-Birth        BANGLADESH                     Q1      429    175     60    115
24 months   ki1017093-NIH-Birth        BANGLADESH                     Q2      429    124     53     71
24 months   ki1017093-NIH-Birth        BANGLADESH                     Q3      429     71     38     33
24 months   ki1017093b-PROVIDE         BANGLADESH                     Q4      577     11     11      0
24 months   ki1017093b-PROVIDE         BANGLADESH                     Q1      577    225    129     96
24 months   ki1017093b-PROVIDE         BANGLADESH                     Q2      577    217    146     71
24 months   ki1017093b-PROVIDE         BANGLADESH                     Q3      577    124    101     23
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q4      514    191    163     28
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q1      514    112     74     38
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q2      514     34     23     11
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Q3      514    177    122     55
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q4        6      0      0      0
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q1        6      0      0      0
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q2        6      5      4      1
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Q3        6      1      1      0
24 months   ki1113344-GMS-Nepal        NEPAL                          Q4      496     58     42     16
24 months   ki1113344-GMS-Nepal        NEPAL                          Q1      496    350    185    165
24 months   ki1113344-GMS-Nepal        NEPAL                          Q2      496     38     23     15
24 months   ki1113344-GMS-Nepal        NEPAL                          Q3      496     50     23     27
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Q4      457    256     99    157
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Q1      457     10      0     10
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Q2      457     27      6     21
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Q3      457    164     54    110
24 months   ki1135781-COHORTS          GUATEMALA                      Q4      513      3      1      2
24 months   ki1135781-COHORTS          GUATEMALA                      Q1      513    379     56    323
24 months   ki1135781-COHORTS          GUATEMALA                      Q2      513    110     22     88
24 months   ki1135781-COHORTS          GUATEMALA                      Q3      513     21      6     15
24 months   ki1135781-COHORTS          INDIA                          Q4     4201   1534   1141    393
24 months   ki1135781-COHORTS          INDIA                          Q1     4201   1274    380    894
24 months   ki1135781-COHORTS          INDIA                          Q2     4201    705    295    410
24 months   ki1135781-COHORTS          INDIA                          Q3     4201    688    362    326
24 months   ki1135781-COHORTS          PHILIPPINES                    Q4     2445    730    412    318
24 months   ki1135781-COHORTS          PHILIPPINES                    Q1     2445    534    135    399
24 months   ki1135781-COHORTS          PHILIPPINES                    Q2     2445    210     66    144
24 months   ki1135781-COHORTS          PHILIPPINES                    Q3     2445    971    324    647
24 months   ki1148112-LCNI-5           MALAWI                         Q4      572      1      1      0
24 months   ki1148112-LCNI-5           MALAWI                         Q1      572    397    218    179
24 months   ki1148112-LCNI-5           MALAWI                         Q2      572    156     94     62
24 months   ki1148112-LCNI-5           MALAWI                         Q3      572     18      9      9


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
* agecat: 12 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 12 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 12 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: 18 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 18 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 18 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 18 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 18 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: 3 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 3 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 3 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: 9 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 9 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 9 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 9 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 9 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 9 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
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
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 3 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 3 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 3 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 3 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 3 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 9 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 9 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 9 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 9 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 9 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 12 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 12 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 18 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 18 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 18 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 18 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 18 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/53d806a5-f480-493b-80cb-e2b12924a2a8/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->


```
## Warning: Removed 64 rows containing missing values (geom_errorbar).
```

![](/tmp/53d806a5-f480-493b-80cb-e2b12924a2a8/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/53d806a5-f480-493b-80cb-e2b12924a2a8/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/53d806a5-f480-493b-80cb-e2b12924a2a8/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          PERU           Q4                   NA                0.1149425   0.0478035   0.1820816
Birth       ki0047075b-MAL-ED          PERU           Q1                   NA                0.1333333   0.0471688   0.2194979
Birth       ki0047075b-MAL-ED          PERU           Q2                   NA                0.1044776   0.0311072   0.1778481
Birth       ki0047075b-MAL-ED          PERU           Q3                   NA                0.1250000   0.0484753   0.2015247
Birth       ki1126311-ZVITAMBO         ZIMBABWE       Q4                   NA                0.0986547   0.0923874   0.1049221
Birth       ki1126311-ZVITAMBO         ZIMBABWE       Q1                   NA                0.1057692   0.0639730   0.1475654
Birth       ki1126311-ZVITAMBO         ZIMBABWE       Q2                   NA                0.1309524   0.0986884   0.1632163
Birth       ki1126311-ZVITAMBO         ZIMBABWE       Q3                   NA                0.1108138   0.1016268   0.1200009
Birth       ki1135781-COHORTS          INDIA          Q4                   NA                0.0875995   0.0743828   0.1008163
Birth       ki1135781-COHORTS          INDIA          Q1                   NA                0.1429385   0.1265663   0.1593107
Birth       ki1135781-COHORTS          INDIA          Q2                   NA                0.1228669   0.1011626   0.1445712
Birth       ki1135781-COHORTS          INDIA          Q3                   NA                0.1263670   0.1036646   0.1490693
Birth       ki1135781-COHORTS          PHILIPPINES    Q4                   NA                0.0439443   0.0307899   0.0570987
Birth       ki1135781-COHORTS          PHILIPPINES    Q1                   NA                0.0815047   0.0602704   0.1027390
Birth       ki1135781-COHORTS          PHILIPPINES    Q2                   NA                0.0687023   0.0380687   0.0993359
Birth       ki1135781-COHORTS          PHILIPPINES    Q3                   NA                0.0624486   0.0488520   0.0760453
3 months    ki0047075b-MAL-ED          PERU           Q4                   NA                0.2528736   0.1613807   0.3443664
3 months    ki0047075b-MAL-ED          PERU           Q1                   NA                0.2222222   0.1193852   0.3250592
3 months    ki0047075b-MAL-ED          PERU           Q2                   NA                0.3030303   0.1919656   0.4140950
3 months    ki0047075b-MAL-ED          PERU           Q3                   NA                0.2297297   0.1337206   0.3257388
3 months    ki0047075b-MAL-ED          SOUTH AFRICA   Q4                   NA                0.1951220   0.1091942   0.2810497
3 months    ki0047075b-MAL-ED          SOUTH AFRICA   Q1                   NA                0.2105263   0.1045017   0.3165510
3 months    ki0047075b-MAL-ED          SOUTH AFRICA   Q2                   NA                0.2222222   0.1315235   0.3129210
3 months    ki0047075b-MAL-ED          SOUTH AFRICA   Q3                   NA                0.1311475   0.0462861   0.2160090
3 months    ki1017093-NIH-Birth        BANGLADESH     Q4                   NA                0.1739130   0.0844005   0.2634256
3 months    ki1017093-NIH-Birth        BANGLADESH     Q1                   NA                0.2627119   0.2065124   0.3189113
3 months    ki1017093-NIH-Birth        BANGLADESH     Q2                   NA                0.2280702   0.1651262   0.2910142
3 months    ki1017093-NIH-Birth        BANGLADESH     Q3                   NA                0.1808511   0.1029744   0.2587277
3 months    ki1017093c-NIH-Crypto      BANGLADESH     Q4                   NA                0.1604938   0.1143106   0.2066771
3 months    ki1017093c-NIH-Crypto      BANGLADESH     Q1                   NA                0.2000000   0.1415250   0.2584750
3 months    ki1017093c-NIH-Crypto      BANGLADESH     Q2                   NA                0.2884615   0.1652396   0.4116835
3 months    ki1017093c-NIH-Crypto      BANGLADESH     Q3                   NA                0.2608696   0.2067245   0.3150146
3 months    ki1126311-ZVITAMBO         ZIMBABWE       Q4                   NA                0.1673626   0.1577116   0.1770135
3 months    ki1126311-ZVITAMBO         ZIMBABWE       Q1                   NA                0.2000000   0.1359844   0.2640156
3 months    ki1126311-ZVITAMBO         ZIMBABWE       Q2                   NA                0.2194245   0.1707726   0.2680763
3 months    ki1126311-ZVITAMBO         ZIMBABWE       Q3                   NA                0.1945370   0.1803761   0.2086979
3 months    ki1135781-COHORTS          INDIA          Q4                   NA                0.0816543   0.0692946   0.0940140
3 months    ki1135781-COHORTS          INDIA          Q1                   NA                0.2179487   0.1992449   0.2366525
3 months    ki1135781-COHORTS          INDIA          Q2                   NA                0.1681223   0.1439018   0.1923427
3 months    ki1135781-COHORTS          INDIA          Q3                   NA                0.1415313   0.1182599   0.1648027
3 months    ki1135781-COHORTS          PHILIPPINES    Q4                   NA                0.0840046   0.0655582   0.1024510
3 months    ki1135781-COHORTS          PHILIPPINES    Q1                   NA                0.1461039   0.1182063   0.1740015
3 months    ki1135781-COHORTS          PHILIPPINES    Q2                   NA                0.1572581   0.1119421   0.2025741
3 months    ki1135781-COHORTS          PHILIPPINES    Q3                   NA                0.1339755   0.1142163   0.1537346
6 months    ki0047075b-MAL-ED          INDIA          Q4                   NA                0.1525424   0.0605773   0.2445074
6 months    ki0047075b-MAL-ED          INDIA          Q1                   NA                0.1515152   0.0288877   0.2741426
6 months    ki0047075b-MAL-ED          INDIA          Q2                   NA                0.2400000   0.1213352   0.3586648
6 months    ki0047075b-MAL-ED          INDIA          Q3                   NA                0.1515152   0.0648045   0.2382259
6 months    ki0047075b-MAL-ED          PERU           Q4                   NA                0.2592593   0.1636487   0.3548698
6 months    ki0047075b-MAL-ED          PERU           Q1                   NA                0.1864407   0.0868802   0.2860011
6 months    ki0047075b-MAL-ED          PERU           Q2                   NA                0.2419355   0.1351395   0.3487315
6 months    ki0047075b-MAL-ED          PERU           Q3                   NA                0.1857143   0.0944481   0.2769805
6 months    ki0047075b-MAL-ED          SOUTH AFRICA   Q4                   NA                0.1714286   0.0829655   0.2598917
6 months    ki0047075b-MAL-ED          SOUTH AFRICA   Q1                   NA                0.1851852   0.0813749   0.2889955
6 months    ki0047075b-MAL-ED          SOUTH AFRICA   Q2                   NA                0.2328767   0.1357276   0.3300258
6 months    ki0047075b-MAL-ED          SOUTH AFRICA   Q3                   NA                0.1929825   0.0903304   0.2956345
6 months    ki1000108-CMC-V-BCS-2002   INDIA          Q4                   NA                0.3636364   0.1623509   0.5649218
6 months    ki1000108-CMC-V-BCS-2002   INDIA          Q1                   NA                0.3428571   0.2519435   0.4337708
6 months    ki1000108-CMC-V-BCS-2002   INDIA          Q2                   NA                0.2803738   0.1951487   0.3655990
6 months    ki1000108-CMC-V-BCS-2002   INDIA          Q3                   NA                0.2740741   0.1987297   0.3494184
6 months    ki1017093-NIH-Birth        BANGLADESH     Q4                   NA                0.2352941   0.1343802   0.3362081
6 months    ki1017093-NIH-Birth        BANGLADESH     Q1                   NA                0.3303167   0.2682503   0.3923832
6 months    ki1017093-NIH-Birth        BANGLADESH     Q2                   NA                0.2732919   0.2043897   0.3421942
6 months    ki1017093-NIH-Birth        BANGLADESH     Q3                   NA                0.1264368   0.0565368   0.1963368
6 months    ki1017093c-NIH-Crypto      BANGLADESH     Q4                   NA                0.1541667   0.1084490   0.1998843
6 months    ki1017093c-NIH-Crypto      BANGLADESH     Q1                   NA                0.2285714   0.1663139   0.2908289
6 months    ki1017093c-NIH-Crypto      BANGLADESH     Q2                   NA                0.2962963   0.1744217   0.4181709
6 months    ki1017093c-NIH-Crypto      BANGLADESH     Q3                   NA                0.2317073   0.1789458   0.2844689
6 months    ki1112895-Guatemala BSC    GUATEMALA      Q4                   NA                0.3076923   0.2239108   0.3914739
6 months    ki1112895-Guatemala BSC    GUATEMALA      Q1                   NA                0.4444444   0.2989992   0.5898897
6 months    ki1112895-Guatemala BSC    GUATEMALA      Q2                   NA                0.2716049   0.1745666   0.3686433
6 months    ki1112895-Guatemala BSC    GUATEMALA      Q3                   NA                0.2352941   0.0924551   0.3781331
6 months    ki1113344-GMS-Nepal        NEPAL          Q4                   NA                0.1492537   0.0638530   0.2346544
6 months    ki1113344-GMS-Nepal        NEPAL          Q1                   NA                0.2330827   0.1915606   0.2746048
6 months    ki1113344-GMS-Nepal        NEPAL          Q2                   NA                0.1190476   0.0210201   0.2170752
6 months    ki1113344-GMS-Nepal        NEPAL          Q3                   NA                0.2115385   0.1004371   0.3226398
6 months    ki1126311-ZVITAMBO         ZIMBABWE       Q4                   NA                0.1553045   0.1454803   0.1651287
6 months    ki1126311-ZVITAMBO         ZIMBABWE       Q1                   NA                0.2076923   0.1379559   0.2774287
6 months    ki1126311-ZVITAMBO         ZIMBABWE       Q2                   NA                0.1747967   0.1273339   0.2222596
6 months    ki1126311-ZVITAMBO         ZIMBABWE       Q3                   NA                0.1855440   0.1708364   0.2002515
6 months    ki1135781-COHORTS          INDIA          Q4                   NA                0.1029567   0.0892690   0.1166445
6 months    ki1135781-COHORTS          INDIA          Q1                   NA                0.2886888   0.2676176   0.3097600
6 months    ki1135781-COHORTS          INDIA          Q2                   NA                0.2150056   0.1880580   0.2419532
6 months    ki1135781-COHORTS          INDIA          Q3                   NA                0.1613663   0.1366191   0.1861136
6 months    ki1135781-COHORTS          PHILIPPINES    Q4                   NA                0.1433915   0.1191313   0.1676517
6 months    ki1135781-COHORTS          PHILIPPINES    Q1                   NA                0.2676768   0.2320651   0.3032884
6 months    ki1135781-COHORTS          PHILIPPINES    Q2                   NA                0.2456897   0.1902842   0.3010951
6 months    ki1135781-COHORTS          PHILIPPINES    Q3                   NA                0.2231481   0.1983121   0.2479842
9 months    ki0047075b-MAL-ED          PERU           Q4                   NA                0.2631579   0.1639629   0.3623529
9 months    ki0047075b-MAL-ED          PERU           Q1                   NA                0.2413793   0.1310351   0.3517236
9 months    ki0047075b-MAL-ED          PERU           Q2                   NA                0.2545455   0.1391966   0.3698943
9 months    ki0047075b-MAL-ED          PERU           Q3                   NA                0.2272727   0.1259712   0.3285743
9 months    ki0047075b-MAL-ED          SOUTH AFRICA   Q4                   NA                0.1805556   0.0915295   0.2695817
9 months    ki0047075b-MAL-ED          SOUTH AFRICA   Q1                   NA                0.2115385   0.1003137   0.3227633
9 months    ki0047075b-MAL-ED          SOUTH AFRICA   Q2                   NA                0.2428571   0.1422025   0.3435118
9 months    ki0047075b-MAL-ED          SOUTH AFRICA   Q3                   NA                0.2142857   0.1066012   0.3219703
9 months    ki1000108-CMC-V-BCS-2002   INDIA          Q4                   NA                0.2727273   0.0863711   0.4590835
9 months    ki1000108-CMC-V-BCS-2002   INDIA          Q1                   NA                0.3904762   0.2970346   0.4839178
9 months    ki1000108-CMC-V-BCS-2002   INDIA          Q2                   NA                0.3738318   0.2820336   0.4656299
9 months    ki1000108-CMC-V-BCS-2002   INDIA          Q3                   NA                0.3636364   0.2814610   0.4458117
9 months    ki1017093-NIH-Birth        BANGLADESH     Q4                   NA                0.2388060   0.1366157   0.3409963
9 months    ki1017093-NIH-Birth        BANGLADESH     Q1                   NA                0.4097561   0.3423688   0.4771434
9 months    ki1017093-NIH-Birth        BANGLADESH     Q2                   NA                0.3701299   0.2937957   0.4464640
9 months    ki1017093-NIH-Birth        BANGLADESH     Q3                   NA                0.2962963   0.1967575   0.3958351
9 months    ki1017093c-NIH-Crypto      BANGLADESH     Q4                   NA                0.1659751   0.1189686   0.2129817
9 months    ki1017093c-NIH-Crypto      BANGLADESH     Q1                   NA                0.2705882   0.2037581   0.3374184
9 months    ki1017093c-NIH-Crypto      BANGLADESH     Q2                   NA                0.2592593   0.1422934   0.3762252
9 months    ki1017093c-NIH-Crypto      BANGLADESH     Q3                   NA                0.2655602   0.2097637   0.3213567
9 months    ki1112895-Guatemala BSC    GUATEMALA      Q4                   NA                0.3775510   0.2813648   0.4737372
9 months    ki1112895-Guatemala BSC    GUATEMALA      Q1                   NA                0.5945946   0.4360540   0.7531352
9 months    ki1112895-Guatemala BSC    GUATEMALA      Q2                   NA                0.3582090   0.2431518   0.4732661
9 months    ki1112895-Guatemala BSC    GUATEMALA      Q3                   NA                0.3666667   0.1938533   0.5394800
9 months    ki1113344-GMS-Nepal        NEPAL          Q4                   NA                0.2153846   0.1153563   0.3154130
9 months    ki1113344-GMS-Nepal        NEPAL          Q1                   NA                0.2984694   0.2531302   0.3438086
9 months    ki1113344-GMS-Nepal        NEPAL          Q2                   NA                0.2142857   0.0900781   0.3384933
9 months    ki1113344-GMS-Nepal        NEPAL          Q3                   NA                0.3000000   0.1728640   0.4271360
9 months    ki1126311-ZVITAMBO         ZIMBABWE       Q4                   NA                0.1775197   0.1667340   0.1883054
9 months    ki1126311-ZVITAMBO         ZIMBABWE       Q1                   NA                0.2619048   0.1851299   0.3386796
9 months    ki1126311-ZVITAMBO         ZIMBABWE       Q2                   NA                0.2704918   0.2147509   0.3262327
9 months    ki1126311-ZVITAMBO         ZIMBABWE       Q3                   NA                0.2282477   0.2116983   0.2447971
9 months    ki1135781-COHORTS          INDIA          Q4                   NA                0.1334142   0.1170011   0.1498273
9 months    ki1135781-COHORTS          INDIA          Q1                   NA                0.3994862   0.3751551   0.4238173
9 months    ki1135781-COHORTS          INDIA          Q2                   NA                0.3113088   0.2789558   0.3436618
9 months    ki1135781-COHORTS          INDIA          Q3                   NA                0.2250333   0.1951630   0.2549035
9 months    ki1135781-COHORTS          PHILIPPINES    Q4                   NA                0.1734820   0.1473517   0.1996124
9 months    ki1135781-COHORTS          PHILIPPINES    Q1                   NA                0.3456998   0.3074139   0.3839857
9 months    ki1135781-COHORTS          PHILIPPINES    Q2                   NA                0.3304721   0.2700631   0.3908811
9 months    ki1135781-COHORTS          PHILIPPINES    Q3                   NA                0.3002780   0.2729227   0.3276334
12 months   ki0047075b-MAL-ED          BANGLADESH     Q4                   NA                0.1851852   0.0813043   0.2890661
12 months   ki0047075b-MAL-ED          BANGLADESH     Q1                   NA                0.4358974   0.2798564   0.5919385
12 months   ki0047075b-MAL-ED          BANGLADESH     Q2                   NA                0.3200000   0.1366590   0.5033410
12 months   ki0047075b-MAL-ED          BANGLADESH     Q3                   NA                0.3239437   0.2148004   0.4330870
12 months   ki0047075b-MAL-ED          INDIA          Q4                   NA                0.3214286   0.1988026   0.4440546
12 months   ki0047075b-MAL-ED          INDIA          Q1                   NA                0.2187500   0.0751579   0.3623421
12 months   ki0047075b-MAL-ED          INDIA          Q2                   NA                0.3265306   0.1948992   0.4581620
12 months   ki0047075b-MAL-ED          INDIA          Q3                   NA                0.3174603   0.2022278   0.4326928
12 months   ki0047075b-MAL-ED          PERU           Q4                   NA                0.3013699   0.1958951   0.4068446
12 months   ki0047075b-MAL-ED          PERU           Q1                   NA                0.2807018   0.1638122   0.3975914
12 months   ki0047075b-MAL-ED          PERU           Q2                   NA                0.2500000   0.1320670   0.3679330
12 months   ki0047075b-MAL-ED          PERU           Q3                   NA                0.2857143   0.1739333   0.3974953
12 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q4                   NA                0.1690141   0.0816686   0.2563596
12 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q1                   NA                0.2777778   0.1580765   0.3974791
12 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q2                   NA                0.2916667   0.1864687   0.3968647
12 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q3                   NA                0.2181818   0.1088133   0.3275503
12 months   ki1000108-CMC-V-BCS-2002   INDIA          Q4                   NA                0.4090909   0.2033608   0.6148210
12 months   ki1000108-CMC-V-BCS-2002   INDIA          Q1                   NA                0.5566038   0.4619027   0.6513049
12 months   ki1000108-CMC-V-BCS-2002   INDIA          Q2                   NA                0.4672897   0.3726255   0.5619539
12 months   ki1000108-CMC-V-BCS-2002   INDIA          Q3                   NA                0.4887218   0.4036525   0.5737911
12 months   ki1017093-NIH-Birth        BANGLADESH     Q4                   NA                0.2424242   0.1389291   0.3459194
12 months   ki1017093-NIH-Birth        BANGLADESH     Q1                   NA                0.4603960   0.3915913   0.5292008
12 months   ki1017093-NIH-Birth        BANGLADESH     Q2                   NA                0.3586207   0.2804792   0.4367622
12 months   ki1017093-NIH-Birth        BANGLADESH     Q3                   NA                0.2948718   0.1935754   0.3961682
12 months   ki1017093c-NIH-Crypto      BANGLADESH     Q4                   NA                0.1750000   0.1268943   0.2231057
12 months   ki1017093c-NIH-Crypto      BANGLADESH     Q1                   NA                0.2528736   0.1882442   0.3175029
12 months   ki1017093c-NIH-Crypto      BANGLADESH     Q2                   NA                0.2264151   0.1136630   0.3391672
12 months   ki1017093c-NIH-Crypto      BANGLADESH     Q3                   NA                0.3054393   0.2470041   0.3638745
12 months   ki1112895-Guatemala BSC    GUATEMALA      Q4                   NA                0.3977273   0.2952130   0.5002416
12 months   ki1112895-Guatemala BSC    GUATEMALA      Q1                   NA                0.7419355   0.5875157   0.8963553
12 months   ki1112895-Guatemala BSC    GUATEMALA      Q2                   NA                0.5555556   0.4226901   0.6884210
12 months   ki1112895-Guatemala BSC    GUATEMALA      Q3                   NA                0.4444444   0.2565443   0.6323446
12 months   ki1113344-GMS-Nepal        NEPAL          Q4                   NA                0.2000000   0.1026708   0.2973292
12 months   ki1113344-GMS-Nepal        NEPAL          Q1                   NA                0.3756345   0.3277722   0.4234968
12 months   ki1113344-GMS-Nepal        NEPAL          Q2                   NA                0.2727273   0.1410150   0.4044396
12 months   ki1113344-GMS-Nepal        NEPAL          Q3                   NA                0.3461538   0.2167312   0.4755765
12 months   ki1126311-ZVITAMBO         ZIMBABWE       Q4                   NA                0.2217991   0.2092366   0.2343617
12 months   ki1126311-ZVITAMBO         ZIMBABWE       Q1                   NA                0.3109244   0.2277542   0.3940946
12 months   ki1126311-ZVITAMBO         ZIMBABWE       Q2                   NA                0.3049327   0.2445040   0.3653614
12 months   ki1126311-ZVITAMBO         ZIMBABWE       Q3                   NA                0.2784349   0.2596951   0.2971748
12 months   ki1135781-COHORTS          INDIA          Q4                   NA                0.1788297   0.1595691   0.1980904
12 months   ki1135781-COHORTS          INDIA          Q1                   NA                0.5343284   0.5076173   0.5610394
12 months   ki1135781-COHORTS          INDIA          Q2                   NA                0.4265537   0.3901189   0.4629884
12 months   ki1135781-COHORTS          INDIA          Q3                   NA                0.2997076   0.2653708   0.3340444
12 months   ki1135781-COHORTS          PHILIPPINES    Q4                   NA                0.2626132   0.2315856   0.2936408
12 months   ki1135781-COHORTS          PHILIPPINES    Q1                   NA                0.4982270   0.4569545   0.5394994
12 months   ki1135781-COHORTS          PHILIPPINES    Q2                   NA                0.4246575   0.3591799   0.4901351
12 months   ki1135781-COHORTS          PHILIPPINES    Q3                   NA                0.4110787   0.3810100   0.4411475
18 months   ki0047075b-MAL-ED          BANGLADESH     Q4                   NA                0.4444444   0.3115419   0.5773470
18 months   ki0047075b-MAL-ED          BANGLADESH     Q1                   NA                0.6216216   0.4649165   0.7783267
18 months   ki0047075b-MAL-ED          BANGLADESH     Q2                   NA                0.3043478   0.1157767   0.4929189
18 months   ki0047075b-MAL-ED          BANGLADESH     Q3                   NA                0.4393939   0.3193219   0.5594660
18 months   ki0047075b-MAL-ED          INDIA          Q4                   NA                0.4285714   0.2986337   0.5585091
18 months   ki0047075b-MAL-ED          INDIA          Q1                   NA                0.3548387   0.1859870   0.5236904
18 months   ki0047075b-MAL-ED          INDIA          Q2                   NA                0.4693878   0.3293023   0.6094732
18 months   ki0047075b-MAL-ED          INDIA          Q3                   NA                0.5156250   0.3928798   0.6383702
18 months   ki0047075b-MAL-ED          PERU           Q4                   NA                0.3623188   0.2486463   0.4759914
18 months   ki0047075b-MAL-ED          PERU           Q1                   NA                0.5000000   0.3610950   0.6389050
18 months   ki0047075b-MAL-ED          PERU           Q2                   NA                0.4400000   0.3020987   0.5779013
18 months   ki0047075b-MAL-ED          PERU           Q3                   NA                0.5192308   0.3831240   0.6553375
18 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q4                   NA                0.3088235   0.1987846   0.4188624
18 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q1                   NA                0.3148148   0.1906823   0.4389474
18 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q2                   NA                0.3676471   0.2528074   0.4824867
18 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q3                   NA                0.3725490   0.2395809   0.5055171
18 months   ki1000108-CMC-V-BCS-2002   INDIA          Q4                   NA                0.5500000   0.3316717   0.7683283
18 months   ki1000108-CMC-V-BCS-2002   INDIA          Q1                   NA                0.7169811   0.6311102   0.8028520
18 months   ki1000108-CMC-V-BCS-2002   INDIA          Q2                   NA                0.7037037   0.6174687   0.7899387
18 months   ki1000108-CMC-V-BCS-2002   INDIA          Q3                   NA                0.6740741   0.5948999   0.7532483
18 months   ki1017093-NIH-Birth        BANGLADESH     Q4                   NA                0.3833333   0.2601774   0.5064893
18 months   ki1017093-NIH-Birth        BANGLADESH     Q1                   NA                0.6578947   0.5903644   0.7254251
18 months   ki1017093-NIH-Birth        BANGLADESH     Q2                   NA                0.6222222   0.5403490   0.7040954
18 months   ki1017093-NIH-Birth        BANGLADESH     Q3                   NA                0.5128205   0.4017759   0.6238651
18 months   ki1017093c-NIH-Crypto      BANGLADESH     Q4                   NA                0.1963470   0.1436950   0.2489991
18 months   ki1017093c-NIH-Crypto      BANGLADESH     Q1                   NA                0.3758389   0.2980089   0.4536689
18 months   ki1017093c-NIH-Crypto      BANGLADESH     Q2                   NA                0.2826087   0.1523872   0.4128302
18 months   ki1017093c-NIH-Crypto      BANGLADESH     Q3                   NA                0.3590909   0.2956485   0.4225334
18 months   ki1113344-GMS-Nepal        NEPAL          Q4                   NA                0.3692308   0.2518024   0.4866591
18 months   ki1113344-GMS-Nepal        NEPAL          Q1                   NA                0.5721649   0.5228898   0.6214401
18 months   ki1113344-GMS-Nepal        NEPAL          Q2                   NA                0.4146341   0.2636958   0.5655725
18 months   ki1113344-GMS-Nepal        NEPAL          Q3                   NA                0.5471698   0.4130366   0.6813030
18 months   ki1126311-ZVITAMBO         ZIMBABWE       Q4                   NA                0.4244984   0.3930092   0.4559876
18 months   ki1126311-ZVITAMBO         ZIMBABWE       Q1                   NA                0.5789474   0.4219215   0.7359732
18 months   ki1126311-ZVITAMBO         ZIMBABWE       Q2                   NA                0.6190476   0.4990970   0.7389982
18 months   ki1126311-ZVITAMBO         ZIMBABWE       Q3                   NA                0.5287879   0.4906943   0.5668815
18 months   ki1135781-COHORTS          PHILIPPINES    Q4                   NA                0.4251337   0.3896988   0.4605685
18 months   ki1135781-COHORTS          PHILIPPINES    Q1                   NA                0.7161172   0.6782903   0.7539441
18 months   ki1135781-COHORTS          PHILIPPINES    Q2                   NA                0.6279070   0.5632836   0.6925303
18 months   ki1135781-COHORTS          PHILIPPINES    Q3                   NA                0.6307223   0.6005468   0.6608978
24 months   ki0047075b-MAL-ED          BANGLADESH     Q4                   NA                0.4313725   0.2950472   0.5676979
24 months   ki0047075b-MAL-ED          BANGLADESH     Q1                   NA                0.5555556   0.3927599   0.7183513
24 months   ki0047075b-MAL-ED          BANGLADESH     Q2                   NA                0.3043478   0.1157490   0.4929466
24 months   ki0047075b-MAL-ED          BANGLADESH     Q3                   NA                0.4426230   0.3176119   0.5676340
24 months   ki0047075b-MAL-ED          INDIA          Q4                   NA                0.4000000   0.2702025   0.5297975
24 months   ki0047075b-MAL-ED          INDIA          Q1                   NA                0.3548387   0.1859849   0.5236925
24 months   ki0047075b-MAL-ED          INDIA          Q2                   NA                0.4081633   0.2702005   0.5461260
24 months   ki0047075b-MAL-ED          INDIA          Q3                   NA                0.4375000   0.3156565   0.5593435
24 months   ki0047075b-MAL-ED          PERU           Q4                   NA                0.2881356   0.1722825   0.4039887
24 months   ki0047075b-MAL-ED          PERU           Q1                   NA                0.4222222   0.2775513   0.5668931
24 months   ki0047075b-MAL-ED          PERU           Q2                   NA                0.3877551   0.2509886   0.5245216
24 months   ki0047075b-MAL-ED          PERU           Q3                   NA                0.4042553   0.2636034   0.5449072
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q4                   NA                0.2537313   0.1493171   0.3581456
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q1                   NA                0.4150943   0.2821589   0.5480298
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q2                   NA                0.3731343   0.2570844   0.4891842
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q3                   NA                0.3921569   0.2578794   0.5264343
24 months   ki1000108-CMC-V-BCS-2002   INDIA          Q4                   NA                0.4090909   0.2033638   0.6148180
24 months   ki1000108-CMC-V-BCS-2002   INDIA          Q1                   NA                0.8285714   0.7563868   0.9007560
24 months   ki1000108-CMC-V-BCS-2002   INDIA          Q2                   NA                0.7064220   0.6208142   0.7920298
24 months   ki1000108-CMC-V-BCS-2002   INDIA          Q3                   NA                0.6838235   0.6055707   0.7620763
24 months   ki1017093-NIH-Birth        BANGLADESH     Q4                   NA                0.3220339   0.2026671   0.4414007
24 months   ki1017093-NIH-Birth        BANGLADESH     Q1                   NA                0.6571429   0.5867348   0.7275509
24 months   ki1017093-NIH-Birth        BANGLADESH     Q2                   NA                0.5725806   0.4854062   0.6597551
24 months   ki1017093-NIH-Birth        BANGLADESH     Q3                   NA                0.4647887   0.3486396   0.5809379
24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q4                   NA                0.1465969   0.0963865   0.1968073
24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q1                   NA                0.3392857   0.2515146   0.4270568
24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q2                   NA                0.3235294   0.1661265   0.4809324
24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q3                   NA                0.3107345   0.2424892   0.3789797
24 months   ki1113344-GMS-Nepal        NEPAL          Q4                   NA                0.2758621   0.1607213   0.3910028
24 months   ki1113344-GMS-Nepal        NEPAL          Q1                   NA                0.4714286   0.4190791   0.5237780
24 months   ki1113344-GMS-Nepal        NEPAL          Q2                   NA                0.3947368   0.2391688   0.5503049
24 months   ki1113344-GMS-Nepal        NEPAL          Q3                   NA                0.5400000   0.4017143   0.6782857
24 months   ki1135781-COHORTS          INDIA          Q4                   NA                0.2561930   0.2343455   0.2780404
24 months   ki1135781-COHORTS          INDIA          Q1                   NA                0.7017268   0.6766018   0.7268519
24 months   ki1135781-COHORTS          INDIA          Q2                   NA                0.5815603   0.5451420   0.6179785
24 months   ki1135781-COHORTS          INDIA          Q3                   NA                0.4738372   0.4365225   0.5111519
24 months   ki1135781-COHORTS          PHILIPPINES    Q4                   NA                0.4356164   0.3996403   0.4715926
24 months   ki1135781-COHORTS          PHILIPPINES    Q1                   NA                0.7471910   0.7103206   0.7840615
24 months   ki1135781-COHORTS          PHILIPPINES    Q2                   NA                0.6857143   0.6229141   0.7485145
24 months   ki1135781-COHORTS          PHILIPPINES    Q3                   NA                0.6663234   0.6366592   0.6959876


### Parameter: E(Y)


agecat      studyid                    country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          PERU           NA                   NA                0.1188811   0.1176826   0.1200796
Birth       ki1126311-ZVITAMBO         ZIMBABWE       NA                   NA                0.1036930   0.1035692   0.1038168
Birth       ki1135781-COHORTS          INDIA          NA                   NA                0.1182899   0.1176616   0.1189181
Birth       ki1135781-COHORTS          PHILIPPINES    NA                   NA                0.0613115   0.0608316   0.0617913
3 months    ki0047075b-MAL-ED          PERU           NA                   NA                0.2517241   0.2482424   0.2552059
3 months    ki0047075b-MAL-ED          SOUTH AFRICA   NA                   NA                0.1921708   0.1882168   0.1961249
3 months    ki1017093-NIH-Birth        BANGLADESH     NA                   NA                0.2280702   0.2252007   0.2309396
3 months    ki1017093c-NIH-Crypto      BANGLADESH     NA                   NA                0.2142857   0.2109046   0.2176668
3 months    ki1126311-ZVITAMBO         ZIMBABWE       NA                   NA                0.1783613   0.1780578   0.1786648
3 months    ki1135781-COHORTS          INDIA          NA                   NA                0.1513728   0.1498788   0.1528669
3 months    ki1135781-COHORTS          PHILIPPINES    NA                   NA                0.1234783   0.1224953   0.1244612
6 months    ki0047075b-MAL-ED          INDIA          NA                   NA                0.1730769   0.1679480   0.1782058
6 months    ki0047075b-MAL-ED          PERU           NA                   NA                0.2205882   0.2166124   0.2245641
6 months    ki0047075b-MAL-ED          SOUTH AFRICA   NA                   NA                0.1968504   0.1938741   0.1998267
6 months    ki1000108-CMC-V-BCS-2002   INDIA          NA                   NA                0.3008130   0.2973922   0.3042338
6 months    ki1017093-NIH-Birth        BANGLADESH     NA                   NA                0.2681564   0.2621770   0.2741359
6 months    ki1017093c-NIH-Crypto      BANGLADESH     NA                   NA                0.2097902   0.2066308   0.2129496
6 months    ki1112895-Guatemala BSC    GUATEMALA      NA                   NA                0.3104693   0.3029571   0.3179815
6 months    ki1113344-GMS-Nepal        NEPAL          NA                   NA                0.2125000   0.2093592   0.2156408
6 months    ki1126311-ZVITAMBO         ZIMBABWE       NA                   NA                0.1665057   0.1661824   0.1668289
6 months    ki1135781-COHORTS          INDIA          NA                   NA                0.1915758   0.1894988   0.1936528
6 months    ki1135781-COHORTS          PHILIPPINES    NA                   NA                0.2112260   0.2094510   0.2130010
9 months    ki0047075b-MAL-ED          PERU           NA                   NA                0.2470588   0.2453284   0.2487893
9 months    ki0047075b-MAL-ED          SOUTH AFRICA   NA                   NA                0.2120000   0.2090802   0.2149198
9 months    ki1000108-CMC-V-BCS-2002   INDIA          NA                   NA                0.3688525   0.3661254   0.3715795
9 months    ki1017093-NIH-Birth        BANGLADESH     NA                   NA                0.3570020   0.3517650   0.3622389
9 months    ki1017093c-NIH-Crypto      BANGLADESH     NA                   NA                0.2322946   0.2287639   0.2358254
9 months    ki1112895-Guatemala BSC    GUATEMALA      NA                   NA                0.4051724   0.3944812   0.4158636
9 months    ki1113344-GMS-Nepal        NEPAL          NA                   NA                0.2823315   0.2795556   0.2851074
9 months    ki1126311-ZVITAMBO         ZIMBABWE       NA                   NA                0.1982252   0.1975945   0.1988559
9 months    ki1135781-COHORTS          INDIA          NA                   NA                0.2647555   0.2615656   0.2679453
9 months    ki1135781-COHORTS          PHILIPPINES    NA                   NA                0.2750737   0.2724991   0.2776484
12 months   ki0047075b-MAL-ED          BANGLADESH     NA                   NA                0.3068783   0.2942552   0.3195015
12 months   ki0047075b-MAL-ED          INDIA          NA                   NA                0.3050000   0.2997491   0.3102509
12 months   ki0047075b-MAL-ED          PERU           NA                   NA                0.2816327   0.2793432   0.2839221
12 months   ki0047075b-MAL-ED          SOUTH AFRICA   NA                   NA                0.2380952   0.2318011   0.2443894
12 months   ki1000108-CMC-V-BCS-2002   INDIA          NA                   NA                0.4972826   0.4929824   0.5015828
12 months   ki1017093-NIH-Birth        BANGLADESH     NA                   NA                0.3747454   0.3676279   0.3818630
12 months   ki1017093c-NIH-Crypto      BANGLADESH     NA                   NA                0.2422096   0.2382101   0.2462092
12 months   ki1112895-Guatemala BSC    GUATEMALA      NA                   NA                0.5000000   0.4830263   0.5169737
12 months   ki1113344-GMS-Nepal        NEPAL          NA                   NA                0.3441441   0.3391882   0.3491001
12 months   ki1126311-ZVITAMBO         ZIMBABWE       NA                   NA                0.2445862   0.2438719   0.2453005
12 months   ki1135781-COHORTS          INDIA          NA                   NA                0.3515166   0.3470016   0.3560315
12 months   ki1135781-COHORTS          PHILIPPINES    NA                   NA                0.3868472   0.3834689   0.3902254
18 months   ki0047075b-MAL-ED          BANGLADESH     NA                   NA                0.4611111   0.4474531   0.4747691
18 months   ki0047075b-MAL-ED          INDIA          NA                   NA                0.4550000   0.4474187   0.4625813
18 months   ki0047075b-MAL-ED          PERU           NA                   NA                0.4479638   0.4394901   0.4564375
18 months   ki0047075b-MAL-ED          SOUTH AFRICA   NA                   NA                0.3402490   0.3365471   0.3439509
18 months   ki1000108-CMC-V-BCS-2002   INDIA          NA                   NA                0.6883469   0.6845016   0.6921922
18 months   ki1017093-NIH-Birth        BANGLADESH     NA                   NA                0.5874730   0.5789548   0.5959912
18 months   ki1017093c-NIH-Crypto      BANGLADESH     NA                   NA                0.3012618   0.2950811   0.3074426
18 months   ki1113344-GMS-Nepal        NEPAL          NA                   NA                0.5338208   0.5276891   0.5399526
18 months   ki1126311-ZVITAMBO         ZIMBABWE       NA                   NA                0.4754098   0.4725883   0.4782314
18 months   ki1135781-COHORTS          PHILIPPINES    NA                   NA                0.5874799   0.5831043   0.5918556
24 months   ki0047075b-MAL-ED          BANGLADESH     NA                   NA                0.4444444   0.4335100   0.4553789
24 months   ki0047075b-MAL-ED          INDIA          NA                   NA                0.4070352   0.4032541   0.4108163
24 months   ki0047075b-MAL-ED          PERU           NA                   NA                0.3700000   0.3624619   0.3775381
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   NA                   NA                0.3529412   0.3448136   0.3610687
24 months   ki1000108-CMC-V-BCS-2002   INDIA          NA                   NA                0.7150538   0.7051087   0.7249988
24 months   ki1017093-NIH-Birth        BANGLADESH     NA                   NA                0.5547786   0.5439120   0.5656451
24 months   ki1017093c-NIH-Crypto      BANGLADESH     NA                   NA                0.2568093   0.2494200   0.2641987
24 months   ki1113344-GMS-Nepal        NEPAL          NA                   NA                0.4495968   0.4434174   0.4557761
24 months   ki1135781-COHORTS          INDIA          NA                   NA                0.4815520   0.4758994   0.4872046
24 months   ki1135781-COHORTS          PHILIPPINES    NA                   NA                0.6167689   0.6119301   0.6216077


### Parameter: RR


agecat      studyid                    country        intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  -------------------------  -------------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki0047075b-MAL-ED          PERU           Q4                   Q4                1.0000000   1.0000000   1.000000
Birth       ki0047075b-MAL-ED          PERU           Q1                   Q4                1.1600000   0.4854531   2.771844
Birth       ki0047075b-MAL-ED          PERU           Q2                   Q4                0.9089552   0.3646239   2.265895
Birth       ki0047075b-MAL-ED          PERU           Q3                   Q4                1.0875000   0.4666067   2.534589
Birth       ki1126311-ZVITAMBO         ZIMBABWE       Q4                   Q4                1.0000000   1.0000000   1.000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE       Q1                   Q4                1.0721154   0.7184895   1.599789
Birth       ki1126311-ZVITAMBO         ZIMBABWE       Q2                   Q4                1.3273809   1.0291878   1.711971
Birth       ki1126311-ZVITAMBO         ZIMBABWE       Q3                   Q4                1.1232492   1.0118486   1.246915
Birth       ki1135781-COHORTS          INDIA          Q4                   Q4                1.0000000   1.0000000   1.000000
Birth       ki1135781-COHORTS          INDIA          Q1                   Q4                1.6317265   1.3501420   1.972038
Birth       ki1135781-COHORTS          INDIA          Q2                   Q4                1.4025974   1.1118380   1.769394
Birth       ki1135781-COHORTS          INDIA          Q3                   Q4                1.4425526   1.1408908   1.823976
Birth       ki1135781-COHORTS          PHILIPPINES    Q4                   Q4                1.0000000   1.0000000   1.000000
Birth       ki1135781-COHORTS          PHILIPPINES    Q1                   Q4                1.8547289   1.2471976   2.758199
Birth       ki1135781-COHORTS          PHILIPPINES    Q2                   Q4                1.5633960   0.9137570   2.674898
Birth       ki1135781-COHORTS          PHILIPPINES    Q3                   Q4                1.4210874   0.9814470   2.057665
3 months    ki0047075b-MAL-ED          PERU           Q4                   Q4                1.0000000   1.0000000   1.000000
3 months    ki0047075b-MAL-ED          PERU           Q1                   Q4                0.8787879   0.4883949   1.581237
3 months    ki0047075b-MAL-ED          PERU           Q2                   Q4                1.1983471   0.7160022   2.005630
3 months    ki0047075b-MAL-ED          PERU           Q3                   Q4                0.9084767   0.5226896   1.579006
3 months    ki0047075b-MAL-ED          SOUTH AFRICA   Q4                   Q4                1.0000000   1.0000000   1.000000
3 months    ki0047075b-MAL-ED          SOUTH AFRICA   Q1                   Q4                1.0789474   0.5526576   2.106417
3 months    ki0047075b-MAL-ED          SOUTH AFRICA   Q2                   Q4                1.1388889   0.6247668   2.076083
3 months    ki0047075b-MAL-ED          SOUTH AFRICA   Q3                   Q4                0.6721311   0.3072757   1.470212
3 months    ki1017093-NIH-Birth        BANGLADESH     Q4                   Q4                1.0000000   1.0000000   1.000000
3 months    ki1017093-NIH-Birth        BANGLADESH     Q1                   Q4                1.5105932   0.8651263   2.637640
3 months    ki1017093-NIH-Birth        BANGLADESH     Q2                   Q4                1.3114035   0.7313059   2.351655
3 months    ki1017093-NIH-Birth        BANGLADESH     Q3                   Q4                1.0398936   0.5315515   2.034382
3 months    ki1017093c-NIH-Crypto      BANGLADESH     Q4                   Q4                1.0000000   1.0000000   1.000000
3 months    ki1017093c-NIH-Crypto      BANGLADESH     Q1                   Q4                1.2461538   0.8268214   1.878156
3 months    ki1017093c-NIH-Crypto      BANGLADESH     Q2                   Q4                1.7973373   1.0738549   3.008247
3 months    ki1017093c-NIH-Crypto      BANGLADESH     Q3                   Q4                1.6254181   1.1399269   2.317678
3 months    ki1126311-ZVITAMBO         ZIMBABWE       Q4                   Q4                1.0000000   1.0000000   1.000000
3 months    ki1126311-ZVITAMBO         ZIMBABWE       Q1                   Q4                1.1950104   0.8632281   1.654313
3 months    ki1126311-ZVITAMBO         ZIMBABWE       Q2                   Q4                1.3110726   1.0426284   1.648633
3 months    ki1126311-ZVITAMBO         ZIMBABWE       Q3                   Q4                1.1623685   1.0592849   1.275484
3 months    ki1135781-COHORTS          INDIA          Q4                   Q4                1.0000000   1.0000000   1.000000
3 months    ki1135781-COHORTS          INDIA          Q1                   Q4                2.6691642   2.2428874   3.176458
3 months    ki1135781-COHORTS          INDIA          Q2                   Q4                2.0589520   1.6706822   2.537456
3 months    ki1135781-COHORTS          INDIA          Q3                   Q4                1.7332992   1.3861594   2.167374
3 months    ki1135781-COHORTS          PHILIPPINES    Q4                   Q4                1.0000000   1.0000000   1.000000
3 months    ki1135781-COHORTS          PHILIPPINES    Q1                   Q4                1.7392368   1.3001127   2.326679
3 months    ki1135781-COHORTS          PHILIPPINES    Q2                   Q4                1.8720172   1.3030693   2.689380
3 months    ki1135781-COHORTS          PHILIPPINES    Q3                   Q4                1.5948588   1.2241739   2.077789
6 months    ki0047075b-MAL-ED          INDIA          Q4                   Q4                1.0000000   1.0000000   1.000000
6 months    ki0047075b-MAL-ED          INDIA          Q1                   Q4                0.9932660   0.3620531   2.724952
6 months    ki0047075b-MAL-ED          INDIA          Q2                   Q4                1.5733333   0.7214408   3.431159
6 months    ki0047075b-MAL-ED          INDIA          Q3                   Q4                0.9932660   0.4325701   2.280734
6 months    ki0047075b-MAL-ED          PERU           Q4                   Q4                1.0000000   1.0000000   1.000000
6 months    ki0047075b-MAL-ED          PERU           Q1                   Q4                0.7191283   0.3758043   1.376103
6 months    ki0047075b-MAL-ED          PERU           Q2                   Q4                0.9331797   0.5249994   1.658715
6 months    ki0047075b-MAL-ED          PERU           Q3                   Q4                0.7163265   0.3875014   1.324186
6 months    ki0047075b-MAL-ED          SOUTH AFRICA   Q4                   Q4                1.0000000   1.0000000   1.000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA   Q1                   Q4                1.0802469   0.5042213   2.314328
6 months    ki0047075b-MAL-ED          SOUTH AFRICA   Q2                   Q4                1.3584475   0.6996147   2.637709
6 months    ki0047075b-MAL-ED          SOUTH AFRICA   Q3                   Q4                1.1257310   0.5365092   2.362066
6 months    ki1000108-CMC-V-BCS-2002   INDIA          Q4                   Q4                1.0000000   1.0000000   1.000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA          Q1                   Q4                0.9428571   0.5103746   1.741818
6 months    ki1000108-CMC-V-BCS-2002   INDIA          Q2                   Q4                0.7710280   0.4100257   1.449871
6 months    ki1000108-CMC-V-BCS-2002   INDIA          Q3                   Q4                0.7537037   0.4062461   1.398338
6 months    ki1017093-NIH-Birth        BANGLADESH     Q4                   Q4                1.0000000   1.0000000   1.000000
6 months    ki1017093-NIH-Birth        BANGLADESH     Q1                   Q4                1.4038462   0.8789533   2.242194
6 months    ki1017093-NIH-Birth        BANGLADESH     Q2                   Q4                1.1614907   0.7062433   1.910192
6 months    ki1017093-NIH-Birth        BANGLADESH     Q3                   Q4                0.5373563   0.2669234   1.081778
6 months    ki1017093c-NIH-Crypto      BANGLADESH     Q4                   Q4                1.0000000   1.0000000   1.000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH     Q1                   Q4                1.4826255   0.9912008   2.217692
6 months    ki1017093c-NIH-Crypto      BANGLADESH     Q2                   Q4                1.9219219   1.1574809   3.191227
6 months    ki1017093c-NIH-Crypto      BANGLADESH     Q3                   Q4                1.5029664   1.0341237   2.184369
6 months    ki1112895-Guatemala BSC    GUATEMALA      Q4                   Q4                1.0000000   1.0000000   1.000000
6 months    ki1112895-Guatemala BSC    GUATEMALA      Q1                   Q4                1.4444444   0.9436565   2.210995
6 months    ki1112895-Guatemala BSC    GUATEMALA      Q2                   Q4                0.8827160   0.5632898   1.383280
6 months    ki1112895-Guatemala BSC    GUATEMALA      Q3                   Q4                0.7647059   0.3931363   1.487461
6 months    ki1113344-GMS-Nepal        NEPAL          Q4                   Q4                1.0000000   1.0000000   1.000000
6 months    ki1113344-GMS-Nepal        NEPAL          Q1                   Q4                1.5616541   0.8576757   2.843456
6 months    ki1113344-GMS-Nepal        NEPAL          Q2                   Q4                0.7976190   0.2926325   2.174045
6 months    ki1113344-GMS-Nepal        NEPAL          Q3                   Q4                1.4173077   0.6518607   3.081580
6 months    ki1126311-ZVITAMBO         ZIMBABWE       Q4                   Q4                1.0000000   1.0000000   1.000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE       Q1                   Q4                1.3373233   0.9502741   1.882019
6 months    ki1126311-ZVITAMBO         ZIMBABWE       Q2                   Q4                1.1255100   0.8516611   1.487414
6 months    ki1126311-ZVITAMBO         ZIMBABWE       Q3                   Q4                1.1947110   1.0794915   1.322228
6 months    ki1135781-COHORTS          INDIA          Q4                   Q4                1.0000000   1.0000000   1.000000
6 months    ki1135781-COHORTS          INDIA          Q1                   Q4                2.8039825   2.4093951   3.263192
6 months    ki1135781-COHORTS          INDIA          Q2                   Q4                2.0883108   1.7395801   2.506951
6 months    ki1135781-COHORTS          INDIA          Q3                   Q4                1.5673220   1.2794171   1.920014
6 months    ki1135781-COHORTS          PHILIPPINES    Q4                   Q4                1.0000000   1.0000000   1.000000
6 months    ki1135781-COHORTS          PHILIPPINES    Q1                   Q4                1.8667545   1.5052675   2.315052
6 months    ki1135781-COHORTS          PHILIPPINES    Q2                   Q4                1.7134183   1.2924883   2.271434
6 months    ki1135781-COHORTS          PHILIPPINES    Q3                   Q4                1.5562158   1.2709222   1.905551
9 months    ki0047075b-MAL-ED          PERU           Q4                   Q4                1.0000000   1.0000000   1.000000
9 months    ki0047075b-MAL-ED          PERU           Q1                   Q4                0.9172414   0.5071799   1.658843
9 months    ki0047075b-MAL-ED          PERU           Q2                   Q4                0.9672727   0.5364880   1.743965
9 months    ki0047075b-MAL-ED          PERU           Q3                   Q4                0.8636364   0.4817416   1.548274
9 months    ki0047075b-MAL-ED          SOUTH AFRICA   Q4                   Q4                1.0000000   1.0000000   1.000000
9 months    ki0047075b-MAL-ED          SOUTH AFRICA   Q1                   Q4                1.1715976   0.5698146   2.408926
9 months    ki0047075b-MAL-ED          SOUTH AFRICA   Q2                   Q4                1.3450549   0.7063199   2.561407
9 months    ki0047075b-MAL-ED          SOUTH AFRICA   Q3                   Q4                1.1868132   0.5869871   2.399585
9 months    ki1000108-CMC-V-BCS-2002   INDIA          Q4                   Q4                1.0000000   1.0000000   1.000000
9 months    ki1000108-CMC-V-BCS-2002   INDIA          Q1                   Q4                1.4317460   0.6941253   2.953208
9 months    ki1000108-CMC-V-BCS-2002   INDIA          Q2                   Q4                1.3707165   0.6631484   2.833248
9 months    ki1000108-CMC-V-BCS-2002   INDIA          Q3                   Q4                1.3333333   0.6491946   2.738436
9 months    ki1017093-NIH-Birth        BANGLADESH     Q4                   Q4                1.0000000   1.0000000   1.000000
9 months    ki1017093-NIH-Birth        BANGLADESH     Q1                   Q4                1.7158537   1.0848861   2.713791
9 months    ki1017093-NIH-Birth        BANGLADESH     Q2                   Q4                1.5499188   0.9638455   2.492358
9 months    ki1017093-NIH-Birth        BANGLADESH     Q3                   Q4                1.2407407   0.7201272   2.137730
9 months    ki1017093c-NIH-Crypto      BANGLADESH     Q4                   Q4                1.0000000   1.0000000   1.000000
9 months    ki1017093c-NIH-Crypto      BANGLADESH     Q1                   Q4                1.6302941   1.1196110   2.373913
9 months    ki1017093c-NIH-Crypto      BANGLADESH     Q2                   Q4                1.5620370   0.9169598   2.660923
9 months    ki1017093c-NIH-Crypto      BANGLADESH     Q3                   Q4                1.6000000   1.1245265   2.276514
9 months    ki1112895-Guatemala BSC    GUATEMALA      Q4                   Q4                1.0000000   1.0000000   1.000000
9 months    ki1112895-Guatemala BSC    GUATEMALA      Q1                   Q4                1.5748722   1.0891452   2.277219
9 months    ki1112895-Guatemala BSC    GUATEMALA      Q2                   Q4                0.9487697   0.6296707   1.429579
9 months    ki1112895-Guatemala BSC    GUATEMALA      Q3                   Q4                0.9711712   0.5683541   1.659482
9 months    ki1113344-GMS-Nepal        NEPAL          Q4                   Q4                1.0000000   1.0000000   1.000000
9 months    ki1113344-GMS-Nepal        NEPAL          Q1                   Q4                1.3857507   0.8501118   2.258885
9 months    ki1113344-GMS-Nepal        NEPAL          Q2                   Q4                0.9948980   0.4733814   2.090961
9 months    ki1113344-GMS-Nepal        NEPAL          Q3                   Q4                1.3928571   0.7427805   2.611877
9 months    ki1126311-ZVITAMBO         ZIMBABWE       Q4                   Q4                1.0000000   1.0000000   1.000000
9 months    ki1126311-ZVITAMBO         ZIMBABWE       Q1                   Q4                1.4753560   1.0936587   1.990269
9 months    ki1126311-ZVITAMBO         ZIMBABWE       Q2                   Q4                1.5237284   1.2291437   1.888915
9 months    ki1126311-ZVITAMBO         ZIMBABWE       Q3                   Q4                1.2857597   1.1697058   1.413328
9 months    ki1135781-COHORTS          INDIA          Q4                   Q4                1.0000000   1.0000000   1.000000
9 months    ki1135781-COHORTS          INDIA          Q1                   Q4                2.9943306   2.6102500   3.434926
9 months    ki1135781-COHORTS          INDIA          Q2                   Q4                2.3334007   1.9863170   2.741133
9 months    ki1135781-COHORTS          INDIA          Q3                   Q4                1.6867268   1.4074920   2.021359
9 months    ki1135781-COHORTS          PHILIPPINES    Q4                   Q4                1.0000000   1.0000000   1.000000
9 months    ki1135781-COHORTS          PHILIPPINES    Q1                   Q4                1.9927126   1.6529158   2.402363
9 months    ki1135781-COHORTS          PHILIPPINES    Q2                   Q4                1.9049356   1.5031913   2.414051
9 months    ki1135781-COHORTS          PHILIPPINES    Q3                   Q4                1.7308884   1.4515113   2.064038
12 months   ki0047075b-MAL-ED          BANGLADESH     Q4                   Q4                1.0000000   1.0000000   1.000000
12 months   ki0047075b-MAL-ED          BANGLADESH     Q1                   Q4                2.3538462   1.2099796   4.579079
12 months   ki0047075b-MAL-ED          BANGLADESH     Q2                   Q4                1.7280000   0.7750198   3.852784
12 months   ki0047075b-MAL-ED          BANGLADESH     Q3                   Q4                1.7492958   0.9092387   3.365492
12 months   ki0047075b-MAL-ED          INDIA          Q4                   Q4                1.0000000   1.0000000   1.000000
12 months   ki0047075b-MAL-ED          INDIA          Q1                   Q4                0.6805556   0.3185175   1.454099
12 months   ki0047075b-MAL-ED          INDIA          Q2                   Q4                1.0158730   0.5831707   1.769633
12 months   ki0047075b-MAL-ED          INDIA          Q3                   Q4                0.9876543   0.5833219   1.672252
12 months   ki0047075b-MAL-ED          PERU           Q4                   Q4                1.0000000   1.0000000   1.000000
12 months   ki0047075b-MAL-ED          PERU           Q1                   Q4                0.9314195   0.5406372   1.604666
12 months   ki0047075b-MAL-ED          PERU           Q2                   Q4                0.8295455   0.4610442   1.492581
12 months   ki0047075b-MAL-ED          PERU           Q3                   Q4                0.9480519   0.5608639   1.602532
12 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q4                   Q4                1.0000000   1.0000000   1.000000
12 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q1                   Q4                1.6435185   0.8385809   3.221100
12 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q2                   Q4                1.7256944   0.9188970   3.240865
12 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q3                   Q4                1.2909091   0.6283746   2.651995
12 months   ki1000108-CMC-V-BCS-2002   INDIA          Q4                   Q4                1.0000000   1.0000000   1.000000
12 months   ki1000108-CMC-V-BCS-2002   INDIA          Q1                   Q4                1.3605870   0.8001298   2.313621
12 months   ki1000108-CMC-V-BCS-2002   INDIA          Q2                   Q4                1.1422637   0.6642123   1.964382
12 months   ki1000108-CMC-V-BCS-2002   INDIA          Q3                   Q4                1.1946533   0.7016560   2.034040
12 months   ki1017093-NIH-Birth        BANGLADESH     Q4                   Q4                1.0000000   1.0000000   1.000000
12 months   ki1017093-NIH-Birth        BANGLADESH     Q1                   Q4                1.8991337   1.2081357   2.985351
12 months   ki1017093-NIH-Birth        BANGLADESH     Q2                   Q4                1.4793103   0.9160060   2.389023
12 months   ki1017093-NIH-Birth        BANGLADESH     Q3                   Q4                1.2163462   0.7031979   2.103957
12 months   ki1017093c-NIH-Crypto      BANGLADESH     Q4                   Q4                1.0000000   1.0000000   1.000000
12 months   ki1017093c-NIH-Crypto      BANGLADESH     Q1                   Q4                1.4449918   0.9927829   2.103180
12 months   ki1017093c-NIH-Crypto      BANGLADESH     Q2                   Q4                1.2938005   0.7325407   2.285088
12 months   ki1017093c-NIH-Crypto      BANGLADESH     Q3                   Q4                1.7453676   1.2486383   2.439704
12 months   ki1112895-Guatemala BSC    GUATEMALA      Q4                   Q4                1.0000000   1.0000000   1.000000
12 months   ki1112895-Guatemala BSC    GUATEMALA      Q1                   Q4                1.8654378   1.3393773   2.598117
12 months   ki1112895-Guatemala BSC    GUATEMALA      Q2                   Q4                1.3968254   0.9827398   1.985389
12 months   ki1112895-Guatemala BSC    GUATEMALA      Q3                   Q4                1.1174603   0.6810687   1.833468
12 months   ki1113344-GMS-Nepal        NEPAL          Q4                   Q4                1.0000000   1.0000000   1.000000
12 months   ki1113344-GMS-Nepal        NEPAL          Q1                   Q4                1.8781726   1.1357000   3.106042
12 months   ki1113344-GMS-Nepal        NEPAL          Q2                   Q4                1.3636364   0.6869771   2.706792
12 months   ki1113344-GMS-Nepal        NEPAL          Q3                   Q4                1.7307692   0.9369506   3.197140
12 months   ki1126311-ZVITAMBO         ZIMBABWE       Q4                   Q4                1.0000000   1.0000000   1.000000
12 months   ki1126311-ZVITAMBO         ZIMBABWE       Q1                   Q4                1.4018285   1.0664693   1.842644
12 months   ki1126311-ZVITAMBO         ZIMBABWE       Q2                   Q4                1.3748148   1.1187513   1.689487
12 months   ki1126311-ZVITAMBO         ZIMBABWE       Q3                   Q4                1.2553472   1.1496379   1.370777
12 months   ki1135781-COHORTS          INDIA          Q4                   Q4                1.0000000   1.0000000   1.000000
12 months   ki1135781-COHORTS          INDIA          Q1                   Q4                2.9879170   2.6533866   3.364624
12 months   ki1135781-COHORTS          INDIA          Q2                   Q4                2.3852505   2.0789044   2.736740
12 months   ki1135781-COHORTS          INDIA          Q3                   Q4                1.6759385   1.4320811   1.961320
12 months   ki1135781-COHORTS          PHILIPPINES    Q4                   Q4                1.0000000   1.0000000   1.000000
12 months   ki1135781-COHORTS          PHILIPPINES    Q1                   Q4                1.8971893   1.6422657   2.191684
12 months   ki1135781-COHORTS          PHILIPPINES    Q2                   Q4                1.6170457   1.3315577   1.963743
12 months   ki1135781-COHORTS          PHILIPPINES    Q3                   Q4                1.5653392   1.3622577   1.798695
18 months   ki0047075b-MAL-ED          BANGLADESH     Q4                   Q4                1.0000000   1.0000000   1.000000
18 months   ki0047075b-MAL-ED          BANGLADESH     Q1                   Q4                1.3986486   0.9459115   2.068077
18 months   ki0047075b-MAL-ED          BANGLADESH     Q2                   Q4                0.6847826   0.3441662   1.362502
18 months   ki0047075b-MAL-ED          BANGLADESH     Q3                   Q4                0.9886364   0.6593410   1.482392
18 months   ki0047075b-MAL-ED          INDIA          Q4                   Q4                1.0000000   1.0000000   1.000000
18 months   ki0047075b-MAL-ED          INDIA          Q1                   Q4                0.8279570   0.4709381   1.455632
18 months   ki0047075b-MAL-ED          INDIA          Q2                   Q4                1.0952381   0.7157254   1.675987
18 months   ki0047075b-MAL-ED          INDIA          Q3                   Q4                1.2031250   0.8182780   1.768971
18 months   ki0047075b-MAL-ED          PERU           Q4                   Q4                1.0000000   1.0000000   1.000000
18 months   ki0047075b-MAL-ED          PERU           Q1                   Q4                1.3800000   0.9075800   2.098327
18 months   ki0047075b-MAL-ED          PERU           Q2                   Q4                1.2144000   0.7794158   1.892145
18 months   ki0047075b-MAL-ED          PERU           Q3                   Q4                1.4330769   0.9521736   2.156865
18 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q4                   Q4                1.0000000   1.0000000   1.000000
18 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q1                   Q4                1.0194004   0.5991562   1.734401
18 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q2                   Q4                1.1904762   0.7411922   1.912100
18 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q3                   Q4                1.2063492   0.7285260   1.997565
18 months   ki1000108-CMC-V-BCS-2002   INDIA          Q4                   Q4                1.0000000   1.0000000   1.000000
18 months   ki1000108-CMC-V-BCS-2002   INDIA          Q1                   Q4                1.3036021   0.8611356   1.973416
18 months   ki1000108-CMC-V-BCS-2002   INDIA          Q2                   Q4                1.2794613   0.8445037   1.938442
18 months   ki1000108-CMC-V-BCS-2002   INDIA          Q3                   Q4                1.2255892   0.8101376   1.854091
18 months   ki1017093-NIH-Birth        BANGLADESH     Q4                   Q4                1.0000000   1.0000000   1.000000
18 months   ki1017093-NIH-Birth        BANGLADESH     Q1                   Q4                1.7162471   1.2249064   2.404677
18 months   ki1017093-NIH-Birth        BANGLADESH     Q2                   Q4                1.6231884   1.1470743   2.296922
18 months   ki1017093-NIH-Birth        BANGLADESH     Q3                   Q4                1.3377926   0.9080868   1.970835
18 months   ki1017093c-NIH-Crypto      BANGLADESH     Q4                   Q4                1.0000000   1.0000000   1.000000
18 months   ki1017093c-NIH-Crypto      BANGLADESH     Q1                   Q4                1.9141564   1.3640619   2.686091
18 months   ki1017093c-NIH-Crypto      BANGLADESH     Q2                   Q4                1.4393327   0.8445485   2.453001
18 months   ki1017093c-NIH-Crypto      BANGLADESH     Q3                   Q4                1.8288584   1.3265272   2.521413
18 months   ki1113344-GMS-Nepal        NEPAL          Q4                   Q4                1.0000000   1.0000000   1.000000
18 months   ki1113344-GMS-Nepal        NEPAL          Q1                   Q4                1.5496134   1.1146231   2.154362
18 months   ki1113344-GMS-Nepal        NEPAL          Q2                   Q4                1.1229675   0.6925243   1.820955
18 months   ki1113344-GMS-Nepal        NEPAL          Q3                   Q4                1.4819182   0.9918240   2.214185
18 months   ki1126311-ZVITAMBO         ZIMBABWE       Q4                   Q4                1.0000000   1.0000000   1.000000
18 months   ki1126311-ZVITAMBO         ZIMBABWE       Q1                   Q4                1.3638387   1.0295437   1.806680
18 months   ki1126311-ZVITAMBO         ZIMBABWE       Q2                   Q4                1.4583037   1.1850604   1.794550
18 months   ki1126311-ZVITAMBO         ZIMBABWE       Q3                   Q4                1.2456769   1.1233052   1.381380
18 months   ki1135781-COHORTS          PHILIPPINES    Q4                   Q4                1.0000000   1.0000000   1.000000
18 months   ki1135781-COHORTS          PHILIPPINES    Q1                   Q4                1.6844518   1.5261710   1.859148
18 months   ki1135781-COHORTS          PHILIPPINES    Q2                   Q4                1.4769636   1.2937587   1.686111
18 months   ki1135781-COHORTS          PHILIPPINES    Q3                   Q4                1.4835857   1.3476430   1.633242
24 months   ki0047075b-MAL-ED          BANGLADESH     Q4                   Q4                1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED          BANGLADESH     Q1                   Q4                1.2878788   0.8369589   1.981736
24 months   ki0047075b-MAL-ED          BANGLADESH     Q2                   Q4                0.7055336   0.3518977   1.414552
24 months   ki0047075b-MAL-ED          BANGLADESH     Q3                   Q4                1.0260805   0.6715984   1.567665
24 months   ki0047075b-MAL-ED          INDIA          Q4                   Q4                1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED          INDIA          Q1                   Q4                0.8870968   0.4986905   1.578014
24 months   ki0047075b-MAL-ED          INDIA          Q2                   Q4                1.0204082   0.6386780   1.630294
24 months   ki0047075b-MAL-ED          INDIA          Q3                   Q4                1.0937500   0.7131903   1.677377
24 months   ki0047075b-MAL-ED          PERU           Q4                   Q4                1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED          PERU           Q1                   Q4                1.4653595   0.8640104   2.485246
24 months   ki0047075b-MAL-ED          PERU           Q2                   Q4                1.3457383   0.7882688   2.297454
24 months   ki0047075b-MAL-ED          PERU           Q3                   Q4                1.4030038   0.8243997   2.387701
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q4                   Q4                1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q1                   Q4                1.6359600   0.9712056   2.755714
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q2                   Q4                1.4705882   0.8779539   2.463261
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q3                   Q4                1.5455594   0.9048803   2.639856
24 months   ki1000108-CMC-V-BCS-2002   INDIA          Q4                   Q4                1.0000000   1.0000000   1.000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA          Q1                   Q4                2.0253968   1.2157811   3.374154
24 months   ki1000108-CMC-V-BCS-2002   INDIA          Q2                   Q4                1.7268094   1.0294159   2.896663
24 months   ki1000108-CMC-V-BCS-2002   INDIA          Q3                   Q4                1.6715686   0.9980203   2.799684
24 months   ki1017093-NIH-Birth        BANGLADESH     Q4                   Q4                1.0000000   1.0000000   1.000000
24 months   ki1017093-NIH-Birth        BANGLADESH     Q1                   Q4                2.0406015   1.3873629   3.001417
24 months   ki1017093-NIH-Birth        BANGLADESH     Q2                   Q4                1.7780136   1.1909864   2.654381
24 months   ki1017093-NIH-Birth        BANGLADESH     Q3                   Q4                1.4432913   0.9230149   2.256832
24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q4                   Q4                1.0000000   1.0000000   1.000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q1                   Q4                2.3144133   1.5067155   3.555090
24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q2                   Q4                2.2069328   1.2172760   4.001190
24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q3                   Q4                2.1196529   1.4111128   3.183961
24 months   ki1113344-GMS-Nepal        NEPAL          Q4                   Q4                1.0000000   1.0000000   1.000000
24 months   ki1113344-GMS-Nepal        NEPAL          Q1                   Q4                1.7089286   1.1095588   2.632070
24 months   ki1113344-GMS-Nepal        NEPAL          Q2                   Q4                1.4309211   0.8059541   2.540511
24 months   ki1113344-GMS-Nepal        NEPAL          Q3                   Q4                1.9575000   1.1995961   3.194247
24 months   ki1135781-COHORTS          INDIA          Q4                   Q4                1.0000000   1.0000000   1.000000
24 months   ki1135781-COHORTS          INDIA          Q1                   Q4                2.7390559   2.4970860   3.004473
24 months   ki1135781-COHORTS          INDIA          Q2                   Q4                2.2700088   2.0421098   2.523341
24 months   ki1135781-COHORTS          INDIA          Q3                   Q4                1.8495325   1.6468366   2.077177
24 months   ki1135781-COHORTS          PHILIPPINES    Q4                   Q4                1.0000000   1.0000000   1.000000
24 months   ki1135781-COHORTS          PHILIPPINES    Q1                   Q4                1.7152498   1.5579222   1.888465
24 months   ki1135781-COHORTS          PHILIPPINES    Q2                   Q4                1.5741240   1.3914935   1.780724
24 months   ki1135781-COHORTS          PHILIPPINES    Q3                   Q4                1.5296103   1.3926259   1.680069


### Parameter: PAR


agecat      studyid                    country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED          PERU           Q4                   NA                 0.0039386   -0.0632112   0.0710883
Birth       ki1126311-ZVITAMBO         ZIMBABWE       Q4                   NA                 0.0050383   -0.0012303   0.0113068
Birth       ki1135781-COHORTS          INDIA          Q4                   NA                 0.0306903    0.0174587   0.0439220
Birth       ki1135781-COHORTS          PHILIPPINES    Q4                   NA                 0.0173672    0.0042041   0.0305304
3 months    ki0047075b-MAL-ED          PERU           Q4                   NA                -0.0011494   -0.0927085   0.0904097
3 months    ki0047075b-MAL-ED          SOUTH AFRICA   Q4                   NA                -0.0029511   -0.0889698   0.0830675
3 months    ki1017093-NIH-Birth        BANGLADESH     Q4                   NA                 0.0541571   -0.0354014   0.1437156
3 months    ki1017093c-NIH-Crypto      BANGLADESH     Q4                   NA                 0.0537919    0.0074850   0.1000987
3 months    ki1126311-ZVITAMBO         ZIMBABWE       Q4                   NA                 0.0109987    0.0013430   0.0206545
3 months    ki1135781-COHORTS          INDIA          Q4                   NA                 0.0697185    0.0572688   0.0821682
3 months    ki1135781-COHORTS          PHILIPPINES    Q4                   NA                 0.0394737    0.0210011   0.0579462
6 months    ki0047075b-MAL-ED          INDIA          Q4                   NA                 0.0205346   -0.0715734   0.1126425
6 months    ki0047075b-MAL-ED          PERU           Q4                   NA                -0.0386710   -0.1343642   0.0570221
6 months    ki0047075b-MAL-ED          SOUTH AFRICA   Q4                   NA                 0.0254218   -0.0630914   0.1139350
6 months    ki1000108-CMC-V-BCS-2002   INDIA          Q4                   NA                -0.0628234   -0.2641379   0.1384911
6 months    ki1017093-NIH-Birth        BANGLADESH     Q4                   NA                 0.0328623   -0.0682286   0.1339532
6 months    ki1017093c-NIH-Crypto      BANGLADESH     Q4                   NA                 0.0556235    0.0097968   0.1014502
6 months    ki1112895-Guatemala BSC    GUATEMALA      Q4                   NA                 0.0027770   -0.0813407   0.0868947
6 months    ki1113344-GMS-Nepal        NEPAL          Q4                   NA                 0.0632463   -0.0222122   0.1487047
6 months    ki1126311-ZVITAMBO         ZIMBABWE       Q4                   NA                 0.0112012    0.0013717   0.0210307
6 months    ki1135781-COHORTS          INDIA          Q4                   NA                 0.0886191    0.0747747   0.1024636
6 months    ki1135781-COHORTS          PHILIPPINES    Q4                   NA                 0.0678345    0.0435094   0.0921595
9 months    ki0047075b-MAL-ED          PERU           Q4                   NA                -0.0160991   -0.1153092   0.0831111
9 months    ki0047075b-MAL-ED          SOUTH AFRICA   Q4                   NA                 0.0314444   -0.0576295   0.1205184
9 months    ki1000108-CMC-V-BCS-2002   INDIA          Q4                   NA                 0.0961252   -0.0902509   0.2825013
9 months    ki1017093-NIH-Birth        BANGLADESH     Q4                   NA                 0.1181960    0.0158716   0.2205204
9 months    ki1017093c-NIH-Crypto      BANGLADESH     Q4                   NA                 0.0663195    0.0191806   0.1134585
9 months    ki1112895-Guatemala BSC    GUATEMALA      Q4                   NA                 0.0276214   -0.0691571   0.1243999
9 months    ki1113344-GMS-Nepal        NEPAL          Q4                   NA                 0.0669469   -0.0331200   0.1670137
9 months    ki1126311-ZVITAMBO         ZIMBABWE       Q4                   NA                 0.0207055    0.0099014   0.0315097
9 months    ki1135781-COHORTS          INDIA          Q4                   NA                 0.1313413    0.1146211   0.1480615
9 months    ki1135781-COHORTS          PHILIPPINES    Q4                   NA                 0.1015917    0.0753349   0.1278486
12 months   ki0047075b-MAL-ED          BANGLADESH     Q4                   NA                 0.1216931    0.0170481   0.2263382
12 months   ki0047075b-MAL-ED          INDIA          Q4                   NA                -0.0164286   -0.1391669   0.1063098
12 months   ki0047075b-MAL-ED          PERU           Q4                   NA                -0.0197372   -0.1252368   0.0857623
12 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q4                   NA                 0.0690812   -0.0184908   0.1566532
12 months   ki1000108-CMC-V-BCS-2002   INDIA          Q4                   NA                 0.0881917   -0.1175834   0.2939667
12 months   ki1017093-NIH-Birth        BANGLADESH     Q4                   NA                 0.1323212    0.0285816   0.2360608
12 months   ki1017093c-NIH-Crypto      BANGLADESH     Q4                   NA                 0.0672096    0.0189380   0.1154813
12 months   ki1112895-Guatemala BSC    GUATEMALA      Q4                   NA                 0.1022727   -0.0016373   0.2061827
12 months   ki1113344-GMS-Nepal        NEPAL          Q4                   NA                 0.1441441    0.0466889   0.2415994
12 months   ki1126311-ZVITAMBO         ZIMBABWE       Q4                   NA                 0.0227870    0.0102042   0.0353699
12 months   ki1135781-COHORTS          INDIA          Q4                   NA                 0.1726869    0.1529041   0.1924696
12 months   ki1135781-COHORTS          PHILIPPINES    Q4                   NA                 0.1242340    0.0930230   0.1554450
18 months   ki0047075b-MAL-ED          BANGLADESH     Q4                   NA                 0.0166667   -0.1169359   0.1502692
18 months   ki0047075b-MAL-ED          INDIA          Q4                   NA                 0.0264286   -0.1037301   0.1565872
18 months   ki0047075b-MAL-ED          PERU           Q4                   NA                 0.0856450   -0.0283430   0.1996329
18 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q4                   NA                 0.0314254   -0.0786757   0.1415266
18 months   ki1000108-CMC-V-BCS-2002   INDIA          Q4                   NA                 0.1383469   -0.0800152   0.3567090
18 months   ki1017093-NIH-Birth        BANGLADESH     Q4                   NA                 0.2041397    0.0806895   0.3275899
18 months   ki1017093c-NIH-Crypto      BANGLADESH     Q4                   NA                 0.1049148    0.0519012   0.1579284
18 months   ki1113344-GMS-Nepal        NEPAL          Q4                   NA                 0.1645901    0.0470017   0.2821784
18 months   ki1126311-ZVITAMBO         ZIMBABWE       Q4                   NA                 0.0509114    0.0192961   0.0825268
18 months   ki1135781-COHORTS          PHILIPPINES    Q4                   NA                 0.1623462    0.1266423   0.1980502
24 months   ki0047075b-MAL-ED          BANGLADESH     Q4                   NA                 0.0130719   -0.1236913   0.1498351
24 months   ki0047075b-MAL-ED          INDIA          Q4                   NA                 0.0070352   -0.1228174   0.1368877
24 months   ki0047075b-MAL-ED          PERU           Q4                   NA                 0.0818644   -0.0342337   0.1979625
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q4                   NA                 0.0992098   -0.0055202   0.2039399
24 months   ki1000108-CMC-V-BCS-2002   INDIA          Q4                   NA                 0.3059629    0.0999955   0.5119302
24 months   ki1017093-NIH-Birth        BANGLADESH     Q4                   NA                 0.2327447    0.1128842   0.3526051
24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q4                   NA                 0.1102125    0.0594613   0.1609637
24 months   ki1113344-GMS-Nepal        NEPAL          Q4                   NA                 0.1737347    0.0584283   0.2890411
24 months   ki1135781-COHORTS          INDIA          Q4                   NA                 0.2253591    0.2027922   0.2479259
24 months   ki1135781-COHORTS          PHILIPPINES    Q4                   NA                 0.1811525    0.1448524   0.2174526


### Parameter: PAF


agecat      studyid                    country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED          PERU           Q4                   NA                 0.0331305   -0.7341284   0.4609185
Birth       ki1126311-ZVITAMBO         ZIMBABWE       Q4                   NA                 0.0485883   -0.0138256   0.1071599
Birth       ki1135781-COHORTS          INDIA          Q4                   NA                 0.2594502    0.1387688   0.3632209
Birth       ki1135781-COHORTS          PHILIPPINES    Q4                   NA                 0.2832620    0.0330415   0.4687327
3 months    ki0047075b-MAL-ED          PERU           Q4                   NA                -0.0045662   -0.4428681   0.3005921
3 months    ki0047075b-MAL-ED          SOUTH AFRICA   Q4                   NA                -0.0153568   -0.5779085   0.3466354
3 months    ki1017093-NIH-Birth        BANGLADESH     Q4                   NA                 0.2374582   -0.2760289   0.5443128
3 months    ki1017093c-NIH-Crypto      BANGLADESH     Q4                   NA                 0.2510288    0.0008649   0.4385566
3 months    ki1126311-ZVITAMBO         ZIMBABWE       Q4                   NA                 0.0616655    0.0059410   0.1142662
3 months    ki1135781-COHORTS          INDIA          Q4                   NA                 0.4605750    0.3722187   0.5364957
3 months    ki1135781-COHORTS          PHILIPPINES    Q4                   NA                 0.3196810    0.1524972   0.4538851
6 months    ki0047075b-MAL-ED          INDIA          Q4                   NA                 0.1186441   -0.6117429   0.5180445
6 months    ki0047075b-MAL-ED          PERU           Q4                   NA                -0.1753086   -0.7002144   0.1875434
6 months    ki0047075b-MAL-ED          SOUTH AFRICA   Q4                   NA                 0.1291429   -0.4593323   0.4803156
6 months    ki1000108-CMC-V-BCS-2002   INDIA          Q4                   NA                -0.2088452   -1.1028999   0.3050992
6 months    ki1017093-NIH-Birth        BANGLADESH     Q4                   NA                 0.1225490   -0.3481446   0.4289038
6 months    ki1017093c-NIH-Crypto      BANGLADESH     Q4                   NA                 0.2651389    0.0110827   0.4539272
6 months    ki1112895-Guatemala BSC    GUATEMALA      Q4                   NA                 0.0089445   -0.3026208   0.2459886
6 months    ki1113344-GMS-Nepal        NEPAL          Q4                   NA                 0.2976295   -0.2449325   0.6037341
6 months    ki1126311-ZVITAMBO         ZIMBABWE       Q4                   NA                 0.0672721    0.0063341   0.1244731
6 months    ki1135781-COHORTS          INDIA          Q4                   NA                 0.4625799    0.3858936   0.5296900
6 months    ki1135781-COHORTS          PHILIPPINES    Q4                   NA                 0.3211464    0.1958367   0.4269296
9 months    ki0047075b-MAL-ED          PERU           Q4                   NA                -0.0651629   -0.5529152   0.2693922
9 months    ki0047075b-MAL-ED          SOUTH AFRICA   Q4                   NA                 0.1483229   -0.3947458   0.4799382
9 months    ki1000108-CMC-V-BCS-2002   INDIA          Q4                   NA                 0.2606061   -0.4643648   0.6266617
9 months    ki1017093-NIH-Birth        BANGLADESH     Q4                   NA                 0.3310794   -0.0264265   0.5640655
9 months    ki1017093c-NIH-Crypto      BANGLADESH     Q4                   NA                 0.2854974    0.0511900   0.4619429
9 months    ki1112895-Guatemala BSC    GUATEMALA      Q4                   NA                 0.0681719   -0.2038434   0.2787239
9 months    ki1113344-GMS-Nepal        NEPAL          Q4                   NA                 0.2371216   -0.2139321   0.5205799
9 months    ki1126311-ZVITAMBO         ZIMBABWE       Q4                   NA                 0.1044546    0.0482770   0.1573162
9 months    ki1135781-COHORTS          INDIA          Q4                   NA                 0.4960853    0.4297817   0.5546792
9 months    ki1135781-COHORTS          PHILIPPINES    Q4                   NA                 0.3693254    0.2665912   0.4576688
12 months   ki0047075b-MAL-ED          BANGLADESH     Q4                   NA                 0.3965517   -0.0590456   0.6561528
12 months   ki0047075b-MAL-ED          INDIA          Q4                   NA                -0.0538642   -0.5439668   0.2806648
12 months   ki0047075b-MAL-ED          PERU           Q4                   NA                -0.0700814   -0.5186373   0.2459857
12 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q4                   NA                 0.2901408   -0.1909857   0.5769051
12 months   ki1000108-CMC-V-BCS-2002   INDIA          Q4                   NA                 0.1773472   -0.3603596   0.5025157
12 months   ki1017093-NIH-Birth        BANGLADESH     Q4                   NA                 0.3530962    0.0081843   0.5780622
12 months   ki1017093c-NIH-Crypto      BANGLADESH     Q4                   NA                 0.2774854    0.0484210   0.4514093
12 months   ki1112895-Guatemala BSC    GUATEMALA      Q4                   NA                 0.2045455   -0.0316244   0.3866489
12 months   ki1113344-GMS-Nepal        NEPAL          Q4                   NA                 0.4188482    0.0543515   0.6428510
12 months   ki1126311-ZVITAMBO         ZIMBABWE       Q4                   NA                 0.0931657    0.0402485   0.1431651
12 months   ki1135781-COHORTS          INDIA          Q4                   NA                 0.4912623    0.4329772   0.5435563
12 months   ki1135781-COHORTS          PHILIPPINES    Q4                   NA                 0.3211449    0.2357618   0.3969887
18 months   ki0047075b-MAL-ED          BANGLADESH     Q4                   NA                 0.0361446   -0.3017119   0.2863111
18 months   ki0047075b-MAL-ED          INDIA          Q4                   NA                 0.0580848   -0.2760960   0.3047511
18 months   ki0047075b-MAL-ED          PERU           Q4                   NA                 0.1911872   -0.1075143   0.4093276
18 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q4                   NA                 0.0923601   -0.2963789   0.3645298
18 months   ki1000108-CMC-V-BCS-2002   INDIA          Q4                   NA                 0.2009843   -0.1884206   0.4627944
18 months   ki1017093-NIH-Birth        BANGLADESH     Q4                   NA                 0.3474877    0.0999652   0.5269380
18 months   ki1017093c-NIH-Crypto      BANGLADESH     Q4                   NA                 0.3482512    0.1471353   0.5019416
18 months   ki1113344-GMS-Nepal        NEPAL          Q4                   NA                 0.3083246    0.0491472   0.4968570
18 months   ki1126311-ZVITAMBO         ZIMBABWE       Q4                   NA                 0.1070895    0.0381071   0.1711249
18 months   ki1135781-COHORTS          PHILIPPINES    Q4                   NA                 0.2763435    0.2131805   0.3344360
24 months   ki0047075b-MAL-ED          BANGLADESH     Q4                   NA                 0.0294118   -0.3325978   0.2930789
24 months   ki0047075b-MAL-ED          INDIA          Q4                   NA                 0.0172840   -0.3596015   0.2896956
24 months   ki0047075b-MAL-ED          PERU           Q4                   NA                 0.2212552   -0.1647685   0.4793442
24 months   ki0047075b-MAL-ED          SOUTH AFRICA   Q4                   NA                 0.2810945   -0.0856005   0.5239270
24 months   ki1000108-CMC-V-BCS-2002   INDIA          Q4                   NA                 0.4278879    0.0538362   0.6540639
24 months   ki1017093-NIH-Birth        BANGLADESH     Q4                   NA                 0.4195271    0.1586350   0.5995213
24 months   ki1017093c-NIH-Crypto      BANGLADESH     Q4                   NA                 0.4291607    0.1950172   0.5951994
24 months   ki1113344-GMS-Nepal        NEPAL          Q4                   NA                 0.3864234    0.0683879   0.5958873
24 months   ki1135781-COHORTS          INDIA          Q4                   NA                 0.4679849    0.4201593   0.5118657
24 months   ki1135781-COHORTS          PHILIPPINES    Q4                   NA                 0.2937121    0.2326204   0.3499402
