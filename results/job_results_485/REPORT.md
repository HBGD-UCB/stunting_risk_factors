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

**Intervention Variable:** gagebrth

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
* agecat: 12 months, studyid: ki1066203-TanzaniaChild2
* agecat: 12 months, studyid: ki1101329-Keneba
* agecat: 12 months, studyid: ki1113344-GMS-Nepal
* agecat: 12 months, studyid: ki1135781-COHORTS
* agecat: 18 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 18 months, studyid: ki1000108-IRC
* agecat: 18 months, studyid: ki1000109-EE
* agecat: 18 months, studyid: ki1066203-TanzaniaChild2
* agecat: 18 months, studyid: ki1101329-Keneba
* agecat: 18 months, studyid: ki1113344-GMS-Nepal
* agecat: 18 months, studyid: ki1135781-COHORTS
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 24 months, studyid: ki1000108-IRC
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2
* agecat: 24 months, studyid: ki1101329-Keneba
* agecat: 24 months, studyid: ki1113344-GMS-Nepal
* agecat: 24 months, studyid: ki1135781-COHORTS
* agecat: 3 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 3 months, studyid: ki1000108-IRC
* agecat: 3 months, studyid: ki1000109-EE
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2
* agecat: 3 months, studyid: ki1101329-Keneba
* agecat: 3 months, studyid: ki1113344-GMS-Nepal
* agecat: 3 months, studyid: ki1135781-COHORTS
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 6 months, studyid: ki1000108-IRC
* agecat: 6 months, studyid: ki1000109-EE
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2
* agecat: 6 months, studyid: ki1101329-Keneba
* agecat: 6 months, studyid: ki1113344-GMS-Nepal
* agecat: 6 months, studyid: ki1135781-COHORTS
* agecat: 9 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 9 months, studyid: ki1000108-IRC
* agecat: 9 months, studyid: ki1000109-EE
* agecat: 9 months, studyid: ki1066203-TanzaniaChild2
* agecat: 9 months, studyid: ki1101329-Keneba
* agecat: 9 months, studyid: ki1113344-GMS-Nepal
* agecat: 9 months, studyid: ki1135781-COHORTS
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002
* agecat: Birth, studyid: ki1000108-IRC
* agecat: Birth, studyid: ki1000109-EE
* agecat: Birth, studyid: ki1101329-Keneba
* agecat: Birth, studyid: ki1135781-COHORTS

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002
* agecat: Birth, studyid: ki1000109-EE
* agecat: 3 months, studyid: ki1000109-EE
* agecat: 3 months, studyid: ki1113344-GMS-Nepal
* agecat: 6 months, studyid: ki1000109-EE
* agecat: 6 months, studyid: ki1113344-GMS-Nepal
* agecat: 9 months, studyid: ki1000109-EE
* agecat: 9 months, studyid: ki1113344-GMS-Nepal
* agecat: 12 months, studyid: ki1000109-EE
* agecat: 12 months, studyid: ki1113344-GMS-Nepal
* agecat: 18 months, studyid: ki1000109-EE
* agecat: 18 months, studyid: ki1113344-GMS-Nepal
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2
* agecat: 24 months, studyid: ki1113344-GMS-Nepal

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness




# Results Detail

