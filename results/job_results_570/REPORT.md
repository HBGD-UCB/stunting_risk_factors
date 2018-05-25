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

**Intervention Variable:** fhtcm

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid


The following strata were considered:

* agecat: 12 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 12 months, studyid: ki1101329-Keneba
* agecat: 12 months, studyid: ki1135781-COHORTS
* agecat: 18 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 18 months, studyid: ki1101329-Keneba
* agecat: 18 months, studyid: ki1135781-COHORTS
* agecat: 24 months, studyid: ki1101329-Keneba
* agecat: 24 months, studyid: ki1135781-COHORTS
* agecat: 3 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 3 months, studyid: ki1101329-Keneba
* agecat: 3 months, studyid: ki1135781-COHORTS
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 6 months, studyid: ki1101329-Keneba
* agecat: 6 months, studyid: ki1135781-COHORTS
* agecat: 9 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 9 months, studyid: ki1101329-Keneba
* agecat: 9 months, studyid: ki1135781-COHORTS
* agecat: Birth, studyid: ki1101329-Keneba
* agecat: Birth, studyid: ki1135781-COHORTS

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki1101329-Keneba
* agecat: Birth, studyid: ki1135781-COHORTS
* agecat: 3 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 3 months, studyid: ki1101329-Keneba
* agecat: 3 months, studyid: ki1135781-COHORTS
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 6 months, studyid: ki1101329-Keneba
* agecat: 6 months, studyid: ki1135781-COHORTS
* agecat: 9 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 9 months, studyid: ki1101329-Keneba
* agecat: 9 months, studyid: ki1135781-COHORTS
* agecat: 12 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 12 months, studyid: ki1101329-Keneba
* agecat: 12 months, studyid: ki1135781-COHORTS
* agecat: 18 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 18 months, studyid: ki1135781-COHORTS
* agecat: 24 months, studyid: ki1101329-Keneba
* agecat: 24 months, studyid: ki1135781-COHORTS

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness




# Results Detail

