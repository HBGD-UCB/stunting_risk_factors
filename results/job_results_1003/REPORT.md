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

**Intervention Variable:** sex

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                    country                        A            n     nA   nAY0   nAY1
-------------------------  -----------------------------  -------  -----  -----  -----  -----
ki0047075b-MAL-ED          BANGLADESH                     Female     241    126    123      3
ki0047075b-MAL-ED          BANGLADESH                     Male       241    115    107      8
ki0047075b-MAL-ED          BRAZIL                         Female     220    106     94     12
ki0047075b-MAL-ED          BRAZIL                         Male       220    114    103     11
ki0047075b-MAL-ED          INDIA                          Female     244    133    123     10
ki0047075b-MAL-ED          INDIA                          Male       244    111    102      9
ki0047075b-MAL-ED          NEPAL                          Female     237    110    105      5
ki0047075b-MAL-ED          NEPAL                          Male       237    127    117     10
ki0047075b-MAL-ED          PERU                           Female     276    130    119     11
ki0047075b-MAL-ED          PERU                           Male       276    146    128     18
ki0047075b-MAL-ED          SOUTH AFRICA                   Female     296    149    134     15
ki0047075b-MAL-ED          SOUTH AFRICA                   Male       296    147    131     16
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female     248    127    125      2
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male       248    121    121      0
ki1000108-CMC-V-BCS-2002   INDIA                          Female     370    185    170     15
ki1000108-CMC-V-BCS-2002   INDIA                          Male       370    185    177      8
ki1000108-IRC              INDIA                          Female     410    185    168     17
ki1000108-IRC              INDIA                          Male       410    225    198     27
ki1000109-EE               PAKISTAN                       Female     124     66     66      0
ki1000109-EE               PAKISTAN                       Male       124     58     58      0
ki1000109-ResPak           PAKISTAN                       Female     126     60     60      0
ki1000109-ResPak           PAKISTAN                       Male       126     66     66      0
ki1017093b-PROVIDE         BANGLADESH                     Female     686    329    315     14
ki1017093b-PROVIDE         BANGLADESH                     Male       686    357    342     15
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female    2204   1118   1116      2
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male      2204   1086   1086      0
ki1101329-Keneba           GAMBIA                         Female    2431   1166   1091     75
ki1101329-Keneba           GAMBIA                         Male      2431   1265   1172     93
ki1113344-GMS-Nepal        NEPAL                          Female     593    283    275      8
ki1113344-GMS-Nepal        NEPAL                          Male       593    310    299     11
ki1114097-CMIN             BANGLADESH                     Female     259    113    108      5
ki1114097-CMIN             BANGLADESH                     Male       259    146    138      8
ki1114097-CMIN             PERU                           Female     721    334    334      0
ki1114097-CMIN             PERU                           Male       721    387    385      2
ki1114097-CONTENT          PERU                           Female     210    105    101      4
ki1114097-CONTENT          PERU                           Male       210    105     90     15


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
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1101329-Keneba, country: GAMBIA
* studyid: ki1113344-GMS-Nepal, country: NEPAL
* studyid: ki1114097-CMIN, country: BANGLADESH
* studyid: ki1114097-CMIN, country: PERU
* studyid: ki1114097-CONTENT, country: PERU

### Dropped Strata

Some strata were dropped due to rare outcomes:

* studyid: ki0047075b-MAL-ED, country: BANGLADESH
* studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1000109-EE, country: PAKISTAN
* studyid: ki1000109-ResPak, country: PAKISTAN
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1114097-CMIN, country: PERU
* studyid: ki1114097-CONTENT, country: PERU

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/971994c3-1197-45ef-a96a-a305f73db793/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->


```
## Warning: Removed 11 rows containing missing values (geom_errorbar).
```

