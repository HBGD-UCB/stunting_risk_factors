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

**Intervention Variable:** mage

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        A              n     nA   nAY0   nAY1
----------  -------------------------  -----------------------------  --------  ------  -----  -----  -----
3 months    ki0047075b-MAL-ED          BANGLADESH                     <20          265     37     24     13
3 months    ki0047075b-MAL-ED          BANGLADESH                     [20-25)      265     89     61     28
3 months    ki0047075b-MAL-ED          BANGLADESH                     [25-30)      265     93     73     20
3 months    ki0047075b-MAL-ED          BANGLADESH                     >=30         265     46     29     17
3 months    ki0047075b-MAL-ED          BRAZIL                         <20          233     43     37      6
3 months    ki0047075b-MAL-ED          BRAZIL                         [20-25)      233     74     61     13
3 months    ki0047075b-MAL-ED          BRAZIL                         [25-30)      233     65     52     13
3 months    ki0047075b-MAL-ED          BRAZIL                         >=30         233     51     45      6
3 months    ki0047075b-MAL-ED          INDIA                          <20          249     34     22     12
3 months    ki0047075b-MAL-ED          INDIA                          [20-25)      249    111     80     31
3 months    ki0047075b-MAL-ED          INDIA                          [25-30)      249     83     63     20
3 months    ki0047075b-MAL-ED          INDIA                          >=30         249     21     18      3
3 months    ki0047075b-MAL-ED          NEPAL                          <20          240      5      2      3
3 months    ki0047075b-MAL-ED          NEPAL                          [20-25)      240     61     50     11
3 months    ki0047075b-MAL-ED          NEPAL                          [25-30)      240    128    111     17
3 months    ki0047075b-MAL-ED          NEPAL                          >=30         240     46     39      7
3 months    ki0047075b-MAL-ED          PERU                           <20          303     83     53     30
3 months    ki0047075b-MAL-ED          PERU                           [20-25)      303     89     60     29
3 months    ki0047075b-MAL-ED          PERU                           [25-30)      303     64     43     21
3 months    ki0047075b-MAL-ED          PERU                           >=30         303     67     46     21
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20          314     48     35     13
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-25)      314    102     72     30
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)      314     59     42     17
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30         314    105     83     22
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20          262     16     13      3
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-25)      262     71     46     25
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)      262     69     46     23
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30         262    106     75     31
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20          362     34     21     13
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-25)      362    181    116     65
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)      362    105     70     35
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30         362     42     30     12
3 months    ki1000108-IRC              INDIA                          <20          410     37     21     16
3 months    ki1000108-IRC              INDIA                          [20-25)      410    221    153     68
3 months    ki1000108-IRC              INDIA                          [25-30)      410    123     84     39
3 months    ki1000108-IRC              INDIA                          >=30         410     29     22      7
3 months    ki1000109-EE               PAKISTAN                       <20          377      1      0      1
3 months    ki1000109-EE               PAKISTAN                       [20-25)      377     21      6     15
3 months    ki1000109-EE               PAKISTAN                       [25-30)      377    141     46     95
3 months    ki1000109-EE               PAKISTAN                       >=30         377    214     85    129
3 months    ki1000304b-SAS-CompFeed    INDIA                          <20          470     70     44     26
3 months    ki1000304b-SAS-CompFeed    INDIA                          [20-25)      470    218    155     63
3 months    ki1000304b-SAS-CompFeed    INDIA                          [25-30)      470    128     80     48
3 months    ki1000304b-SAS-CompFeed    INDIA                          >=30         470     54     35     19
3 months    ki1017093-NIH-Birth        BANGLADESH                     <20          627     73     62     11
3 months    ki1017093-NIH-Birth        BANGLADESH                     [20-25)      627    240    183     57
3 months    ki1017093-NIH-Birth        BANGLADESH                     [25-30)      627    182    134     48
3 months    ki1017093-NIH-Birth        BANGLADESH                     >=30         627    132    108     24
3 months    ki1017093b-PROVIDE         BANGLADESH                     <20          700     85     67     18
3 months    ki1017093b-PROVIDE         BANGLADESH                     [20-25)      700    284    236     48
3 months    ki1017093b-PROVIDE         BANGLADESH                     [25-30)      700    209    170     39
3 months    ki1017093b-PROVIDE         BANGLADESH                     >=30         700    122     97     25
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20          758    136    109     27
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-25)      758    263    217     46
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)      758    231    201     30
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30         758    128    110     18
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20         2373    166    143     23
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-25)     2373    758    679     79
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)     2373    812    731     81
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30        2373    637    578     59
3 months    ki1101329-Keneba           GAMBIA                         <20         2282    335    248     87
3 months    ki1101329-Keneba           GAMBIA                         [20-25)     2282    591    440    151
3 months    ki1101329-Keneba           GAMBIA                         [25-30)     2282    491    376    115
3 months    ki1101329-Keneba           GAMBIA                         >=30        2282    865    661    204
3 months    ki1113344-GMS-Nepal        NEPAL                          <20          593    119     85     34
3 months    ki1113344-GMS-Nepal        NEPAL                          [20-25)      593    207    179     28
3 months    ki1113344-GMS-Nepal        NEPAL                          [25-30)      593    176    158     18
3 months    ki1113344-GMS-Nepal        NEPAL                          >=30         593     91     77     14
3 months    ki1119695-PROBIT           BELARUS                        <20         8125    812    721     91
3 months    ki1119695-PROBIT           BELARUS                        [20-25)     8125   3566   3296    270
3 months    ki1119695-PROBIT           BELARUS                        [25-30)     8125   2294   2155    139
3 months    ki1119695-PROBIT           BELARUS                        >=30        8125   1453   1351    102
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20        13991   2233   1733    500
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-25)    13991   5918   4691   1227
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)    13991   3489   2752    737
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30       13991   2351   1884    467
3 months    ki1135781-COHORTS          GUATEMALA                      <20          514     83     61     22
3 months    ki1135781-COHORTS          GUATEMALA                      [20-25)      514    122     96     26
3 months    ki1135781-COHORTS          GUATEMALA                      [25-30)      514    114     85     29
3 months    ki1135781-COHORTS          GUATEMALA                      >=30         514    195    131     64
3 months    ki1135781-COHORTS          INDIA                          <20         5135    403    308     95
3 months    ki1135781-COHORTS          INDIA                          [20-25)     5135   1784   1431    353
3 months    ki1135781-COHORTS          INDIA                          [25-30)     5135   1699   1410    289
3 months    ki1135781-COHORTS          INDIA                          >=30        5135   1249   1009    240
3 months    ki1135781-COHORTS          PHILIPPINES                    <20         3056    378    309     69
3 months    ki1135781-COHORTS          PHILIPPINES                    [20-25)     3056    970    851    119
3 months    ki1135781-COHORTS          PHILIPPINES                    [25-30)     3056    855    742    113
3 months    ki1135781-COHORTS          PHILIPPINES                    >=30        3056    853    712    141
3 months    kiGH5241-JiVitA-3          BANGLADESH                     <20        13364   5997   3327   2670
3 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-25)    13364   4131   2628   1503
3 months    kiGH5241-JiVitA-3          BANGLADESH                     [25-30)    13364   2116   1344    772
3 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30       13364   1120    674    446
6 months    ki0047075b-MAL-ED          BANGLADESH                     <20          246     35     21     14
6 months    ki0047075b-MAL-ED          BANGLADESH                     [20-25)      246     80     49     31
6 months    ki0047075b-MAL-ED          BANGLADESH                     [25-30)      246     88     67     21
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30         246     43     25     18
6 months    ki0047075b-MAL-ED          BRAZIL                         <20          218     40     35      5
6 months    ki0047075b-MAL-ED          BRAZIL                         [20-25)      218     64     51     13
6 months    ki0047075b-MAL-ED          BRAZIL                         [25-30)      218     64     49     15
6 months    ki0047075b-MAL-ED          BRAZIL                         >=30         218     50     43      7
6 months    ki0047075b-MAL-ED          INDIA                          <20          238     34     20     14
6 months    ki0047075b-MAL-ED          INDIA                          [20-25)      238    106     68     38
6 months    ki0047075b-MAL-ED          INDIA                          [25-30)      238     77     50     27
6 months    ki0047075b-MAL-ED          INDIA                          >=30         238     21     18      3
6 months    ki0047075b-MAL-ED          NEPAL                          <20          238      5      2      3
6 months    ki0047075b-MAL-ED          NEPAL                          [20-25)      238     59     47     12
6 months    ki0047075b-MAL-ED          NEPAL                          [25-30)      238    128    110     18
6 months    ki0047075b-MAL-ED          NEPAL                          >=30         238     46     38      8
6 months    ki0047075b-MAL-ED          PERU                           <20          282     78     44     34
6 months    ki0047075b-MAL-ED          PERU                           [20-25)      282     82     45     37
6 months    ki0047075b-MAL-ED          PERU                           [25-30)      282     60     33     27
6 months    ki0047075b-MAL-ED          PERU                           >=30         282     62     35     27
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20          271     42     22     20
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-25)      271     85     52     33
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)      271     47     31     16
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30         271     97     62     35
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20          253     15     11      4
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-25)      253     65     35     30
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)      253     67     36     31
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30         253    106     67     39
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20          367     33     16     17
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-25)      367    185     86     99
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)      367    107     53     54
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30         367     42     24     18
6 months    ki1000108-IRC              INDIA                          <20          408     36     17     19
6 months    ki1000108-IRC              INDIA                          [20-25)      408    220    126     94
6 months    ki1000108-IRC              INDIA                          [25-30)      408    123     73     50
6 months    ki1000108-IRC              INDIA                          >=30         408     29     19     10
6 months    ki1000109-EE               PAKISTAN                       <20          371      1      0      1
6 months    ki1000109-EE               PAKISTAN                       [20-25)      371     21      4     17
6 months    ki1000109-EE               PAKISTAN                       [25-30)      371    141     35    106
6 months    ki1000109-EE               PAKISTAN                       >=30         371    208     56    152
6 months    ki1000304b-SAS-CompFeed    INDIA                          <20          367     53     32     21
6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-25)      367    172    105     67
6 months    ki1000304b-SAS-CompFeed    INDIA                          [25-30)      367     97     48     49
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30         367     45     24     21
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <20          105      8      5      3
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-25)      105     40     25     15
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)      105     37     18     19
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30         105     20     14      6
6 months    ki1017093-NIH-Birth        BANGLADESH                     <20          549     56     42     14
6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-25)      549    211    132     79
6 months    ki1017093-NIH-Birth        BANGLADESH                     [25-30)      549    162     97     65
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30         549    120     79     41
6 months    ki1017093b-PROVIDE         BANGLADESH                     <20          640     74     50     24
6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-25)      640    255    195     60
6 months    ki1017093b-PROVIDE         BANGLADESH                     [25-30)      640    193    144     49
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30         640    118     88     30
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20          736    132     88     44
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-25)      736    255    171     84
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)      736    224    162     62
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30         736    125     89     36
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20         2216    153    126     27
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-25)     2216    694    545    149
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)     2216    762    600    162
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30        2216    607    503    104
6 months    ki1101329-Keneba           GAMBIA                         <20         2246    331    230    101
6 months    ki1101329-Keneba           GAMBIA                         [20-25)     2246    577    394    183
6 months    ki1101329-Keneba           GAMBIA                         [25-30)     2246    484    331    153
6 months    ki1101329-Keneba           GAMBIA                         >=30        2246    854    565    289
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <20          264     46     25     21
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-25)      264    104     73     31
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [25-30)      264     60     45     15
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30         264     54     37     17
6 months    ki1113344-GMS-Nepal        NEPAL                          <20          567    110     65     45
6 months    ki1113344-GMS-Nepal        NEPAL                          [20-25)      567    198    152     46
6 months    ki1113344-GMS-Nepal        NEPAL                          [25-30)      567    172    123     49
6 months    ki1113344-GMS-Nepal        NEPAL                          >=30         567     87     65     22
6 months    ki1119695-PROBIT           BELARUS                        <20         7807    774    662    112
6 months    ki1119695-PROBIT           BELARUS                        [20-25)     7807   3432   3069    363
6 months    ki1119695-PROBIT           BELARUS                        [25-30)     7807   2205   2007    198
6 months    ki1119695-PROBIT           BELARUS                        >=30        7807   1396   1255    141
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20         9080   1394    933    461
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-25)     9080   3723   2639   1084
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)     9080   2327   1662    665
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30        9080   1636   1172    464
6 months    ki1135781-COHORTS          GUATEMALA                      <20          141     21     13      8
6 months    ki1135781-COHORTS          GUATEMALA                      [20-25)      141     38     28     10
6 months    ki1135781-COHORTS          GUATEMALA                      [25-30)      141     29     19     10
6 months    ki1135781-COHORTS          GUATEMALA                      >=30         141     53     30     23
6 months    ki1135781-COHORTS          PHILIPPINES                    <20         2806    345    235    110
6 months    ki1135781-COHORTS          PHILIPPINES                    [20-25)     2806    881    689    192
6 months    ki1135781-COHORTS          PHILIPPINES                    [25-30)     2806    791    615    176
6 months    ki1135781-COHORTS          PHILIPPINES                    >=30        2806    789    566    223
6 months    ki1148112-LCNI-5           MALAWI                         <20          220     39     29     10
6 months    ki1148112-LCNI-5           MALAWI                         [20-25)      220     62     43     19
6 months    ki1148112-LCNI-5           MALAWI                         [25-30)      220     54     28     26
6 months    ki1148112-LCNI-5           MALAWI                         >=30         220     65     42     23
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20         9597   4414   2333   2081
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-25)     9597   2917   1802   1115
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [25-30)     9597   1499    920    579
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30        9597    767    459    308
12 months   ki0047075b-MAL-ED          BANGLADESH                     <20          239     34     19     15
12 months   ki0047075b-MAL-ED          BANGLADESH                     [20-25)      239     77     40     37
12 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)      239     86     58     28
12 months   ki0047075b-MAL-ED          BANGLADESH                     >=30         239     42     19     23
12 months   ki0047075b-MAL-ED          BRAZIL                         <20          207     36     31      5
12 months   ki0047075b-MAL-ED          BRAZIL                         [20-25)      207     62     50     12
12 months   ki0047075b-MAL-ED          BRAZIL                         [25-30)      207     62     45     17
12 months   ki0047075b-MAL-ED          BRAZIL                         >=30         207     47     39      8
12 months   ki0047075b-MAL-ED          INDIA                          <20          233     34     15     19
12 months   ki0047075b-MAL-ED          INDIA                          [20-25)      233    102     55     47
12 months   ki0047075b-MAL-ED          INDIA                          [25-30)      233     76     38     38
12 months   ki0047075b-MAL-ED          INDIA                          >=30         233     21     15      6
12 months   ki0047075b-MAL-ED          NEPAL                          <20          235      5      2      3
12 months   ki0047075b-MAL-ED          NEPAL                          [20-25)      235     57     45     12
12 months   ki0047075b-MAL-ED          NEPAL                          [25-30)      235    127    104     23
12 months   ki0047075b-MAL-ED          NEPAL                          >=30         235     46     37      9
12 months   ki0047075b-MAL-ED          PERU                           <20          270     75     38     37
12 months   ki0047075b-MAL-ED          PERU                           [20-25)      270     75     36     39
12 months   ki0047075b-MAL-ED          PERU                           [25-30)      270     59     28     31
12 months   ki0047075b-MAL-ED          PERU                           >=30         270     61     28     33
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20          259     42     18     24
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-25)      259     78     39     39
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)      259     44     27     17
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30         259     95     53     42
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20          245     14      4     10
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-25)      245     63     23     40
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)      245     65     22     43
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30         245    103     35     68
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20          372     34     12     22
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-25)      372    187     51    136
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)      372    108     35     73
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30         372     43     14     29
12 months   ki1000108-IRC              INDIA                          <20          408     36     16     20
12 months   ki1000108-IRC              INDIA                          [20-25)      408    220    104    116
12 months   ki1000108-IRC              INDIA                          [25-30)      408    123     63     60
12 months   ki1000108-IRC              INDIA                          >=30         408     29     18     11
12 months   ki1000109-EE               PAKISTAN                       <20          371      1      0      1
12 months   ki1000109-EE               PAKISTAN                       [20-25)      371     20      3     17
12 months   ki1000109-EE               PAKISTAN                       [25-30)      371    140     25    115
12 months   ki1000109-EE               PAKISTAN                       >=30         371    210     37    173
12 months   ki1000304b-SAS-CompFeed    INDIA                          <20          425     64     30     34
12 months   ki1000304b-SAS-CompFeed    INDIA                          [20-25)      425    204     91    113
12 months   ki1000304b-SAS-CompFeed    INDIA                          [25-30)      425    114     38     76
12 months   ki1000304b-SAS-CompFeed    INDIA                          >=30         425     43     16     27
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          <20           99      8      2      6
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-25)       99     36      7     29
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)       99     37      5     32
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30          99     18      1     17
12 months   ki1017093-NIH-Birth        BANGLADESH                     <20          539     61     36     25
12 months   ki1017093-NIH-Birth        BANGLADESH                     [20-25)      539    198     97    101
12 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)      539    161     69     92
12 months   ki1017093-NIH-Birth        BANGLADESH                     >=30         539    119     63     56
12 months   ki1017093b-PROVIDE         BANGLADESH                     <20          609     67     39     28
12 months   ki1017093b-PROVIDE         BANGLADESH                     [20-25)      609    244    169     75
12 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)      609    188    127     61
12 months   ki1017093b-PROVIDE         BANGLADESH                     >=30         609    110     72     38
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20          729    132     79     53
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-25)      729    250    148    102
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)      729    224    148     76
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30         729    123     77     46
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20         1981    140     99     41
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-25)     1981    610    407    203
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)     1981    679    453    226
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30        1981    552    394    158
12 months   ki1101329-Keneba           GAMBIA                         <20         2360    321    207    114
12 months   ki1101329-Keneba           GAMBIA                         [20-25)     2360    602    356    246
12 months   ki1101329-Keneba           GAMBIA                         [25-30)     2360    540    334    206
12 months   ki1101329-Keneba           GAMBIA                         >=30        2360    897    497    400
12 months   ki1112895-Guatemala BSC    GUATEMALA                      <20          265     42     15     27
12 months   ki1112895-Guatemala BSC    GUATEMALA                      [20-25)      265    104     47     57
12 months   ki1112895-Guatemala BSC    GUATEMALA                      [25-30)      265     62     35     27
12 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30         265     57     26     31
12 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20          778     94     66     28
12 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-25)      778    225    187     38
12 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [25-30)      778    219    174     45
12 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30         778    240    191     49
12 months   ki1113344-GMS-Nepal        NEPAL                          <20          582    116     59     57
12 months   ki1113344-GMS-Nepal        NEPAL                          [20-25)      582    202    116     86
12 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)      582    176     97     79
12 months   ki1113344-GMS-Nepal        NEPAL                          >=30         582     88     45     43
12 months   ki1119695-PROBIT           BELARUS                        <20         7943    793    649    144
12 months   ki1119695-PROBIT           BELARUS                        [20-25)     7943   3484   2956    528
12 months   ki1119695-PROBIT           BELARUS                        [25-30)     7943   2240   1955    285
12 months   ki1119695-PROBIT           BELARUS                        >=30        7943   1426   1226    200
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20        10161   1573    921    652
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-25)    10161   4205   2643   1562
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)    10161   2575   1619    956
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30       10161   1808   1149    659
12 months   ki1135781-COHORTS          GUATEMALA                      <20          561     87     27     60
12 months   ki1135781-COHORTS          GUATEMALA                      [20-25)      561    143     42    101
12 months   ki1135781-COHORTS          GUATEMALA                      [25-30)      561    117     28     89
12 months   ki1135781-COHORTS          GUATEMALA                      >=30         561    214     58    156
12 months   ki1135781-COHORTS          INDIA                          <20         4963    377    209    168
12 months   ki1135781-COHORTS          INDIA                          [20-25)     4963   1729   1033    696
12 months   ki1135781-COHORTS          INDIA                          [25-30)     4963   1641   1055    586
12 months   ki1135781-COHORTS          INDIA                          >=30        4963   1216    682    534
12 months   ki1135781-COHORTS          PHILIPPINES                    <20         2762    339    175    164
12 months   ki1135781-COHORTS          PHILIPPINES                    [20-25)     2762    875    517    358
12 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)     2762    767    460    307
12 months   ki1135781-COHORTS          PHILIPPINES                    >=30        2762    781    398    383
12 months   ki1148112-LCNI-5           MALAWI                         <20          650    105     57     48
12 months   ki1148112-LCNI-5           MALAWI                         [20-25)      650    185    102     83
12 months   ki1148112-LCNI-5           MALAWI                         [25-30)      650    168     87     81
12 months   ki1148112-LCNI-5           MALAWI                         >=30         650    192     89    103
12 months   kiGH5241-JiVitA-3          BANGLADESH                     <20         8374   4028   2038   1990
12 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-25)     8374   2526   1488   1038
12 months   kiGH5241-JiVitA-3          BANGLADESH                     [25-30)     8374   1245    737    508
12 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30        8374    575    328    247
18 months   ki0047075b-MAL-ED          BANGLADESH                     <20          231     34     10     24
18 months   ki0047075b-MAL-ED          BANGLADESH                     [20-25)      231     73     30     43
18 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)      231     84     42     42
18 months   ki0047075b-MAL-ED          BANGLADESH                     >=30         231     40     18     22
18 months   ki0047075b-MAL-ED          BRAZIL                         <20          194     34     26      8
18 months   ki0047075b-MAL-ED          BRAZIL                         [20-25)      194     57     44     13
18 months   ki0047075b-MAL-ED          BRAZIL                         [25-30)      194     60     44     16
18 months   ki0047075b-MAL-ED          BRAZIL                         >=30         194     43     35      8
18 months   ki0047075b-MAL-ED          INDIA                          <20          227     33     14     19
18 months   ki0047075b-MAL-ED          INDIA                          [20-25)      227     99     42     57
18 months   ki0047075b-MAL-ED          INDIA                          [25-30)      227     74     28     46
18 months   ki0047075b-MAL-ED          INDIA                          >=30         227     21     12      9
18 months   ki0047075b-MAL-ED          NEPAL                          <20          231      4      2      2
18 months   ki0047075b-MAL-ED          NEPAL                          [20-25)      231     56     37     19
18 months   ki0047075b-MAL-ED          NEPAL                          [25-30)      231    126     95     31
18 months   ki0047075b-MAL-ED          NEPAL                          >=30         231     45     29     16
18 months   ki0047075b-MAL-ED          PERU                           <20          244     69     22     47
18 months   ki0047075b-MAL-ED          PERU                           [20-25)      244     64     23     41
18 months   ki0047075b-MAL-ED          PERU                           [25-30)      244     57     16     41
18 months   ki0047075b-MAL-ED          PERU                           >=30         244     54     19     35
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20          253     42     17     25
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-25)      253     75     29     46
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)      253     41     20     21
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30         253     95     46     49
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20          233     13      2     11
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-25)      233     58     11     47
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)      233     61      8     53
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30         233    101     22     79
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20          373     34      6     28
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-25)      373    187     25    162
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)      373    109     19     90
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30         373     43      7     36
18 months   ki1000108-IRC              INDIA                          <20          409     37     12     25
18 months   ki1000108-IRC              INDIA                          [20-25)      409    220     94    126
18 months   ki1000108-IRC              INDIA                          [25-30)      409    123     55     68
18 months   ki1000108-IRC              INDIA                          >=30         409     29     18     11
18 months   ki1000109-EE               PAKISTAN                       <20          361      1      0      1
18 months   ki1000109-EE               PAKISTAN                       [20-25)      361     19      2     17
18 months   ki1000109-EE               PAKISTAN                       [25-30)      361    138     10    128
18 months   ki1000109-EE               PAKISTAN                       >=30         361    203     20    183
18 months   ki1000304b-SAS-CompFeed    INDIA                          <20          416     63     22     41
18 months   ki1000304b-SAS-CompFeed    INDIA                          [20-25)      416    202     67    135
18 months   ki1000304b-SAS-CompFeed    INDIA                          [25-30)      416    109     24     85
18 months   ki1000304b-SAS-CompFeed    INDIA                          >=30         416     42     12     30
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          <20           93      8      1      7
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-25)       93     33      3     30
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)       93     36      5     31
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30          93     16      1     15
18 months   ki1017093-NIH-Birth        BANGLADESH                     <20          495     54     17     37
18 months   ki1017093-NIH-Birth        BANGLADESH                     [20-25)      495    183     66    117
18 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)      495    151     54     97
18 months   ki1017093-NIH-Birth        BANGLADESH                     >=30         495    107     37     70
18 months   ki1017093b-PROVIDE         BANGLADESH                     <20          604     66     32     34
18 months   ki1017093b-PROVIDE         BANGLADESH                     [20-25)      604    243    148     95
18 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)      604    187    113     74
18 months   ki1017093b-PROVIDE         BANGLADESH                     >=30         604    108     59     49
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20          715    130     71     59
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-25)      715    244    136    108
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)      715    220    125     95
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30         715    121     66     55
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20         1443     93     57     36
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-25)     1443    426    257    169
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)     1443    495    281    214
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30        1443    429    263    166
18 months   ki1101329-Keneba           GAMBIA                         <20         2263    294    164    130
18 months   ki1101329-Keneba           GAMBIA                         [20-25)     2263    565    281    284
18 months   ki1101329-Keneba           GAMBIA                         [25-30)     2263    517    280    237
18 months   ki1101329-Keneba           GAMBIA                         >=30        2263    887    400    487
18 months   ki1112895-Guatemala BSC    GUATEMALA                      <20          184     29      7     22
18 months   ki1112895-Guatemala BSC    GUATEMALA                      [20-25)      184     74     27     47
18 months   ki1112895-Guatemala BSC    GUATEMALA                      [25-30)      184     42     18     24
18 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30         184     39     16     23
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20          121     15      6      9
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-25)      121     38     20     18
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [25-30)      121     31     22      9
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30         121     37     27     10
18 months   ki1113344-GMS-Nepal        NEPAL                          <20          574    115     41     74
18 months   ki1113344-GMS-Nepal        NEPAL                          [20-25)      574    198     83    115
18 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)      574    174     61    113
18 months   ki1113344-GMS-Nepal        NEPAL                          >=30         574     87     31     56
18 months   ki1119695-PROBIT           BELARUS                        <20         7475    735    591    144
18 months   ki1119695-PROBIT           BELARUS                        [20-25)     7475   3293   2757    536
18 months   ki1119695-PROBIT           BELARUS                        [25-30)     7475   2109   1822    287
18 months   ki1119695-PROBIT           BELARUS                        >=30        7475   1338   1135    203
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20         7266   1154    544    610
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-25)     7266   2902   1495   1407
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)     7266   1857    956    901
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30        7266   1353    702    651
18 months   ki1135781-COHORTS          GUATEMALA                      <20          451     68     13     55
18 months   ki1135781-COHORTS          GUATEMALA                      [20-25)      451    115     24     91
18 months   ki1135781-COHORTS          GUATEMALA                      [25-30)      451     97     15     82
18 months   ki1135781-COHORTS          GUATEMALA                      >=30         451    171     25    146
18 months   ki1135781-COHORTS          PHILIPPINES                    <20         2632    316    111    205
18 months   ki1135781-COHORTS          PHILIPPINES                    [20-25)     2632    828    336    492
18 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)     2632    737    299    438
18 months   ki1135781-COHORTS          PHILIPPINES                    >=30        2632    751    263    488
18 months   ki1148112-LCNI-5           MALAWI                         <20          549     89     43     46
18 months   ki1148112-LCNI-5           MALAWI                         [20-25)      549    149     67     82
18 months   ki1148112-LCNI-5           MALAWI                         [25-30)      549    144     65     79
18 months   ki1148112-LCNI-5           MALAWI                         >=30         549    167     63    104
18 months   kiGH5241-JiVitA-3          BANGLADESH                     <20         7330   3479   1477   2002
18 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-25)     7330   2222   1094   1128
18 months   kiGH5241-JiVitA-3          BANGLADESH                     [25-30)     7330   1111    537    574
18 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30        7330    518    236    282
24 months   ki0047075b-MAL-ED          BANGLADESH                     <20          219     31      6     25
24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-25)      219     66     26     40
24 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)      219     84     36     48
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30         219     38     15     23
24 months   ki0047075b-MAL-ED          BRAZIL                         <20          176     30     22      8
24 months   ki0047075b-MAL-ED          BRAZIL                         [20-25)      176     55     42     13
24 months   ki0047075b-MAL-ED          BRAZIL                         [25-30)      176     51     39     12
24 months   ki0047075b-MAL-ED          BRAZIL                         >=30         176     40     33      7
24 months   ki0047075b-MAL-ED          INDIA                          <20          226     33     14     19
24 months   ki0047075b-MAL-ED          INDIA                          [20-25)      226     99     36     63
24 months   ki0047075b-MAL-ED          INDIA                          [25-30)      226     73     25     48
24 months   ki0047075b-MAL-ED          INDIA                          >=30         226     21     11     10
24 months   ki0047075b-MAL-ED          NEPAL                          <20          229      4      2      2
24 months   ki0047075b-MAL-ED          NEPAL                          [20-25)      229     55     34     21
24 months   ki0047075b-MAL-ED          NEPAL                          [25-30)      229    125     86     39
24 months   ki0047075b-MAL-ED          NEPAL                          >=30         229     45     27     18
24 months   ki0047075b-MAL-ED          PERU                           <20          218     61     15     46
24 months   ki0047075b-MAL-ED          PERU                           [20-25)      218     54     17     37
24 months   ki0047075b-MAL-ED          PERU                           [25-30)      218     53     14     39
24 months   ki0047075b-MAL-ED          PERU                           >=30         218     50     15     35
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20          242     40     14     26
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-25)      242     69     22     47
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)      242     39     19     20
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30         242     94     38     56
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20          228     13      1     12
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-25)      228     57      8     49
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)      228     61      4     57
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30         228     97     14     83
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20          373     34      3     31
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-25)      373    187     14    173
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)      373    109      8    101
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30         373     43      3     40
24 months   ki1000108-IRC              INDIA                          <20          410     37      8     29
24 months   ki1000108-IRC              INDIA                          [20-25)      410    221     75    146
24 months   ki1000108-IRC              INDIA                          [25-30)      410    123     49     74
24 months   ki1000108-IRC              INDIA                          >=30         410     29     15     14
24 months   ki1000109-EE               PAKISTAN                       <20          337      1      0      1
24 months   ki1000109-EE               PAKISTAN                       [20-25)      337     18      2     16
24 months   ki1000109-EE               PAKISTAN                       [25-30)      337    126      8    118
24 months   ki1000109-EE               PAKISTAN                       >=30         337    192     17    175
24 months   ki1000304b-SAS-CompFeed    INDIA                          <20           43      7      3      4
24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-25)       43     23      6     17
24 months   ki1000304b-SAS-CompFeed    INDIA                          [25-30)       43     11      4      7
24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30          43      2      0      2
24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <20            9      0      0      0
24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-25)        9      3      0      3
24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)        9      6      1      5
24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30           9      0      0      0
24 months   ki1017093-NIH-Birth        BANGLADESH                     <20          468     51     10     41
24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-25)      468    174     48    126
24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)      468    140     29    111
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30         468    103     28     75
24 months   ki1017093b-PROVIDE         BANGLADESH                     <20          582     63     26     37
24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-25)      582    236    129    107
24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)      582    179     94     85
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30         582    104     53     51
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20          634    118     61     57
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-25)      634    217    112    105
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)      634    196     98     98
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30         634    103     45     58
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20          953     57     34     23
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-25)      953    270    148    122
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)      953    335    179    156
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30         953    291    178    113
24 months   ki1101329-Keneba           GAMBIA                         <20         2186    282    132    150
24 months   ki1101329-Keneba           GAMBIA                         [20-25)     2186    540    238    302
24 months   ki1101329-Keneba           GAMBIA                         [25-30)     2186    513    236    277
24 months   ki1101329-Keneba           GAMBIA                         >=30        2186    851    325    526
24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20          538     61     28     33
24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-25)      538    147     94     53
24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [25-30)      538    158     92     66
24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30         538    172    101     71
24 months   ki1113344-GMS-Nepal        NEPAL                          <20          568    114     35     79
24 months   ki1113344-GMS-Nepal        NEPAL                          [20-25)      568    199     70    129
24 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)      568    170     45    125
24 months   ki1113344-GMS-Nepal        NEPAL                          >=30         568     85     26     59
24 months   ki1119695-PROBIT           BELARUS                        <20         2076    177    133     44
24 months   ki1119695-PROBIT           BELARUS                        [20-25)     2076    904    708    196
24 months   ki1119695-PROBIT           BELARUS                        [25-30)     2076    590    465    125
24 months   ki1119695-PROBIT           BELARUS                        >=30        2076    405    342     63
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20         1874    288     65    223
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-25)     1874    708    217    491
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)     1874    509    141    368
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30        1874    369    108    261
24 months   ki1135781-COHORTS          GUATEMALA                      <20          474     79      8     71
24 months   ki1135781-COHORTS          GUATEMALA                      [20-25)      474    117     14    103
24 months   ki1135781-COHORTS          GUATEMALA                      [25-30)      474    107      9     98
24 months   ki1135781-COHORTS          GUATEMALA                      >=30         474    171     18    153
24 months   ki1135781-COHORTS          PHILIPPINES                    <20         2562    316     66    250
24 months   ki1135781-COHORTS          PHILIPPINES                    [20-25)     2562    806    203    603
24 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)     2562    726    198    528
24 months   ki1135781-COHORTS          PHILIPPINES                    >=30        2562    714    167    547
24 months   ki1148112-LCNI-5           MALAWI                         <20          588     95     36     59
24 months   ki1148112-LCNI-5           MALAWI                         [20-25)      588    170     62    108
24 months   ki1148112-LCNI-5           MALAWI                         [25-30)      588    150     53     97
24 months   ki1148112-LCNI-5           MALAWI                         >=30         588    173     53    120
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20            3      0      0      0
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-25)        3      2      1      1
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [25-30)        3      1      1      0
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30           3      0      0      0


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
* agecat: 12 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 12 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 12 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 12 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 12 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 12 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: 18 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 18 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 18 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 18 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 18 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 18 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 18 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 18 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 18 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 18 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 18 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 18 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: 3 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 3 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 3 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 3 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 3 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 3 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 12 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 18 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots

