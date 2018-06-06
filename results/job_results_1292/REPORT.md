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

**Intervention Variable:** single

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
3 months    ki0047075b-MAL-ED          BANGLADESH                     0       265     265     187     78
3 months    ki0047075b-MAL-ED          BANGLADESH                     1       265       0       0      0
3 months    ki0047075b-MAL-ED          BRAZIL                         0       233     197     168     29
3 months    ki0047075b-MAL-ED          BRAZIL                         1       233      36      27      9
3 months    ki0047075b-MAL-ED          INDIA                          0       249     249     183     66
3 months    ki0047075b-MAL-ED          INDIA                          1       249       0       0      0
3 months    ki0047075b-MAL-ED          NEPAL                          0       240     240     202     38
3 months    ki0047075b-MAL-ED          NEPAL                          1       240       0       0      0
3 months    ki0047075b-MAL-ED          PERU                           0       303     268     179     89
3 months    ki0047075b-MAL-ED          PERU                           1       303      35      23     12
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0       314     176     138     38
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1       314     138      94     44
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0       262     252     173     79
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1       262      10       7      3
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0      2372    2148    1929    219
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1      2372     224     200     24
3 months    ki1119695-PROBIT           BELARUS                        0      8125    7828    7259    569
3 months    ki1119695-PROBIT           BELARUS                        1      8125     297     264     33
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       0     13973   13087   10364   2723
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       1     13973     886     678    208
3 months    ki1135781-COHORTS          GUATEMALA                      0       459     419     310    109
3 months    ki1135781-COHORTS          GUATEMALA                      1       459      40      25     15
3 months    ki1135781-COHORTS          INDIA                          0      5203    5195    4207    988
3 months    ki1135781-COHORTS          INDIA                          1      5203       8       6      2
3 months    ki1135781-COHORTS          PHILIPPINES                    0      3016    2941    2520    421
3 months    ki1135781-COHORTS          PHILIPPINES                    1      3016      75      61     14
6 months    ki0047075b-MAL-ED          BANGLADESH                     0       246     246     162     84
6 months    ki0047075b-MAL-ED          BANGLADESH                     1       246       0       0      0
6 months    ki0047075b-MAL-ED          BRAZIL                         0       218     187     154     33
6 months    ki0047075b-MAL-ED          BRAZIL                         1       218      31      24      7
6 months    ki0047075b-MAL-ED          INDIA                          0       238     238     156     82
6 months    ki0047075b-MAL-ED          INDIA                          1       238       0       0      0
6 months    ki0047075b-MAL-ED          NEPAL                          0       238     238     197     41
6 months    ki0047075b-MAL-ED          NEPAL                          1       238       0       0      0
6 months    ki0047075b-MAL-ED          PERU                           0       282     249     137    112
6 months    ki0047075b-MAL-ED          PERU                           1       282      33      20     13
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0       271     154     101     53
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1       271     117      66     51
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0       253     244     143    101
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1       253       9       6      3
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0      2216    2012    1603    409
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1      2216     204     168     36
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0       265     238     167     71
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1       265      27      14     13
6 months    ki1119695-PROBIT           BELARUS                        0      7807    7527    6756    771
6 months    ki1119695-PROBIT           BELARUS                        1      7807     280     237     43
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0      9065    8505    6021   2484
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1      9065     560     373    187
6 months    ki1135781-COHORTS          GUATEMALA                      0       135     121      79     42
6 months    ki1135781-COHORTS          GUATEMALA                      1       135      14       8      6
6 months    ki1135781-COHORTS          PHILIPPINES                    0      2771    2703    2034    669
6 months    ki1135781-COHORTS          PHILIPPINES                    1      2771      68      46     22
12 months   ki0047075b-MAL-ED          BANGLADESH                     0       239     239     136    103
12 months   ki0047075b-MAL-ED          BANGLADESH                     1       239       0       0      0
12 months   ki0047075b-MAL-ED          BRAZIL                         0       207     177     142     35
12 months   ki0047075b-MAL-ED          BRAZIL                         1       207      30      23      7
12 months   ki0047075b-MAL-ED          INDIA                          0       233     233     123    110
12 months   ki0047075b-MAL-ED          INDIA                          1       233       0       0      0
12 months   ki0047075b-MAL-ED          NEPAL                          0       235     235     188     47
12 months   ki0047075b-MAL-ED          NEPAL                          1       235       0       0      0
12 months   ki0047075b-MAL-ED          PERU                           0       270     238     113    125
12 months   ki0047075b-MAL-ED          PERU                           1       270      32      17     15
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0       259     144      79     65
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1       259     115      58     57
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0       245     237      81    156
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1       245       8       3      5
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0      1981    1802    1229    573
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1      1981     179     121     58
12 months   ki1112895-Guatemala BSC    GUATEMALA                      0       266     236     115    121
12 months   ki1112895-Guatemala BSC    GUATEMALA                      1       266      30       9     21
12 months   ki1119695-PROBIT           BELARUS                        0      7943    7655    6558   1097
12 months   ki1119695-PROBIT           BELARUS                        1      7943     288     228     60
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       0     10146    9520    5964   3556
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       1     10146     626     357    269
12 months   ki1135781-COHORTS          GUATEMALA                      0       510     459     131    328
12 months   ki1135781-COHORTS          GUATEMALA                      1       510      51      12     39
12 months   ki1135781-COHORTS          INDIA                          0      5031    5022    3016   2006
12 months   ki1135781-COHORTS          INDIA                          1      5031       9       4      5
12 months   ki1135781-COHORTS          PHILIPPINES                    0      2729    2657    1489   1168
12 months   ki1135781-COHORTS          PHILIPPINES                    1      2729      72      40     32
18 months   ki0047075b-MAL-ED          BANGLADESH                     0       231     231     100    131
18 months   ki0047075b-MAL-ED          BANGLADESH                     1       231       0       0      0
18 months   ki0047075b-MAL-ED          BRAZIL                         0       194     167     130     37
18 months   ki0047075b-MAL-ED          BRAZIL                         1       194      27      19      8
18 months   ki0047075b-MAL-ED          INDIA                          0       227     227      96    131
18 months   ki0047075b-MAL-ED          INDIA                          1       227       0       0      0
18 months   ki0047075b-MAL-ED          NEPAL                          0       231     231     163     68
18 months   ki0047075b-MAL-ED          NEPAL                          1       231       0       0      0
18 months   ki0047075b-MAL-ED          PERU                           0       244     214      68    146
18 months   ki0047075b-MAL-ED          PERU                           1       244      30      12     18
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0       253     139      64     75
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1       253     114      48     66
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0       233     226      42    184
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1       233       7       1      6
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0      1447    1314     779    535
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1      1447     133      81     52
18 months   ki1112895-Guatemala BSC    GUATEMALA                      0       185     164      66     98
18 months   ki1112895-Guatemala BSC    GUATEMALA                      1       185      21       3     18
18 months   ki1119695-PROBIT           BELARUS                        0      7475    7214    6106   1108
18 months   ki1119695-PROBIT           BELARUS                        1      7475     261     199     62
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       0      7254    6805    3496   3309
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       1      7254     449     194    255
18 months   ki1135781-COHORTS          GUATEMALA                      0       423     378      65    313
18 months   ki1135781-COHORTS          GUATEMALA                      1       423      45       6     39
18 months   ki1135781-COHORTS          PHILIPPINES                    0      2600    2539     966   1573
18 months   ki1135781-COHORTS          PHILIPPINES                    1      2600      61      24     37
24 months   ki0047075b-MAL-ED          BANGLADESH                     0       219     219      83    136
24 months   ki0047075b-MAL-ED          BANGLADESH                     1       219       0       0      0
24 months   ki0047075b-MAL-ED          BRAZIL                         0       176     155     121     34
24 months   ki0047075b-MAL-ED          BRAZIL                         1       176      21      15      6
24 months   ki0047075b-MAL-ED          INDIA                          0       226     226      86    140
24 months   ki0047075b-MAL-ED          INDIA                          1       226       0       0      0
24 months   ki0047075b-MAL-ED          NEPAL                          0       229     229     149     80
24 months   ki0047075b-MAL-ED          NEPAL                          1       229       0       0      0
24 months   ki0047075b-MAL-ED          PERU                           0       218     190      50    140
24 months   ki0047075b-MAL-ED          PERU                           1       218      28      11     17
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0       242     133      54     79
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1       242     109      39     70
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0       228     221      26    195
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1       228       7       1      6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0       958     869     490    379
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1       958      89      52     37
24 months   ki1119695-PROBIT           BELARUS                        0      2076    1991    1584    407
24 months   ki1119695-PROBIT           BELARUS                        1      2076      85      64     21
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0      1875    1757     505   1252
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1      1875     118      27     91
24 months   ki1135781-COHORTS          GUATEMALA                      0       444     396      41    355
24 months   ki1135781-COHORTS          GUATEMALA                      1       444      48       5     43
24 months   ki1135781-COHORTS          PHILIPPINES                    0      2531    2470     609   1861
24 months   ki1135781-COHORTS          PHILIPPINES                    1      2531      61      16     45


