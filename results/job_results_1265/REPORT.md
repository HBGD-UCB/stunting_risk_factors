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

**Intervention Variable:** mhtcm

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
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=160          246      4      4      0
Birth       ki0047075b-MAL-ED          BANGLADESH                     <145           246     55     50      5
Birth       ki0047075b-MAL-ED          BANGLADESH                     [145-150)      246     86     85      1
Birth       ki0047075b-MAL-ED          BANGLADESH                     [150-155)      246     80     80      0
Birth       ki0047075b-MAL-ED          BANGLADESH                     [155-160)      246     21     20      1
Birth       ki0047075b-MAL-ED          BRAZIL                         >=160          184     57     56      1
Birth       ki0047075b-MAL-ED          BRAZIL                         <145           184      7      7      0
Birth       ki0047075b-MAL-ED          BRAZIL                         [145-150)      184     30     28      2
Birth       ki0047075b-MAL-ED          BRAZIL                         [150-155)      184     40     37      3
Birth       ki0047075b-MAL-ED          BRAZIL                         [155-160)      184     50     48      2
Birth       ki0047075b-MAL-ED          INDIA                          >=160          198     13     12      1
Birth       ki0047075b-MAL-ED          INDIA                          <145           198     24     23      1
Birth       ki0047075b-MAL-ED          INDIA                          [145-150)      198     57     55      2
Birth       ki0047075b-MAL-ED          INDIA                          [150-155)      198     71     68      3
Birth       ki0047075b-MAL-ED          INDIA                          [155-160)      198     33     33      0
Birth       ki0047075b-MAL-ED          NEPAL                          >=160          172      2      2      0
Birth       ki0047075b-MAL-ED          NEPAL                          <145           172     25     24      1
Birth       ki0047075b-MAL-ED          NEPAL                          [145-150)      172     64     62      2
Birth       ki0047075b-MAL-ED          NEPAL                          [150-155)      172     56     53      3
Birth       ki0047075b-MAL-ED          NEPAL                          [155-160)      172     25     25      0
Birth       ki0047075b-MAL-ED          PERU                           >=160          276     11     10      1
Birth       ki0047075b-MAL-ED          PERU                           <145           276     40     38      2
Birth       ki0047075b-MAL-ED          PERU                           [145-150)      276    102     98      4
Birth       ki0047075b-MAL-ED          PERU                           [150-155)      276     76     76      0
Birth       ki0047075b-MAL-ED          PERU                           [155-160)      276     47     47      0
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=160          228    104    104      0
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <145           228      8      8      0
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [145-150)      228     11     11      0
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [150-155)      228     36     35      1
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [155-160)      228     69     69      0
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=160          121     30     29      1
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <145           121      5      4      1
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [145-150)      121     11     10      1
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [150-155)      121     29     28      1
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [155-160)      121     46     44      2
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=160           42      2      2      0
Birth       ki1000304b-SAS-CompFeed    INDIA                          <145            42      1      1      0
Birth       ki1000304b-SAS-CompFeed    INDIA                          [145-150)       42      7      7      0
Birth       ki1000304b-SAS-CompFeed    INDIA                          [150-155)       42     17     15      2
Birth       ki1000304b-SAS-CompFeed    INDIA                          [155-160)       42     15     13      2
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=160           28      0      0      0
Birth       ki1017093-NIH-Birth        BANGLADESH                     <145            28      9      9      0
Birth       ki1017093-NIH-Birth        BANGLADESH                     [145-150)       28      5      5      0
Birth       ki1017093-NIH-Birth        BANGLADESH                     [150-155)       28      7      7      0
Birth       ki1017093-NIH-Birth        BANGLADESH                     [155-160)       28      7      7      0
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=160           27      1      1      0
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <145            27      6      6      0
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [145-150)       27      8      8      0
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [150-155)       27      9      8      1
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [155-160)       27      3      3      0
Birth       ki1101329-Keneba           GAMBIA                         >=160         1429    726    714     12
Birth       ki1101329-Keneba           GAMBIA                         <145          1429      3      2      1
Birth       ki1101329-Keneba           GAMBIA                         [145-150)     1429     20     19      1
Birth       ki1101329-Keneba           GAMBIA                         [150-155)     1429    220    213      7
Birth       ki1101329-Keneba           GAMBIA                         [155-160)     1429    460    455      5
Birth       ki1119695-PROBIT           BELARUS                        >=160         6694   5466   5462      4
Birth       ki1119695-PROBIT           BELARUS                        <145          6694      1      1      0
Birth       ki1119695-PROBIT           BELARUS                        [145-150)     6694     10     10      0
Birth       ki1119695-PROBIT           BELARUS                        [150-155)     6694    240    240      0
Birth       ki1119695-PROBIT           BELARUS                        [155-160)     6694    977    976      1
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=160         9667   4850   4733    117
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <145          9667     64     58      6
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [145-150)     9667    307    290     17
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [150-155)     9667   1592   1532     60
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [155-160)     9667   2854   2771     83
Birth       ki1135781-COHORTS          GUATEMALA                      >=160          397     14     14      0
Birth       ki1135781-COHORTS          GUATEMALA                      <145           397     86     85      1
Birth       ki1135781-COHORTS          GUATEMALA                      [145-150)      397    141    141      0
Birth       ki1135781-COHORTS          GUATEMALA                      [150-155)      397    122    119      3
Birth       ki1135781-COHORTS          GUATEMALA                      [155-160)      397     34     34      0
Birth       ki1135781-COHORTS          INDIA                          >=160         1774    147    145      2
Birth       ki1135781-COHORTS          INDIA                          <145          1774    158    153      5
Birth       ki1135781-COHORTS          INDIA                          [145-150)     1774    474    459     15
Birth       ki1135781-COHORTS          INDIA                          [150-155)     1774    612    597     15
Birth       ki1135781-COHORTS          INDIA                          [155-160)     1774    383    377      6
Birth       ki1135781-COHORTS          PHILIPPINES                    >=160         3050    130    129      1
Birth       ki1135781-COHORTS          PHILIPPINES                    <145          3050    327    314     13
Birth       ki1135781-COHORTS          PHILIPPINES                    [145-150)     3050    960    948     12
Birth       ki1135781-COHORTS          PHILIPPINES                    [150-155)     3050   1133   1114     19
Birth       ki1135781-COHORTS          PHILIPPINES                    [155-160)     3050    500    499      1
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=160         9698    239    228     11
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <145          9698   1769   1463    306
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [145-150)     9698   3360   2950    410
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [150-155)     9698   3128   2827    301
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [155-160)     9698   1202   1141     61
3 months    ki0047075b-MAL-ED          BANGLADESH                     >=160          250      3      3      0
3 months    ki0047075b-MAL-ED          BANGLADESH                     <145           250     56     51      5
3 months    ki0047075b-MAL-ED          BANGLADESH                     [145-150)      250     90     89      1
3 months    ki0047075b-MAL-ED          BANGLADESH                     [150-155)      250     80     80      0
3 months    ki0047075b-MAL-ED          BANGLADESH                     [155-160)      250     21     20      1
3 months    ki0047075b-MAL-ED          BRAZIL                         >=160          222     68     67      1
3 months    ki0047075b-MAL-ED          BRAZIL                         <145           222      8      8      0
3 months    ki0047075b-MAL-ED          BRAZIL                         [145-150)      222     33     33      0
3 months    ki0047075b-MAL-ED          BRAZIL                         [150-155)      222     51     51      0
3 months    ki0047075b-MAL-ED          BRAZIL                         [155-160)      222     62     62      0
3 months    ki0047075b-MAL-ED          INDIA                          >=160          240     14     14      0
3 months    ki0047075b-MAL-ED          INDIA                          <145           240     29     26      3
3 months    ki0047075b-MAL-ED          INDIA                          [145-150)      240     69     63      6
3 months    ki0047075b-MAL-ED          INDIA                          [150-155)      240     87     85      2
3 months    ki0047075b-MAL-ED          INDIA                          [155-160)      240     41     41      0
3 months    ki0047075b-MAL-ED          NEPAL                          >=160          236      5      5      0
3 months    ki0047075b-MAL-ED          NEPAL                          <145           236     37     35      2
3 months    ki0047075b-MAL-ED          NEPAL                          [145-150)      236     85     84      1
3 months    ki0047075b-MAL-ED          NEPAL                          [150-155)      236     73     73      0
3 months    ki0047075b-MAL-ED          NEPAL                          [155-160)      236     36     36      0
3 months    ki0047075b-MAL-ED          PERU                           >=160          289     12     11      1
3 months    ki0047075b-MAL-ED          PERU                           <145           289     42     37      5
3 months    ki0047075b-MAL-ED          PERU                           [145-150)      289    107     97     10
3 months    ki0047075b-MAL-ED          PERU                           [150-155)      289     80     78      2
3 months    ki0047075b-MAL-ED          PERU                           [155-160)      289     48     46      2
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=160          269    121    118      3
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <145           269      9      9      0
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [145-150)      269     14     12      2
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [150-155)      269     43     41      2
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [155-160)      269     82     79      3
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=160          254     64     62      2
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <145           254     10      9      1
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [145-150)      254     25     24      1
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [150-155)      254     67     61      6
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [155-160)      254     88     85      3
3 months    ki1000304b-SAS-CompFeed    INDIA                          >=160          362     52     50      2
3 months    ki1000304b-SAS-CompFeed    INDIA                          <145           362     23     21      2
3 months    ki1000304b-SAS-CompFeed    INDIA                          [145-150)      362     71     60     11
3 months    ki1000304b-SAS-CompFeed    INDIA                          [150-155)      362    112    104      8
3 months    ki1000304b-SAS-CompFeed    INDIA                          [155-160)      362    104     98      6
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=160           94      1      1      0
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          <145            94     13     10      3
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          [145-150)       94     35     31      4
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          [150-155)       94     30     26      4
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          [155-160)       94     15     14      1
3 months    ki1017093-NIH-Birth        BANGLADESH                     >=160          570     23     23      0
3 months    ki1017093-NIH-Birth        BANGLADESH                     <145           570     96     85     11
3 months    ki1017093-NIH-Birth        BANGLADESH                     [145-150)      570    191    182      9
3 months    ki1017093-NIH-Birth        BANGLADESH                     [150-155)      570    177    170      7
3 months    ki1017093-NIH-Birth        BANGLADESH                     [155-160)      570     83     77      6
3 months    ki1017093b-PROVIDE         BANGLADESH                     >=160          644     33     33      0
3 months    ki1017093b-PROVIDE         BANGLADESH                     <145           644     81     77      4
3 months    ki1017093b-PROVIDE         BANGLADESH                     [145-150)      644    225    220      5
3 months    ki1017093b-PROVIDE         BANGLADESH                     [150-155)      644    200    199      1
3 months    ki1017093b-PROVIDE         BANGLADESH                     [155-160)      644    105    105      0
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=160          728     21     21      0
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     <145           728    109     99     10
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     [145-150)      728    239    227     12
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     [150-155)      728    245    238      7
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     [155-160)      728    114    110      4
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=160         2257    650    645      5
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <145          2257     34     34      0
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [145-150)     2257    175    170      5
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [150-155)     2257    625    617      8
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [155-160)     2257    773    768      5
3 months    ki1101329-Keneba           GAMBIA                         >=160         1949    988    967     21
3 months    ki1101329-Keneba           GAMBIA                         <145          1949      4      2      2
3 months    ki1101329-Keneba           GAMBIA                         [145-150)     1949     29     26      3
3 months    ki1101329-Keneba           GAMBIA                         [150-155)     1949    284    275      9
3 months    ki1101329-Keneba           GAMBIA                         [155-160)     1949    644    621     23
3 months    ki1112895-Guatemala BSC    GUATEMALA                      >=160           16      0      0      0
3 months    ki1112895-Guatemala BSC    GUATEMALA                      <145            16      3      3      0
3 months    ki1112895-Guatemala BSC    GUATEMALA                      [145-150)       16      8      7      1
3 months    ki1112895-Guatemala BSC    GUATEMALA                      [150-155)       16      3      3      0
3 months    ki1112895-Guatemala BSC    GUATEMALA                      [155-160)       16      2      1      1
3 months    ki1119695-PROBIT           BELARUS                        >=160         6680   5454   5420     34
3 months    ki1119695-PROBIT           BELARUS                        <145          6680      1      1      0
3 months    ki1119695-PROBIT           BELARUS                        [145-150)     6680     10     10      0
3 months    ki1119695-PROBIT           BELARUS                        [150-155)     6680    240    236      4
3 months    ki1119695-PROBIT           BELARUS                        [155-160)     6680    975    963     12
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=160         7770   3869   3682    187
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       <145          7770     48     42      6
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       [145-150)     7770    256    229     27
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       [150-155)     7770   1306   1210     96
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       [155-160)     7770   2291   2155    136
3 months    ki1135781-COHORTS          GUATEMALA                      >=160          466     13     12      1
3 months    ki1135781-COHORTS          GUATEMALA                      <145           466     97     82     15
3 months    ki1135781-COHORTS          GUATEMALA                      [145-150)      466    176    159     17
3 months    ki1135781-COHORTS          GUATEMALA                      [150-155)      466    136    132      4
3 months    ki1135781-COHORTS          GUATEMALA                      [155-160)      466     44     38      6
3 months    ki1135781-COHORTS          INDIA                          >=160         1819    145    143      2
3 months    ki1135781-COHORTS          INDIA                          <145          1819    167    154     13
3 months    ki1135781-COHORTS          INDIA                          [145-150)     1819    493    471     22
3 months    ki1135781-COHORTS          INDIA                          [150-155)     1819    616    605     11
3 months    ki1135781-COHORTS          INDIA                          [155-160)     1819    398    393      5
3 months    ki1135781-COHORTS          PHILIPPINES                    >=160         2875    117    115      2
3 months    ki1135781-COHORTS          PHILIPPINES                    <145          2875    304    290     14
3 months    ki1135781-COHORTS          PHILIPPINES                    [145-150)     2875    909    880     29
3 months    ki1135781-COHORTS          PHILIPPINES                    [150-155)     2875   1066   1043     23
3 months    ki1135781-COHORTS          PHILIPPINES                    [155-160)     2875    479    473      6
3 months    kiGH5241-JiVitA-3          BANGLADESH                     >=160        12247    323    315      8
3 months    kiGH5241-JiVitA-3          BANGLADESH                     <145         12247   2170   1834    336
3 months    kiGH5241-JiVitA-3          BANGLADESH                     [145-150)    12247   4198   3845    353
3 months    kiGH5241-JiVitA-3          BANGLADESH                     [150-155)    12247   3989   3724    265
3 months    kiGH5241-JiVitA-3          BANGLADESH                     [155-160)    12247   1567   1508     59
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=160          241      4      4      0
6 months    ki0047075b-MAL-ED          BANGLADESH                     <145           241     53     48      5
6 months    ki0047075b-MAL-ED          BANGLADESH                     [145-150)      241     87     84      3
6 months    ki0047075b-MAL-ED          BANGLADESH                     [150-155)      241     77     77      0
6 months    ki0047075b-MAL-ED          BANGLADESH                     [155-160)      241     20     20      0
6 months    ki0047075b-MAL-ED          BRAZIL                         >=160          209     65     65      0
6 months    ki0047075b-MAL-ED          BRAZIL                         <145           209      7      7      0
6 months    ki0047075b-MAL-ED          BRAZIL                         [145-150)      209     32     32      0
6 months    ki0047075b-MAL-ED          BRAZIL                         [150-155)      209     49     49      0
6 months    ki0047075b-MAL-ED          BRAZIL                         [155-160)      209     56     56      0
6 months    ki0047075b-MAL-ED          INDIA                          >=160          235     14     14      0
6 months    ki0047075b-MAL-ED          INDIA                          <145           235     28     26      2
6 months    ki0047075b-MAL-ED          INDIA                          [145-150)      235     69     64      5
6 months    ki0047075b-MAL-ED          INDIA                          [150-155)      235     83     81      2
6 months    ki0047075b-MAL-ED          INDIA                          [155-160)      235     41     41      0
6 months    ki0047075b-MAL-ED          NEPAL                          >=160          236      5      5      0
6 months    ki0047075b-MAL-ED          NEPAL                          <145           236     37     37      0
6 months    ki0047075b-MAL-ED          NEPAL                          [145-150)      236     85     84      1
6 months    ki0047075b-MAL-ED          NEPAL                          [150-155)      236     73     73      0
6 months    ki0047075b-MAL-ED          NEPAL                          [155-160)      236     36     36      0
6 months    ki0047075b-MAL-ED          PERU                           >=160          272     12     11      1
6 months    ki0047075b-MAL-ED          PERU                           <145           272     38     34      4
6 months    ki0047075b-MAL-ED          PERU                           [145-150)      272    101     95      6
6 months    ki0047075b-MAL-ED          PERU                           [150-155)      272     75     74      1
6 months    ki0047075b-MAL-ED          PERU                           [155-160)      272     46     46      0
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=160          249    112    110      2
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <145           249      9      9      0
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [145-150)      249     13     12      1
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [150-155)      249     40     38      2
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [155-160)      249     75     74      1
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=160          247     62     61      1
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <145           247      9      7      2
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [145-150)      247     25     21      4
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [150-155)      247     66     63      3
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [155-160)      247     85     81      4
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=160          362     54     53      1
6 months    ki1000304b-SAS-CompFeed    INDIA                          <145           362     20     16      4
6 months    ki1000304b-SAS-CompFeed    INDIA                          [145-150)      362     68     57     11
6 months    ki1000304b-SAS-CompFeed    INDIA                          [150-155)      362    109     99     10
6 months    ki1000304b-SAS-CompFeed    INDIA                          [155-160)      362    111    104      7
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=160           95      1      1      0
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <145            95     12      9      3
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [145-150)       95     35     27      8
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [150-155)       95     32     29      3
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [155-160)       95     15     15      0
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=160          537     19     19      0
6 months    ki1017093-NIH-Birth        BANGLADESH                     <145           537     90     73     17
6 months    ki1017093-NIH-Birth        BANGLADESH                     [145-150)      537    183    171     12
6 months    ki1017093-NIH-Birth        BANGLADESH                     [150-155)      537    168    164      4
6 months    ki1017093-NIH-Birth        BANGLADESH                     [155-160)      537     77     75      2
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=160          582     30     30      0
6 months    ki1017093b-PROVIDE         BANGLADESH                     <145           582     75     70      5
6 months    ki1017093b-PROVIDE         BANGLADESH                     [145-150)      582    199    194      5
6 months    ki1017093b-PROVIDE         BANGLADESH                     [150-155)      582    182    179      3
6 months    ki1017093b-PROVIDE         BANGLADESH                     [155-160)      582     96     95      1
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=160          715     22     22      0
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <145           715    106    100      6
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [145-150)      715    230    222      8
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [150-155)      715    245    237      8
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [155-160)      715    112    111      1
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=160         1996    571    569      2
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <145          1996     32     32      0
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [145-150)     1996    153    148      5
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [150-155)     1996    565    558      7
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [155-160)     1996    675    670      5
6 months    ki1101329-Keneba           GAMBIA                         >=160         1877    958    941     17
6 months    ki1101329-Keneba           GAMBIA                         <145          1877      4      2      2
6 months    ki1101329-Keneba           GAMBIA                         [145-150)     1877     30     28      2
6 months    ki1101329-Keneba           GAMBIA                         [150-155)     1877    275    261     14
6 months    ki1101329-Keneba           GAMBIA                         [155-160)     1877    610    586     24
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=160          231     11     10      1
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <145           231     49     42      7
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [145-150)      231     77     70      7
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [150-155)      231     69     63      6
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [155-160)      231     25     24      1
6 months    ki1119695-PROBIT           BELARUS                        >=160         6433   5250   5173     77
6 months    ki1119695-PROBIT           BELARUS                        <145          6433      1      1      0
6 months    ki1119695-PROBIT           BELARUS                        [145-150)     6433     10     10      0
6 months    ki1119695-PROBIT           BELARUS                        [150-155)     6433    229    222      7
6 months    ki1119695-PROBIT           BELARUS                        [155-160)     6433    943    919     24
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=160         7126   3538   3438    100
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <145          7126     45     43      2
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [145-150)     7126    244    217     27
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [150-155)     7126   1165   1103     62
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [155-160)     7126   2134   2040     94
6 months    ki1135781-COHORTS          GUATEMALA                      >=160          453     14     13      1
6 months    ki1135781-COHORTS          GUATEMALA                      <145           453    100     78     22
6 months    ki1135781-COHORTS          GUATEMALA                      [145-150)      453    168    138     30
6 months    ki1135781-COHORTS          GUATEMALA                      [150-155)      453    130    118     12
6 months    ki1135781-COHORTS          GUATEMALA                      [155-160)      453     41     37      4
6 months    ki1135781-COHORTS          INDIA                          >=160         1819    150    148      2
6 months    ki1135781-COHORTS          INDIA                          <145          1819    163    146     17
6 months    ki1135781-COHORTS          INDIA                          [145-150)     1819    495    465     30
6 months    ki1135781-COHORTS          INDIA                          [150-155)     1819    620    606     14
6 months    ki1135781-COHORTS          INDIA                          [155-160)     1819    391    383      8
6 months    ki1135781-COHORTS          PHILIPPINES                    >=160         2708    108    108      0
6 months    ki1135781-COHORTS          PHILIPPINES                    <145          2708    287    253     34
6 months    ki1135781-COHORTS          PHILIPPINES                    [145-150)     2708    854    800     54
6 months    ki1135781-COHORTS          PHILIPPINES                    [150-155)     2708   1006    973     33
6 months    ki1135781-COHORTS          PHILIPPINES                    [155-160)     2708    453    442     11
6 months    ki1148112-LCNI-5           MALAWI                         >=160          836    226    217      9
6 months    ki1148112-LCNI-5           MALAWI                         <145           836     12      9      3
6 months    ki1148112-LCNI-5           MALAWI                         [145-150)      836     93     72     21
6 months    ki1148112-LCNI-5           MALAWI                         [150-155)      836    218    197     21
6 months    ki1148112-LCNI-5           MALAWI                         [155-160)      836    287    270     17
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=160         8294    230    228      2
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <145          8294   1451   1239    212
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [145-150)     8294   2790   2597    193
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [150-155)     8294   2729   2611    118
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [155-160)     8294   1094   1071     23
9 months    ki0047075b-MAL-ED          BANGLADESH                     >=160          234      4      4      0
9 months    ki0047075b-MAL-ED          BANGLADESH                     <145           234     52     45      7
9 months    ki0047075b-MAL-ED          BANGLADESH                     [145-150)      234     86     82      4
9 months    ki0047075b-MAL-ED          BANGLADESH                     [150-155)      234     73     73      0
9 months    ki0047075b-MAL-ED          BANGLADESH                     [155-160)      234     19     19      0
9 months    ki0047075b-MAL-ED          BRAZIL                         >=160          199     60     60      0
9 months    ki0047075b-MAL-ED          BRAZIL                         <145           199      7      7      0
9 months    ki0047075b-MAL-ED          BRAZIL                         [145-150)      199     31     31      0
9 months    ki0047075b-MAL-ED          BRAZIL                         [150-155)      199     48     48      0
9 months    ki0047075b-MAL-ED          BRAZIL                         [155-160)      199     53     53      0
9 months    ki0047075b-MAL-ED          INDIA                          >=160          231     14     14      0
9 months    ki0047075b-MAL-ED          INDIA                          <145           231     27     25      2
9 months    ki0047075b-MAL-ED          INDIA                          [145-150)      231     69     62      7
9 months    ki0047075b-MAL-ED          INDIA                          [150-155)      231     80     79      1
9 months    ki0047075b-MAL-ED          INDIA                          [155-160)      231     41     41      0
9 months    ki0047075b-MAL-ED          NEPAL                          >=160          231      4      4      0
9 months    ki0047075b-MAL-ED          NEPAL                          <145           231     37     37      0
9 months    ki0047075b-MAL-ED          NEPAL                          [145-150)      231     83     82      1
9 months    ki0047075b-MAL-ED          NEPAL                          [150-155)      231     72     72      0
9 months    ki0047075b-MAL-ED          NEPAL                          [155-160)      231     35     35      0
9 months    ki0047075b-MAL-ED          PERU                           >=160          255     11     11      0
9 months    ki0047075b-MAL-ED          PERU                           <145           255     36     30      6
9 months    ki0047075b-MAL-ED          PERU                           [145-150)      255     95     90      5
9 months    ki0047075b-MAL-ED          PERU                           [150-155)      255     69     68      1
9 months    ki0047075b-MAL-ED          PERU                           [155-160)      255     44     44      0
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=160          246    110    107      3
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <145           246      9      9      0
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [145-150)      246     14     13      1
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [150-155)      246     38     36      2
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [155-160)      246     75     72      3
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=160          238     60     57      3
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <145           238      8      6      2
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [145-150)      238     24     18      6
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [150-155)      238     64     56      8
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [155-160)      238     82     72     10
9 months    ki1000304b-SAS-CompFeed    INDIA                          >=160          355     49     47      2
9 months    ki1000304b-SAS-CompFeed    INDIA                          <145           355     21     15      6
9 months    ki1000304b-SAS-CompFeed    INDIA                          [145-150)      355     68     55     13
9 months    ki1000304b-SAS-CompFeed    INDIA                          [150-155)      355    109     96     13
9 months    ki1000304b-SAS-CompFeed    INDIA                          [155-160)      355    108     95     13
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=160           85      1      1      0
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          <145            85     13      5      8
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          [145-150)       85     30     20     10
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          [150-155)       85     27     25      2
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          [155-160)       85     14     14      0
9 months    ki1017093-NIH-Birth        BANGLADESH                     >=160          507     18     18      0
9 months    ki1017093-NIH-Birth        BANGLADESH                     <145           507     89     72     17
9 months    ki1017093-NIH-Birth        BANGLADESH                     [145-150)      507    174    154     20
9 months    ki1017093-NIH-Birth        BANGLADESH                     [150-155)      507    151    143      8
9 months    ki1017093-NIH-Birth        BANGLADESH                     [155-160)      507     75     75      0
9 months    ki1017093b-PROVIDE         BANGLADESH                     >=160          604     31     31      0
9 months    ki1017093b-PROVIDE         BANGLADESH                     <145           604     76     68      8
9 months    ki1017093b-PROVIDE         BANGLADESH                     [145-150)      604    210    204      6
9 months    ki1017093b-PROVIDE         BANGLADESH                     [150-155)      604    192    183      9
9 months    ki1017093b-PROVIDE         BANGLADESH                     [155-160)      604     95     94      1
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=160          706     21     21      0
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     <145           706    104     96      8
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     [145-150)      706    227    214     13
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     [150-155)      706    240    234      6
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     [155-160)      706    114    113      1
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=160         1758    502    496      6
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <145          1758     30     30      0
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [145-150)     1758    139    134      5
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [150-155)     1758    491    478     13
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [155-160)     1758    596    587      9
9 months    ki1101329-Keneba           GAMBIA                         >=160         1872    954    928     26
9 months    ki1101329-Keneba           GAMBIA                         <145          1872      4      1      3
9 months    ki1101329-Keneba           GAMBIA                         [145-150)     1872     28     24      4
9 months    ki1101329-Keneba           GAMBIA                         [150-155)     1872    284    262     22
9 months    ki1101329-Keneba           GAMBIA                         [155-160)     1872    602    564     38
9 months    ki1112895-Guatemala BSC    GUATEMALA                      >=160          201     11     10      1
9 months    ki1112895-Guatemala BSC    GUATEMALA                      <145           201     42     33      9
9 months    ki1112895-Guatemala BSC    GUATEMALA                      [145-150)      201     67     57     10
9 months    ki1112895-Guatemala BSC    GUATEMALA                      [150-155)      201     58     53      5
9 months    ki1112895-Guatemala BSC    GUATEMALA                      [155-160)      201     23     20      3
9 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   >=160          744    515    497     18
9 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   <145           744      1      1      0
9 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   [145-150)      744     17     15      2
9 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   [150-155)      744     48     44      4
9 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   [155-160)      744    163    147     16
9 months    ki1119695-PROBIT           BELARUS                        >=160         6342   5174   5134     40
9 months    ki1119695-PROBIT           BELARUS                        <145          6342      1      1      0
9 months    ki1119695-PROBIT           BELARUS                        [145-150)     6342     10     10      0
9 months    ki1119695-PROBIT           BELARUS                        [150-155)     6342    227    220      7
9 months    ki1119695-PROBIT           BELARUS                        [155-160)     6342    930    915     15
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=160         6573   3263   3148    115
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       <145          6573     37     32      5
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       [145-150)     6573    210    183     27
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       [150-155)     6573   1092   1023     69
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       [155-160)     6573   1971   1878     93
9 months    ki1135781-COHORTS          GUATEMALA                      >=160          442     14     12      2
9 months    ki1135781-COHORTS          GUATEMALA                      <145           442     98     63     35
9 months    ki1135781-COHORTS          GUATEMALA                      [145-150)      442    160    117     43
9 months    ki1135781-COHORTS          GUATEMALA                      [150-155)      442    130    108     22
9 months    ki1135781-COHORTS          GUATEMALA                      [155-160)      442     40     30     10
9 months    ki1135781-COHORTS          INDIA                          >=160         1648    125    123      2
9 months    ki1135781-COHORTS          INDIA                          <145          1648    150    122     28
9 months    ki1135781-COHORTS          INDIA                          [145-150)     1648    453    415     38
9 months    ki1135781-COHORTS          INDIA                          [150-155)     1648    561    538     23
9 months    ki1135781-COHORTS          INDIA                          [155-160)     1648    359    348     11
9 months    ki1135781-COHORTS          PHILIPPINES                    >=160         2712    112    112      0
9 months    ki1135781-COHORTS          PHILIPPINES                    <145          2712    285    236     49
9 months    ki1135781-COHORTS          PHILIPPINES                    [145-150)     2712    862    782     80
9 months    ki1135781-COHORTS          PHILIPPINES                    [150-155)     2712   1003    954     49
9 months    ki1135781-COHORTS          PHILIPPINES                    [155-160)     2712    450    432     18
9 months    ki1148112-LCNI-5           MALAWI                         >=160          661    179    173      6
9 months    ki1148112-LCNI-5           MALAWI                         <145           661     10      8      2
9 months    ki1148112-LCNI-5           MALAWI                         [145-150)      661     75     63     12
9 months    ki1148112-LCNI-5           MALAWI                         [150-155)      661    168    154     14
9 months    ki1148112-LCNI-5           MALAWI                         [155-160)      661    229    216     13
12 months   ki0047075b-MAL-ED          BANGLADESH                     >=160          233      4      4      0
12 months   ki0047075b-MAL-ED          BANGLADESH                     <145           233     52     43      9
12 months   ki0047075b-MAL-ED          BANGLADESH                     [145-150)      233     87     80      7
12 months   ki0047075b-MAL-ED          BANGLADESH                     [150-155)      233     71     70      1
12 months   ki0047075b-MAL-ED          BANGLADESH                     [155-160)      233     19     19      0
12 months   ki0047075b-MAL-ED          BRAZIL                         >=160          195     58     58      0
12 months   ki0047075b-MAL-ED          BRAZIL                         <145           195      7      7      0
12 months   ki0047075b-MAL-ED          BRAZIL                         [145-150)      195     30     30      0
12 months   ki0047075b-MAL-ED          BRAZIL                         [150-155)      195     48     48      0
12 months   ki0047075b-MAL-ED          BRAZIL                         [155-160)      195     52     52      0
12 months   ki0047075b-MAL-ED          INDIA                          >=160          227     12     11      1
12 months   ki0047075b-MAL-ED          INDIA                          <145           227     26     24      2
12 months   ki0047075b-MAL-ED          INDIA                          [145-150)      227     69     62      7
12 months   ki0047075b-MAL-ED          INDIA                          [150-155)      227     79     73      6
12 months   ki0047075b-MAL-ED          INDIA                          [155-160)      227     41     39      2
12 months   ki0047075b-MAL-ED          NEPAL                          >=160          231      4      4      0
12 months   ki0047075b-MAL-ED          NEPAL                          <145           231     37     34      3
12 months   ki0047075b-MAL-ED          NEPAL                          [145-150)      231     83     81      2
12 months   ki0047075b-MAL-ED          NEPAL                          [150-155)      231     72     72      0
12 months   ki0047075b-MAL-ED          NEPAL                          [155-160)      231     35     35      0
12 months   ki0047075b-MAL-ED          PERU                           >=160          245     11     11      0
12 months   ki0047075b-MAL-ED          PERU                           <145           245     35     29      6
12 months   ki0047075b-MAL-ED          PERU                           [145-150)      245     93     87      6
12 months   ki0047075b-MAL-ED          PERU                           [150-155)      245     65     64      1
12 months   ki0047075b-MAL-ED          PERU                           [155-160)      245     41     41      0
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=160          248    110    106      4
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <145           248      9      9      0
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [145-150)      248     14     13      1
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [150-155)      248     38     34      4
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [155-160)      248     77     74      3
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=160          231     58     52      6
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <145           231      8      6      2
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [145-150)      231     24     16      8
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [150-155)      231     65     53     12
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [155-160)      231     76     67      9
12 months   ki1000304b-SAS-CompFeed    INDIA                          >=160          364     53     52      1
12 months   ki1000304b-SAS-CompFeed    INDIA                          <145           364     19     15      4
12 months   ki1000304b-SAS-CompFeed    INDIA                          [145-150)      364     72     50     22
12 months   ki1000304b-SAS-CompFeed    INDIA                          [150-155)      364    105     89     16
12 months   ki1000304b-SAS-CompFeed    INDIA                          [155-160)      364    115    103     12
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=160           92      1      1      0
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          <145            92     14      6      8
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          [145-150)       92     32     13     19
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          [150-155)       92     30     22      8
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          [155-160)       92     15      9      6
12 months   ki1017093-NIH-Birth        BANGLADESH                     >=160          491     18     18      0
12 months   ki1017093-NIH-Birth        BANGLADESH                     <145           491     82     65     17
12 months   ki1017093-NIH-Birth        BANGLADESH                     [145-150)      491    167    147     20
12 months   ki1017093-NIH-Birth        BANGLADESH                     [150-155)      491    150    143      7
12 months   ki1017093-NIH-Birth        BANGLADESH                     [155-160)      491     74     70      4
12 months   ki1017093b-PROVIDE         BANGLADESH                     >=160          600     32     31      1
12 months   ki1017093b-PROVIDE         BANGLADESH                     <145           600     75     63     12
12 months   ki1017093b-PROVIDE         BANGLADESH                     [145-150)      600    210    196     14
12 months   ki1017093b-PROVIDE         BANGLADESH                     [150-155)      600    188    180      8
12 months   ki1017093b-PROVIDE         BANGLADESH                     [155-160)      600     95     94      1
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=160          706     20     20      0
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     <145           706    102     89     13
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     [145-150)      706    230    213     17
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     [150-155)      706    241    233      8
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     [155-160)      706    113    110      3
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=160         1425    407    401      6
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <145          1425     25     25      0
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [145-150)     1425    107    102      5
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [150-155)     1425    400    386     14
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [155-160)     1425    486    479      7
12 months   ki1101329-Keneba           GAMBIA                         >=160         1773    908    873     35
12 months   ki1101329-Keneba           GAMBIA                         <145          1773      4      1      3
12 months   ki1101329-Keneba           GAMBIA                         [145-150)     1773     25     20      5
12 months   ki1101329-Keneba           GAMBIA                         [150-155)     1773    273    244     29
12 months   ki1101329-Keneba           GAMBIA                         [155-160)     1773    563    513     50
12 months   ki1112895-Guatemala BSC    GUATEMALA                      >=160          175      9      8      1
12 months   ki1112895-Guatemala BSC    GUATEMALA                      <145           175     35     24     11
12 months   ki1112895-Guatemala BSC    GUATEMALA                      [145-150)      175     59     48     11
12 months   ki1112895-Guatemala BSC    GUATEMALA                      [150-155)      175     50     45      5
12 months   ki1112895-Guatemala BSC    GUATEMALA                      [155-160)      175     22     19      3
12 months   ki1119695-PROBIT           BELARUS                        >=160         6530   5333   5307     26
12 months   ki1119695-PROBIT           BELARUS                        <145          6530      1      1      0
12 months   ki1119695-PROBIT           BELARUS                        [145-150)     6530     10     10      0
12 months   ki1119695-PROBIT           BELARUS                        [150-155)     6530    233    230      3
12 months   ki1119695-PROBIT           BELARUS                        [155-160)     6530    953    937     16
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=160         5797   2794   2686    108
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       <145          5797     33     30      3
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       [145-150)     5797    201    167     34
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       [150-155)     5797    999    899    100
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       [155-160)     5797   1770   1653    117
12 months   ki1135781-COHORTS          GUATEMALA                      >=160          507     17     15      2
12 months   ki1135781-COHORTS          GUATEMALA                      <145           507    113     54     59
12 months   ki1135781-COHORTS          GUATEMALA                      [145-150)      507    184    122     62
12 months   ki1135781-COHORTS          GUATEMALA                      [150-155)      507    147    109     38
12 months   ki1135781-COHORTS          GUATEMALA                      [155-160)      507     46     33     13
12 months   ki1135781-COHORTS          INDIA                          >=160         1535    123    120      3
12 months   ki1135781-COHORTS          INDIA                          <145          1535    139    107     32
12 months   ki1135781-COHORTS          INDIA                          [145-150)     1535    423    371     52
12 months   ki1135781-COHORTS          INDIA                          [150-155)     1535    519    473     46
12 months   ki1135781-COHORTS          INDIA                          [155-160)     1535    331    317     14
12 months   ki1135781-COHORTS          PHILIPPINES                    >=160         2585    110    105      5
12 months   ki1135781-COHORTS          PHILIPPINES                    <145          2585    274    192     82
12 months   ki1135781-COHORTS          PHILIPPINES                    [145-150)     2585    816    681    135
12 months   ki1135781-COHORTS          PHILIPPINES                    [150-155)     2585    963    873     90
12 months   ki1135781-COHORTS          PHILIPPINES                    [155-160)     2585    422    390     32
12 months   ki1148112-LCNI-5           MALAWI                         >=160          624    165    159      6
12 months   ki1148112-LCNI-5           MALAWI                         <145           624      9      7      2
12 months   ki1148112-LCNI-5           MALAWI                         [145-150)      624     71     53     18
12 months   ki1148112-LCNI-5           MALAWI                         [150-155)      624    166    140     26
12 months   ki1148112-LCNI-5           MALAWI                         [155-160)      624    213    198     15
12 months   kiGH5241-JiVitA-3          BANGLADESH                     >=160         7188    184    182      2
12 months   kiGH5241-JiVitA-3          BANGLADESH                     <145          7188   1235    950    285
12 months   kiGH5241-JiVitA-3          BANGLADESH                     [145-150)     7188   2447   2124    323
12 months   kiGH5241-JiVitA-3          BANGLADESH                     [150-155)     7188   2370   2186    184
12 months   kiGH5241-JiVitA-3          BANGLADESH                     [155-160)     7188    952    927     25
18 months   ki0047075b-MAL-ED          BANGLADESH                     >=160          221      4      4      0
18 months   ki0047075b-MAL-ED          BANGLADESH                     <145           221     49     34     15
18 months   ki0047075b-MAL-ED          BANGLADESH                     [145-150)      221     81     70     11
18 months   ki0047075b-MAL-ED          BANGLADESH                     [150-155)      221     69     65      4
18 months   ki0047075b-MAL-ED          BANGLADESH                     [155-160)      221     18     17      1
18 months   ki0047075b-MAL-ED          BRAZIL                         >=160          180     51     51      0
18 months   ki0047075b-MAL-ED          BRAZIL                         <145           180      7      7      0
18 months   ki0047075b-MAL-ED          BRAZIL                         [145-150)      180     26     26      0
18 months   ki0047075b-MAL-ED          BRAZIL                         [150-155)      180     46     46      0
18 months   ki0047075b-MAL-ED          BRAZIL                         [155-160)      180     50     50      0
18 months   ki0047075b-MAL-ED          INDIA                          >=160          227     13     13      0
18 months   ki0047075b-MAL-ED          INDIA                          <145           227     26     19      7
18 months   ki0047075b-MAL-ED          INDIA                          [145-150)      227     69     56     13
18 months   ki0047075b-MAL-ED          INDIA                          [150-155)      227     79     70      9
18 months   ki0047075b-MAL-ED          INDIA                          [155-160)      227     40     37      3
18 months   ki0047075b-MAL-ED          NEPAL                          >=160          229      3      3      0
18 months   ki0047075b-MAL-ED          NEPAL                          <145           229     37     34      3
18 months   ki0047075b-MAL-ED          NEPAL                          [145-150)      229     83     80      3
18 months   ki0047075b-MAL-ED          NEPAL                          [150-155)      229     72     71      1
18 months   ki0047075b-MAL-ED          NEPAL                          [155-160)      229     34     34      0
18 months   ki0047075b-MAL-ED          PERU                           >=160          222     11     10      1
18 months   ki0047075b-MAL-ED          PERU                           <145           222     34     25      9
18 months   ki0047075b-MAL-ED          PERU                           [145-150)      222     82     74      8
18 months   ki0047075b-MAL-ED          PERU                           [150-155)      222     57     57      0
18 months   ki0047075b-MAL-ED          PERU                           [155-160)      222     38     36      2
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=160          237    107     99      8
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <145           237      9      7      2
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [145-150)      237     13     10      3
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [150-155)      237     36     30      6
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [155-160)      237     72     65      7
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=160          225     58     47     11
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <145           225      8      3      5
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [145-150)      225     22     13      9
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [150-155)      225     63     41     22
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [155-160)      225     74     52     22
18 months   ki1000304b-SAS-CompFeed    INDIA                          >=160          352     50     47      3
18 months   ki1000304b-SAS-CompFeed    INDIA                          <145           352     17     13      4
18 months   ki1000304b-SAS-CompFeed    INDIA                          [145-150)      352     71     45     26
18 months   ki1000304b-SAS-CompFeed    INDIA                          [150-155)      352    100     82     18
18 months   ki1000304b-SAS-CompFeed    INDIA                          [155-160)      352    114     93     21
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=160           84      1      1      0
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          <145            84     11      2      9
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          [145-150)       84     31     14     17
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          [150-155)       84     26     20      6
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          [155-160)       84     15     10      5
18 months   ki1017093-NIH-Birth        BANGLADESH                     >=160          463     16     16      0
18 months   ki1017093-NIH-Birth        BANGLADESH                     <145           463     80     51     29
18 months   ki1017093-NIH-Birth        BANGLADESH                     [145-150)      463    161    121     40
18 months   ki1017093-NIH-Birth        BANGLADESH                     [150-155)      463    142    117     25
18 months   ki1017093-NIH-Birth        BANGLADESH                     [155-160)      463     64     57      7
18 months   ki1017093b-PROVIDE         BANGLADESH                     >=160          552     30     27      3
18 months   ki1017093b-PROVIDE         BANGLADESH                     <145           552     69     52     17
18 months   ki1017093b-PROVIDE         BANGLADESH                     [145-150)      552    194    174     20
18 months   ki1017093b-PROVIDE         BANGLADESH                     [150-155)      552    175    161     14
18 months   ki1017093b-PROVIDE         BANGLADESH                     [155-160)      552     84     81      3
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=160          634     18     18      0
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     <145           634     90     74     16
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     [145-150)      634    205    188     17
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     [150-155)      634    215    208      7
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     [155-160)      634    106    104      2
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=160          966    278    273      5
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <145           966     15     13      2
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [145-150)      966     83     73     10
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [150-155)      966    268    255     13
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [155-160)      966    322    313      9
18 months   ki1101329-Keneba           GAMBIA                         >=160         1773    898    852     46
18 months   ki1101329-Keneba           GAMBIA                         <145          1773      7      2      5
18 months   ki1101329-Keneba           GAMBIA                         [145-150)     1773     26     17      9
18 months   ki1101329-Keneba           GAMBIA                         [150-155)     1773    263    231     32
18 months   ki1101329-Keneba           GAMBIA                         [155-160)     1773    579    512     67
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=160          595    412    364     48
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <145           595      0      0      0
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [145-150)      595     12      7      5
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [150-155)      595     36     30      6
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [155-160)      595    135    111     24
18 months   ki1119695-PROBIT           BELARUS                        >=160          756    632    619     13
18 months   ki1119695-PROBIT           BELARUS                        <145           756      0      0      0
18 months   ki1119695-PROBIT           BELARUS                        [145-150)      756      2      2      0
18 months   ki1119695-PROBIT           BELARUS                        [150-155)      756     24     23      1
18 months   ki1119695-PROBIT           BELARUS                        [155-160)      756     98     94      4
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=160         1425    689    607     82
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       <145          1425     10      6      4
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       [145-150)     1425     62     39     23
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       [150-155)     1425    239    182     57
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       [155-160)     1425    425    350     75
18 months   ki1135781-COHORTS          GUATEMALA                      >=160          413     16     11      5
18 months   ki1135781-COHORTS          GUATEMALA                      <145           413     90     28     62
18 months   ki1135781-COHORTS          GUATEMALA                      [145-150)      413    145     77     68
18 months   ki1135781-COHORTS          GUATEMALA                      [150-155)      413    124     66     58
18 months   ki1135781-COHORTS          GUATEMALA                      [155-160)      413     38     24     14
18 months   ki1135781-COHORTS          PHILIPPINES                    >=160         2492    108    100      8
18 months   ki1135781-COHORTS          PHILIPPINES                    <145          2492    258    120    138
18 months   ki1135781-COHORTS          PHILIPPINES                    [145-150)     2492    782    553    229
18 months   ki1135781-COHORTS          PHILIPPINES                    [150-155)     2492    934    747    187
18 months   ki1135781-COHORTS          PHILIPPINES                    [155-160)     2492    410    345     65
18 months   ki1148112-LCNI-5           MALAWI                         >=160          722    201    188     13
18 months   ki1148112-LCNI-5           MALAWI                         <145           722     11      4      7
18 months   ki1148112-LCNI-5           MALAWI                         [145-150)      722     78     54     24
18 months   ki1148112-LCNI-5           MALAWI                         [150-155)      722    188    157     31
18 months   ki1148112-LCNI-5           MALAWI                         [155-160)      722    244    223     21
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=160          212      4      4      0
24 months   ki0047075b-MAL-ED          BANGLADESH                     <145           212     44     31     13
24 months   ki0047075b-MAL-ED          BANGLADESH                     [145-150)      212     80     72      8
24 months   ki0047075b-MAL-ED          BANGLADESH                     [150-155)      212     66     62      4
24 months   ki0047075b-MAL-ED          BANGLADESH                     [155-160)      212     18     17      1
24 months   ki0047075b-MAL-ED          BRAZIL                         >=160          169     47     47      0
24 months   ki0047075b-MAL-ED          BRAZIL                         <145           169      7      7      0
24 months   ki0047075b-MAL-ED          BRAZIL                         [145-150)      169     26     26      0
24 months   ki0047075b-MAL-ED          BRAZIL                         [150-155)      169     41     40      1
24 months   ki0047075b-MAL-ED          BRAZIL                         [155-160)      169     48     48      0
24 months   ki0047075b-MAL-ED          INDIA                          >=160          226     13     13      0
24 months   ki0047075b-MAL-ED          INDIA                          <145           226     26     20      6
24 months   ki0047075b-MAL-ED          INDIA                          [145-150)      226     69     56     13
24 months   ki0047075b-MAL-ED          INDIA                          [150-155)      226     78     72      6
24 months   ki0047075b-MAL-ED          INDIA                          [155-160)      226     40     37      3
24 months   ki0047075b-MAL-ED          NEPAL                          >=160          228      4      4      0
24 months   ki0047075b-MAL-ED          NEPAL                          <145           228     37     34      3
24 months   ki0047075b-MAL-ED          NEPAL                          [145-150)      228     83     79      4
24 months   ki0047075b-MAL-ED          NEPAL                          [150-155)      228     70     70      0
24 months   ki0047075b-MAL-ED          NEPAL                          [155-160)      228     34     34      0
24 months   ki0047075b-MAL-ED          PERU                           >=160          201      9      9      0
24 months   ki0047075b-MAL-ED          PERU                           <145           201     29     22      7
24 months   ki0047075b-MAL-ED          PERU                           [145-150)      201     74     69      5
24 months   ki0047075b-MAL-ED          PERU                           [150-155)      201     52     51      1
24 months   ki0047075b-MAL-ED          PERU                           [155-160)      201     37     35      2
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=160          234    107     99      8
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <145           234      8      7      1
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [145-150)      234     12      9      3
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [150-155)      234     34     29      5
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [155-160)      234     73     64      9
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=160          214     53     47      6
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <145           214      7      3      4
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [145-150)      214     21      9     12
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [150-155)      214     60     37     23
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [155-160)      214     73     49     24
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=160          429     16     16      0
24 months   ki1017093-NIH-Birth        BANGLADESH                     <145           429     77     44     33
24 months   ki1017093-NIH-Birth        BANGLADESH                     [145-150)      429    146    109     37
24 months   ki1017093-NIH-Birth        BANGLADESH                     [150-155)      429    129    112     17
24 months   ki1017093-NIH-Birth        BANGLADESH                     [155-160)      429     61     55      6
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=160          576     32     30      2
24 months   ki1017093b-PROVIDE         BANGLADESH                     <145           576     72     56     16
24 months   ki1017093b-PROVIDE         BANGLADESH                     [145-150)      576    200    183     17
24 months   ki1017093b-PROVIDE         BANGLADESH                     [150-155)      576    182    170     12
24 months   ki1017093b-PROVIDE         BANGLADESH                     [155-160)      576     90     88      2
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=160          514     13     13      0
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <145           514     71     57     14
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [145-150)      514    168    154     14
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [150-155)      514    175    169      6
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [155-160)      514     87     86      1
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=160            6      1      1      0
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <145             6      0      0      0
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [145-150)        6      0      0      0
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [150-155)        6      3      2      1
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [155-160)        6      2      2      0
24 months   ki1101329-Keneba           GAMBIA                         >=160         1602    810    766     44
24 months   ki1101329-Keneba           GAMBIA                         <145          1602      3      0      3
24 months   ki1101329-Keneba           GAMBIA                         [145-150)     1602     26     23      3
24 months   ki1101329-Keneba           GAMBIA                         [150-155)     1602    235    210     25
24 months   ki1101329-Keneba           GAMBIA                         [155-160)     1602    528    474     54
24 months   ki1119695-PROBIT           BELARUS                        >=160         1610   1341   1320     21
24 months   ki1119695-PROBIT           BELARUS                        <145          1610      1      1      0
24 months   ki1119695-PROBIT           BELARUS                        [145-150)     1610      2      1      1
24 months   ki1119695-PROBIT           BELARUS                        [150-155)     1610     46     45      1
24 months   ki1119695-PROBIT           BELARUS                        [155-160)     1610    220    212      8
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=160          378    170    135     35
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <145           378      7      3      4
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [145-150)      378     18      9      9
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [150-155)      378     75     46     29
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [155-160)      378    108     75     33
24 months   ki1135781-COHORTS          GUATEMALA                      >=160          476     15      7      8
24 months   ki1135781-COHORTS          GUATEMALA                      <145           476    105     33     72
24 months   ki1135781-COHORTS          GUATEMALA                      [145-150)      476    174     96     78
24 months   ki1135781-COHORTS          GUATEMALA                      [150-155)      476    138     74     64
24 months   ki1135781-COHORTS          GUATEMALA                      [155-160)      476     44     26     18
24 months   ki1135781-COHORTS          INDIA                          >=160         1819    152    146      6
24 months   ki1135781-COHORTS          INDIA                          <145          1819    164    109     55
24 months   ki1135781-COHORTS          INDIA                          [145-150)     1819    486    391     95
24 months   ki1135781-COHORTS          INDIA                          [150-155)     1819    617    525     92
24 months   ki1135781-COHORTS          INDIA                          [155-160)     1819    400    361     39
24 months   ki1135781-COHORTS          PHILIPPINES                    >=160         2445    107     99      8
24 months   ki1135781-COHORTS          PHILIPPINES                    <145          2445    256    117    139
24 months   ki1135781-COHORTS          PHILIPPINES                    [145-150)     2445    774    517    257
24 months   ki1135781-COHORTS          PHILIPPINES                    [150-155)     2445    905    693    212
24 months   ki1135781-COHORTS          PHILIPPINES                    [155-160)     2445    403    330     73
24 months   ki1148112-LCNI-5           MALAWI                         >=160          577    164    158      6
24 months   ki1148112-LCNI-5           MALAWI                         <145           577      9      5      4
24 months   ki1148112-LCNI-5           MALAWI                         [145-150)      577     68     51     17
24 months   ki1148112-LCNI-5           MALAWI                         [150-155)      577    145    123     22
24 months   ki1148112-LCNI-5           MALAWI                         [155-160)      577    191    173     18
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=160         4273    116    114      2
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <145          4273    734    508    226
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [145-150)     4273   1451   1186    265
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [150-155)     4273   1410   1267    143
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [155-160)     4273    562    533     29


