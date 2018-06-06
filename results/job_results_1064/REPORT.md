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

**Outcome Variable:** sstunted

## Predictor Variables

**Intervention Variable:** fhtcm

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country     A               n    nA   nAY0   nAY1
----------  -------------------------  ----------  ----------  -----  ----  -----  -----
Birth       ki1101329-Keneba           GAMBIA      [160-170)    1165   631    620     11
Birth       ki1101329-Keneba           GAMBIA      <160         1165    27     27      0
Birth       ki1101329-Keneba           GAMBIA      >=170        1165   507    497     10
Birth       ki1135781-COHORTS          GUATEMALA   [160-170)      91    53     53      0
Birth       ki1135781-COHORTS          GUATEMALA   <160           91    32     32      0
Birth       ki1135781-COHORTS          GUATEMALA   >=170          91     6      4      2
3 months    ki1000304b-SAS-FoodSuppl   INDIA       [160-170)      92    59     54      5
3 months    ki1000304b-SAS-FoodSuppl   INDIA       <160           92    22     17      5
3 months    ki1000304b-SAS-FoodSuppl   INDIA       >=170          92    11     10      1
3 months    ki1101329-Keneba           GAMBIA      [160-170)    1562   859    828     31
3 months    ki1101329-Keneba           GAMBIA      <160         1562    36     35      1
3 months    ki1101329-Keneba           GAMBIA      >=170        1562   667    653     14
3 months    ki1135781-COHORTS          GUATEMALA   [160-170)     140    75     70      5
3 months    ki1135781-COHORTS          GUATEMALA   <160          140    53     42     11
3 months    ki1135781-COHORTS          GUATEMALA   >=170         140    12     11      1
6 months    ki1000304b-SAS-FoodSuppl   INDIA       [160-170)      94    60     54      6
6 months    ki1000304b-SAS-FoodSuppl   INDIA       <160           94    23     19      4
6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=170          94    11      7      4
6 months    ki1101329-Keneba           GAMBIA      [160-170)    1511   828    795     33
6 months    ki1101329-Keneba           GAMBIA      <160         1511    34     33      1
6 months    ki1101329-Keneba           GAMBIA      >=170        1511   649    634     15
6 months    ki1135781-COHORTS          GUATEMALA   [160-170)     151    86     74     12
6 months    ki1135781-COHORTS          GUATEMALA   <160          151    54     39     15
6 months    ki1135781-COHORTS          GUATEMALA   >=170         151    11     10      1
9 months    ki1000304b-SAS-FoodSuppl   INDIA       [160-170)      84    54     44     10
9 months    ki1000304b-SAS-FoodSuppl   INDIA       <160           84    22     15      7
9 months    ki1000304b-SAS-FoodSuppl   INDIA       >=170          84     8      5      3
9 months    ki1101329-Keneba           GAMBIA      [160-170)    1529   840    785     55
9 months    ki1101329-Keneba           GAMBIA      <160         1529    35     33      2
9 months    ki1101329-Keneba           GAMBIA      >=170        1529   654    632     22
9 months    ki1135781-COHORTS          GUATEMALA   [160-170)     164    87     64     23
9 months    ki1135781-COHORTS          GUATEMALA   <160          164    65     39     26
9 months    ki1135781-COHORTS          GUATEMALA   >=170         164    12     10      2
12 months   ki1000304b-SAS-FoodSuppl   INDIA       [160-170)      91    59     34     25
12 months   ki1000304b-SAS-FoodSuppl   INDIA       <160           91    23     11     12
12 months   ki1000304b-SAS-FoodSuppl   INDIA       >=170          91     9      5      4
12 months   ki1101329-Keneba           GAMBIA      [160-170)    1448   805    732     73
12 months   ki1101329-Keneba           GAMBIA      <160         1448    32     31      1
12 months   ki1101329-Keneba           GAMBIA      >=170        1448   611    585     26
12 months   ki1135781-COHORTS          GUATEMALA   [160-170)     204   112     72     40
12 months   ki1135781-COHORTS          GUATEMALA   <160          204    78     41     37
12 months   ki1135781-COHORTS          GUATEMALA   >=170         204    14     10      4
18 months   ki1000304b-SAS-FoodSuppl   INDIA       [160-170)      83    54     33     21
18 months   ki1000304b-SAS-FoodSuppl   INDIA       <160           83    21      8     13
18 months   ki1000304b-SAS-FoodSuppl   INDIA       >=170          83     8      5      3
18 months   ki1101329-Keneba           GAMBIA      [160-170)    1445   823    718    105
18 months   ki1101329-Keneba           GAMBIA      <160         1445    30     26      4
18 months   ki1101329-Keneba           GAMBIA      >=170        1445   592    565     27
18 months   ki1135781-COHORTS          GUATEMALA   [160-170)     188   106     54     52
18 months   ki1135781-COHORTS          GUATEMALA   <160          188    68     25     43
18 months   ki1135781-COHORTS          GUATEMALA   >=170         188    14      8      6
24 months   ki1101329-Keneba           GAMBIA      [160-170)    1297   729    651     78
24 months   ki1101329-Keneba           GAMBIA      <160         1297    27     24      3
24 months   ki1101329-Keneba           GAMBIA      >=170        1297   541    518     23
24 months   ki1135781-COHORTS          GUATEMALA   [160-170)     240   135     64     71
24 months   ki1135781-COHORTS          GUATEMALA   <160          240    89     39     50
24 months   ki1135781-COHORTS          GUATEMALA   >=170         240    16     11      5


