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

**Intervention Variable:** nchldlt5

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        A         n     nA   nAY0   nAY1
----------  -------------------------  -----------------------------  ---  ------  -----  -----  -----
Birth       ki1000108-IRC              INDIA                          1       388     84     72     12
Birth       ki1000108-IRC              INDIA                          2       388    114    100     14
Birth       ki1000108-IRC              INDIA                          3+      388    190    171     19
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1        27     18     14      4
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     2        27      8      7      1
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     3+       27      1      1      0
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1      9732   6009   3791   2218
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2      9732   3484   2444   1040
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3+     9732    239    176     63
3 months    ki1000108-IRC              INDIA                          1       407     89     67     22
3 months    ki1000108-IRC              INDIA                          2       407    117     92     25
3 months    ki1000108-IRC              INDIA                          3+      407    201    157     44
3 months    ki1017093b-PROVIDE         BANGLADESH                     1       645    474    413     61
3 months    ki1017093b-PROVIDE         BANGLADESH                     2       645    161    144     17
3 months    ki1017093b-PROVIDE         BANGLADESH                     3+      645     10     10      0
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     1       728    518    413    105
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     2       728    204    153     51
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     3+      728      6      6      0
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1      2283   1560   1469     91
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2      2283    650    610     40
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+     2283     73     69      4
3 months    kiGH5241-JiVitA-3          BANGLADESH                     1     12292   7835   5563   2272
3 months    kiGH5241-JiVitA-3          BANGLADESH                     2     12292   4182   3121   1061
3 months    kiGH5241-JiVitA-3          BANGLADESH                     3+    12292    275    205     70
6 months    ki1000108-IRC              INDIA                          1       407     89     67     22
6 months    ki1000108-IRC              INDIA                          2       407    119     90     29
6 months    ki1000108-IRC              INDIA                          3+      407    199    150     49
6 months    ki1017093b-PROVIDE         BANGLADESH                     1       583    426    357     69
6 months    ki1017093b-PROVIDE         BANGLADESH                     2       583    148    124     24
6 months    ki1017093b-PROVIDE         BANGLADESH                     3+      583      9      8      1
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1       715    507    400    107
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2       715    203    160     43
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     3+      715      5      5      0
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1      2020   1391   1267    124
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2      2020    567    503     64
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+     2020     62     55      7
6 months    ki1148112-LCNI-5           MALAWI                         1       811    390    263    127
6 months    ki1148112-LCNI-5           MALAWI                         2       811    358    216    142
6 months    ki1148112-LCNI-5           MALAWI                         3+      811     63     37     26
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1      8312   5374   3940   1434
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2      8312   2752   2058    694
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+     8312    186    139     47
9 months    ki1000108-IRC              INDIA                          1       407     89     66     23
9 months    ki1000108-IRC              INDIA                          2       407    119     86     33
9 months    ki1000108-IRC              INDIA                          3+      407    199    144     55
9 months    ki1017093b-PROVIDE         BANGLADESH                     1       605    440    354     86
9 months    ki1017093b-PROVIDE         BANGLADESH                     2       605    155    114     41
9 months    ki1017093b-PROVIDE         BANGLADESH                     3+      605     10      8      2
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     1       706    503    389    114
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     2       706    198    148     50
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     3+      706      5      5      0
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1      1780   1247   1069    178
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2      1780    479    403     76
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+     1780     54     45      9
9 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   1       746    249    199     50
9 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   2       746    288    229     59
9 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   3+      746    209    163     46
9 months    ki1148112-LCNI-5           MALAWI                         1       655    310    210    100
9 months    ki1148112-LCNI-5           MALAWI                         2       655    296    198     98
9 months    ki1148112-LCNI-5           MALAWI                         3+      655     49     32     17
12 months   ki1000108-IRC              INDIA                          1       406     88     64     24
12 months   ki1000108-IRC              INDIA                          2       406    118     85     33
12 months   ki1000108-IRC              INDIA                          3+      406    200    138     62
12 months   ki1017093b-PROVIDE         BANGLADESH                     1       600    437    328    109
12 months   ki1017093b-PROVIDE         BANGLADESH                     2       600    154    107     47
12 months   ki1017093b-PROVIDE         BANGLADESH                     3+      600      9      8      1
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     1       706    500    384    116
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     2       706    202    147     55
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     3+      706      4      4      0
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1      1438   1012    845    167
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2      1438    383    320     63
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+     1438     43     35      8
12 months   ki1148112-LCNI-5           MALAWI                         1       617    297    193    104
12 months   ki1148112-LCNI-5           MALAWI                         2       617    276    156    120
12 months   ki1148112-LCNI-5           MALAWI                         3+      617     44     26     18
12 months   kiGH5241-JiVitA-3          BANGLADESH                     1      7201   4656   2868   1788
12 months   kiGH5241-JiVitA-3          BANGLADESH                     2      7201   2386   1395    991
12 months   kiGH5241-JiVitA-3          BANGLADESH                     3+     7201    159     85     74
18 months   ki1000108-IRC              INDIA                          1       405     88     63     25
18 months   ki1000108-IRC              INDIA                          2       405    118     77     41
18 months   ki1000108-IRC              INDIA                          3+      405    199    121     78
18 months   ki1017093b-PROVIDE         BANGLADESH                     1       552    401    262    139
18 months   ki1017093b-PROVIDE         BANGLADESH                     2       552    144     78     66
18 months   ki1017093b-PROVIDE         BANGLADESH                     3+      552      7      6      1
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     1       634    447    318    129
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     2       634    183    123     60
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     3+      634      4      2      2
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1       977    690    534    156
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2       977    260    188     72
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+      977     27     19      8
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1       597    195    122     73
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2       597    233    144     89
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   3+      597    169     98     71
18 months   ki1148112-LCNI-5           MALAWI                         1       714    345    195    150
18 months   ki1148112-LCNI-5           MALAWI                         2       714    313    160    153
18 months   ki1148112-LCNI-5           MALAWI                         3+      714     56     32     24
24 months   ki1000108-IRC              INDIA                          1       409     89     58     31
24 months   ki1000108-IRC              INDIA                          2       409    119     73     46
24 months   ki1000108-IRC              INDIA                          3+      409    201    108     93
24 months   ki1017093b-PROVIDE         BANGLADESH                     1       577    423    298    125
24 months   ki1017093b-PROVIDE         BANGLADESH                     2       577    146     83     63
24 months   ki1017093b-PROVIDE         BANGLADESH                     3+      577      8      6      2
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1       514    357    276     81
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2       514    153    103     50
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3+      514      4      3      1
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1         6      5      4      1
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2         6      1      1      0
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+        6      0      0      0
24 months   ki1148112-LCNI-5           MALAWI                         1       571    283    163    120
24 months   ki1148112-LCNI-5           MALAWI                         2       571    244    137    107
24 months   ki1148112-LCNI-5           MALAWI                         3+      571     44     21     23
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1      4287   2707   1465   1242
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2      4287   1472    711    761
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+     4287    108     47     61


