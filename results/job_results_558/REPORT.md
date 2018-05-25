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
* agecat: Birth, studyid: ki1000108-IRC
* agecat: Birth, studyid: ki1000109-EE
* agecat: Birth, studyid: ki1101329-Keneba
* agecat: 3 months, studyid: ki1000108-IRC
* agecat: 3 months, studyid: ki1000109-EE
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2
* agecat: 3 months, studyid: ki1101329-Keneba
* agecat: 3 months, studyid: ki1113344-GMS-Nepal
* agecat: 6 months, studyid: ki1000108-IRC
* agecat: 6 months, studyid: ki1000109-EE
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2
* agecat: 6 months, studyid: ki1101329-Keneba
* agecat: 6 months, studyid: ki1113344-GMS-Nepal
* agecat: 9 months, studyid: ki1000108-IRC
* agecat: 9 months, studyid: ki1000109-EE
* agecat: 9 months, studyid: ki1066203-TanzaniaChild2
* agecat: 9 months, studyid: ki1113344-GMS-Nepal
* agecat: 12 months, studyid: ki1000109-EE
* agecat: 12 months, studyid: ki1066203-TanzaniaChild2
* agecat: 12 months, studyid: ki1113344-GMS-Nepal
* agecat: 18 months, studyid: ki1000108-IRC
* agecat: 18 months, studyid: ki1000109-EE
* agecat: 18 months, studyid: ki1066203-TanzaniaChild2
* agecat: 18 months, studyid: ki1113344-GMS-Nepal
* agecat: 24 months, studyid: ki1000108-IRC
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2
* agecat: 24 months, studyid: ki1113344-GMS-Nepal

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness




# Results Detail

