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

**Intervention Variable:** vagbrth

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        A         n      nA    nAY0   nAY1
----------  -------------------------  -----------------------------  ---  ------  ------  ------  -----
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0        90      11      10      1
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1        90      79      77      2
Birth       ki1000108-IRC              INDIA                          0       388      68      67      1
Birth       ki1000108-IRC              INDIA                          1       388     320     305     15
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0        19       1       1      0
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1        19      18      18      0
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0     13716    1162    1133     29
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1     13716   12554   12150    404
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          0       362      25      23      2
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          1       362     337     306     31
3 months    ki1000108-IRC              INDIA                          0       407      69      62      7
3 months    ki1000108-IRC              INDIA                          1       407     338     309     29
3 months    ki1017093b-PROVIDE         BANGLADESH                     0       645     150     148      2
3 months    ki1017093b-PROVIDE         BANGLADESH                     1       645     495     487      8
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     0       471     193     186      7
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     1       471     278     267     11
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0      2265     201     200      1
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1      2265    2064    2040     24
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       0      9123     797     761     36
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       1      9123    8326    7842    484
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0       369      25      23      2
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1       369     344     304     40
6 months    ki1000108-IRC              INDIA                          0       407      69      64      5
6 months    ki1000108-IRC              INDIA                          1       407     338     314     24
6 months    ki1017093b-PROVIDE         BANGLADESH                     0       583     134     132      2
6 months    ki1017093b-PROVIDE         BANGLADESH                     1       583     449     437     12
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0       457     187     183      4
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1       457     270     258     12
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0      2005     189     189      0
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1      2005    1816    1797     19
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0      8228     707     682     25
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1      8228    7521    7200    321
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          0       366      24      21      3
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          1       366     342     298     44
9 months    ki1000108-IRC              INDIA                          0       407      69      64      5
9 months    ki1000108-IRC              INDIA                          1       407     338     309     29
9 months    ki1017093b-PROVIDE         BANGLADESH                     0       605     139     135      4
9 months    ki1017093b-PROVIDE         BANGLADESH                     1       605     466     445     21
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     0       450     185     179      6
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     1       450     265     253     12
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0      1770     168     165      3
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1      1770    1602    1570     32
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       0      7609     640     610     30
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       1      7609    6969    6633    336
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          0       368      25      20      5
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          1       368     343     265     78
12 months   ki1000108-IRC              INDIA                          0       406      70      63      7
12 months   ki1000108-IRC              INDIA                          1       406     336     309     27
12 months   ki1017093b-PROVIDE         BANGLADESH                     0       600     138     136      2
12 months   ki1017093b-PROVIDE         BANGLADESH                     1       600     462     428     34
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     0       450     185     175     10
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     1       450     265     249     16
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0      1424     137     134      3
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1      1424    1287    1257     30
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       0      6691     550     516     34
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       1      6691    6141    5737    404
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          0       369      25      17      8
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          1       369     344     243    101
18 months   ki1000108-IRC              INDIA                          0       405      69      65      4
18 months   ki1000108-IRC              INDIA                          1       405     336     306     30
18 months   ki1017093b-PROVIDE         BANGLADESH                     0       552     129     122      7
18 months   ki1017093b-PROVIDE         BANGLADESH                     1       552     423     373     50
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     0       380     150     142      8
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     1       380     230     210     20
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0       967      89      84      5
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1       967     878     843     35
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       0      1692     141     116     25
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       1      1692    1551    1282    269
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0       372      25      16      9
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1       372     347     233    114
24 months   ki1000108-IRC              INDIA                          0       409      69      66      3
24 months   ki1000108-IRC              INDIA                          1       409     340     302     38
24 months   ki1017093b-PROVIDE         BANGLADESH                     0       577     137     130      7
24 months   ki1017093b-PROVIDE         BANGLADESH                     1       577     440     398     42
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0       260      99      92      7
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1       260     161     147     14
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0         6       2       2      0
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1         6       4       3      1
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0       450      29      22      7
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1       450     421     299    122


The following strata were considered:

