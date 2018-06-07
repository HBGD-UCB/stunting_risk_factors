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

**Outcome Variable:** ever_stunted

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

agecat      studyid                    country     A               n     nA   nAY0   nAY1
----------  -------------------------  ----------  ----------  -----  -----  -----  -----
3 months    ki1000304b-SAS-CompFeed    INDIA       [160-170)     251    148    100     48
3 months    ki1000304b-SAS-CompFeed    INDIA       <160          251     35     19     16
3 months    ki1000304b-SAS-CompFeed    INDIA       >=170         251     68     47     21
3 months    ki1101329-Keneba           GAMBIA      [160-170)    1647    899    664    235
3 months    ki1101329-Keneba           GAMBIA      <160         1647     37     26     11
3 months    ki1101329-Keneba           GAMBIA      >=170        1647    711    567    144
3 months    ki1119695-PROBIT           BELARUS     [160-170)    6249    724    649     75
3 months    ki1119695-PROBIT           BELARUS     <160         6249     23     21      2
3 months    ki1119695-PROBIT           BELARUS     >=170        6249   5502   5137    365
3 months    ki1135781-COHORTS          GUATEMALA   [160-170)     150     80     58     22
3 months    ki1135781-COHORTS          GUATEMALA   <160          150     57     29     28
3 months    ki1135781-COHORTS          GUATEMALA   >=170         150     13      7      6
6 months    ki1000304b-SAS-CompFeed    INDIA       [160-170)     189    115     71     44
6 months    ki1000304b-SAS-CompFeed    INDIA       <160          189     24      8     16
6 months    ki1000304b-SAS-CompFeed    INDIA       >=170         189     50     34     16
6 months    ki1000304b-SAS-FoodSuppl   INDIA       [160-170)     100     64     43     21
6 months    ki1000304b-SAS-FoodSuppl   INDIA       <160          100     25     11     14
6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=170         100     11      6      5
6 months    ki1101329-Keneba           GAMBIA      [160-170)    1609    888    576    312
6 months    ki1101329-Keneba           GAMBIA      <160         1609     35     20     15
6 months    ki1101329-Keneba           GAMBIA      >=170        1609    686    500    186
6 months    ki1119695-PROBIT           BELARUS     [160-170)    6068    699    601     98
6 months    ki1119695-PROBIT           BELARUS     <160         6068     23     19      4
6 months    ki1119695-PROBIT           BELARUS     >=170        6068   5346   4834    512
12 months   ki1000304b-SAS-CompFeed    INDIA       [160-170)     226    136     47     89
12 months   ki1000304b-SAS-CompFeed    INDIA       <160          226     26      9     17
12 months   ki1000304b-SAS-CompFeed    INDIA       >=170         226     64     33     31
12 months   ki1000304b-SAS-FoodSuppl   INDIA       [160-170)      97     61      9     52
12 months   ki1000304b-SAS-FoodSuppl   INDIA       <160           97     25      3     22
12 months   ki1000304b-SAS-FoodSuppl   INDIA       >=170          97     11      2      9
12 months   ki1101329-Keneba           GAMBIA      [160-170)    1687    928    499    429
12 months   ki1101329-Keneba           GAMBIA      <160         1687     36     17     19
12 months   ki1101329-Keneba           GAMBIA      >=170        1687    723    462    261
12 months   ki1119695-PROBIT           BELARUS     [160-170)    6226    720    577    143
12 months   ki1119695-PROBIT           BELARUS     <160         6226     23     17      6
12 months   ki1119695-PROBIT           BELARUS     >=170        6226   5483   4767    716
12 months   ki1135781-COHORTS          GUATEMALA   [160-170)     208    115     27     88
12 months   ki1135781-COHORTS          GUATEMALA   <160          208     79     12     67
12 months   ki1135781-COHORTS          GUATEMALA   >=170         208     14      3     11
18 months   ki1000304b-SAS-CompFeed    INDIA       [160-170)     221    135     29    106
18 months   ki1000304b-SAS-CompFeed    INDIA       <160          221     22      5     17
18 months   ki1000304b-SAS-CompFeed    INDIA       >=170         221     64     28     36
18 months   ki1000304b-SAS-FoodSuppl   INDIA       [160-170)      92     58      5     53
18 months   ki1000304b-SAS-FoodSuppl   INDIA       <160           92     25      4     21
18 months   ki1000304b-SAS-FoodSuppl   INDIA       >=170          92      9      0      9
18 months   ki1101329-Keneba           GAMBIA      [160-170)    1644    912    391    521
18 months   ki1101329-Keneba           GAMBIA      <160         1644     34     12     22
18 months   ki1101329-Keneba           GAMBIA      >=170        1644    698    386    312
18 months   ki1119695-PROBIT           BELARUS     [160-170)    5940    693    538    155
18 months   ki1119695-PROBIT           BELARUS     <160         5940     21     17      4
18 months   ki1119695-PROBIT           BELARUS     >=170        5940   5226   4484    742
18 months   ki1135781-COHORTS          GUATEMALA   [160-170)     175     98     15     83
18 months   ki1135781-COHORTS          GUATEMALA   <160          175     64      6     58
18 months   ki1135781-COHORTS          GUATEMALA   >=170         175     13      2     11
24 months   ki1000304b-SAS-CompFeed    INDIA       [160-170)      25     17      6     11
24 months   ki1000304b-SAS-CompFeed    INDIA       <160           25      2      0      2
24 months   ki1000304b-SAS-CompFeed    INDIA       >=170          25      6      1      5
24 months   ki1000304b-SAS-FoodSuppl   INDIA       [160-170)       9      5      1      4
24 months   ki1000304b-SAS-FoodSuppl   INDIA       <160            9      2      0      2
24 months   ki1000304b-SAS-FoodSuppl   INDIA       >=170           9      2      0      2
24 months   ki1101329-Keneba           GAMBIA      [160-170)    1611    904    323    581
24 months   ki1101329-Keneba           GAMBIA      <160         1611     34      9     25
24 months   ki1101329-Keneba           GAMBIA      >=170        1611    673    330    343
24 months   ki1119695-PROBIT           BELARUS     [160-170)    1926    220    149     71
24 months   ki1119695-PROBIT           BELARUS     <160         1926      7      4      3
24 months   ki1119695-PROBIT           BELARUS     >=170        1926   1699   1386    313
24 months   ki1135781-COHORTS          GUATEMALA   [160-170)     213    120      9    111
24 months   ki1135781-COHORTS          GUATEMALA   <160          213     78      7     71
24 months   ki1135781-COHORTS          GUATEMALA   >=170         213     15      3     12