## Results Plots
![](/tmp/50dc1bf9-95cc-4e6c-a22c-e1015fa7f0b8/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/50dc1bf9-95cc-4e6c-a22c-e1015fa7f0b8/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/50dc1bf9-95cc-4e6c-a22c-e1015fa7f0b8/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/50dc1bf9-95cc-4e6c-a22c-e1015fa7f0b8/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Data Summary

agecat      studyid                    A               n    nA   nAY0   nAY1
----------  -------------------------  ----------  -----  ----  -----  -----
Birth       ki1000304b-SAS-FoodSuppl   <=168           0     0      0      0
Birth       ki1000304b-SAS-FoodSuppl   (168-173]       0     0      0      0
Birth       ki1000304b-SAS-FoodSuppl   (173-178]       0     0      0      0
Birth       ki1000304b-SAS-FoodSuppl   >178            0     0      0      0
Birth       ki1101329-Keneba           <=168        1165   609    599     10
Birth       ki1101329-Keneba           (168-173]    1165   252    248      4
Birth       ki1101329-Keneba           (173-178]    1165   179    176      3
Birth       ki1101329-Keneba           >178         1165   125    121      4
Birth       ki1135781-COHORTS          <=168          91    85     85      0
Birth       ki1135781-COHORTS          (168-173]      91     5      3      2
Birth       ki1135781-COHORTS          (173-178]      91     1      1      0
Birth       ki1135781-COHORTS          >178           91     0      0      0
3 months    ki1000304b-SAS-FoodSuppl   <=168          92    79     69     10
3 months    ki1000304b-SAS-FoodSuppl   (168-173]      92     8      7      1
3 months    ki1000304b-SAS-FoodSuppl   (173-178]      92     4      4      0
3 months    ki1000304b-SAS-FoodSuppl   >178           92     1      1      0
3 months    ki1101329-Keneba           <=168        1562   831    801     30
3 months    ki1101329-Keneba           (168-173]    1562   331    323      8
3 months    ki1101329-Keneba           (173-178]    1562   239    237      2
3 months    ki1101329-Keneba           >178         1562   161    155      6
3 months    ki1135781-COHORTS          <=168         140   128    112     16
3 months    ki1135781-COHORTS          (168-173]     140     6      5      1
3 months    ki1135781-COHORTS          (173-178]     140     6      6      0
3 months    ki1135781-COHORTS          >178          140     0      0      0
6 months    ki1000304b-SAS-FoodSuppl   <=168          94    81     71     10
6 months    ki1000304b-SAS-FoodSuppl   (168-173]      94     8      5      3
6 months    ki1000304b-SAS-FoodSuppl   (173-178]      94     4      3      1
6 months    ki1000304b-SAS-FoodSuppl   >178           94     1      1      0
6 months    ki1101329-Keneba           <=168        1511   799    767     32
6 months    ki1101329-Keneba           (168-173]    1511   312    298     14
6 months    ki1101329-Keneba           (173-178]    1511   241    239      2
6 months    ki1101329-Keneba           >178         1511   159    158      1
6 months    ki1135781-COHORTS          <=168         151   140    113     27
6 months    ki1135781-COHORTS          (168-173]     151     6      5      1
6 months    ki1135781-COHORTS          (173-178]     151     5      5      0
6 months    ki1135781-COHORTS          >178          151     0      0      0
9 months    ki1000304b-SAS-FoodSuppl   <=168          84    74     58     16
9 months    ki1000304b-SAS-FoodSuppl   (168-173]      84     6      3      3
9 months    ki1000304b-SAS-FoodSuppl   (173-178]      84     3      2      1
9 months    ki1000304b-SAS-FoodSuppl   >178           84     1      1      0
9 months    ki1101329-Keneba           <=168        1529   813    764     49
9 months    ki1101329-Keneba           (168-173]    1529   320    296     24
9 months    ki1101329-Keneba           (173-178]    1529   234    230      4
9 months    ki1101329-Keneba           >178         1529   162    160      2
9 months    ki1135781-COHORTS          <=168         164   152    103     49
9 months    ki1135781-COHORTS          (168-173]     164     7      6      1
9 months    ki1135781-COHORTS          (173-178]     164     5      4      1
9 months    ki1135781-COHORTS          >178          164     0      0      0
12 months   ki1000304b-SAS-FoodSuppl   <=168          91    80     45     35
12 months   ki1000304b-SAS-FoodSuppl   (168-173]      91     6      1      5
12 months   ki1000304b-SAS-FoodSuppl   (173-178]      91     4      3      1
12 months   ki1000304b-SAS-FoodSuppl   >178           91     1      1      0
12 months   ki1101329-Keneba           <=168        1448   773    704     69
12 months   ki1101329-Keneba           (168-173]    1448   299    280     19
12 months   ki1101329-Keneba           (173-178]    1448   228    219      9
12 months   ki1101329-Keneba           >178         1448   148    145      3
12 months   ki1135781-COHORTS          <=168         204   190    113     77
12 months   ki1135781-COHORTS          (168-173]     204     7      5      2
12 months   ki1135781-COHORTS          (173-178]     204     7      5      2
12 months   ki1135781-COHORTS          >178          204     0      0      0
18 months   ki1000304b-SAS-FoodSuppl   <=168          83    73     41     32
18 months   ki1000304b-SAS-FoodSuppl   (168-173]      83     7      2      5
18 months   ki1000304b-SAS-FoodSuppl   (173-178]      83     2      2      0
18 months   ki1000304b-SAS-FoodSuppl   >178           83     1      1      0
18 months   ki1101329-Keneba           <=168        1445   793    690    103
18 months   ki1101329-Keneba           (168-173]    1445   310    288     22
18 months   ki1101329-Keneba           (173-178]    1445   206    201      5
18 months   ki1101329-Keneba           >178         1445   136    130      6
18 months   ki1135781-COHORTS          <=168         188   174     79     95
18 months   ki1135781-COHORTS          (168-173]     188     6      4      2
18 months   ki1135781-COHORTS          (173-178]     188     8      4      4
18 months   ki1135781-COHORTS          >178          188     0      0      0
24 months   ki1000304b-SAS-FoodSuppl   <=168           0     0      0      0
24 months   ki1000304b-SAS-FoodSuppl   (168-173]       0     0      0      0
24 months   ki1000304b-SAS-FoodSuppl   (173-178]       0     0      0      0
24 months   ki1000304b-SAS-FoodSuppl   >178            0     0      0      0
24 months   ki1101329-Keneba           <=168        1297   703    628     75
24 months   ki1101329-Keneba           (168-173]    1297   277    256     21
24 months   ki1101329-Keneba           (173-178]    1297   192    187      5
24 months   ki1101329-Keneba           >178         1297   125    122      3
24 months   ki1135781-COHORTS          <=168         240   224    103    121
24 months   ki1135781-COHORTS          (168-173]     240     8      6      2
24 months   ki1135781-COHORTS          (173-178]     240     8      5      3
24 months   ki1135781-COHORTS          >178          240     0      0      0

## Results Table

### Parameter: TSM


agecat      studyid            intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -----------------  -------------------  ---------------  ----------  ----------  ----------
18 months   ki1101329-Keneba   <=168                NA                0.1298865   0.1064803   0.1532928
18 months   ki1101329-Keneba   (168-173]            NA                0.0709677   0.0423745   0.0995610
18 months   ki1101329-Keneba   (173-178]            NA                0.0242718   0.0032495   0.0452942
18 months   ki1101329-Keneba   >178                 NA                0.0441176   0.0095924   0.0786429


### Parameter: E(Y)


agecat      studyid            intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  -----------------  -------------------  ---------------  ----------  ----------  ---------
18 months   ki1101329-Keneba   NA                   NA                0.0941176   0.0919613   0.096274


### Parameter: RR


agecat      studyid            intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -----------------  -------------------  ---------------  ----------  ----------  ----------
18 months   ki1101329-Keneba   (168-173]            <=168             0.5463827   0.3514091   0.8495343
18 months   ki1101329-Keneba   (173-178]            <=168             0.1868696   0.0771494   0.4526318
18 months   ki1101329-Keneba   >178                 <=168             0.3396630   0.1521551   0.7582458


### Parameter: PAR


agecat      studyid            intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------------  -------------------  ---------------  -----------  -----------  -----------
18 months   ki1101329-Keneba   <=168                NA                -0.0357689   -0.0592742   -0.0122635


### Parameter: PAF


agecat      studyid            intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------------  -------------------  ---------------  -----------  -----------  -----------
18 months   ki1101329-Keneba   <=168                NA                -0.3800441   -0.6549511   -0.1508025


