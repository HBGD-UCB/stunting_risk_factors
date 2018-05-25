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

**Intervention Variable:** hdlvry

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid


The following strata were considered:

* agecat: 12 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 12 months, studyid: ki1000108-IRC
* agecat: 12 months, studyid: ki1000109-EE
* agecat: 12 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 12 months, studyid: ki1017093b-PROVIDE
* agecat: 12 months, studyid: ki1017093c-NIH-Crypto
* agecat: 12 months, studyid: ki1066203-TanzaniaChild2
* agecat: 12 months, studyid: ki1113344-GMS-Nepal
* agecat: 12 months, studyid: ki1135781-COHORTS
* agecat: 18 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 18 months, studyid: ki1000108-IRC
* agecat: 18 months, studyid: ki1000109-EE
* agecat: 18 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 18 months, studyid: ki1017093b-PROVIDE
* agecat: 18 months, studyid: ki1017093c-NIH-Crypto
* agecat: 18 months, studyid: ki1066203-TanzaniaChild2
* agecat: 18 months, studyid: ki1113344-GMS-Nepal
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 24 months, studyid: ki1000108-IRC
* agecat: 24 months, studyid: ki1000109-EE
* agecat: 24 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 24 months, studyid: ki1017093b-PROVIDE
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2
* agecat: 24 months, studyid: ki1113344-GMS-Nepal
* agecat: 3 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 3 months, studyid: ki1000108-IRC
* agecat: 3 months, studyid: ki1000109-EE
* agecat: 3 months, studyid: ki1017093b-PROVIDE
* agecat: 3 months, studyid: ki1017093c-NIH-Crypto
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2
* agecat: 3 months, studyid: ki1113344-GMS-Nepal
* agecat: 3 months, studyid: ki1135781-COHORTS
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 6 months, studyid: ki1000108-IRC
* agecat: 6 months, studyid: ki1000109-EE
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 6 months, studyid: ki1017093b-PROVIDE
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2
* agecat: 6 months, studyid: ki1113344-GMS-Nepal

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 3 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 3 months, studyid: ki1000108-IRC
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 6 months, studyid: ki1000108-IRC
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2
* agecat: 12 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 12 months, studyid: ki1000108-IRC
* agecat: 12 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 12 months, studyid: ki1066203-TanzaniaChild2
* agecat: 18 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 18 months, studyid: ki1000108-IRC
* agecat: 18 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 18 months, studyid: ki1066203-TanzaniaChild2
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 24 months, studyid: ki1000108-IRC
* agecat: 24 months, studyid: ki1000109-EE
* agecat: 24 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness




# Results Detail

