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

**Intervention Variable:** hfoodsec

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid


The following strata were considered:

* agecat: 12 months, studyid: ki0047075b-MAL-ED
* agecat: 12 months, studyid: ki1017093-NIH-Birth
* agecat: 12 months, studyid: ki1017093c-NIH-Crypto
* agecat: 12 months, studyid: ki1113344-GMS-Nepal
* agecat: 18 months, studyid: ki0047075b-MAL-ED
* agecat: 18 months, studyid: ki1017093-NIH-Birth
* agecat: 18 months, studyid: ki1017093c-NIH-Crypto
* agecat: 18 months, studyid: ki1113344-GMS-Nepal
* agecat: 24 months, studyid: ki0047075b-MAL-ED
* agecat: 24 months, studyid: ki1017093-NIH-Birth
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto
* agecat: 24 months, studyid: ki1113344-GMS-Nepal
* agecat: 3 months, studyid: ki0047075b-MAL-ED
* agecat: 3 months, studyid: ki1017093-NIH-Birth
* agecat: 3 months, studyid: ki1017093c-NIH-Crypto
* agecat: 3 months, studyid: ki1113344-GMS-Nepal
* agecat: 6 months, studyid: ki0047075b-MAL-ED
* agecat: 6 months, studyid: ki1017093-NIH-Birth
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto
* agecat: 6 months, studyid: ki1113344-GMS-Nepal

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 3 months, studyid: ki1017093-NIH-Birth
* agecat: 6 months, studyid: ki1017093-NIH-Birth
* agecat: 12 months, studyid: ki1017093-NIH-Birth
* agecat: 18 months, studyid: ki1017093-NIH-Birth
* agecat: 24 months, studyid: ki1017093-NIH-Birth

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness




# Results Detail

