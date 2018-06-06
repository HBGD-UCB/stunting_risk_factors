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

**Outcome Variable:** stunted

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
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          0        90      11       9      2
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1        90      79      65     14
Birth       ki1000108-IRC              INDIA                          0       388      68      58     10
Birth       ki1000108-IRC              INDIA                          1       388     320     285     35
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     0        19       1       1      0
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1        19      18      15      3
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0     13716    1162    1073     89
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1     13716   12554   11233   1321
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          0       362      25      20      5
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          1       362     337     252     85
3 months    ki1000108-IRC              INDIA                          0       407      69      51     18
3 months    ki1000108-IRC              INDIA                          1       407     338     265     73
3 months    ki1017093b-PROVIDE         BANGLADESH                     0       645     150     136     14
3 months    ki1017093b-PROVIDE         BANGLADESH                     1       645     495     431     64
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     0       471     193     159     34
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     1       471     278     215     63
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0      2265     201     188     13
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1      2265    2064    1940    124
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       0      9123     797     663    134
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       1      9123    8326    6834   1492
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0       369      25      17      8
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1       369     344     241    103
6 months    ki1000108-IRC              INDIA                          0       407      69      50     19
6 months    ki1000108-IRC              INDIA                          1       407     338     257     81
6 months    ki1017093b-PROVIDE         BANGLADESH                     0       583     134     112     22
6 months    ki1017093b-PROVIDE         BANGLADESH                     1       583     449     377     72
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0       457     187     151     36
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1       457     270     198     72
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0      2005     189     172     17
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1      2005    1816    1636    180
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0      8228     707     597    110
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1      8228    7521    6259   1262
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          0       366      24      12     12
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          1       366     342     219    123
9 months    ki1000108-IRC              INDIA                          0       407      69      53     16
9 months    ki1000108-IRC              INDIA                          1       407     338     243     95
9 months    ki1017093b-PROVIDE         BANGLADESH                     0       605     139     118     21
9 months    ki1017093b-PROVIDE         BANGLADESH                     1       605     466     358    108
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     0       450     185     151     34
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     1       450     265     194     71
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0      1770     168     152     16
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1      1770    1602    1354    248
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       0      7609     640     517    123
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       1      7609    6969    5589   1380
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          0       368      25      11     14
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          1       368     343     174    169
12 months   ki1000108-IRC              INDIA                          0       406      70      51     19
12 months   ki1000108-IRC              INDIA                          1       406     336     236    100
12 months   ki1017093b-PROVIDE         BANGLADESH                     0       600     138     112     26
12 months   ki1017093b-PROVIDE         BANGLADESH                     1       600     462     331    131
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     0       450     185     147     38
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     1       450     265     186     79
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0      1424     137     123     14
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1      1424    1287    1064    223
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       0      6691     550     412    138
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       1      6691    6141    4646   1495
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          0       369      25       7     18
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          1       369     344     108    236
18 months   ki1000108-IRC              INDIA                          0       405      69      44     25
18 months   ki1000108-IRC              INDIA                          1       405     336     217    119
18 months   ki1017093b-PROVIDE         BANGLADESH                     0       552     129      90     39
18 months   ki1017093b-PROVIDE         BANGLADESH                     1       552     423     256    167
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     0       380     150     109     41
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     1       380     230     140     90
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0       967      89      74     15
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1       967     878     661    217
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       0      1692     141      80     61
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       1      1692    1551     806    745
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0       372      25       8     17
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1       372     347      98    249
24 months   ki1000108-IRC              INDIA                          0       409      69      42     27
24 months   ki1000108-IRC              INDIA                          1       409     340     197    143
24 months   ki1017093b-PROVIDE         BANGLADESH                     0       577     137      99     38
24 months   ki1017093b-PROVIDE         BANGLADESH                     1       577     440     288    152
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0       260      99      75     24
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1       260     161     104     57
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0         6       2       2      0
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1         6       4       3      1
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0       450      29      11     18
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1       450     421     145    276


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
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/cef8dfdb-0164-4b46-a9d3-604f1591072f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->


```
## Warning: Removed 37 rows containing missing values (geom_errorbar).
```