## Results Plots
![](/tmp/c9d6a2bb-ba93-4694-934b-fd6d092983db/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/c9d6a2bb-ba93-4694-934b-fd6d092983db/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/c9d6a2bb-ba93-4694-934b-fd6d092983db/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/c9d6a2bb-ba93-4694-934b-fd6d092983db/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Data Summary

agecat      studyid                    A               n     nA   nAY0   nAY1
----------  -------------------------  ----------  -----  -----  -----  -----
Birth       ki1000108-CMC-V-BCS-2002   <=266          90     18     18      0
Birth       ki1000108-CMC-V-BCS-2002   (266-273]      90     15     15      0
Birth       ki1000108-CMC-V-BCS-2002   (273-280]      90     18     16      2
Birth       ki1000108-CMC-V-BCS-2002   >280           90     39     38      1
Birth       ki1000108-IRC              <=266         369     66     63      3
Birth       ki1000108-IRC              (266-273]     369     65     63      2
Birth       ki1000108-IRC              (273-280]     369     71     69      2
Birth       ki1000108-IRC              >280          369    167    159      8
Birth       ki1000109-EE               <=266           2      2      2      0
Birth       ki1000109-EE               (266-273]       2      0      0      0
Birth       ki1000109-EE               (273-280]       2      0      0      0
Birth       ki1000109-EE               >280            2      0      0      0
Birth       ki1066203-TanzaniaChild2   <=266           0      0      0      0
Birth       ki1066203-TanzaniaChild2   (266-273]       0      0      0      0
Birth       ki1066203-TanzaniaChild2   (273-280]       0      0      0      0
Birth       ki1066203-TanzaniaChild2   >280            0      0      0      0
Birth       ki1101329-Keneba           <=266        1515    457    440     17
Birth       ki1101329-Keneba           (266-273]    1515    324    320      4
Birth       ki1101329-Keneba           (273-280]    1515    360    356      4
Birth       ki1101329-Keneba           >280         1515    374    370      4
Birth       ki1113344-GMS-Nepal        <=266           0      0      0      0
Birth       ki1113344-GMS-Nepal        (266-273]       0      0      0      0
Birth       ki1113344-GMS-Nepal        (273-280]       0      0      0      0
Birth       ki1113344-GMS-Nepal        >280            0      0      0      0
Birth       ki1135781-COHORTS          <=266        4607   1857   1798     59
Birth       ki1135781-COHORTS          (266-273]    4607    876    867      9
Birth       ki1135781-COHORTS          (273-280]    4607    926    920      6
Birth       ki1135781-COHORTS          >280         4607    948    943      5
3 months    ki1000108-CMC-V-BCS-2002   <=266         340     75     68      7
3 months    ki1000108-CMC-V-BCS-2002   (266-273]     340     55     49      6
3 months    ki1000108-CMC-V-BCS-2002   (273-280]     340     82     76      6
3 months    ki1000108-CMC-V-BCS-2002   >280          340    128    116     12
3 months    ki1000108-IRC              <=266         387     74     60     14
3 months    ki1000108-IRC              (266-273]     387     66     62      4
3 months    ki1000108-IRC              (273-280]     387     77     73      4
3 months    ki1000108-IRC              >280          387    170    158     12
3 months    ki1000109-EE               <=266         376    299    194    105
3 months    ki1000109-EE               (266-273]     376     52     39     13
3 months    ki1000109-EE               (273-280]     376      8      7      1
3 months    ki1000109-EE               >280          376     17     14      3
3 months    ki1066203-TanzaniaChild2   <=266         540    127    122      5
3 months    ki1066203-TanzaniaChild2   (266-273]     540     87     85      2
3 months    ki1066203-TanzaniaChild2   (273-280]     540     89     88      1
3 months    ki1066203-TanzaniaChild2   >280          540    237    235      2
3 months    ki1101329-Keneba           <=266        1442    437    419     18
3 months    ki1101329-Keneba           (266-273]    1442    305    302      3
3 months    ki1101329-Keneba           (273-280]    1442    348    340      8
3 months    ki1101329-Keneba           >280         1442    352    347      5
3 months    ki1113344-GMS-Nepal        <=266         571      1      0      1
3 months    ki1113344-GMS-Nepal        (266-273]     571    567    546     21
3 months    ki1113344-GMS-Nepal        (273-280]     571      0      0      0
3 months    ki1113344-GMS-Nepal        >280          571      3      3      0
3 months    ki1135781-COHORTS          <=266        4535   1824   1736     88
3 months    ki1135781-COHORTS          (266-273]    4535    865    851     14
3 months    ki1135781-COHORTS          (273-280]    4535    921    905     16
3 months    ki1135781-COHORTS          >280         4535    925    904     21
6 months    ki1000108-CMC-V-BCS-2002   <=266         347     76     65     11
6 months    ki1000108-CMC-V-BCS-2002   (266-273]     347     59     54      5
6 months    ki1000108-CMC-V-BCS-2002   (273-280]     347     83     73     10
6 months    ki1000108-CMC-V-BCS-2002   >280          347    129    117     12
6 months    ki1000108-IRC              <=266         388     73     65      8
6 months    ki1000108-IRC              (266-273]     388     66     62      4
6 months    ki1000108-IRC              (273-280]     388     77     70      7
6 months    ki1000108-IRC              >280          388    172    163      9
6 months    ki1000109-EE               <=266         372    296    215     81
6 months    ki1000109-EE               (266-273]     372     51     41     10
6 months    ki1000109-EE               (273-280]     372      8      8      0
6 months    ki1000109-EE               >280          372     17     14      3
6 months    ki1066203-TanzaniaChild2   <=266         471    114    110      4
6 months    ki1066203-TanzaniaChild2   (266-273]     471     77     76      1
6 months    ki1066203-TanzaniaChild2   (273-280]     471     83     82      1
6 months    ki1066203-TanzaniaChild2   >280          471    197    196      1
6 months    ki1101329-Keneba           <=266        1374    412    400     12
6 months    ki1101329-Keneba           (266-273]    1374    304    302      2
6 months    ki1101329-Keneba           (273-280]    1374    324    311     13
6 months    ki1101329-Keneba           >280         1374    334    326      8
6 months    ki1113344-GMS-Nepal        <=266         563      1      1      0
6 months    ki1113344-GMS-Nepal        (266-273]     563    558    538     20
6 months    ki1113344-GMS-Nepal        (273-280]     563      0      0      0
6 months    ki1113344-GMS-Nepal        >280          563      4      4      0
6 months    ki1135781-COHORTS          <=266        4346   1742   1621    121
6 months    ki1135781-COHORTS          (266-273]    4346    834    798     36
6 months    ki1135781-COHORTS          (273-280]    4346    871    833     38
6 months    ki1135781-COHORTS          >280         4346    899    867     32
9 months    ki1000108-CMC-V-BCS-2002   <=266         344     75     67      8
9 months    ki1000108-CMC-V-BCS-2002   (266-273]     344     58     50      8
9 months    ki1000108-CMC-V-BCS-2002   (273-280]     344     81     73      8
9 months    ki1000108-CMC-V-BCS-2002   >280          344    130    113     17
9 months    ki1000108-IRC              <=266         388     73     64      9
9 months    ki1000108-IRC              (266-273]     388     66     63      3
9 months    ki1000108-IRC              (273-280]     388     77     69      8
9 months    ki1000108-IRC              >280          388    172    160     12
9 months    ki1000109-EE               <=266         366    292    209     83
9 months    ki1000109-EE               (266-273]     366     50     42      8
9 months    ki1000109-EE               (273-280]     366      8      7      1
9 months    ki1000109-EE               >280          366     16     13      3
9 months    ki1066203-TanzaniaChild2   <=266         408    100     98      2
9 months    ki1066203-TanzaniaChild2   (266-273]     408     64     63      1
9 months    ki1066203-TanzaniaChild2   (273-280]     408     72     71      1
9 months    ki1066203-TanzaniaChild2   >280          408    172    170      2
9 months    ki1101329-Keneba           <=266        1377    403    383     20
9 months    ki1101329-Keneba           (266-273]    1377    296    285     11
9 months    ki1101329-Keneba           (273-280]    1377    337    318     19
9 months    ki1101329-Keneba           >280         1377    341    329     12
9 months    ki1113344-GMS-Nepal        <=266         551      1      1      0
9 months    ki1113344-GMS-Nepal        (266-273]     551    546    511     35
9 months    ki1113344-GMS-Nepal        (273-280]     551      0      0      0
9 months    ki1113344-GMS-Nepal        >280          551      4      4      0
9 months    ki1135781-COHORTS          <=266        4217   1696   1517    179
9 months    ki1135781-COHORTS          (266-273]    4217    802    744     58
9 months    ki1135781-COHORTS          (273-280]    4217    861    807     54
9 months    ki1135781-COHORTS          >280         4217    858    795     63
12 months   ki1000108-CMC-V-BCS-2002   <=266         346     75     57     18
12 months   ki1000108-CMC-V-BCS-2002   (266-273]     346     59     47     12
12 months   ki1000108-CMC-V-BCS-2002   (273-280]     346     83     63     20
12 months   ki1000108-CMC-V-BCS-2002   >280          346    129    105     24
12 months   ki1000108-IRC              <=266         386     73     64      9
12 months   ki1000108-IRC              (266-273]     386     66     61      5
12 months   ki1000108-IRC              (273-280]     386     76     70      6
12 months   ki1000108-IRC              >280          386    171    160     11
12 months   ki1000109-EE               <=266         357    285    182    103
12 months   ki1000109-EE               (266-273]     357     48     36     12
12 months   ki1000109-EE               (273-280]     357      7      5      2
12 months   ki1000109-EE               >280          357     17     14      3
12 months   ki1066203-TanzaniaChild2   <=266         334     81     77      4
12 months   ki1066203-TanzaniaChild2   (266-273]     334     49     49      0
12 months   ki1066203-TanzaniaChild2   (273-280]     334     61     60      1
12 months   ki1066203-TanzaniaChild2   >280          334    143    141      2
12 months   ki1101329-Keneba           <=266        1300    396    361     35
12 months   ki1101329-Keneba           (266-273]    1300    274    258     16
12 months   ki1101329-Keneba           (273-280]    1300    315    303     12
12 months   ki1101329-Keneba           >280         1300    315    297     18
12 months   ki1113344-GMS-Nepal        <=266         558      1      1      0
12 months   ki1113344-GMS-Nepal        (266-273]     558    553    503     50
12 months   ki1113344-GMS-Nepal        (273-280]     558      0      0      0
12 months   ki1113344-GMS-Nepal        >280          558      4      3      1
12 months   ki1135781-COHORTS          <=266        4037   1624   1346    278
12 months   ki1135781-COHORTS          (266-273]    4037    760    674     86
12 months   ki1135781-COHORTS          (273-280]    4037    831    736     95
12 months   ki1135781-COHORTS          >280         4037    822    722    100
18 months   ki1000108-CMC-V-BCS-2002   <=266         347     74     51     23
18 months   ki1000108-CMC-V-BCS-2002   (266-273]     347     60     43     17
18 months   ki1000108-CMC-V-BCS-2002   (273-280]     347     84     58     26
18 months   ki1000108-CMC-V-BCS-2002   >280          347    129     95     34
18 months   ki1000108-IRC              <=266         386     72     62     10
18 months   ki1000108-IRC              (266-273]     386     66     62      4
18 months   ki1000108-IRC              (273-280]     386     76     71      5
18 months   ki1000108-IRC              >280          386    172    160     12
18 months   ki1000109-EE               <=266         350    281    136    145
18 months   ki1000109-EE               (266-273]     350     46     25     21
18 months   ki1000109-EE               (273-280]     350      7      5      2
18 months   ki1000109-EE               >280          350     16     13      3
18 months   ki1066203-TanzaniaChild2   <=266         242     60     55      5
18 months   ki1066203-TanzaniaChild2   (266-273]     242     41     39      2
18 months   ki1066203-TanzaniaChild2   (273-280]     242     43     42      1
18 months   ki1066203-TanzaniaChild2   >280          242     98     91      7
18 months   ki1101329-Keneba           <=266        1301    384    340     44
18 months   ki1101329-Keneba           (266-273]    1301    288    265     23
18 months   ki1101329-Keneba           (273-280]    1301    312    288     24
18 months   ki1101329-Keneba           >280         1301    317    291     26
18 months   ki1113344-GMS-Nepal        <=266         550      1      1      0
18 months   ki1113344-GMS-Nepal        (266-273]     550    545    461     84
18 months   ki1113344-GMS-Nepal        (273-280]     550      0      0      0
18 months   ki1113344-GMS-Nepal        >280          550      4      3      1
18 months   ki1135781-COHORTS          <=266        2770   1142    777    365
18 months   ki1135781-COHORTS          (266-273]    2770    517    381    136
18 months   ki1135781-COHORTS          (273-280]    2770    567    439    128
18 months   ki1135781-COHORTS          >280         2770    544    401    143
24 months   ki1000108-CMC-V-BCS-2002   <=266         350     76     48     28
24 months   ki1000108-CMC-V-BCS-2002   (266-273]     350     60     41     19
24 months   ki1000108-CMC-V-BCS-2002   (273-280]     350     84     56     28
24 months   ki1000108-CMC-V-BCS-2002   >280          350    130     92     38
24 months   ki1000108-IRC              <=266         390     74     59     15
24 months   ki1000108-IRC              (266-273]     390     66     63      3
24 months   ki1000108-IRC              (273-280]     390     77     70      7
24 months   ki1000108-IRC              >280          390    173    160     13
24 months   ki1000109-EE               <=266           0      0      0      0
24 months   ki1000109-EE               (266-273]       0      0      0      0
24 months   ki1000109-EE               (273-280]       0      0      0      0
24 months   ki1000109-EE               >280            0      0      0      0
24 months   ki1066203-TanzaniaChild2   <=266           2      1      1      0
24 months   ki1066203-TanzaniaChild2   (266-273]       2      0      0      0
24 months   ki1066203-TanzaniaChild2   (273-280]       2      0      0      0
24 months   ki1066203-TanzaniaChild2   >280            2      1      1      0
24 months   ki1101329-Keneba           <=266        1156    347    314     33
24 months   ki1101329-Keneba           (266-273]    1156    252    240     12
24 months   ki1101329-Keneba           (273-280]    1156    285    258     27
24 months   ki1101329-Keneba           >280         1156    272    252     20
24 months   ki1113344-GMS-Nepal        <=266         499      0      0      0
24 months   ki1113344-GMS-Nepal        (266-273]     499    496    442     54
24 months   ki1113344-GMS-Nepal        (273-280]     499      0      0      0
24 months   ki1113344-GMS-Nepal        >280          499      3      3      0
24 months   ki1135781-COHORTS          <=266        4052   1615   1143    472
24 months   ki1135781-COHORTS          (266-273]    4052    772    582    190
24 months   ki1135781-COHORTS          (273-280]    4052    825    638    187
24 months   ki1135781-COHORTS          >280         4052    840    624    216

## Results Table

### Parameter: TSM


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1135781-COHORTS          <=266                NA                0.0317717   0.0237936   0.0397498
Birth       ki1135781-COHORTS          (266-273]            NA                0.0102740   0.0035956   0.0169523
Birth       ki1135781-COHORTS          (273-280]            NA                0.0064795   0.0013112   0.0116478
Birth       ki1135781-COHORTS          >280                 NA                0.0052743   0.0006630   0.0098856
3 months    ki1000108-CMC-V-BCS-2002   <=266                NA                0.0933333   0.0274009   0.1592658
3 months    ki1000108-CMC-V-BCS-2002   (266-273]            NA                0.1090909   0.0265789   0.1916030
3 months    ki1000108-CMC-V-BCS-2002   (273-280]            NA                0.0731707   0.0167226   0.1296188
3 months    ki1000108-CMC-V-BCS-2002   >280                 NA                0.0937500   0.0431801   0.1443199
3 months    ki1135781-COHORTS          <=266                NA                0.0482456   0.0384106   0.0580806
3 months    ki1135781-COHORTS          (266-273]            NA                0.0161850   0.0077749   0.0245951
3 months    ki1135781-COHORTS          (273-280]            NA                0.0173724   0.0089334   0.0258114
3 months    ki1135781-COHORTS          >280                 NA                0.0227027   0.0131026   0.0323028
6 months    ki1000108-CMC-V-BCS-2002   <=266                NA                0.1447368   0.0655218   0.2239518
6 months    ki1000108-CMC-V-BCS-2002   (266-273]            NA                0.0847458   0.0135788   0.1559128
6 months    ki1000108-CMC-V-BCS-2002   (273-280]            NA                0.1204819   0.0503495   0.1906144
6 months    ki1000108-CMC-V-BCS-2002   >280                 NA                0.0930233   0.0428267   0.1432198
6 months    ki1135781-COHORTS          <=266                NA                0.0694604   0.0575202   0.0814005
6 months    ki1135781-COHORTS          (266-273]            NA                0.0431655   0.0293711   0.0569598
6 months    ki1135781-COHORTS          (273-280]            NA                0.0436280   0.0300610   0.0571951
6 months    ki1135781-COHORTS          >280                 NA                0.0355951   0.0234823   0.0477079
9 months    ki1000108-CMC-V-BCS-2002   <=266                NA                0.1066667   0.0367033   0.1766300
9 months    ki1000108-CMC-V-BCS-2002   (266-273]            NA                0.1379310   0.0490584   0.2268037
9 months    ki1000108-CMC-V-BCS-2002   (273-280]            NA                0.0987654   0.0336987   0.1638322
9 months    ki1000108-CMC-V-BCS-2002   >280                 NA                0.1307692   0.0727290   0.1888094
9 months    ki1101329-Keneba           <=266                NA                0.0496278   0.0284167   0.0708389
9 months    ki1101329-Keneba           (266-273]            NA                0.0371622   0.0156052   0.0587191
9 months    ki1101329-Keneba           (273-280]            NA                0.0563798   0.0317449   0.0810148
9 months    ki1101329-Keneba           >280                 NA                0.0351906   0.0156264   0.0547548
9 months    ki1135781-COHORTS          <=266                NA                0.1055425   0.0909180   0.1201669
9 months    ki1135781-COHORTS          (266-273]            NA                0.0723192   0.0543909   0.0902475
9 months    ki1135781-COHORTS          (273-280]            NA                0.0627178   0.0465210   0.0789145
9 months    ki1135781-COHORTS          >280                 NA                0.0734266   0.0559715   0.0908817
12 months   ki1000108-CMC-V-BCS-2002   <=266                NA                0.2400000   0.1432038   0.3367962
12 months   ki1000108-CMC-V-BCS-2002   (266-273]            NA                0.2033898   0.1005318   0.3062478
12 months   ki1000108-CMC-V-BCS-2002   (273-280]            NA                0.2409639   0.1488246   0.3331031
12 months   ki1000108-CMC-V-BCS-2002   >280                 NA                0.1860465   0.1187965   0.2532965
12 months   ki1000108-IRC              <=266                NA                0.1232877   0.0477718   0.1988036
12 months   ki1000108-IRC              (266-273]            NA                0.0757576   0.0118363   0.1396788
12 months   ki1000108-IRC              (273-280]            NA                0.0789474   0.0182436   0.1396511
12 months   ki1000108-IRC              >280                 NA                0.0643275   0.0275084   0.1011466
12 months   ki1101329-Keneba           <=266                NA                0.0883838   0.0604159   0.1163517
12 months   ki1101329-Keneba           (266-273]            NA                0.0583942   0.0306188   0.0861695
12 months   ki1101329-Keneba           (273-280]            NA                0.0380952   0.0169476   0.0592428
12 months   ki1101329-Keneba           >280                 NA                0.0571429   0.0315002   0.0827856
12 months   ki1135781-COHORTS          <=266                NA                0.1711823   0.1528605   0.1895041
12 months   ki1135781-COHORTS          (266-273]            NA                0.1131579   0.0906331   0.1356827
12 months   ki1135781-COHORTS          (273-280]            NA                0.1143201   0.0926829   0.1359573
12 months   ki1135781-COHORTS          >280                 NA                0.1216545   0.0993053   0.1440037
18 months   ki1000108-CMC-V-BCS-2002   <=266                NA                0.3108108   0.2052078   0.4164138
18 months   ki1000108-CMC-V-BCS-2002   (266-273]            NA                0.2833333   0.1691490   0.3975177
18 months   ki1000108-CMC-V-BCS-2002   (273-280]            NA                0.3095238   0.2105189   0.4085287
18 months   ki1000108-CMC-V-BCS-2002   >280                 NA                0.2635659   0.1874296   0.3397021
18 months   ki1101329-Keneba           <=266                NA                0.1145833   0.0827132   0.1464535
18 months   ki1101329-Keneba           (266-273]            NA                0.0798611   0.0485417   0.1111805
18 months   ki1101329-Keneba           (273-280]            NA                0.0769231   0.0473440   0.1065022
18 months   ki1101329-Keneba           >280                 NA                0.0820189   0.0518014   0.1122365
18 months   ki1135781-COHORTS          <=266                NA                0.3196147   0.2925637   0.3466658
18 months   ki1135781-COHORTS          (266-273]            NA                0.2630561   0.2250964   0.3010158
18 months   ki1135781-COHORTS          (273-280]            NA                0.2257496   0.1913313   0.2601678
18 months   ki1135781-COHORTS          >280                 NA                0.2628676   0.2258705   0.2998648
24 months   ki1000108-CMC-V-BCS-2002   <=266                NA                0.3684211   0.2598163   0.4770258
24 months   ki1000108-CMC-V-BCS-2002   (266-273]            NA                0.3166667   0.1987945   0.4345388
24 months   ki1000108-CMC-V-BCS-2002   (273-280]            NA                0.3333333   0.2323793   0.4342873
24 months   ki1000108-CMC-V-BCS-2002   >280                 NA                0.2923077   0.2140116   0.3706038
24 months   ki1101329-Keneba           <=266                NA                0.0951009   0.0642218   0.1259799
24 months   ki1101329-Keneba           (266-273]            NA                0.0476190   0.0213145   0.0739236
24 months   ki1101329-Keneba           (273-280]            NA                0.0947368   0.0607226   0.1287511
24 months   ki1101329-Keneba           >280                 NA                0.0735294   0.0424983   0.1045606
24 months   ki1135781-COHORTS          <=266                NA                0.2922601   0.2700762   0.3144439
24 months   ki1135781-COHORTS          (266-273]            NA                0.2461140   0.2157252   0.2765028
24 months   ki1135781-COHORTS          (273-280]            NA                0.2266667   0.1980939   0.2552394
24 months   ki1135781-COHORTS          >280                 NA                0.2571429   0.2275830   0.2867027


### Parameter: E(Y)


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1135781-COHORTS          NA                   NA                0.0171478   0.0167976   0.0174980
3 months    ki1000108-CMC-V-BCS-2002   NA                   NA                0.0911765   0.0899459   0.0924070
3 months    ki1135781-COHORTS          NA                   NA                0.0306505   0.0302256   0.0310754
6 months    ki1000108-CMC-V-BCS-2002   NA                   NA                0.1095101   0.1071401   0.1118801
6 months    ki1135781-COHORTS          NA                   NA                0.0522319   0.0518043   0.0526596
9 months    ki1000108-CMC-V-BCS-2002   NA                   NA                0.1191860   0.1175387   0.1208334
9 months    ki1101329-Keneba           NA                   NA                0.0450254   0.0445679   0.0454830
9 months    ki1135781-COHORTS          NA                   NA                0.0839459   0.0833994   0.0844925
12 months   ki1000108-CMC-V-BCS-2002   NA                   NA                0.2138728   0.2112212   0.2165244
12 months   ki1000108-IRC              NA                   NA                0.0803109   0.0781537   0.0824681
12 months   ki1101329-Keneba           NA                   NA                0.0623077   0.0612775   0.0633379
12 months   ki1135781-COHORTS          NA                   NA                0.1384692   0.1376363   0.1393020
18 months   ki1000108-CMC-V-BCS-2002   NA                   NA                0.2881844   0.2859522   0.2904166
18 months   ki1101329-Keneba           NA                   NA                0.0899308   0.0890583   0.0908034
18 months   ki1135781-COHORTS          NA                   NA                0.2787004   0.2773273   0.2800734
24 months   ki1000108-CMC-V-BCS-2002   NA                   NA                0.3228571   0.3198339   0.3258803
24 months   ki1101329-Keneba           NA                   NA                0.0795848   0.0784902   0.0806794
24 months   ki1135781-COHORTS          NA                   NA                0.2628332   0.2620352   0.2636311


### Parameter: RR


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1135781-COHORTS          (266-273]            <=266             0.3233689   0.1610881   0.6491323
Birth       ki1135781-COHORTS          (273-280]            <=266             0.2039389   0.0883748   0.4706217
Birth       ki1135781-COHORTS          >280                 <=266             0.1660051   0.0668446   0.4122653
3 months    ki1000108-CMC-V-BCS-2002   (266-273]            <=266             1.1688312   0.4152229   3.2901997
3 months    ki1000108-CMC-V-BCS-2002   (273-280]            <=266             0.7839721   0.2754333   2.2314380
3 months    ki1000108-CMC-V-BCS-2002   >280                 <=266             1.0044643   0.4129777   2.4431067
3 months    ki1135781-COHORTS          (266-273]            <=266             0.3354704   0.1919729   0.5862306
3 months    ki1135781-COHORTS          (273-280]            <=266             0.3600829   0.2126239   0.6098078
3 months    ki1135781-COHORTS          >280                 <=266             0.4705651   0.2942705   0.7524761
6 months    ki1000108-CMC-V-BCS-2002   (266-273]            <=266             0.5855162   0.2148884   1.5953827
6 months    ki1000108-CMC-V-BCS-2002   (273-280]            <=266             0.8324206   0.3744096   1.8507112
6 months    ki1000108-CMC-V-BCS-2002   >280                 <=266             0.6427061   0.2980027   1.3861325
6 months    ki1135781-COHORTS          (266-273]            <=266             0.6214400   0.4323219   0.8932873
6 months    ki1135781-COHORTS          (273-280]            <=266             0.6280992   0.4402657   0.8960693
6 months    ki1135781-COHORTS          >280                 <=266             0.5124519   0.3500097   0.7502846
9 months    ki1000108-CMC-V-BCS-2002   (266-273]            <=266             1.2931034   0.5156148   3.2429568
9 months    ki1000108-CMC-V-BCS-2002   (273-280]            <=266             0.9259259   0.3654587   2.3459251
9 months    ki1000108-CMC-V-BCS-2002   >280                 <=266             1.2259615   0.5553054   2.7065858
9 months    ki1101329-Keneba           (266-273]            <=266             0.7488176   0.3642955   1.5392112
9 months    ki1101329-Keneba           (273-280]            <=266             1.1360534   0.6165203   2.0933898
9 months    ki1101329-Keneba           >280                 <=266             0.7090909   0.3516836   1.4297225
9 months    ki1135781-COHORTS          (266-273]            <=266             0.6852143   0.5158056   0.9102629
9 months    ki1135781-COHORTS          (273-280]            <=266             0.5942421   0.4432849   0.7966067
9 months    ki1135781-COHORTS          >280                 <=266             0.6957065   0.5283558   0.9160637
12 months   ki1000108-CMC-V-BCS-2002   (266-273]            <=266             0.8474576   0.4438070   1.6182360
12 months   ki1000108-CMC-V-BCS-2002   (273-280]            <=266             1.0040161   0.5759353   1.7502802
12 months   ki1000108-CMC-V-BCS-2002   >280                 <=266             0.7751938   0.4510231   1.3323608
12 months   ki1000108-IRC              (266-273]            <=266             0.6144781   0.2166163   1.7430977
12 months   ki1000108-IRC              (273-280]            <=266             0.6403509   0.2395965   1.7114161
12 months   ki1000108-IRC              >280                 <=266             0.5217674   0.2256305   1.2065797
12 months   ki1101329-Keneba           (266-273]            <=266             0.6606882   0.3731526   1.1697867
12 months   ki1101329-Keneba           (273-280]            <=266             0.4310204   0.2275057   0.8165889
12 months   ki1101329-Keneba           >280                 <=266             0.6465306   0.3733530   1.1195887
12 months   ki1135781-COHORTS          (266-273]            <=266             0.6610375   0.5273181   0.8286660
12 months   ki1135781-COHORTS          (273-280]            <=266             0.6678267   0.5373197   0.8300320
12 months   ki1135781-COHORTS          >280                 <=266             0.7106723   0.5745552   0.8790368
18 months   ki1000108-CMC-V-BCS-2002   (266-273]            <=266             0.9115942   0.5381177   1.5442791
18 months   ki1000108-CMC-V-BCS-2002   (273-280]            <=266             0.9958592   0.6245093   1.5880238
18 months   ki1000108-CMC-V-BCS-2002   >280                 <=266             0.8479946   0.5428901   1.3245679
18 months   ki1101329-Keneba           (266-273]            <=266             0.6969697   0.4309317   1.1272477
18 months   ki1101329-Keneba           (273-280]            <=266             0.6713287   0.4176658   1.0790498
18 months   ki1101329-Keneba           >280                 <=266             0.7158015   0.4511409   1.1357248
18 months   ki1135781-COHORTS          (266-273]            <=266             0.8230413   0.6962539   0.9729165
18 months   ki1135781-COHORTS          (273-280]            <=266             0.7063178   0.5932917   0.8408761
18 months   ki1135781-COHORTS          >280                 <=266             0.8224517   0.6978870   0.9692497
24 months   ki1000108-CMC-V-BCS-2002   (266-273]            <=266             0.8595238   0.5346228   1.3818738
24 months   ki1000108-CMC-V-BCS-2002   (273-280]            <=266             0.9047619   0.5929046   1.3806506
24 months   ki1000108-CMC-V-BCS-2002   >280                 <=266             0.7934066   0.5327405   1.1816148
24 months   ki1101329-Keneba           (266-273]            <=266             0.5007215   0.2638267   0.9503284
24 months   ki1101329-Keneba           (273-280]            <=266             0.9961722   0.6139024   1.6164770
24 months   ki1101329-Keneba           >280                 <=266             0.7731729   0.4539672   1.3168272
24 months   ki1135781-COHORTS          (266-273]            <=266             0.8421061   0.7284846   0.9734492
24 months   ki1135781-COHORTS          (273-280]            <=266             0.7755650   0.6694435   0.8985091
24 months   ki1135781-COHORTS          >280                 <=266             0.8798426   0.7666184   1.0097892


### Parameter: PAR


agecat      studyid                    intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1135781-COHORTS          <=266                NA                -0.0146239   -0.0226096   -0.0066381
3 months    ki1000108-CMC-V-BCS-2002   <=266                NA                -0.0021569   -0.0681008    0.0637871
3 months    ki1135781-COHORTS          <=266                NA                -0.0175951   -0.0274393   -0.0077509
6 months    ki1000108-CMC-V-BCS-2002   <=266                NA                -0.0352268   -0.1144772    0.0440237
6 months    ki1135781-COHORTS          <=266                NA                -0.0172285   -0.0291763   -0.0052806
9 months    ki1000108-CMC-V-BCS-2002   <=266                NA                 0.0125194   -0.0574634    0.0825021
9 months    ki1101329-Keneba           <=266                NA                -0.0046024   -0.0258184    0.0166136
9 months    ki1135781-COHORTS          <=266                NA                -0.0215965   -0.0362312   -0.0069618
12 months   ki1000108-CMC-V-BCS-2002   <=266                NA                -0.0261272   -0.1229597    0.0707054
12 months   ki1000108-IRC              <=266                NA                -0.0429768   -0.1185235    0.0325699
12 months   ki1101329-Keneba           <=266                NA                -0.0260761   -0.0540630    0.0019107
12 months   ki1135781-COHORTS          <=266                NA                -0.0327131   -0.0510538   -0.0143724
18 months   ki1000108-CMC-V-BCS-2002   <=266                NA                -0.0226264   -0.1282529    0.0830002
18 months   ki1101329-Keneba           <=266                NA                -0.0246525   -0.0565346    0.0072296
18 months   ki1135781-COHORTS          <=266                NA                -0.0409144   -0.0680002   -0.0138285
24 months   ki1000108-CMC-V-BCS-2002   <=266                NA                -0.0455639   -0.1542107    0.0630829
24 months   ki1101329-Keneba           <=266                NA                -0.0155161   -0.0464145    0.0153823
24 months   ki1135781-COHORTS          <=266                NA                -0.0294269   -0.0516251   -0.0072287


### Parameter: PAF


agecat      studyid                    intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1135781-COHORTS          <=266                NA                -0.8528115   -1.3836669   -0.4401804
3 months    ki1000108-CMC-V-BCS-2002   <=266                NA                -0.0236559   -1.0749324    0.4949853
3 months    ki1135781-COHORTS          <=266                NA                -0.5740565   -0.9308879   -0.2831682
6 months    ki1000108-CMC-V-BCS-2002   <=266                NA                -0.3216759   -1.2856076    0.2357274
6 months    ki1135781-COHORTS          <=266                NA                -0.3298452   -0.5795756   -0.1195971
9 months    ki1000108-CMC-V-BCS-2002   <=266                NA                 0.1050407   -0.7247382    0.5356094
9 months    ki1101329-Keneba           <=266                NA                -0.1022172   -0.6902015    0.2812201
9 months    ki1135781-COHORTS          <=266                NA                -0.2572670   -0.4443480   -0.0944179
12 months   ki1000108-CMC-V-BCS-2002   <=266                NA                -0.1221622   -0.6799523    0.2504264
12 months   ki1000108-IRC              <=266                NA                -0.5351304   -1.8340924    0.1684727
12 months   ki1101329-Keneba           <=266                NA                -0.4185060   -0.9473565   -0.0332774
12 months   ki1135781-COHORTS          <=266                NA                -0.2362483   -0.3761379   -0.1105790
18 months   ki1000108-CMC-V-BCS-2002   <=266                NA                -0.0785135   -0.5150344    0.2322343
18 months   ki1101329-Keneba           <=266                NA                -0.2741275   -0.6829871    0.0354050
18 months   ki1135781-COHORTS          <=266                NA                -0.1468041   -0.2482702   -0.0535857
24 months   ki1000108-CMC-V-BCS-2002   <=266                NA                -0.1411272   -0.5325751    0.1503378
24 months   ki1101329-Keneba           <=266                NA                -0.1949630   -0.6538470    0.1365969
24 months   ki1135781-COHORTS          <=266                NA                -0.1119603   -0.1997218   -0.0306187