The following strata were considered:

* agecat: 12 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 12 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 18 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 18 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 18 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 18 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 18 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 3 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 9 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 9 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 9 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 9 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 9 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 9 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 9 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 18 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 18 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots

```
## Warning: Removed 21 rows containing missing values (geom_errorbar).
```

![](/tmp/fd0368ab-916e-4c95-a4cd-43a6b3c74bf3/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->


```
## Warning: Removed 37 rows containing missing values (geom_errorbar).
```

![](/tmp/fd0368ab-916e-4c95-a4cd-43a6b3c74bf3/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


```
## Warning: Removed 7 rows containing missing values (geom_errorbar).
```

![](/tmp/fd0368ab-916e-4c95-a4cd-43a6b3c74bf3/REPORT_files/figure-html/plot_paf-1.png)<!-- -->


```
## Warning: Removed 7 rows containing missing values (geom_errorbar).
```

![](/tmp/fd0368ab-916e-4c95-a4cd-43a6b3c74bf3/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA                          1                    NA                0.1428571   0.0679288   0.2177855
Birth       ki1000108-IRC              INDIA                          2                    NA                0.1228070   0.0624795   0.1831345
Birth       ki1000108-IRC              INDIA                          3+                   NA                0.1000000   0.0572877   0.1427123
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.3691130          NA          NA
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.2985075          NA          NA
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.2635983          NA          NA
3 months    ki1000108-IRC              INDIA                          1                    NA                0.2471910   0.1574593   0.3369227
3 months    ki1000108-IRC              INDIA                          2                    NA                0.2136752   0.1393104   0.2880400
3 months    ki1000108-IRC              INDIA                          3+                   NA                0.2189055   0.1616701   0.2761408
3 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.2899809          NA          NA
3 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.2537064          NA          NA
3 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.2545455          NA          NA
6 months    ki1000108-IRC              INDIA                          1                    NA                0.2471910   0.1574593   0.3369227
6 months    ki1000108-IRC              INDIA                          2                    NA                0.2436975   0.1664682   0.3209268
6 months    ki1000108-IRC              INDIA                          3+                   NA                0.2462312   0.1863009   0.3061614
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.0891445   0.0741661   0.1041229
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.1128748   0.0868219   0.1389276
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.1129032   0.0341083   0.1916982
6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                0.3256410   0.2791040   0.3721781
6 months    ki1148112-LCNI-5           MALAWI                         2                    NA                0.3966480   0.3459417   0.4473544
6 months    ki1148112-LCNI-5           MALAWI                         3+                   NA                0.4126984   0.2910538   0.5343430
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.2668403          NA          NA
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.2521802          NA          NA
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.2526882          NA          NA
9 months    ki1000108-IRC              INDIA                          1                    NA                0.2584270   0.1673658   0.3494881
9 months    ki1000108-IRC              INDIA                          2                    NA                0.2773109   0.1967790   0.3578428
9 months    ki1000108-IRC              INDIA                          3+                   NA                0.2763819   0.2141712   0.3385926
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1427426   0.1233217   0.1621635
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.1586639   0.1259354   0.1913924
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.1666667   0.0672391   0.2660943
9 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.2008032          NA          NA
9 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   2                    NA                0.2048611          NA          NA
9 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   3+                   NA                0.2200957          NA          NA
9 months    ki1148112-LCNI-5           MALAWI                         1                    NA                0.3225806   0.2705035   0.3746578
9 months    ki1148112-LCNI-5           MALAWI                         2                    NA                0.3310811   0.2774288   0.3847333
9 months    ki1148112-LCNI-5           MALAWI                         3+                   NA                0.3469388   0.2135605   0.4803171
12 months   ki1000108-IRC              INDIA                          1                    NA                0.2727273   0.1795618   0.3658928
12 months   ki1000108-IRC              INDIA                          2                    NA                0.2796610   0.1985785   0.3607435
12 months   ki1000108-IRC              INDIA                          3+                   NA                0.3100000   0.2458238   0.3741762
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1650198   0.1421419   0.1878976
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.1644909   0.1273505   0.2016312
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.1860465   0.0696941   0.3023990
12 months   ki1148112-LCNI-5           MALAWI                         1                    NA                0.3501684   0.2958732   0.4044635
12 months   ki1148112-LCNI-5           MALAWI                         2                    NA                0.4347826   0.3762511   0.4933141
12 months   ki1148112-LCNI-5           MALAWI                         3+                   NA                0.4090909   0.2636977   0.5544842
12 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.3840206          NA          NA
12 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.4153395          NA          NA
12 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.4654088          NA          NA
18 months   ki1000108-IRC              INDIA                          1                    NA                0.2840909   0.1897498   0.3784321
18 months   ki1000108-IRC              INDIA                          2                    NA                0.3474576   0.2614377   0.4334776
18 months   ki1000108-IRC              INDIA                          3+                   NA                0.3919598   0.3240480   0.4598716
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2260870   0.1948600   0.2573139
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.2769231   0.2225034   0.3313427
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.2962963   0.1239720   0.4686206
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.3743590          NA          NA
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                    NA                0.3819742          NA          NA
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   3+                   NA                0.4201183          NA          NA
18 months   ki1148112-LCNI-5           MALAWI                         1                    NA                0.4347826   0.3824362   0.4871290
18 months   ki1148112-LCNI-5           MALAWI                         2                    NA                0.4888179   0.4334011   0.5442347
18 months   ki1148112-LCNI-5           MALAWI                         3+                   NA                0.4285714   0.2988681   0.5582747
24 months   ki1000108-IRC              INDIA                          1                    NA                0.3483146   0.2492110   0.4474182
24 months   ki1000108-IRC              INDIA                          2                    NA                0.3865546   0.2989555   0.4741537
24 months   ki1000108-IRC              INDIA                          3+                   NA                0.4626866   0.3936723   0.5317008
24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                0.4240283   0.3664003   0.4816563
24 months   ki1148112-LCNI-5           MALAWI                         2                    NA                0.4385246   0.3762091   0.5008401
24 months   ki1148112-LCNI-5           MALAWI                         3+                   NA                0.5227273   0.3750127   0.6704418
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.4588105          NA          NA
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.5169837          NA          NA
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.5648148          NA          NA


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC              INDIA                          NA                   NA                0.1159794   0.0840777   0.1478811
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.3412454          NA          NA
3 months    ki1000108-IRC              INDIA                          NA                   NA                0.2235872   0.1830592   0.2641152
3 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2768467          NA          NA
6 months    ki1000108-IRC              INDIA                          NA                   NA                0.2457002   0.2038248   0.2875757
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0965347   0.0836528   0.1094165
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                0.3637485   0.3306185   0.3968784
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2616699          NA          NA
9 months    ki1000108-IRC              INDIA                          NA                   NA                0.2727273   0.2294063   0.3160482
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1477528   0.1312632   0.1642424
9 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.2077748          NA          NA
9 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                0.3282443   0.2922558   0.3642328
12 months   ki1000108-IRC              INDIA                          NA                   NA                0.2931034   0.2487723   0.3374346
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1655077   0.1462927   0.1847226
12 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.3922204   0.3536641   0.4307768
12 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.3961950          NA          NA
18 months   ki1000108-IRC              INDIA                          NA                   NA                0.3555556   0.3088785   0.4022327
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2415558   0.2147027   0.2684088
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.3902848          NA          NA
18 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.4579832   0.4214124   0.4945540
24 months   ki1000108-IRC              INDIA                          NA                   NA                0.4156479   0.3678270   0.4634689
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.4378284   0.3971000   0.4785567
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4814556          NA          NA


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.000000
Birth       ki1000108-IRC              INDIA                          2                    1                 0.8596491   0.4190143   1.763655
Birth       ki1000108-IRC              INDIA                          3+                   1                 0.7000000   0.3559067   1.376766
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000          NA         NA
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.8087157          NA         NA
Birth       kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 0.7141399          NA         NA
3 months    ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.000000
3 months    ki1000108-IRC              INDIA                          2                    1                 0.8644134   0.5227814   1.429298
3 months    ki1000108-IRC              INDIA                          3+                   1                 0.8855721   0.5661557   1.385198
3 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000          NA         NA
3 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.8749073          NA         NA
3 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 0.8778009          NA         NA
6 months    ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1000108-IRC              INDIA                          2                    1                 0.9858671   0.6088959   1.596223
6 months    ki1000108-IRC              INDIA                          3+                   1                 0.9961169   0.6434315   1.542121
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.2662001   0.9517318   1.684574
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 1.2665193   0.6178144   2.596364
6 months    ki1148112-LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1148112-LCNI-5           MALAWI                         2                    1                 1.2180531   1.0055260   1.475500
6 months    ki1148112-LCNI-5           MALAWI                         3+                   1                 1.2673416   0.9133374   1.758556
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000          NA         NA
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.9450604          NA         NA
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 0.9469639          NA         NA
9 months    ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.000000
9 months    ki1000108-IRC              INDIA                          2                    1                 1.0730727   0.6797108   1.694081
9 months    ki1000108-IRC              INDIA                          3+                   1                 1.0694778   0.7040163   1.624654
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.000000
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.1115386   0.8681771   1.423117
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 1.1676030   0.6332242   2.152945
9 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    1                 1.0000000          NA         NA
9 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   2                    1                 1.0202083          NA         NA
9 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   3+                   1                 1.0960766          NA         NA
9 months    ki1148112-LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.000000
9 months    ki1148112-LCNI-5           MALAWI                         2                    1                 1.0263514   0.8164964   1.290143
9 months    ki1148112-LCNI-5           MALAWI                         3+                   1                 1.0755102   0.7088090   1.631924
12 months   ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.000000
12 months   ki1000108-IRC              INDIA                          2                    1                 1.0254237   0.6551104   1.605063
12 months   ki1000108-IRC              INDIA                          3+                   1                 1.1366667   0.7623570   1.694759
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.000000
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.9967949   0.7647812   1.299195
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 1.1274198   0.5941373   2.139363
12 months   ki1148112-LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.000000
12 months   ki1148112-LCNI-5           MALAWI                         2                    1                 1.2416388   1.0111525   1.524663
12 months   ki1148112-LCNI-5           MALAWI                         3+                   1                 1.1682692   0.7927613   1.721644
12 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000          NA         NA
12 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 1.0815552          NA         NA
12 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 1.2119370          NA         NA
18 months   ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.000000
18 months   ki1000108-IRC              INDIA                          2                    1                 1.2230508   0.8082695   1.850686
18 months   ki1000108-IRC              INDIA                          3+                   1                 1.3796985   0.9486664   2.006572
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.000000
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.2248521   0.9633117   1.557401
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 1.3105413   0.7208459   2.382643
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    1                 1.0000000          NA         NA
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                    1                 1.0203422          NA         NA
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   3+                   1                 1.1222339          NA         NA
18 months   ki1148112-LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.000000
18 months   ki1148112-LCNI-5           MALAWI                         2                    1                 1.1242811   0.9529163   1.326463
18 months   ki1148112-LCNI-5           MALAWI                         3+                   1                 0.9857143   0.7117001   1.365228
24 months   ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1000108-IRC              INDIA                          2                    1                 1.1097858   0.7713798   1.596651
24 months   ki1000108-IRC              INDIA                          3+                   1                 1.3283582   0.9633801   1.831609
24 months   ki1148112-LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1148112-LCNI-5           MALAWI                         2                    1                 1.0341872   0.8495785   1.258910
24 months   ki1148112-LCNI-5           MALAWI                         3+                   1                 1.2327652   0.9009483   1.686789
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000          NA         NA
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 1.1267914          NA         NA
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 1.2310416          NA         NA


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000108-IRC              INDIA                          1                    NA                -0.0268778   -0.0916934   0.0379379
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0278676           NA          NA
3 months    ki1000108-IRC              INDIA                          1                    NA                -0.0236038   -0.1021715   0.0549639
3 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0131341           NA          NA
6 months    ki1000108-IRC              INDIA                          1                    NA                -0.0014908   -0.0807619   0.0777804
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0073902   -0.0016270   0.0164074
6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0381074    0.0037508   0.0724640
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0051705           NA          NA
9 months    ki1000108-IRC              INDIA                          1                    NA                 0.0143003   -0.0665842   0.0951848
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0050102   -0.0059723   0.0159927
9 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0069716           NA          NA
9 months    ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0056636   -0.0322849   0.0436121
12 months   ki1000108-IRC              INDIA                          1                    NA                 0.0203762   -0.0625840   0.1033363
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0004879   -0.0119992   0.0129749
12 months   ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0420521    0.0020961   0.0820081
12 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0121744           NA          NA
18 months   ki1000108-IRC              INDIA                          1                    NA                 0.0714646   -0.0134544   0.1563837
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0154688   -0.0023878   0.0333255
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0159258           NA          NA
18 months   ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0232006   -0.0146085   0.0610097
24 months   ki1000108-IRC              INDIA                          1                    NA                 0.0673333   -0.0211764   0.1558430
24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0138001   -0.0272837   0.0548839
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0226451           NA          NA


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000108-IRC              INDIA                          1                    NA                -0.2317460   -0.9350634   0.2159439
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0816645           NA          NA
3 months    ki1000108-IRC              INDIA                          1                    NA                -0.1055686   -0.5189670   0.1953203
3 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0474419           NA          NA
6 months    ki1000108-IRC              INDIA                          1                    NA                -0.0060674   -0.3864361   0.2699471
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0765544   -0.0212450   0.1649881
6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                 0.1047631    0.0051365   0.1944131
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0197595           NA          NA
9 months    ki1000108-IRC              INDIA                          1                    NA                 0.0524345   -0.2957543   0.3070596
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0339095   -0.0432858   0.1053929
9 months    ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0335536           NA          NA
9 months    ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0172543   -0.1054304   0.1263231
12 months   ki1000108-IRC              INDIA                          1                    NA                 0.0695187   -0.2612281   0.3135299
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0029478   -0.0754265   0.0756105
12 months   ki1148112-LCNI-5           MALAWI                         1                    NA                 0.1072154   -0.0007885   0.2035637
12 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0307282           NA          NA
18 months   ki1000108-IRC              INDIA                          1                    NA                 0.2009943   -0.0771426   0.4073115
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0640383   -0.0127330   0.1349899
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0408055           NA          NA
18 months   ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0506582   -0.0356587   0.1297810
24 months   ki1000108-IRC              INDIA                          1                    NA                 0.1619960   -0.0806502   0.3501592
24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0315194   -0.0670380   0.1209735
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0470346           NA          NA
