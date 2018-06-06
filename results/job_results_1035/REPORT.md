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

**Intervention Variable:** mhtcm

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        A               n     nA   nAY0   nAY1
----------  -------------------------  -----------------------------  ----------  -----  -----  -----  -----
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=160         246      4      4      0
Birth       ki0047075b-MAL-ED          BANGLADESH                     <145          246     55     41     14
Birth       ki0047075b-MAL-ED          BANGLADESH                     [145-150)     246     86     70     16
Birth       ki0047075b-MAL-ED          BANGLADESH                     [150-155)     246     80     71      9
Birth       ki0047075b-MAL-ED          BANGLADESH                     [155-160)     246     21     18      3
Birth       ki0047075b-MAL-ED          BRAZIL                         >=160         184     57     54      3
Birth       ki0047075b-MAL-ED          BRAZIL                         <145          184      7      6      1
Birth       ki0047075b-MAL-ED          BRAZIL                         [145-150)     184     30     24      6
Birth       ki0047075b-MAL-ED          BRAZIL                         [150-155)     184     40     36      4
Birth       ki0047075b-MAL-ED          BRAZIL                         [155-160)     184     50     45      5
Birth       ki0047075b-MAL-ED          INDIA                          >=160         198     13     12      1
Birth       ki0047075b-MAL-ED          INDIA                          <145          198     24     20      4
Birth       ki0047075b-MAL-ED          INDIA                          [145-150)     198     57     44     13
Birth       ki0047075b-MAL-ED          INDIA                          [150-155)     198     71     59     12
Birth       ki0047075b-MAL-ED          INDIA                          [155-160)     198     33     31      2
Birth       ki0047075b-MAL-ED          NEPAL                          >=160         172      2      2      0
Birth       ki0047075b-MAL-ED          NEPAL                          <145          172     25     22      3
Birth       ki0047075b-MAL-ED          NEPAL                          [145-150)     172     64     59      5
Birth       ki0047075b-MAL-ED          NEPAL                          [150-155)     172     56     48      8
Birth       ki0047075b-MAL-ED          NEPAL                          [155-160)     172     25     23      2
Birth       ki0047075b-MAL-ED          PERU                           >=160         276     11     10      1
Birth       ki0047075b-MAL-ED          PERU                           <145          276     40     29     11
Birth       ki0047075b-MAL-ED          PERU                           [145-150)     276    102     89     13
Birth       ki0047075b-MAL-ED          PERU                           [150-155)     276     76     71      5
Birth       ki0047075b-MAL-ED          PERU                           [155-160)     276     47     44      3
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=160         228    104     93     11
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <145          228      8      8      0
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [145-150)     228     11      9      2
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [150-155)     228     36     32      4
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [155-160)     228     69     63      6
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=160         121     30     29      1
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <145          121      5      2      3
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [145-150)     121     11      7      4
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [150-155)     121     29     26      3
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [155-160)     121     46     39      7
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=160          28      0      0      0
Birth       ki1017093-NIH-Birth        BANGLADESH                     <145           28      9      9      0
Birth       ki1017093-NIH-Birth        BANGLADESH                     [145-150)      28      5      5      0
Birth       ki1017093-NIH-Birth        BANGLADESH                     [150-155)      28      7      6      1
Birth       ki1017093-NIH-Birth        BANGLADESH                     [155-160)      28      7      7      0
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=160          27      1      1      0
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <145           27      6      5      1
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [145-150)      27      8      7      1
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [150-155)      27      9      6      3
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [155-160)      27      3      3      0
Birth       ki1101329-Keneba           GAMBIA                         >=160        1429    726    696     30
Birth       ki1101329-Keneba           GAMBIA                         <145         1429      3      2      1
Birth       ki1101329-Keneba           GAMBIA                         [145-150)    1429     20     19      1
Birth       ki1101329-Keneba           GAMBIA                         [150-155)    1429    220    206     14
Birth       ki1101329-Keneba           GAMBIA                         [155-160)    1429    460    434     26
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=160        9667   4850   4430    420
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <145         9667     64     51     13
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [145-150)    9667    307    270     37
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [150-155)    9667   1592   1411    181
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [155-160)    9667   2854   2547    307
Birth       ki1135781-COHORTS          GUATEMALA                      >=160         397     14     13      1
Birth       ki1135781-COHORTS          GUATEMALA                      <145          397     86     78      8
Birth       ki1135781-COHORTS          GUATEMALA                      [145-150)     397    141    139      2
Birth       ki1135781-COHORTS          GUATEMALA                      [150-155)     397    122    118      4
Birth       ki1135781-COHORTS          GUATEMALA                      [155-160)     397     34     30      4
Birth       ki1135781-COHORTS          INDIA                          >=160        1774    147    139      8
Birth       ki1135781-COHORTS          INDIA                          <145         1774    158    130     28
Birth       ki1135781-COHORTS          INDIA                          [145-150)    1774    474    413     61
Birth       ki1135781-COHORTS          INDIA                          [150-155)    1774    612    550     62
Birth       ki1135781-COHORTS          INDIA                          [155-160)    1774    383    358     25
Birth       ki1135781-COHORTS          PHILIPPINES                    >=160        3050    130    129      1
Birth       ki1135781-COHORTS          PHILIPPINES                    <145         3050    327    285     42
Birth       ki1135781-COHORTS          PHILIPPINES                    [145-150)    3050    960    892     68
Birth       ki1135781-COHORTS          PHILIPPINES                    [150-155)    3050   1133   1072     61
Birth       ki1135781-COHORTS          PHILIPPINES                    [155-160)    3050    500    485     15
3 months    ki0047075b-MAL-ED          BANGLADESH                     >=160         250      3      3      0
3 months    ki0047075b-MAL-ED          BANGLADESH                     <145          250     56     37     19
3 months    ki0047075b-MAL-ED          BANGLADESH                     [145-150)     250     90     71     19
3 months    ki0047075b-MAL-ED          BANGLADESH                     [150-155)     250     80     76      4
3 months    ki0047075b-MAL-ED          BANGLADESH                     [155-160)     250     21     20      1
3 months    ki0047075b-MAL-ED          BRAZIL                         >=160         222     68     66      2
3 months    ki0047075b-MAL-ED          BRAZIL                         <145          222      8      8      0
3 months    ki0047075b-MAL-ED          BRAZIL                         [145-150)     222     33     31      2
3 months    ki0047075b-MAL-ED          BRAZIL                         [150-155)     222     51     45      6
3 months    ki0047075b-MAL-ED          BRAZIL                         [155-160)     222     62     58      4
3 months    ki0047075b-MAL-ED          INDIA                          >=160         240     14     12      2
3 months    ki0047075b-MAL-ED          INDIA                          <145          240     29     25      4
3 months    ki0047075b-MAL-ED          INDIA                          [145-150)     240     69     54     15
3 months    ki0047075b-MAL-ED          INDIA                          [150-155)     240     87     75     12
3 months    ki0047075b-MAL-ED          INDIA                          [155-160)     240     41     39      2
3 months    ki0047075b-MAL-ED          NEPAL                          >=160         236      5      5      0
3 months    ki0047075b-MAL-ED          NEPAL                          <145          236     37     30      7
3 months    ki0047075b-MAL-ED          NEPAL                          [145-150)     236     85     82      3
3 months    ki0047075b-MAL-ED          NEPAL                          [150-155)     236     73     70      3
3 months    ki0047075b-MAL-ED          NEPAL                          [155-160)     236     36     36      0
3 months    ki0047075b-MAL-ED          PERU                           >=160         289     12     11      1
3 months    ki0047075b-MAL-ED          PERU                           <145          289     42     23     19
3 months    ki0047075b-MAL-ED          PERU                           [145-150)     289    107     85     22
3 months    ki0047075b-MAL-ED          PERU                           [150-155)     289     80     59     21
3 months    ki0047075b-MAL-ED          PERU                           [155-160)     289     48     38     10
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=160         269    121    108     13
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <145          269      9      6      3
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [145-150)     269     14     10      4
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [150-155)     269     43     36      7
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [155-160)     269     82     59     23
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=160         254     64     60      4
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <145          254     10      8      2
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [145-150)     254     25     17      8
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [150-155)     254     67     54     13
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [155-160)     254     88     72     16
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=160          94      1      0      1
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          <145           94     13      5      8
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          [145-150)      94     35     20     15
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          [150-155)      94     30     20     10
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          [155-160)      94     15     13      2
3 months    ki1017093-NIH-Birth        BANGLADESH                     >=160         570     23     23      0
3 months    ki1017093-NIH-Birth        BANGLADESH                     <145          570     96     57     39
3 months    ki1017093-NIH-Birth        BANGLADESH                     [145-150)     570    191    144     47
3 months    ki1017093-NIH-Birth        BANGLADESH                     [150-155)     570    177    147     30
3 months    ki1017093-NIH-Birth        BANGLADESH                     [155-160)     570     83     69     14
3 months    ki1017093b-PROVIDE         BANGLADESH                     >=160         644     33     30      3
3 months    ki1017093b-PROVIDE         BANGLADESH                     <145          644     81     58     23
3 months    ki1017093b-PROVIDE         BANGLADESH                     [145-150)     644    225    196     29
3 months    ki1017093b-PROVIDE         BANGLADESH                     [150-155)     644    200    183     17
3 months    ki1017093b-PROVIDE         BANGLADESH                     [155-160)     644    105    100      5
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=160         728     21     21      0
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     <145          728    109     74     35
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     [145-150)     728    239    180     59
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     [150-155)     728    245    197     48
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     [155-160)     728    114    100     14
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=160        2257    650    630     20
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <145         2257     34     29      5
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [145-150)    2257    175    156     19
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [150-155)    2257    625    580     45
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [155-160)    2257    773    731     42
3 months    ki1101329-Keneba           GAMBIA                         >=160        1949    988    894     94
3 months    ki1101329-Keneba           GAMBIA                         <145         1949      4      1      3
3 months    ki1101329-Keneba           GAMBIA                         [145-150)    1949     29     19     10
3 months    ki1101329-Keneba           GAMBIA                         [150-155)    1949    284    217     67
3 months    ki1101329-Keneba           GAMBIA                         [155-160)    1949    644    542    102
3 months    ki1112895-Guatemala BSC    GUATEMALA                      >=160          16      0      0      0
3 months    ki1112895-Guatemala BSC    GUATEMALA                      <145           16      3      2      1
3 months    ki1112895-Guatemala BSC    GUATEMALA                      [145-150)      16      8      6      2
3 months    ki1112895-Guatemala BSC    GUATEMALA                      [150-155)      16      3      3      0
3 months    ki1112895-Guatemala BSC    GUATEMALA                      [155-160)      16      2      1      1
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=160        7770   3869   3309    560
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       <145         7770     48     35     13
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       [145-150)    7770    256    174     82
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       [150-155)    7770   1306    986    320
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       [155-160)    7770   2291   1868    423
3 months    ki1135781-COHORTS          GUATEMALA                      >=160         466     13     11      2
3 months    ki1135781-COHORTS          GUATEMALA                      <145          466     97     47     50
3 months    ki1135781-COHORTS          GUATEMALA                      [145-150)     466    176    123     53
3 months    ki1135781-COHORTS          GUATEMALA                      [150-155)     466    136    105     31
3 months    ki1135781-COHORTS          GUATEMALA                      [155-160)     466     44     30     14
3 months    ki1135781-COHORTS          INDIA                          >=160        1819    145    136      9
3 months    ki1135781-COHORTS          INDIA                          <145         1819    167    124     43
3 months    ki1135781-COHORTS          INDIA                          [145-150)    1819    493    406     87
3 months    ki1135781-COHORTS          INDIA                          [150-155)    1819    616    540     76
3 months    ki1135781-COHORTS          INDIA                          [155-160)    1819    398    368     30
3 months    ki1135781-COHORTS          PHILIPPINES                    >=160        2875    117    112      5
3 months    ki1135781-COHORTS          PHILIPPINES                    <145         2875    304    230     74
3 months    ki1135781-COHORTS          PHILIPPINES                    [145-150)    2875    909    767    142
3 months    ki1135781-COHORTS          PHILIPPINES                    [150-155)    2875   1066    967     99
3 months    ki1135781-COHORTS          PHILIPPINES                    [155-160)    2875    479    444     35
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=160         241      4      4      0
6 months    ki0047075b-MAL-ED          BANGLADESH                     <145          241     53     37     16
6 months    ki0047075b-MAL-ED          BANGLADESH                     [145-150)     241     87     67     20
6 months    ki0047075b-MAL-ED          BANGLADESH                     [150-155)     241     77     71      6
6 months    ki0047075b-MAL-ED          BANGLADESH                     [155-160)     241     20     17      3
6 months    ki0047075b-MAL-ED          BRAZIL                         >=160         209     65     63      2
6 months    ki0047075b-MAL-ED          BRAZIL                         <145          209      7      7      0
6 months    ki0047075b-MAL-ED          BRAZIL                         [145-150)     209     32     30      2
6 months    ki0047075b-MAL-ED          BRAZIL                         [150-155)     209     49     48      1
6 months    ki0047075b-MAL-ED          BRAZIL                         [155-160)     209     56     55      1
6 months    ki0047075b-MAL-ED          INDIA                          >=160         235     14     12      2
6 months    ki0047075b-MAL-ED          INDIA                          <145          235     28     24      4
6 months    ki0047075b-MAL-ED          INDIA                          [145-150)     235     69     48     21
6 months    ki0047075b-MAL-ED          INDIA                          [150-155)     235     83     70     13
6 months    ki0047075b-MAL-ED          INDIA                          [155-160)     235     41     36      5
6 months    ki0047075b-MAL-ED          NEPAL                          >=160         236      5      5      0
6 months    ki0047075b-MAL-ED          NEPAL                          <145          236     37     33      4
6 months    ki0047075b-MAL-ED          NEPAL                          [145-150)     236     85     79      6
6 months    ki0047075b-MAL-ED          NEPAL                          [150-155)     236     73     71      2
6 months    ki0047075b-MAL-ED          NEPAL                          [155-160)     236     36     36      0
6 months    ki0047075b-MAL-ED          PERU                           >=160         272     12     11      1
6 months    ki0047075b-MAL-ED          PERU                           <145          272     38     25     13
6 months    ki0047075b-MAL-ED          PERU                           [145-150)     272    101     76     25
6 months    ki0047075b-MAL-ED          PERU                           [150-155)     272     75     60     15
6 months    ki0047075b-MAL-ED          PERU                           [155-160)     272     46     40      6
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=160         249    112     98     14
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <145          249      9      5      4
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [145-150)     249     13      9      4
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [150-155)     249     40     29     11
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [155-160)     249     75     58     17
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=160         247     62     56      6
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <145          247      9      4      5
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [145-150)     247     25     13     12
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [150-155)     247     66     49     17
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [155-160)     247     85     67     18
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=160          95      1      0      1
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <145           95     12      3      9
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [145-150)      95     35     13     22
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [150-155)      95     32     21     11
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [155-160)      95     15     11      4
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=160         537     19     19      0
6 months    ki1017093-NIH-Birth        BANGLADESH                     <145          537     90     48     42
6 months    ki1017093-NIH-Birth        BANGLADESH                     [145-150)     537    183    130     53
6 months    ki1017093-NIH-Birth        BANGLADESH                     [150-155)     537    168    135     33
6 months    ki1017093-NIH-Birth        BANGLADESH                     [155-160)     537     77     61     16
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=160         582     30     26      4
6 months    ki1017093b-PROVIDE         BANGLADESH                     <145          582     75     52     23
6 months    ki1017093b-PROVIDE         BANGLADESH                     [145-150)     582    199    165     34
6 months    ki1017093b-PROVIDE         BANGLADESH                     [150-155)     582    182    157     25
6 months    ki1017093b-PROVIDE         BANGLADESH                     [155-160)     582     96     89      7
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=160         715     22     20      2
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <145          715    106     71     35
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [145-150)     715    230    176     54
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [150-155)     715    245    202     43
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [155-160)     715    112     96     16
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=160        1996    571    538     33
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <145         1996     32     26      6
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [145-150)    1996    153    124     29
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [150-155)    1996    565    496     69
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [155-160)    1996    675    622     53
6 months    ki1101329-Keneba           GAMBIA                         >=160        1877    958    871     87
6 months    ki1101329-Keneba           GAMBIA                         <145         1877      4      1      3
6 months    ki1101329-Keneba           GAMBIA                         [145-150)    1877     30     18     12
6 months    ki1101329-Keneba           GAMBIA                         [150-155)    1877    275    215     60
6 months    ki1101329-Keneba           GAMBIA                         [155-160)    1877    610    504    106
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=160         231     11      9      2
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <145          231     49     29     20
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [145-150)     231     77     55     22
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [150-155)     231     69     49     20
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [155-160)     231     25     19      6
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=160        7126   3538   3099    439
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <145         7126     45     35     10
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [145-150)    7126    244    147     97
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [150-155)    7126   1165    921    244
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [155-160)    7126   2134   1744    390
6 months    ki1135781-COHORTS          GUATEMALA                      >=160         453     14     13      1
6 months    ki1135781-COHORTS          GUATEMALA                      <145          453    100     35     65
6 months    ki1135781-COHORTS          GUATEMALA                      [145-150)     453    168     93     75
6 months    ki1135781-COHORTS          GUATEMALA                      [150-155)     453    130     81     49
6 months    ki1135781-COHORTS          GUATEMALA                      [155-160)     453     41     26     15
6 months    ki1135781-COHORTS          INDIA                          >=160        1819    150    136     14
6 months    ki1135781-COHORTS          INDIA                          <145         1819    163    112     51
6 months    ki1135781-COHORTS          INDIA                          [145-150)    1819    495    389    106
6 months    ki1135781-COHORTS          INDIA                          [150-155)    1819    620    524     96
6 months    ki1135781-COHORTS          INDIA                          [155-160)    1819    391    355     36
6 months    ki1135781-COHORTS          PHILIPPINES                    >=160        2708    108    102      6
6 months    ki1135781-COHORTS          PHILIPPINES                    <145         2708    287    180    107
6 months    ki1135781-COHORTS          PHILIPPINES                    [145-150)    2708    854    627    227
6 months    ki1135781-COHORTS          PHILIPPINES                    [150-155)    2708   1006    836    170
6 months    ki1135781-COHORTS          PHILIPPINES                    [155-160)    2708    453    391     62
6 months    ki1148112-LCNI-5           MALAWI                         >=160         836    226    163     63
6 months    ki1148112-LCNI-5           MALAWI                         <145          836     12      4      8
6 months    ki1148112-LCNI-5           MALAWI                         [145-150)     836     93     43     50
6 months    ki1148112-LCNI-5           MALAWI                         [150-155)     836    218    124     94
6 months    ki1148112-LCNI-5           MALAWI                         [155-160)     836    287    195     92
9 months    ki0047075b-MAL-ED          BANGLADESH                     >=160         234      4      4      0
9 months    ki0047075b-MAL-ED          BANGLADESH                     <145          234     52     33     19
9 months    ki0047075b-MAL-ED          BANGLADESH                     [145-150)     234     86     62     24
9 months    ki0047075b-MAL-ED          BANGLADESH                     [150-155)     234     73     62     11
9 months    ki0047075b-MAL-ED          BANGLADESH                     [155-160)     234     19     15      4
9 months    ki0047075b-MAL-ED          BRAZIL                         >=160         199     60     59      1
9 months    ki0047075b-MAL-ED          BRAZIL                         <145          199      7      7      0
9 months    ki0047075b-MAL-ED          BRAZIL                         [145-150)     199     31     29      2
9 months    ki0047075b-MAL-ED          BRAZIL                         [150-155)     199     48     48      0
9 months    ki0047075b-MAL-ED          BRAZIL                         [155-160)     199     53     52      1
9 months    ki0047075b-MAL-ED          INDIA                          >=160         231     14     12      2
9 months    ki0047075b-MAL-ED          INDIA                          <145          231     27     21      6
9 months    ki0047075b-MAL-ED          INDIA                          [145-150)     231     69     44     25
9 months    ki0047075b-MAL-ED          INDIA                          [150-155)     231     80     66     14
9 months    ki0047075b-MAL-ED          INDIA                          [155-160)     231     41     36      5
9 months    ki0047075b-MAL-ED          NEPAL                          >=160         231      4      4      0
9 months    ki0047075b-MAL-ED          NEPAL                          <145          231     37     30      7
9 months    ki0047075b-MAL-ED          NEPAL                          [145-150)     231     83     74      9
9 months    ki0047075b-MAL-ED          NEPAL                          [150-155)     231     72     70      2
9 months    ki0047075b-MAL-ED          NEPAL                          [155-160)     231     35     35      0
9 months    ki0047075b-MAL-ED          PERU                           >=160         255     11      9      2
9 months    ki0047075b-MAL-ED          PERU                           <145          255     36     19     17
9 months    ki0047075b-MAL-ED          PERU                           [145-150)     255     95     68     27
9 months    ki0047075b-MAL-ED          PERU                           [150-155)     255     69     56     13
9 months    ki0047075b-MAL-ED          PERU                           [155-160)     255     44     40      4
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=160         246    110     96     14
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <145          246      9      5      4
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [145-150)     246     14     10      4
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [150-155)     246     38     25     13
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [155-160)     246     75     57     18
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=160         238     60     48     12
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <145          238      8      1      7
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [145-150)     238     24      8     16
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [150-155)     238     64     41     23
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [155-160)     238     82     50     32
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=160          85      1      0      1
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          <145           85     13      3     10
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          [145-150)      85     30      8     22
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          [150-155)      85     27     11     16
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          [155-160)      85     14      6      8
9 months    ki1017093-NIH-Birth        BANGLADESH                     >=160         507     18     18      0
9 months    ki1017093-NIH-Birth        BANGLADESH                     <145          507     89     33     56
9 months    ki1017093-NIH-Birth        BANGLADESH                     [145-150)     507    174    112     62
9 months    ki1017093-NIH-Birth        BANGLADESH                     [150-155)     507    151    107     44
9 months    ki1017093-NIH-Birth        BANGLADESH                     [155-160)     507     75     56     19
9 months    ki1017093b-PROVIDE         BANGLADESH                     >=160         604     31     27      4
9 months    ki1017093b-PROVIDE         BANGLADESH                     <145          604     76     49     27
9 months    ki1017093b-PROVIDE         BANGLADESH                     [145-150)     604    210    164     46
9 months    ki1017093b-PROVIDE         BANGLADESH                     [150-155)     604    192    150     42
9 months    ki1017093b-PROVIDE         BANGLADESH                     [155-160)     604     95     86      9
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=160         706     21     20      1
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     <145          706    104     68     36
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     [145-150)     706    227    164     63
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     [150-155)     706    240    189     51
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     [155-160)     706    114    101     13
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=160        1758    502    464     38
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <145         1758     30     21      9
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [145-150)    1758    139     98     41
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [150-155)    1758    491    405     86
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [155-160)    1758    596    511     85
9 months    ki1101329-Keneba           GAMBIA                         >=160        1872    954    834    120
9 months    ki1101329-Keneba           GAMBIA                         <145         1872      4      1      3
9 months    ki1101329-Keneba           GAMBIA                         [145-150)    1872     28     17     11
9 months    ki1101329-Keneba           GAMBIA                         [150-155)    1872    284    208     76
9 months    ki1101329-Keneba           GAMBIA                         [155-160)    1872    602    458    144
9 months    ki1112895-Guatemala BSC    GUATEMALA                      >=160         201     11      9      2
9 months    ki1112895-Guatemala BSC    GUATEMALA                      <145          201     42     20     22
9 months    ki1112895-Guatemala BSC    GUATEMALA                      [145-150)     201     67     43     24
9 months    ki1112895-Guatemala BSC    GUATEMALA                      [150-155)     201     58     34     24
9 months    ki1112895-Guatemala BSC    GUATEMALA                      [155-160)     201     23     16      7
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=160        6573   3263   2768    495
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       <145         6573     37     24     13
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       [145-150)    6573    210    129     81
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       [150-155)    6573   1092    804    288
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       [155-160)    6573   1971   1551    420
9 months    ki1135781-COHORTS          GUATEMALA                      >=160         442     14      8      6
9 months    ki1135781-COHORTS          GUATEMALA                      <145          442     98     23     75
9 months    ki1135781-COHORTS          GUATEMALA                      [145-150)     442    160     61     99
9 months    ki1135781-COHORTS          GUATEMALA                      [150-155)     442    130     58     72
9 months    ki1135781-COHORTS          GUATEMALA                      [155-160)     442     40     15     25
9 months    ki1135781-COHORTS          INDIA                          >=160        1648    125    113     12
9 months    ki1135781-COHORTS          INDIA                          <145         1648    150     92     58
9 months    ki1135781-COHORTS          INDIA                          [145-150)    1648    453    311    142
9 months    ki1135781-COHORTS          INDIA                          [150-155)    1648    561    437    124
9 months    ki1135781-COHORTS          INDIA                          [155-160)    1648    359    312     47
9 months    ki1135781-COHORTS          PHILIPPINES                    >=160        2712    112    100     12
9 months    ki1135781-COHORTS          PHILIPPINES                    <145         2712    285    138    147
9 months    ki1135781-COHORTS          PHILIPPINES                    [145-150)    2712    862    580    282
9 months    ki1135781-COHORTS          PHILIPPINES                    [150-155)    2712   1003    783    220
9 months    ki1135781-COHORTS          PHILIPPINES                    [155-160)    2712    450    365     85
9 months    ki1148112-LCNI-5           MALAWI                         >=160         661    179    138     41
9 months    ki1148112-LCNI-5           MALAWI                         <145          661     10      4      6
9 months    ki1148112-LCNI-5           MALAWI                         [145-150)     661     75     32     43
9 months    ki1148112-LCNI-5           MALAWI                         [150-155)     661    168    104     64
9 months    ki1148112-LCNI-5           MALAWI                         [155-160)     661    229    163     66
12 months   ki0047075b-MAL-ED          BANGLADESH                     >=160         233      4      4      0
12 months   ki0047075b-MAL-ED          BANGLADESH                     <145          233     52     31     21
12 months   ki0047075b-MAL-ED          BANGLADESH                     [145-150)     233     87     50     37
12 months   ki0047075b-MAL-ED          BANGLADESH                     [150-155)     233     71     59     12
12 months   ki0047075b-MAL-ED          BANGLADESH                     [155-160)     233     19     14      5
12 months   ki0047075b-MAL-ED          BRAZIL                         >=160         195     58     56      2
12 months   ki0047075b-MAL-ED          BRAZIL                         <145          195      7      7      0
12 months   ki0047075b-MAL-ED          BRAZIL                         [145-150)     195     30     27      3
12 months   ki0047075b-MAL-ED          BRAZIL                         [150-155)     195     48     48      0
12 months   ki0047075b-MAL-ED          BRAZIL                         [155-160)     195     52     51      1
12 months   ki0047075b-MAL-ED          INDIA                          >=160         227     12     10      2
12 months   ki0047075b-MAL-ED          INDIA                          <145          227     26     18      8
12 months   ki0047075b-MAL-ED          INDIA                          [145-150)     227     69     40     29
12 months   ki0047075b-MAL-ED          INDIA                          [150-155)     227     79     57     22
12 months   ki0047075b-MAL-ED          INDIA                          [155-160)     227     41     28     13
12 months   ki0047075b-MAL-ED          NEPAL                          >=160         231      4      4      0
12 months   ki0047075b-MAL-ED          NEPAL                          <145          231     37     28      9
12 months   ki0047075b-MAL-ED          NEPAL                          [145-150)     231     83     70     13
12 months   ki0047075b-MAL-ED          NEPAL                          [150-155)     231     72     68      4
12 months   ki0047075b-MAL-ED          NEPAL                          [155-160)     231     35     35      0
12 months   ki0047075b-MAL-ED          PERU                           >=160         245     11      8      3
12 months   ki0047075b-MAL-ED          PERU                           <145          245     35     19     16
12 months   ki0047075b-MAL-ED          PERU                           [145-150)     245     93     60     33
12 months   ki0047075b-MAL-ED          PERU                           [150-155)     245     65     56      9
12 months   ki0047075b-MAL-ED          PERU                           [155-160)     245     41     34      7
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=160         248    110     94     16
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <145          248      9      5      4
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [145-150)     248     14      8      6
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [150-155)     248     38     25     13
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [155-160)     248     77     56     21
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=160         231     58     35     23
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <145          231      8      0      8
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [145-150)     231     24      3     21
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [150-155)     231     65     29     36
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [155-160)     231     76     39     37
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=160          92      1      0      1
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          <145           92     14      4     10
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          [145-150)      92     32      2     30
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          [150-155)      92     30      7     23
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          [155-160)      92     15      6      9
12 months   ki1017093-NIH-Birth        BANGLADESH                     >=160         491     18     18      0
12 months   ki1017093-NIH-Birth        BANGLADESH                     <145          491     82     27     55
12 months   ki1017093-NIH-Birth        BANGLADESH                     [145-150)     491    167     97     70
12 months   ki1017093-NIH-Birth        BANGLADESH                     [150-155)     491    150    106     44
12 months   ki1017093-NIH-Birth        BANGLADESH                     [155-160)     491     74     59     15
12 months   ki1017093b-PROVIDE         BANGLADESH                     >=160         600     32     28      4
12 months   ki1017093b-PROVIDE         BANGLADESH                     <145          600     75     43     32
12 months   ki1017093b-PROVIDE         BANGLADESH                     [145-150)     600    210    151     59
12 months   ki1017093b-PROVIDE         BANGLADESH                     [150-155)     600    188    139     49
12 months   ki1017093b-PROVIDE         BANGLADESH                     [155-160)     600     95     82     13
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=160         706     20     20      0
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     <145          706    102     67     35
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     [145-150)     706    230    162     68
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     [150-155)     706    241    190     51
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     [155-160)     706    113     96     17
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=160        1425    407    366     41
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <145         1425     25     18      7
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [145-150)    1425    107     73     34
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [150-155)    1425    400    315     85
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [155-160)    1425    486    418     68
12 months   ki1101329-Keneba           GAMBIA                         >=160        1773    908    749    159
12 months   ki1101329-Keneba           GAMBIA                         <145         1773      4      1      3
12 months   ki1101329-Keneba           GAMBIA                         [145-150)    1773     25      9     16
12 months   ki1101329-Keneba           GAMBIA                         [150-155)    1773    273    175     98
12 months   ki1101329-Keneba           GAMBIA                         [155-160)    1773    563    384    179
12 months   ki1112895-Guatemala BSC    GUATEMALA                      >=160         175      9      8      1
12 months   ki1112895-Guatemala BSC    GUATEMALA                      <145          175     35      9     26
12 months   ki1112895-Guatemala BSC    GUATEMALA                      [145-150)     175     59     31     28
12 months   ki1112895-Guatemala BSC    GUATEMALA                      [150-155)     175     50     24     26
12 months   ki1112895-Guatemala BSC    GUATEMALA                      [155-160)     175     22     15      7
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=160        5797   2794   2264    530
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       <145         5797     33     20     13
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       [145-150)    5797    201    103     98
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       [150-155)    5797    999    686    313
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       [155-160)    5797   1770   1293    477
12 months   ki1135781-COHORTS          GUATEMALA                      >=160         507     17      6     11
12 months   ki1135781-COHORTS          GUATEMALA                      <145          507    113     20     93
12 months   ki1135781-COHORTS          GUATEMALA                      [145-150)     507    184     57    127
12 months   ki1135781-COHORTS          GUATEMALA                      [150-155)     507    147     50     97
12 months   ki1135781-COHORTS          GUATEMALA                      [155-160)     507     46     17     29
12 months   ki1135781-COHORTS          INDIA                          >=160        1535    123    105     18
12 months   ki1135781-COHORTS          INDIA                          <145         1535    139     61     78
12 months   ki1135781-COHORTS          INDIA                          [145-150)    1535    423    252    171
12 months   ki1135781-COHORTS          INDIA                          [150-155)    1535    519    361    158
12 months   ki1135781-COHORTS          INDIA                          [155-160)    1535    331    268     63
12 months   ki1135781-COHORTS          PHILIPPINES                    >=160        2585    110     94     16
12 months   ki1135781-COHORTS          PHILIPPINES                    <145         2585    274     91    183
12 months   ki1135781-COHORTS          PHILIPPINES                    [145-150)    2585    816    450    366
12 months   ki1135781-COHORTS          PHILIPPINES                    [150-155)    2585    963    626    337
12 months   ki1135781-COHORTS          PHILIPPINES                    [155-160)    2585    422    324     98
12 months   ki1148112-LCNI-5           MALAWI                         >=160         624    165    117     48
12 months   ki1148112-LCNI-5           MALAWI                         <145          624      9      1      8
12 months   ki1148112-LCNI-5           MALAWI                         [145-150)     624     71     33     38
12 months   ki1148112-LCNI-5           MALAWI                         [150-155)     624    166     88     78
12 months   ki1148112-LCNI-5           MALAWI                         [155-160)     624    213    139     74
18 months   ki0047075b-MAL-ED          BANGLADESH                     >=160         221      4      3      1
18 months   ki0047075b-MAL-ED          BANGLADESH                     <145          221     49     17     32
18 months   ki0047075b-MAL-ED          BANGLADESH                     [145-150)     221     81     38     43
18 months   ki0047075b-MAL-ED          BANGLADESH                     [150-155)     221     69     45     24
18 months   ki0047075b-MAL-ED          BANGLADESH                     [155-160)     221     18     13      5
18 months   ki0047075b-MAL-ED          BRAZIL                         >=160         180     51     49      2
18 months   ki0047075b-MAL-ED          BRAZIL                         <145          180      7      7      0
18 months   ki0047075b-MAL-ED          BRAZIL                         [145-150)     180     26     25      1
18 months   ki0047075b-MAL-ED          BRAZIL                         [150-155)     180     46     43      3
18 months   ki0047075b-MAL-ED          BRAZIL                         [155-160)     180     50     49      1
18 months   ki0047075b-MAL-ED          INDIA                          >=160         227     13     10      3
18 months   ki0047075b-MAL-ED          INDIA                          <145          227     26     13     13
18 months   ki0047075b-MAL-ED          INDIA                          [145-150)     227     69     29     40
18 months   ki0047075b-MAL-ED          INDIA                          [150-155)     227     79     46     33
18 months   ki0047075b-MAL-ED          INDIA                          [155-160)     227     40     26     14
18 months   ki0047075b-MAL-ED          NEPAL                          >=160         229      3      3      0
18 months   ki0047075b-MAL-ED          NEPAL                          <145          229     37     19     18
18 months   ki0047075b-MAL-ED          NEPAL                          [145-150)     229     83     69     14
18 months   ki0047075b-MAL-ED          NEPAL                          [150-155)     229     72     59     13
18 months   ki0047075b-MAL-ED          NEPAL                          [155-160)     229     34     34      0
18 months   ki0047075b-MAL-ED          PERU                           >=160         222     11      9      2
18 months   ki0047075b-MAL-ED          PERU                           <145          222     34     12     22
18 months   ki0047075b-MAL-ED          PERU                           [145-150)     222     82     37     45
18 months   ki0047075b-MAL-ED          PERU                           [150-155)     222     57     35     22
18 months   ki0047075b-MAL-ED          PERU                           [155-160)     222     38     30      8
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=160         237    107     81     26
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <145          237      9      5      4
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [145-150)     237     13      4      9
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [150-155)     237     36     24     12
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [155-160)     237     72     43     29
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=160         225     58     23     35
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <145          225      8      0      8
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [145-150)     225     22      2     20
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [150-155)     225     63     18     45
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [155-160)     225     74     26     48
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=160          84      1      0      1
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          <145           84     11      0     11
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          [145-150)      84     31      1     30
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          [150-155)      84     26      4     22
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          [155-160)      84     15      5     10
18 months   ki1017093-NIH-Birth        BANGLADESH                     >=160         463     16     15      1
18 months   ki1017093-NIH-Birth        BANGLADESH                     <145          463     80     16     64
18 months   ki1017093-NIH-Birth        BANGLADESH                     [145-150)     463    161     54    107
18 months   ki1017093-NIH-Birth        BANGLADESH                     [150-155)     463    142     70     72
18 months   ki1017093-NIH-Birth        BANGLADESH                     [155-160)     463     64     36     28
18 months   ki1017093b-PROVIDE         BANGLADESH                     >=160         552     30     25      5
18 months   ki1017093b-PROVIDE         BANGLADESH                     <145          552     69     27     42
18 months   ki1017093b-PROVIDE         BANGLADESH                     [145-150)     552    194    122     72
18 months   ki1017093b-PROVIDE         BANGLADESH                     [150-155)     552    175    108     67
18 months   ki1017093b-PROVIDE         BANGLADESH                     [155-160)     552     84     64     20
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=160         634     18     17      1
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     <145          634     90     50     40
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     [145-150)     634    205    137     68
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     [150-155)     634    215    151     64
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     [155-160)     634    106     88     18
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=160         966    278    243     35
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <145          966     15      8      7
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [145-150)     966     83     45     38
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [150-155)     966    268    186     82
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [155-160)     966    322    251     71
18 months   ki1101329-Keneba           GAMBIA                         >=160        1773    898    688    210
18 months   ki1101329-Keneba           GAMBIA                         <145         1773      7      2      5
18 months   ki1101329-Keneba           GAMBIA                         [145-150)    1773     26      9     17
18 months   ki1101329-Keneba           GAMBIA                         [150-155)    1773    263    153    110
18 months   ki1101329-Keneba           GAMBIA                         [155-160)    1773    579    336    243
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=160        1425    689    408    281
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       <145         1425     10      3      7
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       [145-150)    1425     62     23     39
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       [150-155)    1425    239    104    135
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       [155-160)    1425    425    205    220
18 months   ki1135781-COHORTS          GUATEMALA                      >=160         413     16      3     13
18 months   ki1135781-COHORTS          GUATEMALA                      <145          413     90      6     84
18 months   ki1135781-COHORTS          GUATEMALA                      [145-150)     413    145     21    124
18 months   ki1135781-COHORTS          GUATEMALA                      [150-155)     413    124     25     99
18 months   ki1135781-COHORTS          GUATEMALA                      [155-160)     413     38     11     27
18 months   ki1135781-COHORTS          PHILIPPINES                    >=160        2492    108     78     30
18 months   ki1135781-COHORTS          PHILIPPINES                    <145         2492    258     42    216
18 months   ki1135781-COHORTS          PHILIPPINES                    [145-150)    2492    782    267    515
18 months   ki1135781-COHORTS          PHILIPPINES                    [150-155)    2492    934    412    522
18 months   ki1135781-COHORTS          PHILIPPINES                    [155-160)    2492    410    229    181
18 months   ki1148112-LCNI-5           MALAWI                         >=160         722    201    134     67
18 months   ki1148112-LCNI-5           MALAWI                         <145          722     11      3      8
18 months   ki1148112-LCNI-5           MALAWI                         [145-150)     722     78     30     48
18 months   ki1148112-LCNI-5           MALAWI                         [150-155)     722    188     77    111
18 months   ki1148112-LCNI-5           MALAWI                         [155-160)     722    244    148     96
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=160         212      4      3      1
24 months   ki0047075b-MAL-ED          BANGLADESH                     <145          212     44     14     30
24 months   ki0047075b-MAL-ED          BANGLADESH                     [145-150)     212     80     38     42
24 months   ki0047075b-MAL-ED          BANGLADESH                     [150-155)     212     66     44     22
24 months   ki0047075b-MAL-ED          BANGLADESH                     [155-160)     212     18     15      3
24 months   ki0047075b-MAL-ED          BRAZIL                         >=160         169     47     45      2
24 months   ki0047075b-MAL-ED          BRAZIL                         <145          169      7      7      0
24 months   ki0047075b-MAL-ED          BRAZIL                         [145-150)     169     26     25      1
24 months   ki0047075b-MAL-ED          BRAZIL                         [150-155)     169     41     39      2
24 months   ki0047075b-MAL-ED          BRAZIL                         [155-160)     169     48     47      1
24 months   ki0047075b-MAL-ED          INDIA                          >=160         226     13     11      2
24 months   ki0047075b-MAL-ED          INDIA                          <145          226     26     13     13
24 months   ki0047075b-MAL-ED          INDIA                          [145-150)     226     69     32     37
24 months   ki0047075b-MAL-ED          INDIA                          [150-155)     226     78     48     30
24 months   ki0047075b-MAL-ED          INDIA                          [155-160)     226     40     28     12
24 months   ki0047075b-MAL-ED          NEPAL                          >=160         228      4      4      0
24 months   ki0047075b-MAL-ED          NEPAL                          <145          228     37     19     18
24 months   ki0047075b-MAL-ED          NEPAL                          [145-150)     228     83     64     19
24 months   ki0047075b-MAL-ED          NEPAL                          [150-155)     228     70     58     12
24 months   ki0047075b-MAL-ED          NEPAL                          [155-160)     228     34     34      0
24 months   ki0047075b-MAL-ED          PERU                           >=160         201      9      7      2
24 months   ki0047075b-MAL-ED          PERU                           <145          201     29     10     19
24 months   ki0047075b-MAL-ED          PERU                           [145-150)     201     74     43     31
24 months   ki0047075b-MAL-ED          PERU                           [150-155)     201     52     37     15
24 months   ki0047075b-MAL-ED          PERU                           [155-160)     201     37     30      7
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=160         234    107     76     31
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <145          234      8      4      4
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [145-150)     234     12      6      6
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [150-155)     234     34     20     14
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [155-160)     234     73     46     27
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=160         214     53     21     32
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <145          214      7      1      6
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [145-150)     214     21      0     21
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [150-155)     214     60     14     46
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [155-160)     214     73     25     48
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=160         429     16     15      1
24 months   ki1017093-NIH-Birth        BANGLADESH                     <145          429     77     16     61
24 months   ki1017093-NIH-Birth        BANGLADESH                     [145-150)     429    146     57     89
24 months   ki1017093-NIH-Birth        BANGLADESH                     [150-155)     429    129     67     62
24 months   ki1017093-NIH-Birth        BANGLADESH                     [155-160)     429     61     36     25
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=160         576     32     26      6
24 months   ki1017093b-PROVIDE         BANGLADESH                     <145          576     72     35     37
24 months   ki1017093b-PROVIDE         BANGLADESH                     [145-150)     576    200    135     65
24 months   ki1017093b-PROVIDE         BANGLADESH                     [150-155)     576    182    115     67
24 months   ki1017093b-PROVIDE         BANGLADESH                     [155-160)     576     90     76     14
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=160         514     13     12      1
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <145          514     71     40     31
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [145-150)     514    168    115     53
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [150-155)     514    175    136     39
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [155-160)     514     87     79      8
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=160           6      1      1      0
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <145            6      0      0      0
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [145-150)       6      0      0      0
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [150-155)       6      3      2      1
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [155-160)       6      2      2      0
24 months   ki1101329-Keneba           GAMBIA                         >=160        1602    810    621    189
24 months   ki1101329-Keneba           GAMBIA                         <145         1602      3      0      3
24 months   ki1101329-Keneba           GAMBIA                         [145-150)    1602     26     10     16
24 months   ki1101329-Keneba           GAMBIA                         [150-155)    1602    235    124    111
24 months   ki1101329-Keneba           GAMBIA                         [155-160)    1602    528    303    225
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=160         378    170     77     93
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <145          378      7      0      7
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [145-150)     378     18      1     17
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [150-155)     378     75     19     56
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [155-160)     378    108     32     76
24 months   ki1135781-COHORTS          GUATEMALA                      >=160         476     15      5     10
24 months   ki1135781-COHORTS          GUATEMALA                      <145          476    105      6     99
24 months   ki1135781-COHORTS          GUATEMALA                      [145-150)     476    174     27    147
24 months   ki1135781-COHORTS          GUATEMALA                      [150-155)     476    138     22    116
24 months   ki1135781-COHORTS          GUATEMALA                      [155-160)     476     44     14     30
24 months   ki1135781-COHORTS          INDIA                          >=160        1819    152    124     28
24 months   ki1135781-COHORTS          INDIA                          <145         1819    164     48    116
24 months   ki1135781-COHORTS          INDIA                          [145-150)    1819    486    215    271
24 months   ki1135781-COHORTS          INDIA                          [150-155)    1819    617    327    290
24 months   ki1135781-COHORTS          INDIA                          [155-160)    1819    400    282    118
24 months   ki1135781-COHORTS          PHILIPPINES                    >=160        2445    107     76     31
24 months   ki1135781-COHORTS          PHILIPPINES                    <145         2445    256     34    222
24 months   ki1135781-COHORTS          PHILIPPINES                    [145-150)    2445    774    242    532
24 months   ki1135781-COHORTS          PHILIPPINES                    [150-155)    2445    905    377    528
24 months   ki1135781-COHORTS          PHILIPPINES                    [155-160)    2445    403    208    195
24 months   ki1148112-LCNI-5           MALAWI                         >=160         577    164    104     60
24 months   ki1148112-LCNI-5           MALAWI                         <145          577      9      1      8
24 months   ki1148112-LCNI-5           MALAWI                         [145-150)     577     68     27     41
24 months   ki1148112-LCNI-5           MALAWI                         [150-155)     577    145     67     78
24 months   ki1148112-LCNI-5           MALAWI                         [155-160)     577    191    124     67


