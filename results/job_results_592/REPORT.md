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

**Intervention Variable:** single

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid


The following strata were considered:

* agecat: 12 months, studyid: ki0047075b-MAL-ED
* agecat: 12 months, studyid: ki1066203-TanzaniaChild2
* agecat: 12 months, studyid: ki1112895-Guatemala BSC
* agecat: 12 months, studyid: ki1126311-ZVITAMBO
* agecat: 12 months, studyid: ki1135781-COHORTS
* agecat: 18 months, studyid: ki0047075b-MAL-ED
* agecat: 18 months, studyid: ki1066203-TanzaniaChild2
* agecat: 18 months, studyid: ki1112895-Guatemala BSC
* agecat: 18 months, studyid: ki1126311-ZVITAMBO
* agecat: 18 months, studyid: ki1135781-COHORTS
* agecat: 24 months, studyid: ki0047075b-MAL-ED
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2
* agecat: 24 months, studyid: ki1126311-ZVITAMBO
* agecat: 24 months, studyid: ki1135781-COHORTS
* agecat: 3 months, studyid: ki0047075b-MAL-ED
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2
* agecat: 3 months, studyid: ki1126311-ZVITAMBO
* agecat: 3 months, studyid: ki1135781-COHORTS
* agecat: 6 months, studyid: ki0047075b-MAL-ED
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2
* agecat: 6 months, studyid: ki1112895-Guatemala BSC
* agecat: 6 months, studyid: ki1126311-ZVITAMBO
* agecat: 6 months, studyid: ki1135781-COHORTS

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 6 months, studyid: ki1112895-Guatemala BSC
* agecat: 12 months, studyid: ki1112895-Guatemala BSC
* agecat: 18 months, studyid: ki1112895-Guatemala BSC

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness




# Results Detail

