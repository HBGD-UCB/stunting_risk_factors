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
ki0047075b-MAL-ED          BANGLADESH                     Female     247    128    125      3
ki0047075b-MAL-ED          BANGLADESH                     Male       247    119    114      5
ki0047075b-MAL-ED          BRAZIL                         Female     223    108     97     11
ki0047075b-MAL-ED          BRAZIL                         Male       223    115    108      7
ki0047075b-MAL-ED          INDIA                          Female     246    135    128      7
ki0047075b-MAL-ED          INDIA                          Male       246    111    105      6
ki0047075b-MAL-ED          NEPAL                          Female     238    110    108      2
ki0047075b-MAL-ED          NEPAL                          Male       238    128    119      9
ki0047075b-MAL-ED          PERU                           Female     284    133    126      7
ki0047075b-MAL-ED          PERU                           Male       284    151    139     12
ki0047075b-MAL-ED          SOUTH AFRICA                   Female     302    152    140     12
ki0047075b-MAL-ED          SOUTH AFRICA                   Male       302    150    143      7
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Female     253    128    127      1
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Male       253    125    125      0
ki1000108-CMC-V-BCS-2002   INDIA                          Female     370    185    175     10
ki1000108-CMC-V-BCS-2002   INDIA                          Male       370    185    178      7
ki1000108-IRC              INDIA                          Female     410    185    175     10
ki1000108-IRC              INDIA                          Male       410    225    207     18
ki1000109-EE               PAKISTAN                       Female     175     96     96      0
ki1000109-EE               PAKISTAN                       Male       175     79     79      0
ki1000109-ResPak           PAKISTAN                       Female     166     77     77      0
ki1000109-ResPak           PAKISTAN                       Male       166     89     89      0
ki1017093b-PROVIDE         BANGLADESH                     Female     690    330    319     11
ki1017093b-PROVIDE         BANGLADESH                     Male       690    360    349     11
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Female    2276   1145   1143      2
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Male      2276   1131   1131      0
ki1101329-Keneba           GAMBIA                         Female    2468   1182   1152     30
ki1101329-Keneba           GAMBIA                         Male      2468   1286   1236     50
ki1113344-GMS-Nepal        NEPAL                          Female     594    284    277      7
ki1113344-GMS-Nepal        NEPAL                          Male       594    310    302      8
ki1114097-CMIN             BANGLADESH                     Female     259    113    109      4
ki1114097-CMIN             BANGLADESH                     Male       259    146    139      7
ki1114097-CMIN             PERU                           Female     738    344    344      0
ki1114097-CMIN             PERU                           Male       738    394    393      1
ki1114097-CONTENT          PERU                           Female     214    106    103      3
ki1114097-CONTENT          PERU                           Male       214    108     97     11


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
* studyid: ki0047075b-MAL-ED, country: NEPAL
* studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1000109-EE, country: PAKISTAN
* studyid: ki1000109-ResPak, country: PAKISTAN
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
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
![](/tmp/2ecb04b9-dffe-4740-9246-c2601cf4bd07/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->


```
## Warning: Removed 9 rows containing missing values (geom_errorbar).
```

![](/tmp/2ecb04b9-dffe-4740-9246-c2601cf4bd07/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/2ecb04b9-dffe-4740-9246-c2601cf4bd07/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/2ecb04b9-dffe-4740-9246-c2601cf4bd07/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid                    country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          BRAZIL         Female               NA                0.1018519   0.0446815   0.1590222
ki0047075b-MAL-ED          BRAZIL         Male                 NA                0.0608696   0.0170732   0.1046659
ki0047075b-MAL-ED          INDIA          Female               NA                0.0518519   0.0143730   0.0893307
ki0047075b-MAL-ED          INDIA          Male                 NA                0.0540541   0.0119020   0.0962061
ki0047075b-MAL-ED          PERU           Female               NA                0.0526316   0.0146152   0.0906480
ki0047075b-MAL-ED          PERU           Male                 NA                0.0794702   0.0362540   0.1226864
ki0047075b-MAL-ED          SOUTH AFRICA   Female               NA                0.0789474   0.0360078   0.1218869
ki0047075b-MAL-ED          SOUTH AFRICA   Male                 NA                0.0466667   0.0128564   0.0804769
ki1000108-CMC-V-BCS-2002   INDIA          Female               NA                0.0540541   0.0214255   0.0866826
ki1000108-CMC-V-BCS-2002   INDIA          Male                 NA                0.0378378   0.0103059   0.0653698
ki1000108-IRC              INDIA          Female               NA                0.0540541   0.0214299   0.0866782
ki1000108-IRC              INDIA          Male                 NA                0.0800000   0.0445084   0.1154916
ki1017093b-PROVIDE         BANGLADESH     Female               NA                0.0333333   0.0139520   0.0527147
ki1017093b-PROVIDE         BANGLADESH     Male                 NA                0.0305556   0.0127638   0.0483473
ki1101329-Keneba           GAMBIA         Female               NA                0.0253807   0.0164127   0.0343487
ki1101329-Keneba           GAMBIA         Male                 NA                0.0388802   0.0283128   0.0494477
ki1113344-GMS-Nepal        NEPAL          Female               NA                0.0246479   0.0066000   0.0426957
ki1113344-GMS-Nepal        NEPAL          Male                 NA                0.0258065   0.0081412   0.0434717


### Parameter: E(Y)


studyid                    country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED          BRAZIL         NA                   NA                0.0807175   0.0448848   0.1165502
ki0047075b-MAL-ED          INDIA          NA                   NA                0.0528455   0.0248312   0.0808598
ki0047075b-MAL-ED          PERU           NA                   NA                0.0669014   0.0377918   0.0960110
ki0047075b-MAL-ED          SOUTH AFRICA   NA                   NA                0.0629139   0.0354838   0.0903440
ki1000108-CMC-V-BCS-2002   INDIA          NA                   NA                0.0459459   0.0245838   0.0673081
ki1000108-IRC              INDIA          NA                   NA                0.0682927   0.0438464   0.0927390
ki1017093b-PROVIDE         BANGLADESH     NA                   NA                0.0318841   0.0187654   0.0450027
ki1101329-Keneba           GAMBIA         NA                   NA                0.0324149   0.0254265   0.0394034
ki1113344-GMS-Nepal        NEPAL          NA                   NA                0.0252525   0.0126250   0.0378801


### Parameter: RR


studyid                    country        intervention_level   baseline_level     estimate    ci_lower   ci_upper
-------------------------  -------------  -------------------  ---------------  ----------  ----------  ---------
ki0047075b-MAL-ED          BRAZIL         Female               Female            1.0000000   1.0000000   1.000000
ki0047075b-MAL-ED          BRAZIL         Male                 Female            0.5976285   0.2399450   1.488507
ki0047075b-MAL-ED          INDIA          Female               Female            1.0000000   1.0000000   1.000000
ki0047075b-MAL-ED          INDIA          Male                 Female            1.0424710   0.3599889   3.018832
ki0047075b-MAL-ED          PERU           Female               Female            1.0000000   1.0000000   1.000000
ki0047075b-MAL-ED          PERU           Male                 Female            1.5099338   0.6113613   3.729219
ki0047075b-MAL-ED          SOUTH AFRICA   Female               Female            1.0000000   1.0000000   1.000000
ki0047075b-MAL-ED          SOUTH AFRICA   Male                 Female            0.5911111   0.2389033   1.462568
ki1000108-CMC-V-BCS-2002   INDIA          Female               Female            1.0000000   1.0000000   1.000000
ki1000108-CMC-V-BCS-2002   INDIA          Male                 Female            0.7000000   0.2719624   1.801719
ki1000108-IRC              INDIA          Female               Female            1.0000000   1.0000000   1.000000
ki1000108-IRC              INDIA          Male                 Female            1.4800000   0.6997599   3.130216
ki1017093b-PROVIDE         BANGLADESH     Female               Female            1.0000000   1.0000000   1.000000
ki1017093b-PROVIDE         BANGLADESH     Male                 Female            0.9166667   0.4025715   2.087276
ki1101329-Keneba           GAMBIA         Female               Female            1.0000000   1.0000000   1.000000
ki1101329-Keneba           GAMBIA         Male                 Female            1.5318818   0.9809001   2.392356
ki1113344-GMS-Nepal        NEPAL          Female               Female            1.0000000   1.0000000   1.000000
ki1113344-GMS-Nepal        NEPAL          Male                 Female            1.0470046   0.3842616   2.852793


### Parameter: PAR


studyid                    country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
-------------------------  -------------  -------------------  ---------------  -----------  -----------  ----------
ki0047075b-MAL-ED          BRAZIL         Female               NA                -0.0211344   -0.0583712   0.0161025
ki0047075b-MAL-ED          INDIA          Female               NA                 0.0009937   -0.0244575   0.0264448
ki0047075b-MAL-ED          PERU           Female               NA                 0.0142698   -0.0163728   0.0449124
ki0047075b-MAL-ED          SOUTH AFRICA   Female               NA                -0.0160335   -0.0432401   0.0111732
ki1000108-CMC-V-BCS-2002   INDIA          Female               NA                -0.0081081   -0.0294703   0.0132540
ki1000108-IRC              INDIA          Female               NA                 0.0142386   -0.0122465   0.0407237
ki1017093b-PROVIDE         BANGLADESH     Female               NA                -0.0014493   -0.0151763   0.0122777
ki1101329-Keneba           GAMBIA         Female               NA                 0.0070342   -0.0001927   0.0142611
ki1113344-GMS-Nepal        NEPAL          Female               NA                 0.0006046   -0.0125754   0.0137846


### Parameter: PAF


studyid                    country        intervention_level   baseline_level      estimate     ci_lower    ci_upper
-------------------------  -------------  -------------------  ---------------  -----------  -----------  ----------
ki0047075b-MAL-ED          BRAZIL         Female               NA                -0.2618313   -0.8022114   0.1165197
ki0047075b-MAL-ED          INDIA          Female               NA                 0.0188034   -0.6028241   0.3993435
ki0047075b-MAL-ED          PERU           Female               NA                 0.2132964   -0.3932007   0.5557693
ki0047075b-MAL-ED          SOUTH AFRICA   Female               NA                -0.2548476   -0.7542463   0.1023823
ki1000108-CMC-V-BCS-2002   INDIA          Female               NA                -0.1764706   -0.7371124   0.2032277
ki1000108-IRC              INDIA          Female               NA                 0.2084942   -0.2815483   0.5111527
ki1017093b-PROVIDE         BANGLADESH     Female               NA                -0.0454545   -0.5775928   0.3071880
ki1101329-Keneba           GAMBIA         Female               NA                 0.2170051   -0.0346936   0.4074758
ki1113344-GMS-Nepal        NEPAL          Female               NA                 0.0239437   -0.6658956   0.4281238
