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
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          0       362      25      16      9
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          1       362     337     221    116
3 months    ki1000108-IRC              INDIA                          0       410      70      43     27
3 months    ki1000108-IRC              INDIA                          1       410     340     237    103
3 months    ki1017093b-PROVIDE         BANGLADESH                     0       700     160     133     27
3 months    ki1017093b-PROVIDE         BANGLADESH                     1       700     540     437    103
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     0       500     204     171     33
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     1       500     296     245     51
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0      2364     212     186     26
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1      2364    2152    1935    217
3 months    ki1119695-PROBIT           BELARUS                        0      8125     849     771     78
3 months    ki1119695-PROBIT           BELARUS                        1      8125    7276    6752    524
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       0     13917    1176     949    227
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       1     13917   12741   10059   2682
3 months    kiGH5241-JiVitA-3          BANGLADESH                     0     13327     735     540    195
3 months    kiGH5241-JiVitA-3          BANGLADESH                     1     13327   12592    7416   5176
3 months    kiGH5241-JiVitA-4          BANGLADESH                     0      1155      72      55     17
3 months    kiGH5241-JiVitA-4          BANGLADESH                     1      1155    1083     785    298
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0       367      25      12     13
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1       367     342     167    175
6 months    ki1000108-IRC              INDIA                          0       408      70      35     35
6 months    ki1000108-IRC              INDIA                          1       408     338     200    138
6 months    ki1017093b-PROVIDE         BANGLADESH                     0       640     147     114     33
6 months    ki1017093b-PROVIDE         BANGLADESH                     1       640     493     363    130
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0       478     196     140     56
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1       478     282     189     93
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0      2207     203     160     43
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1      2207    2004    1602    402
6 months    ki1119695-PROBIT           BELARUS                        0      7807     815     718     97
6 months    ki1119695-PROBIT           BELARUS                        1      7807    6992    6275    717
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0      9035     762     560    202
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1      9035    8273    5814   2459
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0      9567     550     396    154
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1      9567    9017    5105   3912
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0      1023      72      49     23
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1      1023     951     628    323
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          0       372      24       5     19
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          1       372     348     107    241
12 months   ki1000108-IRC              INDIA                          0       408      70      31     39
12 months   ki1000108-IRC              INDIA                          1       408     338     170    168
12 months   ki1017093b-PROVIDE         BANGLADESH                     0       609     141     105     36
12 months   ki1017093b-PROVIDE         BANGLADESH                     1       609     468     302    166
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     0       471     194     127     67
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     1       471     277     159    118
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0      1974     184     133     51
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1      1974    1790    1214    576
12 months   ki1119695-PROBIT           BELARUS                        0      7943     829     703    126
12 months   ki1119695-PROBIT           BELARUS                        1      7943    7114    6083   1031
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       0     10098     855     537    318
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       1     10098    9243    5757   3486
12 months   kiGH5241-JiVitA-3          BANGLADESH                     0      8340     533     375    158
12 months   kiGH5241-JiVitA-3          BANGLADESH                     1      8340    7807    4195   3612
12 months   kiGH5241-JiVitA-4          BANGLADESH                     0      1177      82      51     31
12 months   kiGH5241-JiVitA-4          BANGLADESH                     1      1177    1095     610    485
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          0       373      25       4     21
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          1       373     348      53    295
18 months   ki1000108-IRC              INDIA                          0       409      70      29     41
18 months   ki1000108-IRC              INDIA                          1       409     339     150    189
18 months   ki1017093b-PROVIDE         BANGLADESH                     0       604     140      88     52
18 months   ki1017093b-PROVIDE         BANGLADESH                     1       604     464     264    200
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     0       459     189     117     72
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     1       459     270     130    140
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0      1435     140      93     47
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1      1435    1295     762    533
18 months   ki1119695-PROBIT           BELARUS                        0      7475     783     656    127
18 months   ki1119695-PROBIT           BELARUS                        1      7475    6692    5649   1043
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       0      7226     609     313    296
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       1      7226    6617    3372   3245
18 months   kiGH5241-JiVitA-3          BANGLADESH                     0      7298     446     265    181
18 months   kiGH5241-JiVitA-3          BANGLADESH                     1      7298    6852    3066   3786
18 months   kiGH5241-JiVitA-4          BANGLADESH                     0      1145      79      41     38
18 months   kiGH5241-JiVitA-4          BANGLADESH                     1      1145    1066     472    594
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0       373      25       3     22
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1       373     348      25    323
24 months   ki1000108-IRC              INDIA                          0       410      70      24     46
24 months   ki1000108-IRC              INDIA                          1       410     340     123    217
24 months   ki1017093b-PROVIDE         BANGLADESH                     0       582     135      77     58
24 months   ki1017093b-PROVIDE         BANGLADESH                     1       582     447     225    222
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0       380     150      78     72
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1       380     230      98    132
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0       949      92      58     34
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1       949     857     481    376
24 months   ki1119695-PROBIT           BELARUS                        0      2076     237     192     45
24 months   ki1119695-PROBIT           BELARUS                        1      2076    1839    1456    383
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0      1861     153      54     99
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1      1861    1708     473   1235
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0         3       0       0      0
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1         3       3       2      1
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0      1007      68      30     38
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1      1007     939     374    565