The following strata were considered:

* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 12 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 12 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
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
* agecat: 18 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 18 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 18 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 18 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 18 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18 months, studyid: ki1101329-Keneba, country: GAMBIA
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
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
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
* agecat: 3 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 3 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 3 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
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
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
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
* agecat: 9 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 9 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 9 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 9 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 9 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 9 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
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
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
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
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 3 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 3 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 3 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 9 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 9 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 9 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 9 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 9 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 9 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 12 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 12 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 12 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 18 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 18 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 18 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 18 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 18 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 18 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/f00da457-35e9-4d24-9842-02a1359f95c1/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->


```
## Warning: Removed 27 rows containing missing values (geom_errorbar).
```

![](/tmp/f00da457-35e9-4d24-9842-02a1359f95c1/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/f00da457-35e9-4d24-9842-02a1359f95c1/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/f00da457-35e9-4d24-9842-02a1359f95c1/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=160                NA                0.0865979   0.0786823   0.0945135
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <145                 NA                0.2031250   0.1045521   0.3016979
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [145-150)            NA                0.1205212   0.0841007   0.1569417
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [150-155)            NA                0.1136935   0.0980994   0.1292875
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [155-160)            NA                0.1075683   0.0962006   0.1189360
Birth       ki1135781-COHORTS          INDIA                          >=160                NA                0.0544218   0.0177403   0.0911033
Birth       ki1135781-COHORTS          INDIA                          <145                 NA                0.1772152   0.1176578   0.2367726
Birth       ki1135781-COHORTS          INDIA                          [145-150)            NA                0.1286920   0.0985381   0.1588458
Birth       ki1135781-COHORTS          INDIA                          [150-155)            NA                0.1013072   0.0773949   0.1252194
Birth       ki1135781-COHORTS          INDIA                          [155-160)            NA                0.0652742   0.0405294   0.0900189
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=160                NA                0.0307692   0.0174904   0.0440481
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <145                 NA                0.1470588   0.0279867   0.2661309
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [145-150)            NA                0.1085714   0.0624687   0.1546741
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [150-155)            NA                0.0720000   0.0517304   0.0922696
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [155-160)            NA                0.0543338   0.0383508   0.0703168
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=160                NA                0.1447402   0.1336531   0.1558274
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       <145                 NA                0.2708333   0.1451088   0.3965578
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       [145-150)            NA                0.3203125   0.2631518   0.3774732
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       [150-155)            NA                0.2450230   0.2216951   0.2683508
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       [155-160)            NA                0.1846355   0.1687465   0.2005245
3 months    ki1135781-COHORTS          INDIA                          >=160                NA                0.0620690   0.0227858   0.1013521
3 months    ki1135781-COHORTS          INDIA                          <145                 NA                0.2574850   0.1911508   0.3238193
3 months    ki1135781-COHORTS          INDIA                          [145-150)            NA                0.1764706   0.1428102   0.2101310
3 months    ki1135781-COHORTS          INDIA                          [150-155)            NA                0.1233766   0.0973990   0.1493543
3 months    ki1135781-COHORTS          INDIA                          [155-160)            NA                0.0753769   0.0494335   0.1013203
3 months    ki1135781-COHORTS          PHILIPPINES                    >=160                NA                0.0427350   0.0060796   0.0793905
3 months    ki1135781-COHORTS          PHILIPPINES                    <145                 NA                0.2434211   0.1951715   0.2916706
3 months    ki1135781-COHORTS          PHILIPPINES                    [145-150)            NA                0.1562156   0.1326098   0.1798215
3 months    ki1135781-COHORTS          PHILIPPINES                    [150-155)            NA                0.0928705   0.0754437   0.1102974
3 months    ki1135781-COHORTS          PHILIPPINES                    [155-160)            NA                0.0730689   0.0497587   0.0963791
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=160                NA                0.0577933   0.0386485   0.0769381
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <145                 NA                0.1875000   0.0522323   0.3227677
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [145-150)            NA                0.1895425   0.1274227   0.2516622
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [150-155)            NA                0.1221239   0.0951186   0.1491292
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [155-160)            NA                0.0785185   0.0582214   0.0988156
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=160                NA                0.1240814   0.1132175   0.1349453
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <145                 NA                0.2222222   0.1007453   0.3436992
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [145-150)            NA                0.3975410   0.3361311   0.4589509
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [150-155)            NA                0.2094421   0.1860744   0.2328097
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [155-160)            NA                0.1827554   0.1663573   0.1991534
6 months    ki1135781-COHORTS          INDIA                          >=160                NA                0.0933333   0.0467679   0.1398988
6 months    ki1135781-COHORTS          INDIA                          <145                 NA                0.3128834   0.2416834   0.3840835
6 months    ki1135781-COHORTS          INDIA                          [145-150)            NA                0.2141414   0.1779932   0.2502897
6 months    ki1135781-COHORTS          INDIA                          [150-155)            NA                0.1548387   0.1263560   0.1833214
6 months    ki1135781-COHORTS          INDIA                          [155-160)            NA                0.0920716   0.0634056   0.1207377
6 months    ki1135781-COHORTS          PHILIPPINES                    >=160                NA                0.0555556   0.0123471   0.0987640
6 months    ki1135781-COHORTS          PHILIPPINES                    <145                 NA                0.3728223   0.3168680   0.4287766
6 months    ki1135781-COHORTS          PHILIPPINES                    [145-150)            NA                0.2658080   0.2361741   0.2954418
6 months    ki1135781-COHORTS          PHILIPPINES                    [150-155)            NA                0.1689861   0.1458250   0.1921472
6 months    ki1135781-COHORTS          PHILIPPINES                    [155-160)            NA                0.1368653   0.1052087   0.1685220
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=160                NA                0.0756972   0.0525517   0.0988427
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <145                 NA                0.3000000   0.1359710   0.4640290
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [145-150)            NA                0.2949640   0.2191317   0.3707964
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [150-155)            NA                0.1751527   0.1415228   0.2087827
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [155-160)            NA                0.1426174   0.1145358   0.1706991
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=160                NA                0.1517009   0.1393914   0.1640104
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       <145                 NA                0.3513514   0.1975161   0.5051866
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       [145-150)            NA                0.3857143   0.3198743   0.4515542
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       [150-155)            NA                0.2637363   0.2375983   0.2898742
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       [155-160)            NA                0.2130898   0.1950105   0.2311691
9 months    ki1135781-COHORTS          GUATEMALA                      >=160                NA                0.4285714   0.1690528   0.6880900
9 months    ki1135781-COHORTS          GUATEMALA                      <145                 NA                0.7653061   0.6813030   0.8493092
9 months    ki1135781-COHORTS          GUATEMALA                      [145-150)            NA                0.6187500   0.5434071   0.6940929
9 months    ki1135781-COHORTS          GUATEMALA                      [150-155)            NA                0.5538462   0.4682991   0.6393932
9 months    ki1135781-COHORTS          GUATEMALA                      [155-160)            NA                0.6250000   0.4748015   0.7751985
9 months    ki1135781-COHORTS          INDIA                          >=160                NA                0.0960000   0.0443412   0.1476589
9 months    ki1135781-COHORTS          INDIA                          <145                 NA                0.3866667   0.3087104   0.4646229
9 months    ki1135781-COHORTS          INDIA                          [145-150)            NA                0.3134658   0.2707334   0.3561982
9 months    ki1135781-COHORTS          INDIA                          [150-155)            NA                0.2210339   0.1866870   0.2553807
9 months    ki1135781-COHORTS          INDIA                          [155-160)            NA                0.1309192   0.0960161   0.1658224
9 months    ki1135781-COHORTS          PHILIPPINES                    >=160                NA                0.1071429   0.0498512   0.1644346
9 months    ki1135781-COHORTS          PHILIPPINES                    <145                 NA                0.5157895   0.4577586   0.5738203
9 months    ki1135781-COHORTS          PHILIPPINES                    [145-150)            NA                0.3271462   0.2958201   0.3584722
9 months    ki1135781-COHORTS          PHILIPPINES                    [150-155)            NA                0.2193420   0.1937285   0.2449555
9 months    ki1135781-COHORTS          PHILIPPINES                    [155-160)            NA                0.1888889   0.1527175   0.2250603
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=160                NA                0.1007371   0.0714861   0.1299881
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <145                 NA                0.2800000   0.1039339   0.4560661
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [145-150)            NA                0.3177570   0.2295048   0.4060093
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [150-155)            NA                0.2125000   0.1723971   0.2526029
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [155-160)            NA                0.1399177   0.1090653   0.1707701
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=160                NA                0.1896922   0.1751536   0.2042308
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       <145                 NA                0.3939394   0.2272142   0.5606646
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       [145-150)            NA                0.4875622   0.4184550   0.5566694
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       [150-155)            NA                0.3133133   0.2845478   0.3420788
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       [155-160)            NA                0.2694915   0.2488194   0.2901636
12 months   ki1135781-COHORTS          GUATEMALA                      >=160                NA                0.6470588   0.4196667   0.8744509
12 months   ki1135781-COHORTS          GUATEMALA                      <145                 NA                0.8230088   0.7525695   0.8934482
12 months   ki1135781-COHORTS          GUATEMALA                      [145-150)            NA                0.6902174   0.6233385   0.7570963
12 months   ki1135781-COHORTS          GUATEMALA                      [150-155)            NA                0.6598639   0.5832034   0.7365245
12 months   ki1135781-COHORTS          GUATEMALA                      [155-160)            NA                0.6304348   0.4908097   0.7700599
12 months   ki1135781-COHORTS          INDIA                          >=160                NA                0.1463415   0.0838583   0.2088246
12 months   ki1135781-COHORTS          INDIA                          <145                 NA                0.5611511   0.4786272   0.6436750
12 months   ki1135781-COHORTS          INDIA                          [145-150)            NA                0.4042553   0.3574735   0.4510372
12 months   ki1135781-COHORTS          INDIA                          [150-155)            NA                0.3044316   0.2648293   0.3440339
12 months   ki1135781-COHORTS          INDIA                          [155-160)            NA                0.1903323   0.1480280   0.2326367
12 months   ki1135781-COHORTS          PHILIPPINES                    >=160                NA                0.1454545   0.0795573   0.2113518
12 months   ki1135781-COHORTS          PHILIPPINES                    <145                 NA                0.6678832   0.6121066   0.7236599
12 months   ki1135781-COHORTS          PHILIPPINES                    [145-150)            NA                0.4485294   0.4143988   0.4826600
12 months   ki1135781-COHORTS          PHILIPPINES                    [150-155)            NA                0.3499481   0.3198184   0.3800778
12 months   ki1135781-COHORTS          PHILIPPINES                    [155-160)            NA                0.2322275   0.1919327   0.2725223
18 months   ki1017093b-PROVIDE         BANGLADESH                     >=160                NA                0.1666667   0.0331870   0.3001463
18 months   ki1017093b-PROVIDE         BANGLADESH                     <145                 NA                0.6086957   0.4934367   0.7239546
18 months   ki1017093b-PROVIDE         BANGLADESH                     [145-150)            NA                0.3711340   0.3030907   0.4391773
18 months   ki1017093b-PROVIDE         BANGLADESH                     [150-155)            NA                0.3828571   0.3107739   0.4549403
18 months   ki1017093b-PROVIDE         BANGLADESH                     [155-160)            NA                0.2380952   0.1469303   0.3292602
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=160                NA                0.1258993   0.0868833   0.1649153
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <145                 NA                0.4666667   0.2140685   0.7192648
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [145-150)            NA                0.4578313   0.3505920   0.5650706
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [150-155)            NA                0.3059701   0.2507708   0.3611695
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [155-160)            NA                0.2204969   0.1751909   0.2658028
18 months   ki1135781-COHORTS          PHILIPPINES                    >=160                NA                0.2777778   0.1932873   0.3622682
18 months   ki1135781-COHORTS          PHILIPPINES                    <145                 NA                0.8372093   0.7921528   0.8822658
18 months   ki1135781-COHORTS          PHILIPPINES                    [145-150)            NA                0.6585678   0.6253260   0.6918096
18 months   ki1135781-COHORTS          PHILIPPINES                    [150-155)            NA                0.5588865   0.5270373   0.5907357
18 months   ki1135781-COHORTS          PHILIPPINES                    [155-160)            NA                0.4414634   0.3933887   0.4895381
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=160                NA                0.1875000   0.0521486   0.3228514
24 months   ki1017093b-PROVIDE         BANGLADESH                     <145                 NA                0.5138889   0.3983411   0.6294367
24 months   ki1017093b-PROVIDE         BANGLADESH                     [145-150)            NA                0.3250000   0.2600313   0.3899687
24 months   ki1017093b-PROVIDE         BANGLADESH                     [150-155)            NA                0.3681319   0.2980017   0.4382620
24 months   ki1017093b-PROVIDE         BANGLADESH                     [155-160)            NA                0.1555556   0.0806123   0.2304988
24 months   ki1135781-COHORTS          GUATEMALA                      >=160                NA                0.6666667   0.4278565   0.9054769
24 months   ki1135781-COHORTS          GUATEMALA                      <145                 NA                0.9428571   0.8984131   0.9873012
24 months   ki1135781-COHORTS          GUATEMALA                      [145-150)            NA                0.8448276   0.7909732   0.8986820
24 months   ki1135781-COHORTS          GUATEMALA                      [150-155)            NA                0.8405797   0.7794396   0.9017199
24 months   ki1135781-COHORTS          GUATEMALA                      [155-160)            NA                0.6818182   0.5440495   0.8195868
24 months   ki1135781-COHORTS          INDIA                          >=160                NA                0.1842105   0.1225664   0.2458547
24 months   ki1135781-COHORTS          INDIA                          <145                 NA                0.7073171   0.6376622   0.7769719
24 months   ki1135781-COHORTS          INDIA                          [145-150)            NA                0.5576132   0.5134442   0.6017821
24 months   ki1135781-COHORTS          INDIA                          [150-155)            NA                0.4700162   0.4306238   0.5094086
24 months   ki1135781-COHORTS          INDIA                          [155-160)            NA                0.2950000   0.2502963   0.3397037
24 months   ki1135781-COHORTS          PHILIPPINES                    >=160                NA                0.2897196   0.2037492   0.3756900
24 months   ki1135781-COHORTS          PHILIPPINES                    <145                 NA                0.8671875   0.8256067   0.9087683
24 months   ki1135781-COHORTS          PHILIPPINES                    [145-150)            NA                0.6873385   0.6546730   0.7200040
24 months   ki1135781-COHORTS          PHILIPPINES                    [150-155)            NA                0.5834254   0.5512998   0.6155510
24 months   ki1135781-COHORTS          PHILIPPINES                    [155-160)            NA                0.4838710   0.4350700   0.5326719


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0991000   0.0988038   0.0993963
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                0.1037204   0.1021281   0.1053127
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0580416   0.0570392   0.0590441
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1799228   0.1789195   0.1809261
3 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.1346894   0.1321338   0.1372450
3 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1234783   0.1215108   0.1254457
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0951904   0.0934805   0.0969003
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1655908   0.1642937   0.1668879
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.1665750   0.1635902   0.1695599
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2112260   0.2082452   0.2142068
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1473265   0.1444403   0.1502127
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1973224   0.1959745   0.1986702
9 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.6266968   0.6188397   0.6345540
9 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.2324029   0.2281730   0.2366328
9 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2750737   0.2712171   0.2789304
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1649123   0.1616226   0.1682019
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2468518   0.2451011   0.2486026
12 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7041420   0.6983689   0.7099151
12 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.3179153   0.3121351   0.3236956
12 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.3868472   0.3819001   0.3917943
18 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3731884   0.3640192   0.3823576
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2412008   0.2349059   0.2474957
18 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.5874799   0.5825105   0.5924494
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3281250   0.3197199   0.3365301
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.8445378   0.8378193   0.8512564
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.4524464   0.4458841   0.4590087
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6167689   0.6117312   0.6218066


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=160                >=160             1.0000000   1.0000000    1.000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <145                 >=160             2.3456101   1.4315106    3.843413
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [145-150)            >=160             1.3917326   1.0149467    1.908395
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [150-155)            >=160             1.3128888   1.1133838    1.548143
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [155-160)            >=160             1.2421580   1.0801768    1.428430
Birth       ki1135781-COHORTS          INDIA                          >=160                >=160             1.0000000   1.0000000    1.000000
Birth       ki1135781-COHORTS          INDIA                          <145                 >=160             3.2563291   1.5333263    6.915475
Birth       ki1135781-COHORTS          INDIA                          [145-150)            >=160             2.3647152   1.1584349    4.827097
Birth       ki1135781-COHORTS          INDIA                          [150-155)            >=160             1.8615196   0.9114091    3.802085
Birth       ki1135781-COHORTS          INDIA                          [155-160)            >=160             1.1994125   0.5535060    2.599051
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=160                >=160             1.0000000   1.0000000    1.000000
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <145                 >=160             4.7794118   1.9094153   11.963231
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [145-150)            >=160             3.5285714   1.9260171    6.464541
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [150-155)            >=160             2.3400000   1.3977782    3.917360
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [155-160)            >=160             1.7658473   1.0474404    2.976987
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=160                >=160             1.0000000   1.0000000    1.000000
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       <145                 >=160             1.8711682   1.1689102    2.995329
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       [145-150)            >=160             2.2130162   1.8224064    2.687348
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       [150-155)            >=160             1.6928462   1.4981258    1.912875
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       [155-160)            >=160             1.2756337   1.1368183    1.431400
3 months    ki1135781-COHORTS          INDIA                          >=160                >=160             1.0000000   1.0000000    1.000000
3 months    ki1135781-COHORTS          INDIA                          <145                 >=160             4.1483699   2.0946690    8.215605
3 months    ki1135781-COHORTS          INDIA                          [145-150)            >=160             2.8431373   1.4679907    5.506458
3 months    ki1135781-COHORTS          INDIA                          [150-155)            >=160             1.9877345   1.0201961    3.872872
3 months    ki1135781-COHORTS          INDIA                          [155-160)            >=160             1.2144054   0.5908610    2.495985
3 months    ki1135781-COHORTS          PHILIPPINES                    >=160                >=160             1.0000000   1.0000000    1.000000
3 months    ki1135781-COHORTS          PHILIPPINES                    <145                 >=160             5.6960523   2.3618153   13.737319
3 months    ki1135781-COHORTS          PHILIPPINES                    [145-150)            >=160             3.6554453   1.5300046    8.733491
3 months    ki1135781-COHORTS          PHILIPPINES                    [150-155)            >=160             2.1731706   0.9031771    5.228953
3 months    ki1135781-COHORTS          PHILIPPINES                    [155-160)            >=160             1.7098120   0.6847104    4.269626
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=160                >=160             1.0000000   1.0000000    1.000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <145                 >=160             3.2443182   1.4667630    7.176075
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [145-150)            >=160             3.2796593   2.0580332    5.226430
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [150-155)            >=160             2.1131134   1.4188882    3.147005
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [155-160)            >=160             1.3586083   0.8925014    2.068138
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=160                >=160             1.0000000   1.0000000    1.000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <145                 >=160             1.7909390   1.0295549    3.115387
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [145-150)            >=160             3.2038724   2.6826326    3.826390
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [150-155)            >=160             1.6879408   1.4647523    1.945137
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [155-160)            >=160             1.4728669   1.2993246    1.669588
6 months    ki1135781-COHORTS          INDIA                          >=160                >=160             1.0000000   1.0000000    1.000000
6 months    ki1135781-COHORTS          INDIA                          <145                 >=160             3.3523223   1.9372923    5.800914
6 months    ki1135781-COHORTS          INDIA                          [145-150)            >=160             2.2943722   1.3549435    3.885139
6 months    ki1135781-COHORTS          INDIA                          [150-155)            >=160             1.6589861   0.9747830    2.823433
6 months    ki1135781-COHORTS          INDIA                          [155-160)            >=160             0.9864816   0.5478777    1.776210
6 months    ki1135781-COHORTS          PHILIPPINES                    >=160                >=160             1.0000000   1.0000000    1.000000
6 months    ki1135781-COHORTS          PHILIPPINES                    <145                 >=160             6.7108014   3.0392732   14.817640
6 months    ki1135781-COHORTS          PHILIPPINES                    [145-150)            >=160             4.7845433   2.1807945   10.497025
6 months    ki1135781-COHORTS          PHILIPPINES                    [150-155)            >=160             3.0417495   1.3808469    6.700410
6 months    ki1135781-COHORTS          PHILIPPINES                    [155-160)            >=160             2.4635762   1.0943908    5.545741
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=160                >=160             1.0000000   1.0000000    1.000000
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <145                 >=160             3.9631579   2.1182477    7.414912
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [145-150)            >=160             3.8966301   2.6133382    5.810088
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [150-155)            >=160             2.3138600   1.6126309    3.320008
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [155-160)            >=160             1.8840516   1.3096316    2.710419
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=160                >=160             1.0000000   1.0000000    1.000000
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       <145                 >=160             2.3160797   1.4837633    3.615284
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       [145-150)            >=160             2.5425974   2.1047254    3.071565
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       [150-155)            >=160             1.7385281   1.5295165    1.976102
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       [155-160)            >=160             1.4046708   1.2490750    1.579649
9 months    ki1135781-COHORTS          GUATEMALA                      >=160                >=160             1.0000000   1.0000000    1.000000
9 months    ki1135781-COHORTS          GUATEMALA                      <145                 >=160             1.7857143   0.9650332    3.304317
9 months    ki1135781-COHORTS          GUATEMALA                      [145-150)            >=160             1.4437500   0.7784730    2.677567
9 months    ki1135781-COHORTS          GUATEMALA                      [150-155)            >=160             1.2923077   0.6917691    2.414186
9 months    ki1135781-COHORTS          GUATEMALA                      [155-160)            >=160             1.4583333   0.7601855    2.797654
9 months    ki1135781-COHORTS          INDIA                          >=160                >=160             1.0000000   1.0000000    1.000000
9 months    ki1135781-COHORTS          INDIA                          <145                 >=160             4.0277776   2.2672633    7.155319
9 months    ki1135781-COHORTS          INDIA                          [145-150)            >=160             3.2652685   1.8742901    5.688542
9 months    ki1135781-COHORTS          INDIA                          [150-155)            >=160             2.3024360   1.3150406    4.031215
9 months    ki1135781-COHORTS          INDIA                          [155-160)            >=160             1.3637418   0.7480376    2.486228
9 months    ki1135781-COHORTS          PHILIPPINES                    >=160                >=160             1.0000000   1.0000000    1.000000
9 months    ki1135781-COHORTS          PHILIPPINES                    <145                 >=160             4.8140351   2.7873879    8.314212
9 months    ki1135781-COHORTS          PHILIPPINES                    [145-150)            >=160             3.0533643   1.7736070    5.256538
9 months    ki1135781-COHORTS          PHILIPPINES                    [150-155)            >=160             2.0471918   1.1842908    3.538822
9 months    ki1135781-COHORTS          PHILIPPINES                    [155-160)            >=160             1.7629630   0.9990185    3.111092
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=160                >=160             1.0000000   1.0000000    1.000000
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <145                 >=160             2.7795122   1.3904977    5.556060
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [145-150)            >=160             3.1543195   2.1105793    4.714218
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [150-155)            >=160             2.1094512   1.4920022    2.982425
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [155-160)            >=160             1.3889391   0.9645779    1.999996
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=160                >=160             1.0000000   1.0000000    1.000000
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       <145                 >=160             2.0767296   1.3507838    3.192817
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       [145-150)            >=160             2.5702807   2.1877645    3.019677
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       [150-155)            >=160             1.6516932   1.4655116    1.861528
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       [155-160)            >=160             1.4206780   1.2746847    1.583392
12 months   ki1135781-COHORTS          GUATEMALA                      >=160                >=160             1.0000000   1.0000000    1.000000
12 months   ki1135781-COHORTS          GUATEMALA                      <145                 >=160             1.2719228   0.8858864    1.826179
12 months   ki1135781-COHORTS          GUATEMALA                      [145-150)            >=160             1.0666996   0.7408418    1.535885
12 months   ki1135781-COHORTS          GUATEMALA                      [150-155)            >=160             1.0197897   0.7043125    1.476576
12 months   ki1135781-COHORTS          GUATEMALA                      [155-160)            >=160             0.9743083   0.6431234    1.476041
12 months   ki1135781-COHORTS          INDIA                          >=160                >=160             1.0000000   1.0000000    1.000000
12 months   ki1135781-COHORTS          INDIA                          <145                 >=160             3.8345324   2.4411337    6.023283
12 months   ki1135781-COHORTS          INDIA                          [145-150)            >=160             2.7624113   1.7748771    4.299406
12 months   ki1135781-COHORTS          INDIA                          [150-155)            >=160             2.0802826   1.3313033    3.250631
12 months   ki1135781-COHORTS          INDIA                          [155-160)            >=160             1.3006042   0.8037015    2.104726
12 months   ki1135781-COHORTS          PHILIPPINES                    >=160                >=160             1.0000000   1.0000000    1.000000
12 months   ki1135781-COHORTS          PHILIPPINES                    <145                 >=160             4.5916971   2.8967038    7.278508
12 months   ki1135781-COHORTS          PHILIPPINES                    [145-150)            >=160             3.0836397   1.9478404    4.881731
12 months   ki1135781-COHORTS          PHILIPPINES                    [150-155)            >=160             2.4058930   1.5170525    3.815505
12 months   ki1135781-COHORTS          PHILIPPINES                    [155-160)            >=160             1.5965640   0.9828678    2.593448
18 months   ki1017093b-PROVIDE         BANGLADESH                     >=160                >=160             1.0000000   1.0000000    1.000000
18 months   ki1017093b-PROVIDE         BANGLADESH                     <145                 >=160             3.6521739   1.6037818    8.316826
18 months   ki1017093b-PROVIDE         BANGLADESH                     [145-150)            >=160             2.2268041   0.9791920    5.064029
18 months   ki1017093b-PROVIDE         BANGLADESH                     [150-155)            >=160             2.2971429   1.0089954    5.229821
18 months   ki1017093b-PROVIDE         BANGLADESH                     [155-160)            >=160             1.4285714   0.5880017    3.470766
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=160                >=160             1.0000000   1.0000000    1.000000
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <145                 >=160             3.7066667   1.9865826    6.916087
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [145-150)            >=160             3.6364888   2.4659005    5.362767
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [150-155)            >=160             2.4302772   1.6979455    3.478467
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [155-160)            >=160             1.7513753   1.2075259    2.540166
18 months   ki1135781-COHORTS          PHILIPPINES                    >=160                >=160             1.0000000   1.0000000    1.000000
18 months   ki1135781-COHORTS          PHILIPPINES                    <145                 >=160             3.0139535   2.2130302    4.104741
18 months   ki1135781-COHORTS          PHILIPPINES                    [145-150)            >=160             2.3708440   1.7418028    3.227059
18 months   ki1135781-COHORTS          PHILIPPINES                    [150-155)            >=160             2.0119914   1.4764892    2.741713
18 months   ki1135781-COHORTS          PHILIPPINES                    [155-160)            >=160             1.5892683   1.1505058    2.195359
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=160                >=160             1.0000000   1.0000000    1.000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     <145                 >=160             2.7407407   1.2867845    5.837543
24 months   ki1017093b-PROVIDE         BANGLADESH                     [145-150)            >=160             1.7333333   0.8195536    3.665952
24 months   ki1017093b-PROVIDE         BANGLADESH                     [150-155)            >=160             1.9633700   0.9306002    4.142296
24 months   ki1017093b-PROVIDE         BANGLADESH                     [155-160)            >=160             0.8296296   0.3483129    1.976054
24 months   ki1135781-COHORTS          GUATEMALA                      >=160                >=160             1.0000000   1.0000000    1.000000
24 months   ki1135781-COHORTS          GUATEMALA                      <145                 >=160             1.4142857   0.9854284    2.029781
24 months   ki1135781-COHORTS          GUATEMALA                      [145-150)            >=160             1.2672414   0.8807331    1.823368
24 months   ki1135781-COHORTS          GUATEMALA                      [150-155)            >=160             1.2608696   0.8748318    1.817254
24 months   ki1135781-COHORTS          GUATEMALA                      [155-160)            >=160             1.0227273   0.6778687    1.543029
24 months   ki1135781-COHORTS          INDIA                          >=160                >=160             1.0000000   1.0000000    1.000000
24 months   ki1135781-COHORTS          INDIA                          <145                 >=160             3.8397213   2.7089765    5.442446
24 months   ki1135781-COHORTS          INDIA                          [145-150)            >=160             3.0270429   2.1462013    4.269399
24 months   ki1135781-COHORTS          INDIA                          [150-155)            >=160             2.5515166   1.8070805    3.602627
24 months   ki1135781-COHORTS          INDIA                          [155-160)            >=160             1.6014286   1.1090947    2.312312
24 months   ki1135781-COHORTS          PHILIPPINES                    >=160                >=160             1.0000000   1.0000000    1.000000
24 months   ki1135781-COHORTS          PHILIPPINES                    <145                 >=160             2.9931956   2.2161158    4.042758
24 months   ki1135781-COHORTS          PHILIPPINES                    [145-150)            >=160             2.3724264   1.7566264    3.204100
24 months   ki1135781-COHORTS          PHILIPPINES                    [150-155)            >=160             2.0137587   1.4891429    2.723193
24 months   ki1135781-COHORTS          PHILIPPINES                    [155-160)            >=160             1.6701353   1.2207885    2.284877


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=160                NA                0.0125021    0.0045809   0.0204232
Birth       ki1135781-COHORTS          INDIA                          >=160                NA                0.0492986    0.0125826   0.0860147
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=160                NA                0.0272724    0.0139558   0.0405890
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=160                NA                0.0351825    0.0240501   0.0463150
3 months    ki1135781-COHORTS          INDIA                          >=160                NA                0.0726204    0.0332542   0.1119866
3 months    ki1135781-COHORTS          PHILIPPINES                    >=160                NA                0.0807432    0.0440350   0.1174515
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=160                NA                0.0373970    0.0181760   0.0566180
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=160                NA                0.0415094    0.0305684   0.0524504
6 months    ki1135781-COHORTS          INDIA                          >=160                NA                0.0732417    0.0265807   0.1199027
6 months    ki1135781-COHORTS          PHILIPPINES                    >=160                NA                0.1556704    0.1123593   0.1989816
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=160                NA                0.0716293    0.0483045   0.0949541
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=160                NA                0.0456215    0.0332384   0.0580046
9 months    ki1135781-COHORTS          GUATEMALA                      >=160                NA                0.1981254   -0.0615121   0.4577629
9 months    ki1135781-COHORTS          INDIA                          >=160                NA                0.1364029    0.0845712   0.1882346
9 months    ki1135781-COHORTS          PHILIPPINES                    >=160                NA                0.1679309    0.1105095   0.2253523
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=160                NA                0.0641752    0.0347397   0.0936106
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=160                NA                0.0571596    0.0425160   0.0718032
12 months   ki1135781-COHORTS          GUATEMALA                      >=160                NA                0.0570832   -0.1703822   0.2845486
12 months   ki1135781-COHORTS          INDIA                          >=160                NA                0.1715738    0.1088239   0.2343238
12 months   ki1135781-COHORTS          PHILIPPINES                    >=160                NA                0.2413926    0.1753100   0.3074753
18 months   ki1017093b-PROVIDE         BANGLADESH                     >=160                NA                0.2065217    0.0727276   0.3403159
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=160                NA                0.1153015    0.0757810   0.1548221
18 months   ki1135781-COHORTS          PHILIPPINES                    >=160                NA                0.3097022    0.2250657   0.3943386
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=160                NA                0.1406250    0.0050129   0.2762371
24 months   ki1135781-COHORTS          GUATEMALA                      >=160                NA                0.1778711   -0.0610335   0.4167758
24 months   ki1135781-COHORTS          INDIA                          >=160                NA                0.2682359    0.2062434   0.3302283
24 months   ki1135781-COHORTS          PHILIPPINES                    >=160                NA                0.3270493    0.2409314   0.4131672


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=160                NA                0.1261563    0.0424702   0.2025284
Birth       ki1135781-COHORTS          INDIA                          >=160                NA                0.4753032   -0.0296948   0.7326327
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=160                NA                0.4698767    0.1835082   0.6558070
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=160                NA                0.1955424    0.1313230   0.2550142
3 months    ki1135781-COHORTS          INDIA                          >=160                NA                0.5391696    0.1319846   0.7553446
3 months    ki1135781-COHORTS          PHILIPPINES                    >=160                NA                0.6539063    0.1838521   0.8532364
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=160                NA                0.3928657    0.1540166   0.5642798
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=160                NA                0.2506745    0.1818239   0.3137313
6 months    ki1135781-COHORTS          INDIA                          >=160                NA                0.4396919    0.0769123   0.6598968
6 months    ki1135781-COHORTS          PHILIPPINES                    >=160                NA                0.7369852    0.4274559   0.8791765
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=160                NA                0.4861942    0.3019877   0.6217884
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=160                NA                0.2312028    0.1659799   0.2913251
9 months    ki1135781-COHORTS          GUATEMALA                      >=160                NA                0.3161423   -0.2531592   0.6268141
9 months    ki1135781-COHORTS          INDIA                          >=160                NA                0.5869243    0.2922778   0.7589004
9 months    ki1135781-COHORTS          PHILIPPINES                    >=160                NA                0.6104941    0.3350010   0.7718570
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=160                NA                0.3891474    0.1827784   0.5434030
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=160                NA                0.2315544    0.1700709   0.2884830
12 months   ki1135781-COHORTS          GUATEMALA                      >=160                NA                0.0810677   -0.3060103   0.3534228
12 months   ki1135781-COHORTS          INDIA                          >=160                NA                0.5396841    0.2942451   0.6997673
12 months   ki1135781-COHORTS          PHILIPPINES                    >=160                NA                0.6240000    0.4084106   0.7610235
18 months   ki1017093b-PROVIDE         BANGLADESH                     >=160                NA                0.5533981    0.0048214   0.7995804
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=160                NA                0.4780313    0.2876259   0.6175446
18 months   ki1135781-COHORTS          PHILIPPINES                    >=160                NA                0.5271706    0.3590075   0.6512165
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=160                NA                0.4285714   -0.1766985   0.7225027
24 months   ki1135781-COHORTS          GUATEMALA                      >=160                NA                0.2106136   -0.1295330   0.4483287
24 months   ki1135781-COHORTS          INDIA                          >=160                NA                0.5928567    0.4308641   0.7087415
24 months   ki1135781-COHORTS          PHILIPPINES                    >=160                NA                0.5302623    0.3679153   0.6509115
