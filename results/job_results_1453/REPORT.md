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

**Intervention Variable:** gagebrth

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
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)      90     35     28      7
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          <259           90      7      6      1
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          [259-273)      90     22     19      3
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          >=287          90     26     21      5
Birth       ki1000108-IRC              INDIA                          [273-287)     369    155    141     14
Birth       ki1000108-IRC              INDIA                          <259          369     36     27      9
Birth       ki1000108-IRC              INDIA                          [259-273)     369     87     80      7
Birth       ki1000108-IRC              INDIA                          >=287         369     91     77     14
Birth       ki1000109-EE               PAKISTAN                       [273-287)       2      0      0      0
Birth       ki1000109-EE               PAKISTAN                       <259            2      1      0      1
Birth       ki1000109-EE               PAKISTAN                       [259-273)       2      1      1      0
Birth       ki1000109-EE               PAKISTAN                       >=287           2      0      0      0
Birth       ki1000304b-SAS-CompFeed    INDIA                          [273-287)      70      0      0      0
Birth       ki1000304b-SAS-CompFeed    INDIA                          <259           70     55     41     14
Birth       ki1000304b-SAS-CompFeed    INDIA                          [259-273)      70     15     12      3
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=287          70      0      0      0
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [273-287)      27     12     10      2
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <259           27      3      1      2
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [259-273)      27     11     10      1
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=287          27      1      1      0
Birth       ki1101329-Keneba           GAMBIA                         [273-287)    1515    592    572     20
Birth       ki1101329-Keneba           GAMBIA                         <259         1515    161    133     28
Birth       ki1101329-Keneba           GAMBIA                         [259-273)    1515    592    560     32
Birth       ki1101329-Keneba           GAMBIA                         >=287        1515    170    168      2
Birth       ki1119695-PROBIT           BELARUS                        [273-287)    6779   4858   4852      6
Birth       ki1119695-PROBIT           BELARUS                        <259         6779      0      0      0
Birth       ki1119695-PROBIT           BELARUS                        [259-273)    6779   1403   1388     15
Birth       ki1119695-PROBIT           BELARUS                        >=287        6779    518    518      0
Birth       ki1135781-COHORTS          GUATEMALA                      [273-287)     290    114    110      4
Birth       ki1135781-COHORTS          GUATEMALA                      <259          290     49     44      5
Birth       ki1135781-COHORTS          GUATEMALA                      [259-273)     290     46     44      2
Birth       ki1135781-COHORTS          GUATEMALA                      >=287         290     81     80      1
Birth       ki1135781-COHORTS          INDIA                          [273-287)    1293    510    467     43
Birth       ki1135781-COHORTS          INDIA                          <259         1293    181    151     30
Birth       ki1135781-COHORTS          INDIA                          [259-273)    1293    289    257     32
Birth       ki1135781-COHORTS          INDIA                          >=287        1293    313    294     19
Birth       ki1135781-COHORTS          PHILIPPINES                    [273-287)    3024   1178   1141     37
Birth       ki1135781-COHORTS          PHILIPPINES                    <259         3024    459    383     76
Birth       ki1135781-COHORTS          PHILIPPINES                    [259-273)    3024    833    770     63
Birth       ki1135781-COHORTS          PHILIPPINES                    >=287        3024    554    545      9
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [273-287)    9173   3163   2389    774
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <259         9173   1932    879   1053
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [259-273)    9173   2434   1503    931
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=287        9173   1644   1294    350
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)     340    142    117     25
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          <259          340     46     26     20
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          [259-273)     340     73     51     22
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=287         340     79     62     17
3 months    ki1000108-IRC              INDIA                          [273-287)     387    163    129     34
3 months    ki1000108-IRC              INDIA                          <259          387     40     28     12
3 months    ki1000108-IRC              INDIA                          [259-273)     387     92     70     22
3 months    ki1000108-IRC              INDIA                          >=287         387     92     75     17
3 months    ki1000109-EE               PAKISTAN                       [273-287)     376     24     16      8
3 months    ki1000109-EE               PAKISTAN                       <259          376    242     87    155
3 months    ki1000109-EE               PAKISTAN                       [259-273)     376    109     55     54
3 months    ki1000109-EE               PAKISTAN                       >=287         376      1      1      0
3 months    ki1000304b-SAS-CompFeed    INDIA                          [273-287)     411     11      9      2
3 months    ki1000304b-SAS-CompFeed    INDIA                          <259          411    322    231     91
3 months    ki1000304b-SAS-CompFeed    INDIA                          [259-273)     411     77     60     17
3 months    ki1000304b-SAS-CompFeed    INDIA                          >=287         411      1      1      0
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     [273-287)     728    243    214     29
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     <259          728    149     85     64
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     [259-273)     728    317    255     62
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=287         728     19     18      1
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [273-287)    2157    838    799     39
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <259         2157    310    273     37
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [259-273)    2157    458    425     33
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=287        2157    551    529     22
3 months    ki1101329-Keneba           GAMBIA                         [273-287)    1442    558    514     44
3 months    ki1101329-Keneba           GAMBIA                         <259         1442    151    113     38
3 months    ki1101329-Keneba           GAMBIA                         [259-273)    1442    566    493     73
3 months    ki1101329-Keneba           GAMBIA                         >=287        1442    167    153     14
3 months    ki1113344-GMS-Nepal        NEPAL                          [273-287)     571      0      0      0
3 months    ki1113344-GMS-Nepal        NEPAL                          <259          571      1      0      1
3 months    ki1113344-GMS-Nepal        NEPAL                          [259-273)     571    567    484     83
3 months    ki1113344-GMS-Nepal        NEPAL                          >=287         571      3      3      0
3 months    ki1119695-PROBIT           BELARUS                        [273-287)    8057   5768   5433    335
3 months    ki1119695-PROBIT           BELARUS                        <259         8057      0      0      0
3 months    ki1119695-PROBIT           BELARUS                        [259-273)    8057   1653   1507    146
3 months    ki1119695-PROBIT           BELARUS                        >=287        8057    636    611     25
3 months    ki1135781-COHORTS          GUATEMALA                      [273-287)     352    134     93     41
3 months    ki1135781-COHORTS          GUATEMALA                      <259          352     59     32     27
3 months    ki1135781-COHORTS          GUATEMALA                      [259-273)     352     58     38     20
3 months    ki1135781-COHORTS          GUATEMALA                      >=287         352    101     68     33
3 months    ki1135781-COHORTS          INDIA                          [273-287)    1333    526    477     49
3 months    ki1135781-COHORTS          INDIA                          <259         1333    198    161     37
3 months    ki1135781-COHORTS          INDIA                          [259-273)    1333    297    260     37
3 months    ki1135781-COHORTS          INDIA                          >=287        1333    312    273     39
3 months    ki1135781-COHORTS          PHILIPPINES                    [273-287)    2850   1126   1027     99
3 months    ki1135781-COHORTS          PHILIPPINES                    <259         2850    421    329     92
3 months    ki1135781-COHORTS          PHILIPPINES                    [259-273)    2850    791    664    127
3 months    ki1135781-COHORTS          PHILIPPINES                    >=287        2850    512    480     32
3 months    kiGH5241-JiVitA-3          BANGLADESH                     [273-287)    9187   3206   2532    674
3 months    kiGH5241-JiVitA-3          BANGLADESH                     <259         9187   1881   1070    811
3 months    kiGH5241-JiVitA-3          BANGLADESH                     [259-273)    9187   2453   1714    739
3 months    kiGH5241-JiVitA-3          BANGLADESH                     >=287        9187   1647   1311    336
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)     347    147    109     38
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <259          347     47     26     21
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [259-273)     347     74     51     23
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=287         347     79     60     19
6 months    ki1000108-IRC              INDIA                          [273-287)     388    165    131     34
6 months    ki1000108-IRC              INDIA                          <259          388     40     21     19
6 months    ki1000108-IRC              INDIA                          [259-273)     388     91     70     21
6 months    ki1000108-IRC              INDIA                          >=287         388     92     74     18
6 months    ki1000109-EE               PAKISTAN                       [273-287)     372     24     15      9
6 months    ki1000109-EE               PAKISTAN                       <259          372    239    105    134
6 months    ki1000109-EE               PAKISTAN                       [259-273)     372    108     58     50
6 months    ki1000109-EE               PAKISTAN                       >=287         372      1      1      0
6 months    ki1000304b-SAS-CompFeed    INDIA                          [273-287)     410     12     11      1
6 months    ki1000304b-SAS-CompFeed    INDIA                          <259          410    320    228     92
6 months    ki1000304b-SAS-CompFeed    INDIA                          [259-273)     410     76     56     20
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=287         410      2      2      0
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [273-287)     715    233    200     33
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <259          715    147     90     57
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [259-273)     715    316    256     60
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=287         715     19     19      0
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [273-287)    1903    735    665     70
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <259         1903    272    237     35
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [259-273)    1903    407    363     44
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=287        1903    489    456     33
6 months    ki1101329-Keneba           GAMBIA                         [273-287)    1374    526    466     60
6 months    ki1101329-Keneba           GAMBIA                         <259         1374    143    110     33
6 months    ki1101329-Keneba           GAMBIA                         [259-273)    1374    548    476     72
6 months    ki1101329-Keneba           GAMBIA                         >=287        1374    157    141     16
6 months    ki1113344-GMS-Nepal        NEPAL                          [273-287)     563      0      0      0
6 months    ki1113344-GMS-Nepal        NEPAL                          <259          563      1      0      1
6 months    ki1113344-GMS-Nepal        NEPAL                          [259-273)     563    558    441    117
6 months    ki1113344-GMS-Nepal        NEPAL                          >=287         563      4      3      1
6 months    ki1119695-PROBIT           BELARUS                        [273-287)    7665   5492   5137    355
6 months    ki1119695-PROBIT           BELARUS                        <259         7665      0      0      0
6 months    ki1119695-PROBIT           BELARUS                        [259-273)    7665   1577   1424    153
6 months    ki1119695-PROBIT           BELARUS                        >=287        7665    596    557     39
6 months    ki1135781-COHORTS          GUATEMALA                      [273-287)     347    135     80     55
6 months    ki1135781-COHORTS          GUATEMALA                      <259          347     54     22     32
6 months    ki1135781-COHORTS          GUATEMALA                      [259-273)     347     57     26     31
6 months    ki1135781-COHORTS          GUATEMALA                      >=287         347    101     61     40
6 months    ki1135781-COHORTS          INDIA                          [273-287)    1312    520    445     75
6 months    ki1135781-COHORTS          INDIA                          <259         1312    195    145     50
6 months    ki1135781-COHORTS          INDIA                          [259-273)    1312    292    246     46
6 months    ki1135781-COHORTS          INDIA                          >=287        1312    305    254     51
6 months    ki1135781-COHORTS          PHILIPPINES                    [273-287)    2687   1050    880    170
6 months    ki1135781-COHORTS          PHILIPPINES                    <259         2687    404    275    129
6 months    ki1135781-COHORTS          PHILIPPINES                    [259-273)    2687    740    557    183
6 months    ki1135781-COHORTS          PHILIPPINES                    >=287        2687    493    407     86
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [273-287)    6214   2163   1672    491
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <259         6214   1205    759    446
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [259-273)    6214   1637   1153    484
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=287        6214   1209    955    254
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)     344    145     97     48
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          <259          344     47     26     21
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          [259-273)     344     72     47     25
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=287         344     80     52     28
9 months    ki1000108-IRC              INDIA                          [273-287)     388    165    123     42
9 months    ki1000108-IRC              INDIA                          <259          388     40     23     17
9 months    ki1000108-IRC              INDIA                          [259-273)     388     91     66     25
9 months    ki1000108-IRC              INDIA                          >=287         388     92     71     21
9 months    ki1000109-EE               PAKISTAN                       [273-287)     366     23     14      9
9 months    ki1000109-EE               PAKISTAN                       <259          366    235     84    151
9 months    ki1000109-EE               PAKISTAN                       [259-273)     366    107     50     57
9 months    ki1000109-EE               PAKISTAN                       >=287         366      1      1      0
9 months    ki1000304b-SAS-CompFeed    INDIA                          [273-287)     403     12      9      3
9 months    ki1000304b-SAS-CompFeed    INDIA                          <259          403    308    193    115
9 months    ki1000304b-SAS-CompFeed    INDIA                          [259-273)     403     81     48     33
9 months    ki1000304b-SAS-CompFeed    INDIA                          >=287         403      2      0      2
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     [273-287)     706    233    193     40
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     <259          706    143     87     56
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     [259-273)     706    311    243     68
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=287         706     19     19      0
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [273-287)    1680    649    551     98
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <259         1680    239    193     46
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [259-273)    1680    347    290     57
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=287        1680    445    400     45
9 months    ki1101329-Keneba           GAMBIA                         [273-287)    1377    542    458     84
9 months    ki1101329-Keneba           GAMBIA                         <259         1377    134    100     34
9 months    ki1101329-Keneba           GAMBIA                         [259-273)    1377    544    441    103
9 months    ki1101329-Keneba           GAMBIA                         >=287        1377    157    133     24
9 months    ki1113344-GMS-Nepal        NEPAL                          [273-287)     551      0      0      0
9 months    ki1113344-GMS-Nepal        NEPAL                          <259          551      1      0      1
9 months    ki1113344-GMS-Nepal        NEPAL                          [259-273)     551    546    393    153
9 months    ki1113344-GMS-Nepal        NEPAL                          >=287         551      4      3      1
9 months    ki1119695-PROBIT           BELARUS                        [273-287)    7483   5347   5128    219
9 months    ki1119695-PROBIT           BELARUS                        <259         7483      0      0      0
9 months    ki1119695-PROBIT           BELARUS                        [259-273)    7483   1547   1456     91
9 months    ki1119695-PROBIT           BELARUS                        >=287        7483    589    563     26
9 months    ki1135781-COHORTS          GUATEMALA                      [273-287)     331    130     56     74
9 months    ki1135781-COHORTS          GUATEMALA                      <259          331     54     20     34
9 months    ki1135781-COHORTS          GUATEMALA                      [259-273)     331     54     18     36
9 months    ki1135781-COHORTS          GUATEMALA                      >=287         331     93     36     57
9 months    ki1135781-COHORTS          INDIA                          [273-287)    1195    476    376    100
9 months    ki1135781-COHORTS          INDIA                          <259         1195    178    125     53
9 months    ki1135781-COHORTS          INDIA                          [259-273)    1195    271    214     57
9 months    ki1135781-COHORTS          INDIA                          >=287        1195    270    195     75
9 months    ki1135781-COHORTS          PHILIPPINES                    [273-287)    2691   1057    821    236
9 months    ki1135781-COHORTS          PHILIPPINES                    <259         2691    397    261    136
9 months    ki1135781-COHORTS          PHILIPPINES                    [259-273)    2691    742    493    249
9 months    ki1135781-COHORTS          PHILIPPINES                    >=287        2691    495    377    118
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)     346    146     71     75
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          <259          346     47     26     21
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          [259-273)     346     73     38     35
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=287         346     80     43     37
12 months   ki1000108-IRC              INDIA                          [273-287)     386    164    119     45
12 months   ki1000108-IRC              INDIA                          <259          386     40     23     17
12 months   ki1000108-IRC              INDIA                          [259-273)     386     91     63     28
12 months   ki1000108-IRC              INDIA                          >=287         386     91     70     21
12 months   ki1000109-EE               PAKISTAN                       [273-287)     357     23      7     16
12 months   ki1000109-EE               PAKISTAN                       <259          357    234     57    177
12 months   ki1000109-EE               PAKISTAN                       [259-273)     357     99     37     62
12 months   ki1000109-EE               PAKISTAN                       >=287         357      1      1      0
12 months   ki1000304b-SAS-CompFeed    INDIA                          [273-287)     413     12      8      4
12 months   ki1000304b-SAS-CompFeed    INDIA                          <259          413    318    174    144
12 months   ki1000304b-SAS-CompFeed    INDIA                          [259-273)     413     81     47     34
12 months   ki1000304b-SAS-CompFeed    INDIA                          >=287         413      2      1      1
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     [273-287)     706    229    188     41
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     <259          706    145     89     56
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     [259-273)     706    313    239     74
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=287         706     19     19      0
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [273-287)    1356    524    440     84
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <259         1356    198    159     39
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [259-273)    1356    275    217     58
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=287        1356    359    309     50
12 months   ki1101329-Keneba           GAMBIA                         [273-287)    1300    502    394    108
12 months   ki1101329-Keneba           GAMBIA                         <259         1300    137     91     46
12 months   ki1101329-Keneba           GAMBIA                         [259-273)    1300    512    385    127
12 months   ki1101329-Keneba           GAMBIA                         >=287        1300    149    109     40
12 months   ki1113344-GMS-Nepal        NEPAL                          [273-287)     558      0      0      0
12 months   ki1113344-GMS-Nepal        NEPAL                          <259          558      1      1      0
12 months   ki1113344-GMS-Nepal        NEPAL                          [259-273)     558    553    363    190
12 months   ki1113344-GMS-Nepal        NEPAL                          >=287         558      4      3      1
12 months   ki1119695-PROBIT           BELARUS                        [273-287)    7736   5529   5354    175
12 months   ki1119695-PROBIT           BELARUS                        <259         7736      0      0      0
12 months   ki1119695-PROBIT           BELARUS                        [259-273)    7736   1600   1536     64
12 months   ki1119695-PROBIT           BELARUS                        >=287        7736    607    582     25
12 months   ki1135781-COHORTS          GUATEMALA                      [273-287)     354    138     44     94
12 months   ki1135781-COHORTS          GUATEMALA                      <259          354     57     16     41
12 months   ki1135781-COHORTS          GUATEMALA                      [259-273)     354     57     16     41
12 months   ki1135781-COHORTS          GUATEMALA                      >=287         354    102     38     64
12 months   ki1135781-COHORTS          INDIA                          [273-287)    1120    452    314    138
12 months   ki1135781-COHORTS          INDIA                          <259         1120    163     95     68
12 months   ki1135781-COHORTS          INDIA                          [259-273)    1120    256    184     72
12 months   ki1135781-COHORTS          INDIA                          >=287        1120    249    166     83
12 months   ki1135781-COHORTS          PHILIPPINES                    [273-287)    2563   1001    649    352
12 months   ki1135781-COHORTS          PHILIPPINES                    <259         2563    377    208    169
12 months   ki1135781-COHORTS          PHILIPPINES                    [259-273)    2563    714    408    306
12 months   ki1135781-COHORTS          PHILIPPINES                    >=287        2563    471    305    166
12 months   kiGH5241-JiVitA-3          BANGLADESH                     [273-287)    5453   1908   1178    730
12 months   kiGH5241-JiVitA-3          BANGLADESH                     <259         5453   1073    560    513
12 months   kiGH5241-JiVitA-3          BANGLADESH                     [259-273)    5453   1432    820    612
12 months   kiGH5241-JiVitA-3          BANGLADESH                     >=287        5453   1040    672    368
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)     347    147     47    100
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          <259          347     46     13     33
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          [259-273)     347     74     25     49
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=287         347     80     25     55
18 months   ki1000108-IRC              INDIA                          [273-287)     386    164    118     46
18 months   ki1000108-IRC              INDIA                          <259          386     40     17     23
18 months   ki1000108-IRC              INDIA                          [259-273)     386     90     53     37
18 months   ki1000108-IRC              INDIA                          >=287         386     92     61     31
18 months   ki1000109-EE               PAKISTAN                       [273-287)     350     22      3     19
18 months   ki1000109-EE               PAKISTAN                       <259          350    228     30    198
18 months   ki1000109-EE               PAKISTAN                       [259-273)     350     99     19     80
18 months   ki1000109-EE               PAKISTAN                       >=287         350      1      1      0
18 months   ki1000304b-SAS-CompFeed    INDIA                          [273-287)     394     11      6      5
18 months   ki1000304b-SAS-CompFeed    INDIA                          <259          394    307    145    162
18 months   ki1000304b-SAS-CompFeed    INDIA                          [259-273)     394     74     36     38
18 months   ki1000304b-SAS-CompFeed    INDIA                          >=287         394      2      0      2
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     [273-287)     634    194    148     46
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     <259          634    139     84     55
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     [259-273)     634    284    197     87
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=287         634     17     14      3
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [273-287)     922    373    279     94
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <259          922    115     89     26
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [259-273)     922    194    140     54
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=287         922    240    194     46
18 months   ki1101329-Keneba           GAMBIA                         [273-287)    1301    496    344    152
18 months   ki1101329-Keneba           GAMBIA                         <259         1301    134     76     58
18 months   ki1101329-Keneba           GAMBIA                         [259-273)    1301    515    358    157
18 months   ki1101329-Keneba           GAMBIA                         >=287        1301    156     99     57
18 months   ki1113344-GMS-Nepal        NEPAL                          [273-287)     550      0      0      0
18 months   ki1113344-GMS-Nepal        NEPAL                          <259          550      1      1      0
18 months   ki1113344-GMS-Nepal        NEPAL                          [259-273)     550    545    255    290
18 months   ki1113344-GMS-Nepal        NEPAL                          >=287         550      4      2      2
18 months   ki1119695-PROBIT           BELARUS                        [273-287)     764    528    482     46
18 months   ki1119695-PROBIT           BELARUS                        <259          764      0      0      0
18 months   ki1119695-PROBIT           BELARUS                        [259-273)     764    181    149     32
18 months   ki1119695-PROBIT           BELARUS                        >=287         764     55     54      1
18 months   ki1135781-COHORTS          GUATEMALA                      [273-287)     299    113     18     95
18 months   ki1135781-COHORTS          GUATEMALA                      <259          299     51      6     45
18 months   ki1135781-COHORTS          GUATEMALA                      [259-273)     299     47      6     41
18 months   ki1135781-COHORTS          GUATEMALA                      >=287         299     88     17     71
18 months   ki1135781-COHORTS          PHILIPPINES                    [273-287)    2471    971    429    542
18 months   ki1135781-COHORTS          PHILIPPINES                    <259         2471    372    138    234
18 months   ki1135781-COHORTS          PHILIPPINES                    [259-273)    2471    672    247    425
18 months   ki1135781-COHORTS          PHILIPPINES                    >=287        2471    456    205    251
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)     350    148     43    105
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <259          350     47     11     36
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [259-273)     350     75     16     59
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=287         350     80     31     49
24 months   ki1000108-IRC              INDIA                          [273-287)     390    165    105     60
24 months   ki1000108-IRC              INDIA                          <259          390     40     17     23
24 months   ki1000108-IRC              INDIA                          [259-273)     390     92     51     41
24 months   ki1000108-IRC              INDIA                          >=287         390     93     55     38
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [273-287)     514    157    129     28
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <259          514    107     68     39
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [259-273)     514    234    172     62
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=287         514     16     13      3
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [273-287)       6      4      3      1
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <259            6      0      0      0
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [259-273)       6      1      1      0
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=287           6      1      1      0
24 months   ki1101329-Keneba           GAMBIA                         [273-287)    1156    437    287    150
24 months   ki1101329-Keneba           GAMBIA                         <259         1156    113     68     45
24 months   ki1101329-Keneba           GAMBIA                         [259-273)    1156    464    314    150
24 months   ki1101329-Keneba           GAMBIA                         >=287        1156    142    103     39
24 months   ki1113344-GMS-Nepal        NEPAL                          [273-287)     499      0      0      0
24 months   ki1113344-GMS-Nepal        NEPAL                          <259          499      0      0      0
24 months   ki1113344-GMS-Nepal        NEPAL                          [259-273)     499    496    273    223
24 months   ki1113344-GMS-Nepal        NEPAL                          >=287         499      3      3      0
24 months   ki1119695-PROBIT           BELARUS                        [273-287)    1619   1111    989    122
24 months   ki1119695-PROBIT           BELARUS                        <259         1619      0      0      0
24 months   ki1119695-PROBIT           BELARUS                        [259-273)    1619    395    359     36
24 months   ki1119695-PROBIT           BELARUS                        >=287        1619    113    109      4
24 months   ki1135781-COHORTS          GUATEMALA                      [273-287)     320    124     16    108
24 months   ki1135781-COHORTS          GUATEMALA                      <259          320     55      9     46
24 months   ki1135781-COHORTS          GUATEMALA                      [259-273)     320     51      6     45
24 months   ki1135781-COHORTS          GUATEMALA                      >=287         320     90     16     74
24 months   ki1135781-COHORTS          INDIA                          [273-287)    1308    515    296    219
24 months   ki1135781-COHORTS          INDIA                          <259         1308    196     89    107
24 months   ki1135781-COHORTS          INDIA                          [259-273)    1308    295    167    128
24 months   ki1135781-COHORTS          INDIA                          >=287        1308    302    157    145
24 months   ki1135781-COHORTS          PHILIPPINES                    [273-287)    2424    958    392    566
24 months   ki1135781-COHORTS          PHILIPPINES                    <259         2424    359    121    238
24 months   ki1135781-COHORTS          PHILIPPINES                    [259-273)    2424    659    225    434
24 months   ki1135781-COHORTS          PHILIPPINES                    >=287        2424    448    189    259
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [273-287)    3220   1131    590    541
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <259         3220    649    308    341
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [259-273)    3220    832    421    411
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=287        3220    608    330    278