The following strata were considered:

* agecat: 12 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 12 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 12 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 12 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 12 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 18 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 18 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 18 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 18 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 18 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 18 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 18 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 18 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 3 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 3 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 3 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 3 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 3 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 18 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots

```
## Warning: Removed 28 rows containing missing values (geom_errorbar).
```

![](/tmp/18a347f7-cea9-4096-b4b1-4082bedecc00/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->


```
## Warning: Removed 56 rows containing missing values (geom_errorbar).
```

![](/tmp/18a347f7-cea9-4096-b4b1-4082bedecc00/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


```
## Warning: Removed 14 rows containing missing values (geom_errorbar).
```

![](/tmp/18a347f7-cea9-4096-b4b1-4082bedecc00/REPORT_files/figure-html/plot_paf-1.png)<!-- -->


```
## Warning: Removed 14 rows containing missing values (geom_errorbar).
```

![](/tmp/18a347f7-cea9-4096-b4b1-4082bedecc00/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.3600000   0.1715830   0.5484170
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.3442136   0.2934177   0.3950096
3 months    ki1000108-IRC              INDIA                          0                    NA                0.3857143   0.2715455   0.4998831
3 months    ki1000108-IRC              INDIA                          1                    NA                0.3029412   0.2540362   0.3518461
3 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.1687500   0.1106754   0.2268246
3 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.1907407   0.1575798   0.2239017
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.1617647   0.1111831   0.2123463
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.1722973   0.1292334   0.2153612
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1226415   0.0784764   0.1668066
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1008364   0.0881118   0.1135611
3 months    ki1119695-PROBIT           BELARUS                        0                    NA                0.0918728          NA          NA
3 months    ki1119695-PROBIT           BELARUS                        1                    NA                0.0720176          NA          NA
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.1930272   0.1704693   0.2155851
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.2105015   0.2034226   0.2175804
3 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.2653061          NA          NA
3 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.4110546          NA          NA
3 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.2361111          NA          NA
3 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.2751616          NA          NA
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.5200000   0.3238931   0.7161069
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.5116959   0.4586467   0.5647451
6 months    ki1000108-IRC              INDIA                          0                    NA                0.5000000   0.3827259   0.6172741
6 months    ki1000108-IRC              INDIA                          1                    NA                0.4082840   0.3558201   0.4607479
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.2244898   0.1569871   0.2919925
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.2636917   0.2247655   0.3026179
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.2857143   0.2224036   0.3490249
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.3297872   0.2748583   0.3847162
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2118227   0.1556019   0.2680434
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2005988   0.1830623   0.2181354
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                0.1190184          NA          NA
6 months    ki1119695-PROBIT           BELARUS                        1                    NA                0.1025458          NA          NA
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.2650919   0.2337511   0.2964326
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.2972320   0.2873829   0.3070810
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.2800000          NA          NA
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.4338472          NA          NA
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.3194444          NA          NA
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.3396425          NA          NA
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                0.7916667   0.6289704   0.9543629
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.6925287   0.6439815   0.7410759
12 months   ki1000108-IRC              INDIA                          0                    NA                0.5571429   0.4406372   0.6736485
12 months   ki1000108-IRC              INDIA                          1                    NA                0.4970414   0.4436729   0.5504099
12 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.2553191   0.1832877   0.3273506
12 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.3547009   0.3113204   0.3980813
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.3453608   0.2783806   0.4123410
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.4259928   0.3676980   0.4842875
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2771739   0.2124831   0.3418647
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.3217877   0.3001406   0.3434348
12 months   ki1119695-PROBIT           BELARUS                        0                    NA                0.1519903          NA          NA
12 months   ki1119695-PROBIT           BELARUS                        1                    NA                0.1449255          NA          NA
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.3719298   0.3395316   0.4043280
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.3771503   0.3672690   0.3870315
12 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.2964353          NA          NA
12 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.4626617          NA          NA
12 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.3780488          NA          NA
12 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.4429224          NA          NA
18 months   ki1000108-IRC              INDIA                          0                    NA                0.5857143   0.4701766   0.7012519
18 months   ki1000108-IRC              INDIA                          1                    NA                0.5575221   0.5045855   0.6104588
18 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.3714286   0.2913237   0.4515334
18 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.4310345   0.3859375   0.4761315
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.3809524   0.3116436   0.4502611
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.5185185   0.4588546   0.5781824
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.3357143   0.2574619   0.4139667
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.4115830   0.3847706   0.4383954
18 months   ki1119695-PROBIT           BELARUS                        0                    NA                0.1621967          NA          NA
18 months   ki1119695-PROBIT           BELARUS                        1                    NA                0.1558577          NA          NA
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.4860427   0.4463445   0.5257408
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.4904035   0.4783577   0.5024494
18 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.4058296          NA          NA
18 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.5525394          NA          NA
18 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.4810127          NA          NA
18 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.5572233          NA          NA
24 months   ki1000108-IRC              INDIA                          0                    NA                0.6571429   0.5458119   0.7684738
24 months   ki1000108-IRC              INDIA                          1                    NA                0.6382353   0.5870975   0.6893731
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.4296296   0.3460539   0.5132054
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.4966443   0.4502539   0.5430347
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.4800000   0.3999434   0.5600566
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.5739130   0.5099206   0.6379055
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.3695652   0.2708808   0.4682497
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.4387398   0.4054989   0.4719807
24 months   ki1119695-PROBIT           BELARUS                        0                    NA                0.1898734          NA          NA
24 months   ki1119695-PROBIT           BELARUS                        1                    NA                0.2082654          NA          NA
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.6470588   0.5713159   0.7228018
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.7230679   0.7018405   0.7442953
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.5588235          NA          NA
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.6017039          NA          NA


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.3453039   0.2962566   0.3943512
3 months    ki1000108-IRC              INDIA                          NA                   NA                0.3170732   0.2719756   0.3621708
3 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1857143   0.1568859   0.2145427
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1680000   0.1351970   0.2008030
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1027919   0.0905473   0.1150364
3 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0740923          NA          NA
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2090249   0.2022692   0.2157806
3 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4030164          NA          NA
3 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2727273          NA          NA
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.5122616   0.4610525   0.5634707
6 months    ki1000108-IRC              INDIA                          NA                   NA                0.4240196   0.3760078   0.4720314
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2546875   0.2209066   0.2884684
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.3117155   0.2701482   0.3532828
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2016312   0.1848885   0.2183739
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.1042654          NA          NA
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2945213   0.2851217   0.3039209
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4250026          NA          NA
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.3382209          NA          NA
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.6989247   0.6522466   0.7456029
12 months   ki1000108-IRC              INDIA                          NA                   NA                0.5073529   0.4587823   0.5559236
12 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3316913   0.2942672   0.3691154
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.3927813   0.3486296   0.4369330
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3176292   0.2970866   0.3381718
12 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.1456628          NA          NA
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.3767083   0.3672568   0.3861597
12 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4520384          NA          NA
12 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.4384027          NA          NA
18 months   ki1000108-IRC              INDIA                          NA                   NA                0.5623472   0.5142095   0.6104849
18 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.4172185   0.3778614   0.4565757
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.4618736   0.4162154   0.5075319
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4041812   0.3787821   0.4295803
18 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.1565217          NA          NA
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.4900360   0.4785091   0.5015629
18 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.5435736          NA          NA
18 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.5519651          NA          NA
24 months   ki1000108-IRC              INDIA                          NA                   NA                0.6414634   0.5949863   0.6879405
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.4810997   0.4404722   0.5217271
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.5368421   0.4866406   0.5870436
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4320337   0.4005008   0.4635666
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.2061657          NA          NA
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.7168189   0.6963437   0.7372941
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.5988083          NA          NA


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.000000
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 0.9561490   0.5550881   1.646984
3 months    ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.000000
3 months    ki1000108-IRC              INDIA                          1                    0                 0.7854031   0.5606198   1.100314
3 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
3 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.1303155   0.7686884   1.662069
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.0651106   0.7137487   1.589440
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.8222048   0.5613834   1.204205
3 months    ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000          NA         NA
3 months    ki1119695-PROBIT           BELARUS                        1                    0                 0.7838838          NA         NA
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.0905278   0.9656591   1.231543
3 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000          NA         NA
3 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.5493598          NA         NA
3 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000          NA         NA
3 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.1653903          NA         NA
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 0.9840306   0.6654995   1.455022
6 months    ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1000108-IRC              INDIA                          1                    0                 0.8165680   0.6249485   1.066941
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.1746266   0.8402759   1.642017
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.1542553   0.8748088   1.522967
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.9470130   0.7161373   1.252321
6 months    ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000          NA         NA
6 months    ki1119695-PROBIT           BELARUS                        1                    0                 0.8615959          NA         NA
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.1212414   0.9916893   1.267718
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000          NA         NA
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.5494542          NA         NA
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000          NA         NA
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.0632286          NA         NA
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    0                 1.0000000   1.0000000   1.000000
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    0                 0.8747731   0.7040338   1.086919
12 months   ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.000000
12 months   ki1000108-IRC              INDIA                          1                    0                 0.8921256   0.7052406   1.128534
12 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
12 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.3892450   1.0214966   1.889386
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.2334716   0.9728473   1.563917
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.1609596   0.9106026   1.480149
12 months   ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000          NA         NA
12 months   ki1119695-PROBIT           BELARUS                        1                    0                 0.9535178          NA         NA
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.0140361   0.9258670   1.110602
12 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000          NA         NA
12 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.5607512          NA         NA
12 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000          NA         NA
12 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.1716011          NA         NA
18 months   ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.000000
18 months   ki1000108-IRC              INDIA                          1                    0                 0.9518670   0.7647153   1.184821
18 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
18 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.1604775   0.9131330   1.474821
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.3611111   1.0974972   1.688044
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.2259919   0.9624490   1.561700
18 months   ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000          NA         NA
18 months   ki1119695-PROBIT           BELARUS                        1                    0                 0.9609182          NA         NA
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.0089721   0.9264847   1.098804
18 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000          NA         NA
18 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.3615059          NA         NA
18 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000          NA         NA
18 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.1584378          NA         NA
24 months   ki1000108-IRC              INDIA                          0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1000108-IRC              INDIA                          1                    0                 0.9712276   0.8052499   1.171417
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.1559824   0.9316082   1.434396
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.1956522   0.9783071   1.461284
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.1871783   0.8994340   1.566977
24 months   ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000          NA         NA
24 months   ki1119695-PROBIT           BELARUS                        1                    0                 1.0968642          NA         NA
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.1174686   0.9904296   1.260803
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000          NA         NA
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.0767334          NA         NA


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0146961   -0.1963638   0.1669715
3 months    ki1000108-IRC              INDIA                          0                    NA                -0.0686411   -0.1716824   0.0344001
3 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0169643   -0.0346298   0.0685584
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0062353   -0.0330941   0.0455647
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0198496   -0.0616903   0.0219910
3 months    ki1119695-PROBIT           BELARUS                        0                    NA                -0.0177805           NA          NA
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0159977   -0.0056472   0.0376426
3 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.1377103           NA          NA
3 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0366162           NA          NA
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0077384   -0.1970550   0.1815782
6 months    ki1000108-IRC              INDIA                          0                    NA                -0.0759804   -0.1824656   0.0305048
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0301977   -0.0298403   0.0902357
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0260012   -0.0234861   0.0754885
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0101915   -0.0636670   0.0432841
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                -0.0147530           NA          NA
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0294294   -0.0006523   0.0595112
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.1450026           NA          NA
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0187765           NA          NA
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0927419   -0.2515923   0.0661084
12 months   ki1000108-IRC              INDIA                          0                    NA                -0.0497899   -0.1559741   0.0563943
12 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0763721    0.0116688   0.1410755
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0474205   -0.0049241   0.0997651
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0404553   -0.0214053   0.1023158
12 months   ki1119695-PROBIT           BELARUS                        0                    NA                -0.0063275           NA          NA
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0047784   -0.0262252   0.0357821
12 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.1556031           NA          NA
12 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0603539           NA          NA
18 months   ki1000108-IRC              INDIA                          0                    NA                -0.0233671   -0.1287087   0.0819745
18 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0457900   -0.0248578   0.1164377
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0809213    0.0267697   0.1350728
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0684669   -0.0061906   0.1431244
18 months   ki1119695-PROBIT           BELARUS                        0                    NA                -0.0056749           NA          NA
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0039933   -0.0339959   0.0419824
18 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.1377440           NA          NA
18 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0709524           NA          NA
24 months   ki1000108-IRC              INDIA                          0                    NA                -0.0156794   -0.1172787   0.0859198
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0514700   -0.0219811   0.1249212
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0568421   -0.0053629   0.1190471
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0624685   -0.0315780   0.1565150
24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.0162923           NA          NA
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0697601   -0.0024404   0.1419605
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0399848           NA          NA


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0425600   -0.7268777   0.3705800
3 months    ki1000108-IRC              INDIA                          0                    NA                -0.2164835   -0.5892522   0.0688501
3 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0913462   -0.2333307   0.3305511
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0371149   -0.2278135   0.2448790
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.1931050   -0.6775347   0.1514336
3 months    ki1119695-PROBIT           BELARUS                        0                    NA                -0.2399775           NA          NA
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0765350   -0.0330288   0.1744784
3 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.3416990           NA          NA
3 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.1342593           NA          NA
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.0151064   -0.4609214   0.2946636
6 months    ki1000108-IRC              INDIA                          0                    NA                -0.1791908   -0.4598152   0.0474885
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.1185677   -0.1514227   0.3252496
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0834132   -0.0898442   0.2291271
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0505452   -0.3522215   0.1838281
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                -0.1414947           NA          NA
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0999230   -0.0082217   0.1964677
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.3411805           NA          NA
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0555154           NA          NA
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          0                    NA                -0.1326923   -0.3852754   0.0738363
12 months   ki1000108-IRC              INDIA                          0                    NA                -0.0981366   -0.3290228   0.0926385
12 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.2302507    0.0087610   0.4022491
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.1207300   -0.0232765   0.2444704
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.1273663   -0.0907945   0.3018946
12 months   ki1119695-PROBIT           BELARUS                        0                    NA                -0.0434394           NA          NA
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0126847   -0.0731446   0.0916494
12 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.3442254           NA          NA
12 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.1376678           NA          NA
18 months   ki1000108-IRC              INDIA                          0                    NA                -0.0415528   -0.2468478   0.1299401
18 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.1097506   -0.0768602   0.2640232
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.1752022    0.0486048   0.2849539
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.1693966   -0.0375146   0.3350435
18 months   ki1119695-PROBIT           BELARUS                        0                    NA                -0.0362566           NA          NA
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0081490   -0.0724845   0.0827201
18 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.2534045           NA          NA
18 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.1285451           NA          NA
24 months   ki1000108-IRC              INDIA                          0                    NA                -0.0244432   -0.1957607   0.1223295
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.1069841   -0.0597248   0.2474675
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.1058824   -0.0183487   0.2149581
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.1445917   -0.1033957   0.3368441
24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.0790252           NA          NA
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0973190   -0.0093919   0.1927486
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0667740           NA          NA