## Results Plots
![](/tmp/e03867aa-4a1b-41b8-86e3-fae00db31a37/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/e03867aa-4a1b-41b8-86e3-fae00db31a37/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/e03867aa-4a1b-41b8-86e3-fae00db31a37/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/e03867aa-4a1b-41b8-86e3-fae00db31a37/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Data Summary

agecat      studyid                    A               n     nA   nAY0   nAY1
----------  -------------------------  ----------  -----  -----  -----  -----
Birth       ki1000108-CMC-V-BCS-2002   <=266          90     18     16      2
Birth       ki1000108-CMC-V-BCS-2002   (266-273]      90     15     11      4
Birth       ki1000108-CMC-V-BCS-2002   (273-280]      90     18     14      4
Birth       ki1000108-CMC-V-BCS-2002   >280           90     39     33      6
Birth       ki1000108-IRC              <=266         369     66     54     12
Birth       ki1000108-IRC              (266-273]     369     65     60      5
Birth       ki1000108-IRC              (273-280]     369     71     62      9
Birth       ki1000108-IRC              >280          369    167    149     18
Birth       ki1000109-EE               <=266           2      2      1      1
Birth       ki1000109-EE               (266-273]       2      0      0      0
Birth       ki1000109-EE               (273-280]       2      0      0      0
Birth       ki1000109-EE               >280            2      0      0      0
Birth       ki1066203-TanzaniaChild2   <=266           0      0      0      0
Birth       ki1066203-TanzaniaChild2   (266-273]       0      0      0      0
Birth       ki1066203-TanzaniaChild2   (273-280]       0      0      0      0
Birth       ki1066203-TanzaniaChild2   >280            0      0      0      0
Birth       ki1101329-Keneba           <=266        1515    457    410     47
Birth       ki1101329-Keneba           (266-273]    1515    324    311     13
Birth       ki1101329-Keneba           (273-280]    1515    360    345     15
Birth       ki1101329-Keneba           >280         1515    374    367      7
Birth       ki1113344-GMS-Nepal        <=266           0      0      0      0
Birth       ki1113344-GMS-Nepal        (266-273]       0      0      0      0
Birth       ki1113344-GMS-Nepal        (273-280]       0      0      0      0
Birth       ki1113344-GMS-Nepal        >280            0      0      0      0
Birth       ki1135781-COHORTS          <=266        4607   1857   1649    208
Birth       ki1135781-COHORTS          (266-273]    4607    876    835     41
Birth       ki1135781-COHORTS          (273-280]    4607    926    883     43
Birth       ki1135781-COHORTS          >280         4607    948    919     29
3 months    ki1000108-CMC-V-BCS-2002   <=266         340     75     48     27
3 months    ki1000108-CMC-V-BCS-2002   (266-273]     340     55     39     16
3 months    ki1000108-CMC-V-BCS-2002   (273-280]     340     82     69     13
3 months    ki1000108-CMC-V-BCS-2002   >280          340    128    100     28
3 months    ki1000108-IRC              <=266         387     74     51     23
3 months    ki1000108-IRC              (266-273]     387     66     54     12
3 months    ki1000108-IRC              (273-280]     387     77     61     16
3 months    ki1000108-IRC              >280          387    170    136     34
3 months    ki1000109-EE               <=266         376    299    115    184
3 months    ki1000109-EE               (266-273]     376     52     27     25
3 months    ki1000109-EE               (273-280]     376      8      6      2
3 months    ki1000109-EE               >280          376     17     11      6
3 months    ki1066203-TanzaniaChild2   <=266         540    127    114     13
3 months    ki1066203-TanzaniaChild2   (266-273]     540     87     79      8
3 months    ki1066203-TanzaniaChild2   (273-280]     540     89     84      5
3 months    ki1066203-TanzaniaChild2   >280          540    237    225     12
3 months    ki1101329-Keneba           <=266        1442    437    359     78
3 months    ki1101329-Keneba           (266-273]    1442    305    272     33
3 months    ki1101329-Keneba           (273-280]    1442    348    317     31
3 months    ki1101329-Keneba           >280         1442    352    325     27
3 months    ki1113344-GMS-Nepal        <=266         571      1      0      1
3 months    ki1113344-GMS-Nepal        (266-273]     571    567    484     83
3 months    ki1113344-GMS-Nepal        (273-280]     571      0      0      0
3 months    ki1113344-GMS-Nepal        >280          571      3      3      0
3 months    ki1135781-COHORTS          <=266        4535   1824   1484    340
3 months    ki1135781-COHORTS          (266-273]    4535    865    772     93
3 months    ki1135781-COHORTS          (273-280]    4535    921    825     96
3 months    ki1135781-COHORTS          >280         4535    925    821    104
6 months    ki1000108-CMC-V-BCS-2002   <=266         347     76     48     28
6 months    ki1000108-CMC-V-BCS-2002   (266-273]     347     59     41     18
6 months    ki1000108-CMC-V-BCS-2002   (273-280]     347     83     58     25
6 months    ki1000108-CMC-V-BCS-2002   >280          347    129     99     30
6 months    ki1000108-IRC              <=266         388     73     45     28
6 months    ki1000108-IRC              (266-273]     388     66     53     13
6 months    ki1000108-IRC              (273-280]     388     77     62     15
6 months    ki1000108-IRC              >280          388    172    136     36
6 months    ki1000109-EE               <=266         372    296    133    163
6 months    ki1000109-EE               (266-273]     372     51     30     21
6 months    ki1000109-EE               (273-280]     372      8      5      3
6 months    ki1000109-EE               >280          372     17     11      6
6 months    ki1066203-TanzaniaChild2   <=266         471    114    100     14
6 months    ki1066203-TanzaniaChild2   (266-273]     471     77     72      5
6 months    ki1066203-TanzaniaChild2   (273-280]     471     83     76      7
6 months    ki1066203-TanzaniaChild2   >280          471    197    182     15
6 months    ki1101329-Keneba           <=266        1374    412    337     75
6 months    ki1101329-Keneba           (266-273]    1374    304    273     31
6 months    ki1101329-Keneba           (273-280]    1374    324    283     41
6 months    ki1101329-Keneba           >280         1374    334    300     34
6 months    ki1113344-GMS-Nepal        <=266         563      1      0      1
6 months    ki1113344-GMS-Nepal        (266-273]     563    558    441    117
6 months    ki1113344-GMS-Nepal        (273-280]     563      0      0      0
6 months    ki1113344-GMS-Nepal        >280          563      4      3      1
6 months    ki1135781-COHORTS          <=266        4346   1742   1271    471
6 months    ki1135781-COHORTS          (266-273]    4346    834    683    151
6 months    ki1135781-COHORTS          (273-280]    4346    871    722    149
6 months    ki1135781-COHORTS          >280         4346    899    722    177
9 months    ki1000108-CMC-V-BCS-2002   <=266         344     75     47     28
9 months    ki1000108-CMC-V-BCS-2002   (266-273]     344     58     38     20
9 months    ki1000108-CMC-V-BCS-2002   (273-280]     344     81     49     32
9 months    ki1000108-CMC-V-BCS-2002   >280          344    130     88     42
9 months    ki1000108-IRC              <=266         388     73     44     29
9 months    ki1000108-IRC              (266-273]     388     66     51     15
9 months    ki1000108-IRC              (273-280]     388     77     56     21
9 months    ki1000108-IRC              >280          388    172    132     40
9 months    ki1000109-EE               <=266         366    292    108    184
9 months    ki1000109-EE               (266-273]     366     50     26     24
9 months    ki1000109-EE               (273-280]     366      8      5      3
9 months    ki1000109-EE               >280          366     16     10      6
9 months    ki1066203-TanzaniaChild2   <=266         408    100     82     18
9 months    ki1066203-TanzaniaChild2   (266-273]     408     64     54     10
9 months    ki1066203-TanzaniaChild2   (273-280]     408     72     60     12
9 months    ki1066203-TanzaniaChild2   >280          408    172    154     18
9 months    ki1101329-Keneba           <=266        1377    403    312     91
9 months    ki1101329-Keneba           (266-273]    1377    296    250     46
9 months    ki1101329-Keneba           (273-280]    1377    337    283     54
9 months    ki1101329-Keneba           >280         1377    341    287     54
9 months    ki1113344-GMS-Nepal        <=266         551      1      0      1
9 months    ki1113344-GMS-Nepal        (266-273]     551    546    393    153
9 months    ki1113344-GMS-Nepal        (273-280]     551      0      0      0
9 months    ki1113344-GMS-Nepal        >280          551      4      3      1
9 months    ki1135781-COHORTS          <=266        4217   1696   1131    565
9 months    ki1135781-COHORTS          (266-273]    4217    802    605    197
9 months    ki1135781-COHORTS          (273-280]    4217    861    648    213
9 months    ki1135781-COHORTS          >280         4217    858    608    250
12 months   ki1000108-CMC-V-BCS-2002   <=266         346     75     41     34
12 months   ki1000108-CMC-V-BCS-2002   (266-273]     346     59     30     29
12 months   ki1000108-CMC-V-BCS-2002   (273-280]     346     83     37     46
12 months   ki1000108-CMC-V-BCS-2002   >280          346    129     70     59
12 months   ki1000108-IRC              <=266         386     73     43     30
12 months   ki1000108-IRC              (266-273]     386     66     49     17
12 months   ki1000108-IRC              (273-280]     386     76     56     20
12 months   ki1000108-IRC              >280          386    171    127     44
12 months   ki1000109-EE               <=266         357    285     74    211
12 months   ki1000109-EE               (266-273]     357     48     20     28
12 months   ki1000109-EE               (273-280]     357      7      2      5
12 months   ki1000109-EE               >280          357     17      6     11
12 months   ki1066203-TanzaniaChild2   <=266         334     81     67     14
12 months   ki1066203-TanzaniaChild2   (266-273]     334     49     39     10
12 months   ki1066203-TanzaniaChild2   (273-280]     334     61     54      7
12 months   ki1066203-TanzaniaChild2   >280          334    143    125     18
12 months   ki1101329-Keneba           <=266        1300    396    279    117
12 months   ki1101329-Keneba           (266-273]    1300    274    214     60
12 months   ki1101329-Keneba           (273-280]    1300    315    243     72
12 months   ki1101329-Keneba           >280         1300    315    243     72
12 months   ki1113344-GMS-Nepal        <=266         558      1      1      0
12 months   ki1113344-GMS-Nepal        (266-273]     558    553    363    190
12 months   ki1113344-GMS-Nepal        (273-280]     558      0      0      0
12 months   ki1113344-GMS-Nepal        >280          558      4      3      1
12 months   ki1135781-COHORTS          <=266        4037   1624    927    697
12 months   ki1135781-COHORTS          (266-273]    4037    760    471    289
12 months   ki1135781-COHORTS          (273-280]    4037    831    536    295
12 months   ki1135781-COHORTS          >280         4037    822    509    313
18 months   ki1000108-CMC-V-BCS-2002   <=266         347     74     23     51
18 months   ki1000108-CMC-V-BCS-2002   (266-273]     347     60     22     38
18 months   ki1000108-CMC-V-BCS-2002   (273-280]     347     84     27     57
18 months   ki1000108-CMC-V-BCS-2002   >280          347    129     38     91
18 months   ki1000108-IRC              <=266         386     72     32     40
18 months   ki1000108-IRC              (266-273]     386     66     44     22
18 months   ki1000108-IRC              (273-280]     386     76     54     22
18 months   ki1000108-IRC              >280          386    172    119     53
18 months   ki1000109-EE               <=266         350    281     37    244
18 months   ki1000109-EE               (266-273]     350     46     12     34
18 months   ki1000109-EE               (273-280]     350      7      1      6
18 months   ki1000109-EE               >280          350     16      3     13
18 months   ki1066203-TanzaniaChild2   <=266         242     60     43     17
18 months   ki1066203-TanzaniaChild2   (266-273]     242     41     33      8
18 months   ki1066203-TanzaniaChild2   (273-280]     242     43     30     13
18 months   ki1066203-TanzaniaChild2   >280          242     98     73     25
18 months   ki1101329-Keneba           <=266        1301    384    236    148
18 months   ki1101329-Keneba           (266-273]    1301    288    213     75
18 months   ki1101329-Keneba           (273-280]    1301    312    212    100
18 months   ki1101329-Keneba           >280         1301    317    216    101
18 months   ki1113344-GMS-Nepal        <=266         550      1      1      0
18 months   ki1113344-GMS-Nepal        (266-273]     550    545    255    290
18 months   ki1113344-GMS-Nepal        (273-280]     550      0      0      0
18 months   ki1113344-GMS-Nepal        >280          550      4      2      2
18 months   ki1135781-COHORTS          <=266        2770   1142    397    745
18 months   ki1135781-COHORTS          (266-273]    2770    517    221    296
18 months   ki1135781-COHORTS          (273-280]    2770    567    226    341
18 months   ki1135781-COHORTS          >280         2770    544    222    322
24 months   ki1000108-CMC-V-BCS-2002   <=266         350     76     21     55
24 months   ki1000108-CMC-V-BCS-2002   (266-273]     350     60     10     50
24 months   ki1000108-CMC-V-BCS-2002   (273-280]     350     84     26     58
24 months   ki1000108-CMC-V-BCS-2002   >280          350    130     44     86
24 months   ki1000108-IRC              <=266         390     74     33     41
24 months   ki1000108-IRC              (266-273]     390     66     41     25
24 months   ki1000108-IRC              (273-280]     390     77     50     27
24 months   ki1000108-IRC              >280          390    173    104     69
24 months   ki1000109-EE               <=266           0      0      0      0
24 months   ki1000109-EE               (266-273]       0      0      0      0
24 months   ki1000109-EE               (273-280]       0      0      0      0
24 months   ki1000109-EE               >280            0      0      0      0
24 months   ki1066203-TanzaniaChild2   <=266           2      1      1      0
24 months   ki1066203-TanzaniaChild2   (266-273]       2      0      0      0
24 months   ki1066203-TanzaniaChild2   (273-280]       2      0      0      0
24 months   ki1066203-TanzaniaChild2   >280            2      1      1      0
24 months   ki1101329-Keneba           <=266        1156    347    228    119
24 months   ki1101329-Keneba           (266-273]    1156    252    169     83
24 months   ki1101329-Keneba           (273-280]    1156    285    182    103
24 months   ki1101329-Keneba           >280         1156    272    193     79
24 months   ki1113344-GMS-Nepal        <=266         499      0      0      0
24 months   ki1113344-GMS-Nepal        (266-273]     499    496    273    223
24 months   ki1113344-GMS-Nepal        (273-280]     499      0      0      0
24 months   ki1113344-GMS-Nepal        >280          499      3      3      0
24 months   ki1135781-COHORTS          <=266        4052   1615    617    998
24 months   ki1135781-COHORTS          (266-273]    4052    772    335    437
24 months   ki1135781-COHORTS          (273-280]    4052    825    369    456
24 months   ki1135781-COHORTS          >280         4052    840    362    478

## Results Table

### Parameter: TSM


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              <=266                NA                0.1818182   0.0886411   0.2749952
Birth       ki1000108-IRC              (266-273]            NA                0.0769231   0.0120555   0.1417907
Birth       ki1000108-IRC              (273-280]            NA                0.1267606   0.0492668   0.2042544
Birth       ki1000108-IRC              >280                 NA                0.1077844   0.0606876   0.1548813
Birth       ki1101329-Keneba           <=266                NA                0.1028446   0.0749861   0.1307032
Birth       ki1101329-Keneba           (266-273]            NA                0.0401235   0.0187475   0.0614994
Birth       ki1101329-Keneba           (273-280]            NA                0.0416667   0.0210180   0.0623154
Birth       ki1101329-Keneba           >280                 NA                0.0187166   0.0049772   0.0324559
Birth       ki1135781-COHORTS          <=266                NA                0.1120086   0.0976630   0.1263542
Birth       ki1135781-COHORTS          (266-273]            NA                0.0468037   0.0328151   0.0607923
Birth       ki1135781-COHORTS          (273-280]            NA                0.0464363   0.0328815   0.0599911
Birth       ki1135781-COHORTS          >280                 NA                0.0305907   0.0196275   0.0415540
3 months    ki1000108-CMC-V-BCS-2002   <=266                NA                0.3600000   0.2512077   0.4687923
3 months    ki1000108-CMC-V-BCS-2002   (266-273]            NA                0.2909091   0.1707004   0.4111178
3 months    ki1000108-CMC-V-BCS-2002   (273-280]            NA                0.1585366   0.0793661   0.2377070
3 months    ki1000108-CMC-V-BCS-2002   >280                 NA                0.2187500   0.1470281   0.2904719
3 months    ki1000108-IRC              <=266                NA                0.3108108   0.2052236   0.4163980
3 months    ki1000108-IRC              (266-273]            NA                0.1818182   0.0886470   0.2749893
3 months    ki1000108-IRC              (273-280]            NA                0.2077922   0.1170522   0.2985322
3 months    ki1000108-IRC              >280                 NA                0.2000000   0.1397932   0.2602068
3 months    ki1066203-TanzaniaChild2   <=266                NA                0.1023622   0.0495944   0.1551300
3 months    ki1066203-TanzaniaChild2   (266-273]            NA                0.0919540   0.0311783   0.1527298
3 months    ki1066203-TanzaniaChild2   (273-280]            NA                0.0561798   0.0082958   0.1040638
3 months    ki1066203-TanzaniaChild2   >280                 NA                0.0506329   0.0226940   0.0785719
3 months    ki1101329-Keneba           <=266                NA                0.1784897   0.1425751   0.2144043
3 months    ki1101329-Keneba           (266-273]            NA                0.1081967   0.0733236   0.1430698
3 months    ki1101329-Keneba           (273-280]            NA                0.0890805   0.0591412   0.1190197
3 months    ki1101329-Keneba           >280                 NA                0.0767045   0.0488941   0.1045150
3 months    ki1135781-COHORTS          <=266                NA                0.1864035   0.1685298   0.2042772
3 months    ki1135781-COHORTS          (266-273]            NA                0.1075145   0.0868691   0.1281598
3 months    ki1135781-COHORTS          (273-280]            NA                0.1042345   0.0844981   0.1239710
3 months    ki1135781-COHORTS          >280                 NA                0.1124324   0.0920727   0.1327921
6 months    ki1000108-CMC-V-BCS-2002   <=266                NA                0.3684211   0.2598150   0.4770271
6 months    ki1000108-CMC-V-BCS-2002   (266-273]            NA                0.3050847   0.1874258   0.4227437
6 months    ki1000108-CMC-V-BCS-2002   (273-280]            NA                0.3012048   0.2023628   0.4000468
6 months    ki1000108-CMC-V-BCS-2002   >280                 NA                0.2325581   0.1595505   0.3055658
6 months    ki1000108-IRC              <=266                NA                0.3835616   0.2718729   0.4952504
6 months    ki1000108-IRC              (266-273]            NA                0.1969697   0.1008965   0.2930429
6 months    ki1000108-IRC              (273-280]            NA                0.1948052   0.1062296   0.2833807
6 months    ki1000108-IRC              >280                 NA                0.2093023   0.1484277   0.2701770
6 months    ki1066203-TanzaniaChild2   <=266                NA                0.1228070   0.0624933   0.1831208
6 months    ki1066203-TanzaniaChild2   (266-273]            NA                0.0649351   0.0098385   0.1200317
6 months    ki1066203-TanzaniaChild2   (273-280]            NA                0.0843373   0.0244895   0.1441852
6 months    ki1066203-TanzaniaChild2   >280                 NA                0.0761421   0.0390662   0.1132180
6 months    ki1101329-Keneba           <=266                NA                0.1820388   0.1447648   0.2193128
6 months    ki1101329-Keneba           (266-273]            NA                0.1019737   0.0679440   0.1360034
6 months    ki1101329-Keneba           (273-280]            NA                0.1265432   0.0903294   0.1627570
6 months    ki1101329-Keneba           >280                 NA                0.1017964   0.0693560   0.1342368
6 months    ki1135781-COHORTS          <=266                NA                0.2703789   0.2495191   0.2912386
6 months    ki1135781-COHORTS          (266-273]            NA                0.1810552   0.1549186   0.2071917
6 months    ki1135781-COHORTS          (273-280]            NA                0.1710677   0.1460567   0.1960788
6 months    ki1135781-COHORTS          >280                 NA                0.1968854   0.1708890   0.2228819
9 months    ki1000108-CMC-V-BCS-2002   <=266                NA                0.3733333   0.2637066   0.4829600
9 months    ki1000108-CMC-V-BCS-2002   (266-273]            NA                0.3448276   0.2223251   0.4673301
9 months    ki1000108-CMC-V-BCS-2002   (273-280]            NA                0.3950617   0.2884449   0.5016786
9 months    ki1000108-CMC-V-BCS-2002   >280                 NA                0.3230769   0.2425704   0.4035835
9 months    ki1000108-IRC              <=266                NA                0.3972603   0.2848646   0.5096559
9 months    ki1000108-IRC              (266-273]            NA                0.2272727   0.1260395   0.3285060
9 months    ki1000108-IRC              (273-280]            NA                0.2727273   0.1731234   0.3723311
9 months    ki1000108-IRC              >280                 NA                0.2325581   0.1693413   0.2957750
9 months    ki1066203-TanzaniaChild2   <=266                NA                0.1800000   0.1046082   0.2553918
9 months    ki1066203-TanzaniaChild2   (266-273]            NA                0.1562500   0.0671848   0.2453152
9 months    ki1066203-TanzaniaChild2   (273-280]            NA                0.1666667   0.0804783   0.2528550
9 months    ki1066203-TanzaniaChild2   >280                 NA                0.1046512   0.0588491   0.1504532
9 months    ki1101329-Keneba           <=266                NA                0.2258065   0.1849702   0.2666427
9 months    ki1101329-Keneba           (266-273]            NA                0.1554054   0.1141180   0.1966928
9 months    ki1101329-Keneba           (273-280]            NA                0.1602374   0.1210586   0.1994162
9 months    ki1101329-Keneba           >280                 NA                0.1583578   0.1195952   0.1971203
9 months    ki1135781-COHORTS          <=266                NA                0.3331368   0.3107023   0.3555713
9 months    ki1135781-COHORTS          (266-273]            NA                0.2456359   0.2158405   0.2754313
9 months    ki1135781-COHORTS          (273-280]            NA                0.2473868   0.2185616   0.2762119
9 months    ki1135781-COHORTS          >280                 NA                0.2913753   0.2609671   0.3217835
12 months   ki1000108-CMC-V-BCS-2002   <=266                NA                0.4533333   0.3405055   0.5661611
12 months   ki1000108-CMC-V-BCS-2002   (266-273]            NA                0.4915254   0.3637762   0.6192746
12 months   ki1000108-CMC-V-BCS-2002   (273-280]            NA                0.5542169   0.4471293   0.6613045
12 months   ki1000108-CMC-V-BCS-2002   >280                 NA                0.4573643   0.3712715   0.5434572
12 months   ki1000108-IRC              <=266                NA                0.4109589   0.2979476   0.5239702
12 months   ki1000108-IRC              (266-273]            NA                0.2575758   0.1519383   0.3632132
12 months   ki1000108-IRC              (273-280]            NA                0.2631579   0.1640291   0.3622867
12 months   ki1000108-IRC              >280                 NA                0.2573099   0.1917037   0.3229162
12 months   ki1066203-TanzaniaChild2   <=266                NA                0.1728395   0.0903739   0.2553052
12 months   ki1066203-TanzaniaChild2   (266-273]            NA                0.2040816   0.0910663   0.3170970
12 months   ki1066203-TanzaniaChild2   (273-280]            NA                0.1147541   0.0346508   0.1948574
12 months   ki1066203-TanzaniaChild2   >280                 NA                0.1258741   0.0714256   0.1803227
12 months   ki1101329-Keneba           <=266                NA                0.2954545   0.2505006   0.3404085
12 months   ki1101329-Keneba           (266-273]            NA                0.2189781   0.1699921   0.2679641
12 months   ki1101329-Keneba           (273-280]            NA                0.2285714   0.1821820   0.2749608
12 months   ki1101329-Keneba           >280                 NA                0.2285714   0.1821820   0.2749608
12 months   ki1135781-COHORTS          <=266                NA                0.4291872   0.4051115   0.4532629
12 months   ki1135781-COHORTS          (266-273]            NA                0.3802632   0.3457455   0.4147808
12 months   ki1135781-COHORTS          (273-280]            NA                0.3549940   0.3224558   0.3875322
12 months   ki1135781-COHORTS          >280                 NA                0.3807786   0.3475796   0.4139776
18 months   ki1000108-CMC-V-BCS-2002   <=266                NA                0.6891892   0.5835862   0.7947922
18 months   ki1000108-CMC-V-BCS-2002   (266-273]            NA                0.6333333   0.5112234   0.7554433
18 months   ki1000108-CMC-V-BCS-2002   (273-280]            NA                0.6785714   0.5785541   0.7785887
18 months   ki1000108-CMC-V-BCS-2002   >280                 NA                0.7054264   0.6266488   0.7842039
18 months   ki1000108-IRC              <=266                NA                0.5555556   0.4406297   0.6704814
18 months   ki1000108-IRC              (266-273]            NA                0.3333333   0.2194571   0.4472096
18 months   ki1000108-IRC              (273-280]            NA                0.2894737   0.1873799   0.3915674
18 months   ki1000108-IRC              >280                 NA                0.3081395   0.2390472   0.3772319
18 months   ki1066203-TanzaniaChild2   <=266                NA                0.2833333   0.1690773   0.3975893
18 months   ki1066203-TanzaniaChild2   (266-273]            NA                0.1951220   0.0735668   0.3166771
18 months   ki1066203-TanzaniaChild2   (273-280]            NA                0.3023256   0.1647704   0.4398807
18 months   ki1066203-TanzaniaChild2   >280                 NA                0.2551020   0.1686173   0.3415868
18 months   ki1101329-Keneba           <=266                NA                0.3854167   0.3367193   0.4341140
18 months   ki1101329-Keneba           (266-273]            NA                0.2604167   0.2097121   0.3111212
18 months   ki1101329-Keneba           (273-280]            NA                0.3205128   0.2687103   0.3723154
18 months   ki1101329-Keneba           >280                 NA                0.3186120   0.2673006   0.3699234
18 months   ki1135781-COHORTS          <=266                NA                0.6523643   0.6247394   0.6799892
18 months   ki1135781-COHORTS          (266-273]            NA                0.5725338   0.5298825   0.6151852
18 months   ki1135781-COHORTS          (273-280]            NA                0.6014109   0.5611037   0.6417182
18 months   ki1135781-COHORTS          >280                 NA                0.5919118   0.5506039   0.6332196
24 months   ki1000108-CMC-V-BCS-2002   <=266                NA                0.7236842   0.6230050   0.8243635
24 months   ki1000108-CMC-V-BCS-2002   (266-273]            NA                0.8333333   0.7388995   0.9277671
24 months   ki1000108-CMC-V-BCS-2002   (273-280]            NA                0.6904762   0.5914726   0.7894798
24 months   ki1000108-CMC-V-BCS-2002   >280                 NA                0.6615385   0.5800812   0.7429957
24 months   ki1000108-IRC              <=266                NA                0.5540541   0.4406557   0.6674525
24 months   ki1000108-IRC              (266-273]            NA                0.3787879   0.2616084   0.4959674
24 months   ki1000108-IRC              (273-280]            NA                0.3506494   0.2439317   0.4573670
24 months   ki1000108-IRC              >280                 NA                0.3988439   0.3257843   0.4719036
24 months   ki1101329-Keneba           <=266                NA                0.3429395   0.2929725   0.3929064
24 months   ki1101329-Keneba           (266-273]            NA                0.3293651   0.2713130   0.3874171
24 months   ki1101329-Keneba           (273-280]            NA                0.3614035   0.3056049   0.4172021
24 months   ki1101329-Keneba           >280                 NA                0.2904412   0.2364684   0.3444140
24 months   ki1135781-COHORTS          <=266                NA                0.6179567   0.5942565   0.6416568
24 months   ki1135781-COHORTS          (266-273]            NA                0.5660622   0.5310967   0.6010276
24 months   ki1135781-COHORTS          (273-280]            NA                0.5527273   0.5187947   0.5866598
24 months   ki1135781-COHORTS          >280                 NA                0.5690476   0.5355549   0.6025404


### Parameter: E(Y)


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              NA                   NA                0.1192412   0.1158740   0.1226084
Birth       ki1101329-Keneba           NA                   NA                0.0541254   0.0524515   0.0557993
Birth       ki1135781-COHORTS          NA                   NA                0.0696766   0.0686577   0.0706955
3 months    ki1000108-CMC-V-BCS-2002   NA                   NA                0.2470588   0.2392971   0.2548205
3 months    ki1000108-IRC              NA                   NA                0.2196382   0.2151427   0.2241338
3 months    ki1066203-TanzaniaChild2   NA                   NA                0.0703704   0.0684454   0.0722953
3 months    ki1101329-Keneba           NA                   NA                0.1171983   0.1150405   0.1193562
3 months    ki1135781-COHORTS          NA                   NA                0.1395810   0.1384605   0.1407016
6 months    ki1000108-CMC-V-BCS-2002   NA                   NA                0.2910663   0.2856512   0.2964814
6 months    ki1000108-IRC              NA                   NA                0.2371134   0.2300633   0.2441635
6 months    ki1066203-TanzaniaChild2   NA                   NA                0.0870488   0.0851514   0.0889462
6 months    ki1101329-Keneba           NA                   NA                0.1317322   0.1299160   0.1335484
6 months    ki1135781-COHORTS          NA                   NA                0.2181316   0.2168372   0.2194261
9 months    ki1000108-CMC-V-BCS-2002   NA                   NA                0.3546512   0.3515592   0.3577431
9 months    ki1000108-IRC              NA                   NA                0.2706186   0.2643330   0.2769041
9 months    ki1066203-TanzaniaChild2   NA                   NA                0.1421569   0.1389624   0.1453513
9 months    ki1101329-Keneba           NA                   NA                0.1779230   0.1762933   0.1795527
9 months    ki1135781-COHORTS          NA                   NA                0.2904909   0.2893243   0.2916574
12 months   ki1000108-CMC-V-BCS-2002   NA                   NA                0.4855491   0.4812520   0.4898462
12 months   ki1000108-IRC              NA                   NA                0.2875648   0.2816081   0.2935215
12 months   ki1066203-TanzaniaChild2   NA                   NA                0.1467066   0.1432749   0.1501382
12 months   ki1101329-Keneba           NA                   NA                0.2469231   0.2451649   0.2486812
12 months   ki1135781-COHORTS          NA                   NA                0.3948477   0.3939316   0.3957637
18 months   ki1000108-CMC-V-BCS-2002   NA                   NA                0.6829971   0.6803599   0.6856343
18 months   ki1000108-IRC              NA                   NA                0.3549223   0.3452342   0.3646104
18 months   ki1066203-TanzaniaChild2   NA                   NA                0.2603306   0.2560010   0.2646602
18 months   ki1101329-Keneba           NA                   NA                0.3259032   0.3234632   0.3283431
18 months   ki1135781-COHORTS          NA                   NA                0.6151625   0.6139529   0.6163720
24 months   ki1000108-CMC-V-BCS-2002   NA                   NA                0.7114286   0.7051249   0.7177322
24 months   ki1000108-IRC              NA                   NA                0.4153846   0.4084826   0.4222867
24 months   ki1101329-Keneba           NA                   NA                0.3321799   0.3307018   0.3336581
24 months   ki1135781-COHORTS          NA                   NA                0.5846496   0.5837973   0.5855018


### Parameter: RR


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              (266-273]            <=266             0.4230769   0.1577114   1.1349470
Birth       ki1000108-IRC              (273-280]            <=266             0.6971831   0.3139779   1.5480843
Birth       ki1000108-IRC              >280                 <=266             0.5928144   0.3022982   1.1625240
Birth       ki1101329-Keneba           (266-273]            <=266             0.3901366   0.2146120   0.7092173
Birth       ki1101329-Keneba           (273-280]            <=266             0.4051418   0.2303196   0.7126615
Birth       ki1101329-Keneba           >280                 <=266             0.1819889   0.0832200   0.3979805
Birth       ki1135781-COHORTS          (266-273]            <=266             0.4178576   0.3018640   0.5784227
Birth       ki1135781-COHORTS          (273-280]            <=266             0.4145778   0.3014179   0.5702207
Birth       ki1135781-COHORTS          >280                 <=266             0.2731104   0.1866608   0.3995979
3 months    ki1000108-CMC-V-BCS-2002   (266-273]            <=266             0.8080808   0.4843125   1.3482919
3 months    ki1000108-CMC-V-BCS-2002   (273-280]            <=266             0.4403794   0.2456565   0.7894521
3 months    ki1000108-CMC-V-BCS-2002   >280                 <=266             0.6076389   0.3890402   0.9490665
3 months    ki1000108-IRC              (266-273]            <=266             0.5849802   0.3163214   1.0818170
3 months    ki1000108-IRC              (273-280]            <=266             0.6685488   0.3844621   1.1625531
3 months    ki1000108-IRC              >280                 <=266             0.6434783   0.4087016   1.0131214
3 months    ki1066203-TanzaniaChild2   (266-273]            <=266             0.8983201   0.3885132   2.0770951
3 months    ki1066203-TanzaniaChild2   (273-280]            <=266             0.5488332   0.2026933   1.4860768
3 months    ki1066203-TanzaniaChild2   >280                 <=266             0.4946446   0.2324585   1.0525460
3 months    ki1101329-Keneba           (266-273]            <=266             0.6061791   0.4145578   0.8863736
3 months    ki1101329-Keneba           (273-280]            <=266             0.4990790   0.3373241   0.7383992
3 months    ki1101329-Keneba           >280                 <=266             0.4297421   0.2838731   0.6505663
3 months    ki1135781-COHORTS          (266-273]            <=266             0.5767834   0.4653703   0.7148697
3 months    ki1135781-COHORTS          (273-280]            <=266             0.5591876   0.4522537   0.6914056
3 months    ki1135781-COHORTS          >280                 <=266             0.6031669   0.4914153   0.7403317
6 months    ki1000108-CMC-V-BCS-2002   (266-273]            <=266             0.8280872   0.5096364   1.3455246
6 months    ki1000108-CMC-V-BCS-2002   (273-280]            <=266             0.8175559   0.5259470   1.2708462
6 months    ki1000108-CMC-V-BCS-2002   >280                 <=266             0.6312292   0.4103562   0.9709865
6 months    ki1000108-IRC              (266-273]            <=266             0.5135281   0.2909760   0.9062987
6 months    ki1000108-IRC              (273-280]            <=266             0.5078850   0.2959878   0.8714790
6 months    ki1000108-IRC              >280                 <=266             0.5456811   0.3615768   0.8235259
6 months    ki1066203-TanzaniaChild2   (266-273]            <=266             0.5287570   0.1983738   1.4093790
6 months    ki1066203-TanzaniaChild2   (273-280]            <=266             0.6867470   0.2897344   1.6277717
6 months    ki1066203-TanzaniaChild2   >280                 <=266             0.6200145   0.3104883   1.2381078
6 months    ki1101329-Keneba           (266-273]            <=266             0.5601754   0.3786942   0.8286278
6 months    ki1101329-Keneba           (273-280]            <=266             0.6951440   0.4889370   0.9883181
6 months    ki1101329-Keneba           >280                 <=266             0.5592016   0.3828790   0.8167239
6 months    ki1135781-COHORTS          (266-273]            <=266             0.6696350   0.5685295   0.7887207
6 months    ki1135781-COHORTS          (273-280]            <=266             0.6326964   0.5362916   0.7464311
6 months    ki1135781-COHORTS          >280                 <=266             0.7281835   0.6249223   0.8485073
9 months    ki1000108-CMC-V-BCS-2002   (266-273]            <=266             0.9236453   0.5825544   1.4644481
9 months    ki1000108-CMC-V-BCS-2002   (273-280]            <=266             1.0582011   0.7101703   1.5767901
9 months    ki1000108-CMC-V-BCS-2002   >280                 <=266             0.8653846   0.5887787   1.2719390
9 months    ki1000108-IRC              (266-273]            <=266             0.5721003   0.3375213   0.9697131
9 months    ki1000108-IRC              (273-280]            <=266             0.6865204   0.4325302   1.0896585
9 months    ki1000108-IRC              >280                 <=266             0.5854050   0.3954211   0.8666684
9 months    ki1066203-TanzaniaChild2   (266-273]            <=266             0.8680556   0.4279054   1.7609512
9 months    ki1066203-TanzaniaChild2   (273-280]            <=266             0.9259259   0.4759544   1.8013045
9 months    ki1066203-TanzaniaChild2   >280                 <=266             0.5813954   0.3172349   1.0655212
9 months    ki1101329-Keneba           (266-273]            <=266             0.6882239   0.4990611   0.9490865
9 months    ki1101329-Keneba           (273-280]            <=266             0.7096227   0.5235409   0.9618436
9 months    ki1101329-Keneba           >280                 <=266             0.7012987   0.5172858   0.9507700
9 months    ki1135781-COHORTS          (266-273]            <=266             0.7373425   0.6418235   0.8470770
9 months    ki1135781-COHORTS          (273-280]            <=266             0.7425981   0.6490925   0.8495738
9 months    ki1135781-COHORTS          >280                 <=266             0.8746416   0.7724842   0.9903088
12 months   ki1000108-CMC-V-BCS-2002   (266-273]            <=266             1.0842473   0.7565655   1.5538536
12 months   ki1000108-CMC-V-BCS-2002   (273-280]            <=266             1.2225372   0.8921177   1.6753363
12 months   ki1000108-CMC-V-BCS-2002   >280                 <=266             1.0088919   0.7384515   1.3783749
12 months   ki1000108-IRC              (266-273]            <=266             0.6267677   0.3825245   1.0269609
12 months   ki1000108-IRC              (273-280]            <=266             0.6403509   0.4016694   1.0208627
12 months   ki1000108-IRC              >280                 <=266             0.6261209   0.4303225   0.9110083
12 months   ki1066203-TanzaniaChild2   (266-273]            <=266             1.1807580   0.5684678   2.4525389
12 months   ki1066203-TanzaniaChild2   (273-280]            <=266             0.6639344   0.2850486   1.5464340
12 months   ki1066203-TanzaniaChild2   >280                 <=266             0.7282717   0.3824729   1.3867120
12 months   ki1101329-Keneba           (266-273]            <=266             0.7411567   0.5654772   0.9714153
12 months   ki1101329-Keneba           (273-280]            <=266             0.7736264   0.6003034   0.9969922
12 months   ki1101329-Keneba           >280                 <=266             0.7736264   0.6003034   0.9969922
12 months   ki1135781-COHORTS          (266-273]            <=266             0.8860077   0.7963335   0.9857800
12 months   ki1135781-COHORTS          (273-280]            <=266             0.8271309   0.7428552   0.9209675
12 months   ki1135781-COHORTS          >280                 <=266             0.8872086   0.7998353   0.9841266
18 months   ki1000108-CMC-V-BCS-2002   (266-273]            <=266             0.9189542   0.7183514   1.1755764
18 months   ki1000108-CMC-V-BCS-2002   (273-280]            <=266             0.9845938   0.7960146   1.2178484
18 months   ki1000108-CMC-V-BCS-2002   >280                 <=266             1.0235598   0.8467771   1.2372496
18 months   ki1000108-IRC              (266-273]            <=266             0.6000000   0.4024417   0.8945395
18 months   ki1000108-IRC              (273-280]            <=266             0.5210526   0.3461845   0.7842519
18 months   ki1000108-IRC              >280                 <=266             0.5546512   0.4088160   0.7525095
18 months   ki1066203-TanzaniaChild2   (266-273]            <=266             0.6886657   0.3278837   1.4464287
18 months   ki1066203-TanzaniaChild2   (273-280]            <=266             1.0670315   0.5809485   1.9598227
18 months   ki1066203-TanzaniaChild2   >280                 <=266             0.9003601   0.5316387   1.5248106
18 months   ki1101329-Keneba           (266-273]            <=266             0.6756757   0.5357162   0.8522006
18 months   ki1101329-Keneba           (273-280]            <=266             0.8316008   0.6773597   1.0209641
18 months   ki1101329-Keneba           >280                 <=266             0.8266689   0.6736487   1.0144480
18 months   ki1135781-COHORTS          (266-273]            <=266             0.8776291   0.8055570   0.9561493
18 months   ki1135781-COHORTS          (273-280]            <=266             0.9218943   0.8516304   0.9979555
18 months   ki1135781-COHORTS          >280                 <=266             0.9073332   0.8362102   0.9845055
24 months   ki1000108-CMC-V-BCS-2002   (266-273]            <=266             1.1515152   0.9623722   1.3778319
24 months   ki1000108-CMC-V-BCS-2002   (273-280]            <=266             0.9541126   0.7813301   1.1651040
24 months   ki1000108-CMC-V-BCS-2002   >280                 <=266             0.9141259   0.7591374   1.1007574
24 months   ki1000108-IRC              (266-273]            <=266             0.6836659   0.4717921   0.9906886
24 months   ki1000108-IRC              (273-280]            <=266             0.6328793   0.4385691   0.9132796
24 months   ki1000108-IRC              >280                 <=266             0.7198647   0.5469689   0.9474124
24 months   ki1101329-Keneba           (266-273]            <=266             0.9604175   0.7640917   1.2071873
24 months   ki1101329-Keneba           (273-280]            <=266             1.0538405   0.8522735   1.3030791
24 months   ki1101329-Keneba           >280                 <=266             0.8469167   0.6687850   1.0724940
24 months   ki1135781-COHORTS          (266-273]            <=266             0.9160225   0.8517843   0.9851052
24 months   ki1135781-COHORTS          (273-280]            <=266             0.8944434   0.8319858   0.9615898
24 months   ki1135781-COHORTS          >280                 <=266             0.9208536   0.8583832   0.9878704


### Parameter: PAR


agecat      studyid                    intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              <=266                NA                -0.0625770   -0.1558149    0.0306609
Birth       ki1101329-Keneba           <=266                NA                -0.0487192   -0.0766280   -0.0208105
Birth       ki1135781-COHORTS          <=266                NA                -0.0423320   -0.0567138   -0.0279503
3 months    ki1000108-CMC-V-BCS-2002   <=266                NA                -0.1129412   -0.2220100   -0.0038723
3 months    ki1000108-IRC              <=266                NA                -0.0911726   -0.1968554    0.0145103
3 months    ki1066203-TanzaniaChild2   <=266                NA                -0.0319918   -0.0847947    0.0208111
3 months    ki1101329-Keneba           <=266                NA                -0.0612914   -0.0972707   -0.0253120
3 months    ki1135781-COHORTS          <=266                NA                -0.0468225   -0.0647313   -0.0289137
6 months    ki1000108-CMC-V-BCS-2002   <=266                NA                -0.0773548   -0.1860957    0.0313862
6 months    ki1000108-IRC              <=266                NA                -0.1464482   -0.2583593   -0.0345372
6 months    ki1066203-TanzaniaChild2   <=266                NA                -0.0357582   -0.0961018    0.0245854
6 months    ki1101329-Keneba           <=266                NA                -0.0503067   -0.0876249   -0.0129884
6 months    ki1135781-COHORTS          <=266                NA                -0.0522473   -0.0731471   -0.0313474
9 months    ki1000108-CMC-V-BCS-2002   <=266                NA                -0.0186822   -0.1283525    0.0909881
9 months    ki1000108-IRC              <=266                NA                -0.1266417   -0.2392130   -0.0140704
9 months    ki1066203-TanzaniaChild2   <=266                NA                -0.0378431   -0.1133026    0.0376163
9 months    ki1101329-Keneba           <=266                NA                -0.0478834   -0.0887522   -0.0070146
9 months    ki1135781-COHORTS          <=266                NA                -0.0426459   -0.0651107   -0.0201811
12 months   ki1000108-CMC-V-BCS-2002   <=266                NA                 0.0322158   -0.0806938    0.1451254
12 months   ki1000108-IRC              <=266                NA                -0.1233941   -0.2365623   -0.0102259
12 months   ki1066203-TanzaniaChild2   <=266                NA                -0.0261329   -0.1086699    0.0564041
12 months   ki1101329-Keneba           <=266                NA                -0.0485315   -0.0935197   -0.0035432
12 months   ki1135781-COHORTS          <=266                NA                -0.0343395   -0.0584327   -0.0102464
18 months   ki1000108-CMC-V-BCS-2002   <=266                NA                -0.0061921   -0.1118280    0.0994438
18 months   ki1000108-IRC              <=266                NA                -0.2006333   -0.3159667   -0.0852998
18 months   ki1066203-TanzaniaChild2   <=266                NA                -0.0230028   -0.1373408    0.0913353
18 months   ki1101329-Keneba           <=266                NA                -0.0595135   -0.1082719   -0.0107551
18 months   ki1135781-COHORTS          <=266                NA                -0.0372018   -0.0648532   -0.0095504
24 months   ki1000108-CMC-V-BCS-2002   <=266                NA                -0.0122556   -0.1131320    0.0886208
24 months   ki1000108-IRC              <=266                NA                -0.1386694   -0.2522777   -0.0250612
24 months   ki1101329-Keneba           <=266                NA                -0.0107596   -0.0607483    0.0392292
24 months   ki1135781-COHORTS          <=266                NA                -0.0333071   -0.0570225   -0.0095917


### Parameter: PAF


agecat      studyid                    intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1000108-IRC              <=266                NA                -0.5247934   -1.5474940    0.0873404
Birth       ki1101329-Keneba           <=266                NA                -0.9001174   -1.4956646   -0.4466873
Birth       ki1135781-COHORTS          <=266                NA                -0.6075504   -0.8287263   -0.4131248
3 months    ki1000108-CMC-V-BCS-2002   <=266                NA                -0.4571429   -0.9744841   -0.0753520
3 months    ki1000108-IRC              <=266                NA                -0.4151033   -0.9888051   -0.0068948
3 months    ki1066203-TanzaniaChild2   <=266                NA                -0.4546208   -1.4374965    0.1319283
3 months    ki1101329-Keneba           <=266                NA                -0.5229713   -0.8639870   -0.2443443
3 months    ki1135781-COHORTS          <=266                NA                -0.3354501   -0.4703363   -0.2129381
6 months    ki1000108-CMC-V-BCS-2002   <=266                NA                -0.2657634   -0.7007167    0.0579519
6 months    ki1000108-IRC              <=266                NA                -0.6176295   -1.1676952   -0.2071464
6 months    ki1066203-TanzaniaChild2   <=266                NA                -0.4107831   -1.3065540    0.1371072
6 months    ki1101329-Keneba           <=266                NA                -0.3818860   -0.6966765   -0.1254997
6 months    ki1135781-COHORTS          <=266                NA                -0.2395217   -0.3392417   -0.1472269
9 months    ki1000108-CMC-V-BCS-2002   <=266                NA                -0.0526776   -0.4121443    0.2152855
9 months    ki1000108-IRC              <=266                NA                -0.4679713   -0.9498650   -0.1051738
9 months    ki1066203-TanzaniaChild2   <=266                NA                -0.2662069   -0.9260504    0.1675815
9 months    ki1101329-Keneba           <=266                NA                -0.2691244   -0.5210570   -0.0589194
9 months    ki1135781-COHORTS          <=266                NA                -0.1468064   -0.2268426   -0.0719916
12 months   ki1000108-CMC-V-BCS-2002   <=266                NA                 0.0663492   -0.1976836    0.2721752
12 months   ki1000108-IRC              <=266                NA                -0.4291003   -0.8829099   -0.0846657
12 months   ki1066203-TanzaniaChild2   <=266                NA                -0.1781305   -0.8995644    0.2693107
12 months   ki1101329-Keneba           <=266                NA                -0.1965449   -0.3934133   -0.0274910
12 months   ki1135781-COHORTS          <=266                NA                -0.0869691   -0.1497415   -0.0276238
18 months   ki1000108-CMC-V-BCS-2002   <=266                NA                -0.0090660   -0.1762150    0.1343298
18 months   ki1000108-IRC              <=266                NA                -0.5652879   -0.9284747   -0.2704995
18 months   ki1066203-TanzaniaChild2   <=266                NA                -0.0883598   -0.6294966    0.2730718
18 months   ki1101329-Keneba           <=266                NA                -0.1826110   -0.3421814   -0.0420119
18 months   ki1135781-COHORTS          <=266                NA                -0.0604748   -0.1063963   -0.0164593
24 months   ki1000108-CMC-V-BCS-2002   <=266                NA                -0.0172268   -0.1693902    0.1151368
24 months   ki1000108-IRC              <=266                NA                -0.3338338   -0.6378772   -0.0862308
24 months   ki1101329-Keneba           <=266                NA                -0.0323907   -0.1944037    0.1076462
24 months   ki1135781-COHORTS          <=266                NA                -0.0569693   -0.0983245   -0.0171714