```
## Warning: Removed 64 rows containing missing values (geom_errorbar).
```

![](/tmp/d706d754-b26f-407f-922e-457d46ab5524/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->


```
## Warning: Removed 150 rows containing missing values (geom_errorbar).
```

![](/tmp/d706d754-b26f-407f-922e-457d46ab5524/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


```
## Warning: Removed 16 rows containing missing values (geom_errorbar).
```

![](/tmp/d706d754-b26f-407f-922e-457d46ab5524/REPORT_files/figure-html/plot_paf-1.png)<!-- -->


```
## Warning: Removed 16 rows containing missing values (geom_errorbar).
```

![](/tmp/d706d754-b26f-407f-922e-457d46ab5524/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                0.3513514   0.1972368   0.5054659
3 months    ki0047075b-MAL-ED          BANGLADESH                     [20-25)              NA                0.3146067   0.2179509   0.4112626
3 months    ki0047075b-MAL-ED          BANGLADESH                     [25-30)              NA                0.2150538   0.1313931   0.2987144
3 months    ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                0.3695652   0.2298139   0.5093165
3 months    ki0047075b-MAL-ED          BRAZIL                         <20                  NA                0.1395349   0.0357448   0.2433250
3 months    ki0047075b-MAL-ED          BRAZIL                         [20-25)              NA                0.1756757   0.0887854   0.2625659
3 months    ki0047075b-MAL-ED          BRAZIL                         [25-30)              NA                0.2000000   0.1025492   0.2974508
3 months    ki0047075b-MAL-ED          BRAZIL                         >=30                 NA                0.1176471   0.0290318   0.2062624
3 months    ki0047075b-MAL-ED          PERU                           <20                  NA                0.3614458   0.2579203   0.4649713
3 months    ki0047075b-MAL-ED          PERU                           [20-25)              NA                0.3258427   0.2283088   0.4233766
3 months    ki0047075b-MAL-ED          PERU                           [25-30)              NA                0.3281250   0.2129018   0.4433482
3 months    ki0047075b-MAL-ED          PERU                           >=30                 NA                0.3134328   0.2021720   0.4246937
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  NA                0.2708333   0.1449163   0.3967504
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-25)              NA                0.2941176   0.2055516   0.3826837
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              NA                0.2881356   0.1723880   0.4038832
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                0.2095238   0.1315575   0.2874902
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                0.3823529   0.2187799   0.5459260
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-25)              NA                0.3591160   0.2891291   0.4291029
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              NA                0.3333333   0.2430416   0.4236250
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 NA                0.2857143   0.1489017   0.4225269
3 months    ki1000108-IRC              INDIA                          <20                  NA                0.4324324   0.2726072   0.5922577
3 months    ki1000108-IRC              INDIA                          [20-25)              NA                0.3076923   0.2467681   0.3686165
3 months    ki1000108-IRC              INDIA                          [25-30)              NA                0.3170732   0.2347366   0.3994097
3 months    ki1000108-IRC              INDIA                          >=30                 NA                0.2413793   0.0854450   0.3973136
3 months    ki1000304b-SAS-CompFeed    INDIA                          <20                  NA                0.3714286          NA          NA
3 months    ki1000304b-SAS-CompFeed    INDIA                          [20-25)              NA                0.2889908          NA          NA
3 months    ki1000304b-SAS-CompFeed    INDIA                          [25-30)              NA                0.3750000          NA          NA
3 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                0.3518519          NA          NA
3 months    ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                0.1506849   0.0685548   0.2328151
3 months    ki1017093-NIH-Birth        BANGLADESH                     [20-25)              NA                0.2375000   0.1836184   0.2913816
3 months    ki1017093-NIH-Birth        BANGLADESH                     [25-30)              NA                0.2637363   0.1996654   0.3278071
3 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                0.1818182   0.1159689   0.2476675
3 months    ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                0.2117647   0.1248479   0.2986815
3 months    ki1017093b-PROVIDE         BANGLADESH                     [20-25)              NA                0.1690141   0.1253969   0.2126313
3 months    ki1017093b-PROVIDE         BANGLADESH                     [25-30)              NA                0.1866029   0.1337467   0.2394591
3 months    ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                0.2049180   0.1332419   0.2765942
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                0.1985294   0.1314450   0.2656138
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-25)              NA                0.1749049   0.1289629   0.2208469
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              NA                0.1298701   0.0864915   0.1732487
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                0.1406250   0.0803618   0.2008882
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.1385542   0.0859877   0.1911208
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-25)              NA                0.1042216   0.0824654   0.1259779
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                0.0997537   0.0791376   0.1203698
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.0926217   0.0701042   0.1151392
3 months    ki1101329-Keneba           GAMBIA                         <20                  NA                0.2597015   0.2127379   0.3066651
3 months    ki1101329-Keneba           GAMBIA                         [20-25)              NA                0.2554992   0.2203288   0.2906695
3 months    ki1101329-Keneba           GAMBIA                         [25-30)              NA                0.2342159   0.1967476   0.2716842
3 months    ki1101329-Keneba           GAMBIA                         >=30                 NA                0.2358382   0.2075415   0.2641348
3 months    ki1113344-GMS-Nepal        NEPAL                          <20                  NA                0.2857143   0.2044793   0.3669493
3 months    ki1113344-GMS-Nepal        NEPAL                          [20-25)              NA                0.1352657   0.0886358   0.1818956
3 months    ki1113344-GMS-Nepal        NEPAL                          [25-30)              NA                0.1022727   0.0574694   0.1470761
3 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.1538462   0.0796533   0.2280390
3 months    ki1119695-PROBIT           BELARUS                        <20                  NA                0.1120690          NA          NA
3 months    ki1119695-PROBIT           BELARUS                        [20-25)              NA                0.0757151          NA          NA
3 months    ki1119695-PROBIT           BELARUS                        [25-30)              NA                0.0605929          NA          NA
3 months    ki1119695-PROBIT           BELARUS                        >=30                 NA                0.0701996          NA          NA
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                0.2239140   0.2066232   0.2412048
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-25)              NA                0.2073336   0.1970046   0.2176625
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              NA                0.2112353   0.1976906   0.2247800
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.1986389   0.1825108   0.2147670
3 months    ki1135781-COHORTS          GUATEMALA                      <20                  NA                0.2650602   0.1700151   0.3601054
3 months    ki1135781-COHORTS          GUATEMALA                      [20-25)              NA                0.2131148   0.1403781   0.2858514
3 months    ki1135781-COHORTS          GUATEMALA                      [25-30)              NA                0.2543860   0.1743616   0.3344103
3 months    ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.3282051   0.2622354   0.3941749
3 months    ki1135781-COHORTS          INDIA                          <20                  NA                0.2357320   0.1942872   0.2771768
3 months    ki1135781-COHORTS          INDIA                          [20-25)              NA                0.1978700   0.1793813   0.2163586
3 months    ki1135781-COHORTS          INDIA                          [25-30)              NA                0.1701001   0.1522328   0.1879674
3 months    ki1135781-COHORTS          INDIA                          >=30                 NA                0.1921537   0.1703014   0.2140061
3 months    ki1135781-COHORTS          PHILIPPINES                    <20                  NA                0.1825397   0.1435917   0.2214877
3 months    ki1135781-COHORTS          PHILIPPINES                    [20-25)              NA                0.1226804   0.1020314   0.1433295
3 months    ki1135781-COHORTS          PHILIPPINES                    [25-30)              NA                0.1321637   0.1094593   0.1548682
3 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.1652989   0.1403676   0.1902303
3 months    kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                0.4452226          NA          NA
3 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-25)              NA                0.3638344          NA          NA
3 months    kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              NA                0.3648393          NA          NA
3 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.3982143          NA          NA
6 months    ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                0.4000000   0.2373687   0.5626313
6 months    ki0047075b-MAL-ED          BANGLADESH                     [20-25)              NA                0.3875000   0.2805264   0.4944736
6 months    ki0047075b-MAL-ED          BANGLADESH                     [25-30)              NA                0.2386364   0.1493972   0.3278756
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                0.4186047   0.2708517   0.5663576
6 months    ki0047075b-MAL-ED          BRAZIL                         <20                  NA                0.1250000   0.0222752   0.2277248
6 months    ki0047075b-MAL-ED          BRAZIL                         [20-25)              NA                0.2031250   0.1043304   0.3019196
6 months    ki0047075b-MAL-ED          BRAZIL                         [25-30)              NA                0.2343750   0.1303542   0.3383958
6 months    ki0047075b-MAL-ED          BRAZIL                         >=30                 NA                0.1400000   0.0436005   0.2363995
6 months    ki0047075b-MAL-ED          PERU                           <20                  NA                0.4358974   0.3256564   0.5461385
6 months    ki0047075b-MAL-ED          PERU                           [20-25)              NA                0.4512195   0.3433234   0.5591156
6 months    ki0047075b-MAL-ED          PERU                           [25-30)              NA                0.4500000   0.3238952   0.5761048
6 months    ki0047075b-MAL-ED          PERU                           >=30                 NA                0.4354839   0.3118470   0.5591207
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  NA                0.4761905   0.3248681   0.6275129
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-25)              NA                0.3882353   0.2844392   0.4920314
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              NA                0.3404255   0.2047052   0.4761459
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                0.3608247   0.2650782   0.4565713
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                0.5151515   0.3444041   0.6858989
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-25)              NA                0.5351351   0.4631654   0.6071049
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              NA                0.5046729   0.4098093   0.5995365
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 NA                0.4285714   0.2787036   0.5784393
6 months    ki1000108-IRC              INDIA                          <20                  NA                0.5277778   0.3644995   0.6910561
6 months    ki1000108-IRC              INDIA                          [20-25)              NA                0.4272727   0.3618248   0.4927207
6 months    ki1000108-IRC              INDIA                          [25-30)              NA                0.4065041   0.3195941   0.4934141
6 months    ki1000108-IRC              INDIA                          >=30                 NA                0.3448276   0.1716224   0.5180327
6 months    ki1000304b-SAS-CompFeed    INDIA                          <20                  NA                0.3962264          NA          NA
6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-25)              NA                0.3895349          NA          NA
6 months    ki1000304b-SAS-CompFeed    INDIA                          [25-30)              NA                0.5051546          NA          NA
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                0.4666667          NA          NA
6 months    ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                0.2500000   0.1364857   0.3635143
6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-25)              NA                0.3744076   0.3090463   0.4397689
6 months    ki1017093-NIH-Birth        BANGLADESH                     [25-30)              NA                0.4012346   0.3256881   0.4767810
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                0.3416667   0.2567334   0.4265999
6 months    ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                0.3243243   0.2175835   0.4310652
6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-25)              NA                0.2352941   0.1831902   0.2873980
6 months    ki1017093b-PROVIDE         BANGLADESH                     [25-30)              NA                0.2538860   0.1924347   0.3153373
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                0.2542373   0.1756112   0.3328634
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                0.3333333   0.2528603   0.4138063
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-25)              NA                0.3294118   0.2716859   0.3871377
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              NA                0.2767857   0.2181551   0.3354164
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                0.2880000   0.2085627   0.3674373
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.1764706   0.1160512   0.2368899
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-25)              NA                0.2146974   0.1841413   0.2452535
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                0.2125984   0.1835417   0.2416552
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.1713344   0.1413522   0.2013166
6 months    ki1101329-Keneba           GAMBIA                         <20                  NA                0.3051360   0.2555193   0.3547526
6 months    ki1101329-Keneba           GAMBIA                         [20-25)              NA                0.3171577   0.2791777   0.3551377
6 months    ki1101329-Keneba           GAMBIA                         [25-30)              NA                0.3161157   0.2746836   0.3575478
6 months    ki1101329-Keneba           GAMBIA                         >=30                 NA                0.3384075   0.3066657   0.3701493
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <20                  NA                0.4565217   0.3123052   0.6007383
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-25)              NA                0.2980769   0.2099995   0.3861543
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [25-30)              NA                0.2500000   0.1402266   0.3597734
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30                 NA                0.3148148   0.1907048   0.4389248
6 months    ki1113344-GMS-Nepal        NEPAL                          <20                  NA                0.4090909   0.3171296   0.5010523
6 months    ki1113344-GMS-Nepal        NEPAL                          [20-25)              NA                0.2323232   0.1734478   0.2911987
6 months    ki1113344-GMS-Nepal        NEPAL                          [25-30)              NA                0.2848837   0.2173704   0.3523970
6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.2528736   0.1614579   0.3442892
6 months    ki1119695-PROBIT           BELARUS                        <20                  NA                0.1447028          NA          NA
6 months    ki1119695-PROBIT           BELARUS                        [20-25)              NA                0.1057692          NA          NA
6 months    ki1119695-PROBIT           BELARUS                        [25-30)              NA                0.0897959          NA          NA
6 months    ki1119695-PROBIT           BELARUS                        >=30                 NA                0.1010029          NA          NA
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                0.3307030   0.3060046   0.3554014
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-25)              NA                0.2911630   0.2765693   0.3057568
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              NA                0.2857757   0.2674186   0.3041328
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.2836186   0.2617752   0.3054620
6 months    ki1135781-COHORTS          GUATEMALA                      <20                  NA                0.3809524   0.1725122   0.5893925
6 months    ki1135781-COHORTS          GUATEMALA                      [20-25)              NA                0.2631579   0.1226511   0.4036647
6 months    ki1135781-COHORTS          GUATEMALA                      [25-30)              NA                0.3448276   0.1712181   0.5184371
6 months    ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.4339623   0.3000549   0.5678696
6 months    ki1135781-COHORTS          PHILIPPINES                    <20                  NA                0.3188406   0.2696562   0.3680250
6 months    ki1135781-COHORTS          PHILIPPINES                    [20-25)              NA                0.2179342   0.1906681   0.2452002
6 months    ki1135781-COHORTS          PHILIPPINES                    [25-30)              NA                0.2225032   0.1935127   0.2514936
6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.2826362   0.2512116   0.3140609
6 months    ki1148112-LCNI-5           MALAWI                         <20                  NA                0.2564103   0.1190568   0.3937637
6 months    ki1148112-LCNI-5           MALAWI                         [20-25)              NA                0.3064516   0.1914349   0.4214683
6 months    ki1148112-LCNI-5           MALAWI                         [25-30)              NA                0.4814815   0.3479104   0.6150526
6 months    ki1148112-LCNI-5           MALAWI                         >=30                 NA                0.3538462   0.2373381   0.4703542
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                0.4714545          NA          NA
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-25)              NA                0.3822420          NA          NA
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              NA                0.3862575          NA          NA
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.4015645          NA          NA
12 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                0.4411765   0.2739278   0.6084251
12 months   ki0047075b-MAL-ED          BANGLADESH                     [20-25)              NA                0.4805195   0.3686908   0.5923482
12 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)              NA                0.3255814   0.2263375   0.4248253
12 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                0.5476190   0.3967760   0.6984621
12 months   ki0047075b-MAL-ED          BRAZIL                         <20                  NA                0.1388889   0.0256458   0.2521320
12 months   ki0047075b-MAL-ED          BRAZIL                         [20-25)              NA                0.1935484   0.0949686   0.2921281
12 months   ki0047075b-MAL-ED          BRAZIL                         [25-30)              NA                0.2741935   0.1628813   0.3855058
12 months   ki0047075b-MAL-ED          BRAZIL                         >=30                 NA                0.1702128   0.0625092   0.2779164
12 months   ki0047075b-MAL-ED          INDIA                          <20                  NA                0.5588235   0.3915658   0.7260812
12 months   ki0047075b-MAL-ED          INDIA                          [20-25)              NA                0.4607843   0.3638423   0.5577263
12 months   ki0047075b-MAL-ED          INDIA                          [25-30)              NA                0.5000000   0.3873464   0.6126536
12 months   ki0047075b-MAL-ED          INDIA                          >=30                 NA                0.2857143   0.0920835   0.4793451
12 months   ki0047075b-MAL-ED          PERU                           <20                  NA                0.4933333   0.3799747   0.6066920
12 months   ki0047075b-MAL-ED          PERU                           [20-25)              NA                0.5200000   0.4067220   0.6332780
12 months   ki0047075b-MAL-ED          PERU                           [25-30)              NA                0.5254237   0.3977694   0.6530781
12 months   ki0047075b-MAL-ED          PERU                           >=30                 NA                0.5409836   0.4156998   0.6662674
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  NA                0.5714286   0.4214753   0.7213819
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-25)              NA                0.5000000   0.3888241   0.6111759
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              NA                0.3863636   0.2422134   0.5305139
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                0.4421053   0.3420442   0.5421664
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                0.6470588   0.4862106   0.8079070
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-25)              NA                0.7272727   0.6633545   0.7911910
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              NA                0.6759259   0.5875381   0.7643137
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 NA                0.6744186   0.5341718   0.8146654
12 months   ki1000108-IRC              INDIA                          <20                  NA                0.5555556   0.3930373   0.7180738
12 months   ki1000108-IRC              INDIA                          [20-25)              NA                0.5272727   0.4612197   0.5933257
12 months   ki1000108-IRC              INDIA                          [25-30)              NA                0.4878049   0.3993607   0.5762490
12 months   ki1000108-IRC              INDIA                          >=30                 NA                0.3793103   0.2024964   0.5561243
12 months   ki1000304b-SAS-CompFeed    INDIA                          <20                  NA                0.5312500          NA          NA
12 months   ki1000304b-SAS-CompFeed    INDIA                          [20-25)              NA                0.5539216          NA          NA
12 months   ki1000304b-SAS-CompFeed    INDIA                          [25-30)              NA                0.6666667          NA          NA
12 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                0.6279070          NA          NA
12 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                0.4098361   0.2863045   0.5333676
12 months   ki1017093-NIH-Birth        BANGLADESH                     [20-25)              NA                0.5101010   0.4404063   0.5797958
12 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)              NA                0.5714286   0.4949163   0.6479408
12 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                0.4705882   0.3808257   0.5603508
12 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                0.4179104   0.2997141   0.5361068
12 months   ki1017093b-PROVIDE         BANGLADESH                     [20-25)              NA                0.3073770   0.2494350   0.3653191
12 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)              NA                0.3244681   0.2574897   0.3914465
12 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                0.3454545   0.2565193   0.4343898
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                0.4015152   0.3178322   0.4851981
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-25)              NA                0.4080000   0.3470369   0.4689631
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              NA                0.3392857   0.2772400   0.4013314
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                0.3739837   0.2884155   0.4595520
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.2928571   0.2174565   0.3682578
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-25)              NA                0.3327869   0.2953837   0.3701900
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                0.3328424   0.2973891   0.3682957
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.2862319   0.2485159   0.3239479
12 months   ki1101329-Keneba           GAMBIA                         <20                  NA                0.3551402   0.3027777   0.4075027
12 months   ki1101329-Keneba           GAMBIA                         [20-25)              NA                0.4086379   0.3693609   0.4479148
12 months   ki1101329-Keneba           GAMBIA                         [25-30)              NA                0.3814815   0.3405030   0.4224600
12 months   ki1101329-Keneba           GAMBIA                         >=30                 NA                0.4459309   0.4133952   0.4784665
12 months   ki1112895-Guatemala BSC    GUATEMALA                      <20                  NA                0.6428571   0.4976718   0.7880424
12 months   ki1112895-Guatemala BSC    GUATEMALA                      [20-25)              NA                0.5480769   0.4522461   0.6439078
12 months   ki1112895-Guatemala BSC    GUATEMALA                      [25-30)              NA                0.4354839   0.3118329   0.5591348
12 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30                 NA                0.5438596   0.4143136   0.6734057
12 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                  NA                0.2978723          NA          NA
12 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-25)              NA                0.1688889          NA          NA
12 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [25-30)              NA                0.2054795          NA          NA
12 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 NA                0.2041667          NA          NA
12 months   ki1113344-GMS-Nepal        NEPAL                          <20                  NA                0.4913793   0.4003255   0.5824331
12 months   ki1113344-GMS-Nepal        NEPAL                          [20-25)              NA                0.4257426   0.3574973   0.4939879
12 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)              NA                0.4488636   0.3753188   0.5224084
12 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.4886364   0.3841071   0.5931657
12 months   ki1119695-PROBIT           BELARUS                        <20                  NA                0.1815889          NA          NA
12 months   ki1119695-PROBIT           BELARUS                        [20-25)              NA                0.1515499          NA          NA
12 months   ki1119695-PROBIT           BELARUS                        [25-30)              NA                0.1272321          NA          NA
12 months   ki1119695-PROBIT           BELARUS                        >=30                 NA                0.1402525          NA          NA
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                0.4144946   0.3901485   0.4388407
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-25)              NA                0.3714625   0.3568573   0.3860678
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              NA                0.3712621   0.3526002   0.3899240
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.3644912   0.3423054   0.3866769
12 months   ki1135781-COHORTS          GUATEMALA                      <20                  NA                0.6896552   0.5923549   0.7869555
12 months   ki1135781-COHORTS          GUATEMALA                      [20-25)              NA                0.7062937   0.6315772   0.7810103
12 months   ki1135781-COHORTS          GUATEMALA                      [25-30)              NA                0.7606838   0.6833034   0.8380641
12 months   ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.7289720   0.6693658   0.7885781
12 months   ki1135781-COHORTS          INDIA                          <20                  NA                0.4456233   0.3954460   0.4958007
12 months   ki1135781-COHORTS          INDIA                          [20-25)              NA                0.4025448   0.3794266   0.4256630
12 months   ki1135781-COHORTS          INDIA                          [25-30)              NA                0.3570993   0.3339145   0.3802842
12 months   ki1135781-COHORTS          INDIA                          >=30                 NA                0.4391447   0.4112479   0.4670415
12 months   ki1135781-COHORTS          PHILIPPINES                    <20                  NA                0.4837758   0.4305689   0.5369827
12 months   ki1135781-COHORTS          PHILIPPINES                    [20-25)              NA                0.4091429   0.3765591   0.4417266
12 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)              NA                0.4002608   0.3655805   0.4349410
12 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.4903969   0.4553305   0.5254633
12 months   ki1148112-LCNI-5           MALAWI                         <20                  NA                0.4571429   0.3617850   0.5525007
12 months   ki1148112-LCNI-5           MALAWI                         [20-25)              NA                0.4486486   0.3769247   0.5203726
12 months   ki1148112-LCNI-5           MALAWI                         [25-30)              NA                0.4821429   0.4065256   0.5577601
12 months   ki1148112-LCNI-5           MALAWI                         >=30                 NA                0.5364583   0.4658682   0.6070485
12 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                0.4940417          NA          NA
12 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-25)              NA                0.4109264          NA          NA
12 months   kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              NA                0.4080321          NA          NA
12 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.4295652          NA          NA
18 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                0.7058824   0.5523933   0.8593714
18 months   ki0047075b-MAL-ED          BANGLADESH                     [20-25)              NA                0.5890411   0.4759312   0.7021510
18 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)              NA                0.5000000   0.3928430   0.6071570
18 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                0.5500000   0.3954931   0.7045069
18 months   ki0047075b-MAL-ED          BRAZIL                         <20                  NA                0.2352941   0.0923443   0.3782439
18 months   ki0047075b-MAL-ED          BRAZIL                         [20-25)              NA                0.2280702   0.1188618   0.3372786
18 months   ki0047075b-MAL-ED          BRAZIL                         [25-30)              NA                0.2666667   0.1544830   0.3788504
18 months   ki0047075b-MAL-ED          BRAZIL                         >=30                 NA                0.1860465   0.0694336   0.3026594
18 months   ki0047075b-MAL-ED          INDIA                          <20                  NA                0.5757576   0.4067615   0.7447537
18 months   ki0047075b-MAL-ED          INDIA                          [20-25)              NA                0.5757576   0.4781876   0.6733275
18 months   ki0047075b-MAL-ED          INDIA                          [25-30)              NA                0.6216216   0.5108784   0.7323648
18 months   ki0047075b-MAL-ED          INDIA                          >=30                 NA                0.4285714   0.2164475   0.6406954
18 months   ki0047075b-MAL-ED          PERU                           <20                  NA                0.6811594   0.5709734   0.7913454
18 months   ki0047075b-MAL-ED          PERU                           [20-25)              NA                0.6406250   0.5228303   0.7584197
18 months   ki0047075b-MAL-ED          PERU                           [25-30)              NA                0.7192982   0.6024077   0.8361888
18 months   ki0047075b-MAL-ED          PERU                           >=30                 NA                0.6481481   0.5205160   0.7757803
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  NA                0.5952381   0.4464978   0.7439784
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-25)              NA                0.6133333   0.5029015   0.7237651
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              NA                0.5121951   0.3588899   0.6655003
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                0.5157895   0.4150964   0.6164826
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                0.8235294   0.6952174   0.9518414
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-25)              NA                0.8663102   0.8174679   0.9151525
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              NA                0.8256881   0.7543717   0.8970045
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 NA                0.8372093   0.7267179   0.9477007
18 months   ki1000108-IRC              INDIA                          <20                  NA                0.6756757   0.5246545   0.8266968
18 months   ki1000108-IRC              INDIA                          [20-25)              NA                0.5727273   0.5072795   0.6381750
18 months   ki1000108-IRC              INDIA                          [25-30)              NA                0.5528455   0.4648708   0.6408202
18 months   ki1000108-IRC              INDIA                          >=30                 NA                0.3793103   0.2024969   0.5561238
18 months   ki1000304b-SAS-CompFeed    INDIA                          <20                  NA                0.6507937          NA          NA
18 months   ki1000304b-SAS-CompFeed    INDIA                          [20-25)              NA                0.6683168          NA          NA
18 months   ki1000304b-SAS-CompFeed    INDIA                          [25-30)              NA                0.7798165          NA          NA
18 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                0.7142857          NA          NA
18 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                0.6851852   0.5611851   0.8091852
18 months   ki1017093-NIH-Birth        BANGLADESH                     [20-25)              NA                0.6393443   0.5697016   0.7089869
18 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)              NA                0.6423841   0.5658589   0.7189093
18 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                0.6542056   0.5639942   0.7444170
18 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                0.5151515   0.3944795   0.6358235
18 months   ki1017093b-PROVIDE         BANGLADESH                     [20-25)              NA                0.3909465   0.3295433   0.4523497
18 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)              NA                0.3957219   0.3255763   0.4658675
18 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                0.4537037   0.3597322   0.5476752
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                0.4538462   0.3682031   0.5394892
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-25)              NA                0.4426230   0.3802568   0.5049891
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              NA                0.4318182   0.3663192   0.4973172
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                0.4545455   0.3657630   0.5433279
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.3870968   0.2880677   0.4861259
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-25)              NA                0.3967136   0.3502413   0.4431859
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                0.4323232   0.3886665   0.4759799
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.3869464   0.3408418   0.4330510
18 months   ki1101329-Keneba           GAMBIA                         <20                  NA                0.4421769   0.3853941   0.4989597
18 months   ki1101329-Keneba           GAMBIA                         [20-25)              NA                0.5026549   0.4614182   0.5438916
18 months   ki1101329-Keneba           GAMBIA                         [25-30)              NA                0.4584139   0.4154542   0.5013736
18 months   ki1101329-Keneba           GAMBIA                         >=30                 NA                0.5490417   0.5162886   0.5817949
18 months   ki1112895-Guatemala BSC    GUATEMALA                      <20                  NA                0.7586207   0.6024517   0.9147897
18 months   ki1112895-Guatemala BSC    GUATEMALA                      [20-25)              NA                0.6351351   0.5251549   0.7451154
18 months   ki1112895-Guatemala BSC    GUATEMALA                      [25-30)              NA                0.5714286   0.4213567   0.7215005
18 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30                 NA                0.5897436   0.4349480   0.7445391
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                  NA                0.6000000          NA          NA
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-25)              NA                0.4736842          NA          NA
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [25-30)              NA                0.2903226          NA          NA
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 NA                0.2702703          NA          NA
18 months   ki1113344-GMS-Nepal        NEPAL                          <20                  NA                0.6434783   0.5558614   0.7310951
18 months   ki1113344-GMS-Nepal        NEPAL                          [20-25)              NA                0.5808081   0.5120194   0.6495967
18 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)              NA                0.6494253   0.5784664   0.7203842
18 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.6436782   0.5429565   0.7443998
18 months   ki1119695-PROBIT           BELARUS                        <20                  NA                0.1959184          NA          NA
18 months   ki1119695-PROBIT           BELARUS                        [20-25)              NA                0.1627695          NA          NA
18 months   ki1119695-PROBIT           BELARUS                        [25-30)              NA                0.1360835          NA          NA
18 months   ki1119695-PROBIT           BELARUS                        >=30                 NA                0.1517190          NA          NA
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                0.5285962   0.4997935   0.5573989
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-25)              NA                0.4848380   0.4666536   0.5030225
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              NA                0.4851912   0.4624584   0.5079239
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.4811530   0.4545279   0.5077780
18 months   ki1135781-COHORTS          GUATEMALA                      <20                  NA                0.8088235   0.7152572   0.9023899
18 months   ki1135781-COHORTS          GUATEMALA                      [20-25)              NA                0.7913043   0.7169494   0.8656593
18 months   ki1135781-COHORTS          GUATEMALA                      [25-30)              NA                0.8453608   0.7733289   0.9173928
18 months   ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.8538012   0.8007882   0.9068142
18 months   ki1135781-COHORTS          PHILIPPINES                    <20                  NA                0.6487342   0.5960914   0.7013769
18 months   ki1135781-COHORTS          PHILIPPINES                    [20-25)              NA                0.5942029   0.5607497   0.6276561
18 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)              NA                0.5943012   0.5588442   0.6297582
18 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.6498003   0.6156764   0.6839242
18 months   ki1148112-LCNI-5           MALAWI                         <20                  NA                0.5168539   0.4129404   0.6207675
18 months   ki1148112-LCNI-5           MALAWI                         [20-25)              NA                0.5503356   0.4703873   0.6302838
18 months   ki1148112-LCNI-5           MALAWI                         [25-30)              NA                0.5486111   0.4672587   0.6299635
18 months   ki1148112-LCNI-5           MALAWI                         >=30                 NA                0.6227545   0.5491751   0.6963339
18 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                0.5754527          NA          NA
18 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-25)              NA                0.5076508          NA          NA
18 months   kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              NA                0.5166517          NA          NA
18 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.5444015          NA          NA
24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                0.8064516   0.6670573   0.9458459
24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-25)              NA                0.6060606   0.4879082   0.7242130
24 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)              NA                0.5714286   0.4653580   0.6774991
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                0.6052632   0.4494959   0.7610304
24 months   ki0047075b-MAL-ED          BRAZIL                         <20                  NA                0.2666667   0.1079729   0.4253604
24 months   ki0047075b-MAL-ED          BRAZIL                         [20-25)              NA                0.2363636   0.1237638   0.3489635
24 months   ki0047075b-MAL-ED          BRAZIL                         [25-30)              NA                0.2352941   0.1185451   0.3520431
24 months   ki0047075b-MAL-ED          BRAZIL                         >=30                 NA                0.1750000   0.0569132   0.2930868
24 months   ki0047075b-MAL-ED          INDIA                          <20                  NA                0.5757576   0.4067598   0.7447553
24 months   ki0047075b-MAL-ED          INDIA                          [20-25)              NA                0.6363636   0.5413951   0.7313322
24 months   ki0047075b-MAL-ED          INDIA                          [25-30)              NA                0.6575342   0.5484361   0.7666324
24 months   ki0047075b-MAL-ED          INDIA                          >=30                 NA                0.4761905   0.2621093   0.6902716
24 months   ki0047075b-MAL-ED          PERU                           <20                  NA                0.7540984   0.6457864   0.8624103
24 months   ki0047075b-MAL-ED          PERU                           [20-25)              NA                0.6851852   0.5610253   0.8093450
24 months   ki0047075b-MAL-ED          PERU                           [25-30)              NA                0.7358491   0.6168814   0.8548167
24 months   ki0047075b-MAL-ED          PERU                           >=30                 NA                0.7000000   0.5726875   0.8273125
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  NA                0.6500000   0.5018820   0.7981180
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-25)              NA                0.6811594   0.5709715   0.7913473
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              NA                0.5128205   0.3556243   0.6700167
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                0.5957447   0.4963321   0.6951572
24 months   ki1000108-IRC              INDIA                          <20                  NA                0.7837838   0.6509771   0.9165904
24 months   ki1000108-IRC              INDIA                          [20-25)              NA                0.6606335   0.5981310   0.7231359
24 months   ki1000108-IRC              INDIA                          [25-30)              NA                0.6016260   0.5150027   0.6882493
24 months   ki1000108-IRC              INDIA                          >=30                 NA                0.4827586   0.3006666   0.6648507
24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                0.8039216   0.6948405   0.9130026
24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-25)              NA                0.7241379   0.6576574   0.7906185
24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)              NA                0.7928571   0.7256553   0.8600590
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                0.7281553   0.6421419   0.8141688
24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                0.5873016   0.4656275   0.7089757
24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-25)              NA                0.4533898   0.3898216   0.5169581
24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)              NA                0.4748603   0.4016428   0.5480779
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                0.4903846   0.3942246   0.5865446
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                0.4830508   0.3928168   0.5732848
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-25)              NA                0.4838710   0.4173276   0.5504144
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              NA                0.5000000   0.4299460   0.5700540
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                0.5631068   0.4672429   0.6589707
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.4035088   0.2760801   0.5309374
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-25)              NA                0.4518519   0.3924580   0.5112457
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                0.4656716   0.4122278   0.5191155
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.3883162   0.3322906   0.4443417
24 months   ki1101329-Keneba           GAMBIA                         <20                  NA                0.5319149   0.4736635   0.5901663
24 months   ki1101329-Keneba           GAMBIA                         [20-25)              NA                0.5592593   0.5173752   0.6011433
24 months   ki1101329-Keneba           GAMBIA                         [25-30)              NA                0.5399610   0.4968223   0.5830997
24 months   ki1101329-Keneba           GAMBIA                         >=30                 NA                0.6180964   0.5854460   0.6507467
24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                  NA                0.5409836          NA          NA
24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-25)              NA                0.3605442          NA          NA
24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [25-30)              NA                0.4177215          NA          NA
24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 NA                0.4127907          NA          NA
24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  NA                0.6929825   0.6082361   0.7777288
24 months   ki1113344-GMS-Nepal        NEPAL                          [20-25)              NA                0.6482412   0.5818371   0.7146453
24 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)              NA                0.7352941   0.6689170   0.8016713
24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.6941176   0.5960750   0.7921603
24 months   ki1119695-PROBIT           BELARUS                        <20                  NA                0.2485876          NA          NA
24 months   ki1119695-PROBIT           BELARUS                        [20-25)              NA                0.2168142          NA          NA
24 months   ki1119695-PROBIT           BELARUS                        [25-30)              NA                0.2118644          NA          NA
24 months   ki1119695-PROBIT           BELARUS                        >=30                 NA                0.1555556          NA          NA
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                0.7743056   0.7260125   0.8225986
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-25)              NA                0.6935028   0.6595337   0.7274720
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              NA                0.7229862   0.6840978   0.7618747
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.7073171   0.6608809   0.7537533
24 months   ki1135781-COHORTS          GUATEMALA                      <20                  NA                0.8987342   0.8321394   0.9653290
24 months   ki1135781-COHORTS          GUATEMALA                      [20-25)              NA                0.8803419   0.8214696   0.9392141
24 months   ki1135781-COHORTS          GUATEMALA                      [25-30)              NA                0.9158879   0.8632419   0.9685338
24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.8947368   0.8486906   0.9407831
24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  NA                0.7911392   0.7463118   0.8359667
24 months   ki1135781-COHORTS          PHILIPPINES                    [20-25)              NA                0.7481390   0.7181655   0.7781124
24 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)              NA                0.7272727   0.6948703   0.7596752
24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.7661064   0.7350510   0.7971619
24 months   ki1148112-LCNI-5           MALAWI                         <20                  NA                0.6210526   0.5234167   0.7186885
24 months   ki1148112-LCNI-5           MALAWI                         [20-25)              NA                0.6352941   0.5628752   0.7077130
24 months   ki1148112-LCNI-5           MALAWI                         [25-30)              NA                0.6466667   0.5701062   0.7232271
24 months   ki1148112-LCNI-5           MALAWI                         >=30                 NA                0.6936416   0.6248909   0.7623923


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.2943396   0.2393642   0.3493150
3 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.1630901   0.1155503   0.2106299
3 months    ki0047075b-MAL-ED          PERU                           NA                   NA                0.3333333   0.2801668   0.3864999
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.2611465   0.2124837   0.3098093
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.3453039   0.2962566   0.3943512
3 months    ki1000108-IRC              INDIA                          NA                   NA                0.3170732   0.2719756   0.3621708
3 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.3319149          NA          NA
3 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2232855   0.1906626   0.2559083
3 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1857143   0.1568859   0.2145427
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1596306   0.1335394   0.1857218
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1019806   0.0898022   0.1141591
3 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.2440841   0.2264566   0.2617117
3 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1585160   0.1290957   0.1879363
3 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0740923          NA          NA
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2094918   0.2027485   0.2162352
3 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.2743191   0.2357099   0.3129282
3 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.1902629   0.1795262   0.2009996
3 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1446335   0.1321610   0.1571060
3 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4033972          NA          NA
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.3414634   0.2820852   0.4008416
6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.1834862   0.1319869   0.2349856
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                0.4432624   0.3851792   0.5013456
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.3837638   0.3257580   0.4417697
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.5122616   0.4610525   0.5634707
6 months    ki1000108-IRC              INDIA                          NA                   NA                0.4240196   0.3760078   0.4720314
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.4305177          NA          NA
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.3624772   0.3222291   0.4027254
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2546875   0.2209066   0.2884684
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.3070652   0.2737175   0.3404129
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1994585   0.1828175   0.2160995
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.3232413   0.3038940   0.3425886
6 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.3181818   0.2618904   0.3744732
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.2857143   0.2484972   0.3229313
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.1042654          NA          NA
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2944934   0.2851174   0.3038694
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.3617021   0.2821098   0.4412945
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2498218   0.2338012   0.2658424
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                0.3545455   0.2911884   0.4179025
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4254455          NA          NA
12 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.4309623   0.3680480   0.4938767
12 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.2028986   0.1479811   0.2578160
12 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.4721030   0.4078643   0.5363418
12 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.5185185   0.4588090   0.5782281
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.4710425   0.4101339   0.5319511
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.6989247   0.6522466   0.7456029
12 months   ki1000108-IRC              INDIA                          NA                   NA                0.5073529   0.4587823   0.5559236
12 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.5882353          NA          NA
12 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.5083488   0.4661047   0.5505929
12 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3316913   0.2942672   0.3691154
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.3799726   0.3447141   0.4152311
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3170116   0.2965161   0.3375072
12 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.4093220   0.3894797   0.4291643
12 months   ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.5358491   0.4756906   0.5960076
12 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.2056555          NA          NA
12 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.4553265   0.4148326   0.4958204
12 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.1456628          NA          NA
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.3768330   0.3674102   0.3862557
12 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7237077   0.6866720   0.7607433
12 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.3997582   0.3861287   0.4133878
12 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.4388125   0.4203024   0.4573225
12 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.4846154   0.4461659   0.5230648
12 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4517554          NA          NA
18 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.5670996   0.5030660   0.6311332
18 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.2319588   0.1724108   0.2915068
18 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.5770925   0.5126846   0.6415004
18 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.6721311   0.6131080   0.7311543
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.5573123   0.4959861   0.6186384
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.8471850   0.8106214   0.8837486
18 months   ki1000108-IRC              INDIA                          NA                   NA                0.5623472   0.5142095   0.6104849
18 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.6995192          NA          NA
18 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.6484848   0.6063825   0.6905872
18 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.4172185   0.3778614   0.4565757
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.4433566   0.4069178   0.4797954
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4054054   0.3800646   0.4307462
18 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.5028723   0.4822677   0.5234769
18 months   ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.6304348   0.5605008   0.7003688
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.3801653          NA          NA
18 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.6236934   0.5840266   0.6633602
18 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.1565217          NA          NA
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.4911919   0.4796962   0.5026875
18 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.8292683   0.7945030   0.8640336
18 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6166413   0.5980630   0.6352197
18 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.5664845   0.5249935   0.6079755
18 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.5437926          NA          NA
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.6210046   0.5566048   0.6854043
24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.2272727   0.1651836   0.2893619
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.6194690   0.5560293   0.6829088
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.7201835   0.6604557   0.7799113
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.6157025   0.5542897   0.6771153
24 months   ki1000108-IRC              INDIA                          NA                   NA                0.6414634   0.5949863   0.6879405
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.7542735   0.7152272   0.7933198
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.4810997   0.4404722   0.5217271
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.5015773   0.4626267   0.5405279
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4344176   0.4029306   0.4659046
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.5741080   0.5533746   0.5948413
24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.4144981          NA          NA
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.6901408   0.6520774   0.7282042
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.2061657          NA          NA
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.7166489   0.6962411   0.7370566
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.8966245   0.8691878   0.9240612
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.7525371   0.7358238   0.7692504
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.6530612   0.6145549   0.6915676


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki0047075b-MAL-ED          BANGLADESH                     <20                  <20               1.0000000   1.0000000   1.0000000
3 months    ki0047075b-MAL-ED          BANGLADESH                     [20-25)              <20               0.8954192   0.5241436   1.5296867
3 months    ki0047075b-MAL-ED          BANGLADESH                     [25-30)              <20               0.6120761   0.3405511   1.1000909
3 months    ki0047075b-MAL-ED          BANGLADESH                     >=30                 <20               1.0518395   0.5894328   1.8770016
3 months    ki0047075b-MAL-ED          BRAZIL                         <20                  <20               1.0000000   1.0000000   1.0000000
3 months    ki0047075b-MAL-ED          BRAZIL                         [20-25)              <20               1.2590090   0.5153356   3.0758667
3 months    ki0047075b-MAL-ED          BRAZIL                         [25-30)              <20               1.4333333   0.5890706   3.4876030
3 months    ki0047075b-MAL-ED          BRAZIL                         >=30                 <20               0.8431373   0.2925186   2.4302056
3 months    ki0047075b-MAL-ED          PERU                           <20                  <20               1.0000000   1.0000000   1.0000000
3 months    ki0047075b-MAL-ED          PERU                           [20-25)              <20               0.9014981   0.5957199   1.3642299
3 months    ki0047075b-MAL-ED          PERU                           [25-30)              <20               0.9078125   0.5770247   1.4282293
3 months    ki0047075b-MAL-ED          PERU                           >=30                 <20               0.8671642   0.5495556   1.3683306
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  <20               1.0000000   1.0000000   1.0000000
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-25)              <20               1.0859729   0.6240986   1.8896647
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              <20               1.0638853   0.5755063   1.9667062
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 <20               0.7736264   0.4264893   1.4033124
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20                  <20               1.0000000   1.0000000   1.0000000
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-25)              <20               0.9392265   0.5869568   1.5029154
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              <20               0.8717949   0.5254226   1.4465048
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 <20               0.7472527   0.3931888   1.4201491
3 months    ki1000108-IRC              INDIA                          <20                  <20               1.0000000   1.0000000   1.0000000
3 months    ki1000108-IRC              INDIA                          [20-25)              <20               0.7115385   0.4678447   1.0821688
3 months    ki1000108-IRC              INDIA                          [25-30)              <20               0.7332317   0.4667349   1.1518931
3 months    ki1000108-IRC              INDIA                          >=30                 <20               0.5581897   0.2651858   1.1749334
3 months    ki1000304b-SAS-CompFeed    INDIA                          <20                  <20               1.0000000          NA          NA
3 months    ki1000304b-SAS-CompFeed    INDIA                          [20-25)              <20               0.7780522          NA          NA
3 months    ki1000304b-SAS-CompFeed    INDIA                          [25-30)              <20               1.0096154          NA          NA
3 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 <20               0.9472934          NA          NA
3 months    ki1017093-NIH-Birth        BANGLADESH                     <20                  <20               1.0000000   1.0000000   1.0000000
3 months    ki1017093-NIH-Birth        BANGLADESH                     [20-25)              <20               1.5761364   0.8733663   2.8444030
3 months    ki1017093-NIH-Birth        BANGLADESH                     [25-30)              <20               1.7502498   0.9636991   3.1787661
3 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                 <20               1.2066116   0.6271394   2.3215117
3 months    ki1017093b-PROVIDE         BANGLADESH                     <20                  <20               1.0000000   1.0000000   1.0000000
3 months    ki1017093b-PROVIDE         BANGLADESH                     [20-25)              <20               0.7981221   0.4914848   1.2960703
3 months    ki1017093b-PROVIDE         BANGLADESH                     [25-30)              <20               0.8811802   0.5351618   1.4509231
3 months    ki1017093b-PROVIDE         BANGLADESH                     >=30                 <20               0.9676685   0.5643215   1.6593064
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20                  <20               1.0000000   1.0000000   1.0000000
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-25)              <20               0.8810027   0.5742533   1.3516087
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              <20               0.6541607   0.4067605   1.0520347
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 <20               0.7083333   0.4104197   1.2224952
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  <20               1.0000000   1.0000000   1.0000000
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-25)              <20               0.7522083   0.4878375   1.1598481
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              <20               0.7199615   0.4673907   1.1090177
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 <20               0.6684868   0.4259891   1.0490285
3 months    ki1101329-Keneba           GAMBIA                         <20                  <20               1.0000000   1.0000000   1.0000000
3 months    ki1101329-Keneba           GAMBIA                         [20-25)              <20               0.9838186   0.7838158   1.2348551
3 months    ki1101329-Keneba           GAMBIA                         [25-30)              <20               0.9018658   0.7084116   1.1481486
3 months    ki1101329-Keneba           GAMBIA                         >=30                 <20               0.9081124   0.7309518   1.1282115
3 months    ki1113344-GMS-Nepal        NEPAL                          <20                  <20               1.0000000   1.0000000   1.0000000
3 months    ki1113344-GMS-Nepal        NEPAL                          [20-25)              <20               0.4734300   0.3028240   0.7401524
3 months    ki1113344-GMS-Nepal        NEPAL                          [25-30)              <20               0.3579545   0.2123319   0.6034490
3 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 <20               0.5384615   0.3076270   0.9425078
3 months    ki1119695-PROBIT           BELARUS                        <20                  <20               1.0000000          NA          NA
3 months    ki1119695-PROBIT           BELARUS                        [20-25)              <20               0.6756115          NA          NA
3 months    ki1119695-PROBIT           BELARUS                        [25-30)              <20               0.5406747          NA          NA
3 months    ki1119695-PROBIT           BELARUS                        >=30                 <20               0.6263963          NA          NA
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                  <20               1.0000000   1.0000000   1.0000000
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-25)              <20               0.9259517   0.8446532   1.0150752
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              <20               0.9433769   0.8532850   1.0429809
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 <20               0.8871212   0.7930854   0.9923068
3 months    ki1135781-COHORTS          GUATEMALA                      <20                  <20               1.0000000   1.0000000   1.0000000
3 months    ki1135781-COHORTS          GUATEMALA                      [20-25)              <20               0.8040238   0.4900888   1.3190556
3 months    ki1135781-COHORTS          GUATEMALA                      [25-30)              <20               0.9597289   0.5956424   1.5463633
3 months    ki1135781-COHORTS          GUATEMALA                      >=30                 <20               1.2382284   0.8208695   1.8677874
3 months    ki1135781-COHORTS          INDIA                          <20                  <20               1.0000000   1.0000000   1.0000000
3 months    ki1135781-COHORTS          INDIA                          [20-25)              <20               0.8393852   0.6878489   1.0243056
3 months    ki1135781-COHORTS          INDIA                          [25-30)              <20               0.7215824   0.5879518   0.8855846
3 months    ki1135781-COHORTS          INDIA                          >=30                 <20               0.8151363   0.6611413   1.0050003
3 months    ki1135781-COHORTS          PHILIPPINES                    <20                  <20               1.0000000   1.0000000   1.0000000
3 months    ki1135781-COHORTS          PHILIPPINES                    [20-25)              <20               0.6720753   0.5121442   0.8819493
3 months    ki1135781-COHORTS          PHILIPPINES                    [25-30)              <20               0.7240275   0.5505399   0.9521848
3 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 <20               0.9055507   0.6973242   1.1759554
3 months    kiGH5241-JiVitA-3          BANGLADESH                     <20                  <20               1.0000000          NA          NA
3 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-25)              <20               0.8171966          NA          NA
3 months    kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              <20               0.8194537          NA          NA
3 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                 <20               0.8944161          NA          NA
6 months    ki0047075b-MAL-ED          BANGLADESH                     <20                  <20               1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     [20-25)              <20               0.9687500   0.5926265   1.5835887
6 months    ki0047075b-MAL-ED          BANGLADESH                     [25-30)              <20               0.5965909   0.3433772   1.0365298
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30                 <20               1.0465116   0.6108203   1.7929766
6 months    ki0047075b-MAL-ED          BRAZIL                         <20                  <20               1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED          BRAZIL                         [20-25)              <20               1.6250000   0.6253566   4.2225908
6 months    ki0047075b-MAL-ED          BRAZIL                         [25-30)              <20               1.8750000   0.7368447   4.7711884
6 months    ki0047075b-MAL-ED          BRAZIL                         >=30                 <20               1.1200000   0.3833493   3.2722119
6 months    ki0047075b-MAL-ED          PERU                           <20                  <20               1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED          PERU                           [20-25)              <20               1.0351506   0.7308805   1.4660903
6 months    ki0047075b-MAL-ED          PERU                           [25-30)              <20               1.0323529   0.7077670   1.5057958
6 months    ki0047075b-MAL-ED          PERU                           >=30                 <20               0.9990512   0.6830648   1.4612134
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  <20               1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-25)              <20               0.8152941   0.5382190   1.2350074
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              <20               0.7148936   0.4293634   1.1903039
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 <20               0.7577320   0.5008619   1.1463393
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20                  <20               1.0000000   1.0000000   1.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-25)              <20               1.0387917   0.7264116   1.4855052
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              <20               0.9796592   0.6692537   1.4340332
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 <20               0.8319328   0.5138536   1.3469052
6 months    ki1000108-IRC              INDIA                          <20                  <20               1.0000000   1.0000000   1.0000000
6 months    ki1000108-IRC              INDIA                          [20-25)              <20               0.8095694   0.5732311   1.1433479
6 months    ki1000108-IRC              INDIA                          [25-30)              <20               0.7702182   0.5288032   1.1218467
6 months    ki1000108-IRC              INDIA                          >=30                 <20               0.6533575   0.3622017   1.1785591
6 months    ki1000304b-SAS-CompFeed    INDIA                          <20                  <20               1.0000000          NA          NA
6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-25)              <20               0.9831118          NA          NA
6 months    ki1000304b-SAS-CompFeed    INDIA                          [25-30)              <20               1.2749141          NA          NA
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 <20               1.1777778          NA          NA
6 months    ki1017093-NIH-Birth        BANGLADESH                     <20                  <20               1.0000000   1.0000000   1.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-25)              <20               1.4976303   0.9207413   2.4359683
6 months    ki1017093-NIH-Birth        BANGLADESH                     [25-30)              <20               1.6049383   0.9817069   2.6238247
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                 <20               1.3666667   0.8144223   2.2933775
6 months    ki1017093b-PROVIDE         BANGLADESH                     <20                  <20               1.0000000   1.0000000   1.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-25)              <20               0.7254902   0.4879280   1.0787166
6 months    ki1017093b-PROVIDE         BANGLADESH                     [25-30)              <20               0.7828152   0.5202757   1.1778364
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30                 <20               0.7838983   0.4990259   1.2313921
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20                  <20               1.0000000   1.0000000   1.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-25)              <20               0.9882353   0.7333372   1.3317325
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              <20               0.8303571   0.6022547   1.1448529
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 <20               0.8640000   0.5988544   1.2465400
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  <20               1.0000000   1.0000000   1.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-25)              <20               1.2166186   0.8397059   1.7627136
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              <20               1.2047244   0.8332702   1.7417650
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 <20               0.9708951   0.6609735   1.4261349
6 months    ki1101329-Keneba           GAMBIA                         <20                  <20               1.0000000   1.0000000   1.0000000
6 months    ki1101329-Keneba           GAMBIA                         [20-25)              <20               1.0393980   0.8493358   1.2719919
6 months    ki1101329-Keneba           GAMBIA                         [25-30)              <20               1.0359831   0.8407171   1.2766020
6 months    ki1101329-Keneba           GAMBIA                         >=30                 <20               1.1090384   0.9192239   1.3380485
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <20                  <20               1.0000000   1.0000000   1.0000000
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-25)              <20               0.6529304   0.4236521   1.0062928
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [25-30)              <20               0.5476190   0.3188296   0.9405860
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30                 <20               0.6895944   0.4160964   1.1428610
6 months    ki1113344-GMS-Nepal        NEPAL                          <20                  <20               1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          [20-25)              <20               0.5679012   0.4047191   0.7968782
6 months    ki1113344-GMS-Nepal        NEPAL                          [25-30)              <20               0.6963824   0.5023301   0.9653980
6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 <20               0.6181354   0.4038356   0.9461556
6 months    ki1119695-PROBIT           BELARUS                        <20                  <20               1.0000000          NA          NA
6 months    ki1119695-PROBIT           BELARUS                        [20-25)              <20               0.7309409          NA          NA
6 months    ki1119695-PROBIT           BELARUS                        [25-30)              <20               0.6205539          NA          NA
6 months    ki1119695-PROBIT           BELARUS                        >=30                 <20               0.6980019          NA          NA
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                  <20               1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-25)              <20               0.8804366   0.8047031   0.9632977
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              <20               0.8641460   0.7830782   0.9536062
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 <20               0.8576232   0.7703794   0.9547472
6 months    ki1135781-COHORTS          GUATEMALA                      <20                  <20               1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      [20-25)              <20               0.6907895   0.3216095   1.4837562
6 months    ki1135781-COHORTS          GUATEMALA                      [25-30)              <20               0.9051724   0.4303423   1.9039196
6 months    ki1135781-COHORTS          GUATEMALA                      >=30                 <20               1.1391509   0.6078155   2.1349650
6 months    ki1135781-COHORTS          PHILIPPINES                    <20                  <20               1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    [20-25)              <20               0.6835208   0.5603936   0.8337010
6 months    ki1135781-COHORTS          PHILIPPINES                    [25-30)              <20               0.6978508   0.5702552   0.8539962
6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 <20               0.8864501   0.7329460   1.0721032
6 months    ki1148112-LCNI-5           MALAWI                         <20                  <20               1.0000000   1.0000000   1.0000000
6 months    ki1148112-LCNI-5           MALAWI                         [20-25)              <20               1.1951613   0.6213913   2.2987293
6 months    ki1148112-LCNI-5           MALAWI                         [25-30)              <20               1.8777778   1.0272018   3.4326746
6 months    ki1148112-LCNI-5           MALAWI                         >=30                 <20               1.3800000   0.7358737   2.5879441
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20                  <20               1.0000000          NA          NA
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-25)              <20               0.8107719          NA          NA
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              <20               0.8192891          NA          NA
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                 <20               0.8517568          NA          NA
12 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  <20               1.0000000   1.0000000   1.0000000
12 months   ki0047075b-MAL-ED          BANGLADESH                     [20-25)              <20               1.0891775   0.6980889   1.6993648
12 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)              <20               0.7379845   0.4537183   1.2003509
12 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 <20               1.2412698   0.7768812   1.9832516
12 months   ki0047075b-MAL-ED          BRAZIL                         <20                  <20               1.0000000   1.0000000   1.0000000
12 months   ki0047075b-MAL-ED          BRAZIL                         [20-25)              <20               1.3935484   0.5328549   3.6444764
12 months   ki0047075b-MAL-ED          BRAZIL                         [25-30)              <20               1.9741935   0.7940057   4.9085795
12 months   ki0047075b-MAL-ED          BRAZIL                         >=30                 <20               1.2255319   0.4366163   3.4399273
12 months   ki0047075b-MAL-ED          INDIA                          <20                  <20               1.0000000   1.0000000   1.0000000
12 months   ki0047075b-MAL-ED          INDIA                          [20-25)              <20               0.8245614   0.5719230   1.1887990
12 months   ki0047075b-MAL-ED          INDIA                          [25-30)              <20               0.8947368   0.6151721   1.3013497
12 months   ki0047075b-MAL-ED          INDIA                          >=30                 <20               0.5112782   0.2437288   1.0725257
12 months   ki0047075b-MAL-ED          PERU                           <20                  <20               1.0000000   1.0000000   1.0000000
12 months   ki0047075b-MAL-ED          PERU                           [20-25)              <20               1.0540541   0.7679841   1.4466836
12 months   ki0047075b-MAL-ED          PERU                           [25-30)              <20               1.0650481   0.7623232   1.4879877
12 months   ki0047075b-MAL-ED          PERU                           >=30                 <20               1.0965884   0.7913350   1.5195916
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  <20               1.0000000   1.0000000   1.0000000
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-25)              <20               0.8750000   0.6203419   1.2341984
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              <20               0.6761364   0.4284849   1.0669230
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 <20               0.7736842   0.5470973   1.0941149
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  <20               1.0000000   1.0000000   1.0000000
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-25)              <20               1.1239669   0.8634681   1.4630555
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              <20               1.0446128   0.7888071   1.3833748
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 <20               1.0422833   0.7537597   1.4412478
12 months   ki1000108-IRC              INDIA                          <20                  <20               1.0000000   1.0000000   1.0000000
12 months   ki1000108-IRC              INDIA                          [20-25)              <20               0.9490909   0.6904040   1.3047049
12 months   ki1000108-IRC              INDIA                          [25-30)              <20               0.8780488   0.6223720   1.2387603
12 months   ki1000108-IRC              INDIA                          >=30                 <20               0.6827586   0.3937859   1.1837888
12 months   ki1000304b-SAS-CompFeed    INDIA                          <20                  <20               1.0000000          NA          NA
12 months   ki1000304b-SAS-CompFeed    INDIA                          [20-25)              <20               1.0426759          NA          NA
12 months   ki1000304b-SAS-CompFeed    INDIA                          [25-30)              <20               1.2549020          NA          NA
12 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 <20               1.1819425          NA          NA
12 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  <20               1.0000000   1.0000000   1.0000000
12 months   ki1017093-NIH-Birth        BANGLADESH                     [20-25)              <20               1.2446465   0.8939672   1.7328877
12 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)              <20               1.3942857   1.0025668   1.9390556
12 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 <20               1.1482353   0.8037433   1.6403798
12 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  <20               1.0000000   1.0000000   1.0000000
12 months   ki1017093b-PROVIDE         BANGLADESH                     [20-25)              <20               0.7355094   0.5235713   1.0332385
12 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)              <20               0.7764058   0.5470438   1.1019336
12 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 <20               0.8266234   0.5639121   1.2117247
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  <20               1.0000000   1.0000000   1.0000000
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-25)              <20               1.0161509   0.7862950   1.3132002
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              <20               0.8450135   0.6403918   1.1150171
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 <20               0.9314312   0.6834991   1.2692981
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  <20               1.0000000   1.0000000   1.0000000
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-25)              <20               1.1363455   0.8580342   1.5049295
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              <20               1.1365351   0.8601528   1.5017239
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 <20               0.9773772   0.7319026   1.3051821
12 months   ki1101329-Keneba           GAMBIA                         <20                  <20               1.0000000   1.0000000   1.0000000
12 months   ki1101329-Keneba           GAMBIA                         [20-25)              <20               1.1506382   0.9649418   1.3720706
12 months   ki1101329-Keneba           GAMBIA                         [25-30)              <20               1.0741715   0.8950525   1.2891361
12 months   ki1101329-Keneba           GAMBIA                         >=30                 <20               1.2556475   1.0651811   1.4801714
12 months   ki1112895-Guatemala BSC    GUATEMALA                      <20                  <20               1.0000000   1.0000000   1.0000000
12 months   ki1112895-Guatemala BSC    GUATEMALA                      [20-25)              <20               0.8525641   0.6407442   1.1344083
12 months   ki1112895-Guatemala BSC    GUATEMALA                      [25-30)              <20               0.6774194   0.4712960   0.9736917
12 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30                 <20               0.8460039   0.6092818   1.1746988
12 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                  <20               1.0000000          NA          NA
12 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-25)              <20               0.5669841          NA          NA
12 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [25-30)              <20               0.6898239          NA          NA
12 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 <20               0.6854167          NA          NA
12 months   ki1113344-GMS-Nepal        NEPAL                          <20                  <20               1.0000000   1.0000000   1.0000000
12 months   ki1113344-GMS-Nepal        NEPAL                          [20-25)              <20               0.8664235   0.6781437   1.1069772
12 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)              <20               0.9134769   0.7133033   1.1698250
12 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 <20               0.9944179   0.7493004   1.3197202
12 months   ki1119695-PROBIT           BELARUS                        <20                  <20               1.0000000          NA          NA
12 months   ki1119695-PROBIT           BELARUS                        [20-25)              <20               0.8345771          NA          NA
12 months   ki1119695-PROBIT           BELARUS                        [25-30)              <20               0.7006603          NA          NA
12 months   ki1119695-PROBIT           BELARUS                        >=30                 <20               0.7723625          NA          NA
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  <20               1.0000000   1.0000000   1.0000000
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-25)              <20               0.8961819   0.8350247   0.9618182
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              <20               0.8956984   0.8290617   0.9676911
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 <20               0.8793629   0.8080395   0.9569818
12 months   ki1135781-COHORTS          GUATEMALA                      <20                  <20               1.0000000   1.0000000   1.0000000
12 months   ki1135781-COHORTS          GUATEMALA                      [20-25)              <20               1.0241259   0.8585581   1.2216225
12 months   ki1135781-COHORTS          GUATEMALA                      [25-30)              <20               1.1029915   0.9269015   1.3125344
12 months   ki1135781-COHORTS          GUATEMALA                      >=30                 <20               1.0570093   0.8979652   1.2442228
12 months   ki1135781-COHORTS          INDIA                          <20                  <20               1.0000000   1.0000000   1.0000000
12 months   ki1135781-COHORTS          INDIA                          [20-25)              <20               0.9033298   0.7960701   1.0250412
12 months   ki1135781-COHORTS          INDIA                          [25-30)              <20               0.8013479   0.7036758   0.9125772
12 months   ki1135781-COHORTS          INDIA                          >=30                 <20               0.9854617   0.8659494   1.1214683
12 months   ki1135781-COHORTS          PHILIPPINES                    <20                  <20               1.0000000   1.0000000   1.0000000
12 months   ki1135781-COHORTS          PHILIPPINES                    [20-25)              <20               0.8457282   0.7383437   0.9687308
12 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)              <20               0.8273683   0.7192708   0.9517115
12 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 <20               1.0136863   0.8890599   1.1557827
12 months   ki1148112-LCNI-5           MALAWI                         <20                  <20               1.0000000   1.0000000   1.0000000
12 months   ki1148112-LCNI-5           MALAWI                         [20-25)              <20               0.9814189   0.7546009   1.2764140
12 months   ki1148112-LCNI-5           MALAWI                         [25-30)              <20               1.0546875   0.8124236   1.3691942
12 months   ki1148112-LCNI-5           MALAWI                         >=30                 <20               1.1735026   0.9170091   1.5017390
12 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  <20               1.0000000          NA          NA
12 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-25)              <20               0.8317645          NA          NA
12 months   kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              <20               0.8259062          NA          NA
12 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 <20               0.8694918          NA          NA
18 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  <20               1.0000000   1.0000000   1.0000000
18 months   ki0047075b-MAL-ED          BANGLADESH                     [20-25)              <20               0.8344749   0.6243485   1.1153200
18 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)              <20               0.7083333   0.5219692   0.9612370
18 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 <20               0.7791667   0.5461977   1.1115036
18 months   ki0047075b-MAL-ED          BRAZIL                         <20                  <20               1.0000000   1.0000000   1.0000000
18 months   ki0047075b-MAL-ED          BRAZIL                         [20-25)              <20               0.9692982   0.4472056   2.1009107
18 months   ki0047075b-MAL-ED          BRAZIL                         [25-30)              <20               1.1333333   0.5412851   2.3729535
18 months   ki0047075b-MAL-ED          BRAZIL                         >=30                 <20               0.7906977   0.3303014   1.8928252
18 months   ki0047075b-MAL-ED          INDIA                          <20                  <20               1.0000000   1.0000000   1.0000000
18 months   ki0047075b-MAL-ED          INDIA                          [20-25)              <20               1.0000000   0.7125343   1.4034412
18 months   ki0047075b-MAL-ED          INDIA                          [25-30)              <20               1.0796586   0.7658959   1.5219597
18 months   ki0047075b-MAL-ED          INDIA                          >=30                 <20               0.7443609   0.4186698   1.3234131
18 months   ki0047075b-MAL-ED          PERU                           <20                  <20               1.0000000   1.0000000   1.0000000
18 months   ki0047075b-MAL-ED          PERU                           [20-25)              <20               0.9404920   0.7361995   1.2014749
18 months   ki0047075b-MAL-ED          PERU                           [25-30)              <20               1.0559910   0.8396135   1.3281314
18 months   ki0047075b-MAL-ED          PERU                           >=30                 <20               0.9515366   0.7374788   1.2277261
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  <20               1.0000000   1.0000000   1.0000000
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-25)              <20               1.0304000   0.7572610   1.4020584
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              <20               0.8604878   0.5826526   1.2708074
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 <20               0.8665263   0.6310539   1.1898633
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  <20               1.0000000   1.0000000   1.0000000
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-25)              <20               1.0519481   0.8913210   1.2415221
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              <20               1.0026212   0.8390135   1.1981325
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 <20               1.0166113   0.8288507   1.2469056
18 months   ki1000108-IRC              INDIA                          <20                  <20               1.0000000   1.0000000   1.0000000
18 months   ki1000108-IRC              INDIA                          [20-25)              <20               0.8476364   0.6594606   1.0895077
18 months   ki1000108-IRC              INDIA                          [25-30)              <20               0.8182114   0.6218811   1.0765239
18 months   ki1000108-IRC              INDIA                          >=30                 <20               0.5613793   0.3347676   0.9413897
18 months   ki1000304b-SAS-CompFeed    INDIA                          <20                  <20               1.0000000          NA          NA
18 months   ki1000304b-SAS-CompFeed    INDIA                          [20-25)              <20               1.0269259          NA          NA
18 months   ki1000304b-SAS-CompFeed    INDIA                          [25-30)              <20               1.1982546          NA          NA
18 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 <20               1.0975610          NA          NA
18 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  <20               1.0000000   1.0000000   1.0000000
18 months   ki1017093-NIH-Birth        BANGLADESH                     [20-25)              <20               0.9330970   0.7554267   1.1525540
18 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)              <20               0.9375336   0.7549039   1.1643458
18 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 <20               0.9547866   0.7604923   1.1987200
18 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  <20               1.0000000   1.0000000   1.0000000
18 months   ki1017093b-PROVIDE         BANGLADESH                     [20-25)              <20               0.7588962   0.5723994   1.0061565
18 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)              <20               0.7681661   0.5726363   1.0304605
18 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 <20               0.8807190   0.6442304   1.2040193
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  <20               1.0000000   1.0000000   1.0000000
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-25)              <20               0.9752709   0.7706313   1.2342522
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              <20               0.9514638   0.7468708   1.2121018
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 <20               1.0015408   0.7633426   1.3140680
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  <20               1.0000000   1.0000000   1.0000000
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-25)              <20               1.0248435   0.7734997   1.3578600
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              <20               1.1168350   0.8482877   1.4703979
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 <20               0.9996115   0.7538213   1.3255438
18 months   ki1101329-Keneba           GAMBIA                         <20                  <20               1.0000000   1.0000000   1.0000000
18 months   ki1101329-Keneba           GAMBIA                         [20-25)              <20               1.1367733   0.9760998   1.3238950
18 months   ki1101329-Keneba           GAMBIA                         [25-30)              <20               1.0367207   0.8843411   1.2153567
18 months   ki1101329-Keneba           GAMBIA                         >=30                 <20               1.2416790   1.0777420   1.4305526
18 months   ki1112895-Guatemala BSC    GUATEMALA                      <20                  <20               1.0000000   1.0000000   1.0000000
18 months   ki1112895-Guatemala BSC    GUATEMALA                      [20-25)              <20               0.8372236   0.6397570   1.0956400
18 months   ki1112895-Guatemala BSC    GUATEMALA                      [25-30)              <20               0.7532468   0.5395314   1.0516176
18 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30                 <20               0.7773893   0.5568882   1.0851982
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                  <20               1.0000000          NA          NA
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-25)              <20               0.7894737          NA          NA
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [25-30)              <20               0.4838710          NA          NA
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 <20               0.4504505          NA          NA
18 months   ki1113344-GMS-Nepal        NEPAL                          <20                  <20               1.0000000   1.0000000   1.0000000
18 months   ki1113344-GMS-Nepal        NEPAL                          [20-25)              <20               0.9026072   0.7535716   1.0811178
18 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)              <20               1.0092420   0.8475702   1.2017522
18 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 <20               1.0003107   0.8129262   1.2308883
18 months   ki1119695-PROBIT           BELARUS                        <20                  <20               1.0000000          NA          NA
18 months   ki1119695-PROBIT           BELARUS                        [20-25)              <20               0.8308027          NA          NA
18 months   ki1119695-PROBIT           BELARUS                        [25-30)              <20               0.6945926          NA          NA
18 months   ki1119695-PROBIT           BELARUS                        >=30                 <20               0.7743990          NA          NA
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  <20               1.0000000   1.0000000   1.0000000
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-25)              <20               0.9172182   0.8585078   0.9799436
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              <20               0.9178862   0.8542386   0.9862761
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 <20               0.9102468   0.8422320   0.9837542
18 months   ki1135781-COHORTS          GUATEMALA                      <20                  <20               1.0000000   1.0000000   1.0000000
18 months   ki1135781-COHORTS          GUATEMALA                      [20-25)              <20               0.9783399   0.8428770   1.1355737
18 months   ki1135781-COHORTS          GUATEMALA                      [25-30)              <20               1.0451734   0.9052960   1.2066632
18 months   ki1135781-COHORTS          GUATEMALA                      >=30                 <20               1.0556087   0.9257284   1.2037113
18 months   ki1135781-COHORTS          PHILIPPINES                    <20                  <20               1.0000000   1.0000000   1.0000000
18 months   ki1135781-COHORTS          PHILIPPINES                    [20-25)              <20               0.9159420   0.8298033   1.0110225
18 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)              <20               0.9160936   0.8283199   1.0131682
18 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 <20               1.0016433   0.9093593   1.1032926
18 months   ki1148112-LCNI-5           MALAWI                         <20                  <20               1.0000000   1.0000000   1.0000000
18 months   ki1148112-LCNI-5           MALAWI                         [20-25)              <20               1.0647797   0.8308762   1.3645304
18 months   ki1148112-LCNI-5           MALAWI                         [25-30)              <20               1.0614432   0.8268009   1.3626760
18 months   ki1148112-LCNI-5           MALAWI                         >=30                 <20               1.2048946   0.9542733   1.5213365
18 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  <20               1.0000000          NA          NA
18 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-25)              <20               0.8821763          NA          NA
18 months   kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              <20               0.8978178          NA          NA
18 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 <20               0.9460404          NA          NA
24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  <20               1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-25)              <20               0.7515152   0.5791422   0.9751923
24 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)              <20               0.7085714   0.5498314   0.9131407
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 <20               0.7505263   0.5504640   1.0232998
24 months   ki0047075b-MAL-ED          BRAZIL                         <20                  <20               1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          BRAZIL                         [20-25)              <20               0.8863636   0.4135740   1.8996373
24 months   ki0047075b-MAL-ED          BRAZIL                         [25-30)              <20               0.8823529   0.4065771   1.9148807
24 months   ki0047075b-MAL-ED          BRAZIL                         >=30                 <20               0.6562500   0.2668890   1.6136450
24 months   ki0047075b-MAL-ED          INDIA                          <20                  <20               1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          INDIA                          [20-25)              <20               1.1052632   0.7951703   1.5362830
24 months   ki0047075b-MAL-ED          INDIA                          [25-30)              <20               1.1420332   0.8151674   1.5999655
24 months   ki0047075b-MAL-ED          INDIA                          >=30                 <20               0.8270677   0.4834653   1.4148707
24 months   ki0047075b-MAL-ED          PERU                           <20                  <20               1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          PERU                           [20-25)              <20               0.9086151   0.7210405   1.1449862
24 months   ki0047075b-MAL-ED          PERU                           [25-30)              <20               0.9757998   0.7860320   1.2113823
24 months   ki0047075b-MAL-ED          PERU                           >=30                 <20               0.9282609   0.7362444   1.1703563
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  <20               1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-25)              <20               1.0479376   0.7924468   1.3858005
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              <20               0.7889546   0.5384825   1.1559326
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 <20               0.9165303   0.6910104   1.2156514
24 months   ki1000108-IRC              INDIA                          <20                  <20               1.0000000   1.0000000   1.0000000
24 months   ki1000108-IRC              INDIA                          [20-25)              <20               0.8428772   0.6941961   1.0234025
24 months   ki1000108-IRC              INDIA                          [25-30)              <20               0.7675918   0.6145579   0.9587334
24 months   ki1000108-IRC              INDIA                          >=30                 <20               0.6159334   0.4073355   0.9313551
24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  <20               1.0000000   1.0000000   1.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-25)              <20               0.9007569   0.7646428   1.0611007
24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)              <20               0.9862369   0.8404293   1.1573411
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 <20               0.9057542   0.7566246   1.0842771
24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  <20               1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-25)              <20               0.7719881   0.6011296   0.9914095
24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)              <20               0.8085460   0.6245200   1.0467985
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 <20               0.8349792   0.6277532   1.1106121
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  <20               1.0000000   1.0000000   1.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-25)              <20               1.0016978   0.7943217   1.2632143
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              <20               1.0350877   0.8195345   1.3073355
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 <20               1.1657299   0.9053892   1.5009303
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  <20               1.0000000   1.0000000   1.0000000
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-25)              <20               1.1198068   0.7954010   1.5765220
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              <20               1.1540558   0.8247075   1.6149300
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 <20               0.9623487   0.6800582   1.3618173
24 months   ki1101329-Keneba           GAMBIA                         <20                  <20               1.0000000   1.0000000   1.0000000
24 months   ki1101329-Keneba           GAMBIA                         [20-25)              <20               1.0514074   0.9207725   1.2005761
24 months   ki1101329-Keneba           GAMBIA                         [25-30)              <20               1.0151267   0.8864382   1.1624976
24 months   ki1101329-Keneba           GAMBIA                         >=30                 <20               1.1620212   1.0289860   1.3122561
24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                  <20               1.0000000          NA          NA
24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-25)              <20               0.6664605          NA          NA
24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [25-30)              <20               0.7721519          NA          NA
24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 <20               0.7630374          NA          NA
24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  <20               1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          [20-25)              <20               0.9354367   0.7975039   1.0972258
24 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)              <20               1.0610573   0.9114341   1.2352431
24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 <20               1.0016381   0.8309417   1.2073999
24 months   ki1119695-PROBIT           BELARUS                        <20                  <20               1.0000000          NA          NA
24 months   ki1119695-PROBIT           BELARUS                        [20-25)              <20               0.8721842          NA          NA
24 months   ki1119695-PROBIT           BELARUS                        [25-30)              <20               0.8522727          NA          NA
24 months   ki1119695-PROBIT           BELARUS                        >=30                 <20               0.6257576          NA          NA
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  <20               1.0000000   1.0000000   1.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-25)              <20               0.8956449   0.8273598   0.9695659
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              <20               0.9337221   0.8599024   1.0138791
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 <20               0.9134857   0.8344007   1.0000665
24 months   ki1135781-COHORTS          GUATEMALA                      <20                  <20               1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      [20-25)              <20               0.9795353   0.8864855   1.0823521
24 months   ki1135781-COHORTS          GUATEMALA                      [25-30)              <20               1.0190865   0.9278613   1.1192807
24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 <20               0.9955523   0.9096690   1.0895438
24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  <20               1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    [20-25)              <20               0.9456476   0.8822494   1.0136017
24 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)              <20               0.9192727   0.8553430   0.9879807
24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 <20               0.9683585   0.9031903   1.0382290
24 months   ki1148112-LCNI-5           MALAWI                         <20                  <20               1.0000000   1.0000000   1.0000000
24 months   ki1148112-LCNI-5           MALAWI                         [20-25)              <20               1.0229312   0.8423860   1.2421720
24 months   ki1148112-LCNI-5           MALAWI                         [25-30)              <20               1.0412429   0.8552264   1.2677191
24 months   ki1148112-LCNI-5           MALAWI                         >=30                 <20               1.1168806   0.9274586   1.3449896


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
3 months    ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                -0.0570117   -0.1989313    0.0849078
3 months    ki0047075b-MAL-ED          BRAZIL                         <20                  NA                 0.0235552   -0.0716096    0.1187201
3 months    ki0047075b-MAL-ED          PERU                           <20                  NA                -0.0281124   -0.1157056    0.0594807
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  NA                -0.0096868   -0.1253404    0.1059668
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                -0.0370491   -0.1924060    0.1183078
3 months    ki1000108-IRC              INDIA                          <20                  NA                -0.1153593   -0.2669096    0.0361911
3 months    ki1000304b-SAS-CompFeed    INDIA                          <20                  NA                -0.0395137           NA           NA
3 months    ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                 0.0726006   -0.0063863    0.1515874
3 months    ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                -0.0260504   -0.1069883    0.0548874
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                -0.0388988   -0.0986163    0.0208187
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                -0.0365736   -0.0868226    0.0136754
3 months    ki1101329-Keneba           GAMBIA                         <20                  NA                -0.0156174   -0.0588464    0.0276117
3 months    ki1113344-GMS-Nepal        NEPAL                          <20                  NA                -0.1271983   -0.1965966   -0.0578000
3 months    ki1119695-PROBIT           BELARUS                        <20                  NA                -0.0379767           NA           NA
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                -0.0144222   -0.0302023    0.0013579
3 months    ki1135781-COHORTS          GUATEMALA                      <20                  NA                 0.0092588   -0.0779581    0.0964757
3 months    ki1135781-COHORTS          INDIA                          <20                  NA                -0.0454691   -0.0850082   -0.0059300
3 months    ki1135781-COHORTS          PHILIPPINES                    <20                  NA                -0.0379062   -0.0739235   -0.0018889
3 months    kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                -0.0418254           NA           NA
6 months    ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                -0.0585366   -0.2083651    0.0912920
6 months    ki0047075b-MAL-ED          BRAZIL                         <20                  NA                 0.0584862   -0.0381168    0.1550892
6 months    ki0047075b-MAL-ED          PERU                           <20                  NA                 0.0073650   -0.0864634    0.1011934
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  NA                -0.0924266   -0.2308660    0.0460128
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                -0.0028899   -0.1657824    0.1600026
6 months    ki1000108-IRC              INDIA                          <20                  NA                -0.1037582   -0.2595152    0.0519989
6 months    ki1000304b-SAS-CompFeed    INDIA                          <20                  NA                 0.0342913           NA           NA
6 months    ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                 0.1124772    0.0034971    0.2214574
6 months    ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                -0.0696368   -0.1691355    0.0298618
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                -0.0262681   -0.0988291    0.0462928
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                 0.0229879   -0.0355214    0.0814972
6 months    ki1101329-Keneba           GAMBIA                         <20                  NA                 0.0181054   -0.0278350    0.0640458
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <20                  NA                -0.1383399   -0.2676427   -0.0090372
6 months    ki1113344-GMS-Nepal        NEPAL                          <20                  NA                -0.1233766   -0.2043746   -0.0423787
6 months    ki1119695-PROBIT           BELARUS                        <20                  NA                -0.0404374           NA           NA
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                -0.0362096   -0.0588065   -0.0136128
6 months    ki1135781-COHORTS          GUATEMALA                      <20                  NA                -0.0192503   -0.2111890    0.1726885
6 months    ki1135781-COHORTS          PHILIPPINES                    <20                  NA                -0.0690188   -0.1146357   -0.0234019
6 months    ki1148112-LCNI-5           MALAWI                         <20                  NA                 0.0981352   -0.0291096    0.2253800
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                -0.0460090           NA           NA
12 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                -0.0102141   -0.1650422    0.1446140
12 months   ki0047075b-MAL-ED          BRAZIL                         <20                  NA                 0.0640097   -0.0426647    0.1706840
12 months   ki0047075b-MAL-ED          INDIA                          <20                  NA                -0.0867205   -0.2414375    0.0679964
12 months   ki0047075b-MAL-ED          PERU                           <20                  NA                 0.0251852   -0.0711290    0.1214994
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  NA                -0.1003861   -0.2378746    0.0371024
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                 0.0518659   -0.1008485    0.2045803
12 months   ki1000108-IRC              INDIA                          <20                  NA                -0.0482026   -0.2034776    0.1070724
12 months   ki1000304b-SAS-CompFeed    INDIA                          <20                  NA                 0.0569853           NA           NA
12 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                 0.0985127   -0.0180659    0.2150913
12 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                -0.0862192   -0.1971110    0.0246727
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                -0.0215426   -0.0971070    0.0540219
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                 0.0241545   -0.0486587    0.0969676
12 months   ki1101329-Keneba           GAMBIA                         <20                  NA                 0.0541818    0.0052975    0.1030662
12 months   ki1112895-Guatemala BSC    GUATEMALA                      <20                  NA                -0.1070081   -0.2412327    0.0272165
12 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                  NA                -0.0922168           NA           NA
12 months   ki1113344-GMS-Nepal        NEPAL                          <20                  NA                -0.0360528   -0.1174508    0.0453451
12 months   ki1119695-PROBIT           BELARUS                        <20                  NA                -0.0359261           NA           NA
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                -0.0376616   -0.0599776   -0.0153456
12 months   ki1135781-COHORTS          GUATEMALA                      <20                  NA                 0.0340525   -0.0548440    0.1229490
12 months   ki1135781-COHORTS          INDIA                          <20                  NA                -0.0458651   -0.0940421    0.0023118
12 months   ki1135781-COHORTS          PHILIPPINES                    <20                  NA                -0.0449634   -0.0947496    0.0048229
12 months   ki1148112-LCNI-5           MALAWI                         <20                  NA                 0.0274725   -0.0598985    0.1148436
12 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                -0.0422863           NA           NA
18 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                -0.1387828   -0.2827415    0.0051759
18 months   ki0047075b-MAL-ED          BRAZIL                         <20                  NA                -0.0033354   -0.1330194    0.1263487
18 months   ki0047075b-MAL-ED          INDIA                          <20                  NA                 0.0013349   -0.1548840    0.1575539
18 months   ki0047075b-MAL-ED          PERU                           <20                  NA                -0.0090283   -0.1026129    0.0845563
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  NA                -0.0379258   -0.1740844    0.0982328
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                 0.0236556   -0.0979972    0.1453083
18 months   ki1000108-IRC              INDIA                          <20                  NA                -0.1133285   -0.2582357    0.0315787
18 months   ki1000304b-SAS-CompFeed    INDIA                          <20                  NA                 0.0487256           NA           NA
18 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                -0.0367003   -0.1541476    0.0807469
18 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                -0.0979330   -0.2116359    0.0157699
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                -0.0104895   -0.0879191    0.0669401
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                 0.0183086   -0.0775290    0.1141462
18 months   ki1101329-Keneba           GAMBIA                         <20                  NA                 0.0606954    0.0076760    0.1137149
18 months   ki1112895-Guatemala BSC    GUATEMALA                      <20                  NA                -0.1281859   -0.2751272    0.0187554
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                  NA                -0.2198347           NA           NA
18 months   ki1113344-GMS-Nepal        NEPAL                          <20                  NA                -0.0197849   -0.0983606    0.0587908
18 months   ki1119695-PROBIT           BELARUS                        <20                  NA                -0.0393966           NA           NA
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                -0.0374043   -0.0638284   -0.0109803
18 months   ki1135781-COHORTS          GUATEMALA                      <20                  NA                 0.0204448   -0.0651316    0.1060211
18 months   ki1135781-COHORTS          PHILIPPINES                    <20                  NA                -0.0320928   -0.0816001    0.0174145
18 months   ki1148112-LCNI-5           MALAWI                         <20                  NA                 0.0496306   -0.0453354    0.1445965
18 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                -0.0316601           NA           NA
24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                -0.1854470   -0.3198983   -0.0509958
24 months   ki0047075b-MAL-ED          BRAZIL                         <20                  NA                -0.0393939   -0.1824094    0.1036215
24 months   ki0047075b-MAL-ED          INDIA                          <20                  NA                 0.0437115   -0.1119942    0.1994171
24 months   ki0047075b-MAL-ED          PERU                           <20                  NA                -0.0339149   -0.1273684    0.0595387
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  NA                -0.0342975   -0.1701575    0.1015625
24 months   ki1000108-IRC              INDIA                          <20                  NA                -0.1423204   -0.2712170   -0.0134237
24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                -0.0496481   -0.1537153    0.0544192
24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                -0.1062019   -0.2213108    0.0089070
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                 0.0185264   -0.0628891    0.0999419
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                 0.0309089   -0.0927320    0.1545497
24 months   ki1101329-Keneba           GAMBIA                         <20                  NA                 0.0421931   -0.0120990    0.0964851
24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                  NA                -0.1264855           NA           NA
24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  NA                -0.0028416   -0.0786563    0.0729731
24 months   ki1119695-PROBIT           BELARUS                        <20                  NA                -0.0424219           NA           NA
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                -0.0576567   -0.1027328   -0.0125806
24 months   ki1135781-COHORTS          GUATEMALA                      <20                  NA                -0.0021097   -0.0630141    0.0587947
24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  NA                -0.0386022   -0.0809475    0.0037432
24 months   ki1148112-LCNI-5           MALAWI                         <20                  NA                 0.0320086   -0.0570711    0.1210883


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
3 months    ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                -0.1936937   -0.7877764    0.2029738
3 months    ki0047075b-MAL-ED          BRAZIL                         <20                  NA                 0.1444308   -0.6901915    0.5669138
3 months    ki0047075b-MAL-ED          PERU                           <20                  NA                -0.0843373   -0.3817308    0.1490473
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  NA                -0.0370935   -0.5895276    0.3233443
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                -0.1072941   -0.6624235    0.2624621
3 months    ki1000108-IRC              INDIA                          <20                  NA                -0.3638254   -0.9373100    0.0398957
3 months    ki1000304b-SAS-CompFeed    INDIA                          <20                  NA                -0.1190476           NA           NA
3 months    ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                 0.3251468   -0.1365810    0.5993010
3 months    ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                -0.1402715   -0.6707021    0.2217529
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                -0.2436801   -0.6786220    0.0785655
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                -0.3586328   -0.9507169    0.0537411
3 months    ki1101329-Keneba           GAMBIA                         <20                  NA                -0.0639835   -0.2566617    0.0991522
3 months    ki1113344-GMS-Nepal        NEPAL                          <20                  NA                -0.8024316   -1.2875416   -0.4201970
3 months    ki1119695-PROBIT           BELARUS                        <20                  NA                -0.5125587           NA           NA
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                -0.0688437   -0.1468718    0.0038756
3 months    ki1135781-COHORTS          GUATEMALA                      <20                  NA                 0.0337520   -0.3427248    0.3046713
3 months    ki1135781-COHORTS          INDIA                          <20                  NA                -0.2389804   -0.4650217   -0.0478155
3 months    ki1135781-COHORTS          PHILIPPINES                    <20                  NA                -0.2620843   -0.5366586   -0.0365717
3 months    kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                -0.1036830           NA           NA
6 months    ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                -0.1714286   -0.7040045    0.1946941
6 months    ki0047075b-MAL-ED          BRAZIL                         <20                  NA                 0.3187500   -0.4640659    0.6830050
6 months    ki0047075b-MAL-ED          PERU                           <20                  NA                 0.0166154   -0.2195779    0.2070656
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  NA                -0.2408425   -0.6608336    0.0729414
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                -0.0056415   -0.3796493    0.2669769
6 months    ki1000108-IRC              INDIA                          <20                  NA                -0.2447013   -0.6731573    0.0740372
6 months    ki1000304b-SAS-CompFeed    INDIA                          <20                  NA                 0.0796513           NA           NA
6 months    ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                 0.3103015   -0.0658813    0.5537177
6 months    ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                -0.2734207   -0.7303484    0.0628476
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                -0.0855457   -0.3495340    0.1268026
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                 0.1152515   -0.2324464    0.3648569
6 months    ki1101329-Keneba           GAMBIA                         <20                  NA                 0.0560119   -0.0973644    0.1879511
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <20                  NA                -0.4347826   -0.9078242   -0.0790308
6 months    ki1113344-GMS-Nepal        NEPAL                          <20                  NA                -0.4318182   -0.7463119   -0.1739617
6 months    ki1119695-PROBIT           BELARUS                        <20                  NA                -0.3878318           NA           NA
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                -0.1229556   -0.2023625   -0.0487930
6 months    ki1135781-COHORTS          GUATEMALA                      <20                  NA                -0.0532213   -0.7431893    0.3636520
6 months    ki1135781-COHORTS          PHILIPPINES                    <20                  NA                -0.2762720   -0.4724291   -0.1062470
6 months    ki1148112-LCNI-5           MALAWI                         <20                  NA                 0.2767916   -0.1867606    0.5592789
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                -0.1081432           NA           NA
12 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                -0.0237007   -0.4540850    0.2792972
12 months   ki0047075b-MAL-ED          BRAZIL                         <20                  NA                 0.3154762   -0.4657909    0.6803276
12 months   ki0047075b-MAL-ED          INDIA                          <20                  NA                -0.1836898   -0.5626711    0.1033803
12 months   ki0047075b-MAL-ED          PERU                           <20                  NA                 0.0485714   -0.1566566    0.2173854
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  NA                -0.2131148   -0.5450210    0.0474903
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                 0.0742081   -0.1724639    0.2689834
12 months   ki1000108-IRC              INDIA                          <20                  NA                -0.0950081   -0.4483306    0.1721209
12 months   ki1000304b-SAS-CompFeed    INDIA                          <20                  NA                 0.0968750           NA           NA
12 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                 0.1937896   -0.0719815    0.3936694
12 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                -0.2599379   -0.6432346    0.0339519
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                -0.0566951   -0.2755327    0.1245975
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                 0.0761943   -0.1845568    0.2795474
12 months   ki1101329-Keneba           GAMBIA                         <20                  NA                 0.1323697    0.0042922    0.2439727
12 months   ki1112895-Guatemala BSC    GUATEMALA                      <20                  NA                -0.1996982   -0.4804394    0.0278050
12 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                  NA                -0.4484043           NA           NA
12 months   ki1113344-GMS-Nepal        NEPAL                          <20                  NA                -0.0791802   -0.2737394    0.0856608
12 months   ki1119695-PROBIT           BELARUS                        <20                  NA                -0.2466384           NA           NA
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                -0.0999424   -0.1608038   -0.0422721
12 months   ki1135781-COHORTS          GUATEMALA                      <20                  NA                 0.0470528   -0.0841573    0.1623832
12 months   ki1135781-COHORTS          INDIA                          <20                  NA                -0.1147322   -0.2420375   -0.0004753
12 months   ki1135781-COHORTS          PHILIPPINES                    <20                  NA                -0.1024660   -0.2220323    0.0054017
12 months   ki1148112-LCNI-5           MALAWI                         <20                  NA                 0.0566893   -0.1420337    0.2208330
12 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                -0.0936044           NA           NA
18 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                -0.2447238   -0.5304614   -0.0123336
18 months   ki0047075b-MAL-ED          BRAZIL                         <20                  NA                -0.0143791   -0.7602031    0.4154283
18 months   ki0047075b-MAL-ED          INDIA                          <20                  NA                 0.0023132   -0.3086709    0.2393970
18 months   ki0047075b-MAL-ED          PERU                           <20                  NA                -0.0134323   -0.1627043    0.1166757
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  NA                -0.0680513   -0.3428090    0.1504870
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                 0.0279226   -0.1268794    0.1614591
18 months   ki1000108-IRC              INDIA                          <20                  NA                -0.2015276   -0.4904192    0.0313674
18 months   ki1000304b-SAS-CompFeed    INDIA                          <20                  NA                 0.0696558           NA           NA
18 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                -0.0565940   -0.2542807    0.1099354
18 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                -0.2347282   -0.5405308    0.0103711
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                -0.0236593   -0.2140939    0.1369050
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                 0.0451613   -0.2230809    0.2545735
18 months   ki1101329-Keneba           GAMBIA                         <20                  NA                 0.1206975    0.0085810    0.2201351
18 months   ki1112895-Guatemala BSC    GUATEMALA                      <20                  NA                -0.2033294   -0.4646025    0.0113348
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                  NA                -0.5782609           NA           NA
18 months   ki1113344-GMS-Nepal        NEPAL                          <20                  NA                -0.0317221   -0.1657657    0.0869087
18 months   ki1119695-PROBIT           BELARUS                        <20                  NA                -0.2517007           NA           NA
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                -0.0761502   -0.1313467   -0.0236466
18 months   ki1135781-COHORTS          GUATEMALA                      <20                  NA                 0.0246540   -0.0842467    0.1226168
18 months   ki1135781-COHORTS          PHILIPPINES                    <20                  NA                -0.0520446   -0.1355123    0.0252877
18 months   ki1148112-LCNI-5           MALAWI                         <20                  NA                 0.0876115   -0.0966228    0.2408942
18 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                -0.0582209           NA           NA
24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                -0.2986243   -0.5426290   -0.0932149
24 months   ki0047075b-MAL-ED          BRAZIL                         <20                  NA                -0.1733333   -1.0050841    0.3133898
24 months   ki0047075b-MAL-ED          INDIA                          <20                  NA                 0.0705628   -0.2183366    0.2909565
24 months   ki0047075b-MAL-ED          PERU                           <20                  NA                -0.0470920   -0.1855306    0.0751807
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  NA                -0.0557047   -0.3013233    0.1435546
24 months   ki1000108-IRC              INDIA                          <20                  NA                -0.2218683   -0.4428215   -0.0347517
24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                -0.0658224   -0.2133860    0.0637956
24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                -0.2207483   -0.4861822   -0.0027212
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                 0.0369364   -0.1398917    0.1863336
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                 0.0711501   -0.2619115    0.3163054
24 months   ki1101329-Keneba           GAMBIA                         <20                  NA                 0.0734933   -0.0261309    0.1634452
24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                  NA                -0.3051533           NA           NA
24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  NA                -0.0041174   -0.1202068    0.0999414
24 months   ki1119695-PROBIT           BELARUS                        <20                  NA                -0.2057659           NA           NA
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                -0.0804532   -0.1454157   -0.0191751
24 months   ki1135781-COHORTS          GUATEMALA                      <20                  NA                -0.0023529   -0.0726344    0.0633235
24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  NA                -0.0512960   -0.1091649    0.0035536
24 months   ki1148112-LCNI-5           MALAWI                         <20                  NA                 0.0490132   -0.0977486    0.1761539
