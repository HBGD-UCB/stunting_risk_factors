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
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)      90     35     33      2
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          <259           90      7      7      0
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          [259-273)      90     22     22      0
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          >=287          90     26     25      1
Birth       ki1000108-IRC              INDIA                          [273-287)     369    155    151      4
Birth       ki1000108-IRC              INDIA                          <259          369     36     33      3
Birth       ki1000108-IRC              INDIA                          [259-273)     369     87     85      2
Birth       ki1000108-IRC              INDIA                          >=287         369     91     85      6
Birth       ki1000109-EE               PAKISTAN                       [273-287)       2      0      0      0
Birth       ki1000109-EE               PAKISTAN                       <259            2      1      1      0
Birth       ki1000109-EE               PAKISTAN                       [259-273)       2      1      1      0
Birth       ki1000109-EE               PAKISTAN                       >=287           2      0      0      0
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [273-287)      27     12     12      0
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <259           27      3      3      0
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [259-273)      27     11     10      1
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=287          27      1      1      0
Birth       ki1101329-Keneba           GAMBIA                         [273-287)    1515    592    586      6
Birth       ki1101329-Keneba           GAMBIA                         <259         1515    161    149     12
Birth       ki1101329-Keneba           GAMBIA                         [259-273)    1515    592    583      9
Birth       ki1101329-Keneba           GAMBIA                         >=287        1515    170    168      2
Birth       ki1135781-COHORTS          GUATEMALA                      [273-287)     290    114    114      0
Birth       ki1135781-COHORTS          GUATEMALA                      <259          290     49     47      2
Birth       ki1135781-COHORTS          GUATEMALA                      [259-273)     290     46     46      0
Birth       ki1135781-COHORTS          GUATEMALA                      >=287         290     81     81      0
Birth       ki1135781-COHORTS          INDIA                          [273-287)    1293    510    501      9
Birth       ki1135781-COHORTS          INDIA                          <259         1293    181    169     12
Birth       ki1135781-COHORTS          INDIA                          [259-273)    1293    289    284      5
Birth       ki1135781-COHORTS          INDIA                          >=287        1293    313    308      5
Birth       ki1135781-COHORTS          PHILIPPINES                    [273-287)    3024   1178   1172      6
Birth       ki1135781-COHORTS          PHILIPPINES                    <259         3024    459    431     28
Birth       ki1135781-COHORTS          PHILIPPINES                    [259-273)    3024    833    821     12
Birth       ki1135781-COHORTS          PHILIPPINES                    >=287        3024    554    554      0
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)     340    142    130     12
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          <259          340     46     41      5
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          [259-273)     340     73     66      7
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=287         340     79     72      7
3 months    ki1000108-IRC              INDIA                          [273-287)     387    163    153     10
3 months    ki1000108-IRC              INDIA                          <259          387     40     29     11
3 months    ki1000108-IRC              INDIA                          [259-273)     387     92     85      7
3 months    ki1000108-IRC              INDIA                          >=287         387     92     86      6
3 months    ki1000109-EE               PAKISTAN                       [273-287)     376     24     20      4
3 months    ki1000109-EE               PAKISTAN                       <259          376    242    154     88
3 months    ki1000109-EE               PAKISTAN                       [259-273)     376    109     79     30
3 months    ki1000109-EE               PAKISTAN                       >=287         376      1      1      0
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     [273-287)     728    243    238      5
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     <259          728    149    130     19
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     [259-273)     728    317    308      9
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=287         728     19     19      0
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [273-287)    2157    838    834      4
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <259         2157    310    300     10
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [259-273)    2157    458    455      3
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=287        2157    551    546      5
3 months    ki1101329-Keneba           GAMBIA                         [273-287)    1442    558    548     10
3 months    ki1101329-Keneba           GAMBIA                         <259         1442    151    141     10
3 months    ki1101329-Keneba           GAMBIA                         [259-273)    1442    566    555     11
3 months    ki1101329-Keneba           GAMBIA                         >=287        1442    167    164      3
3 months    ki1113344-GMS-Nepal        NEPAL                          [273-287)     571      0      0      0
3 months    ki1113344-GMS-Nepal        NEPAL                          <259          571      1      0      1
3 months    ki1113344-GMS-Nepal        NEPAL                          [259-273)     571    567    546     21
3 months    ki1113344-GMS-Nepal        NEPAL                          >=287         571      3      3      0
3 months    ki1135781-COHORTS          GUATEMALA                      [273-287)     352    134    125      9
3 months    ki1135781-COHORTS          GUATEMALA                      <259          352     59     51      8
3 months    ki1135781-COHORTS          GUATEMALA                      [259-273)     352     58     49      9
3 months    ki1135781-COHORTS          GUATEMALA                      >=287         352    101     96      5
3 months    ki1135781-COHORTS          INDIA                          [273-287)    1333    526    518      8
3 months    ki1135781-COHORTS          INDIA                          <259         1333    198    188     10
3 months    ki1135781-COHORTS          INDIA                          [259-273)    1333    297    287     10
3 months    ki1135781-COHORTS          INDIA                          >=287        1333    312    305      7
3 months    ki1135781-COHORTS          PHILIPPINES                    [273-287)    2850   1126   1113     13
3 months    ki1135781-COHORTS          PHILIPPINES                    <259         2850    421    388     33
3 months    ki1135781-COHORTS          PHILIPPINES                    [259-273)    2850    791    773     18
3 months    ki1135781-COHORTS          PHILIPPINES                    >=287        2850    512    503      9
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)     347    147    131     16
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <259          347     47     37     10
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [259-273)     347     74     68      6
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=287         347     79     73      6
6 months    ki1000108-IRC              INDIA                          [273-287)     388    165    153     12
6 months    ki1000108-IRC              INDIA                          <259          388     40     32      8
6 months    ki1000108-IRC              INDIA                          [259-273)     388     91     87      4
6 months    ki1000108-IRC              INDIA                          >=287         388     92     88      4
6 months    ki1000109-EE               PAKISTAN                       [273-287)     372     24     21      3
6 months    ki1000109-EE               PAKISTAN                       <259          372    239    173     66
6 months    ki1000109-EE               PAKISTAN                       [259-273)     372    108     83     25
6 months    ki1000109-EE               PAKISTAN                       >=287         372      1      1      0
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [273-287)     715    233    231      2
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <259          715    147    135     12
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [259-273)     715    316    307      9
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=287         715     19     19      0
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [273-287)    1903    735    729      6
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <259         1903    272    265      7
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [259-273)    1903    407    406      1
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=287        1903    489    486      3
6 months    ki1101329-Keneba           GAMBIA                         [273-287)    1374    526    507     19
6 months    ki1101329-Keneba           GAMBIA                         <259         1374    143    135      8
6 months    ki1101329-Keneba           GAMBIA                         [259-273)    1374    548    542      6
6 months    ki1101329-Keneba           GAMBIA                         >=287        1374    157    155      2
6 months    ki1113344-GMS-Nepal        NEPAL                          [273-287)     563      0      0      0
6 months    ki1113344-GMS-Nepal        NEPAL                          <259          563      1      1      0
6 months    ki1113344-GMS-Nepal        NEPAL                          [259-273)     563    558    538     20
6 months    ki1113344-GMS-Nepal        NEPAL                          >=287         563      4      4      0
6 months    ki1135781-COHORTS          GUATEMALA                      [273-287)     347    135    117     18
6 months    ki1135781-COHORTS          GUATEMALA                      <259          347     54     40     14
6 months    ki1135781-COHORTS          GUATEMALA                      [259-273)     347     57     42     15
6 months    ki1135781-COHORTS          GUATEMALA                      >=287         347    101     91     10
6 months    ki1135781-COHORTS          INDIA                          [273-287)    1312    520    506     14
6 months    ki1135781-COHORTS          INDIA                          <259         1312    195    185     10
6 months    ki1135781-COHORTS          INDIA                          [259-273)    1312    292    283      9
6 months    ki1135781-COHORTS          INDIA                          >=287        1312    305    299      6
6 months    ki1135781-COHORTS          PHILIPPINES                    [273-287)    2687   1050   1008     42
6 months    ki1135781-COHORTS          PHILIPPINES                    <259         2687    404    371     33
6 months    ki1135781-COHORTS          PHILIPPINES                    [259-273)    2687    740    700     40
6 months    ki1135781-COHORTS          PHILIPPINES                    >=287        2687    493    477     16
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)     344    145    131     14
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          <259          344     47     42      5
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          [259-273)     344     72     61     11
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=287         344     80     69     11
9 months    ki1000108-IRC              INDIA                          [273-287)     388    165    149     16
9 months    ki1000108-IRC              INDIA                          <259          388     40     33      7
9 months    ki1000108-IRC              INDIA                          [259-273)     388     91     86      5
9 months    ki1000108-IRC              INDIA                          >=287         388     92     88      4
9 months    ki1000109-EE               PAKISTAN                       [273-287)     366     23     19      4
9 months    ki1000109-EE               PAKISTAN                       <259          366    235    164     71
9 months    ki1000109-EE               PAKISTAN                       [259-273)     366    107     87     20
9 months    ki1000109-EE               PAKISTAN                       >=287         366      1      1      0
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     [273-287)     706    233    231      2
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     <259          706    143    128     15
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     [259-273)     706    311    300     11
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=287         706     19     19      0
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [273-287)    1680    649    637     12
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <259         1680    239    231      8
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [259-273)    1680    347    339      8
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=287        1680    445    441      4
9 months    ki1101329-Keneba           GAMBIA                         [273-287)    1377    542    516     26
9 months    ki1101329-Keneba           GAMBIA                         <259         1377    134    124     10
9 months    ki1101329-Keneba           GAMBIA                         [259-273)    1377    544    523     21
9 months    ki1101329-Keneba           GAMBIA                         >=287        1377    157    152      5
9 months    ki1113344-GMS-Nepal        NEPAL                          [273-287)     551      0      0      0
9 months    ki1113344-GMS-Nepal        NEPAL                          <259          551      1      1      0
9 months    ki1113344-GMS-Nepal        NEPAL                          [259-273)     551    546    511     35
9 months    ki1113344-GMS-Nepal        NEPAL                          >=287         551      4      4      0
9 months    ki1135781-COHORTS          GUATEMALA                      [273-287)     331    130    100     30
9 months    ki1135781-COHORTS          GUATEMALA                      <259          331     54     37     17
9 months    ki1135781-COHORTS          GUATEMALA                      [259-273)     331     54     36     18
9 months    ki1135781-COHORTS          GUATEMALA                      >=287         331     93     75     18
9 months    ki1135781-COHORTS          INDIA                          [273-287)    1195    476    454     22
9 months    ki1135781-COHORTS          INDIA                          <259         1195    178    160     18
9 months    ki1135781-COHORTS          INDIA                          [259-273)    1195    271    252     19
9 months    ki1135781-COHORTS          INDIA                          >=287        1195    270    253     17
9 months    ki1135781-COHORTS          PHILIPPINES                    [273-287)    2691   1057    997     60
9 months    ki1135781-COHORTS          PHILIPPINES                    <259         2691    397    353     44
9 months    ki1135781-COHORTS          PHILIPPINES                    [259-273)    2691    742    679     63
9 months    ki1135781-COHORTS          PHILIPPINES                    >=287        2691    495    467     28
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)     346    146    116     30
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          <259          346     47     34     13
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          [259-273)     346     73     56     17
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=287         346     80     66     14
12 months   ki1000108-IRC              INDIA                          [273-287)     386    164    151     13
12 months   ki1000108-IRC              INDIA                          <259          386     40     33      7
12 months   ki1000108-IRC              INDIA                          [259-273)     386     91     84      7
12 months   ki1000108-IRC              INDIA                          >=287         386     91     87      4
12 months   ki1000109-EE               PAKISTAN                       [273-287)     357     23     18      5
12 months   ki1000109-EE               PAKISTAN                       <259          357    234    143     91
12 months   ki1000109-EE               PAKISTAN                       [259-273)     357     99     75     24
12 months   ki1000109-EE               PAKISTAN                       >=287         357      1      1      0
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     [273-287)     706    229    221      8
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     <259          706    145    124     21
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     [259-273)     706    313    301     12
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=287         706     19     19      0
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [273-287)    1356    524    514     10
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <259         1356    198    191      7
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [259-273)    1356    275    265     10
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=287        1356    359    353      6
12 months   ki1101329-Keneba           GAMBIA                         [273-287)    1300    502    482     20
12 months   ki1101329-Keneba           GAMBIA                         <259         1300    137    122     15
12 months   ki1101329-Keneba           GAMBIA                         [259-273)    1300    512    477     35
12 months   ki1101329-Keneba           GAMBIA                         >=287        1300    149    138     11
12 months   ki1113344-GMS-Nepal        NEPAL                          [273-287)     558      0      0      0
12 months   ki1113344-GMS-Nepal        NEPAL                          <259          558      1      1      0
12 months   ki1113344-GMS-Nepal        NEPAL                          [259-273)     558    553    503     50
12 months   ki1113344-GMS-Nepal        NEPAL                          >=287         558      4      3      1
12 months   ki1135781-COHORTS          GUATEMALA                      [273-287)     354    138     97     41
12 months   ki1135781-COHORTS          GUATEMALA                      <259          354     57     33     24
12 months   ki1135781-COHORTS          GUATEMALA                      [259-273)     354     57     29     28
12 months   ki1135781-COHORTS          GUATEMALA                      >=287         354    102     75     27
12 months   ki1135781-COHORTS          INDIA                          [273-287)    1120    452    425     27
12 months   ki1135781-COHORTS          INDIA                          <259         1120    163    142     21
12 months   ki1135781-COHORTS          INDIA                          [259-273)    1120    256    235     21
12 months   ki1135781-COHORTS          INDIA                          >=287        1120    249    220     29
12 months   ki1135781-COHORTS          PHILIPPINES                    [273-287)    2563   1001    888    113
12 months   ki1135781-COHORTS          PHILIPPINES                    <259         2563    377    308     69
12 months   ki1135781-COHORTS          PHILIPPINES                    [259-273)    2563    714    599    115
12 months   ki1135781-COHORTS          PHILIPPINES                    >=287        2563    471    427     44
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)     347    147    104     43
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          <259          347     46     31     15
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          [259-273)     347     74     51     23
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=287         347     80     61     19
18 months   ki1000108-IRC              INDIA                          [273-287)     386    164    155      9
18 months   ki1000108-IRC              INDIA                          <259          386     40     34      6
18 months   ki1000108-IRC              INDIA                          [259-273)     386     90     82      8
18 months   ki1000108-IRC              INDIA                          >=287         386     92     84      8
18 months   ki1000109-EE               PAKISTAN                       [273-287)     350     22     17      5
18 months   ki1000109-EE               PAKISTAN                       <259          350    228    105    123
18 months   ki1000109-EE               PAKISTAN                       [259-273)     350     99     56     43
18 months   ki1000109-EE               PAKISTAN                       >=287         350      1      1      0
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     [273-287)     634    194    187      7
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     <259          634    139    120     19
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     [259-273)     634    284    268     16
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=287         634     17     17      0
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [273-287)     922    373    360     13
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <259          922    115    110      5
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [259-273)     922    194    184     10
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=287         922    240    229     11
18 months   ki1101329-Keneba           GAMBIA                         [273-287)    1301    496    459     37
18 months   ki1101329-Keneba           GAMBIA                         <259         1301    134    115     19
18 months   ki1101329-Keneba           GAMBIA                         [259-273)    1301    515    467     48
18 months   ki1101329-Keneba           GAMBIA                         >=287        1301    156    143     13
18 months   ki1113344-GMS-Nepal        NEPAL                          [273-287)     550      0      0      0
18 months   ki1113344-GMS-Nepal        NEPAL                          <259          550      1      1      0
18 months   ki1113344-GMS-Nepal        NEPAL                          [259-273)     550    545    461     84
18 months   ki1113344-GMS-Nepal        NEPAL                          >=287         550      4      3      1
18 months   ki1135781-COHORTS          GUATEMALA                      [273-287)     299    113     62     51
18 months   ki1135781-COHORTS          GUATEMALA                      <259          299     51     23     28
18 months   ki1135781-COHORTS          GUATEMALA                      [259-273)     299     47     19     28
18 months   ki1135781-COHORTS          GUATEMALA                      >=287         299     88     44     44
18 months   ki1135781-COHORTS          PHILIPPINES                    [273-287)    2471    971    758    213
18 months   ki1135781-COHORTS          PHILIPPINES                    <259         2471    372    255    117
18 months   ki1135781-COHORTS          PHILIPPINES                    [259-273)    2471    672    480    192
18 months   ki1135781-COHORTS          PHILIPPINES                    >=287        2471    456    357     99
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)     350    148    105     43
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <259          350     47     28     19
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [259-273)     350     75     49     26
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=287         350     80     55     25
24 months   ki1000108-IRC              INDIA                          [273-287)     390    165    151     14
24 months   ki1000108-IRC              INDIA                          <259          390     40     31      9
24 months   ki1000108-IRC              INDIA                          [259-273)     390     92     83      9
24 months   ki1000108-IRC              INDIA                          >=287         390     93     87      6
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [273-287)     514    157    151      6
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <259          514    107     93     14
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [259-273)     514    234    219     15
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=287         514     16     16      0
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [273-287)       6      4      3      1
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <259            6      0      0      0
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [259-273)       6      1      1      0
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=287           6      1      1      0
24 months   ki1101329-Keneba           GAMBIA                         [273-287)    1156    437    402     35
24 months   ki1101329-Keneba           GAMBIA                         <259         1156    113     95     18
24 months   ki1101329-Keneba           GAMBIA                         [259-273)    1156    464    437     27
24 months   ki1101329-Keneba           GAMBIA                         >=287        1156    142    130     12
24 months   ki1113344-GMS-Nepal        NEPAL                          [273-287)     499      0      0      0
24 months   ki1113344-GMS-Nepal        NEPAL                          <259          499      0      0      0
24 months   ki1113344-GMS-Nepal        NEPAL                          [259-273)     499    496    442     54
24 months   ki1113344-GMS-Nepal        NEPAL                          >=287         499      3      3      0
24 months   ki1135781-COHORTS          GUATEMALA                      [273-287)     320    124     64     60
24 months   ki1135781-COHORTS          GUATEMALA                      <259          320     55     26     29
24 months   ki1135781-COHORTS          GUATEMALA                      [259-273)     320     51     22     29
24 months   ki1135781-COHORTS          GUATEMALA                      >=287         320     90     44     46
24 months   ki1135781-COHORTS          INDIA                          [273-287)    1308    515    441     74
24 months   ki1135781-COHORTS          INDIA                          <259         1308    196    153     43
24 months   ki1135781-COHORTS          INDIA                          [259-273)    1308    295    247     48
24 months   ki1135781-COHORTS          INDIA                          >=287        1308    302    249     53
24 months   ki1135781-COHORTS          PHILIPPINES                    [273-287)    2424    958    715    243
24 months   ki1135781-COHORTS          PHILIPPINES                    <259         2424    359    236    123
24 months   ki1135781-COHORTS          PHILIPPINES                    [259-273)    2424    659    459    200
24 months   ki1135781-COHORTS          PHILIPPINES                    >=287        2424    448    331    117