![](/tmp/cef8dfdb-0164-4b46-a9d3-604f1591072f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/cef8dfdb-0164-4b46-a9d3-604f1591072f/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/cef8dfdb-0164-4b46-a9d3-604f1591072f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA                          0                    NA                0.1470588   0.0627721   0.2313455
Birth       ki1000108-IRC              INDIA                          1                    NA                0.1093750   0.0751345   0.1436155
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.0765921   0.0613006   0.0918836
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1052254   0.0998577   0.1105931
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.2000000   0.0429859   0.3570141
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.2522255   0.2057939   0.2986571
3 months    ki1000108-IRC              INDIA                          0                    NA                0.2608696   0.1571334   0.3646057
3 months    ki1000108-IRC              INDIA                          1                    NA                0.2159763   0.1720534   0.2598993
3 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.0933333   0.0467445   0.1399221
3 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1292929   0.0997124   0.1588735
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.1761658   0.1223622   0.2299694
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.2266187   0.1773544   0.2758830
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0646766   0.0306671   0.0986861
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0600775   0.0498236   0.0703315
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.1681305   0.1421652   0.1940958
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1791977   0.1709594   0.1874360
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.3200000   0.1368964   0.5031036
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.2994186   0.2509538   0.3478835
6 months    ki1000108-IRC              INDIA                          0                    NA                0.2753623   0.1698337   0.3808910
6 months    ki1000108-IRC              INDIA                          1                    NA                0.2396450   0.1940816   0.2852084
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.1641791   0.1014045   0.2269537
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1603563   0.1263869   0.1943258
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.1925134   0.1359414   0.2490853
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.2666667   0.2138614   0.3194719
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0899471   0.0491478   0.1307464
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0991189   0.0853719   0.1128660
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.1555870   0.1288675   0.1823065
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1677968   0.1593510   0.1762427
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.5000000   0.2996882   0.7003118
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.3596491   0.3087187   0.4105796
9 months    ki1000108-IRC              INDIA                          0                    NA                0.2318841   0.1321814   0.3315867
9 months    ki1000108-IRC              INDIA                          1                    NA                0.2810651   0.2330838   0.3290464
9 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.1510791   0.0914943   0.2106640
9 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.2317597   0.1934170   0.2701023
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.1837838   0.1279108   0.2396567
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.2679245   0.2145428   0.3213062
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0952381   0.0508375   0.1396387
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1548065   0.1370886   0.1725244
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.1921875   0.1616591   0.2227159
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.1980198   0.1886630   0.2073766
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.5600000   0.3651550   0.7548450
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.4927114   0.4397309   0.5456918
12 months   ki1000108-IRC              INDIA                          0                    NA                0.2714286   0.1671252   0.3757320
12 months   ki1000108-IRC              INDIA                          1                    NA                0.2976190   0.2486715   0.3465666
12 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.1884058   0.1231097   0.2537019
12 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.2835498   0.2424162   0.3246834
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.2054054   0.1471248   0.2636860
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.2981132   0.2429776   0.3532488
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1021898   0.0514514   0.1529281
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1732712   0.1525861   0.1939562
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.2509091   0.2146744   0.2871438
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.2434457   0.2327112   0.2541802
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.7200000   0.5437567   0.8962433
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.6860465   0.6369368   0.7351562
18 months   ki1000108-IRC              INDIA                          0                    NA                0.3623188   0.2487635   0.4758742
18 months   ki1000108-IRC              INDIA                          1                    NA                0.3541667   0.3029656   0.4053678
18 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.3023256   0.2230004   0.3816507
18 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.3947991   0.3481751   0.4414231
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.2733333   0.2019185   0.3447482
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.3913043   0.3281485   0.4544602
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1685393   0.0907268   0.2463518
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2471526   0.2186055   0.2756997
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.4326241   0.3508233   0.5144249
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.4803353   0.4554636   0.5052069
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.6800000   0.4968984   0.8631016
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.7175793   0.6701495   0.7650090
24 months   ki1000108-IRC              INDIA                          0                    NA                0.3913043   0.2760088   0.5065999
24 months   ki1000108-IRC              INDIA                          1                    NA                0.4205882   0.3680516   0.4731249
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.2773723   0.2023391   0.3524054
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.3454545   0.3009849   0.3899242
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.2424242   0.1578441   0.3270044
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.3540373   0.2800256   0.4280489
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.6206897   0.4438960   0.7974834
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.6555819   0.6101411   0.7010228


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA                          NA                   NA                0.1159794   0.1145520   0.1174068
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1027997   0.1026662   0.1029331
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.2486188   0.2472528   0.2499848
3 months    ki1000108-IRC              INDIA                          NA                   NA                0.2235872   0.2219487   0.2252258
3 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1209302   0.1197569   0.1221035
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2059448   0.2037016   0.2081880
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0604857   0.0604318   0.0605395
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1782308   0.1781667   0.1782950
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.3008130   0.3002845   0.3013415
6 months    ki1000108-IRC              INDIA                          NA                   NA                0.2457002   0.2443966   0.2470039
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1612350   0.1611043   0.1613657
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2363239   0.2329774   0.2396703
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0982544   0.0981370   0.0983717
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1667477   0.1666737   0.1668216
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.3688525   0.3652883   0.3724166
9 months    ki1000108-IRC              INDIA                          NA                   NA                0.2727273   0.2709322   0.2745223
9 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2132231   0.2105164   0.2159299
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2333333   0.2295040   0.2371627
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1491525   0.1483389   0.1499661
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1975292   0.1974929   0.1975656
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.4972826   0.4955503   0.4990149
12 months   ki1000108-IRC              INDIA                          NA                   NA                0.2931034   0.2921399   0.2940670
12 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2616667   0.2584602   0.2648731
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2600000   0.2557807   0.2642193
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1664326   0.1653436   0.1675216
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2440592   0.2440101   0.2441083
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.6883469   0.6874751   0.6892187
18 months   ki1000108-IRC              INDIA                          NA                   NA                0.3555556   0.3552567   0.3558544
18 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3731884   0.3699209   0.3764559
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.3447368   0.3389315   0.3505422
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2399173   0.2384842   0.2413504
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.4763593   0.4757308   0.4769878
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.7150538   0.7140963   0.7160112
24 months   ki1000108-IRC              INDIA                          NA                   NA                0.4156479   0.4145838   0.4167120
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3292894   0.3269236   0.3316552
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.3115385   0.3049381   0.3181389
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.6533333   0.6525409   0.6541258


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.000000
Birth       ki1000108-IRC              INDIA                          1                    0                 0.7437500   0.3870802   1.429068
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.3738421   1.1180085   1.688218
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.000000
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 1.2611276   0.5630659   2.824612
3 months    ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.000000
3 months    ki1000108-IRC              INDIA                          1                    0                 0.8279093   0.5296742   1.294067
3 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
3 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.3852813   0.7999581   2.398881
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.2863944   0.8842302   1.871470
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.9288909   0.5344005   1.614591
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.0658251   0.9072077   1.252175
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 0.9356831   0.5162674   1.695832
6 months    ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1000108-IRC              INDIA                          1                    0                 0.8702896   0.5673744   1.334928
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 0.9767159   0.6308578   1.512186
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.3851852   0.9718846   1.974245
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.1019693   0.6857631   1.770781
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.0784760   0.9017580   1.289826
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.000000
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 0.7192982   0.4702952   1.100139
9 months    ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.000000
9 months    ki1000108-IRC              INDIA                          1                    0                 1.2120932   0.7631745   1.925077
9 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
9 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.5340282   1.0002078   2.352754
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.4578246   1.0135504   2.096840
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.6254681   1.0057630   2.627007
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.0303469   0.8729906   1.216067
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.000000
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 0.8798417   0.6112877   1.266378
12 months   ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.000000
12 months   ki1000108-IRC              INDIA                          1                    0                 1.0964912   0.7218953   1.665467
12 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
12 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.5049950   1.0336352   2.191305
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.4513406   1.0343748   2.036389
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.6955822   1.0175168   2.825505
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 0.9702546   0.8342751   1.128398
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.000000
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 0.9528424   0.7383478   1.229649
18 months   ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.000000
18 months   ki1000108-IRC              INDIA                          1                    0                 0.9775000   0.6921827   1.380425
18 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
18 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.3058738   0.9793535   1.741257
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.4316013   1.0530478   1.946239
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.4664389   0.9111211   2.360216
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.1102832   0.9126277   1.350747
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 1.0552636   0.7997388   1.392431
24 months   ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1000108-IRC              INDIA                          1                    0                 1.0748366   0.7804693   1.480230
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.2454545   0.9230419   1.680484
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.4604037   0.9723728   2.193376
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.0562154   0.7878445   1.416004


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000108-IRC              INDIA                          0                    NA                -0.0310794   -0.1153782   0.0532194
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0262076    0.0109155   0.0414996
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0486188   -0.1084013   0.2056389
3 months    ki1000108-IRC              INDIA                          0                    NA                -0.0372823   -0.1410314   0.0664667
3 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0275969   -0.0190067   0.0742005
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0297790   -0.0240714   0.0836294
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0041910   -0.0382005   0.0298186
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0101004   -0.0158650   0.0360657
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0191870   -0.2022913   0.1639173
6 months    ki1000108-IRC              INDIA                          0                    NA                -0.0296621   -0.1351988   0.0758746
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0029441   -0.0657189   0.0598306
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0438105   -0.0128603   0.1004813
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0083073   -0.0324922   0.0491067
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0111607   -0.0155589   0.0378803
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.1311475   -0.3314911   0.0691960
9 months    ki1000108-IRC              INDIA                          0                    NA                 0.0408432   -0.0588756   0.1405620
9 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0621440    0.0024977   0.1217903
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0495495   -0.0064545   0.1055536
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0539144    0.0095064   0.0983225
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0053417   -0.0251867   0.0358702
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0627174   -0.2575701   0.1321353
12 months   ki1000108-IRC              INDIA                          0                    NA                 0.0216749   -0.0826330   0.1259827
12 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0732609    0.0078861   0.1386357
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0545946   -0.0038385   0.1130277
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0642428    0.0134928   0.1149928
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0068499   -0.0430846   0.0293848
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0316531   -0.2078986   0.1445923
18 months   ki1000108-IRC              INDIA                          0                    NA                -0.0067633   -0.1203190   0.1067925
18 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0708628   -0.0085296   0.1502552
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0714035   -0.0002469   0.1430539
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0713779   -0.0064477   0.1492036
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0437352   -0.0380680   0.1255385
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0350538   -0.1480503   0.2181578
24 months   ki1000108-IRC              INDIA                          0                    NA                 0.0243436   -0.0909569   0.1396440
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0519172   -0.0231533   0.1269876
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0691142   -0.0157231   0.1539515
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0326437   -0.1441518   0.2094392


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000108-IRC              INDIA                          0                    NA                -0.2679739   -1.2494865   0.2852779
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.2549383    0.0902957   0.3897831
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.1955556   -0.7638282   0.6331100
3 months    ki1000108-IRC              INDIA                          0                    NA                -0.1667463   -0.7366215   0.2161234
3 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.2282051   -0.2715335   0.5315362
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.1445970   -0.1611680   0.3698463
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0692886   -0.8091078   0.3679879
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0566701   -0.1008655   0.1916621
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0637838   -0.8851992   0.3997261
6 months    ki1000108-IRC              INDIA                          0                    NA                -0.1207246   -0.6441900   0.2360836
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                -0.0182598   -0.4924967   0.3052896
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.1853832   -0.0932591   0.3930072
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0845486   -0.4408820   0.4183762
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0669317   -0.1078902   0.2141671
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.3555556   -1.0237486   0.0920162
9 months    ki1000108-IRC              INDIA                          0                    NA                 0.1497585   -0.3070636   0.4469201
9 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.2914506   -0.0513380   0.5224730
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.2123552   -0.0679587   0.4190934
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.3614718   -0.0178052   0.5994143
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0270428   -0.1404604   0.1699442
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.1261202   -0.5947760   0.2048120
12 months   ki1000108-IRC              INDIA                          0                    NA                 0.0739496   -0.3599706   0.3694207
12 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.2799778   -0.0184837   0.4909767
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.2099792   -0.0496977   0.4054166
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.3859989   -0.0088343   0.6263040
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                -0.0280666   -0.1877892   0.1101780
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0459843   -0.3360853   0.1811279
18 months   ki1000108-IRC              INDIA                          0                    NA                -0.0190217   -0.3941111   0.2551488
18 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.1898848   -0.0533234   0.3769373
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.2071247   -0.0301730   0.3897614
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.2975107   -0.1147174   0.5572947
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0918114   -0.0972225   0.2482778
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                 0.0490226   -0.2448380   0.2735134
24 months   ki1000108-IRC              INDIA                          0                    NA                 0.0585678   -0.2640267   0.2988323
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.1576642   -0.1041029   0.3573701
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.2218481   -0.1037375   0.4513910
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0499648   -0.2631146   0.2854434
