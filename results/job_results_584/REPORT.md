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

**Intervention Variable:** birthlen

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid


The following strata were considered:

* agecat: 12 months, studyid: ki0047075b-MAL-ED
* agecat: 12 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 12 months, studyid: ki1000108-IRC
* agecat: 12 months, studyid: ki1017093b-PROVIDE
* agecat: 12 months, studyid: ki1017093c-NIH-Crypto
* agecat: 12 months, studyid: ki1101329-Keneba
* agecat: 12 months, studyid: ki1126311-ZVITAMBO
* agecat: 12 months, studyid: ki1135781-COHORTS
* agecat: 18 months, studyid: ki0047075b-MAL-ED
* agecat: 18 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 18 months, studyid: ki1000108-IRC
* agecat: 18 months, studyid: ki1017093b-PROVIDE
* agecat: 18 months, studyid: ki1017093c-NIH-Crypto
* agecat: 18 months, studyid: ki1101329-Keneba
* agecat: 18 months, studyid: ki1126311-ZVITAMBO
* agecat: 18 months, studyid: ki1135781-COHORTS
* agecat: 24 months, studyid: ki0047075b-MAL-ED
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 24 months, studyid: ki1000108-IRC
* agecat: 24 months, studyid: ki1017093b-PROVIDE
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto
* agecat: 24 months, studyid: ki1101329-Keneba
* agecat: 24 months, studyid: ki1126311-ZVITAMBO
* agecat: 24 months, studyid: ki1135781-COHORTS
* agecat: 3 months, studyid: ki0047075b-MAL-ED
* agecat: 3 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 3 months, studyid: ki1000108-IRC
* agecat: 3 months, studyid: ki1017093b-PROVIDE
* agecat: 3 months, studyid: ki1017093c-NIH-Crypto
* agecat: 3 months, studyid: ki1101329-Keneba
* agecat: 3 months, studyid: ki1126311-ZVITAMBO
* agecat: 3 months, studyid: ki1135781-COHORTS
* agecat: 6 months, studyid: ki0047075b-MAL-ED
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 6 months, studyid: ki1000108-IRC
* agecat: 6 months, studyid: ki1017093b-PROVIDE
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto
* agecat: 6 months, studyid: ki1101329-Keneba
* agecat: 6 months, studyid: ki1126311-ZVITAMBO
* agecat: 6 months, studyid: ki1135781-COHORTS

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 3 months, studyid: ki0047075b-MAL-ED
* agecat: 3 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 3 months, studyid: ki1017093b-PROVIDE
* agecat: 3 months, studyid: ki1017093c-NIH-Crypto
* agecat: 6 months, studyid: ki0047075b-MAL-ED
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 6 months, studyid: ki1017093b-PROVIDE
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto
* agecat: 12 months, studyid: ki0047075b-MAL-ED
* agecat: 12 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 12 months, studyid: ki1017093b-PROVIDE
* agecat: 12 months, studyid: ki1017093c-NIH-Crypto
* agecat: 18 months, studyid: ki0047075b-MAL-ED
* agecat: 18 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 18 months, studyid: ki1000108-IRC
* agecat: 18 months, studyid: ki1017093b-PROVIDE
* agecat: 18 months, studyid: ki1017093c-NIH-Crypto
* agecat: 24 months, studyid: ki0047075b-MAL-ED
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 24 months, studyid: ki1000108-IRC
* agecat: 24 months, studyid: ki1017093b-PROVIDE

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness




# Results Detail

