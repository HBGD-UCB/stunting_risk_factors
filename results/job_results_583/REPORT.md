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

**Intervention Variable:** birthwt

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
* agecat: 12 months, studyid: ki1000109-EE
* agecat: 12 months, studyid: ki1017093b-PROVIDE
* agecat: 12 months, studyid: ki1017093c-NIH-Crypto
* agecat: 12 months, studyid: ki1066203-TanzaniaChild2
* agecat: 12 months, studyid: ki1101329-Keneba
* agecat: 12 months, studyid: ki1126311-ZVITAMBO
* agecat: 12 months, studyid: ki1135781-COHORTS
* agecat: 18 months, studyid: ki0047075b-MAL-ED
* agecat: 18 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 18 months, studyid: ki1000108-IRC
* agecat: 18 months, studyid: ki1000109-EE
* agecat: 18 months, studyid: ki1017093b-PROVIDE
* agecat: 18 months, studyid: ki1017093c-NIH-Crypto
* agecat: 18 months, studyid: ki1066203-TanzaniaChild2
* agecat: 18 months, studyid: ki1101329-Keneba
* agecat: 18 months, studyid: ki1126311-ZVITAMBO
* agecat: 18 months, studyid: ki1135781-COHORTS
* agecat: 24 months, studyid: ki0047075b-MAL-ED
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 24 months, studyid: ki1000108-IRC
* agecat: 24 months, studyid: ki1000109-EE
* agecat: 24 months, studyid: ki1017093b-PROVIDE
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2
* agecat: 24 months, studyid: ki1101329-Keneba
* agecat: 24 months, studyid: ki1126311-ZVITAMBO
* agecat: 24 months, studyid: ki1135781-COHORTS
* agecat: 3 months, studyid: ki0047075b-MAL-ED
* agecat: 3 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 3 months, studyid: ki1000108-IRC
* agecat: 3 months, studyid: ki1000109-EE
* agecat: 3 months, studyid: ki1017093b-PROVIDE
* agecat: 3 months, studyid: ki1017093c-NIH-Crypto
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2
* agecat: 3 months, studyid: ki1101329-Keneba
* agecat: 3 months, studyid: ki1126311-ZVITAMBO
* agecat: 3 months, studyid: ki1135781-COHORTS
* agecat: 6 months, studyid: ki0047075b-MAL-ED
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 6 months, studyid: ki1000108-IRC
* agecat: 6 months, studyid: ki1000109-EE
* agecat: 6 months, studyid: ki1017093b-PROVIDE
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2
* agecat: 6 months, studyid: ki1101329-Keneba
* agecat: 6 months, studyid: ki1126311-ZVITAMBO
* agecat: 6 months, studyid: ki1135781-COHORTS

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 3 months, studyid: ki1017093b-PROVIDE
* agecat: 3 months, studyid: ki1017093c-NIH-Crypto
* agecat: 6 months, studyid: ki1017093b-PROVIDE
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto
* agecat: 12 months, studyid: ki1017093b-PROVIDE
* agecat: 18 months, studyid: ki1017093b-PROVIDE
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 24 months, studyid: ki1000109-EE
* agecat: 24 months, studyid: ki1017093b-PROVIDE

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness




# Results Detail

