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

* agecat: 12 months, studyid: ki1000109-EE
* agecat: 12 months, studyid: ki1113344-GMS-Nepal
* agecat: 18 months, studyid: ki1000109-EE
* agecat: 18 months, studyid: ki1113344-GMS-Nepal
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2
* agecat: 24 months, studyid: ki1113344-GMS-Nepal
* agecat: 3 months, studyid: ki1000109-EE
* agecat: 3 months, studyid: ki1113344-GMS-Nepal
* agecat: 6 months, studyid: ki1000109-EE
* agecat: 6 months, studyid: ki1113344-GMS-Nepal
* agecat: 9 months, studyid: ki1000109-EE
* agecat: 9 months, studyid: ki1113344-GMS-Nepal
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002
* agecat: Birth, studyid: ki1000109-EE

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness




# Results Detail

## Results Plots
![](/tmp/16ff7e0c-ae90-44f3-b18d-8315968dd789/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/16ff7e0c-ae90-44f3-b18d-8315968dd789/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/16ff7e0c-ae90-44f3-b18d-8315968dd789/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/16ff7e0c-ae90-44f3-b18d-8315968dd789/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Data Summary

agecat      studyid                    A               n     nA   nAY0   nAY1
----------  -------------------------  ----------  -----  -----  -----  -----
12 months   ki1000108-CMC-V-BCS-2002   (266-273]     346     59     30     29
12 months   ki1000108-CMC-V-BCS-2002   (273-280]     346     83     37     46
12 months   ki1000108-CMC-V-BCS-2002   <=266         346     75     41     34
12 months   ki1000108-CMC-V-BCS-2002   >280          346    129     70     59
12 months   ki1000108-IRC              (266-273]     386     66     49     17
12 months   ki1000108-IRC              (273-280]     386     76     56     20
12 months   ki1000108-IRC              <=266         386     73     43     30
12 months   ki1000108-IRC              >280          386    171    127     44
12 months   ki1000109-EE               (266-273]     357     48     20     28
12 months   ki1000109-EE               (273-280]     357      7      2      5
12 months   ki1000109-EE               <=266         357    285     74    211
12 months   ki1000109-EE               >280          357     17      6     11
12 months   ki1066203-TanzaniaChild2   (266-273]     334     49     39     10
12 months   ki1066203-TanzaniaChild2   (273-280]     334     61     54      7
12 months   ki1066203-TanzaniaChild2   <=266         334     81     67     14
12 months   ki1066203-TanzaniaChild2   >280          334    143    125     18
12 months   ki1101329-Keneba           (266-273]    1300    274    214     60
12 months   ki1101329-Keneba           (273-280]    1300    315    243     72
12 months   ki1101329-Keneba           <=266        1300    396    279    117
12 months   ki1101329-Keneba           >280         1300    315    243     72
12 months   ki1113344-GMS-Nepal        (266-273]     558    553    363    190
12 months   ki1113344-GMS-Nepal        (273-280]     558      0      0      0
12 months   ki1113344-GMS-Nepal        <=266         558      1      1      0
12 months   ki1113344-GMS-Nepal        >280          558      4      3      1
12 months   ki1135781-COHORTS          (266-273]    4037    760    471    289
12 months   ki1135781-COHORTS          (273-280]    4037    831    536    295
12 months   ki1135781-COHORTS          <=266        4037   1624    927    697
12 months   ki1135781-COHORTS          >280         4037    822    509    313
18 months   ki1000108-CMC-V-BCS-2002   (266-273]     347     60     22     38
18 months   ki1000108-CMC-V-BCS-2002   (273-280]     347     84     27     57
18 months   ki1000108-CMC-V-BCS-2002   <=266         347     74     23     51
18 months   ki1000108-CMC-V-BCS-2002   >280          347    129     38     91
18 months   ki1000108-IRC              (266-273]     386     66     44     22
18 months   ki1000108-IRC              (273-280]     386     76     54     22
18 months   ki1000108-IRC              <=266         386     72     32     40
18 months   ki1000108-IRC              >280          386    172    119     53
18 months   ki1000109-EE               (266-273]     350     46     12     34
18 months   ki1000109-EE               (273-280]     350      7      1      6
18 months   ki1000109-EE               <=266         350    281     37    244
18 months   ki1000109-EE               >280          350     16      3     13
18 months   ki1066203-TanzaniaChild2   (266-273]     242     41     33      8
18 months   ki1066203-TanzaniaChild2   (273-280]     242     43     30     13
18 months   ki1066203-TanzaniaChild2   <=266         242     60     43     17
18 months   ki1066203-TanzaniaChild2   >280          242     98     73     25
18 months   ki1101329-Keneba           (266-273]    1301    288    213     75
18 months   ki1101329-Keneba           (273-280]    1301    312    212    100
18 months   ki1101329-Keneba           <=266        1301    384    236    148
18 months   ki1101329-Keneba           >280         1301    317    216    101
18 months   ki1113344-GMS-Nepal        (266-273]     550    545    255    290
18 months   ki1113344-GMS-Nepal        (273-280]     550      0      0      0
18 months   ki1113344-GMS-Nepal        <=266         550      1      1      0
18 months   ki1113344-GMS-Nepal        >280          550      4      2      2
18 months   ki1135781-COHORTS          (266-273]    2770    517    221    296
18 months   ki1135781-COHORTS          (273-280]    2770    567    226    341
18 months   ki1135781-COHORTS          <=266        2770   1142    397    745
18 months   ki1135781-COHORTS          >280         2770    544    222    322
24 months   ki1000108-CMC-V-BCS-2002   (266-273]     350     60     10     50
24 months   ki1000108-CMC-V-BCS-2002   (273-280]     350     84     26     58
24 months   ki1000108-CMC-V-BCS-2002   <=266         350     76     21     55
24 months   ki1000108-CMC-V-BCS-2002   >280          350    130     44     86
24 months   ki1000108-IRC              (266-273]     390     66     41     25
24 months   ki1000108-IRC              (273-280]     390     77     50     27
24 months   ki1000108-IRC              <=266         390     74     33     41
24 months   ki1000108-IRC              >280          390    173    104     69
24 months   ki1000109-EE               (266-273]       0      0      0      0
24 months   ki1000109-EE               (273-280]       0      0      0      0
24 months   ki1000109-EE               <=266           0      0      0      0
24 months   ki1000109-EE               >280            0      0      0      0
24 months   ki1066203-TanzaniaChild2   (266-273]       2      0      0      0
24 months   ki1066203-TanzaniaChild2   (273-280]       2      0      0      0
24 months   ki1066203-TanzaniaChild2   <=266           2      1      1      0
24 months   ki1066203-TanzaniaChild2   >280            2      1      1      0
24 months   ki1101329-Keneba           (266-273]    1156    252    169     83
24 months   ki1101329-Keneba           (273-280]    1156    285    182    103
24 months   ki1101329-Keneba           <=266        1156    347    228    119
24 months   ki1101329-Keneba           >280         1156    272    193     79
24 months   ki1113344-GMS-Nepal        (266-273]     499    496    273    223
24 months   ki1113344-GMS-Nepal        (273-280]     499      0      0      0
24 months   ki1113344-GMS-Nepal        <=266         499      0      0      0
24 months   ki1113344-GMS-Nepal        >280          499      3      3      0
24 months   ki1135781-COHORTS          (266-273]    4052    772    335    437
24 months   ki1135781-COHORTS          (273-280]    4052    825    369    456
24 months   ki1135781-COHORTS          <=266        4052   1615    617    998
24 months   ki1135781-COHORTS          >280         4052    840    362    478
3 months    ki1000108-CMC-V-BCS-2002   (266-273]     340     55     39     16
3 months    ki1000108-CMC-V-BCS-2002   (273-280]     340     82     69     13
3 months    ki1000108-CMC-V-BCS-2002   <=266         340     75     48     27
3 months    ki1000108-CMC-V-BCS-2002   >280          340    128    100     28
3 months    ki1000108-IRC              (266-273]     387     66     54     12
3 months    ki1000108-IRC              (273-280]     387     77     61     16
3 months    ki1000108-IRC              <=266         387     74     51     23
3 months    ki1000108-IRC              >280          387    170    136     34
3 months    ki1000109-EE               (266-273]     376     52     27     25
3 months    ki1000109-EE               (273-280]     376      8      6      2
3 months    ki1000109-EE               <=266         376    299    115    184
3 months    ki1000109-EE               >280          376     17     11      6
3 months    ki1066203-TanzaniaChild2   (266-273]     540     87     79      8
3 months    ki1066203-TanzaniaChild2   (273-280]     540     89     84      5
3 months    ki1066203-TanzaniaChild2   <=266         540    127    114     13
3 months    ki1066203-TanzaniaChild2   >280          540    237    225     12
3 months    ki1101329-Keneba           (266-273]    1442    305    272     33
3 months    ki1101329-Keneba           (273-280]    1442    348    317     31
3 months    ki1101329-Keneba           <=266        1442    437    359     78
3 months    ki1101329-Keneba           >280         1442    352    325     27
3 months    ki1113344-GMS-Nepal        (266-273]     571    567    484     83
3 months    ki1113344-GMS-Nepal        (273-280]     571      0      0      0
3 months    ki1113344-GMS-Nepal        <=266         571      1      0      1
3 months    ki1113344-GMS-Nepal        >280          571      3      3      0
3 months    ki1135781-COHORTS          (266-273]    4535    865    772     93
3 months    ki1135781-COHORTS          (273-280]    4535    921    825     96
3 months    ki1135781-COHORTS          <=266        4535   1824   1484    340
3 months    ki1135781-COHORTS          >280         4535    925    821    104
6 months    ki1000108-CMC-V-BCS-2002   (266-273]     347     59     41     18
6 months    ki1000108-CMC-V-BCS-2002   (273-280]     347     83     58     25
6 months    ki1000108-CMC-V-BCS-2002   <=266         347     76     48     28
6 months    ki1000108-CMC-V-BCS-2002   >280          347    129     99     30
6 months    ki1000108-IRC              (266-273]     388     66     53     13
6 months    ki1000108-IRC              (273-280]     388     77     62     15
6 months    ki1000108-IRC              <=266         388     73     45     28
6 months    ki1000108-IRC              >280          388    172    136     36
6 months    ki1000109-EE               (266-273]     372     51     30     21
6 months    ki1000109-EE               (273-280]     372      8      5      3
6 months    ki1000109-EE               <=266         372    296    133    163
6 months    ki1000109-EE               >280          372     17     11      6
6 months    ki1066203-TanzaniaChild2   (266-273]     471     77     72      5
6 months    ki1066203-TanzaniaChild2   (273-280]     471     83     76      7
6 months    ki1066203-TanzaniaChild2   <=266         471    114    100     14
6 months    ki1066203-TanzaniaChild2   >280          471    197    182     15
6 months    ki1101329-Keneba           (266-273]    1374    304    273     31
6 months    ki1101329-Keneba           (273-280]    1374    324    283     41
6 months    ki1101329-Keneba           <=266        1374    412    337     75
6 months    ki1101329-Keneba           >280         1374    334    300     34
6 months    ki1113344-GMS-Nepal        (266-273]     563    558    441    117
6 months    ki1113344-GMS-Nepal        (273-280]     563      0      0      0
6 months    ki1113344-GMS-Nepal        <=266         563      1      0      1
6 months    ki1113344-GMS-Nepal        >280          563      4      3      1
6 months    ki1135781-COHORTS          (266-273]    4346    834    683    151
6 months    ki1135781-COHORTS          (273-280]    4346    871    722    149
6 months    ki1135781-COHORTS          <=266        4346   1742   1271    471
6 months    ki1135781-COHORTS          >280         4346    899    722    177
9 months    ki1000108-CMC-V-BCS-2002   (266-273]     344     58     38     20
9 months    ki1000108-CMC-V-BCS-2002   (273-280]     344     81     49     32
9 months    ki1000108-CMC-V-BCS-2002   <=266         344     75     47     28
9 months    ki1000108-CMC-V-BCS-2002   >280          344    130     88     42
9 months    ki1000108-IRC              (266-273]     388     66     51     15
9 months    ki1000108-IRC              (273-280]     388     77     56     21
9 months    ki1000108-IRC              <=266         388     73     44     29
9 months    ki1000108-IRC              >280          388    172    132     40
9 months    ki1000109-EE               (266-273]     366     50     26     24
9 months    ki1000109-EE               (273-280]     366      8      5      3
9 months    ki1000109-EE               <=266         366    292    108    184
9 months    ki1000109-EE               >280          366     16     10      6
9 months    ki1066203-TanzaniaChild2   (266-273]     408     64     54     10
9 months    ki1066203-TanzaniaChild2   (273-280]     408     72     60     12
9 months    ki1066203-TanzaniaChild2   <=266         408    100     82     18
9 months    ki1066203-TanzaniaChild2   >280          408    172    154     18
9 months    ki1101329-Keneba           (266-273]    1377    296    250     46
9 months    ki1101329-Keneba           (273-280]    1377    337    283     54
9 months    ki1101329-Keneba           <=266        1377    403    312     91
9 months    ki1101329-Keneba           >280         1377    341    287     54
9 months    ki1113344-GMS-Nepal        (266-273]     551    546    393    153
9 months    ki1113344-GMS-Nepal        (273-280]     551      0      0      0
9 months    ki1113344-GMS-Nepal        <=266         551      1      0      1
9 months    ki1113344-GMS-Nepal        >280          551      4      3      1
9 months    ki1135781-COHORTS          (266-273]    4217    802    605    197
9 months    ki1135781-COHORTS          (273-280]    4217    861    648    213
9 months    ki1135781-COHORTS          <=266        4217   1696   1131    565
9 months    ki1135781-COHORTS          >280         4217    858    608    250
Birth       ki1000108-CMC-V-BCS-2002   (266-273]      90     15     11      4
Birth       ki1000108-CMC-V-BCS-2002   (273-280]      90     18     14      4
Birth       ki1000108-CMC-V-BCS-2002   <=266          90     18     16      2
Birth       ki1000108-CMC-V-BCS-2002   >280           90     39     33      6
Birth       ki1000108-IRC              (266-273]     369     65     60      5
Birth       ki1000108-IRC              (273-280]     369     71     62      9
Birth       ki1000108-IRC              <=266         369     66     54     12
Birth       ki1000108-IRC              >280          369    167    149     18
Birth       ki1000109-EE               (266-273]       2      0      0      0
Birth       ki1000109-EE               (273-280]       2      0      0      0
Birth       ki1000109-EE               <=266           2      2      1      1
Birth       ki1000109-EE               >280            2      0      0      0
Birth       ki1066203-TanzaniaChild2   (266-273]       0      0      0      0
Birth       ki1066203-TanzaniaChild2   (273-280]       0      0      0      0
Birth       ki1066203-TanzaniaChild2   <=266           0      0      0      0
Birth       ki1066203-TanzaniaChild2   >280            0      0      0      0
Birth       ki1101329-Keneba           (266-273]    1515    324    311     13
Birth       ki1101329-Keneba           (273-280]    1515    360    345     15
Birth       ki1101329-Keneba           <=266        1515    457    410     47
Birth       ki1101329-Keneba           >280         1515    374    367      7
Birth       ki1113344-GMS-Nepal        (266-273]       0      0      0      0
Birth       ki1113344-GMS-Nepal        (273-280]       0      0      0      0
Birth       ki1113344-GMS-Nepal        <=266           0      0      0      0
Birth       ki1113344-GMS-Nepal        >280            0      0      0      0
Birth       ki1135781-COHORTS          (266-273]    4607    876    835     41
Birth       ki1135781-COHORTS          (273-280]    4607    926    883     43
Birth       ki1135781-COHORTS          <=266        4607   1857   1649    208
Birth       ki1135781-COHORTS          >280         4607    948    919     29

## Results Table

### Parameter: TSM


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
12 months   ki1000108-CMC-V-BCS-2002   (266-273]            NA                0.4915254   0.3637762   0.6192746
12 months   ki1000108-CMC-V-BCS-2002   (273-280]            NA                0.5542169   0.4471293   0.6613045
12 months   ki1000108-CMC-V-BCS-2002   <=266                NA                0.4533333   0.3405055   0.5661611
12 months   ki1000108-CMC-V-BCS-2002   >280                 NA                0.4573643   0.3712715   0.5434572
12 months   ki1000108-IRC              (266-273]            NA                0.2575758   0.1519383   0.3632132
12 months   ki1000108-IRC              (273-280]            NA                0.2631579   0.1640291   0.3622867
12 months   ki1000108-IRC              <=266                NA                0.4109589   0.2979476   0.5239702
12 months   ki1000108-IRC              >280                 NA                0.2573099   0.1917037   0.3229162
12 months   ki1066203-TanzaniaChild2   (266-273]            NA                0.2040816   0.0910663   0.3170970
12 months   ki1066203-TanzaniaChild2   (273-280]            NA                0.1147541   0.0346508   0.1948574
12 months   ki1066203-TanzaniaChild2   <=266                NA                0.1728395   0.0903739   0.2553052
12 months   ki1066203-TanzaniaChild2   >280                 NA                0.1258741   0.0714256   0.1803227
12 months   ki1101329-Keneba           (266-273]            NA                0.2189781   0.1699921   0.2679641
12 months   ki1101329-Keneba           (273-280]            NA                0.2285714   0.1821820   0.2749608
12 months   ki1101329-Keneba           <=266                NA                0.2954545   0.2505006   0.3404085
12 months   ki1101329-Keneba           >280                 NA                0.2285714   0.1821820   0.2749608
12 months   ki1135781-COHORTS          (266-273]            NA                0.3802632   0.3457455   0.4147808
12 months   ki1135781-COHORTS          (273-280]            NA                0.3549940   0.3224558   0.3875322
12 months   ki1135781-COHORTS          <=266                NA                0.4291872   0.4051115   0.4532629
12 months   ki1135781-COHORTS          >280                 NA                0.3807786   0.3475796   0.4139776
18 months   ki1000108-CMC-V-BCS-2002   (266-273]            NA                0.6333333   0.5112234   0.7554433
18 months   ki1000108-CMC-V-BCS-2002   (273-280]            NA                0.6785714   0.5785541   0.7785887
18 months   ki1000108-CMC-V-BCS-2002   <=266                NA                0.6891892   0.5835862   0.7947922
18 months   ki1000108-CMC-V-BCS-2002   >280                 NA                0.7054264   0.6266488   0.7842039
18 months   ki1000108-IRC              (266-273]            NA                0.3333333   0.2194571   0.4472096
18 months   ki1000108-IRC              (273-280]            NA                0.2894737   0.1873799   0.3915674
18 months   ki1000108-IRC              <=266                NA                0.5555556   0.4406297   0.6704814
18 months   ki1000108-IRC              >280                 NA                0.3081395   0.2390472   0.3772319
18 months   ki1066203-TanzaniaChild2   (266-273]            NA                0.1951220   0.0735668   0.3166771
18 months   ki1066203-TanzaniaChild2   (273-280]            NA                0.3023256   0.1647704   0.4398807
18 months   ki1066203-TanzaniaChild2   <=266                NA                0.2833333   0.1690773   0.3975893
18 months   ki1066203-TanzaniaChild2   >280                 NA                0.2551020   0.1686173   0.3415868
18 months   ki1101329-Keneba           (266-273]            NA                0.2604167   0.2097121   0.3111212
18 months   ki1101329-Keneba           (273-280]            NA                0.3205128   0.2687103   0.3723154
18 months   ki1101329-Keneba           <=266                NA                0.3854167   0.3367193   0.4341140
18 months   ki1101329-Keneba           >280                 NA                0.3186120   0.2673006   0.3699234
18 months   ki1135781-COHORTS          (266-273]            NA                0.5725338   0.5298825   0.6151852
18 months   ki1135781-COHORTS          (273-280]            NA                0.6014109   0.5611037   0.6417182
18 months   ki1135781-COHORTS          <=266                NA                0.6523643   0.6247394   0.6799892
18 months   ki1135781-COHORTS          >280                 NA                0.5919118   0.5506039   0.6332196
24 months   ki1000108-CMC-V-BCS-2002   (266-273]            NA                0.8333333   0.7388995   0.9277671
24 months   ki1000108-CMC-V-BCS-2002   (273-280]            NA                0.6904762   0.5914726   0.7894798
24 months   ki1000108-CMC-V-BCS-2002   <=266                NA                0.7236842   0.6230050   0.8243635
24 months   ki1000108-CMC-V-BCS-2002   >280                 NA                0.6615385   0.5800812   0.7429957
24 months   ki1000108-IRC              (266-273]            NA                0.3787879   0.2616084   0.4959674
24 months   ki1000108-IRC              (273-280]            NA                0.3506494   0.2439317   0.4573670
24 months   ki1000108-IRC              <=266                NA                0.5540541   0.4406557   0.6674525
24 months   ki1000108-IRC              >280                 NA                0.3988439   0.3257843   0.4719036
24 months   ki1101329-Keneba           (266-273]            NA                0.3293651   0.2713130   0.3874171
24 months   ki1101329-Keneba           (273-280]            NA                0.3614035   0.3056049   0.4172021
24 months   ki1101329-Keneba           <=266                NA                0.3429395   0.2929725   0.3929064
24 months   ki1101329-Keneba           >280                 NA                0.2904412   0.2364684   0.3444140
24 months   ki1135781-COHORTS          (266-273]            NA                0.5660622   0.5310967   0.6010276
24 months   ki1135781-COHORTS          (273-280]            NA                0.5527273   0.5187947   0.5866598
24 months   ki1135781-COHORTS          <=266                NA                0.6179567   0.5942565   0.6416568
24 months   ki1135781-COHORTS          >280                 NA                0.5690476   0.5355549   0.6025404
3 months    ki1000108-CMC-V-BCS-2002   (266-273]            NA                0.2909091   0.1707004   0.4111178
3 months    ki1000108-CMC-V-BCS-2002   (273-280]            NA                0.1585366   0.0793661   0.2377070
3 months    ki1000108-CMC-V-BCS-2002   <=266                NA                0.3600000   0.2512077   0.4687923
3 months    ki1000108-CMC-V-BCS-2002   >280                 NA                0.2187500   0.1470281   0.2904719
3 months    ki1000108-IRC              (266-273]            NA                0.1818182   0.0886470   0.2749893
3 months    ki1000108-IRC              (273-280]            NA                0.2077922   0.1170522   0.2985322
3 months    ki1000108-IRC              <=266                NA                0.3108108   0.2052236   0.4163980
3 months    ki1000108-IRC              >280                 NA                0.2000000   0.1397932   0.2602068
3 months    ki1066203-TanzaniaChild2   (266-273]            NA                0.0919540   0.0311783   0.1527298
3 months    ki1066203-TanzaniaChild2   (273-280]            NA                0.0561798   0.0082958   0.1040638
3 months    ki1066203-TanzaniaChild2   <=266                NA                0.1023622   0.0495944   0.1551300
3 months    ki1066203-TanzaniaChild2   >280                 NA                0.0506329   0.0226940   0.0785719
3 months    ki1101329-Keneba           (266-273]            NA                0.1081967   0.0733236   0.1430698
3 months    ki1101329-Keneba           (273-280]            NA                0.0890805   0.0591412   0.1190197
3 months    ki1101329-Keneba           <=266                NA                0.1784897   0.1425751   0.2144043
3 months    ki1101329-Keneba           >280                 NA                0.0767045   0.0488941   0.1045150
3 months    ki1135781-COHORTS          (266-273]            NA                0.1075145   0.0868691   0.1281598
3 months    ki1135781-COHORTS          (273-280]            NA                0.1042345   0.0844981   0.1239710
3 months    ki1135781-COHORTS          <=266                NA                0.1864035   0.1685298   0.2042772
3 months    ki1135781-COHORTS          >280                 NA                0.1124324   0.0920727   0.1327921
6 months    ki1000108-CMC-V-BCS-2002   (266-273]            NA                0.3050847   0.1874258   0.4227437
6 months    ki1000108-CMC-V-BCS-2002   (273-280]            NA                0.3012048   0.2023628   0.4000468
6 months    ki1000108-CMC-V-BCS-2002   <=266                NA                0.3684211   0.2598150   0.4770271
6 months    ki1000108-CMC-V-BCS-2002   >280                 NA                0.2325581   0.1595505   0.3055658
6 months    ki1000108-IRC              (266-273]            NA                0.1969697   0.1008965   0.2930429
6 months    ki1000108-IRC              (273-280]            NA                0.1948052   0.1062296   0.2833807
6 months    ki1000108-IRC              <=266                NA                0.3835616   0.2718729   0.4952504
6 months    ki1000108-IRC              >280                 NA                0.2093023   0.1484277   0.2701770
6 months    ki1066203-TanzaniaChild2   (266-273]            NA                0.0649351   0.0098385   0.1200317
6 months    ki1066203-TanzaniaChild2   (273-280]            NA                0.0843373   0.0244895   0.1441852
6 months    ki1066203-TanzaniaChild2   <=266                NA                0.1228070   0.0624933   0.1831208
6 months    ki1066203-TanzaniaChild2   >280                 NA                0.0761421   0.0390662   0.1132180
6 months    ki1101329-Keneba           (266-273]            NA                0.1019737   0.0679440   0.1360034
6 months    ki1101329-Keneba           (273-280]            NA                0.1265432   0.0903294   0.1627570
6 months    ki1101329-Keneba           <=266                NA                0.1820388   0.1447648   0.2193128
6 months    ki1101329-Keneba           >280                 NA                0.1017964   0.0693560   0.1342368
6 months    ki1135781-COHORTS          (266-273]            NA                0.1810552   0.1549186   0.2071917
6 months    ki1135781-COHORTS          (273-280]            NA                0.1710677   0.1460567   0.1960788
6 months    ki1135781-COHORTS          <=266                NA                0.2703789   0.2495191   0.2912386
6 months    ki1135781-COHORTS          >280                 NA                0.1968854   0.1708890   0.2228819
9 months    ki1000108-CMC-V-BCS-2002   (266-273]            NA                0.3448276   0.2223251   0.4673301
9 months    ki1000108-CMC-V-BCS-2002   (273-280]            NA                0.3950617   0.2884449   0.5016786
9 months    ki1000108-CMC-V-BCS-2002   <=266                NA                0.3733333   0.2637066   0.4829600
9 months    ki1000108-CMC-V-BCS-2002   >280                 NA                0.3230769   0.2425704   0.4035835
9 months    ki1000108-IRC              (266-273]            NA                0.2272727   0.1260395   0.3285060
9 months    ki1000108-IRC              (273-280]            NA                0.2727273   0.1731234   0.3723311
9 months    ki1000108-IRC              <=266                NA                0.3972603   0.2848646   0.5096559
9 months    ki1000108-IRC              >280                 NA                0.2325581   0.1693413   0.2957750
9 months    ki1066203-TanzaniaChild2   (266-273]            NA                0.1562500   0.0671848   0.2453152
9 months    ki1066203-TanzaniaChild2   (273-280]            NA                0.1666667   0.0804783   0.2528550
9 months    ki1066203-TanzaniaChild2   <=266                NA                0.1800000   0.1046082   0.2553918
9 months    ki1066203-TanzaniaChild2   >280                 NA                0.1046512   0.0588491   0.1504532
9 months    ki1101329-Keneba           (266-273]            NA                0.1554054   0.1141180   0.1966928
9 months    ki1101329-Keneba           (273-280]            NA                0.1602374   0.1210586   0.1994162
9 months    ki1101329-Keneba           <=266                NA                0.2258065   0.1849702   0.2666427
9 months    ki1101329-Keneba           >280                 NA                0.1583578   0.1195952   0.1971203
9 months    ki1135781-COHORTS          (266-273]            NA                0.2456359   0.2158405   0.2754313
9 months    ki1135781-COHORTS          (273-280]            NA                0.2473868   0.2185616   0.2762119
9 months    ki1135781-COHORTS          <=266                NA                0.3331368   0.3107023   0.3555713
9 months    ki1135781-COHORTS          >280                 NA                0.2913753   0.2609671   0.3217835
Birth       ki1000108-IRC              (266-273]            NA                0.0769231   0.0120555   0.1417907
Birth       ki1000108-IRC              (273-280]            NA                0.1267606   0.0492668   0.2042544
Birth       ki1000108-IRC              <=266                NA                0.1818182   0.0886411   0.2749952
Birth       ki1000108-IRC              >280                 NA                0.1077844   0.0606876   0.1548813
Birth       ki1101329-Keneba           (266-273]            NA                0.0401235   0.0187475   0.0614994
Birth       ki1101329-Keneba           (273-280]            NA                0.0416667   0.0210180   0.0623154
Birth       ki1101329-Keneba           <=266                NA                0.1028446   0.0749861   0.1307032
Birth       ki1101329-Keneba           >280                 NA                0.0187166   0.0049772   0.0324559
Birth       ki1135781-COHORTS          (266-273]            NA                0.0468037   0.0328151   0.0607923
Birth       ki1135781-COHORTS          (273-280]            NA                0.0464363   0.0328815   0.0599911
Birth       ki1135781-COHORTS          <=266                NA                0.1120086   0.0976630   0.1263542
Birth       ki1135781-COHORTS          >280                 NA                0.0305907   0.0196275   0.0415540


### Parameter: E(Y)


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
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
Birth       ki1000108-IRC              NA                   NA                0.1192412   0.1158740   0.1226084
Birth       ki1101329-Keneba           NA                   NA                0.0541254   0.0524515   0.0557993
Birth       ki1135781-COHORTS          NA                   NA                0.0696766   0.0686577   0.0706955


### Parameter: RR


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
12 months   ki1000108-CMC-V-BCS-2002   (273-280]            (266-273]         1.1275447   0.8156114   1.5587779
12 months   ki1000108-CMC-V-BCS-2002   <=266                (266-273]         0.9222989   0.6435613   1.3217625
12 months   ki1000108-CMC-V-BCS-2002   >280                 (266-273]         0.9304999   0.6750672   1.2825833
12 months   ki1000108-IRC              (273-280]            (266-273]         1.0216718   0.5854225   1.7830085
12 months   ki1000108-IRC              <=266                (266-273]         1.5954875   0.9737469   2.6142114
12 months   ki1000108-IRC              >280                 (266-273]         0.9989680   0.6163438   1.6191241
12 months   ki1066203-TanzaniaChild2   (273-280]            (266-273]         0.5622951   0.2306725   1.3706698
12 months   ki1066203-TanzaniaChild2   <=266                (266-273]         0.8469136   0.4077407   1.7591145
12 months   ki1066203-TanzaniaChild2   >280                 (266-273]         0.6167832   0.3054616   1.2453989
12 months   ki1101329-Keneba           (273-280]            (266-273]         1.0438095   0.7716910   1.4118842
12 months   ki1101329-Keneba           <=266                (266-273]         1.3492424   1.0294258   1.7684180
12 months   ki1101329-Keneba           >280                 (266-273]         1.0438095   0.7716910   1.4118842
12 months   ki1135781-COHORTS          (273-280]            (266-273]         0.9335482   0.8205645   1.0620886
12 months   ki1135781-COHORTS          <=266                (266-273]         1.1286584   1.0144251   1.2557553
12 months   ki1135781-COHORTS          >280                 (266-273]         1.0013555   0.8829313   1.1356634
18 months   ki1000108-CMC-V-BCS-2002   (273-280]            (266-273]         1.0714286   0.8405508   1.3657226
18 months   ki1000108-CMC-V-BCS-2002   <=266                (266-273]         1.0881935   0.8506465   1.3920764
18 months   ki1000108-CMC-V-BCS-2002   >280                 (266-273]         1.1138311   0.8913610   1.3918263
18 months   ki1000108-IRC              (273-280]            (266-273]         0.8684211   0.5314763   1.4189816
18 months   ki1000108-IRC              <=266                (266-273]         1.6666667   1.1178936   2.4848320
18 months   ki1000108-IRC              >280                 (266-273]         0.9244186   0.6143255   1.3910375
18 months   ki1066203-TanzaniaChild2   (273-280]            (266-273]         1.5494186   0.7163742   3.3511788
18 months   ki1066203-TanzaniaChild2   <=266                (266-273]         1.4520833   0.6913580   3.0498614
18 months   ki1066203-TanzaniaChild2   >280                 (266-273]         1.3073980   0.6432609   2.6572256
18 months   ki1101329-Keneba           (273-280]            (266-273]         1.2307692   0.9556084   1.5851607
18 months   ki1101329-Keneba           <=266                (266-273]         1.4800000   1.1734327   1.8666602
18 months   ki1101329-Keneba           >280                 (266-273]         1.2234700   0.9502911   1.5751794
18 months   ki1135781-COHORTS          (273-280]            (266-273]         1.0504373   0.9502782   1.1611532
18 months   ki1135781-COHORTS          <=266                (266-273]         1.1394335   1.0458618   1.2413771
18 months   ki1135781-COHORTS          >280                 (266-273]         1.0338459   0.9335208   1.1449529
24 months   ki1000108-CMC-V-BCS-2002   (273-280]            (266-273]         0.8285714   0.6901745   0.9947203
24 months   ki1000108-CMC-V-BCS-2002   <=266                (266-273]         0.8684211   0.7257779   1.0390990
24 months   ki1000108-CMC-V-BCS-2002   >280                 (266-273]         0.7938462   0.6715227   0.9384519
24 months   ki1000108-IRC              (273-280]            (266-273]         0.9257143   0.5998034   1.4287130
24 months   ki1000108-IRC              <=266                (266-273]         1.4627027   1.0093989   2.1195775
24 months   ki1000108-IRC              >280                 (266-273]         1.0529480   0.7349700   1.5084962
24 months   ki1101329-Keneba           (273-280]            (266-273]         1.0972733   0.8680674   1.3869991
24 months   ki1101329-Keneba           <=266                (266-273]         1.0412138   0.8283719   1.3087434
24 months   ki1101329-Keneba           >280                 (266-273]         0.8818214   0.6825716   1.1392343
24 months   ki1135781-COHORTS          (273-280]            (266-273]         0.9764427   0.8950037   1.0652920
24 months   ki1135781-COHORTS          <=266                (266-273]         1.0916763   1.0151200   1.1740062
24 months   ki1135781-COHORTS          >280                 (266-273]         1.0052741   0.9230601   1.0948105
3 months    ki1000108-CMC-V-BCS-2002   (273-280]            (266-273]         0.5449695   0.2850185   1.0420088
3 months    ki1000108-CMC-V-BCS-2002   <=266                (266-273]         1.2375000   0.7416792   2.0647826
3 months    ki1000108-CMC-V-BCS-2002   >280                 (266-273]         0.7519531   0.4437145   1.2743182
3 months    ki1000108-IRC              (273-280]            (266-273]         1.1428571   0.5829012   2.2407269
3 months    ki1000108-IRC              <=266                (266-273]         1.7094595   0.9243707   3.1613416
3 months    ki1000108-IRC              >280                 (266-273]         1.1000000   0.6071308   1.9929806
3 months    ki1066203-TanzaniaChild2   (273-280]            (266-273]         0.6109551   0.2077747   1.7964944
3 months    ki1066203-TanzaniaChild2   <=266                (266-273]         1.1131890   0.4814416   2.5739148
3 months    ki1066203-TanzaniaChild2   >280                 (266-273]         0.5506329   0.2327751   1.3025301
3 months    ki1101329-Keneba           (273-280]            (266-273]         0.8233194   0.5168127   1.3116063
3 months    ki1101329-Keneba           <=266                (266-273]         1.6496776   1.1281924   2.4122091
3 months    ki1101329-Keneba           >280                 (266-273]         0.7089360   0.4364385   1.1515715
3 months    ki1135781-COHORTS          (273-280]            (266-273]         0.9694932   0.7403309   1.2695905
3 months    ki1135781-COHORTS          <=266                (266-273]         1.7337531   1.3988563   2.1488266
3 months    ki1135781-COHORTS          >280                 (266-273]         1.0457425   0.8031504   1.3616097
6 months    ki1000108-CMC-V-BCS-2002   (273-280]            (266-273]         0.9872825   0.5950094   1.6381701
6 months    ki1000108-CMC-V-BCS-2002   <=266                (266-273]         1.2076023   0.7432045   1.9621832
6 months    ki1000108-CMC-V-BCS-2002   >280                 (266-273]         0.7622739   0.4636018   1.2533634
6 months    ki1000108-IRC              (273-280]            (266-273]         0.9890110   0.5076980   1.9266231
6 months    ki1000108-IRC              <=266                (266-273]         1.9473130   1.1033890   3.4367098
6 months    ki1000108-IRC              >280                 (266-273]         1.0626118   0.6022043   1.8750179
6 months    ki1066203-TanzaniaChild2   (273-280]            (266-273]         1.2987952   0.4296943   3.9257416
6 months    ki1066203-TanzaniaChild2   <=266                (266-273]         1.8912281   0.7095324   5.0409872
6 months    ki1066203-TanzaniaChild2   >280                 (266-273]         1.1725888   0.4408431   3.1189429
6 months    ki1101329-Keneba           (273-280]            (266-273]         1.2409399   0.7995194   1.9260718
6 months    ki1101329-Keneba           <=266                (266-273]         1.7851550   1.2068144   2.6406532
6 months    ki1101329-Keneba           >280                 (266-273]         0.9982615   0.6292845   1.5835859
6 months    ki1135781-COHORTS          (273-280]            (266-273]         0.9448377   0.7693533   1.1603489
6 months    ki1135781-COHORTS          <=266                (266-273]         1.4933509   1.2678759   1.7589236
6 months    ki1135781-COHORTS          >280                 (266-273]         1.0874334   0.8942101   1.3224090
9 months    ki1000108-CMC-V-BCS-2002   (273-280]            (266-273]         1.1456790   0.7333434   1.7898577
9 months    ki1000108-CMC-V-BCS-2002   <=266                (266-273]         1.0826667   0.6828511   1.7165779
9 months    ki1000108-CMC-V-BCS-2002   >280                 (266-273]         0.9369231   0.6070818   1.4459746
9 months    ki1000108-IRC              (273-280]            (266-273]         1.2000000   0.6745651   2.1347088
9 months    ki1000108-IRC              <=266                (266-273]         1.7479452   1.0312329   2.9627764
9 months    ki1000108-IRC              >280                 (266-273]         1.0232558   0.6072396   1.7242823
9 months    ki1066203-TanzaniaChild2   (273-280]            (266-273]         1.0666667   0.4940593   2.3029172
9 months    ki1066203-TanzaniaChild2   <=266                (266-273]         1.1520000   0.5678749   2.3369654
9 months    ki1066203-TanzaniaChild2   >280                 (266-273]         0.6697674   0.3264486   1.3741471
9 months    ki1101329-Keneba           (273-280]            (266-273]         1.0310928   0.7186053   1.4794662
9 months    ki1101329-Keneba           <=266                (266-273]         1.4530154   1.0536447   2.0037626
9 months    ki1101329-Keneba           >280                 (266-273]         1.0189978   0.7100444   1.4623826
9 months    ki1135781-COHORTS          (273-280]            (266-273]         1.0071278   0.8512121   1.1916024
9 months    ki1135781-COHORTS          <=266                (266-273]         1.3562219   1.1805302   1.5580607
9 months    ki1135781-COHORTS          >280                 (266-273]         1.1862080   1.0108052   1.3920481
Birth       ki1000108-IRC              (273-280]            (266-273]         1.6478873   0.5815431   4.6695295
Birth       ki1000108-IRC              <=266                (266-273]         2.3636364   0.8810985   6.3406954
Birth       ki1000108-IRC              >280                 (266-273]         1.4011976   0.5420294   3.6222294
Birth       ki1101329-Keneba           (273-280]            (266-273]         1.0384615   0.5016414   2.1497476
Birth       ki1101329-Keneba           <=266                (266-273]         2.5632048   1.4100050   4.6595715
Birth       ki1101329-Keneba           >280                 (266-273]         0.4664747   0.1883271   1.1554296
Birth       ki1135781-COHORTS          (273-280]            (266-273]         0.9921509   0.6533427   1.5066570
Birth       ki1135781-COHORTS          <=266                (266-273]         2.3931597   1.7288394   3.3127503
Birth       ki1135781-COHORTS          >280                 (266-273]         0.6535968   0.4098677   1.0422602


### Parameter: PAR


agecat      studyid                    intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -------------------  ---------------  -----------  -----------  -----------
12 months   ki1000108-CMC-V-BCS-2002   (266-273]            NA                -0.0059763   -0.1337977    0.1218452
12 months   ki1000108-IRC              (266-273]            NA                 0.0299890   -0.0758163    0.1357943
12 months   ki1066203-TanzaniaChild2   (266-273]            NA                -0.0573750   -0.1704425    0.0556924
12 months   ki1101329-Keneba           (266-273]            NA                 0.0279450   -0.0210726    0.0769625
12 months   ki1135781-COHORTS          (266-273]            NA                 0.0145845   -0.0199453    0.0491143
18 months   ki1000108-CMC-V-BCS-2002   (266-273]            NA                 0.0496638   -0.0724746    0.1718022
18 months   ki1000108-IRC              (266-273]            NA                 0.0215889   -0.0926987    0.1358766
18 months   ki1066203-TanzaniaChild2   (266-273]            NA                 0.0652086   -0.0564236    0.1868409
18 months   ki1101329-Keneba           (266-273]            NA                 0.0654865    0.0147233    0.1162497
18 months   ki1135781-COHORTS          (266-273]            NA                 0.0426286   -0.0000399    0.0852971
24 months   ki1000108-CMC-V-BCS-2002   (266-273]            NA                -0.1219048   -0.2165487   -0.0272608
24 months   ki1000108-IRC              (266-273]            NA                 0.0365967   -0.0807859    0.1539793
24 months   ki1101329-Keneba           (266-273]            NA                 0.0028149   -0.0552560    0.0608857
24 months   ki1135781-COHORTS          (266-273]            NA                 0.0185874   -0.0163884    0.0535632
3 months    ki1000108-CMC-V-BCS-2002   (266-273]            NA                -0.0438503   -0.1643093    0.0766088
3 months    ki1000108-IRC              (266-273]            NA                 0.0378201   -0.0554595    0.1310996
3 months    ki1066203-TanzaniaChild2   (266-273]            NA                -0.0215837   -0.0823899    0.0392226
3 months    ki1101329-Keneba           (266-273]            NA                 0.0090016   -0.0259382    0.0439414
3 months    ki1135781-COHORTS          (266-273]            NA                 0.0320666    0.0113909    0.0527423
6 months    ki1000108-CMC-V-BCS-2002   (266-273]            NA                -0.0140185   -0.1318020    0.1037650
6 months    ki1000108-IRC              (266-273]            NA                 0.0401437   -0.0561878    0.1364752
6 months    ki1066203-TanzaniaChild2   (266-273]            NA                 0.0221138   -0.0330155    0.0772430
6 months    ki1101329-Keneba           (266-273]            NA                 0.0297585   -0.0043196    0.0638366
6 months    ki1135781-COHORTS          (266-273]            NA                 0.0370765    0.0109079    0.0632450
9 months    ki1000108-CMC-V-BCS-2002   (266-273]            NA                 0.0098236   -0.1127180    0.1323651
9 months    ki1000108-IRC              (266-273]            NA                 0.0433458   -0.0580824    0.1447740
9 months    ki1066203-TanzaniaChild2   (266-273]            NA                -0.0140931   -0.1032156    0.0750293
9 months    ki1101329-Keneba           (266-273]            NA                 0.0225176   -0.0188019    0.0638371
9 months    ki1135781-COHORTS          (266-273]            NA                 0.0448550    0.0150368    0.0746732
Birth       ki1000108-IRC              (266-273]            NA                 0.0423181   -0.0226368    0.1072731
Birth       ki1101329-Keneba           (266-273]            NA                 0.0140020   -0.0074395    0.0354434
Birth       ki1135781-COHORTS          (266-273]            NA                 0.0228729    0.0088473    0.0368986


### Parameter: PAF


agecat      studyid                    intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -------------------  ---------------  -----------  -----------  -----------
12 months   ki1000108-CMC-V-BCS-2002   (266-273]            NA                -0.0123083   -0.3129642    0.2195004
12 months   ki1000108-IRC              (266-273]            NA                 0.1042861   -0.3505481    0.4059424
12 months   ki1066203-TanzaniaChild2   (266-273]            NA                -0.3910870   -1.4214207    0.2008315
12 months   ki1101329-Keneba           (266-273]            NA                 0.1131728   -0.1092796    0.2910151
12 months   ki1135781-COHORTS          (266-273]            NA                 0.0369370   -0.0546048    0.1205329
18 months   ki1000108-CMC-V-BCS-2002   (266-273]            NA                 0.0727145   -0.1245130    0.2353504
18 months   ki1000108-IRC              (266-273]            NA                 0.0608273   -0.3230791    0.3333388
18 months   ki1066203-TanzaniaChild2   (266-273]            NA                 0.2504839   -0.3977512    0.5980870
18 months   ki1101329-Keneba           (266-273]            NA                 0.2009385    0.0290381    0.3424054
18 months   ki1135781-COHORTS          (266-273]            NA                 0.0692965   -0.0027108    0.1361328
24 months   ki1000108-CMC-V-BCS-2002   (266-273]            NA                -0.1713521   -0.3123575   -0.0454969
24 months   ki1000108-IRC              (266-273]            NA                 0.0881033   -0.2430540    0.3310382
24 months   ki1101329-Keneba           (266-273]            NA                 0.0084739   -0.1827008    0.1687466
24 months   ki1135781-COHORTS          (266-273]            NA                 0.0317923   -0.0299169    0.0898041
3 months    ki1000108-CMC-V-BCS-2002   (266-273]            NA                -0.1774892   -0.7821034    0.2219976
3 months    ki1000108-IRC              (266-273]            NA                 0.1721925   -0.3824750    0.5043200
3 months    ki1066203-TanzaniaChild2   (266-273]            NA                -0.3067151   -1.5320225    0.3256362
3 months    ki1101329-Keneba           (266-273]            NA                 0.0768067   -0.2749675    0.3315234
3 months    ki1135781-COHORTS          (266-273]            NA                 0.2297345    0.0665133    0.3644164
6 months    ki1000108-CMC-V-BCS-2002   (266-273]            NA                -0.0481624   -0.5421028    0.2875673
6 months    ki1000108-IRC              (266-273]            NA                 0.1693017   -0.3541486    0.4904107
6 months    ki1066203-TanzaniaChild2   (266-273]            NA                 0.2540386   -0.7431364    0.6807718
6 months    ki1101329-Keneba           (266-273]            NA                 0.2259014   -0.0810569    0.4457011
6 months    ki1135781-COHORTS          (266-273]            NA                 0.1699729    0.0409560    0.2816336
9 months    ki1000108-CMC-V-BCS-2002   (266-273]            NA                 0.0276993   -0.3871818    0.3184969
9 months    ki1000108-IRC              (266-273]            NA                 0.1601732   -0.3118942    0.4623735
9 months    ki1066203-TanzaniaChild2   (266-273]            NA                -0.0991379   -0.9444633    0.3786953
9 months    ki1101329-Keneba           (266-273]            NA                 0.1265582   -0.1394200    0.3304483
9 months    ki1135781-COHORTS          (266-273]            NA                 0.1544109    0.0452983    0.2510531
Birth       ki1000108-IRC              (266-273]            NA                 0.3548951   -0.4999164    0.7225443
Birth       ki1101329-Keneba           (266-273]            NA                 0.2586947   -0.2640352    0.5652545
Birth       ki1135781-COHORTS          (266-273]            NA                 0.3282728    0.0939557    0.5019919


