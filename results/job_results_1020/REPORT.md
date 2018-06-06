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

**Intervention Variable:** hhwealth_quart

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* studyid
* country

## Data Summary

studyid                    country                        A               n    nA   nAY0   nAY1
-------------------------  -----------------------------  ----------  -----  ----  -----  -----
ki0047075b-MAL-ED          BANGLADESH                     Wealth Q4      80    26     24      2
ki0047075b-MAL-ED          BANGLADESH                     Wealth Q1      80     4      4      0
ki0047075b-MAL-ED          BANGLADESH                     Wealth Q2      80    15     14      1
ki0047075b-MAL-ED          BANGLADESH                     Wealth Q3      80    35     34      1
ki0047075b-MAL-ED          BRAZIL                         Wealth Q4       3     2      0      2
ki0047075b-MAL-ED          BRAZIL                         Wealth Q1       3     0      0      0
ki0047075b-MAL-ED          BRAZIL                         Wealth Q2       3     1      0      1
ki0047075b-MAL-ED          BRAZIL                         Wealth Q3       3     0      0      0
ki0047075b-MAL-ED          INDIA                          Wealth Q4      71    29     27      2
ki0047075b-MAL-ED          INDIA                          Wealth Q1      71     1      1      0
ki0047075b-MAL-ED          INDIA                          Wealth Q2      71    10      9      1
ki0047075b-MAL-ED          INDIA                          Wealth Q3      71    31     27      4
ki0047075b-MAL-ED          NEPAL                          Wealth Q4      42    21     20      1
ki0047075b-MAL-ED          NEPAL                          Wealth Q1      42    11     10      1
ki0047075b-MAL-ED          NEPAL                          Wealth Q2      42     6      5      1
ki0047075b-MAL-ED          NEPAL                          Wealth Q3      42     4      3      1
ki0047075b-MAL-ED          PERU                           Wealth Q4      35     1      1      0
ki0047075b-MAL-ED          PERU                           Wealth Q1      35    23     21      2
ki0047075b-MAL-ED          PERU                           Wealth Q2      35    10      8      2
ki0047075b-MAL-ED          PERU                           Wealth Q3      35     1      1      0
ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q4      68    13     11      2
ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q1      68    12     12      0
ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q2      68    24     22      2
ki0047075b-MAL-ED          SOUTH AFRICA                   Wealth Q3      68    19     14      5
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q4      60     0      0      0
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q1      60    39     39      0
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q2      60    21     21      0
ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Wealth Q3      60     0      0      0
ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q4     370    96     89      7
ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q1     370    91     87      4
ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q2     370    93     87      6
ki1000108-CMC-V-BCS-2002   INDIA                          Wealth Q3     370    90     84      6
ki1000108-IRC              INDIA                          Wealth Q4     410   100     87     13
ki1000108-IRC              INDIA                          Wealth Q1     410   105     98      7
ki1000108-IRC              INDIA                          Wealth Q2     410   102     91     11
ki1000108-IRC              INDIA                          Wealth Q3     410   103     90     13
ki1017093b-PROVIDE         BANGLADESH                     Wealth Q4     684   174    165      9
ki1017093b-PROVIDE         BANGLADESH                     Wealth Q1     684   173    168      5
ki1017093b-PROVIDE         BANGLADESH                     Wealth Q2     684   166    158      8
ki1017093b-PROVIDE         BANGLADESH                     Wealth Q3     684   171    164      7
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q4    2194   528    527      1
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q1    2194   666    666      0
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q2    2194   445    445      0
ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Wealth Q3    2194   555    554      1
ki1113344-GMS-Nepal        NEPAL                          Wealth Q4     593   149    141      8
ki1113344-GMS-Nepal        NEPAL                          Wealth Q1     593   149    144      5
ki1113344-GMS-Nepal        NEPAL                          Wealth Q2     593   150    145      5
ki1113344-GMS-Nepal        NEPAL                          Wealth Q3     593   145    144      1
ki1114097-CONTENT          PERU                           Wealth Q4     210    50     44      6
ki1114097-CONTENT          PERU                           Wealth Q1     210    56     54      2
ki1114097-CONTENT          PERU                           Wealth Q2     210    52     45      7
ki1114097-CONTENT          PERU                           Wealth Q3     210    52     48      4


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
* studyid: ki1017093b-PROVIDE, country: BANGLADESH
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1113344-GMS-Nepal, country: NEPAL
* studyid: ki1114097-CONTENT, country: PERU

