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

**Intervention Variable:** hdlvry

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        A        n     nA   nAY0   nAY1
----------  -------------------------  -----------------------------  ---  -----  -----  -----  -----
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          0      359    352    230    122
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          1      359      7      5      2
3 months    ki1000108-IRC              INDIA                          0      410    402    274    128
3 months    ki1000108-IRC              INDIA                          1      410      8      6      2
3 months    ki1000109-EE               PAKISTAN                       0      377    253     95    158
3 months    ki1000109-EE               PAKISTAN                       1      377    124     42     82
3 months    ki1000304b-SAS-CompFeed    INDIA                          0      406     78     54     24
3 months    ki1000304b-SAS-CompFeed    INDIA                          1      406    328    216    112
3 months    ki1017093b-PROVIDE         BANGLADESH                     0      700    519    426     93
3 months    ki1017093b-PROVIDE         BANGLADESH                     1      700    181    144     37
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     0      758    590    502     88
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     1      758    168    135     33
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0     2271   2232   2015    217
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1     2271     39     32      7
3 months    ki1113344-GMS-Nepal        NEPAL                          0      552    135    118     17
3 months    ki1113344-GMS-Nepal        NEPAL                          1      552    417    348     69
3 months    ki1135781-COHORTS          INDIA                          0     4962   3057   2530    527
3 months    ki1135781-COHORTS          INDIA                          1     4962   1905   1483    422
3 months    kiGH5241-JiVitA-3          BANGLADESH                     0      164     19     16      3
3 months    kiGH5241-JiVitA-3          BANGLADESH                     1      164    145     98     47
3 months    kiGH5241-JiVitA-4          BANGLADESH                     0     1146    276    215     61
3 months    kiGH5241-JiVitA-4          BANGLADESH                     1     1146    870    619    251
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0      364    357    172    185
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1      364      7      5      2
6 months    ki1000108-IRC              INDIA                          0      408    400    231    169
6 months    ki1000108-IRC              INDIA                          1      408      8      4      4
6 months    ki1000109-EE               PAKISTAN                       0      371    250     65    185
6 months    ki1000109-EE               PAKISTAN                       1      371    121     31     90
6 months    ki1000304b-SAS-CompFeed    INDIA                          0      324     67     37     30
6 months    ki1000304b-SAS-CompFeed    INDIA                          1      324    257    148    109
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0      105     25     18      7
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1      105     80     44     36
6 months    ki1017093b-PROVIDE         BANGLADESH                     0      640    478    359    119
6 months    ki1017093b-PROVIDE         BANGLADESH                     1      640    162    118     44
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0      736    572    401    171
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1      736    164    109     55
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0     2121   2085   1678    407
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1     2121     36     25     11
6 months    ki1113344-GMS-Nepal        NEPAL                          0      531    128     95     33
6 months    ki1113344-GMS-Nepal        NEPAL                          1      531    403    289    114
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0      129     17     14      3
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1      129    112     67     45
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0     1017    256    184     72
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1     1017    761    490    271
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          0      369    361    109    252
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          1      369      8      3      5
12 months   ki1000108-IRC              INDIA                          0      408    400    199    201
12 months   ki1000108-IRC              INDIA                          1      408      8      2      6
12 months   ki1000109-EE               PAKISTAN                       0      371    249     44    205
12 months   ki1000109-EE               PAKISTAN                       1      371    122     21    101
12 months   ki1000304b-SAS-CompFeed    INDIA                          0      368     75     35     40
12 months   ki1000304b-SAS-CompFeed    INDIA                          1      368    293    115    178
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          0       99     24      3     21
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          1       99     75     12     63
12 months   ki1017093b-PROVIDE         BANGLADESH                     0      609    454    307    147
12 months   ki1017093b-PROVIDE         BANGLADESH                     1      609    155    100     55
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     0      729    566    360    206
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     1      729    163     92     71
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0     1891   1860   1277    583
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1     1891     31     18     13
12 months   ki1113344-GMS-Nepal        NEPAL                          0      543    134     77     57
12 months   ki1113344-GMS-Nepal        NEPAL                          1      543    409    221    188
12 months   ki1135781-COHORTS          INDIA                          0     4747   2929   1936    993
12 months   ki1135781-COHORTS          INDIA                          1     4747   1818    907    911
12 months   kiGH5241-JiVitA-3          BANGLADESH                     0      158     17     14      3
12 months   kiGH5241-JiVitA-3          BANGLADESH                     1      158    141     86     55
12 months   kiGH5241-JiVitA-4          BANGLADESH                     0     1170    294    182    112
12 months   kiGH5241-JiVitA-4          BANGLADESH                     1     1170    876    476    400
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          0      370    362     55    307
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          1      370      8      2      6
18 months   ki1000108-IRC              INDIA                          0      409    401    177    224
18 months   ki1000108-IRC              INDIA                          1      409      8      2      6
18 months   ki1000109-EE               PAKISTAN                       0      361    245     26    219
18 months   ki1000109-EE               PAKISTAN                       1      361    116      6    110
18 months   ki1000304b-SAS-CompFeed    INDIA                          0      361     75     30     45
18 months   ki1000304b-SAS-CompFeed    INDIA                          1      361    286     75    211
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          0       93     25      3     22
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          1       93     68      7     61
18 months   ki1017093b-PROVIDE         BANGLADESH                     0      604    451    269    182
18 months   ki1017093b-PROVIDE         BANGLADESH                     1      604    153     83     70
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     0      715    555    321    234
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     1      715    160     77     83
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0     1375   1359    815    544
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1     1375     16      7      9
18 months   ki1113344-GMS-Nepal        NEPAL                          0      535    132     56     76
18 months   ki1113344-GMS-Nepal        NEPAL                          1      535    403    146    257
18 months   kiGH5241-JiVitA-3          BANGLADESH                     0      149     15      9      6
18 months   kiGH5241-JiVitA-3          BANGLADESH                     1      149    134     65     69
18 months   kiGH5241-JiVitA-4          BANGLADESH                     0     1140    285    141    144
18 months   kiGH5241-JiVitA-4          BANGLADESH                     1     1140    855    369    486
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0      370    362     27    335
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1      370      8      1      7
24 months   ki1000108-IRC              INDIA                          0      410    402    145    257
24 months   ki1000108-IRC              INDIA                          1      410      8      2      6
24 months   ki1000109-EE               PAKISTAN                       0      336    226     23    203
24 months   ki1000109-EE               PAKISTAN                       1      336    110      4    106
24 months   ki1000304b-SAS-CompFeed    INDIA                          0       33      8      5      3
24 months   ki1000304b-SAS-CompFeed    INDIA                          1       33     25      5     20
24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0        9      3      0      3
24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1        9      6      1      5
24 months   ki1017093b-PROVIDE         BANGLADESH                     0      582    433    229    204
24 months   ki1017093b-PROVIDE         BANGLADESH                     1      582    149     73     76
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0      634    484    250    234
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1      634    150     66     84
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0      906    896    509    387
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1      906     10      5      5
24 months   ki1113344-GMS-Nepal        NEPAL                          0      530    133     48     85
24 months   ki1113344-GMS-Nepal        NEPAL                          1      530    397    118    279
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0     1002    250    111    139
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1     1002    752    290    462


