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

**Intervention Variable:** vagbrth

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid


The following strata were considered:

* agecat: 12 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 12 months, studyid: ki1000108-IRC
* agecat: 12 months, studyid: ki1017093b-PROVIDE
* agecat: 12 months, studyid: ki1017093c-NIH-Crypto
* agecat: 12 months, studyid: ki1066203-TanzaniaChild2
* agecat: 12 months, studyid: ki1126311-ZVITAMBO
* agecat: 18 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 18 months, studyid: ki1000108-IRC
* agecat: 18 months, studyid: ki1017093b-PROVIDE
* agecat: 18 months, studyid: ki1017093c-NIH-Crypto
* agecat: 18 months, studyid: ki1066203-TanzaniaChild2
* agecat: 18 months, studyid: ki1126311-ZVITAMBO
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 24 months, studyid: ki1000108-IRC
* agecat: 24 months, studyid: ki1017093b-PROVIDE
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2
* agecat: 24 months, studyid: ki1126311-ZVITAMBO
* agecat: 3 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 3 months, studyid: ki1000108-IRC
* agecat: 3 months, studyid: ki1017093b-PROVIDE
* agecat: 3 months, studyid: ki1017093c-NIH-Crypto
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2
* agecat: 3 months, studyid: ki1126311-ZVITAMBO
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 6 months, studyid: ki1000108-IRC
* agecat: 6 months, studyid: ki1017093b-PROVIDE
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2
* agecat: 6 months, studyid: ki1126311-ZVITAMBO
* agecat: 9 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 9 months, studyid: ki1000108-IRC
* agecat: 9 months, studyid: ki1017093b-PROVIDE
* agecat: 9 months, studyid: ki1017093c-NIH-Crypto
* agecat: 9 months, studyid: ki1066203-TanzaniaChild2
* agecat: 9 months, studyid: ki1126311-ZVITAMBO
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002
* agecat: Birth, studyid: ki1000108-IRC
* agecat: Birth, studyid: ki1017093c-NIH-Crypto
* agecat: Birth, studyid: ki1126311-ZVITAMBO

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002
* agecat: Birth, studyid: ki1000108-IRC
* agecat: Birth, studyid: ki1017093c-NIH-Crypto
* agecat: Birth, studyid: ki1126311-ZVITAMBO
* agecat: 3 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 3 months, studyid: ki1017093b-PROVIDE
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 6 months, studyid: ki1017093b-PROVIDE
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2
* agecat: 6 months, studyid: ki1126311-ZVITAMBO
* agecat: 9 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 9 months, studyid: ki1017093b-PROVIDE
* agecat: 9 months, studyid: ki1066203-TanzaniaChild2
* agecat: 12 months, studyid: ki1017093b-PROVIDE
* agecat: 12 months, studyid: ki1066203-TanzaniaChild2
* agecat: 18 months, studyid: ki1000108-IRC
* agecat: 18 months, studyid: ki1017093b-PROVIDE
* agecat: 18 months, studyid: ki1066203-TanzaniaChild2
* agecat: 24 months, studyid: ki1000108-IRC
* agecat: 24 months, studyid: ki1017093b-PROVIDE
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2
* agecat: 24 months, studyid: ki1126311-ZVITAMBO

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness




# Results Detail

