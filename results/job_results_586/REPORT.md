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

**Intervention Variable:** vagbrth

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid


The following strata were considered:

* agecat: 12 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 12 months, studyid: ki1000108-IRC
* agecat: 12 months, studyid: ki1017093b-PROVIDE
* agecat: 12 months, studyid: ki1017093c-NIH-Crypto
* agecat: 12 months, studyid: ki1066203-TanzaniaChild2
* agecat: 12 months, studyid: ki1126311-ZVITAMBO
* agecat: 18 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 18 months, studyid: ki1000108-IRC
* agecat: 18 months, studyid: ki1017093b-PROVIDE
* agecat: 18 months, studyid: ki1017093c-NIH-Crypto
* agecat: 18 months, studyid: ki1066203-TanzaniaChild2
* agecat: 18 months, studyid: ki1126311-ZVITAMBO
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 24 months, studyid: ki1000108-IRC
* agecat: 24 months, studyid: ki1017093b-PROVIDE
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2
* agecat: 24 months, studyid: ki1126311-ZVITAMBO
* agecat: 3 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 3 months, studyid: ki1000108-IRC
* agecat: 3 months, studyid: ki1017093b-PROVIDE
* agecat: 3 months, studyid: ki1017093c-NIH-Crypto
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2
* agecat: 3 months, studyid: ki1126311-ZVITAMBO
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 6 months, studyid: ki1000108-IRC
* agecat: 6 months, studyid: ki1017093b-PROVIDE
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2
* agecat: 6 months, studyid: ki1126311-ZVITAMBO

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 18 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness




# Results Detail