## Results Plots
![](/tmp/1741040d-f395-420e-bbad-14251ef4e713/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/1741040d-f395-420e-bbad-14251ef4e713/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/1741040d-f395-420e-bbad-14251ef4e713/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/1741040d-f395-420e-bbad-14251ef4e713/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Data Summary

agecat      studyid                    A                  n     nA   nAY0   nAY1
----------  -------------------------  ------------  ------  -----  -----  -----
3 months    ki0047075b-MAL-ED          <=46.8            54     20      9     11
3 months    ki0047075b-MAL-ED          (46.8-48.8]       54     23     20      3
3 months    ki0047075b-MAL-ED          (48.8-51]         54     11     11      0
3 months    ki0047075b-MAL-ED          >51               54      0      0      0
3 months    ki1000108-CMC-V-BCS-2002   <=46.8           101     33     11     22
3 months    ki1000108-CMC-V-BCS-2002   (46.8-48.8]      101     32     23      9
3 months    ki1000108-CMC-V-BCS-2002   (48.8-51]        101     34     24     10
3 months    ki1000108-CMC-V-BCS-2002   >51              101      2      2      0
3 months    ki1000108-IRC              <=46.8           391     68     12     56
3 months    ki1000108-IRC              (46.8-48.8]      391    107     75     32
3 months    ki1000108-IRC              (48.8-51]        391    143    113     30
3 months    ki1000108-IRC              >51              391     73     66      7
3 months    ki1017093b-PROVIDE         <=46.8           175     23      4     19
3 months    ki1017093b-PROVIDE         (46.8-48.8]      175     67     47     20
3 months    ki1017093b-PROVIDE         (48.8-51]        175     70     65      5
3 months    ki1017093b-PROVIDE         >51              175     15     15      0
3 months    ki1017093c-NIH-Crypto      <=46.8           758    151     44    107
3 months    ki1017093c-NIH-Crypto      (46.8-48.8]      758    293    279     14
3 months    ki1017093c-NIH-Crypto      (48.8-51]        758    243    243      0
3 months    ki1017093c-NIH-Crypto      >51              758     71     71      0
3 months    ki1101329-Keneba           <=46.8          1550    151     33    118
3 months    ki1101329-Keneba           (46.8-48.8]     1550    337    231    106
3 months    ki1101329-Keneba           (48.8-51]       1550    730    641     89
3 months    ki1101329-Keneba           >51             1550    332    308     24
3 months    ki1126311-ZVITAMBO         <=46.8          3473    629    201    428
3 months    ki1126311-ZVITAMBO         (46.8-48.8]     3473   1098    941    157
3 months    ki1126311-ZVITAMBO         (48.8-51]       3473   1414   1284    130
3 months    ki1126311-ZVITAMBO         >51             3473    332    315     17
3 months    ki1135781-COHORTS          <=46.8         10097   2015    750   1265
3 months    ki1135781-COHORTS          (46.8-48.8]    10097   3341   2992    349
3 months    ki1135781-COHORTS          (48.8-51]      10097   3607   3439    168
3 months    ki1135781-COHORTS          >51            10097   1134   1122     12
6 months    ki0047075b-MAL-ED          <=46.8            51     18      6     12
6 months    ki0047075b-MAL-ED          (46.8-48.8]       51     22     18      4
6 months    ki0047075b-MAL-ED          (48.8-51]         51     11     11      0
6 months    ki0047075b-MAL-ED          >51               51      0      0      0
6 months    ki1000108-CMC-V-BCS-2002   <=46.8           101     32      8     24
6 months    ki1000108-CMC-V-BCS-2002   (46.8-48.8]      101     33     18     15
6 months    ki1000108-CMC-V-BCS-2002   (48.8-51]        101     34     20     14
6 months    ki1000108-CMC-V-BCS-2002   >51              101      2      1      1
6 months    ki1000108-IRC              <=46.8           389     67      7     60
6 months    ki1000108-IRC              (46.8-48.8]      389    107     64     43
6 months    ki1000108-IRC              (48.8-51]        389    143     96     47
6 months    ki1000108-IRC              >51              389     72     57     15
6 months    ki1017093b-PROVIDE         <=46.8           166     21      3     18
6 months    ki1017093b-PROVIDE         (46.8-48.8]      166     64     40     24
6 months    ki1017093b-PROVIDE         (48.8-51]        166     68     63      5
6 months    ki1017093b-PROVIDE         >51              166     13     12      1
6 months    ki1017093c-NIH-Crypto      <=46.8           736    147     18    129
6 months    ki1017093c-NIH-Crypto      (46.8-48.8]      736    281    204     77
6 months    ki1017093c-NIH-Crypto      (48.8-51]        736    239    219     20
6 months    ki1017093c-NIH-Crypto      >51              736     69     69      0
6 months    ki1101329-Keneba           <=46.8          1440    136     25    111
6 months    ki1101329-Keneba           (46.8-48.8]     1440    307    171    136
6 months    ki1101329-Keneba           (48.8-51]       1440    685    534    151
6 months    ki1101329-Keneba           >51             1440    312    274     38
6 months    ki1126311-ZVITAMBO         <=46.8          2264    411    106    305
6 months    ki1126311-ZVITAMBO         (46.8-48.8]     2264    715    521    194
6 months    ki1126311-ZVITAMBO         (48.8-51]       2264    911    757    154
6 months    ki1126311-ZVITAMBO         >51             2264    227    205     22
6 months    ki1135781-COHORTS          <=46.8          2923    361     84    277
6 months    ki1135781-COHORTS          (46.8-48.8]     2923    865    593    272
6 months    ki1135781-COHORTS          (48.8-51]       2923   1259   1079    180
6 months    ki1135781-COHORTS          >51             2923    438    421     17
12 months   ki0047075b-MAL-ED          <=46.8            49     17      5     12
12 months   ki0047075b-MAL-ED          (46.8-48.8]       49     21     13      8
12 months   ki0047075b-MAL-ED          (48.8-51]         49     11     11      0
12 months   ki0047075b-MAL-ED          >51               49      0      0      0
12 months   ki1000108-CMC-V-BCS-2002   <=46.8           103     33      8     25
12 months   ki1000108-CMC-V-BCS-2002   (46.8-48.8]      103     33     14     19
12 months   ki1000108-CMC-V-BCS-2002   (48.8-51]        103     35     16     19
12 months   ki1000108-CMC-V-BCS-2002   >51              103      2      1      1
12 months   ki1000108-IRC              <=46.8           390     67      6     61
12 months   ki1000108-IRC              (46.8-48.8]      390    107     56     51
12 months   ki1000108-IRC              (48.8-51]        390    143     82     61
12 months   ki1000108-IRC              >51              390     73     47     26
12 months   ki1017093b-PROVIDE         <=46.8           159     20      3     17
12 months   ki1017093b-PROVIDE         (46.8-48.8]      159     60     32     28
12 months   ki1017093b-PROVIDE         (48.8-51]        159     67     56     11
12 months   ki1017093b-PROVIDE         >51              159     12     12      0
12 months   ki1017093c-NIH-Crypto      <=46.8           729    147     14    133
12 months   ki1017093c-NIH-Crypto      (46.8-48.8]      729    278    170    108
12 months   ki1017093c-NIH-Crypto      (48.8-51]        729    236    203     33
12 months   ki1017093c-NIH-Crypto      >51              729     68     65      3
12 months   ki1101329-Keneba           <=46.8          1449    136     22    114
12 months   ki1101329-Keneba           (46.8-48.8]     1449    308    132    176
12 months   ki1101329-Keneba           (48.8-51]       1449    690    453    237
12 months   ki1101329-Keneba           >51             1449    315    253     62
12 months   ki1126311-ZVITAMBO         <=46.8          2516    437     96    341
12 months   ki1126311-ZVITAMBO         (46.8-48.8]     2516    829    530    299
12 months   ki1126311-ZVITAMBO         (48.8-51]       2516   1019    743    276
12 months   ki1126311-ZVITAMBO         >51             2516    231    195     36
12 months   ki1135781-COHORTS          <=46.8          9274   1823    359   1464
12 months   ki1135781-COHORTS          (46.8-48.8]     9274   3080   1742   1338
12 months   ki1135781-COHORTS          (48.8-51]       9274   3332   2472    860
12 months   ki1135781-COHORTS          >51             9274   1039    876    163
18 months   ki0047075b-MAL-ED          <=46.8            45     15      3     12
18 months   ki0047075b-MAL-ED          (46.8-48.8]       45     19      6     13
18 months   ki0047075b-MAL-ED          (48.8-51]         45     11     10      1
18 months   ki0047075b-MAL-ED          >51               45      0      0      0
18 months   ki1000108-CMC-V-BCS-2002   <=46.8           103     33      4     29
18 months   ki1000108-CMC-V-BCS-2002   (46.8-48.8]      103     33      8     25
18 months   ki1000108-CMC-V-BCS-2002   (48.8-51]        103     35     11     24
18 months   ki1000108-CMC-V-BCS-2002   >51              103      2      1      1
18 months   ki1000108-IRC              <=46.8           391     68      3     65
18 months   ki1000108-IRC              (46.8-48.8]      391    107     52     55
18 months   ki1000108-IRC              (48.8-51]        391    143     69     74
18 months   ki1000108-IRC              >51              391     73     46     27
18 months   ki1017093b-PROVIDE         <=46.8           155     18      2     16
18 months   ki1017093b-PROVIDE         (46.8-48.8]      155     60     24     36
18 months   ki1017093b-PROVIDE         (48.8-51]        155     65     49     16
18 months   ki1017093b-PROVIDE         >51              155     12     10      2
18 months   ki1017093c-NIH-Crypto      <=46.8           715    146     13    133
18 months   ki1017093c-NIH-Crypto      (46.8-48.8]      715    273    140    133
18 months   ki1017093c-NIH-Crypto      (48.8-51]        715    228    181     47
18 months   ki1017093c-NIH-Crypto      >51              715     68     64      4
18 months   ki1101329-Keneba           <=46.8          1369    133     15    118
18 months   ki1101329-Keneba           (46.8-48.8]     1369    285     99    186
18 months   ki1101329-Keneba           (48.8-51]       1369    648    339    309
18 months   ki1101329-Keneba           >51             1369    303    214     89
18 months   ki1126311-ZVITAMBO         <=46.8          1835    351     71    280
18 months   ki1126311-ZVITAMBO         (46.8-48.8]     1835    618    312    306
18 months   ki1126311-ZVITAMBO         (48.8-51]       1835    719    450    269
18 months   ki1126311-ZVITAMBO         >51             1835    147    108     39
18 months   ki1135781-COHORTS          <=46.8          2906    350     20    330
18 months   ki1135781-COHORTS          (46.8-48.8]     2906    850    219    631
18 months   ki1135781-COHORTS          (48.8-51]       2906   1245    545    700
18 months   ki1135781-COHORTS          >51             2906    461    273    188
24 months   ki0047075b-MAL-ED          <=46.8            42     14      3     11
24 months   ki0047075b-MAL-ED          (46.8-48.8]       42     17      3     14
24 months   ki0047075b-MAL-ED          (48.8-51]         42     11     10      1
24 months   ki0047075b-MAL-ED          >51               42      0      0      0
24 months   ki1000108-CMC-V-BCS-2002   <=46.8           103     33      1     32
24 months   ki1000108-CMC-V-BCS-2002   (46.8-48.8]      103     33      3     30
24 months   ki1000108-CMC-V-BCS-2002   (48.8-51]        103     35      7     28
24 months   ki1000108-CMC-V-BCS-2002   >51              103      2      0      2
24 months   ki1000108-IRC              <=46.8           391     68      3     65
24 months   ki1000108-IRC              (46.8-48.8]      391    107     45     62
24 months   ki1000108-IRC              (48.8-51]        391    143     54     89
24 months   ki1000108-IRC              >51              391     73     39     34
24 months   ki1017093b-PROVIDE         <=46.8           148     18      2     16
24 months   ki1017093b-PROVIDE         (46.8-48.8]      148     57     20     37
24 months   ki1017093b-PROVIDE         (48.8-51]        148     61     44     17
24 months   ki1017093b-PROVIDE         >51              148     12     10      2
24 months   ki1017093c-NIH-Crypto      <=46.8           634    132     11    121
24 months   ki1017093c-NIH-Crypto      (46.8-48.8]      634    240    105    135
24 months   ki1017093c-NIH-Crypto      (48.8-51]        634    199    143     56
24 months   ki1017093c-NIH-Crypto      >51              634     63     57      6
24 months   ki1101329-Keneba           <=46.8          1303    122     17    105
24 months   ki1101329-Keneba           (46.8-48.8]     1303    280     80    200
24 months   ki1101329-Keneba           (48.8-51]       1303    615    259    356
24 months   ki1101329-Keneba           >51             1303    286    185    101
24 months   ki1126311-ZVITAMBO         <=46.8           465    122      9    113
24 months   ki1126311-ZVITAMBO         (46.8-48.8]      465    167     43    124
24 months   ki1126311-ZVITAMBO         (48.8-51]        465    153     63     90
24 months   ki1126311-ZVITAMBO         >51              465     23     14      9
24 months   ki1135781-COHORTS          <=46.8          2820    335     10    325
24 months   ki1135781-COHORTS          (46.8-48.8]     2820    826    115    711
24 months   ki1135781-COHORTS          (48.8-51]       2820   1222    350    872
24 months   ki1135781-COHORTS          >51             2820    437    183    254

## Results Table

### Parameter: TSM


agecat      studyid                 intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki1000108-IRC           <=46.8               NA                0.8235294   0.7328047   0.9142541
3 months    ki1000108-IRC           (46.8-48.8]          NA                0.2990654   0.2122026   0.3859283
3 months    ki1000108-IRC           (48.8-51]            NA                0.2097902   0.1429712   0.2766092
3 months    ki1000108-IRC           >51                  NA                0.0958904   0.0282602   0.1635206
3 months    ki1101329-Keneba        <=46.8               NA                0.7814570   0.7155212   0.8473927
3 months    ki1101329-Keneba        (46.8-48.8]          NA                0.3145401   0.2649491   0.3641310
3 months    ki1101329-Keneba        (48.8-51]            NA                0.1219178   0.0981752   0.1456604
3 months    ki1101329-Keneba        >51                  NA                0.0722892   0.0444240   0.1001544
3 months    ki1126311-ZVITAMBO      <=46.8               NA                0.6804452   0.6439988   0.7168915
3 months    ki1126311-ZVITAMBO      (46.8-48.8]          NA                0.1429872   0.1222786   0.1636959
3 months    ki1126311-ZVITAMBO      (48.8-51]            NA                0.0919378   0.0768755   0.1070000
3 months    ki1126311-ZVITAMBO      >51                  NA                0.0512048   0.0274920   0.0749176
3 months    ki1135781-COHORTS       <=46.8               NA                0.6277916   0.6066843   0.6488989
3 months    ki1135781-COHORTS       (46.8-48.8]          NA                0.1044597   0.0940881   0.1148314
3 months    ki1135781-COHORTS       (48.8-51]            NA                0.0465761   0.0396988   0.0534535
3 months    ki1135781-COHORTS       >51                  NA                0.0105820   0.0046263   0.0165378
6 months    ki1000108-IRC           <=46.8               NA                0.8955224   0.8221860   0.9688588
6 months    ki1000108-IRC           (46.8-48.8]          NA                0.4018692   0.3088536   0.4948847
6 months    ki1000108-IRC           (48.8-51]            NA                0.3286713   0.2515832   0.4057595
6 months    ki1000108-IRC           >51                  NA                0.2083333   0.1144061   0.3022605
6 months    ki1101329-Keneba        <=46.8               NA                0.8161765   0.7510553   0.8812976
6 months    ki1101329-Keneba        (46.8-48.8]          NA                0.4429967   0.3874116   0.4985819
6 months    ki1101329-Keneba        (48.8-51]            NA                0.2204380   0.1893836   0.2514923
6 months    ki1101329-Keneba        >51                  NA                0.1217949   0.0854926   0.1580972
6 months    ki1126311-ZVITAMBO      <=46.8               NA                0.7420925   0.6997882   0.7843967
6 months    ki1126311-ZVITAMBO      (46.8-48.8]          NA                0.2713287   0.2387296   0.3039277
6 months    ki1126311-ZVITAMBO      (48.8-51]            NA                0.1690450   0.1447020   0.1933880
6 months    ki1126311-ZVITAMBO      >51                  NA                0.0969163   0.0584223   0.1354103
6 months    ki1135781-COHORTS       <=46.8               NA                0.7673130   0.7237176   0.8109085
6 months    ki1135781-COHORTS       (46.8-48.8]          NA                0.3144509   0.2835045   0.3453973
6 months    ki1135781-COHORTS       (48.8-51]            NA                0.1429706   0.1236318   0.1623095
6 months    ki1135781-COHORTS       >51                  NA                0.0388128   0.0207212   0.0569044
12 months   ki1000108-IRC           <=46.8               NA                0.9104478   0.8419882   0.9789073
12 months   ki1000108-IRC           (46.8-48.8]          NA                0.4766355   0.3818790   0.5713920
12 months   ki1000108-IRC           (48.8-51]            NA                0.4265734   0.3454076   0.5077393
12 months   ki1000108-IRC           >51                  NA                0.3561644   0.2461734   0.4661553
12 months   ki1101329-Keneba        <=46.8               NA                0.8382353   0.7763263   0.9001442
12 months   ki1101329-Keneba        (46.8-48.8]          NA                0.5714286   0.5161426   0.6267146
12 months   ki1101329-Keneba        (48.8-51]            NA                0.3434783   0.3080339   0.3789227
12 months   ki1101329-Keneba        >51                  NA                0.1968254   0.1529028   0.2407480
12 months   ki1126311-ZVITAMBO      <=46.8               NA                0.7803204   0.7414942   0.8191466
12 months   ki1126311-ZVITAMBO      (46.8-48.8]          NA                0.3606755   0.3279809   0.3933701
12 months   ki1126311-ZVITAMBO      (48.8-51]            NA                0.2708538   0.2435626   0.2981449
12 months   ki1126311-ZVITAMBO      >51                  NA                0.1558442   0.1090615   0.2026268
12 months   ki1135781-COHORTS       <=46.8               NA                0.8030719   0.7848157   0.8213280
12 months   ki1135781-COHORTS       (46.8-48.8]          NA                0.4344156   0.4169092   0.4519220
12 months   ki1135781-COHORTS       (48.8-51]            NA                0.2581032   0.2432443   0.2729622
12 months   ki1135781-COHORTS       >51                  NA                0.1568816   0.1347663   0.1789970
18 months   ki1101329-Keneba        <=46.8               NA                0.8872180   0.8334386   0.9409974
18 months   ki1101329-Keneba        (46.8-48.8]          NA                0.6526316   0.5973331   0.7079301
18 months   ki1101329-Keneba        (48.8-51]            NA                0.4768519   0.4383817   0.5153220
18 months   ki1101329-Keneba        >51                  NA                0.2937294   0.2424261   0.3450326
18 months   ki1126311-ZVITAMBO      <=46.8               NA                0.7977208   0.7556855   0.8397561
18 months   ki1126311-ZVITAMBO      (46.8-48.8]          NA                0.4951456   0.4557161   0.5345752
18 months   ki1126311-ZVITAMBO      (48.8-51]            NA                0.3741307   0.3387509   0.4095105
18 months   ki1126311-ZVITAMBO      >51                  NA                0.2653061   0.1939166   0.3366957
18 months   ki1135781-COHORTS       <=46.8               NA                0.9428571   0.9185355   0.9671788
18 months   ki1135781-COHORTS       (46.8-48.8]          NA                0.7423529   0.7129473   0.7717586
18 months   ki1135781-COHORTS       (48.8-51]            NA                0.5622490   0.5346867   0.5898113
18 months   ki1135781-COHORTS       >51                  NA                0.4078091   0.3629416   0.4526766
24 months   ki1017093c-NIH-Crypto   <=46.8               NA                0.9166667   0.8694800   0.9638533
24 months   ki1017093c-NIH-Crypto   (46.8-48.8]          NA                0.5625000   0.4996890   0.6253110
24 months   ki1017093c-NIH-Crypto   (48.8-51]            NA                0.2814070   0.2188792   0.3439349
24 months   ki1017093c-NIH-Crypto   >51                  NA                0.0952381   0.0226955   0.1677807
24 months   ki1101329-Keneba        <=46.8               NA                0.8606557   0.7991814   0.9221301
24 months   ki1101329-Keneba        (46.8-48.8]          NA                0.7142857   0.6613513   0.7672201
24 months   ki1101329-Keneba        (48.8-51]            NA                0.5788618   0.5398247   0.6178988
24 months   ki1101329-Keneba        >51                  NA                0.3531469   0.2977338   0.4085599
24 months   ki1126311-ZVITAMBO      <=46.8               NA                0.9262295   0.8797955   0.9726635
24 months   ki1126311-ZVITAMBO      (46.8-48.8]          NA                0.7425150   0.6761275   0.8089024
24 months   ki1126311-ZVITAMBO      (48.8-51]            NA                0.5882353   0.5101679   0.6663027
24 months   ki1126311-ZVITAMBO      >51                  NA                0.3913043   0.1916361   0.5909726
24 months   ki1135781-COHORTS       <=46.8               NA                0.9701493   0.9519229   0.9883756
24 months   ki1135781-COHORTS       (46.8-48.8]          NA                0.8607748   0.8371625   0.8843871
24 months   ki1135781-COHORTS       (48.8-51]            NA                0.7135843   0.6882324   0.7389362
24 months   ki1135781-COHORTS       >51                  NA                0.5812357   0.5349715   0.6274999


### Parameter: E(Y)


agecat      studyid                 intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki1000108-IRC           NA                   NA                0.3196931   0.2957845   0.3436017
3 months    ki1101329-Keneba        NA                   NA                0.2174194   0.2072317   0.2276070
3 months    ki1126311-ZVITAMBO      NA                   NA                0.2107688   0.2033617   0.2181759
3 months    ki1135781-COHORTS       NA                   NA                0.1776765   0.1732506   0.1821024
6 months    ki1000108-IRC           NA                   NA                0.4241645   0.4018312   0.4464979
6 months    ki1101329-Keneba        NA                   NA                0.3027778   0.2925211   0.3130344
6 months    ki1126311-ZVITAMBO      NA                   NA                0.2981449   0.2892344   0.3070554
6 months    ki1135781-COHORTS       NA                   NA                0.2552172   0.2474517   0.2629828
12 months   ki1000108-IRC           NA                   NA                0.5102564   0.4917089   0.5288039
12 months   ki1101329-Keneba        NA                   NA                0.4064872   0.3968891   0.4160854
12 months   ki1126311-ZVITAMBO      NA                   NA                0.3783784   0.3708209   0.3859358
12 months   ki1135781-COHORTS       NA                   NA                0.4124434   0.4080766   0.4168102
18 months   ki1101329-Keneba        NA                   NA                0.5127831   0.5037708   0.5217953
18 months   ki1126311-ZVITAMBO      NA                   NA                0.4871935   0.4796151   0.4947718
18 months   ki1135781-COHORTS       NA                   NA                0.6362698   0.6304926   0.6420470
24 months   ki1017093c-NIH-Crypto   NA                   NA                0.5015773   0.4811290   0.5220256
24 months   ki1101329-Keneba        NA                   NA                0.5848043   0.5766524   0.5929562
24 months   ki1126311-ZVITAMBO      NA                   NA                0.7225806   0.7089655   0.7361958
24 months   ki1135781-COHORTS       NA                   NA                0.7666667   0.7622892   0.7710442


### Parameter: RR


agecat      studyid                 intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki1000108-IRC           (46.8-48.8]          <=46.8            0.3631509   0.2661819   0.4954453
3 months    ki1000108-IRC           (48.8-51]            <=46.8            0.2547453   0.1818616   0.3568381
3 months    ki1000108-IRC           >51                  <=46.8            0.1164384   0.0570269   0.2377455
3 months    ki1101329-Keneba        (46.8-48.8]          <=46.8            0.4025047   0.3365972   0.4813171
3 months    ki1101329-Keneba        (48.8-51]            <=46.8            0.1560135   0.1261797   0.1929011
3 months    ki1101329-Keneba        >51                  <=46.8            0.0925056   0.0623444   0.1372583
3 months    ki1126311-ZVITAMBO      (46.8-48.8]          <=46.8            0.2101378   0.1800703   0.2452258
3 months    ki1126311-ZVITAMBO      (48.8-51]            <=46.8            0.1351141   0.1137218   0.1605306
3 months    ki1126311-ZVITAMBO      >51                  <=46.8            0.0752519   0.0472124   0.1199442
3 months    ki1135781-COHORTS       (46.8-48.8]          <=46.8            0.1663924   0.1498331   0.1847818
3 months    ki1135781-COHORTS       (48.8-51]            <=46.8            0.0741904   0.0637645   0.0863210
3 months    ki1135781-COHORTS       >51                  <=46.8            0.0168559   0.0095915   0.0296222
6 months    ki1000108-IRC           (46.8-48.8]          <=46.8            0.4487539   0.3510600   0.5736343
6 months    ki1000108-IRC           (48.8-51]            <=46.8            0.3670163   0.2862816   0.4705191
6 months    ki1000108-IRC           >51                  <=46.8            0.2326389   0.1471217   0.3678646
6 months    ki1101329-Keneba        (46.8-48.8]          <=46.8            0.5427708   0.4677772   0.6297873
6 months    ki1101329-Keneba        (48.8-51]            <=46.8            0.2700861   0.2297150   0.3175523
6 months    ki1101329-Keneba        >51                  <=46.8            0.1492261   0.1096077   0.2031650
6 months    ki1126311-ZVITAMBO      (46.8-48.8]          <=46.8            0.3656265   0.3200983   0.4176303
6 months    ki1126311-ZVITAMBO      (48.8-51]            <=46.8            0.2277951   0.1951113   0.2659539
6 months    ki1126311-ZVITAMBO      >51                  <=46.8            0.1305987   0.0874328   0.1950757
6 months    ki1135781-COHORTS       (46.8-48.8]          <=46.8            0.4098078   0.3657871   0.4591263
6 months    ki1135781-COHORTS       (48.8-51]            <=46.8            0.1863263   0.1609007   0.2157698
6 months    ki1135781-COHORTS       >51                  <=46.8            0.0505827   0.0316278   0.0808976
12 months   ki1000108-IRC           (46.8-48.8]          <=46.8            0.5235177   0.4232754   0.6475000
12 months   ki1000108-IRC           (48.8-51]            <=46.8            0.4685315   0.3818433   0.5749000
12 months   ki1000108-IRC           >51                  <=46.8            0.3911970   0.2846806   0.5375675
12 months   ki1101329-Keneba        (46.8-48.8]          <=46.8            0.6817043   0.6035792   0.7699415
12 months   ki1101329-Keneba        (48.8-51]            <=46.8            0.4097635   0.3609289   0.4652057
12 months   ki1101329-Keneba        >51                  <=46.8            0.2348092   0.1856223   0.2970300
12 months   ki1126311-ZVITAMBO      (46.8-48.8]          <=46.8            0.4622147   0.4168070   0.5125691
12 months   ki1126311-ZVITAMBO      (48.8-51]            <=46.8            0.3471059   0.3102115   0.3883882
12 months   ki1126311-ZVITAMBO      >51                  <=46.8            0.1997182   0.1473223   0.2707489
12 months   ki1135781-COHORTS       (46.8-48.8]          <=46.8            0.5409424   0.5164839   0.5665590
12 months   ki1135781-COHORTS       (48.8-51]            <=46.8            0.3213950   0.3021052   0.3419164
12 months   ki1135781-COHORTS       >51                  <=46.8            0.1953519   0.1693577   0.2253359
18 months   ki1101329-Keneba        (46.8-48.8]          <=46.8            0.7355932   0.6628151   0.8163625
18 months   ki1101329-Keneba        (48.8-51]            <=46.8            0.5374686   0.4858795   0.5945352
18 months   ki1101329-Keneba        >51                  <=46.8            0.3310679   0.2751847   0.3982995
18 months   ki1126311-ZVITAMBO      (46.8-48.8]          <=46.8            0.6207004   0.5641727   0.6828919
18 months   ki1126311-ZVITAMBO      (48.8-51]            <=46.8            0.4689996   0.4208794   0.5226216
18 months   ki1126311-ZVITAMBO      >51                  <=46.8            0.3325802   0.2528222   0.4374995
18 months   ki1135781-COHORTS       (46.8-48.8]          <=46.8            0.7873440   0.7509920   0.8254557
18 months   ki1135781-COHORTS       (48.8-51]            <=46.8            0.5963247   0.5641899   0.6302898
18 months   ki1135781-COHORTS       >51                  <=46.8            0.4325248   0.3863081   0.4842707
24 months   ki1017093c-NIH-Crypto   (46.8-48.8]          <=46.8            0.6136364   0.5426392   0.6939226
24 months   ki1017093c-NIH-Crypto   (48.8-51]            <=46.8            0.3069895   0.2443818   0.3856366
24 months   ki1017093c-NIH-Crypto   >51                  <=46.8            0.1038961   0.0484221   0.2229229
24 months   ki1101329-Keneba        (46.8-48.8]          <=46.8            0.8299320   0.7487590   0.9199049
24 months   ki1101329-Keneba        (48.8-51]            <=46.8            0.6725823   0.6096540   0.7420060
24 months   ki1101329-Keneba        >51                  <=46.8            0.4103230   0.3453437   0.4875287
24 months   ki1126311-ZVITAMBO      (46.8-48.8]          <=46.8            0.8016533   0.7235514   0.8881857
24 months   ki1126311-ZVITAMBO      (48.8-51]            <=46.8            0.6350859   0.5510870   0.7318883
24 months   ki1126311-ZVITAMBO      >51                  <=46.8            0.4224702   0.2530023   0.7054522
24 months   ki1135781-COHORTS       (46.8-48.8]          <=46.8            0.8872602   0.8582454   0.9172559
24 months   ki1135781-COHORTS       (48.8-51]            <=46.8            0.7355407   0.7065661   0.7657035
24 months   ki1135781-COHORTS       >51                  <=46.8            0.5991199   0.5520719   0.6501773


### Parameter: PAR


agecat      studyid                 intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -------------------  ---------------  -----------  -----------  -----------
3 months    ki1000108-IRC           <=46.8               NA                -0.5038363   -0.5976584   -0.4100142
3 months    ki1101329-Keneba        <=46.8               NA                -0.5640376   -0.6307557   -0.4973195
3 months    ki1126311-ZVITAMBO      <=46.8               NA                -0.4696764   -0.5068678   -0.4324849
3 months    ki1135781-COHORTS       <=46.8               NA                -0.4501150   -0.4716814   -0.4285487
6 months    ki1000108-IRC           <=46.8               NA                -0.4713579   -0.5480195   -0.3946963
6 months    ki1101329-Keneba        <=46.8               NA                -0.5133987   -0.5793226   -0.4474748
6 months    ki1126311-ZVITAMBO      <=46.8               NA                -0.4439476   -0.4871801   -0.4007151
6 months    ki1135781-COHORTS       <=46.8               NA                -0.5120958   -0.5563775   -0.4678141
12 months   ki1000108-IRC           <=46.8               NA                -0.4001913   -0.4711189   -0.3292638
12 months   ki1101329-Keneba        <=46.8               NA                -0.4317481   -0.4943966   -0.3690995
12 months   ki1126311-ZVITAMBO      <=46.8               NA                -0.4019420   -0.4414969   -0.3623871
12 months   ki1135781-COHORTS       <=46.8               NA                -0.3906285   -0.4093996   -0.3718573
18 months   ki1101329-Keneba        <=46.8               NA                -0.3744350   -0.4289643   -0.3199057
18 months   ki1126311-ZVITAMBO      <=46.8               NA                -0.3105273   -0.3532403   -0.2678144
18 months   ki1135781-COHORTS       <=46.8               NA                -0.3065874   -0.3315857   -0.2815890
24 months   ki1017093c-NIH-Crypto   <=46.8               NA                -0.4150894   -0.4665161   -0.3636626
24 months   ki1101329-Keneba        <=46.8               NA                -0.2758514   -0.3378640   -0.2138389
24 months   ki1126311-ZVITAMBO      <=46.8               NA                -0.2036489   -0.2520378   -0.1552599
24 months   ki1135781-COHORTS       <=46.8               NA                -0.2034826   -0.2222272   -0.1847379


### Parameter: PAF


agecat      studyid                 intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -------------------  ---------------  -----------  -----------  -----------
3 months    ki1000108-IRC           <=46.8               NA                -1.5760000   -1.9428832   -1.2548553
3 months    ki1101329-Keneba        <=46.8               NA                -2.5942382   -2.9584211   -2.2635609
3 months    ki1126311-ZVITAMBO      <=46.8               NA                -2.2283962   -2.4419833   -2.0280629
3 months    ki1135781-COHORTS       <=46.8               NA                -2.5333397   -2.6843250   -2.3885418
6 months    ki1000108-IRC           <=46.8               NA                -1.1112619   -1.3271494   -0.9154020
6 months    ki1101329-Keneba        <=46.8               NA                -1.6956287   -1.9397157   -1.4718085
6 months    ki1126311-ZVITAMBO      <=46.8               NA                -1.4890331   -1.6545103   -1.3338714
6 months    ki1135781-COHORTS       <=46.8               NA                -2.0065093   -2.2066605   -1.8188510
12 months   ki1000108-IRC           <=46.8               NA                -0.7842946   -0.9397158   -0.6413267
12 months   ki1101329-Keneba        <=46.8               NA                -1.0621442   -1.2284033   -0.9082896
12 months   ki1126311-ZVITAMBO      <=46.8               NA                -1.0622753   -1.1758639   -0.9546164
12 months   ki1135781-COHORTS       <=46.8               NA                -0.9471081   -0.9965541   -0.8988866
18 months   ki1101329-Keneba        <=46.8               NA                -0.7302016   -0.8429180   -0.6243791
18 months   ki1126311-ZVITAMBO      <=46.8               NA                -0.6373799   -0.7298584   -0.5498454
18 months   ki1135781-COHORTS       <=46.8               NA                -0.4818512   -0.5229346   -0.4418761
24 months   ki1017093c-NIH-Crypto   <=46.8               NA                -0.8275681   -0.9516024   -0.7114169
24 months   ki1101329-Keneba        <=46.8               NA                -0.4716987   -0.5827949   -0.3684004
24 months   ki1126311-ZVITAMBO      <=46.8               NA                -0.2818355   -0.3523575   -0.2149910
24 months   ki1135781-COHORTS       <=46.8               NA                -0.2654121   -0.2905048   -0.2408072