The following strata were considered:

* agecat: 12 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 12 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 12 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 12 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 12 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 12 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 12 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 18 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 18 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 18 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 18 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 18 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 18 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 18 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 18 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 18 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 18 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 3 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 3 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 3 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 3 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 3 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 3 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 3 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 3 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 3 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 3 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 12 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 12 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 12 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 12 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 18 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 18 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 18 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots

```
## Warning: Removed 20 rows containing missing values (geom_errorbar).
```

![](/tmp/ceee68f5-0f54-4a6c-bc7d-334efd149fdb/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->


```
## Warning: Removed 47 rows containing missing values (geom_errorbar).
```

![](/tmp/ceee68f5-0f54-4a6c-bc7d-334efd149fdb/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


```
## Warning: Removed 10 rows containing missing values (geom_errorbar).
```

![](/tmp/ceee68f5-0f54-4a6c-bc7d-334efd149fdb/REPORT_files/figure-html/plot_paf-1.png)<!-- -->


```
## Warning: Removed 10 rows containing missing values (geom_errorbar).
```

![](/tmp/ceee68f5-0f54-4a6c-bc7d-334efd149fdb/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki1000109-EE               PAKISTAN                       0                    NA                0.6245059   0.5647564   0.6842554
3 months    ki1000109-EE               PAKISTAN                       1                    NA                0.6612903   0.5778792   0.7447014
3 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.3076923          NA          NA
3 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.3414634          NA          NA
3 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.1791908   0.1461725   0.2122090
3 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.2044199   0.1456273   0.2632125
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.1491525   0.1203885   0.1779166
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.1964286   0.1363119   0.2565452
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.0972222   0.0849289   0.1095156
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1794872   0.0590194   0.2999549
3 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.1259259   0.0699106   0.1819412
3 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.1654676   0.1297690   0.2011663
3 months    ki1135781-COHORTS          INDIA                          0                    NA                0.1723912   0.1590002   0.1857823
3 months    ki1135781-COHORTS          INDIA                          1                    NA                0.2215223   0.2028724   0.2401722
3 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.2210145          NA          NA
3 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.2885057          NA          NA
6 months    ki1000109-EE               PAKISTAN                       0                    NA                0.7400000   0.6855539   0.7944461
6 months    ki1000109-EE               PAKISTAN                       1                    NA                0.7438017   0.6659159   0.8216874
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.4477612          NA          NA
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.4241245          NA          NA
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                0.2800000   0.1031515   0.4568485
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                0.4500000   0.3404610   0.5595390
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.2489540   0.2101598   0.2877481
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.2716049   0.2030589   0.3401510
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.2989510   0.2614089   0.3364932
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.3353659   0.2630602   0.4076715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.1952038   0.1781868   0.2122209
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.3055556   0.1550463   0.4560648
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.2578125   0.1819615   0.3336635
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.2828784   0.2388634   0.3268935
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.2812500          NA          NA
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.3561104          NA          NA
12 months   ki1000109-EE               PAKISTAN                       0                    NA                0.8232932   0.7758539   0.8707325
12 months   ki1000109-EE               PAKISTAN                       1                    NA                0.8278689   0.7607932   0.8949445
12 months   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.5333333          NA          NA
12 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.6075085          NA          NA
12 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.3237885   0.2807112   0.3668659
12 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.3548387   0.2794530   0.4302244
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.3639576   0.3242927   0.4036225
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.4355828   0.3594121   0.5117535
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.3134409   0.2923534   0.3345283
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.4193548   0.2456034   0.5931063
12 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.4253731   0.3415867   0.5091596
12 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.4596577   0.4113142   0.5080012
12 months   ki1135781-COHORTS          INDIA                          0                    NA                0.3390236   0.3218784   0.3561687
12 months   ki1135781-COHORTS          INDIA                          1                    NA                0.5011001   0.4781140   0.5240862
12 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.3809524          NA          NA
12 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.4566210          NA          NA
18 months   ki1000109-EE               PAKISTAN                       0                    NA                0.8938776   0.8552577   0.9324974
18 months   ki1000109-EE               PAKISTAN                       1                    NA                0.9482759   0.9079173   0.9886344
18 months   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                0.6000000          NA          NA
18 months   ki1000304b-SAS-CompFeed    INDIA                          1                    NA                0.7377622          NA          NA
18 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.4035477   0.3582313   0.4488640
18 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.4575163   0.3785106   0.5365221
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.4216216   0.3805092   0.4627340
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.5187500   0.4412759   0.5962241
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.4002943   0.3742355   0.4263532
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.5625000   0.3193376   0.8056624
18 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.5757576   0.4913669   0.6601482
18 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.6377171   0.5907450   0.6846892
18 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                0.4000000          NA          NA
18 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.5149254          NA          NA
18 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.5052632          NA          NA
18 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.5684211          NA          NA
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                0.4711316   0.4240748   0.5181885
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.5100671   0.4297311   0.5904031
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                0.4834711   0.4389156   0.5280265
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.5600000   0.4805003   0.6394997
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                0.4319196   0.3994677   0.4643716
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.5000000   0.1899313   0.8100687
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                0.6390977   0.5573999   0.7207956
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.7027708   0.6577705   0.7477711
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                0.5560000          NA          NA
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                0.6143617          NA          NA


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki1000109-EE               PAKISTAN                       NA                   NA                0.6366048   0.5879888   0.6852207
3 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.3349754          NA          NA
3 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1857143   0.1568859   0.2145427
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1596306   0.1335394   0.1857218
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0986350   0.0863690   0.1109009
3 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1557971   0.1255157   0.1860785
3 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.1912535   0.1803096   0.2021975
3 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2722513          NA          NA
6 months    ki1000109-EE               PAKISTAN                       NA                   NA                0.7412399   0.6966152   0.7858646
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.4290123          NA          NA
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.4095238   0.3150150   0.5040326
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2546875   0.2209066   0.2884684
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.3070652   0.2737175   0.3404129
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1970769   0.1801438   0.2140099
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.2768362   0.2387436   0.3149287
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.3372665          NA          NA
12 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.8247978   0.7860640   0.8635317
12 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.5923913          NA          NA
12 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3316913   0.2942672   0.3691154
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.3799726   0.3447141   0.4152311
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3151772   0.2942320   0.3361223
12 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.4511971   0.4093042   0.4930899
12 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.4010954   0.3871514   0.4150394
12 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.4376068          NA          NA
18 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.9113573   0.8819969   0.9407178
18 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.7091413          NA          NA
18 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.4172185   0.3778614   0.4565757
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.4433566   0.4069178   0.4797954
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4021818   0.3762549   0.4281087
18 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.6224299   0.5813129   0.6635469
18 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.5033557          NA          NA
18 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.5526316          NA          NA
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.4810997   0.4404722   0.5217271
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.5015773   0.4626267   0.5405279
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4326711   0.4003921   0.4649501
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.6867925   0.6472695   0.7263154
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.5998004          NA          NA


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
3 months    ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.000000
3 months    ki1000109-EE               PAKISTAN                       1                    0                 1.0589016   0.9038587   1.240540
3 months    ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.0000000          NA         NA
3 months    ki1000304b-SAS-CompFeed    INDIA                          1                    0                 1.1097561          NA         NA
3 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
3 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.1407949   0.8107094   1.605277
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.3169643   0.9172164   1.890933
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.8461538   0.9325057   3.654974
3 months    ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.000000
3 months    ki1113344-GMS-Nepal        NEPAL                          1                    0                 1.3140076   0.8014733   2.154303
3 months    ki1135781-COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.000000
3 months    ki1135781-COHORTS          INDIA                          1                    0                 1.2849975   1.1459184   1.440957
3 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000          NA         NA
3 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.3053703          NA         NA
6 months    ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1000109-EE               PAKISTAN                       1                    0                 1.0051374   0.8843934   1.142366
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.0000000          NA         NA
6 months    ki1000304b-SAS-CompFeed    INDIA                          1                    0                 0.9472114          NA         NA
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    0                 1.6071429   0.8167457   3.162439
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.0909845   0.8109688   1.467686
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.1218086   0.8740947   1.439723
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.5653153   0.9491931   2.581363
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.000000
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    0                 1.0972254   0.7865991   1.530517
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000          NA         NA
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.2661702          NA         NA
12 months   ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.000000
12 months   ki1000109-EE               PAKISTAN                       1                    0                 1.0055578   0.9103921   1.110671
12 months   ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.0000000          NA         NA
12 months   ki1000304b-SAS-CompFeed    INDIA                          1                    0                 1.1390785          NA         NA
12 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
12 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.0958964   0.8529136   1.408101
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.1967955   0.9739424   1.470641
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.3379074   0.8792816   2.035748
12 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.000000
12 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                 1.0805988   0.8643509   1.350949
12 months   ki1135781-COHORTS          INDIA                          0                    0                 1.0000000   1.0000000   1.000000
12 months   ki1135781-COHORTS          INDIA                          1                    0                 1.4780687   1.3805189   1.582512
12 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000          NA         NA
12 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.1986301          NA         NA
18 months   ki1000109-EE               PAKISTAN                       0                    0                 1.0000000   1.0000000   1.000000
18 months   ki1000109-EE               PAKISTAN                       1                    0                 1.0608566   0.9984314   1.127185
18 months   ki1000304b-SAS-CompFeed    INDIA                          0                    0                 1.0000000          NA         NA
18 months   ki1000304b-SAS-CompFeed    INDIA                          1                    0                 1.2296037          NA         NA
18 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
18 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.1337355   0.9226851   1.393061
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.2303686   1.0293751   1.470608
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.4052160   0.9075815   2.175708
18 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.000000
18 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                 1.1076139   0.9400412   1.305058
18 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    0                 1.0000000          NA         NA
18 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    0                 1.2873134          NA         NA
18 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000          NA         NA
18 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.1250000          NA         NA
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    0                 1.0826425   0.8984392   1.304612
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    0                 1.1582906   0.9779389   1.371903
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    0                 1.1576227   0.6198339   2.162015
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    0                 1.0000000   1.0000000   1.000000
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    0                 1.0996296   0.9531334   1.268642
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    0                 1.0000000          NA         NA
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    0                 1.1049671          NA         NA


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
3 months    ki1000109-EE               PAKISTAN                       0                    NA                 0.0120988   -0.0216938   0.0458915
3 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0272831           NA          NA
3 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0065235   -0.0109311   0.0239782
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0104781   -0.0043587   0.0253148
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0014127   -0.0007128   0.0035383
3 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0298712   -0.0203277   0.0800700
3 months    ki1135781-COHORTS          INDIA                          0                    NA                 0.0188623    0.0100227   0.0277019
3 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0512368           NA          NA
6 months    ki1000109-EE               PAKISTAN                       0                    NA                 0.0012399   -0.0297540   0.0322338
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.0187488           NA          NA
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.1295238   -0.0295807   0.2886284
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0057335   -0.0142179   0.0256849
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0081142   -0.0100727   0.0263011
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0018730   -0.0007685   0.0045145
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0190237   -0.0475395   0.0855869
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0560165           NA          NA
12 months   ki1000109-EE               PAKISTAN                       0                    NA                 0.0015047   -0.0255125   0.0285219
12 months   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0590580           NA          NA
12 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0079028   -0.0142218   0.0300273
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0160150   -0.0033091   0.0353391
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0017363   -0.0011964   0.0046689
12 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0258239   -0.0470482   0.0986960
12 months   ki1135781-COHORTS          INDIA                          0                    NA                 0.0620719    0.0508631   0.0732806
12 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0566545           NA          NA
18 months   ki1000109-EE               PAKISTAN                       0                    NA                 0.0174798   -0.0006604   0.0356200
18 months   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.1091413           NA          NA
18 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0136709   -0.0094765   0.0368183
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0217350    0.0018850   0.0415850
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0018875   -0.0011032   0.0048782
18 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0466723   -0.0261156   0.1194603
18 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.1033557           NA          NA
18 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0473684           NA          NA
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0099680   -0.0139077   0.0338438
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0181062   -0.0036038   0.0398162
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0007514   -0.0027207   0.0042236
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0476947   -0.0222105   0.1175999
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0438004           NA          NA


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
3 months    ki1000109-EE               PAKISTAN                       0                    NA                 0.0190053   -0.0355908   0.0707231
3 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0814480           NA          NA
3 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0351267   -0.0634920   0.1246004
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0656394   -0.0316425   0.1537479
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0143229   -0.0074045   0.0355818
3 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.1917313   -0.2018979   0.4564444
3 months    ki1135781-COHORTS          INDIA                          0                    NA                 0.0986246    0.0514083   0.1434906
3 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.1881968           NA          NA
6 months    ki1000109-EE               PAKISTAN                       0                    NA                 0.0016727   -0.0410295   0.0426233
6 months    ki1000304b-SAS-CompFeed    INDIA                          0                    NA                -0.0437024           NA          NA
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0                    NA                 0.3162791   -0.2062390   0.6124530
6 months    ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0225120   -0.0590289   0.0977746
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0264249   -0.0346317   0.0838784
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0095040   -0.0039777   0.0228046
6 months    ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0687181   -0.2055477   0.2805876
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.1660897           NA          NA
12 months   ki1000109-EE               PAKISTAN                       0                    NA                 0.0018243   -0.0314762   0.0340497
12 months   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.0996942           NA          NA
12 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0238256   -0.0452065   0.0882985
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0421477   -0.0101108   0.0917026
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0055089   -0.0038389   0.0147697
12 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0572342   -0.1189906   0.2057062
12 months   ki1135781-COHORTS          INDIA                          0                    NA                 0.1547559    0.1262728   0.1823104
12 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.1294643           NA          NA
18 months   ki1000109-EE               PAKISTAN                       0                    NA                 0.0191800   -0.0011147   0.0390632
18 months   ki1000304b-SAS-CompFeed    INDIA                          0                    NA                 0.1539062           NA          NA
18 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0327667   -0.0243707   0.0867171
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0490238    0.0030833   0.0928472
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0046931   -0.0027730   0.0121036
18 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0749841   -0.0499149   0.1850250
18 months   kiGH5241-JiVitA-3          BANGLADESH                     0                    NA                 0.2053333           NA          NA
18 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0857143           NA          NA
24 months   ki1017093b-PROVIDE         BANGLADESH                     0                    NA                 0.0207192   -0.0302137   0.0691340
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0                    NA                 0.0360985   -0.0082606   0.0785061
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0                    NA                 0.0017367   -0.0063211   0.0097300
24 months   ki1113344-GMS-Nepal        NEPAL                          0                    NA                 0.0694456   -0.0383842   0.1660779
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0                    NA                 0.0730250           NA          NA
