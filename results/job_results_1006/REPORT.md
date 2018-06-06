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

**Outcome Variable:** s03rec24

## Predictor Variables

**Intervention Variable:** birthlen

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                    country                        A             n    nA   nAY0   nAY1
-------------------------  -----------------------------  --------  -----  ----  -----  -----
ki0047075b-MAL-ED          BANGLADESH                     >=0         233    39     39      0
ki0047075b-MAL-ED          BANGLADESH                     <-3         233     6      5      1
ki0047075b-MAL-ED          BANGLADESH                     [-3--2)     233    26     20      6
ki0047075b-MAL-ED          BANGLADESH                     [-2--1)     233    74     70      4
ki0047075b-MAL-ED          BANGLADESH                     [-1-0)      233    88     88      0
ki0047075b-MAL-ED          BRAZIL                         >=0         179    44     44      0
ki0047075b-MAL-ED          BRAZIL                         <-3         179     5      0      5
ki0047075b-MAL-ED          BRAZIL                         [-3--2)     179     8      1      7
ki0047075b-MAL-ED          BRAZIL                         [-2--1)     179    45     37      8
ki0047075b-MAL-ED          BRAZIL                         [-1-0)      179    77     77      0
ki0047075b-MAL-ED          INDIA                          >=0         199    34     34      0
ki0047075b-MAL-ED          INDIA                          <-3         199     6      6      0
ki0047075b-MAL-ED          INDIA                          [-3--2)     199    22     13      9
ki0047075b-MAL-ED          INDIA                          [-2--1)     199    65     60      5
ki0047075b-MAL-ED          INDIA                          [-1-0)      199    72     70      2
ki0047075b-MAL-ED          NEPAL                          >=0         171    45     45      0
ki0047075b-MAL-ED          NEPAL                          <-3         171     5      5      0
ki0047075b-MAL-ED          NEPAL                          [-3--2)     171    12      6      6
ki0047075b-MAL-ED          NEPAL                          [-2--1)     171    45     42      3
ki0047075b-MAL-ED          NEPAL                          [-1-0)      171    64     64      0
ki0047075b-MAL-ED          PERU                           >=0         261    42     42      0
ki0047075b-MAL-ED          PERU                           <-3         261     4      4      0
ki0047075b-MAL-ED          PERU                           [-3--2)     261    21     15      6
ki0047075b-MAL-ED          PERU                           [-2--1)     261    86     72     14
ki0047075b-MAL-ED          PERU                           [-1-0)      261   108    102      6
ki0047075b-MAL-ED          SOUTH AFRICA                   >=0         249    59     58      1
ki0047075b-MAL-ED          SOUTH AFRICA                   <-3         249     1      1      0
ki0047075b-MAL-ED          SOUTH AFRICA                   [-3--2)     249    19      9     10
ki0047075b-MAL-ED          SOUTH AFRICA                   [-2--1)     249    70     57     13
ki0047075b-MAL-ED          SOUTH AFRICA                   [-1-0)      249   100     97      3
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=0         119    24     24      0
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <-3         119     5      5      0
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-3--2)     119    10     10      0
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-2--1)     119    32     32      0
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-1-0)      119    48     48      0
ki1000108-CMC-V-BCS-2002   INDIA                          >=0          92    14     13      1
ki1000108-CMC-V-BCS-2002   INDIA                          <-3          92     3      2      1
ki1000108-CMC-V-BCS-2002   INDIA                          [-3--2)      92    13     11      2
ki1000108-CMC-V-BCS-2002   INDIA                          [-2--1)      92    22     21      1
ki1000108-CMC-V-BCS-2002   INDIA                          [-1-0)       92    40     38      2
ki1000108-IRC              INDIA                          >=0         388   143    137      6
ki1000108-IRC              INDIA                          <-3         388    16     10      6
ki1000108-IRC              INDIA                          [-3--2)     388    27     18      9
ki1000108-IRC              INDIA                          [-2--1)     388    65     57      8
ki1000108-IRC              INDIA                          [-1-0)      388   137    123     14
ki1000109-EE               PAKISTAN                       >=0           1     1      1      0
ki1000109-EE               PAKISTAN                       <-3           1     0      0      0
ki1000109-EE               PAKISTAN                       [-3--2)       1     0      0      0
ki1000109-EE               PAKISTAN                       [-2--1)       1     0      0      0
ki1000109-EE               PAKISTAN                       [-1-0)        1     0      0      0
ki1000109-ResPak           PAKISTAN                       >=0           3     1      1      0
ki1000109-ResPak           PAKISTAN                       <-3           3     0      0      0
ki1000109-ResPak           PAKISTAN                       [-3--2)       3     0      0      0
ki1000109-ResPak           PAKISTAN                       [-2--1)       3     0      0      0
ki1000109-ResPak           PAKISTAN                       [-1-0)        3     2      2      0
ki1017093b-PROVIDE         BANGLADESH                     >=0         686   219    218      1
ki1017093b-PROVIDE         BANGLADESH                     <-3         686     1      1      0
ki1017093b-PROVIDE         BANGLADESH                     [-3--2)     686    21     15      6
ki1017093b-PROVIDE         BANGLADESH                     [-2--1)     686   168    152     16
ki1017093b-PROVIDE         BANGLADESH                     [-1-0)      686   277    271      6
ki1101329-Keneba           GAMBIA                         >=0        1479   815    777     38
ki1101329-Keneba           GAMBIA                         <-3        1479    25     14     11
ki1101329-Keneba           GAMBIA                         [-3--2)    1479    42     32     10
ki1101329-Keneba           GAMBIA                         [-2--1)    1479   142    131     11
ki1101329-Keneba           GAMBIA                         [-1-0)     1479   455    432     23
ki1114097-CMIN             BANGLADESH                     >=0           7     2      2      0
ki1114097-CMIN             BANGLADESH                     <-3           7     0      0      0
ki1114097-CMIN             BANGLADESH                     [-3--2)       7     0      0      0
ki1114097-CMIN             BANGLADESH                     [-2--1)       7     4      4      0
ki1114097-CMIN             BANGLADESH                     [-1-0)        7     1      1      0
ki1114097-CMIN             PERU                           >=0          10    10     10      0
ki1114097-CMIN             PERU                           <-3          10     0      0      0
ki1114097-CMIN             PERU                           [-3--2)      10     0      0      0
ki1114097-CMIN             PERU                           [-2--1)      10     0      0      0
ki1114097-CMIN             PERU                           [-1-0)       10     0      0      0
ki1114097-CONTENT          PERU                           >=0           2     1      1      0
ki1114097-CONTENT          PERU                           <-3           2     0      0      0
ki1114097-CONTENT          PERU                           [-3--2)       2     0      0      0
ki1114097-CONTENT          PERU                           [-2--1)       2     1      1      0
ki1114097-CONTENT          PERU                           [-1-0)        2     0      0      0


