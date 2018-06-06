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

**Intervention Variable:** enstunt

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                    country                        A        n     nA   nAY0   nAY1
-------------------------  -----------------------------  ---  -----  -----  -----  -----
ki0047075b-MAL-ED          BANGLADESH                     0      239    207    206      1
ki0047075b-MAL-ED          BANGLADESH                     1      239     32     25      7
ki0047075b-MAL-ED          BRAZIL                         0      182    169    166      3
ki0047075b-MAL-ED          BRAZIL                         1      182     13      1     12
ki0047075b-MAL-ED          INDIA                          0      201    173    172      1
ki0047075b-MAL-ED          INDIA                          1      201     28     19      9
ki0047075b-MAL-ED          NEPAL                          0      172    155    154      1
ki0047075b-MAL-ED          NEPAL                          1      172     17     11      6
ki0047075b-MAL-ED          PERU                           0      269    244    233     11
ki0047075b-MAL-ED          PERU                           1      269     25     19      6
ki0047075b-MAL-ED          SOUTH AFRICA                   0      253    233    226      7
ki0047075b-MAL-ED          SOUTH AFRICA                   1      253     20     10     10
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0      120    105    105      0
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1      120     15     15      0
ki1000108-CMC-V-BCS-2002   INDIA                          0       98     82     80      2
ki1000108-CMC-V-BCS-2002   INDIA                          1       98     16     13      3
ki1000108-IRC              INDIA                          0      410    362    349     13
ki1000108-IRC              INDIA                          1      410     48     33     15
ki1000109-EE               PAKISTAN                       0        5      5      5      0
ki1000109-EE               PAKISTAN                       1        5      0      0      0
ki1000109-ResPak           PAKISTAN                       0       49     49     49      0
ki1000109-ResPak           PAKISTAN                       1       49      0      0      0
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0       19     18     18      0
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1       19      1      1      0
ki1101329-Keneba           GAMBIA                         0     2467   2235   2200     35
ki1101329-Keneba           GAMBIA                         1     2467    232    187     45
ki1113344-GMS-Nepal        NEPAL                          0       52     43     43      0
ki1113344-GMS-Nepal        NEPAL                          1       52      9      8      1
ki1114097-CMIN             BANGLADESH                     0        7      7      7      0
ki1114097-CMIN             BANGLADESH                     1        7      0      0      0
ki1114097-CMIN             PERU                           0      105    103    103      0
ki1114097-CMIN             PERU                           1      105      2      2      0
ki1114097-CONTENT          PERU                           0       54     48     47      1
ki1114097-CONTENT          PERU                           1       54      6      3      3


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
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1101329-Keneba, country: GAMBIA
* studyid: ki1113344-GMS-Nepal, country: NEPAL
* studyid: ki1114097-CMIN, country: BANGLADESH
* studyid: ki1114097-CMIN, country: PERU
* studyid: ki1114097-CONTENT, country: PERU

### Dropped Strata

Some strata were dropped due to rare outcomes:

* studyid: ki0047075b-MAL-ED, country: BANGLADESH
* studyid: ki0047075b-MAL-ED, country: BRAZIL
* studyid: ki0047075b-MAL-ED, country: INDIA
* studyid: ki0047075b-MAL-ED, country: NEPAL
* studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* studyid: ki1000109-EE, country: PAKISTAN
* studyid: ki1000109-ResPak, country: PAKISTAN
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1113344-GMS-Nepal, country: NEPAL
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
![](/tmp/5b975adc-e46d-4acf-90b8-3da556ea35ae/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->


```
## Warning: Removed 4 rows containing missing values (geom_errorbar).
```

![](/tmp/5b975adc-e46d-4acf-90b8-3da556ea35ae/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/5b975adc-e46d-4acf-90b8-3da556ea35ae/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/5b975adc-e46d-4acf-90b8-3da556ea35ae/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid             country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED   PERU           0                    NA                0.0450820   0.0189996   0.0711643
ki0047075b-MAL-ED   PERU           1                    NA                0.2400000   0.0722744   0.4077256
ki0047075b-MAL-ED   SOUTH AFRICA   0                    NA                0.0300429   0.0080806   0.0520052
ki0047075b-MAL-ED   SOUTH AFRICA   1                    NA                0.5000000   0.2804350   0.7195650
ki1000108-IRC       INDIA          0                    NA                0.0359116   0.0167205   0.0551027
ki1000108-IRC       INDIA          1                    NA                0.3125000   0.1812138   0.4437862
ki1101329-Keneba    GAMBIA         0                    NA                0.0156600   0.0105116   0.0208083
ki1101329-Keneba    GAMBIA         1                    NA                0.1939655   0.1430757   0.2448554


### Parameter: E(Y)


studyid             country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED   PERU           NA                   NA                0.0631970   0.0340662   0.0923279
ki0047075b-MAL-ED   SOUTH AFRICA   NA                   NA                0.0671937   0.0362831   0.0981043
ki1000108-IRC       INDIA          NA                   NA                0.0682927   0.0438464   0.0927390
ki1101329-Keneba    GAMBIA         NA                   NA                0.0324281   0.0254368   0.0394193


### Parameter: RR


studyid             country        intervention_level   baseline_level     estimate   ci_lower   ci_upper
------------------  -------------  -------------------  ---------------  ----------  ---------  ---------
ki0047075b-MAL-ED   PERU           0                    0                  1.000000   1.000000    1.00000
ki0047075b-MAL-ED   PERU           1                    0                  5.323636   2.148768   13.18947
ki0047075b-MAL-ED   SOUTH AFRICA   0                    0                  1.000000   1.000000    1.00000
ki0047075b-MAL-ED   SOUTH AFRICA   1                    0                 16.642857   7.093630   39.04696
ki1000108-IRC       INDIA          0                    0                  1.000000   1.000000    1.00000
ki1000108-IRC       INDIA          1                    0                  8.701923   4.409583   17.17248
ki1101329-Keneba    GAMBIA         0                    0                  1.000000   1.000000    1.00000
ki1101329-Keneba    GAMBIA         1                    0                 12.386084   8.133237   18.86273


### Parameter: PAR


studyid             country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED   PERU           0                    NA                0.0181151   0.0009463   0.0352838
ki0047075b-MAL-ED   SOUTH AFRICA   0                    NA                0.0371508   0.0137118   0.0605897
ki1000108-IRC       INDIA          0                    NA                0.0323811   0.0146171   0.0501451
ki1101329-Keneba    GAMBIA         0                    NA                0.0167681   0.0115377   0.0219985


### Parameter: PAF


studyid             country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED   PERU           0                    NA                0.2866442   0.0000928   0.4910762
ki0047075b-MAL-ED   SOUTH AFRICA   0                    NA                0.5528907   0.2226346   0.7428407
ki1000108-IRC       INDIA          0                    NA                0.4741515   0.2268928   0.6423308
ki1101329-Keneba    GAMBIA         0                    NA                0.5170861   0.3830629   0.6219942