The following strata were considered:

* agecat: 12 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 12 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 12 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 12 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 12 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 12 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 18 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 18 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 18 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 18 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 18 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 18 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 18 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 18 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 3 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 3 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 3 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 3 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 3 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 3 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 3 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 9 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 9 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 9 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 9 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 9 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 9 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 9 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 9 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 9 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 3 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 3 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 9 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 9 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 9 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 9 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 12 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 18 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 18 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 18 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/1e43c0e0-8757-4935-9332-0b7fc8ae0e0a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->


```
## Warning: Removed 33 rows containing missing values (geom_errorbar).
```

![](/tmp/1e43c0e0-8757-4935-9332-0b7fc8ae0e0a/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/1e43c0e0-8757-4935-9332-0b7fc8ae0e0a/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/1e43c0e0-8757-4935-9332-0b7fc8ae0e0a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1135781-COHORTS          INDIA                          [273-287)            NA                0.0176471   0.0062156   0.0290785
Birth       ki1135781-COHORTS          INDIA                          <259                 NA                0.0662983   0.0300380   0.1025587
Birth       ki1135781-COHORTS          INDIA                          [259-273)            NA                0.0173010   0.0022622   0.0323398
Birth       ki1135781-COHORTS          INDIA                          >=287                NA                0.0159744   0.0020794   0.0298695
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)            NA                0.0845070   0.0386910   0.1303231
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          <259                 NA                0.1086957   0.0186158   0.1987755
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          [259-273)            NA                0.0958904   0.0282472   0.1635337
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=287                NA                0.0886076   0.0258506   0.1513646
3 months    ki1000108-IRC              INDIA                          [273-287)            NA                0.0613497   0.0244626   0.0982368
3 months    ki1000108-IRC              INDIA                          <259                 NA                0.2750000   0.1364472   0.4135528
3 months    ki1000108-IRC              INDIA                          [259-273)            NA                0.0760870   0.0218386   0.1303353
3 months    ki1000108-IRC              INDIA                          >=287                NA                0.0652174   0.0146986   0.1157362
3 months    ki1135781-COHORTS          GUATEMALA                      [273-287)            NA                0.0671642   0.0247232   0.1096051
3 months    ki1135781-COHORTS          GUATEMALA                      <259                 NA                0.1355932   0.0481114   0.2230751
3 months    ki1135781-COHORTS          GUATEMALA                      [259-273)            NA                0.1551724   0.0618592   0.2484856
3 months    ki1135781-COHORTS          GUATEMALA                      >=287                NA                0.0495050   0.0071402   0.0918697
3 months    ki1135781-COHORTS          INDIA                          [273-287)            NA                0.0152091   0.0047465   0.0256718
3 months    ki1135781-COHORTS          INDIA                          <259                 NA                0.0505051   0.0199915   0.0810186
3 months    ki1135781-COHORTS          INDIA                          [259-273)            NA                0.0336700   0.0131481   0.0541919
3 months    ki1135781-COHORTS          INDIA                          >=287                NA                0.0224359   0.0059968   0.0388750
3 months    ki1135781-COHORTS          PHILIPPINES                    [273-287)            NA                0.0115453   0.0053046   0.0177860
3 months    ki1135781-COHORTS          PHILIPPINES                    <259                 NA                0.0783848   0.0527060   0.1040636
3 months    ki1135781-COHORTS          PHILIPPINES                    [259-273)            NA                0.0227560   0.0123619   0.0331501
3 months    ki1135781-COHORTS          PHILIPPINES                    >=287                NA                0.0175781   0.0061933   0.0289629
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)            NA                0.1088435   0.0584245   0.1592626
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <259                 NA                0.2127660   0.0955926   0.3299393
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [259-273)            NA                0.0810811   0.0187998   0.1433623
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=287                NA                0.0759494   0.0174473   0.1344514
6 months    ki1135781-COHORTS          GUATEMALA                      [273-287)            NA                0.1333333   0.0759080   0.1907586
6 months    ki1135781-COHORTS          GUATEMALA                      <259                 NA                0.2592593   0.1422074   0.3763111
6 months    ki1135781-COHORTS          GUATEMALA                      [259-273)            NA                0.2631579   0.1486771   0.3776387
6 months    ki1135781-COHORTS          GUATEMALA                      >=287                NA                0.0990099   0.0406770   0.1573428
6 months    ki1135781-COHORTS          INDIA                          [273-287)            NA                0.0269231   0.0130060   0.0408402
6 months    ki1135781-COHORTS          INDIA                          <259                 NA                0.0512821   0.0203116   0.0822525
6 months    ki1135781-COHORTS          INDIA                          [259-273)            NA                0.0308219   0.0109905   0.0506533
6 months    ki1135781-COHORTS          INDIA                          >=287                NA                0.0196721   0.0040811   0.0352632
6 months    ki1135781-COHORTS          PHILIPPINES                    [273-287)            NA                0.0400000   0.0281450   0.0518550
6 months    ki1135781-COHORTS          PHILIPPINES                    <259                 NA                0.0816832   0.0549715   0.1083948
6 months    ki1135781-COHORTS          PHILIPPINES                    [259-273)            NA                0.0540541   0.0377588   0.0703493
6 months    ki1135781-COHORTS          PHILIPPINES                    >=287                NA                0.0324544   0.0168093   0.0480994
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)            NA                0.0965517   0.0484093   0.1446941
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          <259                 NA                0.1063830   0.0181069   0.1946591
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          [259-273)            NA                0.1527778   0.0695549   0.2360007
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=287                NA                0.1375000   0.0619271   0.2130729
9 months    ki1101329-Keneba           GAMBIA                         [273-287)            NA                0.0479705   0.0299727   0.0659682
9 months    ki1101329-Keneba           GAMBIA                         <259                 NA                0.0746269   0.0301167   0.1191371
9 months    ki1101329-Keneba           GAMBIA                         [259-273)            NA                0.0386029   0.0224084   0.0547975
9 months    ki1101329-Keneba           GAMBIA                         >=287                NA                0.0318471   0.0043705   0.0593237
9 months    ki1135781-COHORTS          GUATEMALA                      [273-287)            NA                0.2307692   0.1582337   0.3033047
9 months    ki1135781-COHORTS          GUATEMALA                      <259                 NA                0.3148148   0.1907525   0.4388771
9 months    ki1135781-COHORTS          GUATEMALA                      [259-273)            NA                0.3333333   0.2074112   0.4592554
9 months    ki1135781-COHORTS          GUATEMALA                      >=287                NA                0.1935484   0.1131314   0.2739653
9 months    ki1135781-COHORTS          INDIA                          [273-287)            NA                0.0462185   0.0273491   0.0650879
9 months    ki1135781-COHORTS          INDIA                          <259                 NA                0.1011236   0.0568142   0.1454330
9 months    ki1135781-COHORTS          INDIA                          [259-273)            NA                0.0701107   0.0396981   0.1005233
9 months    ki1135781-COHORTS          INDIA                          >=287                NA                0.0629630   0.0339783   0.0919477
9 months    ki1135781-COHORTS          PHILIPPINES                    [273-287)            NA                0.0567644   0.0428123   0.0707165
9 months    ki1135781-COHORTS          PHILIPPINES                    <259                 NA                0.1108312   0.0799456   0.1417169
9 months    ki1135781-COHORTS          PHILIPPINES                    [259-273)            NA                0.0849057   0.0648458   0.1049655
9 months    ki1135781-COHORTS          PHILIPPINES                    >=287                NA                0.0565657   0.0362112   0.0769201
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)            NA                0.2054795   0.1398442   0.2711147
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          <259                 NA                0.2765957   0.1485277   0.4046638
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          [259-273)            NA                0.2328767   0.1357786   0.3299748
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=287                NA                0.1750000   0.0916170   0.2583830
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [273-287)            NA                0.0190840   0.0073649   0.0308030
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <259                 NA                0.0353535   0.0096214   0.0610857
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [259-273)            NA                0.0363636   0.0142310   0.0584962
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=287                NA                0.0167131   0.0034474   0.0299788
12 months   ki1101329-Keneba           GAMBIA                         [273-287)            NA                0.0398406   0.0227248   0.0569565
12 months   ki1101329-Keneba           GAMBIA                         <259                 NA                0.1094891   0.0571820   0.1617961
12 months   ki1101329-Keneba           GAMBIA                         [259-273)            NA                0.0683594   0.0464917   0.0902271
12 months   ki1101329-Keneba           GAMBIA                         >=287                NA                0.0738255   0.0318233   0.1158277
12 months   ki1135781-COHORTS          GUATEMALA                      [273-287)            NA                0.2971014   0.2207493   0.3734536
12 months   ki1135781-COHORTS          GUATEMALA                      <259                 NA                0.4210526   0.2926977   0.5494076
12 months   ki1135781-COHORTS          GUATEMALA                      [259-273)            NA                0.4912281   0.3612626   0.6211936
12 months   ki1135781-COHORTS          GUATEMALA                      >=287                NA                0.2647059   0.1789676   0.3504441
12 months   ki1135781-COHORTS          INDIA                          [273-287)            NA                0.0597345   0.0378765   0.0815925
12 months   ki1135781-COHORTS          INDIA                          <259                 NA                0.1288344   0.0773809   0.1802878
12 months   ki1135781-COHORTS          INDIA                          [259-273)            NA                0.0820313   0.0484013   0.1156612
12 months   ki1135781-COHORTS          INDIA                          >=287                NA                0.1164659   0.0766044   0.1563273
12 months   ki1135781-COHORTS          PHILIPPINES                    [273-287)            NA                0.1128871   0.0932794   0.1324948
12 months   ki1135781-COHORTS          PHILIPPINES                    <259                 NA                0.1830239   0.1439829   0.2220649
12 months   ki1135781-COHORTS          PHILIPPINES                    [259-273)            NA                0.1610644   0.1340965   0.1880324
12 months   ki1135781-COHORTS          PHILIPPINES                    >=287                NA                0.0934183   0.0671312   0.1197053
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)            NA                0.2925170   0.2188709   0.3661631
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          <259                 NA                0.3260870   0.1904230   0.4617509
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          [259-273)            NA                0.3108108   0.2052078   0.4164138
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=287                NA                0.2375000   0.1441141   0.3308859
18 months   ki1000108-IRC              INDIA                          [273-287)            NA                0.0548780   0.0199775   0.0897786
18 months   ki1000108-IRC              INDIA                          <259                 NA                0.1500000   0.0392008   0.2607992
18 months   ki1000108-IRC              INDIA                          [259-273)            NA                0.0888889   0.0300181   0.1477596
18 months   ki1000108-IRC              INDIA                          >=287                NA                0.0869565   0.0293045   0.1446085
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [273-287)            NA                0.0348525   0.0162298   0.0534753
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <259                 NA                0.0434783   0.0061860   0.0807705
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [259-273)            NA                0.0515464   0.0204156   0.0826772
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=287                NA                0.0458333   0.0193617   0.0723050
18 months   ki1101329-Keneba           GAMBIA                         [273-287)            NA                0.0745968   0.0514655   0.0977281
18 months   ki1101329-Keneba           GAMBIA                         <259                 NA                0.1417910   0.0827052   0.2008769
18 months   ki1101329-Keneba           GAMBIA                         [259-273)            NA                0.0932039   0.0680860   0.1183218
18 months   ki1101329-Keneba           GAMBIA                         >=287                NA                0.0833333   0.0399455   0.1267212
18 months   ki1135781-COHORTS          GUATEMALA                      [273-287)            NA                0.4513274   0.3594225   0.5432324
18 months   ki1135781-COHORTS          GUATEMALA                      <259                 NA                0.5490196   0.4122268   0.6858124
18 months   ki1135781-COHORTS          GUATEMALA                      [259-273)            NA                0.5957447   0.4552097   0.7362797
18 months   ki1135781-COHORTS          GUATEMALA                      >=287                NA                0.5000000   0.3953584   0.6046416
18 months   ki1135781-COHORTS          PHILIPPINES                    [273-287)            NA                0.2193615   0.1933280   0.2453949
18 months   ki1135781-COHORTS          PHILIPPINES                    <259                 NA                0.3145161   0.2673224   0.3617099
18 months   ki1135781-COHORTS          PHILIPPINES                    [259-273)            NA                0.2857143   0.2515515   0.3198771
18 months   ki1135781-COHORTS          PHILIPPINES                    >=287                NA                0.2171053   0.1792575   0.2549530
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)            NA                0.2905405   0.2172909   0.3637902
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <259                 NA                0.4042553   0.2637546   0.5447560
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [259-273)            NA                0.3466667   0.2388062   0.4545271
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=287                NA                0.3125000   0.2107848   0.4142152
24 months   ki1000108-IRC              INDIA                          [273-287)            NA                0.0848485   0.0422757   0.1274213
24 months   ki1000108-IRC              INDIA                          <259                 NA                0.2250000   0.0954260   0.3545740
24 months   ki1000108-IRC              INDIA                          [259-273)            NA                0.0978261   0.0370428   0.1586094
24 months   ki1000108-IRC              INDIA                          >=287                NA                0.0645161   0.0145223   0.1145100
24 months   ki1101329-Keneba           GAMBIA                         [273-287)            NA                0.0800915   0.0546314   0.1055517
24 months   ki1101329-Keneba           GAMBIA                         <259                 NA                0.1592920   0.0917901   0.2267940
24 months   ki1101329-Keneba           GAMBIA                         [259-273)            NA                0.0581897   0.0368797   0.0794996
24 months   ki1101329-Keneba           GAMBIA                         >=287                NA                0.0845070   0.0387386   0.1302754
24 months   ki1135781-COHORTS          GUATEMALA                      [273-287)            NA                0.4838710   0.3957740   0.5719679
24 months   ki1135781-COHORTS          GUATEMALA                      <259                 NA                0.5272727   0.3951221   0.6594234
24 months   ki1135781-COHORTS          GUATEMALA                      [259-273)            NA                0.5686274   0.4324884   0.7047665
24 months   ki1135781-COHORTS          GUATEMALA                      >=287                NA                0.5111111   0.4076757   0.6145465
24 months   ki1135781-COHORTS          INDIA                          [273-287)            NA                0.1436893   0.1133826   0.1739960
24 months   ki1135781-COHORTS          INDIA                          <259                 NA                0.2193878   0.1614302   0.2773453
24 months   ki1135781-COHORTS          INDIA                          [259-273)            NA                0.1627119   0.1205762   0.2048476
24 months   ki1135781-COHORTS          INDIA                          >=287                NA                0.1754967   0.1325785   0.2184149
24 months   ki1135781-COHORTS          PHILIPPINES                    [273-287)            NA                0.2536534   0.2260956   0.2812113
24 months   ki1135781-COHORTS          PHILIPPINES                    <259                 NA                0.3426184   0.2935158   0.3917210
24 months   ki1135781-COHORTS          PHILIPPINES                    [259-273)            NA                0.3034901   0.2683801   0.3386001
24 months   ki1135781-COHORTS          PHILIPPINES                    >=287                NA                0.2611607   0.2204763   0.3018451


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                0.0239753   0.0230435   0.0249070
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.0911765   0.0903090   0.0920439
3 months    ki1000108-IRC              INDIA                          NA                   NA                0.0878553   0.0814905   0.0942201
3 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0880682   0.0837376   0.0923988
3 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.0262566   0.0255963   0.0269168
3 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0256140   0.0247901   0.0264379
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.1095101   0.1049499   0.1140703
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1642651   0.1571013   0.1714290
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.0297256   0.0291954   0.0302558
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0487533   0.0481560   0.0493506
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.1191860   0.1166985   0.1216736
9 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.0450254   0.0444352   0.0456156
9 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.2507553   0.2449870   0.2565236
9 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.0635983   0.0625528   0.0646439
9 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0724638   0.0717050   0.0732225
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.2138728   0.2105532   0.2171925
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0243363   0.0238810   0.0247915
12 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.0623077   0.0611424   0.0634729
12 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.3389831   0.3301991   0.3477670
12 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.0875000   0.0858921   0.0891079
12 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1330472   0.1318024   0.1342920
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.2881844   0.2850237   0.2913452
18 months   ki1000108-IRC              INDIA                          NA                   NA                0.0803109   0.0774754   0.0831463
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0422993   0.0418717   0.0427270
18 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.0899308   0.0888766   0.0909851
18 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.5050167   0.4990943   0.5109392
18 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2513153   0.2497675   0.2528630
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.3228571   0.3188246   0.3268897
24 months   ki1000108-IRC              INDIA                          NA                   NA                0.0974359   0.0929979   0.1018739
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.0795848   0.0779456   0.0812239
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.5125000   0.5092861   0.5157139
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.1666667   0.1652888   0.1680445
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2817657   0.2804647   0.2830666


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1135781-COHORTS          INDIA                          [273-287)            [273-287)         1.0000000   1.0000000    1.000000
Birth       ki1135781-COHORTS          INDIA                          <259                 [273-287)         3.7569061   1.6093080    8.770442
Birth       ki1135781-COHORTS          INDIA                          [259-273)            [273-287)         0.9803922   0.3315849    2.898711
Birth       ki1135781-COHORTS          INDIA                          >=287                [273-287)         0.9052183   0.3060159    2.677704
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)            [273-287)         1.0000000   1.0000000    1.000000
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          <259                 [273-287)         1.2862319   0.4777805    3.462662
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          [259-273)            [273-287)         1.1347032   0.4661153    2.762302
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=287                [273-287)         1.0485232   0.4297462    2.558256
3 months    ki1000108-IRC              INDIA                          [273-287)            [273-287)         1.0000000   1.0000000    1.000000
3 months    ki1000108-IRC              INDIA                          <259                 [273-287)         4.4825000   2.0456892    9.822023
3 months    ki1000108-IRC              INDIA                          [259-273)            [273-287)         1.2402174   0.4880334    3.151709
3 months    ki1000108-IRC              INDIA                          >=287                [273-287)         1.0630435   0.3987378    2.834097
3 months    ki1135781-COHORTS          GUATEMALA                      [273-287)            [273-287)         1.0000000   1.0000000    1.000000
3 months    ki1135781-COHORTS          GUATEMALA                      <259                 [273-287)         2.0188324   0.8182730    4.980837
3 months    ki1135781-COHORTS          GUATEMALA                      [259-273)            [273-287)         2.3103448   0.9656921    5.527324
3 months    ki1135781-COHORTS          GUATEMALA                      >=287                [273-287)         0.7370737   0.2543993    2.135531
3 months    ki1135781-COHORTS          INDIA                          [273-287)            [273-287)         1.0000000   1.0000000    1.000000
3 months    ki1135781-COHORTS          INDIA                          <259                 [273-287)         3.3207071   1.3292520    8.295715
3 months    ki1135781-COHORTS          INDIA                          [259-273)            [273-287)         2.2138047   0.8830474    5.550020
3 months    ki1135781-COHORTS          INDIA                          >=287                [273-287)         1.4751603   0.5399532    4.030160
3 months    ki1135781-COHORTS          PHILIPPINES                    [273-287)            [273-287)         1.0000000   1.0000000    1.000000
3 months    ki1135781-COHORTS          PHILIPPINES                    <259                 [273-287)         6.7893294   3.6084749   12.774093
3 months    ki1135781-COHORTS          PHILIPPINES                    [259-273)            [273-287)         1.9710201   0.9712860    3.999770
3 months    ki1135781-COHORTS          PHILIPPINES                    >=287                [273-287)         1.5225361   0.6549329    3.539471
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)            [273-287)         1.0000000   1.0000000    1.000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <259                 [273-287)         1.9547872   0.9518515    4.014485
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [259-273)            [273-287)         0.7449324   0.3037769    1.826750
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=287                [273-287)         0.6977848   0.2840289    1.714275
6 months    ki1135781-COHORTS          GUATEMALA                      [273-287)            [273-287)         1.0000000   1.0000000    1.000000
6 months    ki1135781-COHORTS          GUATEMALA                      <259                 [273-287)         1.9444444   1.0418634    3.628944
6 months    ki1135781-COHORTS          GUATEMALA                      [259-273)            [273-287)         1.9736842   1.0700870    3.640292
6 months    ki1135781-COHORTS          GUATEMALA                      >=287                [273-287)         0.7425743   0.3579254    1.540591
6 months    ki1135781-COHORTS          INDIA                          [273-287)            [273-287)         1.0000000   1.0000000    1.000000
6 months    ki1135781-COHORTS          INDIA                          <259                 [273-287)         1.9047619   0.8602060    4.217732
6 months    ki1135781-COHORTS          INDIA                          [259-273)            [273-287)         1.1448141   0.5015244    2.613231
6 months    ki1135781-COHORTS          INDIA                          >=287                [273-287)         0.7306792   0.2836537    1.882197
6 months    ki1135781-COHORTS          PHILIPPINES                    [273-287)            [273-287)         1.0000000   1.0000000    1.000000
6 months    ki1135781-COHORTS          PHILIPPINES                    <259                 [273-287)         2.0420792   1.3134189    3.174987
6 months    ki1135781-COHORTS          PHILIPPINES                    [259-273)            [273-287)         1.3513514   0.8854637    2.062366
6 months    ki1135781-COHORTS          PHILIPPINES                    >=287                [273-287)         0.8113590   0.4607373    1.428804
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)            [273-287)         1.0000000   1.0000000    1.000000
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          <259                 [273-287)         1.1018237   0.4184851    2.900976
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          [259-273)            [273-287)         1.5823412   0.7561056    3.311447
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=287                [273-287)         1.4241071   0.6780401    2.991093
9 months    ki1101329-Keneba           GAMBIA                         [273-287)            [273-287)         1.0000000   1.0000000    1.000000
9 months    ki1101329-Keneba           GAMBIA                         <259                 [273-287)         1.5556831   0.7689629    3.147291
9 months    ki1101329-Keneba           GAMBIA                         [259-273)            [273-287)         0.8047229   0.4583748    1.412772
9 months    ki1101329-Keneba           GAMBIA                         >=287                [273-287)         0.6638902   0.2591235    1.700928
9 months    ki1135781-COHORTS          GUATEMALA                      [273-287)            [273-287)         1.0000000   1.0000000    1.000000
9 months    ki1135781-COHORTS          GUATEMALA                      <259                 [273-287)         1.3641975   0.8240586    2.258377
9 months    ki1135781-COHORTS          GUATEMALA                      [259-273)            [273-287)         1.4444444   0.8836390    2.361167
9 months    ki1135781-COHORTS          GUATEMALA                      >=287                [273-287)         0.8387097   0.4981383    1.412126
9 months    ki1135781-COHORTS          INDIA                          [273-287)            [273-287)         1.0000000   1.0000000    1.000000
9 months    ki1135781-COHORTS          INDIA                          <259                 [273-287)         2.1879468   1.2020987    3.982295
9 months    ki1135781-COHORTS          INDIA                          [259-273)            [273-287)         1.5169406   0.8361114    2.752156
9 months    ki1135781-COHORTS          INDIA                          >=287                [273-287)         1.3622895   0.7362857    2.520534
9 months    ki1135781-COHORTS          PHILIPPINES                    [273-287)            [273-287)         1.0000000   1.0000000    1.000000
9 months    ki1135781-COHORTS          PHILIPPINES                    <259                 [273-287)         1.9524769   1.3465150    2.831135
9 months    ki1135781-COHORTS          PHILIPPINES                    [259-273)            [273-287)         1.4957547   1.0636468    2.103407
9 months    ki1135781-COHORTS          PHILIPPINES                    >=287                [273-287)         0.9964983   0.6445020    1.540738
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)            [273-287)         1.0000000   1.0000000    1.000000
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          <259                 [273-287)         1.3460993   0.7669780    2.362497
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          [259-273)            [273-287)         1.1333333   0.6702666    1.916319
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=287                [273-287)         0.8516667   0.4798904    1.511462
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [273-287)            [273-287)         1.0000000   1.0000000    1.000000
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <259                 [273-287)         1.8525252   0.7148065    4.801089
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [259-273)            [273-287)         1.9054545   0.8026110    4.523682
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=287                [273-287)         0.8757661   0.3210366    2.389030
12 months   ki1101329-Keneba           GAMBIA                         [273-287)            [273-287)         1.0000000   1.0000000    1.000000
12 months   ki1101329-Keneba           GAMBIA                         <259                 [273-287)         2.7481752   1.4454858    5.224864
12 months   ki1101329-Keneba           GAMBIA                         [259-273)            [273-287)         1.7158203   1.0042751    2.931507
12 months   ki1101329-Keneba           GAMBIA                         >=287                [273-287)         1.8530201   0.9083712    3.780045
12 months   ki1135781-COHORTS          GUATEMALA                      [273-287)            [273-287)         1.0000000   1.0000000    1.000000
12 months   ki1135781-COHORTS          GUATEMALA                      <259                 [273-287)         1.4172015   0.9512005    2.111500
12 months   ki1135781-COHORTS          GUATEMALA                      [259-273)            [273-287)         1.6534018   1.1433873    2.390911
12 months   ki1135781-COHORTS          GUATEMALA                      >=287                [273-287)         0.8909613   0.5892400    1.347179
12 months   ki1135781-COHORTS          INDIA                          [273-287)            [273-287)         1.0000000   1.0000000    1.000000
12 months   ki1135781-COHORTS          INDIA                          <259                 [273-287)         2.1567825   1.2547729    3.707214
12 months   ki1135781-COHORTS          INDIA                          [259-273)            [273-287)         1.3732639   0.7926878    2.379062
12 months   ki1135781-COHORTS          INDIA                          >=287                [273-287)         1.9497248   1.1813421    3.217888
12 months   ki1135781-COHORTS          PHILIPPINES                    [273-287)            [273-287)         1.0000000   1.0000000    1.000000
12 months   ki1135781-COHORTS          PHILIPPINES                    <259                 [273-287)         1.6213000   1.2313915    2.134669
12 months   ki1135781-COHORTS          PHILIPPINES                    [259-273)            [273-287)         1.4267742   1.1209324    1.816064
12 months   ki1135781-COHORTS          PHILIPPINES                    >=287                [273-287)         0.8275370   0.5945308    1.151862
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)            [273-287)         1.0000000   1.0000000    1.000000
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          <259                 [273-287)         1.1147624   0.6854750    1.812896
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          [259-273)            [273-287)         1.0625393   0.6961302    1.621808
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=287                [273-287)         0.8119186   0.5090263    1.295045
18 months   ki1000108-IRC              INDIA                          [273-287)            [273-287)         1.0000000   1.0000000    1.000000
18 months   ki1000108-IRC              INDIA                          <259                 [273-287)         2.7333333   1.0312842    7.244473
18 months   ki1000108-IRC              INDIA                          [259-273)            [273-287)         1.6197531   0.6466662    4.057116
18 months   ki1000108-IRC              INDIA                          >=287                [273-287)         1.5845411   0.6322880    3.970929
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [273-287)            [273-287)         1.0000000   1.0000000    1.000000
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <259                 [273-287)         1.2474916   0.4541143    3.426968
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [259-273)            [273-287)         1.4789849   0.6603248    3.312607
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=287                [273-287)         1.3150641   0.5987355    2.888410
18 months   ki1101329-Keneba           GAMBIA                         [273-287)            [273-287)         1.0000000   1.0000000    1.000000
18 months   ki1101329-Keneba           GAMBIA                         <259                 [273-287)         1.9007664   1.1306970    3.195297
18 months   ki1101329-Keneba           GAMBIA                         [259-273)            [273-287)         1.2494358   0.8285025    1.884231
18 months   ki1101329-Keneba           GAMBIA                         >=287                [273-287)         1.1171171   0.6094210    2.047764
18 months   ki1135781-COHORTS          GUATEMALA                      [273-287)            [273-287)         1.0000000   1.0000000    1.000000
18 months   ki1135781-COHORTS          GUATEMALA                      <259                 [273-287)         1.2164552   0.8817518    1.678208
18 months   ki1135781-COHORTS          GUATEMALA                      [259-273)            [273-287)         1.3199833   0.9665597    1.802637
18 months   ki1135781-COHORTS          GUATEMALA                      >=287                [273-287)         1.1078431   0.8273001    1.483520
18 months   ki1135781-COHORTS          PHILIPPINES                    [273-287)            [273-287)         1.0000000   1.0000000    1.000000
18 months   ki1135781-COHORTS          PHILIPPINES                    <259                 [273-287)         1.4337801   1.1841235    1.736074
18 months   ki1135781-COHORTS          PHILIPPINES                    [259-273)            [273-287)         1.3024816   1.1005426    1.541474
18 months   ki1135781-COHORTS          PHILIPPINES                    >=287                [273-287)         0.9897146   0.8015322    1.222078
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)            [273-287)         1.0000000   1.0000000    1.000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <259                 [273-287)         1.3913904   0.9056852    2.137572
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [259-273)            [273-287)         1.1931783   0.7994441    1.780830
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=287                [273-287)         1.0755814   0.7125905    1.623478
24 months   ki1000108-IRC              INDIA                          [273-287)            [273-287)         1.0000000   1.0000000    1.000000
24 months   ki1000108-IRC              INDIA                          <259                 [273-287)         2.6517857   1.2354426    5.691861
24 months   ki1000108-IRC              INDIA                          [259-273)            [273-287)         1.1529503   0.5187617    2.562438
24 months   ki1000108-IRC              INDIA                          >=287                [273-287)         0.7603687   0.3020643    1.914031
24 months   ki1101329-Keneba           GAMBIA                         [273-287)            [273-287)         1.0000000   1.0000000    1.000000
24 months   ki1101329-Keneba           GAMBIA                         <259                 [273-287)         1.9888748   1.1709628    3.378095
24 months   ki1101329-Keneba           GAMBIA                         [259-273)            [273-287)         0.7265394   0.4473554    1.179955
24 months   ki1101329-Keneba           GAMBIA                         >=287                [273-287)         1.0551308   0.5630828    1.977153
24 months   ki1135781-COHORTS          GUATEMALA                      [273-287)            [273-287)         1.0000000   1.0000000    1.000000
24 months   ki1135781-COHORTS          GUATEMALA                      <259                 [273-287)         1.0896970   0.7994102    1.485394
24 months   ki1135781-COHORTS          GUATEMALA                      [259-273)            [273-287)         1.1751634   0.8699032    1.587543
24 months   ki1135781-COHORTS          GUATEMALA                      >=287                [273-287)         1.0562963   0.8045672    1.386785
24 months   ki1135781-COHORTS          INDIA                          [273-287)            [273-287)         1.0000000   1.0000000    1.000000
24 months   ki1135781-COHORTS          INDIA                          <259                 [273-287)         1.5268202   1.0888681    2.140920
24 months   ki1135781-COHORTS          INDIA                          [259-273)            [273-287)         1.1323866   0.8108616    1.581404
24 months   ki1135781-COHORTS          INDIA                          >=287                [273-287)         1.2213621   0.8842842    1.686930
24 months   ki1135781-COHORTS          PHILIPPINES                    [273-287)            [273-287)         1.0000000   1.0000000    1.000000
24 months   ki1135781-COHORTS          PHILIPPINES                    <259                 [273-287)         1.3507342   1.1284072    1.616866
24 months   ki1135781-COHORTS          PHILIPPINES                    [259-273)            [273-287)         1.1964755   1.0208911    1.402259
24 months   ki1135781-COHORTS          PHILIPPINES                    >=287                [273-287)         1.0295966   0.8514975    1.244947


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1135781-COHORTS          INDIA                          [273-287)            NA                 0.0063282   -0.0051412   0.0177975
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)            NA                 0.0066694   -0.0391548   0.0524937
3 months    ki1000108-IRC              INDIA                          [273-287)            NA                 0.0265056   -0.0109266   0.0639378
3 months    ki1135781-COHORTS          GUATEMALA                      [273-287)            NA                 0.0209040   -0.0217573   0.0635653
3 months    ki1135781-COHORTS          INDIA                          [273-287)            NA                 0.0110474    0.0005640   0.0215309
3 months    ki1135781-COHORTS          PHILIPPINES                    [273-287)            NA                 0.0140687    0.0077739   0.0203636
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)            NA                 0.0006665   -0.0499583   0.0512914
6 months    ki1135781-COHORTS          GUATEMALA                      [273-287)            NA                 0.0309318   -0.0269386   0.0888022
6 months    ki1135781-COHORTS          INDIA                          [273-287)            NA                 0.0028025   -0.0111246   0.0167297
6 months    ki1135781-COHORTS          PHILIPPINES                    [273-287)            NA                 0.0087533   -0.0031167   0.0206232
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)            NA                 0.0226343   -0.0255723   0.0708410
9 months    ki1101329-Keneba           GAMBIA                         [273-287)            NA                -0.0029451   -0.0209525   0.0150624
9 months    ki1135781-COHORTS          GUATEMALA                      [273-287)            NA                 0.0199861   -0.0527785   0.0927506
9 months    ki1135781-COHORTS          INDIA                          [273-287)            NA                 0.0173798   -0.0015185   0.0362782
9 months    ki1135781-COHORTS          PHILIPPINES                    [273-287)            NA                 0.0156993    0.0017266   0.0296721
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)            NA                 0.0083934   -0.0573257   0.0741125
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [273-287)            NA                 0.0052523   -0.0064756   0.0169802
12 months   ki1101329-Keneba           GAMBIA                         [273-287)            NA                 0.0224671    0.0053116   0.0396225
12 months   ki1135781-COHORTS          GUATEMALA                      [273-287)            NA                 0.0418816   -0.0349742   0.1187374
12 months   ki1135781-COHORTS          INDIA                          [273-287)            NA                 0.0277655    0.0058484   0.0496826
12 months   ki1135781-COHORTS          PHILIPPINES                    [273-287)            NA                 0.0201601    0.0005129   0.0398073
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)            NA                -0.0043326   -0.0780465   0.0693813
18 months   ki1000108-IRC              INDIA                          [273-287)            NA                 0.0254328   -0.0095827   0.0604484
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [273-287)            NA                 0.0074468   -0.0111808   0.0260744
18 months   ki1101329-Keneba           GAMBIA                         [273-287)            NA                 0.0153340   -0.0078212   0.0384893
18 months   ki1135781-COHORTS          GUATEMALA                      [273-287)            NA                 0.0536893   -0.0384063   0.1457848
18 months   ki1135781-COHORTS          PHILIPPINES                    [273-287)            NA                 0.0319538    0.0058744   0.0580332
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)            NA                 0.0323166   -0.0410440   0.1056772
24 months   ki1000108-IRC              INDIA                          [273-287)            NA                 0.0125874   -0.0302161   0.0553909
24 months   ki1101329-Keneba           GAMBIA                         [273-287)            NA                -0.0005068   -0.0260196   0.0250061
24 months   ki1135781-COHORTS          GUATEMALA                      [273-287)            NA                 0.0286290   -0.0595265   0.1167846
24 months   ki1135781-COHORTS          INDIA                          [273-287)            NA                 0.0229773   -0.0073606   0.0533153
24 months   ki1135781-COHORTS          PHILIPPINES                    [273-287)            NA                 0.0281122    0.0005237   0.0557008


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1135781-COHORTS          INDIA                          [273-287)            NA                 0.2639469   -0.4084550   0.6153415
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)            NA                 0.0731486   -0.5940499   0.4610874
3 months    ki1000108-IRC              INDIA                          [273-287)            NA                 0.3016961   -0.2795485   0.6189060
3 months    ki1135781-COHORTS          GUATEMALA                      [273-287)            NA                 0.2373616   -0.4374023   0.5953691
3 months    ki1135781-COHORTS          INDIA                          [273-287)            NA                 0.4207496   -0.1529908   0.7089907
3 months    ki1135781-COHORTS          PHILIPPINES                    [273-287)            NA                 0.5492591    0.2253644   0.7377253
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)            NA                 0.0060866   -0.5824709   0.3757460
6 months    ki1135781-COHORTS          GUATEMALA                      [273-287)            NA                 0.1883041   -0.2513997   0.4735093
6 months    ki1135781-COHORTS          INDIA                          [273-287)            NA                 0.0942801   -0.5192281   0.4600359
6 months    ki1135781-COHORTS          PHILIPPINES                    [273-287)            NA                 0.1795420   -0.1037731   0.3901361
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)            NA                 0.1899075   -0.3343546   0.5081893
9 months    ki1101329-Keneba           GAMBIA                         [273-287)            NA                -0.0654089   -0.5508011   0.2680582
9 months    ki1135781-COHORTS          GUATEMALA                      [273-287)            NA                 0.0797034   -0.2612483   0.3284861
9 months    ki1135781-COHORTS          INDIA                          [273-287)            NA                 0.2732751   -0.0935064   0.5170315
9 months    ki1135781-COHORTS          PHILIPPINES                    [273-287)            NA                 0.2166509   -0.0018373   0.3874895
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)            NA                 0.0392447   -0.3228203   0.3022101
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [273-287)            NA                 0.2158223   -0.4495369   0.5757717
12 months   ki1101329-Keneba           GAMBIA                         [273-287)            NA                 0.3605824    0.0170363   0.5840590
12 months   ki1135781-COHORTS          GUATEMALA                      [273-287)            NA                 0.1235507   -0.1347552   0.3230581
12 months   ki1135781-COHORTS          INDIA                          [273-287)            NA                 0.3173198    0.0152311   0.5267395
12 months   ki1135781-COHORTS          PHILIPPINES                    [273-287)            NA                 0.1515259   -0.0096759   0.2869907
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)            NA                -0.0150340   -0.3059461   0.2110746
18 months   ki1000108-IRC              INDIA                          [273-287)            NA                 0.3166798   -0.2919514   0.6385882
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [273-287)            NA                 0.1760500   -0.4060430   0.5171602
18 months   ki1101329-Keneba           GAMBIA                         [273-287)            NA                 0.1705094   -0.1312942   0.3917986
18 months   ki1135781-COHORTS          GUATEMALA                      [273-287)            NA                 0.1063119   -0.0958951   0.2712091
18 months   ki1135781-COHORTS          PHILIPPINES                    [273-287)            NA                 0.1271462    0.0170030   0.2249480
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)            NA                 0.1000957   -0.1583048   0.3008508
24 months   ki1000108-IRC              INDIA                          [273-287)            NA                 0.1291866   -0.4412148   0.4738356
24 months   ki1101329-Keneba           GAMBIA                         [273-287)            NA                -0.0063675   -0.3838950   0.2681702
24 months   ki1135781-COHORTS          GUATEMALA                      [273-287)            NA                 0.0558615   -0.1328001   0.2131026
24 months   ki1135781-COHORTS          INDIA                          [273-287)            NA                 0.1378641   -0.0647476   0.3019206
24 months   ki1135781-COHORTS          PHILIPPINES                    [273-287)            NA                 0.0997717   -0.0036416   0.1925294
