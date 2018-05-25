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

**Intervention Variable:** mage

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
* agecat: 12 months, studyid: ki1101329-Keneba
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
* agecat: 18 months, studyid: ki1101329-Keneba
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
* agecat: 24 months, studyid: ki1101329-Keneba
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
* agecat: 3 months, studyid: ki1101329-Keneba
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
* agecat: 6 months, studyid: ki1101329-Keneba
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
* agecat: 9 months, studyid: ki1101329-Keneba
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
* agecat: Birth, studyid: ki1101329-Keneba
* agecat: Birth, studyid: ki1126311-ZVITAMBO
* agecat: Birth, studyid: ki1135781-COHORTS

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002
* agecat: Birth, studyid: ki1000108-IRC
* agecat: Birth, studyid: ki1000109-EE
* agecat: Birth, studyid: ki1017093-NIH-Birth
* agecat: Birth, studyid: ki1017093c-NIH-Crypto
* agecat: Birth, studyid: ki1101329-Keneba
* agecat: 3 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 3 months, studyid: ki1000108-IRC
* agecat: 3 months, studyid: ki1000109-EE
* agecat: 3 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 3 months, studyid: ki1017093b-PROVIDE
* agecat: 3 months, studyid: ki1017093c-NIH-Crypto
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2
* agecat: 3 months, studyid: ki1112895-Guatemala BSC
* agecat: 3 months, studyid: ki1113344-GMS-Nepal
* agecat: 6 months, studyid: ki1000108-IRC
* agecat: 6 months, studyid: ki1000109-EE
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 6 months, studyid: ki1017093b-PROVIDE
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2
* agecat: 6 months, studyid: ki1112895-Guatemala BSC
* agecat: 6 months, studyid: ki1113344-GMS-Nepal
* agecat: 9 months, studyid: ki1000108-IRC
* agecat: 9 months, studyid: ki1000109-EE
* agecat: 9 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 9 months, studyid: ki1017093b-PROVIDE
* agecat: 9 months, studyid: ki1066203-TanzaniaChild2
* agecat: 9 months, studyid: ki1112895-Guatemala BSC
* agecat: 9 months, studyid: ki1148112-LCNI-5
* agecat: 12 months, studyid: ki1000108-IRC
* agecat: 12 months, studyid: ki1000109-EE
* agecat: 12 months, studyid: ki1017093b-PROVIDE
* agecat: 12 months, studyid: ki1066203-TanzaniaChild2
* agecat: 12 months, studyid: ki1112895-Guatemala BSC
* agecat: 12 months, studyid: ki1148112-LCNI-5
* agecat: 18 months, studyid: ki1000108-IRC
* agecat: 18 months, studyid: ki1000109-EE
* agecat: 18 months, studyid: ki1017093b-PROVIDE
* agecat: 18 months, studyid: ki1066203-TanzaniaChild2
* agecat: 24 months, studyid: ki1000108-IRC
* agecat: 24 months, studyid: ki1017093b-PROVIDE
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2
* agecat: 24 months, studyid: ki1126311-ZVITAMBO

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness




# Results Detail

