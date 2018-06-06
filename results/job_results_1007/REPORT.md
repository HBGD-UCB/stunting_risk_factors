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
ki0047075b-MAL-ED          BANGLADESH                     0      233    201    197      4
ki0047075b-MAL-ED          BANGLADESH                     1      233     32     25      7
ki0047075b-MAL-ED          BRAZIL                         0      179    166    158      8
ki0047075b-MAL-ED          BRAZIL                         1      179     13      1     12
ki0047075b-MAL-ED          INDIA                          0      199    171    164      7
ki0047075b-MAL-ED          INDIA                          1      199     28     19      9
ki0047075b-MAL-ED          NEPAL                          0      171    154    151      3
ki0047075b-MAL-ED          NEPAL                          1      171     17     11      6
ki0047075b-MAL-ED          PERU                           0      261    236    216     20
ki0047075b-MAL-ED          PERU                           1      261     25     19      6
ki0047075b-MAL-ED          SOUTH AFRICA                   0      249    229    212     17
ki0047075b-MAL-ED          SOUTH AFRICA                   1      249     20     10     10
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0      119    104    104      0
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1      119     15     15      0
ki1000108-CMC-V-BCS-2002   INDIA                          0       98     82     78      4
ki1000108-CMC-V-BCS-2002   INDIA                          1       98     16     13      3
ki1000108-IRC              INDIA                          0      410    362    333     29
ki1000108-IRC              INDIA                          1      410     48     33     15
ki1000109-EE               PAKISTAN                       0        3      3      3      0
ki1000109-EE               PAKISTAN                       1        3      0      0      0
ki1000109-ResPak           PAKISTAN                       0       32     32     32      0
ki1000109-ResPak           PAKISTAN                       1       32      0      0      0
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0       17     16     16      0
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1       17      1      1      0
ki1101329-Keneba           GAMBIA                         0     2430   2198   2076    122
ki1101329-Keneba           GAMBIA                         1     2430    232    186     46
ki1113344-GMS-Nepal        NEPAL                          0       52     43     42      1
ki1113344-GMS-Nepal        NEPAL                          1       52      9      8      1
ki1114097-CMIN             BANGLADESH                     0        7      7      7      0
ki1114097-CMIN             BANGLADESH                     1        7      0      0      0
ki1114097-CMIN             PERU                           0       99     97     97      0
ki1114097-CMIN             PERU                           1       99      2      2      0
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
![](/tmp/11cd0256-7313-47ea-a256-294d8ca03130/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->


```
## Warning: Removed 5 rows containing missing values (geom_errorbar).
```

![](/tmp/11cd0256-7313-47ea-a256-294d8ca03130/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/11cd0256-7313-47ea-a256-294d8ca03130/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/11cd0256-7313-47ea-a256-294d8ca03130/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid             country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED   INDIA          0                    NA                0.0409357   0.0111629   0.0707084
ki0047075b-MAL-ED   INDIA          1                    NA                0.3214286   0.1480070   0.4948501
ki0047075b-MAL-ED   PERU           0                    NA                0.0847458   0.0491453   0.1203462
ki0047075b-MAL-ED   PERU           1                    NA                0.2400000   0.0722648   0.4077352
ki0047075b-MAL-ED   SOUTH AFRICA   0                    NA                0.0742358   0.0402137   0.1082579
ki0047075b-MAL-ED   SOUTH AFRICA   1                    NA                0.5000000   0.2804280   0.7195720
ki1000108-IRC       INDIA          0                    NA                0.0801105   0.0521119   0.1081091
ki1000108-IRC       INDIA          1                    NA                0.3125000   0.1812138   0.4437862
ki1101329-Keneba    GAMBIA         0                    NA                0.0555050   0.0459311   0.0650789
ki1101329-Keneba    GAMBIA         1                    NA                0.1982759   0.1469613   0.2495905


### Parameter: E(Y)


studyid             country        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
ki0047075b-MAL-ED   INDIA          NA                   NA                0.0804020   0.0668170   0.0939871
ki0047075b-MAL-ED   PERU           NA                   NA                0.0996169   0.0940631   0.1051707
ki0047075b-MAL-ED   SOUTH AFRICA   NA                   NA                0.1084337   0.0940317   0.1228358
ki1000108-IRC       INDIA          NA                   NA                0.1073171   0.1000761   0.1145580
ki1101329-Keneba    GAMBIA         NA                   NA                0.0691358   0.0674673   0.0708043


### Parameter: RR


studyid             country        intervention_level   baseline_level    estimate   ci_lower    ci_upper
------------------  -------------  -------------------  ---------------  ---------  ---------  ----------
ki0047075b-MAL-ED   INDIA          0                    0                 1.000000   1.000000    1.000000
ki0047075b-MAL-ED   INDIA          1                    0                 7.852041   3.174647   19.420915
ki0047075b-MAL-ED   PERU           0                    0                 1.000000   1.000000    1.000000
ki0047075b-MAL-ED   PERU           1                    0                 2.832000   1.253014    6.400745
ki0047075b-MAL-ED   SOUTH AFRICA   0                    0                 1.000000   1.000000    1.000000
ki0047075b-MAL-ED   SOUTH AFRICA   1                    0                 6.735294   3.570229   12.706238
ki1000108-IRC       INDIA          0                    0                 1.000000   1.000000    1.000000
ki1000108-IRC       INDIA          1                    0                 3.900862   2.258523    6.737468
ki1101329-Keneba    GAMBIA         0                    0                 1.000000   1.000000    1.000000
ki1101329-Keneba    GAMBIA         1                    0                 3.572216   2.617368    4.875404


### Parameter: PAR


studyid             country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------------  -------------  -------------------  ---------------  ----------  -----------  ----------
ki0047075b-MAL-ED   INDIA          0                    NA                0.0394663    0.0067407   0.0721920
ki0047075b-MAL-ED   PERU           0                    NA                0.0148711   -0.0211600   0.0509022
ki0047075b-MAL-ED   SOUTH AFRICA   0                    NA                0.0341979   -0.0027469   0.0711428
ki1000108-IRC       INDIA          0                    NA                0.0272066   -0.0017132   0.0561264
ki1101329-Keneba    GAMBIA         0                    NA                0.0136308    0.0039126   0.0233490


### Parameter: PAF


studyid             country        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------------  -------------  -------------------  ---------------  ----------  -----------  ----------
ki0047075b-MAL-ED   INDIA          0                    NA                0.4908626   -0.0742651   0.7586993
ki0047075b-MAL-ED   PERU           0                    NA                0.1492829   -0.2996475   0.4431417
ki0047075b-MAL-ED   SOUTH AFRICA   0                    NA                0.3153809   -0.1032531   0.5751625
ki1000108-IRC       INDIA          0                    NA                0.2535158   -0.0656367   0.4770839
ki1101329-Keneba    GAMBIA         0                    NA                0.1971598    0.0444154   0.3254889
