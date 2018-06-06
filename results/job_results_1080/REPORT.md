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

**Intervention Variable:** vagbrth

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        A         n      nA    nAY0   nAY1
----------  -------------------------  -----------------------------  ---  ------  ------  ------  -----
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          0       362      25      16      9
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          1       362     337     221    116
3 months    ki1000108-IRC              INDIA                          0       410      70      43     27
3 months    ki1000108-IRC              INDIA                          1       410     340     237    103
3 months    ki1017093b-PROVIDE         BANGLADESH                     0       700     160     133     27
3 months    ki1017093b-PROVIDE         BANGLADESH                     1       700     540     437    103
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     0       500     204     171     33
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     1       500     296     245     51
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0      2364     212     186     26
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1      2364    2152    1935    217
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       0     13917    1176     949    227
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       1     13917   12741   10059   2682
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0       367      25      12     13
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1       367     342     167    175
6 months    ki1000108-IRC              INDIA                          0       408      70      35     35
6 months    ki1000108-IRC              INDIA                          1       408     338     200    138
6 months    ki1017093b-PROVIDE         BANGLADESH                     0       640     147     114     33
6 months    ki1017093b-PROVIDE         BANGLADESH                     1       640     493     363    130
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0       478     196     140     56
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1       478     282     189     93
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0      2207     203     160     43
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1      2207    2004    1602    402
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0      9035     762     560    202
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1      9035    8273    5814   2459
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          0       372      24       5     19
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          1       372     348     107    241
12 months   ki1000108-IRC              INDIA                          0       408      70      31     39
12 months   ki1000108-IRC              INDIA                          1       408     338     170    168
12 months   ki1017093b-PROVIDE         BANGLADESH                     0       609     141     105     36
12 months   ki1017093b-PROVIDE         BANGLADESH                     1       609     468     302    166
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     0       471     194     127     67
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     1       471     277     159    118
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0      1974     184     133     51
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1      1974    1790    1214    576
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       0     10098     855     537    318
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       1     10098    9243    5757   3486
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          0       373      25       4     21
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          1       373     348      53    295
18 months   ki1000108-IRC              INDIA                          0       409      70      29     41
18 months   ki1000108-IRC              INDIA                          1       409     339     150    189
18 months   ki1017093b-PROVIDE         BANGLADESH                     0       604     140      88     52
18 months   ki1017093b-PROVIDE         BANGLADESH                     1       604     464     264    200
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     0       459     189     117     72
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     1       459     270     130    140
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0      1435     140      93     47
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1      1435    1295     762    533
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       0      7226     609     313    296
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       1      7226    6617    3372   3245
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0       373      25       3     22
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1       373     348      25    323
24 months   ki1000108-IRC              INDIA                          0       410      70      24     46
24 months   ki1000108-IRC              INDIA                          1       410     340     123    217
24 months   ki1017093b-PROVIDE         BANGLADESH                     0       582     135      77     58
24 months   ki1017093b-PROVIDE         BANGLADESH                     1       582     447     225    222
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0       380     150      78     72
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1       380     230      98    132
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0       949      92      58     34
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1       949     857     481    376
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0      1861     153      54     99
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1      1861    1708     473   1235


The following strata were considered:

* agecat: 12 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 12 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 18 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 18 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 18 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 18 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 18 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 3 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 3 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 18 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/c304dbcd-2a05-4238-bfbc-b5df06beccb0/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->


```
## Warning: Removed 28 rows containing missing values (geom_errorbar).
```

