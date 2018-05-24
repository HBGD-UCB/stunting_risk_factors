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
      uri: 'https://raw.githubusercontent.com/HBGD-UCB/longbowRiskFactors/master/inst/sample_data/birthwt_data.csv'
  nodes:
    value:
      strata: ['study_id']
      W: ['apgar1', 'apgar5', 'gagebrth', 'mage', 'meducyrs', 'sexn']
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

**Intervention Variable:** mwtkg

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid


The following strata were considered:

* agecat: 12 months, studyid: ki1000304b-SAS-CompFeed
* agecat: 12 months, studyid: ki1017093-NIH-Birth
* agecat: 12 months, studyid: ki1017093c-NIH-Crypto
* agecat: 12 months, studyid: ki1066203-TanzaniaChild2
* agecat: 12 months, studyid: ki1119695-PROBIT
* agecat: 12 months, studyid: ki1126311-ZVITAMBO
* agecat: 12 months, studyid: ki1148112-LCNI-5
* agecat: 12 months, studyid: kiGH5241-JiVitA-3
* agecat: 18 months, studyid: ki1000304b-SAS-CompFeed
* agecat: 18 months, studyid: ki1017093-NIH-Birth
* agecat: 18 months, studyid: ki1017093c-NIH-Crypto
* agecat: 18 months, studyid: ki1066203-TanzaniaChild2
* agecat: 18 months, studyid: ki1119695-PROBIT
* agecat: 18 months, studyid: ki1126311-ZVITAMBO
* agecat: 18 months, studyid: ki1148112-LCNI-5
* agecat: 18 months, studyid: kiGH5241-JiVitA-3
* agecat: 24 months, studyid: ki1000304b-SAS-CompFeed
* agecat: 24 months, studyid: ki1017093-NIH-Birth
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2
* agecat: 24 months, studyid: ki1119695-PROBIT
* agecat: 24 months, studyid: ki1126311-ZVITAMBO
* agecat: 24 months, studyid: ki1148112-LCNI-5
* agecat: 24 months, studyid: kiGH5241-JiVitA-3
* agecat: 3 months, studyid: ki1000304b-SAS-CompFeed
* agecat: 3 months, studyid: ki1017093-NIH-Birth
* agecat: 3 months, studyid: ki1017093c-NIH-Crypto
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2
* agecat: 3 months, studyid: ki1119695-PROBIT
* agecat: 3 months, studyid: ki1126311-ZVITAMBO
* agecat: 3 months, studyid: kiGH5241-JiVitA-3
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed
* agecat: 6 months, studyid: ki1017093-NIH-Birth
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2
* agecat: 6 months, studyid: ki1119695-PROBIT
* agecat: 6 months, studyid: ki1126311-ZVITAMBO
* agecat: 6 months, studyid: ki1148112-LCNI-5
* agecat: 6 months, studyid: kiGH5241-JiVitA-3

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 12 months, studyid: ki1066203-TanzaniaChild2
* agecat: 18 months, studyid: ki1066203-TanzaniaChild2
* agecat: 18 months, studyid: ki1126311-ZVITAMBO
* agecat: 18 months, studyid: ki1148112-LCNI-5
* agecat: 24 months, studyid: ki1000304b-SAS-CompFeed
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2
* agecat: 24 months, studyid: ki1119695-PROBIT
* agecat: 24 months, studyid: ki1126311-ZVITAMBO
* agecat: 24 months, studyid: ki1148112-LCNI-5
* agecat: 24 months, studyid: kiGH5241-JiVitA-3
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2
* agecat: 3 months, studyid: ki1119695-PROBIT
* NA
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2
* agecat: 6 months, studyid: ki1148112-LCNI-5

## Methods Detail

**todo**




# Results Detail

