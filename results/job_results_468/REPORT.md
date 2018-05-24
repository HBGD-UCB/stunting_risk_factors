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

**Outcome Variable:** stunted

## Predictor Variables

**Intervention Variable:** fage

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid


The following strata were considered:

* agecat: 12 months, studyid: ki0047075b-MAL-ED
* agecat: 12 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 12 months, studyid: ki1135781-COHORTS
* agecat: 12 months, studyid: ki1148112-LCNI-5
* agecat: 18 months, studyid: ki0047075b-MAL-ED
* agecat: 18 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 18 months, studyid: ki1135781-COHORTS
* agecat: 18 months, studyid: ki1148112-LCNI-5
* agecat: 24 months, studyid: ki0047075b-MAL-ED
* agecat: 24 months, studyid: ki1135781-COHORTS
* agecat: 24 months, studyid: ki1148112-LCNI-5
* agecat: 3 months, studyid: ki0047075b-MAL-ED
* agecat: 3 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 3 months, studyid: ki1135781-COHORTS
* agecat: 6 months, studyid: ki0047075b-MAL-ED
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 6 months, studyid: ki1135781-COHORTS
* agecat: 6 months, studyid: ki1148112-LCNI-5
* agecat: 9 months, studyid: ki0047075b-MAL-ED
* agecat: 9 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 9 months, studyid: ki1135781-COHORTS
* agecat: 9 months, studyid: ki1148112-LCNI-5
* agecat: Birth, studyid: ki0047075b-MAL-ED
* agecat: Birth, studyid: ki1135781-COHORTS

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 12 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 12 months, studyid: ki1148112-LCNI-5
* agecat: 18 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 18 months, studyid: ki1148112-LCNI-5
* agecat: 24 months, studyid: ki1148112-LCNI-5
* agecat: 3 months, studyid: ki0047075b-MAL-ED
* agecat: 6 months, studyid: ki1148112-LCNI-5
* agecat: 9 months, studyid: ki0047075b-MAL-ED
* agecat: 9 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 9 months, studyid: ki1148112-LCNI-5
* agecat: Birth, studyid: ki0047075b-MAL-ED

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness




# Results Detail