## Results Plots
![](/tmp/49202b8f-2c99-4b3d-9e1b-85e4536dcab1/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/49202b8f-2c99-4b3d-9e1b-85e4536dcab1/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/49202b8f-2c99-4b3d-9e1b-85e4536dcab1/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/49202b8f-2c99-4b3d-9e1b-85e4536dcab1/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Data Summary

agecat      studyid                    A        n     nA   nAY0   nAY1
----------  -------------------------  ---  -----  -----  -----  -----
3 months    ki1000108-CMC-V-BCS-2002   0      362     25     16      9
3 months    ki1000108-CMC-V-BCS-2002   1      362    337    221    116
3 months    ki1000108-IRC              0      410     70     43     27
3 months    ki1000108-IRC              1      410    340    237    103
3 months    ki1017093b-PROVIDE         0      175     40     31      9
3 months    ki1017093b-PROVIDE         1      175    135    100     35
3 months    ki1017093c-NIH-Crypto      0      500    204    171     33
3 months    ki1017093c-NIH-Crypto      1      500    296    245     51
3 months    ki1066203-TanzaniaChild2   0      599     45     38      7
3 months    ki1066203-TanzaniaChild2   1      599    554    502     52
3 months    ki1126311-ZVITAMBO         0     3471    293    233     60
3 months    ki1126311-ZVITAMBO         1     3471   3178   2512    666
6 months    ki1000108-CMC-V-BCS-2002   0      367     25     12     13
6 months    ki1000108-CMC-V-BCS-2002   1      367    342    167    175
6 months    ki1000108-IRC              0      408     70     35     35
6 months    ki1000108-IRC              1      408    338    200    138
6 months    ki1017093b-PROVIDE         0      166     38     30      8
6 months    ki1017093b-PROVIDE         1      166    128     88     40
6 months    ki1017093c-NIH-Crypto      0      478    196    140     56
6 months    ki1017093c-NIH-Crypto      1      478    282    189     93
6 months    ki1066203-TanzaniaChild2   0      555     44     34     10
6 months    ki1066203-TanzaniaChild2   1      555    511    413     98
6 months    ki1126311-ZVITAMBO         0     2271    191    136     55
6 months    ki1126311-ZVITAMBO         1     2271   2080   1461    619
12 months   ki1000108-CMC-V-BCS-2002   0      372     24      5     19
12 months   ki1000108-CMC-V-BCS-2002   1      372    348    107    241
12 months   ki1000108-IRC              0      408     70     31     39
12 months   ki1000108-IRC              1      408    338    170    168
12 months   ki1017093b-PROVIDE         0      159     36     27      9
12 months   ki1017093b-PROVIDE         1      159    123     76     47
12 months   ki1017093c-NIH-Crypto      0      471    194    127     67
12 months   ki1017093c-NIH-Crypto      1      471    277    159    118
12 months   ki1066203-TanzaniaChild2   0      494     41     29     12
12 months   ki1066203-TanzaniaChild2   1      494    453    307    146
12 months   ki1126311-ZVITAMBO         0     2525    210    128     82
12 months   ki1126311-ZVITAMBO         1     2525   2315   1446    869
18 months   ki1000108-CMC-V-BCS-2002   0      373     25      4     21
18 months   ki1000108-CMC-V-BCS-2002   1      373    348     53    295
18 months   ki1000108-IRC              0      409     70     29     41
18 months   ki1000108-IRC              1      409    339    150    189
18 months   ki1017093b-PROVIDE         0      155     36     20     16
18 months   ki1017093b-PROVIDE         1      155    119     65     54
18 months   ki1017093c-NIH-Crypto      0      459    189    117     72
18 months   ki1017093c-NIH-Crypto      1      459    270    130    140
18 months   ki1066203-TanzaniaChild2   0      358     28     18     10
18 months   ki1066203-TanzaniaChild2   1      358    330    187    143
18 months   ki1126311-ZVITAMBO         0     1842    153     74     79
18 months   ki1126311-ZVITAMBO         1     1842   1689    876    813
24 months   ki1000108-CMC-V-BCS-2002   0      373     25      3     22
24 months   ki1000108-CMC-V-BCS-2002   1      373    348     25    323
24 months   ki1000108-IRC              0      410     70     24     46
24 months   ki1000108-IRC              1      410    340    123    217
24 months   ki1017093b-PROVIDE         0      148     34     17     17
24 months   ki1017093b-PROVIDE         1      148    114     59     55
24 months   ki1017093c-NIH-Crypto      0      380    150     78     72
24 months   ki1017093c-NIH-Crypto      1      380    230     98    132
24 months   ki1066203-TanzaniaChild2   0      248     19     10      9
24 months   ki1066203-TanzaniaChild2   1      248    229    120    109
24 months   ki1126311-ZVITAMBO         0      463     43     11     32
24 months   ki1126311-ZVITAMBO         1      463    420    116    304

## Results Table

### Parameter: TSM


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki1000108-CMC-V-BCS-2002   0                    NA                0.3600000   0.1715830   0.5484170
3 months    ki1000108-CMC-V-BCS-2002   1                    NA                0.3442136   0.2934177   0.3950096
3 months    ki1000108-IRC              0                    NA                0.3857143   0.2715455   0.4998831
3 months    ki1000108-IRC              1                    NA                0.3029412   0.2540362   0.3518461
3 months    ki1017093b-PROVIDE         0                    NA                0.2250000   0.0952209   0.3547791
3 months    ki1017093b-PROVIDE         1                    NA                0.2592593   0.1851238   0.3333947
3 months    ki1017093c-NIH-Crypto      0                    NA                0.1617647   0.1111831   0.2123463
3 months    ki1017093c-NIH-Crypto      1                    NA                0.1722973   0.1292334   0.2153612
3 months    ki1066203-TanzaniaChild2   0                    NA                0.1555556   0.0495733   0.2615378
3 months    ki1066203-TanzaniaChild2   1                    NA                0.0938628   0.0695576   0.1181680
3 months    ki1126311-ZVITAMBO         0                    NA                0.2047782   0.1585653   0.2509910
3 months    ki1126311-ZVITAMBO         1                    NA                0.2095658   0.1954135   0.2237181
6 months    ki1000108-CMC-V-BCS-2002   0                    NA                0.5200000   0.3238931   0.7161069
6 months    ki1000108-CMC-V-BCS-2002   1                    NA                0.5116959   0.4586467   0.5647451
6 months    ki1000108-IRC              0                    NA                0.5000000   0.3827259   0.6172741
6 months    ki1000108-IRC              1                    NA                0.4082840   0.3558201   0.4607479
6 months    ki1017093b-PROVIDE         0                    NA                0.2105263   0.0805122   0.3405404
6 months    ki1017093b-PROVIDE         1                    NA                0.3125000   0.2319591   0.3930409
6 months    ki1017093c-NIH-Crypto      0                    NA                0.2857143   0.2224036   0.3490249
6 months    ki1017093c-NIH-Crypto      1                    NA                0.3297872   0.2748583   0.3847162
6 months    ki1066203-TanzaniaChild2   0                    NA                0.2272727   0.1033360   0.3512095
6 months    ki1066203-TanzaniaChild2   1                    NA                0.1917808   0.1576146   0.2259470
6 months    ki1126311-ZVITAMBO         0                    NA                0.2879581   0.2237271   0.3521891
6 months    ki1126311-ZVITAMBO         1                    NA                0.2975962   0.2779436   0.3172487
12 months   ki1000108-CMC-V-BCS-2002   0                    NA                0.7916667   0.6289704   0.9543629
12 months   ki1000108-CMC-V-BCS-2002   1                    NA                0.6925287   0.6439815   0.7410759
12 months   ki1000108-IRC              0                    NA                0.5571429   0.4406372   0.6736485
12 months   ki1000108-IRC              1                    NA                0.4970414   0.4436729   0.5504099
12 months   ki1017093b-PROVIDE         0                    NA                0.2500000   0.1081049   0.3918951
12 months   ki1017093b-PROVIDE         1                    NA                0.3821138   0.2959716   0.4682561
12 months   ki1017093c-NIH-Crypto      0                    NA                0.3453608   0.2783806   0.4123410
12 months   ki1017093c-NIH-Crypto      1                    NA                0.4259928   0.3676980   0.4842875
12 months   ki1066203-TanzaniaChild2   0                    NA                0.2926829   0.1532704   0.4320955
12 months   ki1066203-TanzaniaChild2   1                    NA                0.3222958   0.2792147   0.3653769
12 months   ki1126311-ZVITAMBO         0                    NA                0.3904762   0.3244803   0.4564721
12 months   ki1126311-ZVITAMBO         1                    NA                0.3753780   0.3556491   0.3951068
18 months   ki1000108-IRC              0                    NA                0.5857143   0.4701766   0.7012519
18 months   ki1000108-IRC              1                    NA                0.5575221   0.5045855   0.6104588
18 months   ki1017093b-PROVIDE         0                    NA                0.4444444   0.2815993   0.6072896
18 months   ki1017093b-PROVIDE         1                    NA                0.4537815   0.3640414   0.5435216
18 months   ki1017093c-NIH-Crypto      0                    NA                0.3809524   0.3116436   0.4502611
18 months   ki1017093c-NIH-Crypto      1                    NA                0.5185185   0.4588546   0.5781824
18 months   ki1066203-TanzaniaChild2   0                    NA                0.3571429   0.1794153   0.5348704
18 months   ki1066203-TanzaniaChild2   1                    NA                0.4333333   0.3797939   0.4868727
18 months   ki1126311-ZVITAMBO         0                    NA                0.5163399   0.4371338   0.5955459
18 months   ki1126311-ZVITAMBO         1                    NA                0.4813499   0.4575147   0.5051851
24 months   ki1000108-IRC              0                    NA                0.6571429   0.5458119   0.7684738
24 months   ki1000108-IRC              1                    NA                0.6382353   0.5870975   0.6893731
24 months   ki1017093b-PROVIDE         0                    NA                0.5000000   0.3313638   0.6686362
24 months   ki1017093b-PROVIDE         1                    NA                0.4824561   0.3904175   0.5744948
24 months   ki1017093c-NIH-Crypto      0                    NA                0.4800000   0.3999434   0.5600566
24 months   ki1017093c-NIH-Crypto      1                    NA                0.5739130   0.5099206   0.6379055
24 months   ki1066203-TanzaniaChild2   0                    NA                0.4736842   0.2487185   0.6986499
24 months   ki1066203-TanzaniaChild2   1                    NA                0.4759825   0.4111674   0.5407976
24 months   ki1126311-ZVITAMBO         0                    NA                0.7441860   0.6136332   0.8747389
24 months   ki1126311-ZVITAMBO         1                    NA                0.7238095   0.6810031   0.7666160


### Parameter: E(Y)


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki1000108-CMC-V-BCS-2002   NA                   NA                0.3453039   0.3448910   0.3457168
3 months    ki1000108-IRC              NA                   NA                0.3170732   0.3140547   0.3200916
3 months    ki1017093b-PROVIDE         NA                   NA                0.2514286   0.2492911   0.2535661
3 months    ki1017093c-NIH-Crypto      NA                   NA                0.1680000   0.1675458   0.1684542
3 months    ki1066203-TanzaniaChild2   NA                   NA                0.0984975   0.0971941   0.0998009
3 months    ki1126311-ZVITAMBO         NA                   NA                0.2091616   0.2091173   0.2092059
6 months    ki1000108-CMC-V-BCS-2002   NA                   NA                0.5122616   0.5120472   0.5124759
6 months    ki1000108-IRC              NA                   NA                0.4240196   0.4206604   0.4273789
6 months    ki1017093b-PROVIDE         NA                   NA                0.2891566   0.2826196   0.2956937
6 months    ki1017093c-NIH-Crypto      NA                   NA                0.3117155   0.3097702   0.3136608
6 months    ki1066203-TanzaniaChild2   NA                   NA                0.1945946   0.1937961   0.1953931
6 months    ki1126311-ZVITAMBO         NA                   NA                0.2967856   0.2966755   0.2968956
12 months   ki1000108-CMC-V-BCS-2002   NA                   NA                0.6989247   0.6964464   0.7014030
12 months   ki1000108-IRC              NA                   NA                0.5073529   0.5051516   0.5095543
12 months   ki1017093b-PROVIDE         NA                   NA                0.3522013   0.3435799   0.3608226
12 months   ki1017093c-NIH-Crypto      NA                   NA                0.3927813   0.3891935   0.3963691
12 months   ki1066203-TanzaniaChild2   NA                   NA                0.3198381   0.3191169   0.3205592
12 months   ki1126311-ZVITAMBO         NA                   NA                0.3766337   0.3764710   0.3767963
18 months   ki1000108-IRC              NA                   NA                0.5623472   0.5613169   0.5633775
18 months   ki1017093b-PROVIDE         NA                   NA                0.4516129   0.4509902   0.4522356
18 months   ki1017093c-NIH-Crypto      NA                   NA                0.4618736   0.4556731   0.4680741
18 months   ki1066203-TanzaniaChild2   NA                   NA                0.4273743   0.4252522   0.4294964
18 months   ki1126311-ZVITAMBO         NA                   NA                0.4842562   0.4838151   0.4846973
24 months   ki1000108-IRC              NA                   NA                0.6414634   0.6407739   0.6421529
24 months   ki1017093b-PROVIDE         NA                   NA                0.4864865   0.4852935   0.4876795
24 months   ki1017093c-NIH-Crypto      NA                   NA                0.5368421   0.5322206   0.5414636
24 months   ki1066203-TanzaniaChild2   NA                   NA                0.4758065   0.4757302   0.4758827
24 months   ki1126311-ZVITAMBO         NA                   NA                0.7257019   0.7251626   0.7262412


### Parameter: RR


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ---------
3 months    ki1000108-CMC-V-BCS-2002   1                    0                 0.9561490   0.5550881   1.646984
3 months    ki1000108-IRC              1                    0                 0.7854031   0.5606198   1.100314
3 months    ki1017093b-PROVIDE         1                    0                 1.1522634   0.6052834   2.193536
3 months    ki1017093c-NIH-Crypto      1                    0                 1.0651106   0.7137487   1.589440
3 months    ki1066203-TanzaniaChild2   1                    0                 0.6034038   0.2911166   1.250689
3 months    ki1126311-ZVITAMBO         1                    0                 1.0233795   0.8086007   1.295207
6 months    ki1000108-CMC-V-BCS-2002   1                    0                 0.9840306   0.6654995   1.455022
6 months    ki1000108-IRC              1                    0                 0.8165680   0.6249485   1.066941
6 months    ki1017093b-PROVIDE         1                    0                 1.4843750   0.7601836   2.898470
6 months    ki1017093c-NIH-Crypto      1                    0                 1.1542553   0.8748088   1.522967
6 months    ki1066203-TanzaniaChild2   1                    0                 0.8438356   0.4754554   1.497635
6 months    ki1126311-ZVITAMBO         1                    0                 1.0334703   0.8189727   1.304147
12 months   ki1000108-CMC-V-BCS-2002   1                    0                 0.8747731   0.7040338   1.086919
12 months   ki1000108-IRC              1                    0                 0.8921256   0.7052406   1.128534
12 months   ki1017093b-PROVIDE         1                    0                 1.5284553   0.8298965   2.815021
12 months   ki1017093c-NIH-Crypto      1                    0                 1.2334716   0.9728473   1.563917
12 months   ki1066203-TanzaniaChild2   1                    0                 1.1011773   0.6714293   1.805985
12 months   ki1126311-ZVITAMBO         1                    0                 0.9613338   0.8053884   1.147475
18 months   ki1000108-IRC              1                    0                 0.9518670   0.7647153   1.184821
18 months   ki1017093b-PROVIDE         1                    0                 1.0210084   0.6732936   1.548296
18 months   ki1017093c-NIH-Crypto      1                    0                 1.3611111   1.0974972   1.688044
18 months   ki1066203-TanzaniaChild2   1                    0                 1.2133333   0.7266037   2.026108
18 months   ki1126311-ZVITAMBO         1                    0                 0.9322346   0.7934507   1.095294
24 months   ki1000108-IRC              1                    0                 0.9712276   0.8052499   1.171417
24 months   ki1017093b-PROVIDE         1                    0                 0.9649123   0.6549442   1.421580
24 months   ki1017093c-NIH-Crypto      1                    0                 1.1956522   0.9783071   1.461284
24 months   ki1066203-TanzaniaChild2   1                    0                 1.0048520   0.6131024   1.646915
24 months   ki1126311-ZVITAMBO         1                    0                 0.9726190   0.8082421   1.170426


### Parameter: PAR


agecat      studyid                    intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  -----------  -----------  ----------
3 months    ki1000108-CMC-V-BCS-2002   0                    NA                -0.0146961   -0.2031136   0.1737213
3 months    ki1000108-IRC              0                    NA                -0.0686411   -0.1828498   0.0455676
3 months    ki1017093b-PROVIDE         0                    NA                 0.0264286   -0.1033681   0.1562252
3 months    ki1017093c-NIH-Crypto      0                    NA                 0.0062353   -0.0443483   0.0568189
3 months    ki1066203-TanzaniaChild2   0                    NA                -0.0570581   -0.1630483   0.0489322
3 months    ki1126311-ZVITAMBO         0                    NA                 0.0043835   -0.0418294   0.0505963
6 months    ki1000108-CMC-V-BCS-2002   0                    NA                -0.0077384   -0.2038454   0.1883686
6 months    ki1000108-IRC              0                    NA                -0.0759804   -0.1933026   0.0413418
6 months    ki1017093b-PROVIDE         0                    NA                 0.0786303   -0.0515480   0.2088086
6 months    ki1017093c-NIH-Crypto      0                    NA                 0.0260012   -0.0373393   0.0893417
6 months    ki1066203-TanzaniaChild2   0                    NA                -0.0326781   -0.1566175   0.0912612
6 months    ki1126311-ZVITAMBO         0                    NA                 0.0088274   -0.0554036   0.0730585
12 months   ki1000108-CMC-V-BCS-2002   0                    NA                -0.0927419   -0.2554571   0.0699732
12 months   ki1000108-IRC              0                    NA                -0.0497899   -0.1663164   0.0667365
12 months   ki1017093b-PROVIDE         0                    NA                 0.1022013   -0.0399555   0.2443581
12 months   ki1017093c-NIH-Crypto      0                    NA                 0.0474205   -0.0196557   0.1144967
12 months   ki1066203-TanzaniaChild2   0                    NA                 0.0271551   -0.1122593   0.1665696
12 months   ki1126311-ZVITAMBO         0                    NA                -0.0138425   -0.0798386   0.0521536
18 months   ki1000108-IRC              0                    NA                -0.0233671   -0.1389093   0.0921751
18 months   ki1017093b-PROVIDE         0                    NA                 0.0071685   -0.1556779   0.1700148
18 months   ki1017093c-NIH-Crypto      0                    NA                 0.0809213    0.0113357   0.1505068
18 months   ki1066203-TanzaniaChild2   0                    NA                 0.0702314   -0.1075088   0.2479716
18 months   ki1126311-ZVITAMBO         0                    NA                -0.0320836   -0.1112909   0.0471236
24 months   ki1000108-IRC              0                    NA                -0.0156794   -0.1270125   0.0956536
24 months   ki1017093b-PROVIDE         0                    NA                -0.0135135   -0.1821539   0.1551269
24 months   ki1017093c-NIH-Crypto      0                    NA                 0.0568421   -0.0233477   0.1370320
24 months   ki1066203-TanzaniaChild2   0                    NA                 0.0021222   -0.2228435   0.2270880
24 months   ki1126311-ZVITAMBO         0                    NA                -0.0184841   -0.1490380   0.1120698


### Parameter: PAF


agecat      studyid                    intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  -----------  -----------  ----------
3 months    ki1000108-CMC-V-BCS-2002   0                    NA                -0.0425600   -0.7595552   0.3822693
3 months    ki1000108-IRC              0                    NA                -0.2164835   -0.6357649   0.0953271
3 months    ki1017093b-PROVIDE         0                    NA                 0.1051136   -0.5932882   0.4973781
3 months    ki1017093c-NIH-Crypto      0                    NA                 0.0371149   -0.3163685   0.2956776
3 months    ki1066203-TanzaniaChild2   0                    NA                -0.5792844   -2.1218148   0.2010611
3 months    ki1126311-ZVITAMBO         0                    NA                 0.0209573   -0.2269027   0.2187444
6 months    ki1000108-CMC-V-BCS-2002   0                    NA                -0.0151064   -0.4801187   0.3038119
6 months    ki1000108-IRC              0                    NA                -0.1791908   -0.4910943   0.0674696
6 months    ki1017093b-PROVIDE         0                    NA                 0.2719298   -0.3506996   0.6075470
6 months    ki1017093c-NIH-Crypto      0                    NA                 0.0834132   -0.1440523   0.2656531
6 months    ki1066203-TanzaniaChild2   0                    NA                -0.1679293   -1.0148999   0.3230141
6 months    ki1126311-ZVITAMBO         0                    NA                 0.0297435   -0.2127156   0.2237276
12 months   ki1000108-CMC-V-BCS-2002   0                    NA                -0.1326923   -0.3911615   0.0777549
12 months   ki1000108-IRC              0                    NA                -0.0981366   -0.3536065   0.1091177
12 months   ki1017093b-PROVIDE         0                    NA                 0.2901786   -0.2527815   0.5978178
12 months   ki1017093c-NIH-Crypto      0                    NA                 0.1207300   -0.0676867   0.2758964
12 months   ki1066203-TanzaniaChild2   0                    NA                 0.0849027   -0.4734502   0.4316720
12 months   ki1126311-ZVITAMBO         0                    NA                -0.0367533   -0.2276582   0.1244653
18 months   ki1000108-IRC              0                    NA                -0.0415528   -0.2686846   0.1449157
18 months   ki1017093b-PROVIDE         0                    NA                 0.0158730   -0.4196407   0.3177810
18 months   ki1017093c-NIH-Crypto      0                    NA                 0.1752022    0.0101351   0.3127431
18 months   ki1066203-TanzaniaChild2   0                    NA                 0.1643324   -0.3745653   0.4919555
18 months   ki1126311-ZVITAMBO         0                    NA                -0.0662534   -0.2430310   0.0853838
24 months   ki1000108-IRC              0                    NA                -0.0244432   -0.2135735   0.1352119
24 months   ki1017093b-PROVIDE         0                    NA                -0.0277778   -0.4400536   0.2664668
24 months   ki1017093c-NIH-Crypto      0                    NA                 0.1058824   -0.0566342   0.2434029
24 months   ki1066203-TanzaniaChild2   0                    NA                 0.0044603   -0.6007261   0.3808439
24 months   ki1126311-ZVITAMBO         0                    NA                -0.0254707   -0.2221158   0.1395332


