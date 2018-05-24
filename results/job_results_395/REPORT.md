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

**Intervention Variable:** mhtcm

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid


The following strata were considered:

* agecat: 12 months, studyid: ki1000304b-SAS-CompFeed
* agecat: 12 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 12 months, studyid: ki1017093-NIH-Birth
* agecat: 12 months, studyid: ki1017093c-NIH-Crypto
* agecat: 12 months, studyid: ki1066203-TanzaniaChild2
* agecat: 12 months, studyid: ki1101329-Keneba
* agecat: 12 months, studyid: ki1112895-Guatemala BSC
* agecat: 12 months, studyid: ki1112895-iLiNS-Zinc
* agecat: 12 months, studyid: ki1119695-PROBIT
* agecat: 12 months, studyid: ki1126311-ZVITAMBO
* agecat: 12 months, studyid: ki1135781-COHORTS
* agecat: 12 months, studyid: ki1148112-LCNI-5
* agecat: 12 months, studyid: kiGH5241-JiVitA-3
* agecat: 18 months, studyid: ki1000304b-SAS-CompFeed
* agecat: 18 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 18 months, studyid: ki1017093-NIH-Birth
* agecat: 18 months, studyid: ki1017093c-NIH-Crypto
* agecat: 18 months, studyid: ki1066203-TanzaniaChild2
* agecat: 18 months, studyid: ki1101329-Keneba
* agecat: 18 months, studyid: ki1112895-Guatemala BSC
* agecat: 18 months, studyid: ki1112895-iLiNS-Zinc
* agecat: 18 months, studyid: ki1119695-PROBIT
* agecat: 18 months, studyid: ki1126311-ZVITAMBO
* agecat: 18 months, studyid: ki1135781-COHORTS
* agecat: 18 months, studyid: ki1148112-LCNI-5
* agecat: 18 months, studyid: kiGH5241-JiVitA-3
* agecat: 24 months, studyid: ki1000304b-SAS-CompFeed
* agecat: 24 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 24 months, studyid: ki1017093-NIH-Birth
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2
* agecat: 24 months, studyid: ki1101329-Keneba
* agecat: 24 months, studyid: ki1112895-iLiNS-Zinc
* agecat: 24 months, studyid: ki1119695-PROBIT
* agecat: 24 months, studyid: ki1126311-ZVITAMBO
* agecat: 24 months, studyid: ki1135781-COHORTS
* agecat: 24 months, studyid: ki1148112-LCNI-5
* agecat: 24 months, studyid: kiGH5241-JiVitA-3
* agecat: 3 months, studyid: ki1000304b-SAS-CompFeed
* agecat: 3 months, studyid: ki1017093-NIH-Birth
* agecat: 3 months, studyid: ki1017093c-NIH-Crypto
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2
* agecat: 3 months, studyid: ki1101329-Keneba
* agecat: 3 months, studyid: ki1119695-PROBIT
* agecat: 3 months, studyid: ki1126311-ZVITAMBO
* agecat: 3 months, studyid: ki1135781-COHORTS
* agecat: 3 months, studyid: kiGH5241-JiVitA-3
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 6 months, studyid: ki1017093-NIH-Birth
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2
* agecat: 6 months, studyid: ki1101329-Keneba
* agecat: 6 months, studyid: ki1112895-Guatemala BSC
* agecat: 6 months, studyid: ki1119695-PROBIT
* agecat: 6 months, studyid: ki1126311-ZVITAMBO
* agecat: 6 months, studyid: ki1135781-COHORTS
* agecat: 6 months, studyid: ki1148112-LCNI-5
* agecat: 6 months, studyid: kiGH5241-JiVitA-3

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 12 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 12 months, studyid: ki1017093-NIH-Birth
* agecat: 12 months, studyid: ki1017093c-NIH-Crypto
* agecat: 12 months, studyid: ki1112895-Guatemala BSC
* agecat: 12 months, studyid: ki1112895-iLiNS-Zinc
* agecat: 12 months, studyid: ki1119695-PROBIT
* agecat: 18 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 18 months, studyid: ki1017093-NIH-Birth
* agecat: 18 months, studyid: ki1017093c-NIH-Crypto
* agecat: 18 months, studyid: ki1112895-Guatemala BSC
* agecat: 18 months, studyid: ki1112895-iLiNS-Zinc
* agecat: 18 months, studyid: ki1119695-PROBIT
* agecat: 24 months, studyid: ki1000304b-SAS-CompFeed
* agecat: 24 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 24 months, studyid: ki1017093-NIH-Birth
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto
* agecat: 24 months, studyid: ki1101329-Keneba
* NA
* agecat: 24 months, studyid: ki1112895-iLiNS-Zinc
* agecat: 24 months, studyid: ki1119695-PROBIT
* agecat: 24 months, studyid: ki1126311-ZVITAMBO
* agecat: 24 months, studyid: kiGH5241-JiVitA-3
* NA
* agecat: 3 months, studyid: ki1017093-NIH-Birth
* agecat: 3 months, studyid: ki1017093c-NIH-Crypto
* NA
* NA
* agecat: 3 months, studyid: ki1119695-PROBIT
* NA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 6 months, studyid: ki1017093-NIH-Birth
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto
* agecat: 6 months, studyid: ki1112895-Guatemala BSC
* NA
* agecat: 6 months, studyid: ki1119695-PROBIT
* agecat: 6 months, studyid: ki1135781-COHORTS

## Methods Detail

**todo**




# Results Detail