![](/tmp/c304dbcd-2a05-4238-bfbc-b5df06beccb0/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/c304dbcd-2a05-4238-bfbc-b5df06beccb0/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/c304dbcd-2a05-4238-bfbc-b5df06beccb0/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.3600000   0.1715830   0.5484170
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.3442136   0.2934177   0.3950096
3 months    ki1000108-IRC              INDIA                          0                    NA                0.3857143   0.2715455   0.4998831
3 months    ki1000108-IRC              INDIA                          1                    NA                0.3029412   0.2540362   0.3518461
3 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.1687500   0.1106754   0.2268246
3 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1907407   0.1575798   0.2239017
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.1617647   0.1111831   0.2123463
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.1722973   0.1292334   0.2153612
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1226415   0.0784764   0.1668066
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1008364   0.0881118   0.1135611
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.1930272   0.1704693   0.2155851
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.2105015   0.2034226   0.2175804
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.5200000   0.3238931   0.7161069
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.5116959   0.4586467   0.5647451
6 months    ki1000108-IRC              INDIA                          0                    NA                0.5000000   0.3827259   0.6172741
6 months    ki1000108-IRC              INDIA                          1                    NA                0.4082840   0.3558201   0.4607479
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.2244898   0.1569871   0.2919925
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.2636917   0.2247655   0.3026179
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.2857143   0.2224036   0.3490249
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.3297872   0.2748583   0.3847162
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2118227   0.1556019   0.2680434
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2005988   0.1830623   0.2181354
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.2650919   0.2337511   0.2964326
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.2972320   0.2873829   0.3070810
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.7916667   0.6289704   0.9543629
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.6925287   0.6439815   0.7410759
12 months   ki1000108-IRC              INDIA                          0                    NA                0.5571429   0.4406372   0.6736485
12 months   ki1000108-IRC              INDIA                          1                    NA                0.4970414   0.4436729   0.5504099
12 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.2553191   0.1832877   0.3273506
12 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.3547009   0.3113204   0.3980813
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.3453608   0.2783806   0.4123410
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.4259928   0.3676980   0.4842875
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2771739   0.2124831   0.3418647
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.3217877   0.3001406   0.3434348
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.3719298   0.3395316   0.4043280
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.3771503   0.3672690   0.3870315
18 months   ki1000108-IRC              INDIA                          0                    NA                0.5857143   0.4701766   0.7012519
18 months   ki1000108-IRC              INDIA                          1                    NA                0.5575221   0.5045855   0.6104588
18 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.3714286   0.2913237   0.4515334
18 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.4310345   0.3859375   0.4761315
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.3809524   0.3116436   0.4502611
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.5185185   0.4588546   0.5781824
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.3357143   0.2574619   0.4139667
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.4115830   0.3847706   0.4383954
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.4860427   0.4463445   0.5257408
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.4904035   0.4783577   0.5024494
24 months   ki1000108-IRC              INDIA                          0                    NA                0.6571429   0.5458119   0.7684738
24 months   ki1000108-IRC              INDIA                          1                    NA                0.6382353   0.5870975   0.6893731
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.4296296   0.3460539   0.5132054
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.4966443   0.4502539   0.5430347
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.4800000   0.3999434   0.5600566
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.5739130   0.5099206   0.6379055
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.3695652   0.2708808   0.4682497
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.4387398   0.4054989   0.4719807
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.6470588   0.5713159   0.7228018
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.7230679   0.7018405   0.7442953


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.3453039   0.3448910   0.3457168
3 months    ki1000108-IRC              INDIA                          NA                   NA                0.3170732   0.3140547   0.3200916
3 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1857143   0.1850297   0.1863988
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1680000   0.1675458   0.1684542
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1027919   0.1025407   0.1030431
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2090249   0.2089442   0.2091057
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.5122616   0.5120472   0.5124759
6 months    ki1000108-IRC              INDIA                          NA                   NA                0.4240196   0.4206604   0.4273789
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2546875   0.2534090   0.2559660
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.3117155   0.3097702   0.3136608
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2016312   0.2014958   0.2017665
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2945213   0.2943371   0.2947055
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.6989247   0.6964464   0.7014030
12 months   ki1000108-IRC              INDIA                          NA                   NA                0.5073529   0.5051516   0.5095543
12 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3316913   0.3283592   0.3350234
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.3927813   0.3891935   0.3963691
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3176292   0.3170569   0.3182015
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.3767083   0.3766799   0.3767366
18 months   ki1000108-IRC              INDIA                          NA                   NA                0.5623472   0.5613169   0.5633775
18 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.4172185   0.4152110   0.4192261
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.4618736   0.4556731   0.4680741
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4041812   0.4030160   0.4053463
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.4900360   0.4900080   0.4900639
24 months   ki1000108-IRC              INDIA                          NA                   NA                0.6414634   0.6407739   0.6421529
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.4810997   0.4787997   0.4833997
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.5368421   0.5322206   0.5414636
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4320337   0.4307308   0.4333366
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.7168189   0.7158701   0.7177678


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.000000
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 0.9561490   0.5550881   1.646984
3 months    ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.000000
3 months    ki1000108-IRC              INDIA                          1                    0                 0.7854031   0.5606198   1.100314
3 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
3 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.1303155   0.7686884   1.662069
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.0651106   0.7137487   1.589440
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.8222048   0.5613834   1.204205
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.0905278   0.9656591   1.231543
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 0.9840306   0.6654995   1.455022
6 months    ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1000108-IRC              INDIA                          1                    0                 0.8165680   0.6249485   1.066941
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.1746266   0.8402759   1.642017
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.1542553   0.8748088   1.522967
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.9470130   0.7161373   1.252321
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.1212414   0.9916893   1.267718
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.000000
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 0.8747731   0.7040338   1.086919
12 months   ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.000000
12 months   ki1000108-IRC              INDIA                          1                    0                 0.8921256   0.7052406   1.128534
12 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
12 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.3892450   1.0214966   1.889386
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.2334716   0.9728473   1.563917
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.1609596   0.9106026   1.480149
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.0140361   0.9258670   1.110602
18 months   ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.000000
18 months   ki1000108-IRC              INDIA                          1                    0                 0.9518670   0.7647153   1.184821
18 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
18 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.1604775   0.9131330   1.474821
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.3611111   1.0974972   1.688044
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.2259919   0.9624490   1.561700
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.0089721   0.9264847   1.098804
24 months   ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1000108-IRC              INDIA                          1                    0                 0.9712276   0.8052499   1.171417
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.1559824   0.9316082   1.434396
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.1956522   0.9783071   1.461284
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.1871783   0.8994340   1.566977
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.1174686   0.9904296   1.260803


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0146961   -0.2031136   0.1737213
3 months    ki1000108-IRC              INDIA                          0                    NA                -0.0686411   -0.1828498   0.0455676
3 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0169643   -0.0411144   0.0750429
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0062353   -0.0443483   0.0568189
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0198496   -0.0640155   0.0243162
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0159977   -0.0065603   0.0385558
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0077384   -0.2038454   0.1883686
6 months    ki1000108-IRC              INDIA                          0                    NA                -0.0759804   -0.1933026   0.0413418
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0301977   -0.0373171   0.0977125
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0260012   -0.0373393   0.0893417
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0101915   -0.0664124   0.0460294
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0294294   -0.0019118   0.0607707
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0927419   -0.2554571   0.0699732
12 months   ki1000108-IRC              INDIA                          0                    NA                -0.0497899   -0.1663164   0.0667365
12 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0763721    0.0042637   0.1484806
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0474205   -0.0196557   0.1144967
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0404553   -0.0242380   0.1051486
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0047784   -0.0276198   0.0371767
18 months   ki1000108-IRC              INDIA                          0                    NA                -0.0233671   -0.1389093   0.0921751
18 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0457900   -0.0343400   0.1259200
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0809213    0.0113357   0.1505068
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0684669   -0.0097942   0.1467280
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0039933   -0.0357049   0.0436914
24 months   ki1000108-IRC              INDIA                          0                    NA                -0.0156794   -0.1270125   0.0956536
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0514700   -0.0321374   0.1350774
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0568421   -0.0233477   0.1370320
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0624685   -0.0362246   0.1611616
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0697601   -0.0059888   0.1455090


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0425600   -0.7595552   0.3822693
3 months    ki1000108-IRC              INDIA                          0                    NA                -0.2164835   -0.6357649   0.0953271
3 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0913462   -0.2819399   0.3559356
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0371149   -0.3163685   0.2956776
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1931050   -0.7103243   0.1677019
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0765350   -0.0379443   0.1783879
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0151064   -0.4801187   0.3038119
6 months    ki1000108-IRC              INDIA                          0                    NA                -0.1791908   -0.4910943   0.0674696
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.1185677   -0.1906848   0.3474991
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0834132   -0.1440523   0.2656531
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0505452   -0.3698817   0.1943500
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0999230   -0.0130370   0.2002872
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.1326923   -0.3911615   0.0777549
12 months   ki1000108-IRC              INDIA                          0                    NA                -0.0981366   -0.3536065   0.1091177
12 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.2302507   -0.0208255   0.4195737
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.1207300   -0.0676867   0.2758964
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.1273663   -0.1020385   0.3090173
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0126847   -0.0771758   0.0950488
18 months   ki1000108-IRC              INDIA                          0                    NA                -0.0415528   -0.2686846   0.1449157
18 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.1097506   -0.1045820   0.2824942
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.1752022    0.0101351   0.3127431
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.1693966   -0.0486539   0.3421070
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0081490   -0.0762620   0.0859396
24 months   ki1000108-IRC              INDIA                          0                    NA                -0.0244432   -0.2135735   0.1352119
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.1069841   -0.0848455   0.2648931
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.1058824   -0.0566342   0.2434029
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.1445917   -0.1172487   0.3450668
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0973190   -0.0147870   0.1970403
