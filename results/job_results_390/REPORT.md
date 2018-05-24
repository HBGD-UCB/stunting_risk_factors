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

**Intervention Variable:** birthlen

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid


The following strata were considered:

* agecat: 12 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 12 months, studyid: ki1000108-IRC
* agecat: 12 months, studyid: ki1000304b-SAS-CompFeed
* agecat: 12 months, studyid: ki1017093c-NIH-Crypto
* agecat: 12 months, studyid: ki1101329-Keneba
* agecat: 12 months, studyid: ki1119695-PROBIT
* agecat: 12 months, studyid: ki1126311-ZVITAMBO
* agecat: 12 months, studyid: ki1135781-COHORTS
* agecat: 12 months, studyid: kiGH5241-JiVitA-3
* agecat: 12 months, studyid: kiGH5241-JiVitA-4
* agecat: 18 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 18 months, studyid: ki1000108-IRC
* agecat: 18 months, studyid: ki1000304b-SAS-CompFeed
* agecat: 18 months, studyid: ki1017093c-NIH-Crypto
* agecat: 18 months, studyid: ki1101329-Keneba
* agecat: 18 months, studyid: ki1119695-PROBIT
* agecat: 18 months, studyid: ki1126311-ZVITAMBO
* agecat: 18 months, studyid: ki1135781-COHORTS
* agecat: 18 months, studyid: kiGH5241-JiVitA-3
* agecat: 18 months, studyid: kiGH5241-JiVitA-4
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 24 months, studyid: ki1000108-IRC
* agecat: 24 months, studyid: ki1000304b-SAS-CompFeed
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto
* agecat: 24 months, studyid: ki1101329-Keneba
* agecat: 24 months, studyid: ki1119695-PROBIT
* agecat: 24 months, studyid: ki1126311-ZVITAMBO
* agecat: 24 months, studyid: ki1135781-COHORTS
* agecat: 24 months, studyid: kiGH5241-JiVitA-3
* agecat: 24 months, studyid: kiGH5241-JiVitA-4
* agecat: 3 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 3 months, studyid: ki1000108-IRC
* agecat: 3 months, studyid: ki1000304b-SAS-CompFeed
* agecat: 3 months, studyid: ki1017093c-NIH-Crypto
* agecat: 3 months, studyid: ki1101329-Keneba
* agecat: 3 months, studyid: ki1119695-PROBIT
* agecat: 3 months, studyid: ki1126311-ZVITAMBO
* agecat: 3 months, studyid: ki1135781-COHORTS
* agecat: 3 months, studyid: kiGH5241-JiVitA-3
* agecat: 3 months, studyid: kiGH5241-JiVitA-4
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 6 months, studyid: ki1000108-IRC
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto
* agecat: 6 months, studyid: ki1101329-Keneba
* agecat: 6 months, studyid: ki1119695-PROBIT
* agecat: 6 months, studyid: ki1126311-ZVITAMBO
* agecat: 6 months, studyid: ki1135781-COHORTS
* agecat: 6 months, studyid: kiGH5241-JiVitA-3
* agecat: 6 months, studyid: kiGH5241-JiVitA-4

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 12 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 12 months, studyid: ki1017093c-NIH-Crypto
* agecat: 12 months, studyid: ki1119695-PROBIT
* agecat: 18 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 18 months, studyid: ki1000108-IRC
* agecat: 18 months, studyid: ki1017093c-NIH-Crypto
* agecat: 18 months, studyid: ki1119695-PROBIT
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 24 months, studyid: ki1000108-IRC
* agecat: 24 months, studyid: ki1000304b-SAS-CompFeed
* agecat: 24 months, studyid: ki1119695-PROBIT
* agecat: 24 months, studyid: kiGH5241-JiVitA-3
* agecat: 3 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 3 months, studyid: ki1017093c-NIH-Crypto
* agecat: 3 months, studyid: ki1119695-PROBIT
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto
* agecat: 6 months, studyid: ki1119695-PROBIT

## Methods Detail

**todo**




# Results Detail

