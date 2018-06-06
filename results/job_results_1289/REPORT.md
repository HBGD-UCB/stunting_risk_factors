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
3 months    ki0047075b-MAL-ED          BANGLADESH                     >=160          254      4      4      0
3 months    ki0047075b-MAL-ED          BANGLADESH                     <145           254     56     32     24
3 months    ki0047075b-MAL-ED          BANGLADESH                     [145-150)      254     91     63     28
3 months    ki0047075b-MAL-ED          BANGLADESH                     [150-155)      254     82     66     16
3 months    ki0047075b-MAL-ED          BANGLADESH                     [155-160)      254     21     17      4
3 months    ki0047075b-MAL-ED          BRAZIL                         >=160          222     68     61      7
3 months    ki0047075b-MAL-ED          BRAZIL                         <145           222      8      7      1
3 months    ki0047075b-MAL-ED          BRAZIL                         [145-150)      222     33     27      6
3 months    ki0047075b-MAL-ED          BRAZIL                         [150-155)      222     51     41     10
3 months    ki0047075b-MAL-ED          BRAZIL                         [155-160)      222     62     51     11
3 months    ki0047075b-MAL-ED          INDIA                          >=160          242     14     12      2
3 months    ki0047075b-MAL-ED          INDIA                          <145           242     29     21      8
3 months    ki0047075b-MAL-ED          INDIA                          [145-150)      242     70     49     21
3 months    ki0047075b-MAL-ED          INDIA                          [150-155)      242     88     63     25
3 months    ki0047075b-MAL-ED          INDIA                          [155-160)      242     41     32      9
3 months    ki0047075b-MAL-ED          NEPAL                          >=160          238      5      5      0
3 months    ki0047075b-MAL-ED          NEPAL                          <145           238     37     25     12
3 months    ki0047075b-MAL-ED          NEPAL                          [145-150)      238     86     77      9
3 months    ki0047075b-MAL-ED          NEPAL                          [150-155)      238     74     61     13
3 months    ki0047075b-MAL-ED          NEPAL                          [155-160)      238     36     33      3
3 months    ki0047075b-MAL-ED          PERU                           >=160          290     12      8      4
3 months    ki0047075b-MAL-ED          PERU                           <145           290     42     21     21
3 months    ki0047075b-MAL-ED          PERU                           [145-150)      290    108     69     39
3 months    ki0047075b-MAL-ED          PERU                           [150-155)      290     80     55     25
3 months    ki0047075b-MAL-ED          PERU                           [155-160)      290     48     37     11
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=160          270    121     97     24
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <145           270      9      5      4
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [145-150)      270     14      9      5
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [150-155)      270     43     29     14
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [155-160)      270     83     58     25
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=160          256     64     54     10
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <145           256     10      5      5
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [145-150)      256     26     11     15
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [150-155)      256     67     49     18
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [155-160)      256     89     56     33
3 months    ki1000304b-SAS-CompFeed    INDIA                          >=160          417     58     47     11
3 months    ki1000304b-SAS-CompFeed    INDIA                          <145           417     27     16     11
3 months    ki1000304b-SAS-CompFeed    INDIA                          [145-150)      417     80     45     35
3 months    ki1000304b-SAS-CompFeed    INDIA                          [150-155)      417    128     84     44
3 months    ki1000304b-SAS-CompFeed    INDIA                          [155-160)      417    124     83     41
3 months    ki1017093-NIH-Birth        BANGLADESH                     >=160          629     25     24      1
3 months    ki1017093-NIH-Birth        BANGLADESH                     <145           629    114     76     38
3 months    ki1017093-NIH-Birth        BANGLADESH                     [145-150)      629    209    160     49
3 months    ki1017093-NIH-Birth        BANGLADESH                     [150-155)      629    189    152     37
3 months    ki1017093-NIH-Birth        BANGLADESH                     [155-160)      629     92     77     15
3 months    ki1017093b-PROVIDE         BANGLADESH                     >=160          669     33     30      3
3 months    ki1017093b-PROVIDE         BANGLADESH                     <145           669     87     57     30
3 months    ki1017093b-PROVIDE         BANGLADESH                     [145-150)      669    235    184     51
3 months    ki1017093b-PROVIDE         BANGLADESH                     [150-155)      669    209    177     32
3 months    ki1017093b-PROVIDE         BANGLADESH                     [155-160)      669    105     92     13
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=160          755     22     22      0
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     <145           755    112     84     28
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     [145-150)      755    244    209     35
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     [150-155)      755    259    217     42
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     [155-160)      755    118    102     16
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=160         2356    674    638     36
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <145          2356     35     28      7
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [145-150)     2356    184    151     33
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [150-155)     2356    649    573     76
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [155-160)     2356    814    729     85
3 months    ki1101329-Keneba           GAMBIA                         >=160         2059   1045    843    202
3 months    ki1101329-Keneba           GAMBIA                         <145          2059      4      1      3
3 months    ki1101329-Keneba           GAMBIA                         [145-150)     2059     31     18     13
3 months    ki1101329-Keneba           GAMBIA                         [150-155)     2059    303    206     97
3 months    ki1101329-Keneba           GAMBIA                         [155-160)     2059    676    493    183
3 months    ki1119695-PROBIT           BELARUS                        >=160         6696   5468   5116    352
3 months    ki1119695-PROBIT           BELARUS                        <145          6696      1      1      0
3 months    ki1119695-PROBIT           BELARUS                        [145-150)     6696     10     10      0
3 months    ki1119695-PROBIT           BELARUS                        [150-155)     6696    240    219     21
3 months    ki1119695-PROBIT           BELARUS                        [155-160)     6696    977    864    113
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=160         9828   4921   3956    965
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       <145          9828     64     38     26
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       [145-150)     9828    316    211    105
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       [150-155)     9828   1624   1157    467
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       [155-160)     9828   2903   2205    698
3 months    ki1135781-COHORTS          GUATEMALA                      >=160          500     16     14      2
3 months    ki1135781-COHORTS          GUATEMALA                      <145           500    108     63     45
3 months    ki1135781-COHORTS          GUATEMALA                      [145-150)      500    185    136     49
3 months    ki1135781-COHORTS          GUATEMALA                      [150-155)      500    146    117     29
3 months    ki1135781-COHORTS          GUATEMALA                      [155-160)      500     45     31     14
3 months    ki1135781-COHORTS          INDIA                          >=160         1872    154    140     14
3 months    ki1135781-COHORTS          INDIA                          <145          1872    167    114     53
3 months    ki1135781-COHORTS          INDIA                          [145-150)     1872    505    393    112
3 months    ki1135781-COHORTS          INDIA                          [150-155)     1872    641    537    104
3 months    ki1135781-COHORTS          INDIA                          [155-160)     1872    405    367     38
3 months    ki1135781-COHORTS          PHILIPPINES                    >=160         3056    130    124      6
3 months    ki1135781-COHORTS          PHILIPPINES                    <145          3056    327    234     93
3 months    ki1135781-COHORTS          PHILIPPINES                    [145-150)     3056    964    796    168
3 months    ki1135781-COHORTS          PHILIPPINES                    [150-155)     3056   1133   1000    133
3 months    ki1135781-COHORTS          PHILIPPINES                    [155-160)     3056    502    460     42
3 months    kiGH5241-JiVitA-3          BANGLADESH                     >=160        13298    347    280     67
3 months    kiGH5241-JiVitA-3          BANGLADESH                     <145         13298   2403   1033   1370
3 months    kiGH5241-JiVitA-3          BANGLADESH                     [145-150)    13298   4535   2544   1991
3 months    kiGH5241-JiVitA-3          BANGLADESH                     [150-155)    13298   4313   2806   1507
3 months    kiGH5241-JiVitA-3          BANGLADESH                     [155-160)    13298   1700   1270    430
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=160          246      4      4      0
6 months    ki0047075b-MAL-ED          BANGLADESH                     <145           246     56     27     29
6 months    ki0047075b-MAL-ED          BANGLADESH                     [145-150)      246     89     54     35
6 months    ki0047075b-MAL-ED          BANGLADESH                     [150-155)      246     77     62     15
6 months    ki0047075b-MAL-ED          BANGLADESH                     [155-160)      246     20     15      5
6 months    ki0047075b-MAL-ED          BRAZIL                         >=160          217     66     58      8
6 months    ki0047075b-MAL-ED          BRAZIL                         <145           217      8      7      1
6 months    ki0047075b-MAL-ED          BRAZIL                         [145-150)      217     32     25      7
6 months    ki0047075b-MAL-ED          BRAZIL                         [150-155)      217     51     39     12
6 months    ki0047075b-MAL-ED          BRAZIL                         [155-160)      217     60     48     12
6 months    ki0047075b-MAL-ED          INDIA                          >=160          239     14     11      3
6 months    ki0047075b-MAL-ED          INDIA                          <145           239     29     18     11
6 months    ki0047075b-MAL-ED          INDIA                          [145-150)      239     69     39     30
6 months    ki0047075b-MAL-ED          INDIA                          [150-155)      239     86     57     29
6 months    ki0047075b-MAL-ED          INDIA                          [155-160)      239     41     31     10
6 months    ki0047075b-MAL-ED          NEPAL                          >=160          238      5      5      0
6 months    ki0047075b-MAL-ED          NEPAL                          <145           238     37     25     12
6 months    ki0047075b-MAL-ED          NEPAL                          [145-150)      238     86     73     13
6 months    ki0047075b-MAL-ED          NEPAL                          [150-155)      238     74     61     13
6 months    ki0047075b-MAL-ED          NEPAL                          [155-160)      238     36     33      3
6 months    ki0047075b-MAL-ED          PERU                           >=160          281     12      8      4
6 months    ki0047075b-MAL-ED          PERU                           <145           281     40     14     26
6 months    ki0047075b-MAL-ED          PERU                           [145-150)      281    106     59     47
6 months    ki0047075b-MAL-ED          PERU                           [150-155)      281     77     44     33
6 months    ki0047075b-MAL-ED          PERU                           [155-160)      281     46     31     15
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=160          263    120     86     34
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <145           263      9      3      6
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [145-150)      263     14      8      6
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [150-155)      263     41     22     19
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [155-160)      263     79     43     36
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=160          253     64     48     16
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <145           253      9      4      5
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [145-150)      253     25      6     19
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [150-155)      253     67     41     26
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [155-160)      253     88     50     38
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=160          325     47     34     13
6 months    ki1000304b-SAS-CompFeed    INDIA                          <145           325     17      9      8
6 months    ki1000304b-SAS-CompFeed    INDIA                          [145-150)      325     64     23     41
6 months    ki1000304b-SAS-CompFeed    INDIA                          [150-155)      325     94     56     38
6 months    ki1000304b-SAS-CompFeed    INDIA                          [155-160)      325    103     63     40
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=160          102      1      0      1
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <145           102     15      5     10
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [145-150)      102     37     20     17
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [150-155)      102     33     22     11
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [155-160)      102     16     14      2
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=160          551     22     21      1
6 months    ki1017093-NIH-Birth        BANGLADESH                     <145           551     95     38     57
6 months    ki1017093-NIH-Birth        BANGLADESH                     [145-150)      551    185    115     70
6 months    ki1017093-NIH-Birth        BANGLADESH                     [150-155)      551    171    118     53
6 months    ki1017093-NIH-Birth        BANGLADESH                     [155-160)      551     78     58     20
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=160          639     33     29      4
6 months    ki1017093b-PROVIDE         BANGLADESH                     <145           639     81     46     35
6 months    ki1017093b-PROVIDE         BANGLADESH                     [145-150)      639    221    160     61
6 months    ki1017093b-PROVIDE         BANGLADESH                     [150-155)      639    199    153     46
6 months    ki1017093b-PROVIDE         BANGLADESH                     [155-160)      639    105     89     16
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=160          736     22     21      1
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <145           736    108     65     43
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [145-150)      736    239    152     87
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [150-155)      736    250    178     72
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [155-160)      736    117     94     23
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=160         2200    635    560     75
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <145          2200     34     24     10
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [145-150)     2200    170    113     57
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [150-155)     2200    609    451    158
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [155-160)     2200    752    615    137
6 months    ki1101329-Keneba           GAMBIA                         >=160         2002   1012    757    255
6 months    ki1101329-Keneba           GAMBIA                         <145          2002      4      1      3
6 months    ki1101329-Keneba           GAMBIA                         [145-150)     2002     30     13     17
6 months    ki1101329-Keneba           GAMBIA                         [150-155)     2002    298    167    131
6 months    ki1101329-Keneba           GAMBIA                         [155-160)     2002    658    414    244
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=160          219     10      8      2
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <145           219     43     22     21
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [145-150)      219     73     50     23
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [150-155)      219     69     50     19
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [155-160)      219     24     19      5
6 months    ki1119695-PROBIT           BELARUS                        >=160         6502   5301   4815    486
6 months    ki1119695-PROBIT           BELARUS                        <145          6502      1      1      0
6 months    ki1119695-PROBIT           BELARUS                        [145-150)     6502      9      8      1
6 months    ki1119695-PROBIT           BELARUS                        [150-155)     6502    231    197     34
6 months    ki1119695-PROBIT           BELARUS                        [155-160)     6502    960    816    144
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=160         7614   3825   2854    971
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <145          7614     46     28     18
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [145-150)     7614    252    134    118
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [150-155)     7614   1263    797    466
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [155-160)     7614   2228   1523    705
6 months    ki1135781-COHORTS          GUATEMALA                      >=160          141      1      1      0
6 months    ki1135781-COHORTS          GUATEMALA                      <145           141     29     10     19
6 months    ki1135781-COHORTS          GUATEMALA                      [145-150)      141     50     37     13
6 months    ki1135781-COHORTS          GUATEMALA                      [150-155)      141     45     31     14
6 months    ki1135781-COHORTS          GUATEMALA                      [155-160)      141     16     11      5
6 months    ki1135781-COHORTS          PHILIPPINES                    >=160         2806    113    107      6
6 months    ki1135781-COHORTS          PHILIPPINES                    <145          2806    296    155    141
6 months    ki1135781-COHORTS          PHILIPPINES                    [145-150)     2806    892    628    264
6 months    ki1135781-COHORTS          PHILIPPINES                    [150-155)     2806   1043    828    215
6 months    ki1135781-COHORTS          PHILIPPINES                    [155-160)     2806    462    387     75
6 months    ki1148112-LCNI-5           MALAWI                         >=160          271     74     59     15
6 months    ki1148112-LCNI-5           MALAWI                         <145           271      5      2      3
6 months    ki1148112-LCNI-5           MALAWI                         [145-150)      271     27     12     15
6 months    ki1148112-LCNI-5           MALAWI                         [150-155)      271     78     39     39
6 months    ki1148112-LCNI-5           MALAWI                         [155-160)      271     87     62     25
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=160         9557    247    202     45
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <145          9557   1689    678   1011
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [145-150)     9557   3287   1749   1538
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [150-155)     9557   3108   1948   1160
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [155-160)     9557   1226    914    312
12 months   ki0047075b-MAL-ED          BANGLADESH                     >=160          239      4      4      0
12 months   ki0047075b-MAL-ED          BANGLADESH                     <145           239     52     22     30
12 months   ki0047075b-MAL-ED          BANGLADESH                     [145-150)      239     89     43     46
12 months   ki0047075b-MAL-ED          BANGLADESH                     [150-155)      239     74     53     21
12 months   ki0047075b-MAL-ED          BANGLADESH                     [155-160)      239     20     14      6
12 months   ki0047075b-MAL-ED          BRAZIL                         >=160          207     64     55      9
12 months   ki0047075b-MAL-ED          BRAZIL                         <145           207      7      5      2
12 months   ki0047075b-MAL-ED          BRAZIL                         [145-150)      207     32     24      8
12 months   ki0047075b-MAL-ED          BRAZIL                         [150-155)      207     48     37     11
12 months   ki0047075b-MAL-ED          BRAZIL                         [155-160)      207     56     44     12
12 months   ki0047075b-MAL-ED          INDIA                          >=160          234     14     10      4
12 months   ki0047075b-MAL-ED          INDIA                          <145           234     27     16     11
12 months   ki0047075b-MAL-ED          INDIA                          [145-150)      234     69     30     39
12 months   ki0047075b-MAL-ED          INDIA                          [150-155)      234     83     41     42
12 months   ki0047075b-MAL-ED          INDIA                          [155-160)      234     41     26     15
12 months   ki0047075b-MAL-ED          NEPAL                          >=160          235      5      5      0
12 months   ki0047075b-MAL-ED          NEPAL                          <145           235     37     23     14
12 months   ki0047075b-MAL-ED          NEPAL                          [145-150)      235     84     69     15
12 months   ki0047075b-MAL-ED          NEPAL                          [150-155)      235     73     58     15
12 months   ki0047075b-MAL-ED          NEPAL                          [155-160)      235     36     33      3
12 months   ki0047075b-MAL-ED          PERU                           >=160          269     12      6      6
12 months   ki0047075b-MAL-ED          PERU                           <145           269     37      9     28
12 months   ki0047075b-MAL-ED          PERU                           [145-150)      269    101     49     52
12 months   ki0047075b-MAL-ED          PERU                           [150-155)      269     73     38     35
12 months   ki0047075b-MAL-ED          PERU                           [155-160)      269     46     27     19
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=160          254    114     74     40
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <145           254      9      2      7
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [145-150)      254     14      4     10
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [150-155)      254     40     17     23
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [155-160)      254     77     37     40
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=160          245     63     29     34
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <145           245      8      0      8
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [145-150)      245     24      1     23
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [150-155)      245     66     21     45
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [155-160)      245     84     33     51
12 months   ki1000304b-SAS-CompFeed    INDIA                          >=160          375     53     32     21
12 months   ki1000304b-SAS-CompFeed    INDIA                          <145           375     22      7     15
12 months   ki1000304b-SAS-CompFeed    INDIA                          [145-150)      375     71     16     55
12 months   ki1000304b-SAS-CompFeed    INDIA                          [150-155)      375    112     43     69
12 months   ki1000304b-SAS-CompFeed    INDIA                          [155-160)      375    117     57     60
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=160           98      1      0      1
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          <145            98     14      1     13
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          [145-150)       98     35      2     33
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          [150-155)       98     33      6     27
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          [155-160)       98     15      6      9
12 months   ki1017093-NIH-Birth        BANGLADESH                     >=160          541     19     18      1
12 months   ki1017093-NIH-Birth        BANGLADESH                     <145           541     94     19     75
12 months   ki1017093-NIH-Birth        BANGLADESH                     [145-150)      541    185     87     98
12 months   ki1017093-NIH-Birth        BANGLADESH                     [150-155)      541    164     91     73
12 months   ki1017093-NIH-Birth        BANGLADESH                     [155-160)      541     79     50     29
12 months   ki1017093b-PROVIDE         BANGLADESH                     >=160          608     32     28      4
12 months   ki1017093b-PROVIDE         BANGLADESH                     <145           608     77     39     38
12 months   ki1017093b-PROVIDE         BANGLADESH                     [145-150)      608    210    136     74
12 months   ki1017093b-PROVIDE         BANGLADESH                     [150-155)      608    193    127     66
12 months   ki1017093b-PROVIDE         BANGLADESH                     [155-160)      608     96     77     19
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=160          729     22     20      2
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     <145           729    107     54     53
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     [145-150)      729    235    129    106
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     [150-155)      729    250    163     87
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     [155-160)      729    115     86     29
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=160         1964    562    453    109
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <145          1964     32     19     13
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [145-150)     1964    152     73     79
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [150-155)     1964    545    331    214
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [155-160)     1964    673    467    206
12 months   ki1101329-Keneba           GAMBIA                         >=160         2099   1070    717    353
12 months   ki1101329-Keneba           GAMBIA                         <145          2099      5      1      4
12 months   ki1101329-Keneba           GAMBIA                         [145-150)     2099     31     11     20
12 months   ki1101329-Keneba           GAMBIA                         [150-155)     2099    320    144    176
12 months   ki1101329-Keneba           GAMBIA                         [155-160)     2099    673    350    323
12 months   ki1112895-Guatemala BSC    GUATEMALA                      >=160          225     11      9      2
12 months   ki1112895-Guatemala BSC    GUATEMALA                      <145           225     49     12     37
12 months   ki1112895-Guatemala BSC    GUATEMALA                      [145-150)      225     73     39     34
12 months   ki1112895-Guatemala BSC    GUATEMALA                      [150-155)      225     67     33     34
12 months   ki1112895-Guatemala BSC    GUATEMALA                      [155-160)      225     25     12     13
12 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=160          778    540    453     87
12 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <145           778      1      0      1
12 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [145-150)      778     17     11      6
12 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [150-155)      778     50     36     14
12 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [155-160)      778    170    118     52
12 months   ki1119695-PROBIT           BELARUS                        >=160         6672   5447   4753    694
12 months   ki1119695-PROBIT           BELARUS                        <145          6672      1      1      0
12 months   ki1119695-PROBIT           BELARUS                        [145-150)     6672     10      7      3
12 months   ki1119695-PROBIT           BELARUS                        [150-155)     6672    239    188     51
12 months   ki1119695-PROBIT           BELARUS                        [155-160)     6672    975    783    192
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=160         8316   4149   2788   1361
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       <145          8316     49     22     27
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       [145-150)     8316    279    115    164
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       [150-155)     8316   1379    743    636
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       [155-160)     8316   2460   1449   1011
12 months   ki1135781-COHORTS          GUATEMALA                      >=160          533     17      6     11
12 months   ki1135781-COHORTS          GUATEMALA                      <145           533    119     16    103
12 months   ki1135781-COHORTS          GUATEMALA                      [145-150)      533    196     59    137
12 months   ki1135781-COHORTS          GUATEMALA                      [150-155)      533    155     50    105
12 months   ki1135781-COHORTS          GUATEMALA                      [155-160)      533     46     16     30
12 months   ki1135781-COHORTS          INDIA                          >=160         1845    151    122     29
12 months   ki1135781-COHORTS          INDIA                          <145          1845    169     73     96
12 months   ki1135781-COHORTS          INDIA                          [145-150)     1845    499    263    236
12 months   ki1135781-COHORTS          INDIA                          [150-155)     1845    629    397    232
12 months   ki1135781-COHORTS          INDIA                          [155-160)     1845    397    310     87
12 months   ki1135781-COHORTS          PHILIPPINES                    >=160         2762    114     96     18
12 months   ki1135781-COHORTS          PHILIPPINES                    <145          2762    291     90    201
12 months   ki1135781-COHORTS          PHILIPPINES                    [145-150)     2762    877    431    446
12 months   ki1135781-COHORTS          PHILIPPINES                    [150-155)     2762   1020    616    404
12 months   ki1135781-COHORTS          PHILIPPINES                    [155-160)     2762    460    317    143
12 months   ki1148112-LCNI-5           MALAWI                         >=160          812    217    140     77
12 months   ki1148112-LCNI-5           MALAWI                         <145           812     12      2     10
12 months   ki1148112-LCNI-5           MALAWI                         [145-150)      812     92     33     59
12 months   ki1148112-LCNI-5           MALAWI                         [150-155)      812    211     93    118
12 months   ki1148112-LCNI-5           MALAWI                         [155-160)      812    280    160    120
12 months   kiGH5241-JiVitA-3          BANGLADESH                     >=160         8351    228    182     46
12 months   kiGH5241-JiVitA-3          BANGLADESH                     <145          8351   1462    535    927
12 months   kiGH5241-JiVitA-3          BANGLADESH                     [145-150)     8351   2816   1373   1443
12 months   kiGH5241-JiVitA-3          BANGLADESH                     [150-155)     8351   2745   1677   1068
12 months   kiGH5241-JiVitA-3          BANGLADESH                     [155-160)     8351   1100    810    290
18 months   ki0047075b-MAL-ED          BANGLADESH                     >=160          231      4      4      0
18 months   ki0047075b-MAL-ED          BANGLADESH                     <145           231     50     12     38
18 months   ki0047075b-MAL-ED          BANGLADESH                     [145-150)      231     86     30     56
18 months   ki0047075b-MAL-ED          BANGLADESH                     [150-155)      231     72     41     31
18 months   ki0047075b-MAL-ED          BANGLADESH                     [155-160)      231     19     13      6
18 months   ki0047075b-MAL-ED          BRAZIL                         >=160          194     58     48     10
18 months   ki0047075b-MAL-ED          BRAZIL                         <145           194      7      5      2
18 months   ki0047075b-MAL-ED          BRAZIL                         [145-150)      194     29     21      8
18 months   ki0047075b-MAL-ED          BRAZIL                         [150-155)      194     48     35     13
18 months   ki0047075b-MAL-ED          BRAZIL                         [155-160)      194     52     40     12
18 months   ki0047075b-MAL-ED          INDIA                          >=160          228     13      9      4
18 months   ki0047075b-MAL-ED          INDIA                          <145           228     26     11     15
18 months   ki0047075b-MAL-ED          INDIA                          [145-150)      228     69     21     48
18 months   ki0047075b-MAL-ED          INDIA                          [150-155)      228     79     32     47
18 months   ki0047075b-MAL-ED          INDIA                          [155-160)      228     41     23     18
18 months   ki0047075b-MAL-ED          NEPAL                          >=160          231      4      4      0
18 months   ki0047075b-MAL-ED          NEPAL                          <145           231     37     16     21
18 months   ki0047075b-MAL-ED          NEPAL                          [145-150)      231     83     60     23
18 months   ki0047075b-MAL-ED          NEPAL                          [150-155)      231     72     51     21
18 months   ki0047075b-MAL-ED          NEPAL                          [155-160)      231     35     32      3
18 months   ki0047075b-MAL-ED          PERU                           >=160          243     11      4      7
18 months   ki0047075b-MAL-ED          PERU                           <145           243     35      5     30
18 months   ki0047075b-MAL-ED          PERU                           [145-150)      243     92     29     63
18 months   ki0047075b-MAL-ED          PERU                           [150-155)      243     64     22     42
18 months   ki0047075b-MAL-ED          PERU                           [155-160)      243     41     20     21
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=160          249    112     63     49
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <145           249      9      2      7
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [145-150)      249     14      2     12
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [150-155)      249     38     14     24
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [155-160)      249     76     30     46
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=160          233     58     15     43
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <145           233      8      0      8
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [145-150)      233     24      1     23
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [150-155)      233     66      9     57
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [155-160)      233     77     18     59
18 months   ki1000304b-SAS-CompFeed    INDIA                          >=160          369     51     27     24
18 months   ki1000304b-SAS-CompFeed    INDIA                          <145           369     22      5     17
18 months   ki1000304b-SAS-CompFeed    INDIA                          [145-150)      369     72      9     63
18 months   ki1000304b-SAS-CompFeed    INDIA                          [150-155)      369    106     27     79
18 months   ki1000304b-SAS-CompFeed    INDIA                          [155-160)      369    118     48     70
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=160           93      1      0      1
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          <145            93     13      1     12
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          [145-150)       93     32      0     32
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          [150-155)       93     32      4     28
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          [155-160)       93     15      5     10
18 months   ki1017093-NIH-Birth        BANGLADESH                     >=160          497     18     16      2
18 months   ki1017093-NIH-Birth        BANGLADESH                     <145           497     84      9     75
18 months   ki1017093-NIH-Birth        BANGLADESH                     [145-150)      497    168     48    120
18 months   ki1017093-NIH-Birth        BANGLADESH                     [150-155)      497    152     62     90
18 months   ki1017093-NIH-Birth        BANGLADESH                     [155-160)      497     75     39     36
18 months   ki1017093b-PROVIDE         BANGLADESH                     >=160          603     32     28      4
18 months   ki1017093b-PROVIDE         BANGLADESH                     <145           603     75     27     48
18 months   ki1017093b-PROVIDE         BANGLADESH                     [145-150)      603    210    119     91
18 months   ki1017093b-PROVIDE         BANGLADESH                     [150-155)      603    190    106     84
18 months   ki1017093b-PROVIDE         BANGLADESH                     [155-160)      603     96     72     24
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=160          715     20     18      2
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     <145           715    103     44     59
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     [145-150)      715    231    109    122
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     [150-155)      715    245    146     99
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     [155-160)      715    116     81     35
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=160         1433    419    316    103
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <145          1433     25     13     12
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [145-150)     1433    110     39     71
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [150-155)     1433    399    208    191
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [155-160)     1433    480    278    202
18 months   ki1101329-Keneba           GAMBIA                         >=160         2044   1044    610    434
18 months   ki1101329-Keneba           GAMBIA                         <145          2044      7      1      6
18 months   ki1101329-Keneba           GAMBIA                         [145-150)     2044     29      5     24
18 months   ki1101329-Keneba           GAMBIA                         [150-155)     2044    315    111    204
18 months   ki1101329-Keneba           GAMBIA                         [155-160)     2044    649    276    373
18 months   ki1112895-Guatemala BSC    GUATEMALA                      >=160          163      8      5      3
18 months   ki1112895-Guatemala BSC    GUATEMALA                      <145           163     35      5     30
18 months   ki1112895-Guatemala BSC    GUATEMALA                      [145-150)      163     55     25     30
18 months   ki1112895-Guatemala BSC    GUATEMALA                      [150-155)      163     47     19     28
18 months   ki1112895-Guatemala BSC    GUATEMALA                      [155-160)      163     18      7     11
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=160          121     86     60     26
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <145           121      0      0      0
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [145-150)      121      2      0      2
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [150-155)      121      7      2      5
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [155-160)      121     26     13     13
18 months   ki1119695-PROBIT           BELARUS                        >=160         6353   5190   4463    727
18 months   ki1119695-PROBIT           BELARUS                        <145          6353      1      1      0
18 months   ki1119695-PROBIT           BELARUS                        [145-150)     6353     10      7      3
18 months   ki1119695-PROBIT           BELARUS                        [150-155)     6353    226    176     50
18 months   ki1119695-PROBIT           BELARUS                        [155-160)     6353    926    732    194
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=160         5977   2876   1620   1256
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       <145          5977     33      7     26
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       [145-150)     5977    221     66    155
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       [150-155)     5977   1027    439    588
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       [155-160)     5977   1820    885    935
18 months   ki1135781-COHORTS          GUATEMALA                      >=160          431     15      4     11
18 months   ki1135781-COHORTS          GUATEMALA                      <145           431    105      7     98
18 months   ki1135781-COHORTS          GUATEMALA                      [145-150)      431    145     25    120
18 months   ki1135781-COHORTS          GUATEMALA                      [150-155)      431    126     25    101
18 months   ki1135781-COHORTS          GUATEMALA                      [155-160)      431     40     10     30
18 months   ki1135781-COHORTS          PHILIPPINES                    >=160         2632    113     75     38
18 months   ki1135781-COHORTS          PHILIPPINES                    <145          2632    274     41    233
18 months   ki1135781-COHORTS          PHILIPPINES                    [145-150)     2632    833    257    576
18 months   ki1135781-COHORTS          PHILIPPINES                    [150-155)     2632    982    421    561
18 months   ki1135781-COHORTS          PHILIPPINES                    [155-160)     2632    430    215    215
18 months   ki1148112-LCNI-5           MALAWI                         >=160          673    196    111     85
18 months   ki1148112-LCNI-5           MALAWI                         <145           673     11      2      9
18 months   ki1148112-LCNI-5           MALAWI                         [145-150)      673     71     20     51
18 months   ki1148112-LCNI-5           MALAWI                         [150-155)      673    172     60    112
18 months   ki1148112-LCNI-5           MALAWI                         [155-160)      673    223    108    115
18 months   kiGH5241-JiVitA-3          BANGLADESH                     >=160         7312    189    139     50
18 months   kiGH5241-JiVitA-3          BANGLADESH                     <145          7312   1259    314    945
18 months   kiGH5241-JiVitA-3          BANGLADESH                     [145-150)     7312   2486    992   1494
18 months   kiGH5241-JiVitA-3          BANGLADESH                     [150-155)     7312   2410   1244   1166
18 months   kiGH5241-JiVitA-3          BANGLADESH                     [155-160)     7312    968    647    321
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=160          219      4      3      1
24 months   ki0047075b-MAL-ED          BANGLADESH                     <145           219     49     11     38
24 months   ki0047075b-MAL-ED          BANGLADESH                     [145-150)      219     81     25     56
24 months   ki0047075b-MAL-ED          BANGLADESH                     [150-155)      219     67     32     35
24 months   ki0047075b-MAL-ED          BANGLADESH                     [155-160)      219     18     12      6
24 months   ki0047075b-MAL-ED          BRAZIL                         >=160          176     50     41      9
24 months   ki0047075b-MAL-ED          BRAZIL                         <145           176      7      5      2
24 months   ki0047075b-MAL-ED          BRAZIL                         [145-150)      176     26     21      5
24 months   ki0047075b-MAL-ED          BRAZIL                         [150-155)      176     44     32     12
24 months   ki0047075b-MAL-ED          BRAZIL                         [155-160)      176     49     37     12
24 months   ki0047075b-MAL-ED          INDIA                          >=160          227     13      9      4
24 months   ki0047075b-MAL-ED          INDIA                          <145           227     26      6     20
24 months   ki0047075b-MAL-ED          INDIA                          [145-150)      227     69     18     51
24 months   ki0047075b-MAL-ED          INDIA                          [150-155)      227     79     31     48
24 months   ki0047075b-MAL-ED          INDIA                          [155-160)      227     40     22     18
24 months   ki0047075b-MAL-ED          NEPAL                          >=160          229      4      4      0
24 months   ki0047075b-MAL-ED          NEPAL                          <145           229     37     12     25
24 months   ki0047075b-MAL-ED          NEPAL                          [145-150)      229     83     55     28
24 months   ki0047075b-MAL-ED          NEPAL                          [150-155)      229     71     47     24
24 months   ki0047075b-MAL-ED          NEPAL                          [155-160)      229     34     31      3
24 months   ki0047075b-MAL-ED          PERU                           >=160          218     11      4      7
24 months   ki0047075b-MAL-ED          PERU                           <145           218     34      5     29
24 months   ki0047075b-MAL-ED          PERU                           [145-150)      218     80     22     58
24 months   ki0047075b-MAL-ED          PERU                           [150-155)      218     56     15     41
24 months   ki0047075b-MAL-ED          PERU                           [155-160)      218     37     15     22
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=160          238    107     47     60
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <145           238      9      2      7
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [145-150)      238     13      2     11
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [150-155)      238     36     14     22
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [155-160)      238     73     27     46
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=160          228     57     11     46
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <145           228      8      0      8
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [145-150)      228     23      0     23
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [150-155)      228     64      5     59
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [155-160)      228     76     11     65
24 months   ki1000304b-SAS-CompFeed    INDIA                          >=160           39      9      5      4
24 months   ki1000304b-SAS-CompFeed    INDIA                          <145            39      5      0      5
24 months   ki1000304b-SAS-CompFeed    INDIA                          [145-150)       39      4      0      4
24 months   ki1000304b-SAS-CompFeed    INDIA                          [150-155)       39      7      0      7
24 months   ki1000304b-SAS-CompFeed    INDIA                          [155-160)       39     14      8      6
24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=160            9      0      0      0
24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <145             9      2      0      2
24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [145-150)        9      3      0      3
24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [150-155)        9      3      0      3
24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [155-160)        9      1      1      0
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=160          470     16     13      3
24 months   ki1017093-NIH-Birth        BANGLADESH                     <145           470     81      1     80
24 months   ki1017093-NIH-Birth        BANGLADESH                     [145-150)      470    162     28    134
24 months   ki1017093-NIH-Birth        BANGLADESH                     [150-155)      470    144     47     97
24 months   ki1017093-NIH-Birth        BANGLADESH                     [155-160)      470     67     26     41
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=160          581     32     26      6
24 months   ki1017093b-PROVIDE         BANGLADESH                     <145           581     74     21     53
24 months   ki1017093b-PROVIDE         BANGLADESH                     [145-150)      581    199     99    100
24 months   ki1017093b-PROVIDE         BANGLADESH                     [150-155)      581    186     96     90
24 months   ki1017093b-PROVIDE         BANGLADESH                     [155-160)      581     90     60     30
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=160          634     18     15      3
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <145           634     90     29     61
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [145-150)      634    206     89    117
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [150-155)      634    216    112    104
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [155-160)      634    104     71     33
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=160          949    275    203     72
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <145           949     15      6      9
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [145-150)      949     81     29     52
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [150-155)      949    267    122    145
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [155-160)      949    311    178    133
24 months   ki1101329-Keneba           GAMBIA                         >=160         1996   1005    524    481
24 months   ki1101329-Keneba           GAMBIA                         <145          1996      7      1      6
24 months   ki1101329-Keneba           GAMBIA                         [145-150)     1996     32      2     30
24 months   ki1101329-Keneba           GAMBIA                         [150-155)     1996    304     95    209
24 months   ki1101329-Keneba           GAMBIA                         [155-160)     1996    648    217    431
24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=160          538    372    243    129
24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <145           538      1      0      1
24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [145-150)      538     12      5      7
24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [150-155)      538     33     14     19
24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [155-160)      538    120     53     67
24 months   ki1119695-PROBIT           BELARUS                        >=160         2063   1723   1394    329
24 months   ki1119695-PROBIT           BELARUS                        <145          2063      0      0      0
24 months   ki1119695-PROBIT           BELARUS                        [145-150)     2063      2      2      0
24 months   ki1119695-PROBIT           BELARUS                        [150-155)     2063     64     45     19
24 months   ki1119695-PROBIT           BELARUS                        [155-160)     2063    274    200     74
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=160         1516    721    228    493
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <145          1516     15      3     12
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [145-150)     1516     66     13     53
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [150-155)     1516    261     51    210
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [155-160)     1516    453    108    345
24 months   ki1135781-COHORTS          GUATEMALA                      >=160          447     15      3     12
24 months   ki1135781-COHORTS          GUATEMALA                      <145           447     96      2     94
24 months   ki1135781-COHORTS          GUATEMALA                      [145-150)      447    162     13    149
24 months   ki1135781-COHORTS          GUATEMALA                      [150-155)      447    132     18    114
24 months   ki1135781-COHORTS          GUATEMALA                      [155-160)      447     42      9     33
24 months   ki1135781-COHORTS          PHILIPPINES                    >=160         2562    110     59     51
24 months   ki1135781-COHORTS          PHILIPPINES                    <145          2562    268     24    244
24 months   ki1135781-COHORTS          PHILIPPINES                    [145-150)     2562    806    144    662
24 months   ki1135781-COHORTS          PHILIPPINES                    [150-155)     2562    955    249    706
24 months   ki1135781-COHORTS          PHILIPPINES                    [155-160)     2562    423    158    265
24 months   ki1148112-LCNI-5           MALAWI                         >=160          723    203     96    107
24 months   ki1148112-LCNI-5           MALAWI                         <145           723     11      1     10
24 months   ki1148112-LCNI-5           MALAWI                         [145-150)      723     78     11     67
24 months   ki1148112-LCNI-5           MALAWI                         [150-155)      723    187     48    139
24 months   ki1148112-LCNI-5           MALAWI                         [155-160)      723    244     96    148
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=160            3      0      0      0
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <145             3      0      0      0
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [145-150)        3      2      2      0
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [150-155)        3      1      0      1
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [155-160)        3      0      0      0


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
* agecat: 12 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
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
* agecat: 18 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 18 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 18 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 18 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 18 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 18 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 18 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 18 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
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
* agecat: 3 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3 months, studyid: ki1101329-Keneba, country: GAMBIA
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
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 3 months, studyid: ki1119695-PROBIT, country: BELARUS
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
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 12 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 12 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 12 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 12 months, studyid: ki1119695-PROBIT, country: BELARUS
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
* agecat: 18 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 18 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 18 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 18 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 18 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 18 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
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
## Warning: Removed 40 rows containing missing values (geom_errorbar).
```

![](/tmp/8fa65824-480c-4aad-a1fc-28543500262d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->


```
## Warning: Removed 60 rows containing missing values (geom_errorbar).
```

![](/tmp/8fa65824-480c-4aad-a1fc-28543500262d/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


```
## Warning: Removed 8 rows containing missing values (geom_errorbar).
```

![](/tmp/8fa65824-480c-4aad-a1fc-28543500262d/REPORT_files/figure-html/plot_paf-1.png)<!-- -->


```
## Warning: Removed 8 rows containing missing values (geom_errorbar).
```

![](/tmp/8fa65824-480c-4aad-a1fc-28543500262d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=160                NA                0.1562500   0.0671198   0.2453802
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <145                 NA                0.5000000   0.1894954   0.8105046
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [145-150)            NA                0.5769231   0.3866489   0.7671973
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [150-155)            NA                0.2686567   0.1623110   0.3750025
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [155-160)            NA                0.3707865   0.2702407   0.4713323
3 months    ki1000304b-SAS-CompFeed    INDIA                          >=160                NA                0.1896552          NA          NA
3 months    ki1000304b-SAS-CompFeed    INDIA                          <145                 NA                0.4074074          NA          NA
3 months    ki1000304b-SAS-CompFeed    INDIA                          [145-150)            NA                0.4375000          NA          NA
3 months    ki1000304b-SAS-CompFeed    INDIA                          [150-155)            NA                0.3437500          NA          NA
3 months    ki1000304b-SAS-CompFeed    INDIA                          [155-160)            NA                0.3306452          NA          NA
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=160                NA                0.0534125   0.0364335   0.0703915
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <145                 NA                0.2000000   0.0674541   0.3325459
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [145-150)            NA                0.1793478   0.1239033   0.2347924
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [150-155)            NA                0.1171032   0.0923600   0.1418465
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [155-160)            NA                0.1044226   0.0834101   0.1254351
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=160                NA                0.1960984   0.1850045   0.2071922
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       <145                 NA                0.4062500   0.2859187   0.5265813
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       [145-150)            NA                0.3322785   0.2803417   0.3842153
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       [150-155)            NA                0.2875616   0.2655467   0.3095765
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       [155-160)            NA                0.2404409   0.2248945   0.2559874
3 months    ki1135781-COHORTS          INDIA                          >=160                NA                0.0909091   0.0454929   0.1363253
3 months    ki1135781-COHORTS          INDIA                          <145                 NA                0.3173653   0.2467531   0.3879775
3 months    ki1135781-COHORTS          INDIA                          [145-150)            NA                0.2217822   0.1855385   0.2580259
3 months    ki1135781-COHORTS          INDIA                          [150-155)            NA                0.1622465   0.1336981   0.1907948
3 months    ki1135781-COHORTS          INDIA                          [155-160)            NA                0.0938272   0.0654214   0.1222329
3 months    ki1135781-COHORTS          PHILIPPINES                    >=160                NA                0.0461538   0.0100802   0.0822275
3 months    ki1135781-COHORTS          PHILIPPINES                    <145                 NA                0.2844037   0.2354994   0.3333080
3 months    ki1135781-COHORTS          PHILIPPINES                    [145-150)            NA                0.1742739   0.1503233   0.1982244
3 months    ki1135781-COHORTS          PHILIPPINES                    [150-155)            NA                0.1173875   0.0986418   0.1361331
3 months    ki1135781-COHORTS          PHILIPPINES                    [155-160)            NA                0.0836653   0.0594402   0.1078905
3 months    kiGH5241-JiVitA-3          BANGLADESH                     >=160                NA                0.1930836          NA          NA
3 months    kiGH5241-JiVitA-3          BANGLADESH                     <145                 NA                0.5701207          NA          NA
3 months    kiGH5241-JiVitA-3          BANGLADESH                     [145-150)            NA                0.4390298          NA          NA
3 months    kiGH5241-JiVitA-3          BANGLADESH                     [150-155)            NA                0.3494088          NA          NA
3 months    kiGH5241-JiVitA-3          BANGLADESH                     [155-160)            NA                0.2529412          NA          NA
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=160                NA                0.2765957          NA          NA
6 months    ki1000304b-SAS-CompFeed    INDIA                          <145                 NA                0.4705882          NA          NA
6 months    ki1000304b-SAS-CompFeed    INDIA                          [145-150)            NA                0.6406250          NA          NA
6 months    ki1000304b-SAS-CompFeed    INDIA                          [150-155)            NA                0.4042553          NA          NA
6 months    ki1000304b-SAS-CompFeed    INDIA                          [155-160)            NA                0.3883495          NA          NA
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=160                NA                0.1181102   0.0930023   0.1432182
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <145                 NA                0.2941176   0.1409264   0.4473089
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [145-150)            NA                0.3352941   0.2643118   0.4062764
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [150-155)            NA                0.2594417   0.2246210   0.2942624
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [155-160)            NA                0.1821809   0.1545866   0.2097751
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=160                NA                0.2538562   0.2400630   0.2676494
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <145                 NA                0.3913043   0.2502602   0.5323485
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [145-150)            NA                0.4682540   0.4066414   0.5298665
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [150-155)            NA                0.3689628   0.3423498   0.3955758
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [155-160)            NA                0.3164273   0.2971144   0.3357402
6 months    ki1135781-COHORTS          PHILIPPINES                    >=160                NA                0.0530973   0.0117474   0.0944473
6 months    ki1135781-COHORTS          PHILIPPINES                    <145                 NA                0.4763514   0.4194447   0.5332580
6 months    ki1135781-COHORTS          PHILIPPINES                    [145-150)            NA                0.2959641   0.2660029   0.3259254
6 months    ki1135781-COHORTS          PHILIPPINES                    [150-155)            NA                0.2061361   0.1815815   0.2306908
6 months    ki1135781-COHORTS          PHILIPPINES                    [155-160)            NA                0.1623377   0.1287060   0.1959693
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=160                NA                0.1821862          NA          NA
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <145                 NA                0.5985790          NA          NA
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [145-150)            NA                0.4679039          NA          NA
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [150-155)            NA                0.3732304          NA          NA
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [155-160)            NA                0.2544861          NA          NA
12 months   ki0047075b-MAL-ED          PERU                           >=160                NA                0.5000000   0.2165763   0.7834237
12 months   ki0047075b-MAL-ED          PERU                           <145                 NA                0.7567568   0.6182552   0.8952583
12 months   ki0047075b-MAL-ED          PERU                           [145-150)            NA                0.5148515   0.4172010   0.6125020
12 months   ki0047075b-MAL-ED          PERU                           [150-155)            NA                0.4794521   0.3646371   0.5942670
12 months   ki0047075b-MAL-ED          PERU                           [155-160)            NA                0.4130435   0.2704897   0.5555973
12 months   ki1000304b-SAS-CompFeed    INDIA                          >=160                NA                0.3962264          NA          NA
12 months   ki1000304b-SAS-CompFeed    INDIA                          <145                 NA                0.6818182          NA          NA
12 months   ki1000304b-SAS-CompFeed    INDIA                          [145-150)            NA                0.7746479          NA          NA
12 months   ki1000304b-SAS-CompFeed    INDIA                          [150-155)            NA                0.6160714          NA          NA
12 months   ki1000304b-SAS-CompFeed    INDIA                          [155-160)            NA                0.5128205          NA          NA
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=160                NA                0.1939502   0.1612525   0.2266478
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <145                 NA                0.4062500   0.2360411   0.5764589
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [145-150)            NA                0.5197368   0.4402915   0.5991822
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [150-155)            NA                0.3926606   0.3516510   0.4336701
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [155-160)            NA                0.3060921   0.2712642   0.3409201
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=160                NA                0.3280309   0.3137441   0.3423176
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       <145                 NA                0.5510204   0.4117454   0.6902955
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       [145-150)            NA                0.5878136   0.5300521   0.6455752
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       [150-155)            NA                0.4612038   0.4348920   0.4875156
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       [155-160)            NA                0.4109756   0.3915318   0.4304194
12 months   ki1135781-COHORTS          GUATEMALA                      >=160                NA                0.6470588   0.4196777   0.8744400
12 months   ki1135781-COHORTS          GUATEMALA                      <145                 NA                0.8655462   0.8041963   0.9268961
12 months   ki1135781-COHORTS          GUATEMALA                      [145-150)            NA                0.6989796   0.6347022   0.7632570
12 months   ki1135781-COHORTS          GUATEMALA                      [150-155)            NA                0.6774194   0.6037583   0.7510804
12 months   ki1135781-COHORTS          GUATEMALA                      [155-160)            NA                0.6521739   0.5144086   0.7899392
12 months   ki1135781-COHORTS          INDIA                          >=160                NA                0.1920530   0.1292067   0.2548992
12 months   ki1135781-COHORTS          INDIA                          <145                 NA                0.5680473   0.4933452   0.6427494
12 months   ki1135781-COHORTS          INDIA                          [145-150)            NA                0.4729459   0.4291283   0.5167635
12 months   ki1135781-COHORTS          INDIA                          [150-155)            NA                0.3688394   0.3311231   0.4065557
12 months   ki1135781-COHORTS          INDIA                          [155-160)            NA                0.2191436   0.1784411   0.2598460
12 months   ki1135781-COHORTS          PHILIPPINES                    >=160                NA                0.1578947   0.0909462   0.2248433
12 months   ki1135781-COHORTS          PHILIPPINES                    <145                 NA                0.6907216   0.6376080   0.7438353
12 months   ki1135781-COHORTS          PHILIPPINES                    [145-150)            NA                0.5085519   0.4754591   0.5416447
12 months   ki1135781-COHORTS          PHILIPPINES                    [150-155)            NA                0.3960784   0.3660587   0.4260982
12 months   ki1135781-COHORTS          PHILIPPINES                    [155-160)            NA                0.3108696   0.2685650   0.3531742
12 months   kiGH5241-JiVitA-3          BANGLADESH                     >=160                NA                0.2017544          NA          NA
12 months   kiGH5241-JiVitA-3          BANGLADESH                     <145                 NA                0.6340629          NA          NA
12 months   kiGH5241-JiVitA-3          BANGLADESH                     [145-150)            NA                0.5124290          NA          NA
12 months   kiGH5241-JiVitA-3          BANGLADESH                     [150-155)            NA                0.3890710          NA          NA
12 months   kiGH5241-JiVitA-3          BANGLADESH                     [155-160)            NA                0.2636364          NA          NA
18 months   ki1000304b-SAS-CompFeed    INDIA                          >=160                NA                0.4705882          NA          NA
18 months   ki1000304b-SAS-CompFeed    INDIA                          <145                 NA                0.7727273          NA          NA
18 months   ki1000304b-SAS-CompFeed    INDIA                          [145-150)            NA                0.8750000          NA          NA
18 months   ki1000304b-SAS-CompFeed    INDIA                          [150-155)            NA                0.7452830          NA          NA
18 months   ki1000304b-SAS-CompFeed    INDIA                          [155-160)            NA                0.5932203          NA          NA
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=160                NA                0.2458234   0.2045813   0.2870655
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <145                 NA                0.4800000   0.2840921   0.6759079
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [145-150)            NA                0.6454545   0.5560268   0.7348823
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [150-155)            NA                0.4786967   0.4296637   0.5277298
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [155-160)            NA                0.4208333   0.3766523   0.4650144
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=160                NA                0.4367177   0.4185895   0.4548458
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       <145                 NA                0.7878788   0.6483868   0.9273708
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       [145-150)            NA                0.7013575   0.6410135   0.7617014
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       [150-155)            NA                0.5725414   0.5422827   0.6028000
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       [155-160)            NA                0.5137363   0.4907719   0.5367006
18 months   ki1135781-COHORTS          PHILIPPINES                    >=160                NA                0.3362832   0.2491597   0.4234067
18 months   ki1135781-COHORTS          PHILIPPINES                    <145                 NA                0.8503650   0.8081200   0.8926099
18 months   ki1135781-COHORTS          PHILIPPINES                    [145-150)            NA                0.6914766   0.6601047   0.7228485
18 months   ki1135781-COHORTS          PHILIPPINES                    [150-155)            NA                0.5712831   0.5403242   0.6022420
18 months   ki1135781-COHORTS          PHILIPPINES                    [155-160)            NA                0.5000000   0.4527321   0.5472679
18 months   kiGH5241-JiVitA-3          BANGLADESH                     >=160                NA                0.2645503          NA          NA
18 months   kiGH5241-JiVitA-3          BANGLADESH                     <145                 NA                0.7505957          NA          NA
18 months   kiGH5241-JiVitA-3          BANGLADESH                     [145-150)            NA                0.6009654          NA          NA
18 months   kiGH5241-JiVitA-3          BANGLADESH                     [150-155)            NA                0.4838174          NA          NA
18 months   kiGH5241-JiVitA-3          BANGLADESH                     [155-160)            NA                0.3316116          NA          NA
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=160                NA                0.1875000   0.0521496   0.3228504
24 months   ki1017093b-PROVIDE         BANGLADESH                     <145                 NA                0.7162162   0.6134093   0.8190231
24 months   ki1017093b-PROVIDE         BANGLADESH                     [145-150)            NA                0.5025126   0.4329845   0.5720406
24 months   ki1017093b-PROVIDE         BANGLADESH                     [150-155)            NA                0.4838710   0.4119907   0.5557512
24 months   ki1017093b-PROVIDE         BANGLADESH                     [155-160)            NA                0.3333333   0.2358580   0.4308086
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=160                NA                0.2618182   0.2098315   0.3138049
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <145                 NA                0.6000000   0.3519513   0.8480487
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [145-150)            NA                0.6419753   0.5375153   0.7464353
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [150-155)            NA                0.5430712   0.4832887   0.6028537
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [155-160)            NA                0.4276527   0.3726389   0.4826666
24 months   ki1135781-COHORTS          PHILIPPINES                    >=160                NA                0.4636364   0.3704280   0.5568447
24 months   ki1135781-COHORTS          PHILIPPINES                    <145                 NA                0.9104478   0.8762552   0.9446403
24 months   ki1135781-COHORTS          PHILIPPINES                    [145-150)            NA                0.8213400   0.7948890   0.8477909
24 months   ki1135781-COHORTS          PHILIPPINES                    [150-155)            NA                0.7392670   0.7114167   0.7671173
24 months   ki1135781-COHORTS          PHILIPPINES                    [155-160)            NA                0.6264775   0.5803698   0.6725853


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3164063   0.2593242   0.3734883
3 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.3405276          NA          NA
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1005942   0.0884459   0.1127426
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2300570   0.2217358   0.2383782
3 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.1714744   0.1543953   0.1885534
3 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1446335   0.1321610   0.1571060
3 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4034441          NA          NA
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.4307692          NA          NA
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1986364   0.1819608   0.2153119
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2991857   0.2888998   0.3094716
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2498218   0.2338012   0.2658424
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4254473          NA          NA
12 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.5204461   0.4606342   0.5802580
12 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.5866667          NA          NA
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3161914   0.2956216   0.3367613
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.3846801   0.3742229   0.3951374
12 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7242026   0.6862259   0.7621793
12 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.3685637   0.3465451   0.3905822
12 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.4388125   0.4203024   0.4573225
12 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4519219          NA          NA
18 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.6856369          NA          NA
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4040475   0.3786320   0.4294630
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.4952317   0.4825554   0.5079080
18 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6166413   0.5980630   0.6352197
18 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.5437637          NA          NA
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.4802065   0.4395469   0.5208662
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4330875   0.4015454   0.4646295
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.7525371   0.7358238   0.7692504


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=160                >=160             1.0000000   1.0000000    1.000000
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <145                 >=160             3.2000000   1.3770108    7.436398
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [145-150)            >=160             3.6923077   1.9104474    7.136096
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [150-155)            >=160             1.7194030   0.8586906    3.442854
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [155-160)            >=160             2.3730337   1.2618295    4.462797
3 months    ki1000304b-SAS-CompFeed    INDIA                          >=160                >=160             1.0000000          NA          NA
3 months    ki1000304b-SAS-CompFeed    INDIA                          <145                 >=160             2.1481481          NA          NA
3 months    ki1000304b-SAS-CompFeed    INDIA                          [145-150)            >=160             2.3068182          NA          NA
3 months    ki1000304b-SAS-CompFeed    INDIA                          [150-155)            >=160             1.8125000          NA          NA
3 months    ki1000304b-SAS-CompFeed    INDIA                          [155-160)            >=160             1.7434018          NA          NA
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=160                >=160             1.0000000   1.0000000    1.000000
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <145                 >=160             3.7444444   1.7954377    7.809162
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [145-150)            >=160             3.3577898   2.1551552    5.231527
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [150-155)            >=160             2.1924328   1.4967713    3.211420
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [155-160)            >=160             1.9550232   1.3420270    2.848017
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=160                >=160             1.0000000   1.0000000    1.000000
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       <145                 >=160             2.0716645   1.5323431    2.800805
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       [145-150)            >=160             1.6944481   1.4349485    2.000876
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       [150-155)            >=160             1.4664150   1.3332624    1.612866
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       [155-160)            >=160             1.2261241   1.1251815    1.336123
3 months    ki1135781-COHORTS          INDIA                          >=160                >=160             1.0000000   1.0000000    1.000000
3 months    ki1135781-COHORTS          INDIA                          <145                 >=160             3.4910176   2.0204267    6.031995
3 months    ki1135781-COHORTS          INDIA                          [145-150)            >=160             2.4396037   1.4422546    4.126640
3 months    ki1135781-COHORTS          INDIA                          [150-155)            >=160             1.7847112   1.0508475    3.031072
3 months    ki1135781-COHORTS          INDIA                          [155-160)            >=160             1.0320987   0.5754761    1.851037
3 months    ki1135781-COHORTS          PHILIPPINES                    >=160                >=160             1.0000000   1.0000000    1.000000
3 months    ki1135781-COHORTS          PHILIPPINES                    <145                 >=160             6.1620794   2.7680025   13.717915
3 months    ki1135781-COHORTS          PHILIPPINES                    [145-150)            >=160             3.7759335   1.7075517    8.349776
3 months    ki1135781-COHORTS          PHILIPPINES                    [150-155)            >=160             2.5433951   1.1454030    5.647670
3 months    ki1135781-COHORTS          PHILIPPINES                    [155-160)            >=160             1.8127490   0.7876817    4.171811
3 months    kiGH5241-JiVitA-3          BANGLADESH                     >=160                >=160             1.0000000          NA          NA
3 months    kiGH5241-JiVitA-3          BANGLADESH                     <145                 >=160             2.9527146          NA          NA
3 months    kiGH5241-JiVitA-3          BANGLADESH                     [145-150)            >=160             2.2737810          NA          NA
3 months    kiGH5241-JiVitA-3          BANGLADESH                     [150-155)            >=160             1.8096245          NA          NA
3 months    kiGH5241-JiVitA-3          BANGLADESH                     [155-160)            >=160             1.3100088          NA          NA
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=160                >=160             1.0000000          NA          NA
6 months    ki1000304b-SAS-CompFeed    INDIA                          <145                 >=160             1.7013575          NA          NA
6 months    ki1000304b-SAS-CompFeed    INDIA                          [145-150)            >=160             2.3161058          NA          NA
6 months    ki1000304b-SAS-CompFeed    INDIA                          [150-155)            >=160             1.4615385          NA          NA
6 months    ki1000304b-SAS-CompFeed    INDIA                          [155-160)            >=160             1.4040329          NA          NA
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=160                >=160             1.0000000   1.0000000    1.000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <145                 >=160             2.4901961   1.4187835    4.370699
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [145-150)            >=160             2.8388235   2.1030241    3.832062
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [150-155)            >=160             2.1966065   1.7083191    2.824461
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [155-160)            >=160             1.5424645   1.1881051    2.002514
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=160                >=160             1.0000000   1.0000000    1.000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <145                 >=160             1.5414409   1.0705785    2.219398
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [145-150)            >=160             1.8445638   1.5998122    2.126759
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [150-155)            >=160             1.4534322   1.3279326    1.590792
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [155-160)            >=160             1.2464824   1.1486757    1.352617
6 months    ki1135781-COHORTS          PHILIPPINES                    >=160                >=160             1.0000000   1.0000000    1.000000
6 months    ki1135781-COHORTS          PHILIPPINES                    <145                 >=160             8.9712838   4.0802612   19.725191
6 months    ki1135781-COHORTS          PHILIPPINES                    [145-150)            >=160             5.5739910   2.5416186   12.224248
6 months    ki1135781-COHORTS          PHILIPPINES                    [150-155)            >=160             3.8822307   1.7657833    8.535427
6 months    ki1135781-COHORTS          PHILIPPINES                    [155-160)            >=160             3.0573593   1.3657558    6.844156
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=160                >=160             1.0000000          NA          NA
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <145                 >=160             3.2855338          NA          NA
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [145-150)            >=160             2.5682723          NA          NA
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [150-155)            >=160             2.0486200          NA          NA
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [155-160)            >=160             1.3968461          NA          NA
12 months   ki0047075b-MAL-ED          PERU                           >=160                >=160             1.0000000   1.0000000    1.000000
12 months   ki0047075b-MAL-ED          PERU                           <145                 >=160             1.5135135   0.8342456    2.745862
12 months   ki0047075b-MAL-ED          PERU                           [145-150)            >=160             1.0297030   0.5663932    1.872000
12 months   ki0047075b-MAL-ED          PERU                           [150-155)            >=160             0.9589041   0.5182385    1.774274
12 months   ki0047075b-MAL-ED          PERU                           [155-160)            >=160             0.8260870   0.4254087    1.604151
12 months   ki1000304b-SAS-CompFeed    INDIA                          >=160                >=160             1.0000000          NA          NA
12 months   ki1000304b-SAS-CompFeed    INDIA                          <145                 >=160             1.7207792          NA          NA
12 months   ki1000304b-SAS-CompFeed    INDIA                          [145-150)            >=160             1.9550637          NA          NA
12 months   ki1000304b-SAS-CompFeed    INDIA                          [150-155)            >=160             1.5548469          NA          NA
12 months   ki1000304b-SAS-CompFeed    INDIA                          [155-160)            >=160             1.2942613          NA          NA
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=160                >=160             1.0000000   1.0000000    1.000000
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <145                 >=160             2.0946101   1.3334177    3.290335
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [145-150)            >=160             2.6797441   2.1343316    3.364533
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [150-155)            >=160             2.0245434   1.6603480    2.468625
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [155-160)            >=160             1.5781998   1.2877450    1.934167
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=160                >=160             1.0000000   1.0000000    1.000000
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       <145                 >=160             1.6797823   1.2997616    2.170912
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       [145-150)            >=160             1.7919461   1.6093298    1.995285
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       [150-155)            >=160             1.4059768   1.3085996    1.510600
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       [155-160)            >=160             1.2528566   1.1748264    1.336069
12 months   ki1135781-COHORTS          GUATEMALA                      >=160                >=160             1.0000000   1.0000000    1.000000
12 months   ki1135781-COHORTS          GUATEMALA                      <145                 >=160             1.3376623   0.9346709    1.914407
12 months   ki1135781-COHORTS          GUATEMALA                      [145-150)            >=160             1.0802412   0.7512206    1.553367
12 months   ki1135781-COHORTS          GUATEMALA                      [150-155)            >=160             1.0469208   0.7247032    1.512403
12 months   ki1135781-COHORTS          GUATEMALA                      [155-160)            >=160             1.0079051   0.6688888    1.518747
12 months   ki1135781-COHORTS          INDIA                          >=160                >=160             1.0000000   1.0000000    1.000000
12 months   ki1135781-COHORTS          INDIA                          <145                 >=160             2.9577637   2.0787434    4.208488
12 months   ki1135781-COHORTS          INDIA                          [145-150)            >=160             2.4625803   1.7526222    3.460131
12 months   ki1135781-COHORTS          INDIA                          [150-155)            >=160             1.9205087   1.3630861    2.705885
12 months   ki1135781-COHORTS          INDIA                          [155-160)            >=160             1.1410579   0.7832415    1.662340
12 months   ki1135781-COHORTS          PHILIPPINES                    >=160                >=160             1.0000000   1.0000000    1.000000
12 months   ki1135781-COHORTS          PHILIPPINES                    <145                 >=160             4.3745704   2.8430698    6.731058
12 months   ki1135781-COHORTS          PHILIPPINES                    [145-150)            >=160             3.2208286   2.0973334    4.946155
12 months   ki1135781-COHORTS          PHILIPPINES                    [150-155)            >=160             2.5084967   1.6306117    3.859015
12 months   ki1135781-COHORTS          PHILIPPINES                    [155-160)            >=160             1.9688406   1.2612890    3.073311
12 months   kiGH5241-JiVitA-3          BANGLADESH                     >=160                >=160             1.0000000          NA          NA
12 months   kiGH5241-JiVitA-3          BANGLADESH                     <145                 >=160             3.1427467          NA          NA
12 months   kiGH5241-JiVitA-3          BANGLADESH                     [145-150)            >=160             2.5398654          NA          NA
12 months   kiGH5241-JiVitA-3          BANGLADESH                     [150-155)            >=160             1.9284391          NA          NA
12 months   kiGH5241-JiVitA-3          BANGLADESH                     [155-160)            >=160             1.3067194          NA          NA
18 months   ki1000304b-SAS-CompFeed    INDIA                          >=160                >=160             1.0000000          NA          NA
18 months   ki1000304b-SAS-CompFeed    INDIA                          <145                 >=160             1.6420455          NA          NA
18 months   ki1000304b-SAS-CompFeed    INDIA                          [145-150)            >=160             1.8593750          NA          NA
18 months   ki1000304b-SAS-CompFeed    INDIA                          [150-155)            >=160             1.5837264          NA          NA
18 months   ki1000304b-SAS-CompFeed    INDIA                          [155-160)            >=160             1.2605932          NA          NA
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=160                >=160             1.0000000   1.0000000    1.000000
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <145                 >=160             1.9526214   1.2559526    3.035728
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [145-150)            >=160             2.6256840   2.1122554    3.263912
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [150-155)            >=160             1.9473198   1.5998110    2.370314
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [155-160)            >=160             1.7119337   1.4045430    2.086598
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=160                >=160             1.0000000   1.0000000    1.000000
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       <145                 >=160             1.8040919   1.5041212    2.163886
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       [145-150)            >=160             1.6059746   1.4596577    1.766958
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       [150-155)            >=160             1.3110104   1.2258024    1.402141
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       [155-160)            >=160             1.1763579   1.1067427    1.250352
18 months   ki1135781-COHORTS          PHILIPPINES                    >=160                >=160             1.0000000   1.0000000    1.000000
18 months   ki1135781-COHORTS          PHILIPPINES                    <145                 >=160             2.5287169   1.9423804    3.292048
18 months   ki1135781-COHORTS          PHILIPPINES                    [145-150)            >=160             2.0562330   1.5806803    2.674857
18 months   ki1135781-COHORTS          PHILIPPINES                    [150-155)            >=160             1.6988155   1.3037522    2.213591
18 months   ki1135781-COHORTS          PHILIPPINES                    [155-160)            >=160             1.4868421   1.1284756    1.959014
18 months   kiGH5241-JiVitA-3          BANGLADESH                     >=160                >=160             1.0000000          NA          NA
18 months   kiGH5241-JiVitA-3          BANGLADESH                     <145                 >=160             2.8372518          NA          NA
18 months   kiGH5241-JiVitA-3          BANGLADESH                     [145-150)            >=160             2.2716492          NA          NA
18 months   kiGH5241-JiVitA-3          BANGLADESH                     [150-155)            >=160             1.8288299          NA          NA
18 months   kiGH5241-JiVitA-3          BANGLADESH                     [155-160)            >=160             1.2534917          NA          NA
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=160                >=160             1.0000000   1.0000000    1.000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     <145                 >=160             3.8198198   1.8297904    7.974150
24 months   ki1017093b-PROVIDE         BANGLADESH                     [145-150)            >=160             2.6800670   1.2850952    5.589282
24 months   ki1017093b-PROVIDE         BANGLADESH                     [150-155)            >=160             2.5806452   1.2349667    5.392639
24 months   ki1017093b-PROVIDE         BANGLADESH                     [155-160)            >=160             1.7777778   0.8158817    3.873716
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=160                >=160             1.0000000   1.0000000    1.000000
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <145                 >=160             2.2916667   1.4486808    3.625185
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [145-150)            >=160             2.4519890   1.8968298    3.169631
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [150-155)            >=160             2.0742301   1.6529414    2.602894
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [155-160)            >=160             1.6333959   1.2892636    2.069384
24 months   ki1135781-COHORTS          PHILIPPINES                    >=160                >=160             1.0000000   1.0000000    1.000000
24 months   ki1135781-COHORTS          PHILIPPINES                    <145                 >=160             1.9637108   1.6005071    2.409337
24 months   ki1135781-COHORTS          PHILIPPINES                    [145-150)            >=160             1.7715175   1.4451827    2.171542
24 months   ki1135781-COHORTS          PHILIPPINES                    [150-155)            >=160             1.5944975   1.2995546    1.956380
24 months   ki1135781-COHORTS          PHILIPPINES                    [155-160)            >=160             1.3512261   1.0908162    1.673803


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=160                NA                0.1601563    0.0751242   0.2451883
3 months    ki1000304b-SAS-CompFeed    INDIA                          >=160                NA                0.1508724           NA          NA
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=160                NA                0.0471818    0.0307220   0.0636415
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=160                NA                0.0339586    0.0256480   0.0422693
3 months    ki1135781-COHORTS          INDIA                          >=160                NA                0.0805653    0.0356769   0.1254536
3 months    ki1135781-COHORTS          PHILIPPINES                    >=160                NA                0.0984797    0.0617896   0.1351697
3 months    kiGH5241-JiVitA-3          BANGLADESH                     >=160                NA                0.2103606           NA          NA
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=160                NA                0.1541735           NA          NA
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=160                NA                0.0805261    0.0571902   0.1038620
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=160                NA                0.0453295    0.0350874   0.0555716
6 months    ki1135781-COHORTS          PHILIPPINES                    >=160                NA                0.1967245    0.1539604   0.2394886
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=160                NA                0.2432611           NA          NA
12 months   ki0047075b-MAL-ED          PERU                           >=160                NA                0.0204461   -0.2565730   0.2974652
12 months   ki1000304b-SAS-CompFeed    INDIA                          >=160                NA                0.1904403           NA          NA
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=160                NA                0.1222413    0.0925700   0.1519126
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=160                NA                0.0566493    0.0461709   0.0671276
12 months   ki1135781-COHORTS          GUATEMALA                      >=160                NA                0.0771438   -0.1461191   0.3004068
12 months   ki1135781-COHORTS          INDIA                          >=160                NA                0.1765107    0.1149643   0.2380572
12 months   ki1135781-COHORTS          PHILIPPINES                    >=160                NA                0.2809177    0.2141739   0.3476616
12 months   kiGH5241-JiVitA-3          BANGLADESH                     >=160                NA                0.2501675           NA          NA
18 months   ki1000304b-SAS-CompFeed    INDIA                          >=160                NA                0.2150486           NA          NA
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=160                NA                0.1582241    0.1214520   0.1949962
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=160                NA                0.0585141    0.0453588   0.0716693
18 months   ki1135781-COHORTS          PHILIPPINES                    >=160                NA                0.2803582    0.1950124   0.3657039
18 months   kiGH5241-JiVitA-3          BANGLADESH                     >=160                NA                0.2792134           NA          NA
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=160                NA                0.2927065    0.1587106   0.4267025
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=160                NA                0.1712693    0.1251044   0.2174342
24 months   ki1135781-COHORTS          PHILIPPINES                    >=160                NA                0.2889007    0.1982304   0.3795711


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=160                NA                0.5061728    0.1636392   0.7084210
3 months    ki1000304b-SAS-CompFeed    INDIA                          >=160                NA                0.4430549           NA          NA
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=160                NA                0.4690305    0.2893767   0.6032658
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=160                NA                0.1476096    0.1109115   0.1827930
3 months    ki1135781-COHORTS          INDIA                          >=160                NA                0.4698385    0.1367052   0.6744204
3 months    ki1135781-COHORTS          PHILIPPINES                    >=160                NA                0.6808910    0.3068444   0.8530914
3 months    kiGH5241-JiVitA-3          BANGLADESH                     >=160                NA                0.5214119           NA          NA
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=160                NA                0.3579027           NA          NA
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=160                NA                0.4053947    0.2797925   0.5090922
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=160                NA                0.1515096    0.1166903   0.1849563
6 months    ki1135781-COHORTS          PHILIPPINES                    >=160                NA                0.7874591    0.5387885   0.9020544
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=160                NA                0.5717772           NA          NA
12 months   ki0047075b-MAL-ED          PERU                           >=160                NA                0.0392857   -0.6719349   0.4479618
12 months   ki1000304b-SAS-CompFeed    INDIA                          >=160                NA                0.3246141           NA          NA
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=160                NA                0.3866052    0.2869181   0.4723563
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=160                NA                0.1472633    0.1195644   0.1740909
12 months   ki1135781-COHORTS          GUATEMALA                      >=160                NA                0.1065224   -0.2618991   0.3673803
12 months   ki1135781-COHORTS          INDIA                          >=160                NA                0.4789151    0.2833903   0.6210915
12 months   ki1135781-COHORTS          PHILIPPINES                    >=160                NA                0.6401772    0.4524797   0.7635294
12 months   kiGH5241-JiVitA-3          BANGLADESH                     >=160                NA                0.5535636           NA          NA
18 months   ki1000304b-SAS-CompFeed    INDIA                          >=160                NA                0.3136480           NA          NA
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=160                NA                0.3915977    0.2941084   0.4756230
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=160                NA                0.1181549    0.0910577   0.1444443
18 months   ki1135781-COHORTS          PHILIPPINES                    >=160                NA                0.4546535    0.2964433   0.5772867
18 months   kiGH5241-JiVitA-3          BANGLADESH                     >=160                NA                0.5134830           NA          NA
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=160                NA                0.6095430    0.2048348   0.8082704
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=160                NA                0.3954612    0.2792459   0.4929378
24 months   ki1135781-COHORTS          PHILIPPINES                    >=160                NA                0.3839023    0.2498227   0.4940178