## Results Plots
![](/tmp/91bd87e6-cd86-4fab-8a6e-f61525a244e1/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/91bd87e6-cd86-4fab-8a6e-f61525a244e1/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/91bd87e6-cd86-4fab-8a6e-f61525a244e1/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/91bd87e6-cd86-4fab-8a6e-f61525a244e1/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Data Summary

agecat      studyid                    A                     n     nA   nAY0   nAY1
----------  -------------------------  ---------------  ------  -----  -----  -----
3 months    ki0047075b-MAL-ED          <=2600             1697    292    115    177
3 months    ki0047075b-MAL-ED          (2600-2970]        1697    376    264    112
3 months    ki0047075b-MAL-ED          (2970-3302.75]     1697    548    455     93
3 months    ki0047075b-MAL-ED          >3302.75           1697    481    448     33
3 months    ki1000108-CMC-V-BCS-2002   <=2600              362     89     35     54
3 months    ki1000108-CMC-V-BCS-2002   (2600-2970]         362     83     50     33
3 months    ki1000108-CMC-V-BCS-2002   (2970-3302.75]      362    126     98     28
3 months    ki1000108-CMC-V-BCS-2002   >3302.75            362     64     54     10
3 months    ki1000108-IRC              <=2600              404    103     46     57
3 months    ki1000108-IRC              (2600-2970]         404    124     84     40
3 months    ki1000108-IRC              (2970-3302.75]      404    116     93     23
3 months    ki1000108-IRC              >3302.75            404     61     54      7
3 months    ki1000109-EE               <=2600              379    179     35    144
3 months    ki1000109-EE               (2600-2970]         379     96     39     57
3 months    ki1000109-EE               (2970-3302.75]      379     70     38     32
3 months    ki1000109-EE               >3302.75            379     34     26      8
3 months    ki1017093b-PROVIDE         <=2600              175     54     23     31
3 months    ki1017093b-PROVIDE         (2600-2970]         175     66     56     10
3 months    ki1017093b-PROVIDE         (2970-3302.75]      175     44     42      2
3 months    ki1017093b-PROVIDE         >3302.75            175     11     10      1
3 months    ki1017093c-NIH-Crypto      <=2600              758    263    170     93
3 months    ki1017093c-NIH-Crypto      (2600-2970]         758    230    210     20
3 months    ki1017093c-NIH-Crypto      (2970-3302.75]      758    177    171      6
3 months    ki1017093c-NIH-Crypto      >3302.75            758     88     86      2
3 months    ki1066203-TanzaniaChild2   <=2600              596     51     33     18
3 months    ki1066203-TanzaniaChild2   (2600-2970]         596     72     57     15
3 months    ki1066203-TanzaniaChild2   (2970-3302.75]      596    233    214     19
3 months    ki1066203-TanzaniaChild2   >3302.75            596    240    234      6
3 months    ki1101329-Keneba           <=2600             1917    372    172    200
3 months    ki1101329-Keneba           (2600-2970]        1917    595    446    149
3 months    ki1101329-Keneba           (2970-3302.75]     1917    609    526     83
3 months    ki1101329-Keneba           >3302.75           1917    341    316     25
3 months    ki1126311-ZVITAMBO         <=2600             3494    709    340    369
3 months    ki1126311-ZVITAMBO         (2600-2970]        3494    945    738    207
3 months    ki1126311-ZVITAMBO         (2970-3302.75]     3494   1071    954    117
3 months    ki1126311-ZVITAMBO         >3302.75           3494    769    728     41
3 months    ki1135781-COHORTS          <=2600            10087   3078   1807   1271
3 months    ki1135781-COHORTS          (2600-2970]       10087   2790   2457    333
3 months    ki1135781-COHORTS          (2970-3302.75]    10087   2890   2727    163
3 months    ki1135781-COHORTS          >3302.75          10087   1329   1296     33
6 months    ki0047075b-MAL-ED          <=2600             1586    270     89    181
6 months    ki0047075b-MAL-ED          (2600-2970]        1586    346    222    124
6 months    ki0047075b-MAL-ED          (2970-3302.75]     1586    512    379    133
6 months    ki0047075b-MAL-ED          >3302.75           1586    458    397     61
6 months    ki1000108-CMC-V-BCS-2002   <=2600              367     90     22     68
6 months    ki1000108-CMC-V-BCS-2002   (2600-2970]         367     84     38     46
6 months    ki1000108-CMC-V-BCS-2002   (2970-3302.75]      367    129     77     52
6 months    ki1000108-CMC-V-BCS-2002   >3302.75            367     64     42     22
6 months    ki1000108-IRC              <=2600              402    102     41     61
6 months    ki1000108-IRC              (2600-2970]         402    124     63     61
6 months    ki1000108-IRC              (2970-3302.75]      402    115     80     35
6 months    ki1000108-IRC              >3302.75            402     61     50     11
6 months    ki1000109-EE               <=2600              373    177     18    159
6 months    ki1000109-EE               (2600-2970]         373     95     29     66
6 months    ki1000109-EE               (2970-3302.75]      373     69     29     40
6 months    ki1000109-EE               >3302.75            373     32     20     12
6 months    ki1017093b-PROVIDE         <=2600              166     52     20     32
6 months    ki1017093b-PROVIDE         (2600-2970]         166     62     50     12
6 months    ki1017093b-PROVIDE         (2970-3302.75]      166     42     39      3
6 months    ki1017093b-PROVIDE         >3302.75            166     10      9      1
6 months    ki1017093c-NIH-Crypto      <=2600              736    256    116    140
6 months    ki1017093c-NIH-Crypto      (2600-2970]         736    222    162     60
6 months    ki1017093c-NIH-Crypto      (2970-3302.75]      736    172    148     24
6 months    ki1017093c-NIH-Crypto      >3302.75            736     86     84      2
6 months    ki1066203-TanzaniaChild2   <=2600              551     48     27     21
6 months    ki1066203-TanzaniaChild2   (2600-2970]         551     64     43     21
6 months    ki1066203-TanzaniaChild2   (2970-3302.75]      551    211    170     41
6 months    ki1066203-TanzaniaChild2   >3302.75            551    228    206     22
6 months    ki1101329-Keneba           <=2600             1825    353    143    210
6 months    ki1101329-Keneba           (2600-2970]        1825    562    355    207
6 months    ki1101329-Keneba           (2970-3302.75]     1825    570    444    126
6 months    ki1101329-Keneba           >3302.75           1825    340    295     45
6 months    ki1126311-ZVITAMBO         <=2600             2278    442    156    286
6 months    ki1126311-ZVITAMBO         (2600-2970]        2278    605    402    203
6 months    ki1126311-ZVITAMBO         (2970-3302.75]     2278    725    588    137
6 months    ki1126311-ZVITAMBO         >3302.75           2278    506    456     50
6 months    ki1135781-COHORTS          <=2600             2889    504    210    294
6 months    ki1135781-COHORTS          (2600-2970]        2889    777    559    218
6 months    ki1135781-COHORTS          (2970-3302.75]     2889   1053    870    183
6 months    ki1135781-COHORTS          >3302.75           2889    555    519     36
12 months   ki0047075b-MAL-ED          <=2600             1532    261     74    187
12 months   ki0047075b-MAL-ED          (2600-2970]        1532    328    180    148
12 months   ki0047075b-MAL-ED          (2970-3302.75]     1532    497    317    180
12 months   ki0047075b-MAL-ED          >3302.75           1532    446    343    103
12 months   ki1000108-CMC-V-BCS-2002   <=2600              372     91     14     77
12 months   ki1000108-CMC-V-BCS-2002   (2600-2970]         372     84     24     60
12 months   ki1000108-CMC-V-BCS-2002   (2970-3302.75]      372    133     46     87
12 months   ki1000108-CMC-V-BCS-2002   >3302.75            372     64     28     36
12 months   ki1000108-IRC              <=2600              402    101     34     67
12 months   ki1000108-IRC              (2600-2970]         402    124     49     75
12 months   ki1000108-IRC              (2970-3302.75]      402    116     71     45
12 months   ki1000108-IRC              >3302.75            402     61     46     15
12 months   ki1000109-EE               <=2600              373    176      9    167
12 months   ki1000109-EE               (2600-2970]         373     94     22     72
12 months   ki1000109-EE               (2970-3302.75]      373     69     16     53
12 months   ki1000109-EE               >3302.75            373     34     18     16
12 months   ki1017093b-PROVIDE         <=2600              159     50     17     33
12 months   ki1017093b-PROVIDE         (2600-2970]         159     60     42     18
12 months   ki1017093b-PROVIDE         (2970-3302.75]      159     39     35      4
12 months   ki1017093b-PROVIDE         >3302.75            159     10      9      1
12 months   ki1017093c-NIH-Crypto      <=2600              729    251     95    156
12 months   ki1017093c-NIH-Crypto      (2600-2970]         729    222    147     75
12 months   ki1017093c-NIH-Crypto      (2970-3302.75]      729    171    135     36
12 months   ki1017093c-NIH-Crypto      >3302.75            729     85     75     10
12 months   ki1066203-TanzaniaChild2   <=2600              490     40     18     22
12 months   ki1066203-TanzaniaChild2   (2600-2970]         490     56     29     27
12 months   ki1066203-TanzaniaChild2   (2970-3302.75]      490    194    130     64
12 months   ki1066203-TanzaniaChild2   >3302.75            490    200    158     42
12 months   ki1101329-Keneba           <=2600             1885    354    116    238
12 months   ki1101329-Keneba           (2600-2970]        1885    586    301    285
12 months   ki1101329-Keneba           (2970-3302.75]     1885    595    406    189
12 months   ki1101329-Keneba           >3302.75           1885    350    263     87
12 months   ki1126311-ZVITAMBO         <=2600             2541    484    149    335
12 months   ki1126311-ZVITAMBO         (2600-2970]        2541    691    394    297
12 months   ki1126311-ZVITAMBO         (2970-3302.75]     2541    804    585    219
12 months   ki1126311-ZVITAMBO         >3302.75           2541    562    455    107
12 months   ki1135781-COHORTS          <=2600             9423   2838   1040   1798
12 months   ki1135781-COHORTS          (2600-2970]        9423   2609   1554   1055
12 months   ki1135781-COHORTS          (2970-3302.75]     9423   2734   1941    793
12 months   ki1135781-COHORTS          >3302.75           9423   1242   1007    235
18 months   ki0047075b-MAL-ED          <=2600             1465    253     62    191
18 months   ki0047075b-MAL-ED          (2600-2970]        1465    316    130    186
18 months   ki0047075b-MAL-ED          (2970-3302.75]     1465    479    245    234
18 months   ki0047075b-MAL-ED          >3302.75           1465    417    279    138
18 months   ki1000108-CMC-V-BCS-2002   <=2600              373     91      5     86
18 months   ki1000108-CMC-V-BCS-2002   (2600-2970]         373     84     15     69
18 months   ki1000108-CMC-V-BCS-2002   (2970-3302.75]      373    133     24    109
18 months   ki1000108-CMC-V-BCS-2002   >3302.75            373     65     13     52
18 months   ki1000108-IRC              <=2600              403    102     29     73
18 months   ki1000108-IRC              (2600-2970]         403    124     45     79
18 months   ki1000108-IRC              (2970-3302.75]      403    116     58     58
18 months   ki1000108-IRC              >3302.75            403     61     46     15
18 months   ki1000109-EE               <=2600              363    170      6    164
18 months   ki1000109-EE               (2600-2970]         363     93     13     80
18 months   ki1000109-EE               (2970-3302.75]      363     68      6     62
18 months   ki1000109-EE               >3302.75            363     32      7     25
18 months   ki1017093b-PROVIDE         <=2600              155     47     13     34
18 months   ki1017093b-PROVIDE         (2600-2970]         155     59     32     27
18 months   ki1017093b-PROVIDE         (2970-3302.75]      155     39     32      7
18 months   ki1017093b-PROVIDE         >3302.75            155     10      8      2
18 months   ki1017093c-NIH-Crypto      <=2600              715    249     79    170
18 months   ki1017093c-NIH-Crypto      (2600-2970]         715    218    133     85
18 months   ki1017093c-NIH-Crypto      (2970-3302.75]      715    167    117     50
18 months   ki1017093c-NIH-Crypto      >3302.75            715     81     69     12
18 months   ki1066203-TanzaniaChild2   <=2600              355     26     10     16
18 months   ki1066203-TanzaniaChild2   (2600-2970]         355     40     19     21
18 months   ki1066203-TanzaniaChild2   (2970-3302.75]      355    155     82     73
18 months   ki1066203-TanzaniaChild2   >3302.75            355    134     93     41
18 months   ki1101329-Keneba           <=2600             1819    340     84    256
18 months   ki1101329-Keneba           (2600-2970]        1819    568    243    325
18 months   ki1101329-Keneba           (2970-3302.75]     1819    572    322    250
18 months   ki1101329-Keneba           >3302.75           1819    339    235    104
18 months   ki1126311-ZVITAMBO         <=2600             1854    395     87    308
18 months   ki1126311-ZVITAMBO         (2600-2970]        1854    546    258    288
18 months   ki1126311-ZVITAMBO         (2970-3302.75]     1854    572    363    209
18 months   ki1126311-ZVITAMBO         >3302.75           1854    341    245     96
18 months   ki1135781-COHORTS          <=2600             2915    509     68    441
18 months   ki1135781-COHORTS          (2600-2970]        2915    781    262    519
18 months   ki1135781-COHORTS          (2970-3302.75]     2915   1048    427    621
18 months   ki1135781-COHORTS          >3302.75           2915    577    301    276
24 months   ki0047075b-MAL-ED          <=2600             1393    244     57    187
24 months   ki0047075b-MAL-ED          (2600-2970]        1393    304    110    194
24 months   ki0047075b-MAL-ED          (2970-3302.75]     1393    456    211    245
24 months   ki0047075b-MAL-ED          >3302.75           1393    389    242    147
24 months   ki1000108-CMC-V-BCS-2002   <=2600              373     91      2     89
24 months   ki1000108-CMC-V-BCS-2002   (2600-2970]         373     84      6     78
24 months   ki1000108-CMC-V-BCS-2002   (2970-3302.75]      373    133     12    121
24 months   ki1000108-CMC-V-BCS-2002   >3302.75            373     65      8     57
24 months   ki1000108-IRC              <=2600              404    103     25     78
24 months   ki1000108-IRC              (2600-2970]         404    124     37     87
24 months   ki1000108-IRC              (2970-3302.75]      404    116     45     71
24 months   ki1000108-IRC              >3302.75            404     61     39     22
24 months   ki1000109-EE               <=2600              338    156      4    152
24 months   ki1000109-EE               (2600-2970]         338     87     12     75
24 months   ki1000109-EE               (2970-3302.75]      338     64      5     59
24 months   ki1000109-EE               >3302.75            338     31      6     25
24 months   ki1017093b-PROVIDE         <=2600              148     45     11     34
24 months   ki1017093b-PROVIDE         (2600-2970]         148     57     29     28
24 months   ki1017093b-PROVIDE         (2970-3302.75]      148     36     28      8
24 months   ki1017093b-PROVIDE         >3302.75            148     10      8      2
24 months   ki1017093c-NIH-Crypto      <=2600              634    229     65    164
24 months   ki1017093c-NIH-Crypto      (2600-2970]         634    194    106     88
24 months   ki1017093c-NIH-Crypto      (2970-3302.75]      634    145     93     52
24 months   ki1017093c-NIH-Crypto      >3302.75            634     66     52     14
24 months   ki1066203-TanzaniaChild2   <=2600              248     18      6     12
24 months   ki1066203-TanzaniaChild2   (2600-2970]         248     31     11     20
24 months   ki1066203-TanzaniaChild2   (2970-3302.75]      248    107     55     52
24 months   ki1066203-TanzaniaChild2   >3302.75            248     92     57     35
24 months   ki1101329-Keneba           <=2600             1787    339     70    269
24 months   ki1101329-Keneba           (2600-2970]        1787    555    187    368
24 months   ki1101329-Keneba           (2970-3302.75]     1787    560    277    283
24 months   ki1101329-Keneba           >3302.75           1787    333    205    128
24 months   ki1126311-ZVITAMBO         <=2600              470    102     11     91
24 months   ki1126311-ZVITAMBO         (2600-2970]         470    169     36    133
24 months   ki1126311-ZVITAMBO         (2970-3302.75]      470    133     55     78
24 months   ki1126311-ZVITAMBO         >3302.75            470     66     30     36
24 months   ki1135781-COHORTS          <=2600             2833    490     39    451
24 months   ki1135781-COHORTS          (2600-2970]        2833    774    153    621
24 months   ki1135781-COHORTS          (2970-3302.75]     2833   1026    264    762
24 months   ki1135781-COHORTS          >3302.75           2833    543    206    337

## Results Table

### Parameter: TSM


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki0047075b-MAL-ED          <=2600               NA                0.6061644   0.5501064   0.6622224
3 months    ki0047075b-MAL-ED          (2600-2970]          NA                0.2978723   0.2516337   0.3441110
3 months    ki0047075b-MAL-ED          (2970-3302.75]       NA                0.1697080   0.1382702   0.2011458
3 months    ki0047075b-MAL-ED          >3302.75             NA                0.0686071   0.0460099   0.0912043
3 months    ki1000108-CMC-V-BCS-2002   <=2600               NA                0.6067416   0.5051180   0.7083652
3 months    ki1000108-CMC-V-BCS-2002   (2600-2970]          NA                0.3975904   0.2921581   0.5030226
3 months    ki1000108-CMC-V-BCS-2002   (2970-3302.75]       NA                0.2222222   0.1495305   0.2949140
3 months    ki1000108-CMC-V-BCS-2002   >3302.75             NA                0.1562500   0.0671709   0.2453291
3 months    ki1000108-IRC              <=2600               NA                0.5533981   0.4572708   0.6495254
3 months    ki1000108-IRC              (2600-2970]          NA                0.3225806   0.2402003   0.4049609
3 months    ki1000108-IRC              (2970-3302.75]       NA                0.1982759   0.1256310   0.2709207
3 months    ki1000108-IRC              >3302.75             NA                0.1147541   0.0346716   0.1948366
3 months    ki1000109-EE               <=2600               NA                0.8044693   0.7462914   0.8626471
3 months    ki1000109-EE               (2600-2970]          NA                0.5937500   0.4953750   0.6921250
3 months    ki1000109-EE               (2970-3302.75]       NA                0.4571429   0.3402894   0.5739963
3 months    ki1000109-EE               >3302.75             NA                0.2352941   0.0925247   0.3780635
3 months    ki1066203-TanzaniaChild2   <=2600               NA                0.3529412   0.2216756   0.4842067
3 months    ki1066203-TanzaniaChild2   (2600-2970]          NA                0.2083333   0.1144482   0.3022185
3 months    ki1066203-TanzaniaChild2   (2970-3302.75]       NA                0.0815451   0.0463759   0.1167143
3 months    ki1066203-TanzaniaChild2   >3302.75             NA                0.0250000   0.0052312   0.0447688
3 months    ki1101329-Keneba           <=2600               NA                0.5376344   0.4869556   0.5883132
3 months    ki1101329-Keneba           (2600-2970]          NA                0.2504202   0.2155987   0.2852416
3 months    ki1101329-Keneba           (2970-3302.75]       NA                0.1362890   0.1090327   0.1635453
3 months    ki1101329-Keneba           >3302.75             NA                0.0733138   0.0456416   0.1009860
3 months    ki1126311-ZVITAMBO         <=2600               NA                0.5204513   0.4836729   0.5572298
3 months    ki1126311-ZVITAMBO         (2600-2970]          NA                0.2190476   0.1926736   0.2454216
3 months    ki1126311-ZVITAMBO         (2970-3302.75]       NA                0.1092437   0.0905587   0.1279287
3 months    ki1126311-ZVITAMBO         >3302.75             NA                0.0533160   0.0374350   0.0691970
3 months    ki1135781-COHORTS          <=2600               NA                0.4129305   0.3955357   0.4303252
3 months    ki1135781-COHORTS          (2600-2970]          NA                0.1193548   0.1073242   0.1313855
3 months    ki1135781-COHORTS          (2970-3302.75]       NA                0.0564014   0.0479902   0.0648126
3 months    ki1135781-COHORTS          >3302.75             NA                0.0248307   0.0164642   0.0331972
6 months    ki0047075b-MAL-ED          <=2600               NA                0.6703704   0.6142819   0.7264589
6 months    ki0047075b-MAL-ED          (2600-2970]          NA                0.3583815   0.3078388   0.4089242
6 months    ki0047075b-MAL-ED          (2970-3302.75]       NA                0.2597656   0.2217707   0.2977605
6 months    ki0047075b-MAL-ED          >3302.75             NA                0.1331878   0.1020601   0.1643155
6 months    ki1000108-CMC-V-BCS-2002   <=2600               NA                0.7555556   0.6666472   0.8444639
6 months    ki1000108-CMC-V-BCS-2002   (2600-2970]          NA                0.5476190   0.4410350   0.6542031
6 months    ki1000108-CMC-V-BCS-2002   (2970-3302.75]       NA                0.4031008   0.3183384   0.4878631
6 months    ki1000108-CMC-V-BCS-2002   >3302.75             NA                0.3437500   0.2272284   0.4602716
6 months    ki1000108-IRC              <=2600               NA                0.5980392   0.5027716   0.6933069
6 months    ki1000108-IRC              (2600-2970]          NA                0.4919355   0.4038323   0.5800387
6 months    ki1000108-IRC              (2970-3302.75]       NA                0.3043478   0.2201461   0.3885496
6 months    ki1000108-IRC              >3302.75             NA                0.1803279   0.0837282   0.2769275
6 months    ki1000109-EE               <=2600               NA                0.8983051   0.8537183   0.9428918
6 months    ki1000109-EE               (2600-2970]          NA                0.6947368   0.6020076   0.7874661
6 months    ki1000109-EE               (2970-3302.75]       NA                0.5797101   0.4630866   0.6963337
6 months    ki1000109-EE               >3302.75             NA                0.3750000   0.2070377   0.5429623
6 months    ki1066203-TanzaniaChild2   <=2600               NA                0.4375000   0.2970337   0.5779663
6 months    ki1066203-TanzaniaChild2   (2600-2970]          NA                0.3281250   0.2129876   0.4432624
6 months    ki1066203-TanzaniaChild2   (2970-3302.75]       NA                0.1943128   0.1408766   0.2477490
6 months    ki1066203-TanzaniaChild2   >3302.75             NA                0.0964912   0.0581306   0.1348518
6 months    ki1101329-Keneba           <=2600               NA                0.5949008   0.5436758   0.6461259
6 months    ki1101329-Keneba           (2600-2970]          NA                0.3683274   0.3284376   0.4082172
6 months    ki1101329-Keneba           (2970-3302.75]       NA                0.2210526   0.1869780   0.2551273
6 months    ki1101329-Keneba           >3302.75             NA                0.1323529   0.0963228   0.1683831
6 months    ki1126311-ZVITAMBO         <=2600               NA                0.6470588   0.6024978   0.6916199
6 months    ki1126311-ZVITAMBO         (2600-2970]          NA                0.3355372   0.2979040   0.3731704
6 months    ki1126311-ZVITAMBO         (2970-3302.75]       NA                0.1889655   0.1604629   0.2174682
6 months    ki1126311-ZVITAMBO         >3302.75             NA                0.0988142   0.0728075   0.1248209
6 months    ki1135781-COHORTS          <=2600               NA                0.5833333   0.5402846   0.6263821
6 months    ki1135781-COHORTS          (2600-2970]          NA                0.2805663   0.2489707   0.3121618
6 months    ki1135781-COHORTS          (2970-3302.75]       NA                0.1737892   0.1508981   0.1966802
6 months    ki1135781-COHORTS          >3302.75             NA                0.0648649   0.0443712   0.0853585
12 months   ki0047075b-MAL-ED          <=2600               NA                0.7164751   0.6617778   0.7711724
12 months   ki0047075b-MAL-ED          (2600-2970]          NA                0.4512195   0.3973496   0.5050894
12 months   ki0047075b-MAL-ED          (2970-3302.75]       NA                0.3621730   0.3199041   0.4044420
12 months   ki0047075b-MAL-ED          >3302.75             NA                0.2309417   0.1918168   0.2700666
12 months   ki1000108-CMC-V-BCS-2002   <=2600               NA                0.8461538   0.7719238   0.9203839
12 months   ki1000108-CMC-V-BCS-2002   (2600-2970]          NA                0.7142857   0.6175482   0.8110232
12 months   ki1000108-CMC-V-BCS-2002   (2970-3302.75]       NA                0.6541353   0.5731897   0.7350810
12 months   ki1000108-CMC-V-BCS-2002   >3302.75             NA                0.5625000   0.4407993   0.6842007
12 months   ki1000108-IRC              <=2600               NA                0.6633663   0.5710914   0.7556413
12 months   ki1000108-IRC              (2600-2970]          NA                0.6048387   0.5186828   0.6909946
12 months   ki1000108-IRC              (2970-3302.75]       NA                0.3879310   0.2991465   0.4767156
12 months   ki1000108-IRC              >3302.75             NA                0.2459016   0.1377038   0.3540995
12 months   ki1000109-EE               <=2600               NA                0.9488636   0.9162769   0.9814504
12 months   ki1000109-EE               (2600-2970]          NA                0.7659574   0.6802503   0.8516646
12 months   ki1000109-EE               (2970-3302.75]       NA                0.7681159   0.6684021   0.8678298
12 months   ki1000109-EE               >3302.75             NA                0.4705882   0.3025884   0.6385881
12 months   ki1017093c-NIH-Crypto      <=2600               NA                0.6215139   0.5614713   0.6815566
12 months   ki1017093c-NIH-Crypto      (2600-2970]          NA                0.3378378   0.2755783   0.4000974
12 months   ki1017093c-NIH-Crypto      (2970-3302.75]       NA                0.2105263   0.1493800   0.2716726
12 months   ki1017093c-NIH-Crypto      >3302.75             NA                0.1176471   0.0491064   0.1861877
12 months   ki1066203-TanzaniaChild2   <=2600               NA                0.5500000   0.3956704   0.7043296
12 months   ki1066203-TanzaniaChild2   (2600-2970]          NA                0.4821429   0.3511371   0.6131487
12 months   ki1066203-TanzaniaChild2   (2970-3302.75]       NA                0.3298969   0.2636675   0.3961263
12 months   ki1066203-TanzaniaChild2   >3302.75             NA                0.2100000   0.1534933   0.2665067
12 months   ki1101329-Keneba           <=2600               NA                0.6723164   0.6234088   0.7212239
12 months   ki1101329-Keneba           (2600-2970]          NA                0.4863481   0.4458698   0.5268265
12 months   ki1101329-Keneba           (2970-3302.75]       NA                0.3176471   0.2802290   0.3550652
12 months   ki1101329-Keneba           >3302.75             NA                0.2485714   0.2032818   0.2938611
12 months   ki1126311-ZVITAMBO         <=2600               NA                0.6921488   0.6510166   0.7332809
12 months   ki1126311-ZVITAMBO         (2600-2970]          NA                0.4298119   0.3928935   0.4667303
12 months   ki1126311-ZVITAMBO         (2970-3302.75]       NA                0.2723881   0.2416094   0.3031667
12 months   ki1126311-ZVITAMBO         >3302.75             NA                0.1903915   0.1579256   0.2228573
12 months   ki1135781-COHORTS          <=2600               NA                0.6335447   0.6158166   0.6512729
12 months   ki1135781-COHORTS          (2600-2970]          NA                0.4043695   0.3855368   0.4232022
12 months   ki1135781-COHORTS          (2970-3302.75]       NA                0.2900512   0.2730405   0.3070619
12 months   ki1135781-COHORTS          >3302.75             NA                0.1892110   0.1674270   0.2109949
18 months   ki0047075b-MAL-ED          <=2600               NA                0.7549407   0.7019221   0.8079593
18 months   ki0047075b-MAL-ED          (2600-2970]          NA                0.5886076   0.5343333   0.6428819
18 months   ki0047075b-MAL-ED          (2970-3302.75]       NA                0.4885177   0.4437377   0.5332977
18 months   ki0047075b-MAL-ED          >3302.75             NA                0.3309353   0.2857565   0.3761140
18 months   ki1000108-CMC-V-BCS-2002   <=2600               NA                0.9450549   0.8981733   0.9919366
18 months   ki1000108-CMC-V-BCS-2002   (2600-2970]          NA                0.8214286   0.7394156   0.9034415
18 months   ki1000108-CMC-V-BCS-2002   (2970-3302.75]       NA                0.8195489   0.7541045   0.8849933
18 months   ki1000108-CMC-V-BCS-2002   >3302.75             NA                0.8000000   0.7026279   0.8973721
18 months   ki1000108-IRC              <=2600               NA                0.7156863   0.6280371   0.8033354
18 months   ki1000108-IRC              (2600-2970]          NA                0.6370968   0.5523594   0.7218341
18 months   ki1000108-IRC              (2970-3302.75]       NA                0.5000000   0.4088979   0.5911021
18 months   ki1000108-IRC              >3302.75             NA                0.2459016   0.1377041   0.3540992
18 months   ki1000109-EE               <=2600               NA                0.9647059   0.9369298   0.9924820
18 months   ki1000109-EE               (2600-2970]          NA                0.8602151   0.7896419   0.9307882
18 months   ki1000109-EE               (2970-3302.75]       NA                0.9117647   0.8442567   0.9792727
18 months   ki1000109-EE               >3302.75             NA                0.7812500   0.6378196   0.9246804
18 months   ki1017093c-NIH-Crypto      <=2600               NA                0.6827309   0.6248826   0.7405793
18 months   ki1017093c-NIH-Crypto      (2600-2970]          NA                0.3899083   0.3251191   0.4546974
18 months   ki1017093c-NIH-Crypto      (2970-3302.75]       NA                0.2994012   0.2298899   0.3689125
18 months   ki1017093c-NIH-Crypto      >3302.75             NA                0.1481481   0.0707306   0.2255657
18 months   ki1066203-TanzaniaChild2   <=2600               NA                0.6153846   0.4281179   0.8026513
18 months   ki1066203-TanzaniaChild2   (2600-2970]          NA                0.5250000   0.3700266   0.6799734
18 months   ki1066203-TanzaniaChild2   (2970-3302.75]       NA                0.4709677   0.3922756   0.5496599
18 months   ki1066203-TanzaniaChild2   >3302.75             NA                0.3059701   0.2278367   0.3841036
18 months   ki1101329-Keneba           <=2600               NA                0.7529412   0.7070838   0.7987985
18 months   ki1101329-Keneba           (2600-2970]          NA                0.5721831   0.5314835   0.6128827
18 months   ki1101329-Keneba           (2970-3302.75]       NA                0.4370629   0.3964026   0.4777233
18 months   ki1101329-Keneba           >3302.75             NA                0.3067847   0.2576805   0.3558889
18 months   ki1126311-ZVITAMBO         <=2600               NA                0.7797468   0.7388674   0.8206262
18 months   ki1126311-ZVITAMBO         (2600-2970]          NA                0.5274725   0.4855852   0.5693598
18 months   ki1126311-ZVITAMBO         (2970-3302.75]       NA                0.3653846   0.3259118   0.4048574
18 months   ki1126311-ZVITAMBO         >3302.75             NA                0.2815249   0.2337772   0.3292726
18 months   ki1135781-COHORTS          <=2600               NA                0.8664047   0.8368437   0.8959658
18 months   ki1135781-COHORTS          (2600-2970]          NA                0.6645327   0.6314134   0.6976519
18 months   ki1135781-COHORTS          (2970-3302.75]       NA                0.5925573   0.5628036   0.6223109
18 months   ki1135781-COHORTS          >3302.75             NA                0.4783362   0.4375704   0.5191021
24 months   ki0047075b-MAL-ED          <=2600               NA                0.7663934   0.7132833   0.8195036
24 months   ki0047075b-MAL-ED          (2600-2970]          NA                0.6381579   0.5841209   0.6921948
24 months   ki0047075b-MAL-ED          (2970-3302.75]       NA                0.5372807   0.4915001   0.5830613
24 months   ki0047075b-MAL-ED          >3302.75             NA                0.3778920   0.3296921   0.4260919
24 months   ki1000108-IRC              <=2600               NA                0.7572816   0.6743829   0.8401803
24 months   ki1000108-IRC              (2600-2970]          NA                0.7016129   0.6209796   0.7822462
24 months   ki1000108-IRC              (2970-3302.75]       NA                0.6120690   0.5232850   0.7008530
24 months   ki1000108-IRC              >3302.75             NA                0.3606557   0.2400036   0.4813079
24 months   ki1017093c-NIH-Crypto      <=2600               NA                0.7161572   0.6577164   0.7745980
24 months   ki1017093c-NIH-Crypto      (2600-2970]          NA                0.4536082   0.3834978   0.5237187
24 months   ki1017093c-NIH-Crypto      (2970-3302.75]       NA                0.3586207   0.2804971   0.4367442
24 months   ki1017093c-NIH-Crypto      >3302.75             NA                0.2121212   0.1134159   0.3108266
24 months   ki1066203-TanzaniaChild2   <=2600               NA                0.6666667   0.4484525   0.8848808
24 months   ki1066203-TanzaniaChild2   (2600-2970]          NA                0.6451613   0.4763917   0.8139309
24 months   ki1066203-TanzaniaChild2   (2970-3302.75]       NA                0.4859813   0.3910886   0.5808740
24 months   ki1066203-TanzaniaChild2   >3302.75             NA                0.3804348   0.2810282   0.4798414
24 months   ki1101329-Keneba           <=2600               NA                0.7935103   0.7504085   0.8366121
24 months   ki1101329-Keneba           (2600-2970]          NA                0.6630631   0.6237285   0.7023977
24 months   ki1101329-Keneba           (2970-3302.75]       NA                0.5053571   0.4639361   0.5467782
24 months   ki1101329-Keneba           >3302.75             NA                0.3843844   0.3321225   0.4366463
24 months   ki1126311-ZVITAMBO         <=2600               NA                0.8921569   0.8318971   0.9524166
24 months   ki1126311-ZVITAMBO         (2600-2970]          NA                0.7869822   0.7251866   0.8487779
24 months   ki1126311-ZVITAMBO         (2970-3302.75]       NA                0.5864662   0.5026820   0.6702503
24 months   ki1126311-ZVITAMBO         >3302.75             NA                0.5454545   0.4251986   0.6657105
24 months   ki1135781-COHORTS          <=2600               NA                0.9204082   0.8964391   0.9443772
24 months   ki1135781-COHORTS          (2600-2970]          NA                0.8023256   0.7742645   0.8303867
24 months   ki1135781-COHORTS          (2970-3302.75]       NA                0.7426901   0.7159364   0.7694437
24 months   ki1135781-COHORTS          >3302.75             NA                0.6206262   0.5798061   0.6614462


### Parameter: E(Y)


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki0047075b-MAL-ED          NA                   NA                0.2445492   0.2358107   0.2532877
3 months    ki1000108-CMC-V-BCS-2002   NA                   NA                0.3453039   0.3277301   0.3628776
3 months    ki1000108-IRC              NA                   NA                0.3143564   0.2990828   0.3296301
3 months    ki1000109-EE               NA                   NA                0.6358839   0.6172493   0.6545186
3 months    ki1066203-TanzaniaChild2   NA                   NA                0.0973154   0.0895735   0.1050573
3 months    ki1101329-Keneba           NA                   NA                0.2383933   0.2312318   0.2455549
3 months    ki1126311-ZVITAMBO         NA                   NA                0.2100744   0.2045159   0.2156329
3 months    ki1135781-COHORTS          NA                   NA                0.1784475   0.1753544   0.1815406
6 months    ki0047075b-MAL-ED          NA                   NA                0.3146280   0.3057610   0.3234950
6 months    ki1000108-CMC-V-BCS-2002   NA                   NA                0.5122616   0.4964094   0.5281138
6 months    ki1000108-IRC              NA                   NA                0.4179104   0.4033347   0.4324862
6 months    ki1000109-EE               NA                   NA                0.7426273   0.7254452   0.7598095
6 months    ki1066203-TanzaniaChild2   NA                   NA                0.1905626   0.1817270   0.1993982
6 months    ki1101329-Keneba           NA                   NA                0.3221918   0.3149430   0.3294406
6 months    ki1126311-ZVITAMBO         NA                   NA                0.2967515   0.2888925   0.3046105
6 months    ki1135781-COHORTS          NA                   NA                0.2530287   0.2468904   0.2591671
12 months   ki0047075b-MAL-ED          NA                   NA                0.4033943   0.3952557   0.4115328
12 months   ki1000108-CMC-V-BCS-2002   NA                   NA                0.6989247   0.6891249   0.7087246
12 months   ki1000108-IRC              NA                   NA                0.5024876   0.4874800   0.5174951
12 months   ki1000109-EE               NA                   NA                0.8257373   0.8113069   0.8401677
12 months   ki1017093c-NIH-Crypto      NA                   NA                0.3799726   0.3663078   0.3936374
12 months   ki1066203-TanzaniaChild2   NA                   NA                0.3163265   0.3065019   0.3261512
12 months   ki1101329-Keneba           NA                   NA                0.4238727   0.4171640   0.4305813
12 months   ki1126311-ZVITAMBO         NA                   NA                0.3770169   0.3701873   0.3838465
12 months   ki1135781-COHORTS          NA                   NA                0.4118646   0.4086304   0.4150988
18 months   ki0047075b-MAL-ED          NA                   NA                0.5112628   0.5038450   0.5186806
18 months   ki1000108-CMC-V-BCS-2002   NA                   NA                0.8471850   0.8414847   0.8528852
18 months   ki1000108-IRC              NA                   NA                0.5583127   0.5431907   0.5734347
18 months   ki1000109-EE               NA                   NA                0.9118457   0.9057557   0.9179358
18 months   ki1017093c-NIH-Crypto      NA                   NA                0.4433566   0.4295289   0.4571844
18 months   ki1066203-TanzaniaChild2   NA                   NA                0.4253521   0.4149081   0.4357962
18 months   ki1101329-Keneba           NA                   NA                0.5140187   0.5072641   0.5207733
18 months   ki1126311-ZVITAMBO         NA                   NA                0.4859763   0.4779508   0.4940018
18 months   ki1135781-COHORTS          NA                   NA                0.6370497   0.6325903   0.6415092
24 months   ki0047075b-MAL-ED          NA                   NA                0.5549174   0.5478307   0.5620042
24 months   ki1000108-IRC              NA                   NA                0.6386139   0.6260059   0.6512218
24 months   ki1017093c-NIH-Crypto      NA                   NA                0.5015773   0.4879209   0.5152337
24 months   ki1066203-TanzaniaChild2   NA                   NA                0.4798387   0.4675996   0.4920779
24 months   ki1101329-Keneba           NA                   NA                0.5864578   0.5799607   0.5929548
24 months   ki1126311-ZVITAMBO         NA                   NA                0.7191489   0.7072215   0.7310763
24 months   ki1135781-COHORTS          NA                   NA                0.7663255   0.7628840   0.7697670


### Parameter: RR


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki0047075b-MAL-ED          (2600-2970]          <=2600            0.4914052   0.4101731   0.5887248
3 months    ki0047075b-MAL-ED          (2970-3302.75]       <=2600            0.2799703   0.2276105   0.3443751
3 months    ki0047075b-MAL-ED          >3302.75             <=2600            0.1131823   0.0803901   0.1593507
3 months    ki1000108-CMC-V-BCS-2002   (2600-2970]          <=2600            0.6552878   0.4788706   0.8966976
3 months    ki1000108-CMC-V-BCS-2002   (2970-3302.75]       <=2600            0.3662551   0.2536184   0.5289161
3 months    ki1000108-CMC-V-BCS-2002   >3302.75             <=2600            0.2575231   0.1421538   0.4665242
3 months    ki1000108-IRC              (2600-2970]          <=2600            0.5829089   0.4280226   0.7938431
3 months    ki1000108-IRC              (2970-3302.75]       <=2600            0.3582880   0.2388565   0.5374367
3 months    ki1000108-IRC              >3302.75             <=2600            0.2073627   0.1010196   0.4256528
3 months    ki1000109-EE               (2600-2970]          <=2600            0.7380642   0.6160028   0.8843123
3 months    ki1000109-EE               (2970-3302.75]       <=2600            0.5682540   0.4356845   0.7411614
3 months    ki1000109-EE               >3302.75             <=2600            0.2924837   0.1587522   0.5388693
3 months    ki1066203-TanzaniaChild2   (2600-2970]          <=2600            0.5902778   0.3290770   1.0588034
3 months    ki1066203-TanzaniaChild2   (2970-3302.75]       <=2600            0.2310443   0.1307267   0.4083441
3 months    ki1066203-TanzaniaChild2   >3302.75             <=2600            0.0708333   0.0295618   0.1697247
3 months    ki1101329-Keneba           (2600-2970]          <=2600            0.4657815   0.3937538   0.5509849
3 months    ki1101329-Keneba           (2970-3302.75]       <=2600            0.2534975   0.2032148   0.3162221
3 months    ki1101329-Keneba           >3302.75             <=2600            0.1363636   0.0924145   0.2012134
3 months    ki1126311-ZVITAMBO         (2600-2970]          <=2600            0.4208801   0.3660387   0.4839380
3 months    ki1126311-ZVITAMBO         (2970-3302.75]       <=2600            0.2099018   0.1744393   0.2525737
3 months    ki1126311-ZVITAMBO         >3302.75             <=2600            0.1024418   0.0754267   0.1391328
3 months    ki1135781-COHORTS          (2600-2970]          <=2600            0.2890434   0.2591304   0.3224095
3 months    ki1135781-COHORTS          (2970-3302.75]       <=2600            0.1365881   0.1169800   0.1594829
3 months    ki1135781-COHORTS          >3302.75             <=2600            0.0601329   0.0428195   0.0844467
6 months    ki0047075b-MAL-ED          (2600-2970]          <=2600            0.5346022   0.4537479   0.6298643
6 months    ki0047075b-MAL-ED          (2970-3302.75]       <=2600            0.3874957   0.3274054   0.4586146
6 months    ki0047075b-MAL-ED          >3302.75             <=2600            0.1986779   0.1550034   0.2546583
6 months    ki1000108-CMC-V-BCS-2002   (2600-2970]          <=2600            0.7247899   0.5773467   0.9098873
6 months    ki1000108-CMC-V-BCS-2002   (2970-3302.75]       <=2600            0.5335157   0.4192747   0.6788844
6 months    ki1000108-CMC-V-BCS-2002   >3302.75             <=2600            0.4549632   0.3177931   0.6513406
6 months    ki1000108-IRC              (2600-2970]          <=2600            0.8225806   0.6472652   1.0453813
6 months    ki1000108-IRC              (2970-3302.75]       <=2600            0.5089095   0.3698224   0.7003061
6 months    ki1000108-IRC              >3302.75             <=2600            0.3015318   0.1724319   0.5272890
6 months    ki1000109-EE               (2600-2970]          <=2600            0.7733863   0.6707355   0.8917470
6 months    ki1000109-EE               (2970-3302.75]       <=2600            0.6453377   0.5245630   0.7939194
6 months    ki1000109-EE               >3302.75             <=2600            0.4174528   0.2660091   0.6551162
6 months    ki1066203-TanzaniaChild2   (2600-2970]          <=2600            0.7500000   0.4661266   1.2067538
6 months    ki1066203-TanzaniaChild2   (2970-3302.75]       <=2600            0.4441435   0.2910247   0.6778238
6 months    ki1066203-TanzaniaChild2   >3302.75             <=2600            0.2205514   0.1323062   0.3676542
6 months    ki1101329-Keneba           (2600-2970]          <=2600            0.6191408   0.5391391   0.7110139
6 months    ki1101329-Keneba           (2970-3302.75]       <=2600            0.3715789   0.3114363   0.4433360
6 months    ki1101329-Keneba           >3302.75             <=2600            0.2224790   0.1672202   0.2959983
6 months    ki1126311-ZVITAMBO         (2600-2970]          <=2600            0.5185575   0.4546088   0.5915016
6 months    ki1126311-ZVITAMBO         (2970-3302.75]       <=2600            0.2920376   0.2474156   0.3447073
6 months    ki1126311-ZVITAMBO         >3302.75             <=2600            0.1527129   0.1163393   0.2004587
6 months    ki1135781-COHORTS          (2600-2970]          <=2600            0.4809708   0.4203831   0.5502906
6 months    ki1135781-COHORTS          (2970-3302.75]       <=2600            0.2979243   0.2561741   0.3464788
6 months    ki1135781-COHORTS          >3302.75             <=2600            0.1111969   0.0803872   0.1538150
12 months   ki0047075b-MAL-ED          (2600-2970]          <=2600            0.6297770   0.5465668   0.7256551
12 months   ki0047075b-MAL-ED          (2970-3302.75]       <=2600            0.5054929   0.4396916   0.5811414
12 months   ki0047075b-MAL-ED          >3302.75             <=2600            0.3223304   0.2676703   0.3881524
12 months   ki1000108-CMC-V-BCS-2002   (2600-2970]          <=2600            0.8441558   0.7183626   0.9919768
12 months   ki1000108-CMC-V-BCS-2002   (2970-3302.75]       <=2600            0.7730690   0.6642658   0.8996937
12 months   ki1000108-CMC-V-BCS-2002   >3302.75             <=2600            0.6647727   0.5263570   0.8395876
12 months   ki1000108-IRC              (2600-2970]          <=2600            0.9117718   0.7471702   1.1126351
12 months   ki1000108-IRC              (2970-3302.75]       <=2600            0.5847916   0.4473908   0.7643902
12 months   ki1000108-IRC              >3302.75             <=2600            0.3706875   0.2336656   0.5880595
12 months   ki1000109-EE               (2600-2970]          <=2600            0.8072366   0.7180719   0.9074731
12 months   ki1000109-EE               (2970-3302.75]       <=2600            0.8095114   0.7077910   0.9258506
12 months   ki1000109-EE               >3302.75             <=2600            0.4959493   0.3464803   0.7098981
12 months   ki1017093c-NIH-Crypto      (2600-2970]          <=2600            0.5435724   0.4414604   0.6693035
12 months   ki1017093c-NIH-Crypto      (2970-3302.75]       <=2600            0.3387314   0.2494148   0.4600328
12 months   ki1017093c-NIH-Crypto      >3302.75             <=2600            0.1892911   0.1048714   0.3416672
12 months   ki1066203-TanzaniaChild2   (2600-2970]          <=2600            0.8766234   0.5931701   1.2955281
12 months   ki1066203-TanzaniaChild2   (2970-3302.75]       <=2600            0.5998126   0.4247904   0.8469473
12 months   ki1066203-TanzaniaChild2   >3302.75             <=2600            0.3818182   0.2588316   0.5632432
12 months   ki1101329-Keneba           (2600-2970]          <=2600            0.7233917   0.6476897   0.8079418
12 months   ki1101329-Keneba           (2970-3302.75]       <=2600            0.4724666   0.4113803   0.5426237
12 months   ki1101329-Keneba           >3302.75             <=2600            0.3697239   0.3038614   0.4498622
12 months   ki1126311-ZVITAMBO         (2600-2970]          <=2600            0.6209819   0.5593940   0.6893505
12 months   ki1126311-ZVITAMBO         (2970-3302.75]       <=2600            0.3935398   0.3463717   0.4471311
12 months   ki1126311-ZVITAMBO         >3302.75             <=2600            0.2750730   0.2296271   0.3295133
12 months   ki1135781-COHORTS          (2600-2970]          <=2600            0.6382651   0.6045116   0.6739032
12 months   ki1135781-COHORTS          (2970-3302.75]       <=2600            0.4578228   0.4290190   0.4885604
12 months   ki1135781-COHORTS          >3302.75             <=2600            0.2986544   0.2652850   0.3362213
18 months   ki0047075b-MAL-ED          (2600-2970]          <=2600            0.7796739   0.6943451   0.8754890
18 months   ki0047075b-MAL-ED          (2970-3302.75]       <=2600            0.6470942   0.5765237   0.7263030
18 months   ki0047075b-MAL-ED          >3302.75             <=2600            0.4383593   0.3759724   0.5110983
18 months   ki1000108-CMC-V-BCS-2002   (2600-2970]          <=2600            0.8691860   0.7774898   0.9716968
18 months   ki1000108-CMC-V-BCS-2002   (2970-3302.75]       <=2600            0.8671971   0.7893879   0.9526758
18 months   ki1000108-CMC-V-BCS-2002   >3302.75             <=2600            0.8465116   0.7422513   0.9654169
18 months   ki1000108-IRC              (2600-2970]          <=2600            0.8901900   0.7429538   1.0666050
18 months   ki1000108-IRC              (2970-3302.75]       <=2600            0.6986301   0.5609228   0.8701448
18 months   ki1000108-IRC              >3302.75             <=2600            0.3435886   0.2176125   0.5424924
18 months   ki1000109-EE               (2600-2970]          <=2600            0.8916863   0.8174318   0.9726860
18 months   ki1000109-EE               (2970-3302.75]       <=2600            0.9451220   0.8729443   1.0232675
18 months   ki1000109-EE               >3302.75             <=2600            0.8098323   0.6724934   0.9752191
18 months   ki1017093c-NIH-Crypto      (2600-2970]          <=2600            0.5711009   0.4739229   0.6882053
18 months   ki1017093c-NIH-Crypto      (2970-3302.75]       <=2600            0.4385347   0.3425073   0.5614849
18 months   ki1017093c-NIH-Crypto      >3302.75             <=2600            0.2169935   0.1278009   0.3684337
18 months   ki1066203-TanzaniaChild2   (2600-2970]          <=2600            0.8531250   0.5583296   1.3035710
18 months   ki1066203-TanzaniaChild2   (2970-3302.75]       <=2600            0.7653226   0.5408465   1.0829665
18 months   ki1066203-TanzaniaChild2   >3302.75             <=2600            0.4972015   0.3341993   0.7397063
18 months   ki1101329-Keneba           (2600-2970]          <=2600            0.7599307   0.6919994   0.8345306
18 months   ki1101329-Keneba           (2970-3302.75]       <=2600            0.5804742   0.5193881   0.6487447
18 months   ki1101329-Keneba           >3302.75             <=2600            0.4074484   0.3433182   0.4835577
18 months   ki1126311-ZVITAMBO         (2600-2970]          <=2600            0.6764664   0.6150642   0.7439985
18 months   ki1126311-ZVITAMBO         (2970-3302.75]       <=2600            0.4685939   0.4155723   0.5283804
18 months   ki1126311-ZVITAMBO         >3302.75             <=2600            0.3610466   0.3023197   0.4311813
18 months   ki1135781-COHORTS          (2600-2970]          <=2600            0.7670003   0.7220458   0.8147536
18 months   ki1135781-COHORTS          (2970-3302.75]       <=2600            0.6839266   0.6436423   0.7267322
18 months   ki1135781-COHORTS          >3302.75             <=2600            0.5520933   0.5036677   0.6051748
24 months   ki0047075b-MAL-ED          (2600-2970]          <=2600            0.8326766   0.7463740   0.9289584
24 months   ki0047075b-MAL-ED          (2970-3302.75]       <=2600            0.7010508   0.6281317   0.7824348
24 months   ki0047075b-MAL-ED          >3302.75             <=2600            0.4930784   0.4264559   0.5701088
24 months   ki1000108-IRC              (2600-2970]          <=2600            0.9264888   0.7905147   1.0858514
24 months   ki1000108-IRC              (2970-3302.75]       <=2600            0.8082449   0.6739383   0.9693170
24 months   ki1000108-IRC              >3302.75             <=2600            0.4762505   0.3349406   0.6771784
24 months   ki1017093c-NIH-Crypto      (2600-2970]          <=2600            0.6333920   0.5318218   0.7543606
24 months   ki1017093c-NIH-Crypto      (2970-3302.75]       <=2600            0.5007569   0.3968244   0.6319106
24 months   ki1017093c-NIH-Crypto      >3302.75             <=2600            0.2961936   0.1846731   0.4750594
24 months   ki1066203-TanzaniaChild2   (2600-2970]          <=2600            0.9677419   0.6364811   1.4714098
24 months   ki1066203-TanzaniaChild2   (2970-3302.75]       <=2600            0.7289720   0.4979491   1.0671775
24 months   ki1066203-TanzaniaChild2   >3302.75             <=2600            0.5706522   0.3753855   0.8674919
24 months   ki1101329-Keneba           (2600-2970]          <=2600            0.8356074   0.7710283   0.9055954
24 months   ki1101329-Keneba           (2970-3302.75]       <=2600            0.6368627   0.5772212   0.7026667
24 months   ki1101329-Keneba           >3302.75             <=2600            0.4844101   0.4184346   0.5607881
24 months   ki1126311-ZVITAMBO         (2600-2970]          <=2600            0.8821120   0.7953190   0.9783766
24 months   ki1126311-ZVITAMBO         (2970-3302.75]       <=2600            0.6573577   0.5612706   0.7698944
24 months   ki1126311-ZVITAMBO         >3302.75             <=2600            0.6113886   0.4854853   0.7699430
24 months   ki1135781-COHORTS          (2600-2970]          <=2600            0.8717063   0.8345123   0.9105580
24 months   ki1135781-COHORTS          (2970-3302.75]       <=2600            0.8069138   0.7718319   0.8435903
24 months   ki1135781-COHORTS          >3302.75             <=2600            0.6742945   0.6282428   0.7237219


### Parameter: PAR


agecat      studyid                    intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -------------------  ---------------  -----------  -----------  -----------
3 months    ki0047075b-MAL-ED          <=2600               NA                -0.3616152   -0.4183502   -0.3048802
3 months    ki1000108-CMC-V-BCS-2002   <=2600               NA                -0.2614377   -0.3645696   -0.1583058
3 months    ki1000108-IRC              <=2600               NA                -0.2390416   -0.3363748   -0.1417085
3 months    ki1000109-EE               <=2600               NA                -0.1685854   -0.2296747   -0.1074960
3 months    ki1066203-TanzaniaChild2   <=2600               NA                -0.2556257   -0.3871194   -0.1241321
3 months    ki1101329-Keneba           <=2600               NA                -0.2992411   -0.3504234   -0.2480588
3 months    ki1126311-ZVITAMBO         <=2600               NA                -0.3103769   -0.3475731   -0.2731808
3 months    ki1135781-COHORTS          <=2600               NA                -0.2344830   -0.2521506   -0.2168153
6 months    ki0047075b-MAL-ED          <=2600               NA                -0.3557424   -0.4125274   -0.2989573
6 months    ki1000108-CMC-V-BCS-2002   <=2600               NA                -0.2432940   -0.3336045   -0.1529835
6 months    ki1000108-IRC              <=2600               NA                -0.1801288   -0.2765050   -0.0837525
6 months    ki1000109-EE               <=2600               NA                -0.1556777   -0.2034606   -0.1078948
6 months    ki1066203-TanzaniaChild2   <=2600               NA                -0.2469374   -0.3876813   -0.1061934
6 months    ki1101329-Keneba           <=2600               NA                -0.2727091   -0.3244445   -0.2209736
6 months    ki1126311-ZVITAMBO         <=2600               NA                -0.3503073   -0.3955560   -0.3050585
6 months    ki1135781-COHORTS          <=2600               NA                -0.3303046   -0.3737888   -0.2868204
12 months   ki0047075b-MAL-ED          <=2600               NA                -0.3130808   -0.3683803   -0.2577814
12 months   ki1000108-CMC-V-BCS-2002   <=2600               NA                -0.1472291   -0.2221033   -0.0723549
12 months   ki1000108-IRC              <=2600               NA                -0.1608788   -0.2543662   -0.0673914
12 months   ki1000109-EE               <=2600               NA                -0.1231264   -0.1587653   -0.0874874
12 months   ki1017093c-NIH-Crypto      <=2600               NA                -0.2415414   -0.3031193   -0.1799634
12 months   ki1066203-TanzaniaChild2   <=2600               NA                -0.2336735   -0.3883155   -0.0790314
12 months   ki1101329-Keneba           <=2600               NA                -0.2484437   -0.2978092   -0.1990782
12 months   ki1126311-ZVITAMBO         <=2600               NA                -0.3151318   -0.3568271   -0.2734366
12 months   ki1135781-COHORTS          <=2600               NA                -0.2216802   -0.2397009   -0.2036594
18 months   ki0047075b-MAL-ED          <=2600               NA                -0.2436779   -0.2972129   -0.1901429
18 months   ki1000108-CMC-V-BCS-2002   <=2600               NA                -0.0978700   -0.1450969   -0.0506430
18 months   ki1000108-IRC              <=2600               NA                -0.1573736   -0.2463177   -0.0684295
18 months   ki1000109-EE               <=2600               NA                -0.0528602   -0.0812960   -0.0244243
18 months   ki1017093c-NIH-Crypto      <=2600               NA                -0.2393743   -0.2988523   -0.1798962
18 months   ki1066203-TanzaniaChild2   <=2600               NA                -0.1900325   -0.3775902   -0.0024748
18 months   ki1101329-Keneba           <=2600               NA                -0.2389225   -0.2852746   -0.1925704
18 months   ki1126311-ZVITAMBO         <=2600               NA                -0.2937706   -0.3354303   -0.2521108
18 months   ki1135781-COHORTS          <=2600               NA                -0.2293550   -0.2592505   -0.1994595
24 months   ki0047075b-MAL-ED          <=2600               NA                -0.2114760   -0.2650569   -0.1578951
24 months   ki1000108-IRC              <=2600               NA                -0.1186677   -0.2025197   -0.0348157
24 months   ki1017093c-NIH-Crypto      <=2600               NA                -0.2145799   -0.2745951   -0.1545647
24 months   ki1066203-TanzaniaChild2   <=2600               NA                -0.1868280   -0.4053851    0.0317292
24 months   ki1101329-Keneba           <=2600               NA                -0.2070526   -0.2506413   -0.1634639
24 months   ki1126311-ZVITAMBO         <=2600               NA                -0.1730079   -0.2344368   -0.1115791
24 months   ki1135781-COHORTS          <=2600               NA                -0.1540827   -0.1782976   -0.1298678


### Parameter: PAF


agecat      studyid                    intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -------------------  ---------------  -----------  -----------  -----------
3 months    ki0047075b-MAL-ED          <=2600               NA                -1.4787011   -1.7370422   -1.2447440
3 months    ki1000108-CMC-V-BCS-2002   <=2600               NA                -0.7571236   -1.0932764   -0.4749526
3 months    ki1000108-IRC              <=2600               NA                -0.7604159   -1.1083824   -0.4698776
3 months    ki1000109-EE               <=2600               NA                -0.2651197   -0.3677910   -0.1701553
3 months    ki1066203-TanzaniaChild2   <=2600               NA                -2.6267748   -4.3051397   -1.4793873
3 months    ki1101329-Keneba           <=2600               NA                -1.2552411   -1.4897707   -1.0428035
3 months    ki1126311-ZVITAMBO         <=2600               NA                -1.4774618   -1.6716395   -1.2973972
3 months    ki1135781-COHORTS          <=2600               NA                -1.3140165   -1.4218622   -1.2109732
6 months    ki0047075b-MAL-ED          <=2600               NA                -1.1306762   -1.3273406   -0.9506303
6 months    ki1000108-CMC-V-BCS-2002   <=2600               NA                -0.4749409   -0.6657771   -0.3059674
6 months    ki1000108-IRC              <=2600               NA                -0.4310224   -0.6844896   -0.2156947
6 months    ki1000109-EE               <=2600               NA                -0.2096310   -0.2777203   -0.1451702
6 months    ki1066203-TanzaniaChild2   <=2600               NA                -1.2958333   -2.1755866   -0.6598038
6 months    ki1101329-Keneba           <=2600               NA                -0.8464185   -1.0182796   -0.6891917
6 months    ki1126311-ZVITAMBO         <=2600               NA                -1.1804734   -1.3474409   -1.0253818
6 months    ki1135781-COHORTS          <=2600               NA                -1.3054036   -1.4916342   -1.1330922
12 months   ki0047075b-MAL-ED          <=2600               NA                -0.7761163   -0.9220497   -0.6412629
12 months   ki1000108-CMC-V-BCS-2002   <=2600               NA                -0.2106509   -0.3231272   -0.1077359
12 months   ki1000108-IRC              <=2600               NA                -0.3201647   -0.5220038   -0.1450923
12 months   ki1000109-EE               <=2600               NA                -0.1491108   -0.1942545   -0.1056737
12 months   ki1017093c-NIH-Crypto      <=2600               NA                -0.6356811   -0.8132901   -0.4754687
12 months   ki1066203-TanzaniaChild2   <=2600               NA                -0.7387097   -1.3058659   -0.3110526
12 months   ki1101329-Keneba           <=2600               NA                -0.5861281   -0.7087167   -0.4723345
12 months   ki1126311-ZVITAMBO         <=2600               NA                -0.8358559   -0.9535283   -0.7252717
12 months   ki1135781-COHORTS          <=2600               NA                -0.5382356   -0.5835980   -0.4941725
18 months   ki0047075b-MAL-ED          <=2600               NA                -0.4766197   -0.5864001   -0.3744362
18 months   ki1000108-CMC-V-BCS-2002   <=2600               NA                -0.1155237   -0.1727901   -0.0610536
18 months   ki1000108-IRC              <=2600               NA                -0.2818736   -0.4531750   -0.1307654
18 months   ki1000109-EE               <=2600               NA                -0.0579705   -0.0897074   -0.0271579
18 months   ki1017093c-NIH-Crypto      <=2600               NA                -0.5399136   -0.6854203   -0.4069688
18 months   ki1066203-TanzaniaChild2   <=2600               NA                -0.4467652   -0.9633016   -0.0661273
18 months   ki1101329-Keneba           <=2600               NA                -0.4648128   -0.5589823   -0.3763316
18 months   ki1126311-ZVITAMBO         <=2600               NA                -0.6044957   -0.6951572   -0.5186831
18 months   ki1135781-COHORTS          <=2600               NA                -0.3600268   -0.4082310   -0.3134726
24 months   ki0047075b-MAL-ED          <=2600               NA                -0.3810945   -0.4819252   -0.2871244
24 months   ki1000108-IRC              <=2600               NA                -0.1858207   -0.3253413   -0.0609877
24 months   ki1017093c-NIH-Crypto      <=2600               NA                -0.4278103   -0.5560766   -0.3101169
24 months   ki1066203-TanzaniaChild2   <=2600               NA                -0.3893557   -0.9292932   -0.0005267
24 months   ki1101329-Keneba           <=2600               NA                -0.3530562   -0.4301825   -0.2800892
24 months   ki1126311-ZVITAMBO         <=2600               NA                -0.2405732   -0.3299268   -0.1572229
24 months   ki1135781-COHORTS          <=2600               NA                -0.2010669   -0.2332296   -0.1697430


