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
      uri: 'https://raw.githubusercontent.com/HBGD-UCB/longbowRiskFactors/master/inst/sample_data/birthwt_data.csv'
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

**Outcome Variable:** sstunted

## Predictor Variables

**Intervention Variable:** meducyrs

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid


The following strata were considered:

* agecat: 12 months, studyid: ki0047075b-MAL-ED
* agecat: 12 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 12 months, studyid: ki1000108-IRC
* agecat: 12 months, studyid: ki1000109-EE
* agecat: 12 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 12 months, studyid: ki1017093-NIH-Birth
* agecat: 12 months, studyid: ki1017093b-PROVIDE
* agecat: 12 months, studyid: ki1017093c-NIH-Crypto
* agecat: 12 months, studyid: ki1066203-TanzaniaChild2
* agecat: 12 months, studyid: ki1112895-Guatemala BSC
* agecat: 12 months, studyid: ki1113344-GMS-Nepal
* agecat: 12 months, studyid: ki1126311-ZVITAMBO
* agecat: 12 months, studyid: ki1135781-COHORTS
* agecat: 12 months, studyid: ki1148112-LCNI-5
* agecat: 18 months, studyid: ki0047075b-MAL-ED
* agecat: 18 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 18 months, studyid: ki1000108-IRC
* agecat: 18 months, studyid: ki1000109-EE
* agecat: 18 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 18 months, studyid: ki1017093-NIH-Birth
* agecat: 18 months, studyid: ki1017093b-PROVIDE
* agecat: 18 months, studyid: ki1017093c-NIH-Crypto
* agecat: 18 months, studyid: ki1066203-TanzaniaChild2
* agecat: 18 months, studyid: ki1113344-GMS-Nepal
* agecat: 18 months, studyid: ki1126311-ZVITAMBO
* agecat: 18 months, studyid: ki1135781-COHORTS
* agecat: 18 months, studyid: ki1148112-LCNI-5
* agecat: 24 months, studyid: ki0047075b-MAL-ED
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 24 months, studyid: ki1000108-IRC
* agecat: 24 months, studyid: ki1017093-NIH-Birth
* agecat: 24 months, studyid: ki1017093b-PROVIDE
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2
* agecat: 24 months, studyid: ki1113344-GMS-Nepal
* agecat: 24 months, studyid: ki1126311-ZVITAMBO
* agecat: 24 months, studyid: ki1135781-COHORTS
* agecat: 24 months, studyid: ki1148112-LCNI-5
* agecat: 3 months, studyid: ki0047075b-MAL-ED
* agecat: 3 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 3 months, studyid: ki1000108-IRC
* agecat: 3 months, studyid: ki1000109-EE
* agecat: 3 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 3 months, studyid: ki1017093-NIH-Birth
* agecat: 3 months, studyid: ki1017093b-PROVIDE
* agecat: 3 months, studyid: ki1017093c-NIH-Crypto
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2
* agecat: 3 months, studyid: ki1112895-Guatemala BSC
* agecat: 3 months, studyid: ki1113344-GMS-Nepal
* agecat: 3 months, studyid: ki1126311-ZVITAMBO
* agecat: 3 months, studyid: ki1135781-COHORTS
* agecat: 6 months, studyid: ki0047075b-MAL-ED
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 6 months, studyid: ki1000108-IRC
* agecat: 6 months, studyid: ki1000109-EE
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 6 months, studyid: ki1017093-NIH-Birth
* agecat: 6 months, studyid: ki1017093b-PROVIDE
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2
* agecat: 6 months, studyid: ki1112895-Guatemala BSC
* agecat: 6 months, studyid: ki1113344-GMS-Nepal
* agecat: 6 months, studyid: ki1126311-ZVITAMBO
* agecat: 6 months, studyid: ki1135781-COHORTS
* agecat: 6 months, studyid: ki1148112-LCNI-5
* agecat: 9 months, studyid: ki0047075b-MAL-ED
* agecat: 9 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 9 months, studyid: ki1000108-IRC
* agecat: 9 months, studyid: ki1000109-EE
* agecat: 9 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 9 months, studyid: ki1017093-NIH-Birth
* agecat: 9 months, studyid: ki1017093b-PROVIDE
* agecat: 9 months, studyid: ki1017093c-NIH-Crypto
* agecat: 9 months, studyid: ki1066203-TanzaniaChild2
* agecat: 9 months, studyid: ki1112895-Guatemala BSC
* agecat: 9 months, studyid: ki1113344-GMS-Nepal
* agecat: 9 months, studyid: ki1126311-ZVITAMBO
* agecat: 9 months, studyid: ki1135781-COHORTS
* agecat: 9 months, studyid: ki1148112-LCNI-5
* agecat: Birth, studyid: ki0047075b-MAL-ED
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002
* agecat: Birth, studyid: ki1000108-IRC
* agecat: Birth, studyid: ki1000109-EE
* agecat: Birth, studyid: ki1017093-NIH-Birth
* agecat: Birth, studyid: ki1017093c-NIH-Crypto
* agecat: Birth, studyid: ki1126311-ZVITAMBO
* agecat: Birth, studyid: ki1135781-COHORTS

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002
* agecat: Birth, studyid: ki1000108-IRC
* agecat: Birth, studyid: ki1000109-EE
* agecat: Birth, studyid: ki1017093-NIH-Birth
* agecat: Birth, studyid: ki1017093c-NIH-Crypto
* agecat: 3 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 3 months, studyid: ki1000108-IRC
* agecat: 3 months, studyid: ki1000109-EE
* agecat: 3 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 3 months, studyid: ki1017093-NIH-Birth
* agecat: 3 months, studyid: ki1017093b-PROVIDE
* agecat: 3 months, studyid: ki1017093c-NIH-Crypto
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2
* agecat: 3 months, studyid: ki1112895-Guatemala BSC
* agecat: 3 months, studyid: ki1113344-GMS-Nepal
* agecat: 3 months, studyid: ki1126311-ZVITAMBO
* agecat: 6 months, studyid: ki0047075b-MAL-ED
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 6 months, studyid: ki1000108-IRC
* agecat: 6 months, studyid: ki1000109-EE
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 6 months, studyid: ki1017093-NIH-Birth
* agecat: 6 months, studyid: ki1017093b-PROVIDE
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2
* agecat: 6 months, studyid: ki1112895-Guatemala BSC
* agecat: 6 months, studyid: ki1113344-GMS-Nepal
* agecat: 6 months, studyid: ki1126311-ZVITAMBO
* agecat: 6 months, studyid: ki1148112-LCNI-5
* agecat: 9 months, studyid: ki0047075b-MAL-ED
* agecat: 9 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 9 months, studyid: ki1000108-IRC
* agecat: 9 months, studyid: ki1000109-EE
* agecat: 9 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 9 months, studyid: ki1017093-NIH-Birth
* agecat: 9 months, studyid: ki1017093b-PROVIDE
* agecat: 9 months, studyid: ki1017093c-NIH-Crypto
* agecat: 9 months, studyid: ki1066203-TanzaniaChild2
* agecat: 9 months, studyid: ki1112895-Guatemala BSC
* agecat: 9 months, studyid: ki1113344-GMS-Nepal
* agecat: 9 months, studyid: ki1126311-ZVITAMBO
* agecat: 9 months, studyid: ki1148112-LCNI-5
* agecat: 12 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 12 months, studyid: ki1000108-IRC
* agecat: 12 months, studyid: ki1000109-EE
* agecat: 12 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 12 months, studyid: ki1017093-NIH-Birth
* agecat: 12 months, studyid: ki1017093b-PROVIDE
* agecat: 12 months, studyid: ki1066203-TanzaniaChild2
* agecat: 12 months, studyid: ki1112895-Guatemala BSC
* agecat: 12 months, studyid: ki1113344-GMS-Nepal
* agecat: 12 months, studyid: ki1126311-ZVITAMBO
* agecat: 12 months, studyid: ki1148112-LCNI-5
* agecat: 18 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 18 months, studyid: ki1000108-IRC
* agecat: 18 months, studyid: ki1000109-EE
* agecat: 18 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 18 months, studyid: ki1017093-NIH-Birth
* agecat: 18 months, studyid: ki1017093b-PROVIDE
* agecat: 18 months, studyid: ki1066203-TanzaniaChild2
* agecat: 18 months, studyid: ki1113344-GMS-Nepal
* agecat: 18 months, studyid: ki1126311-ZVITAMBO
* agecat: 18 months, studyid: ki1148112-LCNI-5
* agecat: 24 months, studyid: ki0047075b-MAL-ED
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 24 months, studyid: ki1000108-IRC
* agecat: 24 months, studyid: ki1017093-NIH-Birth
* agecat: 24 months, studyid: ki1017093b-PROVIDE
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2
* agecat: 24 months, studyid: ki1113344-GMS-Nepal
* agecat: 24 months, studyid: ki1126311-ZVITAMBO
* agecat: 24 months, studyid: ki1148112-LCNI-5

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness




# Results Detail

## Results Plots
![](/tmp/50992ad7-5d40-47e2-ba0b-cee9d6fedd24/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/50992ad7-5d40-47e2-ba0b-cee9d6fedd24/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/50992ad7-5d40-47e2-ba0b-cee9d6fedd24/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/50992ad7-5d40-47e2-ba0b-cee9d6fedd24/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Data Summary

agecat      studyid                    A        n     nA   nAY0   nAY1
----------  -------------------------  ---  -----  -----  -----  -----
Birth       ki0047075b-MAL-ED          Q1    1395    398    389      9
Birth       ki0047075b-MAL-ED          Q2    1395    394    385      9
Birth       ki0047075b-MAL-ED          Q3    1395    439    420     19
Birth       ki0047075b-MAL-ED          Q4    1395    164    161      3
Birth       ki1000108-CMC-V-BCS-2002   Q1      90     15     15      0
Birth       ki1000108-CMC-V-BCS-2002   Q2      90     50     47      3
Birth       ki1000108-CMC-V-BCS-2002   Q3      90     22     22      0
Birth       ki1000108-CMC-V-BCS-2002   Q4      90      3      3      0
Birth       ki1000108-IRC              Q1     388    176    169      7
Birth       ki1000108-IRC              Q2     388     99     93      6
Birth       ki1000108-IRC              Q3     388    103    100      3
Birth       ki1000108-IRC              Q4     388     10     10      0
Birth       ki1000109-EE               Q1       2      2      2      0
Birth       ki1000109-EE               Q2       2      0      0      0
Birth       ki1000109-EE               Q3       2      0      0      0
Birth       ki1000109-EE               Q4       2      0      0      0
Birth       ki1000304b-SAS-FoodSuppl   Q1       0      0      0      0
Birth       ki1000304b-SAS-FoodSuppl   Q2       0      0      0      0
Birth       ki1000304b-SAS-FoodSuppl   Q3       0      0      0      0
Birth       ki1000304b-SAS-FoodSuppl   Q4       0      0      0      0
Birth       ki1017093-NIH-Birth        Q1      28     16     16      0
Birth       ki1017093-NIH-Birth        Q2      28     10     10      0
Birth       ki1017093-NIH-Birth        Q3      28      1      1      0
Birth       ki1017093-NIH-Birth        Q4      28      1      1      0
Birth       ki1017093b-PROVIDE         Q1       0      0      0      0
Birth       ki1017093b-PROVIDE         Q2       0      0      0      0
Birth       ki1017093b-PROVIDE         Q3       0      0      0      0
Birth       ki1017093b-PROVIDE         Q4       0      0      0      0
Birth       ki1017093c-NIH-Crypto      Q1      27     12     12      0
Birth       ki1017093c-NIH-Crypto      Q2      27      4      4      0
Birth       ki1017093c-NIH-Crypto      Q3      27      7      6      1
Birth       ki1017093c-NIH-Crypto      Q4      27      4      4      0
Birth       ki1066203-TanzaniaChild2   Q1       0      0      0      0
Birth       ki1066203-TanzaniaChild2   Q2       0      0      0      0
Birth       ki1066203-TanzaniaChild2   Q3       0      0      0      0
Birth       ki1066203-TanzaniaChild2   Q4       0      0      0      0
Birth       ki1112895-Guatemala BSC    Q1       0      0      0      0
Birth       ki1112895-Guatemala BSC    Q2       0      0      0      0
Birth       ki1112895-Guatemala BSC    Q3       0      0      0      0
Birth       ki1112895-Guatemala BSC    Q4       0      0      0      0
Birth       ki1113344-GMS-Nepal        Q1       0      0      0      0
Birth       ki1113344-GMS-Nepal        Q2       0      0      0      0
Birth       ki1113344-GMS-Nepal        Q3       0      0      0      0
Birth       ki1113344-GMS-Nepal        Q4       0      0      0      0
Birth       ki1126311-ZVITAMBO         Q1    3446     55     50      5
Birth       ki1126311-ZVITAMBO         Q2    3446    103     97      6
Birth       ki1126311-ZVITAMBO         Q3    3446   1118   1080     38
Birth       ki1126311-ZVITAMBO         Q4    3446   2170   2107     63
Birth       ki1135781-COHORTS          Q1    8667   3901   3783    118
Birth       ki1135781-COHORTS          Q2    8667    806    795     11
Birth       ki1135781-COHORTS          Q3    8667   1459   1427     32
Birth       ki1135781-COHORTS          Q4    8667   2501   2463     38
Birth       ki1148112-LCNI-5           Q1       0      0      0      0
Birth       ki1148112-LCNI-5           Q2       0      0      0      0
Birth       ki1148112-LCNI-5           Q3       0      0      0      0
Birth       ki1148112-LCNI-5           Q4       0      0      0      0
3 months    ki0047075b-MAL-ED          Q1    1639    450    433     17
3 months    ki0047075b-MAL-ED          Q2    1639    435    422     13
3 months    ki0047075b-MAL-ED          Q3    1639    574    552     22
3 months    ki0047075b-MAL-ED          Q4    1639    180    175      5
3 months    ki1000108-CMC-V-BCS-2002   Q1     362    103     95      8
3 months    ki1000108-CMC-V-BCS-2002   Q2     362    192    171     21
3 months    ki1000108-CMC-V-BCS-2002   Q3     362     58     55      3
3 months    ki1000108-CMC-V-BCS-2002   Q4     362      9      8      1
3 months    ki1000108-IRC              Q1     407    181    164     17
3 months    ki1000108-IRC              Q2     407    103     90     13
3 months    ki1000108-IRC              Q3     407    112    107      5
3 months    ki1000108-IRC              Q4     407     11     10      1
3 months    ki1000109-EE               Q1     373    325    217    108
3 months    ki1000109-EE               Q2     373     33     24      9
3 months    ki1000109-EE               Q3     373     11     10      1
3 months    ki1000109-EE               Q4     373      4      2      2
3 months    ki1000304b-SAS-FoodSuppl   Q1      97     79     68     11
3 months    ki1000304b-SAS-FoodSuppl   Q2      97     12     10      2
3 months    ki1000304b-SAS-FoodSuppl   Q3      97      3      3      0
3 months    ki1000304b-SAS-FoodSuppl   Q4      97      3      3      0
3 months    ki1017093-NIH-Birth        Q1     570    272    250     22
3 months    ki1017093-NIH-Birth        Q2     570    163    157      6
3 months    ki1017093-NIH-Birth        Q3     570    106    101      5
3 months    ki1017093-NIH-Birth        Q4     570     29     29      0
3 months    ki1017093b-PROVIDE         Q1     168     83     81      2
3 months    ki1017093b-PROVIDE         Q2     168     61     60      1
3 months    ki1017093b-PROVIDE         Q3     168     21     20      1
3 months    ki1017093b-PROVIDE         Q4     168      3      2      1
3 months    ki1017093c-NIH-Crypto      Q1     728    232    222     10
3 months    ki1017093c-NIH-Crypto      Q2     728    133    123     10
3 months    ki1017093c-NIH-Crypto      Q3     728    196    186     10
3 months    ki1017093c-NIH-Crypto      Q4     728    167    164      3
3 months    ki1066203-TanzaniaChild2   Q1     574     18     17      1
3 months    ki1066203-TanzaniaChild2   Q2     574    451    443      8
3 months    ki1066203-TanzaniaChild2   Q3     574    101    100      1
3 months    ki1066203-TanzaniaChild2   Q4     574      4      4      0
3 months    ki1112895-Guatemala BSC    Q1       4      2      2      0
3 months    ki1112895-Guatemala BSC    Q2       4      0      0      0
3 months    ki1112895-Guatemala BSC    Q3       4      1      0      1
3 months    ki1112895-Guatemala BSC    Q4       4      1      0      1
3 months    ki1113344-GMS-Nepal        Q1     568    401    381     20
3 months    ki1113344-GMS-Nepal        Q2     568     46     46      0
3 months    ki1113344-GMS-Nepal        Q3     568     53     52      1
3 months    ki1113344-GMS-Nepal        Q4     568     68     67      1
3 months    ki1126311-ZVITAMBO         Q1    2269     34     32      2
3 months    ki1126311-ZVITAMBO         Q2    2269     69     64      5
3 months    ki1126311-ZVITAMBO         Q3    2269    749    708     41
3 months    ki1126311-ZVITAMBO         Q4    2269   1417   1351     66
3 months    ki1135781-COHORTS          Q1    8880   4081   3860    221
3 months    ki1135781-COHORTS          Q2    8880    764    752     12
3 months    ki1135781-COHORTS          Q3    8880   1456   1407     49
3 months    ki1135781-COHORTS          Q4    8880   2579   2547     32
3 months    ki1148112-LCNI-5           Q1       0      0      0      0
3 months    ki1148112-LCNI-5           Q2       0      0      0      0
3 months    ki1148112-LCNI-5           Q3       0      0      0      0
3 months    ki1148112-LCNI-5           Q4       0      0      0      0
6 months    ki0047075b-MAL-ED          Q1    1562    428    411     17
6 months    ki0047075b-MAL-ED          Q2    1562    418    413      5
6 months    ki0047075b-MAL-ED          Q3    1562    552    534     18
6 months    ki0047075b-MAL-ED          Q4    1562    164    163      1
6 months    ki1000108-CMC-V-BCS-2002   Q1     369    105     89     16
6 months    ki1000108-CMC-V-BCS-2002   Q2     369    197    175     22
6 months    ki1000108-CMC-V-BCS-2002   Q3     369     58     55      3
6 months    ki1000108-CMC-V-BCS-2002   Q4     369      9      8      1
6 months    ki1000108-IRC              Q1     407    181    165     16
6 months    ki1000108-IRC              Q2     407    103     96      7
6 months    ki1000108-IRC              Q3     407    112    107      5
6 months    ki1000108-IRC              Q4     407     11     10      1
6 months    ki1000109-EE               Q1     369    321    237     84
6 months    ki1000109-EE               Q2     369     33     27      6
6 months    ki1000109-EE               Q3     369     11      9      2
6 months    ki1000109-EE               Q4     369      4      4      0
6 months    ki1000304b-SAS-FoodSuppl   Q1      96     78     66     12
6 months    ki1000304b-SAS-FoodSuppl   Q2      96     12      9      3
6 months    ki1000304b-SAS-FoodSuppl   Q3      96      3      3      0
6 months    ki1000304b-SAS-FoodSuppl   Q4      96      3      3      0
6 months    ki1017093-NIH-Birth        Q1     537    255    228     27
6 months    ki1017093-NIH-Birth        Q2     537    155    148      7
6 months    ki1017093-NIH-Birth        Q3     537     98     97      1
6 months    ki1017093-NIH-Birth        Q4     537     29     29      0
6 months    ki1017093b-PROVIDE         Q1     153     76     73      3
6 months    ki1017093b-PROVIDE         Q2     153     55     52      3
6 months    ki1017093b-PROVIDE         Q3     153     19     19      0
6 months    ki1017093b-PROVIDE         Q4     153      3      3      0
6 months    ki1017093c-NIH-Crypto      Q1     715    229    221      8
6 months    ki1017093c-NIH-Crypto      Q2     715    128    124      4
6 months    ki1017093c-NIH-Crypto      Q3     715    191    185      6
6 months    ki1017093c-NIH-Crypto      Q4     715    167    162      5
6 months    ki1066203-TanzaniaChild2   Q1     503     15     15      0
6 months    ki1066203-TanzaniaChild2   Q2     503    397    391      6
6 months    ki1066203-TanzaniaChild2   Q3     503     87     86      1
6 months    ki1066203-TanzaniaChild2   Q4     503      4      4      0
6 months    ki1112895-Guatemala BSC    Q1      90     29     27      2
6 months    ki1112895-Guatemala BSC    Q2      90     17     16      1
6 months    ki1112895-Guatemala BSC    Q3      90     33     29      4
6 months    ki1112895-Guatemala BSC    Q4      90     11     10      1
6 months    ki1113344-GMS-Nepal        Q1     560    399    379     20
6 months    ki1113344-GMS-Nepal        Q2     560     42     42      0
6 months    ki1113344-GMS-Nepal        Q3     560     52     52      0
6 months    ki1113344-GMS-Nepal        Q4     560     67     67      0
6 months    ki1126311-ZVITAMBO         Q1    2051     31     30      1
6 months    ki1126311-ZVITAMBO         Q2    2051     67     63      4
6 months    ki1126311-ZVITAMBO         Q3    2051    669    642     27
6 months    ki1126311-ZVITAMBO         Q4    2051   1284   1244     40
6 months    ki1135781-COHORTS          Q1    8580   3909   3598    311
6 months    ki1135781-COHORTS          Q2    8580    728    688     40
6 months    ki1135781-COHORTS          Q3    8580   1411   1348     63
6 months    ki1135781-COHORTS          Q4    8580   2532   2493     39
6 months    ki1148112-LCNI-5           Q1     404    207    186     21
6 months    ki1148112-LCNI-5           Q2     404    112    108      4
6 months    ki1148112-LCNI-5           Q3     404     63     62      1
6 months    ki1148112-LCNI-5           Q4     404     22     21      1
9 months    ki0047075b-MAL-ED          Q1    1510    413    394     19
9 months    ki0047075b-MAL-ED          Q2    1510    407    397     10
9 months    ki0047075b-MAL-ED          Q3    1510    534    509     25
9 months    ki0047075b-MAL-ED          Q4    1510    156    154      2
9 months    ki1000108-CMC-V-BCS-2002   Q1     366    105     90     15
9 months    ki1000108-CMC-V-BCS-2002   Q2     366    196    170     26
9 months    ki1000108-CMC-V-BCS-2002   Q3     366     56     51      5
9 months    ki1000108-CMC-V-BCS-2002   Q4     366      9      8      1
9 months    ki1000108-IRC              Q1     407    181    163     18
9 months    ki1000108-IRC              Q2     407    103     96      7
9 months    ki1000108-IRC              Q3     407    112    104      8
9 months    ki1000108-IRC              Q4     407     11     10      1
9 months    ki1000109-EE               Q1     363    315    226     89
9 months    ki1000109-EE               Q2     363     33     30      3
9 months    ki1000109-EE               Q3     363     11     10      1
9 months    ki1000109-EE               Q4     363      4      4      0
9 months    ki1000304b-SAS-FoodSuppl   Q1      85     67     52     15
9 months    ki1000304b-SAS-FoodSuppl   Q2      85     12      8      4
9 months    ki1000304b-SAS-FoodSuppl   Q3      85      2      1      1
9 months    ki1000304b-SAS-FoodSuppl   Q4      85      4      4      0
9 months    ki1017093-NIH-Birth        Q1     507    237    213     24
9 months    ki1017093-NIH-Birth        Q2     507    148    133     15
9 months    ki1017093-NIH-Birth        Q3     507     93     89      4
9 months    ki1017093-NIH-Birth        Q4     507     29     27      2
9 months    ki1017093b-PROVIDE         Q1     158     78     73      5
9 months    ki1017093b-PROVIDE         Q2     158     57     53      4
9 months    ki1017093b-PROVIDE         Q3     158     20     20      0
9 months    ki1017093b-PROVIDE         Q4     158      3      3      0
9 months    ki1017093c-NIH-Crypto      Q1     706    224    213     11
9 months    ki1017093c-NIH-Crypto      Q2     706    124    120      4
9 months    ki1017093c-NIH-Crypto      Q3     706    190    185      5
9 months    ki1017093c-NIH-Crypto      Q4     706    168    160      8
9 months    ki1066203-TanzaniaChild2   Q1     433     13     13      0
9 months    ki1066203-TanzaniaChild2   Q2     433    343    336      7
9 months    ki1066203-TanzaniaChild2   Q3     433     74     74      0
9 months    ki1066203-TanzaniaChild2   Q4     433      3      3      0
9 months    ki1112895-Guatemala BSC    Q1      60     22     19      3
9 months    ki1112895-Guatemala BSC    Q2      60      8      7      1
9 months    ki1112895-Guatemala BSC    Q3      60     22     18      4
9 months    ki1112895-Guatemala BSC    Q4      60      8      7      1
9 months    ki1113344-GMS-Nepal        Q1     549    392    361     31
9 months    ki1113344-GMS-Nepal        Q2     549     42     42      0
9 months    ki1113344-GMS-Nepal        Q3     549     50     48      2
9 months    ki1113344-GMS-Nepal        Q4     549     65     63      2
9 months    ki1126311-ZVITAMBO         Q1    1961     33     31      2
9 months    ki1126311-ZVITAMBO         Q2    1961     69     62      7
9 months    ki1126311-ZVITAMBO         Q3    1961    610    580     30
9 months    ki1126311-ZVITAMBO         Q4    1961   1249   1201     48
9 months    ki1135781-COHORTS          Q1    7908   3580   3097    483
9 months    ki1135781-COHORTS          Q2    7908    730    676     54
9 months    ki1135781-COHORTS          Q3    7908   1309   1219     90
9 months    ki1135781-COHORTS          Q4    7908   2289   2229     60
9 months    ki1148112-LCNI-5           Q1     317    162    151     11
9 months    ki1148112-LCNI-5           Q2     317     88     87      1
9 months    ki1148112-LCNI-5           Q3     317     51     47      4
9 months    ki1148112-LCNI-5           Q4     317     16     15      1
12 months   ki0047075b-MAL-ED          Q1    1487    410    386     24
12 months   ki0047075b-MAL-ED          Q2    1487    400    382     18
12 months   ki0047075b-MAL-ED          Q3    1487    526    495     31
12 months   ki0047075b-MAL-ED          Q4    1487    151    146      5
12 months   ki1000108-CMC-V-BCS-2002   Q1     368    106     82     24
12 months   ki1000108-CMC-V-BCS-2002   Q2     368    196    148     48
12 months   ki1000108-CMC-V-BCS-2002   Q3     368     57     48      9
12 months   ki1000108-CMC-V-BCS-2002   Q4     368      9      7      2
12 months   ki1000108-IRC              Q1     406    181    164     17
12 months   ki1000108-IRC              Q2     406    102     92     10
12 months   ki1000108-IRC              Q3     406    112    106      6
12 months   ki1000108-IRC              Q4     406     11     10      1
12 months   ki1000109-EE               Q1     354    308    197    111
12 months   ki1000109-EE               Q2     354     32     28      4
12 months   ki1000109-EE               Q3     354     10      6      4
12 months   ki1000109-EE               Q4     354      4      4      0
12 months   ki1000304b-SAS-FoodSuppl   Q1      92     74     43     31
12 months   ki1000304b-SAS-FoodSuppl   Q2      92     11      4      7
12 months   ki1000304b-SAS-FoodSuppl   Q3      92      3      2      1
12 months   ki1000304b-SAS-FoodSuppl   Q4      92      4      2      2
12 months   ki1017093-NIH-Birth        Q1     491    233    203     30
12 months   ki1017093-NIH-Birth        Q2     491    139    126     13
12 months   ki1017093-NIH-Birth        Q3     491     91     86      5
12 months   ki1017093-NIH-Birth        Q4     491     28     28      0
12 months   ki1017093b-PROVIDE         Q1     153     73     65      8
12 months   ki1017093b-PROVIDE         Q2     153     57     53      4
12 months   ki1017093b-PROVIDE         Q3     153     20     19      1
12 months   ki1017093b-PROVIDE         Q4     153      3      3      0
12 months   ki1017093c-NIH-Crypto      Q1     706    227    215     12
12 months   ki1017093c-NIH-Crypto      Q2     706    122    113      9
12 months   ki1017093c-NIH-Crypto      Q3     706    190    178     12
12 months   ki1017093c-NIH-Crypto      Q4     706    167    159      8
12 months   ki1066203-TanzaniaChild2   Q1     356     11     11      0
12 months   ki1066203-TanzaniaChild2   Q2     356    281    274      7
12 months   ki1066203-TanzaniaChild2   Q3     356     62     62      0
12 months   ki1066203-TanzaniaChild2   Q4     356      2      2      0
12 months   ki1112895-Guatemala BSC    Q1      53     18     15      3
12 months   ki1112895-Guatemala BSC    Q2      53      6      5      1
12 months   ki1112895-Guatemala BSC    Q3      53     21     16      5
12 months   ki1112895-Guatemala BSC    Q4      53      8      6      2
12 months   ki1113344-GMS-Nepal        Q1     555    394    347     47
12 months   ki1113344-GMS-Nepal        Q2     555     44     43      1
12 months   ki1113344-GMS-Nepal        Q3     555     52     49      3
12 months   ki1113344-GMS-Nepal        Q4     555     65     65      0
12 months   ki1126311-ZVITAMBO         Q1    1700     28     27      1
12 months   ki1126311-ZVITAMBO         Q2    1700     56     49      7
12 months   ki1126311-ZVITAMBO         Q3    1700    541    506     35
12 months   ki1126311-ZVITAMBO         Q4    1700   1075   1013     62
12 months   ki1135781-COHORTS          Q1    7363   3306   2616    690
12 months   ki1135781-COHORTS          Q2    7363    707    604    103
12 months   ki1135781-COHORTS          Q3    7363   1215   1078    137
12 months   ki1135781-COHORTS          Q4    7363   2135   2042     93
12 months   ki1148112-LCNI-5           Q1     306    158    136     22
12 months   ki1148112-LCNI-5           Q2     306     83     78      5
12 months   ki1148112-LCNI-5           Q3     306     49     44      5
12 months   ki1148112-LCNI-5           Q4     306     16     15      1
18 months   ki0047075b-MAL-ED          Q1    1420    390    342     48
18 months   ki0047075b-MAL-ED          Q2    1420    375    335     40
18 months   ki0047075b-MAL-ED          Q3    1420    505    455     50
18 months   ki0047075b-MAL-ED          Q4    1420    150    143      7
18 months   ki1000108-CMC-V-BCS-2002   Q1     369    106     70     36
18 months   ki1000108-CMC-V-BCS-2002   Q2     369    197    138     59
18 months   ki1000108-CMC-V-BCS-2002   Q3     369     57     44     13
18 months   ki1000108-CMC-V-BCS-2002   Q4     369      9      8      1
18 months   ki1000108-IRC              Q1     405    180    161     19
18 months   ki1000108-IRC              Q2     405    102     97      5
18 months   ki1000108-IRC              Q3     405    112    103      9
18 months   ki1000108-IRC              Q4     405     11     10      1
18 months   ki1000109-EE               Q1     347    303    146    157
18 months   ki1000109-EE               Q2     347     30     22      8
18 months   ki1000109-EE               Q3     347     10      7      3
18 months   ki1000109-EE               Q4     347      4      4      0
18 months   ki1000304b-SAS-FoodSuppl   Q1      84     66     37     29
18 months   ki1000304b-SAS-FoodSuppl   Q2      84     12      6      6
18 months   ki1000304b-SAS-FoodSuppl   Q3      84      2      1      1
18 months   ki1000304b-SAS-FoodSuppl   Q4      84      4      3      1
18 months   ki1017093-NIH-Birth        Q1     463    219    158     61
18 months   ki1017093-NIH-Birth        Q2     463    132    102     30
18 months   ki1017093-NIH-Birth        Q3     463     86     77      9
18 months   ki1017093-NIH-Birth        Q4     463     26     25      1
18 months   ki1017093b-PROVIDE         Q1     141     67     53     14
18 months   ki1017093b-PROVIDE         Q2     141     53     48      5
18 months   ki1017093b-PROVIDE         Q3     141     18     17      1
18 months   ki1017093b-PROVIDE         Q4     141      3      3      0
18 months   ki1017093c-NIH-Crypto      Q1     634    195    177     18
18 months   ki1017093c-NIH-Crypto      Q2     634    109    101      8
18 months   ki1017093c-NIH-Crypto      Q3     634    175    166      9
18 months   ki1017093c-NIH-Crypto      Q4     634    155    148      7
18 months   ki1066203-TanzaniaChild2   Q1     257      9      7      2
18 months   ki1066203-TanzaniaChild2   Q2     257    203    193     10
18 months   ki1066203-TanzaniaChild2   Q3     257     44     41      3
18 months   ki1066203-TanzaniaChild2   Q4     257      1      1      0
18 months   ki1112895-Guatemala BSC    Q1       0      0      0      0
18 months   ki1112895-Guatemala BSC    Q2       0      0      0      0
18 months   ki1112895-Guatemala BSC    Q3       0      0      0      0
18 months   ki1112895-Guatemala BSC    Q4       0      0      0      0
18 months   ki1113344-GMS-Nepal        Q1     547    388    324     64
18 months   ki1113344-GMS-Nepal        Q2     547     41     37      4
18 months   ki1113344-GMS-Nepal        Q3     547     53     40     13
18 months   ki1113344-GMS-Nepal        Q4     547     65     61      4
18 months   ki1126311-ZVITAMBO         Q1     425     11      9      2
18 months   ki1126311-ZVITAMBO         Q2     425     18     12      6
18 months   ki1126311-ZVITAMBO         Q3     425    155    134     21
18 months   ki1126311-ZVITAMBO         Q4     425    241    203     38
18 months   ki1135781-COHORTS          Q1    2924   1150    698    452
18 months   ki1135781-COHORTS          Q2    2924    675    494    181
18 months   ki1135781-COHORTS          Q3    2924    505    368    137
18 months   ki1135781-COHORTS          Q4    2924    594    524     70
18 months   ki1148112-LCNI-5           Q1     353    182    147     35
18 months   ki1148112-LCNI-5           Q2     353     94     83     11
18 months   ki1148112-LCNI-5           Q3     353     57     52      5
18 months   ki1148112-LCNI-5           Q4     353     20     20      0
24 months   ki0047075b-MAL-ED          Q1    1364    380    340     40
24 months   ki0047075b-MAL-ED          Q2    1364    362    324     38
24 months   ki0047075b-MAL-ED          Q3    1364    482    431     51
24 months   ki0047075b-MAL-ED          Q4    1364    140    136      4
24 months   ki1000108-CMC-V-BCS-2002   Q1     372    105     66     39
24 months   ki1000108-CMC-V-BCS-2002   Q2     372    199    133     66
24 months   ki1000108-CMC-V-BCS-2002   Q3     372     59     42     17
24 months   ki1000108-CMC-V-BCS-2002   Q4     372      9      8      1
24 months   ki1000108-IRC              Q1     409    181    163     18
24 months   ki1000108-IRC              Q2     409    104     94     10
24 months   ki1000108-IRC              Q3     409    113    101     12
24 months   ki1000108-IRC              Q4     409     11     10      1
24 months   ki1000109-EE               Q1       0      0      0      0
24 months   ki1000109-EE               Q2       0      0      0      0
24 months   ki1000109-EE               Q3       0      0      0      0
24 months   ki1000109-EE               Q4       0      0      0      0
24 months   ki1000304b-SAS-FoodSuppl   Q1       0      0      0      0
24 months   ki1000304b-SAS-FoodSuppl   Q2       0      0      0      0
24 months   ki1000304b-SAS-FoodSuppl   Q3       0      0      0      0
24 months   ki1000304b-SAS-FoodSuppl   Q4       0      0      0      0
24 months   ki1017093-NIH-Birth        Q1     429    202    144     58
24 months   ki1017093-NIH-Birth        Q2     429    117     91     26
24 months   ki1017093-NIH-Birth        Q3     429     83     77      6
24 months   ki1017093-NIH-Birth        Q4     429     27     24      3
24 months   ki1017093b-PROVIDE         Q1     149     71     58     13
24 months   ki1017093b-PROVIDE         Q2     149     55     50      5
24 months   ki1017093b-PROVIDE         Q3     149     20     20      0
24 months   ki1017093b-PROVIDE         Q4     149      3      3      0
24 months   ki1017093c-NIH-Crypto      Q1     514    146    133     13
24 months   ki1017093c-NIH-Crypto      Q2     514     88     78     10
24 months   ki1017093c-NIH-Crypto      Q3     514    145    138      7
24 months   ki1017093c-NIH-Crypto      Q4     514    135    130      5
24 months   ki1066203-TanzaniaChild2   Q1       2      0      0      0
24 months   ki1066203-TanzaniaChild2   Q2       2      1      1      0
24 months   ki1066203-TanzaniaChild2   Q3       2      1      1      0
24 months   ki1066203-TanzaniaChild2   Q4       2      0      0      0
24 months   ki1112895-Guatemala BSC    Q1       0      0      0      0
24 months   ki1112895-Guatemala BSC    Q2       0      0      0      0
24 months   ki1112895-Guatemala BSC    Q3       0      0      0      0
24 months   ki1112895-Guatemala BSC    Q4       0      0      0      0
24 months   ki1113344-GMS-Nepal        Q1     496    350    306     44
24 months   ki1113344-GMS-Nepal        Q2     496     38     36      2
24 months   ki1113344-GMS-Nepal        Q3     496     50     44      6
24 months   ki1113344-GMS-Nepal        Q4     496     58     56      2
24 months   ki1126311-ZVITAMBO         Q1     116      2      2      0
24 months   ki1126311-ZVITAMBO         Q2     116      6      5      1
24 months   ki1126311-ZVITAMBO         Q3     116     36     28      8
24 months   ki1126311-ZVITAMBO         Q4     116     72     59     13
24 months   ki1135781-COHORTS          Q1    7159   3186   2053   1133
24 months   ki1135781-COHORTS          Q2    7159    672    459    213
24 months   ki1135781-COHORTS          Q3    7159   1188    931    257
24 months   ki1135781-COHORTS          Q4    7159   2113   1952    161
24 months   ki1148112-LCNI-5           Q1     293    143    118     25
24 months   ki1148112-LCNI-5           Q2     293     83     77      6
24 months   ki1148112-LCNI-5           Q3     293     49     46      3
24 months   ki1148112-LCNI-5           Q4     293     18     16      2

## Results Table

### Parameter: TSM


agecat      studyid                 intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO      Q1                   NA                0.0909091   0.0149225   0.1668957
Birth       ki1126311-ZVITAMBO      Q2                   NA                0.0582524   0.0130130   0.1034918
Birth       ki1126311-ZVITAMBO      Q3                   NA                0.0339893   0.0233661   0.0446124
Birth       ki1126311-ZVITAMBO      Q4                   NA                0.0290323   0.0219671   0.0360975
Birth       ki1135781-COHORTS       Q1                   NA                0.0302487   0.0248738   0.0356235
Birth       ki1135781-COHORTS       Q2                   NA                0.0136476   0.0056373   0.0216580
Birth       ki1135781-COHORTS       Q3                   NA                0.0219328   0.0144170   0.0294487
Birth       ki1135781-COHORTS       Q4                   NA                0.0151939   0.0103996   0.0199882
3 months    ki0047075b-MAL-ED       Q1                   NA                0.0377778   0.0201568   0.0553988
3 months    ki0047075b-MAL-ED       Q2                   NA                0.0298851   0.0138794   0.0458908
3 months    ki0047075b-MAL-ED       Q3                   NA                0.0383275   0.0226169   0.0540382
3 months    ki0047075b-MAL-ED       Q4                   NA                0.0277778   0.0037631   0.0517924
3 months    ki1135781-COHORTS       Q1                   NA                0.0541534   0.0472094   0.0610974
3 months    ki1135781-COHORTS       Q2                   NA                0.0157068   0.0068896   0.0245240
3 months    ki1135781-COHORTS       Q3                   NA                0.0336538   0.0243903   0.0429174
3 months    ki1135781-COHORTS       Q4                   NA                0.0124079   0.0081354   0.0166804
6 months    ki1135781-COHORTS       Q1                   NA                0.0795600   0.0710763   0.0880437
6 months    ki1135781-COHORTS       Q2                   NA                0.0549451   0.0383911   0.0714990
6 months    ki1135781-COHORTS       Q3                   NA                0.0446492   0.0338722   0.0554262
6 months    ki1135781-COHORTS       Q4                   NA                0.0154028   0.0106058   0.0201999
9 months    ki1135781-COHORTS       Q1                   NA                0.1349162   0.1237245   0.1461079
9 months    ki1135781-COHORTS       Q2                   NA                0.0739726   0.0549854   0.0929598
9 months    ki1135781-COHORTS       Q3                   NA                0.0687548   0.0550463   0.0824633
9 months    ki1135781-COHORTS       Q4                   NA                0.0262123   0.0196669   0.0327577
12 months   ki0047075b-MAL-ED       Q1                   NA                0.0585366   0.0358056   0.0812675
12 months   ki0047075b-MAL-ED       Q2                   NA                0.0450000   0.0246777   0.0653223
12 months   ki0047075b-MAL-ED       Q3                   NA                0.0589354   0.0388028   0.0790679
12 months   ki0047075b-MAL-ED       Q4                   NA                0.0331126   0.0045636   0.0616615
12 months   ki1017093c-NIH-Crypto   Q1                   NA                0.0528634   0.0237343   0.0819925
12 months   ki1017093c-NIH-Crypto   Q2                   NA                0.0737705   0.0273535   0.1201874
12 months   ki1017093c-NIH-Crypto   Q3                   NA                0.0631579   0.0285459   0.0977698
12 months   ki1017093c-NIH-Crypto   Q4                   NA                0.0479042   0.0154908   0.0803176
12 months   ki1135781-COHORTS       Q1                   NA                0.2087114   0.1948577   0.2225652
12 months   ki1135781-COHORTS       Q2                   NA                0.1456860   0.1196793   0.1716927
12 months   ki1135781-COHORTS       Q3                   NA                0.1127572   0.0949710   0.1305434
12 months   ki1135781-COHORTS       Q4                   NA                0.0435597   0.0349011   0.0522184
18 months   ki0047075b-MAL-ED       Q1                   NA                0.1230769   0.0904604   0.1556935
18 months   ki0047075b-MAL-ED       Q2                   NA                0.1066667   0.0754126   0.1379207
18 months   ki0047075b-MAL-ED       Q3                   NA                0.0990099   0.0729511   0.1250687
18 months   ki0047075b-MAL-ED       Q4                   NA                0.0466667   0.0129005   0.0804328
18 months   ki1017093c-NIH-Crypto   Q1                   NA                0.0923077   0.0516482   0.1329672
18 months   ki1017093c-NIH-Crypto   Q2                   NA                0.0733945   0.0243989   0.1223901
18 months   ki1017093c-NIH-Crypto   Q3                   NA                0.0514286   0.0186787   0.0841784
18 months   ki1017093c-NIH-Crypto   Q4                   NA                0.0451613   0.0124443   0.0778783
18 months   ki1135781-COHORTS       Q1                   NA                0.3930435   0.3648095   0.4212775
18 months   ki1135781-COHORTS       Q2                   NA                0.2681481   0.2347233   0.3015730
18 months   ki1135781-COHORTS       Q3                   NA                0.2712871   0.2325016   0.3100726
18 months   ki1135781-COHORTS       Q4                   NA                0.1178451   0.0919118   0.1437784
24 months   ki1017093c-NIH-Crypto   Q1                   NA                0.0890411   0.0427988   0.1352834
24 months   ki1017093c-NIH-Crypto   Q2                   NA                0.1136364   0.0472629   0.1800098
24 months   ki1017093c-NIH-Crypto   Q3                   NA                0.0482759   0.0133532   0.0831985
24 months   ki1017093c-NIH-Crypto   Q4                   NA                0.0370370   0.0051491   0.0689250
24 months   ki1135781-COHORTS       Q1                   NA                0.3556183   0.3389950   0.3722417
24 months   ki1135781-COHORTS       Q2                   NA                0.3169643   0.2817823   0.3521463
24 months   ki1135781-COHORTS       Q3                   NA                0.2163300   0.1929149   0.2397450
24 months   ki1135781-COHORTS       Q4                   NA                0.0761950   0.0648819   0.0875081


### Parameter: E(Y)


agecat      studyid                 intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO      NA                   NA                0.0325015   0.0321980   0.0328049
Birth       ki1135781-COHORTS       NA                   NA                0.0229607   0.0228124   0.0231089
3 months    ki0047075b-MAL-ED       NA                   NA                0.0347773   0.0345683   0.0349863
3 months    ki1135781-COHORTS       NA                   NA                0.0353604   0.0349718   0.0357490
6 months    ki1135781-COHORTS       NA                   NA                0.0527972   0.0522176   0.0533768
9 months    ki1135781-COHORTS       NA                   NA                0.0868741   0.0858450   0.0879031
12 months   ki0047075b-MAL-ED       NA                   NA                0.0524546   0.0520056   0.0529036
12 months   ki1017093c-NIH-Crypto   NA                   NA                0.0580737   0.0574023   0.0587450
12 months   ki1135781-COHORTS       NA                   NA                0.1389379   0.1373322   0.1405436
18 months   ki0047075b-MAL-ED       NA                   NA                0.1021127   0.1010036   0.1032217
18 months   ki1017093c-NIH-Crypto   NA                   NA                0.0662461   0.0647136   0.0677785
18 months   ki1135781-COHORTS       NA                   NA                0.2872777   0.2835878   0.2909676
24 months   ki1017093c-NIH-Crypto   NA                   NA                0.0680934   0.0655796   0.0706072
24 months   ki1135781-COHORTS       NA                   NA                0.2464031   0.2436158   0.2491904


### Parameter: RR


agecat      studyid                 intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO      Q2                   Q1                0.6407767   0.2047375   2.0054693
Birth       ki1126311-ZVITAMBO      Q3                   Q1                0.3738819   0.1531725   0.9126159
Birth       ki1126311-ZVITAMBO      Q4                   Q1                0.3193548   0.1337195   0.7626974
Birth       ki1135781-COHORTS       Q2                   Q1                0.4511818   0.2443555   0.8330691
Birth       ki1135781-COHORTS       Q3                   Q1                0.7250845   0.4928886   1.0666660
Birth       ki1135781-COHORTS       Q4                   Q1                0.5023008   0.3496967   0.7214997
3 months    ki0047075b-MAL-ED       Q2                   Q1                0.7910751   0.3888439   1.6093856
3 months    ki0047075b-MAL-ED       Q3                   Q1                1.0145522   0.5452513   1.8877831
3 months    ki0047075b-MAL-ED       Q4                   Q1                0.7352941   0.2753220   1.9637276
3 months    ki1135781-COHORTS       Q2                   Q1                0.2900429   0.1630743   0.5158682
3 months    ki1135781-COHORTS       Q3                   Q1                0.6214541   0.4587021   0.8419520
3 months    ki1135781-COHORTS       Q4                   Q1                0.2291253   0.1586704   0.3308645
6 months    ki1135781-COHORTS       Q2                   Q1                0.6906116   0.5016902   0.9506752
6 months    ki1135781-COHORTS       Q3                   Q1                0.5612015   0.4310415   0.7306655
6 months    ki1135781-COHORTS       Q4                   Q1                0.1936004   0.1392972   0.2690730
9 months    ki1135781-COHORTS       Q2                   Q1                0.5482855   0.4186544   0.7180554
9 months    ki1135781-COHORTS       Q3                   Q1                0.5096110   0.4106321   0.6324478
9 months    ki1135781-COHORTS       Q4                   Q1                0.1942859   0.1493370   0.2527641
12 months   ki0047075b-MAL-ED       Q2                   Q1                0.7687500   0.4237589   1.3946056
12 months   ki0047075b-MAL-ED       Q3                   Q1                1.0068124   0.6002547   1.6887353
12 months   ki0047075b-MAL-ED       Q4                   Q1                0.5656733   0.2197355   1.4562337
12 months   ki1017093c-NIH-Crypto   Q2                   Q1                1.3954918   0.6046335   3.2207899
12 months   ki1017093c-NIH-Crypto   Q3                   Q1                1.1947368   0.5492392   2.5988605
12 months   ki1017093c-NIH-Crypto   Q4                   Q1                0.9061876   0.3786572   2.1686528
12 months   ki1135781-COHORTS       Q2                   Q1                0.6980260   0.5769772   0.8444705
12 months   ki1135781-COHORTS       Q3                   Q1                0.5402541   0.4552759   0.6410936
12 months   ki1135781-COHORTS       Q4                   Q1                0.2087079   0.1692487   0.2573667
18 months   ki0047075b-MAL-ED       Q2                   Q1                0.8666667   0.5838132   1.2865607
18 months   ki0047075b-MAL-ED       Q3                   Q1                0.8044554   0.5537244   1.1687195
18 months   ki0047075b-MAL-ED       Q4                   Q1                0.3791667   0.1754602   0.8193733
18 months   ki1017093c-NIH-Crypto   Q2                   Q1                0.7951070   0.3573399   1.7691707
18 months   ki1017093c-NIH-Crypto   Q3                   Q1                0.5571429   0.2568580   1.2084816
18 months   ki1017093c-NIH-Crypto   Q4                   Q1                0.4892473   0.2095623   1.1422042
18 months   ki1135781-COHORTS       Q2                   Q1                0.6822353   0.5908173   0.7877986
18 months   ki1135781-COHORTS       Q3                   Q1                0.6902217   0.5881678   0.8099830
18 months   ki1135781-COHORTS       Q4                   Q1                0.2998272   0.2378681   0.3779252
24 months   ki1017093c-NIH-Crypto   Q2                   Q1                1.2762238   0.5841052   2.7884483
24 months   ki1017093c-NIH-Crypto   Q3                   Q1                0.5421751   0.2225329   1.3209455
24 months   ki1017093c-NIH-Crypto   Q4                   Q1                0.4159544   0.1521849   1.1368938
24 months   ki1135781-COHORTS       Q2                   Q1                0.8913047   0.7901700   1.0053838
24 months   ki1135781-COHORTS       Q3                   Q1                0.6083206   0.5406660   0.6844410
24 months   ki1135781-COHORTS       Q4                   Q1                0.2142606   0.1833749   0.2503483


### Parameter: PAR


agecat      studyid                 intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1126311-ZVITAMBO      Q1                   NA                -0.0584076   -0.1343949    0.0175796
Birth       ki1135781-COHORTS       Q1                   NA                -0.0072880   -0.0126649   -0.0019111
3 months    ki0047075b-MAL-ED       Q1                   NA                -0.0030005   -0.0206227    0.0146218
3 months    ki1135781-COHORTS       Q1                   NA                -0.0187930   -0.0257479   -0.0118381
6 months    ki1135781-COHORTS       Q1                   NA                -0.0267628   -0.0352663   -0.0182593
9 months    ki1135781-COHORTS       Q1                   NA                -0.0480421   -0.0592810   -0.0368033
12 months   ki0047075b-MAL-ED       Q1                   NA                -0.0060820   -0.0288174    0.0166534
12 months   ki1017093c-NIH-Crypto   Q1                   NA                 0.0052102   -0.0239266    0.0343470
12 months   ki1135781-COHORTS       Q1                   NA                -0.0697735   -0.0837200   -0.0558270
18 months   ki0047075b-MAL-ED       Q1                   NA                -0.0209642   -0.0535996    0.0116711
18 months   ki1017093c-NIH-Crypto   Q1                   NA                -0.0260616   -0.0667500    0.0146267
18 months   ki1135781-COHORTS       Q1                   NA                -0.1057658   -0.1342399   -0.0772917
24 months   ki1017093c-NIH-Crypto   Q1                   NA                -0.0209477   -0.0672583    0.0253628
24 months   ki1135781-COHORTS       Q1                   NA                -0.1092152   -0.1260706   -0.0923598


### Parameter: PAF


agecat      studyid                 intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1126311-ZVITAMBO      Q1                   NA                -1.7970779   -5.4525806   -0.2124831
Birth       ki1135781-COHORTS       Q1                   NA                -0.3174125   -0.5737740   -0.1028113
3 months    ki0047075b-MAL-ED       Q1                   NA                -0.0862768   -0.7319236    0.3186782
3 months    ki1135781-COHORTS       Q1                   NA                -0.5314718   -0.7418163   -0.3465288
6 months    ki1135781-COHORTS       Q1                   NA                -0.5068978   -0.6774077   -0.3537204
9 months    ki1135781-COHORTS       Q1                   NA                -0.5530092   -0.6887502   -0.4281790
12 months   ki0047075b-MAL-ED       Q1                   NA                -0.1159475   -0.6456223    0.2432414
12 months   ki1017093c-NIH-Crypto   Q1                   NA                 0.0897174   -0.5795601    0.4754145
12 months   ki1135781-COHORTS       Q1                   NA                -0.5021919   -0.6068911   -0.4043145
18 months   ki0047075b-MAL-ED       Q1                   NA                -0.2053050   -0.5713962    0.0754971
18 months   ki1017093c-NIH-Crypto   Q1                   NA                -0.3934066   -1.1659006    0.1035683
18 months   ki1135781-COHORTS       Q1                   NA                -0.3681656   -0.4717387   -0.2718815
24 months   ki1017093c-NIH-Crypto   Q1                   NA                -0.3076321   -1.2008963    0.2230885
24 months   ki1135781-COHORTS       Q1                   NA                -0.4432379   -0.5143455   -0.3754692