## Results Plots
![](/tmp/a32cff6f-8f08-49e1-90d8-2acbc1f7b44d/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a32cff6f-8f08-49e1-90d8-2acbc1f7b44d/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/a32cff6f-8f08-49e1-90d8-2acbc1f7b44d/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a32cff6f-8f08-49e1-90d8-2acbc1f7b44d/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Data Summary

agecat      studyid                    A             n     nA   nAY0   nAY1
----------  -------------------------  --------  -----  -----  -----  -----
Birth       ki0047075b-MAL-ED          <=20       1498    340    328     12
Birth       ki0047075b-MAL-ED          (20-24]    1498    378    367     11
Birth       ki0047075b-MAL-ED          (24-28]    1498    399    384     15
Birth       ki0047075b-MAL-ED          >28        1498    381    373      8
Birth       ki1000108-CMC-V-BCS-2002   <=20         90     20     17      3
Birth       ki1000108-CMC-V-BCS-2002   (20-24]      90     33     33      0
Birth       ki1000108-CMC-V-BCS-2002   (24-28]      90     29     29      0
Birth       ki1000108-CMC-V-BCS-2002   >28          90      8      8      0
Birth       ki1000108-IRC              <=20        388     81     75      6
Birth       ki1000108-IRC              (20-24]     388    164    157      7
Birth       ki1000108-IRC              (24-28]     388    102     99      3
Birth       ki1000108-IRC              >28         388     41     41      0
Birth       ki1000109-EE               <=20          2      0      0      0
Birth       ki1000109-EE               (20-24]       2      0      0      0
Birth       ki1000109-EE               (24-28]       2      0      0      0
Birth       ki1000109-EE               >28           2      2      2      0
Birth       ki1000304b-SAS-FoodSuppl   <=20          0      0      0      0
Birth       ki1000304b-SAS-FoodSuppl   (20-24]       0      0      0      0
Birth       ki1000304b-SAS-FoodSuppl   (24-28]       0      0      0      0
Birth       ki1000304b-SAS-FoodSuppl   >28           0      0      0      0
Birth       ki1017093-NIH-Birth        <=20         28      9      9      0
Birth       ki1017093-NIH-Birth        (20-24]      28      7      7      0
Birth       ki1017093-NIH-Birth        (24-28]      28      5      5      0
Birth       ki1017093-NIH-Birth        >28          28      7      7      0
Birth       ki1017093b-PROVIDE         <=20          0      0      0      0
Birth       ki1017093b-PROVIDE         (20-24]       0      0      0      0
Birth       ki1017093b-PROVIDE         (24-28]       0      0      0      0
Birth       ki1017093b-PROVIDE         >28           0      0      0      0
Birth       ki1017093c-NIH-Crypto      <=20         27     10      9      1
Birth       ki1017093c-NIH-Crypto      (20-24]      27      6      6      0
Birth       ki1017093c-NIH-Crypto      (24-28]      27      9      9      0
Birth       ki1017093c-NIH-Crypto      >28          27      2      2      0
Birth       ki1066203-TanzaniaChild2   <=20          0      0      0      0
Birth       ki1066203-TanzaniaChild2   (20-24]       0      0      0      0
Birth       ki1066203-TanzaniaChild2   (24-28]       0      0      0      0
Birth       ki1066203-TanzaniaChild2   >28           0      0      0      0
Birth       ki1101329-Keneba           <=20       1541    327    319      8
Birth       ki1101329-Keneba           (20-24]    1541    276    270      6
Birth       ki1101329-Keneba           (24-28]    1541    265    261      4
Birth       ki1101329-Keneba           >28        1541    673    662     11
Birth       ki1112895-Guatemala BSC    <=20          0      0      0      0
Birth       ki1112895-Guatemala BSC    (20-24]       0      0      0      0
Birth       ki1112895-Guatemala BSC    (24-28]       0      0      0      0
Birth       ki1112895-Guatemala BSC    >28           0      0      0      0
Birth       ki1113344-GMS-Nepal        <=20          0      0      0      0
Birth       ki1113344-GMS-Nepal        (20-24]       0      0      0      0
Birth       ki1113344-GMS-Nepal        (24-28]       0      0      0      0
Birth       ki1113344-GMS-Nepal        >28           0      0      0      0
Birth       ki1126311-ZVITAMBO         <=20       3439    878    847     31
Birth       ki1126311-ZVITAMBO         (20-24]    3439   1130   1092     38
Birth       ki1126311-ZVITAMBO         (24-28]    3439    749    722     27
Birth       ki1126311-ZVITAMBO         >28        3439    682    666     16
Birth       ki1135781-COHORTS          <=20       8172   1302   1263     39
Birth       ki1135781-COHORTS          (20-24]    8172   2198   2148     50
Birth       ki1135781-COHORTS          (24-28]    8172   2181   2134     47
Birth       ki1135781-COHORTS          >28        8172   2491   2439     52
Birth       ki1148112-LCNI-5           <=20          0      0      0      0
Birth       ki1148112-LCNI-5           (20-24]       0      0      0      0
Birth       ki1148112-LCNI-5           (24-28]       0      0      0      0
Birth       ki1148112-LCNI-5           >28           0      0      0      0
3 months    ki0047075b-MAL-ED          <=20       1776    388    372     16
3 months    ki0047075b-MAL-ED          (20-24]    1776    417    397     20
3 months    ki0047075b-MAL-ED          (24-28]    1776    479    467     12
3 months    ki0047075b-MAL-ED          >28        1776    492    476     16
3 months    ki1000108-CMC-V-BCS-2002   <=20        362     69     58     11
3 months    ki1000108-CMC-V-BCS-2002   (20-24]     362    145    134     11
3 months    ki1000108-CMC-V-BCS-2002   (24-28]     362     98     90      8
3 months    ki1000108-CMC-V-BCS-2002   >28         362     50     47      3
3 months    ki1000108-IRC              <=20        407     86     74     12
3 months    ki1000108-IRC              (20-24]     407    170    153     17
3 months    ki1000108-IRC              (24-28]     407    108    101      7
3 months    ki1000108-IRC              >28         407     43     43      0
3 months    ki1000109-EE               <=20        374      4      3      1
3 months    ki1000109-EE               (20-24]     374     17     10      7
3 months    ki1000109-EE               (24-28]     374    115     78     37
3 months    ki1000109-EE               >28         374    238    162     76
3 months    ki1000304b-SAS-FoodSuppl   <=20         97     25     23      2
3 months    ki1000304b-SAS-FoodSuppl   (20-24]      97     17     15      2
3 months    ki1000304b-SAS-FoodSuppl   (24-28]      97     37     29      8
3 months    ki1000304b-SAS-FoodSuppl   >28          97     18     17      1
3 months    ki1017093-NIH-Birth        <=20        568    132    127      5
3 months    ki1017093-NIH-Birth        (20-24]     568    143    138      5
3 months    ki1017093-NIH-Birth        (24-28]     568    157    144     13
3 months    ki1017093-NIH-Birth        >28         568    136    126     10
3 months    ki1017093b-PROVIDE         <=20        168     38     37      1
3 months    ki1017093b-PROVIDE         (20-24]     168     53     53      0
3 months    ki1017093b-PROVIDE         (24-28]     168     43     40      3
3 months    ki1017093b-PROVIDE         >28         168     34     33      1
3 months    ki1017093c-NIH-Crypto      <=20        728    218    202     16
3 months    ki1017093c-NIH-Crypto      (20-24]     728    164    157      7
3 months    ki1017093c-NIH-Crypto      (24-28]     728    202    198      4
3 months    ki1017093c-NIH-Crypto      >28         728    144    138      6
3 months    ki1066203-TanzaniaChild2   <=20        573     67     64      3
3 months    ki1066203-TanzaniaChild2   (20-24]     573    151    148      3
3 months    ki1066203-TanzaniaChild2   (24-28]     573    163    160      3
3 months    ki1066203-TanzaniaChild2   >28         573    192    191      1
3 months    ki1101329-Keneba           <=20       2174    445    431     14
3 months    ki1101329-Keneba           (20-24]    2174    443    429     14
3 months    ki1101329-Keneba           (24-28]    2174    384    375      9
3 months    ki1101329-Keneba           >28        2174    902    867     35
3 months    ki1112895-Guatemala BSC    <=20          4      2      0      2
3 months    ki1112895-Guatemala BSC    (20-24]       4      2      2      0
3 months    ki1112895-Guatemala BSC    (24-28]       4      0      0      0
3 months    ki1112895-Guatemala BSC    >28           4      0      0      0
3 months    ki1113344-GMS-Nepal        <=20        571    167    159      8
3 months    ki1113344-GMS-Nepal        (20-24]     571    146    143      3
3 months    ki1113344-GMS-Nepal        (24-28]     571    159    157      2
3 months    ki1113344-GMS-Nepal        >28         571     99     90      9
3 months    ki1126311-ZVITAMBO         <=20       2267    540    506     34
3 months    ki1126311-ZVITAMBO         (20-24]    2267    709    675     34
3 months    ki1126311-ZVITAMBO         (24-28]    2267    519    495     24
3 months    ki1126311-ZVITAMBO         >28        2267    499    477     22
3 months    ki1135781-COHORTS          <=20       8370   1335   1272     63
3 months    ki1135781-COHORTS          (20-24]    8370   2235   2173     62
3 months    ki1135781-COHORTS          (24-28]    8370   2259   2183     76
3 months    ki1135781-COHORTS          >28        8370   2541   2439    102
3 months    ki1148112-LCNI-5           <=20          0      0      0      0
3 months    ki1148112-LCNI-5           (20-24]       0      0      0      0
3 months    ki1148112-LCNI-5           (24-28]       0      0      0      0
3 months    ki1148112-LCNI-5           >28           0      0      0      0
6 months    ki0047075b-MAL-ED          <=20       1694    369    355     14
6 months    ki0047075b-MAL-ED          (20-24]    1694    394    383     11
6 months    ki0047075b-MAL-ED          (24-28]    1694    459    444     15
6 months    ki0047075b-MAL-ED          >28        1694    472    462     10
6 months    ki1000108-CMC-V-BCS-2002   <=20        369     69     63      6
6 months    ki1000108-CMC-V-BCS-2002   (20-24]     369    149    131     18
6 months    ki1000108-CMC-V-BCS-2002   (24-28]     369    100     90     10
6 months    ki1000108-CMC-V-BCS-2002   >28         369     51     43      8
6 months    ki1000108-IRC              <=20        407     86     79      7
6 months    ki1000108-IRC              (20-24]     407    169    153     16
6 months    ki1000108-IRC              (24-28]     407    108    104      4
6 months    ki1000108-IRC              >28         407     44     42      2
6 months    ki1000109-EE               <=20        370      4      3      1
6 months    ki1000109-EE               (20-24]     370     16     12      4
6 months    ki1000109-EE               (24-28]     370    114     89     25
6 months    ki1000109-EE               >28         370    236    173     63
6 months    ki1000304b-SAS-FoodSuppl   <=20         96     28     27      1
6 months    ki1000304b-SAS-FoodSuppl   (20-24]      96     15     12      3
6 months    ki1000304b-SAS-FoodSuppl   (24-28]      96     35     26      9
6 months    ki1000304b-SAS-FoodSuppl   >28          96     18     16      2
6 months    ki1017093-NIH-Birth        <=20        535    125    120      5
6 months    ki1017093-NIH-Birth        (20-24]     535    131    123      8
6 months    ki1017093-NIH-Birth        (24-28]     535    150    139     11
6 months    ki1017093-NIH-Birth        >28         535    129    118     11
6 months    ki1017093b-PROVIDE         <=20        153     35     34      1
6 months    ki1017093b-PROVIDE         (20-24]     153     46     44      2
6 months    ki1017093b-PROVIDE         (24-28]     153     40     38      2
6 months    ki1017093b-PROVIDE         >28         153     32     31      1
6 months    ki1017093c-NIH-Crypto      <=20        715    215    206      9
6 months    ki1017093c-NIH-Crypto      (20-24]     715    159    156      3
6 months    ki1017093c-NIH-Crypto      (24-28]     715    200    195      5
6 months    ki1017093c-NIH-Crypto      >28         715    141    135      6
6 months    ki1066203-TanzaniaChild2   <=20        502     61     60      1
6 months    ki1066203-TanzaniaChild2   (20-24]     502    127    126      1
6 months    ki1066203-TanzaniaChild2   (24-28]     502    141    139      2
6 months    ki1066203-TanzaniaChild2   >28         502    173    170      3
6 months    ki1101329-Keneba           <=20       2080    405    397      8
6 months    ki1101329-Keneba           (20-24]    2080    407    395     12
6 months    ki1101329-Keneba           (24-28]    2080    376    367      9
6 months    ki1101329-Keneba           >28        2080    892    851     41
6 months    ki1112895-Guatemala BSC    <=20         90     26     25      1
6 months    ki1112895-Guatemala BSC    (20-24]      90     31     29      2
6 months    ki1112895-Guatemala BSC    (24-28]      90     13     12      1
6 months    ki1112895-Guatemala BSC    >28          90     20     16      4
6 months    ki1113344-GMS-Nepal        <=20        563    160    152      8
6 months    ki1113344-GMS-Nepal        (20-24]     563    147    143      4
6 months    ki1113344-GMS-Nepal        (24-28]     563    161    159      2
6 months    ki1113344-GMS-Nepal        >28         563     95     89      6
6 months    ki1126311-ZVITAMBO         <=20       2049    495    478     17
6 months    ki1126311-ZVITAMBO         (20-24]    2049    655    634     21
6 months    ki1126311-ZVITAMBO         (24-28]    2049    453    435     18
6 months    ki1126311-ZVITAMBO         >28        2049    446    430     16
6 months    ki1135781-COHORTS          <=20       8076   1265   1190     75
6 months    ki1135781-COHORTS          (20-24]    8076   2169   2068    101
6 months    ki1135781-COHORTS          (24-28]    8076   2180   2073    107
6 months    ki1135781-COHORTS          >28        8076   2462   2302    160
6 months    ki1148112-LCNI-5           <=20        343     83     78      5
6 months    ki1148112-LCNI-5           (20-24]     343     82     76      6
6 months    ki1148112-LCNI-5           (24-28]     343     80     74      6
6 months    ki1148112-LCNI-5           >28         343     98     92      6
9 months    ki0047075b-MAL-ED          <=20       1638    352    333     19
9 months    ki0047075b-MAL-ED          (20-24]    1638    371    354     17
9 months    ki0047075b-MAL-ED          (24-28]    1638    449    430     19
9 months    ki0047075b-MAL-ED          >28        1638    466    449     17
9 months    ki1000108-CMC-V-BCS-2002   <=20        366     69     61      8
9 months    ki1000108-CMC-V-BCS-2002   (20-24]     366    149    128     21
9 months    ki1000108-CMC-V-BCS-2002   (24-28]     366     99     87     12
9 months    ki1000108-CMC-V-BCS-2002   >28         366     49     43      6
9 months    ki1000108-IRC              <=20        407     86     77      9
9 months    ki1000108-IRC              (20-24]     407    169    151     18
9 months    ki1000108-IRC              (24-28]     407    108    103      5
9 months    ki1000108-IRC              >28         407     44     42      2
9 months    ki1000109-EE               <=20        364      4      4      0
9 months    ki1000109-EE               (20-24]     364     17     14      3
9 months    ki1000109-EE               (24-28]     364    113     85     28
9 months    ki1000109-EE               >28         364    230    167     63
9 months    ki1000304b-SAS-FoodSuppl   <=20         85     24     19      5
9 months    ki1000304b-SAS-FoodSuppl   (20-24]      85     13     10      3
9 months    ki1000304b-SAS-FoodSuppl   (24-28]      85     32     22     10
9 months    ki1000304b-SAS-FoodSuppl   >28          85     16     14      2
9 months    ki1017093-NIH-Birth        <=20        505    114    109      5
9 months    ki1017093-NIH-Birth        (20-24]     505    125    111     14
9 months    ki1017093-NIH-Birth        (24-28]     505    145    130     15
9 months    ki1017093-NIH-Birth        >28         505    121    110     11
9 months    ki1017093b-PROVIDE         <=20        158     36     34      2
9 months    ki1017093b-PROVIDE         (20-24]     158     49     48      1
9 months    ki1017093b-PROVIDE         (24-28]     158     40     37      3
9 months    ki1017093b-PROVIDE         >28         158     33     30      3
9 months    ki1017093c-NIH-Crypto      <=20        706    209    200      9
9 months    ki1017093c-NIH-Crypto      (20-24]     706    162    154      8
9 months    ki1017093c-NIH-Crypto      (24-28]     706    195    189      6
9 months    ki1017093c-NIH-Crypto      >28         706    140    135      5
9 months    ki1066203-TanzaniaChild2   <=20        432     46     46      0
9 months    ki1066203-TanzaniaChild2   (20-24]     432    109    106      3
9 months    ki1066203-TanzaniaChild2   (24-28]     432    125    123      2
9 months    ki1066203-TanzaniaChild2   >28         432    152    150      2
9 months    ki1101329-Keneba           <=20       2057    383    372     11
9 months    ki1101329-Keneba           (20-24]    2057    394    378     16
9 months    ki1101329-Keneba           (24-28]    2057    377    363     14
9 months    ki1101329-Keneba           >28        2057    903    846     57
9 months    ki1112895-Guatemala BSC    <=20         60     17     14      3
9 months    ki1112895-Guatemala BSC    (20-24]      60     20     18      2
9 months    ki1112895-Guatemala BSC    (24-28]      60     11     10      1
9 months    ki1112895-Guatemala BSC    >28          60     12      9      3
9 months    ki1113344-GMS-Nepal        <=20        551    161    148     13
9 months    ki1113344-GMS-Nepal        (20-24]     551    141    133      8
9 months    ki1113344-GMS-Nepal        (24-28]     551    158    150      8
9 months    ki1113344-GMS-Nepal        >28         551     91     85      6
9 months    ki1126311-ZVITAMBO         <=20       1960    474    453     21
9 months    ki1126311-ZVITAMBO         (20-24]    1960    620    589     31
9 months    ki1126311-ZVITAMBO         (24-28]    1960    450    429     21
9 months    ki1126311-ZVITAMBO         >28        1960    416    402     14
9 months    ki1135781-COHORTS          <=20       7448   1169   1061    108
9 months    ki1135781-COHORTS          (20-24]    7448   1954   1817    137
9 months    ki1135781-COHORTS          (24-28]    7448   1994   1830    164
9 months    ki1135781-COHORTS          >28        7448   2331   2071    260
9 months    ki1148112-LCNI-5           <=20        269     72     68      4
9 months    ki1148112-LCNI-5           (20-24]     269     61     57      4
9 months    ki1148112-LCNI-5           (24-28]     269     63     61      2
9 months    ki1148112-LCNI-5           >28         269     73     70      3
12 months   ki0047075b-MAL-ED          <=20       1614    348    326     22
12 months   ki0047075b-MAL-ED          (20-24]    1614    367    344     23
12 months   ki0047075b-MAL-ED          (24-28]    1614    444    417     27
12 months   ki0047075b-MAL-ED          >28        1614    455    425     30
12 months   ki1000108-CMC-V-BCS-2002   <=20        368     69     54     15
12 months   ki1000108-CMC-V-BCS-2002   (20-24]     368    148    108     40
12 months   ki1000108-CMC-V-BCS-2002   (24-28]     368    100     84     16
12 months   ki1000108-CMC-V-BCS-2002   >28         368     51     39     12
12 months   ki1000108-IRC              <=20        406     85     76      9
12 months   ki1000108-IRC              (20-24]     406    169    148     21
12 months   ki1000108-IRC              (24-28]     406    108    105      3
12 months   ki1000108-IRC              >28         406     44     43      1
12 months   ki1000109-EE               <=20        355      4      4      0
12 months   ki1000109-EE               (20-24]     355     15     10      5
12 months   ki1000109-EE               (24-28]     355    110     73     37
12 months   ki1000109-EE               >28         355    226    149     77
12 months   ki1000304b-SAS-FoodSuppl   <=20         92     24     13     11
12 months   ki1000304b-SAS-FoodSuppl   (20-24]      92     16      9      7
12 months   ki1000304b-SAS-FoodSuppl   (24-28]      92     35     19     16
12 months   ki1000304b-SAS-FoodSuppl   >28          92     17     10      7
12 months   ki1017093-NIH-Birth        <=20        489    113    106      7
12 months   ki1017093-NIH-Birth        (20-24]     489    121    109     12
12 months   ki1017093-NIH-Birth        (24-28]     489    141    127     14
12 months   ki1017093-NIH-Birth        >28         489    114     99     15
12 months   ki1017093b-PROVIDE         <=20        153     33     30      3
12 months   ki1017093b-PROVIDE         (20-24]     153     49     47      2
12 months   ki1017093b-PROVIDE         (24-28]     153     40     36      4
12 months   ki1017093b-PROVIDE         >28         153     31     27      4
12 months   ki1017093c-NIH-Crypto      <=20        706    211    193     18
12 months   ki1017093c-NIH-Crypto      (20-24]     706    156    144     12
12 months   ki1017093c-NIH-Crypto      (24-28]     706    198    192      6
12 months   ki1017093c-NIH-Crypto      >28         706    141    136      5
12 months   ki1066203-TanzaniaChild2   <=20        355     39     37      2
12 months   ki1066203-TanzaniaChild2   (20-24]     355     92     89      3
12 months   ki1066203-TanzaniaChild2   (24-28]     355    102    102      0
12 months   ki1066203-TanzaniaChild2   >28         355    122    120      2
12 months   ki1101329-Keneba           <=20       1935    363    346     17
12 months   ki1101329-Keneba           (20-24]    1935    362    346     16
12 months   ki1101329-Keneba           (24-28]    1935    366    348     18
12 months   ki1101329-Keneba           >28        1935    844    767     77
12 months   ki1112895-Guatemala BSC    <=20         53     16     12      4
12 months   ki1112895-Guatemala BSC    (20-24]      53     19     16      3
12 months   ki1112895-Guatemala BSC    (24-28]      53      7      6      1
12 months   ki1112895-Guatemala BSC    >28          53     11      8      3
12 months   ki1113344-GMS-Nepal        <=20        558    160    146     14
12 months   ki1113344-GMS-Nepal        (20-24]     558    141    132      9
12 months   ki1113344-GMS-Nepal        (24-28]     558    162    146     16
12 months   ki1113344-GMS-Nepal        >28         558     95     83     12
12 months   ki1126311-ZVITAMBO         <=20       1698    409    388     21
12 months   ki1126311-ZVITAMBO         (20-24]    1698    541    510     31
12 months   ki1126311-ZVITAMBO         (24-28]    1698    388    360     28
12 months   ki1126311-ZVITAMBO         >28        1698    360    335     25
12 months   ki1135781-COHORTS          <=20       6941   1053    893    160
12 months   ki1135781-COHORTS          (20-24]    6941   1805   1592    213
12 months   ki1135781-COHORTS          (24-28]    6941   1857   1609    248
12 months   ki1135781-COHORTS          >28        6941   2226   1846    380
12 months   ki1148112-LCNI-5           <=20        258     65     61      4
12 months   ki1148112-LCNI-5           (20-24]     258     59     50      9
12 months   ki1148112-LCNI-5           (24-28]     258     59     56      3
12 months   ki1148112-LCNI-5           >28         258     75     65     10
18 months   ki0047075b-MAL-ED          <=20       1544    322    285     37
18 months   ki0047075b-MAL-ED          (20-24]    1544    349    306     43
18 months   ki0047075b-MAL-ED          (24-28]    1544    433    386     47
18 months   ki0047075b-MAL-ED          >28        1544    440    382     58
18 months   ki1000108-CMC-V-BCS-2002   <=20        369     69     51     18
18 months   ki1000108-CMC-V-BCS-2002   (20-24]     369    150     99     51
18 months   ki1000108-CMC-V-BCS-2002   (24-28]     369     99     74     25
18 months   ki1000108-CMC-V-BCS-2002   >28         369     51     36     15
18 months   ki1000108-IRC              <=20        405     87     78      9
18 months   ki1000108-IRC              (20-24]     405    167    149     18
18 months   ki1000108-IRC              (24-28]     405    107    102      5
18 months   ki1000108-IRC              >28         405     44     42      2
18 months   ki1000109-EE               <=20        348      4      2      2
18 months   ki1000109-EE               (20-24]     348     15      8      7
18 months   ki1000109-EE               (24-28]     348    108     58     50
18 months   ki1000109-EE               >28         348    221    111    110
18 months   ki1000304b-SAS-FoodSuppl   <=20         84     23     14      9
18 months   ki1000304b-SAS-FoodSuppl   (20-24]      84     16     10      6
18 months   ki1000304b-SAS-FoodSuppl   (24-28]      84     31     17     14
18 months   ki1000304b-SAS-FoodSuppl   >28          84     14      6      8
18 months   ki1017093-NIH-Birth        <=20        461    106     90     16
18 months   ki1017093-NIH-Birth        (20-24]     461    114     88     26
18 months   ki1017093-NIH-Birth        (24-28]     461    130     95     35
18 months   ki1017093-NIH-Birth        >28         461    111     87     24
18 months   ki1017093b-PROVIDE         <=20        141     31     22      9
18 months   ki1017093b-PROVIDE         (20-24]     141     44     41      3
18 months   ki1017093b-PROVIDE         (24-28]     141     38     34      4
18 months   ki1017093b-PROVIDE         >28         141     28     24      4
18 months   ki1017093c-NIH-Crypto      <=20        634    192    175     17
18 months   ki1017093c-NIH-Crypto      (20-24]     634    144    131     13
18 months   ki1017093c-NIH-Crypto      (24-28]     634    177    170      7
18 months   ki1017093c-NIH-Crypto      >28         634    121    116      5
18 months   ki1066203-TanzaniaChild2   <=20        257     26     24      2
18 months   ki1066203-TanzaniaChild2   (20-24]     257     62     58      4
18 months   ki1066203-TanzaniaChild2   (24-28]     257     78     73      5
18 months   ki1066203-TanzaniaChild2   >28         257     91     87      4
18 months   ki1101329-Keneba           <=20       1910    340    319     21
18 months   ki1101329-Keneba           (20-24]    1910    355    330     25
18 months   ki1101329-Keneba           (24-28]    1910    348    321     27
18 months   ki1101329-Keneba           >28        1910    867    771     96
18 months   ki1112895-Guatemala BSC    <=20          0      0      0      0
18 months   ki1112895-Guatemala BSC    (20-24]       0      0      0      0
18 months   ki1112895-Guatemala BSC    (24-28]       0      0      0      0
18 months   ki1112895-Guatemala BSC    >28           0      0      0      0
18 months   ki1113344-GMS-Nepal        <=20        550    163    133     30
18 months   ki1113344-GMS-Nepal        (20-24]     550    138    117     21
18 months   ki1113344-GMS-Nepal        (24-28]     550    158    138     20
18 months   ki1113344-GMS-Nepal        >28         550     91     77     14
18 months   ki1126311-ZVITAMBO         <=20        425     94     80     14
18 months   ki1126311-ZVITAMBO         (20-24]     425    138    112     26
18 months   ki1126311-ZVITAMBO         (24-28]     425     98     87     11
18 months   ki1126311-ZVITAMBO         >28         425     95     79     16
18 months   ki1135781-COHORTS          <=20       2928    518    367    151
18 months   ki1135781-COHORTS          (20-24]    2928    731    538    193
18 months   ki1135781-COHORTS          (24-28]    2928    683    503    180
18 months   ki1135781-COHORTS          >28        2928    996    678    318
18 months   ki1148112-LCNI-5           <=20        298     70     63      7
18 months   ki1148112-LCNI-5           (20-24]     298     72     61     11
18 months   ki1148112-LCNI-5           (24-28]     298     69     59     10
18 months   ki1148112-LCNI-5           >28         298     87     71     16
24 months   ki0047075b-MAL-ED          <=20       1487    296    264     32
24 months   ki0047075b-MAL-ED          (20-24]    1487    341    292     49
24 months   ki0047075b-MAL-ED          (24-28]    1487    422    379     43
24 months   ki0047075b-MAL-ED          >28        1487    428    380     48
24 months   ki1000108-CMC-V-BCS-2002   <=20        372     71     50     21
24 months   ki1000108-CMC-V-BCS-2002   (20-24]     372    150     95     55
24 months   ki1000108-CMC-V-BCS-2002   (24-28]     372    101     70     31
24 months   ki1000108-CMC-V-BCS-2002   >28         372     50     34     16
24 months   ki1000108-IRC              <=20        409     87     77     10
24 months   ki1000108-IRC              (20-24]     409    170    150     20
24 months   ki1000108-IRC              (24-28]     409    108    100      8
24 months   ki1000108-IRC              >28         409     44     41      3
24 months   ki1000109-EE               <=20          0      0      0      0
24 months   ki1000109-EE               (20-24]       0      0      0      0
24 months   ki1000109-EE               (24-28]       0      0      0      0
24 months   ki1000109-EE               >28           0      0      0      0
24 months   ki1000304b-SAS-FoodSuppl   <=20          0      0      0      0
24 months   ki1000304b-SAS-FoodSuppl   (20-24]       0      0      0      0
24 months   ki1000304b-SAS-FoodSuppl   (24-28]       0      0      0      0
24 months   ki1000304b-SAS-FoodSuppl   >28           0      0      0      0
24 months   ki1017093-NIH-Birth        <=20        427     98     82     16
24 months   ki1017093-NIH-Birth        (20-24]     427    107     84     23
24 months   ki1017093-NIH-Birth        (24-28]     427    119     88     31
24 months   ki1017093-NIH-Birth        >28         427    103     80     23
24 months   ki1017093b-PROVIDE         <=20        149     33     27      6
24 months   ki1017093b-PROVIDE         (20-24]     149     48     47      1
24 months   ki1017093b-PROVIDE         (24-28]     149     38     33      5
24 months   ki1017093b-PROVIDE         >28         149     30     24      6
24 months   ki1017093c-NIH-Crypto      <=20        514    162    148     14
24 months   ki1017093c-NIH-Crypto      (20-24]     514    115    104     11
24 months   ki1017093c-NIH-Crypto      (24-28]     514    143    136      7
24 months   ki1017093c-NIH-Crypto      >28         514     94     91      3
24 months   ki1066203-TanzaniaChild2   <=20          2      1      1      0
24 months   ki1066203-TanzaniaChild2   (20-24]       2      0      0      0
24 months   ki1066203-TanzaniaChild2   (24-28]       2      0      0      0
24 months   ki1066203-TanzaniaChild2   >28           2      1      1      0
24 months   ki1101329-Keneba           <=20       1714    307    284     23
24 months   ki1101329-Keneba           (20-24]    1714    316    295     21
24 months   ki1101329-Keneba           (24-28]    1714    312    290     22
24 months   ki1101329-Keneba           >28        1714    779    708     71
24 months   ki1112895-Guatemala BSC    <=20          0      0      0      0
24 months   ki1112895-Guatemala BSC    (20-24]       0      0      0      0
24 months   ki1112895-Guatemala BSC    (24-28]       0      0      0      0
24 months   ki1112895-Guatemala BSC    >28           0      0      0      0
24 months   ki1113344-GMS-Nepal        <=20        499    146    130     16
24 months   ki1113344-GMS-Nepal        (20-24]     499    126    113     13
24 months   ki1113344-GMS-Nepal        (24-28]     499    140    125     15
24 months   ki1113344-GMS-Nepal        >28         499     87     77     10
24 months   ki1126311-ZVITAMBO         <=20        116     27     20      7
24 months   ki1126311-ZVITAMBO         (20-24]     116     41     34      7
24 months   ki1126311-ZVITAMBO         (24-28]     116     22     18      4
24 months   ki1126311-ZVITAMBO         >28         116     26     22      4
24 months   ki1135781-COHORTS          <=20       6658   1016    709    307
24 months   ki1135781-COHORTS          (20-24]    6658   1736   1341    395
24 months   ki1135781-COHORTS          (24-28]    6658   1774   1366    408
24 months   ki1135781-COHORTS          >28        6658   2132   1527    605
24 months   ki1148112-LCNI-5           <=20        250     60     54      6
24 months   ki1148112-LCNI-5           (20-24]     250     56     50      6
24 months   ki1148112-LCNI-5           (24-28]     250     60     52      8
24 months   ki1148112-LCNI-5           >28         250     74     62     12

## Results Table

### Parameter: TSM


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          <=20                 NA                0.0352941   0.0156740   0.0549143
Birth       ki0047075b-MAL-ED          (20-24]              NA                0.0291005   0.0121499   0.0460511
Birth       ki0047075b-MAL-ED          (24-28]              NA                0.0375940   0.0189240   0.0562640
Birth       ki0047075b-MAL-ED          >28                  NA                0.0209974   0.0065960   0.0353988
Birth       ki1126311-ZVITAMBO         <=20                 NA                0.0353075   0.0230982   0.0475169
Birth       ki1126311-ZVITAMBO         (20-24]              NA                0.0336283   0.0231160   0.0441406
Birth       ki1126311-ZVITAMBO         (24-28]              NA                0.0360481   0.0226963   0.0493998
Birth       ki1126311-ZVITAMBO         >28                  NA                0.0234604   0.0120990   0.0348218
Birth       ki1135781-COHORTS          <=20                 NA                0.0299539   0.0206943   0.0392135
Birth       ki1135781-COHORTS          (20-24]              NA                0.0227480   0.0165144   0.0289815
Birth       ki1135781-COHORTS          (24-28]              NA                0.0215497   0.0154553   0.0276442
Birth       ki1135781-COHORTS          >28                  NA                0.0208752   0.0152605   0.0264898
3 months    ki0047075b-MAL-ED          <=20                 NA                0.0412371   0.0214467   0.0610275
3 months    ki0047075b-MAL-ED          (20-24]              NA                0.0479616   0.0274464   0.0684769
3 months    ki0047075b-MAL-ED          (24-28]              NA                0.0250522   0.0110526   0.0390518
3 months    ki0047075b-MAL-ED          >28                  NA                0.0325203   0.0168425   0.0481982
3 months    ki1017093-NIH-Birth        <=20                 NA                0.0378788   0.0052834   0.0704742
3 months    ki1017093-NIH-Birth        (20-24]              NA                0.0349650   0.0048314   0.0650986
3 months    ki1017093-NIH-Birth        (24-28]              NA                0.0828025   0.0396572   0.1259479
3 months    ki1017093-NIH-Birth        >28                  NA                0.0735294   0.0296251   0.1174338
3 months    ki1101329-Keneba           <=20                 NA                0.0314607   0.0152384   0.0476829
3 months    ki1101329-Keneba           (20-24]              NA                0.0316027   0.0153084   0.0478970
3 months    ki1101329-Keneba           (24-28]              NA                0.0234375   0.0083023   0.0385727
3 months    ki1101329-Keneba           >28                  NA                0.0388027   0.0261965   0.0514088
3 months    ki1126311-ZVITAMBO         <=20                 NA                0.0629630   0.0424717   0.0834542
3 months    ki1126311-ZVITAMBO         (20-24]              NA                0.0479549   0.0322235   0.0636862
3 months    ki1126311-ZVITAMBO         (24-28]              NA                0.0462428   0.0281710   0.0643146
3 months    ki1126311-ZVITAMBO         >28                  NA                0.0440882   0.0260720   0.0621044
3 months    ki1135781-COHORTS          <=20                 NA                0.0471910   0.0358156   0.0585664
3 months    ki1135781-COHORTS          (20-24]              NA                0.0277405   0.0209315   0.0345495
3 months    ki1135781-COHORTS          (24-28]              NA                0.0336432   0.0262073   0.0410791
3 months    ki1135781-COHORTS          >28                  NA                0.0401417   0.0325091   0.0477743
6 months    ki0047075b-MAL-ED          <=20                 NA                0.0379404   0.0184413   0.0574395
6 months    ki0047075b-MAL-ED          (20-24]              NA                0.0279188   0.0116473   0.0441903
6 months    ki0047075b-MAL-ED          (24-28]              NA                0.0326797   0.0164095   0.0489500
6 months    ki0047075b-MAL-ED          >28                  NA                0.0211864   0.0081912   0.0341817
6 months    ki1000108-CMC-V-BCS-2002   <=20                 NA                0.0869565   0.0203818   0.1535313
6 months    ki1000108-CMC-V-BCS-2002   (20-24]              NA                0.1208054   0.0684055   0.1732052
6 months    ki1000108-CMC-V-BCS-2002   (24-28]              NA                0.1000000   0.0411212   0.1588788
6 months    ki1000108-CMC-V-BCS-2002   >28                  NA                0.1568627   0.0569177   0.2568078
6 months    ki1017093-NIH-Birth        <=20                 NA                0.0400000   0.0056153   0.0743847
6 months    ki1017093-NIH-Birth        (20-24]              NA                0.0610687   0.0200251   0.1021123
6 months    ki1017093-NIH-Birth        (24-28]              NA                0.0733333   0.0315771   0.1150896
6 months    ki1017093-NIH-Birth        >28                  NA                0.0852713   0.0370313   0.1335113
6 months    ki1101329-Keneba           <=20                 NA                0.0197531   0.0061978   0.0333084
6 months    ki1101329-Keneba           (20-24]              NA                0.0294840   0.0130460   0.0459221
6 months    ki1101329-Keneba           (24-28]              NA                0.0239362   0.0084827   0.0393896
6 months    ki1101329-Keneba           >28                  NA                0.0459641   0.0322186   0.0597097
6 months    ki1126311-ZVITAMBO         <=20                 NA                0.0343434   0.0182968   0.0503901
6 months    ki1126311-ZVITAMBO         (20-24]              NA                0.0320611   0.0185669   0.0455552
6 months    ki1126311-ZVITAMBO         (24-28]              NA                0.0397351   0.0217428   0.0577274
6 months    ki1126311-ZVITAMBO         >28                  NA                0.0358744   0.0186103   0.0531386
6 months    ki1135781-COHORTS          <=20                 NA                0.0592885   0.0462736   0.0723035
6 months    ki1135781-COHORTS          (20-24]              NA                0.0465652   0.0376973   0.0554332
6 months    ki1135781-COHORTS          (24-28]              NA                0.0490826   0.0400131   0.0581520
6 months    ki1135781-COHORTS          >28                  NA                0.0649878   0.0552501   0.0747255
6 months    ki1148112-LCNI-5           <=20                 NA                0.0602410   0.0089788   0.1115032
6 months    ki1148112-LCNI-5           (20-24]              NA                0.0731707   0.0167234   0.1296181
6 months    ki1148112-LCNI-5           (24-28]              NA                0.0750000   0.0171986   0.1328014
6 months    ki1148112-LCNI-5           >28                  NA                0.0612245   0.0136896   0.1087594
9 months    ki0047075b-MAL-ED          <=20                 NA                0.0539773   0.0303635   0.0775911
9 months    ki0047075b-MAL-ED          (20-24]              NA                0.0458221   0.0245385   0.0671057
9 months    ki0047075b-MAL-ED          (24-28]              NA                0.0423163   0.0236901   0.0609424
9 months    ki0047075b-MAL-ED          >28                  NA                0.0364807   0.0194532   0.0535081
9 months    ki1000108-CMC-V-BCS-2002   <=20                 NA                0.1159420   0.0402973   0.1915867
9 months    ki1000108-CMC-V-BCS-2002   (20-24]              NA                0.1409396   0.0849925   0.1968867
9 months    ki1000108-CMC-V-BCS-2002   (24-28]              NA                0.1212121   0.0568338   0.1855904
9 months    ki1000108-CMC-V-BCS-2002   >28                  NA                0.1224490   0.0305400   0.2143580
9 months    ki1017093-NIH-Birth        <=20                 NA                0.0438597   0.0062309   0.0814884
9 months    ki1017093-NIH-Birth        (20-24]              NA                0.1120000   0.0566600   0.1673400
9 months    ki1017093-NIH-Birth        (24-28]              NA                0.1034483   0.0538298   0.1530668
9 months    ki1017093-NIH-Birth        >28                  NA                0.0909091   0.0396356   0.1421826
9 months    ki1017093c-NIH-Crypto      <=20                 NA                0.0430622   0.0155216   0.0706028
9 months    ki1017093c-NIH-Crypto      (20-24]              NA                0.0493827   0.0159948   0.0827706
9 months    ki1017093c-NIH-Crypto      (24-28]              NA                0.0307692   0.0065137   0.0550247
9 months    ki1017093c-NIH-Crypto      >28                  NA                0.0357143   0.0049522   0.0664764
9 months    ki1101329-Keneba           <=20                 NA                0.0287206   0.0119896   0.0454517
9 months    ki1101329-Keneba           (20-24]              NA                0.0406091   0.0211145   0.0601038
9 months    ki1101329-Keneba           (24-28]              NA                0.0371353   0.0180429   0.0562276
9 months    ki1101329-Keneba           >28                  NA                0.0631229   0.0472578   0.0789881
9 months    ki1113344-GMS-Nepal        <=20                 NA                0.0807453   0.0386236   0.1228671
9 months    ki1113344-GMS-Nepal        (20-24]              NA                0.0567376   0.0185181   0.0949571
9 months    ki1113344-GMS-Nepal        (24-28]              NA                0.0506329   0.0164155   0.0848504
9 months    ki1113344-GMS-Nepal        >28                  NA                0.0659341   0.0148994   0.1169688
9 months    ki1126311-ZVITAMBO         <=20                 NA                0.0443038   0.0257749   0.0628327
9 months    ki1126311-ZVITAMBO         (20-24]              NA                0.0500000   0.0328403   0.0671597
9 months    ki1126311-ZVITAMBO         (24-28]              NA                0.0466667   0.0271737   0.0661597
9 months    ki1126311-ZVITAMBO         >28                  NA                0.0336538   0.0163200   0.0509877
9 months    ki1135781-COHORTS          <=20                 NA                0.0923867   0.0757860   0.1089873
9 months    ki1135781-COHORTS          (20-24]              NA                0.0701126   0.0587905   0.0814347
9 months    ki1135781-COHORTS          (24-28]              NA                0.0822467   0.0701870   0.0943065
9 months    ki1135781-COHORTS          >28                  NA                0.1115401   0.0987598   0.1243204
12 months   ki0047075b-MAL-ED          <=20                 NA                0.0632184   0.0376423   0.0887945
12 months   ki0047075b-MAL-ED          (20-24]              NA                0.0626703   0.0378660   0.0874746
12 months   ki0047075b-MAL-ED          (24-28]              NA                0.0608108   0.0385747   0.0830469
12 months   ki0047075b-MAL-ED          >28                  NA                0.0659341   0.0431243   0.0887438
12 months   ki1000108-CMC-V-BCS-2002   <=20                 NA                0.2173913   0.1199355   0.3148471
12 months   ki1000108-CMC-V-BCS-2002   (20-24]              NA                0.2702703   0.1986249   0.3419157
12 months   ki1000108-CMC-V-BCS-2002   (24-28]              NA                0.1600000   0.0880487   0.2319513
12 months   ki1000108-CMC-V-BCS-2002   >28                  NA                0.2352941   0.1187188   0.3518694
12 months   ki1000304b-SAS-FoodSuppl   <=20                 NA                0.4583333   0.2578988   0.6587678
12 months   ki1000304b-SAS-FoodSuppl   (20-24]              NA                0.4375000   0.1930941   0.6819059
12 months   ki1000304b-SAS-FoodSuppl   (24-28]              NA                0.4571429   0.2912010   0.6230847
12 months   ki1000304b-SAS-FoodSuppl   >28                  NA                0.4117647   0.1765324   0.6469970
12 months   ki1017093-NIH-Birth        <=20                 NA                0.0619469   0.0174554   0.1064384
12 months   ki1017093-NIH-Birth        (20-24]              NA                0.0991736   0.0458624   0.1524847
12 months   ki1017093-NIH-Birth        (24-28]              NA                0.0992908   0.0498791   0.1487025
12 months   ki1017093-NIH-Birth        >28                  NA                0.1315789   0.0694637   0.1936942
12 months   ki1017093c-NIH-Crypto      <=20                 NA                0.0853081   0.0475902   0.1230259
12 months   ki1017093c-NIH-Crypto      (20-24]              NA                0.0769231   0.0350783   0.1187678
12 months   ki1017093c-NIH-Crypto      (24-28]              NA                0.0303030   0.0064093   0.0541968
12 months   ki1017093c-NIH-Crypto      >28                  NA                0.0354610   0.0049131   0.0660089
12 months   ki1101329-Keneba           <=20                 NA                0.0468320   0.0250918   0.0685721
12 months   ki1101329-Keneba           (20-24]              NA                0.0441989   0.0230204   0.0653774
12 months   ki1101329-Keneba           (24-28]              NA                0.0491803   0.0270206   0.0713401
12 months   ki1101329-Keneba           >28                  NA                0.0912322   0.0718015   0.1106630
12 months   ki1113344-GMS-Nepal        <=20                 NA                0.0875000   0.0436774   0.1313226
12 months   ki1113344-GMS-Nepal        (20-24]              NA                0.0638298   0.0234451   0.1042145
12 months   ki1113344-GMS-Nepal        (24-28]              NA                0.0987654   0.0527820   0.1447489
12 months   ki1113344-GMS-Nepal        >28                  NA                0.1263158   0.0594534   0.1931782
12 months   ki1126311-ZVITAMBO         <=20                 NA                0.0513447   0.0299495   0.0727400
12 months   ki1126311-ZVITAMBO         (20-24]              NA                0.0573013   0.0377108   0.0768918
12 months   ki1126311-ZVITAMBO         (24-28]              NA                0.0721649   0.0464101   0.0979198
12 months   ki1126311-ZVITAMBO         >28                  NA                0.0694444   0.0431772   0.0957117
12 months   ki1135781-COHORTS          <=20                 NA                0.1519468   0.1302637   0.1736300
12 months   ki1135781-COHORTS          (20-24]              NA                0.1180055   0.1031214   0.1328897
12 months   ki1135781-COHORTS          (24-28]              NA                0.1335487   0.1180761   0.1490214
12 months   ki1135781-COHORTS          >28                  NA                0.1707098   0.1550783   0.1863412
18 months   ki0047075b-MAL-ED          <=20                 NA                0.1149068   0.0800628   0.1497509
18 months   ki0047075b-MAL-ED          (20-24]              NA                0.1232092   0.0887150   0.1577033
18 months   ki0047075b-MAL-ED          (24-28]              NA                0.1085450   0.0792361   0.1378539
18 months   ki0047075b-MAL-ED          >28                  NA                0.1318182   0.1001986   0.1634377
18 months   ki1000108-CMC-V-BCS-2002   <=20                 NA                0.2608696   0.1571203   0.3646188
18 months   ki1000108-CMC-V-BCS-2002   (20-24]              NA                0.3400000   0.2640893   0.4159107
18 months   ki1000108-CMC-V-BCS-2002   (24-28]              NA                0.2525253   0.1668273   0.3382232
18 months   ki1000108-CMC-V-BCS-2002   >28                  NA                0.2941176   0.1688961   0.4193392
18 months   ki1000304b-SAS-FoodSuppl   <=20                 NA                0.3913043   0.1906529   0.5919558
18 months   ki1000304b-SAS-FoodSuppl   (20-24]              NA                0.3750000   0.1363594   0.6136406
18 months   ki1000304b-SAS-FoodSuppl   (24-28]              NA                0.4516129   0.2753769   0.6278489
18 months   ki1000304b-SAS-FoodSuppl   >28                  NA                0.5714286   0.3106468   0.8322104
18 months   ki1017093-NIH-Birth        <=20                 NA                0.1509434   0.0827186   0.2191682
18 months   ki1017093-NIH-Birth        (20-24]              NA                0.2280702   0.1509638   0.3051766
18 months   ki1017093-NIH-Birth        (24-28]              NA                0.2692308   0.1928999   0.3455617
18 months   ki1017093-NIH-Birth        >28                  NA                0.2162162   0.1395506   0.2928818
18 months   ki1017093c-NIH-Crypto      <=20                 NA                0.0885417   0.0483272   0.1287562
18 months   ki1017093c-NIH-Crypto      (20-24]              NA                0.0902778   0.0434337   0.1371218
18 months   ki1017093c-NIH-Crypto      (24-28]              NA                0.0395480   0.0108135   0.0682826
18 months   ki1017093c-NIH-Crypto      >28                  NA                0.0413223   0.0058306   0.0768140
18 months   ki1101329-Keneba           <=20                 NA                0.0617647   0.0361701   0.0873593
18 months   ki1101329-Keneba           (20-24]              NA                0.0704225   0.0438002   0.0970449
18 months   ki1101329-Keneba           (24-28]              NA                0.0775862   0.0494719   0.1057005
18 months   ki1101329-Keneba           >28                  NA                0.1107266   0.0898339   0.1316194
18 months   ki1113344-GMS-Nepal        <=20                 NA                0.1840491   0.1245037   0.2435945
18 months   ki1113344-GMS-Nepal        (20-24]              NA                0.1521739   0.0921910   0.2121568
18 months   ki1113344-GMS-Nepal        (24-28]              NA                0.1265823   0.0746889   0.1784757
18 months   ki1113344-GMS-Nepal        >28                  NA                0.1538462   0.0796484   0.2280439
18 months   ki1126311-ZVITAMBO         <=20                 NA                0.1489362   0.0768791   0.2209933
18 months   ki1126311-ZVITAMBO         (20-24]              NA                0.1884058   0.1230872   0.2537244
18 months   ki1126311-ZVITAMBO         (24-28]              NA                0.1122449   0.0496734   0.1748164
18 months   ki1126311-ZVITAMBO         >28                  NA                0.1684211   0.0930772   0.2437649
18 months   ki1135781-COHORTS          <=20                 NA                0.2915058   0.2523632   0.3306483
18 months   ki1135781-COHORTS          (20-24]              NA                0.2640219   0.2320612   0.2959826
18 months   ki1135781-COHORTS          (24-28]              NA                0.2635432   0.2304978   0.2965886
18 months   ki1135781-COHORTS          >28                  NA                0.3192771   0.2903196   0.3482346
18 months   ki1148112-LCNI-5           <=20                 NA                0.1000000   0.0296036   0.1703964
18 months   ki1148112-LCNI-5           (20-24]              NA                0.1527778   0.0695362   0.2360194
18 months   ki1148112-LCNI-5           (24-28]              NA                0.1449275   0.0617262   0.2281289
18 months   ki1148112-LCNI-5           >28                  NA                0.1839080   0.1023647   0.2654513
24 months   ki0047075b-MAL-ED          <=20                 NA                0.1081081   0.0727219   0.1434943
24 months   ki0047075b-MAL-ED          (20-24]              NA                0.1436950   0.1064514   0.1809387
24 months   ki0047075b-MAL-ED          (24-28]              NA                0.1018957   0.0730236   0.1307679
24 months   ki0047075b-MAL-ED          >28                  NA                0.1121495   0.0822447   0.1420543
24 months   ki1000108-CMC-V-BCS-2002   <=20                 NA                0.2957746   0.1894731   0.4020762
24 months   ki1000108-CMC-V-BCS-2002   (20-24]              NA                0.3666667   0.2894451   0.4438883
24 months   ki1000108-CMC-V-BCS-2002   (24-28]              NA                0.3069307   0.2168606   0.3970007
24 months   ki1000108-CMC-V-BCS-2002   >28                  NA                0.3200000   0.1905276   0.4494724
24 months   ki1017093-NIH-Birth        <=20                 NA                0.1632653   0.0900022   0.2365284
24 months   ki1017093-NIH-Birth        (20-24]              NA                0.2149533   0.1370268   0.2928798
24 months   ki1017093-NIH-Birth        (24-28]              NA                0.2605042   0.1815530   0.3394554
24 months   ki1017093-NIH-Birth        >28                  NA                0.2233010   0.1427798   0.3038222
24 months   ki1101329-Keneba           <=20                 NA                0.0749186   0.0454614   0.1043757
24 months   ki1101329-Keneba           (20-24]              NA                0.0664557   0.0389853   0.0939261
24 months   ki1101329-Keneba           (24-28]              NA                0.0705128   0.0420975   0.0989282
24 months   ki1101329-Keneba           >28                  NA                0.0911425   0.0709256   0.1113594
24 months   ki1113344-GMS-Nepal        <=20                 NA                0.1095890   0.0588682   0.1603098
24 months   ki1113344-GMS-Nepal        (20-24]              NA                0.1031746   0.0500080   0.1563412
24 months   ki1113344-GMS-Nepal        (24-28]              NA                0.1071429   0.0558576   0.1584281
24 months   ki1113344-GMS-Nepal        >28                  NA                0.1149425   0.0478537   0.1820314
24 months   ki1135781-COHORTS          <=20                 NA                0.3021654   0.2739275   0.3304033
24 months   ki1135781-COHORTS          (20-24]              NA                0.2275346   0.2078117   0.2472574
24 months   ki1135781-COHORTS          (24-28]              NA                0.2299887   0.2104045   0.2495729
24 months   ki1135781-COHORTS          >28                  NA                0.2837711   0.2646331   0.3029091
24 months   ki1148112-LCNI-5           <=20                 NA                0.1000000   0.0239386   0.1760614
24 months   ki1148112-LCNI-5           (20-24]              NA                0.1071429   0.0259726   0.1883131
24 months   ki1148112-LCNI-5           (24-28]              NA                0.1333333   0.0471470   0.2195196
24 months   ki1148112-LCNI-5           >28                  NA                0.1621622   0.0780115   0.2463128


### Parameter: E(Y)


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          NA                   NA                0.0307076   0.0303792   0.0310361
Birth       ki1126311-ZVITAMBO         NA                   NA                0.0325676   0.0324131   0.0327221
Birth       ki1135781-COHORTS          NA                   NA                0.0230054   0.0229380   0.0230728
3 months    ki0047075b-MAL-ED          NA                   NA                0.0360360   0.0356324   0.0364396
3 months    ki1017093-NIH-Birth        NA                   NA                0.0580986   0.0563420   0.0598552
3 months    ki1101329-Keneba           NA                   NA                0.0331187   0.0328846   0.0333527
3 months    ki1126311-ZVITAMBO         NA                   NA                0.0502867   0.0499893   0.0505841
3 months    ki1135781-COHORTS          NA                   NA                0.0362007   0.0360572   0.0363442
6 months    ki0047075b-MAL-ED          NA                   NA                0.0295159   0.0292219   0.0298099
6 months    ki1000108-CMC-V-BCS-2002   NA                   NA                0.1138211   0.1116240   0.1160183
6 months    ki1017093-NIH-Birth        NA                   NA                0.0654206   0.0640316   0.0668095
6 months    ki1101329-Keneba           NA                   NA                0.0336538   0.0331769   0.0341307
6 months    ki1126311-ZVITAMBO         NA                   NA                0.0351391   0.0350168   0.0352614
6 months    ki1135781-COHORTS          NA                   NA                0.0548539   0.0546824   0.0550254
6 months    ki1148112-LCNI-5           NA                   NA                0.0670554   0.0663475   0.0677633
9 months    ki0047075b-MAL-ED          NA                   NA                0.0439560   0.0436535   0.0442586
9 months    ki1000108-CMC-V-BCS-2002   NA                   NA                0.1284153   0.1273297   0.1295009
9 months    ki1017093-NIH-Birth        NA                   NA                0.0891089   0.0868801   0.0913377
9 months    ki1017093c-NIH-Crypto      NA                   NA                0.0396601   0.0391379   0.0401822
9 months    ki1101329-Keneba           NA                   NA                0.0476422   0.0470285   0.0482559
9 months    ki1113344-GMS-Nepal        NA                   NA                0.0635209   0.0625074   0.0645343
9 months    ki1126311-ZVITAMBO         NA                   NA                0.0443878   0.0441235   0.0446520
9 months    ki1135781-COHORTS          NA                   NA                0.0898228   0.0894524   0.0901931
12 months   ki0047075b-MAL-ED          NA                   NA                0.0631970   0.0631026   0.0632914
12 months   ki1000108-CMC-V-BCS-2002   NA                   NA                0.2255435   0.2209709   0.2301161
12 months   ki1000304b-SAS-FoodSuppl   NA                   NA                0.4456522   0.4420002   0.4493041
12 months   ki1017093-NIH-Birth        NA                   NA                0.0981595   0.0960524   0.1002666
12 months   ki1017093c-NIH-Crypto      NA                   NA                0.0580737   0.0562377   0.0599096
12 months   ki1101329-Keneba           NA                   NA                0.0661499   0.0651643   0.0671354
12 months   ki1113344-GMS-Nepal        NA                   NA                0.0913978   0.0896964   0.0930993
12 months   ki1126311-ZVITAMBO         NA                   NA                0.0618375   0.0614402   0.0622347
12 months   ki1135781-COHORTS          NA                   NA                0.1442155   0.1437202   0.1447109
18 months   ki0047075b-MAL-ED          NA                   NA                0.1198187   0.1193605   0.1202768
18 months   ki1000108-CMC-V-BCS-2002   NA                   NA                0.2953930   0.2914031   0.2993828
18 months   ki1000304b-SAS-FoodSuppl   NA                   NA                0.4404762   0.4262342   0.4547181
18 months   ki1017093-NIH-Birth        NA                   NA                0.2190889   0.2152132   0.2229646
18 months   ki1017093c-NIH-Crypto      NA                   NA                0.0662461   0.0643390   0.0681531
18 months   ki1101329-Keneba           NA                   NA                0.0884817   0.0875472   0.0894161
18 months   ki1113344-GMS-Nepal        NA                   NA                0.1545455   0.1527050   0.1563859
18 months   ki1126311-ZVITAMBO         NA                   NA                0.1576471   0.1549127   0.1603814
18 months   ki1135781-COHORTS          NA                   NA                0.2875683   0.2866678   0.2884688
18 months   ki1148112-LCNI-5           NA                   NA                0.1476510   0.1441917   0.1511103
24 months   ki0047075b-MAL-ED          NA                   NA                0.1156691   0.1148670   0.1164713
24 months   ki1000108-CMC-V-BCS-2002   NA                   NA                0.3306452   0.3275534   0.3337369
24 months   ki1017093-NIH-Birth        NA                   NA                0.2177986   0.2145089   0.2210883
24 months   ki1101329-Keneba           NA                   NA                0.0799300   0.0794305   0.0804295
24 months   ki1113344-GMS-Nepal        NA                   NA                0.1082164   0.1078742   0.1085586
24 months   ki1135781-COHORTS          NA                   NA                0.2575849   0.2568401   0.2583296
24 months   ki1148112-LCNI-5           NA                   NA                0.1280000   0.1248630   0.1311370


### Parameter: RR


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          (20-24]              <=20              0.8245150   0.3685639   1.8445241
Birth       ki0047075b-MAL-ED          (24-28]              <=20              1.0651629   0.5054527   2.2446649
Birth       ki0047075b-MAL-ED          >28                  <=20              0.5949256   0.2460600   1.4384152
Birth       ki1126311-ZVITAMBO         (20-24]              <=20              0.9524408   0.5975728   1.5180467
Birth       ki1126311-ZVITAMBO         (24-28]              <=20              1.0209742   0.6151049   1.6946514
Birth       ki1126311-ZVITAMBO         >28                  <=20              0.6644594   0.3664665   1.2047657
Birth       ki1135781-COHORTS          (20-24]              <=20              0.7594317   0.5024375   1.1478770
Birth       ki1135781-COHORTS          (24-28]              <=20              0.7194300   0.4731830   1.0938255
Birth       ki1135781-COHORTS          >28                  <=20              0.6969089   0.4626160   1.0498600
3 months    ki0047075b-MAL-ED          (20-24]              <=20              1.1630695   0.6115191   2.2120825
3 months    ki0047075b-MAL-ED          (24-28]              <=20              0.6075157   0.2908377   1.2690075
3 months    ki0047075b-MAL-ED          >28                  <=20              0.7886179   0.3994290   1.5570180
3 months    ki1017093-NIH-Birth        (20-24]              <=20              0.9230769   0.2730988   3.1200106
3 months    ki1017093-NIH-Birth        (24-28]              <=20              2.1859873   0.7993833   5.9777837
3 months    ki1017093-NIH-Birth        >28                  <=20              1.9411765   0.6810677   5.5327332
3 months    ki1101329-Keneba           (20-24]              <=20              1.0045147   0.4844761   2.0827646
3 months    ki1101329-Keneba           (24-28]              <=20              0.7449777   0.3260265   1.7022902
3 months    ki1101329-Keneba           >28                  <=20              1.2333703   0.6705236   2.2686781
3 months    ki1126311-ZVITAMBO         (20-24]              <=20              0.7616361   0.4798029   1.2090164
3 months    ki1126311-ZVITAMBO         (24-28]              <=20              0.7344441   0.4416615   1.2213156
3 months    ki1126311-ZVITAMBO         >28                  <=20              0.7002240   0.4152987   1.1806289
3 months    ki1135781-COHORTS          (20-24]              <=20              0.5878342   0.4167228   0.8292062
3 months    ki1135781-COHORTS          (24-28]              <=20              0.7129155   0.5140507   0.9887129
3 months    ki1135781-COHORTS          >28                  <=20              0.8506212   0.6257500   1.1563029
6 months    ki0047075b-MAL-ED          (20-24]              <=20              0.7358593   0.3383183   1.6005311
6 months    ki0047075b-MAL-ED          (24-28]              <=20              0.8613445   0.4211319   1.7617152
6 months    ki0047075b-MAL-ED          >28                  <=20              0.5584140   0.2508544   1.2430566
6 months    ki1000108-CMC-V-BCS-2002   (20-24]              <=20              1.3892617   0.5762745   3.3491823
6 months    ki1000108-CMC-V-BCS-2002   (24-28]              <=20              1.1500000   0.4377668   3.0210146
6 months    ki1000108-CMC-V-BCS-2002   >28                  <=20              1.8039216   0.6662513   4.8842425
6 months    ki1017093-NIH-Birth        (20-24]              <=20              1.5267173   0.5127093   4.5461743
6 months    ki1017093-NIH-Birth        (24-28]              <=20              1.8333331   0.6537951   5.1409228
6 months    ki1017093-NIH-Birth        >28                  <=20              2.1317826   0.7617697   5.9657099
6 months    ki1101329-Keneba           (20-24]              <=20              1.4926290   0.6165408   3.6136154
6 months    ki1101329-Keneba           (24-28]              <=20              1.2117686   0.4723115   3.1089296
6 months    ki1101329-Keneba           >28                  <=20              2.3269338   1.1007407   4.9190703
6 months    ki1126311-ZVITAMBO         (20-24]              <=20              0.9335429   0.4977654   1.7508295
6 months    ki1126311-ZVITAMBO         (24-28]              <=20              1.1569926   0.6036092   2.2177130
6 months    ki1126311-ZVITAMBO         >28                  <=20              1.0445793   0.5341196   2.0428869
6 months    ki1135781-COHORTS          (20-24]              <=20              0.7854004   0.5873259   1.0502750
6 months    ki1135781-COHORTS          (24-28]              <=20              0.8278593   0.6213579   1.1029892
6 months    ki1135781-COHORTS          >28                  <=20              1.0961278   0.8402981   1.4298452
6 months    ki1148112-LCNI-5           (20-24]              <=20              1.2146341   0.3851418   3.8306313
6 months    ki1148112-LCNI-5           (24-28]              <=20              1.2450000   0.3949723   3.9243895
6 months    ki1148112-LCNI-5           >28                  <=20              1.0163265   0.3211887   3.2159275
9 months    ki0047075b-MAL-ED          (20-24]              <=20              0.8489147   0.4484918   1.6068437
9 months    ki0047075b-MAL-ED          (24-28]              <=20              0.7839644   0.4214811   1.4581916
9 months    ki0047075b-MAL-ED          >28                  <=20              0.6758527   0.3564714   1.2813846
9 months    ki1000108-CMC-V-BCS-2002   (20-24]              <=20              1.2156040   0.5663940   2.6089494
9 months    ki1000108-CMC-V-BCS-2002   (24-28]              <=20              1.0454545   0.4507538   2.4247721
9 months    ki1000108-CMC-V-BCS-2002   >28                  <=20              1.0561224   0.3906632   2.8551312
9 months    ki1017093-NIH-Birth        (20-24]              <=20              2.5535999   0.9488132   6.8726620
9 months    ki1017093-NIH-Birth        (24-28]              <=20              2.3586206   0.8826442   6.3027562
9 months    ki1017093-NIH-Birth        >28                  <=20              2.0727272   0.7424077   5.7868449
9 months    ki1017093c-NIH-Crypto      (20-24]              <=20              1.1467764   0.4521622   2.9084608
9 months    ki1017093c-NIH-Crypto      (24-28]              <=20              0.7145299   0.2589185   1.9718677
9 months    ki1017093c-NIH-Crypto      >28                  <=20              0.8293651   0.2836797   2.4247294
9 months    ki1101329-Keneba           (20-24]              <=20              1.4139363   0.6646589   3.0078826
9 months    ki1101329-Keneba           (24-28]              <=20              1.2929829   0.5945078   2.8120820
9 months    ki1101329-Keneba           >28                  <=20              2.1978254   1.1653443   4.1450727
9 months    ki1113344-GMS-Nepal        (20-24]              <=20              0.7026732   0.2997350   1.6472871
9 months    ki1113344-GMS-Nepal        (24-28]              <=20              0.6270691   0.2670249   1.4725805
9 months    ki1113344-GMS-Nepal        >28                  <=20              0.8165680   0.3210844   2.0766609
9 months    ki1126311-ZVITAMBO         (20-24]              <=20              1.1285714   0.6570080   1.9385967
9 months    ki1126311-ZVITAMBO         (24-28]              <=20              1.0533333   0.5832537   1.9022786
9 months    ki1126311-ZVITAMBO         >28                  <=20              0.7596154   0.3912453   1.4748179
9 months    ki1135781-COHORTS          (20-24]              <=20              0.7589039   0.5960278   0.9662890
9 months    ki1135781-COHORTS          (24-28]              <=20              0.8902448   0.7059722   1.1226162
9 months    ki1135781-COHORTS          >28                  <=20              1.2073184   0.9755944   1.4940818
12 months   ki0047075b-MAL-ED          (20-24]              <=20              0.9913302   0.5628852   1.7458899
12 months   ki0047075b-MAL-ED          (24-28]              <=20              0.9619165   0.5575769   1.6594719
12 months   ki0047075b-MAL-ED          >28                  <=20              1.0429570   0.6124729   1.7760122
12 months   ki1000108-CMC-V-BCS-2002   (20-24]              <=20              1.2432432   0.7385362   2.0928613
12 months   ki1000108-CMC-V-BCS-2002   (24-28]              <=20              0.7360000   0.3900414   1.3888168
12 months   ki1000108-CMC-V-BCS-2002   >28                  <=20              1.0823529   0.5548701   2.1112832
12 months   ki1000304b-SAS-FoodSuppl   (20-24]              <=20              0.9545455   0.4695539   1.9404737
12 months   ki1000304b-SAS-FoodSuppl   (24-28]              <=20              0.9974026   0.5649944   1.7607467
12 months   ki1000304b-SAS-FoodSuppl   >28                  <=20              0.8983957   0.4375391   1.8446692
12 months   ki1017093-NIH-Birth        (20-24]              <=20              1.6009445   0.6527800   3.9263204
12 months   ki1017093-NIH-Birth        (24-28]              <=20              1.6028369   0.6689775   3.8403177
12 months   ki1017093-NIH-Birth        >28                  <=20              2.1240602   0.8992947   5.0168557
12 months   ki1017093c-NIH-Crypto      (20-24]              <=20              0.9017094   0.4473280   1.8176368
12 months   ki1017093c-NIH-Crypto      (24-28]              <=20              0.3552189   0.1438453   0.8771952
12 months   ki1017093c-NIH-Crypto      >28                  <=20              0.4156816   0.1578477   1.0946706
12 months   ki1101329-Keneba           (20-24]              <=20              0.9437764   0.4843147   1.8391223
12 months   ki1101329-Keneba           (24-28]              <=20              1.0501446   0.5499083   2.0054320
12 months   ki1101329-Keneba           >28                  <=20              1.9480764   1.1689428   3.2465244
12 months   ki1113344-GMS-Nepal        (20-24]              <=20              0.7294833   0.3255151   1.6347808
12 months   ki1113344-GMS-Nepal        (24-28]              <=20              1.1287478   0.5696678   2.2365169
12 months   ki1113344-GMS-Nepal        >28                  <=20              1.4436090   0.6965865   2.9917419
12 months   ki1126311-ZVITAMBO         (20-24]              <=20              1.1160109   0.6510030   1.9131714
12 months   ki1126311-ZVITAMBO         (24-28]              <=20              1.4054983   0.8120055   2.4327733
12 months   ki1126311-ZVITAMBO         >28                  <=20              1.3525132   0.7704319   2.3743722
12 months   ki1135781-COHORTS          (20-24]              <=20              0.7766240   0.6419443   0.9395594
12 months   ki1135781-COHORTS          (24-28]              <=20              0.8789176   0.7313402   1.0562747
12 months   ki1135781-COHORTS          >28                  <=20              1.1234838   0.9482667   1.3310769
18 months   ki0047075b-MAL-ED          (20-24]              <=20              1.0722528   0.7096722   1.6200803
18 months   ki0047075b-MAL-ED          (24-28]              <=20              0.9446352   0.6294003   1.4177553
18 months   ki0047075b-MAL-ED          >28                  <=20              1.1471744   0.7793154   1.6886733
18 months   ki1000108-CMC-V-BCS-2002   (20-24]              <=20              1.3033333   0.8259966   2.0565190
18 months   ki1000108-CMC-V-BCS-2002   (24-28]              <=20              0.9680135   0.5738850   1.6328185
18 months   ki1000108-CMC-V-BCS-2002   >28                  <=20              1.1274510   0.6296120   2.0189352
18 months   ki1000304b-SAS-FoodSuppl   (20-24]              <=20              0.9583333   0.4232389   2.1699395
18 months   ki1000304b-SAS-FoodSuppl   (24-28]              <=20              1.1541219   0.6059009   2.1983749
18 months   ki1000304b-SAS-FoodSuppl   >28                  <=20              1.4603175   0.7350666   2.9011345
18 months   ki1017093-NIH-Birth        (20-24]              <=20              1.5109649   0.8592525   2.6569779
18 months   ki1017093-NIH-Birth        (24-28]              <=20              1.7836538   1.0461479   3.0410816
18 months   ki1017093-NIH-Birth        >28                  <=20              1.4324324   0.8064611   2.5442798
18 months   ki1017093c-NIH-Crypto      (20-24]              <=20              1.0196078   0.5116220   2.0319692
18 months   ki1017093c-NIH-Crypto      (24-28]              <=20              0.4466600   0.1896055   1.0522118
18 months   ki1017093c-NIH-Crypto      >28                  <=20              0.4666991   0.1766360   1.2330895
18 months   ki1101329-Keneba           (20-24]              <=20              1.1401744   0.6506796   1.9979074
18 months   ki1101329-Keneba           (24-28]              <=20              1.2561576   0.7243946   2.1782768
18 months   ki1101329-Keneba           >28                  <=20              1.7927171   1.1370157   2.8265525
18 months   ki1113344-GMS-Nepal        (20-24]              <=20              0.8268116   0.4965239   1.3768067
18 months   ki1113344-GMS-Nepal        (24-28]              <=20              0.6877637   0.4079738   1.1594347
18 months   ki1113344-GMS-Nepal        >28                  <=20              0.8358974   0.4676667   1.4940652
18 months   ki1126311-ZVITAMBO         (20-24]              <=20              1.2650104   0.6975895   2.2939725
18 months   ki1126311-ZVITAMBO         (24-28]              <=20              0.7536443   0.3602486   1.5766328
18 months   ki1126311-ZVITAMBO         >28                  <=20              1.1308271   0.5850903   2.1855940
18 months   ki1135781-COHORTS          (20-24]              <=20              0.9057175   0.7559231   1.0851952
18 months   ki1135781-COHORTS          (24-28]              <=20              0.9040753   0.7523438   1.0864078
18 months   ki1135781-COHORTS          >28                  <=20              1.0952685   0.9314260   1.2879316
18 months   ki1148112-LCNI-5           (20-24]              <=20              1.5277778   0.6272741   3.7210286
18 months   ki1148112-LCNI-5           (24-28]              <=20              1.4492753   0.5843178   3.5946178
18 months   ki1148112-LCNI-5           >28                  <=20              1.8390804   0.8003578   4.2258812
24 months   ki0047075b-MAL-ED          (20-24]              <=20              1.3291789   0.8755078   2.0179335
24 months   ki0047075b-MAL-ED          (24-28]              <=20              0.9425356   0.6113351   1.4531691
24 months   ki0047075b-MAL-ED          >28                  <=20              1.0373832   0.6801197   1.5823154
24 months   ki1000108-CMC-V-BCS-2002   (20-24]              <=20              1.2396825   0.8173355   1.8802716
24 months   ki1000108-CMC-V-BCS-2002   (24-28]              <=20              1.0377181   0.6524877   1.6503894
24 months   ki1000108-CMC-V-BCS-2002   >28                  <=20              1.0819048   0.6297375   1.8587395
24 months   ki1017093-NIH-Birth        (20-24]              <=20              1.3165888   0.7394595   2.3441528
24 months   ki1017093-NIH-Birth        (24-28]              <=20              1.5955882   0.9284378   2.7421351
24 months   ki1017093-NIH-Birth        >28                  <=20              1.3677184   0.7691084   2.4322369
24 months   ki1101329-Keneba           (20-24]              <=20              0.8870391   0.5013938   1.5693020
24 months   ki1101329-Keneba           (24-28]              <=20              0.9411929   0.5359968   1.6527039
24 months   ki1101329-Keneba           >28                  <=20              1.2165541   0.7745915   1.9106896
24 months   ki1113344-GMS-Nepal        (20-24]              <=20              0.9414683   0.4709729   1.8819819
24 months   ki1113344-GMS-Nepal        (24-28]              <=20              0.9776786   0.5023782   1.9026609
24 months   ki1113344-GMS-Nepal        >28                  <=20              1.0488506   0.4979728   2.2091317
24 months   ki1135781-COHORTS          (20-24]              <=20              0.7530134   0.6628974   0.8553800
24 months   ki1135781-COHORTS          (24-28]              <=20              0.7611353   0.6707405   0.8637125
24 months   ki1135781-COHORTS          >28                  <=20              0.9391252   0.8368985   1.0538388
24 months   ki1148112-LCNI-5           (20-24]              <=20              1.0714286   0.3662128   3.1346780
24 months   ki1148112-LCNI-5           (24-28]              <=20              1.3333333   0.4913997   3.6177835
24 months   ki1148112-LCNI-5           >28                  <=20              1.6216216   0.6457487   4.0722598


### Parameter: PAR


agecat      studyid                    intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          <=20                 NA                -0.0045865   -0.0242094    0.0150364
Birth       ki1126311-ZVITAMBO         <=20                 NA                -0.0027399   -0.0149502    0.0094704
Birth       ki1135781-COHORTS          <=20                 NA                -0.0069485   -0.0162084    0.0023113
3 months    ki0047075b-MAL-ED          <=20                 NA                -0.0052011   -0.0249956    0.0145934
3 months    ki1017093-NIH-Birth        <=20                 NA                 0.0202198   -0.0124229    0.0528625
3 months    ki1101329-Keneba           <=20                 NA                 0.0016580   -0.0145659    0.0178819
3 months    ki1126311-ZVITAMBO         <=20                 NA                -0.0126762   -0.0331696    0.0078171
3 months    ki1135781-COHORTS          <=20                 NA                -0.0109903   -0.0223666    0.0003860
6 months    ki0047075b-MAL-ED          <=20                 NA                -0.0084244   -0.0279258    0.0110769
6 months    ki1000108-CMC-V-BCS-2002   <=20                 NA                 0.0268646   -0.0397464    0.0934756
6 months    ki1017093-NIH-Birth        <=20                 NA                 0.0254206   -0.0089922    0.0598333
6 months    ki1101329-Keneba           <=20                 NA                 0.0139008    0.0003370    0.0274645
6 months    ki1126311-ZVITAMBO         <=20                 NA                 0.0007957   -0.0152515    0.0168428
6 months    ki1135781-COHORTS          <=20                 NA                -0.0044346   -0.0174508    0.0085815
6 months    ki1148112-LCNI-5           <=20                 NA                 0.0068144   -0.0444527    0.0580815
9 months    ki0047075b-MAL-ED          <=20                 NA                -0.0100212   -0.0336370    0.0135945
9 months    ki1000108-CMC-V-BCS-2002   <=20                 NA                 0.0124733   -0.0631792    0.0881258
9 months    ki1017093-NIH-Birth        <=20                 NA                 0.0452493    0.0075546    0.0829439
9 months    ki1017093c-NIH-Crypto      <=20                 NA                -0.0034021   -0.0309477    0.0241434
9 months    ki1101329-Keneba           <=20                 NA                 0.0189216    0.0021793    0.0356639
9 months    ki1113344-GMS-Nepal        <=20                 NA                -0.0172245   -0.0593584    0.0249095
9 months    ki1126311-ZVITAMBO         <=20                 NA                 0.0000840   -0.0184468    0.0186148
9 months    ki1135781-COHORTS          <=20                 NA                -0.0025639   -0.0191687    0.0140409
12 months   ki0047075b-MAL-ED          <=20                 NA                -0.0000214   -0.0255976    0.0255549
12 months   ki1000108-CMC-V-BCS-2002   <=20                 NA                 0.0081522   -0.0894109    0.1057152
12 months   ki1000304b-SAS-FoodSuppl   <=20                 NA                -0.0126812   -0.2131489    0.1877866
12 months   ki1017093-NIH-Birth        <=20                 NA                 0.0362126   -0.0083287    0.0807540
12 months   ki1017093c-NIH-Crypto      <=20                 NA                -0.0272344   -0.0649969    0.0105281
12 months   ki1101329-Keneba           <=20                 NA                 0.0193179   -0.0024446    0.0410804
12 months   ki1113344-GMS-Nepal        <=20                 NA                 0.0038978   -0.0399578    0.0477535
12 months   ki1126311-ZVITAMBO         <=20                 NA                 0.0104927   -0.0109062    0.0318916
12 months   ki1135781-COHORTS          <=20                 NA                -0.0077313   -0.0294201    0.0139575
18 months   ki0047075b-MAL-ED          <=20                 NA                 0.0049118   -0.0299352    0.0397589
18 months   ki1000108-CMC-V-BCS-2002   <=20                 NA                 0.0345234   -0.0693026    0.1383494
18 months   ki1000304b-SAS-FoodSuppl   <=20                 NA                 0.0491718   -0.1519844    0.2503281
18 months   ki1017093-NIH-Birth        <=20                 NA                 0.0681455   -0.0001892    0.1364803
18 months   ki1017093c-NIH-Crypto      <=20                 NA                -0.0222956   -0.0625553    0.0179641
18 months   ki1101329-Keneba           <=20                 NA                 0.0267170    0.0011053    0.0523286
18 months   ki1113344-GMS-Nepal        <=20                 NA                -0.0295036   -0.0890775    0.0300702
18 months   ki1126311-ZVITAMBO         <=20                 NA                 0.0087109   -0.0633981    0.0808199
18 months   ki1135781-COHORTS          <=20                 NA                -0.0039375   -0.0430904    0.0352154
18 months   ki1148112-LCNI-5           <=20                 NA                 0.0476510   -0.0228303    0.1181323
24 months   ki0047075b-MAL-ED          <=20                 NA                 0.0075610   -0.0278342    0.0429563
24 months   ki1000108-CMC-V-BCS-2002   <=20                 NA                 0.0348705   -0.0714760    0.1412170
24 months   ki1017093-NIH-Birth        <=20                 NA                 0.0545333   -0.0188036    0.1278702
24 months   ki1101329-Keneba           <=20                 NA                 0.0050114   -0.0244499    0.0344728
24 months   ki1113344-GMS-Nepal        <=20                 NA                -0.0013726   -0.0520946    0.0493493
24 months   ki1135781-COHORTS          <=20                 NA                -0.0445805   -0.0728282   -0.0163328
24 months   ki1148112-LCNI-5           <=20                 NA                 0.0280000   -0.0481260    0.1041260


### Parameter: PAF


agecat      studyid                    intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          <=20                 NA                -0.1493606   -1.0041356    0.3408481
Birth       ki1126311-ZVITAMBO         <=20                 NA                -0.0841299   -0.5320553    0.2328360
Birth       ki1135781-COHORTS          <=20                 NA                -0.3020394   -0.7737108    0.0442035
3 months    ki0047075b-MAL-ED          <=20                 NA                -0.1443299   -0.8494102    0.2919413
3 months    ki1017093-NIH-Birth        <=20                 NA                 0.3480257   -0.5423391    0.7243988
3 months    ki1101329-Keneba           <=20                 NA                 0.0500624   -0.5909394    0.4327997
3 months    ki1126311-ZVITAMBO         <=20                 NA                -0.2520793   -0.7337873    0.0957931
3 months    ki1135781-COHORTS          <=20                 NA                -0.3035933   -0.6589865   -0.0243335
6 months    ki0047075b-MAL-ED          <=20                 NA                -0.2854201   -1.1492589    0.2312212
6 months    ki1000108-CMC-V-BCS-2002   <=20                 NA                 0.2360248   -0.6431795    0.6447996
6 months    ki1017093-NIH-Birth        <=20                 NA                 0.3885714   -0.4447293    0.7412353
6 months    ki1101329-Keneba           <=20                 NA                 0.4130511   -0.1659865    0.7045343
6 months    ki1126311-ZVITAMBO         <=20                 NA                 0.0226431   -0.5594772    0.3874700
6 months    ki1135781-COHORTS          <=20                 NA                -0.0808448   -0.3461981    0.1322040
6 months    ki1148112-LCNI-5           <=20                 NA                 0.1016239   -1.1040237    0.6164113
9 months    ki0047075b-MAL-ED          <=20                 NA                -0.2279830   -0.9019954    0.2071789
9 months    ki1000108-CMC-V-BCS-2002   <=20                 NA                 0.0971323   -0.7337922    0.5298340
9 months    ki1017093-NIH-Birth        <=20                 NA                 0.5077973   -0.1611778    0.7913639
9 months    ki1017093c-NIH-Crypto      <=20                 NA                -0.0857826   -1.0585245    0.4272966
9 months    ki1101329-Keneba           <=20                 NA                 0.3971599   -0.0795929    0.6633767
9 months    ki1113344-GMS-Nepal        <=20                 NA                -0.2711624   -1.1422082    0.2457065
9 months    ki1126311-ZVITAMBO         <=20                 NA                 0.0018915   -0.5164519    0.3430582
9 months    ki1135781-COHORTS          <=20                 NA                -0.0285438   -0.2310629    0.1406594
12 months   ki0047075b-MAL-ED          <=20                 NA                -0.0003381   -0.4991643    0.3325106
12 months   ki1000108-CMC-V-BCS-2002   <=20                 NA                 0.0361446   -0.5097454    0.3846530
12 months   ki1000304b-SAS-FoodSuppl   <=20                 NA                -0.0284553   -0.5927249    0.3359052
12 months   ki1017093-NIH-Birth        <=20                 NA                 0.3689159   -0.2946291    0.6923697
12 months   ki1017093c-NIH-Crypto      <=20                 NA                -0.4689631   -1.2883311    0.0570190
12 months   ki1101329-Keneba           <=20                 NA                 0.2920325   -0.1264808    0.5550586
12 months   ki1113344-GMS-Nepal        <=20                 NA                 0.0426471   -0.5802646    0.4200182
12 months   ki1126311-ZVITAMBO         <=20                 NA                 0.1696821   -0.2596073    0.4526645
12 months   ki1135781-COHORTS          <=20                 NA                -0.0536093   -0.2152688    0.0865457
18 months   ki0047075b-MAL-ED          <=20                 NA                 0.0409938   -0.2987516    0.2918639
18 months   ki1000108-CMC-V-BCS-2002   <=20                 NA                 0.1168728   -0.3147531    0.4067983
18 months   ki1000304b-SAS-FoodSuppl   <=20                 NA                 0.1116334   -0.4850129    0.4685600
18 months   ki1017093-NIH-Birth        <=20                 NA                 0.3110405   -0.0830296    0.5617247
18 months   ki1017093c-NIH-Crypto      <=20                 NA                -0.3365575   -1.1068539    0.1521073
18 months   ki1101329-Keneba           <=20                 NA                 0.3019492   -0.0566040    0.5388292
18 months   ki1113344-GMS-Nepal        <=20                 NA                -0.1909058   -0.6461898    0.1384610
18 months   ki1126311-ZVITAMBO         <=20                 NA                 0.0552556   -0.5330849    0.4178131
18 months   ki1135781-COHORTS          <=20                 NA                -0.0136923   -0.1594121    0.1137127
18 months   ki1148112-LCNI-5           <=20                 NA                 0.3227273   -0.3698102    0.6651373
24 months   ki0047075b-MAL-ED          <=20                 NA                 0.0653677   -0.2966622    0.3263183
24 months   ki1000108-CMC-V-BCS-2002   <=20                 NA                 0.1054620   -0.2815551    0.3756038
24 months   ki1017093-NIH-Birth        <=20                 NA                 0.2503840   -0.1744455    0.5215409
24 months   ki1101329-Keneba           <=20                 NA                 0.0626976   -0.3888678    0.3674447
24 months   ki1113344-GMS-Nepal        <=20                 NA                -0.0126839   -0.6087255    0.3625210
24 months   ki1135781-COHORTS          <=20                 NA                -0.1730711   -0.2880400   -0.0683641
24 months   ki1148112-LCNI-5           <=20                 NA                 0.2187500   -0.6722135    0.6350038