The following strata were considered:

* studyid: ki0047075b-MAL-ED, country: BANGLADESH
* studyid: ki0047075b-MAL-ED, country: BRAZIL
* studyid: ki0047075b-MAL-ED, country: INDIA
* studyid: ki0047075b-MAL-ED, country: NEPAL
* studyid: ki0047075b-MAL-ED, country: PERU
* studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* studyid: ki1000108-IRC, country: INDIA
* studyid: ki1000109-EE, country: PAKISTAN
* studyid: ki1000109-ResPak, country: PAKISTAN
* studyid: ki1017093b-PROVIDE, country: BANGLADESH
* studyid: ki1101329-Keneba, country: GAMBIA
* studyid: ki1114097-CMIN, country: BANGLADESH
* studyid: ki1114097-CMIN, country: PERU
* studyid: ki1114097-CONTENT, country: PERU

### Dropped Strata

Some strata were dropped due to rare outcomes:

* studyid: ki0047075b-MAL-ED, country: BANGLADESH
* studyid: ki0047075b-MAL-ED, country: BRAZIL
* studyid: ki0047075b-MAL-ED, country: INDIA
* studyid: ki0047075b-MAL-ED, country: NEPAL
* studyid: ki0047075b-MAL-ED, country: PERU
* studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* studyid: ki1000109-EE, country: PAKISTAN
* studyid: ki1000109-ResPak, country: PAKISTAN
* studyid: ki1017093b-PROVIDE, country: BANGLADESH
* studyid: ki1114097-CMIN, country: BANGLADESH
* studyid: ki1114097-CMIN, country: PERU
* studyid: ki1114097-CONTENT, country: PERU

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/4dafa2e0-0aac-4a47-9ced-ab031e30cb78/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->