## Results Plots
![](/tmp/94122b43-c693-4fa1-a84e-91ffb1619ba7/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/94122b43-c693-4fa1-a84e-91ffb1619ba7/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/94122b43-c693-4fa1-a84e-91ffb1619ba7/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/94122b43-c693-4fa1-a84e-91ffb1619ba7/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Data Summary

agecat      studyid                    A        n     nA   nAY0   nAY1
----------  -------------------------  ---  -----  -----  -----  -----
Birth       ki1000108-CMC-V-BCS-2002   0       90     11     10      1
Birth       ki1000108-CMC-V-BCS-2002   1       90     79     77      2
Birth       ki1000108-IRC              0      388     68     67      1
Birth       ki1000108-IRC              1      388    320    305     15
Birth       ki1017093b-PROVIDE         0        0      0      0      0
Birth       ki1017093b-PROVIDE         1        0      0      0      0
Birth       ki1017093c-NIH-Crypto      0       19      1      1      0
Birth       ki1017093c-NIH-Crypto      1       19     18     18      0
Birth       ki1066203-TanzaniaChild2   0        0      0      0      0
Birth       ki1066203-TanzaniaChild2   1        0      0      0      0
Birth       ki1126311-ZVITAMBO         0     3418    288    284      4
Birth       ki1126311-ZVITAMBO         1     3418   3130   3025    105
3 months    ki1000108-CMC-V-BCS-2002   0      362     25     23      2
3 months    ki1000108-CMC-V-BCS-2002   1      362    337    306     31
3 months    ki1000108-IRC              0      407     69     62      7
3 months    ki1000108-IRC              1      407    338    309     29
3 months    ki1017093b-PROVIDE         0      168     38     36      2
3 months    ki1017093b-PROVIDE         1      168    130    127      3
3 months    ki1017093c-NIH-Crypto      0      471    193    186      7
3 months    ki1017093c-NIH-Crypto      1      471    278    267     11
3 months    ki1066203-TanzaniaChild2   0      573     43     43      0
3 months    ki1066203-TanzaniaChild2   1      573    530    520     10
3 months    ki1126311-ZVITAMBO         0     2251    201    196      5
3 months    ki1126311-ZVITAMBO         1     2251   2050   1942    108
6 months    ki1000108-CMC-V-BCS-2002   0      369     25     23      2
6 months    ki1000108-CMC-V-BCS-2002   1      369    344    304     40
6 months    ki1000108-IRC              0      407     69     64      5
6 months    ki1000108-IRC              1      407    338    314     24
6 months    ki1017093b-PROVIDE         0      153     32     30      2
6 months    ki1017093b-PROVIDE         1      153    121    117      4
6 months    ki1017093c-NIH-Crypto      0      457    187    183      4
6 months    ki1017093c-NIH-Crypto      1      457    270    258     12
6 months    ki1066203-TanzaniaChild2   0      502     42     42      0
6 months    ki1066203-TanzaniaChild2   1      502    460    453      7
6 months    ki1126311-ZVITAMBO         0     2037    169    165      4
6 months    ki1126311-ZVITAMBO         1     2037   1868   1800     68
9 months    ki1000108-CMC-V-BCS-2002   0      366     24     21      3
9 months    ki1000108-CMC-V-BCS-2002   1      366    342    298     44
9 months    ki1000108-IRC              0      407     69     64      5
9 months    ki1000108-IRC              1      407    338    309     29
9 months    ki1017093b-PROVIDE         0      158     35     33      2
9 months    ki1017093b-PROVIDE         1      158    123    116      7
9 months    ki1017093c-NIH-Crypto      0      450    185    179      6
9 months    ki1017093c-NIH-Crypto      1      450    265    253     12
9 months    ki1066203-TanzaniaChild2   0      433     36     35      1
9 months    ki1066203-TanzaniaChild2   1      433    397    391      6
9 months    ki1126311-ZVITAMBO         0     1950    163    156      7
9 months    ki1126311-ZVITAMBO         1     1950   1787   1707     80
12 months   ki1000108-CMC-V-BCS-2002   0      368     25     20      5
12 months   ki1000108-CMC-V-BCS-2002   1      368    343    265     78
12 months   ki1000108-IRC              0      406     70     63      7
12 months   ki1000108-IRC              1      406    336    309     27
12 months   ki1017093b-PROVIDE         0      153     35     33      2
12 months   ki1017093b-PROVIDE         1      153    118    107     11
12 months   ki1017093c-NIH-Crypto      0      450    185    175     10
12 months   ki1017093c-NIH-Crypto      1      450    265    249     16
12 months   ki1066203-TanzaniaChild2   0      355     27     27      0
12 months   ki1066203-TanzaniaChild2   1      355    328    321      7
12 months   ki1126311-ZVITAMBO         0     1688    142    135      7
12 months   ki1126311-ZVITAMBO         1     1688   1546   1448     98
18 months   ki1000108-CMC-V-BCS-2002   0      369     25     17      8
18 months   ki1000108-CMC-V-BCS-2002   1      369    344    243    101
18 months   ki1000108-IRC              0      405     69     65      4
18 months   ki1000108-IRC              1      405    336    306     30
18 months   ki1017093b-PROVIDE         0      141     34     32      2
18 months   ki1017093b-PROVIDE         1      141    107     89     18
18 months   ki1017093c-NIH-Crypto      0      380    150    142      8
18 months   ki1017093c-NIH-Crypto      1      380    230    210     20
18 months   ki1066203-TanzaniaChild2   0      256     19     17      2
18 months   ki1066203-TanzaniaChild2   1      256    237    224     13
18 months   ki1126311-ZVITAMBO         0      417     35     25     10
18 months   ki1126311-ZVITAMBO         1      417    382    325     57
24 months   ki1000108-CMC-V-BCS-2002   0      372     25     16      9
24 months   ki1000108-CMC-V-BCS-2002   1      372    347    233    114
24 months   ki1000108-IRC              0      409     69     66      3
24 months   ki1000108-IRC              1      409    340    302     38
24 months   ki1017093b-PROVIDE         0      149     35     33      2
24 months   ki1017093b-PROVIDE         1      149    114     98     16
24 months   ki1017093c-NIH-Crypto      0      260     99     92      7
24 months   ki1017093c-NIH-Crypto      1      260    161    147     14
24 months   ki1066203-TanzaniaChild2   0        2      2      2      0
24 months   ki1066203-TanzaniaChild2   1        2      0      0      0
24 months   ki1126311-ZVITAMBO         0      113     13     11      2
24 months   ki1126311-ZVITAMBO         1      113    100     81     19

## Results Table

### Parameter: TSM


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki1000108-IRC              0                    NA                0.1014493   0.0301223   0.1727762
3 months    ki1000108-IRC              1                    NA                0.0857988   0.0559047   0.1156929
3 months    ki1017093c-NIH-Crypto      0                    NA                0.0362694   0.0098649   0.0626740
3 months    ki1017093c-NIH-Crypto      1                    NA                0.0395683   0.0166283   0.0625084
3 months    ki1126311-ZVITAMBO         0                    NA                0.0248756   0.0033397   0.0464115
3 months    ki1126311-ZVITAMBO         1                    NA                0.0526829   0.0430102   0.0623557
6 months    ki1000108-IRC              0                    NA                0.0724638   0.0112169   0.1337106
6 months    ki1000108-IRC              1                    NA                0.0710059   0.0435916   0.0984202
9 months    ki1000108-IRC              0                    NA                0.0724638   0.0112169   0.1337106
9 months    ki1000108-IRC              1                    NA                0.0857988   0.0559047   0.1156929
9 months    ki1017093c-NIH-Crypto      0                    NA                0.0324324   0.0068774   0.0579874
9 months    ki1017093c-NIH-Crypto      1                    NA                0.0452830   0.0202212   0.0703449
9 months    ki1126311-ZVITAMBO         0                    NA                0.0429448   0.0118141   0.0740755
9 months    ki1126311-ZVITAMBO         1                    NA                0.0447678   0.0351774   0.0543581
12 months   ki1000108-CMC-V-BCS-2002   0                    NA                0.2000000   0.0429894   0.3570106
12 months   ki1000108-CMC-V-BCS-2002   1                    NA                0.2274052   0.1829863   0.2718242
12 months   ki1000108-IRC              0                    NA                0.1000000   0.0296351   0.1703649
12 months   ki1000108-IRC              1                    NA                0.0803571   0.0512543   0.1094600
12 months   ki1017093c-NIH-Crypto      0                    NA                0.0540541   0.0214334   0.0866747
12 months   ki1017093c-NIH-Crypto      1                    NA                0.0603774   0.0316681   0.0890866
12 months   ki1126311-ZVITAMBO         0                    NA                0.0492958   0.0136785   0.0849130
12 months   ki1126311-ZVITAMBO         1                    NA                0.0633894   0.0512399   0.0755389
18 months   ki1000108-CMC-V-BCS-2002   0                    NA                0.3200000   0.1368964   0.5031036
18 months   ki1000108-CMC-V-BCS-2002   1                    NA                0.2936047   0.2454139   0.3417954
18 months   ki1017093c-NIH-Crypto      0                    NA                0.0533333   0.0173275   0.0893391
18 months   ki1017093c-NIH-Crypto      1                    NA                0.0869565   0.0504935   0.1234196
18 months   ki1126311-ZVITAMBO         0                    NA                0.2857143   0.1358710   0.4355576
18 months   ki1126311-ZVITAMBO         1                    NA                0.1492147   0.1134418   0.1849875
24 months   ki1000108-CMC-V-BCS-2002   0                    NA                0.3600000   0.1715900   0.5484100
24 months   ki1000108-CMC-V-BCS-2002   1                    NA                0.3285303   0.2790458   0.3780147
24 months   ki1017093c-NIH-Crypto      0                    NA                0.0707071   0.0201159   0.1212983
24 months   ki1017093c-NIH-Crypto      1                    NA                0.0869565   0.0433483   0.1305648


### Parameter: E(Y)


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki1000108-IRC              NA                   NA                0.0884521   0.0878809   0.0890233
3 months    ki1017093c-NIH-Crypto      NA                   NA                0.0382166   0.0380699   0.0383632
3 months    ki1126311-ZVITAMBO         NA                   NA                0.0501999   0.0498723   0.0505276
6 months    ki1000108-IRC              NA                   NA                0.0712531   0.0711999   0.0713063
9 months    ki1000108-IRC              NA                   NA                0.0835381   0.0830514   0.0840248
9 months    ki1017093c-NIH-Crypto      NA                   NA                0.0400000   0.0394152   0.0405848
9 months    ki1126311-ZVITAMBO         NA                   NA                0.0446154   0.0445930   0.0446378
12 months   ki1000108-CMC-V-BCS-2002   NA                   NA                0.2255435   0.2248379   0.2262490
12 months   ki1000108-IRC              NA                   NA                0.0837438   0.0830212   0.0844665
12 months   ki1017093c-NIH-Crypto      NA                   NA                0.0577778   0.0574900   0.0580656
12 months   ki1126311-ZVITAMBO         NA                   NA                0.0622038   0.0620171   0.0623905
18 months   ki1000108-CMC-V-BCS-2002   NA                   NA                0.2953930   0.2947152   0.2960707
18 months   ki1017093c-NIH-Crypto      NA                   NA                0.0736842   0.0720296   0.0753388
18 months   ki1126311-ZVITAMBO         NA                   NA                0.1606715   0.1570343   0.1643086
24 months   ki1000108-CMC-V-BCS-2002   NA                   NA                0.3306452   0.3298434   0.3314469
24 months   ki1017093c-NIH-Crypto      NA                   NA                0.0807692   0.0798083   0.0817302


### Parameter: RR


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki1000108-IRC              1                    0                 0.8457312   0.3858792   1.8535883
3 months    ki1017093c-NIH-Crypto      1                    0                 1.0909558   0.4301585   2.7668513
3 months    ki1126311-ZVITAMBO         1                    0                 2.1178537   0.8740691   5.1315210
6 months    ki1000108-IRC              1                    0                 0.9798817   0.3869206   2.4815635
9 months    ki1000108-IRC              1                    0                 1.1840237   0.4745983   2.9538917
9 months    ki1017093c-NIH-Crypto      1                    0                 1.3962264   0.5330604   3.6570870
9 months    ki1126311-ZVITAMBO         1                    0                 1.0424494   0.4895250   2.2199087
12 months   ki1000108-CMC-V-BCS-2002   1                    0                 1.1370262   0.5063274   2.5533453
12 months   ki1000108-IRC              1                    0                 0.8035714   0.3641925   1.7730376
12 months   ki1017093c-NIH-Crypto      1                    0                 1.1169811   0.5180557   2.4083255
12 months   ki1126311-ZVITAMBO         1                    0                 1.2858991   0.6089297   2.7154801
18 months   ki1000108-CMC-V-BCS-2002   1                    0                 0.9175145   0.5059279   1.6639386
18 months   ki1017093c-NIH-Crypto      1                    0                 1.6304348   0.7364680   3.6095494
18 months   ki1126311-ZVITAMBO         1                    0                 0.5222513   0.2933889   0.9296414
24 months   ki1000108-CMC-V-BCS-2002   1                    0                 0.9125841   0.5293636   1.5732280
24 months   ki1017093c-NIH-Crypto      1                    0                 1.2298137   0.5133025   2.9464916


### Parameter: PAR


agecat      studyid                    intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  -----------  -----------  ----------
3 months    ki1000108-IRC              0                    NA                -0.0129972   -0.0843264   0.0583320
3 months    ki1017093c-NIH-Crypto      0                    NA                 0.0019471   -0.0244578   0.0283521
3 months    ki1126311-ZVITAMBO         0                    NA                 0.0253243    0.0037859   0.0468627
6 months    ki1000108-IRC              0                    NA                -0.0012107   -0.0624576   0.0600362
9 months    ki1000108-IRC              0                    NA                 0.0110743   -0.0501745   0.0723231
9 months    ki1017093c-NIH-Crypto      0                    NA                 0.0075676   -0.0179941   0.0331292
9 months    ki1126311-ZVITAMBO         0                    NA                 0.0016706   -0.0294601   0.0328013
12 months   ki1000108-CMC-V-BCS-2002   0                    NA                 0.0255435   -0.1314687   0.1825557
12 months   ki1000108-IRC              0                    NA                -0.0162562   -0.0866247   0.0541124
12 months   ki1017093c-NIH-Crypto      0                    NA                 0.0037237   -0.0288982   0.0363456
12 months   ki1126311-ZVITAMBO         0                    NA                 0.0129080   -0.0227097   0.0485257
18 months   ki1000108-CMC-V-BCS-2002   0                    NA                -0.0246070   -0.2077119   0.1584978
18 months   ki1017093c-NIH-Crypto      0                    NA                 0.0203509   -0.0156929   0.0563947
18 months   ki1126311-ZVITAMBO         0                    NA                -0.1250428   -0.2749303   0.0248446
24 months   ki1000108-CMC-V-BCS-2002   0                    NA                -0.0293548   -0.2177665   0.1590568
24 months   ki1017093c-NIH-Crypto      0                    NA                 0.0100622   -0.0405382   0.0606625


### Parameter: PAF


agecat      studyid                    intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -------------------  ---------------  -----------  -----------  -----------
3 months    ki1000108-IRC              0                    NA                -0.1469404   -1.3168471    0.4322144
3 months    ki1017093c-NIH-Crypto      0                    NA                 0.0509499   -0.9654637    0.5417386
3 months    ki1126311-ZVITAMBO         0                    NA                 0.5044688   -0.1777947    0.7915162
6 months    ki1000108-IRC              0                    NA                -0.0169915   -1.3680229    0.5632341
9 months    ki1000108-IRC              0                    NA                 0.1325661   -1.0198241    0.6274717
9 months    ki1017093c-NIH-Crypto      0                    NA                 0.1891892   -0.7831129    0.6313110
9 months    ki1126311-ZVITAMBO         0                    NA                 0.0374444   -0.9872228    0.5337648
12 months   ki1000108-CMC-V-BCS-2002   0                    NA                 0.1132530   -0.9442253    0.5955612
12 months   ki1000108-IRC              0                    NA                -0.1941176   -1.4135750    0.4092096
12 months   ki1017093c-NIH-Crypto      0                    NA                 0.0644491   -0.7106662    0.4883540
12 months   ki1126311-ZVITAMBO         0                    NA                 0.2075117   -0.6322340    0.6152282
18 months   ki1000108-CMC-V-BCS-2002   0                    NA                -0.0833028   -0.9197937    0.3887130
18 months   ki1017093c-NIH-Crypto      0                    NA                 0.2761905   -0.4222715    0.6316454
18 months   ki1126311-ZVITAMBO         0                    NA                -0.7782516   -2.0058806   -0.0519974
24 months   ki1000108-CMC-V-BCS-2002   0                    NA                -0.0887805   -0.8375347    0.3548732
24 months   ki1017093c-NIH-Crypto      0                    NA                 0.1245791   -0.7906033    0.5720092