The following strata were considered:

* agecat: 12 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 12 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 12 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 18 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 18 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 18 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 3 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 3 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 3 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 9 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 9 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 9 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 3 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 3 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 3 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 9 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 9 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 9 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 12 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 12 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 12 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 18 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 18 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/06c47baa-b7fa-4291-996d-116abd3451c3/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->


```
## Warning: Removed 2 rows containing missing values (geom_errorbar).
```

![](/tmp/06c47baa-b7fa-4291-996d-116abd3451c3/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/06c47baa-b7fa-4291-996d-116abd3451c3/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/06c47baa-b7fa-4291-996d-116abd3451c3/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid             country     intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------  ----------  -------------------  ---------------  ----------  ----------  ----------
18 months   ki1135781-COHORTS   GUATEMALA   [160-170)            NA                0.4905660   0.3951446   0.5859875
18 months   ki1135781-COHORTS   GUATEMALA   <160                 NA                0.6323529   0.5174458   0.7472601
18 months   ki1135781-COHORTS   GUATEMALA   >=170                NA                0.4285714   0.1686544   0.6884885
24 months   ki1135781-COHORTS   GUATEMALA   [160-170)            NA                0.5259259   0.4415199   0.6103319
24 months   ki1135781-COHORTS   GUATEMALA   <160                 NA                0.5617978   0.4585009   0.6650946
24 months   ki1135781-COHORTS   GUATEMALA   >=170                NA                0.3125000   0.0849085   0.5400915


### Parameter: E(Y)


agecat      studyid             country     intervention_level   baseline_level    estimate    ci_lower    ci_upper
----------  ------------------  ----------  -------------------  ---------------  ---------  ----------  ----------
18 months   ki1135781-COHORTS   GUATEMALA   NA                   NA                0.537234   0.5267214   0.5477466
24 months   ki1135781-COHORTS   GUATEMALA   NA                   NA                0.525000   0.5174857   0.5325143


### Parameter: RR


agecat      studyid             country     intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  ------------------  ----------  -------------------  ---------------  ----------  ----------  ---------
18 months   ki1135781-COHORTS   GUATEMALA   [160-170)            [160-170)         1.0000000   1.0000000   1.000000
18 months   ki1135781-COHORTS   GUATEMALA   <160                 [160-170)         1.2890271   0.9877768   1.682152
18 months   ki1135781-COHORTS   GUATEMALA   >=170                [160-170)         0.8736264   0.4620856   1.651692
24 months   ki1135781-COHORTS   GUATEMALA   [160-170)            [160-170)         1.0000000   1.0000000   1.000000
24 months   ki1135781-COHORTS   GUATEMALA   <160                 [160-170)         1.0682070   0.8368777   1.363480
24 months   ki1135781-COHORTS   GUATEMALA   >=170                [160-170)         0.5941901   0.2818663   1.252587


### Parameter: PAR


agecat      studyid             country     intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ------------------  ----------  -------------------  ---------------  -----------  -----------  ----------
18 months   ki1135781-COHORTS   GUATEMALA   [160-170)            NA                 0.0466680   -0.0493308   0.1426668
24 months   ki1135781-COHORTS   GUATEMALA   [160-170)            NA                -0.0009259   -0.0856657   0.0838139


### Parameter: PAF


agecat      studyid             country     intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ------------------  ----------  -------------------  ---------------  -----------  -----------  ----------
18 months   ki1135781-COHORTS   GUATEMALA   [160-170)            NA                 0.0868672   -0.1102895   0.2490143
24 months   ki1135781-COHORTS   GUATEMALA   [160-170)            NA                -0.0017637   -0.1769065   0.1473150
