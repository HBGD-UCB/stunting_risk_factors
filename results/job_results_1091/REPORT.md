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

**Intervention Variable:** nchldlt5

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        A        n     nA   nAY0   nAY1
----------  -------------------------  -----------------------------  ---  -----  -----  -----  -----
3 months    ki1000108-IRC              INDIA                          1      410     89     56     33
3 months    ki1000108-IRC              INDIA                          2      410    119     85     34
3 months    ki1000108-IRC              INDIA                          3+     410    202    139     63
3 months    ki1017093b-PROVIDE         BANGLADESH                     1      700    512    411    101
3 months    ki1017093b-PROVIDE         BANGLADESH                     2      700    176    147     29
3 months    ki1017093b-PROVIDE         BANGLADESH                     3+     700     12     12      0
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     1      758    541    455     86
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     2      758    211    176     35
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     3+     758      6      6      0
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1     2382   1634   1455    179
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2     2382    669    610     59
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+    2382     79     74      5
6 months    ki1000108-IRC              INDIA                          1      408     89     49     40
6 months    ki1000108-IRC              INDIA                          2      408    119     69     50
6 months    ki1000108-IRC              INDIA                          3+     408    200    117     83
6 months    ki1017093b-PROVIDE         BANGLADESH                     1      640    469    345    124
6 months    ki1017093b-PROVIDE         BANGLADESH                     2      640    161    124     37
6 months    ki1017093b-PROVIDE         BANGLADESH                     3+     640     10      8      2
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1      736    523    371    152
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2      736    207    133     74
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     3+     736      6      6      0
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1     2225   1521   1209    312
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2     2225    634    513    121
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+    2225     70     58     12
6 months    ki1148112-LCNI-5           MALAWI                         1      267    122     81     41
6 months    ki1148112-LCNI-5           MALAWI                         2      267    122     78     44
6 months    ki1148112-LCNI-5           MALAWI                         3+     267     23     13     10
12 months   ki1000108-IRC              INDIA                          1      408     89     43     46
12 months   ki1000108-IRC              INDIA                          2      408    119     55     64
12 months   ki1000108-IRC              INDIA                          3+     408    200    103     97
12 months   ki1017093b-PROVIDE         BANGLADESH                     1      609    443    296    147
12 months   ki1017093b-PROVIDE         BANGLADESH                     2      609    156    104     52
12 months   ki1017093b-PROVIDE         BANGLADESH                     3+     609     10      7      3
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     1      729    519    332    187
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     2      729    205    115     90
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     3+     729      5      5      0
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1     1988   1369    943    426
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2     1988    555    371    184
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+    1988     64     43     21
12 months   ki1148112-LCNI-5           MALAWI                         1      789    378    209    169
12 months   ki1148112-LCNI-5           MALAWI                         2      789    350    180    170
12 months   ki1148112-LCNI-5           MALAWI                         3+     789     61     30     31
18 months   ki1000108-IRC              INDIA                          1      409     89     41     48
18 months   ki1000108-IRC              INDIA                          2      409    119     50     69
18 months   ki1000108-IRC              INDIA                          3+     409    201     88    113
18 months   ki1017093b-PROVIDE         BANGLADESH                     1      604    441    262    179
18 months   ki1017093b-PROVIDE         BANGLADESH                     2      604    154     83     71
18 months   ki1017093b-PROVIDE         BANGLADESH                     3+     604      9      7      2
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     1      715    508    296    212
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     2      715    202     98    104
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     3+     715      5      4      1
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1     1448   1021    614    407
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2     1448    385    223    162
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+    1448     42     24     18
18 months   ki1148112-LCNI-5           MALAWI                         1      668    324    154    170
18 months   ki1148112-LCNI-5           MALAWI                         2      668    286    120    166
18 months   ki1148112-LCNI-5           MALAWI                         3+     668     58     25     33
24 months   ki1000108-IRC              INDIA                          1      410     89     35     54
24 months   ki1000108-IRC              INDIA                          2      410    119     42     77
24 months   ki1000108-IRC              INDIA                          3+     410    202     70    132
24 months   ki1017093b-PROVIDE         BANGLADESH                     1      582    423    224    199
24 months   ki1017093b-PROVIDE         BANGLADESH                     2      582    151     72     79
24 months   ki1017093b-PROVIDE         BANGLADESH                     3+     582      8      6      2
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1      634    448    237    211
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2      634    182     77    105
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3+     634      4      2      2
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1      958    682    396    286
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2      958    250    133    117
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+     958     26     13     13
24 months   ki1148112-LCNI-5           MALAWI                         1      715    345    123    222
24 months   ki1148112-LCNI-5           MALAWI                         2      715    313    107    206
24 months   ki1148112-LCNI-5           MALAWI                         3+     715     57     20     37


The following strata were considered:

* agecat: 12 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 18 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 18 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 18 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 18 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 3 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 18 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 18 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/699b20ad-ab7e-419c-943d-8010b31a4530/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->


```
## Warning: Removed 14 rows containing missing values (geom_errorbar).
```

![](/tmp/699b20ad-ab7e-419c-943d-8010b31a4530/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/699b20ad-ab7e-419c-943d-8010b31a4530/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/699b20ad-ab7e-419c-943d-8010b31a4530/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki1000108-IRC              INDIA                          1                    NA                0.3707865   0.2703147   0.4712584
3 months    ki1000108-IRC              INDIA                          2                    NA                0.2857143   0.2044487   0.3669799
3 months    ki1000108-IRC              INDIA                          3+                   NA                0.3118812   0.2479182   0.3758442
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1095471   0.0944004   0.1246939
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.0881913   0.0666986   0.1096840
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.0632911   0.0095880   0.1169943
6 months    ki1000108-IRC              INDIA                          1                    NA                0.4494382   0.3459659   0.5529105
6 months    ki1000108-IRC              INDIA                          2                    NA                0.4201681   0.3313768   0.5089593
6 months    ki1000108-IRC              INDIA                          3+                   NA                0.4150000   0.3466296   0.4833704
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2051282   0.1848307   0.2254257
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.1908517   0.1602558   0.2214476
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.1714286   0.0831199   0.2597372
6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                0.3360656   0.2520891   0.4200420
6 months    ki1148112-LCNI-5           MALAWI                         2                    NA                0.3606557   0.2752874   0.4460241
6 months    ki1148112-LCNI-5           MALAWI                         3+                   NA                0.4347826   0.2318075   0.6377577
12 months   ki1000108-IRC              INDIA                          1                    NA                0.5168539   0.4129076   0.6208002
12 months   ki1000108-IRC              INDIA                          2                    NA                0.5378151   0.4481276   0.6275026
12 months   ki1000108-IRC              INDIA                          3+                   NA                0.4850000   0.4156510   0.5543490
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.3111760   0.2866452   0.3357069
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.3315315   0.2923561   0.3707070
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.3281250   0.2130632   0.4431868
12 months   ki1148112-LCNI-5           MALAWI                         1                    NA                0.4470899   0.3969363   0.4972436
12 months   ki1148112-LCNI-5           MALAWI                         2                    NA                0.4857143   0.4333202   0.5381084
12 months   ki1148112-LCNI-5           MALAWI                         3+                   NA                0.5081967   0.3826602   0.6337333
18 months   ki1000108-IRC              INDIA                          1                    NA                0.5393258   0.4356429   0.6430088
18 months   ki1000108-IRC              INDIA                          2                    NA                0.5798319   0.4910410   0.6686229
18 months   ki1000108-IRC              INDIA                          3+                   NA                0.5621891   0.4935192   0.6308589
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.3986288   0.3685860   0.4286716
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.4207792   0.3714486   0.4701099
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.4285714   0.2788562   0.5782867
18 months   ki1148112-LCNI-5           MALAWI                         1                    NA                0.5246914   0.4702736   0.5791091
18 months   ki1148112-LCNI-5           MALAWI                         2                    NA                0.5804196   0.5231836   0.6376555
18 months   ki1148112-LCNI-5           MALAWI                         3+                   NA                0.5689655   0.4414220   0.6965090
24 months   ki1000108-IRC              INDIA                          1                    NA                0.6067416   0.5051344   0.7083487
24 months   ki1000108-IRC              INDIA                          2                    NA                0.6470588   0.5610926   0.7330251
24 months   ki1000108-IRC              INDIA                          3+                   NA                0.6534653   0.5877620   0.7191687
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.4193548   0.3823014   0.4564083
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.4680000   0.4061153   0.5298847
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.5000000   0.3077093   0.6922907
24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                0.6434783   0.5929013   0.6940552
24 months   ki1148112-LCNI-5           MALAWI                         2                    NA                0.6581470   0.6055621   0.7107319
24 months   ki1148112-LCNI-5           MALAWI                         3+                   NA                0.6491228   0.5251417   0.7731039


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki1000108-IRC              INDIA                          NA                   NA                0.3170732   0.3141257   0.3200207
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1020151   0.1015359   0.1024943
6 months    ki1000108-IRC              INDIA                          NA                   NA                0.4240196   0.4226977   0.4253415
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2000000   0.1996585   0.2003415
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                0.3558052   0.3525670   0.3590435
12 months   ki1000108-IRC              INDIA                          NA                   NA                0.5073529   0.5051052   0.5096006
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3174044   0.3169964   0.3178125
12 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.4689480   0.4674300   0.4704660
18 months   ki1000108-IRC              INDIA                          NA                   NA                0.5623472   0.5609603   0.5637341
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4053867   0.4048444   0.4059291
18 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.5523952   0.5503415   0.5544489
24 months   ki1000108-IRC              INDIA                          NA                   NA                0.6414634   0.6396718   0.6432550
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4342380   0.4327220   0.4357540
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.6503497   0.6498335   0.6508658


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
3 months    ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.000000
3 months    ki1000108-IRC              INDIA                          2                    1                 0.7705628   0.5202343   1.141345
3 months    ki1000108-IRC              INDIA                          3+                   1                 0.8411341   0.5987952   1.181550
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.000000
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.8050538   0.6083271   1.065400
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 0.5777526   0.2445561   1.364914
6 months    ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1000108-IRC              INDIA                          2                    1                 0.9348739   0.6839628   1.277832
6 months    ki1000108-IRC              INDIA                          3+                   1                 0.9233750   0.6957115   1.225539
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.9304022   0.7706435   1.123280
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 0.8357143   0.4945932   1.412107
6 months    ki1148112-LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1148112-LCNI-5           MALAWI                         2                    1                 1.0731707   0.7606548   1.514084
6 months    ki1148112-LCNI-5           MALAWI                         3+                   1                 1.2937434   0.7618756   2.196910
12 months   ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.000000
12 months   ki1000108-IRC              INDIA                          2                    1                 1.0405554   0.8013121   1.351228
12 months   ki1000108-IRC              INDIA                          3+                   1                 0.9383696   0.7331722   1.200997
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.000000
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.0654147   0.9243323   1.228031
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 1.0544674   0.7361063   1.510518
12 months   ki1148112-LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.000000
12 months   ki1148112-LCNI-5           MALAWI                         2                    1                 1.0863905   0.9298179   1.269329
12 months   ki1148112-LCNI-5           MALAWI                         3+                   1                 1.1366767   0.8665871   1.490945
18 months   ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.000000
18 months   ki1000108-IRC              INDIA                          2                    1                 1.0751050   0.8408335   1.374649
18 months   ki1000108-IRC              INDIA                          3+                   1                 1.0423922   0.8300663   1.309030
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.000000
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.0555665   0.9182427   1.213427
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 1.0751141   0.7520549   1.536949
18 months   ki1148112-LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.000000
18 months   ki1148112-LCNI-5           MALAWI                         2                    1                 1.1062114   0.9587068   1.276411
18 months   ki1148112-LCNI-5           MALAWI                         3+                   1                 1.0843813   0.8470568   1.388198
24 months   ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1000108-IRC              INDIA                          2                    1                 1.0664488   0.8611990   1.320616
24 months   ki1000108-IRC              INDIA                          3+                   1                 1.0770077   0.8859074   1.309330
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.1160000   0.9519093   1.308377
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 1.1923077   0.8035544   1.769137
24 months   ki1148112-LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1148112-LCNI-5           MALAWI                         2                    1                 1.0227960   0.9143530   1.144100
24 months   ki1148112-LCNI-5           MALAWI                         3+                   1                 1.0087719   0.8205302   1.240199


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
3 months    ki1000108-IRC              INDIA                          1                    NA                -0.0537133   -0.1542284   0.0468017
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0075320   -0.0226863   0.0076223
6 months    ki1000108-IRC              INDIA                          1                    NA                -0.0254186   -0.1288993   0.0780621
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0051282   -0.0254286   0.0151722
6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0197397   -0.0642992   0.1037785
12 months   ki1000108-IRC              INDIA                          1                    NA                -0.0095010   -0.1134716   0.0944696
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0062284   -0.0183059   0.0307626
12 months   ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0218581   -0.0283185   0.0720347
18 months   ki1000108-IRC              INDIA                          1                    NA                 0.0230213   -0.0806708   0.1267135
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0067579   -0.0232898   0.0368057
18 months   ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0277039   -0.0267527   0.0821604
24 months   ki1000108-IRC              INDIA                          1                    NA                 0.0347218   -0.0669011   0.1363448
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0148832   -0.0222013   0.0519676
24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0068714   -0.0437082   0.0574509


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
3 months    ki1000108-IRC              INDIA                          1                    NA                -0.1694036   -0.5336075   0.1083085
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0738323   -0.2331606   0.0649103
6 months    ki1000108-IRC              INDIA                          1                    NA                -0.0599467   -0.3343784   0.1580446
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0256410   -0.1323361   0.0710006
6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0554789   -0.2128460   0.2644407
12 months   ki1000108-IRC              INDIA                          1                    NA                -0.0187266   -0.2457225   0.1669061
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0196229   -0.0608021   0.0939504
12 months   ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0466109   -0.0666175   0.1478194
18 months   ki1000108-IRC              INDIA                          1                    NA                 0.0409380   -0.1623708   0.2086862
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0166704   -0.0603154   0.0880665
18 months   ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0501522   -0.0537202   0.1437852
24 months   ki1000108-IRC              INDIA                          1                    NA                 0.0541291   -0.1183314   0.1999941
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0342742   -0.0550117   0.1160038
24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0105657   -0.0703454   0.0853604