## Results Plots
![](/tmp/bab02692-2260-4764-a972-5c6a30da39e6/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/bab02692-2260-4764-a972-5c6a30da39e6/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/bab02692-2260-4764-a972-5c6a30da39e6/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/bab02692-2260-4764-a972-5c6a30da39e6/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Data Summary

agecat      studyid                    A              n     nA   nAY0   nAY1
----------  -------------------------  --------  ------  -----  -----  -----
12 months   ki1000304b-SAS-CompFeed    <=42.2       887    203     53    150
12 months   ki1000304b-SAS-CompFeed    >60          887     44     29     15
12 months   ki1000304b-SAS-CompFeed    42.2-49      887    379    150    229
12 months   ki1000304b-SAS-CompFeed    49-60        887    261    137    124
12 months   ki1017093-NIH-Birth        <=42.2       541    149     48    101
12 months   ki1017093-NIH-Birth        >60          541     50     33     17
12 months   ki1017093-NIH-Birth        42.2-49      541    180     92     88
12 months   ki1017093-NIH-Birth        49-60        541    162     92     70
12 months   ki1017093c-NIH-Crypto      <=42.2       729    101     47     54
12 months   ki1017093c-NIH-Crypto      >60          729    137    102     35
12 months   ki1017093c-NIH-Crypto      42.2-49      729    221    129     92
12 months   ki1017093c-NIH-Crypto      49-60        729    270    174     96
12 months   ki1066203-TanzaniaChild2   <=42.2       488      5      2      3
12 months   ki1066203-TanzaniaChild2   >60          488    227    167     60
12 months   ki1066203-TanzaniaChild2   42.2-49      488     43     26     17
12 months   ki1066203-TanzaniaChild2   49-60        488    213    135     78
12 months   ki1119695-PROBIT           <=42.2      6687     14      9      5
12 months   ki1119695-PROBIT           >60         6687   4093   3597    496
12 months   ki1119695-PROBIT           42.2-49     6687    262    200     62
12 months   ki1119695-PROBIT           49-60       6687   2318   1938    380
12 months   ki1126311-ZVITAMBO         <=42.2      2335     19      5     14
12 months   ki1126311-ZVITAMBO         >60         2335    990    692    298
12 months   ki1126311-ZVITAMBO         42.2-49     2335    253    109    144
12 months   ki1126311-ZVITAMBO         49-60       2335   1073    631    442
12 months   ki1148112-LCNI-5           <=42.2       402     32      6     26
12 months   ki1148112-LCNI-5           >60          402     34     25      9
12 months   ki1148112-LCNI-5           42.2-49      402    144     61     83
12 months   ki1148112-LCNI-5           49-60        402    192    116     76
12 months   kiGH5241-JiVitA-3          <=42.2      8367   3796   1708   2088
12 months   kiGH5241-JiVitA-3          >60         8367    174    131     43
12 months   kiGH5241-JiVitA-3          42.2-49     8367   3144   1864   1280
12 months   kiGH5241-JiVitA-3          49-60       8367   1253    885    368
18 months   ki1000304b-SAS-CompFeed    <=42.2       856    191     27    164
18 months   ki1000304b-SAS-CompFeed    >60          856     42     23     19
18 months   ki1000304b-SAS-CompFeed    42.2-49      856    366     87    279
18 months   ki1000304b-SAS-CompFeed    49-60        856    257    109    148
18 months   ki1017093-NIH-Birth        <=42.2       497    137     24    113
18 months   ki1017093-NIH-Birth        >60          497     44     26     18
18 months   ki1017093-NIH-Birth        42.2-49      497    164     58    106
18 months   ki1017093-NIH-Birth        49-60        497    152     66     86
18 months   ki1017093c-NIH-Crypto      <=42.2       715     99     41     58
18 months   ki1017093c-NIH-Crypto      >60          715    133     94     39
18 months   ki1017093c-NIH-Crypto      42.2-49      715    218    110    108
18 months   ki1017093c-NIH-Crypto      49-60        715    265    153    112
18 months   ki1066203-TanzaniaChild2   <=42.2       351      4      1      3
18 months   ki1066203-TanzaniaChild2   >60          351    162    107     55
18 months   ki1066203-TanzaniaChild2   42.2-49      351     34     14     20
18 months   ki1066203-TanzaniaChild2   49-60        351    151     77     74
18 months   ki1119695-PROBIT           <=42.2      6367     14      9      5
18 months   ki1119695-PROBIT           >60         6367   3910   3386    524
18 months   ki1119695-PROBIT           42.2-49     6367    244    186     58
18 months   ki1119695-PROBIT           49-60       6367   2199   1809    390
18 months   ki1126311-ZVITAMBO         <=42.2      1708     13      3     10
18 months   ki1126311-ZVITAMBO         >60         1708    705    425    280
18 months   ki1126311-ZVITAMBO         42.2-49     1708    204     72    132
18 months   ki1126311-ZVITAMBO         49-60       1708    786    373    413
18 months   ki1148112-LCNI-5           <=42.2       327     25      4     21
18 months   ki1148112-LCNI-5           >60          327     30     19     11
18 months   ki1148112-LCNI-5           42.2-49      327    112     42     70
18 months   ki1148112-LCNI-5           49-60        327    160     76     84
18 months   kiGH5241-JiVitA-3          <=42.2      7325   3316   1172   2144
18 months   kiGH5241-JiVitA-3          >60         7325    146    104     42
18 months   kiGH5241-JiVitA-3          42.2-49     7325   2769   1393   1376
18 months   kiGH5241-JiVitA-3          49-60       7325   1094    673    421
24 months   ki1000304b-SAS-CompFeed    <=42.2        79     21      1     20
24 months   ki1000304b-SAS-CompFeed    >60           79      3      3      0
24 months   ki1000304b-SAS-CompFeed    42.2-49       79     36      9     27
24 months   ki1000304b-SAS-CompFeed    49-60         79     19     11      8
24 months   ki1017093-NIH-Birth        <=42.2       470    128      8    120
24 months   ki1017093-NIH-Birth        >60          470     41     20     21
24 months   ki1017093-NIH-Birth        42.2-49      470    157     38    119
24 months   ki1017093-NIH-Birth        49-60        470    144     49     95
24 months   ki1017093c-NIH-Crypto      <=42.2       634     92     33     59
24 months   ki1017093c-NIH-Crypto      >60          634    120     77     43
24 months   ki1017093c-NIH-Crypto      42.2-49      634    195     86    109
24 months   ki1017093c-NIH-Crypto      49-60        634    227    120    107
24 months   ki1066203-TanzaniaChild2   <=42.2       249      3      0      3
24 months   ki1066203-TanzaniaChild2   >60          249    121     74     47
24 months   ki1066203-TanzaniaChild2   42.2-49      249     26     10     16
24 months   ki1066203-TanzaniaChild2   49-60        249     99     46     53
24 months   ki1119695-PROBIT           <=42.2      2066      5      4      1
24 months   ki1119695-PROBIT           >60         2066   1215    989    226
24 months   ki1119695-PROBIT           42.2-49     2066     89     59     30
24 months   ki1119695-PROBIT           49-60       2066    757    589    168
24 months   ki1126311-ZVITAMBO         <=42.2       434      4      0      4
24 months   ki1126311-ZVITAMBO         >60          434    149     54     95
24 months   ki1126311-ZVITAMBO         42.2-49      434     71     13     58
24 months   ki1126311-ZVITAMBO         49-60        434    210     48    162
24 months   ki1148112-LCNI-5           <=42.2       354     28      4     24
24 months   ki1148112-LCNI-5           >60          354     32     16     16
24 months   ki1148112-LCNI-5           42.2-49      354    123     31     92
24 months   ki1148112-LCNI-5           49-60        354    171     71    100
24 months   kiGH5241-JiVitA-3          <=42.2         3      3      2      1
24 months   kiGH5241-JiVitA-3          >60            3      0      0      0
24 months   kiGH5241-JiVitA-3          42.2-49        3      0      0      0
24 months   kiGH5241-JiVitA-3          49-60          3      0      0      0
3 months    ki1000304b-SAS-CompFeed    <=42.2       963    227    128     99
3 months    ki1000304b-SAS-CompFeed    >60          963     47     41      6
3 months    ki1000304b-SAS-CompFeed    42.2-49      963    401    263    138
3 months    ki1000304b-SAS-CompFeed    49-60        963    288    217     71
3 months    ki1017093-NIH-Birth        <=42.2       629    172    116     56
3 months    ki1017093-NIH-Birth        >60          629     55     48      7
3 months    ki1017093-NIH-Birth        42.2-49      629    210    170     40
3 months    ki1017093-NIH-Birth        49-60        629    192    155     37
3 months    ki1017093c-NIH-Crypto      <=42.2       755    104     79     25
3 months    ki1017093c-NIH-Crypto      >60          755    140    127     13
3 months    ki1017093c-NIH-Crypto      42.2-49      755    227    185     42
3 months    ki1017093c-NIH-Crypto      49-60        755    284    243     41
3 months    ki1066203-TanzaniaChild2   <=42.2       592      6      4      2
3 months    ki1066203-TanzaniaChild2   >60          592    266    248     18
3 months    ki1066203-TanzaniaChild2   42.2-49      592     59     49     10
3 months    ki1066203-TanzaniaChild2   49-60        592    261    232     29
3 months    ki1119695-PROBIT           <=42.2      6711     14     10      4
3 months    ki1119695-PROBIT           >60         6711   4105   3863    242
3 months    ki1119695-PROBIT           42.2-49     6711    263    234     29
3 months    ki1119695-PROBIT           49-60       6711   2329   2116    213
3 months    ki1126311-ZVITAMBO         <=42.2      2756     27     14     13
3 months    ki1126311-ZVITAMBO         >60         2756   1162    983    179
3 months    ki1126311-ZVITAMBO         42.2-49     2756    302    206     96
3 months    ki1126311-ZVITAMBO         49-60       2756   1265    934    331
3 months    ki1148112-LCNI-5           <=42.2         0      0      0      0
3 months    ki1148112-LCNI-5           >60            0      0      0      0
3 months    ki1148112-LCNI-5           42.2-49        0      0      0      0
3 months    ki1148112-LCNI-5           49-60          0      0      0      0
3 months    kiGH5241-JiVitA-3          <=42.2     13328   6228   3174   3054
3 months    kiGH5241-JiVitA-3          >60        13328    244    198     46
3 months    kiGH5241-JiVitA-3          42.2-49    13328   4968   3174   1794
3 months    kiGH5241-JiVitA-3          49-60      13328   1888   1407    481
6 months    ki1000304b-SAS-CompFeed    <=42.2       804    189     82    107
6 months    ki1000304b-SAS-CompFeed    >60          804     42     33      9
6 months    ki1000304b-SAS-CompFeed    42.2-49      804    342    197    145
6 months    ki1000304b-SAS-CompFeed    49-60        804    231    151     80
6 months    ki1017093-NIH-Birth        <=42.2       551    148     68     80
6 months    ki1017093-NIH-Birth        >60          551     46     33     13
6 months    ki1017093-NIH-Birth        42.2-49      551    187    127     60
6 months    ki1017093-NIH-Birth        49-60        551    170    122     48
6 months    ki1017093c-NIH-Crypto      <=42.2       736    103     60     43
6 months    ki1017093c-NIH-Crypto      >60          736    138    109     29
6 months    ki1017093c-NIH-Crypto      42.2-49      736    222    148     74
6 months    ki1017093c-NIH-Crypto      49-60        736    273    193     80
6 months    ki1066203-TanzaniaChild2   <=42.2       549      5      3      2
6 months    ki1066203-TanzaniaChild2   >60          549    253    216     37
6 months    ki1066203-TanzaniaChild2   42.2-49      549     52     36     16
6 months    ki1066203-TanzaniaChild2   49-60        549    239    186     53
6 months    ki1119695-PROBIT           <=42.2      6517     14      9      5
6 months    ki1119695-PROBIT           >60         6517   3988   3636    352
6 months    ki1119695-PROBIT           42.2-49     6517    256    213     43
6 months    ki1119695-PROBIT           49-60       6517   2259   1992    267
6 months    ki1126311-ZVITAMBO         <=42.2      2123     16      5     11
6 months    ki1126311-ZVITAMBO         >60         2123    894    699    195
6 months    ki1126311-ZVITAMBO         42.2-49     2123    214    110    104
6 months    ki1126311-ZVITAMBO         49-60       2123    999    673    326
6 months    ki1148112-LCNI-5           <=42.2       133     14      6      8
6 months    ki1148112-LCNI-5           >60          133      7      5      2
6 months    ki1148112-LCNI-5           42.2-49      133     49     27     22
6 months    ki1148112-LCNI-5           49-60        133     63     43     20
6 months    kiGH5241-JiVitA-3          <=42.2      9577   4416   2138   2278
6 months    kiGH5241-JiVitA-3          >60         9577    174    142     32
6 months    kiGH5241-JiVitA-3          42.2-49     9577   3583   2211   1372
6 months    kiGH5241-JiVitA-3          49-60       9577   1404   1012    392

## Results Table

### Parameter: TSM


agecat      studyid                   intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  -------------------  ---------------  ----------  ----------  ----------
12 months   ki1000304b-SAS-CompFeed   <=42.2               NA                0.7389163   0.6784612   0.7993713
12 months   ki1000304b-SAS-CompFeed   >60                  NA                0.3409091   0.2007702   0.4810480
12 months   ki1000304b-SAS-CompFeed   42.2-49              NA                0.6042216   0.5549613   0.6534820
12 months   ki1000304b-SAS-CompFeed   49-60                NA                0.4750958   0.4144775   0.5357140
12 months   ki1017093-NIH-Birth       <=42.2               NA                0.6778523   0.6027503   0.7529544
12 months   ki1017093-NIH-Birth       >60                  NA                0.3400000   0.2085755   0.4714245
12 months   ki1017093-NIH-Birth       42.2-49              NA                0.4888889   0.4157958   0.5619820
12 months   ki1017093-NIH-Birth       49-60                NA                0.4320988   0.3557468   0.5084507
12 months   ki1017093c-NIH-Crypto     <=42.2               NA                0.5346535   0.4373093   0.6319976
12 months   ki1017093c-NIH-Crypto     >60                  NA                0.2554745   0.1823943   0.3285546
12 months   ki1017093c-NIH-Crypto     42.2-49              NA                0.4162896   0.3512547   0.4813245
12 months   ki1017093c-NIH-Crypto     49-60                NA                0.3555556   0.2984194   0.4126917
12 months   ki1119695-PROBIT          <=42.2               NA                0.3571429   0.1061307   0.6081550
12 months   ki1119695-PROBIT          >60                  NA                0.1211825   0.1111841   0.1311809
12 months   ki1119695-PROBIT          42.2-49              NA                0.2366412   0.1851730   0.2881095
12 months   ki1119695-PROBIT          49-60                NA                0.1639344   0.1488621   0.1790067
12 months   ki1126311-ZVITAMBO        <=42.2               NA                0.7368421   0.5387990   0.9348852
12 months   ki1126311-ZVITAMBO        >60                  NA                0.3010101   0.2724309   0.3295893
12 months   ki1126311-ZVITAMBO        42.2-49              NA                0.5691700   0.5081384   0.6302016
12 months   ki1126311-ZVITAMBO        49-60                NA                0.4119292   0.3824736   0.4413847
12 months   ki1148112-LCNI-5          <=42.2               NA                0.8125000   0.6770976   0.9479024
12 months   ki1148112-LCNI-5          >60                  NA                0.2647059   0.1162280   0.4131838
12 months   ki1148112-LCNI-5          42.2-49              NA                0.5763889   0.4955819   0.6571959
12 months   ki1148112-LCNI-5          49-60                NA                0.3958333   0.3265749   0.4650918
12 months   kiGH5241-JiVitA-3         <=42.2               NA                0.5500527   0.5342259   0.5658795
12 months   kiGH5241-JiVitA-3         >60                  NA                0.2471264   0.1830320   0.3112208
12 months   kiGH5241-JiVitA-3         42.2-49              NA                0.4071247   0.3899504   0.4242989
12 months   kiGH5241-JiVitA-3         49-60                NA                0.2936951   0.2684753   0.3189150
18 months   ki1000304b-SAS-CompFeed   <=42.2               NA                0.8586387   0.8092013   0.9080761
18 months   ki1000304b-SAS-CompFeed   >60                  NA                0.4523810   0.3017658   0.6029961
18 months   ki1000304b-SAS-CompFeed   42.2-49              NA                0.7622951   0.7186594   0.8059308
18 months   ki1000304b-SAS-CompFeed   49-60                NA                0.5758755   0.5154185   0.6363325
18 months   ki1017093-NIH-Birth       <=42.2               NA                0.8248175   0.7611014   0.8885337
18 months   ki1017093-NIH-Birth       >60                  NA                0.4090909   0.2636692   0.5545127
18 months   ki1017093-NIH-Birth       42.2-49              NA                0.6463415   0.5730950   0.7195879
18 months   ki1017093-NIH-Birth       49-60                NA                0.5657895   0.4869141   0.6446648
18 months   ki1017093c-NIH-Crypto     <=42.2               NA                0.5858586   0.4887617   0.6829554
18 months   ki1017093c-NIH-Crypto     >60                  NA                0.2932331   0.2158099   0.3706562
18 months   ki1017093c-NIH-Crypto     42.2-49              NA                0.4954128   0.4289964   0.5618293
18 months   ki1017093c-NIH-Crypto     49-60                NA                0.4226415   0.3631249   0.4821581
18 months   ki1119695-PROBIT          <=42.2               NA                0.3571429   0.1061297   0.6081560
18 months   ki1119695-PROBIT          >60                  NA                0.1340153   0.1233365   0.1446942
18 months   ki1119695-PROBIT          42.2-49              NA                0.2377049   0.1842893   0.2911205
18 months   ki1119695-PROBIT          49-60                NA                0.1773533   0.1613873   0.1933193
18 months   kiGH5241-JiVitA-3         <=42.2               NA                0.6465621   0.6302905   0.6628338
18 months   kiGH5241-JiVitA-3         >60                  NA                0.2876712   0.2142385   0.3611040
18 months   kiGH5241-JiVitA-3         42.2-49              NA                0.4969303   0.4783061   0.5155545
18 months   kiGH5241-JiVitA-3         49-60                NA                0.3848263   0.3559926   0.4136600
24 months   ki1017093-NIH-Birth       <=42.2               NA                0.9375000   0.8955211   0.9794789
24 months   ki1017093-NIH-Birth       >60                  NA                0.5121951   0.3590301   0.6653601
24 months   ki1017093-NIH-Birth       42.2-49              NA                0.7579618   0.6908921   0.8250315
24 months   ki1017093-NIH-Birth       49-60                NA                0.6597222   0.5822534   0.7371910
24 months   ki1017093c-NIH-Crypto     <=42.2               NA                0.6413043   0.5432217   0.7393870
24 months   ki1017093c-NIH-Crypto     >60                  NA                0.3583333   0.2724718   0.4441949
24 months   ki1017093c-NIH-Crypto     42.2-49              NA                0.5589744   0.4892312   0.6287175
24 months   ki1017093c-NIH-Crypto     49-60                NA                0.4713656   0.4063774   0.5363539
3 months    ki1000304b-SAS-CompFeed   <=42.2               NA                0.4361233   0.3715791   0.5006676
3 months    ki1000304b-SAS-CompFeed   >60                  NA                0.1276596   0.0322055   0.2231136
3 months    ki1000304b-SAS-CompFeed   42.2-49              NA                0.3441397   0.2976159   0.3906634
3 months    ki1000304b-SAS-CompFeed   49-60                NA                0.2465278   0.1967261   0.2963295
3 months    ki1017093-NIH-Birth       <=42.2               NA                0.3255814   0.2554966   0.3956662
3 months    ki1017093-NIH-Birth       >60                  NA                0.1272727   0.0391234   0.2154221
3 months    ki1017093-NIH-Birth       42.2-49              NA                0.1904762   0.1373243   0.2436281
3 months    ki1017093-NIH-Birth       49-60                NA                0.1927083   0.1368731   0.2485436
3 months    ki1017093c-NIH-Crypto     <=42.2               NA                0.2403846   0.1582040   0.3225652
3 months    ki1017093c-NIH-Crypto     >60                  NA                0.0928571   0.0447491   0.1409652
3 months    ki1017093c-NIH-Crypto     42.2-49              NA                0.1850220   0.1344736   0.2355705
3 months    ki1017093c-NIH-Crypto     49-60                NA                0.1443662   0.1034634   0.1852690
3 months    ki1126311-ZVITAMBO        <=42.2               NA                0.4814815   0.2929791   0.6699839
3 months    ki1126311-ZVITAMBO        >60                  NA                0.1540448   0.1332851   0.1748044
3 months    ki1126311-ZVITAMBO        42.2-49              NA                0.3178808   0.2653534   0.3704082
3 months    ki1126311-ZVITAMBO        49-60                NA                0.2616601   0.2374343   0.2858859
3 months    kiGH5241-JiVitA-3         <=42.2               NA                0.4903661   0.4779502   0.5027820
3 months    kiGH5241-JiVitA-3         >60                  NA                0.1885246   0.1394461   0.2376031
3 months    kiGH5241-JiVitA-3         42.2-49              NA                0.3611111   0.3477542   0.3744680
3 months    kiGH5241-JiVitA-3         49-60                NA                0.2547669   0.2351116   0.2744223
6 months    ki1000304b-SAS-CompFeed   <=42.2               NA                0.5661376   0.4954367   0.6368384
6 months    ki1000304b-SAS-CompFeed   >60                  NA                0.2142857   0.0901140   0.3384574
6 months    ki1000304b-SAS-CompFeed   42.2-49              NA                0.4239766   0.3715688   0.4763845
6 months    ki1000304b-SAS-CompFeed   49-60                NA                0.3463203   0.2849252   0.4077155
6 months    ki1017093-NIH-Birth       <=42.2               NA                0.5405405   0.4601788   0.6209023
6 months    ki1017093-NIH-Birth       >60                  NA                0.2826087   0.1523717   0.4128457
6 months    ki1017093-NIH-Birth       42.2-49              NA                0.3208556   0.2538891   0.3878221
6 months    ki1017093-NIH-Birth       49-60                NA                0.2823529   0.2146247   0.3500812
6 months    ki1017093c-NIH-Crypto     <=42.2               NA                0.4174757   0.3221748   0.5127767
6 months    ki1017093c-NIH-Crypto     >60                  NA                0.2101449   0.1421249   0.2781650
6 months    ki1017093c-NIH-Crypto     42.2-49              NA                0.3333333   0.2712806   0.3953860
6 months    ki1017093c-NIH-Crypto     49-60                NA                0.2930403   0.2390118   0.3470688
6 months    ki1119695-PROBIT          <=42.2               NA                0.3571429   0.1061302   0.6081555
6 months    ki1119695-PROBIT          >60                  NA                0.0882648   0.0794597   0.0970698
6 months    ki1119695-PROBIT          42.2-49              NA                0.1679688   0.1221709   0.2137666
6 months    ki1119695-PROBIT          49-60                NA                0.1181939   0.1048799   0.1315079
6 months    ki1126311-ZVITAMBO        <=42.2               NA                0.6875000   0.4603296   0.9146704
6 months    ki1126311-ZVITAMBO        >60                  NA                0.2181208   0.1910438   0.2451978
6 months    ki1126311-ZVITAMBO        42.2-49              NA                0.4859813   0.4190017   0.5529609
6 months    ki1126311-ZVITAMBO        49-60                NA                0.3263263   0.2972447   0.3554079
6 months    kiGH5241-JiVitA-3         <=42.2               NA                0.5158514   0.5011111   0.5305918
6 months    kiGH5241-JiVitA-3         >60                  NA                0.1839080   0.1263420   0.2414740
6 months    kiGH5241-JiVitA-3         42.2-49              NA                0.3829193   0.3670019   0.3988367
6 months    kiGH5241-JiVitA-3         49-60                NA                0.2792023   0.2557355   0.3026691


### Parameter: E(Y)


agecat      studyid                   intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  -------------------  ---------------  ----------  ----------  ----------
12 months   ki1000304b-SAS-CompFeed   NA                   NA                0.5839910   0.5767514   0.5912306
12 months   ki1017093-NIH-Birth       NA                   NA                0.5101664   0.5007757   0.5195570
12 months   ki1017093c-NIH-Crypto     NA                   NA                0.3799726   0.3739612   0.3859840
12 months   ki1119695-PROBIT          NA                   NA                0.1410199   0.1403093   0.1417305
12 months   ki1126311-ZVITAMBO        NA                   NA                0.3845824   0.3809524   0.3882125
12 months   ki1148112-LCNI-5          NA                   NA                0.4825871   0.4689455   0.4962286
12 months   kiGH5241-JiVitA-3         NA                   NA                0.4516553   0.4495401   0.4537706
18 months   ki1000304b-SAS-CompFeed   NA                   NA                0.7126168   0.7044763   0.7207574
18 months   ki1017093-NIH-Birth       NA                   NA                0.6498994   0.6388599   0.6609389
18 months   ki1017093c-NIH-Crypto     NA                   NA                0.4433566   0.4368005   0.4499128
18 months   ki1119695-PROBIT          NA                   NA                0.1534475   0.1527559   0.1541390
18 months   kiGH5241-JiVitA-3         NA                   NA                0.5437543   0.5413860   0.5461225
24 months   ki1017093-NIH-Birth       NA                   NA                0.7553191   0.7435199   0.7671184
24 months   ki1017093c-NIH-Crypto     NA                   NA                0.5015773   0.4945848   0.5085697
3 months    ki1000304b-SAS-CompFeed   NA                   NA                0.3260644   0.3208517   0.3312770
3 months    ki1017093-NIH-Birth       NA                   NA                0.2225755   0.2174398   0.2277112
3 months    ki1017093c-NIH-Crypto     NA                   NA                0.1602649   0.1570679   0.1634619
3 months    ki1126311-ZVITAMBO        NA                   NA                0.2246009   0.2221439   0.2270578
3 months    kiGH5241-JiVitA-3         NA                   NA                0.4032863   0.4017512   0.4048214
6 months    ki1000304b-SAS-CompFeed   NA                   NA                0.4241294   0.4176483   0.4306104
6 months    ki1017093-NIH-Birth       NA                   NA                0.3647913   0.3557854   0.3737972
6 months    ki1017093c-NIH-Crypto     NA                   NA                0.3070652   0.3026391   0.3114914
6 months    ki1119695-PROBIT          NA                   NA                0.1023477   0.1017956   0.1028998
6 months    ki1126311-ZVITAMBO        NA                   NA                0.2995761   0.2958262   0.3033259
6 months    kiGH5241-JiVitA-3         NA                   NA                0.4253942   0.4235324   0.4272560


### Parameter: RR


agecat      studyid                   intervention_level   baseline_level    estimate    ci_lower   ci_upper
----------  ------------------------  -------------------  ---------------  ---------  ----------  ---------
12 months   ki1000304b-SAS-CompFeed   >60                  <=42.2            1.586236   1.0431310   2.412107
12 months   ki1000304b-SAS-CompFeed   42.2-49              <=42.2            2.265314   2.0182127   2.542669
12 months   ki1000304b-SAS-CompFeed   49-60                <=42.2            1.902108   1.6345916   2.213407
12 months   ki1017093-NIH-Birth       >60                  <=42.2            1.651335   1.1045926   2.468700
12 months   ki1017093-NIH-Birth       42.2-49              <=42.2            2.056966   1.7076970   2.477670
12 months   ki1017093-NIH-Birth       49-60                <=42.2            1.891656   1.5355523   2.330342
12 months   ki1017093c-NIH-Crypto     >60                  <=42.2            1.612574   1.1488348   2.263507
12 months   ki1017093c-NIH-Crypto     42.2-49              <=42.2            2.178455   1.7137914   2.769103
12 months   ki1017093c-NIH-Crypto     49-60                <=42.2            1.944530   1.5252805   2.479019
12 months   ki1119695-PROBIT          >60                  <=42.2            1.403980   0.6918755   2.849009
12 months   ki1119695-PROBIT          42.2-49              <=42.2            1.939820   0.9294877   4.048363
12 months   ki1119695-PROBIT          49-60                <=42.2            1.582517   0.7789521   3.215036
12 months   ki1126311-ZVITAMBO        >60                  <=42.2            1.504580   1.1314095   2.000832
12 months   ki1126311-ZVITAMBO        42.2-49              <=42.2            2.165053   1.6210461   2.891624
12 months   ki1126311-ZVITAMBO        49-60                <=42.2            1.749004   1.3243536   2.309818
12 months   ki1148112-LCNI-5          >60                  <=42.2            1.385127   0.7715475   2.486661
12 months   ki1148112-LCNI-5          42.2-49              <=42.2            2.032775   1.6349711   2.527368
12 months   ki1148112-LCNI-5          49-60                <=42.2            1.627719   1.2783211   2.072616
12 months   kiGH5241-JiVitA-3         >60                  <=42.2            1.567180   1.2072293   2.034454
12 months   kiGH5241-JiVitA-3         42.2-49              <=42.2            2.096262   1.9919079   2.206083
12 months   kiGH5241-JiVitA-3         49-60                <=42.2            1.705639   1.5579590   1.867318
18 months   ki1000304b-SAS-CompFeed   >60                  <=42.2            1.693603   1.2080140   2.374386
18 months   ki1000304b-SAS-CompFeed   42.2-49              <=42.2            2.429766   2.2402898   2.635267
18 months   ki1000304b-SAS-CompFeed   49-60                <=42.2            1.955575   1.7348995   2.204320
18 months   ki1017093-NIH-Birth       >60                  <=42.2            1.642103   1.1413427   2.362569
18 months   ki1017093-NIH-Birth       42.2-49              <=42.2            2.189378   1.9087880   2.511215
18 months   ki1017093-NIH-Birth       49-60                <=42.2            1.985672   1.6931278   2.328762
18 months   ki1017093c-NIH-Crypto     >60                  <=42.2            1.649576   1.2077748   2.252988
18 months   ki1017093c-NIH-Crypto     42.2-49              <=42.2            2.329418   1.8822169   2.882871
18 months   ki1017093c-NIH-Crypto     49-60                <=42.2            2.057322   1.6552031   2.557134
18 months   ki1119695-PROBIT          >60                  <=42.2            1.455345   0.7174182   2.952294
18 months   ki1119695-PROBIT          42.2-49              <=42.2            1.945607   0.9302404   4.069254
18 months   ki1119695-PROBIT          49-60                <=42.2            1.643108   0.8089734   3.337320
18 months   kiGH5241-JiVitA-3         >60                  <=42.2            1.560372   1.2073412   2.016631
18 months   kiGH5241-JiVitA-3         42.2-49              <=42.2            2.156687   2.0614901   2.256280
18 months   kiGH5241-JiVitA-3         49-60                <=42.2            1.813373   1.6755616   1.962518
24 months   ki1017093-NIH-Birth       >60                  <=42.2            1.726923   1.2763076   2.336635
24 months   ki1017093-NIH-Birth       42.2-49              <=42.2            2.244522   2.0326110   2.478526
24 months   ki1017093-NIH-Birth       49-60                <=42.2            2.021225   1.7825227   2.291892
24 months   ki1017093c-NIH-Crypto     >60                  <=42.2            1.748498   1.3158634   2.323376
24 months   ki1017093c-NIH-Crypto     42.2-49              <=42.2            2.390783   1.9625428   2.912469
24 months   ki1017093c-NIH-Crypto     49-60                <=42.2            2.085505   1.6974004   2.562347
3 months    ki1000304b-SAS-CompFeed   >60                  <=42.2            1.340060   0.6253057   2.871813
3 months    ki1000304b-SAS-CompFeed   42.2-49              <=42.2            2.201388   1.8015402   2.689980
3 months    ki1000304b-SAS-CompFeed   49-60                <=42.2            1.759924   1.3700508   2.260743
3 months    ki1017093-NIH-Birth       >60                  <=42.2            1.478324   0.7157864   3.053205
3 months    ki1017093-NIH-Birth       42.2-49              <=42.2            1.795052   1.2618857   2.553489
3 months    ki1017093-NIH-Birth       49-60                <=42.2            1.807401   1.2597813   2.593068
3 months    ki1017093c-NIH-Crypto     >60                  <=42.2            1.471505   0.7910207   2.737384
3 months    ki1017093c-NIH-Crypto     42.2-49              <=42.2            2.159100   1.3938460   3.344498
3 months    ki1017093c-NIH-Crypto     49-60                <=42.2            1.823146   1.1694661   2.842203
3 months    ki1126311-ZVITAMBO        >60                  <=42.2            1.377044   0.9101817   2.083375
3 months    ki1126311-ZVITAMBO        42.2-49              <=42.2            1.935206   1.2652446   2.959921
3 months    ki1126311-ZVITAMBO        49-60                <=42.2            1.721934   1.1515907   2.574747
3 months    kiGH5241-JiVitA-3         >60                  <=42.2            1.468816   1.1307703   1.907922
3 months    kiGH5241-JiVitA-3         42.2-49              <=42.2            2.088427   1.9968817   2.184170
3 months    kiGH5241-JiVitA-3         49-60                <=42.2            1.681261   1.5501403   1.823474
6 months    ki1000304b-SAS-CompFeed   >60                  <=42.2            1.460100   0.8071325   2.641315
6 months    ki1000304b-SAS-CompFeed   42.2-49              <=42.2            2.114658   1.7738989   2.520876
6 months    ki1000304b-SAS-CompFeed   49-60                <=42.2            1.843608   1.4842003   2.290049
6 months    ki1017093-NIH-Birth       >60                  <=42.2            1.686788   1.0393547   2.737519
6 months    ki1017093-NIH-Birth       42.2-49              <=42.2            1.810464   1.4012074   2.339253
6 months    ki1017093-NIH-Birth       49-60                <=42.2            1.685990   1.2714352   2.235711
6 months    ki1017093c-NIH-Crypto     >60                  <=42.2            1.654287   1.1132550   2.458257
6 months    ki1017093c-NIH-Crypto     42.2-49              <=42.2            2.222093   1.6551451   2.983242
6 months    ki1017093c-NIH-Crypto     49-60                <=42.2            2.017650   1.5045564   2.705724
6 months    ki1119695-PROBIT          >60                  <=42.2            1.280360   0.6295574   2.603928
6 months    ki1119695-PROBIT          42.2-49              <=42.2            1.600494   0.7531000   3.401384
6 months    ki1119695-PROBIT          49-60                <=42.2            1.392280   0.6832720   2.837003
6 months    ki1126311-ZVITAMBO        >60                  <=42.2            1.373369   0.9649182   1.954717
6 months    ki1126311-ZVITAMBO        42.2-49              <=42.2            2.027659   1.4174519   2.900558
6 months    ki1126311-ZVITAMBO        49-60                <=42.2            1.607462   1.1415876   2.263456
6 months    kiGH5241-JiVitA-3         >60                  <=42.2            1.428341   1.0430998   1.955861
6 months    kiGH5241-JiVitA-3         42.2-49              <=42.2            2.100773   1.9974329   2.209460
6 months    kiGH5241-JiVitA-3         49-60                <=42.2            1.718146   1.5721931   1.877647


### Parameter: PAR


agecat      studyid                   intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -------------------  ---------------  -----------  -----------  -----------
12 months   ki1000304b-SAS-CompFeed   <=42.2               NA                -0.1549253   -0.2158123   -0.0940383
12 months   ki1017093-NIH-Birth       <=42.2               NA                -0.1676860   -0.2433728   -0.0919991
12 months   ki1017093c-NIH-Crypto     <=42.2               NA                -0.1546809   -0.2522105   -0.0571513
12 months   ki1119695-PROBIT          <=42.2               NA                -0.2161230   -0.4671361    0.0348902
12 months   ki1126311-ZVITAMBO        <=42.2               NA                -0.3522597   -0.5503360   -0.1541833
12 months   ki1148112-LCNI-5          <=42.2               NA                -0.3299129   -0.4660007   -0.1938251
12 months   kiGH5241-JiVitA-3         <=42.2               NA                -0.0983974   -0.1143649   -0.0824298
18 months   ki1000304b-SAS-CompFeed   <=42.2               NA                -0.1460219   -0.1961251   -0.0959188
18 months   ki1017093-NIH-Birth       <=42.2               NA                -0.1749181   -0.2395835   -0.1102527
18 months   ki1017093c-NIH-Crypto     <=42.2               NA                -0.1425019   -0.2398199   -0.0451840
18 months   ki1119695-PROBIT          <=42.2               NA                -0.2036954   -0.4547095    0.0473187
18 months   kiGH5241-JiVitA-3         <=42.2               NA                -0.1028079   -0.1192510   -0.0863647
24 months   ki1017093-NIH-Birth       <=42.2               NA                -0.1821809   -0.2257865   -0.1385752
24 months   ki1017093c-NIH-Crypto     <=42.2               NA                -0.1397271   -0.2380586   -0.0413955
3 months    ki1000304b-SAS-CompFeed   <=42.2               NA                -0.1100590   -0.1748134   -0.0453046
3 months    ki1017093-NIH-Birth       <=42.2               NA                -0.1030059   -0.1732786   -0.0327331
3 months    ki1017093c-NIH-Crypto     <=42.2               NA                -0.0801197   -0.1623625    0.0021231
3 months    ki1126311-ZVITAMBO        <=42.2               NA                -0.2568806   -0.4453990   -0.0683622
3 months    kiGH5241-JiVitA-3         <=42.2               NA                -0.0870798   -0.0995902   -0.0745693
6 months    ki1000304b-SAS-CompFeed   <=42.2               NA                -0.1420082   -0.2130055   -0.0710110
6 months    ki1017093-NIH-Birth       <=42.2               NA                -0.1757493   -0.2566141   -0.0948844
6 months    ki1017093c-NIH-Crypto     <=42.2               NA                -0.1104105   -0.2058142   -0.0150068
6 months    ki1119695-PROBIT          <=42.2               NA                -0.2547952   -0.5058084   -0.0037819
6 months    ki1126311-ZVITAMBO        <=42.2               NA                -0.3879239   -0.6151253   -0.1607226
6 months    kiGH5241-JiVitA-3         <=42.2               NA                -0.0904573   -0.1053147   -0.0755998


### Parameter: PAF


agecat      studyid                   intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  ------------------------  -------------------  ---------------  ----------  -----------  ----------
12 months   ki1000304b-SAS-CompFeed   <=42.2               NA                0.5463070    0.5071669   0.5823386
12 months   ki1017093-NIH-Birth       <=42.2               NA                0.5288702    0.4728704   0.5789208
12 months   ki1017093c-NIH-Crypto     <=42.2               NA                0.5086946    0.4101776   0.5907566
12 months   ki1119695-PROBIT          <=42.2               NA                0.3262227   -0.3606961   0.6663650
12 months   ki1126311-ZVITAMBO        <=42.2               NA                0.4066277    0.2235281   0.5465507
12 months   ki1148112-LCNI-5          <=42.2               NA                0.4478598    0.3461804   0.5337264
12 months   kiGH5241-JiVitA-3         <=42.2               NA                0.5600582    0.5470443   0.5726982
18 months   ki1000304b-SAS-CompFeed   <=42.2               NA                0.5639236    0.5375603   0.5887840
18 months   ki1017093-NIH-Birth       <=42.2               NA                0.5452153    0.5077836   0.5798004
18 months   ki1017093c-NIH-Crypto     <=42.2               NA                0.5308177    0.4458785   0.6027369
18 months   ki1119695-PROBIT          <=42.2               NA                0.3492651   -0.3141608   0.6777746
18 months   kiGH5241-JiVitA-3         <=42.2               NA                0.5687180    0.5575609   0.5795937
24 months   ki1017093-NIH-Birth       <=42.2               NA                0.5532132    0.5315142   0.5739072
24 months   ki1017093c-NIH-Crypto     <=42.2               NA                0.5425650    0.4666322   0.6076877
3 months    ki1000304b-SAS-CompFeed   <=42.2               NA                0.5265186    0.4505218   0.5920044
3 months    ki1017093-NIH-Birth       <=42.2               NA                0.4952161    0.3732021   0.5934785
3 months    ki1017093c-NIH-Crypto     <=42.2               NA                0.4866010    0.2769299   0.6354731
3 months    ki1126311-ZVITAMBO        <=42.2               NA                0.3727931    0.0720903   0.5760486
3 months    kiGH5241-JiVitA-3         <=42.2               NA                0.5606324    0.5492375   0.5717393
6 months    ki1000304b-SAS-CompFeed   <=42.2               NA                0.5272379    0.4638541   0.5831285
6 months    ki1017093-NIH-Birth       <=42.2               NA                0.4907743    0.4079468   0.5620143
6 months    ki1017093c-NIH-Crypto     <=42.2               NA                0.5207478    0.3975765   0.6187355
6 months    ki1119695-PROBIT          <=42.2               NA                0.2491682   -0.5163143   0.6282113
6 months    ki1126311-ZVITAMBO        <=42.2               NA                0.3532187    0.0997478   0.5353234
6 months    kiGH5241-JiVitA-3         <=42.2               NA                0.5616093    0.5487513   0.5741009