## Results Plots
![](/tmp/d78d5ba4-1d7f-4acc-98fe-668afc625d30/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/d78d5ba4-1d7f-4acc-98fe-668afc625d30/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/d78d5ba4-1d7f-4acc-98fe-668afc625d30/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/d78d5ba4-1d7f-4acc-98fe-668afc625d30/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Data Summary

agecat      studyid                    A             n    nA   nAY0   nAY1
----------  -------------------------  --------  -----  ----  -----  -----
12 months   ki0047075b-MAL-ED          (24-28]     739    62     40     22
12 months   ki0047075b-MAL-ED          (28-32]     739   141     95     46
12 months   ki0047075b-MAL-ED          <=24        739    14      6      8
12 months   ki0047075b-MAL-ED          >32         739   522    378    144
12 months   ki1000304b-SAS-FoodSuppl   (24-28]      92    25      5     20
12 months   ki1000304b-SAS-FoodSuppl   (28-32]      92    22      4     18
12 months   ki1000304b-SAS-FoodSuppl   <=24         92    17      4     13
12 months   ki1000304b-SAS-FoodSuppl   >32          92    28      6     22
12 months   ki1135781-COHORTS          (24-28]    3016   740    452    288
12 months   ki1135781-COHORTS          (28-32]    3016   626    350    276
12 months   ki1135781-COHORTS          <=24       3016   757    450    307
12 months   ki1135781-COHORTS          >32        3016   893    431    462
12 months   ki1148112-LCNI-5           (24-28]      38     9      5      4
12 months   ki1148112-LCNI-5           (28-32]      38     8      6      2
12 months   ki1148112-LCNI-5           <=24         38     6      4      2
12 months   ki1148112-LCNI-5           >32          38    15     10      5
18 months   ki0047075b-MAL-ED          (24-28]     738    61     31     30
18 months   ki0047075b-MAL-ED          (28-32]     738   141     77     64
18 months   ki0047075b-MAL-ED          <=24        738    14      8      6
18 months   ki0047075b-MAL-ED          >32         738   522    317    205
18 months   ki1000304b-SAS-FoodSuppl   (24-28]      84    24      2     22
18 months   ki1000304b-SAS-FoodSuppl   (28-32]      84    22      3     19
18 months   ki1000304b-SAS-FoodSuppl   <=24         84    16      2     14
18 months   ki1000304b-SAS-FoodSuppl   >32          84    22      3     19
18 months   ki1135781-COHORTS          (24-28]    2833   704    288    416
18 months   ki1135781-COHORTS          (28-32]    2833   592    213    379
18 months   ki1135781-COHORTS          <=24       2833   718    283    435
18 months   ki1135781-COHORTS          >32        2833   819    271    548
18 months   ki1148112-LCNI-5           (24-28]      43    10      7      3
18 months   ki1148112-LCNI-5           (28-32]      43    10      6      4
18 months   ki1148112-LCNI-5           <=24         43     6      3      3
18 months   ki1148112-LCNI-5           >32          43    17     10      7
24 months   ki0047075b-MAL-ED          (24-28]     738    61     39     22
24 months   ki0047075b-MAL-ED          (28-32]     738   142     86     56
24 months   ki0047075b-MAL-ED          <=24        738    14      7      7
24 months   ki0047075b-MAL-ED          >32         738   521    321    200
24 months   ki1000304b-SAS-FoodSuppl   (24-28]       0     0      0      0
24 months   ki1000304b-SAS-FoodSuppl   (28-32]       0     0      0      0
24 months   ki1000304b-SAS-FoodSuppl   <=24          0     0      0      0
24 months   ki1000304b-SAS-FoodSuppl   >32           0     0      0      0
24 months   ki1135781-COHORTS          (24-28]    2866   700    261    439
24 months   ki1135781-COHORTS          (28-32]    2866   586    208    378
24 months   ki1135781-COHORTS          <=24       2866   730    242    488
24 months   ki1135781-COHORTS          >32        2866   850    270    580
24 months   ki1148112-LCNI-5           (24-28]      34     8      6      2
24 months   ki1148112-LCNI-5           (28-32]      34     8      6      2
24 months   ki1148112-LCNI-5           <=24         34     5      3      2
24 months   ki1148112-LCNI-5           >32          34    13      8      5
3 months    ki0047075b-MAL-ED          (24-28]     744    63     49     14
3 months    ki0047075b-MAL-ED          (28-32]     744   143    120     23
3 months    ki0047075b-MAL-ED          <=24        744    14     11      3
3 months    ki0047075b-MAL-ED          >32         744   524    461     63
3 months    ki1000304b-SAS-FoodSuppl   (24-28]      97    27     18      9
3 months    ki1000304b-SAS-FoodSuppl   (28-32]      97    24     12     12
3 months    ki1000304b-SAS-FoodSuppl   <=24         97    17      9      8
3 months    ki1000304b-SAS-FoodSuppl   >32          97    29     20      9
3 months    ki1135781-COHORTS          (24-28]    3240   795    700     95
3 months    ki1135781-COHORTS          (28-32]    3240   678    583     95
3 months    ki1135781-COHORTS          <=24       3240   820    698    122
3 months    ki1135781-COHORTS          >32        3240   947    769    178
3 months    ki1148112-LCNI-5           (24-28]       0     0      0      0
3 months    ki1148112-LCNI-5           (28-32]       0     0      0      0
3 months    ki1148112-LCNI-5           <=24          0     0      0      0
3 months    ki1148112-LCNI-5           >32           0     0      0      0
6 months    ki0047075b-MAL-ED          (24-28]     741    62     50     12
6 months    ki0047075b-MAL-ED          (28-32]     741   143    117     26
6 months    ki0047075b-MAL-ED          <=24        741    14      8      6
6 months    ki0047075b-MAL-ED          >32         741   522    444     78
6 months    ki1000304b-SAS-FoodSuppl   (24-28]      96    24     12     12
6 months    ki1000304b-SAS-FoodSuppl   (28-32]      96    26     11     15
6 months    ki1000304b-SAS-FoodSuppl   <=24         96    18      8     10
6 months    ki1000304b-SAS-FoodSuppl   >32          96    28     17     11
6 months    ki1135781-COHORTS          (24-28]    3069   742    591    151
6 months    ki1135781-COHORTS          (28-32]    3069   641    494    147
6 months    ki1135781-COHORTS          <=24       3069   781    587    194
6 months    ki1135781-COHORTS          >32        3069   905    640    265
6 months    ki1148112-LCNI-5           (24-28]      47    11      9      2
6 months    ki1148112-LCNI-5           (28-32]      47    10      6      4
6 months    ki1148112-LCNI-5           <=24         47     7      3      4
6 months    ki1148112-LCNI-5           >32          47    19     13      6
9 months    ki0047075b-MAL-ED          (24-28]     738    62     40     22
9 months    ki0047075b-MAL-ED          (28-32]     738   142    111     31
9 months    ki0047075b-MAL-ED          <=24        738    14     10      4
9 months    ki0047075b-MAL-ED          >32         738   520    406    114
9 months    ki1000304b-SAS-FoodSuppl   (24-28]      85    23      8     15
9 months    ki1000304b-SAS-FoodSuppl   (28-32]      85    19      4     15
9 months    ki1000304b-SAS-FoodSuppl   <=24         85    18      7     11
9 months    ki1000304b-SAS-FoodSuppl   >32          85    25      9     16
9 months    ki1135781-COHORTS          (24-28]    3063   751    541    210
9 months    ki1135781-COHORTS          (28-32]    3063   638    435    203
9 months    ki1135781-COHORTS          <=24       3063   782    544    238
9 months    ki1135781-COHORTS          >32        3063   892    547    345
9 months    ki1148112-LCNI-5           (24-28]      37     7      5      2
9 months    ki1148112-LCNI-5           (28-32]      37     8      5      3
9 months    ki1148112-LCNI-5           <=24         37     6      4      2
9 months    ki1148112-LCNI-5           >32          37    16     13      3
Birth       ki0047075b-MAL-ED          (24-28]     607    54     47      7
Birth       ki0047075b-MAL-ED          (28-32]     607   111     94     17
Birth       ki0047075b-MAL-ED          <=24        607    11     10      1
Birth       ki0047075b-MAL-ED          >32         607   431    380     51
Birth       ki1000304b-SAS-FoodSuppl   (24-28]       0     0      0      0
Birth       ki1000304b-SAS-FoodSuppl   (28-32]       0     0      0      0
Birth       ki1000304b-SAS-FoodSuppl   <=24          0     0      0      0
Birth       ki1000304b-SAS-FoodSuppl   >32           0     0      0      0
Birth       ki1135781-COHORTS          (24-28]    3334   829    790     39
Birth       ki1135781-COHORTS          (28-32]    3334   700    659     41
Birth       ki1135781-COHORTS          <=24       3334   869    809     60
Birth       ki1135781-COHORTS          >32        3334   936    877     59
Birth       ki1148112-LCNI-5           (24-28]       0     0      0      0
Birth       ki1148112-LCNI-5           (28-32]       0     0      0      0
Birth       ki1148112-LCNI-5           <=24          0     0      0      0
Birth       ki1148112-LCNI-5           >32           0     0      0      0

## Results Table

### Parameter: TSM


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
12 months   ki0047075b-MAL-ED          (24-28]              NA                0.3548387   0.2356608   0.4740167
12 months   ki0047075b-MAL-ED          (28-32]              NA                0.3262411   0.2488031   0.4036791
12 months   ki0047075b-MAL-ED          <=24                 NA                0.5714286   0.3120281   0.8308290
12 months   ki0047075b-MAL-ED          >32                  NA                0.2758621   0.2374946   0.3142296
12 months   ki1135781-COHORTS          (24-28]              NA                0.3891892   0.3540543   0.4243240
12 months   ki1135781-COHORTS          (28-32]              NA                0.4408946   0.4019948   0.4797944
12 months   ki1135781-COHORTS          <=24                 NA                0.4055482   0.3705656   0.4405308
12 months   ki1135781-COHORTS          >32                  NA                0.5173572   0.4845777   0.5501367
18 months   ki0047075b-MAL-ED          (24-28]              NA                0.4918033   0.3662612   0.6173453
18 months   ki0047075b-MAL-ED          (28-32]              NA                0.4539007   0.3716671   0.5361343
18 months   ki0047075b-MAL-ED          <=24                 NA                0.4285714   0.1691708   0.6879721
18 months   ki0047075b-MAL-ED          >32                  NA                0.3927203   0.3507982   0.4346424
18 months   ki1135781-COHORTS          (24-28]              NA                0.5909091   0.5545838   0.6272343
18 months   ki1135781-COHORTS          (28-32]              NA                0.6402027   0.6015347   0.6788707
18 months   ki1135781-COHORTS          <=24                 NA                0.6058496   0.5700996   0.6415996
18 months   ki1135781-COHORTS          >32                  NA                0.6691087   0.6368777   0.7013397
24 months   ki0047075b-MAL-ED          (24-28]              NA                0.3606557   0.2400713   0.4812402
24 months   ki0047075b-MAL-ED          (28-32]              NA                0.3943662   0.3139297   0.4748027
24 months   ki0047075b-MAL-ED          <=24                 NA                0.5000000   0.2379112   0.7620888
24 months   ki0047075b-MAL-ED          >32                  NA                0.3838772   0.3420890   0.4256653
24 months   ki1135781-COHORTS          (24-28]              NA                0.6271429   0.5913143   0.6629714
24 months   ki1135781-COHORTS          (28-32]              NA                0.6450512   0.6063027   0.6837997
24 months   ki1135781-COHORTS          <=24                 NA                0.6684932   0.6343379   0.7026484
24 months   ki1135781-COHORTS          >32                  NA                0.6823529   0.6510496   0.7136563
3 months    ki1000304b-SAS-FoodSuppl   (24-28]              NA                0.3333333   0.1545981   0.5120686
3 months    ki1000304b-SAS-FoodSuppl   (28-32]              NA                0.5000000   0.2989228   0.7010772
3 months    ki1000304b-SAS-FoodSuppl   <=24                 NA                0.4705882   0.2320867   0.7090898
3 months    ki1000304b-SAS-FoodSuppl   >32                  NA                0.3103448   0.1410914   0.4795983
3 months    ki1135781-COHORTS          (24-28]              NA                0.1194969   0.0969454   0.1420483
3 months    ki1135781-COHORTS          (28-32]              NA                0.1401180   0.1139864   0.1662496
3 months    ki1135781-COHORTS          <=24                 NA                0.1487805   0.1244191   0.1731419
3 months    ki1135781-COHORTS          >32                  NA                0.1879620   0.1630755   0.2128485
6 months    ki0047075b-MAL-ED          (24-28]              NA                0.1935484   0.0951406   0.2919562
6 months    ki0047075b-MAL-ED          (28-32]              NA                0.1818182   0.1185600   0.2450764
6 months    ki0047075b-MAL-ED          <=24                 NA                0.4285714   0.1691715   0.6879714
6 months    ki0047075b-MAL-ED          >32                  NA                0.1494253   0.1188216   0.1800290
6 months    ki1000304b-SAS-FoodSuppl   (24-28]              NA                0.5000000   0.2989119   0.7010881
6 months    ki1000304b-SAS-FoodSuppl   (28-32]              NA                0.5769231   0.3860240   0.7678222
6 months    ki1000304b-SAS-FoodSuppl   <=24                 NA                0.5555556   0.3247968   0.7863143
6 months    ki1000304b-SAS-FoodSuppl   >32                  NA                0.3928571   0.2110103   0.5747039
6 months    ki1135781-COHORTS          (24-28]              NA                0.2035040   0.1745309   0.2324772
6 months    ki1135781-COHORTS          (28-32]              NA                0.2293292   0.1967790   0.2618794
6 months    ki1135781-COHORTS          <=24                 NA                0.2483995   0.2180911   0.2787078
6 months    ki1135781-COHORTS          >32                  NA                0.2928177   0.2631653   0.3224700
9 months    ki1135781-COHORTS          (24-28]              NA                0.2796272   0.2475226   0.3117318
9 months    ki1135781-COHORTS          (28-32]              NA                0.3181818   0.2820341   0.3543295
9 months    ki1135781-COHORTS          <=24                 NA                0.3043478   0.2720928   0.3366028
9 months    ki1135781-COHORTS          >32                  NA                0.3867713   0.3548063   0.4187363
Birth       ki1135781-COHORTS          (24-28]              NA                0.0470446   0.0326292   0.0614601
Birth       ki1135781-COHORTS          (28-32]              NA                0.0585714   0.0411734   0.0759695
Birth       ki1135781-COHORTS          <=24                 NA                0.0690449   0.0521858   0.0859039
Birth       ki1135781-COHORTS          >32                  NA                0.0630342   0.0474629   0.0786055


### Parameter: E(Y)


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
12 months   ki0047075b-MAL-ED          NA                   NA                0.2976996   0.2943266   0.3010726
12 months   ki1135781-COHORTS          NA                   NA                0.4419761   0.4401216   0.4438307
18 months   ki0047075b-MAL-ED          NA                   NA                0.4132791   0.4108540   0.4157042
18 months   ki1135781-COHORTS          NA                   NA                0.6276032   0.6264469   0.6287596
24 months   ki0047075b-MAL-ED          NA                   NA                0.3861789   0.3848950   0.3874627
24 months   ki1135781-COHORTS          NA                   NA                0.6577111   0.6569167   0.6585055
3 months    ki1000304b-SAS-FoodSuppl   NA                   NA                0.3917526   0.3751125   0.4083927
3 months    ki1135781-COHORTS          NA                   NA                0.1512346   0.1503439   0.1521252
6 months    ki0047075b-MAL-ED          NA                   NA                0.1646424   0.1617549   0.1675298
6 months    ki1000304b-SAS-FoodSuppl   NA                   NA                0.5000000   0.4850470   0.5149530
6 months    ki1135781-COHORTS          NA                   NA                0.2466601   0.2454643   0.2478560
9 months    ki1135781-COHORTS          NA                   NA                0.3251714   0.3236963   0.3266465
Birth       ki1135781-COHORTS          NA                   NA                0.0596881   0.0594123   0.0599638


### Parameter: RR


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ---------
12 months   ki0047075b-MAL-ED          (28-32]              (24-28]           0.9194068   0.6093870   1.387146
12 months   ki0047075b-MAL-ED          <=24                 (24-28]           1.6103896   0.9155635   2.832523
12 months   ki0047075b-MAL-ED          >32                  (24-28]           0.7774295   0.5404864   1.118246
12 months   ki1135781-COHORTS          (28-32]              (24-28]           1.1328541   0.9985100   1.285273
12 months   ki1135781-COHORTS          <=24                 (24-28]           1.0420336   0.9197176   1.180617
12 months   ki1135781-COHORTS          >32                  (24-28]           1.3293206   1.1905029   1.484325
18 months   ki0047075b-MAL-ED          (28-32]              (24-28]           0.9229314   0.6748762   1.262161
18 months   ki0047075b-MAL-ED          <=24                 (24-28]           0.8714286   0.4517994   1.680807
18 months   ki0047075b-MAL-ED          >32                  (24-28]           0.7985313   0.6055179   1.053069
18 months   ki1135781-COHORTS          (28-32]              (24-28]           1.0834200   0.9939603   1.180931
18 months   ki1135781-COHORTS          <=24                 (24-28]           1.0252839   0.9415370   1.116480
18 months   ki1135781-COHORTS          >32                  (24-28]           1.1323377   1.0472692   1.224316
24 months   ki0047075b-MAL-ED          (28-32]              (24-28]           1.0934699   0.7391207   1.617701
24 months   ki0047075b-MAL-ED          <=24                 (24-28]           1.3863636   0.7444960   2.581618
24 months   ki0047075b-MAL-ED          >32                  (24-28]           1.0643867   0.7488444   1.512890
24 months   ki1135781-COHORTS          (28-32]              (24-28]           1.0285554   0.9467276   1.117456
24 months   ki1135781-COHORTS          <=24                 (24-28]           1.0659344   0.9872893   1.150844
24 months   ki1135781-COHORTS          >32                  (24-28]           1.0880343   1.0111652   1.170747
3 months    ki1000304b-SAS-FoodSuppl   (28-32]              (24-28]           1.5000000   0.7673655   2.932110
3 months    ki1000304b-SAS-FoodSuppl   <=24                 (24-28]           1.4117647   0.6750424   2.952525
3 months    ki1000304b-SAS-FoodSuppl   >32                  (24-28]           0.9310345   0.4333205   2.000425
3 months    ki1135781-COHORTS          (28-32]              (24-28]           1.1725664   0.8993088   1.528854
3 months    ki1135781-COHORTS          <=24                 (24-28]           1.2450578   0.9697949   1.598450
3 months    ki1135781-COHORTS          >32                  (24-28]           1.5729450   1.2490915   1.980765
6 months    ki0047075b-MAL-ED          (28-32]              (24-28]           0.9393939   0.5073244   1.739441
6 months    ki0047075b-MAL-ED          <=24                 (24-28]           2.2142857   1.0044595   4.881293
6 months    ki0047075b-MAL-ED          >32                  (24-28]           0.7720307   0.4462518   1.335639
6 months    ki1000304b-SAS-FoodSuppl   (28-32]              (24-28]           1.1538462   0.6854351   1.942359
6 months    ki1000304b-SAS-FoodSuppl   <=24                 (24-28]           1.1111111   0.6232522   1.980848
6 months    ki1000304b-SAS-FoodSuppl   >32                  (24-28]           0.7857143   0.4255574   1.450678
6 months    ki1135781-COHORTS          (28-32]              (24-28]           1.1269023   0.9216740   1.377829
6 months    ki1135781-COHORTS          <=24                 (24-28]           1.2206121   1.0119206   1.472343
6 months    ki1135781-COHORTS          >32                  (24-28]           1.4388789   1.2082250   1.713565
9 months    ki1135781-COHORTS          (28-32]              (24-28]           1.1378788   0.9681645   1.337343
9 months    ki1135781-COHORTS          <=24                 (24-28]           1.0884058   0.9309638   1.272474
9 months    ki1135781-COHORTS          >32                  (24-28]           1.3831678   1.2007088   1.593353
Birth       ki1135781-COHORTS          (28-32]              (24-28]           1.2450183   0.8125222   1.907727
Birth       ki1135781-COHORTS          <=24                 (24-28]           1.4676463   0.9918833   2.171612
Birth       ki1135781-COHORTS          >32                  (24-28]           1.3398805   0.9039200   1.986105


### Parameter: PAR


agecat      studyid                    intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  -----------  -----------  ----------
12 months   ki0047075b-MAL-ED          (24-28]              NA                -0.0571391   -0.1763648   0.0620866
12 months   ki1135781-COHORTS          (24-28]              NA                 0.0527869    0.0176032   0.0879707
18 months   ki0047075b-MAL-ED          (24-28]              NA                -0.0785241   -0.2040896   0.0470413
18 months   ki1135781-COHORTS          (24-28]              NA                 0.0366942    0.0003505   0.0730378
24 months   ki0047075b-MAL-ED          (24-28]              NA                 0.0255231   -0.0950682   0.1461144
24 months   ki1135781-COHORTS          (24-28]              NA                 0.0305682   -0.0052691   0.0664056
3 months    ki1000304b-SAS-FoodSuppl   (24-28]              NA                 0.0584192   -0.1210889   0.2379274
3 months    ki1135781-COHORTS          (24-28]              NA                 0.0317377    0.0091686   0.0543068
6 months    ki0047075b-MAL-ED          (24-28]              NA                -0.0289060   -0.1273561   0.0695441
6 months    ki1000304b-SAS-FoodSuppl   (24-28]              NA                 0.0000000   -0.2016433   0.2016433
6 months    ki1135781-COHORTS          (24-28]              NA                 0.0431561    0.0141583   0.0721539
9 months    ki1135781-COHORTS          (24-28]              NA                 0.0455442    0.0134058   0.0776827
Birth       ki1135781-COHORTS          (24-28]              NA                 0.0126434   -0.0017746   0.0270615


### Parameter: PAF


agecat      studyid                    intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  -----------  -----------  ----------
12 months   ki0047075b-MAL-ED          (24-28]              NA                -0.1919355   -0.6680156   0.1482632
12 months   ki1135781-COHORTS          (24-28]              NA                 0.1194339    0.0361464   0.1955245
18 months   ki0047075b-MAL-ED          (24-28]              NA                -0.1900027   -0.5361693   0.0781573
18 months   ki1135781-COHORTS          (24-28]              NA                 0.0584671   -0.0012559   0.1146278
24 months   ki0047075b-MAL-ED          (24-28]              NA                 0.0660915   -0.3047189   0.3315149
24 months   ki1135781-COHORTS          (24-28]              NA                 0.0464767   -0.0095969   0.0994360
3 months    ki1000304b-SAS-FoodSuppl   (24-28]              NA                 0.1491228   -0.4570270   0.5031032
3 months    ki1135781-COHORTS          (24-28]              NA                 0.2098575    0.0456548   0.3458079
6 months    ki0047075b-MAL-ED          (24-28]              NA                -0.1755685   -0.9552037   0.2931881
6 months    ki1000304b-SAS-FoodSuppl   (24-28]              NA                 0.0000000   -0.4967357   0.3318793
6 months    ki1135781-COHORTS          (24-28]              NA                 0.1749618    0.0486487   0.2845040
9 months    ki1135781-COHORTS          (24-28]              NA                 0.1400622    0.0353534   0.2334053
Birth       ki1135781-COHORTS          (24-28]              NA                 0.2118251   -0.0708146   0.4198625