The following strata were considered:

* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 12 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 12 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 12 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 12 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 12 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 18 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 18 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 18 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 18 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 3 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 3 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 3 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 3 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots

```
## Warning: Removed 10 rows containing missing values (geom_errorbar).
```

![](/tmp/b43c75ba-98cb-48f9-975d-17666198906d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->


```
## Warning: Removed 47 rows containing missing values (geom_errorbar).
```

![](/tmp/b43c75ba-98cb-48f9-975d-17666198906d/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


```
## Warning: Removed 5 rows containing missing values (geom_errorbar).
```

![](/tmp/b43c75ba-98cb-48f9-975d-17666198906d/REPORT_files/figure-html/plot_paf-1.png)<!-- -->


```
## Warning: Removed 5 rows containing missing values (geom_errorbar).
```

![](/tmp/b43c75ba-98cb-48f9-975d-17666198906d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki0047075b-MAL-ED          BRAZIL                         0                    NA                0.1472081   0.0976247   0.1967915
3 months    ki0047075b-MAL-ED          BRAZIL                         1                    NA                0.2500000   0.1082473   0.3917527
3 months    ki0047075b-MAL-ED          PERU                           0                    NA                0.3320896   0.2756108   0.3885683
3 months    ki0047075b-MAL-ED          PERU                           1                    NA                0.3428571   0.1853434   0.5003709
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.2159091   0.1550251   0.2767931
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.3188406   0.2409630   0.3967181
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1019553   0.0891563   0.1147543
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1071429   0.0666304   0.1476553
3 months    ki1119695-PROBIT           BELARUS                        0                    NA                0.0726878          NA          NA
3 months    ki1119695-PROBIT           BELARUS                        1                    NA                0.1111111          NA          NA
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.2080691   0.2011142   0.2150240
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.2347630   0.2068530   0.2626730
3 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                0.2601432   0.2180904   0.3021960
3 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                0.3750000   0.2248078   0.5251922
3 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.1431486   0.1304890   0.1558082
3 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.1866667   0.0984690   0.2748643
6 months    ki0047075b-MAL-ED          BRAZIL                         0                    NA                0.1764706   0.1217058   0.2312354
6 months    ki0047075b-MAL-ED          BRAZIL                         1                    NA                0.2258065   0.0782838   0.3733291
6 months    ki0047075b-MAL-ED          PERU                           0                    NA                0.4497992   0.3878993   0.5116991
6 months    ki0047075b-MAL-ED          PERU                           1                    NA                0.3939394   0.2269322   0.5609466
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.3441558   0.2689817   0.4193300
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.4358974   0.3458795   0.5259154
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.2032803   0.1856917   0.2208690
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1764706   0.1241459   0.2287953
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                0.2983193   0.2400834   0.3565553
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                0.4814815   0.2926566   0.6703063
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                0.1024312          NA          NA
6 months    ki1119695-PROBIT           BELARUS                        1                    NA                0.1535714          NA          NA
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.2920635   0.2823992   0.3017278
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.3339286   0.2948656   0.3729915
6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                0.3471074   0.2619696   0.4322453
6 months    ki1135781-COHORTS          GUATEMALA                      1                    NA                0.4285714   0.1683811   0.6887618
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.2475028   0.2312306   0.2637750
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.3235294   0.2123170   0.4347418
12 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                0.1977401   0.1389211   0.2565592
12 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                0.2333333   0.0816176   0.3850491
12 months   ki0047075b-MAL-ED          PERU                           0                    NA                0.5252101   0.4616503   0.5887699
12 months   ki0047075b-MAL-ED          PERU                           1                    NA                0.4687500   0.2955296   0.6419704
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.4513889   0.3699532   0.5328245
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.4956522   0.4040949   0.5872094
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.3179800   0.2964731   0.3394870
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.3240223   0.2554443   0.3926004
12 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                0.5127119   0.4488209   0.5766028
12 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                0.7000000   0.5357085   0.8642915
12 months   ki1119695-PROBIT           BELARUS                        0                    NA                0.1433050          NA          NA
12 months   ki1119695-PROBIT           BELARUS                        1                    NA                0.2083333          NA          NA
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.3735294   0.3638117   0.3832471
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.4297125   0.3909315   0.4684934
12 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.7145969   0.6732420   0.7559519
12 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.7647059   0.6481748   0.8812370
12 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.4395935   0.4207176   0.4584695
12 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.4444444   0.3296466   0.5592423
18 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                0.2215569   0.1584076   0.2847061
18 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                0.2962963   0.1236145   0.4689780
18 months   ki0047075b-MAL-ED          PERU                           0                    NA                0.6822430   0.6197329   0.7447531
18 months   ki0047075b-MAL-ED          PERU                           1                    NA                0.6000000   0.4243352   0.7756648
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.5395683   0.4565438   0.6225929
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.5789474   0.4881353   0.6697594
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.4071537   0.3805801   0.4337274
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.3909774   0.3080182   0.4739367
18 months   ki1119695-PROBIT           BELARUS                        0                    NA                0.1535902          NA          NA
18 months   ki1119695-PROBIT           BELARUS                        1                    NA                0.2375479          NA          NA
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.4862601   0.4743841   0.4981361
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.5679287   0.5221062   0.6137513
18 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.8280423   0.7899574   0.8661273
18 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.8666667   0.7672289   0.9661044
18 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.6195353   0.6006471   0.6384234
18 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.6065574   0.4839424   0.7291723
24 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                0.2193548   0.1540237   0.2846859
24 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                0.2857143   0.0919482   0.4794803
24 months   ki0047075b-MAL-ED          PERU                           0                    NA                0.7368421   0.6740847   0.7995995
24 months   ki0047075b-MAL-ED          PERU                           1                    NA                0.6071429   0.4258293   0.7884564
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                0.5939850   0.5103515   0.6776185
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.6422018   0.5520263   0.7323774
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.4361335   0.4031450   0.4691220
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.4157303   0.3132850   0.5181757
24 months   ki1119695-PROBIT           BELARUS                        0                    NA                0.2044199          NA          NA
24 months   ki1119695-PROBIT           BELARUS                        1                    NA                0.2470588          NA          NA
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                0.7125783   0.6914115   0.7337450
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                0.7711864   0.6953735   0.8469994
24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                0.8964646   0.8664246   0.9265047
24 months   ki1135781-COHORTS          GUATEMALA                      1                    NA                0.8958333   0.8093176   0.9823491
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                0.7534413   0.7364405   0.7704421
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    NA                0.7377049   0.6272957   0.8481142


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.1630901   0.1155503   0.2106299
3 months    ki0047075b-MAL-ED          PERU                           NA                   NA                0.3333333   0.2801668   0.3864999
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.2611465   0.2124837   0.3098093
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1024452   0.0902396   0.1146508
3 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0740923          NA          NA
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2097617   0.2030108   0.2165126
3 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.2701525   0.2294861   0.3108189
3 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1442308   0.1316904   0.1567712
6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.1834862   0.1319869   0.2349856
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                0.4432624   0.3851792   0.5013456
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.3837638   0.3257580   0.4417697
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2008123   0.1841290   0.2174955
6 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.3169811   0.2608532   0.3731091
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.1042654          NA          NA
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2946498   0.2852646   0.3040350
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.3555556   0.2745076   0.4366035
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2493685   0.2332567   0.2654802
12 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.2028986   0.1479811   0.2578160
12 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.5185185   0.4588090   0.5782281
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.4710425   0.4101339   0.5319511
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3185260   0.2980043   0.3390477
12 months   ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.5338346   0.4737728   0.5938964
12 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.1456628          NA          NA
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.3769959   0.3675653   0.3864264
12 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7196078   0.6805849   0.7586308
12 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.4397215   0.4210956   0.4583474
18 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.2319588   0.1724108   0.2915068
18 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.6721311   0.6131080   0.7311543
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.5573123   0.4959861   0.6186384
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4056669   0.3803586   0.4309752
18 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.1565217          NA          NA
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.4913151   0.4798099   0.5028203
18 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.8321513   0.7964937   0.8678089
18 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6192308   0.6005626   0.6378990
24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.2272727   0.1651836   0.2893619
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.7201835   0.6604557   0.7799113
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.6157025   0.5542897   0.6771153
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4342380   0.4028349   0.4656411
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.2061657          NA          NA
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.7162667   0.6958561   0.7366773
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.8963964   0.8680183   0.9247745
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.7530620   0.7362586   0.7698654


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
3 months    ki0047075b-MAL-ED          BRAZIL                         0                    0                 1.0000000   1.0000000   1.000000
3 months    ki0047075b-MAL-ED          BRAZIL                         1                    0                 1.6982759   0.8781869   3.284199
3 months    ki0047075b-MAL-ED          PERU                           0                    0                 1.0000000   1.0000000   1.000000
3 months    ki0047075b-MAL-ED          PERU                           1                    0                 1.0324238   0.6325634   1.685046
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.000000
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 1.4767353   1.0169108   2.144482
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.0508806   0.7055470   1.565240
3 months    ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000          NA         NA
3 months    ki1119695-PROBIT           BELARUS                        1                    0                 1.5286077          NA         NA
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.1282935   0.9972147   1.276602
3 months    ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.000000
3 months    ki1135781-COHORTS          GUATEMALA                      1                    0                 1.4415138   0.9359333   2.220203
3 months    ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.000000
3 months    ki1135781-COHORTS          PHILIPPINES                    1                    0                 1.3040063   0.8063387   2.108832
6 months    ki0047075b-MAL-ED          BRAZIL                         0                    0                 1.0000000   1.0000000   1.000000
6 months    ki0047075b-MAL-ED          BRAZIL                         1                    0                 1.2795699   0.6207971   2.637414
6 months    ki0047075b-MAL-ED          PERU                           0                    0                 1.0000000   1.0000000   1.000000
6 months    ki0047075b-MAL-ED          PERU                           1                    0                 0.8758117   0.5608385   1.367677
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 1.2665699   0.9377374   1.710713
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.8681145   0.6374338   1.182276
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    0                 1.6139802   1.0414655   2.501218
6 months    ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000          NA         NA
6 months    ki1119695-PROBIT           BELARUS                        1                    0                 1.4992635          NA         NA
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.1433424   1.0124630   1.291140
6 months    ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1135781-COHORTS          GUATEMALA                      1                    0                 1.2346939   0.6414891   2.376453
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1135781-COHORTS          PHILIPPINES                    1                    0                 1.3071749   0.9211705   1.854929
12 months   ki0047075b-MAL-ED          BRAZIL                         0                    0                 1.0000000   1.0000000   1.000000
12 months   ki0047075b-MAL-ED          BRAZIL                         1                    0                 1.1800000   0.5772351   2.412189
12 months   ki0047075b-MAL-ED          PERU                           0                    0                 1.0000000   1.0000000   1.000000
12 months   ki0047075b-MAL-ED          PERU                           1                    0                 0.8925000   0.6049698   1.316688
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.000000
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 1.0980602   0.8481819   1.421554
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.0190022   0.8159790   1.272539
12 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    0                 1.0000000   1.0000000   1.000000
12 months   ki1112895-Guatemala BSC    GUATEMALA                      1                    0                 1.3652893   1.0466912   1.780864
12 months   ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000          NA         NA
12 months   ki1119695-PROBIT           BELARUS                        1                    0                 1.4537754          NA         NA
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.1504113   1.0472797   1.263699
12 months   ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.000000
12 months   ki1135781-COHORTS          GUATEMALA                      1                    0                 1.0701220   0.9091609   1.259580
12 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.000000
12 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                 1.0110350   0.7781270   1.313657
18 months   ki0047075b-MAL-ED          BRAZIL                         0                    0                 1.0000000   1.0000000   1.000000
18 months   ki0047075b-MAL-ED          BRAZIL                         1                    0                 1.3373373   0.6990140   2.558563
18 months   ki0047075b-MAL-ED          PERU                           0                    0                 1.0000000   1.0000000   1.000000
18 months   ki0047075b-MAL-ED          PERU                           1                    0                 0.8794521   0.6471138   1.195208
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.000000
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 1.0729825   0.8613220   1.336656
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.9602698   0.7690985   1.198960
18 months   ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000          NA         NA
18 months   ki1119695-PROBIT           BELARUS                        1                    0                 1.5466340          NA         NA
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.1679526   1.0735309   1.270679
18 months   ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.000000
18 months   ki1135781-COHORTS          GUATEMALA                      1                    0                 1.0466454   0.9249449   1.184359
18 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.000000
18 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                 0.9790522   0.7980330   1.201132
24 months   ki0047075b-MAL-ED          BRAZIL                         0                    0                 1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED          BRAZIL                         1                    0                 1.3025210   0.6210170   2.731908
24 months   ki0047075b-MAL-ED          PERU                           0                    0                 1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED          PERU                           1                    0                 0.8239796   0.6040178   1.124044
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    0                 1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    0                 1.0811752   0.8862095   1.319033
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 0.9532181   0.7366212   1.233503
24 months   ki1119695-PROBIT           BELARUS                        0                    0                 1.0000000          NA         NA
24 months   ki1119695-PROBIT           BELARUS                        1                    0                 1.2085851          NA         NA
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1                    0                 1.0822481   0.9766214   1.199299
24 months   ki1135781-COHORTS          GUATEMALA                      0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1135781-COHORTS          GUATEMALA                      1                    0                 0.9992958   0.9021915   1.106852
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1135781-COHORTS          PHILIPPINES                    1                    0                 0.9791140   0.8415882   1.139113


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
3 months    ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0158820   -0.0078083   0.0395723
3 months    ki0047075b-MAL-ED          PERU                           0                    NA                 0.0012438   -0.0180890   0.0205766
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0452374    0.0014257   0.0890491
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0004899   -0.0035228   0.0045025
3 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.0014045           NA          NA
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0016926   -0.0001344   0.0035196
3 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0100093   -0.0039027   0.0239214
3 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0010822   -0.0011467   0.0033111
6 months    ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0070157   -0.0154783   0.0295096
6 months    ki0047075b-MAL-ED          PERU                           0                    NA                -0.0065368   -0.0274849   0.0144113
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0396080   -0.0113147   0.0905307
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0024680   -0.0075600   0.0026239
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                 0.0186618   -0.0025515   0.0398751
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.0018342           NA          NA
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0025863    0.0000917   0.0050808
6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0084481   -0.0202521   0.0371483
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0018657   -0.0009271   0.0046584
12 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0051584   -0.0184860   0.0288028
12 months   ki0047075b-MAL-ED          PERU                           0                    NA                -0.0066916   -0.0286683   0.0152851
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0196536   -0.0348194   0.0741266
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0005460   -0.0059487   0.0070406
12 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                 0.0211227    0.0000009   0.0422445
12 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.0023578           NA          NA
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0034664    0.0009857   0.0059472
12 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0050109   -0.0074230   0.0174448
12 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0001280   -0.0029416   0.0031975
18 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0104019   -0.0154467   0.0362505
18 months   ki0047075b-MAL-ED          PERU                           0                    NA                -0.0101118   -0.0332868   0.0130631
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0177439   -0.0377517   0.0732395
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0014868   -0.0094972   0.0065236
18 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.0029315           NA          NA
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0050550    0.0020903   0.0080198
18 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0041090   -0.0072757   0.0154936
18 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0003045   -0.0032161   0.0026072
24 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0079179   -0.0166880   0.0325237
24 months   ki0047075b-MAL-ED          PERU                           0                    NA                -0.0166586   -0.0419695   0.0086522
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0217175   -0.0337609   0.0771959
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0018955   -0.0119012   0.0081102
24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.0017458           NA          NA
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0036884   -0.0013070   0.0086838
24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0000683   -0.0099691   0.0098326
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0003793   -0.0030733   0.0023147


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
3 months    ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0973818   -0.0580956   0.2300132
3 months    ki0047075b-MAL-ED          PERU                           0                    NA                 0.0037313   -0.0559886   0.0600739
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.1732262   -0.0111887   0.3240085
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0047819   -0.0351644   0.0431868
3 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.0189564           NA          NA
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0080692   -0.0006773   0.0167392
3 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0370506   -0.0157567   0.0871126
3 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0075031   -0.0080621   0.0228280
6 months    ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0382353   -0.0922097   0.1531010
6 months    ki0047075b-MAL-ED          PERU                           0                    NA                -0.0147470   -0.0631491   0.0314515
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.1032093   -0.0399273   0.2266444
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0122903   -0.0379572   0.0127419
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                 0.0588735   -0.0103760   0.1233768
6 months    ki1119695-PROBIT           BELARUS                        0                    NA                 0.0175912           NA          NA
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0087774    0.0002758   0.0172067
6 months    ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0237603   -0.0604053   0.1012456
6 months    ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0074816   -0.0037775   0.0186145
12 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0254237   -0.0982473   0.1351684
12 months   ki0047075b-MAL-ED          PERU                           0                    NA                -0.0129052   -0.0562201   0.0286335
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0417236   -0.0812874   0.1507404
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0017141   -0.0188852   0.0218969
12 months   ki1112895-Guatemala BSC    GUATEMALA                      0                    NA                 0.0395679   -0.0011365   0.0786174
12 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.0161868           NA          NA
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0091949    0.0025920   0.0157541
12 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0069634   -0.0104838   0.0241093
12 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                 0.0002911   -0.0067141   0.0072474
18 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0448436   -0.0730704   0.1498007
18 months   ki0047075b-MAL-ED          PERU                           0                    NA                -0.0150444   -0.0501993   0.0189336
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0318384   -0.0731381   0.1265458
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0036652   -0.0236074   0.0158886
18 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.0187290           NA          NA
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0102888    0.0042316   0.0163092
18 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                 0.0049378   -0.0088524   0.0185395
18 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0004917   -0.0052049   0.0041994
24 months   ki0047075b-MAL-ED          BRAZIL                         0                    NA                 0.0348387   -0.0795305   0.1370912
24 months   ki0047075b-MAL-ED          PERU                           0                    NA                -0.0231311   -0.0591171   0.0116323
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0                    NA                 0.0352727   -0.0593328   0.1214294
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                -0.0043651   -0.0276745   0.0184157
24 months   ki1119695-PROBIT           BELARUS                        0                    NA                 0.0084680           NA          NA
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0                    NA                 0.0051495   -0.0018554   0.0121054
24 months   ki1135781-COHORTS          GUATEMALA                      0                    NA                -0.0000761   -0.0111825   0.0109083
24 months   ki1135781-COHORTS          PHILIPPINES                    0                    NA                -0.0005036   -0.0040875   0.0030675