## Results Plots
![](/tmp/6597de0a-39ab-4d09-838f-2632bad0ad04/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/6597de0a-39ab-4d09-838f-2632bad0ad04/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/6597de0a-39ab-4d09-838f-2632bad0ad04/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/6597de0a-39ab-4d09-838f-2632bad0ad04/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Data Summary

agecat      studyid                    A                  n     nA   nAY0   nAY1
----------  -------------------------  ------------  ------  -----  -----  -----
12 months   ki1000304b-SAS-CompFeed    <=149.1          828    226     60    166
12 months   ki1000304b-SAS-CompFeed    >160             828     98     58     40
12 months   ki1000304b-SAS-CompFeed    149.1-154.1      828    249     98    151
12 months   ki1000304b-SAS-CompFeed    154.1-160        828    255    129    126
12 months   ki1000304b-SAS-FoodSuppl   <=149.1           98     44      3     41
12 months   ki1000304b-SAS-FoodSuppl   >160              98      1      0      1
12 months   ki1000304b-SAS-FoodSuppl   149.1-154.1       98     35      4     31
12 months   ki1000304b-SAS-FoodSuppl   154.1-160         98     18      8     10
12 months   ki1017093-NIH-Birth        <=149.1          541    266    101    165
12 months   ki1017093-NIH-Birth        >160             541     17     16      1
12 months   ki1017093-NIH-Birth        149.1-154.1      541    165     87     78
12 months   ki1017093-NIH-Birth        154.1-160        541     93     61     32
12 months   ki1017093c-NIH-Crypto      <=149.1          729    303    156    147
12 months   ki1017093c-NIH-Crypto      >160             729     21     19      2
12 months   ki1017093c-NIH-Crypto      149.1-154.1      729    264    174     90
12 months   ki1017093c-NIH-Crypto      154.1-160        729    141    103     38
12 months   ki1066203-TanzaniaChild2   <=149.1          492     47     22     25
12 months   ki1066203-TanzaniaChild2   >160             492    117     99     18
12 months   ki1066203-TanzaniaChild2   149.1-154.1      492    123     73     50
12 months   ki1066203-TanzaniaChild2   154.1-160        492    205    140     65
12 months   ki1101329-Keneba           <=149.1         2099     36     12     24
12 months   ki1101329-Keneba           >160            2099    942    630    312
12 months   ki1101329-Keneba           149.1-154.1     2099    320    144    176
12 months   ki1101329-Keneba           154.1-160       2099    801    437    364
12 months   ki1112895-Guatemala BSC    <=149.1           66     33     14     19
12 months   ki1112895-Guatemala BSC    >160              66      3      3      0
12 months   ki1112895-Guatemala BSC    149.1-154.1       66     22     13      9
12 months   ki1112895-Guatemala BSC    154.1-160         66      8      6      2
12 months   ki1112895-iLiNS-Zinc       <=149.1          778      7      2      5
12 months   ki1112895-iLiNS-Zinc       >160             778    526    442     84
12 months   ki1112895-iLiNS-Zinc       149.1-154.1      778     51     37     14
12 months   ki1112895-iLiNS-Zinc       154.1-160        778    194    135     59
12 months   ki1119695-PROBIT           <=149.1         6672     11      8      3
12 months   ki1119695-PROBIT           >160            6672   4877   4282    595
12 months   ki1119695-PROBIT           149.1-154.1     6672    238    187     51
12 months   ki1119695-PROBIT           154.1-160       6672   1546   1255    291
12 months   ki1126311-ZVITAMBO         <=149.1         2074     67     31     36
12 months   ki1126311-ZVITAMBO         >160            2074   1027    669    358
12 months   ki1126311-ZVITAMBO         149.1-154.1     2074    269    143    126
12 months   ki1126311-ZVITAMBO         154.1-160       2074    711    431    280
12 months   ki1135781-COHORTS          <=149.1         5140   2054    874   1180
12 months   ki1135781-COHORTS          >160            5140    225    181     44
12 months   ki1135781-COHORTS          149.1-154.1     5140   1820   1070    750
12 months   ki1135781-COHORTS          154.1-160       5140   1041    737    304
12 months   ki1148112-LCNI-5           <=149.1          401     38     12     26
12 months   ki1148112-LCNI-5           >160             401    109     67     42
12 months   ki1148112-LCNI-5           149.1-154.1      401     95     35     60
12 months   ki1148112-LCNI-5           154.1-160        401    159     94     65
12 months   kiGH5241-JiVitA-3          <=149.1         8351   3803   1643   2160
12 months   kiGH5241-JiVitA-3          >160            8351    213    170     43
12 months   kiGH5241-JiVitA-3          149.1-154.1     8351   2905   1729   1176
12 months   kiGH5241-JiVitA-3          154.1-160       8351   1430   1035    395
18 months   ki1000304b-SAS-CompFeed    <=149.1          800    215     29    186
18 months   ki1000304b-SAS-CompFeed    >160             800     95     46     49
18 months   ki1000304b-SAS-CompFeed    149.1-154.1      800    236     60    176
18 months   ki1000304b-SAS-CompFeed    154.1-160        800    254     97    157
18 months   ki1000304b-SAS-FoodSuppl   <=149.1           93     40      1     39
18 months   ki1000304b-SAS-FoodSuppl   >160              93      1      0      1
18 months   ki1000304b-SAS-FoodSuppl   149.1-154.1       93     34      3     31
18 months   ki1000304b-SAS-FoodSuppl   154.1-160         93     18      6     12
18 months   ki1017093-NIH-Birth        <=149.1          497    241     55    186
18 months   ki1017093-NIH-Birth        >160             497     16     14      2
18 months   ki1017093-NIH-Birth        149.1-154.1      497    151     60     91
18 months   ki1017093-NIH-Birth        154.1-160        497     89     45     44
18 months   ki1017093c-NIH-Crypto      <=149.1          715    295    128    167
18 months   ki1017093c-NIH-Crypto      >160             715     19     17      2
18 months   ki1017093c-NIH-Crypto      149.1-154.1      715    259    156    103
18 months   ki1017093c-NIH-Crypto      154.1-160        715    142     97     45
18 months   ki1066203-TanzaniaChild2   <=149.1          355     35      6     29
18 months   ki1066203-TanzaniaChild2   >160             355     84     67     17
18 months   ki1066203-TanzaniaChild2   149.1-154.1      355     98     49     49
18 months   ki1066203-TanzaniaChild2   154.1-160        355    138     81     57
18 months   ki1101329-Keneba           <=149.1         2044     36      6     30
18 months   ki1101329-Keneba           >160            2044    919    539    380
18 months   ki1101329-Keneba           149.1-154.1     2044    315    111    204
18 months   ki1101329-Keneba           154.1-160       2044    774    347    427
18 months   ki1112895-Guatemala BSC    <=149.1           44     24      8     16
18 months   ki1112895-Guatemala BSC    >160              44      2      2      0
18 months   ki1112895-Guatemala BSC    149.1-154.1       44     12      6      6
18 months   ki1112895-Guatemala BSC    154.1-160         44      6      4      2
18 months   ki1112895-iLiNS-Zinc       <=149.1          121      0      0      0
18 months   ki1112895-iLiNS-Zinc       >160             121     84     58     26
18 months   ki1112895-iLiNS-Zinc       149.1-154.1      121      9      2      7
18 months   ki1112895-iLiNS-Zinc       154.1-160        121     28     15     13
18 months   ki1119695-PROBIT           <=149.1         6353     11      8      3
18 months   ki1119695-PROBIT           >160            6353   4641   4015    626
18 months   ki1119695-PROBIT           149.1-154.1     6353    225    175     50
18 months   ki1119695-PROBIT           154.1-160       6353   1476   1181    295
18 months   ki1126311-ZVITAMBO         <=149.1         1514     54     17     37
18 months   ki1126311-ZVITAMBO         >160            1514    734    396    338
18 months   ki1126311-ZVITAMBO         149.1-154.1     1514    209     98    111
18 months   ki1126311-ZVITAMBO         154.1-160       1514    517    255    262
18 months   ki1135781-COHORTS          <=149.1         3063   1357    330   1027
18 months   ki1135781-COHORTS          >160            3063     78     50     28
18 months   ki1135781-COHORTS          149.1-154.1     3063   1108    446    662
18 months   ki1135781-COHORTS          154.1-160       3063    520    254    266
18 months   ki1148112-LCNI-5           <=149.1          326     31      9     22
18 months   ki1148112-LCNI-5           >160             326     98     50     48
18 months   ki1148112-LCNI-5           149.1-154.1      326     76     20     56
18 months   ki1148112-LCNI-5           154.1-160        326    121     62     59
18 months   kiGH5241-JiVitA-3          <=149.1         7312   3325   1104   2221
18 months   kiGH5241-JiVitA-3          >160            7312    176    129     47
18 months   kiGH5241-JiVitA-3          149.1-154.1     7312   2553   1290   1263
18 months   kiGH5241-JiVitA-3          154.1-160       7312   1258    813    445
24 months   ki1000304b-SAS-CompFeed    <=149.1           76     24      3     21
24 months   ki1000304b-SAS-CompFeed    >160              76     12      6      6
24 months   ki1000304b-SAS-CompFeed    149.1-154.1       76     12      0     12
24 months   ki1000304b-SAS-CompFeed    154.1-160         76     28     15     13
24 months   ki1000304b-SAS-FoodSuppl   <=149.1            9      4      0      4
24 months   ki1000304b-SAS-FoodSuppl   >160               9      0      0      0
24 months   ki1000304b-SAS-FoodSuppl   149.1-154.1        9      4      0      4
24 months   ki1000304b-SAS-FoodSuppl   154.1-160          9      1      1      0
24 months   ki1017093-NIH-Birth        <=149.1          470    233     28    205
24 months   ki1017093-NIH-Birth        >160             470     14     11      3
24 months   ki1017093-NIH-Birth        149.1-154.1      470    142     44     98
24 months   ki1017093-NIH-Birth        154.1-160        470     81     32     49
24 months   ki1017093c-NIH-Crypto      <=149.1          634    261     99    162
24 months   ki1017093c-NIH-Crypto      >160             634     17     14      3
24 months   ki1017093c-NIH-Crypto      149.1-154.1      634    227    122    105
24 months   ki1017093c-NIH-Crypto      154.1-160        634    129     81     48
24 months   ki1066203-TanzaniaChild2   <=149.1          249     26      5     21
24 months   ki1066203-TanzaniaChild2   >160             249     56     43     13
24 months   ki1066203-TanzaniaChild2   149.1-154.1      249     71     30     41
24 months   ki1066203-TanzaniaChild2   154.1-160        249     96     52     44
24 months   ki1101329-Keneba           <=149.1         1996     39      3     36
24 months   ki1101329-Keneba           >160            1996    878    462    416
24 months   ki1101329-Keneba           149.1-154.1     1996    304     95    209
24 months   ki1101329-Keneba           154.1-160       1996    775    279    496
24 months   ki1112895-Guatemala BSC    <=149.1            0      0      0      0
24 months   ki1112895-Guatemala BSC    >160               0      0      0      0
24 months   ki1112895-Guatemala BSC    149.1-154.1        0      0      0      0
24 months   ki1112895-Guatemala BSC    154.1-160          0      0      0      0
24 months   ki1112895-iLiNS-Zinc       <=149.1          538      7      2      5
24 months   ki1112895-iLiNS-Zinc       >160             538    363    238    125
24 months   ki1112895-iLiNS-Zinc       149.1-154.1      538     33     14     19
24 months   ki1112895-iLiNS-Zinc       154.1-160        538    135     59     76
24 months   ki1119695-PROBIT           <=149.1         2063      2      2      0
24 months   ki1119695-PROBIT           >160            2063   1553   1265    288
24 months   ki1119695-PROBIT           149.1-154.1     2063     64     45     19
24 months   ki1119695-PROBIT           154.1-160       2063    444    329    115
24 months   ki1126311-ZVITAMBO         <=149.1          380     16      2     14
24 months   ki1126311-ZVITAMBO         >160             380    177     61    116
24 months   ki1126311-ZVITAMBO         149.1-154.1      380     56     10     46
24 months   ki1126311-ZVITAMBO         154.1-160        380    131     24    107
24 months   ki1135781-COHORTS          <=149.1         3009   1332    183   1149
24 months   ki1135781-COHORTS          >160            3009     75     40     35
24 months   ki1135781-COHORTS          149.1-154.1     3009   1087    267    820
24 months   ki1135781-COHORTS          154.1-160       3009    515    189    326
24 months   ki1148112-LCNI-5           <=149.1          353     35      5     30
24 months   ki1148112-LCNI-5           >160             353    100     48     52
24 months   ki1148112-LCNI-5           149.1-154.1      353     83     14     69
24 months   ki1148112-LCNI-5           154.1-160        353    135     55     80
24 months   kiGH5241-JiVitA-3          <=149.1            3      1      1      0
24 months   kiGH5241-JiVitA-3          >160               3      0      0      0
24 months   kiGH5241-JiVitA-3          149.1-154.1        3      2      1      1
24 months   kiGH5241-JiVitA-3          154.1-160          3      0      0      0
3 months    ki1000304b-SAS-CompFeed    <=149.1          901    247    142    105
3 months    ki1000304b-SAS-CompFeed    >160             901    105     86     19
3 months    ki1000304b-SAS-CompFeed    149.1-154.1      901    276    176    100
3 months    ki1000304b-SAS-CompFeed    154.1-160        901    273    200     73
3 months    ki1000304b-SAS-FoodSuppl   <=149.1            0      0      0      0
3 months    ki1000304b-SAS-FoodSuppl   >160               0      0      0      0
3 months    ki1000304b-SAS-FoodSuppl   149.1-154.1        0      0      0      0
3 months    ki1000304b-SAS-FoodSuppl   154.1-160          0      0      0      0
3 months    ki1017093-NIH-Birth        <=149.1          629    307    222     85
3 months    ki1017093-NIH-Birth        >160             629     21     20      1
3 months    ki1017093-NIH-Birth        149.1-154.1      629    192    155     37
3 months    ki1017093-NIH-Birth        154.1-160        629    109     92     17
3 months    ki1017093c-NIH-Crypto      <=149.1          755    317    257     60
3 months    ki1017093c-NIH-Crypto      >160             755     21     21      0
3 months    ki1017093c-NIH-Crypto      149.1-154.1      755    273    235     38
3 months    ki1017093c-NIH-Crypto      154.1-160        755    144    121     23
3 months    ki1066203-TanzaniaChild2   <=149.1          596     51     43      8
3 months    ki1066203-TanzaniaChild2   >160             596    142    136      6
3 months    ki1066203-TanzaniaChild2   149.1-154.1      596    156    135     21
3 months    ki1066203-TanzaniaChild2   154.1-160        596    247    223     24
3 months    ki1101329-Keneba           <=149.1         2059     35     19     16
3 months    ki1101329-Keneba           >160            2059    920    740    180
3 months    ki1101329-Keneba           149.1-154.1     2059    303    206     97
3 months    ki1101329-Keneba           154.1-160       2059    801    596    205
3 months    ki1112895-Guatemala BSC    <=149.1            0      0      0      0
3 months    ki1112895-Guatemala BSC    >160               0      0      0      0
3 months    ki1112895-Guatemala BSC    149.1-154.1        0      0      0      0
3 months    ki1112895-Guatemala BSC    154.1-160          0      0      0      0
3 months    ki1112895-iLiNS-Zinc       <=149.1            0      0      0      0
3 months    ki1112895-iLiNS-Zinc       >160               0      0      0      0
3 months    ki1112895-iLiNS-Zinc       149.1-154.1        0      0      0      0
3 months    ki1112895-iLiNS-Zinc       154.1-160          0      0      0      0
3 months    ki1119695-PROBIT           <=149.1         6696     11     11      0
3 months    ki1119695-PROBIT           >160            6696   4896   4592    304
3 months    ki1119695-PROBIT           149.1-154.1     6696    239    218     21
3 months    ki1119695-PROBIT           154.1-160       6696   1550   1389    161
3 months    ki1126311-ZVITAMBO         <=149.1         2433     79     52     27
3 months    ki1126311-ZVITAMBO         >160            2433   1195    967    228
3 months    ki1126311-ZVITAMBO         149.1-154.1     2433    324    228     96
3 months    ki1126311-ZVITAMBO         154.1-160       2433    835    633    202
3 months    ki1135781-COHORTS          <=149.1         5428   2158   1658    500
3 months    ki1135781-COHORTS          >160            5428    240    224     16
3 months    ki1135781-COHORTS          149.1-154.1     5428   1938   1664    274
3 months    ki1135781-COHORTS          154.1-160       5428   1092    980    112
3 months    ki1148112-LCNI-5           <=149.1            0      0      0      0
3 months    ki1148112-LCNI-5           >160               0      0      0      0
3 months    ki1148112-LCNI-5           149.1-154.1        0      0      0      0
3 months    ki1148112-LCNI-5           154.1-160          0      0      0      0
3 months    kiGH5241-JiVitA-3          <=149.1        13298   6182   3133   3049
3 months    kiGH5241-JiVitA-3          >160           13298    317    256     61
3 months    kiGH5241-JiVitA-3          149.1-154.1    13298   4570   2899   1671
3 months    kiGH5241-JiVitA-3          154.1-160      13298   2229   1644    585
6 months    ki1000304b-SAS-CompFeed    <=149.1          752    206     88    118
6 months    ki1000304b-SAS-CompFeed    >160             752     91     63     28
6 months    ki1000304b-SAS-CompFeed    149.1-154.1      752    222    127     95
6 months    ki1000304b-SAS-CompFeed    154.1-160        752    233    154     79
6 months    ki1000304b-SAS-FoodSuppl   <=149.1          102     47     22     25
6 months    ki1000304b-SAS-FoodSuppl   >160             102      1      0      1
6 months    ki1000304b-SAS-FoodSuppl   149.1-154.1      102     34     22     12
6 months    ki1000304b-SAS-FoodSuppl   154.1-160        102     20     17      3
6 months    ki1017093-NIH-Birth        <=149.1          551    266    145    121
6 months    ki1017093-NIH-Birth        >160             551     20     19      1
6 months    ki1017093-NIH-Birth        149.1-154.1      551    173    117     56
6 months    ki1017093-NIH-Birth        154.1-160        551     92     69     23
6 months    ki1017093c-NIH-Crypto      <=149.1          736    309    188    121
6 months    ki1017093c-NIH-Crypto      >160             736     21     20      1
6 months    ki1017093c-NIH-Crypto      149.1-154.1      736    263    190     73
6 months    ki1017093c-NIH-Crypto      154.1-160        736    143    112     31
6 months    ki1066203-TanzaniaChild2   <=149.1          553     47     31     16
6 months    ki1066203-TanzaniaChild2   >160             553    133    123     10
6 months    ki1066203-TanzaniaChild2   149.1-154.1      553    146    109     37
6 months    ki1066203-TanzaniaChild2   154.1-160        553    227    182     45
6 months    ki1101329-Keneba           <=149.1         2002     34     14     20
6 months    ki1101329-Keneba           >160            2002    894    666    228
6 months    ki1101329-Keneba           149.1-154.1     2002    298    167    131
6 months    ki1101329-Keneba           154.1-160       2002    776    505    271
6 months    ki1112895-Guatemala BSC    <=149.1           71     34     22     12
6 months    ki1112895-Guatemala BSC    >160              71      2      2      0
6 months    ki1112895-Guatemala BSC    149.1-154.1       71     26     19      7
6 months    ki1112895-Guatemala BSC    154.1-160         71      9      7      2
6 months    ki1112895-iLiNS-Zinc       <=149.1            0      0      0      0
6 months    ki1112895-iLiNS-Zinc       >160               0      0      0      0
6 months    ki1112895-iLiNS-Zinc       149.1-154.1        0      0      0      0
6 months    ki1112895-iLiNS-Zinc       154.1-160          0      0      0      0
6 months    ki1119695-PROBIT           <=149.1         6502     10      9      1
6 months    ki1119695-PROBIT           >160            6502   4747   4327    420
6 months    ki1119695-PROBIT           149.1-154.1     6502    230    196     34
6 months    ki1119695-PROBIT           154.1-160       6502   1515   1305    210
6 months    ki1126311-ZVITAMBO         <=149.1         1902     61     32     29
6 months    ki1126311-ZVITAMBO         >160            1902    938    688    250
6 months    ki1126311-ZVITAMBO         149.1-154.1     1902    264    165     99
6 months    ki1126311-ZVITAMBO         154.1-160       1902    639    439    200
6 months    ki1135781-COHORTS          <=149.1         2947   1267    830    437
6 months    ki1135781-COHORTS          >160            2947     71     68      3
6 months    ki1135781-COHORTS          149.1-154.1     2947   1088    859    229
6 months    ki1135781-COHORTS          154.1-160       2947    521    438     83
6 months    ki1148112-LCNI-5           <=149.1          133     11      5      6
6 months    ki1148112-LCNI-5           >160             133     35     25     10
6 months    ki1148112-LCNI-5           149.1-154.1      133     36     16     20
6 months    ki1148112-LCNI-5           154.1-160        133     51     35     16
6 months    kiGH5241-JiVitA-3          <=149.1         9557   4408   2111   2297
6 months    kiGH5241-JiVitA-3          >160            9557    229    186     43
6 months    kiGH5241-JiVitA-3          149.1-154.1     9557   3318   2028   1290
6 months    kiGH5241-JiVitA-3          154.1-160       9557   1602   1165    437

## Results Table

### Parameter: TSM


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
12 months   ki1000304b-SAS-CompFeed    <=149.1              NA                0.7345133   0.6769060   0.7921206
12 months   ki1000304b-SAS-CompFeed    >160                 NA                0.4081633   0.3107955   0.5055311
12 months   ki1000304b-SAS-CompFeed    149.1-154.1          NA                0.6064257   0.5457083   0.6671431
12 months   ki1000304b-SAS-CompFeed    154.1-160            NA                0.4941176   0.4327160   0.5555193
12 months   ki1066203-TanzaniaChild2   <=149.1              NA                0.5319149   0.3891161   0.6747137
12 months   ki1066203-TanzaniaChild2   >160                 NA                0.1538462   0.0884029   0.2192894
12 months   ki1066203-TanzaniaChild2   149.1-154.1          NA                0.4065041   0.3196123   0.4933958
12 months   ki1066203-TanzaniaChild2   154.1-160            NA                0.3170732   0.2533085   0.3808378
12 months   ki1101329-Keneba           <=149.1              NA                0.6666667   0.5126407   0.8206927
12 months   ki1101329-Keneba           >160                 NA                0.3312102   0.3011479   0.3612725
12 months   ki1101329-Keneba           149.1-154.1          NA                0.5500000   0.4954790   0.6045210
12 months   ki1101329-Keneba           154.1-160            NA                0.4544320   0.4199419   0.4889220
12 months   ki1126311-ZVITAMBO         <=149.1              NA                0.5373134   0.4178946   0.6567322
12 months   ki1126311-ZVITAMBO         >160                 NA                0.3485881   0.3194372   0.3777390
12 months   ki1126311-ZVITAMBO         149.1-154.1          NA                0.4684015   0.4087560   0.5280470
12 months   ki1126311-ZVITAMBO         154.1-160            NA                0.3938115   0.3578891   0.4297340
12 months   ki1135781-COHORTS          <=149.1              NA                0.5744888   0.5531049   0.5958727
12 months   ki1135781-COHORTS          >160                 NA                0.1955556   0.1437254   0.2473857
12 months   ki1135781-COHORTS          149.1-154.1          NA                0.4120879   0.3894724   0.4347034
12 months   ki1135781-COHORTS          154.1-160            NA                0.2920269   0.2644030   0.3196508
12 months   ki1148112-LCNI-5           <=149.1              NA                0.6842105   0.5362342   0.8321868
12 months   ki1148112-LCNI-5           >160                 NA                0.3853211   0.2938440   0.4767982
12 months   ki1148112-LCNI-5           149.1-154.1          NA                0.6315789   0.5344576   0.7287003
12 months   ki1148112-LCNI-5           154.1-160            NA                0.4088050   0.3322956   0.4853145
12 months   kiGH5241-JiVitA-3          <=149.1              NA                0.5679727   0.5522281   0.5837172
12 months   kiGH5241-JiVitA-3          >160                 NA                0.2018779   0.1479687   0.2557872
12 months   kiGH5241-JiVitA-3          149.1-154.1          NA                0.4048193   0.3869685   0.4226700
12 months   kiGH5241-JiVitA-3          154.1-160            NA                0.2762238   0.2530478   0.2993998
18 months   ki1000304b-SAS-CompFeed    <=149.1              NA                0.8651163   0.8194267   0.9108059
18 months   ki1000304b-SAS-CompFeed    >160                 NA                0.5157895   0.4152327   0.6163462
18 months   ki1000304b-SAS-CompFeed    149.1-154.1          NA                0.7457627   0.6901744   0.8013510
18 months   ki1000304b-SAS-CompFeed    154.1-160            NA                0.6181102   0.5583235   0.6778970
18 months   ki1066203-TanzaniaChild2   <=149.1              NA                0.8285714   0.7035360   0.9536069
18 months   ki1066203-TanzaniaChild2   >160                 NA                0.2023810   0.1163403   0.2884216
18 months   ki1066203-TanzaniaChild2   149.1-154.1          NA                0.5000000   0.4008671   0.5991329
18 months   ki1066203-TanzaniaChild2   154.1-160            NA                0.4130435   0.3307772   0.4953098
18 months   ki1101329-Keneba           <=149.1              NA                0.8333333   0.7115643   0.9551024
18 months   ki1101329-Keneba           >160                 NA                0.4134929   0.3816460   0.4453398
18 months   ki1101329-Keneba           149.1-154.1          NA                0.6476190   0.5948517   0.7003864
18 months   ki1101329-Keneba           154.1-160            NA                0.5516796   0.5166349   0.5867242
18 months   ki1126311-ZVITAMBO         <=149.1              NA                0.6851852   0.5612695   0.8091009
18 months   ki1126311-ZVITAMBO         >160                 NA                0.4604905   0.4244199   0.4965611
18 months   ki1126311-ZVITAMBO         149.1-154.1          NA                0.5311005   0.4634226   0.5987783
18 months   ki1126311-ZVITAMBO         154.1-160            NA                0.5067698   0.4636600   0.5498797
18 months   ki1135781-COHORTS          <=149.1              NA                0.7568165   0.7339873   0.7796457
18 months   ki1135781-COHORTS          >160                 NA                0.3589744   0.2525010   0.4654478
18 months   ki1135781-COHORTS          149.1-154.1          NA                0.5974729   0.5685924   0.6263535
18 months   ki1135781-COHORTS          154.1-160            NA                0.5115385   0.4685678   0.5545091
18 months   ki1148112-LCNI-5           <=149.1              NA                0.7096774   0.5496460   0.8697088
18 months   ki1148112-LCNI-5           >160                 NA                0.4897959   0.3906713   0.5889206
18 months   ki1148112-LCNI-5           149.1-154.1          NA                0.7368421   0.6376896   0.8359946
18 months   ki1148112-LCNI-5           154.1-160            NA                0.4876033   0.3984045   0.5768021
18 months   kiGH5241-JiVitA-3          <=149.1              NA                0.6679699   0.6519615   0.6839784
18 months   kiGH5241-JiVitA-3          >160                 NA                0.2670455   0.2016794   0.3324116
18 months   kiGH5241-JiVitA-3          149.1-154.1          NA                0.4947121   0.4753167   0.5141075
18 months   kiGH5241-JiVitA-3          154.1-160            NA                0.3537361   0.3273131   0.3801591
24 months   ki1066203-TanzaniaChild2   <=149.1              NA                0.8076923   0.6558976   0.9594870
24 months   ki1066203-TanzaniaChild2   >160                 NA                0.2321429   0.1213413   0.3429444
24 months   ki1066203-TanzaniaChild2   149.1-154.1          NA                0.5774648   0.4623352   0.6925944
24 months   ki1066203-TanzaniaChild2   154.1-160            NA                0.4583333   0.3584615   0.5582052
24 months   ki1135781-COHORTS          <=149.1              NA                0.8626126   0.8441221   0.8811031
24 months   ki1135781-COHORTS          >160                 NA                0.4666667   0.3537411   0.5795923
24 months   ki1135781-COHORTS          149.1-154.1          NA                0.7543698   0.7287758   0.7799638
24 months   ki1135781-COHORTS          154.1-160            NA                0.6330097   0.5913756   0.6746438
24 months   ki1148112-LCNI-5           <=149.1              NA                0.8571429   0.7410494   0.9732363
24 months   ki1148112-LCNI-5           >160                 NA                0.5200000   0.4219412   0.6180588
24 months   ki1148112-LCNI-5           149.1-154.1          NA                0.8313253   0.7506509   0.9119997
24 months   ki1148112-LCNI-5           154.1-160            NA                0.5925926   0.5095904   0.6755948
3 months    ki1000304b-SAS-CompFeed    <=149.1              NA                0.4251012   0.3634158   0.4867866
3 months    ki1000304b-SAS-CompFeed    >160                 NA                0.1809524   0.1072755   0.2546293
3 months    ki1000304b-SAS-CompFeed    149.1-154.1          NA                0.3623188   0.3055798   0.4190579
3 months    ki1000304b-SAS-CompFeed    154.1-160            NA                0.2673993   0.2148675   0.3199310
3 months    ki1066203-TanzaniaChild2   <=149.1              NA                0.1568627   0.0569694   0.2567561
3 months    ki1066203-TanzaniaChild2   >160                 NA                0.0422535   0.0091385   0.0753686
3 months    ki1066203-TanzaniaChild2   149.1-154.1          NA                0.1346154   0.0810107   0.1882200
3 months    ki1066203-TanzaniaChild2   154.1-160            NA                0.0971660   0.0601980   0.1341339
3 months    ki1101329-Keneba           <=149.1              NA                0.4571429   0.2920652   0.6222205
3 months    ki1101329-Keneba           >160                 NA                0.1956522   0.1700118   0.2212925
3 months    ki1101329-Keneba           149.1-154.1          NA                0.3201320   0.2675897   0.3726743
3 months    ki1101329-Keneba           154.1-160            NA                0.2559301   0.2257024   0.2861578
3 months    ki1126311-ZVITAMBO         <=149.1              NA                0.3417722   0.2371604   0.4463839
3 months    ki1126311-ZVITAMBO         >160                 NA                0.1907950   0.1685124   0.2130776
3 months    ki1126311-ZVITAMBO         149.1-154.1          NA                0.2962963   0.2465658   0.3460268
3 months    ki1126311-ZVITAMBO         154.1-160            NA                0.2419162   0.2128636   0.2709688
3 months    ki1135781-COHORTS          <=149.1              NA                0.2316960   0.2138932   0.2494988
3 months    ki1135781-COHORTS          >160                 NA                0.0666667   0.0351053   0.0982280
3 months    ki1135781-COHORTS          149.1-154.1          NA                0.1413829   0.1258694   0.1568964
3 months    ki1135781-COHORTS          154.1-160            NA                0.1025641   0.0845681   0.1205601
3 months    kiGH5241-JiVitA-3          <=149.1              NA                0.4932061   0.4807429   0.5056693
3 months    kiGH5241-JiVitA-3          >160                 NA                0.1924290   0.1490320   0.2358261
3 months    kiGH5241-JiVitA-3          149.1-154.1          NA                0.3656455   0.3516818   0.3796093
3 months    kiGH5241-JiVitA-3          154.1-160            NA                0.2624495   0.2441842   0.2807149
6 months    ki1000304b-SAS-CompFeed    <=149.1              NA                0.5728155   0.5052199   0.6404112
6 months    ki1000304b-SAS-CompFeed    >160                 NA                0.3076923   0.2128015   0.4025831
6 months    ki1000304b-SAS-CompFeed    149.1-154.1          NA                0.4279279   0.3627994   0.4930565
6 months    ki1000304b-SAS-CompFeed    154.1-160            NA                0.3390558   0.2782315   0.3998801
6 months    ki1066203-TanzaniaChild2   <=149.1              NA                0.3404255   0.2048332   0.4760179
6 months    ki1066203-TanzaniaChild2   >160                 NA                0.0751880   0.0303324   0.1200435
6 months    ki1066203-TanzaniaChild2   149.1-154.1          NA                0.2534247   0.1828049   0.3240444
6 months    ki1066203-TanzaniaChild2   154.1-160            NA                0.1982379   0.1463287   0.2501471
6 months    ki1101329-Keneba           <=149.1              NA                0.5882353   0.4227661   0.7537045
6 months    ki1101329-Keneba           >160                 NA                0.2550336   0.2264540   0.2836131
6 months    ki1101329-Keneba           149.1-154.1          NA                0.4395973   0.3832302   0.4959645
6 months    ki1101329-Keneba           154.1-160            NA                0.3492268   0.3156767   0.3827769
6 months    ki1126311-ZVITAMBO         <=149.1              NA                0.4754098   0.3500549   0.6007648
6 months    ki1126311-ZVITAMBO         >160                 NA                0.2665245   0.2382222   0.2948269
6 months    ki1126311-ZVITAMBO         149.1-154.1          NA                0.3750000   0.3165861   0.4334139
6 months    ki1126311-ZVITAMBO         154.1-160            NA                0.3129890   0.2770259   0.3489522
6 months    ki1148112-LCNI-5           <=149.1              NA                0.5454545   0.2500899   0.8408192
6 months    ki1148112-LCNI-5           >160                 NA                0.2857143   0.1354849   0.4359437
6 months    ki1148112-LCNI-5           149.1-154.1          NA                0.5555556   0.3926229   0.7184882
6 months    ki1148112-LCNI-5           154.1-160            NA                0.3137255   0.1858976   0.4415534
6 months    kiGH5241-JiVitA-3          <=149.1              NA                0.5210980   0.5063500   0.5358460
6 months    kiGH5241-JiVitA-3          >160                 NA                0.1877729   0.1371895   0.2383564
6 months    kiGH5241-JiVitA-3          149.1-154.1          NA                0.3887884   0.3722008   0.4053761
6 months    kiGH5241-JiVitA-3          154.1-160            NA                0.2727840   0.2509728   0.2945953


### Parameter: E(Y)


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
12 months   ki1000304b-SAS-CompFeed    NA                   NA                0.5833333   0.5757190   0.5909477
12 months   ki1066203-TanzaniaChild2   NA                   NA                0.3211382   0.3111592   0.3311173
12 months   ki1101329-Keneba           NA                   NA                0.4173416   0.4136104   0.4210728
12 months   ki1126311-ZVITAMBO         NA                   NA                0.3857281   0.3836483   0.3878079
12 months   ki1135781-COHORTS          NA                   NA                0.4431907   0.4398934   0.4464879
12 months   ki1148112-LCNI-5           NA                   NA                0.4812968   0.4697680   0.4928255
12 months   kiGH5241-JiVitA-3          NA                   NA                0.4519219   0.4494036   0.4544403
18 months   ki1000304b-SAS-CompFeed    NA                   NA                0.7100000   0.7017947   0.7182053
18 months   ki1066203-TanzaniaChild2   NA                   NA                0.4281690   0.4103127   0.4460253
18 months   ki1101329-Keneba           NA                   NA                0.5092955   0.5050458   0.5135452
18 months   ki1126311-ZVITAMBO         NA                   NA                0.4940555   0.4917498   0.4963611
18 months   ki1135781-COHORTS          NA                   NA                0.6474045   0.6436131   0.6511959
18 months   ki1148112-LCNI-5           NA                   NA                0.5674847   0.5551883   0.5797810
18 months   kiGH5241-JiVitA-3          NA                   NA                0.5437637   0.5408723   0.5466551
24 months   ki1066203-TanzaniaChild2   NA                   NA                0.4779116   0.4571178   0.4987055
24 months   ki1135781-COHORTS          NA                   NA                0.7743436   0.7708841   0.7778031
24 months   ki1148112-LCNI-5           NA                   NA                0.6543909   0.6403700   0.6684119
3 months    ki1000304b-SAS-CompFeed    NA                   NA                0.3296337   0.3243360   0.3349315
3 months    ki1066203-TanzaniaChild2   NA                   NA                0.0989933   0.0960007   0.1019859
3 months    ki1101329-Keneba           NA                   NA                0.2418650   0.2396115   0.2441184
3 months    ki1126311-ZVITAMBO         NA                   NA                0.2272914   0.2256112   0.2289716
3 months    ki1135781-COHORTS          NA                   NA                0.1661754   0.1646755   0.1676752
3 months    kiGH5241-JiVitA-3          NA                   NA                0.4035193   0.4019403   0.4050983
6 months    ki1000304b-SAS-CompFeed    NA                   NA                0.4255319   0.4184009   0.4326630
6 months    ki1066203-TanzaniaChild2   NA                   NA                0.1952984   0.1887535   0.2018433
6 months    ki1101329-Keneba           NA                   NA                0.3246753   0.3214126   0.3279380
6 months    ki1126311-ZVITAMBO         NA                   NA                0.3038906   0.3017060   0.3060752
6 months    ki1148112-LCNI-5           NA                   NA                0.3909774   0.3704286   0.4115263
6 months    kiGH5241-JiVitA-3          NA                   NA                0.4255520   0.4235523   0.4275516


### Parameter: RR


agecat      studyid                    intervention_level   baseline_level    estimate    ci_lower   ci_upper
----------  -------------------------  -------------------  ---------------  ---------  ----------  ---------
12 months   ki1000304b-SAS-CompFeed    >160                 <=149.1           1.743147   1.3560541   2.240738
12 months   ki1000304b-SAS-CompFeed    149.1-154.1          <=149.1           2.283286   2.0105966   2.592960
12 months   ki1000304b-SAS-CompFeed    154.1-160            <=149.1           1.959549   1.6917589   2.269728
12 months   ki1066203-TanzaniaChild2   >160                 <=149.1           1.335400   0.8075252   2.208343
12 months   ki1066203-TanzaniaChild2   149.1-154.1          <=149.1           2.147335   1.5235794   3.026458
12 months   ki1066203-TanzaniaChild2   154.1-160            <=149.1           1.815022   1.2977940   2.538388
12 months   ki1101329-Keneba           >160                 <=149.1           1.643479   1.2822122   2.106533
12 months   ki1101329-Keneba           149.1-154.1          <=149.1           2.281881   1.7746314   2.934119
12 months   ki1101329-Keneba           154.1-160            <=149.1           1.977133   1.5503210   2.521449
12 months   ki1126311-ZVITAMBO         >160                 <=149.1           1.913169   1.5087741   2.425954
12 months   ki1126311-ZVITAMBO         149.1-154.1          <=149.1           2.391085   1.8507686   3.089142
12 months   ki1126311-ZVITAMBO         154.1-160            <=149.1           2.081163   1.6367043   2.646319
12 months   ki1135781-COHORTS          >160                 <=149.1           1.405509   1.0754701   1.836829
12 months   ki1135781-COHORTS          149.1-154.1          <=149.1           2.048919   1.9174570   2.189394
12 months   ki1135781-COHORTS          154.1-160            <=149.1           1.662504   1.5018101   1.840392
12 months   ki1148112-LCNI-5           >160                 <=149.1           1.756216   1.2738133   2.421309
12 months   ki1148112-LCNI-5           149.1-154.1          <=149.1           2.517023   1.9303620   3.281978
12 months   ki1148112-LCNI-5           154.1-160            <=149.1           1.817541   1.3654393   2.419334
12 months   kiGH5241-JiVitA-3          >160                 <=149.1           1.426803   1.0908554   1.866210
12 months   kiGH5241-JiVitA-3          149.1-154.1          <=149.1           2.039581   1.9360683   2.148628
12 months   kiGH5241-JiVitA-3          154.1-160            <=149.1           1.626341   1.4887981   1.776592
18 months   ki1000304b-SAS-CompFeed    >160                 <=149.1           1.815223   1.4832334   2.221521
18 months   ki1000304b-SAS-CompFeed    149.1-154.1          <=149.1           2.367981   2.1612462   2.594490
18 months   ki1000304b-SAS-CompFeed    154.1-160            <=149.1           2.043129   1.8299306   2.281166
18 months   ki1066203-TanzaniaChild2   >160                 <=149.1           1.276667   0.8131199   2.004476
18 months   ki1066203-TanzaniaChild2   149.1-154.1          <=149.1           1.828413   1.4251635   2.345761
18 months   ki1066203-TanzaniaChild2   154.1-160            <=149.1           1.646251   1.2822521   2.113581
18 months   ki1101329-Keneba           >160                 <=149.1           1.642454   1.3923783   1.937444
18 months   ki1101329-Keneba           149.1-154.1          <=149.1           2.175248   1.8401344   2.571391
18 months   ki1101329-Keneba           154.1-160            <=149.1           1.938696   1.6531493   2.273564
18 months   ki1126311-ZVITAMBO         >160                 <=149.1           1.958281   1.6079859   2.384888
18 months   ki1126311-ZVITAMBO         149.1-154.1          <=149.1           2.170852   1.7399990   2.708391
18 months   ki1126311-ZVITAMBO         154.1-160            <=149.1           2.095118   1.7155813   2.558620
18 months   ki1135781-COHORTS          >160                 <=149.1           1.606924   1.1926612   2.165077
18 months   ki1135781-COHORTS          149.1-154.1          <=149.1           2.202197   2.0802284   2.331317
18 months   ki1135781-COHORTS          154.1-160            <=149.1           1.965817   1.7979617   2.149344
18 months   ki1148112-LCNI-5           >160                 <=149.1           1.994048   1.4728068   2.699763
18 months   ki1148112-LCNI-5           149.1-154.1          <=149.1           2.824348   2.1720695   3.672507
18 months   ki1148112-LCNI-5           154.1-160            <=149.1           1.987897   1.4869220   2.657661
18 months   kiGH5241-JiVitA-3          >160                 <=149.1           1.491506   1.1663055   1.907383
18 months   kiGH5241-JiVitA-3          149.1-154.1          <=149.1           2.097236   2.0030482   2.195853
18 months   kiGH5241-JiVitA-3          154.1-160            <=149.1           1.698200   1.5700720   1.836784
24 months   ki1066203-TanzaniaChild2   >160                 <=149.1           1.332977   0.7980762   2.226389
24 months   ki1066203-TanzaniaChild2   149.1-154.1          <=149.1           2.044098   1.5542135   2.688392
24 months   ki1066203-TanzaniaChild2   154.1-160            <=149.1           1.763782   1.3227435   2.351875
24 months   ki1135781-COHORTS          >160                 <=149.1           1.717710   1.3472442   2.190047
24 months   ki1135781-COHORTS          149.1-154.1          <=149.1           2.397718   2.3033984   2.495900
24 months   ki1135781-COHORTS          154.1-160            <=149.1           2.083040   1.9438139   2.232239
24 months   ki1148112-LCNI-5           >160                 <=149.1           1.834307   1.4542527   2.313684
24 months   ki1148112-LCNI-5           149.1-154.1          <=149.1           2.637627   2.2328085   3.115840
24 months   ki1148112-LCNI-5           154.1-160            <=149.1           1.996425   1.6429881   2.425892
3 months    ki1000304b-SAS-CompFeed    >160                 <=149.1           1.530614   0.9934441   2.358239
3 months    ki1000304b-SAS-CompFeed    149.1-154.1          <=149.1           2.345062   1.8942404   2.903178
3 months    ki1000304b-SAS-CompFeed    154.1-160            <=149.1           1.875781   1.4693063   2.394704
3 months    ki1066203-TanzaniaChild2   >160                 <=149.1           1.309135   0.4768916   3.593758
3 months    ki1066203-TanzaniaChild2   149.1-154.1          <=149.1           2.358847   1.1130476   4.999032
3 months    ki1066203-TanzaniaChild2   154.1-160            <=149.1           1.857875   0.8848094   3.901064
3 months    ki1101329-Keneba           >160                 <=149.1           1.534169   1.0448121   2.252726
3 months    ki1101329-Keneba           149.1-154.1          <=149.1           2.014334   1.3547711   2.995003
3 months    ki1101329-Keneba           154.1-160            <=149.1           1.750405   1.1971157   2.559416
3 months    ki1126311-ZVITAMBO         >160                 <=149.1           1.747615   1.2594085   2.425073
3 months    ki1126311-ZVITAMBO         149.1-154.1          <=149.1           2.379621   1.6784282   3.373748
3 months    ki1126311-ZVITAMBO         154.1-160            <=149.1           2.029580   1.4608612   2.819703
3 months    ki1135781-COHORTS          >160                 <=149.1           1.333402   0.8254048   2.154046
3 months    ki1135781-COHORTS          149.1-154.1          <=149.1           1.840815   1.6100315   2.104680
3 months    ki1135781-COHORTS          154.1-160            <=149.1           1.556853   1.2854631   1.885540
3 months    kiGH5241-JiVitA-3          >160                 <=149.1           1.477216   1.1773023   1.853533
3 months    kiGH5241-JiVitA-3          149.1-154.1          <=149.1           2.098797   2.0048549   2.197142
3 months    kiGH5241-JiVitA-3          154.1-160            <=149.1           1.702554   1.5810484   1.833398
6 months    ki1000304b-SAS-CompFeed    >160                 <=149.1           1.711137   1.2299288   2.380616
6 months    ki1000304b-SAS-CompFeed    149.1-154.1          <=149.1           2.110787   1.7410289   2.559073
6 months    ki1000304b-SAS-CompFeed    154.1-160            <=149.1           1.807439   1.4581738   2.240361
6 months    ki1066203-TanzaniaChild2   >160                 <=149.1           1.247155   0.6086830   2.555344
6 months    ki1066203-TanzaniaChild2   149.1-154.1          <=149.1           2.105252   1.2947671   3.423074
6 months    ki1066203-TanzaniaChild2   154.1-160            <=149.1           1.790194   1.1114398   2.883461
6 months    ki1101329-Keneba           >160                 <=149.1           1.542735   1.1396939   2.088308
6 months    ki1101329-Keneba           149.1-154.1          <=149.1           2.111324   1.5498709   2.876169
6 months    ki1101329-Keneba           154.1-160            <=149.1           1.810649   1.3450554   2.437410
6 months    ki1126311-ZVITAMBO         >160                 <=149.1           1.751759   1.3183264   2.327694
6 months    ki1126311-ZVITAMBO         149.1-154.1          <=149.1           2.200739   1.6201862   2.989318
6 months    ki1126311-ZVITAMBO         154.1-160            <=149.1           1.931615   1.4487928   2.575341
6 months    ki1148112-LCNI-5           >160                 <=149.1           1.688448   0.7937629   3.591570
6 months    ki1148112-LCNI-5           149.1-154.1          <=149.1           2.769089   1.4958528   5.126076
6 months    ki1148112-LCNI-5           154.1-160            <=149.1           1.777421   0.9025693   3.500258
6 months    kiGH5241-JiVitA-3          >160                 <=149.1           1.433818   1.0935968   1.879883
6 months    kiGH5241-JiVitA-3          149.1-154.1          <=149.1           2.108748   2.0035009   2.219525
6 months    kiGH5241-JiVitA-3          154.1-160            <=149.1           1.687890   1.5506284   1.837302


### Parameter: PAR


agecat      studyid                    intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -------------------  ---------------  -----------  -----------  -----------
12 months   ki1000304b-SAS-CompFeed    <=149.1              NA                -0.1511799   -0.2092883   -0.0930716
12 months   ki1066203-TanzaniaChild2   <=149.1              NA                -0.2107767   -0.3539237   -0.0676297
12 months   ki1101329-Keneba           <=149.1              NA                -0.2493251   -0.4033963   -0.0952539
12 months   ki1126311-ZVITAMBO         <=149.1              NA                -0.1515854   -0.2710223   -0.0321485
12 months   ki1135781-COHORTS          <=149.1              NA                -0.1312981   -0.1529347   -0.1096616
12 months   ki1148112-LCNI-5           <=149.1              NA                -0.2029138   -0.3513385   -0.0544890
12 months   kiGH5241-JiVitA-3          <=149.1              NA                -0.1160507   -0.1319954   -0.1001060
18 months   ki1000304b-SAS-CompFeed    <=149.1              NA                -0.1551163   -0.2015368   -0.1086957
18 months   ki1066203-TanzaniaChild2   <=149.1              NA                -0.4004024   -0.5267065   -0.2740984
18 months   ki1101329-Keneba           <=149.1              NA                -0.3240378   -0.4458810   -0.2021947
18 months   ki1126311-ZVITAMBO         <=149.1              NA                -0.1911297   -0.3150668   -0.0671926
18 months   ki1135781-COHORTS          <=149.1              NA                -0.1094120   -0.1325539   -0.0862701
18 months   ki1148112-LCNI-5           <=149.1              NA                -0.1421928   -0.3026959    0.0183104
18 months   kiGH5241-JiVitA-3          <=149.1              NA                -0.1242062   -0.1404737   -0.1079388
24 months   ki1066203-TanzaniaChild2   <=149.1              NA                -0.3297807   -0.4829930   -0.1765684
24 months   ki1135781-COHORTS          <=149.1              NA                -0.0882690   -0.1070804   -0.0694576
24 months   ki1148112-LCNI-5           <=149.1              NA                -0.2027519   -0.3196890   -0.0858149
3 months    ki1000304b-SAS-CompFeed    <=149.1              NA                -0.0954675   -0.1573800   -0.0335550
3 months    ki1066203-TanzaniaChild2   <=149.1              NA                -0.0578695   -0.1578076    0.0420687
3 months    ki1101329-Keneba           <=149.1              NA                -0.2152779   -0.3803709   -0.0501848
3 months    ki1126311-ZVITAMBO         <=149.1              NA                -0.1144807   -0.2191059   -0.0098555
3 months    ki1135781-COHORTS          <=149.1              NA                -0.0655206   -0.0833865   -0.0476548
3 months    kiGH5241-JiVitA-3          <=149.1              NA                -0.0896868   -0.1022496   -0.0771239
6 months    ki1000304b-SAS-CompFeed    <=149.1              NA                -0.1472836   -0.2152543   -0.0793129
6 months    ki1066203-TanzaniaChild2   <=149.1              NA                -0.1451272   -0.2808774   -0.0093769
6 months    ki1101329-Keneba           <=149.1              NA                -0.2635600   -0.4290614   -0.0980586
6 months    ki1126311-ZVITAMBO         <=149.1              NA                -0.1715192   -0.2968932   -0.0461452
6 months    ki1148112-LCNI-5           <=149.1              NA                -0.1544771   -0.4505557    0.1416015
6 months    kiGH5241-JiVitA-3          <=149.1              NA                -0.0955461   -0.1104290   -0.0806631


### Parameter: PAF


agecat      studyid                    intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  -----------  ----------
12 months   ki1000304b-SAS-CompFeed    <=149.1              NA                0.5480468    0.5106458   0.5825893
12 months   ki1066203-TanzaniaChild2   <=149.1              NA                0.4532370    0.2835779   0.5827184
12 months   ki1101329-Keneba           <=149.1              NA                0.4652802    0.3261855   0.5756617
12 months   ki1126311-ZVITAMBO         <=149.1              NA                0.5122161    0.3907738   0.6094502
12 months   ki1135781-COHORTS          <=149.1              NA                0.5376588    0.5197717   0.5548798
12 months   ki1148112-LCNI-5           <=149.1              NA                0.5051169    0.3848187   0.6018909
12 months   kiGH5241-JiVitA-3          <=149.1              NA                0.5487237    0.5357817   0.5613049
18 months   ki1000304b-SAS-CompFeed    <=149.1              NA                0.5598761    0.5354267   0.5830387
18 months   ki1066203-TanzaniaChild2   <=149.1              NA                0.4035475    0.3024592   0.4899860
18 months   ki1101329-Keneba           <=149.1              NA                0.4572761    0.3717353   0.5311702
18 months   ki1126311-ZVITAMBO         <=149.1              NA                0.5137605    0.4173356   0.5942281
18 months   ki1135781-COHORTS          <=149.1              NA                0.5749002    0.5616349   0.5877640
18 months   ki1148112-LCNI-5           <=149.1              NA                0.5505081    0.4362250   0.6416249
18 months   kiGH5241-JiVitA-3          <=149.1              NA                0.5569418    0.5459307   0.5676859
24 months   ki1066203-TanzaniaChild2   <=149.1              NA                0.4466143    0.3288704   0.5437011
24 months   ki1135781-COHORTS          <=149.1              NA                0.5924830    0.5834615   0.6013090
24 months   ki1148112-LCNI-5           <=149.1              NA                0.5339471    0.4654497   0.5936672
3 months    ki1000304b-SAS-CompFeed    <=149.1              NA                0.5394916    0.4671041   0.6020461
3 months    ki1066203-TanzaniaChild2   <=149.1              NA                0.4679843   -0.0064761   0.7187805
3 months    ki1101329-Keneba           <=149.1              NA                0.4108531    0.1545211   0.5894704
3 months    ki1126311-ZVITAMBO         <=149.1              NA                0.4857459    0.3015296   0.6213766
3 months    ki1135781-COHORTS          <=149.1              NA                0.5118893    0.4726273   0.5482282
3 months    kiGH5241-JiVitA-3          <=149.1              NA                0.5587553    0.5473267   0.5698953
6 months    ki1000304b-SAS-CompFeed    <=149.1              NA                0.5242571    0.4640358   0.5777119
6 months    ki1066203-TanzaniaChild2   <=149.1              NA                0.4365569    0.1596856   0.6222032
6 months    ki1101329-Keneba           <=149.1              NA                0.4241730    0.2369799   0.5654417
6 months    ki1126311-ZVITAMBO         <=149.1              NA                0.4722952    0.3130148   0.5946457
6 months    ki1148112-LCNI-5           <=149.1              NA                0.5116837    0.1586483   0.7165837
6 months    kiGH5241-JiVitA-3          <=149.1              NA                0.5580881    0.5452264   0.5705861


