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
3 months    ki1000108-IRC              INDIA                          1       410     89     56     33
3 months    ki1000108-IRC              INDIA                          2       410    119     85     34
3 months    ki1000108-IRC              INDIA                          3+      410    202    139     63
3 months    ki1017093b-PROVIDE         BANGLADESH                     1       700    512    411    101
3 months    ki1017093b-PROVIDE         BANGLADESH                     2       700    176    147     29
3 months    ki1017093b-PROVIDE         BANGLADESH                     3+      700     12     12      0
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     1       758    541    455     86
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     2       758    211    176     35
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     3+      758      6      6      0
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1      2382   1634   1455    179
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2      2382    669    610     59
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+     2382     79     74      5
3 months    kiGH5241-JiVitA-3          BANGLADESH                     1     13351   8518   4863   3655
3 months    kiGH5241-JiVitA-3          BANGLADESH                     2     13351   4520   2892   1628
3 months    kiGH5241-JiVitA-3          BANGLADESH                     3+    13351    313    211    102
6 months    ki1000108-IRC              INDIA                          1       408     89     49     40
6 months    ki1000108-IRC              INDIA                          2       408    119     69     50
6 months    ki1000108-IRC              INDIA                          3+      408    200    117     83
6 months    ki1017093b-PROVIDE         BANGLADESH                     1       640    469    345    124
6 months    ki1017093b-PROVIDE         BANGLADESH                     2       640    161    124     37
6 months    ki1017093b-PROVIDE         BANGLADESH                     3+      640     10      8      2
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1       736    523    371    152
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2       736    207    133     74
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     3+      736      6      6      0
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1      2225   1521   1209    312
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2      2225    634    513    121
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+     2225     70     58     12
6 months    ki1148112-LCNI-5           MALAWI                         1       267    122     81     41
6 months    ki1148112-LCNI-5           MALAWI                         2       267    122     78     44
6 months    ki1148112-LCNI-5           MALAWI                         3+      267     23     13     10
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1      9592   6099   3380   2719
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2      9592   3271   1992   1279
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+     9592    222    140     82
12 months   ki1000108-IRC              INDIA                          1       408     89     43     46
12 months   ki1000108-IRC              INDIA                          2       408    119     55     64
12 months   ki1000108-IRC              INDIA                          3+      408    200    103     97
12 months   ki1017093b-PROVIDE         BANGLADESH                     1       609    443    296    147
12 months   ki1017093b-PROVIDE         BANGLADESH                     2       609    156    104     52
12 months   ki1017093b-PROVIDE         BANGLADESH                     3+      609     10      7      3
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     1       729    519    332    187
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     2       729    205    115     90
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     3+      729      5      5      0
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1      1988   1369    943    426
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2      1988    555    371    184
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+     1988     64     43     21
12 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1       780    262    210     52
12 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2       780    300    239     61
12 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   3+      780    218    171     47
12 months   ki1148112-LCNI-5           MALAWI                         1       789    378    209    169
12 months   ki1148112-LCNI-5           MALAWI                         2       789    350    180    170
12 months   ki1148112-LCNI-5           MALAWI                         3+      789     61     30     31
12 months   kiGH5241-JiVitA-3          BANGLADESH                     1      8369   5408   2864   2544
12 months   kiGH5241-JiVitA-3          BANGLADESH                     2      8369   2776   1614   1162
12 months   kiGH5241-JiVitA-3          BANGLADESH                     3+     8369    185    112     73
18 months   ki1000108-IRC              INDIA                          1       409     89     41     48
18 months   ki1000108-IRC              INDIA                          2       409    119     50     69
18 months   ki1000108-IRC              INDIA                          3+      409    201     88    113
18 months   ki1017093b-PROVIDE         BANGLADESH                     1       604    441    262    179
18 months   ki1017093b-PROVIDE         BANGLADESH                     2       604    154     83     71
18 months   ki1017093b-PROVIDE         BANGLADESH                     3+      604      9      7      2
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     1       715    508    296    212
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     2       715    202     98    104
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     3+      715      5      4      1
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1      1448   1021    614    407
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2      1448    385    223    162
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+     1448     42     24     18
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1       121     36     22     14
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2       121     51     32     19
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   3+      121     34     21     13
18 months   ki1148112-LCNI-5           MALAWI                         1       668    324    154    170
18 months   ki1148112-LCNI-5           MALAWI                         2       668    286    120    166
18 months   ki1148112-LCNI-5           MALAWI                         3+      668     58     25     33
18 months   kiGH5241-JiVitA-3          BANGLADESH                     1      7325   4735   2134   2601
18 months   kiGH5241-JiVitA-3          BANGLADESH                     2      7325   2428   1136   1292
18 months   kiGH5241-JiVitA-3          BANGLADESH                     3+     7325    162     75     87
24 months   ki1000108-IRC              INDIA                          1       410     89     35     54
24 months   ki1000108-IRC              INDIA                          2       410    119     42     77
24 months   ki1000108-IRC              INDIA                          3+      410    202     70    132
24 months   ki1017093b-PROVIDE         BANGLADESH                     1       582    423    224    199
24 months   ki1017093b-PROVIDE         BANGLADESH                     2       582    151     72     79
24 months   ki1017093b-PROVIDE         BANGLADESH                     3+      582      8      6      2
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1       634    448    237    211
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2       634    182     77    105
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3+      634      4      2      2
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1       958    682    396    286
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2       958    250    133    117
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+      958     26     13     13
24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1       540    183    116     67
24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2       540    202    118     84
24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   3+      540    155     83     72
24 months   ki1148112-LCNI-5           MALAWI                         1       715    345    123    222
24 months   ki1148112-LCNI-5           MALAWI                         2       715    313    107    206
24 months   ki1148112-LCNI-5           MALAWI                         3+      715     57     20     37
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1         3      1      1      0
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2         3      2      1      1
24 months   kiGH5241-JiVitA-3          BANGLADESH                     3+        3      0      0      0