The following strata were considered:

* agecat: 12 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 12 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 12 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 12 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 12 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 12 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 12 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 12 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 12 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 18 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 18 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 18 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 18 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 18 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 18 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 18 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 18 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 18 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 18 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 3 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 3 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 3 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 3 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 3 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 3 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 3 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 3 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 3 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 3 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 9 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 9 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 9 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 9 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 9 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 9 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 9 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 9 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 9 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 9 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 9 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 3 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 3 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 3 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 9 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 9 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 9 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 9 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 9 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 12 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 12 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 18 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 18 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 18 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 18 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 18 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots

```
## Warning: Removed 20 rows containing missing values (geom_errorbar).
```

![](/tmp/af6442ae-ea9b-4e7c-843e-a9e68660dc19/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->


```
## Warning: Removed 63 rows containing missing values (geom_errorbar).
```

![](/tmp/af6442ae-ea9b-4e7c-843e-a9e68660dc19/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


```
## Warning: Removed 5 rows containing missing values (geom_errorbar).
```

![](/tmp/af6442ae-ea9b-4e7c-843e-a9e68660dc19/REPORT_files/figure-html/plot_paf-1.png)<!-- -->


```
## Warning: Removed 5 rows containing missing values (geom_errorbar).
```

![](/tmp/af6442ae-ea9b-4e7c-843e-a9e68660dc19/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA                          [273-287)            NA                0.0903226   0.0451356   0.1355096
Birth       ki1000108-IRC              INDIA                          <259                 NA                0.2500000   0.1083597   0.3916403
Birth       ki1000108-IRC              INDIA                          [259-273)            NA                0.0804598   0.0232260   0.1376936
Birth       ki1000108-IRC              INDIA                          >=287                NA                0.1538462   0.0796153   0.2280770
Birth       ki1135781-COHORTS          INDIA                          [273-287)            NA                0.0843137   0.0601895   0.1084380
Birth       ki1135781-COHORTS          INDIA                          <259                 NA                0.1657459   0.1115523   0.2199394
Birth       ki1135781-COHORTS          INDIA                          [259-273)            NA                0.1107266   0.0745348   0.1469185
Birth       ki1135781-COHORTS          INDIA                          >=287                NA                0.0607029   0.0342392   0.0871665
Birth       ki1135781-COHORTS          PHILIPPINES                    [273-287)            NA                0.0314092   0.0214472   0.0413711
Birth       ki1135781-COHORTS          PHILIPPINES                    <259                 NA                0.1655773   0.1315673   0.1995874
Birth       ki1135781-COHORTS          PHILIPPINES                    [259-273)            NA                0.0756303   0.0576718   0.0935887
Birth       ki1135781-COHORTS          PHILIPPINES                    >=287                NA                0.0162455   0.0057168   0.0267742
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [273-287)            NA                0.2447044          NA          NA
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <259                 NA                0.5450311          NA          NA
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [259-273)            NA                0.3824979          NA          NA
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=287                NA                0.2128954          NA          NA
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)            NA                0.1760563   0.1133202   0.2387925
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          <259                 NA                0.4347826   0.2913154   0.5782498
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          [259-273)            NA                0.3013699   0.1959555   0.4067842
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=287                NA                0.2151899   0.1244355   0.3059442
3 months    ki1000108-IRC              INDIA                          [273-287)            NA                0.2085890   0.1461346   0.2710433
3 months    ki1000108-IRC              INDIA                          <259                 NA                0.3000000   0.1578033   0.4421967
3 months    ki1000108-IRC              INDIA                          [259-273)            NA                0.2391304   0.1518557   0.3264052
3 months    ki1000108-IRC              INDIA                          >=287                NA                0.1847826   0.1053711   0.2641941
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [273-287)            NA                0.0465394   0.0322738   0.0608049
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <259                 NA                0.1193548   0.0832564   0.1554533
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [259-273)            NA                0.0720524   0.0483658   0.0957390
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=287                NA                0.0399274   0.0235758   0.0562790
3 months    ki1101329-Keneba           GAMBIA                         [273-287)            NA                0.0788530   0.0564836   0.1012225
3 months    ki1101329-Keneba           GAMBIA                         <259                 NA                0.2516556   0.1824145   0.3208968
3 months    ki1101329-Keneba           GAMBIA                         [259-273)            NA                0.1289753   0.1013530   0.1565975
3 months    ki1101329-Keneba           GAMBIA                         >=287                NA                0.0838323   0.0417855   0.1258792
3 months    ki1135781-COHORTS          GUATEMALA                      [273-287)            NA                0.3059701   0.2278358   0.3841045
3 months    ki1135781-COHORTS          GUATEMALA                      <259                 NA                0.4576271   0.3303223   0.5849319
3 months    ki1135781-COHORTS          GUATEMALA                      [259-273)            NA                0.3448276   0.2223291   0.4673261
3 months    ki1135781-COHORTS          GUATEMALA                      >=287                NA                0.3267327   0.2351327   0.4183326
3 months    ki1135781-COHORTS          INDIA                          [273-287)            NA                0.0931559   0.0683080   0.1180038
3 months    ki1135781-COHORTS          INDIA                          <259                 NA                0.1868687   0.1325528   0.2411846
3 months    ki1135781-COHORTS          INDIA                          [259-273)            NA                0.1245791   0.0870072   0.1621511
3 months    ki1135781-COHORTS          INDIA                          >=287                NA                0.1250000   0.0882893   0.1617107
3 months    ki1135781-COHORTS          PHILIPPINES                    [273-287)            NA                0.0879218   0.0713786   0.1044650
3 months    ki1135781-COHORTS          PHILIPPINES                    <259                 NA                0.2185273   0.1790459   0.2580088
3 months    ki1135781-COHORTS          PHILIPPINES                    [259-273)            NA                0.1605563   0.1349677   0.1861448
3 months    ki1135781-COHORTS          PHILIPPINES                    >=287                NA                0.0625000   0.0415292   0.0834708
3 months    kiGH5241-JiVitA-3          BANGLADESH                     [273-287)            NA                0.2102308          NA          NA
3 months    kiGH5241-JiVitA-3          BANGLADESH                     <259                 NA                0.4311536          NA          NA
3 months    kiGH5241-JiVitA-3          BANGLADESH                     [259-273)            NA                0.3012638          NA          NA
3 months    kiGH5241-JiVitA-3          BANGLADESH                     >=287                NA                0.2040073          NA          NA
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)            NA                0.2585034   0.1876266   0.3293802
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <259                 NA                0.4468085   0.3044694   0.5891476
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [259-273)            NA                0.3108108   0.2052078   0.4164138
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=287                NA                0.2405063   0.1461249   0.3348878
6 months    ki1000108-IRC              INDIA                          [273-287)            NA                0.2060606   0.1442650   0.2678562
6 months    ki1000108-IRC              INDIA                          <259                 NA                0.4750000   0.3200452   0.6299548
6 months    ki1000108-IRC              INDIA                          [259-273)            NA                0.2307692   0.1440920   0.3174465
6 months    ki1000108-IRC              INDIA                          >=287                NA                0.1956522   0.1144853   0.2768191
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [273-287)            NA                0.0952381   0.0740110   0.1164652
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <259                 NA                0.1286765   0.0888734   0.1684796
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [259-273)            NA                0.1081081   0.0779329   0.1382833
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=287                NA                0.0674847   0.0452445   0.0897248
6 months    ki1101329-Keneba           GAMBIA                         [273-287)            NA                0.1140684   0.0868918   0.1412451
6 months    ki1101329-Keneba           GAMBIA                         <259                 NA                0.2307692   0.1616887   0.2998497
6 months    ki1101329-Keneba           GAMBIA                         [259-273)            NA                0.1313869   0.1030922   0.1596816
6 months    ki1101329-Keneba           GAMBIA                         >=287                NA                0.1019108   0.0545710   0.1492506
6 months    ki1135781-COHORTS          GUATEMALA                      [273-287)            NA                0.4074074   0.3244031   0.4904117
6 months    ki1135781-COHORTS          GUATEMALA                      <259                 NA                0.5925926   0.4613513   0.7238339
6 months    ki1135781-COHORTS          GUATEMALA                      [259-273)            NA                0.5438596   0.4143715   0.6733478
6 months    ki1135781-COHORTS          GUATEMALA                      >=287                NA                0.3960396   0.3005211   0.4915581
6 months    ki1135781-COHORTS          INDIA                          [273-287)            NA                0.1442308   0.1140230   0.1744386
6 months    ki1135781-COHORTS          INDIA                          <259                 NA                0.2564103   0.1951003   0.3177202
6 months    ki1135781-COHORTS          INDIA                          [259-273)            NA                0.1575342   0.1157333   0.1993352
6 months    ki1135781-COHORTS          INDIA                          >=287                NA                0.1672131   0.1253178   0.2091085
6 months    ki1135781-COHORTS          PHILIPPINES                    [273-287)            NA                0.1619048   0.1396199   0.1841897
6 months    ki1135781-COHORTS          PHILIPPINES                    <259                 NA                0.3193069   0.2738377   0.3647762
6 months    ki1135781-COHORTS          PHILIPPINES                    [259-273)            NA                0.2472973   0.2162063   0.2783883
6 months    ki1135781-COHORTS          PHILIPPINES                    >=287                NA                0.1744422   0.1409375   0.2079468
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [273-287)            NA                0.2269995          NA          NA
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <259                 NA                0.3701245          NA          NA
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [259-273)            NA                0.2956628          NA          NA
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=287                NA                0.2100910          NA          NA
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)            NA                0.3310345   0.2543275   0.4077414
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          <259                 NA                0.4468085   0.3044676   0.5891494
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          [259-273)            NA                0.3472222   0.2370935   0.4573509
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=287                NA                0.3500000   0.2453291   0.4546709
9 months    ki1000108-IRC              INDIA                          [273-287)            NA                0.2545455   0.1879937   0.3210972
9 months    ki1000108-IRC              INDIA                          <259                 NA                0.4250000   0.2716065   0.5783935
9 months    ki1000108-IRC              INDIA                          [259-273)            NA                0.2747253   0.1828945   0.3665561
9 months    ki1000108-IRC              INDIA                          >=287                NA                0.2282609   0.1423861   0.3141356
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [273-287)            NA                0.1510015   0.1234466   0.1785565
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <259                 NA                0.1924686   0.1424723   0.2424649
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [259-273)            NA                0.1642651   0.1252692   0.2032611
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=287                NA                0.1011236   0.0731032   0.1291440
9 months    ki1101329-Keneba           GAMBIA                         [273-287)            NA                0.1549815   0.1245041   0.1854590
9 months    ki1101329-Keneba           GAMBIA                         <259                 NA                0.2537313   0.1800278   0.3274348
9 months    ki1101329-Keneba           GAMBIA                         [259-273)            NA                0.1893382   0.1564042   0.2222723
9 months    ki1101329-Keneba           GAMBIA                         >=287                NA                0.1528662   0.0965559   0.2091765
9 months    ki1135781-COHORTS          GUATEMALA                      [273-287)            NA                0.5692308   0.4839797   0.6544819
9 months    ki1135781-COHORTS          GUATEMALA                      <259                 NA                0.6296296   0.5006358   0.7586235
9 months    ki1135781-COHORTS          GUATEMALA                      [259-273)            NA                0.6666667   0.5407446   0.7925888
9 months    ki1135781-COHORTS          GUATEMALA                      >=287                NA                0.6129032   0.5137586   0.7120479
9 months    ki1135781-COHORTS          INDIA                          [273-287)            NA                0.2100840   0.1734729   0.2466952
9 months    ki1135781-COHORTS          INDIA                          <259                 NA                0.2977528   0.2305492   0.3649565
9 months    ki1135781-COHORTS          INDIA                          [259-273)            NA                0.2103321   0.1617898   0.2588744
9 months    ki1135781-COHORTS          INDIA                          >=287                NA                0.2777778   0.2243297   0.3312259
9 months    ki1135781-COHORTS          PHILIPPINES                    [273-287)            NA                0.2232734   0.1981636   0.2483833
9 months    ki1135781-COHORTS          PHILIPPINES                    <259                 NA                0.3425693   0.2958783   0.3892602
9 months    ki1135781-COHORTS          PHILIPPINES                    [259-273)            NA                0.3355795   0.3015977   0.3695613
9 months    ki1135781-COHORTS          PHILIPPINES                    >=287                NA                0.2383838   0.2008405   0.2759272
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)            NA                0.5136986   0.4325078   0.5948895
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          <259                 NA                0.4468085   0.3044688   0.5891482
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          [259-273)            NA                0.4794521   0.3646848   0.5942193
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=287                NA                0.4625000   0.3530850   0.5719150
12 months   ki1000108-IRC              INDIA                          [273-287)            NA                0.2743902   0.2060108   0.3427697
12 months   ki1000108-IRC              INDIA                          <259                 NA                0.4250000   0.2716055   0.5783945
12 months   ki1000108-IRC              INDIA                          [259-273)            NA                0.3076923   0.2127415   0.4026431
12 months   ki1000108-IRC              INDIA                          >=287                NA                0.2307692   0.1440914   0.3174470
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [273-287)            NA                0.1603053   0.1288802   0.1917305
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <259                 NA                0.1969697   0.1415529   0.2523865
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [259-273)            NA                0.2109091   0.1626751   0.2591431
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=287                NA                0.1392758   0.1034471   0.1751045
12 months   ki1101329-Keneba           GAMBIA                         [273-287)            NA                0.2151394   0.1791794   0.2510994
12 months   ki1101329-Keneba           GAMBIA                         <259                 NA                0.3357664   0.2566560   0.4148769
12 months   ki1101329-Keneba           GAMBIA                         [259-273)            NA                0.2480469   0.2106235   0.2854702
12 months   ki1101329-Keneba           GAMBIA                         >=287                NA                0.2684564   0.1972729   0.3396398
12 months   ki1135781-COHORTS          GUATEMALA                      [273-287)            NA                0.6811594   0.6032959   0.7590229
12 months   ki1135781-COHORTS          GUATEMALA                      <259                 NA                0.7192982   0.6024823   0.8361142
12 months   ki1135781-COHORTS          GUATEMALA                      [259-273)            NA                0.7192982   0.6024823   0.8361142
12 months   ki1135781-COHORTS          GUATEMALA                      >=287                NA                0.6274510   0.5334908   0.7214112
12 months   ki1135781-COHORTS          INDIA                          [273-287)            NA                0.3053097   0.2628342   0.3477853
12 months   ki1135781-COHORTS          INDIA                          <259                 NA                0.4171779   0.3414464   0.4929095
12 months   ki1135781-COHORTS          INDIA                          [259-273)            NA                0.2812500   0.2261493   0.3363507
12 months   ki1135781-COHORTS          INDIA                          >=287                NA                0.3333333   0.2747551   0.3919115
12 months   ki1135781-COHORTS          PHILIPPINES                    [273-287)            NA                0.3516484   0.3220631   0.3812336
12 months   ki1135781-COHORTS          PHILIPPINES                    <259                 NA                0.4482759   0.3980652   0.4984865
12 months   ki1135781-COHORTS          PHILIPPINES                    [259-273)            NA                0.4285714   0.3922656   0.4648773
12 months   ki1135781-COHORTS          PHILIPPINES                    >=287                NA                0.3524416   0.3092892   0.3955941
12 months   kiGH5241-JiVitA-3          BANGLADESH                     [273-287)            NA                0.3825996          NA          NA
12 months   kiGH5241-JiVitA-3          BANGLADESH                     <259                 NA                0.4780988          NA          NA
12 months   kiGH5241-JiVitA-3          BANGLADESH                     [259-273)            NA                0.4273743          NA          NA
12 months   kiGH5241-JiVitA-3          BANGLADESH                     >=287                NA                0.3538462          NA          NA
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)            NA                0.6802721   0.6047720   0.7557722
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          <259                 NA                0.7173913   0.5870846   0.8476980
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          [259-273)            NA                0.6621622   0.5542438   0.7700805
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=287                NA                0.6875000   0.5857836   0.7892164
18 months   ki1000108-IRC              INDIA                          [273-287)            NA                0.2804878   0.2116439   0.3493317
18 months   ki1000108-IRC              INDIA                          <259                 NA                0.5750000   0.4216055   0.7283945
18 months   ki1000108-IRC              INDIA                          [259-273)            NA                0.4111111   0.3093255   0.5128967
18 months   ki1000108-IRC              INDIA                          >=287                NA                0.3369565   0.2402456   0.4336674
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [273-287)            NA                0.2520107   0.2079262   0.2960953
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <259                 NA                0.2260870   0.1495945   0.3025794
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [259-273)            NA                0.2783505   0.2152487   0.3414524
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=287                NA                0.1916667   0.1418417   0.2414916
18 months   ki1101329-Keneba           GAMBIA                         [273-287)            NA                0.3064516   0.2658640   0.3470392
18 months   ki1101329-Keneba           GAMBIA                         <259                 NA                0.4328358   0.3489133   0.5167584
18 months   ki1101329-Keneba           GAMBIA                         [259-273)            NA                0.3048544   0.2650807   0.3446280
18 months   ki1101329-Keneba           GAMBIA                         >=287                NA                0.3653846   0.2897913   0.4409779
18 months   ki1135781-COHORTS          GUATEMALA                      [273-287)            NA                0.8407080   0.7731221   0.9082938
18 months   ki1135781-COHORTS          GUATEMALA                      <259                 NA                0.8823529   0.7937798   0.9709261
18 months   ki1135781-COHORTS          GUATEMALA                      [259-273)            NA                0.8723404   0.7767760   0.9679049
18 months   ki1135781-COHORTS          GUATEMALA                      >=287                NA                0.8068182   0.7241944   0.8894420
18 months   ki1135781-COHORTS          PHILIPPINES                    [273-287)            NA                0.5581874   0.5269457   0.5894292
18 months   ki1135781-COHORTS          PHILIPPINES                    <259                 NA                0.6290323   0.5799337   0.6781309
18 months   ki1135781-COHORTS          PHILIPPINES                    [259-273)            NA                0.6324405   0.5959798   0.6689012
18 months   ki1135781-COHORTS          PHILIPPINES                    >=287                NA                0.5504386   0.5047716   0.5961056
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)            NA                0.7094595   0.6362098   0.7827091
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <259                 NA                0.7659574   0.6447386   0.8871763
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [259-273)            NA                0.7866667   0.6938206   0.8795127
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=287                NA                0.6125000   0.5055912   0.7194088
24 months   ki1000108-IRC              INDIA                          [273-287)            NA                0.3636364   0.2901427   0.4371300
24 months   ki1000108-IRC              INDIA                          <259                 NA                0.5750000   0.4216075   0.7283925
24 months   ki1000108-IRC              INDIA                          [259-273)            NA                0.4456522   0.3439569   0.5473475
24 months   ki1000108-IRC              INDIA                          >=287                NA                0.4086022   0.3085666   0.5086377
24 months   ki1101329-Keneba           GAMBIA                         [273-287)            NA                0.3432494   0.2987145   0.3877843
24 months   ki1101329-Keneba           GAMBIA                         <259                 NA                0.3982301   0.3079319   0.4885283
24 months   ki1101329-Keneba           GAMBIA                         [259-273)            NA                0.3232759   0.2806994   0.3658523
24 months   ki1101329-Keneba           GAMBIA                         >=287                NA                0.2746479   0.2012042   0.3480916
24 months   ki1135781-COHORTS          GUATEMALA                      [273-287)            NA                0.8709677   0.8118705   0.9300650
24 months   ki1135781-COHORTS          GUATEMALA                      <259                 NA                0.8363636   0.7384408   0.9342864
24 months   ki1135781-COHORTS          GUATEMALA                      [259-273)            NA                0.8823529   0.7937895   0.9709164
24 months   ki1135781-COHORTS          GUATEMALA                      >=287                NA                0.8222222   0.7431107   0.9013338
24 months   ki1135781-COHORTS          INDIA                          [273-287)            NA                0.4252427   0.3825286   0.4679568
24 months   ki1135781-COHORTS          INDIA                          <259                 NA                0.5459184   0.4761888   0.6156479
24 months   ki1135781-COHORTS          INDIA                          [259-273)            NA                0.4338983   0.3773207   0.4904759
24 months   ki1135781-COHORTS          INDIA                          >=287                NA                0.4801325   0.4237638   0.5365011
24 months   ki1135781-COHORTS          PHILIPPINES                    [273-287)            NA                0.5908142   0.5596726   0.6219558
24 months   ki1135781-COHORTS          PHILIPPINES                    <259                 NA                0.6629526   0.6140450   0.7118603
24 months   ki1135781-COHORTS          PHILIPPINES                    [259-273)            NA                0.6585736   0.6223622   0.6947850
24 months   ki1135781-COHORTS          PHILIPPINES                    >=287                NA                0.5781250   0.5323844   0.6238656
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [273-287)            NA                0.4783378          NA          NA
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <259                 NA                0.5254237          NA          NA
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [259-273)            NA                0.4939904          NA          NA
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=287                NA                0.4572368          NA          NA


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA                          NA                   NA                0.1192412   0.0861307   0.1523517
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                0.0959010   0.0798450   0.1119570
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0611772   0.0526341   0.0697204
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.3388205          NA          NA
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.2470588   0.2011465   0.2929711
3 months    ki1000108-IRC              INDIA                          NA                   NA                0.2196382   0.1783376   0.2609388
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0607325   0.0506509   0.0708141
3 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.1171983   0.1005907   0.1338060
3 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.3437500   0.2940621   0.3934379
3 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.1215304   0.1039834   0.1390773
3 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1228070   0.1107550   0.1348591
3 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2786546          NA          NA
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.2910663   0.2432023   0.3389303
6 months    ki1000108-IRC              INDIA                          NA                   NA                0.2371134   0.1947393   0.2794875
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0956385   0.0824215   0.1088554
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.1317322   0.1138432   0.1496211
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.4553314   0.4028579   0.5078049
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.1692073   0.1489117   0.1895030
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2113882   0.1959475   0.2268289
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2695526          NA          NA
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.3546512   0.3040222   0.4052801
9 months    ki1000108-IRC              INDIA                          NA                   NA                0.2706186   0.2263548   0.3148824
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1464286   0.1295181   0.1633390
9 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.1779230   0.1577156   0.1981305
9 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.6072508   0.5545602   0.6599413
9 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.2384937   0.2143212   0.2626662
9 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2746191   0.2577528   0.2914854
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.4855491   0.4328107   0.5382875
12 months   ki1000108-IRC              INDIA                          NA                   NA                0.2875648   0.2423523   0.3327772
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1703540   0.1503369   0.1903711
12 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.2469231   0.2234730   0.2703731
12 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.6779661   0.6292227   0.7267095
12 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.3223214   0.2949379   0.3497050
12 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.3874366   0.3685726   0.4063006
12 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4076655          NA          NA
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.6829971   0.6339683   0.7320259
18 months   ki1000108-IRC              INDIA                          NA                   NA                0.3549223   0.3071264   0.4027182
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2386117   0.2110842   0.2661392
18 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.3259032   0.3004242   0.3513821
18 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.8428094   0.8014839   0.8841349
18 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.5876163   0.5682031   0.6070296
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.7114286   0.6638920   0.7589651
24 months   ki1000108-IRC              INDIA                          NA                   NA                0.4153846   0.3664142   0.4643550
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.3321799   0.3050172   0.3593427
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.8531250   0.8142802   0.8919698
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.4579511   0.4309402   0.4849620
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6175743   0.5982239   0.6369246
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4878882          NA          NA


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA                          [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
Birth       ki1000108-IRC              INDIA                          <259                 [273-287)         2.7678571   1.2998454   5.8938031
Birth       ki1000108-IRC              INDIA                          [259-273)            [273-287)         0.8908046   0.3733368   2.1255147
Birth       ki1000108-IRC              INDIA                          >=287                [273-287)         1.7032967   0.8500311   3.4130745
Birth       ki1135781-COHORTS          INDIA                          [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          INDIA                          <259                 [273-287)         1.9658229   1.2730663   3.0355526
Birth       ki1135781-COHORTS          INDIA                          [259-273)            [273-287)         1.3132695   0.8505432   2.0277356
Birth       ki1135781-COHORTS          INDIA                          >=287                [273-287)         0.7199643   0.4274080   1.2127725
Birth       ki1135781-COHORTS          PHILIPPINES                    [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    <259                 [273-287)         5.2716246   3.6127475   7.6922136
Birth       ki1135781-COHORTS          PHILIPPINES                    [259-273)            [273-287)         2.4079037   1.6202038   3.5785622
Birth       ki1135781-COHORTS          PHILIPPINES                    >=287                [273-287)         0.5172213   0.2513696   1.0642408
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [273-287)            [273-287)         1.0000000          NA          NA
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <259                 [273-287)         2.2273039          NA          NA
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [259-273)            [273-287)         1.5631021          NA          NA
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=287                [273-287)         0.8700104          NA          NA
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          <259                 [273-287)         2.4695652   1.5195061   4.0136413
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          [259-273)            [273-287)         1.7117808   1.0389458   2.8203528
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=287                [273-287)         1.2222785   0.7036948   2.1230293
3 months    ki1000108-IRC              INDIA                          [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
3 months    ki1000108-IRC              INDIA                          <259                 [273-287)         1.4382353   0.8210097   2.5194840
3 months    ki1000108-IRC              INDIA                          [259-273)            [273-287)         1.1464194   0.7150336   1.8380641
3 months    ki1000108-IRC              INDIA                          >=287                [273-287)         0.8858696   0.5246839   1.4956908
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <259                 [273-287)         2.5645988   1.6672634   3.9448877
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [259-273)            [273-287)         1.5482029   0.9876949   2.4267941
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=287                [273-287)         0.8579274   0.5143874   1.4309050
3 months    ki1101329-Keneba           GAMBIA                         [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
3 months    ki1101329-Keneba           GAMBIA                         <259                 [273-287)         3.1914509   2.1495930   4.7382732
3 months    ki1101329-Keneba           GAMBIA                         [259-273)            [273-287)         1.6356409   1.1463517   2.3337698
3 months    ki1101329-Keneba           GAMBIA                         >=287                [273-287)         1.0631464   0.5975033   1.8916720
3 months    ki1135781-COHORTS          GUATEMALA                      [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
3 months    ki1135781-COHORTS          GUATEMALA                      <259                 [273-287)         1.4956594   1.0252588   2.1818850
3 months    ki1135781-COHORTS          GUATEMALA                      [259-273)            [273-287)         1.1269975   0.7276402   1.7455377
3 months    ki1135781-COHORTS          GUATEMALA                      >=287                [273-287)         1.0678580   0.7308359   1.5602966
3 months    ki1135781-COHORTS          INDIA                          [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
3 months    ki1135781-COHORTS          INDIA                          <259                 [273-287)         2.0059780   1.3520592   2.9761625
3 months    ki1135781-COHORTS          INDIA                          [259-273)            [273-287)         1.3373187   0.8940841   2.0002832
3 months    ki1135781-COHORTS          INDIA                          >=287                [273-287)         1.3418367   0.9024016   1.9952598
3 months    ki1135781-COHORTS          PHILIPPINES                    [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
3 months    ki1135781-COHORTS          PHILIPPINES                    <259                 [273-287)         2.4854723   1.9147897   3.2262407
3 months    ki1135781-COHORTS          PHILIPPINES                    [259-273)            [273-287)         1.8261247   1.4270541   2.3367941
3 months    ki1135781-COHORTS          PHILIPPINES                    >=287                [273-287)         0.7108586   0.4838546   1.0443632
3 months    kiGH5241-JiVitA-3          BANGLADESH                     [273-287)            [273-287)         1.0000000          NA          NA
3 months    kiGH5241-JiVitA-3          BANGLADESH                     <259                 [273-287)         2.0508584          NA          NA
3 months    kiGH5241-JiVitA-3          BANGLADESH                     [259-273)            [273-287)         1.4330143          NA          NA
3 months    kiGH5241-JiVitA-3          BANGLADESH                     >=287                [273-287)         0.9703967          NA          NA
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <259                 [273-287)         1.7284434   1.1353153   2.6314423
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [259-273)            [273-287)         1.2023471   0.7769955   1.8605494
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=287                [273-287)         0.9303797   0.5764396   1.5016431
6 months    ki1000108-IRC              INDIA                          [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
6 months    ki1000108-IRC              INDIA                          <259                 [273-287)         2.3051471   1.4799759   3.5903983
6 months    ki1000108-IRC              INDIA                          [259-273)            [273-287)         1.1199095   0.6925410   1.8110080
6 months    ki1000108-IRC              INDIA                          >=287                [273-287)         0.9494885   0.5690838   1.5841752
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <259                 [273-287)         1.3511029   0.9228017   1.9781923
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [259-273)            [273-287)         1.1351351   0.7941840   1.6224599
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=287                [273-287)         0.7085890   0.4760024   1.0548231
6 months    ki1101329-Keneba           GAMBIA                         [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
6 months    ki1101329-Keneba           GAMBIA                         <259                 [273-287)         2.0230769   1.3799309   2.9659748
6 months    ki1101329-Keneba           GAMBIA                         [259-273)            [273-287)         1.1518248   0.8354319   1.5880414
6 months    ki1101329-Keneba           GAMBIA                         >=287                [273-287)         0.8934183   0.5300644   1.5058475
6 months    ki1135781-COHORTS          GUATEMALA                      [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      <259                 [273-287)         1.4545455   1.0765539   1.9652547
6 months    ki1135781-COHORTS          GUATEMALA                      [259-273)            [273-287)         1.3349282   0.9758117   1.8262061
6 months    ki1135781-COHORTS          GUATEMALA                      >=287                [273-287)         0.9720972   0.7089153   1.3329843
6 months    ki1135781-COHORTS          INDIA                          [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          INDIA                          <259                 [273-287)         1.7777778   1.2936902   2.4430068
6 months    ki1135781-COHORTS          INDIA                          [259-273)            [273-287)         1.0922374   0.7789447   1.5315370
6 months    ki1135781-COHORTS          INDIA                          >=287                [273-287)         1.1593443   0.8363527   1.6070722
6 months    ki1135781-COHORTS          PHILIPPINES                    [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    <259                 [273-287)         1.9721899   1.6178472   2.4041410
6 months    ki1135781-COHORTS          PHILIPPINES                    [259-273)            [273-287)         1.5274245   1.2676503   1.8404330
6 months    ki1135781-COHORTS          PHILIPPINES                    >=287                [273-287)         1.0774371   0.8506882   1.3646252
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [273-287)            [273-287)         1.0000000          NA          NA
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <259                 [273-287)         1.6305076          NA          NA
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [259-273)            [273-287)         1.3024819          NA          NA
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=287                [273-287)         0.9255128          NA          NA
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          <259                 [273-287)         1.3497340   0.9102609   2.0013845
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          [259-273)            [273-287)         1.0489005   0.7081805   1.5535477
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=287                [273-287)         1.0572917   0.7242525   1.5434750
9 months    ki1000108-IRC              INDIA                          [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
9 months    ki1000108-IRC              INDIA                          <259                 [273-287)         1.6696429   1.0692267   2.6072181
9 months    ki1000108-IRC              INDIA                          [259-273)            [273-287)         1.0792779   0.7060435   1.6498144
9 months    ki1000108-IRC              INDIA                          >=287                [273-287)         0.8967391   0.5671494   1.4178646
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <259                 [273-287)         1.2746136   0.9279198   1.7508408
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [259-273)            [273-287)         1.0878374   0.8063519   1.4675855
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=287                [273-287)         0.6696859   0.4805966   0.9331717
9 months    ki1101329-Keneba           GAMBIA                         [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
9 months    ki1101329-Keneba           GAMBIA                         <259                 [273-287)         1.6371713   1.1527901   2.3250805
9 months    ki1101329-Keneba           GAMBIA                         [259-273)            [273-287)         1.2216824   0.9395886   1.5884696
9 months    ki1101329-Keneba           GAMBIA                         >=287                [273-287)         0.9863512   0.6496565   1.4975432
9 months    ki1135781-COHORTS          GUATEMALA                      [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
9 months    ki1135781-COHORTS          GUATEMALA                      <259                 [273-287)         1.1061061   0.8581893   1.4256420
9 months    ki1135781-COHORTS          GUATEMALA                      [259-273)            [273-287)         1.1711712   0.9203063   1.4904189
9 months    ki1135781-COHORTS          GUATEMALA                      >=287                [273-287)         1.0767219   0.8637037   1.3422775
9 months    ki1135781-COHORTS          INDIA                          [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
9 months    ki1135781-COHORTS          INDIA                          <259                 [273-287)         1.4173034   1.0656707   1.8849620
9 months    ki1135781-COHORTS          INDIA                          [259-273)            [273-287)         1.0011808   0.7497512   1.3369276
9 months    ki1135781-COHORTS          INDIA                          >=287                [273-287)         1.3222222   1.0199087   1.7141452
9 months    ki1135781-COHORTS          PHILIPPINES                    [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
9 months    ki1135781-COHORTS          PHILIPPINES                    <259                 [273-287)         1.5343039   1.2857887   1.8308517
9 months    ki1135781-COHORTS          PHILIPPINES                    [259-273)            [273-287)         1.5029981   1.2919180   1.7485655
9 months    ki1135781-COHORTS          PHILIPPINES                    >=287                [273-287)         1.0676768   0.8798199   1.2956444
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          <259                 [273-287)         0.8697872   0.6094925   1.2412456
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          [259-273)            [273-287)         0.9333333   0.7005873   1.2434012
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=287                [273-287)         0.9003333   0.6773941   1.1966448
12 months   ki1000108-IRC              INDIA                          [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
12 months   ki1000108-IRC              INDIA                          <259                 [273-287)         1.5488889   0.9989357   2.4016127
12 months   ki1000108-IRC              INDIA                          [259-273)            [273-287)         1.1213675   0.7541977   1.6672884
12 months   ki1000108-IRC              INDIA                          >=287                [273-287)         0.8410256   0.5358561   1.3199889
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <259                 [273-287)         1.2287157   0.8720250   1.7313062
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [259-273)            [273-287)         1.3156710   0.9734893   1.7781297
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=287                [273-287)         0.8688155   0.6287297   1.2005800
12 months   ki1101329-Keneba           GAMBIA                         [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
12 months   ki1101329-Keneba           GAMBIA                         <259                 [273-287)         1.5606921   1.1691189   2.0834150
12 months   ki1101329-Keneba           GAMBIA                         [259-273)            [273-287)         1.1529586   0.9205015   1.4441188
12 months   ki1101329-Keneba           GAMBIA                         >=287                [273-287)         1.2478250   0.9120668   1.7071855
12 months   ki1135781-COHORTS          GUATEMALA                      [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
12 months   ki1135781-COHORTS          GUATEMALA                      <259                 [273-287)         1.0559910   0.8657847   1.2879843
12 months   ki1135781-COHORTS          GUATEMALA                      [259-273)            [273-287)         1.0559910   0.8657847   1.2879843
12 months   ki1135781-COHORTS          GUATEMALA                      >=287                [273-287)         0.9211514   0.7629803   1.1121125
12 months   ki1135781-COHORTS          INDIA                          [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
12 months   ki1135781-COHORTS          INDIA                          <259                 [273-287)         1.3664088   1.0870565   1.7175492
12 months   ki1135781-COHORTS          INDIA                          [259-273)            [273-287)         0.9211957   0.7244310   1.1714040
12 months   ki1135781-COHORTS          INDIA                          >=287                [273-287)         1.0917874   0.8725619   1.3660920
12 months   ki1135781-COHORTS          PHILIPPINES                    [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
12 months   ki1135781-COHORTS          PHILIPPINES                    <259                 [273-287)         1.2747845   1.1081484   1.4664782
12 months   ki1135781-COHORTS          PHILIPPINES                    [259-273)            [273-287)         1.2187500   1.0815902   1.3733034
12 months   ki1135781-COHORTS          PHILIPPINES                    >=287                [273-287)         1.0022558   0.8638941   1.1627776
12 months   kiGH5241-JiVitA-3          BANGLADESH                     [273-287)            [273-287)         1.0000000          NA          NA
12 months   kiGH5241-JiVitA-3          BANGLADESH                     <259                 [273-287)         1.2496061          NA          NA
12 months   kiGH5241-JiVitA-3          BANGLADESH                     [259-273)            [273-287)         1.1170276          NA          NA
12 months   kiGH5241-JiVitA-3          BANGLADESH                     >=287                [273-287)         0.9248472          NA          NA
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          <259                 [273-287)         1.0545652   0.8523701   1.3047241
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          [259-273)            [273-287)         0.9733784   0.7991857   1.1855386
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=287                [273-287)         1.0106250   0.8399750   1.2159443
18 months   ki1000108-IRC              INDIA                          [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
18 months   ki1000108-IRC              INDIA                          <259                 [273-287)         2.0500000   1.4266572   2.9456970
18 months   ki1000108-IRC              INDIA                          [259-273)            [273-287)         1.4657005   1.0342795   2.0770768
18 months   ki1000108-IRC              INDIA                          >=287                [273-287)         1.2013233   0.8234721   1.7525518
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <259                 [273-287)         0.8971323   0.6129745   1.3130176
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [259-273)            [273-287)         1.1045185   0.8294972   1.4707237
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=287                [273-287)         0.7605496   0.5559662   1.0404154
18 months   ki1101329-Keneba           GAMBIA                         [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
18 months   ki1101329-Keneba           GAMBIA                         <259                 [273-287)         1.4124116   1.1168261   1.7862285
18 months   ki1101329-Keneba           GAMBIA                         [259-273)            [273-287)         0.9947879   0.8260190   1.1980391
18 months   ki1101329-Keneba           GAMBIA                         >=287                [273-287)         1.1923077   0.9326190   1.5243070
18 months   ki1135781-COHORTS          GUATEMALA                      [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
18 months   ki1135781-COHORTS          GUATEMALA                      <259                 [273-287)         1.0495356   0.9228779   1.1935761
18 months   ki1135781-COHORTS          GUATEMALA                      [259-273)            [273-287)         1.0376260   0.9057911   1.1886490
18 months   ki1135781-COHORTS          GUATEMALA                      >=287                [273-287)         0.9596890   0.8425366   1.0931311
18 months   ki1135781-COHORTS          PHILIPPINES                    [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
18 months   ki1135781-COHORTS          PHILIPPINES                    <259                 [273-287)         1.1269194   1.0237172   1.2405255
18 months   ki1135781-COHORTS          PHILIPPINES                    [259-273)            [273-287)         1.1330253   1.0455473   1.2278223
18 months   ki1135781-COHORTS          PHILIPPINES                    >=287                [273-287)         0.9861179   0.8922059   1.0899148
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <259                 [273-287)         1.0796353   0.8937440   1.3041903
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [259-273)            [273-287)         1.1088254   0.9478964   1.2970761
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=287                [273-287)         0.8633333   0.7048645   1.0574293
24 months   ki1000108-IRC              INDIA                          [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
24 months   ki1000108-IRC              INDIA                          <259                 [273-287)         1.5812500   1.1314857   2.2097950
24 months   ki1000108-IRC              INDIA                          [259-273)            [273-287)         1.2255435   0.9035321   1.6623170
24 months   ki1000108-IRC              INDIA                          >=287                [273-287)         1.1236559   0.8180099   1.5435053
24 months   ki1101329-Keneba           GAMBIA                         [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
24 months   ki1101329-Keneba           GAMBIA                         <259                 [273-287)         1.1601770   0.8934436   1.5065424
24 months   ki1101329-Keneba           GAMBIA                         [259-273)            [273-287)         0.9418103   0.7828389   1.1330641
24 months   ki1101329-Keneba           GAMBIA                         >=287                [273-287)         0.8001408   0.5944068   1.0770829
24 months   ki1135781-COHORTS          GUATEMALA                      [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      <259                 [273-287)         0.9602694   0.8387325   1.0994176
24 months   ki1135781-COHORTS          GUATEMALA                      [259-273)            [273-287)         1.0130719   0.8974773   1.1435550
24 months   ki1135781-COHORTS          GUATEMALA                      >=287                [273-287)         0.9440329   0.8391804   1.0619864
24 months   ki1135781-COHORTS          INDIA                          [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          INDIA                          <259                 [273-287)         1.2837806   1.0912412   1.5102918
24 months   ki1135781-COHORTS          INDIA                          [259-273)            [273-287)         1.0203545   0.8655014   1.2029135
24 months   ki1135781-COHORTS          INDIA                          >=287                [273-287)         1.1290786   0.9674357   1.3177293
24 months   ki1135781-COHORTS          PHILIPPINES                    [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    <259                 [273-287)         1.1221001   1.0248374   1.2285935
24 months   ki1135781-COHORTS          PHILIPPINES                    [259-273)            [273-287)         1.1146882   1.0329372   1.2029093
24 months   ki1135781-COHORTS          PHILIPPINES                    >=287                [273-287)         0.9785225   0.8897806   1.0761151
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [273-287)            [273-287)         1.0000000          NA          NA
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <259                 [273-287)         1.0984367          NA          NA
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [259-273)            [273-287)         1.0327230          NA          NA
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=287                [273-287)         0.9558870          NA          NA


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000108-IRC              INDIA                          [273-287)            NA                 0.0289186   -0.0088012   0.0666384
Birth       ki1135781-COHORTS          INDIA                          [273-287)            NA                 0.0115873   -0.0079235   0.0310981
Birth       ki1135781-COHORTS          PHILIPPINES                    [273-287)            NA                 0.0297681    0.0200261   0.0395101
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [273-287)            NA                 0.0941161           NA          NA
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)            NA                 0.0710025    0.0185030   0.1235019
3 months    ki1000108-IRC              INDIA                          [273-287)            NA                 0.0110493   -0.0371229   0.0592214
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [273-287)            NA                 0.0141931    0.0020680   0.0263183
3 months    ki1101329-Keneba           GAMBIA                         [273-287)            NA                 0.0383453    0.0186237   0.0580669
3 months    ki1135781-COHORTS          GUATEMALA                      [273-287)            NA                 0.0377799   -0.0248760   0.1004357
3 months    ki1135781-COHORTS          INDIA                          [273-287)            NA                 0.0283745    0.0074449   0.0493041
3 months    ki1135781-COHORTS          PHILIPPINES                    [273-287)            NA                 0.0348852    0.0206487   0.0491216
3 months    kiGH5241-JiVitA-3          BANGLADESH                     [273-287)            NA                 0.0684238           NA          NA
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)            NA                 0.0325629   -0.0227385   0.0878642
6 months    ki1000108-IRC              INDIA                          [273-287)            NA                 0.0310528   -0.0175929   0.0796985
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [273-287)            NA                 0.0004004   -0.0162493   0.0170501
6 months    ki1101329-Keneba           GAMBIA                         [273-287)            NA                 0.0176637   -0.0045422   0.0398696
6 months    ki1135781-COHORTS          GUATEMALA                      [273-287)            NA                 0.0479240   -0.0175153   0.1133634
6 months    ki1135781-COHORTS          INDIA                          [273-287)            NA                 0.0249765    0.0004594   0.0494937
6 months    ki1135781-COHORTS          PHILIPPINES                    [273-287)            NA                 0.0494834    0.0308580   0.0681088
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [273-287)            NA                 0.0425531           NA          NA
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)            NA                 0.0236167   -0.0354336   0.0826670
9 months    ki1000108-IRC              INDIA                          [273-287)            NA                 0.0160731   -0.0351262   0.0672724
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [273-287)            NA                -0.0045730   -0.0259881   0.0168422
9 months    ki1101329-Keneba           GAMBIA                         [273-287)            NA                 0.0229415   -0.0016754   0.0475583
9 months    ki1135781-COHORTS          GUATEMALA                      [273-287)            NA                 0.0380200   -0.0278225   0.1038625
9 months    ki1135781-COHORTS          INDIA                          [273-287)            NA                 0.0284097   -0.0008627   0.0576820
9 months    ki1135781-COHORTS          PHILIPPINES                    [273-287)            NA                 0.0513457    0.0308600   0.0718314
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)            NA                -0.0281495   -0.0898759   0.0335769
12 months   ki1000108-IRC              INDIA                          [273-287)            NA                 0.0131745   -0.0392348   0.0655839
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [273-287)            NA                 0.0100486   -0.0149512   0.0350485
12 months   ki1101329-Keneba           GAMBIA                         [273-287)            NA                 0.0317836    0.0027261   0.0608412
12 months   ki1135781-COHORTS          GUATEMALA                      [273-287)            NA                -0.0031933   -0.0641176   0.0577310
12 months   ki1135781-COHORTS          INDIA                          [273-287)            NA                 0.0170117   -0.0161214   0.0501448
12 months   ki1135781-COHORTS          PHILIPPINES                    [273-287)            NA                 0.0357882    0.0123909   0.0591856
12 months   kiGH5241-JiVitA-3          BANGLADESH                     [273-287)            NA                 0.0250659           NA          NA
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)            NA                 0.0027250   -0.0544980   0.0599480
18 months   ki1000108-IRC              INDIA                          [273-287)            NA                 0.0744345    0.0196933   0.1291756
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [273-287)            NA                -0.0133990   -0.0469959   0.0201978
18 months   ki1101329-Keneba           GAMBIA                         [273-287)            NA                 0.0194515   -0.0128043   0.0517074
18 months   ki1135781-COHORTS          GUATEMALA                      [273-287)            NA                 0.0021014   -0.0510307   0.0552335
18 months   ki1135781-COHORTS          PHILIPPINES                    [273-287)            NA                 0.0294289    0.0052250   0.0536328
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)            NA                 0.0019691   -0.0535966   0.0575348
24 months   ki1000108-IRC              INDIA                          [273-287)            NA                 0.0517483   -0.0050767   0.1085732
24 months   ki1101329-Keneba           GAMBIA                         [273-287)            NA                -0.0110695   -0.0460215   0.0238825
24 months   ki1135781-COHORTS          GUATEMALA                      [273-287)            NA                -0.0178427   -0.0657461   0.0300606
24 months   ki1135781-COHORTS          INDIA                          [273-287)            NA                 0.0327084   -0.0007186   0.0661353
24 months   ki1135781-COHORTS          PHILIPPINES                    [273-287)            NA                 0.0267601    0.0027251   0.0507950
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [273-287)            NA                 0.0095504           NA          NA


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000108-IRC              INDIA                          [273-287)            NA                 0.2425220   -0.1414049   0.4973099
Birth       ki1135781-COHORTS          INDIA                          [273-287)            NA                 0.1208254   -0.1070545   0.3017978
Birth       ki1135781-COHORTS          PHILIPPINES                    [273-287)            NA                 0.4865874    0.3189257   0.6129755
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [273-287)            NA                 0.2777756           NA          NA
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)            NA                 0.2873910    0.0446545   0.4684525
3 months    ki1000108-IRC              INDIA                          [273-287)            NA                 0.0503067   -0.1962919   0.2460726
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [273-287)            NA                 0.2336989    0.0100634   0.4068132
3 months    ki1101329-Keneba           GAMBIA                         [273-287)            NA                 0.3271829    0.1428129   0.4718973
3 months    ki1135781-COHORTS          GUATEMALA                      [273-287)            NA                 0.1099050   -0.0923136   0.2746872
3 months    ki1135781-COHORTS          INDIA                          [273-287)            NA                 0.2334765    0.0436527   0.3856225
3 months    ki1135781-COHORTS          PHILIPPINES                    [273-287)            NA                 0.2840650    0.1614089   0.3887808
3 months    kiGH5241-JiVitA-3          BANGLADESH                     [273-287)            NA                 0.2455506           NA          NA
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)            NA                 0.1118745   -0.0996755   0.2827275
6 months    ki1000108-IRC              INDIA                          [273-287)            NA                 0.1309618   -0.0996579   0.3132160
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [273-287)            NA                 0.0041863   -0.1860470   0.1639075
6 months    ki1101329-Keneba           GAMBIA                         [273-287)            NA                 0.1340882   -0.0511242   0.2866654
6 months    ki1135781-COHORTS          GUATEMALA                      [273-287)            NA                 0.1052508   -0.0509510   0.2382365
6 months    ki1135781-COHORTS          INDIA                          [273-287)            NA                 0.1476091   -0.0094900   0.2802602
6 months    ki1135781-COHORTS          PHILIPPINES                    [273-287)            NA                 0.2340879    0.1418123   0.3164416
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [273-287)            NA                 0.1578656           NA          NA
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)            NA                 0.0665913   -0.1156938   0.2190942
9 months    ki1000108-IRC              INDIA                          [273-287)            NA                 0.0593939   -0.1500775   0.2307129
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [273-287)            NA                -0.0312300   -0.1883254   0.1050975
9 months    ki1101329-Keneba           GAMBIA                         [273-287)            NA                 0.1289404   -0.0204432   0.2564556
9 months    ki1135781-COHORTS          GUATEMALA                      [273-287)            NA                 0.0626100   -0.0526268   0.1652312
9 months    ki1135781-COHORTS          INDIA                          [273-287)            NA                 0.1191213   -0.0122732   0.2334607
9 months    ki1135781-COHORTS          PHILIPPINES                    [273-287)            NA                 0.1869706    0.1092176   0.2579368
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)            NA                -0.0579746   -0.1932299   0.0619493
12 months   ki1000108-IRC              INDIA                          [273-287)            NA                 0.0458141   -0.1549672   0.2116913
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [273-287)            NA                 0.0589868   -0.0997101   0.1947825
12 months   ki1101329-Keneba           GAMBIA                         [273-287)            NA                 0.1287188    0.0030349   0.2385581
12 months   ki1135781-COHORTS          GUATEMALA                      [273-287)            NA                -0.0047101   -0.0987171   0.0812535
12 months   ki1135781-COHORTS          INDIA                          [273-287)            NA                 0.0527787   -0.0557911   0.1501839
12 months   ki1135781-COHORTS          PHILIPPINES                    [273-287)            NA                 0.0923719    0.0299007   0.1508201
12 months   kiGH5241-JiVitA-3          BANGLADESH                     [273-287)            NA                 0.0614865           NA          NA
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)            NA                 0.0039898   -0.0834188   0.0843464
18 months   ki1000108-IRC              INDIA                          [273-287)            NA                 0.2097205    0.0398171   0.3495597
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [273-287)            NA                -0.0561540   -0.2067147   0.0756213
18 months   ki1101329-Keneba           GAMBIA                         [273-287)            NA                 0.0596850   -0.0446741   0.1536190
18 months   ki1135781-COHORTS          GUATEMALA                      [273-287)            NA                 0.0024933   -0.0625843   0.0635853
18 months   ki1135781-COHORTS          PHILIPPINES                    [273-287)            NA                 0.0500819    0.0079266   0.0904458
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)            NA                 0.0027678   -0.0784775   0.0778927
24 months   ki1000108-IRC              INDIA                          [273-287)            NA                 0.1245791   -0.0237145   0.2513911
24 months   ki1101329-Keneba           GAMBIA                         [273-287)            NA                -0.0333238   -0.1440887   0.0667174
24 months   ki1135781-COHORTS          GUATEMALA                      [273-287)            NA                -0.0209146   -0.0787304   0.0338026
24 months   ki1135781-COHORTS          INDIA                          [273-287)            NA                 0.0714232   -0.0045896   0.1416845
24 months   ki1135781-COHORTS          PHILIPPINES                    [273-287)            NA                 0.0433309    0.0035586   0.0815157
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [273-287)            NA                 0.0195751           NA          NA