* agecat: 12 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 12 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 18 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 18 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 18 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 18 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 18 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 3 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 3 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 9 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 9 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 9 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 9 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 9 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 9 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 9 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/4293ce3b-0349-4912-94ac-481efcfe75eb/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->


```
## Warning: Removed 22 rows containing missing values (geom_errorbar).
```

![](/tmp/4293ce3b-0349-4912-94ac-481efcfe75eb/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/4293ce3b-0349-4912-94ac-481efcfe75eb/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/4293ce3b-0349-4912-94ac-481efcfe75eb/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0249570   0.0159875   0.0339265
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0321810   0.0290937   0.0352682
3 months    ki1000108-IRC              INDIA                          0                    NA                0.1014493   0.0301223   0.1727762
3 months    ki1000108-IRC              INDIA                          1                    NA                0.0857988   0.0559047   0.1156929
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0362694   0.0098649   0.0626740
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.0395683   0.0166283   0.0625084
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0451694   0.0307506   0.0595881
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0581312   0.0531048   0.0631575
6 months    ki1000108-IRC              INDIA                          0                    NA                0.0724638   0.0112169   0.1337106
6 months    ki1000108-IRC              INDIA                          1                    NA                0.0710059   0.0435916   0.0984202
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0353607   0.0217460   0.0489754
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0426805   0.0381119   0.0472491
9 months    ki1000108-IRC              INDIA                          0                    NA                0.0724638   0.0112169   0.1337106
9 months    ki1000108-IRC              INDIA                          1                    NA                0.0857988   0.0559047   0.1156929
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0324324   0.0068774   0.0579874
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.0452830   0.0202212   0.0703449
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0468750   0.0304981   0.0632519
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0482135   0.0431838   0.0532433
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.2000000   0.0429894   0.3570106
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.2274052   0.1829863   0.2718242
12 months   ki1000108-IRC              INDIA                          0                    NA                0.1000000   0.0296351   0.1703649
12 months   ki1000108-IRC              INDIA                          1                    NA                0.0803571   0.0512543   0.1094600
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0540541   0.0214334   0.0866747
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.0603774   0.0316681   0.0890866
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0618182   0.0416902   0.0819462
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.0657873   0.0595864   0.0719882
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.3200000   0.1368964   0.5031036
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.2936047   0.2454139   0.3417954
18 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0542636   0.0151357   0.0933914
18 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1182033   0.0874090   0.1489976
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0533333   0.0173275   0.0893391
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.0869565   0.0504935   0.1234196
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0561798   0.0083154   0.1040442
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0398633   0.0269160   0.0528106
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.1773050   0.1142460   0.2403639
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1734365   0.1545879   0.1922851
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.3600000   0.1715900   0.5484100
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.3285303   0.2790458   0.3780147
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0510949   0.0141916   0.0879981
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.0954545   0.0679748   0.1229342
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.0707071   0.0201159   0.1212983
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.0869565   0.0433483   0.1305648
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.2413793   0.0854619   0.3972967
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.2897862   0.2464028   0.3331696


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0315690   0.0315353   0.0316026
3 months    ki1000108-IRC              INDIA                          NA                   NA                0.0884521   0.0878809   0.0890233
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0382166   0.0380699   0.0383632
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0569988   0.0569237   0.0570739
6 months    ki1000108-IRC              INDIA                          NA                   NA                0.0712531   0.0711999   0.0713063
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0420515   0.0420072   0.0420959
9 months    ki1000108-IRC              INDIA                          NA                   NA                0.0835381   0.0830514   0.0840248
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0400000   0.0394152   0.0405848
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0481009   0.0480926   0.0481093
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.2255435   0.2248379   0.2262490
12 months   ki1000108-IRC              INDIA                          NA                   NA                0.0837438   0.0830212   0.0844665
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0577778   0.0574900   0.0580656
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0654611   0.0654349   0.0654872
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.2953930   0.2947152   0.2960707
18 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1032609   0.1010016   0.1055201
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0736842   0.0720296   0.0753388
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0413650   0.0410676   0.0416625
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1737589   0.1737079   0.1738098
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.3306452   0.3298434   0.3314469
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0849220   0.0833805   0.0864635
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0807692   0.0798083   0.0817302
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2866667   0.2855673   0.2877661


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.2894585   0.8889094   1.870498
3 months    ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.000000
3 months    ki1000108-IRC              INDIA                          1                    0                 0.8457312   0.3858792   1.853588
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.0909558   0.4301585   2.766851
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.2869592   0.9245609   1.791406
6 months    ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1000108-IRC              INDIA                          1                    0                 0.9798817   0.3869206   2.481564
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.2070044   0.8093821   1.799965
9 months    ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.000000
9 months    ki1000108-IRC              INDIA                          1                    0                 1.1840237   0.4745983   2.953892
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.3962264   0.5330604   3.657087
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.0285550   0.7142930   1.481081
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.000000
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 1.1370262   0.5063274   2.553345
12 months   ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.000000
12 months   ki1000108-IRC              INDIA                          1                    0                 0.8035714   0.3641925   1.773038
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.1169811   0.5180557   2.408326
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.0642068   0.7582524   1.493614
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.000000
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 0.9175145   0.5059279   1.663939
18 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
18 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 2.1783181   1.0119336   4.689112
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.6304348   0.7364680   3.609549
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.7095672   0.2851058   1.765961
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 0.9781818   0.6743904   1.418821
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 0.9125841   0.5293636   1.573228
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.8681818   0.8585216   4.065248
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.2298137   0.5133025   2.946492
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.2005429   0.6186031   2.329932


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0066120   -0.0023576   0.0155816
3 months    ki1000108-IRC              INDIA                          0                    NA                -0.0129972   -0.0843264   0.0583320
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0019471   -0.0244578   0.0283521
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0118294   -0.0025896   0.0262484
6 months    ki1000108-IRC              INDIA                          0                    NA                -0.0012107   -0.0624576   0.0600362
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0066909   -0.0069239   0.0203056
9 months    ki1000108-IRC              INDIA                          0                    NA                 0.0110743   -0.0501745   0.0723231
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0075676   -0.0179941   0.0331292
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0012259   -0.0151510   0.0176029
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0255435   -0.1314687   0.1825557
12 months   ki1000108-IRC              INDIA                          0                    NA                -0.0162562   -0.0866247   0.0541124
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0037237   -0.0288982   0.0363456
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0036429   -0.0164851   0.0237709
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0246070   -0.2077119   0.1584978
18 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0489973    0.0098043   0.0881903
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0203509   -0.0156929   0.0563947
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0148147   -0.0626800   0.0330506
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0035461   -0.0666051   0.0595129
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0293548   -0.2177665   0.1590568
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0338271   -0.0031083   0.0707625
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0100622   -0.0405382   0.0606625
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0452874   -0.1106339   0.2012086


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.2094462   -0.1324450   0.4481186
3 months    ki1000108-IRC              INDIA                          0                    NA                -0.1469404   -1.3168471   0.4322144
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0509499   -0.9654637   0.5417386
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.2075379   -0.0904686   0.4241043
6 months    ki1000108-IRC              INDIA                          0                    NA                -0.0169915   -1.3680229   0.5632341
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.1591108   -0.2358133   0.4278305
9 months    ki1000108-IRC              INDIA                          0                    NA                 0.1325661   -1.0198241   0.6274717
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.1891892   -0.7831129   0.6313110
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0254867   -0.3820353   0.3128423
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.1132530   -0.9442253   0.5955612
12 months   ki1000108-IRC              INDIA                          0                    NA                -0.1941176   -1.4135750   0.4092096
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0644491   -0.7106662   0.4883540
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0556496   -0.3077948   0.3180906
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0833028   -0.9197937   0.3887130
18 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.4745002   -0.0811195   0.7445703
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.2761905   -0.4222715   0.6316454
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.3581461   -2.1839954   0.4206773
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0204082   -0.4562365   0.2849837
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0887805   -0.8375347   0.3548732
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.3983316   -0.2391536   0.7078612
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.1245791   -0.7906033   0.5720092
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.1579791   -0.6064139   0.5586448
