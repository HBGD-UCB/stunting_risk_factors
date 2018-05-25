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
* agecat: 24 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 24 months, studyid: ki1135781-COHORTS
* agecat: 24 months, studyid: ki1148112-LCNI-5
* agecat: 3 months, studyid: ki0047075b-MAL-ED
* agecat: 3 months, studyid: ki1135781-COHORTS
* agecat: 6 months, studyid: ki0047075b-MAL-ED
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 6 months, studyid: ki1135781-COHORTS
* agecat: 6 months, studyid: ki1148112-LCNI-5

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 6 months, studyid: ki1148112-LCNI-5
* agecat: 12 months, studyid: ki0047075b-MAL-ED
* agecat: 12 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 12 months, studyid: ki1148112-LCNI-5
* agecat: 18 months, studyid: ki0047075b-MAL-ED
* agecat: 18 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 18 months, studyid: ki1148112-LCNI-5
* agecat: 24 months, studyid: ki0047075b-MAL-ED
* agecat: 24 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 24 months, studyid: ki1148112-LCNI-5

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness




# Results Detail

## Results Plots
![](/tmp/d356a2fe-7790-41f0-90d4-200ed71d9d1a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/d356a2fe-7790-41f0-90d4-200ed71d9d1a/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/d356a2fe-7790-41f0-90d4-200ed71d9d1a/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/d356a2fe-7790-41f0-90d4-200ed71d9d1a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Data Summary

agecat      studyid                    A             n    nA   nAY0   nAY1
----------  -------------------------  --------  -----  ----  -----  -----
3 months    ki0047075b-MAL-ED          <=24        745    14      7      7
3 months    ki0047075b-MAL-ED          (24-28]     745    63     39     24
3 months    ki0047075b-MAL-ED          (28-32]     745   144    105     39
3 months    ki0047075b-MAL-ED          >32         745   524    402    122
3 months    ki1000304b-SAS-FoodSuppl   <=24          0     0      0      0
3 months    ki1000304b-SAS-FoodSuppl   (24-28]       0     0      0      0
3 months    ki1000304b-SAS-FoodSuppl   (28-32]       0     0      0      0
3 months    ki1000304b-SAS-FoodSuppl   >32           0     0      0      0
3 months    ki1135781-COHORTS          <=24       3441   886    740    146
3 months    ki1135781-COHORTS          (24-28]    3441   847    737    110
3 months    ki1135781-COHORTS          (28-32]    3441   720    603    117
3 months    ki1135781-COHORTS          >32        3441   988    798    190
3 months    ki1148112-LCNI-5           <=24          0     0      0      0
3 months    ki1148112-LCNI-5           (24-28]       0     0      0      0
3 months    ki1148112-LCNI-5           (28-32]       0     0      0      0
3 months    ki1148112-LCNI-5           >32           0     0      0      0
6 months    ki0047075b-MAL-ED          <=24        744    14      5      9
6 months    ki0047075b-MAL-ED          (24-28]     744    63     33     30
6 months    ki0047075b-MAL-ED          (28-32]     744   143     98     45
6 months    ki0047075b-MAL-ED          >32         744   524    366    158
6 months    ki1000304b-SAS-FoodSuppl   <=24        105    19      9     10
6 months    ki1000304b-SAS-FoodSuppl   (24-28]     105    30     20     10
6 months    ki1000304b-SAS-FoodSuppl   (28-32]     105    26     12     14
6 months    ki1000304b-SAS-FoodSuppl   >32         105    30     21      9
6 months    ki1135781-COHORTS          <=24       2851   755    541    214
6 months    ki1135781-COHORTS          (24-28]    2851   728    571    157
6 months    ki1135781-COHORTS          (28-32]    2851   598    463    135
6 months    ki1135781-COHORTS          >32        2851   770    550    220
6 months    ki1148112-LCNI-5           <=24         18     2      1      1
6 months    ki1148112-LCNI-5           (24-28]      18     4      3      1
6 months    ki1148112-LCNI-5           (28-32]      18     3      2      1
6 months    ki1148112-LCNI-5           >32          18     9      6      3
12 months   ki0047075b-MAL-ED          <=24        743    14      3     11
12 months   ki0047075b-MAL-ED          (24-28]     743    62     26     36
12 months   ki0047075b-MAL-ED          (28-32]     743   143     77     66
12 months   ki0047075b-MAL-ED          >32         743   524    309    215
12 months   ki1000304b-SAS-FoodSuppl   <=24         99    18      2     16
12 months   ki1000304b-SAS-FoodSuppl   (24-28]      99    26      5     21
12 months   ki1000304b-SAS-FoodSuppl   (28-32]      99    27      5     22
12 months   ki1000304b-SAS-FoodSuppl   >32          99    28      3     25
12 months   ki1135781-COHORTS          <=24       3211   814    414    400
12 months   ki1135781-COHORTS          (24-28]    3211   785    456    329
12 months   ki1135781-COHORTS          (28-32]    3211   662    350    312
12 months   ki1135781-COHORTS          >32        3211   950    430    520
12 months   ki1148112-LCNI-5           <=24         47     7      3      4
12 months   ki1148112-LCNI-5           (24-28]      47    11      7      4
12 months   ki1148112-LCNI-5           (28-32]      47    10      6      4
12 months   ki1148112-LCNI-5           >32          47    19     10      9
18 months   ki0047075b-MAL-ED          <=24        743    14      2     12
18 months   ki0047075b-MAL-ED          (24-28]     743    62     22     40
18 months   ki0047075b-MAL-ED          (28-32]     743   143     60     83
18 months   ki0047075b-MAL-ED          >32         743   524    242    282
18 months   ki1000304b-SAS-FoodSuppl   <=24         93    16      1     15
18 months   ki1000304b-SAS-FoodSuppl   (24-28]      93    28      3     25
18 months   ki1000304b-SAS-FoodSuppl   (28-32]      93    23      3     20
18 months   ki1000304b-SAS-FoodSuppl   >32          93    26      3     23
18 months   ki1135781-COHORTS          <=24       2986   758    274    484
18 months   ki1135781-COHORTS          (24-28]    2986   740    298    442
18 months   ki1135781-COHORTS          (28-32]    2986   618    206    412
18 months   ki1135781-COHORTS          >32        2986   870    269    601
18 months   ki1148112-LCNI-5           <=24         39     6      2      4
18 months   ki1148112-LCNI-5           (24-28]      39     9      6      3
18 months   ki1148112-LCNI-5           (28-32]      39     9      6      3
18 months   ki1148112-LCNI-5           >32          39    15      7      8
24 months   ki0047075b-MAL-ED          <=24        739    14      2     12
24 months   ki0047075b-MAL-ED          (24-28]     739    61     20     41
24 months   ki0047075b-MAL-ED          (28-32]     739   142     56     86
24 months   ki0047075b-MAL-ED          >32         739   522    216    306
24 months   ki1000304b-SAS-FoodSuppl   <=24          9     1      0      1
24 months   ki1000304b-SAS-FoodSuppl   (24-28]       9     2      0      2
24 months   ki1000304b-SAS-FoodSuppl   (28-32]       9     5      1      4
24 months   ki1000304b-SAS-FoodSuppl   >32           9     1      0      1
24 months   ki1135781-COHORTS          <=24       2941   757    171    586
24 months   ki1135781-COHORTS          (24-28]    2941   735    189    546
24 months   ki1135781-COHORTS          (28-32]    2941   601    132    469
24 months   ki1135781-COHORTS          >32        2941   848    165    683
24 months   ki1148112-LCNI-5           <=24         43     6      2      4
24 months   ki1148112-LCNI-5           (24-28]      43     9      6      3
24 months   ki1148112-LCNI-5           (28-32]      43    10      3      7
24 months   ki1148112-LCNI-5           >32          43    18      6     12

## Results Table

### Parameter: TSM


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki0047075b-MAL-ED          <=24                 NA                0.5000000   0.2379128   0.7620872
3 months    ki0047075b-MAL-ED          (24-28]              NA                0.3809524   0.2609564   0.5009484
3 months    ki0047075b-MAL-ED          (28-32]              NA                0.2708333   0.1982022   0.3434645
3 months    ki0047075b-MAL-ED          >32                  NA                0.2328244   0.1966138   0.2690350
3 months    ki1135781-COHORTS          <=24                 NA                0.1647856   0.1403539   0.1892172
3 months    ki1135781-COHORTS          (24-28]              NA                0.1298701   0.1072281   0.1525122
3 months    ki1135781-COHORTS          (28-32]              NA                0.1625000   0.1355497   0.1894503
3 months    ki1135781-COHORTS          >32                  NA                0.1923077   0.1677293   0.2168861
6 months    ki0047075b-MAL-ED          <=24                 NA                0.6428571   0.3916949   0.8940194
6 months    ki0047075b-MAL-ED          (24-28]              NA                0.4761905   0.3527815   0.5995995
6 months    ki0047075b-MAL-ED          (28-32]              NA                0.3146853   0.2385203   0.3908503
6 months    ki0047075b-MAL-ED          >32                  NA                0.3015267   0.2622068   0.3408466
6 months    ki1000304b-SAS-FoodSuppl   <=24                 NA                0.5263158   0.3007273   0.7519043
6 months    ki1000304b-SAS-FoodSuppl   (24-28]              NA                0.3333333   0.1638374   0.5028292
6 months    ki1000304b-SAS-FoodSuppl   (28-32]              NA                0.5384615   0.3459217   0.7310014
6 months    ki1000304b-SAS-FoodSuppl   >32                  NA                0.3000000   0.1352312   0.4647688
6 months    ki1135781-COHORTS          <=24                 NA                0.2834437   0.2512916   0.3155958
6 months    ki1135781-COHORTS          (24-28]              NA                0.2156593   0.1857783   0.2455403
6 months    ki1135781-COHORTS          (28-32]              NA                0.2257525   0.1922382   0.2592668
6 months    ki1135781-COHORTS          >32                  NA                0.2857143   0.2538003   0.3176283
12 months   ki1135781-COHORTS          <=24                 NA                0.4914005   0.4570519   0.5257491
12 months   ki1135781-COHORTS          (24-28]              NA                0.4191083   0.3845866   0.4536299
12 months   ki1135781-COHORTS          (28-32]              NA                0.4712991   0.4332679   0.5093303
12 months   ki1135781-COHORTS          >32                  NA                0.5473684   0.5157117   0.5790252
18 months   ki1135781-COHORTS          <=24                 NA                0.6385224   0.6043154   0.6727294
18 months   ki1135781-COHORTS          (24-28]              NA                0.5972973   0.5619552   0.6326394
18 months   ki1135781-COHORTS          (28-32]              NA                0.6666667   0.6294943   0.7038390
18 months   ki1135781-COHORTS          >32                  NA                0.6908046   0.6600893   0.7215199
24 months   ki1135781-COHORTS          <=24                 NA                0.7741083   0.7443146   0.8039021
24 months   ki1135781-COHORTS          (24-28]              NA                0.7428571   0.7112549   0.7744594
24 months   ki1135781-COHORTS          (28-32]              NA                0.7803661   0.7472618   0.8134703
24 months   ki1135781-COHORTS          >32                  NA                0.8054245   0.7787756   0.8320735


### Parameter: E(Y)


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki0047075b-MAL-ED          NA                   NA                0.2577181   0.2538777   0.2615585
3 months    ki1135781-COHORTS          NA                   NA                0.1636152   0.1628552   0.1643753
6 months    ki0047075b-MAL-ED          NA                   NA                0.3252688   0.3205839   0.3299537
6 months    ki1000304b-SAS-FoodSuppl   NA                   NA                0.4095238   0.3887613   0.4302864
6 months    ki1135781-COHORTS          NA                   NA                0.2546475   0.2534615   0.2558335
12 months   ki1135781-COHORTS          NA                   NA                0.4861414   0.4844968   0.4877860
18 months   ki1135781-COHORTS          NA                   NA                0.6493637   0.6480883   0.6506391
24 months   ki1135781-COHORTS          NA                   NA                0.7766066   0.7757755   0.7774377


### Parameter: RR


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki0047075b-MAL-ED          (24-28]              <=24              0.7619048   0.4133459   1.4043899
3 months    ki0047075b-MAL-ED          (28-32]              <=24              0.5416667   0.3006232   0.9759818
3 months    ki0047075b-MAL-ED          >32                  <=24              0.4656489   0.2695276   0.8044773
3 months    ki1135781-COHORTS          (24-28]              <=24              0.7881160   0.6268976   0.9907947
3 months    ki1135781-COHORTS          (28-32]              <=24              0.9861301   0.7894450   1.2318181
3 months    ki1135781-COHORTS          >32                  <=24              1.1670179   0.9595458   1.4193494
6 months    ki0047075b-MAL-ED          (24-28]              <=24              0.7407407   0.4635038   1.1838024
6 months    ki0047075b-MAL-ED          (28-32]              <=24              0.4895105   0.3091460   0.7751048
6 months    ki0047075b-MAL-ED          >32                  <=24              0.4690416   0.3106935   0.7080933
6 months    ki1000304b-SAS-FoodSuppl   (24-28]              <=24              0.6333333   0.3256948   1.2315553
6 months    ki1000304b-SAS-FoodSuppl   (28-32]              <=24              1.0230769   0.5854513   1.7878283
6 months    ki1000304b-SAS-FoodSuppl   >32                  <=24              0.5700000   0.2839942   1.1440374
6 months    ki1135781-COHORTS          (24-28]              <=24              0.7608542   0.6361118   0.9100587
6 months    ki1135781-COHORTS          (28-32]              <=24              0.7964633   0.6607322   0.9600770
6 months    ki1135781-COHORTS          >32                  <=24              1.0080107   0.8596596   1.1819627
12 months   ki1135781-COHORTS          (24-28]              <=24              0.8528854   0.7655499   0.9501842
12 months   ki1135781-COHORTS          (28-32]              <=24              0.9590937   0.8619778   1.0671511
12 months   ki1135781-COHORTS          >32                  <=24              1.1138947   1.0172869   1.2196771
18 months   ki1135781-COHORTS          (24-28]              <=24              0.9354367   0.8636732   1.0131630
18 months   ki1135781-COHORTS          (28-32]              <=24              1.0440771   0.9663873   1.1280126
18 months   ki1135781-COHORTS          >32                  <=24              1.0818799   1.0091216   1.1598842
24 months   ki1135781-COHORTS          (24-28]              <=24              0.9596294   0.9061267   1.0162913
24 months   ki1135781-COHORTS          (28-32]              <=24              1.0080838   0.9519643   1.0675116
24 months   ki1135781-COHORTS          >32                  <=24              1.0404546   0.9889642   1.0946257


### Parameter: PAR


agecat      studyid                    intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -------------------  ---------------  -----------  -----------  -----------
3 months    ki0047075b-MAL-ED          <=24                 NA                -0.2422819   -0.5043972    0.0198334
3 months    ki1135781-COHORTS          <=24                 NA                -0.0011703   -0.0256138    0.0232732
6 months    ki0047075b-MAL-ED          <=24                 NA                -0.3175883   -0.5687943   -0.0663824
6 months    ki1000304b-SAS-FoodSuppl   <=24                 NA                -0.1167920   -0.3433339    0.1097500
6 months    ki1135781-COHORTS          <=24                 NA                -0.0287962   -0.0609702    0.0033778
12 months   ki1135781-COHORTS          <=24                 NA                -0.0052591   -0.0396471    0.0291289
18 months   ki1135781-COHORTS          <=24                 NA                 0.0108413   -0.0233895    0.0450720
24 months   ki1135781-COHORTS          <=24                 NA                 0.0024983   -0.0273071    0.0323036


### Parameter: PAF


agecat      studyid                    intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -------------------  ---------------  -----------  -----------  -----------
3 months    ki0047075b-MAL-ED          <=24                 NA                -0.9401042   -2.2776535   -0.1483838
3 months    ki1135781-COHORTS          <=24                 NA                -0.0071529   -0.1681993    0.1316919
6 months    ki0047075b-MAL-ED          <=24                 NA                -0.9763872   -1.9218962   -0.3368396
6 months    ki1000304b-SAS-FoodSuppl   <=24                 NA                -0.2851897   -0.9788434    0.1653141
6 months    ki1135781-COHORTS          <=24                 NA                -0.1130827   -0.2469028    0.0063756
12 months   ki1135781-COHORTS          <=24                 NA                -0.0108180   -0.0840903    0.0575018
18 months   ki1135781-COHORTS          <=24                 NA                 0.0166952   -0.0374564    0.0680203
24 months   ki1135781-COHORTS          <=24                 NA                 0.0032169   -0.0359103    0.0408663