The following strata were considered:

* agecat: 12 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 12 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 12 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 12 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 12 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 18 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 18 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 18 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 18 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 18 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 3 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 3 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 3 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 3 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 3 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 12 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 12 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 18 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 18 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 18 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots

```
## Warning: Removed 15 rows containing missing values (geom_errorbar).
```

![](/tmp/b460c2b7-9aa5-4cd9-8f0f-a1336b89f98a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->


```
## Warning: Removed 22 rows containing missing values (geom_errorbar).
```

![](/tmp/b460c2b7-9aa5-4cd9-8f0f-a1336b89f98a/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


```
## Warning: Removed 5 rows containing missing values (geom_errorbar).
```

![](/tmp/b460c2b7-9aa5-4cd9-8f0f-a1336b89f98a/REPORT_files/figure-html/plot_paf-1.png)<!-- -->


```
## Warning: Removed 5 rows containing missing values (geom_errorbar).
```

![](/tmp/b460c2b7-9aa5-4cd9-8f0f-a1336b89f98a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country     intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ----------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki1000304b-SAS-CompFeed    INDIA       [160-170)            NA                0.3243243          NA          NA
3 months    ki1000304b-SAS-CompFeed    INDIA       <160                 NA                0.4571429          NA          NA
3 months    ki1000304b-SAS-CompFeed    INDIA       >=170                NA                0.3088235          NA          NA
3 months    ki1101329-Keneba           GAMBIA      [160-170)            NA                0.2614016   0.2326701   0.2901331
3 months    ki1101329-Keneba           GAMBIA      <160                 NA                0.2972973   0.1499777   0.4446169
3 months    ki1101329-Keneba           GAMBIA      >=170                NA                0.2025316   0.1729823   0.2320810
3 months    ki1135781-COHORTS          GUATEMALA   [160-170)            NA                0.2750000   0.1768273   0.3731727
3 months    ki1135781-COHORTS          GUATEMALA   <160                 NA                0.4912281   0.3610115   0.6214447
3 months    ki1135781-COHORTS          GUATEMALA   >=170                NA                0.4615385   0.1896378   0.7334391
6 months    ki1000304b-SAS-CompFeed    INDIA       [160-170)            NA                0.3826087          NA          NA
6 months    ki1000304b-SAS-CompFeed    INDIA       <160                 NA                0.6666667          NA          NA
6 months    ki1000304b-SAS-CompFeed    INDIA       >=170                NA                0.3200000          NA          NA
6 months    ki1000304b-SAS-FoodSuppl   INDIA       [160-170)            NA                0.3281250   0.2125126   0.4437374
6 months    ki1000304b-SAS-FoodSuppl   INDIA       <160                 NA                0.5600000   0.3644396   0.7555604
6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=170                NA                0.4545455   0.1588109   0.7502800
6 months    ki1101329-Keneba           GAMBIA      [160-170)            NA                0.3513514   0.3199425   0.3827602
6 months    ki1101329-Keneba           GAMBIA      <160                 NA                0.4285714   0.2645723   0.5925706
6 months    ki1101329-Keneba           GAMBIA      >=170                NA                0.2711370   0.2378605   0.3044136
12 months   ki1000304b-SAS-CompFeed    INDIA       [160-170)            NA                0.6544118          NA          NA
12 months   ki1000304b-SAS-CompFeed    INDIA       <160                 NA                0.6538462          NA          NA
12 months   ki1000304b-SAS-CompFeed    INDIA       >=170                NA                0.4843750          NA          NA
12 months   ki1101329-Keneba           GAMBIA      [160-170)            NA                0.4622845   0.4301971   0.4943718
12 months   ki1101329-Keneba           GAMBIA      <160                 NA                0.5277778   0.3646513   0.6909042
12 months   ki1101329-Keneba           GAMBIA      >=170                NA                0.3609959   0.3259763   0.3960154
12 months   ki1119695-PROBIT           BELARUS     [160-170)            NA                0.1986111          NA          NA
12 months   ki1119695-PROBIT           BELARUS     <160                 NA                0.2608696          NA          NA
12 months   ki1119695-PROBIT           BELARUS     >=170                NA                0.1305854          NA          NA
18 months   ki1000304b-SAS-CompFeed    INDIA       [160-170)            NA                0.7851852          NA          NA
18 months   ki1000304b-SAS-CompFeed    INDIA       <160                 NA                0.7727273          NA          NA
18 months   ki1000304b-SAS-CompFeed    INDIA       >=170                NA                0.5625000          NA          NA
18 months   ki1101329-Keneba           GAMBIA      [160-170)            NA                0.5712719   0.5391431   0.6034008
18 months   ki1101329-Keneba           GAMBIA      <160                 NA                0.6470588   0.4863781   0.8077396
18 months   ki1101329-Keneba           GAMBIA      >=170                NA                0.4469914   0.4100964   0.4838864
24 months   ki1101329-Keneba           GAMBIA      [160-170)            NA                0.6426991   0.6114513   0.6739469
24 months   ki1101329-Keneba           GAMBIA      <160                 NA                0.7352941   0.5869550   0.8836333
24 months   ki1101329-Keneba           GAMBIA      >=170                NA                0.5096582   0.4718780   0.5474385


### Parameter: E(Y)


agecat      studyid                    country     intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ----------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki1000304b-SAS-CompFeed    INDIA       NA                   NA                0.3386454          NA          NA
3 months    ki1101329-Keneba           GAMBIA      NA                   NA                0.2367942   0.2162571   0.2573313
3 months    ki1135781-COHORTS          GUATEMALA   NA                   NA                0.3733333   0.2956690   0.4509977
6 months    ki1000304b-SAS-CompFeed    INDIA       NA                   NA                0.4021164          NA          NA
6 months    ki1000304b-SAS-FoodSuppl   INDIA       NA                   NA                0.4000000   0.3034980   0.4965020
6 months    ki1101329-Keneba           GAMBIA      NA                   NA                0.3188316   0.2960537   0.3416094
12 months   ki1000304b-SAS-CompFeed    INDIA       NA                   NA                0.6061947          NA          NA
12 months   ki1101329-Keneba           GAMBIA      NA                   NA                0.4202727   0.3967115   0.4438338
12 months   ki1119695-PROBIT           BELARUS     NA                   NA                0.1389335          NA          NA
18 months   ki1000304b-SAS-CompFeed    INDIA       NA                   NA                0.7194570          NA          NA
18 months   ki1101329-Keneba           GAMBIA      NA                   NA                0.5200730   0.4959157   0.5442303
24 months   ki1101329-Keneba           GAMBIA      NA                   NA                0.5890751   0.5650425   0.6131078


### Parameter: RR


agecat      studyid                    country     intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ----------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki1000304b-SAS-CompFeed    INDIA       [160-170)            [160-170)         1.0000000          NA          NA
3 months    ki1000304b-SAS-CompFeed    INDIA       <160                 [160-170)         1.4095238          NA          NA
3 months    ki1000304b-SAS-CompFeed    INDIA       >=170                [160-170)         0.9522059          NA          NA
3 months    ki1101329-Keneba           GAMBIA      [160-170)            [160-170)         1.0000000   1.0000000   1.0000000
3 months    ki1101329-Keneba           GAMBIA      <160                 [160-170)         1.1373203   0.6846154   1.8893784
3 months    ki1101329-Keneba           GAMBIA      >=170                [160-170)         0.7747913   0.6454355   0.9300721
3 months    ki1135781-COHORTS          GUATEMALA   [160-170)            [160-170)         1.0000000   1.0000000   1.0000000
3 months    ki1135781-COHORTS          GUATEMALA   <160                 [160-170)         1.7862839   1.1450962   2.7864997
3 months    ki1135781-COHORTS          GUATEMALA   >=170                [160-170)         1.6783217   0.8427814   3.3422232
6 months    ki1000304b-SAS-CompFeed    INDIA       [160-170)            [160-170)         1.0000000          NA          NA
6 months    ki1000304b-SAS-CompFeed    INDIA       <160                 [160-170)         1.7424242          NA          NA
6 months    ki1000304b-SAS-CompFeed    INDIA       >=170                [160-170)         0.8363636          NA          NA
6 months    ki1000304b-SAS-FoodSuppl   INDIA       [160-170)            [160-170)         1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA       <160                 [160-170)         1.7066667   1.0392104   2.8028118
6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=170                [160-170)         1.3852814   0.6610056   2.9031593
6 months    ki1101329-Keneba           GAMBIA      [160-170)            [160-170)         1.0000000   1.0000000   1.0000000
6 months    ki1101329-Keneba           GAMBIA      <160                 [160-170)         1.2197802   0.8234133   1.8069466
6 months    ki1101329-Keneba           GAMBIA      >=170                [160-170)         0.7716977   0.6629885   0.8982318
12 months   ki1000304b-SAS-CompFeed    INDIA       [160-170)            [160-170)         1.0000000          NA          NA
12 months   ki1000304b-SAS-CompFeed    INDIA       <160                 [160-170)         0.9991357          NA          NA
12 months   ki1000304b-SAS-CompFeed    INDIA       >=170                [160-170)         0.7401685          NA          NA
12 months   ki1101329-Keneba           GAMBIA      [160-170)            [160-170)         1.0000000   1.0000000   1.0000000
12 months   ki1101329-Keneba           GAMBIA      <160                 [160-170)         1.1416731   0.8316990   1.5671746
12 months   ki1101329-Keneba           GAMBIA      >=170                [160-170)         0.7808955   0.6930890   0.8798260
12 months   ki1119695-PROBIT           BELARUS     [160-170)            [160-170)         1.0000000          NA          NA
12 months   ki1119695-PROBIT           BELARUS     <160                 [160-170)         1.3134691          NA          NA
12 months   ki1119695-PROBIT           BELARUS     >=170                [160-170)         0.6574932          NA          NA
18 months   ki1000304b-SAS-CompFeed    INDIA       [160-170)            [160-170)         1.0000000          NA          NA
18 months   ki1000304b-SAS-CompFeed    INDIA       <160                 [160-170)         0.9841338          NA          NA
18 months   ki1000304b-SAS-CompFeed    INDIA       >=170                [160-170)         0.7163915          NA          NA
18 months   ki1101329-Keneba           GAMBIA      [160-170)            [160-170)         1.0000000   1.0000000   1.0000000
18 months   ki1101329-Keneba           GAMBIA      <160                 [160-170)         1.1326634   0.8780585   1.4610944
18 months   ki1101329-Keneba           GAMBIA      >=170                [160-170)         0.7824494   0.7080744   0.8646367
24 months   ki1101329-Keneba           GAMBIA      [160-170)            [160-170)         1.0000000   1.0000000   1.0000000
24 months   ki1101329-Keneba           GAMBIA      <160                 [160-170)         1.1440721   0.9296721   1.4079168
24 months   ki1101329-Keneba           GAMBIA      >=170                [160-170)         0.7929967   0.7257231   0.8665064


### Parameter: PAR


agecat      studyid                    country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  -----------
3 months    ki1000304b-SAS-CompFeed    INDIA       [160-170)            NA                 0.0143211           NA           NA
3 months    ki1101329-Keneba           GAMBIA      [160-170)            NA                -0.0246074   -0.0432109   -0.0060039
3 months    ki1135781-COHORTS          GUATEMALA   [160-170)            NA                 0.0983333    0.0249220    0.1717447
6 months    ki1000304b-SAS-CompFeed    INDIA       [160-170)            NA                 0.0195077           NA           NA
6 months    ki1000304b-SAS-FoodSuppl   INDIA       [160-170)            NA                 0.0718750   -0.0027580    0.1465080
6 months    ki1101329-Keneba           GAMBIA      [160-170)            NA                -0.0325198   -0.0529266   -0.0121129
12 months   ki1000304b-SAS-CompFeed    INDIA       [160-170)            NA                -0.0482171           NA           NA
12 months   ki1101329-Keneba           GAMBIA      [160-170)            NA                -0.0420118   -0.0632718   -0.0207519
12 months   ki1119695-PROBIT           BELARUS     [160-170)            NA                -0.0596776           NA           NA
18 months   ki1000304b-SAS-CompFeed    INDIA       [160-170)            NA                -0.0657282           NA           NA
18 months   ki1101329-Keneba           GAMBIA      [160-170)            NA                -0.0511989   -0.0728912   -0.0295066
24 months   ki1101329-Keneba           GAMBIA      [160-170)            NA                -0.0536240   -0.0750288   -0.0322192


### Parameter: PAF


agecat      studyid                    country     intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ----------  -------------------  ---------------  -----------  -----------  -----------
3 months    ki1000304b-SAS-CompFeed    INDIA       [160-170)            NA                 0.0422893           NA           NA
3 months    ki1101329-Keneba           GAMBIA      [160-170)            NA                -0.1039189   -0.1851710   -0.0282372
3 months    ki1135781-COHORTS          GUATEMALA   [160-170)            NA                 0.2633929    0.0392310    0.4352544
6 months    ki1000304b-SAS-CompFeed    INDIA       [160-170)            NA                 0.0485126           NA           NA
6 months    ki1000304b-SAS-FoodSuppl   INDIA       [160-170)            NA                 0.1796875   -0.0304111    0.3469474
6 months    ki1101329-Keneba           GAMBIA      [160-170)            NA                -0.1019967   -0.1679110   -0.0398025
12 months   ki1000304b-SAS-CompFeed    INDIA       [160-170)            NA                -0.0795406           NA           NA
12 months   ki1101329-Keneba           GAMBIA      [160-170)            NA                -0.0999632   -0.1519236   -0.0503467
12 months   ki1119695-PROBIT           BELARUS     [160-170)            NA                -0.4295408           NA           NA
18 months   ki1000304b-SAS-CompFeed    INDIA       [160-170)            NA                -0.0913580           NA           NA
18 months   ki1101329-Keneba           GAMBIA      [160-170)            NA                -0.0984457   -0.1413158   -0.0571858
24 months   ki1101329-Keneba           GAMBIA      [160-170)            NA                -0.0910308   -0.1283944   -0.0549045