The following strata were considered:

* agecat: 12 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 12 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 12 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 18 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 18 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 18 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 18 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 18 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 18 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
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

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 18 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 18 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

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

![](/tmp/aecda340-eeee-4f8e-b2f2-6581a4d336be/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->


```
## Warning: Removed 35 rows containing missing values (geom_errorbar).
```

![](/tmp/aecda340-eeee-4f8e-b2f2-6581a4d336be/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


```
## Warning: Removed 7 rows containing missing values (geom_errorbar).
```

![](/tmp/aecda340-eeee-4f8e-b2f2-6581a4d336be/REPORT_files/figure-html/plot_paf-1.png)<!-- -->


```
## Warning: Removed 7 rows containing missing values (geom_errorbar).
```

![](/tmp/aecda340-eeee-4f8e-b2f2-6581a4d336be/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki1000108-IRC              INDIA                          1                    NA                0.3707865   0.2703147   0.4712584
3 months    ki1000108-IRC              INDIA                          2                    NA                0.2857143   0.2044487   0.3669799
3 months    ki1000108-IRC              INDIA                          3+                   NA                0.3118812   0.2479182   0.3758442
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1095471   0.0944004   0.1246939
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.0881913   0.0666986   0.1096840
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.0632911   0.0095880   0.1169943
3 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.4290913          NA          NA
3 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.3601770          NA          NA
3 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.3258786          NA          NA
6 months    ki1000108-IRC              INDIA                          1                    NA                0.4494382   0.3459659   0.5529105
6 months    ki1000108-IRC              INDIA                          2                    NA                0.4201681   0.3313768   0.5089593
6 months    ki1000108-IRC              INDIA                          3+                   NA                0.4150000   0.3466296   0.4833704
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2051282   0.1848307   0.2254257
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.1908517   0.1602558   0.2214476
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.1714286   0.0831199   0.2597372
6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                0.3360656   0.2520891   0.4200420
6 months    ki1148112-LCNI-5           MALAWI                         2                    NA                0.3606557   0.2752874   0.4460241
6 months    ki1148112-LCNI-5           MALAWI                         3+                   NA                0.4347826   0.2318075   0.6377577
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.4458108          NA          NA
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.3910119          NA          NA
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.3693694          NA          NA
12 months   ki1000108-IRC              INDIA                          1                    NA                0.5168539   0.4129076   0.6208002
12 months   ki1000108-IRC              INDIA                          2                    NA                0.5378151   0.4481276   0.6275026
12 months   ki1000108-IRC              INDIA                          3+                   NA                0.4850000   0.4156510   0.5543490
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.3111760   0.2866452   0.3357069
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.3315315   0.2923561   0.3707070
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.3281250   0.2130632   0.4431868
12 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.1984733          NA          NA
12 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                    NA                0.2033333          NA          NA
12 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   3+                   NA                0.2155963          NA          NA
12 months   ki1148112-LCNI-5           MALAWI                         1                    NA                0.4470899   0.3969363   0.4972436
12 months   ki1148112-LCNI-5           MALAWI                         2                    NA                0.4857143   0.4333202   0.5381084
12 months   ki1148112-LCNI-5           MALAWI                         3+                   NA                0.5081967   0.3826602   0.6337333
12 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.4704142          NA          NA
12 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.4185879          NA          NA
12 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.3945946          NA          NA
18 months   ki1000108-IRC              INDIA                          1                    NA                0.5393258   0.4356429   0.6430088
18 months   ki1000108-IRC              INDIA                          2                    NA                0.5798319   0.4910410   0.6686229
18 months   ki1000108-IRC              INDIA                          3+                   NA                0.5621891   0.4935192   0.6308589
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.3986288   0.3685860   0.4286716
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.4207792   0.3714486   0.4701099
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.4285714   0.2788562   0.5782867
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.3888889          NA          NA
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                    NA                0.3725490          NA          NA
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   3+                   NA                0.3823529          NA          NA
18 months   ki1148112-LCNI-5           MALAWI                         1                    NA                0.5246914   0.4702736   0.5791091
18 months   ki1148112-LCNI-5           MALAWI                         2                    NA                0.5804196   0.5231836   0.6376555
18 months   ki1148112-LCNI-5           MALAWI                         3+                   NA                0.5689655   0.4414220   0.6965090
18 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.5493136          NA          NA
18 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                0.5321252          NA          NA
18 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   NA                0.5370370          NA          NA
24 months   ki1000108-IRC              INDIA                          1                    NA                0.6067416   0.5051344   0.7083487
24 months   ki1000108-IRC              INDIA                          2                    NA                0.6470588   0.5610926   0.7330251
24 months   ki1000108-IRC              INDIA                          3+                   NA                0.6534653   0.5877620   0.7191687
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.4193548   0.3823014   0.4564083
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                0.4680000   0.4061153   0.5298847
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   NA                0.5000000   0.3077093   0.6922907
24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.3661202          NA          NA
24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                    NA                0.4158416          NA          NA
24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   3+                   NA                0.4645161          NA          NA
24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                0.6434783   0.5929013   0.6940552
24 months   ki1148112-LCNI-5           MALAWI                         2                    NA                0.6581470   0.6055621   0.7107319
24 months   ki1148112-LCNI-5           MALAWI                         3+                   NA                0.6491228   0.5251417   0.7731039


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki1000108-IRC              INDIA                          NA                   NA                0.3170732   0.2719756   0.3621708
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1020151   0.0898579   0.1141724
3 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4033406          NA          NA
6 months    ki1000108-IRC              INDIA                          NA                   NA                0.4240196   0.3760078   0.4720314
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2000000   0.1833758   0.2166242
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                0.3558052   0.2982716   0.4133389
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4253545          NA          NA
12 months   ki1000108-IRC              INDIA                          NA                   NA                0.5073529   0.4587823   0.5559236
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3174044   0.2969382   0.3378706
12 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.2051282          NA          NA
12 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.4689480   0.4341050   0.5037911
12 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4515474          NA          NA
18 months   ki1000108-IRC              INDIA                          NA                   NA                0.5623472   0.5142095   0.6104849
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4053867   0.3800899   0.4306836
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.3801653          NA          NA
18 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.5523952   0.5146591   0.5901314
18 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.5433447          NA          NA
24 months   ki1000108-IRC              INDIA                          NA                   NA                0.6414634   0.5949863   0.6879405
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4342380   0.4028349   0.4656411
24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.4129630          NA          NA
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.6503497   0.6153721   0.6853272


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
3 months    ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.000000
3 months    ki1000108-IRC              INDIA                          2                    1                 0.7705628   0.5202343   1.141345
3 months    ki1000108-IRC              INDIA                          3+                   1                 0.8411341   0.5987952   1.181550
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.000000
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.8050538   0.6083271   1.065400
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 0.5777526   0.2445561   1.364914
3 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000          NA         NA
3 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.8393947          NA         NA
3 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 0.7594621          NA         NA
6 months    ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1000108-IRC              INDIA                          2                    1                 0.9348739   0.6839628   1.277832
6 months    ki1000108-IRC              INDIA                          3+                   1                 0.9233750   0.6957115   1.225539
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 0.9304022   0.7706435   1.123280
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 0.8357143   0.4945932   1.412107
6 months    ki1148112-LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.000000
6 months    ki1148112-LCNI-5           MALAWI                         2                    1                 1.0731707   0.7606548   1.514084
6 months    ki1148112-LCNI-5           MALAWI                         3+                   1                 1.2937434   0.7618756   2.196910
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000          NA         NA
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.8770804          NA         NA
6 months    kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 0.8285339          NA         NA
12 months   ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.000000
12 months   ki1000108-IRC              INDIA                          2                    1                 1.0405554   0.8013121   1.351228
12 months   ki1000108-IRC              INDIA                          3+                   1                 0.9383696   0.7331722   1.200997
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.000000
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.0654147   0.9243323   1.228031
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 1.0544674   0.7361063   1.510518
12 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    1                 1.0000000          NA         NA
12 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                    1                 1.0244872          NA         NA
12 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   3+                   1                 1.0862738          NA         NA
12 months   ki1148112-LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.000000
12 months   ki1148112-LCNI-5           MALAWI                         2                    1                 1.0863905   0.9298179   1.269329
12 months   ki1148112-LCNI-5           MALAWI                         3+                   1                 1.1366767   0.8665871   1.490945
12 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000          NA         NA
12 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.8898284          NA         NA
12 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 0.8388237          NA         NA
18 months   ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.000000
18 months   ki1000108-IRC              INDIA                          2                    1                 1.0751050   0.8408335   1.374649
18 months   ki1000108-IRC              INDIA                          3+                   1                 1.0423922   0.8300663   1.309030
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.000000
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.0555665   0.9182427   1.213427
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 1.0751141   0.7520549   1.536949
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    1                 1.0000000          NA         NA
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                    1                 0.9579832          NA         NA
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   3+                   1                 0.9831933          NA         NA
18 months   ki1148112-LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.000000
18 months   ki1148112-LCNI-5           MALAWI                         2                    1                 1.1062114   0.9587068   1.276411
18 months   ki1148112-LCNI-5           MALAWI                         3+                   1                 1.0843813   0.8470568   1.388198
18 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000          NA         NA
18 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 0.9687093          NA         NA
18 months   kiGH5241-JiVitA-3          BANGLADESH                     3+                   1                 0.9776510          NA         NA
24 months   ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1000108-IRC              INDIA                          2                    1                 1.0664488   0.8611990   1.320616
24 months   ki1000108-IRC              INDIA                          3+                   1                 1.0770077   0.8859074   1.309330
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 1.1160000   0.9519093   1.308377
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3+                   1                 1.1923077   0.8035544   1.769137
24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    1                 1.0000000          NA         NA
24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2                    1                 1.1358061          NA         NA
24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   3+                   1                 1.2687530          NA         NA
24 months   ki1148112-LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.000000
24 months   ki1148112-LCNI-5           MALAWI                         2                    1                 1.0227960   0.9143530   1.144100
24 months   ki1148112-LCNI-5           MALAWI                         3+                   1                 1.0087719   0.8205302   1.240199


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
3 months    ki1000108-IRC              INDIA                          1                    NA                -0.0537133   -0.1417239   0.0342972
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0075320   -0.0154354   0.0003713
3 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0257508           NA          NA
6 months    ki1000108-IRC              INDIA                          1                    NA                -0.0254186   -0.1167458   0.0659086
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0051282   -0.0163124   0.0060560
6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0197397   -0.0428511   0.0823304
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0204563           NA          NA
12 months   ki1000108-IRC              INDIA                          1                    NA                -0.0095010   -0.1014253   0.0824233
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0062284   -0.0076223   0.0200791
12 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0066549           NA          NA
12 months   ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0218581   -0.0144633   0.0581795
12 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0188668           NA          NA
18 months   ki1000108-IRC              INDIA                          1                    NA                 0.0230213   -0.0685692   0.1146119
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0067579   -0.0096638   0.0231797
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                -0.0087236           NA          NA
18 months   ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0277039   -0.0111893   0.0665970
18 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0059689           NA          NA
24 months   ki1000108-IRC              INDIA                          1                    NA                 0.0347218   -0.0547321   0.1241758
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0148832   -0.0052240   0.0349903
24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0468427           NA          NA
24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0068714   -0.0293622   0.0431049


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
3 months    ki1000108-IRC              INDIA                          1                    NA                -0.1694036   -0.4828003   0.0777552
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0738323   -0.1537608   0.0005591
3 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0638437           NA          NA
6 months    ki1000108-IRC              INDIA                          1                    NA                -0.0599467   -0.2988488   0.1350132
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0256410   -0.0830935   0.0287639
6 months    ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0554789   -0.1378937   0.2159899
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0480924           NA          NA
12 months   ki1000108-IRC              INDIA                          1                    NA                -0.0187266   -0.2170336   0.1472677
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0196229   -0.0249986   0.0623018
12 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0324427           NA          NA
12 months   ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0466109   -0.0341325   0.1210500
12 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0417826           NA          NA
18 months   ki1000108-IRC              INDIA                          1                    NA                 0.0409380   -0.1366465   0.1907774
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0166704   -0.0246893   0.0563606
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                -0.0229469           NA          NA
18 months   ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0501522   -0.0230518   0.1181182
18 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0109855           NA          NA
24 months   ki1000108-IRC              INDIA                          1                    NA                 0.0541291   -0.0962805   0.1839025
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0342742   -0.0131918   0.0795165
24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.1134309           NA          NA
24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0105657   -0.0467550   0.0647474
