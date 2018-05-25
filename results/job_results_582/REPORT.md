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
* agecat: 24 months, studyid: ki1000109-EE
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

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 3 months, studyid: ki1000109-EE
* agecat: 3 months, studyid: ki1113344-GMS-Nepal
* agecat: 6 months, studyid: ki1000109-EE
* agecat: 6 months, studyid: ki1113344-GMS-Nepal
* agecat: 12 months, studyid: ki1000109-EE
* agecat: 12 months, studyid: ki1113344-GMS-Nepal
* agecat: 18 months, studyid: ki1000109-EE
* agecat: 18 months, studyid: ki1113344-GMS-Nepal
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 24 months, studyid: ki1000109-EE
* agecat: 24 months, studyid: ki1113344-GMS-Nepal

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness




# Results Detail

## Results Plots
![](/tmp/d698ee1c-3dc8-4eb0-b141-15103fafb8a9/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/d698ee1c-3dc8-4eb0-b141-15103fafb8a9/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/d698ee1c-3dc8-4eb0-b141-15103fafb8a9/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/d698ee1c-3dc8-4eb0-b141-15103fafb8a9/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Data Summary

agecat      studyid                    A               n     nA   nAY0   nAY1
----------  -------------------------  ----------  -----  -----  -----  -----
3 months    ki1000108-CMC-V-BCS-2002   <=266         340     75     42     33
3 months    ki1000108-CMC-V-BCS-2002   (266-273]     340     56     33     23
3 months    ki1000108-CMC-V-BCS-2002   (273-280]     340     82     62     20
3 months    ki1000108-CMC-V-BCS-2002   >280          340    127     83     44
3 months    ki1000108-IRC              <=266         390     74     38     36
3 months    ki1000108-IRC              (266-273]     390     66     50     16
3 months    ki1000108-IRC              (273-280]     390     77     57     20
3 months    ki1000108-IRC              >280          390    173    119     54
3 months    ki1000109-EE               <=266         379    302    101    201
3 months    ki1000109-EE               (266-273]     379     52     23     29
3 months    ki1000109-EE               (273-280]     379      8      6      2
3 months    ki1000109-EE               >280          379     17      8      9
3 months    ki1066203-TanzaniaChild2   <=266         565    135    117     18
3 months    ki1066203-TanzaniaChild2   (266-273]     565     90     81      9
3 months    ki1066203-TanzaniaChild2   (273-280]     565     94     84     10
3 months    ki1066203-TanzaniaChild2   >280          565    246    227     19
3 months    ki1101329-Keneba           <=266        1558    469    324    145
3 months    ki1101329-Keneba           (266-273]    1558    332    263     69
3 months    ki1101329-Keneba           (273-280]    1558    373    305     68
3 months    ki1101329-Keneba           >280         1558    384    331     53
3 months    ki1113344-GMS-Nepal        <=266         593      1      0      1
3 months    ki1113344-GMS-Nepal        (266-273]     593    588    495     93
3 months    ki1113344-GMS-Nepal        (273-280]     593      0      0      0
3 months    ki1113344-GMS-Nepal        >280          593      4      4      0
3 months    ki1135781-COHORTS          <=266        4749   1920   1494    426
3 months    ki1135781-COHORTS          (266-273]    4749    894    786    108
3 months    ki1135781-COHORTS          (273-280]    4749    956    842    114
3 months    ki1135781-COHORTS          >280         4749    979    864    115
6 months    ki1000108-CMC-V-BCS-2002   <=266         345     76     34     42
6 months    ki1000108-CMC-V-BCS-2002   (266-273]     345     58     28     30
6 months    ki1000108-CMC-V-BCS-2002   (273-280]     345     84     44     40
6 months    ki1000108-CMC-V-BCS-2002   >280          345    127     63     64
6 months    ki1000108-IRC              <=266         388     74     33     41
6 months    ki1000108-IRC              (266-273]     388     66     41     25
6 months    ki1000108-IRC              (273-280]     388     77     46     31
6 months    ki1000108-IRC              >280          388    171    104     67
6 months    ki1000109-EE               <=266         373    299     69    230
6 months    ki1000109-EE               (266-273]     373     49     16     33
6 months    ki1000109-EE               (273-280]     373      8      3      5
6 months    ki1000109-EE               >280          373     17      8      9
6 months    ki1066203-TanzaniaChild2   <=266         522    119     92     27
6 months    ki1066203-TanzaniaChild2   (266-273]     522     84     71     13
6 months    ki1066203-TanzaniaChild2   (273-280]     522     90     73     17
6 months    ki1066203-TanzaniaChild2   >280          522    229    188     41
6 months    ki1101329-Keneba           <=266        1470    441    273    168
6 months    ki1101329-Keneba           (266-273]    1470    319    228     91
6 months    ki1101329-Keneba           (273-280]    1470    348    259     89
6 months    ki1101329-Keneba           >280         1470    362    275     87
6 months    ki1113344-GMS-Nepal        <=266         567      1      0      1
6 months    ki1113344-GMS-Nepal        (266-273]     567    563    402    161
6 months    ki1113344-GMS-Nepal        (273-280]     567      0      0      0
6 months    ki1113344-GMS-Nepal        >280          567      3      3      0
6 months    ki1135781-COHORTS          <=266        2872   1206    796    410
6 months    ki1135781-COHORTS          (266-273]    2872    554    454    100
6 months    ki1135781-COHORTS          (273-280]    2872    581    453    128
6 months    ki1135781-COHORTS          >280         2872    531    444     87
12 months   ki1000108-CMC-V-BCS-2002   <=266         350     76     24     52
12 months   ki1000108-CMC-V-BCS-2002   (266-273]     350     60     20     40
12 months   ki1000108-CMC-V-BCS-2002   (273-280]     350     84     25     59
12 months   ki1000108-CMC-V-BCS-2002   >280          350    130     40     90
12 months   ki1000108-IRC              <=266         388     73     26     47
12 months   ki1000108-IRC              (266-273]     388     66     32     34
12 months   ki1000108-IRC              (273-280]     388     77     42     35
12 months   ki1000108-IRC              >280          388    172     92     80
12 months   ki1000109-EE               <=266         373    297     45    252
12 months   ki1000109-EE               (266-273]     373     51     13     38
12 months   ki1000109-EE               (273-280]     373      8      1      7
12 months   ki1000109-EE               >280          373     17      6     11
12 months   ki1066203-TanzaniaChild2   <=266         464    116     74     42
12 months   ki1066203-TanzaniaChild2   (266-273]     464     72     50     22
12 months   ki1066203-TanzaniaChild2   (273-280]     464     80     56     24
12 months   ki1066203-TanzaniaChild2   >280          464    196    138     58
12 months   ki1101329-Keneba           <=266        1521    444    228    216
12 months   ki1101329-Keneba           (266-273]    1521    325    202    123
12 months   ki1101329-Keneba           (273-280]    1521    372    235    137
12 months   ki1101329-Keneba           >280         1521    380    249    131
12 months   ki1113344-GMS-Nepal        <=266         582      1      0      1
12 months   ki1113344-GMS-Nepal        (266-273]     582    577    314    263
12 months   ki1113344-GMS-Nepal        (273-280]     582      0      0      0
12 months   ki1113344-GMS-Nepal        >280          582      4      3      1
12 months   ki1135781-COHORTS          <=266        4441   1776    868    908
12 months   ki1135781-COHORTS          (266-273]    4441    844    504    340
12 months   ki1135781-COHORTS          (273-280]    4441    904    561    343
12 months   ki1135781-COHORTS          >280         4441    917    546    371
18 months   ki1000108-CMC-V-BCS-2002   <=266         351     76     15     61
18 months   ki1000108-CMC-V-BCS-2002   (266-273]     351     60     10     50
18 months   ki1000108-CMC-V-BCS-2002   (273-280]     351     84     14     70
18 months   ki1000108-CMC-V-BCS-2002   >280          351    131     18    113
18 months   ki1000108-IRC              <=266         389     73     20     53
18 months   ki1000108-IRC              (266-273]     389     66     31     35
18 months   ki1000108-IRC              (273-280]     389     77     37     40
18 months   ki1000108-IRC              >280          389    173     82     91
18 months   ki1000109-EE               <=266         363    290     19    271
18 months   ki1000109-EE               (266-273]     363     49      9     40
18 months   ki1000109-EE               (273-280]     363      7      0      7
18 months   ki1000109-EE               >280          363     17      4     13
18 months   ki1066203-TanzaniaChild2   <=266         338     85     47     38
18 months   ki1066203-TanzaniaChild2   (266-273]     338     53     30     23
18 months   ki1066203-TanzaniaChild2   (273-280]     338     57     29     28
18 months   ki1066203-TanzaniaChild2   >280          338    143     89     54
18 months   ki1101329-Keneba           <=266        1473    436    186    250
18 months   ki1101329-Keneba           (266-273]    1473    318    169    149
18 months   ki1101329-Keneba           (273-280]    1473    356    181    175
18 months   ki1101329-Keneba           >280         1473    363    202    161
18 months   ki1113344-GMS-Nepal        <=266         574      1      0      1
18 months   ki1113344-GMS-Nepal        (266-273]     574    569    214    355
18 months   ki1113344-GMS-Nepal        (273-280]     574      0      0      0
18 months   ki1113344-GMS-Nepal        >280          574      4      2      2
18 months   ki1135781-COHORTS          <=266        2916   1206    367    839
18 months   ki1135781-COHORTS          (266-273]    2916    538    220    318
18 months   ki1135781-COHORTS          (273-280]    2916    603    244    359
18 months   ki1135781-COHORTS          >280         2916    569    223    346
24 months   ki1000108-CMC-V-BCS-2002   <=266         351     76      7     69
24 months   ki1000108-CMC-V-BCS-2002   (266-273]     351     60      3     57
24 months   ki1000108-CMC-V-BCS-2002   (273-280]     351     84      8     76
24 months   ki1000108-CMC-V-BCS-2002   >280          351    131     10    121
24 months   ki1000108-IRC              <=266         390     74     17     57
24 months   ki1000108-IRC              (266-273]     390     66     26     40
24 months   ki1000108-IRC              (273-280]     390     77     31     46
24 months   ki1000108-IRC              >280          390    173     64    109
24 months   ki1000109-EE               <=266         338    272     17    255
24 months   ki1000109-EE               (266-273]     338     45      8     37
24 months   ki1000109-EE               (273-280]     338      6      0      6
24 months   ki1000109-EE               >280          338     15      2     13
24 months   ki1066203-TanzaniaChild2   <=266         235     55     28     27
24 months   ki1066203-TanzaniaChild2   (266-273]     235     40     19     21
24 months   ki1066203-TanzaniaChild2   (273-280]     235     45     22     23
24 months   ki1066203-TanzaniaChild2   >280          235     95     54     41
24 months   ki1101329-Keneba           <=266        1446    427    155    272
24 months   ki1101329-Keneba           (266-273]    1446    316    148    168
24 months   ki1101329-Keneba           (273-280]    1446    353    148    205
24 months   ki1101329-Keneba           >280         1446    350    166    184
24 months   ki1113344-GMS-Nepal        <=266         568      1      0      1
24 months   ki1113344-GMS-Nepal        (266-273]     568    563    174    389
24 months   ki1113344-GMS-Nepal        (273-280]     568      0      0      0
24 months   ki1113344-GMS-Nepal        >280          568      4      2      2
24 months   ki1135781-COHORTS          <=266        2856   1179    242    937
24 months   ki1135781-COHORTS          (266-273]    2856    537    134    403
24 months   ki1135781-COHORTS          (273-280]    2856    587    155    432
24 months   ki1135781-COHORTS          >280         2856    553    131    422

## Results Table

### Parameter: TSM


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki1000108-CMC-V-BCS-2002   <=266                NA                0.4400000   0.3274936   0.5525064
3 months    ki1000108-CMC-V-BCS-2002   (266-273]            NA                0.4107143   0.2816736   0.5397549
3 months    ki1000108-CMC-V-BCS-2002   (273-280]            NA                0.2439024   0.1508179   0.3369870
3 months    ki1000108-CMC-V-BCS-2002   >280                 NA                0.3464567   0.2635771   0.4293363
3 months    ki1000108-IRC              <=266                NA                0.4864865   0.3724612   0.6005117
3 months    ki1000108-IRC              (266-273]            NA                0.2424242   0.1389018   0.3459467
3 months    ki1000108-IRC              (273-280]            NA                0.2597403   0.1616735   0.3578070
3 months    ki1000108-IRC              >280                 NA                0.3121387   0.2430023   0.3812751
3 months    ki1066203-TanzaniaChild2   <=266                NA                0.1333333   0.0759400   0.1907266
3 months    ki1066203-TanzaniaChild2   (266-273]            NA                0.1000000   0.0379656   0.1620344
3 months    ki1066203-TanzaniaChild2   (273-280]            NA                0.1063830   0.0439979   0.1687680
3 months    ki1066203-TanzaniaChild2   >280                 NA                0.0772358   0.0438455   0.1106260
3 months    ki1101329-Keneba           <=266                NA                0.3091684   0.2673291   0.3510078
3 months    ki1101329-Keneba           (266-273]            NA                0.2078313   0.1641714   0.2514912
3 months    ki1101329-Keneba           (273-280]            NA                0.1823056   0.1431108   0.2215004
3 months    ki1101329-Keneba           >280                 NA                0.1380208   0.1035110   0.1725306
3 months    ki1135781-COHORTS          <=266                NA                0.2218750   0.2032875   0.2404625
3 months    ki1135781-COHORTS          (266-273]            NA                0.1208054   0.0994400   0.1421708
3 months    ki1135781-COHORTS          (273-280]            NA                0.1192469   0.0987014   0.1397923
3 months    ki1135781-COHORTS          >280                 NA                0.1174668   0.0972959   0.1376377
6 months    ki1000108-CMC-V-BCS-2002   <=266                NA                0.5526316   0.4406821   0.6645811
6 months    ki1000108-CMC-V-BCS-2002   (266-273]            NA                0.5172414   0.3884532   0.6460296
6 months    ki1000108-CMC-V-BCS-2002   (273-280]            NA                0.4761905   0.3692318   0.5831491
6 months    ki1000108-CMC-V-BCS-2002   >280                 NA                0.5039370   0.4168541   0.5910200
6 months    ki1000108-IRC              <=266                NA                0.5540541   0.4406549   0.6674532
6 months    ki1000108-IRC              (266-273]            NA                0.3787879   0.2616076   0.4959682
6 months    ki1000108-IRC              (273-280]            NA                0.4025974   0.2929162   0.5122786
6 months    ki1000108-IRC              >280                 NA                0.3918129   0.3185526   0.4650731
6 months    ki1066203-TanzaniaChild2   <=266                NA                0.2268908   0.1515691   0.3022124
6 months    ki1066203-TanzaniaChild2   (266-273]            NA                0.1547619   0.0773431   0.2321807
6 months    ki1066203-TanzaniaChild2   (273-280]            NA                0.1888889   0.1079445   0.2698333
6 months    ki1066203-TanzaniaChild2   >280                 NA                0.1790393   0.1293364   0.2287422
6 months    ki1101329-Keneba           <=266                NA                0.3809524   0.3356132   0.4262916
6 months    ki1101329-Keneba           (266-273]            NA                0.2852665   0.2356989   0.3348341
6 months    ki1101329-Keneba           (273-280]            NA                0.2557471   0.2098937   0.3016006
6 months    ki1101329-Keneba           >280                 NA                0.2403315   0.1963004   0.2843625
6 months    ki1135781-COHORTS          <=266                NA                0.3399668   0.3132275   0.3667062
6 months    ki1135781-COHORTS          (266-273]            NA                0.1805054   0.1484732   0.2125376
6 months    ki1135781-COHORTS          (273-280]            NA                0.2203098   0.1866033   0.2540163
6 months    ki1135781-COHORTS          >280                 NA                0.1638418   0.1323547   0.1953289
12 months   ki1000108-CMC-V-BCS-2002   <=266                NA                0.6842105   0.5795564   0.7888646
12 months   ki1000108-CMC-V-BCS-2002   (266-273]            NA                0.6666667   0.5472163   0.7861170
12 months   ki1000108-CMC-V-BCS-2002   (273-280]            NA                0.7023810   0.6044666   0.8002953
12 months   ki1000108-CMC-V-BCS-2002   >280                 NA                0.6923077   0.6128555   0.7717598
12 months   ki1000108-IRC              <=266                NA                0.6438356   0.5338439   0.7538273
12 months   ki1000108-IRC              (266-273]            NA                0.5151515   0.3944238   0.6358792
12 months   ki1000108-IRC              (273-280]            NA                0.4545455   0.3431850   0.5659059
12 months   ki1000108-IRC              >280                 NA                0.4651163   0.3904792   0.5397534
12 months   ki1066203-TanzaniaChild2   <=266                NA                0.3620690   0.2745162   0.4496218
12 months   ki1066203-TanzaniaChild2   (266-273]            NA                0.3055556   0.1990397   0.4120714
12 months   ki1066203-TanzaniaChild2   (273-280]            NA                0.3000000   0.1994733   0.4005267
12 months   ki1066203-TanzaniaChild2   >280                 NA                0.2959184   0.2319469   0.3598898
12 months   ki1101329-Keneba           <=266                NA                0.4864865   0.4399803   0.5329927
12 months   ki1101329-Keneba           (266-273]            NA                0.3784615   0.3257150   0.4312081
12 months   ki1101329-Keneba           (273-280]            NA                0.3682796   0.3192486   0.4173106
12 months   ki1101329-Keneba           >280                 NA                0.3447368   0.2969343   0.3925394
12 months   ki1135781-COHORTS          <=266                NA                0.5112613   0.4880106   0.5345119
12 months   ki1135781-COHORTS          (266-273]            NA                0.4028436   0.3697505   0.4359367
12 months   ki1135781-COHORTS          (273-280]            NA                0.3794248   0.3477894   0.4110601
12 months   ki1135781-COHORTS          >280                 NA                0.4045802   0.3728095   0.4363508
18 months   ki1000108-CMC-V-BCS-2002   <=266                NA                0.8026316   0.7130213   0.8922418
18 months   ki1000108-CMC-V-BCS-2002   (266-273]            NA                0.8333333   0.7388999   0.9277668
18 months   ki1000108-CMC-V-BCS-2002   (273-280]            NA                0.8333333   0.7535225   0.9131441
18 months   ki1000108-CMC-V-BCS-2002   >280                 NA                0.8625954   0.8035568   0.9216340
18 months   ki1000108-IRC              <=266                NA                0.7260274   0.6235860   0.8284688
18 months   ki1000108-IRC              (266-273]            NA                0.5303030   0.4097423   0.6508638
18 months   ki1000108-IRC              (273-280]            NA                0.5194805   0.4077423   0.6312188
18 months   ki1000108-IRC              >280                 NA                0.5260116   0.4515100   0.6005131
18 months   ki1066203-TanzaniaChild2   <=266                NA                0.4470588   0.3412057   0.5529120
18 months   ki1066203-TanzaniaChild2   (266-273]            NA                0.4339623   0.3003328   0.5675917
18 months   ki1066203-TanzaniaChild2   (273-280]            NA                0.4912281   0.3612538   0.6212023
18 months   ki1066203-TanzaniaChild2   >280                 NA                0.3776224   0.2980469   0.4571979
18 months   ki1101329-Keneba           <=266                NA                0.5733945   0.5269545   0.6198345
18 months   ki1101329-Keneba           (266-273]            NA                0.4685535   0.4136890   0.5234180
18 months   ki1101329-Keneba           (273-280]            NA                0.4915730   0.4396238   0.5435222
18 months   ki1101329-Keneba           >280                 NA                0.4435262   0.3924022   0.4946501
18 months   ki1135781-COHORTS          <=266                NA                0.6956882   0.6697156   0.7216608
18 months   ki1135781-COHORTS          (266-273]            NA                0.5910781   0.5495278   0.6326284
18 months   ki1135781-COHORTS          (273-280]            NA                0.5953566   0.5561744   0.6345387
18 months   ki1135781-COHORTS          >280                 NA                0.6080844   0.5679659   0.6482029
24 months   ki1000108-IRC              <=266                NA                0.7702703   0.6743037   0.8662368
24 months   ki1000108-IRC              (266-273]            NA                0.6060606   0.4880268   0.7240944
24 months   ki1000108-IRC              (273-280]            NA                0.5974026   0.4877221   0.7070831
24 months   ki1000108-IRC              >280                 NA                0.6300578   0.5580234   0.7020922
24 months   ki1066203-TanzaniaChild2   <=266                NA                0.4909091   0.3585082   0.6233100
24 months   ki1066203-TanzaniaChild2   (266-273]            NA                0.5250000   0.3699147   0.6800853
24 months   ki1066203-TanzaniaChild2   (273-280]            NA                0.5111111   0.3647484   0.6574739
24 months   ki1066203-TanzaniaChild2   >280                 NA                0.4315789   0.3317682   0.5313897
24 months   ki1101329-Keneba           <=266                NA                0.6370023   0.5913769   0.6826278
24 months   ki1101329-Keneba           (266-273]            NA                0.5316456   0.4766088   0.5866824
24 months   ki1101329-Keneba           (273-280]            NA                0.5807365   0.5292440   0.6322291
24 months   ki1101329-Keneba           >280                 NA                0.5257143   0.4733833   0.5780453
24 months   ki1135781-COHORTS          <=266                NA                0.7947413   0.7716828   0.8177998
24 months   ki1135781-COHORTS          (266-273]            NA                0.7504655   0.7138583   0.7870728
24 months   ki1135781-COHORTS          (273-280]            NA                0.7359455   0.7002778   0.7716132
24 months   ki1135781-COHORTS          >280                 NA                0.7631103   0.7276675   0.7985531


### Parameter: E(Y)


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki1000108-CMC-V-BCS-2002   NA                   NA                0.3529412   0.3453355   0.3605468
3 months    ki1000108-IRC              NA                   NA                0.3230769   0.3147552   0.3313986
3 months    ki1066203-TanzaniaChild2   NA                   NA                0.0991150   0.0972750   0.1009551
3 months    ki1101329-Keneba           NA                   NA                0.2150193   0.2117256   0.2183129
3 months    ki1135781-COHORTS          NA                   NA                0.1606654   0.1592308   0.1621000
6 months    ki1000108-CMC-V-BCS-2002   NA                   NA                0.5101449   0.5073470   0.5129428
6 months    ki1000108-IRC              NA                   NA                0.4226804   0.4162859   0.4290749
6 months    ki1066203-TanzaniaChild2   NA                   NA                0.1877395   0.1857113   0.1897676
6 months    ki1101329-Keneba           NA                   NA                0.2959184   0.2929644   0.2988723
6 months    ki1135781-COHORTS          NA                   NA                0.2524373   0.2496335   0.2552411
12 months   ki1000108-CMC-V-BCS-2002   NA                   NA                0.6885714   0.6873419   0.6898009
12 months   ki1000108-IRC              NA                   NA                0.5051546   0.4982130   0.5120963
12 months   ki1066203-TanzaniaChild2   NA                   NA                0.3146552   0.3121438   0.3171666
12 months   ki1101329-Keneba           NA                   NA                0.3990796   0.3961957   0.4019635
12 months   ki1135781-COHORTS          NA                   NA                0.4417924   0.4401037   0.4434811
18 months   ki1000108-CMC-V-BCS-2002   NA                   NA                0.8376068   0.8352516   0.8399621
18 months   ki1000108-IRC              NA                   NA                0.5629820   0.5551774   0.5707867
18 months   ki1066203-TanzaniaChild2   NA                   NA                0.4230769   0.4185214   0.4276325
18 months   ki1101329-Keneba           NA                   NA                0.4989817   0.4963718   0.5015915
18 months   ki1135781-COHORTS          NA                   NA                0.6385460   0.6367926   0.6402994
24 months   ki1000108-IRC              NA                   NA                0.6461538   0.6400448   0.6522629
24 months   ki1066203-TanzaniaChild2   NA                   NA                0.4765957   0.4716432   0.4815483
24 months   ki1101329-Keneba           NA                   NA                0.5733057   0.5709210   0.5756903
24 months   ki1135781-COHORTS          NA                   NA                0.7682073   0.7673325   0.7690821


### Parameter: RR


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki1000108-CMC-V-BCS-2002   (266-273]            <=266             0.9334416   0.6225312   1.3996296
3 months    ki1000108-CMC-V-BCS-2002   (273-280]            <=266             0.5543237   0.3501506   0.8775503
3 months    ki1000108-CMC-V-BCS-2002   >280                 <=266             0.7874016   0.5547876   1.1175471
3 months    ki1000108-IRC              (266-273]            <=266             0.4983165   0.3061606   0.8110753
3 months    ki1000108-IRC              (273-280]            <=266             0.5339105   0.3423503   0.8326572
3 months    ki1000108-IRC              >280                 <=266             0.6416185   0.4647551   0.8857875
3 months    ki1066203-TanzaniaChild2   (266-273]            <=266             0.7500000   0.3524872   1.5958028
3 months    ki1066203-TanzaniaChild2   (273-280]            <=266             0.7978723   0.3854858   1.6514233
3 months    ki1066203-TanzaniaChild2   >280                 <=266             0.5792683   0.3147242   1.0661771
3 months    ki1101329-Keneba           (266-273]            <=266             0.6722268   0.5235886   0.8630611
3 months    ki1101329-Keneba           (273-280]            <=266             0.5896644   0.4573792   0.7602097
3 months    ki1101329-Keneba           >280                 <=266             0.4464260   0.3359514   0.5932291
3 months    ki1135781-COHORTS          (266-273]            <=266             0.5444749   0.4477011   0.6621671
3 months    ki1135781-COHORTS          (273-280]            <=266             0.5374506   0.4437477   0.6509402
3 months    ki1135781-COHORTS          >280                 <=266             0.5294278   0.4373506   0.6408905
6 months    ki1000108-CMC-V-BCS-2002   (266-273]            <=266             0.9359606   0.6789760   1.2902109
6 months    ki1000108-CMC-V-BCS-2002   (273-280]            <=266             0.8616780   0.6367723   1.1660196
6 months    ki1000108-CMC-V-BCS-2002   >280                 <=266             0.9118860   0.6987182   1.1900880
6 months    ki1000108-IRC              (266-273]            <=266             0.6836659   0.4717910   0.9906911
6 months    ki1000108-IRC              (273-280]            <=266             0.7266392   0.5168124   1.0216562
6 months    ki1000108-IRC              >280                 <=266             0.7071744   0.5359587   0.9330863
6 months    ki1066203-TanzaniaChild2   (266-273]            <=266             0.6820988   0.3742032   1.2433318
6 months    ki1066203-TanzaniaChild2   (273-280]            <=266             0.8325103   0.4841392   1.4315581
6 months    ki1066203-TanzaniaChild2   >280                 <=266             0.7890991   0.5119062   1.2163897
6 months    ki1101329-Keneba           (266-273]            <=266             0.7488245   0.6066148   0.9243726
6 months    ki1101329-Keneba           (273-280]            <=266             0.6713362   0.5413531   0.8325293
6 months    ki1101329-Keneba           >280                 <=266             0.6308702   0.5070589   0.7849131
6 months    ki1135781-COHORTS          (266-273]            <=266             0.5309501   0.4372741   0.6446939
6 months    ki1135781-COHORTS          (273-280]            <=266             0.6480332   0.5456146   0.7696771
6 months    ki1135781-COHORTS          >280                 <=266             0.4819347   0.3915669   0.5931580
12 months   ki1000108-CMC-V-BCS-2002   (266-273]            <=266             0.9743590   0.7698507   1.2331941
12 months   ki1000108-CMC-V-BCS-2002   (273-280]            <=266             1.0265568   0.8346514   1.2625856
12 months   ki1000108-CMC-V-BCS-2002   >280                 <=266             1.0118343   0.8357226   1.2250580
12 months   ki1000108-IRC              (266-273]            <=266             0.8001289   0.5986997   1.0693279
12 months   ki1000108-IRC              (273-280]            <=266             0.7059961   0.5237078   0.9517340
12 months   ki1000108-IRC              >280                 <=266             0.7224146   0.5714715   0.9132266
12 months   ki1066203-TanzaniaChild2   (266-273]            <=266             0.8439153   0.5521369   1.2898851
12 months   ki1066203-TanzaniaChild2   (273-280]            <=266             0.8285714   0.5481092   1.2525436
12 months   ki1066203-TanzaniaChild2   >280                 <=266             0.8172983   0.5909009   1.1304377
12 months   ki1101329-Keneba           (266-273]            <=266             0.7779487   0.6569810   0.9211899
12 months   ki1101329-Keneba           (273-280]            <=266             0.7570191   0.6425774   0.8918426
12 months   ki1101329-Keneba           >280                 <=266             0.7086257   0.5987862   0.8386139
12 months   ki1135781-COHORTS          (266-273]            <=266             0.7879408   0.7173230   0.8655107
12 months   ki1135781-COHORTS          (273-280]            <=266             0.7421348   0.6748954   0.8160733
12 months   ki1135781-COHORTS          >280                 <=266             0.7913374   0.7226890   0.8665067
18 months   ki1000108-CMC-V-BCS-2002   (266-273]            <=266             1.0382514   0.8855545   1.2172778
18 months   ki1000108-CMC-V-BCS-2002   (273-280]            <=266             1.0382514   0.8962302   1.2027779
18 months   ki1000108-CMC-V-BCS-2002   >280                 <=266             1.0747090   0.9427964   1.2250784
18 months   ki1000108-IRC              (266-273]            <=266             0.7304174   0.5589422   0.9544986
18 months   ki1000108-IRC              (273-280]            <=266             0.7155109   0.5532177   0.9254149
18 months   ki1000108-IRC              >280                 <=266             0.7245065   0.5932214   0.8848462
18 months   ki1066203-TanzaniaChild2   (266-273]            <=266             0.9707051   0.6582505   1.4314737
18 months   ki1066203-TanzaniaChild2   (273-280]            <=266             1.0987996   0.7703989   1.5671890
18 months   ki1066203-TanzaniaChild2   >280                 <=266             0.8446816   0.6152266   1.1597142
18 months   ki1101329-Keneba           (266-273]            <=266             0.8171572   0.7087176   0.9421890
18 months   ki1101329-Keneba           (273-280]            <=266             0.8573034   0.7504299   0.9793974
18 months   ki1101329-Keneba           >280                 <=266             0.7735096   0.6718681   0.8905278
18 months   ki1135781-COHORTS          (266-273]            <=266             0.8496307   0.7846260   0.9200209
18 months   ki1135781-COHORTS          (273-280]            <=266             0.8557807   0.7934174   0.9230458
18 months   ki1135781-COHORTS          >280                 <=266             0.8740760   0.8102650   0.9429122
24 months   ki1000108-IRC              (266-273]            <=266             0.7868155   0.6244036   0.9914720
24 months   ki1000108-IRC              (273-280]            <=266             0.7755753   0.6212464   0.9682423
24 months   ki1000108-IRC              >280                 <=266             0.8179698   0.6907164   0.9686676
24 months   ki1066203-TanzaniaChild2   (266-273]            <=266             1.0694444   0.7168678   1.5954287
24 months   ki1066203-TanzaniaChild2   (273-280]            <=266             1.0411523   0.7025439   1.5429613
24 months   ki1066203-TanzaniaChild2   >280                 <=266             0.8791423   0.6162565   1.2541713
24 months   ki1101329-Keneba           (266-273]            <=266             0.8346054   0.7358855   0.9465686
24 months   ki1101329-Keneba           (273-280]            <=266             0.9116710   0.8134596   1.0217397
24 months   ki1101329-Keneba           >280                 <=266             0.8252941   0.7300453   0.9329700
24 months   ki1135781-COHORTS          (266-273]            <=266             0.9442891   0.8921876   0.9994332
24 months   ki1135781-COHORTS          (273-280]            <=266             0.9260189   0.8751617   0.9798315
24 months   ki1135781-COHORTS          >280                 <=266             0.9601996   0.9090303   1.0142493


### Parameter: PAR


agecat      studyid                    intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -------------------  ---------------  -----------  -----------  -----------
3 months    ki1000108-CMC-V-BCS-2002   <=266                NA                -0.0870588   -0.1998221    0.0257044
3 months    ki1000108-IRC              <=266                NA                -0.1634096   -0.2777381   -0.0490810
3 months    ki1066203-TanzaniaChild2   <=266                NA                -0.0342183   -0.0916411    0.0232045
3 months    ki1101329-Keneba           <=266                NA                -0.0941492   -0.1361180   -0.0521804
3 months    ki1135781-COHORTS          <=266                NA                -0.0612096   -0.0798524   -0.0425668
6 months    ki1000108-CMC-V-BCS-2002   <=266                NA                -0.0424867   -0.1544711    0.0694978
6 months    ki1000108-IRC              <=266                NA                -0.1313736   -0.2449529   -0.0177943
6 months    ki1066203-TanzaniaChild2   <=266                NA                -0.0391513   -0.1145002    0.0361977
6 months    ki1101329-Keneba           <=266                NA                -0.0850340   -0.1304693   -0.0395987
6 months    ki1135781-COHORTS          <=266                NA                -0.0875295   -0.1144155   -0.0606435
12 months   ki1000108-CMC-V-BCS-2002   <=266                NA                 0.0043609   -0.1003004    0.1090222
12 months   ki1000108-IRC              <=266                NA                -0.1386810   -0.2488915   -0.0284705
12 months   ki1066203-TanzaniaChild2   <=266                NA                -0.0474138   -0.1350026    0.0401750
12 months   ki1101329-Keneba           <=266                NA                -0.0874069   -0.1340025   -0.0408114
12 months   ki1135781-COHORTS          <=266                NA                -0.0694689   -0.0927808   -0.0461570
18 months   ki1000108-CMC-V-BCS-2002   <=266                NA                 0.0349753   -0.0546660    0.1246165
18 months   ki1000108-IRC              <=266                NA                -0.1630454   -0.2657837   -0.0603071
18 months   ki1066203-TanzaniaChild2   <=266                NA                -0.0239819   -0.1299330    0.0819692
18 months   ki1101329-Keneba           <=266                NA                -0.0744128   -0.1209261   -0.0278995
18 months   ki1135781-COHORTS          <=266                NA                -0.0571423   -0.0831740   -0.0311105
24 months   ki1000108-IRC              <=266                NA                -0.1241164   -0.2202772   -0.0279556
24 months   ki1066203-TanzaniaChild2   <=266                NA                -0.0143133   -0.1468068    0.1181802
24 months   ki1101329-Keneba           <=266                NA                -0.0636967   -0.1093844   -0.0180090
24 months   ki1135781-COHORTS          <=266                NA                -0.0265340   -0.0496091   -0.0034589


### Parameter: PAF


agecat      studyid                    intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -------------------  ---------------  -----------  -----------  -----------
3 months    ki1000108-CMC-V-BCS-2002   <=266                NA                -0.2466667   -0.6113563    0.0354847
3 months    ki1000108-IRC              <=266                NA                -0.5057915   -0.9062062   -0.1894873
3 months    ki1066203-TanzaniaChild2   <=266                NA                -0.3452381   -1.0697359    0.1256539
3 months    ki1101329-Keneba           <=266                NA                -0.4378640   -0.6476523   -0.2547871
3 months    ki1135781-COHORTS          <=266                NA                -0.3809756   -0.5023636   -0.2693955
6 months    ki1000108-CMC-V-BCS-2002   <=266                NA                -0.0832835   -0.3266357    0.1154293
6 months    ki1000108-IRC              <=266                NA                -0.3108108   -0.6094232   -0.0676029
6 months    ki1066203-TanzaniaChild2   <=266                NA                -0.2085406   -0.6846577    0.1330166
6 months    ki1101329-Keneba           <=266                NA                -0.2873563   -0.4506679   -0.1424298
6 months    ki1135781-COHORTS          <=266                NA                -0.3467376   -0.4580768   -0.2439003
12 months   ki1000108-CMC-V-BCS-2002   <=266                NA                 0.0063333   -0.1579058    0.1472764
12 months   ki1000108-IRC              <=266                NA                -0.2745317   -0.5128098   -0.0737841
12 months   ki1066203-TanzaniaChild2   <=266                NA                -0.1506849   -0.4656540    0.0965973
12 months   ki1101329-Keneba           <=266                NA                -0.2190213   -0.3416727   -0.1075823
12 months   ki1135781-COHORTS          <=266                NA                -0.1572433   -0.2112805   -0.1056167
18 months   ki1000108-CMC-V-BCS-2002   <=266                NA                 0.0417562   -0.0714662    0.1430143
18 months   ki1000108-IRC              <=266                NA                -0.2896103   -0.4860448   -0.1191418
18 months   ki1066203-TanzaniaChild2   <=266                NA                -0.0566845   -0.3393142    0.1663031
18 months   ki1101329-Keneba           <=266                NA                -0.1491294   -0.2462819   -0.0595502
18 months   ki1135781-COHORTS          <=266                NA                -0.0894881   -0.1310456   -0.0494576
24 months   ki1000108-IRC              <=266                NA                -0.1920849   -0.3507368   -0.0520677
24 months   ki1066203-TanzaniaChild2   <=266                NA                -0.0300325   -0.3491786    0.2136202
24 months   ki1101329-Keneba           <=266                NA                -0.1111042   -0.1937507   -0.0341796
24 months   ki1135781-COHORTS          <=266                NA                -0.0345402   -0.0650196   -0.0049330