The following strata were considered:

* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 12 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 12 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 12 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 12 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 12 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 12 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 12 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 12 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 12 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 12 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 18 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 18 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 18 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 18 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 18 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 18 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 18 months, studyid: ki1119695-PROBIT, country: BELARUS
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
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 3 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 3 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 3 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 3 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 3 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 3 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 3 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 3 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 3 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 9 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 9 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 9 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 9 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 9 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 9 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 9 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 9 months, studyid: ki1119695-PROBIT, country: BELARUS
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
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 3 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 3 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 3 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 3 months, studyid: ki1119695-PROBIT, country: BELARUS
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
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 9 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 9 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 9 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 9 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 9 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 9 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 9 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 9 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 9 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 9 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 9 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 9 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 12 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 12 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 12 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 12 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 12 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 12 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 12 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 12 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 12 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 18 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 18 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 18 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 18 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 18 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 18 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 18 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 18 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
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
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots

```
## Warning: Removed 10 rows containing missing values (geom_errorbar).
```

![](/tmp/344b73de-312b-4550-840e-b62a3e030221/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->


```
## Warning: Removed 19 rows containing missing values (geom_errorbar).
```

![](/tmp/344b73de-312b-4550-840e-b62a3e030221/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


```
## Warning: Removed 2 rows containing missing values (geom_errorbar).
```

![](/tmp/344b73de-312b-4550-840e-b62a3e030221/REPORT_files/figure-html/plot_paf-1.png)<!-- -->


```
## Warning: Removed 2 rows containing missing values (geom_errorbar).
```

![](/tmp/344b73de-312b-4550-840e-b62a3e030221/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid              country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO   ZIMBABWE      >=160                NA                0.0241237   0.0198053   0.0284421
Birth       ki1126311-ZVITAMBO   ZIMBABWE      <145                 NA                0.0937500   0.0223349   0.1651651
Birth       ki1126311-ZVITAMBO   ZIMBABWE      [145-150)            NA                0.0553746   0.0297895   0.0809597
Birth       ki1126311-ZVITAMBO   ZIMBABWE      [150-155)            NA                0.0376884   0.0283331   0.0470438
Birth       ki1126311-ZVITAMBO   ZIMBABWE      [155-160)            NA                0.0290820   0.0229168   0.0352472
Birth       kiGH5241-JiVitA-3    BANGLADESH    >=160                NA                0.0460251          NA          NA
Birth       kiGH5241-JiVitA-3    BANGLADESH    <145                 NA                0.1729791          NA          NA
Birth       kiGH5241-JiVitA-3    BANGLADESH    [145-150)            NA                0.1220238          NA          NA
Birth       kiGH5241-JiVitA-3    BANGLADESH    [150-155)            NA                0.0962276          NA          NA
Birth       kiGH5241-JiVitA-3    BANGLADESH    [155-160)            NA                0.0507488          NA          NA
3 months    ki1126311-ZVITAMBO   ZIMBABWE      >=160                NA                0.0483329   0.0415746   0.0550913
3 months    ki1126311-ZVITAMBO   ZIMBABWE      <145                 NA                0.1250000   0.0314348   0.2185652
3 months    ki1126311-ZVITAMBO   ZIMBABWE      [145-150)            NA                0.1054688   0.0678404   0.1430971
3 months    ki1126311-ZVITAMBO   ZIMBABWE      [150-155)            NA                0.0735069   0.0593526   0.0876612
3 months    ki1126311-ZVITAMBO   ZIMBABWE      [155-160)            NA                0.0593627   0.0496859   0.0690395
3 months    kiGH5241-JiVitA-3    BANGLADESH    >=160                NA                0.0247678          NA          NA
3 months    kiGH5241-JiVitA-3    BANGLADESH    <145                 NA                0.1548387          NA          NA
3 months    kiGH5241-JiVitA-3    BANGLADESH    [145-150)            NA                0.0840877          NA          NA
3 months    kiGH5241-JiVitA-3    BANGLADESH    [150-155)            NA                0.0664327          NA          NA
3 months    kiGH5241-JiVitA-3    BANGLADESH    [155-160)            NA                0.0376516          NA          NA
9 months    ki1126311-ZVITAMBO   ZIMBABWE      >=160                NA                0.0352436   0.0289163   0.0415710
9 months    ki1126311-ZVITAMBO   ZIMBABWE      <145                 NA                0.1351351   0.0249714   0.2452988
9 months    ki1126311-ZVITAMBO   ZIMBABWE      [145-150)            NA                0.1285714   0.0832963   0.1738465
9 months    ki1126311-ZVITAMBO   ZIMBABWE      [150-155)            NA                0.0631868   0.0487554   0.0776182
9 months    ki1126311-ZVITAMBO   ZIMBABWE      [155-160)            NA                0.0471842   0.0378228   0.0565456
12 months   ki1135781-COHORTS    PHILIPPINES   >=160                NA                0.0454545   0.0065211   0.0843880
12 months   ki1135781-COHORTS    PHILIPPINES   <145                 NA                0.2992701   0.2450371   0.3535031
12 months   ki1135781-COHORTS    PHILIPPINES   [145-150)            NA                0.1654412   0.1399413   0.1909410
12 months   ki1135781-COHORTS    PHILIPPINES   [150-155)            NA                0.0934579   0.0750705   0.1118454
12 months   ki1135781-COHORTS    PHILIPPINES   [155-160)            NA                0.0758294   0.0505672   0.1010916
18 months   ki1135781-COHORTS    GUATEMALA     >=160                NA                0.3125000   0.0851076   0.5398924
18 months   ki1135781-COHORTS    GUATEMALA     <145                 NA                0.6888889   0.5931286   0.7846492
18 months   ki1135781-COHORTS    GUATEMALA     [145-150)            NA                0.4689655   0.3876408   0.5502902
18 months   ki1135781-COHORTS    GUATEMALA     [150-155)            NA                0.4677419   0.3798138   0.5556701
18 months   ki1135781-COHORTS    GUATEMALA     [155-160)            NA                0.3684211   0.2148644   0.5219777
18 months   ki1135781-COHORTS    PHILIPPINES   >=160                NA                0.0740741   0.0246721   0.1234761
18 months   ki1135781-COHORTS    PHILIPPINES   <145                 NA                0.5348837   0.4740092   0.5957583
18 months   ki1135781-COHORTS    PHILIPPINES   [145-150)            NA                0.2928389   0.2609378   0.3247400
18 months   ki1135781-COHORTS    PHILIPPINES   [150-155)            NA                0.2002141   0.1745459   0.2258824
18 months   ki1135781-COHORTS    PHILIPPINES   [155-160)            NA                0.1585366   0.1231755   0.1938977
24 months   ki1135781-COHORTS    GUATEMALA     >=160                NA                0.5333333   0.2806004   0.7860663
24 months   ki1135781-COHORTS    GUATEMALA     <145                 NA                0.6857143   0.5968261   0.7746025
24 months   ki1135781-COHORTS    GUATEMALA     [145-150)            NA                0.4482759   0.3743045   0.5222473
24 months   ki1135781-COHORTS    GUATEMALA     [150-155)            NA                0.4637681   0.3804783   0.5470579
24 months   ki1135781-COHORTS    GUATEMALA     [155-160)            NA                0.4090909   0.2636627   0.5545191
24 months   ki1135781-COHORTS    INDIA         >=160                NA                0.0394737   0.0085099   0.0704375
24 months   ki1135781-COHORTS    INDIA         <145                 NA                0.3353659   0.2630895   0.4076422
24 months   ki1135781-COHORTS    INDIA         [145-150)            NA                0.1954733   0.1602067   0.2307398
24 months   ki1135781-COHORTS    INDIA         [150-155)            NA                0.1491086   0.1209952   0.1772220
24 months   ki1135781-COHORTS    INDIA         [155-160)            NA                0.0975000   0.0684221   0.1265779
24 months   ki1135781-COHORTS    PHILIPPINES   >=160                NA                0.0747664   0.0249211   0.1246116
24 months   ki1135781-COHORTS    PHILIPPINES   <145                 NA                0.5429688   0.4819340   0.6040035
24 months   ki1135781-COHORTS    PHILIPPINES   [145-150)            NA                0.3320413   0.2988567   0.3652260
24 months   ki1135781-COHORTS    PHILIPPINES   [150-155)            NA                0.2342541   0.2066548   0.2618535
24 months   ki1135781-COHORTS    PHILIPPINES   [155-160)            NA                0.1811414   0.1435319   0.2187510


### Parameter: E(Y)


agecat      studyid              country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO   ZIMBABWE      NA                   NA                0.0292749   0.0259142   0.0326355
Birth       kiGH5241-JiVitA-3    BANGLADESH    NA                   NA                0.1122912          NA          NA
3 months    ki1126311-ZVITAMBO   ZIMBABWE      NA                   NA                0.0581725   0.0529676   0.0633773
3 months    kiGH5241-JiVitA-3    BANGLADESH    NA                   NA                0.0833674          NA          NA
9 months    ki1126311-ZVITAMBO   ZIMBABWE      NA                   NA                0.0470105   0.0418932   0.0521278
12 months   ki1135781-COHORTS    PHILIPPINES   NA                   NA                0.1330754   0.1199794   0.1461715
18 months   ki1135781-COHORTS    GUATEMALA     NA                   NA                0.5012107   0.4529305   0.5494908
18 months   ki1135781-COHORTS    PHILIPPINES   NA                   NA                0.2516051   0.2345645   0.2686458
24 months   ki1135781-COHORTS    GUATEMALA     NA                   NA                0.5042017   0.4592386   0.5491648
24 months   ki1135781-COHORTS    INDIA         NA                   NA                0.1577790   0.1410223   0.1745357
24 months   ki1135781-COHORTS    PHILIPPINES   NA                   NA                0.2817996   0.2639639   0.2996353


### Parameter: RR


agecat      studyid              country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO   ZIMBABWE      >=160                >=160             1.0000000   1.0000000    1.000000
Birth       ki1126311-ZVITAMBO   ZIMBABWE      <145                 >=160             3.8862179   1.7769967    8.498997
Birth       ki1126311-ZVITAMBO   ZIMBABWE      [145-150)            >=160             2.2954425   1.3985336    3.767558
Birth       ki1126311-ZVITAMBO   ZIMBABWE      [150-155)            >=160             1.5622987   1.1504071    2.121664
Birth       ki1126311-ZVITAMBO   ZIMBABWE      [155-160)            >=160             1.2055355   0.9134389    1.591038
Birth       kiGH5241-JiVitA-3    BANGLADESH    >=160                >=160             1.0000000          NA          NA
Birth       kiGH5241-JiVitA-3    BANGLADESH    <145                 >=160             3.7583637          NA          NA
Birth       kiGH5241-JiVitA-3    BANGLADESH    [145-150)            >=160             2.6512445          NA          NA
Birth       kiGH5241-JiVitA-3    BANGLADESH    [150-155)            >=160             2.0907637          NA          NA
Birth       kiGH5241-JiVitA-3    BANGLADESH    [155-160)            >=160             1.1026320          NA          NA
3 months    ki1126311-ZVITAMBO   ZIMBABWE      >=160                >=160             1.0000000   1.0000000    1.000000
3 months    ki1126311-ZVITAMBO   ZIMBABWE      <145                 >=160             2.5862299   1.2077159    5.538211
3 months    ki1126311-ZVITAMBO   ZIMBABWE      [145-150)            >=160             2.1821315   1.4875139    3.201112
3 months    ki1126311-ZVITAMBO   ZIMBABWE      [150-155)            >=160             1.5208458   1.1987681    1.929457
3 months    ki1126311-ZVITAMBO   ZIMBABWE      [155-160)            >=160             1.2282052   0.9908292    1.522450
3 months    kiGH5241-JiVitA-3    BANGLADESH    >=160                >=160             1.0000000          NA          NA
3 months    kiGH5241-JiVitA-3    BANGLADESH    <145                 >=160             6.2516129          NA          NA
3 months    kiGH5241-JiVitA-3    BANGLADESH    [145-150)            >=160             3.3950393          NA          NA
3 months    kiGH5241-JiVitA-3    BANGLADESH    [150-155)            >=160             2.6822199          NA          NA
3 months    kiGH5241-JiVitA-3    BANGLADESH    [155-160)            >=160             1.5201819          NA          NA
9 months    ki1126311-ZVITAMBO   ZIMBABWE      >=160                >=160             1.0000000   1.0000000    1.000000
9 months    ki1126311-ZVITAMBO   ZIMBABWE      <145                 >=160             3.8343126   1.6640326    8.835135
9 months    ki1126311-ZVITAMBO   ZIMBABWE      [145-150)            >=160             3.6480745   2.4569849    5.416577
9 months    ki1126311-ZVITAMBO   ZIMBABWE      [150-155)            >=160             1.7928571   1.3408480    2.397242
9 months    ki1126311-ZVITAMBO   ZIMBABWE      [155-160)            >=160             1.3387995   1.0244969    1.749526
12 months   ki1135781-COHORTS    PHILIPPINES   >=160                >=160             1.0000000   1.0000000    1.000000
12 months   ki1135781-COHORTS    PHILIPPINES   <145                 >=160             6.5839414   2.7432345   15.801888
12 months   ki1135781-COHORTS    PHILIPPINES   [145-150)            >=160             3.6397058   1.5244136    8.690199
12 months   ki1135781-COHORTS    PHILIPPINES   [150-155)            >=160             2.0560747   0.8538134    4.951250
12 months   ki1135781-COHORTS    PHILIPPINES   [155-160)            >=160             1.6682464   0.6654650    4.182107
18 months   ki1135781-COHORTS    GUATEMALA     >=160                >=160             1.0000000   1.0000000    1.000000
18 months   ki1135781-COHORTS    GUATEMALA     <145                 >=160             2.2044444   1.0509152    4.624136
18 months   ki1135781-COHORTS    GUATEMALA     [145-150)            >=160             1.5006897   0.7102707    3.170720
18 months   ki1135781-COHORTS    GUATEMALA     [150-155)            >=160             1.4967742   0.7059342    3.173572
18 months   ki1135781-COHORTS    GUATEMALA     [155-160)            >=160             1.1789474   0.5096916    2.726977
18 months   ki1135781-COHORTS    PHILIPPINES   >=160                >=160             1.0000000   1.0000000    1.000000
18 months   ki1135781-COHORTS    PHILIPPINES   <145                 >=160             7.2209302   3.6708226   14.204400
18 months   ki1135781-COHORTS    PHILIPPINES   [145-150)            >=160             3.9533248   2.0113203    7.770407
18 months   ki1135781-COHORTS    PHILIPPINES   [150-155)            >=160             2.7028908   1.3705117    5.330577
18 months   ki1135781-COHORTS    PHILIPPINES   [155-160)            >=160             2.1402439   1.0593793    4.323894
24 months   ki1135781-COHORTS    GUATEMALA     >=160                >=160             1.0000000   1.0000000    1.000000
24 months   ki1135781-COHORTS    GUATEMALA     <145                 >=160             1.2857143   0.7866514    2.101390
24 months   ki1135781-COHORTS    GUATEMALA     [145-150)            >=160             0.8405172   0.5088913    1.388252
24 months   ki1135781-COHORTS    GUATEMALA     [150-155)            >=160             0.8695652   0.5238620    1.443402
24 months   ki1135781-COHORTS    GUATEMALA     [155-160)            >=160             0.7670455   0.4241775    1.387058
24 months   ki1135781-COHORTS    INDIA         >=160                >=160             1.0000000   1.0000000    1.000000
24 months   ki1135781-COHORTS    INDIA         <145                 >=160             8.4959335   3.7663422   19.164718
24 months   ki1135781-COHORTS    INDIA         [145-150)            >=160             4.9519882   2.2142031   11.074949
24 months   ki1135781-COHORTS    INDIA         [150-155)            >=160             3.7774170   1.6858727    8.463793
24 months   ki1135781-COHORTS    INDIA         [155-160)            >=160             2.4699996   1.0671808    5.716837
24 months   ki1135781-COHORTS    PHILIPPINES   >=160                >=160             1.0000000   1.0000000    1.000000
24 months   ki1135781-COHORTS    PHILIPPINES   <145                 >=160             7.2622070   3.6935689   14.278778
24 months   ki1135781-COHORTS    PHILIPPINES   [145-150)            >=160             4.4410530   2.2631593    8.714787
24 months   ki1135781-COHORTS    PHILIPPINES   [150-155)            >=160             3.1331492   1.5920584    6.165995
24 months   ki1135781-COHORTS    PHILIPPINES   [155-160)            >=160             2.4227667   1.2052023    4.870385


### Parameter: PAR


agecat      studyid              country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1126311-ZVITAMBO   ZIMBABWE      >=160                NA                 0.0051511    0.0018000   0.0085023
Birth       kiGH5241-JiVitA-3    BANGLADESH    >=160                NA                 0.0662661           NA          NA
3 months    ki1126311-ZVITAMBO   ZIMBABWE      >=160                NA                 0.0098396    0.0046166   0.0150625
3 months    kiGH5241-JiVitA-3    BANGLADESH    >=160                NA                 0.0585996           NA          NA
9 months    ki1126311-ZVITAMBO   ZIMBABWE      >=160                NA                 0.0117669    0.0066217   0.0169121
12 months   ki1135781-COHORTS    PHILIPPINES   >=160                NA                 0.0876209    0.0481454   0.1270964
18 months   ki1135781-COHORTS    GUATEMALA     >=160                NA                 0.1887107   -0.0349674   0.4123887
18 months   ki1135781-COHORTS    PHILIPPINES   >=160                NA                 0.1775311    0.1273374   0.2277247
24 months   ki1135781-COHORTS    GUATEMALA     >=160                NA                -0.0291317   -0.2778684   0.2196051
24 months   ki1135781-COHORTS    INDIA         >=160                NA                 0.1183053    0.0854524   0.1511582
24 months   ki1135781-COHORTS    PHILIPPINES   >=160                NA                 0.2070332    0.1561884   0.2578781


### Parameter: PAF


agecat      studyid              country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1126311-ZVITAMBO   ZIMBABWE      >=160                NA                 0.1759579    0.0551125   0.2813479
Birth       kiGH5241-JiVitA-3    BANGLADESH    >=160                NA                 0.5901272           NA          NA
3 months    ki1126311-ZVITAMBO   ZIMBABWE      >=160                NA                 0.1691446    0.0756133   0.2532122
3 months    kiGH5241-JiVitA-3    BANGLADESH    >=160                NA                 0.7029077           NA          NA
9 months    ki1126311-ZVITAMBO   ZIMBABWE      >=160                NA                 0.2503027    0.1361426   0.3493764
12 months   ki1135781-COHORTS    PHILIPPINES   >=160                NA                 0.6584302    0.2010773   0.8539660
18 months   ki1135781-COHORTS    GUATEMALA     >=160                NA                 0.3765097   -0.2762750   0.6954103
18 months   ki1135781-COHORTS    PHILIPPINES   >=160                NA                 0.7055940    0.4293380   0.8481151
24 months   ki1135781-COHORTS    GUATEMALA     >=160                NA                -0.0577778   -0.6863744   0.3365093
24 months   ki1135781-COHORTS    INDIA         >=160                NA                 0.7498166    0.4568713   0.8847571
24 months   ki1135781-COHORTS    PHILIPPINES   >=160                NA                 0.7346825    0.4856757   0.8631343
