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

**Outcome Variable:** sstunted

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
* agecat: 24 months, studyid: ki1017093b-PROVIDE
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2
* agecat: 24 months, studyid: ki1113344-GMS-Nepal
* agecat: 24 months, studyid: ki1135781-COHORTS
* agecat: 3 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 3 months, studyid: ki1000108-IRC
* agecat: 3 months, studyid: ki1000109-EE
* agecat: 3 months, studyid: ki1000304b-SAS-FoodSuppl
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
* agecat: 6 months, studyid: ki1135781-COHORTS
* agecat: 9 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 9 months, studyid: ki1000108-IRC
* agecat: 9 months, studyid: ki1000109-EE
* agecat: 9 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 9 months, studyid: ki1017093b-PROVIDE
* agecat: 9 months, studyid: ki1017093c-NIH-Crypto
* agecat: 9 months, studyid: ki1066203-TanzaniaChild2
* agecat: 9 months, studyid: ki1113344-GMS-Nepal
* agecat: 9 months, studyid: ki1135781-COHORTS
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002
* agecat: Birth, studyid: ki1000108-IRC
* agecat: Birth, studyid: ki1000109-EE
* agecat: Birth, studyid: ki1017093c-NIH-Crypto
* agecat: Birth, studyid: ki1135781-COHORTS

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002
* agecat: Birth, studyid: ki1000108-IRC
* agecat: Birth, studyid: ki1000109-EE
* agecat: Birth, studyid: ki1017093c-NIH-Crypto
* agecat: 3 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 3 months, studyid: ki1000108-IRC
* agecat: 3 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 3 months, studyid: ki1017093b-PROVIDE
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2
* agecat: 3 months, studyid: ki1113344-GMS-Nepal
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 6 months, studyid: ki1000108-IRC
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 6 months, studyid: ki1017093b-PROVIDE
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2
* agecat: 6 months, studyid: ki1113344-GMS-Nepal
* agecat: 9 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 9 months, studyid: ki1000108-IRC
* agecat: 9 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 9 months, studyid: ki1017093b-PROVIDE
* agecat: 9 months, studyid: ki1066203-TanzaniaChild2
* agecat: 12 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 12 months, studyid: ki1000108-IRC
* agecat: 12 months, studyid: ki1017093b-PROVIDE
* agecat: 12 months, studyid: ki1066203-TanzaniaChild2
* agecat: 18 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 18 months, studyid: ki1000108-IRC
* agecat: 18 months, studyid: ki1066203-TanzaniaChild2
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 24 months, studyid: ki1000108-IRC
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness




# Results Detail