![](/tmp/971994c3-1197-45ef-a96a-a305f73db793/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/971994c3-1197-45ef-a96a-a305f73db793/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/971994c3-1197-45ef-a96a-a305f73db793/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                    country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          BRAZIL         Female               NA                0.1132075   0.0527524   0.1736627
ki0047075b-MAL-ED          BRAZIL         Male                 NA                0.0964912   0.0421668   0.1508156
ki0047075b-MAL-ED          INDIA          Female               NA                0.0751880   0.0302809   0.1200951
ki0047075b-MAL-ED          INDIA          Male                 NA                0.0810811   0.0301976   0.1319646
ki0047075b-MAL-ED          NEPAL          Female               NA                0.0454545   0.0064463   0.0844628
ki0047075b-MAL-ED          NEPAL          Male                 NA                0.0787402   0.0317990   0.1256813
ki0047075b-MAL-ED          PERU           Female               NA                0.0846154   0.0366872   0.1325436
ki0047075b-MAL-ED          PERU           Male                 NA                0.1232877   0.0698622   0.1767131
ki0047075b-MAL-ED          SOUTH AFRICA   Female               NA                0.1006711   0.0522760   0.1490663
ki0047075b-MAL-ED          SOUTH AFRICA   Male                 NA                0.1088435   0.0584120   0.1592751
ki1000108-CMC-V-BCS-2002   INDIA          Female               NA                0.0810811   0.0416945   0.1204677
ki1000108-CMC-V-BCS-2002   INDIA          Male                 NA                0.0432432   0.0138931   0.0725934
ki1000108-IRC              INDIA          Female               NA                0.0918919   0.0502146   0.1335692
ki1000108-IRC              INDIA          Male                 NA                0.1200000   0.0774873   0.1625127
ki1017093b-PROVIDE         BANGLADESH     Female               NA                0.0425532   0.0207264   0.0643800
ki1017093b-PROVIDE         BANGLADESH     Male                 NA                0.0420168   0.0211901   0.0628435
ki1101329-Keneba           GAMBIA         Female               NA                0.0643225   0.0502383   0.0784067
ki1101329-Keneba           GAMBIA         Male                 NA                0.0735178   0.0591329   0.0879027
ki1113344-GMS-Nepal        NEPAL          Female               NA                0.0282686   0.0089424   0.0475947
ki1113344-GMS-Nepal        NEPAL          Male                 NA                0.0354839   0.0148726   0.0560951
ki1114097-CMIN             BANGLADESH     Female               NA                0.0442478   0.0062580   0.0822376
ki1114097-CMIN             BANGLADESH     Male                 NA                0.0547945   0.0178080   0.0917810


### Parameter: E(Y)


studyid                    country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          BRAZIL         NA                   NA                0.1045455   0.1034392   0.1056517
ki0047075b-MAL-ED          INDIA          NA                   NA                0.0778689   0.0774999   0.0782378
ki0047075b-MAL-ED          NEPAL          NA                   NA                0.0632911   0.0611733   0.0654090
ki0047075b-MAL-ED          PERU           NA                   NA                0.1050725   0.1027910   0.1073540
ki0047075b-MAL-ED          SOUTH AFRICA   NA                   NA                0.1047297   0.1042635   0.1051960
ki1000108-CMC-V-BCS-2002   INDIA          NA                   NA                0.0621622   0.0602318   0.0640925
ki1000108-IRC              INDIA          NA                   NA                0.1073171   0.1059615   0.1086726
ki1017093b-PROVIDE         BANGLADESH     NA                   NA                0.0422741   0.0422540   0.0422941
ki1101329-Keneba           GAMBIA         NA                   NA                0.0691074   0.0689247   0.0692900
ki1113344-GMS-Nepal        NEPAL          NA                   NA                0.0320405   0.0317502   0.0323308
ki1114097-CMIN             BANGLADESH     NA                   NA                0.0501931   0.0495548   0.0508313


### Parameter: RR


studyid                    country        intervention_level   baseline_level     estimate    ci_lower   ci_upper
-------------------------  -------------  -------------------  ---------------  ----------  ----------  ---------
ki0047075b-MAL-ED          BRAZIL         Female               Female            1.0000000   1.0000000   1.000000
ki0047075b-MAL-ED          BRAZIL         Male                 Female            0.8523392   0.3922913   1.851895
ki0047075b-MAL-ED          INDIA          Female               Female            1.0000000   1.0000000   1.000000
ki0047075b-MAL-ED          INDIA          Male                 Female            1.0783784   0.4534410   2.564611
ki0047075b-MAL-ED          NEPAL          Female               Female            1.0000000   1.0000000   1.000000
ki0047075b-MAL-ED          NEPAL          Male                 Female            1.7322834   0.6092737   4.925218
ki0047075b-MAL-ED          PERU           Female               Female            1.0000000   1.0000000   1.000000
ki0047075b-MAL-ED          PERU           Male                 Female            1.4570361   0.7140720   2.973025
ki0047075b-MAL-ED          SOUTH AFRICA   Female               Female            1.0000000   1.0000000   1.000000
ki0047075b-MAL-ED          SOUTH AFRICA   Male                 Female            1.0811791   0.5545404   2.107959
ki1000108-CMC-V-BCS-2002   INDIA          Female               Female            1.0000000   1.0000000   1.000000
ki1000108-CMC-V-BCS-2002   INDIA          Male                 Female            0.5333334   0.2314818   1.228798
ki1000108-IRC              INDIA          Female               Female            1.0000000   1.0000000   1.000000
ki1000108-IRC              INDIA          Male                 Female            1.3058824   0.7344500   2.321913
ki1017093b-PROVIDE         BANGLADESH     Female               Female            1.0000000   1.0000000   1.000000
ki1017093b-PROVIDE         BANGLADESH     Male                 Female            0.9873950   0.4838492   2.014985
ki1101329-Keneba           GAMBIA         Female               Female            1.0000000   1.0000000   1.000000
ki1101329-Keneba           GAMBIA         Male                 Female            1.1429565   0.8521178   1.533062
ki1113344-GMS-Nepal        NEPAL          Female               Female            1.0000000   1.0000000   1.000000
ki1113344-GMS-Nepal        NEPAL          Male                 Female            1.2552419   0.5118229   3.078472
ki1114097-CMIN             BANGLADESH     Female               Female            1.0000000   1.0000000   1.000000
ki1114097-CMIN             BANGLADESH     Male                 Female            1.2383561   0.4154651   3.691106


### Parameter: PAR


studyid                    country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
-------------------------  -------------  -------------------  ---------------  -----------  -----------  ----------
ki0047075b-MAL-ED          BRAZIL         Female               NA                -0.0086621   -0.0691273   0.0518032
ki0047075b-MAL-ED          INDIA          Female               NA                 0.0026809   -0.0422277   0.0475895
ki0047075b-MAL-ED          NEPAL          Female               NA                 0.0178366   -0.0212291   0.0569023
ki0047075b-MAL-ED          PERU           Female               NA                 0.0204571   -0.0275254   0.0684395
ki0047075b-MAL-ED          SOUTH AFRICA   Female               NA                 0.0040586   -0.0443388   0.0524560
ki1000108-CMC-V-BCS-2002   INDIA          Female               NA                -0.0189189   -0.0583528   0.0205149
ki1000108-IRC              INDIA          Female               NA                 0.0154252   -0.0262742   0.0571245
ki1017093b-PROVIDE         BANGLADESH     Female               NA                -0.0002791   -0.0221060   0.0215477
ki1101329-Keneba           GAMBIA         Female               NA                 0.0047849   -0.0093005   0.0188703
ki1113344-GMS-Nepal        NEPAL          Female               NA                 0.0037719   -0.0155565   0.0231003
ki1114097-CMIN             BANGLADESH     Female               NA                 0.0059453   -0.0320499   0.0439405


### Parameter: PAF


studyid                    country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
-------------------------  -------------  -------------------  ---------------  -----------  -----------  ----------
ki0047075b-MAL-ED          BRAZIL         Female               NA                -0.0828548   -0.8473016   0.3652501
ki0047075b-MAL-ED          INDIA          Female               NA                 0.0344282   -0.7546131   0.4686413
ki0047075b-MAL-ED          NEPAL          Female               NA                 0.2818182   -0.6952021   0.6957383
ki0047075b-MAL-ED          PERU           Female               NA                 0.1946950   -0.4195019   0.5431382
ki0047075b-MAL-ED          SOUTH AFRICA   Female               NA                 0.0387530   -0.5546052   0.4056395
ki1000108-CMC-V-BCS-2002   INDIA          Female               NA                -0.3043478   -1.1222196   0.1983284
ki1000108-IRC              INDIA          Female               NA                 0.1437346   -0.3479006   0.4560501
ki1017093b-PROVIDE         BANGLADESH     Female               NA                -0.0066031   -0.6812065   0.3973080
ki1101329-Keneba           GAMBIA         Female               NA                 0.0692385   -0.1586161   0.2522831
ki1113344-GMS-Nepal        NEPAL          Female               NA                 0.1177236   -0.7480032   0.5546853
ki1114097-CMIN             BANGLADESH     Female               NA                 0.1184479   -1.0804684   0.6264620