## Results Plots
![](/tmp/c921a538-97e9-43de-a769-c606e5dcb9f3/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/c921a538-97e9-43de-a769-c606e5dcb9f3/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/c921a538-97e9-43de-a769-c606e5dcb9f3/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/c921a538-97e9-43de-a769-c606e5dcb9f3/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Data Summary

agecat      studyid                    A        n     nA   nAY0   nAY1
----------  -------------------------  ---  -----  -----  -----  -----
3 months    ki1000108-CMC-V-BCS-2002   0      359    352    230    122
3 months    ki1000108-CMC-V-BCS-2002   1      359      7      5      2
3 months    ki1000108-IRC              0      410    402    274    128
3 months    ki1000108-IRC              1      410      8      6      2
3 months    ki1000109-EE               0      377    253     95    158
3 months    ki1000109-EE               1      377    124     42     82
3 months    ki1000304b-SAS-FoodSuppl   0        0      0      0      0
3 months    ki1000304b-SAS-FoodSuppl   1        0      0      0      0
3 months    ki1017093b-PROVIDE         0      175    132    100     32
3 months    ki1017093b-PROVIDE         1      175     43     31     12
3 months    ki1017093c-NIH-Crypto      0      758    590    502     88
3 months    ki1017093c-NIH-Crypto      1      758    168    135     33
3 months    ki1066203-TanzaniaChild2   0      571    561    508     53
3 months    ki1066203-TanzaniaChild2   1      571     10      8      2
3 months    ki1113344-GMS-Nepal        0      552    135    118     17
3 months    ki1113344-GMS-Nepal        1      552    417    348     69
3 months    ki1135781-COHORTS          0     4962   3057   2530    527
3 months    ki1135781-COHORTS          1     4962   1905   1483    422
6 months    ki1000108-CMC-V-BCS-2002   0      364    357    172    185
6 months    ki1000108-CMC-V-BCS-2002   1      364      7      5      2
6 months    ki1000108-IRC              0      408    400    231    169
6 months    ki1000108-IRC              1      408      8      4      4
6 months    ki1000109-EE               0      371    250     65    185
6 months    ki1000109-EE               1      371    121     31     90
6 months    ki1000304b-SAS-FoodSuppl   0      105     25     18      7
6 months    ki1000304b-SAS-FoodSuppl   1      105     80     44     36
6 months    ki1017093b-PROVIDE         0      166    125     90     35
6 months    ki1017093b-PROVIDE         1      166     41     28     13
6 months    ki1017093c-NIH-Crypto      0      736    572    401    171
6 months    ki1017093c-NIH-Crypto      1      736    164    109     55
6 months    ki1066203-TanzaniaChild2   0      529    521    422     99
6 months    ki1066203-TanzaniaChild2   1      529      8      6      2
6 months    ki1113344-GMS-Nepal        0      531    128     95     33
6 months    ki1113344-GMS-Nepal        1      531    403    289    114
6 months    ki1135781-COHORTS          0        0      0      0      0
6 months    ki1135781-COHORTS          1        0      0      0      0
12 months   ki1000108-CMC-V-BCS-2002   0      369    361    109    252
12 months   ki1000108-CMC-V-BCS-2002   1      369      8      3      5
12 months   ki1000108-IRC              0      408    400    199    201
12 months   ki1000108-IRC              1      408      8      2      6
12 months   ki1000109-EE               0      371    249     44    205
12 months   ki1000109-EE               1      371    122     21    101
12 months   ki1000304b-SAS-FoodSuppl   0       99     24      3     21
12 months   ki1000304b-SAS-FoodSuppl   1       99     75     12     63
12 months   ki1017093b-PROVIDE         0      159    119     79     40
12 months   ki1017093b-PROVIDE         1      159     40     24     16
12 months   ki1017093c-NIH-Crypto      0      729    566    360    206
12 months   ki1017093c-NIH-Crypto      1      729    163     92     71
12 months   ki1066203-TanzaniaChild2   0      469    462    314    148
12 months   ki1066203-TanzaniaChild2   1      469      7      5      2
12 months   ki1113344-GMS-Nepal        0      543    134     77     57
12 months   ki1113344-GMS-Nepal        1      543    409    221    188
12 months   ki1135781-COHORTS          0     4747   2929   1936    993
12 months   ki1135781-COHORTS          1     4747   1818    907    911
18 months   ki1000108-CMC-V-BCS-2002   0      370    362     55    307
18 months   ki1000108-CMC-V-BCS-2002   1      370      8      2      6
18 months   ki1000108-IRC              0      409    401    177    224
18 months   ki1000108-IRC              1      409      8      2      6
18 months   ki1000109-EE               0      361    245     26    219
18 months   ki1000109-EE               1      361    116      6    110
18 months   ki1000304b-SAS-FoodSuppl   0       93     25      3     22
18 months   ki1000304b-SAS-FoodSuppl   1       93     68      7     61
18 months   ki1017093b-PROVIDE         0      155    116     67     49
18 months   ki1017093b-PROVIDE         1      155     39     18     21
18 months   ki1017093c-NIH-Crypto      0      715    555    321    234
18 months   ki1017093c-NIH-Crypto      1      715    160     77     83
18 months   ki1066203-TanzaniaChild2   0      345    343    199    144
18 months   ki1066203-TanzaniaChild2   1      345      2      1      1
18 months   ki1113344-GMS-Nepal        0      535    132     56     76
18 months   ki1113344-GMS-Nepal        1      535    403    146    257
18 months   ki1135781-COHORTS          0        0      0      0      0
18 months   ki1135781-COHORTS          1        0      0      0      0
24 months   ki1000108-CMC-V-BCS-2002   0      370    362     27    335
24 months   ki1000108-CMC-V-BCS-2002   1      370      8      1      7
24 months   ki1000108-IRC              0      410    402    145    257
24 months   ki1000108-IRC              1      410      8      2      6
24 months   ki1000109-EE               0      336    226     23    203
24 months   ki1000109-EE               1      336    110      4    106
24 months   ki1000304b-SAS-FoodSuppl   0        9      3      0      3
24 months   ki1000304b-SAS-FoodSuppl   1        9      6      1      5
24 months   ki1017093b-PROVIDE         0      148    109     59     50
24 months   ki1017093b-PROVIDE         1      148     39     17     22
24 months   ki1017093c-NIH-Crypto      0      634    484    250    234
24 months   ki1017093c-NIH-Crypto      1      634    150     66     84
24 months   ki1066203-TanzaniaChild2   0      238    236    124    112
24 months   ki1066203-TanzaniaChild2   1      238      2      1      1
24 months   ki1113344-GMS-Nepal        0      530    133     48     85
24 months   ki1113344-GMS-Nepal        1      530    397    118    279
24 months   ki1135781-COHORTS          0        0      0      0      0
24 months   ki1135781-COHORTS          1        0      0      0      0

## Results Table

### Parameter: TSM


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki1000109-EE               0                    NA                0.6245059   0.5647564   0.6842554
3 months    ki1000109-EE               1                    NA                0.6612903   0.5778792   0.7447014
3 months    ki1017093b-PROVIDE         0                    NA                0.2424242   0.1691069   0.3157416
3 months    ki1017093b-PROVIDE         1                    NA                0.2790698   0.1446196   0.4135199
3 months    ki1017093c-NIH-Crypto      0                    NA                0.1491525   0.1203885   0.1779166
3 months    ki1017093c-NIH-Crypto      1                    NA                0.1964286   0.1363119   0.2565452
3 months    ki1113344-GMS-Nepal        0                    NA                0.1259259   0.0699106   0.1819412
3 months    ki1113344-GMS-Nepal        1                    NA                0.1654676   0.1297690   0.2011663
3 months    ki1135781-COHORTS          0                    NA                0.1723912   0.1590002   0.1857823
3 months    ki1135781-COHORTS          1                    NA                0.2215223   0.2028724   0.2401722
6 months    ki1000109-EE               0                    NA                0.7400000   0.6855539   0.7944461
6 months    ki1000109-EE               1                    NA                0.7438017   0.6659159   0.8216874
6 months    ki1000304b-SAS-FoodSuppl   0                    NA                0.2800000   0.1031515   0.4568485
6 months    ki1000304b-SAS-FoodSuppl   1                    NA                0.4500000   0.3404610   0.5595390
6 months    ki1017093b-PROVIDE         0                    NA                0.2800000   0.2010503   0.3589497
6 months    ki1017093b-PROVIDE         1                    NA                0.3170732   0.1742051   0.4599412
6 months    ki1017093c-NIH-Crypto      0                    NA                0.2989510   0.2614089   0.3364932
6 months    ki1017093c-NIH-Crypto      1                    NA                0.3353659   0.2630602   0.4076715
6 months    ki1113344-GMS-Nepal        0                    NA                0.2578125   0.1819615   0.3336635
6 months    ki1113344-GMS-Nepal        1                    NA                0.2828784   0.2388634   0.3268935
12 months   ki1000109-EE               0                    NA                0.8232932   0.7758539   0.8707325
12 months   ki1000109-EE               1                    NA                0.8278689   0.7607932   0.8949445
12 months   ki1017093b-PROVIDE         0                    NA                0.3361345   0.2509930   0.4212759
12 months   ki1017093b-PROVIDE         1                    NA                0.4000000   0.2477022   0.5522978
12 months   ki1017093c-NIH-Crypto      0                    NA                0.3639576   0.3242927   0.4036225
12 months   ki1017093c-NIH-Crypto      1                    NA                0.4355828   0.3594121   0.5117535
12 months   ki1113344-GMS-Nepal        0                    NA                0.4253731   0.3415867   0.5091596
12 months   ki1113344-GMS-Nepal        1                    NA                0.4596577   0.4113142   0.5080012
12 months   ki1135781-COHORTS          0                    NA                0.3390236   0.3218784   0.3561687
12 months   ki1135781-COHORTS          1                    NA                0.5011001   0.4781140   0.5240862
18 months   ki1000109-EE               0                    NA                0.8938776   0.8552577   0.9324974
18 months   ki1000109-EE               1                    NA                0.9482759   0.9079173   0.9886344
18 months   ki1017093b-PROVIDE         0                    NA                0.4224138   0.3322355   0.5125921
18 months   ki1017093b-PROVIDE         1                    NA                0.5384615   0.3814966   0.6954264
18 months   ki1017093c-NIH-Crypto      0                    NA                0.4216216   0.3805092   0.4627340
18 months   ki1017093c-NIH-Crypto      1                    NA                0.5187500   0.4412759   0.5962241
18 months   ki1113344-GMS-Nepal        0                    NA                0.5757576   0.4913669   0.6601482
18 months   ki1113344-GMS-Nepal        1                    NA                0.6377171   0.5907450   0.6846892
24 months   ki1017093b-PROVIDE         0                    NA                0.4587156   0.3648532   0.5525780
24 months   ki1017093b-PROVIDE         1                    NA                0.5641026   0.4079464   0.7202587
24 months   ki1017093c-NIH-Crypto      0                    NA                0.4834711   0.4389156   0.5280265
24 months   ki1017093c-NIH-Crypto      1                    NA                0.5600000   0.4805003   0.6394997
24 months   ki1113344-GMS-Nepal        0                    NA                0.6390977   0.5573999   0.7207956
24 months   ki1113344-GMS-Nepal        1                    NA                0.7027708   0.6577705   0.7477711


### Parameter: E(Y)


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki1000109-EE               NA                   NA                0.6366048   0.6348580   0.6383516
3 months    ki1017093b-PROVIDE         NA                   NA                0.2514286   0.2490845   0.2537727
3 months    ki1017093c-NIH-Crypto      NA                   NA                0.1596306   0.1582318   0.1610294
3 months    ki1113344-GMS-Nepal        NA                   NA                0.1557971   0.1543780   0.1572162
3 months    ki1135781-COHORTS          NA                   NA                0.1912535   0.1905886   0.1919184
6 months    ki1000109-EE               NA                   NA                0.7412399   0.7410583   0.7414215
6 months    ki1000304b-SAS-FoodSuppl   NA                   NA                0.4095238   0.3956081   0.4234395
6 months    ki1017093b-PROVIDE         NA                   NA                0.2891566   0.2867171   0.2915961
6 months    ki1017093c-NIH-Crypto      NA                   NA                0.3070652   0.3059697   0.3081607
6 months    ki1113344-GMS-Nepal        NA                   NA                0.2768362   0.2759234   0.2777489
12 months   ki1000109-EE               NA                   NA                0.8247978   0.8245788   0.8250169
12 months   ki1017093b-PROVIDE         NA                   NA                0.3522013   0.3478802   0.3565223
12 months   ki1017093c-NIH-Crypto      NA                   NA                0.3799726   0.3778047   0.3821404
12 months   ki1113344-GMS-Nepal        NA                   NA                0.4511971   0.4499527   0.4524415
12 months   ki1135781-COHORTS          NA                   NA                0.4010954   0.3988539   0.4033369
18 months   ki1000109-EE               NA                   NA                0.9113573   0.9087332   0.9139815
18 months   ki1017093b-PROVIDE         NA                   NA                0.4516129   0.4436595   0.4595663
18 months   ki1017093c-NIH-Crypto      NA                   NA                0.4433566   0.4403874   0.4463259
18 months   ki1113344-GMS-Nepal        NA                   NA                0.6224299   0.6201644   0.6246954
24 months   ki1017093b-PROVIDE         NA                   NA                0.4864865   0.4789813   0.4939916
24 months   ki1017093c-NIH-Crypto      NA                   NA                0.5015773   0.4990436   0.5041110
24 months   ki1113344-GMS-Nepal        NA                   NA                0.6867925   0.6844400   0.6891449


### Parameter: RR


agecat      studyid                    intervention_level   baseline_level    estimate    ci_lower   ci_upper
----------  -------------------------  -------------------  ---------------  ---------  ----------  ---------
3 months    ki1000109-EE               1                    0                 1.058902   0.9038587   1.240540
3 months    ki1017093b-PROVIDE         1                    0                 1.151163   0.6517680   2.033202
3 months    ki1017093c-NIH-Crypto      1                    0                 1.316964   0.9172164   1.890933
3 months    ki1113344-GMS-Nepal        1                    0                 1.314008   0.8014733   2.154303
3 months    ki1135781-COHORTS          1                    0                 1.284998   1.1459184   1.440957
6 months    ki1000109-EE               1                    0                 1.005137   0.8843934   1.142366
6 months    ki1000304b-SAS-FoodSuppl   1                    0                 1.607143   0.8167457   3.162439
6 months    ki1017093b-PROVIDE         1                    0                 1.132404   0.6655167   1.926833
6 months    ki1017093c-NIH-Crypto      1                    0                 1.121809   0.8740947   1.439723
6 months    ki1113344-GMS-Nepal        1                    0                 1.097225   0.7865991   1.530517
12 months   ki1000109-EE               1                    0                 1.005558   0.9103921   1.110671
12 months   ki1017093b-PROVIDE         1                    0                 1.190000   0.7532570   1.879969
12 months   ki1017093c-NIH-Crypto      1                    0                 1.196795   0.9739424   1.470641
12 months   ki1113344-GMS-Nepal        1                    0                 1.080599   0.8643509   1.350949
12 months   ki1135781-COHORTS          1                    0                 1.478069   1.3805189   1.582512
18 months   ki1000109-EE               1                    0                 1.060857   0.9984314   1.127185
18 months   ki1017093b-PROVIDE         1                    0                 1.274725   0.8881739   1.829512
18 months   ki1017093c-NIH-Crypto      1                    0                 1.230369   1.0293751   1.470608
18 months   ki1113344-GMS-Nepal        1                    0                 1.107614   0.9400412   1.305058
24 months   ki1017093b-PROVIDE         1                    0                 1.229744   0.8715932   1.735063
24 months   ki1017093c-NIH-Crypto      1                    0                 1.158291   0.9779389   1.371903
24 months   ki1113344-GMS-Nepal        1                    0                 1.099630   0.9531334   1.268642


### Parameter: PAR


agecat      studyid                    intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  -----------  ----------
3 months    ki1000109-EE               0                    NA                0.0120988   -0.0476762   0.0718739
3 months    ki1017093b-PROVIDE         0                    NA                0.0090043   -0.0643505   0.0823591
3 months    ki1017093c-NIH-Crypto      0                    NA                0.0104781   -0.0183200   0.0392761
3 months    ki1113344-GMS-Nepal        0                    NA                0.0298712   -0.0261621   0.0859044
3 months    ki1135781-COHORTS          0                    NA                0.0188623    0.0054548   0.0322698
6 months    ki1000109-EE               0                    NA                0.0012399   -0.0532065   0.0556863
6 months    ki1000304b-SAS-FoodSuppl   0                    NA                0.1295238   -0.0478713   0.3069189
6 months    ki1017093b-PROVIDE         0                    NA                0.0091566   -0.0698307   0.0881440
6 months    ki1017093c-NIH-Crypto      0                    NA                0.0081142   -0.0294440   0.0456723
6 months    ki1113344-GMS-Nepal        0                    NA                0.0190237   -0.0568328   0.0948801
12 months   ki1000109-EE               0                    NA                0.0015047   -0.0459352   0.0489445
12 months   ki1017093b-PROVIDE         0                    NA                0.0160668   -0.0691843   0.1013179
12 months   ki1017093c-NIH-Crypto      0                    NA                0.0160150   -0.0237091   0.0557391
12 months   ki1113344-GMS-Nepal        0                    NA                0.0258239   -0.0579718   0.1096196
12 months   ki1135781-COHORTS          0                    NA                0.0620719    0.0447808   0.0793630
18 months   ki1000109-EE               0                    NA                0.0174798   -0.0212291   0.0561886
18 months   ki1017093b-PROVIDE         0                    NA                0.0291991   -0.0613292   0.1197275
18 months   ki1017093c-NIH-Crypto      0                    NA                0.0217350   -0.0194845   0.0629545
18 months   ki1113344-GMS-Nepal        0                    NA                0.0466723   -0.0377487   0.1310934
24 months   ki1017093b-PROVIDE         0                    NA                0.0277709   -0.0663911   0.1219328
24 months   ki1017093c-NIH-Crypto      0                    NA                0.0181062   -0.0265212   0.0627336
24 months   ki1113344-GMS-Nepal        0                    NA                0.0476947   -0.0340370   0.1294265


### Parameter: PAF


agecat      studyid                    intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  -----------  ----------
3 months    ki1000109-EE               0                    NA                0.0190053   -0.0795303   0.1085468
3 months    ki1017093b-PROVIDE         0                    NA                0.0358127   -0.3048759   0.2875512
3 months    ki1017093c-NIH-Crypto      0                    NA                0.0656394   -0.1333252   0.2296742
3 months    ki1113344-GMS-Nepal        0                    NA                0.1917313   -0.2611953   0.4820007
3 months    ki1135781-COHORTS          0                    NA                0.0986246    0.0257404   0.1660563
6 months    ki1000109-EE               0                    NA                0.0016727   -0.0745501   0.0724887
6 months    ki1000304b-SAS-FoodSuppl   0                    NA                0.3162791   -0.2869945   0.6367706
6 months    ki1017093b-PROVIDE         0                    NA                0.0316667   -0.2839105   0.2696769
6 months    ki1017093c-NIH-Crypto      0                    NA                0.0264249   -0.1039008   0.1413644
6 months    ki1113344-GMS-Nepal        0                    NA                0.0687181   -0.2498644   0.3060960
12 months   ki1000109-EE               0                    NA                0.0018243   -0.0573820   0.0577155
12 months   ki1017093b-PROVIDE         0                    NA                0.0456182   -0.2298612   0.2593924
12 months   ki1017093c-NIH-Crypto      0                    NA                0.0421477   -0.0683012   0.1411776
12 months   ki1113344-GMS-Nepal        0                    NA                0.0572342   -0.1480371   0.2258026
12 months   ki1135781-COHORTS          0                    NA                0.1547559    0.1106369   0.1966862
18 months   ki1000109-EE               0                    NA                0.0191800   -0.0242231   0.0607437
18 months   ki1017093b-PROVIDE         0                    NA                0.0646552   -0.1587809   0.2450083
18 months   ki1017093c-NIH-Crypto      0                    NA                0.0490238   -0.0486186   0.1375742
18 months   ki1113344-GMS-Nepal        0                    NA                0.0749841   -0.0710871   0.2011345
24 months   ki1017093b-PROVIDE         0                    NA                0.0570846   -0.1576846   0.2320107
24 months   ki1017093c-NIH-Crypto      0                    NA                0.0360985   -0.0571002   0.1210805
24 months   ki1113344-GMS-Nepal        0                    NA                0.0694456   -0.0574965   0.1811495