## Results Plots
![](/tmp/ade5ccb7-1c11-404e-ad50-2f4626da713e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/ade5ccb7-1c11-404e-ad50-2f4626da713e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/ade5ccb7-1c11-404e-ad50-2f4626da713e/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/ade5ccb7-1c11-404e-ad50-2f4626da713e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Data Summary

agecat      studyid                    A        n     nA   nAY0   nAY1
----------  -------------------------  ---  -----  -----  -----  -----
Birth       ki1000108-CMC-V-BCS-2002   0       90     90     87      3
Birth       ki1000108-CMC-V-BCS-2002   1       90      0      0      0
Birth       ki1000108-IRC              0      388    381    365     16
Birth       ki1000108-IRC              1      388      7      7      0
Birth       ki1000109-EE               0        2      2      2      0
Birth       ki1000109-EE               1        2      0      0      0
Birth       ki1000304b-SAS-FoodSuppl   0        0      0      0      0
Birth       ki1000304b-SAS-FoodSuppl   1        0      0      0      0
Birth       ki1017093b-PROVIDE         0        0      0      0      0
Birth       ki1017093b-PROVIDE         1        0      0      0      0
Birth       ki1017093c-NIH-Crypto      0       27     22     21      1
Birth       ki1017093c-NIH-Crypto      1       27      5      5      0
Birth       ki1066203-TanzaniaChild2   0        0      0      0      0
Birth       ki1066203-TanzaniaChild2   1        0      0      0      0
Birth       ki1113344-GMS-Nepal        0        0      0      0      0
Birth       ki1113344-GMS-Nepal        1        0      0      0      0
Birth       ki1135781-COHORTS          0     4694   2938   2855     83
Birth       ki1135781-COHORTS          1     4694   1756   1702     54
3 months    ki1000108-CMC-V-BCS-2002   0      359    352    319     33
3 months    ki1000108-CMC-V-BCS-2002   1      359      7      7      0
3 months    ki1000108-IRC              0      407    399    363     36
3 months    ki1000108-IRC              1      407      8      8      0
3 months    ki1000109-EE               0      374    252    166     86
3 months    ki1000109-EE               1      374    122     86     36
3 months    ki1000304b-SAS-FoodSuppl   0       97     24     21      3
3 months    ki1000304b-SAS-FoodSuppl   1       97     73     63     10
3 months    ki1017093b-PROVIDE         0      168    127    123      4
3 months    ki1017093b-PROVIDE         1      168     41     40      1
3 months    ki1017093c-NIH-Crypto      0      728    565    542     23
3 months    ki1017093c-NIH-Crypto      1      728    163    153     10
3 months    ki1066203-TanzaniaChild2   0      547    538    530      8
3 months    ki1066203-TanzaniaChild2   1      547      9      9      0
3 months    ki1113344-GMS-Nepal        0      534    132    130      2
3 months    ki1113344-GMS-Nepal        1      534    402    383     19
3 months    ki1135781-COHORTS          0     4848   2982   2885     97
3 months    ki1135781-COHORTS          1     4848   1866   1785     81
6 months    ki1000108-CMC-V-BCS-2002   0      366    358    318     40
6 months    ki1000108-CMC-V-BCS-2002   1      366      8      7      1
6 months    ki1000108-IRC              0      407    399    370     29
6 months    ki1000108-IRC              1      407      8      8      0
6 months    ki1000109-EE               0      370    248    186     62
6 months    ki1000109-EE               1      370    122     90     32
6 months    ki1000304b-SAS-FoodSuppl   0       96     24     23      1
6 months    ki1000304b-SAS-FoodSuppl   1       96     72     58     14
6 months    ki1017093b-PROVIDE         0      153    115    110      5
6 months    ki1017093b-PROVIDE         1      153     38     37      1
6 months    ki1017093c-NIH-Crypto      0      715    554    535     19
6 months    ki1017093c-NIH-Crypto      1      715    161    157      4
6 months    ki1066203-TanzaniaChild2   0      477    469    463      6
6 months    ki1066203-TanzaniaChild2   1      477      8      7      1
6 months    ki1113344-GMS-Nepal        0      527    129    127      2
6 months    ki1113344-GMS-Nepal        1      527    398    383     15
6 months    ki1135781-COHORTS          0     4699   2900   2788    112
6 months    ki1135781-COHORTS          1     4699   1799   1680    119
9 months    ki1000108-CMC-V-BCS-2002   0      363    355    310     45
9 months    ki1000108-CMC-V-BCS-2002   1      363      8      7      1
9 months    ki1000108-IRC              0      407    399    365     34
9 months    ki1000108-IRC              1      407      8      8      0
9 months    ki1000109-EE               0      364    246    188     58
9 months    ki1000109-EE               1      364    118     82     36
9 months    ki1000304b-SAS-FoodSuppl   0       85     21     17      4
9 months    ki1000304b-SAS-FoodSuppl   1       85     64     48     16
9 months    ki1017093b-PROVIDE         0      158    118    111      7
9 months    ki1017093b-PROVIDE         1      158     40     38      2
9 months    ki1017093c-NIH-Crypto      0      706    552    530     22
9 months    ki1017093c-NIH-Crypto      1      706    154    148      6
9 months    ki1066203-TanzaniaChild2   0      410    403    397      6
9 months    ki1066203-TanzaniaChild2   1      410      7      6      1
9 months    ki1113344-GMS-Nepal        0      515    124    119      5
9 months    ki1113344-GMS-Nepal        1      515    391    361     30
9 months    ki1135781-COHORTS          0     4092   2519   2365    154
9 months    ki1135781-COHORTS          1     4092   1573   1380    193
12 months   ki1000108-CMC-V-BCS-2002   0      365    357    275     82
12 months   ki1000108-CMC-V-BCS-2002   1      365      8      8      0
12 months   ki1000108-IRC              0      406    398    364     34
12 months   ki1000108-IRC              1      406      8      8      0
12 months   ki1000109-EE               0      355    242    166     76
12 months   ki1000109-EE               1      355    113     70     43
12 months   ki1000304b-SAS-FoodSuppl   0       92     24     15      9
12 months   ki1000304b-SAS-FoodSuppl   1       92     68     36     32
12 months   ki1017093b-PROVIDE         0      153    115    106      9
12 months   ki1017093b-PROVIDE         1      153     38     34      4
12 months   ki1017093c-NIH-Crypto      0      706    548    518     30
12 months   ki1017093c-NIH-Crypto      1      706    158    147     11
12 months   ki1066203-TanzaniaChild2   0      342    340    333      7
12 months   ki1066203-TanzaniaChild2   1      342      2      2      0
12 months   ki1113344-GMS-Nepal        0      521    126    117      9
12 months   ki1113344-GMS-Nepal        1      521    395    357     38
12 months   ki1135781-COHORTS          0     3645   2268   2071    197
12 months   ki1135781-COHORTS          1     3645   1377   1121    256
18 months   ki1000108-CMC-V-BCS-2002   0      366    358    252    106
18 months   ki1000108-CMC-V-BCS-2002   1      366      8      7      1
18 months   ki1000108-IRC              0      405    397    365     32
18 months   ki1000108-IRC              1      405      8      6      2
18 months   ki1000109-EE               0      348    236    128    108
18 months   ki1000109-EE               1      348    112     50     62
18 months   ki1000304b-SAS-FoodSuppl   0       84     23     15      8
18 months   ki1000304b-SAS-FoodSuppl   1       84     61     32     29
18 months   ki1017093b-PROVIDE         0      141    105     91     14
18 months   ki1017093b-PROVIDE         1      141     36     30      6
18 months   ki1017093c-NIH-Crypto      0      634    487    457     30
18 months   ki1017093c-NIH-Crypto      1      634    147    135     12
18 months   ki1066203-TanzaniaChild2   0      247    245    231     14
18 months   ki1066203-TanzaniaChild2   1      247      2      2      0
18 months   ki1113344-GMS-Nepal        0      512    129    109     20
18 months   ki1113344-GMS-Nepal        1      512    383    326     57
18 months   ki1135781-COHORTS          0        0      0      0      0
18 months   ki1135781-COHORTS          1        0      0      0      0
24 months   ki1000108-CMC-V-BCS-2002   0      369    361    241    120
24 months   ki1000108-CMC-V-BCS-2002   1      369      8      6      2
24 months   ki1000108-IRC              0      409    401    362     39
24 months   ki1000108-IRC              1      409      8      6      2
24 months   ki1000109-EE               0        0      0      0      0
24 months   ki1000109-EE               1        0      0      0      0
24 months   ki1000304b-SAS-FoodSuppl   0        0      0      0      0
24 months   ki1000304b-SAS-FoodSuppl   1        0      0      0      0
24 months   ki1017093b-PROVIDE         0      149    111    100     11
24 months   ki1017093b-PROVIDE         1      149     38     31      7
24 months   ki1017093c-NIH-Crypto      0      514    391    365     26
24 months   ki1017093c-NIH-Crypto      1      514    123    114      9
24 months   ki1066203-TanzaniaChild2   0        2      2      2      0
24 months   ki1066203-TanzaniaChild2   1        2      0      0      0
24 months   ki1113344-GMS-Nepal        0      467    120    107     13
24 months   ki1113344-GMS-Nepal        1      467    347    313     34
24 months   ki1135781-COHORTS          0     3559   2233   1912    321
24 months   ki1135781-COHORTS          1     3559   1326    904    422

## Results Table

### Parameter: TSM


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1135781-COHORTS          0                    NA                0.0282505   0.0222587   0.0342423
Birth       ki1135781-COHORTS          1                    NA                0.0307517   0.0226759   0.0388275
3 months    ki1000109-EE               0                    NA                0.3412698   0.2826517   0.3998880
3 months    ki1000109-EE               1                    NA                0.2950820   0.2140437   0.3761202
3 months    ki1017093c-NIH-Crypto      0                    NA                0.0407080   0.0244023   0.0570136
3 months    ki1017093c-NIH-Crypto      1                    NA                0.0613497   0.0244850   0.0982144
3 months    ki1135781-COHORTS          0                    NA                0.0325285   0.0261607   0.0388963
3 months    ki1135781-COHORTS          1                    NA                0.0434084   0.0341617   0.0526551
6 months    ki1000109-EE               0                    NA                0.2500000   0.1960352   0.3039648
6 months    ki1000109-EE               1                    NA                0.2622951   0.1841337   0.3404565
6 months    ki1135781-COHORTS          0                    NA                0.0386207   0.0316069   0.0456345
6 months    ki1135781-COHORTS          1                    NA                0.0661479   0.0546617   0.0776340
9 months    ki1000109-EE               0                    NA                0.2357724   0.1826551   0.2888896
9 months    ki1000109-EE               1                    NA                0.3050847   0.2218929   0.3882766
9 months    ki1017093c-NIH-Crypto      0                    NA                0.0398551   0.0235247   0.0561855
9 months    ki1017093c-NIH-Crypto      1                    NA                0.0389610   0.0083780   0.0695441
9 months    ki1113344-GMS-Nepal        0                    NA                0.0403226   0.0056652   0.0749800
9 months    ki1113344-GMS-Nepal        1                    NA                0.0767263   0.0503193   0.1031334
9 months    ki1135781-COHORTS          0                    NA                0.0611354   0.0517784   0.0704923
9 months    ki1135781-COHORTS          1                    NA                0.1226955   0.1064801   0.1389108
12 months   ki1000109-EE               0                    NA                0.3140496   0.2554899   0.3726092
12 months   ki1000109-EE               1                    NA                0.3805310   0.2908859   0.4701760
12 months   ki1000304b-SAS-FoodSuppl   0                    NA                0.3750000   0.1802528   0.5697472
12 months   ki1000304b-SAS-FoodSuppl   1                    NA                0.4705882   0.3513037   0.5898728
12 months   ki1017093c-NIH-Crypto      0                    NA                0.0547445   0.0356851   0.0738040
12 months   ki1017093c-NIH-Crypto      1                    NA                0.0696203   0.0299079   0.1093326
12 months   ki1113344-GMS-Nepal        0                    NA                0.0714286   0.0264171   0.1164401
12 months   ki1113344-GMS-Nepal        1                    NA                0.0962025   0.0670957   0.1253094
12 months   ki1135781-COHORTS          0                    NA                0.0868607   0.0752685   0.0984529
12 months   ki1135781-COHORTS          1                    NA                0.1859114   0.1653606   0.2064622
18 months   ki1000109-EE               0                    NA                0.4576271   0.3939737   0.5212806
18 months   ki1000109-EE               1                    NA                0.5535714   0.4613723   0.6457706
18 months   ki1000304b-SAS-FoodSuppl   0                    NA                0.3478261   0.1520104   0.5436418
18 months   ki1000304b-SAS-FoodSuppl   1                    NA                0.4754098   0.3493351   0.6014845
18 months   ki1017093b-PROVIDE         0                    NA                0.1333333   0.0680812   0.1985854
18 months   ki1017093b-PROVIDE         1                    NA                0.1666667   0.0444934   0.2888399
18 months   ki1017093c-NIH-Crypto      0                    NA                0.0616016   0.0402311   0.0829722
18 months   ki1017093c-NIH-Crypto      1                    NA                0.0816327   0.0373359   0.1259295
18 months   ki1113344-GMS-Nepal        0                    NA                0.1550388   0.0925191   0.2175584
18 months   ki1113344-GMS-Nepal        1                    NA                0.1488251   0.1131454   0.1845047
24 months   ki1017093b-PROVIDE         0                    NA                0.0990991   0.0433263   0.1548719
24 months   ki1017093b-PROVIDE         1                    NA                0.1842105   0.0605404   0.3078807
24 months   ki1017093c-NIH-Crypto      0                    NA                0.0664962   0.0417767   0.0912156
24 months   ki1017093c-NIH-Crypto      1                    NA                0.0731707   0.0271040   0.1192374
24 months   ki1113344-GMS-Nepal        0                    NA                0.1083333   0.0526654   0.1640013
24 months   ki1113344-GMS-Nepal        1                    NA                0.0979827   0.0666693   0.1292962
24 months   ki1135781-COHORTS          0                    NA                0.1437528   0.1291991   0.1583065
24 months   ki1135781-COHORTS          1                    NA                0.3182504   0.2931758   0.3433250


### Parameter: E(Y)


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1135781-COHORTS          NA                   NA                0.0291862   0.0291516   0.0292208
3 months    ki1000109-EE               NA                   NA                0.3262032   0.3240057   0.3284007
3 months    ki1017093c-NIH-Crypto      NA                   NA                0.0453297   0.0447042   0.0459552
3 months    ki1135781-COHORTS          NA                   NA                0.0367162   0.0365671   0.0368652
6 months    ki1000109-EE               NA                   NA                0.2540541   0.2534643   0.2546438
6 months    ki1135781-COHORTS          NA                   NA                0.0491594   0.0487768   0.0495420
9 months    ki1000109-EE               NA                   NA                0.2582418   0.2549043   0.2615792
9 months    ki1017093c-NIH-Crypto      NA                   NA                0.0396601   0.0396328   0.0396873
9 months    ki1113344-GMS-Nepal        NA                   NA                0.0679612   0.0666156   0.0693067
9 months    ki1135781-COHORTS          NA                   NA                0.0847996   0.0838820   0.0857173
12 months   ki1000109-EE               NA                   NA                0.3352113   0.3319853   0.3384373
12 months   ki1000304b-SAS-FoodSuppl   NA                   NA                0.4456522   0.4370283   0.4542761
12 months   ki1017093c-NIH-Crypto      NA                   NA                0.0580737   0.0576160   0.0585313
12 months   ki1113344-GMS-Nepal        NA                   NA                0.0902111   0.0892994   0.0911229
12 months   ki1135781-COHORTS          NA                   NA                0.1242798   0.1227206   0.1258391
18 months   ki1000109-EE               NA                   NA                0.4885057   0.4837896   0.4932219
18 months   ki1000304b-SAS-FoodSuppl   NA                   NA                0.4404762   0.4282370   0.4527154
18 months   ki1017093b-PROVIDE         NA                   NA                0.1418440   0.1394363   0.1442516
18 months   ki1017093c-NIH-Crypto      NA                   NA                0.0662461   0.0655875   0.0669046
18 months   ki1113344-GMS-Nepal        NA                   NA                0.1503906   0.1501567   0.1506245
24 months   ki1017093b-PROVIDE         NA                   NA                0.1208054   0.1148285   0.1267822
24 months   ki1017093c-NIH-Crypto      NA                   NA                0.0680934   0.0678470   0.0683398
24 months   ki1113344-GMS-Nepal        NA                   NA                0.1006424   0.1002318   0.1010530
24 months   ki1135781-COHORTS          NA                   NA                0.2087665   0.2059943   0.2115387


### Parameter: RR


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki1135781-COHORTS          1                    0                 1.0885364   0.7766770   1.525617
3 months    ki1000109-EE               1                    0                 0.8646588   0.6254143   1.195423
3 months    ki1017093c-NIH-Crypto      1                    0                 1.5070686   0.7319858   3.102869
3 months    ki1135781-COHORTS          1                    0                 1.3344714   0.9992287   1.782189
6 months    ki1000109-EE               1                    0                 1.0491803   0.7261859   1.515837
6 months    ki1135781-COHORTS          1                    0                 1.7127571   1.3322122   2.202004
9 months    ki1000109-EE               1                    0                 1.2939801   0.9084734   1.843075
9 months    ki1017093c-NIH-Crypto      1                    0                 0.9775679   0.4032655   2.369752
9 months    ki1113344-GMS-Nepal        1                    0                 1.9028131   0.7538832   4.802730
9 months    ki1135781-COHORTS          1                    0                 2.0069476   1.6395124   2.456730
12 months   ki1000109-EE               1                    0                 1.2116907   0.8972435   1.636339
12 months   ki1000304b-SAS-FoodSuppl   1                    0                 1.2549020   0.7041050   2.236569
12 months   ki1017093c-NIH-Crypto      1                    0                 1.2717300   0.6518834   2.480961
12 months   ki1113344-GMS-Nepal        1                    0                 1.3468354   0.6694669   2.709567
12 months   ki1135781-COHORTS          1                    0                 2.1403404   1.7997946   2.545322
18 months   ki1000109-EE               1                    0                 1.2096561   0.9736923   1.502803
18 months   ki1000304b-SAS-FoodSuppl   1                    0                 1.3668033   0.7335723   2.546649
18 months   ki1017093b-PROVIDE         1                    0                 1.2500000   0.5177579   3.017819
18 months   ki1017093c-NIH-Crypto      1                    0                 1.3251701   0.6959259   2.523366
18 months   ki1113344-GMS-Nepal        1                    0                 0.9599217   0.6004721   1.534542
24 months   ki1017093b-PROVIDE         1                    0                 1.8588516   0.7740751   4.463817
24 months   ki1017093c-NIH-Crypto      1                    0                 1.1003752   0.5296782   2.285965
24 months   ki1113344-GMS-Nepal        1                    0                 0.9044558   0.4938359   1.656502
24 months   ki1135781-COHORTS          1                    0                 2.2138726   1.9473253   2.516904


### Parameter: PAR


agecat      studyid                    intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1135781-COHORTS          0                    NA                 0.0009357   -0.0050562   0.0069276
3 months    ki1000109-EE               0                    NA                -0.0150666   -0.0737259   0.0435927
3 months    ki1017093c-NIH-Crypto      0                    NA                 0.0046217   -0.0116959   0.0209393
3 months    ki1135781-COHORTS          0                    NA                 0.0041877   -0.0021819   0.0105572
6 months    ki1000109-EE               0                    NA                 0.0040541   -0.0499140   0.0580221
6 months    ki1135781-COHORTS          0                    NA                 0.0105387    0.0035145   0.0175629
9 months    ki1000109-EE               0                    NA                 0.0224694   -0.0307526   0.0756914
9 months    ki1017093c-NIH-Crypto      0                    NA                -0.0001950   -0.0165254   0.0161354
9 months    ki1113344-GMS-Nepal        0                    NA                 0.0276386   -0.0070449   0.0623221
9 months    ki1135781-COHORTS          0                    NA                 0.0236642    0.0142624   0.0330661
12 months   ki1000109-EE               0                    NA                 0.0211617   -0.0374868   0.0798101
12 months   ki1000304b-SAS-FoodSuppl   0                    NA                 0.0706522   -0.1242859   0.2655903
12 months   ki1017093c-NIH-Crypto      0                    NA                 0.0033291   -0.0157358   0.0223941
12 months   ki1113344-GMS-Nepal        0                    NA                 0.0187826   -0.0262382   0.0638033
12 months   ki1135781-COHORTS          0                    NA                 0.0374192    0.0257226   0.0491158
18 months   ki1000109-EE               0                    NA                 0.0308786   -0.0329493   0.0947065
18 months   ki1000304b-SAS-FoodSuppl   0                    NA                 0.0926501   -0.1035477   0.2888480
18 months   ki1017093b-PROVIDE         0                    NA                 0.0085106   -0.0567858   0.0738071
18 months   ki1017093c-NIH-Crypto      0                    NA                 0.0046444   -0.0167363   0.0260251
18 months   ki1113344-GMS-Nepal        0                    NA                -0.0046481   -0.0671682   0.0578719
24 months   ki1017093b-PROVIDE         0                    NA                 0.0217063   -0.0343858   0.0777984
24 months   ki1017093c-NIH-Crypto      0                    NA                 0.0015972   -0.0231235   0.0263179
24 months   ki1113344-GMS-Nepal        0                    NA                -0.0076909   -0.0633604   0.0479785
24 months   ki1135781-COHORTS          0                    NA                 0.0650137    0.0501984   0.0798290


### Parameter: PAF


agecat      studyid                    intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1135781-COHORTS          0                    NA                 0.0320591   -0.1966369   0.2170478
3 months    ki1000109-EE               0                    NA                -0.0461879   -0.2424059   0.1190407
3 months    ki1017093c-NIH-Crypto      0                    NA                 0.1019576   -0.3407790   0.3984989
3 months    ki1135781-COHORTS          0                    NA                 0.1140551   -0.0775635   0.2715990
6 months    ki1000109-EE               0                    NA                 0.0159574   -0.2211408   0.2070204
6 months    ki1135781-COHORTS          0                    NA                 0.2143783    0.0577702   0.3449565
9 months    ki1000109-EE               0                    NA                 0.0870092   -0.1441150   0.2714436
9 months    ki1017093c-NIH-Crypto      0                    NA                -0.0049172   -0.5138408   0.3329163
9 months    ki1113344-GMS-Nepal        0                    NA                 0.4066820   -0.4017297   0.7488629
9 months    ki1135781-COHORTS          0                    NA                 0.2790607    0.1595057   0.3816098
12 months   ki1000109-EE               0                    NA                 0.0631294   -0.1291943   0.2226966
12 months   ki1000304b-SAS-FoodSuppl   0                    NA                 0.1585366   -0.4149209   0.4995758
12 months   ki1017093c-NIH-Crypto      0                    NA                 0.0573260   -0.3353684   0.3345400
12 months   ki1113344-GMS-Nepal        0                    NA                 0.2082067   -0.4870397   0.5783995
12 months   ki1135781-COHORTS          0                    NA                 0.3010880    0.2008323   0.3887666
18 months   ki1000109-EE               0                    NA                 0.0632104   -0.0769496   0.1851292
18 months   ki1000304b-SAS-FoodSuppl   0                    NA                 0.2103408   -0.3874974   0.5505853
18 months   ki1017093b-PROVIDE         0                    NA                 0.0600000   -0.5338939   0.4239497
18 months   ki1017093c-NIH-Crypto      0                    NA                 0.0701085   -0.3157023   0.3427859
18 months   ki1113344-GMS-Nepal        0                    NA                -0.0309071   -0.5429460   0.3112077
24 months   ki1017093b-PROVIDE         0                    NA                 0.1796797   -0.4432652   0.5337479
24 months   ki1017093c-NIH-Crypto      0                    NA                 0.0234563   -0.4162668   0.3266541
24 months   ki1113344-GMS-Nepal        0                    NA                -0.0764184   -0.7995084   0.3561149
24 months   ki1135781-COHORTS          0                    NA                 0.3114183    0.2373936   0.3782576


