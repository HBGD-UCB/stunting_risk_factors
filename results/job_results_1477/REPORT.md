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

**Intervention Variable:** gagebrth

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
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)      340    142    102     40
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          <259           340     46     24     22
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          [259-273)      340     74     45     29
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=287          340     78     49     29
3 months    ki1000108-IRC              INDIA                          [273-287)      390    165    118     47
3 months    ki1000108-IRC              INDIA                          <259           390     40     20     20
3 months    ki1000108-IRC              INDIA                          [259-273)      390     92     62     30
3 months    ki1000108-IRC              INDIA                          >=287          390     93     64     29
3 months    ki1000109-EE               PAKISTAN                       [273-287)      379     24     13     11
3 months    ki1000109-EE               PAKISTAN                       <259           379    245     78    167
3 months    ki1000109-EE               PAKISTAN                       [259-273)      379    109     46     63
3 months    ki1000109-EE               PAKISTAN                       >=287          379      1      1      0
3 months    ki1000304b-SAS-CompFeed    INDIA                          [273-287)      469     12      9      3
3 months    ki1000304b-SAS-CompFeed    INDIA                          <259           469    366    236    130
3 months    ki1000304b-SAS-CompFeed    INDIA                          [259-273)      469     89     66     23
3 months    ki1000304b-SAS-CompFeed    INDIA                          >=287          469      2      2      0
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     [273-287)      758    251    231     20
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     <259           758    157    100     57
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     [259-273)      758    330    286     44
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=287          758     20     20      0
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [273-287)     2251    884    802     82
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <259          2251    324    264     60
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [259-273)     2251    471    420     51
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=287         2251    572    533     39
3 months    ki1101329-Keneba           GAMBIA                         [273-287)     1558    608    507    101
3 months    ki1101329-Keneba           GAMBIA                         <259          1558    165     98     67
3 months    ki1101329-Keneba           GAMBIA                         [259-273)     1558    608    465    143
3 months    ki1101329-Keneba           GAMBIA                         >=287         1558    177    153     24
3 months    ki1113344-GMS-Nepal        NEPAL                          [273-287)      593      0      0      0
3 months    ki1113344-GMS-Nepal        NEPAL                          <259           593      1      0      1
3 months    ki1113344-GMS-Nepal        NEPAL                          [259-273)      593    588    495     93
3 months    ki1113344-GMS-Nepal        NEPAL                          >=287          593      4      4      0
3 months    ki1119695-PROBIT           BELARUS                        [273-287)     8125   5817   5431    386
3 months    ki1119695-PROBIT           BELARUS                        <259          8125      0      0      0
3 months    ki1119695-PROBIT           BELARUS                        [259-273)     8125   1668   1476    192
3 months    ki1119695-PROBIT           BELARUS                        >=287         8125    640    616     24
3 months    ki1135781-COHORTS          GUATEMALA                      [273-287)      367    140    103     37
3 months    ki1135781-COHORTS          GUATEMALA                      <259           367     61     36     25
3 months    ki1135781-COHORTS          GUATEMALA                      [259-273)      367     60     41     19
3 months    ki1135781-COHORTS          GUATEMALA                      >=287          367    106     75     31
3 months    ki1135781-COHORTS          INDIA                          [273-287)     1352    530    462     68
3 months    ki1135781-COHORTS          INDIA                          <259          1352    201    152     49
3 months    ki1135781-COHORTS          INDIA                          [259-273)     1352    303    251     52
3 months    ki1135781-COHORTS          INDIA                          >=287         1352    318    273     45
3 months    ki1135781-COHORTS          PHILIPPINES                    [273-287)     3030   1180   1063    117
3 months    ki1135781-COHORTS          PHILIPPINES                    <259          3030    460    338    122
3 months    ki1135781-COHORTS          PHILIPPINES                    [259-273)     3030    835    676    159
3 months    ki1135781-COHORTS          PHILIPPINES                    >=287         3030    555    516     39
3 months    kiGH5241-JiVitA-3          BANGLADESH                     [273-287)    10029   3433   2326   1107
3 months    kiGH5241-JiVitA-3          BANGLADESH                     <259         10029   2139    824   1315
3 months    kiGH5241-JiVitA-3          BANGLADESH                     [259-273)    10029   2659   1409   1250
3 months    kiGH5241-JiVitA-3          BANGLADESH                     >=287        10029   1798   1295    503
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)      345    146     76     70
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <259           345     47     18     29
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [259-273)      345     74     37     37
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=287          345     78     38     40
6 months    ki1000108-IRC              INDIA                          [273-287)      388    165    101     64
6 months    ki1000108-IRC              INDIA                          <259           388     40     17     23
6 months    ki1000108-IRC              INDIA                          [259-273)      388     92     52     40
6 months    ki1000108-IRC              INDIA                          >=287          388     91     54     37
6 months    ki1000109-EE               PAKISTAN                       [273-287)      373     24     10     14
6 months    ki1000109-EE               PAKISTAN                       <259           373    243     48    195
6 months    ki1000109-EE               PAKISTAN                       [259-273)      373    105     37     68
6 months    ki1000109-EE               PAKISTAN                       >=287          373      1      1      0
6 months    ki1000304b-SAS-CompFeed    INDIA                          [273-287)      366     10      8      2
6 months    ki1000304b-SAS-CompFeed    INDIA                          <259           366    291    161    130
6 months    ki1000304b-SAS-CompFeed    INDIA                          [259-273)      366     63     37     26
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=287          366      2      2      0
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [273-287)      736    244    195     49
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <259           736    151     67     84
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [259-273)      736    322    230     92
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=287          736     19     18      1
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [273-287)     2100    816    657    159
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <259          2100    300    216     84
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [259-273)     2100    442    347     95
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=287         2100    542    463     79
6 months    ki1101329-Keneba           GAMBIA                         [273-287)     1470    564    425    139
6 months    ki1101329-Keneba           GAMBIA                         <259          1470    151     78     73
6 months    ki1101329-Keneba           GAMBIA                         [259-273)     1470    584    402    182
6 months    ki1101329-Keneba           GAMBIA                         >=287         1470    171    130     41
6 months    ki1113344-GMS-Nepal        NEPAL                          [273-287)      567      0      0      0
6 months    ki1113344-GMS-Nepal        NEPAL                          <259           567      1      0      1
6 months    ki1113344-GMS-Nepal        NEPAL                          [259-273)      567    563    402    161
6 months    ki1113344-GMS-Nepal        NEPAL                          >=287          567      3      3      0
6 months    ki1119695-PROBIT           BELARUS                        [273-287)     7807   5589   5045    544
6 months    ki1119695-PROBIT           BELARUS                        <259          7807      0      0      0
6 months    ki1119695-PROBIT           BELARUS                        [259-273)     7807   1599   1366    233
6 months    ki1119695-PROBIT           BELARUS                        >=287         7807    619    582     37
6 months    ki1135781-COHORTS          GUATEMALA                      [273-287)       89     38     26     12
6 months    ki1135781-COHORTS          GUATEMALA                      <259            89     13      7      6
6 months    ki1135781-COHORTS          GUATEMALA                      [259-273)       89     12      8      4
6 months    ki1135781-COHORTS          GUATEMALA                      >=287           89     26     19      7
6 months    ki1135781-COHORTS          PHILIPPINES                    [273-287)     2783   1097    881    216
6 months    ki1135781-COHORTS          PHILIPPINES                    <259          2783    410    255    155
6 months    ki1135781-COHORTS          PHILIPPINES                    [259-273)     2783    771    526    245
6 months    ki1135781-COHORTS          PHILIPPINES                    >=287         2783    505    425     80
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [273-287)     7135   2521   1610    911
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <259          7135   1433    550    883
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [259-273)     7135   1906    963    943
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=287         7135   1275    875    400
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)      350    148     45    103
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          <259           350     47     12     35
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          [259-273)      350     75     27     48
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=287          350     80     25     55
12 months   ki1000108-IRC              INDIA                          [273-287)      388    165     90     75
12 months   ki1000108-IRC              INDIA                          <259           388     40     13     27
12 months   ki1000108-IRC              INDIA                          [259-273)      388     91     41     50
12 months   ki1000108-IRC              INDIA                          >=287          388     92     48     44
12 months   ki1000109-EE               PAKISTAN                       [273-287)      373     24      6     18
12 months   ki1000109-EE               PAKISTAN                       <259           373    240     29    211
12 months   ki1000109-EE               PAKISTAN                       [259-273)      373    108     29     79
12 months   ki1000109-EE               PAKISTAN                       >=287          373      1      1      0
12 months   ki1000304b-SAS-CompFeed    INDIA                          [273-287)      424     12      5      7
12 months   ki1000304b-SAS-CompFeed    INDIA                          <259           424    328    135    193
12 months   ki1000304b-SAS-CompFeed    INDIA                          [259-273)      424     82     34     48
12 months   ki1000304b-SAS-CompFeed    INDIA                          >=287          424      2      0      2
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     [273-287)      729    240    178     62
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     <259           729    149     57     92
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     [259-273)      729    321    199    122
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=287          729     19     18      1
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [273-287)     1876    722    487    235
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <259          1876    275    170    105
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [259-273)     1876    395    259    136
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=287         1876    484    368    116
12 months   ki1101329-Keneba           GAMBIA                         [273-287)     1521    606    391    215
12 months   ki1101329-Keneba           GAMBIA                         <259          1521    152     61     91
12 months   ki1101329-Keneba           GAMBIA                         [259-273)     1521    588    349    239
12 months   ki1101329-Keneba           GAMBIA                         >=287         1521    175    113     62
12 months   ki1113344-GMS-Nepal        NEPAL                          [273-287)      582      0      0      0
12 months   ki1113344-GMS-Nepal        NEPAL                          <259           582      1      0      1
12 months   ki1113344-GMS-Nepal        NEPAL                          [259-273)      582    577    314    263
12 months   ki1113344-GMS-Nepal        NEPAL                          >=287          582      4      3      1
12 months   ki1119695-PROBIT           BELARUS                        [273-287)     7943   5678   4910    768
12 months   ki1119695-PROBIT           BELARUS                        <259          7943      0      0      0
12 months   ki1119695-PROBIT           BELARUS                        [259-273)     7943   1634   1317    317
12 months   ki1119695-PROBIT           BELARUS                        >=287         7943    631    559     72
12 months   ki1135781-COHORTS          GUATEMALA                      [273-287)      372    144     42    102
12 months   ki1135781-COHORTS          GUATEMALA                      <259           372     58     15     43
12 months   ki1135781-COHORTS          GUATEMALA                      [259-273)      372     62     15     47
12 months   ki1135781-COHORTS          GUATEMALA                      >=287          372    108     38     70
12 months   ki1135781-COHORTS          INDIA                          [273-287)     1328    527    343    184
12 months   ki1135781-COHORTS          INDIA                          <259          1328    196    100     96
12 months   ki1135781-COHORTS          INDIA                          [259-273)     1328    298    189    109
12 months   ki1135781-COHORTS          INDIA                          >=287         1328    307    197    110
12 months   ki1135781-COHORTS          PHILIPPINES                    [273-287)     2741   1077    680    397
12 months   ki1135781-COHORTS          PHILIPPINES                    <259          2741    406    178    228
12 months   ki1135781-COHORTS          PHILIPPINES                    [259-273)     2741    756    371    385
12 months   ki1135781-COHORTS          PHILIPPINES                    >=287         2741    502    311    191
12 months   kiGH5241-JiVitA-3          BANGLADESH                     [273-287)     6260   2179   1305    874
12 months   kiGH5241-JiVitA-3          BANGLADESH                     <259          6260   1221    443    778
12 months   kiGH5241-JiVitA-3          BANGLADESH                     [259-273)     6260   1646    778    868
12 months   kiGH5241-JiVitA-3          BANGLADESH                     >=287         6260   1214    797    417
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)      351    148     24    124
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          <259           351     47      7     40
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          [259-273)      351     75     15     60
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=287          351     81     11     70
18 months   ki1000108-IRC              INDIA                          [273-287)      389    165     82     83
18 months   ki1000108-IRC              INDIA                          <259           389     40     10     30
18 months   ki1000108-IRC              INDIA                          [259-273)      389     91     37     54
18 months   ki1000108-IRC              INDIA                          >=287          389     93     41     52
18 months   ki1000109-EE               PAKISTAN                       [273-287)      363     23      3     20
18 months   ki1000109-EE               PAKISTAN                       <259           363    235     13    222
18 months   ki1000109-EE               PAKISTAN                       [259-273)      363    104     15     89
18 months   ki1000109-EE               PAKISTAN                       >=287          363      1      1      0
18 months   ki1000304b-SAS-CompFeed    INDIA                          [273-287)      415     12      4      8
18 months   ki1000304b-SAS-CompFeed    INDIA                          <259           415    324     97    227
18 months   ki1000304b-SAS-CompFeed    INDIA                          [259-273)      415     77     23     54
18 months   ki1000304b-SAS-CompFeed    INDIA                          >=287          415      2      0      2
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     [273-287)      715    233    160     73
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     <259           715    148     51     97
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     [259-273)      715    315    173    142
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=287          715     19     14      5
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [273-287)     1367    526    306    220
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <259          1367    192     98     94
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [259-273)     1367    286    162    124
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=287         1367    363    248    115
18 months   ki1101329-Keneba           GAMBIA                         [273-287)     1473    576    305    271
18 months   ki1101329-Keneba           GAMBIA                         <259          1473    148     47    101
18 months   ki1101329-Keneba           GAMBIA                         [259-273)     1473    580    296    284
18 months   ki1101329-Keneba           GAMBIA                         >=287         1473    169     90     79
18 months   ki1113344-GMS-Nepal        NEPAL                          [273-287)      574      0      0      0
18 months   ki1113344-GMS-Nepal        NEPAL                          <259           574      1      0      1
18 months   ki1113344-GMS-Nepal        NEPAL                          [259-273)      574    569    214    355
18 months   ki1113344-GMS-Nepal        NEPAL                          >=287          574      4      2      2
18 months   ki1119695-PROBIT           BELARUS                        [273-287)     7475   5361   4575    786
18 months   ki1119695-PROBIT           BELARUS                        <259          7475      0      0      0
18 months   ki1119695-PROBIT           BELARUS                        [259-273)     7475   1518   1205    313
18 months   ki1119695-PROBIT           BELARUS                        >=287         7475    596    525     71
18 months   ki1135781-COHORTS          GUATEMALA                      [273-287)      306    117     22     95
18 months   ki1135781-COHORTS          GUATEMALA                      <259           306     50      5     45
18 months   ki1135781-COHORTS          GUATEMALA                      [259-273)      306     48      7     41
18 months   ki1135781-COHORTS          GUATEMALA                      >=287          306     91     20     71
18 months   ki1135781-COHORTS          PHILIPPINES                    [273-287)     2610   1024    442    582
18 months   ki1135781-COHORTS          PHILIPPINES                    <259          2610    389    113    276
18 months   ki1135781-COHORTS          PHILIPPINES                    [259-273)     2610    719    242    477
18 months   ki1135781-COHORTS          PHILIPPINES                    >=287         2610    478    203    275
18 months   kiGH5241-JiVitA-3          BANGLADESH                     [273-287)     5533   1937    958    979
18 months   kiGH5241-JiVitA-3          BANGLADESH                     <259          5533   1087    322    765
18 months   kiGH5241-JiVitA-3          BANGLADESH                     [259-273)     5533   1449    573    876
18 months   kiGH5241-JiVitA-3          BANGLADESH                     >=287         5533   1060    581    479
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)      351    148     13    135
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <259           351     47      3     44
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [259-273)      351     75      5     70
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=287          351     81      7     74
24 months   ki1000108-IRC              INDIA                          [273-287)      390    165     66     99
24 months   ki1000108-IRC              INDIA                          <259           390     40      7     33
24 months   ki1000108-IRC              INDIA                          [259-273)      390     92     32     60
24 months   ki1000108-IRC              INDIA                          >=287          390     93     33     60
24 months   ki1000109-EE               PAKISTAN                       [273-287)      338     20      1     19
24 months   ki1000109-EE               PAKISTAN                       <259           338    220     11    209
24 months   ki1000109-EE               PAKISTAN                       [259-273)      338     97     14     83
24 months   ki1000109-EE               PAKISTAN                       >=287          338      1      1      0
24 months   ki1000304b-SAS-CompFeed    INDIA                          [273-287)       43      4      1      3
24 months   ki1000304b-SAS-CompFeed    INDIA                          <259            43     31      8     23
24 months   ki1000304b-SAS-CompFeed    INDIA                          [259-273)       43      8      4      4
24 months   ki1000304b-SAS-CompFeed    INDIA                          >=287           43      0      0      0
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [273-287)      634    194    122     72
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <259           634    141     44     97
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [259-273)      634    282    140    142
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=287          634     17     10      7
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [273-287)      906    364    198    166
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <259           906    107     56     51
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [259-273)      906    197    106     91
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=287          906    238    154     84
24 months   ki1101329-Keneba           GAMBIA                         [273-287)     1446    561    249    312
24 months   ki1101329-Keneba           GAMBIA                         <259          1446    144     38    106
24 months   ki1101329-Keneba           GAMBIA                         [259-273)     1446    574    256    318
24 months   ki1101329-Keneba           GAMBIA                         >=287         1446    167     74     93
24 months   ki1113344-GMS-Nepal        NEPAL                          [273-287)      568      0      0      0
24 months   ki1113344-GMS-Nepal        NEPAL                          <259           568      1      0      1
24 months   ki1113344-GMS-Nepal        NEPAL                          [259-273)      568    563    174    389
24 months   ki1113344-GMS-Nepal        NEPAL                          >=287          568      4      2      2
24 months   ki1119695-PROBIT           BELARUS                        [273-287)     2076   1449   1159    290
24 months   ki1119695-PROBIT           BELARUS                        <259          2076      0      0      0
24 months   ki1119695-PROBIT           BELARUS                        [259-273)     2076    503    378    125
24 months   ki1119695-PROBIT           BELARUS                        >=287         2076    124    111     13
24 months   ki1135781-COHORTS          GUATEMALA                      [273-287)      316    120     13    107
24 months   ki1135781-COHORTS          GUATEMALA                      <259           316     54      4     50
24 months   ki1135781-COHORTS          GUATEMALA                      [259-273)      316     52      5     47
24 months   ki1135781-COHORTS          GUATEMALA                      >=287          316     90     11     79
24 months   ki1135781-COHORTS          PHILIPPINES                    [273-287)     2540   1004    276    728
24 months   ki1135781-COHORTS          PHILIPPINES                    <259          2540    377     78    299
24 months   ki1135781-COHORTS          PHILIPPINES                    [259-273)     2540    696    155    541
24 months   ki1135781-COHORTS          PHILIPPINES                    >=287         2540    463    120    343
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [273-287)        3      1      1      0
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <259             3      0      0      0
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [259-273)        3      1      0      1
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=287            3      1      1      0


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
* agecat: 18 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
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
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

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
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 12 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 12 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 18 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 18 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 18 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 18 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots

```
## Warning: Removed 16 rows containing missing values (geom_errorbar).
```

![](/tmp/3e5f4693-b85e-4cf0-b252-d2f6558037a2/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->


```
## Warning: Removed 47 rows containing missing values (geom_errorbar).
```

![](/tmp/3e5f4693-b85e-4cf0-b252-d2f6558037a2/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


```
## Warning: Removed 4 rows containing missing values (geom_errorbar).
```

![](/tmp/3e5f4693-b85e-4cf0-b252-d2f6558037a2/REPORT_files/figure-html/plot_paf-1.png)<!-- -->


```
## Warning: Removed 4 rows containing missing values (geom_errorbar).
```

![](/tmp/3e5f4693-b85e-4cf0-b252-d2f6558037a2/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)            NA                0.2816901   0.2075958   0.3557845
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          <259                 NA                0.4782609   0.3336943   0.6228275
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          [259-273)            NA                0.3918919   0.2805021   0.5032817
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=287                NA                0.3717949   0.2643853   0.4792044
3 months    ki1000108-IRC              INDIA                          [273-287)            NA                0.2848485   0.2158929   0.3538041
3 months    ki1000108-IRC              INDIA                          <259                 NA                0.5000000   0.3448522   0.6551478
3 months    ki1000108-IRC              INDIA                          [259-273)            NA                0.3260870   0.2301733   0.4220006
3 months    ki1000108-IRC              INDIA                          >=287                NA                0.3118280   0.2175587   0.4060972
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [273-287)            NA                0.0927602   0.0736326   0.1118878
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <259                 NA                0.1851852   0.1428789   0.2274914
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [259-273)            NA                0.1082803   0.0802115   0.1363490
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=287                NA                0.0681818   0.0475211   0.0888426
3 months    ki1101329-Keneba           GAMBIA                         [273-287)            NA                0.1661184   0.1365249   0.1957120
3 months    ki1101329-Keneba           GAMBIA                         <259                 NA                0.4060606   0.3311036   0.4810176
3 months    ki1101329-Keneba           GAMBIA                         [259-273)            NA                0.2351974   0.2014743   0.2689204
3 months    ki1101329-Keneba           GAMBIA                         >=287                NA                0.1355932   0.0851412   0.1860453
3 months    ki1135781-COHORTS          GUATEMALA                      [273-287)            NA                0.2642857   0.1911435   0.3374279
3 months    ki1135781-COHORTS          GUATEMALA                      <259                 NA                0.4098361   0.2862507   0.5334214
3 months    ki1135781-COHORTS          GUATEMALA                      [259-273)            NA                0.3166667   0.1988023   0.4345310
3 months    ki1135781-COHORTS          GUATEMALA                      >=287                NA                0.2924528   0.2057380   0.3791676
3 months    ki1135781-COHORTS          INDIA                          [273-287)            NA                0.1283019   0.0998199   0.1567839
3 months    ki1135781-COHORTS          INDIA                          <259                 NA                0.2437811   0.1844019   0.3031603
3 months    ki1135781-COHORTS          INDIA                          [259-273)            NA                0.1716172   0.1291471   0.2140873
3 months    ki1135781-COHORTS          INDIA                          >=287                NA                0.1415094   0.1031868   0.1798321
3 months    ki1135781-COHORTS          PHILIPPINES                    [273-287)            NA                0.0991525   0.0820974   0.1162077
3 months    ki1135781-COHORTS          PHILIPPINES                    <259                 NA                0.2652174   0.2248695   0.3055653
3 months    ki1135781-COHORTS          PHILIPPINES                    [259-273)            NA                0.1904192   0.1637836   0.2170547
3 months    ki1135781-COHORTS          PHILIPPINES                    >=287                NA                0.0702703   0.0490017   0.0915388
3 months    kiGH5241-JiVitA-3          BANGLADESH                     [273-287)            NA                0.3224585          NA          NA
3 months    kiGH5241-JiVitA-3          BANGLADESH                     <259                 NA                0.6147733          NA          NA
3 months    kiGH5241-JiVitA-3          BANGLADESH                     [259-273)            NA                0.4701015          NA          NA
3 months    kiGH5241-JiVitA-3          BANGLADESH                     >=287                NA                0.2797553          NA          NA
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)            NA                0.4794521   0.3982990   0.5606051
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <259                 NA                0.6170213   0.4778445   0.7561981
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [259-273)            NA                0.5000000   0.3859139   0.6140861
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=287                NA                0.5128205   0.4017348   0.6239063
6 months    ki1000108-IRC              INDIA                          [273-287)            NA                0.3878788   0.3134342   0.4623234
6 months    ki1000108-IRC              INDIA                          <259                 NA                0.5750000   0.4216065   0.7283935
6 months    ki1000108-IRC              INDIA                          [259-273)            NA                0.4347826   0.3333545   0.5362107
6 months    ki1000108-IRC              INDIA                          >=287                NA                0.4065934   0.3055416   0.5076452
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [273-287)            NA                0.1948529   0.1676699   0.2220360
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <259                 NA                0.2800000   0.2291798   0.3308202
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [259-273)            NA                0.2149321   0.1766281   0.2532362
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=287                NA                0.1457565   0.1160428   0.1754702
6 months    ki1101329-Keneba           GAMBIA                         [273-287)            NA                0.2464539   0.2108761   0.2820317
6 months    ki1101329-Keneba           GAMBIA                         <259                 NA                0.4834437   0.4037105   0.5631769
6 months    ki1101329-Keneba           GAMBIA                         [259-273)            NA                0.3116438   0.2740666   0.3492211
6 months    ki1101329-Keneba           GAMBIA                         >=287                NA                0.2397661   0.1757535   0.3037787
6 months    ki1135781-COHORTS          PHILIPPINES                    [273-287)            NA                0.1969006   0.1733647   0.2204365
6 months    ki1135781-COHORTS          PHILIPPINES                    <259                 NA                0.3780488   0.3311041   0.4249934
6 months    ki1135781-COHORTS          PHILIPPINES                    [259-273)            NA                0.3177691   0.2848976   0.3506407
6 months    ki1135781-COHORTS          PHILIPPINES                    >=287                NA                0.1584158   0.1265644   0.1902672
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [273-287)            NA                0.3613645          NA          NA
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <259                 NA                0.6161898          NA          NA
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [259-273)            NA                0.4947534          NA          NA
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=287                NA                0.3137255          NA          NA
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)            NA                0.6959459   0.6217292   0.7701627
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          <259                 NA                0.7446809   0.6198427   0.8695190
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          [259-273)            NA                0.6400000   0.5312122   0.7487878
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=287                NA                0.6875000   0.5857848   0.7892152
12 months   ki1000108-IRC              INDIA                          [273-287)            NA                0.4545455   0.3784718   0.5306191
12 months   ki1000108-IRC              INDIA                          <259                 NA                0.6750000   0.5296644   0.8203356
12 months   ki1000108-IRC              INDIA                          [259-273)            NA                0.5494505   0.4470922   0.6518089
12 months   ki1000108-IRC              INDIA                          >=287                NA                0.4782609   0.3760555   0.5804662
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [273-287)            NA                0.3254848   0.2912981   0.3596714
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <259                 NA                0.3818182   0.3243822   0.4392541
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [259-273)            NA                0.3443038   0.2974346   0.3911730
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=287                NA                0.2396694   0.2016287   0.2777101
12 months   ki1101329-Keneba           GAMBIA                         [273-287)            NA                0.3547855   0.3166798   0.3928911
12 months   ki1101329-Keneba           GAMBIA                         <259                 NA                0.5986842   0.5207351   0.6766333
12 months   ki1101329-Keneba           GAMBIA                         [259-273)            NA                0.4064626   0.3667492   0.4461759
12 months   ki1101329-Keneba           GAMBIA                         >=287                NA                0.3542857   0.2833983   0.4251731
12 months   ki1135781-COHORTS          GUATEMALA                      [273-287)            NA                0.7083333   0.6339949   0.7826718
12 months   ki1135781-COHORTS          GUATEMALA                      <259                 NA                0.7413793   0.6285374   0.8542212
12 months   ki1135781-COHORTS          GUATEMALA                      [259-273)            NA                0.7580645   0.6513215   0.8648076
12 months   ki1135781-COHORTS          GUATEMALA                      >=287                NA                0.6481481   0.5579624   0.7383339
12 months   ki1135781-COHORTS          INDIA                          [273-287)            NA                0.3491461   0.3084314   0.3898609
12 months   ki1135781-COHORTS          INDIA                          <259                 NA                0.4897959   0.4197854   0.5598064
12 months   ki1135781-COHORTS          INDIA                          [259-273)            NA                0.3657718   0.3110663   0.4204774
12 months   ki1135781-COHORTS          INDIA                          >=287                NA                0.3583062   0.3046483   0.4119641
12 months   ki1135781-COHORTS          PHILIPPINES                    [273-287)            NA                0.3686165   0.3397992   0.3974338
12 months   ki1135781-COHORTS          PHILIPPINES                    <259                 NA                0.5615764   0.5133021   0.6098506
12 months   ki1135781-COHORTS          PHILIPPINES                    [259-273)            NA                0.5092593   0.4736173   0.5449013
12 months   ki1135781-COHORTS          PHILIPPINES                    >=287                NA                0.3804781   0.3379996   0.4229565
12 months   kiGH5241-JiVitA-3          BANGLADESH                     [273-287)            NA                0.4011014          NA          NA
12 months   kiGH5241-JiVitA-3          BANGLADESH                     <259                 NA                0.6371826          NA          NA
12 months   kiGH5241-JiVitA-3          BANGLADESH                     [259-273)            NA                0.5273390          NA          NA
12 months   kiGH5241-JiVitA-3          BANGLADESH                     >=287                NA                0.3434926          NA          NA
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)            NA                0.8378378   0.7783687   0.8973070
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          <259                 NA                0.8510638   0.7491343   0.9529933
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          [259-273)            NA                0.8000000   0.7093439   0.8906561
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=287                NA                0.8641975   0.7894864   0.9389087
18 months   ki1000108-IRC              INDIA                          [273-287)            NA                0.5030303   0.4266420   0.5794186
18 months   ki1000108-IRC              INDIA                          <259                 NA                0.7500000   0.6156376   0.8843624
18 months   ki1000108-IRC              INDIA                          [259-273)            NA                0.5934066   0.4923551   0.6944581
18 months   ki1000108-IRC              INDIA                          >=287                NA                0.5591398   0.4581038   0.6601758
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     [273-287)            NA                0.3133047   0.2537056   0.3729038
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     <259                 NA                0.6554054   0.5787875   0.7320233
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     [259-273)            NA                0.4507937   0.3958075   0.5057798
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=287                NA                0.2631579   0.0650186   0.4612972
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [273-287)            NA                0.4182510   0.3760813   0.4604206
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <259                 NA                0.4895833   0.4188487   0.5603180
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [259-273)            NA                0.4335664   0.3761116   0.4910212
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=287                NA                0.3168044   0.2689280   0.3646808
18 months   ki1101329-Keneba           GAMBIA                         [273-287)            NA                0.4704861   0.4297109   0.5112613
18 months   ki1101329-Keneba           GAMBIA                         <259                 NA                0.6824324   0.6074063   0.7574586
18 months   ki1101329-Keneba           GAMBIA                         [259-273)            NA                0.4896552   0.4489585   0.5303518
18 months   ki1101329-Keneba           GAMBIA                         >=287                NA                0.4674556   0.3922067   0.5427045
18 months   ki1135781-COHORTS          GUATEMALA                      [273-287)            NA                0.8119658   0.7410483   0.8828833
18 months   ki1135781-COHORTS          GUATEMALA                      <259                 NA                0.9000000   0.8167096   0.9832904
18 months   ki1135781-COHORTS          GUATEMALA                      [259-273)            NA                0.8541667   0.7541579   0.9541754
18 months   ki1135781-COHORTS          GUATEMALA                      >=287                NA                0.7802198   0.6949999   0.8654397
18 months   ki1135781-COHORTS          PHILIPPINES                    [273-287)            NA                0.5683594   0.5380167   0.5987021
18 months   ki1135781-COHORTS          PHILIPPINES                    <259                 NA                0.7095116   0.6643883   0.7546348
18 months   ki1135781-COHORTS          PHILIPPINES                    [259-273)            NA                0.6634214   0.6288749   0.6979680
18 months   ki1135781-COHORTS          PHILIPPINES                    >=287                NA                0.5753138   0.5309934   0.6196342
18 months   kiGH5241-JiVitA-3          BANGLADESH                     [273-287)            NA                0.5054208          NA          NA
18 months   kiGH5241-JiVitA-3          BANGLADESH                     <259                 NA                0.7037718          NA          NA
18 months   kiGH5241-JiVitA-3          BANGLADESH                     [259-273)            NA                0.6045549          NA          NA
18 months   kiGH5241-JiVitA-3          BANGLADESH                     >=287                NA                0.4518868          NA          NA
24 months   ki1000108-IRC              INDIA                          [273-287)            NA                0.6000000   0.5251539   0.6748461
24 months   ki1000108-IRC              INDIA                          <259                 NA                0.8250000   0.7070979   0.9429021
24 months   ki1000108-IRC              INDIA                          [259-273)            NA                0.6521739   0.5547256   0.7496223
24 months   ki1000108-IRC              INDIA                          >=287                NA                0.6451613   0.5477938   0.7425287
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [273-287)            NA                0.3711340   0.3030987   0.4391693
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <259                 NA                0.6879433   0.6114057   0.7644808
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [259-273)            NA                0.5035461   0.4451444   0.5619478
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=287                NA                0.4117647   0.1776296   0.6458998
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [273-287)            NA                0.4560440   0.4048496   0.5072384
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <259                 NA                0.4766355   0.3819483   0.5713227
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [259-273)            NA                0.4619289   0.3922723   0.5315855
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=287                NA                0.3529412   0.2921945   0.4136878
24 months   ki1101329-Keneba           GAMBIA                         [273-287)            NA                0.5561497   0.5150224   0.5972771
24 months   ki1101329-Keneba           GAMBIA                         <259                 NA                0.7361111   0.6641000   0.8081222
24 months   ki1101329-Keneba           GAMBIA                         [259-273)            NA                0.5540070   0.5133286   0.5946854
24 months   ki1101329-Keneba           GAMBIA                         >=287                NA                0.5568862   0.4815193   0.6322532
24 months   ki1135781-COHORTS          PHILIPPINES                    [273-287)            NA                0.7250996   0.6974777   0.7527215
24 months   ki1135781-COHORTS          PHILIPPINES                    <259                 NA                0.7931034   0.7522052   0.8340017
24 months   ki1135781-COHORTS          PHILIPPINES                    [259-273)            NA                0.7772989   0.7463828   0.8082149
24 months   ki1135781-COHORTS          PHILIPPINES                    >=287                NA                0.7408207   0.7008999   0.7807416


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.3529412   0.3020701   0.4038123
3 months    ki1000108-IRC              INDIA                          NA                   NA                0.3230769   0.2766044   0.3695494
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1030653   0.0905023   0.1156283
3 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.2150193   0.1946126   0.2354259
3 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.3051771   0.2580012   0.3523531
3 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.1582840   0.1388205   0.1777476
3 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1442244   0.1317133   0.1567356
3 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4162928          NA          NA
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.5101449   0.4573187   0.5629711
6 months    ki1000108-IRC              INDIA                          NA                   NA                0.4226804   0.3734644   0.4718965
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1985714   0.1815054   0.2156375
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.2959184   0.2725766   0.3192602
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2500898   0.2339974   0.2661823
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4396636          NA          NA
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.6885714   0.6399879   0.7371550
12 months   ki1000108-IRC              INDIA                          NA                   NA                0.5051546   0.4553420   0.5549673
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3155650   0.2945293   0.3366008
12 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.3990796   0.3744609   0.4236982
12 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7043011   0.6578640   0.7507382
12 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.3757530   0.3496950   0.4018111
12 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.4381613   0.4195834   0.4567391
12 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4691693          NA          NA
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.8376068   0.7989685   0.8762451
18 months   ki1000108-IRC              INDIA                          NA                   NA                0.5629820   0.5136272   0.6123368
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.4433566   0.4069178   0.4797954
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4045355   0.3785082   0.4305628
18 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.4989817   0.4734392   0.5245242
18 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.8235294   0.7807461   0.8663127
18 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6168582   0.5982037   0.6355127
18 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.5600940          NA          NA
24 months   ki1000108-IRC              INDIA                          NA                   NA                0.6461538   0.5986369   0.6936708
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.5015773   0.4626267   0.5405279
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4326711   0.4003921   0.4649501
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.5733057   0.5478042   0.5988072
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.7523622   0.7355727   0.7691517


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          <259                 [273-287)         1.6978261   1.1372941   2.5346245
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          [259-273)            [273-287)         1.3912162   0.9445081   2.0491963
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=287                [273-287)         1.3198718   0.8930018   1.9507930
3 months    ki1000108-IRC              INDIA                          [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
3 months    ki1000108-IRC              INDIA                          <259                 [273-287)         1.7553191   1.1842339   2.6018046
3 months    ki1000108-IRC              INDIA                          [259-273)            [273-287)         1.1447734   0.7821287   1.6755632
3 months    ki1000108-IRC              INDIA                          >=287                [273-287)         1.0947152   0.7431951   1.6124990
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <259                 [273-287)         1.9963866   1.4675384   2.7158128
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [259-273)            [273-287)         1.1673140   0.8381734   1.6257040
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=287                [273-287)         0.7350333   0.5094775   1.0604470
3 months    ki1101329-Keneba           GAMBIA                         [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
3 months    ki1101329-Keneba           GAMBIA                         <259                 [273-287)         2.4444044   1.8912976   3.1592665
3 months    ki1101329-Keneba           GAMBIA                         [259-273)            [273-287)         1.4158416   1.1264190   1.7796285
3 months    ki1101329-Keneba           GAMBIA                         >=287                [273-287)         0.8162443   0.5403307   1.2330500
3 months    ki1135781-COHORTS          GUATEMALA                      [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
3 months    ki1135781-COHORTS          GUATEMALA                      <259                 [273-287)         1.5507311   1.0298665   2.3350278
3 months    ki1135781-COHORTS          GUATEMALA                      [259-273)            [273-287)         1.1981982   0.7535197   1.9052972
3 months    ki1135781-COHORTS          GUATEMALA                      >=287                [273-287)         1.1065783   0.7376203   1.6600892
3 months    ki1135781-COHORTS          INDIA                          [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
3 months    ki1135781-COHORTS          INDIA                          <259                 [273-287)         1.9000585   1.3665985   2.6417579
3 months    ki1135781-COHORTS          INDIA                          [259-273)            [273-287)         1.3376043   0.9592840   1.8651258
3 months    ki1135781-COHORTS          INDIA                          >=287                [273-287)         1.1029412   0.7770959   1.5654172
3 months    ki1135781-COHORTS          PHILIPPINES                    [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
3 months    ki1135781-COHORTS          PHILIPPINES                    <259                 [273-287)         2.6748421   2.1260322   3.3653207
3 months    ki1135781-COHORTS          PHILIPPINES                    [259-273)            [273-287)         1.9204668   1.5385845   2.3971336
3 months    ki1135781-COHORTS          PHILIPPINES                    >=287                [273-287)         0.7087087   0.5003531   1.0038272
3 months    kiGH5241-JiVitA-3          BANGLADESH                     [273-287)            [273-287)         1.0000000          NA          NA
3 months    kiGH5241-JiVitA-3          BANGLADESH                     <259                 [273-287)         1.9065191          NA          NA
3 months    kiGH5241-JiVitA-3          BANGLADESH                     [259-273)            [273-287)         1.4578668          NA          NA
3 months    kiGH5241-JiVitA-3          BANGLADESH                     >=287                [273-287)         0.8675699          NA          NA
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <259                 [273-287)         1.2869301   0.9706905   1.7061968
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [259-273)            [273-287)         1.0428571   0.7849505   1.3855028
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=287                [273-287)         1.0695971   0.8125134   1.4080234
6 months    ki1000108-IRC              INDIA                          [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
6 months    ki1000108-IRC              INDIA                          <259                 [273-287)         1.4824219   1.0672006   2.0591954
6 months    ki1000108-IRC              INDIA                          [259-273)            [273-287)         1.1209239   0.8286678   1.5162535
6 months    ki1000108-IRC              INDIA                          >=287                [273-287)         1.0482486   0.7657549   1.4349568
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <259                 [273-287)         1.4369811   1.1429640   1.8066316
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [259-273)            [273-287)         1.1030479   0.8796370   1.3832009
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=287                [273-287)         0.7480331   0.5843061   0.9576377
6 months    ki1101329-Keneba           GAMBIA                         [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
6 months    ki1101329-Keneba           GAMBIA                         <259                 [273-287)         1.9615989   1.5755089   2.4423032
6 months    ki1101329-Keneba           GAMBIA                         [259-273)            [273-287)         1.2645117   1.0476970   1.5261948
6 months    ki1101329-Keneba           GAMBIA                         >=287                [273-287)         0.9728638   0.7181910   1.3178443
6 months    ki1135781-COHORTS          PHILIPPINES                    [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    <259                 [273-287)         1.9199977   1.6160179   2.2811575
6 months    ki1135781-COHORTS          PHILIPPINES                    [259-273)            [273-287)         1.6138553   1.3778822   1.8902405
6 months    ki1135781-COHORTS          PHILIPPINES                    >=287                [273-287)         0.8045471   0.6367453   1.0165698
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [273-287)            [273-287)         1.0000000          NA          NA
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <259                 [273-287)         1.7051751          NA          NA
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [259-273)            [273-287)         1.3691255          NA          NA
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=287                [273-287)         0.8681690          NA          NA
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          <259                 [273-287)         1.0700269   0.8772172   1.3052155
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          [259-273)            [273-287)         0.9196117   0.7524148   1.1239619
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=287                [273-287)         0.9878641   0.8231743   1.1855028
12 months   ki1000108-IRC              INDIA                          [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
12 months   ki1000108-IRC              INDIA                          <259                 [273-287)         1.4850000   1.1305535   1.9505711
12 months   ki1000108-IRC              INDIA                          [259-273)            [273-287)         1.2087912   0.9410034   1.5527852
12 months   ki1000108-IRC              INDIA                          >=287                [273-287)         1.0521739   0.8020537   1.3802941
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <259                 [273-287)         1.1730754   0.9764431   1.4093048
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [259-273)            [273-287)         1.0578185   0.8907165   1.2562695
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=287                [273-287)         0.7363461   0.6087288   0.8907177
12 months   ki1101329-Keneba           GAMBIA                         [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
12 months   ki1101329-Keneba           GAMBIA                         <259                 [273-287)         1.6874541   1.4253780   1.9977167
12 months   ki1101329-Keneba           GAMBIA                         [259-273)            [273-287)         1.1456573   0.9908244   1.3246855
12 months   ki1101329-Keneba           GAMBIA                         >=287                [273-287)         0.9985914   0.7957265   1.2531752
12 months   ki1135781-COHORTS          GUATEMALA                      [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
12 months   ki1135781-COHORTS          GUATEMALA                      <259                 [273-287)         1.0466531   0.8699822   1.2592014
12 months   ki1135781-COHORTS          GUATEMALA                      [259-273)            [273-287)         1.0702087   0.8978393   1.2756700
12 months   ki1135781-COHORTS          GUATEMALA                      >=287                [273-287)         0.9150327   0.7686803   1.0892497
12 months   ki1135781-COHORTS          INDIA                          [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
12 months   ki1135781-COHORTS          INDIA                          <259                 [273-287)         1.4028394   1.1665222   1.6870304
12 months   ki1135781-COHORTS          INDIA                          [259-273)            [273-287)         1.0476182   0.8666405   1.2663889
12 months   ki1135781-COHORTS          INDIA                          >=287                [273-287)         1.0262357   0.8488230   1.2407293
12 months   ki1135781-COHORTS          PHILIPPINES                    [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
12 months   ki1135781-COHORTS          PHILIPPINES                    <259                 [273-287)         1.5234704   1.3563491   1.7111834
12 months   ki1135781-COHORTS          PHILIPPINES                    [259-273)            [273-287)         1.3815421   1.2439255   1.5343834
12 months   ki1135781-COHORTS          PHILIPPINES                    >=287                [273-287)         1.0321786   0.9006641   1.1828968
12 months   kiGH5241-JiVitA-3          BANGLADESH                     [273-287)            [273-287)         1.0000000          NA          NA
12 months   kiGH5241-JiVitA-3          BANGLADESH                     <259                 [273-287)         1.5885823          NA          NA
12 months   kiGH5241-JiVitA-3          BANGLADESH                     [259-273)            [273-287)         1.3147273          NA          NA
12 months   kiGH5241-JiVitA-3          BANGLADESH                     >=287                [273-287)         0.8563734          NA          NA
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          <259                 [273-287)         1.0157859   0.8837708   1.1675209
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          [259-273)            [273-287)         0.9548387   0.8353311   1.0914438
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=287                [273-287)         1.0314616   0.9223045   1.1535377
18 months   ki1000108-IRC              INDIA                          [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
18 months   ki1000108-IRC              INDIA                          <259                 [273-287)         1.4909639   1.1788882   1.8856523
18 months   ki1000108-IRC              INDIA                          [259-273)            [273-287)         1.1796637   0.9390041   1.4820025
18 months   ki1000108-IRC              INDIA                          >=287                [273-287)         1.1115429   0.8778445   1.4074563
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     <259                 [273-287)         2.0919104   1.6733060   2.6152355
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     [259-273)            [273-287)         1.4388345   1.1478133   1.8036425
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=287                [273-287)         0.8399423   0.3863506   1.8260698
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <259                 [273-287)         1.1705492   0.9814661   1.3960600
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [259-273)            [273-287)         1.0366179   0.8776141   1.2244296
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=287                [273-287)         0.7574505   0.6316208   0.9083477
18 months   ki1101329-Keneba           GAMBIA                         [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
18 months   ki1101329-Keneba           GAMBIA                         <259                 [273-287)         1.4504837   1.2610004   1.6684395
18 months   ki1101329-Keneba           GAMBIA                         [259-273)            [273-287)         1.0407431   0.9229841   1.1735263
18 months   ki1101329-Keneba           GAMBIA                         >=287                [273-287)         0.9935588   0.8275508   1.1928683
18 months   ki1135781-COHORTS          GUATEMALA                      [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
18 months   ki1135781-COHORTS          GUATEMALA                      <259                 [273-287)         1.1084211   0.9759783   1.2588366
18 months   ki1135781-COHORTS          GUATEMALA                      [259-273)            [273-287)         1.0519737   0.9090062   1.2174270
18 months   ki1135781-COHORTS          GUATEMALA                      >=287                [273-287)         0.9609023   0.8354920   1.1051370
18 months   ki1135781-COHORTS          PHILIPPINES                    [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
18 months   ki1135781-COHORTS          PHILIPPINES                    <259                 [273-287)         1.2483503   1.1488806   1.3564319
18 months   ki1135781-COHORTS          PHILIPPINES                    [259-273)            [273-287)         1.1672569   1.0833731   1.2576358
18 months   ki1135781-COHORTS          PHILIPPINES                    >=287                [273-287)         1.0122360   0.9216723   1.1116985
18 months   kiGH5241-JiVitA-3          BANGLADESH                     [273-287)            [273-287)         1.0000000          NA          NA
18 months   kiGH5241-JiVitA-3          BANGLADESH                     <259                 [273-287)         1.3924475          NA          NA
18 months   kiGH5241-JiVitA-3          BANGLADESH                     [259-273)            [273-287)         1.1961418          NA          NA
18 months   kiGH5241-JiVitA-3          BANGLADESH                     >=287                [273-287)         0.8940804          NA          NA
24 months   ki1000108-IRC              INDIA                          [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
24 months   ki1000108-IRC              INDIA                          <259                 [273-287)         1.3750000   1.1374142   1.6622133
24 months   ki1000108-IRC              INDIA                          [259-273)            [273-287)         1.0869565   0.8947011   1.3205242
24 months   ki1000108-IRC              INDIA                          >=287                [273-287)         1.0752688   0.8840609   1.3078319
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <259                 [273-287)         1.8536249   1.4958678   2.2969445
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [259-273)            [273-287)         1.3567770   1.0921915   1.6854589
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=287                [273-287)         1.1094771   0.6104586   2.0164175
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <259                 [273-287)         1.0451526   0.8319207   1.3130384
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [259-273)            [273-287)         1.0129044   0.8393144   1.2223969
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=287                [273-287)         0.7739192   0.6301633   0.9504694
24 months   ki1101329-Keneba           GAMBIA                         [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
24 months   ki1101329-Keneba           GAMBIA                         <259                 [273-287)         1.3235844   1.1708283   1.4962704
24 months   ki1101329-Keneba           GAMBIA                         [259-273)            [273-287)         0.9961471   0.8975634   1.1055588
24 months   ki1101329-Keneba           GAMBIA                         >=287                [273-287)         1.0013243   0.8582164   1.1682955
24 months   ki1135781-COHORTS          PHILIPPINES                    [273-287)            [273-287)         1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    <259                 [273-287)         1.0937855   1.0258615   1.1662069
24 months   ki1135781-COHORTS          PHILIPPINES                    [259-273)            [273-287)         1.0719891   1.0145471   1.1326833
24 months   ki1135781-COHORTS          PHILIPPINES                    >=287                [273-287)         1.0216813   0.9564348   1.0913790


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)            NA                 0.0712510    0.0121570   0.1303450
3 months    ki1000108-IRC              INDIA                          [273-287)            NA                 0.0382284   -0.0155415   0.0919984
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [273-287)            NA                 0.0103051   -0.0050680   0.0256783
3 months    ki1101329-Keneba           GAMBIA                         [273-287)            NA                 0.0489008    0.0242295   0.0735722
3 months    ki1135781-COHORTS          GUATEMALA                      [273-287)            NA                 0.0408914   -0.0182168   0.0999996
3 months    ki1135781-COHORTS          INDIA                          [273-287)            NA                 0.0299821    0.0064442   0.0535201
3 months    ki1135781-COHORTS          PHILIPPINES                    [273-287)            NA                 0.0450719    0.0302109   0.0599329
3 months    kiGH5241-JiVitA-3          BANGLADESH                     [273-287)            NA                 0.0938343           NA          NA
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)            NA                 0.0306929   -0.0309703   0.0923560
6 months    ki1000108-IRC              INDIA                          [273-287)            NA                 0.0348016   -0.0222130   0.0918162
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [273-287)            NA                 0.0037185   -0.0176338   0.0250708
6 months    ki1101329-Keneba           GAMBIA                         [273-287)            NA                 0.0494645    0.0204933   0.0784356
6 months    ki1135781-COHORTS          PHILIPPINES                    [273-287)            NA                 0.0531892    0.0337932   0.0725852
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [273-287)            NA                 0.0782991           NA          NA
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)            NA                -0.0073745   -0.0640330   0.0492840
12 months   ki1000108-IRC              INDIA                          [273-287)            NA                 0.0506092   -0.0072389   0.1084572
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [273-287)            NA                -0.0099197   -0.0365962   0.0167567
12 months   ki1101329-Keneba           GAMBIA                         [273-287)            NA                 0.0442941    0.0142763   0.0743119
12 months   ki1135781-COHORTS          GUATEMALA                      [273-287)            NA                -0.0040323   -0.0623783   0.0543138
12 months   ki1135781-COHORTS          INDIA                          [273-287)            NA                 0.0266069   -0.0053469   0.0585607
12 months   ki1135781-COHORTS          PHILIPPINES                    [273-287)            NA                 0.0695447    0.0466760   0.0924135
12 months   kiGH5241-JiVitA-3          BANGLADESH                     [273-287)            NA                 0.0680679           NA          NA
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)            NA                -0.0002310   -0.0454757   0.0450137
18 months   ki1000108-IRC              INDIA                          [273-287)            NA                 0.0599517    0.0023243   0.1175791
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     [273-287)            NA                 0.1300519    0.0794081   0.1806957
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [273-287)            NA                -0.0137155   -0.0466881   0.0192571
18 months   ki1101329-Keneba           GAMBIA                         [273-287)            NA                 0.0284956   -0.0033594   0.0603506
18 months   ki1135781-COHORTS          GUATEMALA                      [273-287)            NA                 0.0115636   -0.0433342   0.0664614
18 months   ki1135781-COHORTS          PHILIPPINES                    [273-287)            NA                 0.0484989    0.0251272   0.0718706
18 months   kiGH5241-JiVitA-3          BANGLADESH                     [273-287)            NA                 0.0546732           NA          NA
24 months   ki1000108-IRC              INDIA                          [273-287)            NA                 0.0461538   -0.0097004   0.1020081
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [273-287)            NA                 0.1304433    0.0728830   0.1880035
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [273-287)            NA                -0.0233729   -0.0628298   0.0160841
24 months   ki1101329-Keneba           GAMBIA                         [273-287)            NA                 0.0171559   -0.0149272   0.0492390
24 months   ki1135781-COHORTS          PHILIPPINES                    [273-287)            NA                 0.0272626    0.0062461   0.0482791


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)            NA                 0.2018779    0.0159908   0.3526495
3 months    ki1000108-IRC              INDIA                          [273-287)            NA                 0.1183261   -0.0646834   0.2698780
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [273-287)            NA                 0.0999863   -0.0617783   0.2371057
3 months    ki1101329-Keneba           GAMBIA                         [273-287)            NA                 0.2274254    0.1050911   0.3330365
3 months    ki1135781-COHORTS          GUATEMALA                      [273-287)            NA                 0.1339923   -0.0827290   0.3073343
3 months    ki1135781-COHORTS          INDIA                          [273-287)            NA                 0.1894199    0.0277271   0.3242225
3 months    ki1135781-COHORTS          PHILIPPINES                    [273-287)            NA                 0.3125121    0.2045687   0.4058072
3 months    kiGH5241-JiVitA-3          BANGLADESH                     [273-287)            NA                 0.2254045           NA          NA
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)            NA                 0.0601650   -0.0690006   0.1737238
6 months    ki1000108-IRC              INDIA                          [273-287)            NA                 0.0823356   -0.0631060   0.2078795
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [273-287)            NA                 0.0187262   -0.0949095   0.1205682
6 months    ki1101329-Keneba           GAMBIA                         [273-287)            NA                 0.1671558    0.0635665   0.2592859
6 months    ki1135781-COHORTS          PHILIPPINES                    [273-287)            NA                 0.2126804    0.1318107   0.2860172
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [273-287)            NA                 0.1780886           NA          NA
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)            NA                -0.0107099   -0.0964493   0.0683249
12 months   ki1000108-IRC              INDIA                          [273-287)            NA                 0.1001855   -0.0223407   0.2080272
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [273-287)            NA                -0.0314348   -0.1195299   0.0497281
12 months   ki1101329-Keneba           GAMBIA                         [273-287)            NA                 0.1109906    0.0324380   0.1831658
12 months   ki1135781-COHORTS          GUATEMALA                      [273-287)            NA                -0.0057252   -0.0920787   0.0738001
12 months   ki1135781-COHORTS          INDIA                          [273-287)            NA                 0.0708096   -0.0182612   0.1520889
12 months   ki1135781-COHORTS          PHILIPPINES                    [273-287)            NA                 0.1587195    0.1047300   0.2094531
12 months   kiGH5241-JiVitA-3          BANGLADESH                     [273-287)            NA                 0.1450817           NA          NA
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          [273-287)            NA                -0.0002758   -0.0557775   0.0523083
18 months   ki1000108-IRC              INDIA                          [273-287)            NA                 0.1064896   -0.0025854   0.2036978
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     [273-287)            NA                 0.2933348    0.1689809   0.3990803
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [273-287)            NA                -0.0339042   -0.1187233   0.0444840
18 months   ki1101329-Keneba           GAMBIA                         [273-287)            NA                 0.0571074   -0.0090063   0.1188891
18 months   ki1135781-COHORTS          GUATEMALA                      [273-287)            NA                 0.0140415   -0.0549603   0.0785301
18 months   ki1135781-COHORTS          PHILIPPINES                    [273-287)            NA                 0.0786224    0.0397917   0.1158827
18 months   kiGH5241-JiVitA-3          BANGLADESH                     [273-287)            NA                 0.0976144           NA          NA
24 months   ki1000108-IRC              INDIA                          [273-287)            NA                 0.0714286   -0.0195818   0.1543151
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [273-287)            NA                 0.2600661    0.1349180   0.3671096
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [273-287)            NA                -0.0540200   -0.1493341   0.0333898
24 months   ki1101329-Keneba           GAMBIA                         [273-287)            NA                 0.0299246   -0.0277096   0.0843267
24 months   ki1135781-COHORTS          PHILIPPINES                    [273-287)            NA                 0.0362360    0.0078348   0.0638242