## Results Plots
![](/tmp/68064c45-33dc-44dc-ab14-957dce723945/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/68064c45-33dc-44dc-ab14-957dce723945/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/68064c45-33dc-44dc-ab14-957dce723945/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/68064c45-33dc-44dc-ab14-957dce723945/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Data Summary

agecat      studyid                 A                              n    nA   nAY0   nAY1
----------  ----------------------  -------------------------  -----  ----  -----  -----
3 months    ki0047075b-MAL-ED       Food Secure                 1009   607    452    155
3 months    ki0047075b-MAL-ED       Mildly Food Insecure        1009    83     66     17
3 months    ki0047075b-MAL-ED       Moderately Food Insecure    1009   214    165     49
3 months    ki0047075b-MAL-ED       Severely Food Insecure      1009   105     83     22
3 months    ki1017093-NIH-Birth     Food Secure                  629    95     78     17
3 months    ki1017093-NIH-Birth     Mildly Food Insecure         629   492    382    110
3 months    ki1017093-NIH-Birth     Moderately Food Insecure     629    36     25     11
3 months    ki1017093-NIH-Birth     Severely Food Insecure       629     6      4      2
3 months    ki1017093c-NIH-Crypto   Food Secure                  758   453    388     65
3 months    ki1017093c-NIH-Crypto   Mildly Food Insecure         758   219    180     39
3 months    ki1017093c-NIH-Crypto   Moderately Food Insecure     758    62     54      8
3 months    ki1017093c-NIH-Crypto   Severely Food Insecure       758    24     15      9
3 months    ki1113344-GMS-Nepal     Food Secure                  575   416    353     63
3 months    ki1113344-GMS-Nepal     Mildly Food Insecure         575    81     66     15
3 months    ki1113344-GMS-Nepal     Moderately Food Insecure     575    55     48      7
3 months    ki1113344-GMS-Nepal     Severely Food Insecure       575    23     18      5
6 months    ki0047075b-MAL-ED       Food Secure                 1006   605    407    198
6 months    ki0047075b-MAL-ED       Mildly Food Insecure        1006    83     59     24
6 months    ki0047075b-MAL-ED       Moderately Food Insecure    1006   214    145     69
6 months    ki0047075b-MAL-ED       Severely Food Insecure      1006   104     77     27
6 months    ki1017093-NIH-Birth     Food Secure                  551    83     56     27
6 months    ki1017093-NIH-Birth     Mildly Food Insecure         551   427    271    156
6 months    ki1017093-NIH-Birth     Moderately Food Insecure     551    36     20     16
6 months    ki1017093-NIH-Birth     Severely Food Insecure       551     5      3      2
6 months    ki1017093c-NIH-Crypto   Food Secure                  736   439    314    125
6 months    ki1017093c-NIH-Crypto   Mildly Food Insecure         736   211    138     73
6 months    ki1017093c-NIH-Crypto   Moderately Food Insecure     736    62     44     18
6 months    ki1017093c-NIH-Crypto   Severely Food Insecure       736    24     14     10
6 months    ki1113344-GMS-Nepal     Food Secure                  549   396    291    105
6 months    ki1113344-GMS-Nepal     Mildly Food Insecure         549    79     52     27
6 months    ki1113344-GMS-Nepal     Moderately Food Insecure     549    51     36     15
6 months    ki1113344-GMS-Nepal     Severely Food Insecure       549    23     15      8
12 months   ki0047075b-MAL-ED       Food Secure                 1005   605    351    254
12 months   ki0047075b-MAL-ED       Mildly Food Insecure        1005    82     52     30
12 months   ki0047075b-MAL-ED       Moderately Food Insecure    1005   214    127     87
12 months   ki0047075b-MAL-ED       Severely Food Insecure      1005   104     71     33
12 months   ki1017093-NIH-Birth     Food Secure                  541    80     48     32
12 months   ki1017093-NIH-Birth     Mildly Food Insecure         541   421    202    219
12 months   ki1017093-NIH-Birth     Moderately Food Insecure     541    36     14     22
12 months   ki1017093-NIH-Birth     Severely Food Insecure       541     4      1      3
12 months   ki1017093c-NIH-Crypto   Food Secure                  729   438    281    157
12 months   ki1017093c-NIH-Crypto   Mildly Food Insecure         729   206    126     80
12 months   ki1017093c-NIH-Crypto   Moderately Food Insecure     729    61     35     26
12 months   ki1017093c-NIH-Crypto   Severely Food Insecure       729    24     10     14
12 months   ki1113344-GMS-Nepal     Food Secure                  565   408    230    178
12 months   ki1113344-GMS-Nepal     Mildly Food Insecure         565    80     40     40
12 months   ki1113344-GMS-Nepal     Moderately Food Insecure     565    55     28     27
12 months   ki1113344-GMS-Nepal     Severely Food Insecure       565    22     13      9
18 months   ki0047075b-MAL-ED       Food Secure                 1005   605    285    320
18 months   ki0047075b-MAL-ED       Mildly Food Insecure        1005    82     44     38
18 months   ki0047075b-MAL-ED       Moderately Food Insecure    1005   214    106    108
18 months   ki0047075b-MAL-ED       Severely Food Insecure      1005   104     61     43
18 months   ki1017093-NIH-Birth     Food Secure                  497    76     37     39
18 months   ki1017093-NIH-Birth     Mildly Food Insecure         497   382    128    254
18 months   ki1017093-NIH-Birth     Moderately Food Insecure     497    35      8     27
18 months   ki1017093-NIH-Birth     Severely Food Insecure       497     4      1      3
18 months   ki1017093c-NIH-Crypto   Food Secure                  715   430    250    180
18 months   ki1017093c-NIH-Crypto   Mildly Food Insecure         715   202    110     92
18 months   ki1017093c-NIH-Crypto   Moderately Food Insecure     715    59     29     30
18 months   ki1017093c-NIH-Crypto   Severely Food Insecure       715    24      9     15
18 months   ki1113344-GMS-Nepal     Food Secure                  557   404    162    242
18 months   ki1113344-GMS-Nepal     Mildly Food Insecure         557    80     26     54
18 months   ki1113344-GMS-Nepal     Moderately Food Insecure     557    54     18     36
18 months   ki1113344-GMS-Nepal     Severely Food Insecure       557    19      8     11
24 months   ki0047075b-MAL-ED       Food Secure                 1000   604    255    349
24 months   ki0047075b-MAL-ED       Mildly Food Insecure        1000    80     38     42
24 months   ki0047075b-MAL-ED       Moderately Food Insecure    1000   213    100    113
24 months   ki0047075b-MAL-ED       Severely Food Insecure      1000   103     58     45
24 months   ki1017093-NIH-Birth     Food Secure                  470    72     30     42
24 months   ki1017093-NIH-Birth     Mildly Food Insecure         470   360     80    280
24 months   ki1017093-NIH-Birth     Moderately Food Insecure     470    34      4     30
24 months   ki1017093-NIH-Birth     Severely Food Insecure       470     4      1      3
24 months   ki1017093c-NIH-Crypto   Food Secure                  634   396    201    195
24 months   ki1017093c-NIH-Crypto   Mildly Food Insecure         634   168     81     87
24 months   ki1017093c-NIH-Crypto   Moderately Food Insecure     634    49     25     24
24 months   ki1017093c-NIH-Crypto   Severely Food Insecure       634    21      9     12
24 months   ki1113344-GMS-Nepal     Food Secure                  551   399    135    264
24 months   ki1113344-GMS-Nepal     Mildly Food Insecure         551    77     19     58
24 months   ki1113344-GMS-Nepal     Moderately Food Insecure     551    55     13     42
24 months   ki1113344-GMS-Nepal     Severely Food Insecure       551    20      7     13

## Results Table

### Parameter: TSM


agecat      studyid                 intervention_level         baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -------------------------  ---------------  ----------  ----------  ----------
3 months    ki0047075b-MAL-ED       Food Secure                NA                0.2553542   0.2206473   0.2900611
3 months    ki0047075b-MAL-ED       Mildly Food Insecure       NA                0.2048193   0.1179547   0.2916839
3 months    ki0047075b-MAL-ED       Moderately Food Insecure   NA                0.2289720   0.1726494   0.2852946
3 months    ki0047075b-MAL-ED       Severely Food Insecure     NA                0.2095238   0.1316431   0.2874045
3 months    ki1017093c-NIH-Crypto   Food Secure                NA                0.1434879   0.1111836   0.1757921
3 months    ki1017093c-NIH-Crypto   Mildly Food Insecure       NA                0.1780822   0.1273788   0.2287856
3 months    ki1017093c-NIH-Crypto   Moderately Food Insecure   NA                0.1290323   0.0455318   0.2125328
3 months    ki1017093c-NIH-Crypto   Severely Food Insecure     NA                0.3750000   0.1811862   0.5688138
3 months    ki1113344-GMS-Nepal     Food Secure                NA                0.1514423   0.1169642   0.1859204
3 months    ki1113344-GMS-Nepal     Mildly Food Insecure       NA                0.1851852   0.1005178   0.2698526
3 months    ki1113344-GMS-Nepal     Moderately Food Insecure   NA                0.1272727   0.0391168   0.2154287
3 months    ki1113344-GMS-Nepal     Severely Food Insecure     NA                0.2173913   0.0486756   0.3861070
6 months    ki0047075b-MAL-ED       Food Secure                NA                0.3272727   0.2898650   0.3646804
6 months    ki0047075b-MAL-ED       Mildly Food Insecure       NA                0.2891566   0.1915726   0.3867406
6 months    ki0047075b-MAL-ED       Moderately Food Insecure   NA                0.3224299   0.2597755   0.3850844
6 months    ki0047075b-MAL-ED       Severely Food Insecure     NA                0.2596154   0.1753127   0.3439180
6 months    ki1017093c-NIH-Crypto   Food Secure                NA                0.2847380   0.2424939   0.3269822
6 months    ki1017093c-NIH-Crypto   Mildly Food Insecure       NA                0.3459716   0.2817441   0.4101990
6 months    ki1017093c-NIH-Crypto   Moderately Food Insecure   NA                0.2903226   0.1772601   0.4033850
6 months    ki1017093c-NIH-Crypto   Severely Food Insecure     NA                0.4166667   0.2192924   0.6140409
6 months    ki1113344-GMS-Nepal     Food Secure                NA                0.2651515   0.2216362   0.3086669
6 months    ki1113344-GMS-Nepal     Mildly Food Insecure       NA                0.3417722   0.2370866   0.4464577
6 months    ki1113344-GMS-Nepal     Moderately Food Insecure   NA                0.2941176   0.1689519   0.4192834
6 months    ki1113344-GMS-Nepal     Severely Food Insecure     NA                0.3478261   0.1530019   0.5426503
12 months   ki0047075b-MAL-ED       Food Secure                NA                0.4198347   0.3804886   0.4591808
12 months   ki0047075b-MAL-ED       Mildly Food Insecure       NA                0.3658537   0.2615485   0.4701588
12 months   ki0047075b-MAL-ED       Moderately Food Insecure   NA                0.4065421   0.3406997   0.4723844
12 months   ki0047075b-MAL-ED       Severely Food Insecure     NA                0.3173077   0.2278124   0.4068030
12 months   ki1017093c-NIH-Crypto   Food Secure                NA                0.3584475   0.3135070   0.4033880
12 months   ki1017093c-NIH-Crypto   Mildly Food Insecure       NA                0.3883495   0.3217493   0.4549497
12 months   ki1017093c-NIH-Crypto   Moderately Food Insecure   NA                0.4262295   0.3020437   0.5504154
12 months   ki1017093c-NIH-Crypto   Severely Food Insecure     NA                0.5833333   0.3859578   0.7807089
12 months   ki1113344-GMS-Nepal     Food Secure                NA                0.4362745   0.3881112   0.4844378
12 months   ki1113344-GMS-Nepal     Mildly Food Insecure       NA                0.5000000   0.3903376   0.6096624
12 months   ki1113344-GMS-Nepal     Moderately Food Insecure   NA                0.4909091   0.3586731   0.6231451
12 months   ki1113344-GMS-Nepal     Severely Food Insecure     NA                0.4090909   0.2034585   0.6147234
18 months   ki0047075b-MAL-ED       Food Secure                NA                0.5289256   0.4891306   0.5687206
18 months   ki0047075b-MAL-ED       Mildly Food Insecure       NA                0.4634146   0.3554301   0.5713992
18 months   ki0047075b-MAL-ED       Moderately Food Insecure   NA                0.5046729   0.4376523   0.5716935
18 months   ki0047075b-MAL-ED       Severely Food Insecure     NA                0.4134615   0.3187695   0.5081536
18 months   ki1017093c-NIH-Crypto   Food Secure                NA                0.4186047   0.3719435   0.4652658
18 months   ki1017093c-NIH-Crypto   Mildly Food Insecure       NA                0.4554455   0.3867205   0.5241706
18 months   ki1017093c-NIH-Crypto   Moderately Food Insecure   NA                0.5084746   0.3808208   0.6361283
18 months   ki1017093c-NIH-Crypto   Severely Food Insecure     NA                0.6250000   0.4311785   0.8188215
18 months   ki1113344-GMS-Nepal     Food Secure                NA                0.5990099   0.5511765   0.6468433
18 months   ki1113344-GMS-Nepal     Mildly Food Insecure       NA                0.6750000   0.5722725   0.7777275
18 months   ki1113344-GMS-Nepal     Moderately Food Insecure   NA                0.6666667   0.5408219   0.7925114
18 months   ki1113344-GMS-Nepal     Severely Food Insecure     NA                0.5789474   0.3567447   0.8011500
24 months   ki0047075b-MAL-ED       Food Secure                NA                0.5778146   0.5384058   0.6172233
24 months   ki0047075b-MAL-ED       Mildly Food Insecure       NA                0.5250000   0.4155170   0.6344830
24 months   ki0047075b-MAL-ED       Moderately Food Insecure   NA                0.5305164   0.4634608   0.5975720
24 months   ki0047075b-MAL-ED       Severely Food Insecure     NA                0.4368932   0.3410570   0.5327294
24 months   ki1017093c-NIH-Crypto   Food Secure                NA                0.4924242   0.4431451   0.5417034
24 months   ki1017093c-NIH-Crypto   Mildly Food Insecure       NA                0.5178571   0.4422385   0.5934758
24 months   ki1017093c-NIH-Crypto   Moderately Food Insecure   NA                0.4897959   0.3497171   0.6298747
24 months   ki1017093c-NIH-Crypto   Severely Food Insecure     NA                0.5714286   0.3596052   0.7832519
24 months   ki1113344-GMS-Nepal     Food Secure                NA                0.6616541   0.6151863   0.7081219
24 months   ki1113344-GMS-Nepal     Mildly Food Insecure       NA                0.7532468   0.6568645   0.8496290
24 months   ki1113344-GMS-Nepal     Moderately Food Insecure   NA                0.7636364   0.6512549   0.8760179
24 months   ki1113344-GMS-Nepal     Severely Food Insecure     NA                0.6500000   0.4407727   0.8592273


### Parameter: E(Y)


agecat      studyid                 intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki0047075b-MAL-ED       NA                   NA                0.2408325   0.2396525   0.2420125
3 months    ki1017093c-NIH-Crypto   NA                   NA                0.1596306   0.1566089   0.1626523
3 months    ki1113344-GMS-Nepal     NA                   NA                0.1565217   0.1549600   0.1580835
6 months    ki0047075b-MAL-ED       NA                   NA                0.3161034   0.3147583   0.3174484
6 months    ki1017093c-NIH-Crypto   NA                   NA                0.3070652   0.3046172   0.3095132
6 months    ki1113344-GMS-Nepal     NA                   NA                0.2823315   0.2798004   0.2848626
12 months   ki0047075b-MAL-ED       NA                   NA                0.4019900   0.3999907   0.4039894
12 months   ki1017093c-NIH-Crypto   NA                   NA                0.3799726   0.3768577   0.3830875
12 months   ki1113344-GMS-Nepal     NA                   NA                0.4495575   0.4473463   0.4517688
18 months   ki0047075b-MAL-ED       NA                   NA                0.5064677   0.5041944   0.5087410
18 months   ki1017093c-NIH-Crypto   NA                   NA                0.4433566   0.4401872   0.4465261
18 months   ki1113344-GMS-Nepal     NA                   NA                0.6157989   0.6131638   0.6184340
24 months   ki0047075b-MAL-ED       NA                   NA                0.5490000   0.5462865   0.5517135
24 months   ki1017093c-NIH-Crypto   NA                   NA                0.5015773   0.5002395   0.5029151
24 months   ki1113344-GMS-Nepal     NA                   NA                0.6842105   0.6807580   0.6876631


### Parameter: RR


agecat      studyid                 intervention_level         baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -------------------------  ---------------  ----------  ----------  ----------
3 months    ki0047075b-MAL-ED       Mildly Food Insecure       Food Secure       0.8020987   0.5138242   1.2521060
3 months    ki0047075b-MAL-ED       Moderately Food Insecure   Food Secure       0.8966838   0.6769992   1.1876555
3 months    ki0047075b-MAL-ED       Severely Food Insecure     Food Secure       0.8205223   0.5523421   1.2189128
3 months    ki1017093c-NIH-Crypto   Mildly Food Insecure       Food Secure       1.2410959   0.8633107   1.7842001
3 months    ki1017093c-NIH-Crypto   Moderately Food Insecure   Food Secure       0.8992556   0.4532275   1.7842265
3 months    ki1017093c-NIH-Crypto   Severely Food Insecure     Food Secure       2.6134615   1.4872552   4.5924744
3 months    ki1113344-GMS-Nepal     Mildly Food Insecure       Food Secure       1.2228101   0.7337407   2.0378652
3 months    ki1113344-GMS-Nepal     Moderately Food Insecure   Food Secure       0.8404040   0.4053590   1.7423542
3 months    ki1113344-GMS-Nepal     Severely Food Insecure     Food Secure       1.4354727   0.6393510   3.2229274
6 months    ki0047075b-MAL-ED       Mildly Food Insecure       Food Secure       0.8835341   0.6187002   1.2617299
6 months    ki0047075b-MAL-ED       Moderately Food Insecure   Food Secure       0.9852025   0.7863511   1.2343391
6 months    ki0047075b-MAL-ED       Severely Food Insecure     Food Secure       0.7932692   0.5622304   1.1192495
6 months    ki1017093c-NIH-Crypto   Mildly Food Insecure       Food Secure       1.2150521   0.9580483   1.5409992
6 months    ki1017093c-NIH-Crypto   Moderately Food Insecure   Food Secure       1.0196129   0.6721207   1.5467615
6 months    ki1017093c-NIH-Crypto   Severely Food Insecure     Food Secure       1.4633333   0.8907682   2.4039302
6 months    ki1113344-GMS-Nepal     Mildly Food Insecure       Food Secure       1.2889693   0.9105968   1.8245636
6 months    ki1113344-GMS-Nepal     Moderately Food Insecure   Food Secure       1.1092437   0.7029753   1.7503056
6 months    ki1113344-GMS-Nepal     Severely Food Insecure     Food Secure       1.3118012   0.7317867   2.3515356
12 months   ki0047075b-MAL-ED       Mildly Food Insecure       Food Secure       0.8714231   0.6454956   1.1764266
12 months   ki0047075b-MAL-ED       Moderately Food Insecure   Food Secure       0.9683384   0.8030875   1.1675929
12 months   ki0047075b-MAL-ED       Severely Food Insecure     Food Secure       0.7557919   0.5614695   1.0173686
12 months   ki1017093c-NIH-Crypto   Mildly Food Insecure       Food Secure       1.0834209   0.8760659   1.3398547
12 months   ki1017093c-NIH-Crypto   Moderately Food Insecure   Food Secure       1.1890989   0.8658933   1.6329451
12 months   ki1017093c-NIH-Crypto   Severely Food Insecure     Food Secure       1.6273885   1.1344376   2.3345430
12 months   ki1113344-GMS-Nepal     Mildly Food Insecure       Food Secure       1.1460674   0.8965462   1.4650339
12 months   ki1113344-GMS-Nepal     Moderately Food Insecure   Food Secure       1.1252298   0.8410310   1.5054644
12 months   ki1113344-GMS-Nepal     Severely Food Insecure     Food Secure       0.9376915   0.5604745   1.5687877
18 months   ki0047075b-MAL-ED       Mildly Food Insecure       Food Secure       0.8761433   0.6858542   1.1192278
18 months   ki0047075b-MAL-ED       Moderately Food Insecure   Food Secure       0.9541472   0.8190834   1.1114825
18 months   ki0047075b-MAL-ED       Severely Food Insecure     Food Secure       0.7817007   0.6142535   0.9947946
18 months   ki1017093c-NIH-Crypto   Mildly Food Insecure       Food Secure       1.0880088   0.9018980   1.3125244
18 months   ki1017093c-NIH-Crypto   Moderately Food Insecure   Food Secure       1.2146893   0.9229337   1.5986739
18 months   ki1017093c-NIH-Crypto   Severely Food Insecure     Food Secure       1.4930556   1.0738877   2.0758362
18 months   ki1113344-GMS-Nepal     Mildly Food Insecure       Food Secure       1.1268595   0.9489187   1.3381676
18 months   ki1113344-GMS-Nepal     Moderately Food Insecure   Food Secure       1.1129477   0.9066936   1.3661202
18 months   ki1113344-GMS-Nepal     Severely Food Insecure     Food Secure       0.9665072   0.6530574   1.4304044
24 months   ki0047075b-MAL-ED       Mildly Food Insecure       Food Secure       0.9085960   0.7295966   1.1315112
24 months   ki0047075b-MAL-ED       Moderately Food Insecure   Food Secure       0.9181431   0.7953078   1.0599501
24 months   ki0047075b-MAL-ED       Severely Food Insecure     Food Secure       0.7561132   0.6009275   0.9513746
24 months   ki1017093c-NIH-Crypto   Mildly Food Insecure       Food Secure       1.0516484   0.8810287   1.2553101
24 months   ki1017093c-NIH-Crypto   Moderately Food Insecure   Food Secure       0.9946625   0.7346585   1.3466848
24 months   ki1017093c-NIH-Crypto   Severely Food Insecure     Food Secure       1.1604396   0.7904421   1.7036289
24 months   ki1113344-GMS-Nepal     Mildly Food Insecure       Food Secure       1.1384298   0.9838202   1.3173365
24 months   ki1113344-GMS-Nepal     Moderately Food Insecure   Food Secure       1.1541322   0.9804771   1.3585440
24 months   ki1113344-GMS-Nepal     Severely Food Insecure     Food Secure       0.9823864   0.7066421   1.3657310


### Parameter: PAR


agecat      studyid                 intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------------------  -------------------  ---------------  -----------  -----------  ----------
3 months    ki0047075b-MAL-ED       Food Secure          NA                -0.0145217   -0.0492486   0.0202052
3 months    ki1017093c-NIH-Crypto   Food Secure          NA                 0.0161427   -0.0163025   0.0485880
3 months    ki1113344-GMS-Nepal     Food Secure          NA                 0.0050794   -0.0294341   0.0395929
6 months    ki0047075b-MAL-ED       Food Secure          NA                -0.0111693   -0.0486012   0.0262625
6 months    ki1017093c-NIH-Crypto   Food Secure          NA                 0.0223272   -0.0199878   0.0646422
6 months    ki1113344-GMS-Nepal     Food Secure          NA                 0.0171800   -0.0264089   0.0607689
12 months   ki0047075b-MAL-ED       Food Secure          NA                -0.0178447   -0.0572415   0.0215522
12 months   ki1017093c-NIH-Crypto   Food Secure          NA                 0.0215251   -0.0235233   0.0665734
12 months   ki1113344-GMS-Nepal     Food Secure          NA                 0.0132830   -0.0349310   0.0614971
18 months   ki0047075b-MAL-ED       Food Secure          NA                -0.0224580   -0.0623178   0.0174019
18 months   ki1017093c-NIH-Crypto   Food Secure          NA                 0.0247520   -0.0220167   0.0715207
18 months   ki1113344-GMS-Nepal     Food Secure          NA                 0.0167890   -0.0311169   0.0646950
24 months   ki0047075b-MAL-ED       Food Secure          NA                -0.0288146   -0.0683166   0.0106875
24 months   ki1017093c-NIH-Crypto   Food Secure          NA                 0.0091530   -0.0401443   0.0584504
24 months   ki1113344-GMS-Nepal     Food Secure          NA                 0.0225564   -0.0240395   0.0691523


### Parameter: PAF


agecat      studyid                 intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------------------  -------------------  ---------------  -----------  -----------  ----------
3 months    ki0047075b-MAL-ED       Food Secure          NA                -0.0602979   -0.2147700   0.0745313
3 months    ki1017093c-NIH-Crypto   Food Secure          NA                 0.1011256   -0.1267285   0.2829017
3 months    ki1113344-GMS-Nepal     Food Secure          NA                 0.0324519   -0.2151815   0.2296219
6 months    ki0047075b-MAL-ED       Food Secure          NA                -0.0353345   -0.1607948   0.0765659
6 months    ki1017093c-NIH-Crypto   Food Secure          NA                 0.0727115   -0.0758218   0.2007376
6 months    ki1113344-GMS-Nepal     Food Secure          NA                 0.0608504   -0.1069175   0.2031909
12 months   ki0047075b-MAL-ED       Food Secure          NA                -0.0443908   -0.1471535   0.0491664
12 months   ki1017093c-NIH-Crypto   Food Secure          NA                 0.0566490   -0.0696444   0.1680309
12 months   ki1113344-GMS-Nepal     Food Secure          NA                 0.0295469   -0.0838442   0.1310750
18 months   ki0047075b-MAL-ED       Food Secure          NA                -0.0443423   -0.1260980   0.0314778
18 months   ki1017093c-NIH-Crypto   Food Secure          NA                 0.0558286   -0.0557482   0.1556135
18 months   ki1113344-GMS-Nepal     Food Secure          NA                 0.0272638   -0.0537196   0.1020232
24 months   ki0047075b-MAL-ED       Food Secure          NA                -0.0524856   -0.1269744   0.0170799
24 months   ki1017093c-NIH-Crypto   Food Secure          NA                 0.0182485   -0.0851227   0.1117724
24 months   ki1113344-GMS-Nepal     Food Secure          NA                 0.0329670   -0.0375769   0.0987147


