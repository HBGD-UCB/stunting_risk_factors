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

agecat      studyid                    country     A               n     nA   nAY0   nAY1
----------  -------------------------  ----------  ----------  -----  -----  -----  -----
Birth       ki1000304b-SAS-CompFeed    INDIA       [160-170)      42     30     28      2
Birth       ki1000304b-SAS-CompFeed    INDIA       <160           42      6      5      1
Birth       ki1000304b-SAS-CompFeed    INDIA       >=170          42      6      6      0
Birth       ki1101329-Keneba           GAMBIA      [160-170)    1165    631    620     11
Birth       ki1101329-Keneba           GAMBIA      <160         1165     27     27      0
Birth       ki1101329-Keneba           GAMBIA      >=170        1165    507    497     10
Birth       ki1119695-PROBIT           BELARUS     [160-170)    6247    724    723      1
Birth       ki1119695-PROBIT           BELARUS     <160         6247     23     23      0
Birth       ki1119695-PROBIT           BELARUS     >=170        6247   5500   5496      4
Birth       ki1135781-COHORTS          GUATEMALA   [160-170)      91     53     53      0
Birth       ki1135781-COHORTS          GUATEMALA   <160           91     32     32      0
Birth       ki1135781-COHORTS          GUATEMALA   >=170          91      6      4      2
3 months    ki1000304b-SAS-CompFeed    INDIA       [160-170)     224    136    128      8
3 months    ki1000304b-SAS-CompFeed    INDIA       <160          224     29     25      4
3 months    ki1000304b-SAS-CompFeed    INDIA       >=170         224     59     57      2
3 months    ki1000304b-SAS-FoodSuppl   INDIA       [160-170)      92     59     54      5
3 months    ki1000304b-SAS-FoodSuppl   INDIA       <160           92     22     17      5
3 months    ki1000304b-SAS-FoodSuppl   INDIA       >=170          92     11     10      1
3 months    ki1101329-Keneba           GAMBIA      [160-170)    1562    859    828     31
3 months    ki1101329-Keneba           GAMBIA      <160         1562     36     35      1
3 months    ki1101329-Keneba           GAMBIA      >=170        1562    667    653     14
3 months    ki1119695-PROBIT           BELARUS     [160-170)    6234    721    711     10
3 months    ki1119695-PROBIT           BELARUS     <160         6234     23     23      0
3 months    ki1119695-PROBIT           BELARUS     >=170        6234   5490   5454     36
3 months    ki1135781-COHORTS          GUATEMALA   [160-170)     140     75     70      5
3 months    ki1135781-COHORTS          GUATEMALA   <160          140     53     42     11
3 months    ki1135781-COHORTS          GUATEMALA   >=170         140     12     11      1
6 months    ki1000304b-SAS-CompFeed    INDIA       [160-170)     218    133    120     13
6 months    ki1000304b-SAS-CompFeed    INDIA       <160          218     26     24      2
6 months    ki1000304b-SAS-CompFeed    INDIA       >=170         218     59     57      2
6 months    ki1000304b-SAS-FoodSuppl   INDIA       [160-170)      94     60     54      6
6 months    ki1000304b-SAS-FoodSuppl   INDIA       <160           94     23     19      4
6 months    ki1000304b-SAS-FoodSuppl   INDIA       >=170          94     11      7      4
6 months    ki1101329-Keneba           GAMBIA      [160-170)    1511    828    795     33
6 months    ki1101329-Keneba           GAMBIA      <160         1511     34     33      1
6 months    ki1101329-Keneba           GAMBIA      >=170        1511    649    634     15
6 months    ki1119695-PROBIT           BELARUS     [160-170)    6015    697    672     25
6 months    ki1119695-PROBIT           BELARUS     <160         6015     23     22      1
6 months    ki1119695-PROBIT           BELARUS     >=170        6015   5295   5224     71
6 months    ki1135781-COHORTS          GUATEMALA   [160-170)     151     86     74     12
6 months    ki1135781-COHORTS          GUATEMALA   <160          151     54     39     15
6 months    ki1135781-COHORTS          GUATEMALA   >=170         151     11     10      1
9 months    ki1000304b-SAS-CompFeed    INDIA       [160-170)     211    127    112     15
9 months    ki1000304b-SAS-CompFeed    INDIA       <160          211     24     20      4
9 months    ki1000304b-SAS-CompFeed    INDIA       >=170         211     60     55      5
9 months    ki1000304b-SAS-FoodSuppl   INDIA       [160-170)      84     54     44     10
9 months    ki1000304b-SAS-FoodSuppl   INDIA       <160           84     22     15      7
9 months    ki1000304b-SAS-FoodSuppl   INDIA       >=170          84      8      5      3
9 months    ki1101329-Keneba           GAMBIA      [160-170)    1529    840    785     55
9 months    ki1101329-Keneba           GAMBIA      <160         1529     35     33      2
9 months    ki1101329-Keneba           GAMBIA      >=170        1529    654    632     22
9 months    ki1119695-PROBIT           BELARUS     [160-170)    5930    681    667     14
9 months    ki1119695-PROBIT           BELARUS     <160         5930     23     22      1
9 months    ki1119695-PROBIT           BELARUS     >=170        5930   5226   5183     43
9 months    ki1135781-COHORTS          GUATEMALA   [160-170)     164     87     64     23
9 months    ki1135781-COHORTS          GUATEMALA   <160          164     65     39     26
9 months    ki1135781-COHORTS          GUATEMALA   >=170         164     12     10      2
12 months   ki1000304b-SAS-CompFeed    INDIA       [160-170)     221    136    112     24
12 months   ki1000304b-SAS-CompFeed    INDIA       <160          221     24     19      5
12 months   ki1000304b-SAS-CompFeed    INDIA       >=170         221     61     57      4
12 months   ki1000304b-SAS-FoodSuppl   INDIA       [160-170)      91     59     34     25
12 months   ki1000304b-SAS-FoodSuppl   INDIA       <160           91     23     11     12
12 months   ki1000304b-SAS-FoodSuppl   INDIA       >=170          91      9      5      4
12 months   ki1101329-Keneba           GAMBIA      [160-170)    1448    805    732     73
12 months   ki1101329-Keneba           GAMBIA      <160         1448     32     31      1
12 months   ki1101329-Keneba           GAMBIA      >=170        1448    611    585     26
12 months   ki1119695-PROBIT           BELARUS     [160-170)    6107    706    692     14
12 months   ki1119695-PROBIT           BELARUS     <160         6107     23     22      1
12 months   ki1119695-PROBIT           BELARUS     >=170        6107   5378   5349     29
12 months   ki1135781-COHORTS          GUATEMALA   [160-170)     204    112     72     40
12 months   ki1135781-COHORTS          GUATEMALA   <160          204     78     41     37
12 months   ki1135781-COHORTS          GUATEMALA   >=170         204     14     10      4
18 months   ki1000304b-SAS-CompFeed    INDIA       [160-170)     213    131    106     25
18 months   ki1000304b-SAS-CompFeed    INDIA       <160          213     21     16      5
18 months   ki1000304b-SAS-CompFeed    INDIA       >=170         213     61     56      5
18 months   ki1000304b-SAS-FoodSuppl   INDIA       [160-170)      83     54     33     21
18 months   ki1000304b-SAS-FoodSuppl   INDIA       <160           83     21      8     13
18 months   ki1000304b-SAS-FoodSuppl   INDIA       >=170          83      8      5      3
18 months   ki1101329-Keneba           GAMBIA      [160-170)    1445    823    718    105
18 months   ki1101329-Keneba           GAMBIA      <160         1445     30     26      4
18 months   ki1101329-Keneba           GAMBIA      >=170        1445    592    565     27
18 months   ki1119695-PROBIT           BELARUS     [160-170)     710     68     65      3
18 months   ki1119695-PROBIT           BELARUS     <160          710      2      1      1
18 months   ki1119695-PROBIT           BELARUS     >=170         710    640    627     13
18 months   ki1135781-COHORTS          GUATEMALA   [160-170)     188    106     54     52
18 months   ki1135781-COHORTS          GUATEMALA   <160          188     68     25     43
18 months   ki1135781-COHORTS          GUATEMALA   >=170         188     14      8      6
24 months   ki1101329-Keneba           GAMBIA      [160-170)    1297    729    651     78
24 months   ki1101329-Keneba           GAMBIA      <160         1297     27     24      3
24 months   ki1101329-Keneba           GAMBIA      >=170        1297    541    518     23
24 months   ki1119695-PROBIT           BELARUS     [160-170)    1526    156    149      7
24 months   ki1119695-PROBIT           BELARUS     <160         1526      9      7      2
24 months   ki1119695-PROBIT           BELARUS     >=170        1526   1361   1340     21
24 months   ki1135781-COHORTS          GUATEMALA   [160-170)     240    135     64     71
24 months   ki1135781-COHORTS          GUATEMALA   <160          240     89     39     50
24 months   ki1135781-COHORTS          GUATEMALA   >=170         240     16     11      5


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
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 3 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 3 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 3 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 3 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 3 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 9 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 9 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 9 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 9 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 9 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 3 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 3 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 3 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 3 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 3 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 9 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 9 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 9 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 9 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 9 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 12 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 12 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 12 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 12 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 12 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 18 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 18 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 18 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots

```
## Warning: Removed 3 rows containing missing values (geom_errorbar).
```

![](/tmp/0e8fadd6-6b5e-4343-a802-dad2921d6818/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->


```
## Warning: Removed 5 rows containing missing values (geom_errorbar).
```

![](/tmp/0e8fadd6-6b5e-4343-a802-dad2921d6818/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


```
## Warning: Removed 1 rows containing missing values (geom_errorbar).
```

![](/tmp/0e8fadd6-6b5e-4343-a802-dad2921d6818/REPORT_files/figure-html/plot_paf-1.png)<!-- -->


```
## Warning: Removed 1 rows containing missing values (geom_errorbar).
```

![](/tmp/0e8fadd6-6b5e-4343-a802-dad2921d6818/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                   country     intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  ----------  -------------------  ---------------  ----------  ----------  ----------
18 months   ki1000304b-SAS-CompFeed   INDIA       [160-170)            NA                0.1908397          NA          NA
18 months   ki1000304b-SAS-CompFeed   INDIA       <160                 NA                0.2380952          NA          NA
18 months   ki1000304b-SAS-CompFeed   INDIA       >=170                NA                0.0819672          NA          NA
18 months   ki1135781-COHORTS         GUATEMALA   [160-170)            NA                0.4905660   0.3951446   0.5859875
18 months   ki1135781-COHORTS         GUATEMALA   <160                 NA                0.6323529   0.5174458   0.7472601
18 months   ki1135781-COHORTS         GUATEMALA   >=170                NA                0.4285714   0.1686544   0.6884885
24 months   ki1135781-COHORTS         GUATEMALA   [160-170)            NA                0.5259259   0.4415199   0.6103319
24 months   ki1135781-COHORTS         GUATEMALA   <160                 NA                0.5617978   0.4585009   0.6650946
24 months   ki1135781-COHORTS         GUATEMALA   >=170                NA                0.3125000   0.0849085   0.5400915


### Parameter: E(Y)


agecat      studyid                   country     intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------------  ----------  -------------------  ---------------  ----------  ----------  ----------
18 months   ki1000304b-SAS-CompFeed   INDIA       NA                   NA                0.1643192          NA          NA
18 months   ki1135781-COHORTS         GUATEMALA   NA                   NA                0.5372340   0.4657696   0.6086984
24 months   ki1135781-COHORTS         GUATEMALA   NA                   NA                0.5250000   0.4616895   0.5883105


### Parameter: RR


agecat      studyid                   country     intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  ------------------------  ----------  -------------------  ---------------  ----------  ----------  ---------
18 months   ki1000304b-SAS-CompFeed   INDIA       [160-170)            [160-170)         1.0000000          NA         NA
18 months   ki1000304b-SAS-CompFeed   INDIA       <160                 [160-170)         1.2476190          NA         NA
18 months   ki1000304b-SAS-CompFeed   INDIA       >=170                [160-170)         0.4295082          NA         NA
18 months   ki1135781-COHORTS         GUATEMALA   [160-170)            [160-170)         1.0000000   1.0000000   1.000000
18 months   ki1135781-COHORTS         GUATEMALA   <160                 [160-170)         1.2890271   0.9877768   1.682152
18 months   ki1135781-COHORTS         GUATEMALA   >=170                [160-170)         0.8736264   0.4620856   1.651692
24 months   ki1135781-COHORTS         GUATEMALA   [160-170)            [160-170)         1.0000000   1.0000000   1.000000
24 months   ki1135781-COHORTS         GUATEMALA   <160                 [160-170)         1.0682070   0.8368777   1.363480
24 months   ki1135781-COHORTS         GUATEMALA   >=170                [160-170)         0.5941901   0.2818663   1.252587


### Parameter: PAR


agecat      studyid                   country     intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ------------------------  ----------  -------------------  ---------------  -----------  -----------  ----------
18 months   ki1000304b-SAS-CompFeed   INDIA       [160-170)            NA                -0.0265204           NA          NA
18 months   ki1135781-COHORTS         GUATEMALA   [160-170)            NA                 0.0466680   -0.0161395   0.1094756
24 months   ki1135781-COHORTS         GUATEMALA   [160-170)            NA                -0.0009259   -0.0567620   0.0549102


### Parameter: PAF


agecat      studyid                   country     intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ------------------------  ----------  -------------------  ---------------  -----------  -----------  ----------
18 months   ki1000304b-SAS-CompFeed   INDIA       [160-170)            NA                -0.1613959           NA          NA
18 months   ki1135781-COHORTS         GUATEMALA   [160-170)            NA                 0.0868672   -0.0385811   0.1971628
24 months   ki1135781-COHORTS         GUATEMALA   [160-170)            NA                -0.0017637   -0.1139693   0.0991400