## Results Plots
![](/tmp/3655159b-3696-4806-9aaa-ff8688a29a99/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/3655159b-3696-4806-9aaa-ff8688a29a99/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/3655159b-3696-4806-9aaa-ff8688a29a99/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/3655159b-3696-4806-9aaa-ff8688a29a99/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Data Summary

agecat      studyid                    A        n     nA   nAY0   nAY1
----------  -------------------------  ---  -----  -----  -----  -----
3 months    ki0047075b-MAL-ED          0     1866   1647   1230    417
3 months    ki0047075b-MAL-ED          1     1866    219    151     68
3 months    ki1066203-TanzaniaChild2   0      595    535    486     49
3 months    ki1066203-TanzaniaChild2   1      595     60     50     10
3 months    ki1112895-Guatemala BSC    0        0      0      0      0
3 months    ki1112895-Guatemala BSC    1        0      0      0      0
3 months    ki1126311-ZVITAMBO         0     3480   3268   2590    678
3 months    ki1126311-ZVITAMBO         1     3480    212    158     54
3 months    ki1135781-COHORTS          0     8678   8555   7037   1518
3 months    ki1135781-COHORTS          1     8678    123     92     31
6 months    ki0047075b-MAL-ED          0     1746   1556   1050    506
6 months    ki0047075b-MAL-ED          1     1746    190    116     74
6 months    ki1066203-TanzaniaChild2   0      551    497    404     93
6 months    ki1066203-TanzaniaChild2   1      551     54     39     15
6 months    ki1112895-Guatemala BSC    0       90     84     61     23
6 months    ki1112895-Guatemala BSC    1       90      6      3      3
6 months    ki1126311-ZVITAMBO         0     2276   2135   1506    629
6 months    ki1126311-ZVITAMBO         1     2276    141     93     48
6 months    ki1135781-COHORTS          0     2906   2824   2113    711
6 months    ki1135781-COHORTS          1     2906     82     54     28
12 months   ki0047075b-MAL-ED          0     1688   1503    862    641
12 months   ki0047075b-MAL-ED          1     1688    185    101     84
12 months   ki1066203-TanzaniaChild2   0      491    442    307    135
12 months   ki1066203-TanzaniaChild2   1      491     49     26     23
12 months   ki1112895-Guatemala BSC    0       80     74     42     32
12 months   ki1112895-Guatemala BSC    1       80      6      2      4
12 months   ki1126311-ZVITAMBO         0     2533   2389   1498    891
12 months   ki1126311-ZVITAMBO         1     2533    144     78     66
12 months   ki1135781-COHORTS          0     8270   8138   4636   3502
12 months   ki1135781-COHORTS          1     8270    132     56     76
18 months   ki0047075b-MAL-ED          0     1613   1435    663    772
18 months   ki0047075b-MAL-ED          1     1613    178     80     98
18 months   ki1066203-TanzaniaChild2   0      359    321    189    132
18 months   ki1066203-TanzaniaChild2   1      359     38     17     21
18 months   ki1112895-Guatemala BSC    0       49     46     23     23
18 months   ki1112895-Guatemala BSC    1       49      3      0      3
18 months   ki1126311-ZVITAMBO         0     1848   1736    907    829
18 months   ki1126311-ZVITAMBO         1     1848    112     43     69
18 months   ki1135781-COHORTS          0     3023   2917   1031   1886
18 months   ki1135781-COHORTS          1     3023    106     30     76
24 months   ki0047075b-MAL-ED          0     1538   1373    569    804
24 months   ki0047075b-MAL-ED          1     1538    165     66     99
24 months   ki1066203-TanzaniaChild2   0      250    224    121    103
24 months   ki1066203-TanzaniaChild2   1      250     26     10     16
24 months   ki1112895-Guatemala BSC    0        0      0      0      0
24 months   ki1112895-Guatemala BSC    1        0      0      0      0
24 months   ki1126311-ZVITAMBO         0      469    435    124    311
24 months   ki1126311-ZVITAMBO         1      469     34      8     26
24 months   ki1135781-COHORTS          0     2975   2866    650   2216
24 months   ki1135781-COHORTS          1     2975    109     21     88

## Results Table

### Parameter: TSM


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki0047075b-MAL-ED          0                    NA                0.2531876   0.2321816   0.2741937
3 months    ki0047075b-MAL-ED          1                    NA                0.3105023   0.2492050   0.3717996
3 months    ki1066203-TanzaniaChild2   0                    NA                0.0915888   0.0671264   0.1160512
3 months    ki1066203-TanzaniaChild2   1                    NA                0.1666667   0.0722885   0.2610448
3 months    ki1126311-ZVITAMBO         0                    NA                0.2074663   0.1935619   0.2213707
3 months    ki1126311-ZVITAMBO         1                    NA                0.2547170   0.1960583   0.3133756
3 months    ki1135781-COHORTS          0                    NA                0.1774401   0.1693441   0.1855361
3 months    ki1135781-COHORTS          1                    NA                0.2520325   0.1752981   0.3287669
6 months    ki0047075b-MAL-ED          0                    NA                0.3251928   0.3019104   0.3484752
6 months    ki0047075b-MAL-ED          1                    NA                0.3894737   0.3201172   0.4588301
6 months    ki1066203-TanzaniaChild2   0                    NA                0.1871227   0.1528033   0.2214422
6 months    ki1066203-TanzaniaChild2   1                    NA                0.2777778   0.1582057   0.3973499
6 months    ki1126311-ZVITAMBO         0                    NA                0.2946136   0.2752723   0.3139548
6 months    ki1126311-ZVITAMBO         1                    NA                0.3404255   0.2621949   0.4186562
6 months    ki1135781-COHORTS          0                    NA                0.2517705   0.2357598   0.2677812
6 months    ki1135781-COHORTS          1                    NA                0.3414634   0.2388089   0.4441179
12 months   ki0047075b-MAL-ED          0                    NA                0.4264804   0.4014700   0.4514908
12 months   ki0047075b-MAL-ED          1                    NA                0.4540541   0.3822879   0.5258202
12 months   ki1066203-TanzaniaChild2   0                    NA                0.3054299   0.2624472   0.3484125
12 months   ki1066203-TanzaniaChild2   1                    NA                0.4693878   0.3295104   0.6092651
12 months   ki1126311-ZVITAMBO         0                    NA                0.3729594   0.3535637   0.3923550
12 months   ki1126311-ZVITAMBO         1                    NA                0.4583333   0.3769362   0.5397305
12 months   ki1135781-COHORTS          0                    NA                0.4303269   0.4195690   0.4410848
12 months   ki1135781-COHORTS          1                    NA                0.5757576   0.4914407   0.6600744
18 months   ki0047075b-MAL-ED          0                    NA                0.5379791   0.5121761   0.5637821
18 months   ki0047075b-MAL-ED          1                    NA                0.5505618   0.4774629   0.6236607
18 months   ki1066203-TanzaniaChild2   0                    NA                0.4112150   0.3573118   0.4651181
18 months   ki1066203-TanzaniaChild2   1                    NA                0.5526316   0.3943201   0.7109431
18 months   ki1126311-ZVITAMBO         0                    NA                0.4775346   0.4540316   0.5010375
18 months   ki1126311-ZVITAMBO         1                    NA                0.6160714   0.5259771   0.7061657
18 months   ki1135781-COHORTS          0                    NA                0.6465547   0.6292040   0.6639053
18 months   ki1135781-COHORTS          1                    NA                0.7169811   0.6312125   0.8027498
24 months   ki0047075b-MAL-ED          0                    NA                0.5855790   0.5595134   0.6116446
24 months   ki0047075b-MAL-ED          1                    NA                0.6000000   0.5252256   0.6747744
24 months   ki1066203-TanzaniaChild2   0                    NA                0.4598214   0.3944244   0.5252184
24 months   ki1066203-TanzaniaChild2   1                    NA                0.6153846   0.4280067   0.8027625
24 months   ki1126311-ZVITAMBO         0                    NA                0.7149425   0.6724739   0.7574112
24 months   ki1126311-ZVITAMBO         1                    NA                0.7647059   0.6219727   0.9074390
24 months   ki1135781-COHORTS          0                    NA                0.7732031   0.7578693   0.7885368
24 months   ki1135781-COHORTS          1                    NA                0.8073394   0.7332882   0.8813907


### Parameter: E(Y)


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki0047075b-MAL-ED          NA                   NA                0.2599143   0.2590771   0.2607515
3 months    ki1066203-TanzaniaChild2   NA                   NA                0.0991597   0.0973416   0.1009777
3 months    ki1126311-ZVITAMBO         NA                   NA                0.2103448   0.2099693   0.2107204
3 months    ki1135781-COHORTS          NA                   NA                0.1784973   0.1783118   0.1786829
6 months    ki0047075b-MAL-ED          NA                   NA                0.3321879   0.3312486   0.3331271
6 months    ki1066203-TanzaniaChild2   NA                   NA                0.1960073   0.1937547   0.1982598
6 months    ki1126311-ZVITAMBO         NA                   NA                0.2974517   0.2969979   0.2979055
6 months    ki1135781-COHORTS          NA                   NA                0.2543014   0.2537613   0.2548415
12 months   ki0047075b-MAL-ED          NA                   NA                0.4295024   0.4290913   0.4299134
12 months   ki1066203-TanzaniaChild2   NA                   NA                0.3217923   0.3174411   0.3261435
12 months   ki1126311-ZVITAMBO         NA                   NA                0.3778129   0.3770429   0.3785829
12 months   ki1135781-COHORTS          NA                   NA                0.4326481   0.4322553   0.4330410
18 months   ki0047075b-MAL-ED          NA                   NA                0.5393676   0.5391752   0.5395601
18 months   ki1066203-TanzaniaChild2   NA                   NA                0.4261838   0.4216772   0.4306905
18 months   ki1126311-ZVITAMBO         NA                   NA                0.4859307   0.4844232   0.4874383
18 months   ki1135781-COHORTS          NA                   NA                0.6490241   0.6485623   0.6494860
24 months   ki0047075b-MAL-ED          NA                   NA                0.5871261   0.5869030   0.5873493
24 months   ki1066203-TanzaniaChild2   NA                   NA                0.4760000   0.4701017   0.4818983
24 months   ki1126311-ZVITAMBO         NA                   NA                0.7185501   0.7173810   0.7197192
24 months   ki1135781-COHORTS          NA                   NA                0.7744538   0.7742233   0.7746843


### Parameter: RR


agecat      studyid                    intervention_level   baseline_level    estimate    ci_lower   ci_upper
----------  -------------------------  -------------------  ---------------  ---------  ----------  ---------
3 months    ki0047075b-MAL-ED          1                    0                 1.226372   0.9899723   1.519224
3 months    ki1066203-TanzaniaChild2   1                    0                 1.819728   0.9729624   3.403430
3 months    ki1126311-ZVITAMBO         1                    0                 1.227751   0.9659341   1.560533
3 months    ki1135781-COHORTS          1                    0                 1.420381   1.0440035   1.932447
6 months    ki0047075b-MAL-ED          1                    0                 1.197670   0.9885135   1.451081
6 months    ki1066203-TanzaniaChild2   1                    0                 1.484468   0.9297437   2.370165
6 months    ki1126311-ZVITAMBO         1                    0                 1.155498   0.9098603   1.467452
6 months    ki1135781-COHORTS          1                    0                 1.356248   0.9974425   1.844126
12 months   ki0047075b-MAL-ED          1                    0                 1.064654   0.8994830   1.260155
12 months   ki1066203-TanzaniaChild2   1                    0                 1.536810   1.1053383   2.136709
12 months   ki1126311-ZVITAMBO         1                    0                 1.228910   1.0212993   1.478723
12 months   ki1135781-COHORTS          1                    0                 1.337954   1.1532432   1.552249
18 months   ki0047075b-MAL-ED          1                    0                 1.023389   0.8886520   1.178554
18 months   ki1066203-TanzaniaChild2   1                    0                 1.343900   0.9807289   1.841555
18 months   ki1126311-ZVITAMBO         1                    0                 1.290109   1.1056423   1.505351
18 months   ki1135781-COHORTS          1                    0                 1.108926   0.9809772   1.253562
24 months   ki0047075b-MAL-ED          1                    0                 1.024627   0.8976219   1.169602
24 months   ki1066203-TanzaniaChild2   1                    0                 1.338312   0.9563250   1.872877
24 months   ki1126311-ZVITAMBO         1                    0                 1.069605   0.8793377   1.301041
24 months   ki1135781-COHORTS          1                    0                 1.044149   0.9506213   1.146879


### Parameter: PAR


agecat      studyid                    intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  -----------  ----------
3 months    ki0047075b-MAL-ED          0                    NA                0.0067266   -0.0142961   0.0277494
3 months    ki1066203-TanzaniaChild2   0                    NA                0.0075709   -0.0169590   0.0321007
3 months    ki1126311-ZVITAMBO         0                    NA                0.0028785   -0.0110310   0.0167880
3 months    ki1135781-COHORTS          0                    NA                0.0010573   -0.0070409   0.0091554
6 months    ki0047075b-MAL-ED          0                    NA                0.0069951   -0.0163063   0.0302964
6 months    ki1066203-TanzaniaChild2   0                    NA                0.0088845   -0.0255088   0.0432778
6 months    ki1126311-ZVITAMBO         0                    NA                0.0028381   -0.0165085   0.0221847
6 months    ki1135781-COHORTS          0                    NA                0.0025309   -0.0134889   0.0185507
12 months   ki0047075b-MAL-ED          0                    NA                0.0030220   -0.0219918   0.0280358
12 months   ki1066203-TanzaniaChild2   0                    NA                0.0163624   -0.0268400   0.0595648
12 months   ki1126311-ZVITAMBO         0                    NA                0.0048535   -0.0145575   0.0242644
12 months   ki1135781-COHORTS          0                    NA                0.0023213   -0.0084438   0.0130863
18 months   ki0047075b-MAL-ED          0                    NA                0.0013885   -0.0244152   0.0271923
18 months   ki1066203-TanzaniaChild2   0                    NA                0.0149689   -0.0391223   0.0690601
18 months   ki1126311-ZVITAMBO         0                    NA                0.0083962   -0.0151551   0.0319474
18 months   ki1135781-COHORTS          0                    NA                0.0024695   -0.0148873   0.0198263
24 months   ki0047075b-MAL-ED          0                    NA                0.0015471   -0.0245194   0.0276137
24 months   ki1066203-TanzaniaChild2   0                    NA                0.0161786   -0.0494839   0.0818410
24 months   ki1126311-ZVITAMBO         0                    NA                0.0036076   -0.0388772   0.0460923
24 months   ki1135781-COHORTS          0                    NA                0.0012507   -0.0140848   0.0165862


### Parameter: PAF


agecat      studyid                    intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  -----------  ----------
3 months    ki0047075b-MAL-ED          0                    NA                0.0258802   -0.0584524   0.1034937
3 months    ki1066203-TanzaniaChild2   0                    NA                0.0763504   -0.2071901   0.2932939
3 months    ki1126311-ZVITAMBO         0                    NA                0.0136846   -0.0547088   0.0776430
3 months    ki1135781-COHORTS          0                    NA                0.0059231   -0.0404965   0.0502718
6 months    ki0047075b-MAL-ED          0                    NA                0.0210575   -0.0516592   0.0887463
6 months    ki1066203-TanzaniaChild2   0                    NA                0.0453275   -0.1472626   0.2055877
6 months    ki1126311-ZVITAMBO         0                    NA                0.0095413   -0.0576824   0.0724925
6 months    ki1135781-COHORTS          0                    NA                0.0099524   -0.0550895   0.0709848
12 months   ki0047075b-MAL-ED          0                    NA                0.0070360   -0.0529447   0.0636000
12 months   ki1066203-TanzaniaChild2   0                    NA                0.0508477   -0.0932890   0.1759818
12 months   ki1126311-ZVITAMBO         0                    NA                0.0128462   -0.0398903   0.0629083
12 months   ki1135781-COHORTS          0                    NA                0.0053652   -0.0198302   0.0299383
18 months   ki0047075b-MAL-ED          0                    NA                0.0025744   -0.0464322   0.0492859
18 months   ki1066203-TanzaniaChild2   0                    NA                0.0351231   -0.1004880   0.1540231
18 months   ki1126311-ZVITAMBO         0                    NA                0.0172785   -0.0323991   0.0645658
18 months   ki1135781-COHORTS          0                    NA                0.0038049   -0.0233001   0.0301920
24 months   ki0047075b-MAL-ED          0                    NA                0.0026351   -0.0427648   0.0460583
24 months   ki1066203-TanzaniaChild2   0                    NA                0.0339886   -0.1142502   0.1625058
24 months   ki1126311-ZVITAMBO         0                    NA                0.0050206   -0.0558969   0.0624237
24 months   ki1135781-COHORTS          0                    NA                0.0016150   -0.0183844   0.0212215