### Dropped Strata

Some strata were dropped due to rare outcomes:

* studyid: ki0047075b-MAL-ED, country: BANGLADESH
* studyid: ki0047075b-MAL-ED, country: BRAZIL
* studyid: ki0047075b-MAL-ED, country: INDIA
* studyid: ki0047075b-MAL-ED, country: NEPAL
* studyid: ki0047075b-MAL-ED, country: PERU
* studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* studyid: ki1113344-GMS-Nepal, country: NEPAL
* studyid: ki1114097-CONTENT, country: PERU

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/0662b226-4cf8-434e-9aec-5087689f8cea/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->


```
## Warning: Removed 2 rows containing missing values (geom_errorbar).
```

![](/tmp/0662b226-4cf8-434e-9aec-5087689f8cea/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/0662b226-4cf8-434e-9aec-5087689f8cea/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/0662b226-4cf8-434e-9aec-5087689f8cea/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


studyid              country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000108-IRC        INDIA        Wealth Q4            NA                0.1300000   0.0640052   0.1959948
ki1000108-IRC        INDIA        Wealth Q1            NA                0.0666667   0.0188965   0.1144368
ki1000108-IRC        INDIA        Wealth Q2            NA                0.1078431   0.0475740   0.1681123
ki1000108-IRC        INDIA        Wealth Q3            NA                0.1262136   0.0620017   0.1904255
ki1017093b-PROVIDE   BANGLADESH   Wealth Q4            NA                0.0517241   0.0187931   0.0846552
ki1017093b-PROVIDE   BANGLADESH   Wealth Q1            NA                0.0289017   0.0039192   0.0538843
ki1017093b-PROVIDE   BANGLADESH   Wealth Q2            NA                0.0481928   0.0155883   0.0807972
ki1017093b-PROVIDE   BANGLADESH   Wealth Q3            NA                0.0409357   0.0112161   0.0706552


### Parameter: E(Y)


studyid              country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
ki1000108-IRC        INDIA        NA                   NA                0.1073171   0.1048683   0.1097659
ki1017093b-PROVIDE   BANGLADESH   NA                   NA                0.0423977   0.0417401   0.0430552


### Parameter: RR


studyid              country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
-------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
ki1000108-IRC        INDIA        Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
ki1000108-IRC        INDIA        Wealth Q1            Wealth Q4         0.5128205   0.2131018   1.234081
ki1000108-IRC        INDIA        Wealth Q2            Wealth Q4         0.8295626   0.3899007   1.764998
ki1000108-IRC        INDIA        Wealth Q3            Wealth Q4         0.9708738   0.4731853   1.992023
ki1017093b-PROVIDE   BANGLADESH   Wealth Q4            Wealth Q4         1.0000000   1.0000000   1.000000
ki1017093b-PROVIDE   BANGLADESH   Wealth Q1            Wealth Q4         0.5587669   0.1909814   1.634821
ki1017093b-PROVIDE   BANGLADESH   Wealth Q2            Wealth Q4         0.9317269   0.3679815   2.359127
ki1017093b-PROVIDE   BANGLADESH   Wealth Q3            Wealth Q4         0.7914230   0.3013308   2.078614


### Parameter: PAR


studyid              country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
-------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
ki1000108-IRC        INDIA        Wealth Q4            NA                -0.0226829   -0.0887231   0.0433573
ki1017093b-PROVIDE   BANGLADESH   Wealth Q4            NA                -0.0093265   -0.0422641   0.0236111


### Parameter: PAF


studyid              country      intervention_level   baseline_level      estimate    ci_lower    ci_upper
-------------------  -----------  -------------------  ---------------  -----------  ----------  ----------
ki1000108-IRC        INDIA        Wealth Q4            NA                -0.2113636   -1.013575   0.2712453
ki1017093b-PROVIDE   BANGLADESH   Wealth Q4            NA                -0.2199762   -1.306397   0.3546896