## Results Plots
![](/tmp/ff341355-0bd0-49d3-914d-726aef36f224/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/ff341355-0bd0-49d3-914d-726aef36f224/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/ff341355-0bd0-49d3-914d-726aef36f224/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/ff341355-0bd0-49d3-914d-726aef36f224/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Data Summary

agecat      studyid                    A                n     nA   nAY0   nAY1
----------  -------------------------  ----------  ------  -----  -----  -----
12 months   ki1000108-CMC-V-BCS-2002   <=46.8         103     33      8     25
12 months   ki1000108-CMC-V-BCS-2002   >51            103      2      1      1
12 months   ki1000108-CMC-V-BCS-2002   46.8-48.8      103     33     14     19
12 months   ki1000108-CMC-V-BCS-2002   48.8-51        103     35     16     19
12 months   ki1000108-IRC              <=46.8         390     67      6     61
12 months   ki1000108-IRC              >51            390     73     47     26
12 months   ki1000108-IRC              46.8-48.8      390    107     56     51
12 months   ki1000108-IRC              48.8-51        390    143     82     61
12 months   ki1000304b-SAS-CompFeed    <=46.8         885    319     34    285
12 months   ki1000304b-SAS-CompFeed    >51            885     64     47     17
12 months   ki1000304b-SAS-CompFeed    46.8-48.8      885    308    148    160
12 months   ki1000304b-SAS-CompFeed    48.8-51        885    194    138     56
12 months   ki1017093c-NIH-Crypto      <=46.8         729    147     14    133
12 months   ki1017093c-NIH-Crypto      >51            729     68     65      3
12 months   ki1017093c-NIH-Crypto      46.8-48.8      729    278    170    108
12 months   ki1017093c-NIH-Crypto      48.8-51        729    236    203     33
12 months   ki1101329-Keneba           <=46.8        1449    136     22    114
12 months   ki1101329-Keneba           >51           1449    315    253     62
12 months   ki1101329-Keneba           46.8-48.8     1449    308    132    176
12 months   ki1101329-Keneba           48.8-51       1449    690    453    237
12 months   ki1119695-PROBIT           <=46.8        7943     31      3     28
12 months   ki1119695-PROBIT           >51           7943   4635   4347    288
12 months   ki1119695-PROBIT           46.8-48.8     7943    241     86    155
12 months   ki1119695-PROBIT           48.8-51       7943   3036   2350    686
12 months   ki1126311-ZVITAMBO         <=46.8        2516    437     96    341
12 months   ki1126311-ZVITAMBO         >51           2516    231    195     36
12 months   ki1126311-ZVITAMBO         46.8-48.8     2516    829    530    299
12 months   ki1126311-ZVITAMBO         48.8-51       2516   1019    743    276
12 months   ki1135781-COHORTS          <=46.8        9274   1823    359   1464
12 months   ki1135781-COHORTS          >51           9274   1039    876    163
12 months   ki1135781-COHORTS          46.8-48.8     9274   3080   1742   1338
12 months   ki1135781-COHORTS          48.8-51       9274   3332   2472    860
12 months   kiGH5241-JiVitA-3          <=46.8        8221   3785    858   2927
12 months   kiGH5241-JiVitA-3          >51           8221    741    625    116
12 months   kiGH5241-JiVitA-3          46.8-48.8     8221   2559   2048    511
12 months   kiGH5241-JiVitA-3          48.8-51       8221   1136    977    159
12 months   kiGH5241-JiVitA-4          <=46.8        1168    362     64    298
12 months   kiGH5241-JiVitA-4          >51           1168    238    183     55
12 months   kiGH5241-JiVitA-4          46.8-48.8     1168    318    220     98
12 months   kiGH5241-JiVitA-4          48.8-51       1168    250    188     62
18 months   ki1000108-CMC-V-BCS-2002   <=46.8         103     33      4     29
18 months   ki1000108-CMC-V-BCS-2002   >51            103      2      1      1
18 months   ki1000108-CMC-V-BCS-2002   46.8-48.8      103     33      8     25
18 months   ki1000108-CMC-V-BCS-2002   48.8-51        103     35     11     24
18 months   ki1000108-IRC              <=46.8         391     68      3     65
18 months   ki1000108-IRC              >51            391     73     46     27
18 months   ki1000108-IRC              46.8-48.8      391    107     52     55
18 months   ki1000108-IRC              48.8-51        391    143     69     74
18 months   ki1000304b-SAS-CompFeed    <=46.8         854    309     20    289
18 months   ki1000304b-SAS-CompFeed    >51            854     58     32     26
18 months   ki1000304b-SAS-CompFeed    46.8-48.8      854    297    100    197
18 months   ki1000304b-SAS-CompFeed    48.8-51        854    190     92     98
18 months   ki1017093c-NIH-Crypto      <=46.8         715    146     13    133
18 months   ki1017093c-NIH-Crypto      >51            715     68     64      4
18 months   ki1017093c-NIH-Crypto      46.8-48.8      715    273    140    133
18 months   ki1017093c-NIH-Crypto      48.8-51        715    228    181     47
18 months   ki1101329-Keneba           <=46.8        1369    133     15    118
18 months   ki1101329-Keneba           >51           1369    303    214     89
18 months   ki1101329-Keneba           46.8-48.8     1369    285     99    186
18 months   ki1101329-Keneba           48.8-51       1369    648    339    309
18 months   ki1119695-PROBIT           <=46.8        7475     28      3     25
18 months   ki1119695-PROBIT           >51           7475   4338   4023    315
18 months   ki1119695-PROBIT           46.8-48.8     7475    225     81    144
18 months   ki1119695-PROBIT           48.8-51       7475   2884   2198    686
18 months   ki1126311-ZVITAMBO         <=46.8        1835    351     71    280
18 months   ki1126311-ZVITAMBO         >51           1835    147    108     39
18 months   ki1126311-ZVITAMBO         46.8-48.8     1835    618    312    306
18 months   ki1126311-ZVITAMBO         48.8-51       1835    719    450    269
18 months   ki1135781-COHORTS          <=46.8        2906    350     20    330
18 months   ki1135781-COHORTS          >51           2906    461    273    188
18 months   ki1135781-COHORTS          46.8-48.8     2906    850    219    631
18 months   ki1135781-COHORTS          48.8-51       2906   1245    545    700
18 months   kiGH5241-JiVitA-3          <=46.8        7190   3315    573   2742
18 months   kiGH5241-JiVitA-3          >51           7190    618    458    160
18 months   kiGH5241-JiVitA-3          46.8-48.8     7190   2275   1485    790
18 months   kiGH5241-JiVitA-3          48.8-51       7190    982    771    211
18 months   kiGH5241-JiVitA-4          <=46.8        1137    358     42    316
18 months   kiGH5241-JiVitA-4          >51           1137    227    145     82
18 months   kiGH5241-JiVitA-4          46.8-48.8     1137    314    173    141
18 months   kiGH5241-JiVitA-4          48.8-51       1137    238    150     88
24 months   ki1000108-CMC-V-BCS-2002   <=46.8         103     33      1     32
24 months   ki1000108-CMC-V-BCS-2002   >51            103      2      0      2
24 months   ki1000108-CMC-V-BCS-2002   46.8-48.8      103     33      3     30
24 months   ki1000108-CMC-V-BCS-2002   48.8-51        103     35      7     28
24 months   ki1000108-IRC              <=46.8         391     68      3     65
24 months   ki1000108-IRC              >51            391     73     39     34
24 months   ki1000108-IRC              46.8-48.8      391    107     45     62
24 months   ki1000108-IRC              48.8-51        391    143     54     89
24 months   ki1000304b-SAS-CompFeed    <=46.8          73     26      2     24
24 months   ki1000304b-SAS-CompFeed    >51             73      6      4      2
24 months   ki1000304b-SAS-CompFeed    46.8-48.8       73     25      6     19
24 months   ki1000304b-SAS-CompFeed    48.8-51         73     16      9      7
24 months   ki1017093c-NIH-Crypto      <=46.8         634    132     11    121
24 months   ki1017093c-NIH-Crypto      >51            634     63     57      6
24 months   ki1017093c-NIH-Crypto      46.8-48.8      634    240    105    135
24 months   ki1017093c-NIH-Crypto      48.8-51        634    199    143     56
24 months   ki1101329-Keneba           <=46.8        1303    122     17    105
24 months   ki1101329-Keneba           >51           1303    286    185    101
24 months   ki1101329-Keneba           46.8-48.8     1303    280     80    200
24 months   ki1101329-Keneba           48.8-51       1303    615    259    356
24 months   ki1119695-PROBIT           <=46.8        2076      5      0      5
24 months   ki1119695-PROBIT           >51           2076   1287   1104    183
24 months   ki1119695-PROBIT           46.8-48.8     2076     54     17     37
24 months   ki1119695-PROBIT           48.8-51       2076    730    527    203
24 months   ki1126311-ZVITAMBO         <=46.8         465    122      9    113
24 months   ki1126311-ZVITAMBO         >51            465     23     14      9
24 months   ki1126311-ZVITAMBO         46.8-48.8      465    167     43    124
24 months   ki1126311-ZVITAMBO         48.8-51        465    153     63     90
24 months   ki1135781-COHORTS          <=46.8        2820    335     10    325
24 months   ki1135781-COHORTS          >51           2820    437    183    254
24 months   ki1135781-COHORTS          46.8-48.8     2820    826    115    711
24 months   ki1135781-COHORTS          48.8-51       2820   1222    350    872
24 months   kiGH5241-JiVitA-3          <=46.8           3      2      1      1
24 months   kiGH5241-JiVitA-3          >51              3      0      0      0
24 months   kiGH5241-JiVitA-3          46.8-48.8        3      1      1      0
24 months   kiGH5241-JiVitA-3          48.8-51          3      0      0      0
24 months   kiGH5241-JiVitA-4          <=46.8         999    326     34    292
24 months   kiGH5241-JiVitA-4          >51            999    194    113     81
24 months   kiGH5241-JiVitA-4          46.8-48.8      999    274    136    138
24 months   kiGH5241-JiVitA-4          48.8-51        999    205    119     86
3 months    ki1000108-CMC-V-BCS-2002   <=46.8         101     33     11     22
3 months    ki1000108-CMC-V-BCS-2002   >51            101      2      2      0
3 months    ki1000108-CMC-V-BCS-2002   46.8-48.8      101     32     23      9
3 months    ki1000108-CMC-V-BCS-2002   48.8-51        101     34     24     10
3 months    ki1000108-IRC              <=46.8         391     68     12     56
3 months    ki1000108-IRC              >51            391     73     66      7
3 months    ki1000108-IRC              46.8-48.8      391    107     75     32
3 months    ki1000108-IRC              48.8-51        391    143    113     30
3 months    ki1000304b-SAS-CompFeed    <=46.8         971    356     97    259
3 months    ki1000304b-SAS-CompFeed    >51            971     68     62      6
3 months    ki1000304b-SAS-CompFeed    46.8-48.8      971    342    292     50
3 months    ki1000304b-SAS-CompFeed    48.8-51        971    205    197      8
3 months    ki1017093c-NIH-Crypto      <=46.8         758    151     44    107
3 months    ki1017093c-NIH-Crypto      >51            758     71     71      0
3 months    ki1017093c-NIH-Crypto      46.8-48.8      758    293    279     14
3 months    ki1017093c-NIH-Crypto      48.8-51        758    243    243      0
3 months    ki1101329-Keneba           <=46.8        1550    151     33    118
3 months    ki1101329-Keneba           >51           1550    332    308     24
3 months    ki1101329-Keneba           46.8-48.8     1550    337    231    106
3 months    ki1101329-Keneba           48.8-51       1550    730    641     89
3 months    ki1119695-PROBIT           <=46.8        8125     33      3     30
3 months    ki1119695-PROBIT           >51           8125   4735   4685     50
3 months    ki1119695-PROBIT           46.8-48.8     8125    250    110    140
3 months    ki1119695-PROBIT           48.8-51       8125   3107   2725    382
3 months    ki1126311-ZVITAMBO         <=46.8        3473    629    201    428
3 months    ki1126311-ZVITAMBO         >51           3473    332    315     17
3 months    ki1126311-ZVITAMBO         46.8-48.8     3473   1098    941    157
3 months    ki1126311-ZVITAMBO         48.8-51       3473   1414   1284    130
3 months    ki1135781-COHORTS          <=46.8       10097   2015    750   1265
3 months    ki1135781-COHORTS          >51          10097   1134   1122     12
3 months    ki1135781-COHORTS          46.8-48.8    10097   3341   2992    349
3 months    ki1135781-COHORTS          48.8-51      10097   3607   3439    168
3 months    kiGH5241-JiVitA-3          <=46.8       13170   6314   1732   4582
3 months    kiGH5241-JiVitA-3          >51          13170   1143   1027    116
3 months    kiGH5241-JiVitA-3          46.8-48.8    13170   3922   3479    443
3 months    kiGH5241-JiVitA-3          48.8-51      13170   1791   1621    170
3 months    kiGH5241-JiVitA-4          <=46.8        1156    364    118    246
3 months    kiGH5241-JiVitA-4          >51           1156    220    198     22
3 months    kiGH5241-JiVitA-4          46.8-48.8     1156    322    296     26
3 months    kiGH5241-JiVitA-4          48.8-51       1156    250    228     22
6 months    ki1000108-CMC-V-BCS-2002   <=46.8         101     32      8     24
6 months    ki1000108-CMC-V-BCS-2002   >51            101      2      1      1
6 months    ki1000108-CMC-V-BCS-2002   46.8-48.8      101     33     18     15
6 months    ki1000108-CMC-V-BCS-2002   48.8-51        101     34     20     14
6 months    ki1000108-IRC              <=46.8         389     67      7     60
6 months    ki1000108-IRC              >51            389     72     57     15
6 months    ki1000108-IRC              46.8-48.8      389    107     64     43
6 months    ki1000108-IRC              48.8-51        389    143     96     47
6 months    ki1000304b-SAS-CompFeed    <=46.8         806    291     56    235
6 months    ki1000304b-SAS-CompFeed    >51            806     58     51      7
6 months    ki1000304b-SAS-CompFeed    46.8-48.8      806    286    202     84
6 months    ki1000304b-SAS-CompFeed    48.8-51        806    171    154     17
6 months    ki1017093c-NIH-Crypto      <=46.8         736    147     18    129
6 months    ki1017093c-NIH-Crypto      >51            736     69     69      0
6 months    ki1017093c-NIH-Crypto      46.8-48.8      736    281    204     77
6 months    ki1017093c-NIH-Crypto      48.8-51        736    239    219     20
6 months    ki1101329-Keneba           <=46.8        1440    136     25    111
6 months    ki1101329-Keneba           >51           1440    312    274     38
6 months    ki1101329-Keneba           46.8-48.8     1440    307    171    136
6 months    ki1101329-Keneba           48.8-51       1440    685    534    151
6 months    ki1119695-PROBIT           <=46.8        7807     31      2     29
6 months    ki1119695-PROBIT           >51           7807   4548   4422    126
6 months    ki1119695-PROBIT           46.8-48.8     7807    238     94    144
6 months    ki1119695-PROBIT           48.8-51       7807   2990   2475    515
6 months    ki1126311-ZVITAMBO         <=46.8        2264    411    106    305
6 months    ki1126311-ZVITAMBO         >51           2264    227    205     22
6 months    ki1126311-ZVITAMBO         46.8-48.8     2264    715    521    194
6 months    ki1126311-ZVITAMBO         48.8-51       2264    911    757    154
6 months    ki1135781-COHORTS          <=46.8        2923    361     84    277
6 months    ki1135781-COHORTS          >51           2923    438    421     17
6 months    ki1135781-COHORTS          46.8-48.8     2923    865    593    272
6 months    ki1135781-COHORTS          48.8-51       2923   1259   1079    180
6 months    kiGH5241-JiVitA-3          <=46.8        9454   4395   1087   3308
6 months    kiGH5241-JiVitA-3          >51           9454    900    780    120
6 months    kiGH5241-JiVitA-3          46.8-48.8     9454   2867   2426    441
6 months    kiGH5241-JiVitA-3          48.8-51       9454   1292   1142    150
6 months    kiGH5241-JiVitA-4          <=46.8        1016    313     80    233
6 months    kiGH5241-JiVitA-4          >51           1016    199    164     35
6 months    kiGH5241-JiVitA-4          46.8-48.8     1016    284    240     44
6 months    kiGH5241-JiVitA-4          48.8-51       1016    220    188     32

## Results Table

### Parameter: TSM


agecat      studyid                   intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  -------------------  ---------------  ----------  ----------  ----------
12 months   ki1000108-IRC             <=46.8               NA                0.9104478   0.8419882   0.9789073
12 months   ki1000108-IRC             >51                  NA                0.3561644   0.2461734   0.4661553
12 months   ki1000108-IRC             46.8-48.8            NA                0.4766355   0.3818790   0.5713920
12 months   ki1000108-IRC             48.8-51              NA                0.4265734   0.3454076   0.5077393
12 months   ki1000304b-SAS-CompFeed   <=46.8               NA                0.8934169   0.8595349   0.9272990
12 months   ki1000304b-SAS-CompFeed   >51                  NA                0.2656250   0.1573578   0.3738922
12 months   ki1000304b-SAS-CompFeed   46.8-48.8            NA                0.5194805   0.4636517   0.5753093
12 months   ki1000304b-SAS-CompFeed   48.8-51              NA                0.2886598   0.2248592   0.3524604
12 months   ki1101329-Keneba          <=46.8               NA                0.8382353   0.7763263   0.9001442
12 months   ki1101329-Keneba          >51                  NA                0.1968254   0.1529028   0.2407480
12 months   ki1101329-Keneba          46.8-48.8            NA                0.5714286   0.5161426   0.6267146
12 months   ki1101329-Keneba          48.8-51              NA                0.3434783   0.3080339   0.3789227
12 months   ki1126311-ZVITAMBO        <=46.8               NA                0.7803204   0.7414942   0.8191466
12 months   ki1126311-ZVITAMBO        >51                  NA                0.1558442   0.1090615   0.2026268
12 months   ki1126311-ZVITAMBO        46.8-48.8            NA                0.3606755   0.3279809   0.3933701
12 months   ki1126311-ZVITAMBO        48.8-51              NA                0.2708538   0.2435626   0.2981449
12 months   ki1135781-COHORTS         <=46.8               NA                0.8030719   0.7848157   0.8213280
12 months   ki1135781-COHORTS         >51                  NA                0.1568816   0.1347663   0.1789970
12 months   ki1135781-COHORTS         46.8-48.8            NA                0.4344156   0.4169092   0.4519220
12 months   ki1135781-COHORTS         48.8-51              NA                0.2581032   0.2432443   0.2729622
12 months   kiGH5241-JiVitA-3         <=46.8               NA                0.7733157   0.7599765   0.7866549
12 months   kiGH5241-JiVitA-3         >51                  NA                0.1565452   0.1303805   0.1827099
12 months   kiGH5241-JiVitA-3         46.8-48.8            NA                0.1996874   0.1841976   0.2151771
12 months   kiGH5241-JiVitA-3         48.8-51              NA                0.1399648   0.1197880   0.1601416
12 months   kiGH5241-JiVitA-4         <=46.8               NA                0.8232044   0.7838884   0.8625204
12 months   kiGH5241-JiVitA-4         >51                  NA                0.2310924   0.1775158   0.2846691
12 months   kiGH5241-JiVitA-4         46.8-48.8            NA                0.3081761   0.2574049   0.3589473
12 months   kiGH5241-JiVitA-4         48.8-51              NA                0.2480000   0.1944451   0.3015549
18 months   ki1000304b-SAS-CompFeed   <=46.8               NA                0.9352751   0.9078259   0.9627242
18 months   ki1000304b-SAS-CompFeed   >51                  NA                0.4482759   0.3202133   0.5763384
18 months   ki1000304b-SAS-CompFeed   46.8-48.8            NA                0.6632997   0.6095221   0.7170772
18 months   ki1000304b-SAS-CompFeed   48.8-51              NA                0.5157895   0.4446879   0.5868910
18 months   ki1101329-Keneba          <=46.8               NA                0.8872180   0.8334386   0.9409974
18 months   ki1101329-Keneba          >51                  NA                0.2937294   0.2424261   0.3450326
18 months   ki1101329-Keneba          46.8-48.8            NA                0.6526316   0.5973331   0.7079301
18 months   ki1101329-Keneba          48.8-51              NA                0.4768519   0.4383817   0.5153220
18 months   ki1126311-ZVITAMBO        <=46.8               NA                0.7977208   0.7556855   0.8397561
18 months   ki1126311-ZVITAMBO        >51                  NA                0.2653061   0.1939166   0.3366957
18 months   ki1126311-ZVITAMBO        46.8-48.8            NA                0.4951456   0.4557161   0.5345752
18 months   ki1126311-ZVITAMBO        48.8-51              NA                0.3741307   0.3387509   0.4095105
18 months   ki1135781-COHORTS         <=46.8               NA                0.9428571   0.9185355   0.9671788
18 months   ki1135781-COHORTS         >51                  NA                0.4078091   0.3629416   0.4526766
18 months   ki1135781-COHORTS         46.8-48.8            NA                0.7423529   0.7129473   0.7717586
18 months   ki1135781-COHORTS         48.8-51              NA                0.5622490   0.5346867   0.5898113
18 months   kiGH5241-JiVitA-3         <=46.8               NA                0.8271493   0.8142768   0.8400219
18 months   kiGH5241-JiVitA-3         >51                  NA                0.2588997   0.2243624   0.2934370
18 months   kiGH5241-JiVitA-3         46.8-48.8            NA                0.3472527   0.3276876   0.3668179
18 months   kiGH5241-JiVitA-3         48.8-51              NA                0.2148676   0.1891767   0.2405585
18 months   kiGH5241-JiVitA-4         <=46.8               NA                0.8826816   0.8493326   0.9160306
18 months   kiGH5241-JiVitA-4         >51                  NA                0.3612335   0.2987175   0.4237495
18 months   kiGH5241-JiVitA-4         46.8-48.8            NA                0.4490446   0.3940047   0.5040844
18 months   kiGH5241-JiVitA-4         48.8-51              NA                0.3697479   0.3083914   0.4311044
24 months   ki1017093c-NIH-Crypto     <=46.8               NA                0.9166667   0.8694800   0.9638533
24 months   ki1017093c-NIH-Crypto     >51                  NA                0.0952381   0.0226955   0.1677807
24 months   ki1017093c-NIH-Crypto     46.8-48.8            NA                0.5625000   0.4996890   0.6253110
24 months   ki1017093c-NIH-Crypto     48.8-51              NA                0.2814070   0.2188792   0.3439349
24 months   ki1101329-Keneba          <=46.8               NA                0.8606557   0.7991814   0.9221301
24 months   ki1101329-Keneba          >51                  NA                0.3531469   0.2977338   0.4085599
24 months   ki1101329-Keneba          46.8-48.8            NA                0.7142857   0.6613513   0.7672201
24 months   ki1101329-Keneba          48.8-51              NA                0.5788618   0.5398247   0.6178988
24 months   ki1126311-ZVITAMBO        <=46.8               NA                0.9262295   0.8797955   0.9726635
24 months   ki1126311-ZVITAMBO        >51                  NA                0.3913043   0.1916361   0.5909726
24 months   ki1126311-ZVITAMBO        46.8-48.8            NA                0.7425150   0.6761275   0.8089024
24 months   ki1126311-ZVITAMBO        48.8-51              NA                0.5882353   0.5101679   0.6663027
24 months   ki1135781-COHORTS         <=46.8               NA                0.9701493   0.9519229   0.9883756
24 months   ki1135781-COHORTS         >51                  NA                0.5812357   0.5349715   0.6274999
24 months   ki1135781-COHORTS         46.8-48.8            NA                0.8607748   0.8371625   0.8843871
24 months   ki1135781-COHORTS         48.8-51              NA                0.7135843   0.6882324   0.7389362
24 months   kiGH5241-JiVitA-4         <=46.8               NA                0.8957055   0.8625107   0.9289003
24 months   kiGH5241-JiVitA-4         >51                  NA                0.4175258   0.3480962   0.4869554
24 months   kiGH5241-JiVitA-4         46.8-48.8            NA                0.5036496   0.4444187   0.5628806
24 months   kiGH5241-JiVitA-4         48.8-51              NA                0.4195122   0.3519261   0.4870983
3 months    ki1000108-IRC             <=46.8               NA                0.8235294   0.7328047   0.9142541
3 months    ki1000108-IRC             >51                  NA                0.0958904   0.0282602   0.1635206
3 months    ki1000108-IRC             46.8-48.8            NA                0.2990654   0.2122026   0.3859283
3 months    ki1000108-IRC             48.8-51              NA                0.2097902   0.1429712   0.2766092
3 months    ki1000304b-SAS-CompFeed   <=46.8               NA                0.7275281   0.6812546   0.7738016
3 months    ki1000304b-SAS-CompFeed   >51                  NA                0.0882353   0.0207856   0.1556850
3 months    ki1000304b-SAS-CompFeed   46.8-48.8            NA                0.1461988   0.1087353   0.1836624
3 months    ki1000304b-SAS-CompFeed   48.8-51              NA                0.0390244   0.0125016   0.0655472
3 months    ki1101329-Keneba          <=46.8               NA                0.7814570   0.7155212   0.8473927
3 months    ki1101329-Keneba          >51                  NA                0.0722892   0.0444240   0.1001544
3 months    ki1101329-Keneba          46.8-48.8            NA                0.3145401   0.2649491   0.3641310
3 months    ki1101329-Keneba          48.8-51              NA                0.1219178   0.0981752   0.1456604
3 months    ki1126311-ZVITAMBO        <=46.8               NA                0.6804452   0.6439988   0.7168915
3 months    ki1126311-ZVITAMBO        >51                  NA                0.0512048   0.0274920   0.0749176
3 months    ki1126311-ZVITAMBO        46.8-48.8            NA                0.1429872   0.1222786   0.1636959
3 months    ki1126311-ZVITAMBO        48.8-51              NA                0.0919378   0.0768755   0.1070000
3 months    ki1135781-COHORTS         <=46.8               NA                0.6277916   0.6066843   0.6488989
3 months    ki1135781-COHORTS         >51                  NA                0.0105820   0.0046263   0.0165378
3 months    ki1135781-COHORTS         46.8-48.8            NA                0.1044597   0.0940881   0.1148314
3 months    ki1135781-COHORTS         48.8-51              NA                0.0465761   0.0396988   0.0534535
3 months    kiGH5241-JiVitA-3         <=46.8               NA                0.7256889   0.7146835   0.7366944
3 months    kiGH5241-JiVitA-3         >51                  NA                0.1014873   0.0839804   0.1189942
3 months    kiGH5241-JiVitA-3         46.8-48.8            NA                0.1129526   0.1030458   0.1228593
3 months    kiGH5241-JiVitA-3         48.8-51              NA                0.0949190   0.0813441   0.1084940
3 months    kiGH5241-JiVitA-4         <=46.8               NA                0.6758242   0.6277189   0.7239294
3 months    kiGH5241-JiVitA-4         >51                  NA                0.1000000   0.0603406   0.1396594
3 months    kiGH5241-JiVitA-4         46.8-48.8            NA                0.0807453   0.0509749   0.1105157
3 months    kiGH5241-JiVitA-4         48.8-51              NA                0.0880000   0.0528678   0.1231322
6 months    ki1000108-IRC             <=46.8               NA                0.8955224   0.8221860   0.9688588
6 months    ki1000108-IRC             >51                  NA                0.2083333   0.1144061   0.3022605
6 months    ki1000108-IRC             46.8-48.8            NA                0.4018692   0.3088536   0.4948847
6 months    ki1000108-IRC             48.8-51              NA                0.3286713   0.2515832   0.4057595
6 months    ki1000304b-SAS-CompFeed   <=46.8               NA                0.8075601   0.7622384   0.8528818
6 months    ki1000304b-SAS-CompFeed   >51                  NA                0.1206897   0.0367997   0.2045796
6 months    ki1000304b-SAS-CompFeed   46.8-48.8            NA                0.2937063   0.2408881   0.3465245
6 months    ki1000304b-SAS-CompFeed   48.8-51              NA                0.0994152   0.0545398   0.1442906
6 months    ki1101329-Keneba          <=46.8               NA                0.8161765   0.7510553   0.8812976
6 months    ki1101329-Keneba          >51                  NA                0.1217949   0.0854926   0.1580972
6 months    ki1101329-Keneba          46.8-48.8            NA                0.4429967   0.3874116   0.4985819
6 months    ki1101329-Keneba          48.8-51              NA                0.2204380   0.1893836   0.2514923
6 months    ki1126311-ZVITAMBO        <=46.8               NA                0.7420925   0.6997882   0.7843967
6 months    ki1126311-ZVITAMBO        >51                  NA                0.0969163   0.0584223   0.1354103
6 months    ki1126311-ZVITAMBO        46.8-48.8            NA                0.2713287   0.2387296   0.3039277
6 months    ki1126311-ZVITAMBO        48.8-51              NA                0.1690450   0.1447020   0.1933880
6 months    ki1135781-COHORTS         <=46.8               NA                0.7673130   0.7237176   0.8109085
6 months    ki1135781-COHORTS         >51                  NA                0.0388128   0.0207212   0.0569044
6 months    ki1135781-COHORTS         46.8-48.8            NA                0.3144509   0.2835045   0.3453973
6 months    ki1135781-COHORTS         48.8-51              NA                0.1429706   0.1236318   0.1623095
6 months    kiGH5241-JiVitA-3         <=46.8               NA                0.7526735   0.7399170   0.7654300
6 months    kiGH5241-JiVitA-3         >51                  NA                0.1333333   0.1111235   0.1555432
6 months    kiGH5241-JiVitA-3         46.8-48.8            NA                0.1538193   0.1406126   0.1670260
6 months    kiGH5241-JiVitA-3         48.8-51              NA                0.1160991   0.0986306   0.1335676
6 months    kiGH5241-JiVitA-4         <=46.8               NA                0.7444089   0.6960621   0.7927558
6 months    kiGH5241-JiVitA-4         >51                  NA                0.1758794   0.1229572   0.2288016
6 months    kiGH5241-JiVitA-4         46.8-48.8            NA                0.1549296   0.1128263   0.1970329
6 months    kiGH5241-JiVitA-4         48.8-51              NA                0.1454545   0.0988443   0.1920648


### Parameter: E(Y)


agecat      studyid                   intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  -------------------  ---------------  ----------  ----------  ----------
12 months   ki1000108-IRC             NA                   NA                0.5102564   0.4917089   0.5288039
12 months   ki1000304b-SAS-CompFeed   NA                   NA                0.5853107   0.5688428   0.6017787
12 months   ki1101329-Keneba          NA                   NA                0.4064872   0.3968891   0.4160854
12 months   ki1126311-ZVITAMBO        NA                   NA                0.3783784   0.3708209   0.3859358
12 months   ki1135781-COHORTS         NA                   NA                0.4124434   0.4080766   0.4168102
12 months   kiGH5241-JiVitA-3         NA                   NA                0.4516482   0.4452109   0.4580856
12 months   kiGH5241-JiVitA-4         NA                   NA                0.4392123   0.4243586   0.4540660
18 months   ki1000304b-SAS-CompFeed   NA                   NA                0.7142857   0.7022537   0.7263177
18 months   ki1101329-Keneba          NA                   NA                0.5127831   0.5037708   0.5217953
18 months   ki1126311-ZVITAMBO        NA                   NA                0.4871935   0.4796151   0.4947718
18 months   ki1135781-COHORTS         NA                   NA                0.6362698   0.6304926   0.6420470
18 months   kiGH5241-JiVitA-3         NA                   NA                0.5428373   0.5366781   0.5489964
18 months   kiGH5241-JiVitA-4         NA                   NA                0.5514512   0.5382449   0.5646575
24 months   ki1017093c-NIH-Crypto     NA                   NA                0.5015773   0.4811290   0.5220256
24 months   ki1101329-Keneba          NA                   NA                0.5848043   0.5766524   0.5929562
24 months   ki1126311-ZVITAMBO        NA                   NA                0.7225806   0.7089655   0.7361958
24 months   ki1135781-COHORTS         NA                   NA                0.7666667   0.7622892   0.7710442
24 months   kiGH5241-JiVitA-4         NA                   NA                0.5975976   0.5845503   0.6106449
3 months    ki1000108-IRC             NA                   NA                0.3196931   0.2957845   0.3436017
3 months    ki1000304b-SAS-CompFeed   NA                   NA                0.3326468   0.3135799   0.3517137
3 months    ki1101329-Keneba          NA                   NA                0.2174194   0.2072317   0.2276070
3 months    ki1126311-ZVITAMBO        NA                   NA                0.2107688   0.2033617   0.2181759
3 months    ki1135781-COHORTS         NA                   NA                0.1776765   0.1732506   0.1821024
3 months    kiGH5241-JiVitA-3         NA                   NA                0.4032650   0.3979794   0.4085505
3 months    kiGH5241-JiVitA-4         NA                   NA                0.2733564   0.2576166   0.2890962
6 months    ki1000108-IRC             NA                   NA                0.4241645   0.4018312   0.4464979
6 months    ki1000304b-SAS-CompFeed   NA                   NA                0.4255583   0.4050532   0.4460634
6 months    ki1101329-Keneba          NA                   NA                0.3027778   0.2925211   0.3130344
6 months    ki1126311-ZVITAMBO        NA                   NA                0.2981449   0.2892344   0.3070554
6 months    ki1135781-COHORTS         NA                   NA                0.2552172   0.2474517   0.2629828
6 months    kiGH5241-JiVitA-3         NA                   NA                0.4251111   0.4189518   0.4312704
6 months    kiGH5241-JiVitA-4         NA                   NA                0.3385827   0.3219124   0.3552530


### Parameter: RR


agecat      studyid                   intervention_level   baseline_level    estimate    ci_lower   ci_upper
----------  ------------------------  -------------------  ---------------  ---------  ----------  ---------
12 months   ki1000108-IRC             >51                  <=46.8            1.478750   1.0761112   2.032040
12 months   ki1000108-IRC             46.8-48.8            <=46.8            1.687955   1.3647480   2.087705
12 months   ki1000108-IRC             48.8-51              <=46.8            1.597646   1.3020482   1.960353
12 months   ki1000304b-SAS-CompFeed   >51                  <=46.8            1.346237   0.8940074   2.027226
12 months   ki1000304b-SAS-CompFeed   46.8-48.8            <=46.8            1.788637   1.5959803   2.004549
12 months   ki1000304b-SAS-CompFeed   48.8-51              <=46.8            1.381398   1.1038930   1.728666
12 months   ki1101329-Keneba          >51                  <=46.8            1.264668   0.9997497   1.599784
12 months   ki1101329-Keneba          46.8-48.8            <=46.8            1.977245   1.7506474   2.233172
12 months   ki1101329-Keneba          48.8-51              <=46.8            1.506461   1.3269249   1.710290
12 months   ki1126311-ZVITAMBO        >51                  <=46.8            1.221059   0.9007151   1.655334
12 months   ki1126311-ZVITAMBO        46.8-48.8            <=46.8            1.587586   1.4316226   1.760541
12 months   ki1126311-ZVITAMBO        48.8-51              <=46.8            1.414967   1.2645677   1.583253
12 months   ki1135781-COHORTS         >51                  <=46.8            1.215739   1.0539681   1.402339
12 months   ki1135781-COHORTS         46.8-48.8            <=46.8            1.717625   1.6399632   1.798964
12 months   ki1135781-COHORTS         48.8-51              <=46.8            1.379050   1.2962810   1.467104
12 months   kiGH5241-JiVitA-3         >51                  <=46.8            1.224379   1.0350063   1.448401
12 months   kiGH5241-JiVitA-3         46.8-48.8            <=46.8            1.294627   1.1957308   1.401702
12 months   kiGH5241-JiVitA-3         48.8-51              <=46.8            1.198407   1.0364571   1.385662
12 months   kiGH5241-JiVitA-4         >51                  <=46.8            1.324087   1.0449971   1.677714
12 months   kiGH5241-JiVitA-4         46.8-48.8            <=46.8            1.454063   1.2248655   1.726148
12 months   kiGH5241-JiVitA-4         48.8-51              <=46.8            1.351563   1.0833915   1.686115
18 months   ki1000304b-SAS-CompFeed   >51                  <=46.8            1.614941   1.2118120   2.152177
18 months   ki1000304b-SAS-CompFeed   46.8-48.8            <=46.8            2.032370   1.8644730   2.215387
18 months   ki1000304b-SAS-CompFeed   48.8-51              <=46.8            1.735828   1.5076388   1.998554
18 months   ki1101329-Keneba          >51                  <=46.8            1.392454   1.1574126   1.675227
18 months   ki1101329-Keneba          46.8-48.8            <=46.8            2.086720   1.8802637   2.315844
18 months   ki1101329-Keneba          48.8-51              <=46.8            1.711669   1.5473735   1.893408
18 months   ki1126311-ZVITAMBO        >51                  <=46.8            1.394562   1.0601236   1.834505
18 months   ki1126311-ZVITAMBO        46.8-48.8            <=46.8            1.860230   1.6908178   2.046618
18 months   ki1126311-ZVITAMBO        48.8-51              <=46.8            1.598394   1.4343961   1.781143
18 months   ki1135781-COHORTS         >51                  <=46.8            1.541144   1.3764675   1.725521
18 months   ki1135781-COHORTS         46.8-48.8            <=46.8            2.197552   2.0960900   2.303925
18 months   ki1135781-COHORTS         48.8-51              <=46.8            1.815434   1.7176041   1.918837
18 months   kiGH5241-JiVitA-3         >51                  <=46.8            1.367525   1.1956588   1.564095
18 months   kiGH5241-JiVitA-3         46.8-48.8            <=46.8            1.521686   1.4352891   1.613283
18 months   kiGH5241-JiVitA-3         48.8-51              <=46.8            1.296630   1.1493471   1.462787
18 months   kiGH5241-JiVitA-4         >51                  <=46.8            1.505681   1.2612545   1.797477
18 months   kiGH5241-JiVitA-4         46.8-48.8            <=46.8            1.663174   1.4629660   1.890780
18 months   kiGH5241-JiVitA-4         48.8-51              <=46.8            1.520276   1.2823617   1.802329
24 months   ki1017093c-NIH-Crypto     >51                  <=46.8            1.109485   0.5170899   2.380548
24 months   ki1017093c-NIH-Crypto     46.8-48.8            <=46.8            1.847136   1.6334240   2.088809
24 months   ki1017093c-NIH-Crypto     48.8-51              <=46.8            1.359327   1.0821043   1.707570
24 months   ki1101329-Keneba          >51                  <=46.8            1.507305   1.2686057   1.790917
24 months   ki1101329-Keneba          46.8-48.8            <=46.8            2.293163   2.0688758   2.541765
24 months   ki1101329-Keneba          48.8-51              <=46.8            1.959290   1.7759747   2.161528
24 months   ki1126311-ZVITAMBO        >51                  <=46.8            1.525726   0.9137027   2.547698
24 months   ki1126311-ZVITAMBO        46.8-48.8            <=46.8            2.229223   2.0120391   2.469851
24 months   ki1126311-ZVITAMBO        48.8-51              <=46.8            1.887184   1.6375779   2.174837
24 months   ki1135781-COHORTS         >51                  <=46.8            1.820516   1.6775534   1.975662
24 months   ki1135781-COHORTS         46.8-48.8            <=46.8            2.428467   2.3490524   2.510566
24 months   ki1135781-COHORTS         48.8-51              <=46.8            2.086610   2.0044137   2.172177
24 months   kiGH5241-JiVitA-4         >51                  <=46.8            1.593833   1.3441663   1.889873
24 months   kiGH5241-JiVitA-4         46.8-48.8            <=46.8            1.754693   1.5511385   1.984959
24 months   kiGH5241-JiVitA-4         48.8-51              <=46.8            1.597372   1.3539761   1.884521
3 months    ki1000108-IRC             >51                  <=46.8            1.123488   0.5502402   2.293954
3 months    ki1000108-IRC             46.8-48.8            <=46.8            1.437853   1.0539155   1.961657
3 months    ki1000108-IRC             48.8-51              <=46.8            1.290133   0.9210206   1.807172
3 months    ki1000304b-SAS-CompFeed   >51                  <=46.8            1.128942   0.5242480   2.431120
3 months    ki1000304b-SAS-CompFeed   46.8-48.8            <=46.8            1.222567   0.9388745   1.591981
3 months    ki1000304b-SAS-CompFeed   48.8-51              <=46.8            1.055104   0.5331373   2.088102
3 months    ki1101329-Keneba          >51                  <=46.8            1.096919   0.7392720   1.627590
3 months    ki1101329-Keneba          46.8-48.8            <=46.8            1.495566   1.2506771   1.788405
3 months    ki1101329-Keneba          48.8-51              <=46.8            1.168842   0.9453293   1.445202
3 months    ki1126311-ZVITAMBO        >51                  <=46.8            1.078156   0.6764256   1.718474
3 months    ki1126311-ZVITAMBO        46.8-48.8            <=46.8            1.233848   1.0573036   1.439871
3 months    ki1126311-ZVITAMBO        48.8-51              <=46.8            1.144667   0.9634346   1.359992
3 months    ki1135781-COHORTS         >51                  <=46.8            1.016999   0.5787026   1.787251
3 months    ki1135781-COHORTS         46.8-48.8            <=46.8            1.181036   1.0635004   1.311562
3 months    ki1135781-COHORTS         48.8-51              <=46.8            1.077012   0.9256609   1.253110
3 months    kiGH5241-JiVitA-3         >51                  <=46.8            1.150101   0.9672298   1.367547
3 months    kiGH5241-JiVitA-3         46.8-48.8            <=46.8            1.168416   1.0689105   1.277184
3 months    kiGH5241-JiVitA-3         48.8-51              <=46.8            1.139738   0.9870653   1.316025
3 months    kiGH5241-JiVitA-4         >51                  <=46.8            1.159475   0.7749449   1.734811
3 months    kiGH5241-JiVitA-4         46.8-48.8            <=46.8            1.126907   0.7741216   1.640465
3 months    kiGH5241-JiVitA-4         48.8-51              <=46.8            1.139069   0.7593340   1.708706
6 months    ki1000108-IRC             >51                  <=46.8            1.261926   0.7980463   1.995444
6 months    ki1000108-IRC             46.8-48.8            <=46.8            1.566359   1.2253621   2.002250
6 months    ki1000108-IRC             48.8-51              <=46.8            1.443421   1.1259038   1.850483
6 months    ki1000304b-SAS-CompFeed   >51                  <=46.8            1.161195   0.5781626   2.332171
6 months    ki1000304b-SAS-CompFeed   46.8-48.8            <=46.8            1.438637   1.1916139   1.736867
6 months    ki1000304b-SAS-CompFeed   48.8-51              <=46.8            1.131004   0.7176570   1.782425
6 months    ki1101329-Keneba          >51                  <=46.8            1.160935   0.8527155   1.580564
6 months    ki1101329-Keneba          46.8-48.8            <=46.8            1.720768   1.4830130   1.996640
6 months    ki1101329-Keneba          48.8-51              <=46.8            1.310077   1.1142535   1.540316
6 months    ki1126311-ZVITAMBO        >51                  <=46.8            1.139510   0.7628759   1.702091
6 months    ki1126311-ZVITAMBO        46.8-48.8            <=46.8            1.441417   1.2619300   1.646432
6 months    ki1126311-ZVITAMBO        48.8-51              <=46.8            1.255828   1.0756430   1.466196
6 months    ki1135781-COHORTS         >51                  <=46.8            1.051884   0.6577098   1.682292
6 months    ki1135781-COHORTS         46.8-48.8            <=46.8            1.506528   1.3446999   1.687832
6 months    ki1135781-COHORTS         48.8-51              <=46.8            1.204815   1.0404090   1.395201
6 months    kiGH5241-JiVitA-3         >51                  <=46.8            1.193806   1.0097599   1.411397
6 months    kiGH5241-JiVitA-3         46.8-48.8            <=46.8            1.226744   1.1239493   1.338941
6 months    kiGH5241-JiVitA-3         48.8-51              <=46.8            1.166781   1.0028393   1.357524
6 months    kiGH5241-JiVitA-4         >51                  <=46.8            1.266513   0.9309377   1.723052
6 months    kiGH5241-JiVitA-4         46.8-48.8            <=46.8            1.231366   0.9311951   1.628298
6 months    kiGH5241-JiVitA-4         48.8-51              <=46.8            1.215792   0.8767222   1.685997


### Parameter: PAR


agecat      studyid                   intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ------------------------  -------------------  ---------------  -----------  -----------  -----------
12 months   ki1000108-IRC             <=46.8               NA                -0.4001913   -0.4711189   -0.3292638
12 months   ki1000304b-SAS-CompFeed   <=46.8               NA                -0.3081062   -0.3457783   -0.2704341
12 months   ki1101329-Keneba          <=46.8               NA                -0.4317481   -0.4943966   -0.3690995
12 months   ki1126311-ZVITAMBO        <=46.8               NA                -0.4019420   -0.4414969   -0.3623871
12 months   ki1135781-COHORTS         <=46.8               NA                -0.3906285   -0.4093996   -0.3718573
12 months   kiGH5241-JiVitA-3         <=46.8               NA                -0.3216675   -0.3364788   -0.3068562
12 months   kiGH5241-JiVitA-4         <=46.8               NA                -0.3839921   -0.4260204   -0.3419638
18 months   ki1000304b-SAS-CompFeed   <=46.8               NA                -0.2209894   -0.2509598   -0.1910190
18 months   ki1101329-Keneba          <=46.8               NA                -0.3744350   -0.4289643   -0.3199057
18 months   ki1126311-ZVITAMBO        <=46.8               NA                -0.3105273   -0.3532403   -0.2678144
18 months   ki1135781-COHORTS         <=46.8               NA                -0.3065874   -0.3315857   -0.2815890
18 months   kiGH5241-JiVitA-3         <=46.8               NA                -0.2843120   -0.2985822   -0.2700419
18 months   kiGH5241-JiVitA-4         <=46.8               NA                -0.3312304   -0.3670991   -0.2953617
24 months   ki1017093c-NIH-Crypto     <=46.8               NA                -0.4150894   -0.4665161   -0.3636626
24 months   ki1101329-Keneba          <=46.8               NA                -0.2758514   -0.3378640   -0.2138389
24 months   ki1126311-ZVITAMBO        <=46.8               NA                -0.2036489   -0.2520378   -0.1552599
24 months   ki1135781-COHORTS         <=46.8               NA                -0.2034826   -0.2222272   -0.1847379
24 months   kiGH5241-JiVitA-4         <=46.8               NA                -0.2981079   -0.3337748   -0.2624410
3 months    ki1000108-IRC             <=46.8               NA                -0.5038363   -0.5976584   -0.4100142
3 months    ki1000304b-SAS-CompFeed   <=46.8               NA                -0.3948813   -0.4449292   -0.3448335
3 months    ki1101329-Keneba          <=46.8               NA                -0.5640376   -0.6307557   -0.4973195
3 months    ki1126311-ZVITAMBO        <=46.8               NA                -0.4696764   -0.5068678   -0.4324849
3 months    ki1135781-COHORTS         <=46.8               NA                -0.4501150   -0.4716814   -0.4285487
3 months    kiGH5241-JiVitA-3         <=46.8               NA                -0.3224239   -0.3346329   -0.3102150
3 months    kiGH5241-JiVitA-4         <=46.8               NA                -0.4024678   -0.4530826   -0.3518530
6 months    ki1000108-IRC             <=46.8               NA                -0.4713579   -0.5480195   -0.3946963
6 months    ki1000304b-SAS-CompFeed   <=46.8               NA                -0.3820018   -0.4317463   -0.3322573
6 months    ki1101329-Keneba          <=46.8               NA                -0.5133987   -0.5793226   -0.4474748
6 months    ki1126311-ZVITAMBO        <=46.8               NA                -0.4439476   -0.4871801   -0.4007151
6 months    ki1135781-COHORTS         <=46.8               NA                -0.5120958   -0.5563775   -0.4678141
6 months    kiGH5241-JiVitA-3         <=46.8               NA                -0.3275624   -0.3417280   -0.3133968
6 months    kiGH5241-JiVitA-4         <=46.8               NA                -0.4058263   -0.4569665   -0.3546861


### Parameter: PAF


agecat      studyid                   intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  -------------------  ---------------  ----------  ----------  ----------
12 months   ki1000108-IRC             <=46.8               NA                0.4290454   0.3793123   0.4747936
12 months   ki1000304b-SAS-CompFeed   <=46.8               NA                0.4806292   0.4555157   0.5045845
12 months   ki1101329-Keneba          <=46.8               NA                0.3842610   0.3346175   0.4302007
12 months   ki1126311-ZVITAMBO        <=46.8               NA                0.3842420   0.3503265   0.4163870
12 months   ki1135781-COHORTS         <=46.8               NA                0.4016517   0.3864568   0.4164702
12 months   kiGH5241-JiVitA-3         <=46.8               NA                0.4423597   0.4297412   0.4546990
12 months   kiGH5241-JiVitA-4         <=46.8               NA                0.4134749   0.3781266   0.4468139
18 months   ki1000304b-SAS-CompFeed   <=46.8               NA                0.5340688   0.5180322   0.5495718
18 months   ki1101329-Keneba          <=46.8               NA                0.4389624   0.4024128   0.4732765
18 months   ki1126311-ZVITAMBO        <=46.8               NA                0.4570466   0.4263809   0.4860730
18 months   ki1135781-COHORTS         <=46.8               NA                0.4907578   0.4766394   0.5044954
18 months   kiGH5241-JiVitA-3         <=46.8               NA                0.4812197   0.4711314   0.4911156
18 months   kiGH5241-JiVitA-4         <=46.8               NA                0.4646022   0.4401090   0.4880239
24 months   ki1017093c-NIH-Crypto     <=46.8               NA                0.4214181   0.3821507   0.4581900
24 months   ki1101329-Keneba          <=46.8               NA                0.4931230   0.4548597   0.5287006
24 months   ki1126311-ZVITAMBO        <=46.8               NA                0.5416542   0.5164376   0.5655558
24 months   ki1135781-COHORTS         <=46.8               NA                0.5462716   0.5372743   0.5550939
24 months   kiGH5241-JiVitA-4         <=46.8               NA                0.4868468   0.4642930   0.5084511
3 months    ki1000108-IRC             <=46.8               NA                0.3217225   0.2251197   0.4062820
3 months    ki1000304b-SAS-CompFeed   <=46.8               NA                0.3669645   0.3103756   0.4189098
3 months    ki1101329-Keneba          <=46.8               NA                0.2428721   0.1661568   0.3125294
3 months    ki1126311-ZVITAMBO        <=46.8               NA                0.2663706   0.2178345   0.3118949
3 months    ki1135781-COHORTS         <=46.8               NA                0.2464940   0.2142955   0.2773731
3 months    kiGH5241-JiVitA-3         <=46.8               NA                0.4263292   0.4147142   0.4377137
3 months    kiGH5241-JiVitA-4         <=46.8               NA                0.3326753   0.2686953   0.3910579
6 months    ki1000108-IRC             <=46.8               NA                0.3772751   0.3135982   0.4350447
6 months    ki1000304b-SAS-CompFeed   <=46.8               NA                0.4096076   0.3642815   0.4517021
6 months    ki1101329-Keneba          <=46.8               NA                0.3099360   0.2474513   0.3672326
6 months    ki1126311-ZVITAMBO        <=46.8               NA                0.3308603   0.2863742   0.3725732
6 months    ki1135781-COHORTS         <=46.8               NA                0.2829514   0.2352156   0.3277077
6 months    kiGH5241-JiVitA-3         <=46.8               NA                0.4315270   0.4187093   0.4440620
6 months    kiGH5241-JiVitA-4         <=46.8               NA                0.3654469   0.3115651   0.4151115


