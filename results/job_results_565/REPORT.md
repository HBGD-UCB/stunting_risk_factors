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

**Intervention Variable:** mhtcm

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid


The following strata were considered:

* agecat: 12 months, studyid: ki0047075b-MAL-ED
* agecat: 12 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 12 months, studyid: ki1017093-NIH-Birth
* agecat: 12 months, studyid: ki1017093b-PROVIDE
* agecat: 12 months, studyid: ki1017093c-NIH-Crypto
* agecat: 12 months, studyid: ki1066203-TanzaniaChild2
* agecat: 12 months, studyid: ki1101329-Keneba
* agecat: 12 months, studyid: ki1112895-Guatemala BSC
* agecat: 12 months, studyid: ki1126311-ZVITAMBO
* agecat: 12 months, studyid: ki1135781-COHORTS
* agecat: 12 months, studyid: ki1148112-LCNI-5
* agecat: 18 months, studyid: ki0047075b-MAL-ED
* agecat: 18 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 18 months, studyid: ki1017093-NIH-Birth
* agecat: 18 months, studyid: ki1017093b-PROVIDE
* agecat: 18 months, studyid: ki1017093c-NIH-Crypto
* agecat: 18 months, studyid: ki1066203-TanzaniaChild2
* agecat: 18 months, studyid: ki1101329-Keneba
* agecat: 18 months, studyid: ki1126311-ZVITAMBO
* agecat: 18 months, studyid: ki1135781-COHORTS
* agecat: 18 months, studyid: ki1148112-LCNI-5
* agecat: 24 months, studyid: ki0047075b-MAL-ED
* agecat: 24 months, studyid: ki1017093-NIH-Birth
* agecat: 24 months, studyid: ki1017093b-PROVIDE
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2
* agecat: 24 months, studyid: ki1101329-Keneba
* agecat: 24 months, studyid: ki1126311-ZVITAMBO
* agecat: 24 months, studyid: ki1135781-COHORTS
* agecat: 24 months, studyid: ki1148112-LCNI-5
* agecat: 3 months, studyid: ki0047075b-MAL-ED
* agecat: 3 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 3 months, studyid: ki1017093-NIH-Birth
* agecat: 3 months, studyid: ki1017093b-PROVIDE
* agecat: 3 months, studyid: ki1017093c-NIH-Crypto
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2
* agecat: 3 months, studyid: ki1101329-Keneba
* agecat: 3 months, studyid: ki1112895-Guatemala BSC
* agecat: 3 months, studyid: ki1126311-ZVITAMBO
* agecat: 3 months, studyid: ki1135781-COHORTS
* agecat: 6 months, studyid: ki0047075b-MAL-ED
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 6 months, studyid: ki1017093-NIH-Birth
* agecat: 6 months, studyid: ki1017093b-PROVIDE
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2
* agecat: 6 months, studyid: ki1101329-Keneba
* agecat: 6 months, studyid: ki1112895-Guatemala BSC
* agecat: 6 months, studyid: ki1126311-ZVITAMBO
* agecat: 6 months, studyid: ki1135781-COHORTS
* agecat: 6 months, studyid: ki1148112-LCNI-5
* agecat: 9 months, studyid: ki0047075b-MAL-ED
* agecat: 9 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 9 months, studyid: ki1017093-NIH-Birth
* agecat: 9 months, studyid: ki1017093b-PROVIDE
* agecat: 9 months, studyid: ki1017093c-NIH-Crypto
* agecat: 9 months, studyid: ki1066203-TanzaniaChild2
* agecat: 9 months, studyid: ki1101329-Keneba
* agecat: 9 months, studyid: ki1112895-Guatemala BSC
* agecat: 9 months, studyid: ki1126311-ZVITAMBO
* agecat: 9 months, studyid: ki1135781-COHORTS
* agecat: 9 months, studyid: ki1148112-LCNI-5
* agecat: Birth, studyid: ki0047075b-MAL-ED
* agecat: Birth, studyid: ki1017093-NIH-Birth
* agecat: Birth, studyid: ki1017093c-NIH-Crypto
* agecat: Birth, studyid: ki1101329-Keneba
* agecat: Birth, studyid: ki1126311-ZVITAMBO
* agecat: Birth, studyid: ki1135781-COHORTS

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED
* agecat: Birth, studyid: ki1017093-NIH-Birth
* agecat: Birth, studyid: ki1017093c-NIH-Crypto
* agecat: Birth, studyid: ki1101329-Keneba
* agecat: Birth, studyid: ki1126311-ZVITAMBO
* agecat: Birth, studyid: ki1135781-COHORTS
* agecat: 3 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 3 months, studyid: ki1017093-NIH-Birth
* agecat: 3 months, studyid: ki1017093b-PROVIDE
* agecat: 3 months, studyid: ki1017093c-NIH-Crypto
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2
* agecat: 3 months, studyid: ki1112895-Guatemala BSC
* agecat: 3 months, studyid: ki1135781-COHORTS
* agecat: 6 months, studyid: ki0047075b-MAL-ED
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 6 months, studyid: ki1017093-NIH-Birth
* agecat: 6 months, studyid: ki1017093b-PROVIDE
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2
* agecat: 6 months, studyid: ki1101329-Keneba
* agecat: 6 months, studyid: ki1112895-Guatemala BSC
* agecat: 6 months, studyid: ki1135781-COHORTS
* agecat: 6 months, studyid: ki1148112-LCNI-5
* agecat: 9 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 9 months, studyid: ki1017093-NIH-Birth
* agecat: 9 months, studyid: ki1017093b-PROVIDE
* agecat: 9 months, studyid: ki1017093c-NIH-Crypto
* agecat: 9 months, studyid: ki1066203-TanzaniaChild2
* agecat: 9 months, studyid: ki1112895-Guatemala BSC
* agecat: 9 months, studyid: ki1135781-COHORTS
* agecat: 9 months, studyid: ki1148112-LCNI-5
* agecat: 12 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 12 months, studyid: ki1017093-NIH-Birth
* agecat: 12 months, studyid: ki1017093b-PROVIDE
* agecat: 12 months, studyid: ki1017093c-NIH-Crypto
* agecat: 12 months, studyid: ki1066203-TanzaniaChild2
* agecat: 12 months, studyid: ki1112895-Guatemala BSC
* agecat: 12 months, studyid: ki1148112-LCNI-5
* agecat: 18 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 18 months, studyid: ki1017093-NIH-Birth
* agecat: 18 months, studyid: ki1017093b-PROVIDE
* agecat: 18 months, studyid: ki1017093c-NIH-Crypto
* agecat: 18 months, studyid: ki1066203-TanzaniaChild2
* agecat: 18 months, studyid: ki1126311-ZVITAMBO
* agecat: 24 months, studyid: ki1017093-NIH-Birth
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
![](/tmp/8390c626-366a-4096-9289-49e894017380/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/8390c626-366a-4096-9289-49e894017380/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/8390c626-366a-4096-9289-49e894017380/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/8390c626-366a-4096-9289-49e894017380/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Data Summary

agecat      studyid                    A                   n     nA   nAY0   nAY1
----------  -------------------------  --------------  -----  -----  -----  -----
Birth       ki0047075b-MAL-ED          <=149.6          1425    508    486     22
Birth       ki0047075b-MAL-ED          (149.6-154.9]    1425    405    394     11
Birth       ki0047075b-MAL-ED          (154.9-160.8]    1425    334    327      7
Birth       ki0047075b-MAL-ED          >160.8           1425    178    176      2
Birth       ki1000304b-SAS-FoodSuppl   <=149.6             0      0      0      0
Birth       ki1000304b-SAS-FoodSuppl   (149.6-154.9]       0      0      0      0
Birth       ki1000304b-SAS-FoodSuppl   (154.9-160.8]       0      0      0      0
Birth       ki1000304b-SAS-FoodSuppl   >160.8              0      0      0      0
Birth       ki1017093-NIH-Birth        <=149.6            28     14     14      0
Birth       ki1017093-NIH-Birth        (149.6-154.9]      28      7      7      0
Birth       ki1017093-NIH-Birth        (154.9-160.8]      28      7      7      0
Birth       ki1017093-NIH-Birth        >160.8             28      0      0      0
Birth       ki1017093b-PROVIDE         <=149.6             0      0      0      0
Birth       ki1017093b-PROVIDE         (149.6-154.9]       0      0      0      0
Birth       ki1017093b-PROVIDE         (154.9-160.8]       0      0      0      0
Birth       ki1017093b-PROVIDE         >160.8              0      0      0      0
Birth       ki1017093c-NIH-Crypto      <=149.6            27     14     14      0
Birth       ki1017093c-NIH-Crypto      (149.6-154.9]      27      9      8      1
Birth       ki1017093c-NIH-Crypto      (154.9-160.8]      27      3      3      0
Birth       ki1017093c-NIH-Crypto      >160.8             27      1      1      0
Birth       ki1066203-TanzaniaChild2   <=149.6             0      0      0      0
Birth       ki1066203-TanzaniaChild2   (149.6-154.9]       0      0      0      0
Birth       ki1066203-TanzaniaChild2   (154.9-160.8]       0      0      0      0
Birth       ki1066203-TanzaniaChild2   >160.8              0      0      0      0
Birth       ki1101329-Keneba           <=149.6          1429     23     21      2
Birth       ki1101329-Keneba           (149.6-154.9]    1429    220    213      7
Birth       ki1101329-Keneba           (154.9-160.8]    1429    548    543      5
Birth       ki1101329-Keneba           >160.8           1429    638    626     12
Birth       ki1112895-Guatemala BSC    <=149.6             0      0      0      0
Birth       ki1112895-Guatemala BSC    (149.6-154.9]       0      0      0      0
Birth       ki1112895-Guatemala BSC    (154.9-160.8]       0      0      0      0
Birth       ki1112895-Guatemala BSC    >160.8              0      0      0      0
Birth       ki1126311-ZVITAMBO         <=149.6          2393     84     80      4
Birth       ki1126311-ZVITAMBO         (149.6-154.9]    2393    387    369     18
Birth       ki1126311-ZVITAMBO         (154.9-160.8]    2393    864    842     22
Birth       ki1126311-ZVITAMBO         >160.8           2393   1058   1033     25
Birth       ki1135781-COHORTS          <=149.6          5221   2107   2062     45
Birth       ki1135781-COHORTS          (149.6-154.9]    5221   1906   1868     38
Birth       ki1135781-COHORTS          (154.9-160.8]    5221   1001    993      8
Birth       ki1135781-COHORTS          >160.8           5221    207    205      2
Birth       ki1148112-LCNI-5           <=149.6             0      0      0      0
Birth       ki1148112-LCNI-5           (149.6-154.9]       0      0      0      0
Birth       ki1148112-LCNI-5           (154.9-160.8]       0      0      0      0
Birth       ki1148112-LCNI-5           >160.8              0      0      0      0
3 months    ki0047075b-MAL-ED          <=149.6          1760    594    557     37
3 months    ki0047075b-MAL-ED          (149.6-154.9]    1760    501    489     12
3 months    ki0047075b-MAL-ED          (154.9-160.8]    1760    436    425     11
3 months    ki0047075b-MAL-ED          >160.8           1760    229    224      5
3 months    ki1000304b-SAS-FoodSuppl   <=149.6            94     48     41      7
3 months    ki1000304b-SAS-FoodSuppl   (149.6-154.9]      94     30     26      4
3 months    ki1000304b-SAS-FoodSuppl   (154.9-160.8]      94     15     14      1
3 months    ki1000304b-SAS-FoodSuppl   >160.8             94      1      1      0
3 months    ki1017093-NIH-Birth        <=149.6           570    287    267     20
3 months    ki1017093-NIH-Birth        (149.6-154.9]     570    177    170      7
3 months    ki1017093-NIH-Birth        (154.9-160.8]     570     89     83      6
3 months    ki1017093-NIH-Birth        >160.8            570     17     17      0
3 months    ki1017093b-PROVIDE         <=149.6           168     81     77      4
3 months    ki1017093b-PROVIDE         (149.6-154.9]     168     49     48      1
3 months    ki1017093b-PROVIDE         (154.9-160.8]     168     31     31      0
3 months    ki1017093b-PROVIDE         >160.8            168      7      7      0
3 months    ki1017093c-NIH-Crypto      <=149.6           728    341    320     21
3 months    ki1017093c-NIH-Crypto      (149.6-154.9]     728    252    244      8
3 months    ki1017093c-NIH-Crypto      (154.9-160.8]     728    120    116      4
3 months    ki1017093c-NIH-Crypto      >160.8            728     15     15      0
3 months    ki1066203-TanzaniaChild2   <=149.6           570     53     52      1
3 months    ki1066203-TanzaniaChild2   (149.6-154.9]     570    152    148      4
3 months    ki1066203-TanzaniaChild2   (154.9-160.8]     570    233    229      4
3 months    ki1066203-TanzaniaChild2   >160.8            570    132    131      1
3 months    ki1101329-Keneba           <=149.6          1949     33     28      5
3 months    ki1101329-Keneba           (149.6-154.9]    1949    284    275      9
3 months    ki1101329-Keneba           (154.9-160.8]    1949    762    737     25
3 months    ki1101329-Keneba           >160.8           1949    870    851     19
3 months    ki1112895-Guatemala BSC    <=149.6             3      1      0      1
3 months    ki1112895-Guatemala BSC    (149.6-154.9]       3      1      1      0
3 months    ki1112895-Guatemala BSC    (154.9-160.8]       3      1      0      1
3 months    ki1112895-Guatemala BSC    >160.8              3      0      0      0
3 months    ki1126311-ZVITAMBO         <=149.6          1926     68     61      7
3 months    ki1126311-ZVITAMBO         (149.6-154.9]    1926    324    305     19
3 months    ki1126311-ZVITAMBO         (154.9-160.8]    1926    690    650     40
3 months    ki1126311-ZVITAMBO         >160.8           1926    844    810     34
3 months    ki1135781-COHORTS          <=149.6          5160   2107   1998    109
3 months    ki1135781-COHORTS          (149.6-154.9]    5160   1857   1818     39
3 months    ki1135781-COHORTS          (154.9-160.8]    5160   1010    991     19
3 months    ki1135781-COHORTS          >160.8           5160    186    183      3
3 months    ki1148112-LCNI-5           <=149.6             0      0      0      0
3 months    ki1148112-LCNI-5           (149.6-154.9]       0      0      0      0
3 months    ki1148112-LCNI-5           (154.9-160.8]       0      0      0      0
3 months    ki1148112-LCNI-5           >160.8              0      0      0      0
6 months    ki0047075b-MAL-ED          <=149.6          1689    573    541     32
6 months    ki0047075b-MAL-ED          (149.6-154.9]    1689    483    474      9
6 months    ki0047075b-MAL-ED          (154.9-160.8]    1689    415    410      5
6 months    ki0047075b-MAL-ED          >160.8           1689    218    214      4
6 months    ki1000304b-SAS-FoodSuppl   <=149.6            95     47     36     11
6 months    ki1000304b-SAS-FoodSuppl   (149.6-154.9]      95     32     29      3
6 months    ki1000304b-SAS-FoodSuppl   (154.9-160.8]      95     15     15      0
6 months    ki1000304b-SAS-FoodSuppl   >160.8             95      1      1      0
6 months    ki1017093-NIH-Birth        <=149.6           537    273    244     29
6 months    ki1017093-NIH-Birth        (149.6-154.9]     537    168    164      4
6 months    ki1017093-NIH-Birth        (154.9-160.8]     537     83     81      2
6 months    ki1017093-NIH-Birth        >160.8            537     13     13      0
6 months    ki1017093b-PROVIDE         <=149.6           153     71     67      4
6 months    ki1017093b-PROVIDE         (149.6-154.9]     153     47     46      1
6 months    ki1017093b-PROVIDE         (154.9-160.8]     153     29     28      1
6 months    ki1017093b-PROVIDE         >160.8            153      6      6      0
6 months    ki1017093c-NIH-Crypto      <=149.6           715    330    316     14
6 months    ki1017093c-NIH-Crypto      (149.6-154.9]     715    251    243      8
6 months    ki1017093c-NIH-Crypto      (154.9-160.8]     715    118    117      1
6 months    ki1017093c-NIH-Crypto      >160.8            715     16     16      0
6 months    ki1066203-TanzaniaChild2   <=149.6           500     48     48      0
6 months    ki1066203-TanzaniaChild2   (149.6-154.9]     500    137    134      3
6 months    ki1066203-TanzaniaChild2   (154.9-160.8]     500    207    204      3
6 months    ki1066203-TanzaniaChild2   >160.8            500    108    107      1
6 months    ki1101329-Keneba           <=149.6          1877     34     30      4
6 months    ki1101329-Keneba           (149.6-154.9]    1877    275    261     14
6 months    ki1101329-Keneba           (154.9-160.8]    1877    727    703     24
6 months    ki1101329-Keneba           >160.8           1877    841    824     17
6 months    ki1112895-Guatemala BSC    <=149.6            71     39     33      6
6 months    ki1112895-Guatemala BSC    (149.6-154.9]      71     23     21      2
6 months    ki1112895-Guatemala BSC    (154.9-160.8]      71      6      6      0
6 months    ki1112895-Guatemala BSC    >160.8             71      3      3      0
6 months    ki1126311-ZVITAMBO         <=149.6          1768     63     56      7
6 months    ki1126311-ZVITAMBO         (149.6-154.9]    1768    264    252     12
6 months    ki1126311-ZVITAMBO         (154.9-160.8]    1768    667    637     30
6 months    ki1126311-ZVITAMBO         >160.8           1768    774    762     12
6 months    ki1135781-COHORTS          <=149.6          4980   2028   1843    185
6 months    ki1135781-COHORTS          (149.6-154.9]    4980   1795   1734     61
6 months    ki1135781-COHORTS          (154.9-160.8]    4980    969    944     25
6 months    ki1135781-COHORTS          >160.8           4980    188    187      1
6 months    ki1148112-LCNI-5           <=149.6           415     44     33     11
6 months    ki1148112-LCNI-5           (149.6-154.9]     415    118    109      9
6 months    ki1148112-LCNI-5           (154.9-160.8]     415    148    142      6
6 months    ki1148112-LCNI-5           >160.8            415    105    101      4
9 months    ki0047075b-MAL-ED          <=149.6          1634    558    517     41
9 months    ki0047075b-MAL-ED          (149.6-154.9]    1634    464    452     12
9 months    ki0047075b-MAL-ED          (154.9-160.8]    1634    399    385     14
9 months    ki0047075b-MAL-ED          >160.8           1634    213    208      5
9 months    ki1000304b-SAS-FoodSuppl   <=149.6            85     43     25     18
9 months    ki1000304b-SAS-FoodSuppl   (149.6-154.9]      85     27     25      2
9 months    ki1000304b-SAS-FoodSuppl   (154.9-160.8]      85     14     14      0
9 months    ki1000304b-SAS-FoodSuppl   >160.8             85      1      1      0
9 months    ki1017093-NIH-Birth        <=149.6           507    263    226     37
9 months    ki1017093-NIH-Birth        (149.6-154.9]     507    151    143      8
9 months    ki1017093-NIH-Birth        (154.9-160.8]     507     81     81      0
9 months    ki1017093-NIH-Birth        >160.8            507     12     12      0
9 months    ki1017093b-PROVIDE         <=149.6           158     74     68      6
9 months    ki1017093b-PROVIDE         (149.6-154.9]     158     48     46      2
9 months    ki1017093b-PROVIDE         (154.9-160.8]     158     29     28      1
9 months    ki1017093b-PROVIDE         >160.8            158      7      7      0
9 months    ki1017093c-NIH-Crypto      <=149.6           706    324    304     20
9 months    ki1017093c-NIH-Crypto      (149.6-154.9]     706    247    240      7
9 months    ki1017093c-NIH-Crypto      (154.9-160.8]     706    120    119      1
9 months    ki1017093c-NIH-Crypto      >160.8            706     15     15      0
9 months    ki1066203-TanzaniaChild2   <=149.6           430     46     46      0
9 months    ki1066203-TanzaniaChild2   (149.6-154.9]     430    107    104      3
9 months    ki1066203-TanzaniaChild2   (154.9-160.8]     430    178    175      3
9 months    ki1066203-TanzaniaChild2   >160.8            430     99     98      1
9 months    ki1101329-Keneba           <=149.6          1872     32     25      7
9 months    ki1101329-Keneba           (149.6-154.9]    1872    284    262     22
9 months    ki1101329-Keneba           (154.9-160.8]    1872    712    670     42
9 months    ki1101329-Keneba           >160.8           1872    844    822     22
9 months    ki1112895-Guatemala BSC    <=149.6            52     29     22      7
9 months    ki1112895-Guatemala BSC    (149.6-154.9]      52     15     14      1
9 months    ki1112895-Guatemala BSC    (154.9-160.8]      52      5      4      1
9 months    ki1112895-Guatemala BSC    >160.8             52      3      3      0
9 months    ki1126311-ZVITAMBO         <=149.6          1674     57     51      6
9 months    ki1126311-ZVITAMBO         (149.6-154.9]    1674    255    247      8
9 months    ki1126311-ZVITAMBO         (154.9-160.8]    1674    630    600     30
9 months    ki1126311-ZVITAMBO         >160.8           1674    732    705     27
9 months    ki1135781-COHORTS          <=149.6          4802   1969   1699    270
9 months    ki1135781-COHORTS          (149.6-154.9]    4802   1733   1636     97
9 months    ki1135781-COHORTS          (154.9-160.8]    4802    926    885     41
9 months    ki1135781-COHORTS          >160.8           4802    174    172      2
9 months    ki1148112-LCNI-5           <=149.6           320     36     29      7
9 months    ki1148112-LCNI-5           (149.6-154.9]     320     85     79      6
9 months    ki1148112-LCNI-5           (154.9-160.8]     320    116    113      3
9 months    ki1148112-LCNI-5           >160.8            320     83     81      2
12 months   ki0047075b-MAL-ED          <=149.6          1610    554    501     53
12 months   ki0047075b-MAL-ED          (149.6-154.9]    1610    458    434     24
12 months   ki0047075b-MAL-ED          (154.9-160.8]    1610    391    375     16
12 months   ki0047075b-MAL-ED          >160.8           1610    207    198      9
12 months   ki1000304b-SAS-FoodSuppl   <=149.6            92     46     19     27
12 months   ki1000304b-SAS-FoodSuppl   (149.6-154.9]      92     30     22      8
12 months   ki1000304b-SAS-FoodSuppl   (154.9-160.8]      92     15      9      6
12 months   ki1000304b-SAS-FoodSuppl   >160.8             92      1      1      0
12 months   ki1017093-NIH-Birth        <=149.6           491    249    212     37
12 months   ki1017093-NIH-Birth        (149.6-154.9]     491    150    143      7
12 months   ki1017093-NIH-Birth        (154.9-160.8]     491     80     76      4
12 months   ki1017093-NIH-Birth        >160.8            491     12     12      0
12 months   ki1017093b-PROVIDE         <=149.6           153     72     62     10
12 months   ki1017093b-PROVIDE         (149.6-154.9]     153     45     44      1
12 months   ki1017093b-PROVIDE         (154.9-160.8]     153     29     27      2
12 months   ki1017093b-PROVIDE         >160.8            153      7      7      0
12 months   ki1017093c-NIH-Crypto      <=149.6           706    325    296     29
12 months   ki1017093c-NIH-Crypto      (149.6-154.9]     706    248    239      9
12 months   ki1017093c-NIH-Crypto      (154.9-160.8]     706    118    115      3
12 months   ki1017093c-NIH-Crypto      >160.8            706     15     15      0
12 months   ki1066203-TanzaniaChild2   <=149.6           353     39     38      1
12 months   ki1066203-TanzaniaChild2   (149.6-154.9]     353     97     93      4
12 months   ki1066203-TanzaniaChild2   (154.9-160.8]     353    140    139      1
12 months   ki1066203-TanzaniaChild2   >160.8            353     77     76      1
12 months   ki1101329-Keneba           <=149.6          1773     29     21      8
12 months   ki1101329-Keneba           (149.6-154.9]    1773    273    244     29
12 months   ki1101329-Keneba           (154.9-160.8]    1773    670    616     54
12 months   ki1101329-Keneba           >160.8           1773    801    770     31
12 months   ki1112895-Guatemala BSC    <=149.6            46     27     19      8
12 months   ki1112895-Guatemala BSC    (149.6-154.9]      46     12     11      1
12 months   ki1112895-Guatemala BSC    (154.9-160.8]      46      5      4      1
12 months   ki1112895-Guatemala BSC    >160.8             46      2      2      0
12 months   ki1126311-ZVITAMBO         <=149.6          1454     50     44      6
12 months   ki1126311-ZVITAMBO         (149.6-154.9]    1454    235    222     13
12 months   ki1126311-ZVITAMBO         (154.9-160.8]    1454    544    506     38
12 months   ki1126311-ZVITAMBO         >160.8           1454    625    603     22
12 months   ki1135781-COHORTS          <=149.6          4627   1912   1493    419
12 months   ki1135781-COHORTS          (149.6-154.9]    4627   1666   1489    177
12 months   ki1135781-COHORTS          (154.9-160.8]    4627    876    812     64
12 months   ki1135781-COHORTS          >160.8           4627    173    168      5
12 months   ki1148112-LCNI-5           <=149.6           309     34     23     11
12 months   ki1148112-LCNI-5           (149.6-154.9]     309     87     75     12
12 months   ki1148112-LCNI-5           (154.9-160.8]     309    107    100      7
12 months   ki1148112-LCNI-5           >160.8            309     81     77      4
18 months   ki0047075b-MAL-ED          <=149.6          1541    526    438     88
18 months   ki0047075b-MAL-ED          (149.6-154.9]    1541    442    400     42
18 months   ki0047075b-MAL-ED          (154.9-160.8]    1541    375    337     38
18 months   ki0047075b-MAL-ED          >160.8           1541    198    181     17
18 months   ki1000304b-SAS-FoodSuppl   <=149.6            84     42     16     26
18 months   ki1000304b-SAS-FoodSuppl   (149.6-154.9]      84     26     20      6
18 months   ki1000304b-SAS-FoodSuppl   (154.9-160.8]      84     15     10      5
18 months   ki1000304b-SAS-FoodSuppl   >160.8             84      1      1      0
18 months   ki1017093-NIH-Birth        <=149.6           463    241    172     69
18 months   ki1017093-NIH-Birth        (149.6-154.9]     463    142    117     25
18 months   ki1017093-NIH-Birth        (154.9-160.8]     463     70     63      7
18 months   ki1017093-NIH-Birth        >160.8            463     10     10      0
18 months   ki1017093b-PROVIDE         <=149.6           141     67     50     17
18 months   ki1017093b-PROVIDE         (149.6-154.9]     141     42     41      1
18 months   ki1017093b-PROVIDE         (154.9-160.8]     141     25     23      2
18 months   ki1017093b-PROVIDE         >160.8            141      7      7      0
18 months   ki1017093c-NIH-Crypto      <=149.6           634    288    256     32
18 months   ki1017093c-NIH-Crypto      (149.6-154.9]     634    222    214      8
18 months   ki1017093c-NIH-Crypto      (154.9-160.8]     634    111    109      2
18 months   ki1017093c-NIH-Crypto      >160.8            634     13     13      0
18 months   ki1066203-TanzaniaChild2   <=149.6           255     30     25      5
18 months   ki1066203-TanzaniaChild2   (149.6-154.9]     255     70     66      4
18 months   ki1066203-TanzaniaChild2   (154.9-160.8]     255     97     93      4
18 months   ki1066203-TanzaniaChild2   >160.8            255     58     56      2
18 months   ki1101329-Keneba           <=149.6          1773     33     19     14
18 months   ki1101329-Keneba           (149.6-154.9]    1773    263    231     32
18 months   ki1101329-Keneba           (154.9-160.8]    1773    684    610     74
18 months   ki1101329-Keneba           >160.8           1773    793    754     39
18 months   ki1112895-Guatemala BSC    <=149.6             0      0      0      0
18 months   ki1112895-Guatemala BSC    (149.6-154.9]       0      0      0      0
18 months   ki1112895-Guatemala BSC    (154.9-160.8]       0      0      0      0
18 months   ki1112895-Guatemala BSC    >160.8              0      0      0      0
18 months   ki1126311-ZVITAMBO         <=149.6           359     13      9      4
18 months   ki1126311-ZVITAMBO         (149.6-154.9]     359     57     47     10
18 months   ki1126311-ZVITAMBO         (154.9-160.8]     359    136    112     24
18 months   ki1126311-ZVITAMBO         >160.8            359    153    135     18
18 months   ki1135781-COHORTS          <=149.6          2905   1275    778    497
18 months   ki1135781-COHORTS          (149.6-154.9]    2905   1058    813    245
18 months   ki1135781-COHORTS          (154.9-160.8]    2905    497    410     87
18 months   ki1135781-COHORTS          >160.8           2905     75     70      5
18 months   ki1148112-LCNI-5           <=149.6           355     38     23     15
18 months   ki1148112-LCNI-5           (149.6-154.9]     355    100     83     17
18 months   ki1148112-LCNI-5           (154.9-160.8]     355    126    115     11
18 months   ki1148112-LCNI-5           >160.8            355     91     82      9
24 months   ki0047075b-MAL-ED          <=149.6          1484    504    427     77
24 months   ki0047075b-MAL-ED          (149.6-154.9]    1484    420    378     42
24 months   ki0047075b-MAL-ED          (154.9-160.8]    1484    369    329     40
24 months   ki0047075b-MAL-ED          >160.8           1484    191    178     13
24 months   ki1000304b-SAS-FoodSuppl   <=149.6             0      0      0      0
24 months   ki1000304b-SAS-FoodSuppl   (149.6-154.9]       0      0      0      0
24 months   ki1000304b-SAS-FoodSuppl   (154.9-160.8]       0      0      0      0
24 months   ki1000304b-SAS-FoodSuppl   >160.8              0      0      0      0
24 months   ki1017093-NIH-Birth        <=149.6           429    223    153     70
24 months   ki1017093-NIH-Birth        (149.6-154.9]     429    129    112     17
24 months   ki1017093-NIH-Birth        (154.9-160.8]     429     67     61      6
24 months   ki1017093-NIH-Birth        >160.8            429     10     10      0
24 months   ki1017093b-PROVIDE         <=149.6           149     70     56     14
24 months   ki1017093b-PROVIDE         (149.6-154.9]     149     44     42      2
24 months   ki1017093b-PROVIDE         (154.9-160.8]     149     28     26      2
24 months   ki1017093b-PROVIDE         >160.8            149      7      7      0
24 months   ki1017093c-NIH-Crypto      <=149.6           514    232    205     27
24 months   ki1017093c-NIH-Crypto      (149.6-154.9]     514    182    175      7
24 months   ki1017093c-NIH-Crypto      (154.9-160.8]     514     91     90      1
24 months   ki1017093c-NIH-Crypto      >160.8            514      9      9      0
24 months   ki1066203-TanzaniaChild2   <=149.6             2      0      0      0
24 months   ki1066203-TanzaniaChild2   (149.6-154.9]       2      2      2      0
24 months   ki1066203-TanzaniaChild2   (154.9-160.8]       2      0      0      0
24 months   ki1066203-TanzaniaChild2   >160.8              2      0      0      0
24 months   ki1101329-Keneba           <=149.6          1602     29     23      6
24 months   ki1101329-Keneba           (149.6-154.9]    1602    235    210     25
24 months   ki1101329-Keneba           (154.9-160.8]    1602    625    566     59
24 months   ki1101329-Keneba           >160.8           1602    713    674     39
24 months   ki1112895-Guatemala BSC    <=149.6             0      0      0      0
24 months   ki1112895-Guatemala BSC    (149.6-154.9]       0      0      0      0
24 months   ki1112895-Guatemala BSC    (154.9-160.8]       0      0      0      0
24 months   ki1112895-Guatemala BSC    >160.8              0      0      0      0
24 months   ki1126311-ZVITAMBO         <=149.6            96      7      5      2
24 months   ki1126311-ZVITAMBO         (149.6-154.9]      96     16     10      6
24 months   ki1126311-ZVITAMBO         (154.9-160.8]      96     37     31      6
24 months   ki1126311-ZVITAMBO         >160.8             96     36     31      5
24 months   ki1135781-COHORTS          <=149.6          4740   1920   1227    693
24 months   ki1135781-COHORTS          (149.6-154.9]    4740   1699   1328    371
24 months   ki1135781-COHORTS          (154.9-160.8]    4740    932    790    142
24 months   ki1135781-COHORTS          >160.8           4740    189    179     10
24 months   ki1148112-LCNI-5           <=149.6           296     30     20     10
24 months   ki1148112-LCNI-5           (149.6-154.9]     296     82     69     13
24 months   ki1148112-LCNI-5           (154.9-160.8]     296    104     95      9
24 months   ki1148112-LCNI-5           >160.8            296     80     75      5

## Results Table

### Parameter: TSM


agecat      studyid              intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki0047075b-MAL-ED    <=149.6              NA                0.0622896   0.0428485   0.0817306
3 months    ki0047075b-MAL-ED    (149.6-154.9]        NA                0.0239521   0.0105596   0.0373445
3 months    ki0047075b-MAL-ED    (154.9-160.8]        NA                0.0252294   0.0105051   0.0399536
3 months    ki0047075b-MAL-ED    >160.8               NA                0.0218341   0.0029007   0.0407674
3 months    ki1101329-Keneba     <=149.6              NA                0.1515152   0.0291514   0.2738789
3 months    ki1101329-Keneba     (149.6-154.9]        NA                0.0316901   0.0113118   0.0520685
3 months    ki1101329-Keneba     (154.9-160.8]        NA                0.0328084   0.0201572   0.0454596
3 months    ki1101329-Keneba     >160.8               NA                0.0218391   0.0121245   0.0315536
3 months    ki1126311-ZVITAMBO   <=149.6              NA                0.1029412   0.0306956   0.1751868
3 months    ki1126311-ZVITAMBO   (149.6-154.9]        NA                0.0586420   0.0330520   0.0842320
3 months    ki1126311-ZVITAMBO   (154.9-160.8]        NA                0.0579710   0.0405299   0.0754121
3 months    ki1126311-ZVITAMBO   >160.8               NA                0.0402844   0.0270156   0.0535531
6 months    ki1126311-ZVITAMBO   <=149.6              NA                0.1111111   0.0334858   0.1887364
6 months    ki1126311-ZVITAMBO   (149.6-154.9]        NA                0.0454545   0.0203209   0.0705882
6 months    ki1126311-ZVITAMBO   (154.9-160.8]        NA                0.0449775   0.0292445   0.0607105
6 months    ki1126311-ZVITAMBO   >160.8               NA                0.0155039   0.0067977   0.0242101
9 months    ki0047075b-MAL-ED    <=149.6              NA                0.0734767   0.0518213   0.0951321
9 months    ki0047075b-MAL-ED    (149.6-154.9]        NA                0.0258621   0.0114155   0.0403086
9 months    ki0047075b-MAL-ED    (154.9-160.8]        NA                0.0350877   0.0170278   0.0531476
9 months    ki0047075b-MAL-ED    >160.8               NA                0.0234742   0.0031352   0.0438131
9 months    ki1101329-Keneba     <=149.6              NA                0.2187500   0.0754790   0.3620210
9 months    ki1101329-Keneba     (149.6-154.9]        NA                0.0774648   0.0463656   0.1085639
9 months    ki1101329-Keneba     (154.9-160.8]        NA                0.0589888   0.0416784   0.0762991
9 months    ki1101329-Keneba     >160.8               NA                0.0260664   0.0153141   0.0368186
9 months    ki1126311-ZVITAMBO   <=149.6              NA                0.1052632   0.0255690   0.1849573
9 months    ki1126311-ZVITAMBO   (149.6-154.9]        NA                0.0313725   0.0099702   0.0527749
9 months    ki1126311-ZVITAMBO   (154.9-160.8]        NA                0.0476190   0.0309848   0.0642533
9 months    ki1126311-ZVITAMBO   >160.8               NA                0.0368852   0.0232272   0.0505433
12 months   ki0047075b-MAL-ED    <=149.6              NA                0.0956679   0.0711674   0.1201684
12 months   ki0047075b-MAL-ED    (149.6-154.9]        NA                0.0524017   0.0319874   0.0728161
12 months   ki0047075b-MAL-ED    (154.9-160.8]        NA                0.0409207   0.0212784   0.0605631
12 months   ki0047075b-MAL-ED    >160.8               NA                0.0434783   0.0156887   0.0712678
12 months   ki1101329-Keneba     <=149.6              NA                0.2758621   0.1131468   0.4385773
12 months   ki1101329-Keneba     (149.6-154.9]        NA                0.1062271   0.0696659   0.1427883
12 months   ki1101329-Keneba     (154.9-160.8]        NA                0.0805970   0.0599791   0.1012150
12 months   ki1101329-Keneba     >160.8               NA                0.0387016   0.0253403   0.0520629
12 months   ki1126311-ZVITAMBO   <=149.6              NA                0.1200000   0.0298959   0.2101041
12 months   ki1126311-ZVITAMBO   (149.6-154.9]        NA                0.0553191   0.0260814   0.0845569
12 months   ki1126311-ZVITAMBO   (154.9-160.8]        NA                0.0698529   0.0484257   0.0912802
12 months   ki1126311-ZVITAMBO   >160.8               NA                0.0352000   0.0207474   0.0496526
12 months   ki1135781-COHORTS    <=149.6              NA                0.2191423   0.2005984   0.2376861
12 months   ki1135781-COHORTS    (149.6-154.9]        NA                0.1062425   0.0914440   0.1210410
12 months   ki1135781-COHORTS    (154.9-160.8]        NA                0.0730594   0.0558245   0.0902942
12 months   ki1135781-COHORTS    >160.8               NA                0.0289017   0.0039348   0.0538687
18 months   ki0047075b-MAL-ED    <=149.6              NA                0.1673004   0.1353932   0.1992076
18 months   ki0047075b-MAL-ED    (149.6-154.9]        NA                0.0950226   0.0676756   0.1223697
18 months   ki0047075b-MAL-ED    (154.9-160.8]        NA                0.1013333   0.0707807   0.1318860
18 months   ki0047075b-MAL-ED    >160.8               NA                0.0858586   0.0468235   0.1248937
18 months   ki1101329-Keneba     <=149.6              NA                0.4242424   0.2555714   0.5929135
18 months   ki1101329-Keneba     (149.6-154.9]        NA                0.1216730   0.0821529   0.1611931
18 months   ki1101329-Keneba     (154.9-160.8]        NA                0.1081871   0.0849026   0.1314717
18 months   ki1101329-Keneba     >160.8               NA                0.0491803   0.0341254   0.0642353
18 months   ki1135781-COHORTS    <=149.6              NA                0.3898039   0.3630292   0.4165787
18 months   ki1135781-COHORTS    (149.6-154.9]        NA                0.2315690   0.2061462   0.2569918
18 months   ki1135781-COHORTS    (154.9-160.8]        NA                0.1750503   0.1416354   0.2084652
18 months   ki1135781-COHORTS    >160.8               NA                0.0666667   0.0102035   0.1231298
18 months   ki1148112-LCNI-5     <=149.6              NA                0.3947368   0.2391063   0.5503674
18 months   ki1148112-LCNI-5     (149.6-154.9]        NA                0.1700000   0.0962734   0.2437266
18 months   ki1148112-LCNI-5     (154.9-160.8]        NA                0.0873016   0.0379444   0.1366587
18 months   ki1148112-LCNI-5     >160.8               NA                0.0989011   0.0374787   0.1603235
24 months   ki0047075b-MAL-ED    <=149.6              NA                0.1527778   0.1213576   0.1841979
24 months   ki0047075b-MAL-ED    (149.6-154.9]        NA                0.1000000   0.0712994   0.1287006
24 months   ki0047075b-MAL-ED    (154.9-160.8]        NA                0.1084011   0.0766701   0.1401320
24 months   ki0047075b-MAL-ED    >160.8               NA                0.0680628   0.0323334   0.1037923
24 months   ki1101329-Keneba     <=149.6              NA                0.2068966   0.0594189   0.3543742
24 months   ki1101329-Keneba     (149.6-154.9]        NA                0.1063830   0.0669498   0.1458161
24 months   ki1101329-Keneba     (154.9-160.8]        NA                0.0944000   0.0714703   0.1173297
24 months   ki1101329-Keneba     >160.8               NA                0.0546985   0.0380025   0.0713944
24 months   ki1135781-COHORTS    <=149.6              NA                0.3609375   0.3394527   0.3824223
24 months   ki1135781-COHORTS    (149.6-154.9]        NA                0.2183637   0.1987170   0.2380105
24 months   ki1135781-COHORTS    (154.9-160.8]        NA                0.1523605   0.1292863   0.1754348
24 months   ki1135781-COHORTS    >160.8               NA                0.0529101   0.0209926   0.0848275
24 months   ki1148112-LCNI-5     <=149.6              NA                0.3333333   0.1643608   0.5023058
24 months   ki1148112-LCNI-5     (149.6-154.9]        NA                0.1585366   0.0793488   0.2377244
24 months   ki1148112-LCNI-5     (154.9-160.8]        NA                0.0865385   0.0324112   0.1406657
24 months   ki1148112-LCNI-5     >160.8               NA                0.0625000   0.0093671   0.1156329


### Parameter: E(Y)


agecat      studyid              intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki0047075b-MAL-ED    NA                   NA                0.0369318   0.0360847   0.0377789
3 months    ki1101329-Keneba     NA                   NA                0.0297589   0.0290116   0.0305061
3 months    ki1126311-ZVITAMBO   NA                   NA                0.0519211   0.0513353   0.0525069
6 months    ki1126311-ZVITAMBO   NA                   NA                0.0345023   0.0335394   0.0354651
9 months    ki0047075b-MAL-ED    NA                   NA                0.0440636   0.0430184   0.0451089
9 months    ki1101329-Keneba     NA                   NA                0.0496795   0.0483276   0.0510313
9 months    ki1126311-ZVITAMBO   NA                   NA                0.0424134   0.0417765   0.0430502
12 months   ki0047075b-MAL-ED    NA                   NA                0.0633540   0.0621911   0.0645169
12 months   ki1101329-Keneba     NA                   NA                0.0688099   0.0670810   0.0705388
12 months   ki1126311-ZVITAMBO   NA                   NA                0.0543329   0.0533098   0.0553560
12 months   ki1135781-COHORTS    NA                   NA                0.1437216   0.1418332   0.1456101
18 months   ki0047075b-MAL-ED    NA                   NA                0.1200519   0.1183383   0.1217655
18 months   ki1101329-Keneba     NA                   NA                0.0896785   0.0870858   0.0922713
18 months   ki1135781-COHORTS    NA                   NA                0.2870912   0.2836112   0.2905712
18 months   ki1148112-LCNI-5     NA                   NA                0.1464789   0.1368318   0.1561260
24 months   ki0047075b-MAL-ED    NA                   NA                0.1159030   0.1144262   0.1173798
24 months   ki1101329-Keneba     NA                   NA                0.0805243   0.0791747   0.0818740
24 months   ki1135781-COHORTS    NA                   NA                0.2565401   0.2538807   0.2591994
24 months   ki1148112-LCNI-5     NA                   NA                0.1250000   0.1159526   0.1340474


### Parameter: RR


agecat      studyid              intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki0047075b-MAL-ED    (149.6-154.9]        <=149.6           0.3845282   0.2026887   0.7295029
3 months    ki0047075b-MAL-ED    (154.9-160.8]        <=149.6           0.4050335   0.2089595   0.7850904
3 months    ki0047075b-MAL-ED    >160.8               <=149.6           0.3505252   0.1394670   0.8809822
3 months    ki1101329-Keneba     (149.6-154.9]        <=149.6           0.2091549   0.0744950   0.5872313
3 months    ki1101329-Keneba     (154.9-160.8]        <=149.6           0.2165354   0.0884836   0.5299014
3 months    ki1101329-Keneba     >160.8               <=149.6           0.1441379   0.0573269   0.3624085
3 months    ki1126311-ZVITAMBO   (149.6-154.9]        <=149.6           0.5696649   0.2492931   1.3017530
3 months    ki1126311-ZVITAMBO   (154.9-160.8]        <=149.6           0.5631470   0.2624229   1.2084866
3 months    ki1126311-ZVITAMBO   >160.8               <=149.6           0.3913338   0.1802416   0.8496493
6 months    ki1126311-ZVITAMBO   (149.6-154.9]        <=149.6           0.4090909   0.1678330   0.9971541
6 months    ki1126311-ZVITAMBO   (154.9-160.8]        <=149.6           0.4047976   0.1853195   0.8842087
6 months    ki1126311-ZVITAMBO   >160.8               <=149.6           0.1395349   0.0569389   0.3419450
9 months    ki0047075b-MAL-ED    (149.6-154.9]        <=149.6           0.3519765   0.1871633   0.6619214
9 months    ki0047075b-MAL-ED    (154.9-160.8]        <=149.6           0.4775353   0.2638871   0.8641572
9 months    ki0047075b-MAL-ED    >160.8               <=149.6           0.3194778   0.1279314   0.7978187
9 months    ki1101329-Keneba     (149.6-154.9]        <=149.6           0.3541247   0.1642594   0.7634531
9 months    ki1101329-Keneba     (154.9-160.8]        <=149.6           0.2696629   0.1315627   0.5527256
9 months    ki1101329-Keneba     >160.8               <=149.6           0.1191605   0.0549512   0.2583967
9 months    ki1126311-ZVITAMBO   (149.6-154.9]        <=149.6           0.2980392   0.1075670   0.8257864
9 months    ki1126311-ZVITAMBO   (154.9-160.8]        <=149.6           0.4523810   0.1965130   1.0413992
9 months    ki1126311-ZVITAMBO   >160.8               <=149.6           0.3504098   0.1508535   0.8139488
12 months   ki0047075b-MAL-ED    (149.6-154.9]        <=149.6           0.5477466   0.3436417   0.8730788
12 months   ki0047075b-MAL-ED    (154.9-160.8]        <=149.6           0.4277373   0.2482543   0.7369831
12 months   ki0047075b-MAL-ED    >160.8               <=149.6           0.4544709   0.2282807   0.9047798
12 months   ki1101329-Keneba     (149.6-154.9]        <=149.6           0.3850733   0.1945166   0.7623071
12 months   ki1101329-Keneba     (154.9-160.8]        <=149.6           0.2921642   0.1536056   0.5557083
12 months   ki1101329-Keneba     >160.8               <=149.6           0.1402934   0.0708302   0.2778790
12 months   ki1126311-ZVITAMBO   (149.6-154.9]        <=149.6           0.4609929   0.1840401   1.1547180
12 months   ki1126311-ZVITAMBO   (154.9-160.8]        <=149.6           0.5821078   0.2586686   1.3099753
12 months   ki1126311-ZVITAMBO   >160.8               <=149.6           0.2933333   0.1246507   0.6902842
12 months   ki1135781-COHORTS    (149.6-154.9]        <=149.6           0.4848106   0.4118995   0.5706279
12 months   ki1135781-COHORTS    (154.9-160.8]        <=149.6           0.3333878   0.2594819   0.4283437
12 months   ki1135781-COHORTS    >160.8               <=149.6           0.1318857   0.0553648   0.3141677
18 months   ki0047075b-MAL-ED    (149.6-154.9]        <=149.6           0.5679761   0.4021507   0.8021792
18 months   ki0047075b-MAL-ED    (154.9-160.8]        <=149.6           0.6056970   0.4239507   0.8653572
18 months   ki0047075b-MAL-ED    >160.8               <=149.6           0.5132002   0.3134501   0.8402435
18 months   ki1101329-Keneba     (149.6-154.9]        <=149.6           0.2868007   0.1716396   0.4792288
18 months   ki1101329-Keneba     (154.9-160.8]        <=149.6           0.2550125   0.1622624   0.4007793
18 months   ki1101329-Keneba     >160.8               <=149.6           0.1159251   0.0701874   0.1914678
18 months   ki1135781-COHORTS    (149.6-154.9]        <=149.6           0.5940653   0.5219060   0.6762015
18 months   ki1135781-COHORTS    (154.9-160.8]        <=149.6           0.4490727   0.3666162   0.5500747
18 months   ki1135781-COHORTS    >160.8               <=149.6           0.1710262   0.0731190   0.4000319
18 months   ki1148112-LCNI-5     (149.6-154.9]        <=149.6           0.4306667   0.2396602   0.7739030
18 months   ki1148112-LCNI-5     (154.9-160.8]        <=149.6           0.2211640   0.1110126   0.4406123
18 months   ki1148112-LCNI-5     >160.8               <=149.6           0.2505495   0.1200647   0.5228435
24 months   ki0047075b-MAL-ED    (149.6-154.9]        <=149.6           0.6545455   0.4598302   0.9317129
24 months   ki0047075b-MAL-ED    (154.9-160.8]        <=149.6           0.7095344   0.4961443   1.0147028
24 months   ki0047075b-MAL-ED    >160.8               <=149.6           0.4455021   0.2535107   0.7828945
24 months   ki1101329-Keneba     (149.6-154.9]        <=149.6           0.5141844   0.2302477   1.1482659
24 months   ki1101329-Keneba     (154.9-160.8]        <=149.6           0.4562667   0.2148671   0.9688747
24 months   ki1101329-Keneba     >160.8               <=149.6           0.2643759   0.1217487   0.5740893
24 months   ki1135781-COHORTS    (149.6-154.9]        <=149.6           0.6049905   0.5431209   0.6739079
24 months   ki1135781-COHORTS    (154.9-160.8]        <=149.6           0.4221244   0.3587324   0.4967184
24 months   ki1135781-COHORTS    >160.8               <=149.6           0.1465906   0.0799559   0.2687584
24 months   ki1148112-LCNI-5     (149.6-154.9]        <=149.6           0.4756098   0.2334433   0.9689920
24 months   ki1148112-LCNI-5     (154.9-160.8]        <=149.6           0.2596154   0.1160598   0.5807363
24 months   ki1148112-LCNI-5     >160.8               <=149.6           0.1875000   0.0696854   0.5044996


### Parameter: PAR


agecat      studyid              intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  -------------------  ---------------  -----------  -----------  -----------
3 months    ki0047075b-MAL-ED    <=149.6              NA                -0.0253577   -0.0448173   -0.0058982
3 months    ki1101329-Keneba     <=149.6              NA                -0.1217563   -0.2441223    0.0006097
3 months    ki1126311-ZVITAMBO   <=149.6              NA                -0.0510201   -0.1232681    0.0212279
6 months    ki1126311-ZVITAMBO   <=149.6              NA                -0.0766088   -0.1542401    0.0010224
9 months    ki0047075b-MAL-ED    <=149.6              NA                -0.0294131   -0.0510937   -0.0077324
9 months    ki1101329-Keneba     <=149.6              NA                -0.1690705   -0.3123479   -0.0257932
9 months    ki1126311-ZVITAMBO   <=149.6              NA                -0.0628498   -0.1425464    0.0168469
12 months   ki0047075b-MAL-ED    <=149.6              NA                -0.0323138   -0.0568419   -0.0077857
12 months   ki1101329-Keneba     <=149.6              NA                -0.2070521   -0.3697766   -0.0443277
12 months   ki1126311-ZVITAMBO   <=149.6              NA                -0.0656671   -0.1557770    0.0244428
12 months   ki1135781-COHORTS    <=149.6              NA                -0.0754206   -0.0940604   -0.0567809
18 months   ki0047075b-MAL-ED    <=149.6              NA                -0.0472485   -0.0792017   -0.0152953
18 months   ki1101329-Keneba     <=149.6              NA                -0.3345639   -0.5032549   -0.1658730
18 months   ki1135781-COHORTS    <=149.6              NA                -0.1027127   -0.1297127   -0.0757127
18 months   ki1148112-LCNI-5     <=149.6              NA                -0.2482580   -0.4041872   -0.0923287
24 months   ki0047075b-MAL-ED    <=149.6              NA                -0.0368748   -0.0683296   -0.0054200
24 months   ki1101329-Keneba     <=149.6              NA                -0.1263722   -0.2738560    0.0211116
24 months   ki1135781-COHORTS    <=149.6              NA                -0.1043974   -0.1260462   -0.0827487
24 months   ki1148112-LCNI-5     <=149.6              NA                -0.2083333   -0.3775479   -0.0391188


### Parameter: PAF


agecat      studyid              intervention_level   baseline_level      estimate      ci_lower     ci_upper
----------  -------------------  -------------------  ---------------  -----------  ------------  -----------
3 months    ki0047075b-MAL-ED    <=149.6              NA                -0.6866097    -1.3063591   -0.2333952
3 months    ki1101329-Keneba     <=149.6              NA                -4.0914316   -10.4220974   -1.2695197
3 months    ki1126311-ZVITAMBO   <=149.6              NA                -0.9826471    -3.0001745    0.0173205
6 months    ki1126311-ZVITAMBO   <=149.6              NA                -2.2204007    -5.4798052   -0.6005081
9 months    ki0047075b-MAL-ED    <=149.6              NA                -0.6675129    -1.2412003   -0.2406742
9 months    ki1101329-Keneba     <=149.6              NA                -3.4032258    -7.4812294   -1.2860362
9 months    ki1126311-ZVITAMBO   <=149.6              NA                -1.4818384    -4.2922453   -0.1638769
12 months   ki0047075b-MAL-ED    <=149.6              NA                -0.5100516    -0.9520898   -0.1681102
12 months   ki1101329-Keneba     <=149.6              NA                -3.0090447    -6.2350020   -1.2214837
12 months   ki1126311-ZVITAMBO   <=149.6              NA                -1.2086076    -3.6807842   -0.0421219
12 months   ki1135781-COHORTS    <=149.6              NA                -0.5247688    -0.6610950   -0.3996308
18 months   ki0047075b-MAL-ED    <=149.6              NA                -0.3935670    -0.6872806   -0.1509816
18 months   ki1101329-Keneba     <=149.6              NA                -3.7307033    -6.0477289   -2.1754277
18 months   ki1135781-COHORTS    <=149.6              NA                -0.3577703    -0.4558544   -0.2662942
18 months   ki1148112-LCNI-5     <=149.6              NA                -1.6948381    -3.0191284   -0.8068973
24 months   ki0047075b-MAL-ED    <=149.6              NA                -0.3181525    -0.6197705   -0.0726988
24 months   ki1101329-Keneba     <=149.6              NA                -1.5693665    -4.2418005   -0.2594230
24 months   ki1135781-COHORTS    <=149.6              NA                -0.4069439    -0.4945733   -0.3244524
24 months   ki1148112-LCNI-5     <=149.6              NA                -1.6666667    -3.4499283   -0.5980283