```
## Warning: Removed 2 rows containing missing values (geom_errorbar).
```

![](/tmp/4dafa2e0-0aac-4a47-9ced-ab031e30cb78/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/4dafa2e0-0aac-4a47-9ced-ab031e30cb78/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/4dafa2e0-0aac-4a47-9ced-ab031e30cb78/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid            country   intervention_level   baseline_level     estimate    ci_lower    ci_upper
-----------------  --------  -------------------  ---------------  ----------  ----------  ----------
ki1000108-IRC      INDIA     >=0                  NA                0.0419580   0.0090547   0.0748614
ki1000108-IRC      INDIA     <-3                  NA                0.3750000   0.1374778   0.6125222
ki1000108-IRC      INDIA     [-3--2)              NA                0.3333333   0.1552922   0.5113745
ki1000108-IRC      INDIA     [-2--1)              NA                0.1230769   0.0431081   0.2030458
ki1000108-IRC      INDIA     [-1-0)               NA                0.1021898   0.0514038   0.1529758
ki1101329-Keneba   GAMBIA    >=0                  NA                0.0466258   0.0321460   0.0611055
ki1101329-Keneba   GAMBIA    <-3                  NA                0.4400000   0.2453541   0.6346459
ki1101329-Keneba   GAMBIA    [-3--2)              NA                0.2380952   0.1092418   0.3669487
ki1101329-Keneba   GAMBIA    [-2--1)              NA                0.0774648   0.0334808   0.1214488
ki1101329-Keneba   GAMBIA    [-1-0)               NA                0.0505495   0.0304130   0.0706859


### Parameter: E(Y)


studyid            country   intervention_level   baseline_level     estimate    ci_lower    ci_upper
-----------------  --------  -------------------  ---------------  ----------  ----------  ----------
ki1000108-IRC      INDIA     NA                   NA                0.1108247   0.1018455   0.1198040
ki1101329-Keneba   GAMBIA    NA                   NA                0.0628803   0.0598692   0.0658915


### Parameter: RR


studyid            country   intervention_level   baseline_level    estimate    ci_lower    ci_upper
-----------------  --------  -------------------  ---------------  ---------  ----------  ----------
ki1000108-IRC      INDIA     >=0                  >=0               1.000000   1.0000000    1.000000
ki1000108-IRC      INDIA     <-3                  >=0               8.937499   3.2615837   24.490831
ki1000108-IRC      INDIA     [-3--2)              >=0               7.944444   3.0760812   20.517725
ki1000108-IRC      INDIA     [-2--1)              >=0               2.933333   1.0594403    8.121688
ki1000108-IRC      INDIA     [-1-0)               >=0               2.435523   0.9624705    6.163069
ki1101329-Keneba   GAMBIA    >=0                  >=0               1.000000   1.0000000    1.000000
ki1101329-Keneba   GAMBIA    <-3                  >=0               9.436842   5.4965541   16.201785
ki1101329-Keneba   GAMBIA    [-3--2)              >=0               5.106516   2.7361712    9.530291
ki1101329-Keneba   GAMBIA    [-2--1)              >=0               1.661416   0.8697913    3.173523
ki1101329-Keneba   GAMBIA    [-1-0)               >=0               1.084153   0.6542260    1.796607


### Parameter: PAR


studyid            country   intervention_level   baseline_level     estimate    ci_lower    ci_upper
-----------------  --------  -------------------  ---------------  ----------  ----------  ----------
ki1000108-IRC      INDIA     >=0                  NA                0.0688667   0.0347601   0.1029733
ki1101329-Keneba   GAMBIA    >=0                  NA                0.0162546   0.0014650   0.0310441


### Parameter: PAF


studyid            country   intervention_level   baseline_level     estimate     ci_lower    ci_upper
-----------------  --------  -------------------  ---------------  ----------  -----------  ----------
ki1000108-IRC      INDIA     >=0                  NA                0.6214018    0.1671558   0.8278951
ki1101329-Keneba   GAMBIA    >=0                  NA                0.2584999   -0.0152581   0.4584407
