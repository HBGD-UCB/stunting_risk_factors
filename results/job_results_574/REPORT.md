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

**Intervention Variable:** hhwealth_quart

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
* agecat: 12 months, studyid: ki1017093b-PROVIDE
* agecat: 12 months, studyid: ki1066203-TanzaniaChild2
* agecat: 12 months, studyid: ki1113344-GMS-Nepal
* agecat: 12 months, studyid: ki1114097-CONTENT
* agecat: 12 months, studyid: ki1135781-COHORTS
* agecat: 12 months, studyid: ki1148112-LCNI-5
* agecat: 18 months, studyid: ki0047075b-MAL-ED
* agecat: 18 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 18 months, studyid: ki1000108-IRC
* agecat: 18 months, studyid: ki1017093b-PROVIDE
* agecat: 18 months, studyid: ki1066203-TanzaniaChild2
* agecat: 18 months, studyid: ki1113344-GMS-Nepal
* agecat: 18 months, studyid: ki1114097-CONTENT
* agecat: 18 months, studyid: ki1135781-COHORTS
* agecat: 18 months, studyid: ki1148112-LCNI-5
* agecat: 24 months, studyid: ki0047075b-MAL-ED
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 24 months, studyid: ki1000108-IRC
* agecat: 24 months, studyid: ki1017093b-PROVIDE
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2
* agecat: 24 months, studyid: ki1113344-GMS-Nepal
* agecat: 24 months, studyid: ki1114097-CONTENT
* agecat: 24 months, studyid: ki1135781-COHORTS
* agecat: 24 months, studyid: ki1148112-LCNI-5
* agecat: 3 months, studyid: ki0047075b-MAL-ED
* agecat: 3 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 3 months, studyid: ki1000108-IRC
* agecat: 3 months, studyid: ki1017093b-PROVIDE
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2
* agecat: 3 months, studyid: ki1113344-GMS-Nepal
* agecat: 3 months, studyid: ki1114097-CONTENT
* agecat: 3 months, studyid: ki1135781-COHORTS
* agecat: 6 months, studyid: ki0047075b-MAL-ED
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 6 months, studyid: ki1000108-IRC
* agecat: 6 months, studyid: ki1017093b-PROVIDE
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2
* agecat: 6 months, studyid: ki1113344-GMS-Nepal
* agecat: 6 months, studyid: ki1114097-CONTENT
* agecat: 6 months, studyid: ki1135781-COHORTS
* agecat: 6 months, studyid: ki1148112-LCNI-5
* agecat: 9 months, studyid: ki0047075b-MAL-ED
* agecat: 9 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 9 months, studyid: ki1000108-IRC
* agecat: 9 months, studyid: ki1017093b-PROVIDE
* agecat: 9 months, studyid: ki1066203-TanzaniaChild2
* agecat: 9 months, studyid: ki1113344-GMS-Nepal
* agecat: 9 months, studyid: ki1114097-CONTENT
* agecat: 9 months, studyid: ki1135781-COHORTS
* agecat: 9 months, studyid: ki1148112-LCNI-5
* agecat: Birth, studyid: ki0047075b-MAL-ED
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002
* agecat: Birth, studyid: ki1000108-IRC
* agecat: Birth, studyid: ki1114097-CONTENT
* agecat: Birth, studyid: ki1135781-COHORTS

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002
* agecat: Birth, studyid: ki1000108-IRC
* agecat: Birth, studyid: ki1114097-CONTENT
* agecat: 3 months, studyid: ki0047075b-MAL-ED
* agecat: 3 months, studyid: ki1017093b-PROVIDE
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2
* agecat: 3 months, studyid: ki1113344-GMS-Nepal
* agecat: 3 months, studyid: ki1114097-CONTENT
* agecat: 6 months, studyid: ki0047075b-MAL-ED
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 6 months, studyid: ki1000108-IRC
* agecat: 6 months, studyid: ki1017093b-PROVIDE
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2
* agecat: 6 months, studyid: ki1113344-GMS-Nepal
* agecat: 6 months, studyid: ki1114097-CONTENT
* agecat: 9 months, studyid: ki0047075b-MAL-ED
* agecat: 9 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 9 months, studyid: ki1017093b-PROVIDE
* agecat: 9 months, studyid: ki1066203-TanzaniaChild2
* agecat: 9 months, studyid: ki1114097-CONTENT
* agecat: 9 months, studyid: ki1148112-LCNI-5
* agecat: 12 months, studyid: ki1017093b-PROVIDE
* agecat: 12 months, studyid: ki1066203-TanzaniaChild2
* agecat: 12 months, studyid: ki1114097-CONTENT
* agecat: 18 months, studyid: ki1017093b-PROVIDE
* agecat: 18 months, studyid: ki1066203-TanzaniaChild2
* agecat: 18 months, studyid: ki1114097-CONTENT
* agecat: 24 months, studyid: ki1017093b-PROVIDE
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2
* agecat: 24 months, studyid: ki1114097-CONTENT
* agecat: 24 months, studyid: ki1148112-LCNI-5

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness




# Results Detail

## Results Plots
![](/tmp/f2ba7a6c-b8c5-4c77-8481-315d11d8f473/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/f2ba7a6c-b8c5-4c77-8481-315d11d8f473/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/f2ba7a6c-b8c5-4c77-8481-315d11d8f473/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/f2ba7a6c-b8c5-4c77-8481-315d11d8f473/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Data Summary

agecat      studyid                    A               n     nA   nAY0   nAY1
----------  -------------------------  ----------  -----  -----  -----  -----
Birth       ki0047075b-MAL-ED          Wealth Q1     291     65     65      0
Birth       ki0047075b-MAL-ED          Wealth Q2     291     69     67      2
Birth       ki0047075b-MAL-ED          Wealth Q3     291     81     78      3
Birth       ki0047075b-MAL-ED          Wealth Q4     291     76     73      3
Birth       ki1000108-CMC-V-BCS-2002   Wealth Q1      90     14     14      0
Birth       ki1000108-CMC-V-BCS-2002   Wealth Q2      90     20     19      1
Birth       ki1000108-CMC-V-BCS-2002   Wealth Q3      90     25     23      2
Birth       ki1000108-CMC-V-BCS-2002   Wealth Q4      90     31     31      0
Birth       ki1000108-IRC              Wealth Q1     388     98     96      2
Birth       ki1000108-IRC              Wealth Q2     388     99     92      7
Birth       ki1000108-IRC              Wealth Q3     388    100     97      3
Birth       ki1000108-IRC              Wealth Q4     388     91     87      4
Birth       ki1017093b-PROVIDE         Wealth Q1       0      0      0      0
Birth       ki1017093b-PROVIDE         Wealth Q2       0      0      0      0
Birth       ki1017093b-PROVIDE         Wealth Q3       0      0      0      0
Birth       ki1017093b-PROVIDE         Wealth Q4       0      0      0      0
Birth       ki1066203-TanzaniaChild2   Wealth Q1       0      0      0      0
Birth       ki1066203-TanzaniaChild2   Wealth Q2       0      0      0      0
Birth       ki1066203-TanzaniaChild2   Wealth Q3       0      0      0      0
Birth       ki1066203-TanzaniaChild2   Wealth Q4       0      0      0      0
Birth       ki1113344-GMS-Nepal        Wealth Q1       0      0      0      0
Birth       ki1113344-GMS-Nepal        Wealth Q2       0      0      0      0
Birth       ki1113344-GMS-Nepal        Wealth Q3       0      0      0      0
Birth       ki1113344-GMS-Nepal        Wealth Q4       0      0      0      0
Birth       ki1114097-CONTENT          Wealth Q1       2      0      0      0
Birth       ki1114097-CONTENT          Wealth Q2       2      1      1      0
Birth       ki1114097-CONTENT          Wealth Q3       2      1      1      0
Birth       ki1114097-CONTENT          Wealth Q4       2      0      0      0
Birth       ki1135781-COHORTS          Wealth Q1    3430    778    766     12
Birth       ki1135781-COHORTS          Wealth Q2    3430    602    587     15
Birth       ki1135781-COHORTS          Wealth Q3    3430   1064   1050     14
Birth       ki1135781-COHORTS          Wealth Q4    3430    986    979      7
Birth       ki1148112-LCNI-5           Wealth Q1       0      0      0      0
Birth       ki1148112-LCNI-5           Wealth Q2       0      0      0      0
Birth       ki1148112-LCNI-5           Wealth Q3       0      0      0      0
Birth       ki1148112-LCNI-5           Wealth Q4       0      0      0      0
3 months    ki0047075b-MAL-ED          Wealth Q1     362     90     85      5
3 months    ki0047075b-MAL-ED          Wealth Q2     362     88     85      3
3 months    ki0047075b-MAL-ED          Wealth Q3     362     92     84      8
3 months    ki0047075b-MAL-ED          Wealth Q4     362     92     89      3
3 months    ki1000108-CMC-V-BCS-2002   Wealth Q1     362     90     85      5
3 months    ki1000108-CMC-V-BCS-2002   Wealth Q2     362     92     85      7
3 months    ki1000108-CMC-V-BCS-2002   Wealth Q3     362     87     80      7
3 months    ki1000108-CMC-V-BCS-2002   Wealth Q4     362     93     79     14
3 months    ki1000108-IRC              Wealth Q1     407    105     93     12
3 months    ki1000108-IRC              Wealth Q2     407    101     88     13
3 months    ki1000108-IRC              Wealth Q3     407    103     97      6
3 months    ki1000108-IRC              Wealth Q4     407     98     93      5
3 months    ki1017093b-PROVIDE         Wealth Q1     168     44     41      3
3 months    ki1017093b-PROVIDE         Wealth Q2     168     38     38      0
3 months    ki1017093b-PROVIDE         Wealth Q3     168     39     39      0
3 months    ki1017093b-PROVIDE         Wealth Q4     168     47     45      2
3 months    ki1066203-TanzaniaChild2   Wealth Q1     574    166    163      3
3 months    ki1066203-TanzaniaChild2   Wealth Q2     574    109    107      2
3 months    ki1066203-TanzaniaChild2   Wealth Q3     574    164    163      1
3 months    ki1066203-TanzaniaChild2   Wealth Q4     574    135    131      4
3 months    ki1113344-GMS-Nepal        Wealth Q1     571    146    137      9
3 months    ki1113344-GMS-Nepal        Wealth Q2     571    142    136      6
3 months    ki1113344-GMS-Nepal        Wealth Q3     571    141    138      3
3 months    ki1113344-GMS-Nepal        Wealth Q4     571    142    138      4
3 months    ki1114097-CONTENT          Wealth Q1     215     59     59      0
3 months    ki1114097-CONTENT          Wealth Q2     215     52     52      0
3 months    ki1114097-CONTENT          Wealth Q3     215     52     50      2
3 months    ki1114097-CONTENT          Wealth Q4     215     52     51      1
3 months    ki1135781-COHORTS          Wealth Q1    3327    735    708     27
3 months    ki1135781-COHORTS          Wealth Q2    3327    593    574     19
3 months    ki1135781-COHORTS          Wealth Q3    3327   1035    993     42
3 months    ki1135781-COHORTS          Wealth Q4    3327    964    936     28
3 months    ki1148112-LCNI-5           Wealth Q1       0      0      0      0
3 months    ki1148112-LCNI-5           Wealth Q2       0      0      0      0
3 months    ki1148112-LCNI-5           Wealth Q3       0      0      0      0
3 months    ki1148112-LCNI-5           Wealth Q4       0      0      0      0
6 months    ki0047075b-MAL-ED          Wealth Q1     356     88     83      5
6 months    ki0047075b-MAL-ED          Wealth Q2     356     86     83      3
6 months    ki0047075b-MAL-ED          Wealth Q3     356     91     82      9
6 months    ki0047075b-MAL-ED          Wealth Q4     356     91     89      2
6 months    ki1000108-CMC-V-BCS-2002   Wealth Q1     369     91     89      2
6 months    ki1000108-CMC-V-BCS-2002   Wealth Q2     369     94     83     11
6 months    ki1000108-CMC-V-BCS-2002   Wealth Q3     369     90     76     14
6 months    ki1000108-CMC-V-BCS-2002   Wealth Q4     369     94     79     15
6 months    ki1000108-IRC              Wealth Q1     407    105     95     10
6 months    ki1000108-IRC              Wealth Q2     407    100     92      8
6 months    ki1000108-IRC              Wealth Q3     407    103     99      4
6 months    ki1000108-IRC              Wealth Q4     407     99     92      7
6 months    ki1017093b-PROVIDE         Wealth Q1     153     38     35      3
6 months    ki1017093b-PROVIDE         Wealth Q2     153     34     32      2
6 months    ki1017093b-PROVIDE         Wealth Q3     153     38     38      0
6 months    ki1017093b-PROVIDE         Wealth Q4     153     43     42      1
6 months    ki1066203-TanzaniaChild2   Wealth Q1     503    141    138      3
6 months    ki1066203-TanzaniaChild2   Wealth Q2     503     97     94      3
6 months    ki1066203-TanzaniaChild2   Wealth Q3     503    146    146      0
6 months    ki1066203-TanzaniaChild2   Wealth Q4     503    119    118      1
6 months    ki1113344-GMS-Nepal        Wealth Q1     563    145    134     11
6 months    ki1113344-GMS-Nepal        Wealth Q2     563    139    135      4
6 months    ki1113344-GMS-Nepal        Wealth Q3     563    138    135      3
6 months    ki1113344-GMS-Nepal        Wealth Q4     563    141    139      2
6 months    ki1114097-CONTENT          Wealth Q1     215     59     59      0
6 months    ki1114097-CONTENT          Wealth Q2     215     52     51      1
6 months    ki1114097-CONTENT          Wealth Q3     215     52     50      2
6 months    ki1114097-CONTENT          Wealth Q4     215     52     51      1
6 months    ki1135781-COHORTS          Wealth Q1    3148    665    619     46
6 months    ki1135781-COHORTS          Wealth Q2    3148    569    527     42
6 months    ki1135781-COHORTS          Wealth Q3    3148   1001    929     72
6 months    ki1135781-COHORTS          Wealth Q4    3148    913    874     39
6 months    ki1148112-LCNI-5           Wealth Q1     405    103     93     10
6 months    ki1148112-LCNI-5           Wealth Q2     405     95     90      5
6 months    ki1148112-LCNI-5           Wealth Q3     405     95     90      5
6 months    ki1148112-LCNI-5           Wealth Q4     405    112    105      7
9 months    ki0047075b-MAL-ED          Wealth Q1     358     89     82      7
9 months    ki0047075b-MAL-ED          Wealth Q2     358     88     81      7
9 months    ki0047075b-MAL-ED          Wealth Q3     358     89     79     10
9 months    ki0047075b-MAL-ED          Wealth Q4     358     92     90      2
9 months    ki1000108-CMC-V-BCS-2002   Wealth Q1     366     88     84      4
9 months    ki1000108-CMC-V-BCS-2002   Wealth Q2     366     95     81     14
9 months    ki1000108-CMC-V-BCS-2002   Wealth Q3     366     89     76     13
9 months    ki1000108-CMC-V-BCS-2002   Wealth Q4     366     94     78     16
9 months    ki1000108-IRC              Wealth Q1     407    105     95     10
9 months    ki1000108-IRC              Wealth Q2     407    100     91      9
9 months    ki1000108-IRC              Wealth Q3     407    103     96      7
9 months    ki1000108-IRC              Wealth Q4     407     99     91      8
9 months    ki1017093b-PROVIDE         Wealth Q1     158     40     36      4
9 months    ki1017093b-PROVIDE         Wealth Q2     158     36     33      3
9 months    ki1017093b-PROVIDE         Wealth Q3     158     38     37      1
9 months    ki1017093b-PROVIDE         Wealth Q4     158     44     43      1
9 months    ki1066203-TanzaniaChild2   Wealth Q1     433    122    121      1
9 months    ki1066203-TanzaniaChild2   Wealth Q2     433     88     85      3
9 months    ki1066203-TanzaniaChild2   Wealth Q3     433    130    130      0
9 months    ki1066203-TanzaniaChild2   Wealth Q4     433     93     90      3
9 months    ki1113344-GMS-Nepal        Wealth Q1     551    141    129     12
9 months    ki1113344-GMS-Nepal        Wealth Q2     551    139    129     10
9 months    ki1113344-GMS-Nepal        Wealth Q3     551    132    124      8
9 months    ki1113344-GMS-Nepal        Wealth Q4     551    139    134      5
9 months    ki1114097-CONTENT          Wealth Q1     214     59     58      1
9 months    ki1114097-CONTENT          Wealth Q2     214     52     50      2
9 months    ki1114097-CONTENT          Wealth Q3     214     51     50      1
9 months    ki1114097-CONTENT          Wealth Q4     214     52     51      1
9 months    ki1135781-COHORTS          Wealth Q1    3145    673    588     85
9 months    ki1135781-COHORTS          Wealth Q2    3145    567    509     58
9 months    ki1135781-COHORTS          Wealth Q3    3145    990    890    100
9 months    ki1135781-COHORTS          Wealth Q4    3145    915    852     63
9 months    ki1148112-LCNI-5           Wealth Q1     317     73     68      5
9 months    ki1148112-LCNI-5           Wealth Q2     317     70     69      1
9 months    ki1148112-LCNI-5           Wealth Q3     317     76     71      5
9 months    ki1148112-LCNI-5           Wealth Q4     317     98     92      6
12 months   ki0047075b-MAL-ED          Wealth Q1     359     90     81      9
12 months   ki0047075b-MAL-ED          Wealth Q2     359     88     76     12
12 months   ki0047075b-MAL-ED          Wealth Q3     359     90     79     11
12 months   ki0047075b-MAL-ED          Wealth Q4     359     91     86      5
12 months   ki1000108-CMC-V-BCS-2002   Wealth Q1     368     88     79      9
12 months   ki1000108-CMC-V-BCS-2002   Wealth Q2     368     95     71     24
12 months   ki1000108-CMC-V-BCS-2002   Wealth Q3     368     90     66     24
12 months   ki1000108-CMC-V-BCS-2002   Wealth Q4     368     95     69     26
12 months   ki1000108-IRC              Wealth Q1     406    104     94     10
12 months   ki1000108-IRC              Wealth Q2     406    100     89     11
12 months   ki1000108-IRC              Wealth Q3     406    103     97      6
12 months   ki1000108-IRC              Wealth Q4     406     99     92      7
12 months   ki1017093b-PROVIDE         Wealth Q1     153     37     30      7
12 months   ki1017093b-PROVIDE         Wealth Q2     153     34     32      2
12 months   ki1017093b-PROVIDE         Wealth Q3     153     38     36      2
12 months   ki1017093b-PROVIDE         Wealth Q4     153     44     42      2
12 months   ki1066203-TanzaniaChild2   Wealth Q1     356    101     98      3
12 months   ki1066203-TanzaniaChild2   Wealth Q2     356     68     67      1
12 months   ki1066203-TanzaniaChild2   Wealth Q3     356    104    102      2
12 months   ki1066203-TanzaniaChild2   Wealth Q4     356     83     82      1
12 months   ki1113344-GMS-Nepal        Wealth Q1     558    140    121     19
12 months   ki1113344-GMS-Nepal        Wealth Q2     558    141    127     14
12 months   ki1113344-GMS-Nepal        Wealth Q3     558    135    124     11
12 months   ki1113344-GMS-Nepal        Wealth Q4     558    142    135      7
12 months   ki1114097-CONTENT          Wealth Q1     215     59     58      1
12 months   ki1114097-CONTENT          Wealth Q2     215     52     52      0
12 months   ki1114097-CONTENT          Wealth Q3     215     52     51      1
12 months   ki1114097-CONTENT          Wealth Q4     215     52     51      1
12 months   ki1135781-COHORTS          Wealth Q1    3086    634    492    142
12 months   ki1135781-COHORTS          Wealth Q2    3086    556    465     91
12 months   ki1135781-COHORTS          Wealth Q3    3086    965    801    164
12 months   ki1135781-COHORTS          Wealth Q4    3086    931    812    119
12 months   ki1148112-LCNI-5           Wealth Q1     306     77     69      8
12 months   ki1148112-LCNI-5           Wealth Q2     306     62     56      6
12 months   ki1148112-LCNI-5           Wealth Q3     306     79     74      5
12 months   ki1148112-LCNI-5           Wealth Q4     306     88     74     14
18 months   ki0047075b-MAL-ED          Wealth Q1     352     87     68     19
18 months   ki0047075b-MAL-ED          Wealth Q2     352     87     71     16
18 months   ki0047075b-MAL-ED          Wealth Q3     352     86     71     15
18 months   ki0047075b-MAL-ED          Wealth Q4     352     92     87      5
18 months   ki1000108-CMC-V-BCS-2002   Wealth Q1     369     90     70     20
18 months   ki1000108-CMC-V-BCS-2002   Wealth Q2     369     93     61     32
18 months   ki1000108-CMC-V-BCS-2002   Wealth Q3     369     90     64     26
18 months   ki1000108-CMC-V-BCS-2002   Wealth Q4     369     96     65     31
18 months   ki1000108-IRC              Wealth Q1     405    104     94     10
18 months   ki1000108-IRC              Wealth Q2     405     99     91      8
18 months   ki1000108-IRC              Wealth Q3     405    103     94      9
18 months   ki1000108-IRC              Wealth Q4     405     99     92      7
18 months   ki1017093b-PROVIDE         Wealth Q1     141     34     21     13
18 months   ki1017093b-PROVIDE         Wealth Q2     141     30     26      4
18 months   ki1017093b-PROVIDE         Wealth Q3     141     38     36      2
18 months   ki1017093b-PROVIDE         Wealth Q4     141     39     38      1
18 months   ki1066203-TanzaniaChild2   Wealth Q1     257     71     69      2
18 months   ki1066203-TanzaniaChild2   Wealth Q2     257     45     42      3
18 months   ki1066203-TanzaniaChild2   Wealth Q3     257     77     74      3
18 months   ki1066203-TanzaniaChild2   Wealth Q4     257     64     57      7
18 months   ki1113344-GMS-Nepal        Wealth Q1     550    135    110     25
18 months   ki1113344-GMS-Nepal        Wealth Q2     550    140    121     19
18 months   ki1113344-GMS-Nepal        Wealth Q3     550    131    107     24
18 months   ki1113344-GMS-Nepal        Wealth Q4     550    144    127     17
18 months   ki1114097-CONTENT          Wealth Q1     200     54     54      0
18 months   ki1114097-CONTENT          Wealth Q2     200     48     45      3
18 months   ki1114097-CONTENT          Wealth Q3     200     50     49      1
18 months   ki1114097-CONTENT          Wealth Q4     200     48     47      1
18 months   ki1135781-COHORTS          Wealth Q1    2913    592    379    213
18 months   ki1135781-COHORTS          Wealth Q2    2913    514    350    164
18 months   ki1135781-COHORTS          Wealth Q3    2913    922    650    272
18 months   ki1135781-COHORTS          Wealth Q4    2913    885    696    189
18 months   ki1148112-LCNI-5           Wealth Q1     353     85     73     12
18 months   ki1148112-LCNI-5           Wealth Q2     353     85     70     15
18 months   ki1148112-LCNI-5           Wealth Q3     353     85     75     10
18 months   ki1148112-LCNI-5           Wealth Q4     353     98     84     14
24 months   ki0047075b-MAL-ED          Wealth Q1     350     88     72     16
24 months   ki0047075b-MAL-ED          Wealth Q2     350     84     64     20
24 months   ki0047075b-MAL-ED          Wealth Q3     350     86     72     14
24 months   ki0047075b-MAL-ED          Wealth Q4     350     92     85      7
24 months   ki1000108-CMC-V-BCS-2002   Wealth Q1     372     91     68     23
24 months   ki1000108-CMC-V-BCS-2002   Wealth Q2     372     95     59     36
24 months   ki1000108-CMC-V-BCS-2002   Wealth Q3     372     91     60     31
24 months   ki1000108-CMC-V-BCS-2002   Wealth Q4     372     95     62     33
24 months   ki1000108-IRC              Wealth Q1     409    105     90     15
24 months   ki1000108-IRC              Wealth Q2     409    101     91     10
24 months   ki1000108-IRC              Wealth Q3     409    103     92     11
24 months   ki1000108-IRC              Wealth Q4     409    100     95      5
24 months   ki1017093b-PROVIDE         Wealth Q1     149     34     24     10
24 months   ki1017093b-PROVIDE         Wealth Q2     149     34     31      3
24 months   ki1017093b-PROVIDE         Wealth Q3     149     38     35      3
24 months   ki1017093b-PROVIDE         Wealth Q4     149     43     41      2
24 months   ki1066203-TanzaniaChild2   Wealth Q1       2      1      1      0
24 months   ki1066203-TanzaniaChild2   Wealth Q2       2      1      1      0
24 months   ki1066203-TanzaniaChild2   Wealth Q3       2      0      0      0
24 months   ki1066203-TanzaniaChild2   Wealth Q4       2      0      0      0
24 months   ki1113344-GMS-Nepal        Wealth Q1     499    127    105     22
24 months   ki1113344-GMS-Nepal        Wealth Q2     499    126    111     15
24 months   ki1113344-GMS-Nepal        Wealth Q3     499    119    111      8
24 months   ki1113344-GMS-Nepal        Wealth Q4     499    127    118      9
24 months   ki1114097-CONTENT          Wealth Q1     164     40     40      0
24 months   ki1114097-CONTENT          Wealth Q2     164     42     40      2
24 months   ki1114097-CONTENT          Wealth Q3     164     41     40      1
24 months   ki1114097-CONTENT          Wealth Q4     164     41     41      0
24 months   ki1135781-COHORTS          Wealth Q1    2942    597    356    241
24 months   ki1135781-COHORTS          Wealth Q2    2942    519    324    195
24 months   ki1135781-COHORTS          Wealth Q3    2942    933    629    304
24 months   ki1135781-COHORTS          Wealth Q4    2942    893    697    196
24 months   ki1148112-LCNI-5           Wealth Q1     293     65     56      9
24 months   ki1148112-LCNI-5           Wealth Q2     293     73     60     13
24 months   ki1148112-LCNI-5           Wealth Q3     293     67     63      4
24 months   ki1148112-LCNI-5           Wealth Q4     293     88     78     10

## Results Table

### Parameter: TSM


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1135781-COHORTS          Wealth Q1            NA                0.0154242   0.0067636   0.0240847
Birth       ki1135781-COHORTS          Wealth Q2            NA                0.0249169   0.0124637   0.0373702
Birth       ki1135781-COHORTS          Wealth Q3            NA                0.0131579   0.0063100   0.0200058
Birth       ki1135781-COHORTS          Wealth Q4            NA                0.0070994   0.0018581   0.0123407
3 months    ki1000108-CMC-V-BCS-2002   Wealth Q1            NA                0.0555556   0.0081663   0.1029448
3 months    ki1000108-CMC-V-BCS-2002   Wealth Q2            NA                0.0760870   0.0218337   0.1303402
3 months    ki1000108-CMC-V-BCS-2002   Wealth Q3            NA                0.0804598   0.0232245   0.1376951
3 months    ki1000108-CMC-V-BCS-2002   Wealth Q4            NA                0.1505376   0.0777593   0.2233159
3 months    ki1000108-IRC              Wealth Q1            NA                0.1142857   0.0533558   0.1752156
3 months    ki1000108-IRC              Wealth Q2            NA                0.1287129   0.0633226   0.1941032
3 months    ki1000108-IRC              Wealth Q3            NA                0.0582524   0.0129639   0.1035409
3 months    ki1000108-IRC              Wealth Q4            NA                0.0510204   0.0074020   0.0946388
3 months    ki1135781-COHORTS          Wealth Q1            NA                0.0367347   0.0231334   0.0503360
3 months    ki1135781-COHORTS          Wealth Q2            NA                0.0320405   0.0178641   0.0462168
3 months    ki1135781-COHORTS          Wealth Q3            NA                0.0405797   0.0285570   0.0526024
3 months    ki1135781-COHORTS          Wealth Q4            NA                0.0290456   0.0184430   0.0396483
6 months    ki1135781-COHORTS          Wealth Q1            NA                0.0691729   0.0498840   0.0884619
6 months    ki1135781-COHORTS          Wealth Q2            NA                0.0738137   0.0523266   0.0953008
6 months    ki1135781-COHORTS          Wealth Q3            NA                0.0719281   0.0559200   0.0879362
6 months    ki1135781-COHORTS          Wealth Q4            NA                0.0427163   0.0295974   0.0558353
6 months    ki1148112-LCNI-5           Wealth Q1            NA                0.0970874   0.0398380   0.1543367
6 months    ki1148112-LCNI-5           Wealth Q2            NA                0.0526316   0.0076737   0.0975895
6 months    ki1148112-LCNI-5           Wealth Q3            NA                0.0526316   0.0076737   0.0975895
6 months    ki1148112-LCNI-5           Wealth Q4            NA                0.0625000   0.0176150   0.1073850
9 months    ki1000108-IRC              Wealth Q1            NA                0.0952381   0.0390221   0.1514541
9 months    ki1000108-IRC              Wealth Q2            NA                0.0900000   0.0338404   0.1461596
9 months    ki1000108-IRC              Wealth Q3            NA                0.0679612   0.0192968   0.1166255
9 months    ki1000108-IRC              Wealth Q4            NA                0.0808081   0.0270560   0.1345601
9 months    ki1113344-GMS-Nepal        Wealth Q1            NA                0.0851064   0.0390065   0.1312062
9 months    ki1113344-GMS-Nepal        Wealth Q2            NA                0.0719424   0.0289477   0.1149372
9 months    ki1113344-GMS-Nepal        Wealth Q3            NA                0.0606061   0.0198645   0.1013476
9 months    ki1113344-GMS-Nepal        Wealth Q4            NA                0.0359712   0.0049858   0.0669567
9 months    ki1135781-COHORTS          Wealth Q1            NA                0.1263001   0.1011991   0.1514012
9 months    ki1135781-COHORTS          Wealth Q2            NA                0.1022928   0.0773459   0.1272396
9 months    ki1135781-COHORTS          Wealth Q3            NA                0.1010101   0.0822360   0.1197842
9 months    ki1135781-COHORTS          Wealth Q4            NA                0.0688525   0.0524437   0.0852612
12 months   ki0047075b-MAL-ED          Wealth Q1            NA                0.1000000   0.0379340   0.1620660
12 months   ki0047075b-MAL-ED          Wealth Q2            NA                0.1363636   0.0645632   0.2081641
12 months   ki0047075b-MAL-ED          Wealth Q3            NA                0.1222222   0.0544581   0.1899864
12 months   ki0047075b-MAL-ED          Wealth Q4            NA                0.0549451   0.0080609   0.1018292
12 months   ki1000108-CMC-V-BCS-2002   Wealth Q1            NA                0.1022727   0.0388785   0.1656670
12 months   ki1000108-CMC-V-BCS-2002   Wealth Q2            NA                0.2526316   0.1651355   0.3401276
12 months   ki1000108-CMC-V-BCS-2002   Wealth Q3            NA                0.2666667   0.1751811   0.3581523
12 months   ki1000108-CMC-V-BCS-2002   Wealth Q4            NA                0.2736842   0.1839073   0.3634611
12 months   ki1000108-IRC              Wealth Q1            NA                0.0961538   0.0394258   0.1528819
12 months   ki1000108-IRC              Wealth Q2            NA                0.1100000   0.0485991   0.1714009
12 months   ki1000108-IRC              Wealth Q3            NA                0.0582524   0.0129638   0.1035411
12 months   ki1000108-IRC              Wealth Q4            NA                0.0707071   0.0201510   0.1212632
12 months   ki1113344-GMS-Nepal        Wealth Q1            NA                0.1357143   0.0789317   0.1924969
12 months   ki1113344-GMS-Nepal        Wealth Q2            NA                0.0992908   0.0498853   0.1486962
12 months   ki1113344-GMS-Nepal        Wealth Q3            NA                0.0814815   0.0352919   0.1276711
12 months   ki1113344-GMS-Nepal        Wealth Q4            NA                0.0492958   0.0136571   0.0849344
12 months   ki1135781-COHORTS          Wealth Q1            NA                0.2239748   0.1915175   0.2564320
12 months   ki1135781-COHORTS          Wealth Q2            NA                0.1636691   0.1329114   0.1944267
12 months   ki1135781-COHORTS          Wealth Q3            NA                0.1699482   0.1462472   0.1936491
12 months   ki1135781-COHORTS          Wealth Q4            NA                0.1278195   0.1063687   0.1492704
12 months   ki1148112-LCNI-5           Wealth Q1            NA                0.1038961   0.0356320   0.1721602
12 months   ki1148112-LCNI-5           Wealth Q2            NA                0.0967742   0.0230617   0.1704867
12 months   ki1148112-LCNI-5           Wealth Q3            NA                0.0632911   0.0095113   0.1170709
12 months   ki1148112-LCNI-5           Wealth Q4            NA                0.1590909   0.0825463   0.2356355
18 months   ki0047075b-MAL-ED          Wealth Q1            NA                0.2183908   0.1314511   0.3053305
18 months   ki0047075b-MAL-ED          Wealth Q2            NA                0.1839080   0.1023858   0.2654303
18 months   ki0047075b-MAL-ED          Wealth Q3            NA                0.1744186   0.0941043   0.2547329
18 months   ki0047075b-MAL-ED          Wealth Q4            NA                0.0543478   0.0079574   0.1007383
18 months   ki1000108-CMC-V-BCS-2002   Wealth Q1            NA                0.2222222   0.1362145   0.3082300
18 months   ki1000108-CMC-V-BCS-2002   Wealth Q2            NA                0.3440860   0.2474024   0.4407696
18 months   ki1000108-CMC-V-BCS-2002   Wealth Q3            NA                0.2888889   0.1951218   0.3826559
18 months   ki1000108-CMC-V-BCS-2002   Wealth Q4            NA                0.3229167   0.2292537   0.4165797
18 months   ki1000108-IRC              Wealth Q1            NA                0.0961538   0.0394257   0.1528820
18 months   ki1000108-IRC              Wealth Q2            NA                0.0808081   0.0270557   0.1345605
18 months   ki1000108-IRC              Wealth Q3            NA                0.0873786   0.0327759   0.1419814
18 months   ki1000108-IRC              Wealth Q4            NA                0.0707071   0.0201508   0.1212633
18 months   ki1113344-GMS-Nepal        Wealth Q1            NA                0.1851852   0.1195995   0.2507709
18 months   ki1113344-GMS-Nepal        Wealth Q2            NA                0.1357143   0.0789310   0.1924976
18 months   ki1113344-GMS-Nepal        Wealth Q3            NA                0.1832061   0.1169030   0.2495092
18 months   ki1113344-GMS-Nepal        Wealth Q4            NA                0.1180556   0.0653051   0.1708060
18 months   ki1135781-COHORTS          Wealth Q1            NA                0.3597973   0.3211295   0.3984651
18 months   ki1135781-COHORTS          Wealth Q2            NA                0.3190661   0.2787635   0.3593688
18 months   ki1135781-COHORTS          Wealth Q3            NA                0.2950108   0.2655688   0.3244529
18 months   ki1135781-COHORTS          Wealth Q4            NA                0.2135593   0.1865544   0.2405643
18 months   ki1148112-LCNI-5           Wealth Q1            NA                0.1411765   0.0670475   0.2153054
18 months   ki1148112-LCNI-5           Wealth Q2            NA                0.1764706   0.0953128   0.2576284
18 months   ki1148112-LCNI-5           Wealth Q3            NA                0.1176471   0.0490562   0.1862379
18 months   ki1148112-LCNI-5           Wealth Q4            NA                0.1428571   0.0734780   0.2122362
24 months   ki0047075b-MAL-ED          Wealth Q1            NA                0.1818182   0.1011185   0.2625178
24 months   ki0047075b-MAL-ED          Wealth Q2            NA                0.2380952   0.1468825   0.3293080
24 months   ki0047075b-MAL-ED          Wealth Q3            NA                0.1627907   0.0846546   0.2409268
24 months   ki0047075b-MAL-ED          Wealth Q4            NA                0.0760870   0.0218312   0.1303428
24 months   ki1000108-CMC-V-BCS-2002   Wealth Q1            NA                0.2527473   0.1633367   0.3421578
24 months   ki1000108-CMC-V-BCS-2002   Wealth Q2            NA                0.3789474   0.2812631   0.4766316
24 months   ki1000108-CMC-V-BCS-2002   Wealth Q3            NA                0.3406593   0.2431543   0.4381644
24 months   ki1000108-CMC-V-BCS-2002   Wealth Q4            NA                0.3473684   0.2514946   0.4432422
24 months   ki1000108-IRC              Wealth Q1            NA                0.1428571   0.0758436   0.2098707
24 months   ki1000108-IRC              Wealth Q2            NA                0.0990099   0.0406898   0.1573300
24 months   ki1000108-IRC              Wealth Q3            NA                0.1067961   0.0470769   0.1665153
24 months   ki1000108-IRC              Wealth Q4            NA                0.0500000   0.0072313   0.0927687
24 months   ki1113344-GMS-Nepal        Wealth Q1            NA                0.1732283   0.1073437   0.2391130
24 months   ki1113344-GMS-Nepal        Wealth Q2            NA                0.1190476   0.0624452   0.1756500
24 months   ki1113344-GMS-Nepal        Wealth Q3            NA                0.0672269   0.0221899   0.1122639
24 months   ki1113344-GMS-Nepal        Wealth Q4            NA                0.0708661   0.0261936   0.1155387
24 months   ki1135781-COHORTS          Wealth Q1            NA                0.4036851   0.3643216   0.4430486
24 months   ki1135781-COHORTS          Wealth Q2            NA                0.3757225   0.3340490   0.4173961
24 months   ki1135781-COHORTS          Wealth Q3            NA                0.3258307   0.2957518   0.3559095
24 months   ki1135781-COHORTS          Wealth Q4            NA                0.2194849   0.1923337   0.2466361


### Parameter: E(Y)


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1135781-COHORTS          NA                   NA                0.0139942   0.0137953   0.0141930
3 months    ki1000108-CMC-V-BCS-2002   NA                   NA                0.0911602   0.0874320   0.0948884
3 months    ki1000108-IRC              NA                   NA                0.0884521   0.0851641   0.0917401
3 months    ki1135781-COHORTS          NA                   NA                0.0348662   0.0347062   0.0350263
6 months    ki1135781-COHORTS          NA                   NA                0.0632147   0.0627541   0.0636754
6 months    ki1148112-LCNI-5           NA                   NA                0.0666667   0.0648884   0.0684449
9 months    ki1000108-IRC              NA                   NA                0.0835381   0.0825235   0.0845527
9 months    ki1113344-GMS-Nepal        NA                   NA                0.0635209   0.0620012   0.0650405
9 months    ki1135781-COHORTS          NA                   NA                0.0972973   0.0965773   0.0980173
12 months   ki0047075b-MAL-ED          NA                   NA                0.1030641   0.0998661   0.1062620
12 months   ki1000108-CMC-V-BCS-2002   NA                   NA                0.2255435   0.2184295   0.2326575
12 months   ki1000108-IRC              NA                   NA                0.0837438   0.0817585   0.0857292
12 months   ki1113344-GMS-Nepal        NA                   NA                0.0913978   0.0887936   0.0940021
12 months   ki1135781-COHORTS          NA                   NA                0.1672067   0.1660181   0.1683954
12 months   ki1148112-LCNI-5           NA                   NA                0.1078431   0.1038022   0.1118840
18 months   ki0047075b-MAL-ED          NA                   NA                0.1562500   0.1496849   0.1628151
18 months   ki1000108-CMC-V-BCS-2002   NA                   NA                0.2953930   0.2906989   0.3000870
18 months   ki1000108-IRC              NA                   NA                0.0839506   0.0830436   0.0848576
18 months   ki1113344-GMS-Nepal        NA                   NA                0.1545455   0.1520853   0.1570056
18 months   ki1135781-COHORTS          NA                   NA                0.2876759   0.2857143   0.2896375
18 months   ki1148112-LCNI-5           NA                   NA                0.1444759   0.1423270   0.1466249
24 months   ki0047075b-MAL-ED          NA                   NA                0.1628571   0.1567144   0.1689998
24 months   ki1000108-CMC-V-BCS-2002   NA                   NA                0.3306452   0.3258983   0.3353920
24 months   ki1000108-IRC              NA                   NA                0.1002445   0.0970342   0.1034548
24 months   ki1113344-GMS-Nepal        NA                   NA                0.1082164   0.1044275   0.1120053
24 months   ki1135781-COHORTS          NA                   NA                0.3181509   0.3155844   0.3207174


### Parameter: RR


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1135781-COHORTS          Wealth Q2            Wealth Q1         1.6154485   0.7617817   3.4257504
Birth       ki1135781-COHORTS          Wealth Q3            Wealth Q1         0.8530702   0.3967267   1.8343325
Birth       ki1135781-COHORTS          Wealth Q4            Wealth Q1         0.4602772   0.1820525   1.1637032
3 months    ki1000108-CMC-V-BCS-2002   Wealth Q2            Wealth Q1         1.3695652   0.4505511   4.1631433
3 months    ki1000108-CMC-V-BCS-2002   Wealth Q3            Wealth Q1         1.4482759   0.4769610   4.3976403
3 months    ki1000108-CMC-V-BCS-2002   Wealth Q4            Wealth Q1         2.7096774   1.0164801   7.2233106
3 months    ki1000108-IRC              Wealth Q2            Wealth Q1         1.1262376   0.5392646   2.3521129
3 months    ki1000108-IRC              Wealth Q3            Wealth Q1         0.5097087   0.1985713   1.3083615
3 months    ki1000108-IRC              Wealth Q4            Wealth Q1         0.4464286   0.1629993   1.2226952
3 months    ki1135781-COHORTS          Wealth Q2            Wealth Q1         0.8722129   0.4898497   1.5530381
3 months    ki1135781-COHORTS          Wealth Q3            Wealth Q1         1.1046699   0.6875250   1.7749109
3 months    ki1135781-COHORTS          Wealth Q4            Wealth Q1         0.7906870   0.4701063   1.3298820
6 months    ki1135781-COHORTS          Wealth Q2            Wealth Q1         1.0670895   0.7130709   1.5968677
6 months    ki1135781-COHORTS          Wealth Q3            Wealth Q1         1.0398297   0.7278066   1.4856225
6 months    ki1135781-COHORTS          Wealth Q4            Wealth Q1         0.6175294   0.4078511   0.9350045
6 months    ki1148112-LCNI-5           Wealth Q2            Wealth Q1         0.5421053   0.1920005   1.5306113
6 months    ki1148112-LCNI-5           Wealth Q3            Wealth Q1         0.5421053   0.1920005   1.5306113
6 months    ki1148112-LCNI-5           Wealth Q4            Wealth Q1         0.6437500   0.2541903   1.6303299
9 months    ki1000108-IRC              Wealth Q2            Wealth Q1         0.9450000   0.4003100   2.2308333
9 months    ki1000108-IRC              Wealth Q3            Wealth Q1         0.7135922   0.2821177   1.8049697
9 months    ki1000108-IRC              Wealth Q4            Wealth Q1         0.8484848   0.3486735   2.0647585
9 months    ki1113344-GMS-Nepal        Wealth Q2            Wealth Q1         0.8453237   0.3773383   1.8937178
9 months    ki1113344-GMS-Nepal        Wealth Q3            Wealth Q1         0.7121212   0.3003458   1.6884423
9 months    ki1113344-GMS-Nepal        Wealth Q4            Wealth Q1         0.4226619   0.1527833   1.1692576
9 months    ki1135781-COHORTS          Wealth Q2            Wealth Q1         0.8099180   0.5913047   1.1093556
9 months    ki1135781-COHORTS          Wealth Q3            Wealth Q1         0.7997623   0.6092357   1.0498725
9 months    ki1135781-COHORTS          Wealth Q4            Wealth Q1         0.5451495   0.3997135   0.7435024
12 months   ki0047075b-MAL-ED          Wealth Q2            Wealth Q1         1.3636364   0.6042535   3.0773575
12 months   ki0047075b-MAL-ED          Wealth Q3            Wealth Q1         1.2222222   0.5317591   2.8092180
12 months   ki0047075b-MAL-ED          Wealth Q4            Wealth Q1         0.5494506   0.1912873   1.5782327
12 months   ki1000108-CMC-V-BCS-2002   Wealth Q2            Wealth Q1         2.4701754   1.2143874   5.0245636
12 months   ki1000108-CMC-V-BCS-2002   Wealth Q3            Wealth Q1         2.6074074   1.2838905   5.2952905
12 months   ki1000108-CMC-V-BCS-2002   Wealth Q4            Wealth Q1         2.6760234   1.3271450   5.3958694
12 months   ki1000108-IRC              Wealth Q2            Wealth Q1         1.1440000   0.5078075   2.5772286
12 months   ki1000108-IRC              Wealth Q3            Wealth Q1         0.6058252   0.2282929   1.6076902
12 months   ki1000108-IRC              Wealth Q4            Wealth Q1         0.7353535   0.2910123   1.8581508
12 months   ki1113344-GMS-Nepal        Wealth Q2            Wealth Q1         0.7316163   0.3818943   1.4015982
12 months   ki1113344-GMS-Nepal        Wealth Q3            Wealth Q1         0.6003899   0.2967891   1.2145592
12 months   ki1113344-GMS-Nepal        Wealth Q4            Wealth Q1         0.3632320   0.1575503   0.8374308
12 months   ki1135781-COHORTS          Wealth Q2            Wealth Q1         0.7307478   0.5763745   0.9264677
12 months   ki1135781-COHORTS          Wealth Q3            Wealth Q1         0.7587827   0.6205433   0.9278180
12 months   ki1135781-COHORTS          Wealth Q4            Wealth Q1         0.5706873   0.4571954   0.7123517
12 months   ki1148112-LCNI-5           Wealth Q2            Wealth Q1         0.9314516   0.3406378   2.5469932
12 months   ki1148112-LCNI-5           Wealth Q3            Wealth Q1         0.6091772   0.2080943   1.7833112
12 months   ki1148112-LCNI-5           Wealth Q4            Wealth Q1         1.5312500   0.6782190   3.4571821
18 months   ki0047075b-MAL-ED          Wealth Q2            Wealth Q1         0.8421053   0.4641044   1.5279779
18 months   ki0047075b-MAL-ED          Wealth Q3            Wealth Q1         0.7986536   0.4345160   1.4679496
18 months   ki0047075b-MAL-ED          Wealth Q4            Wealth Q1         0.2488558   0.0970302   0.6382469
18 months   ki1000108-CMC-V-BCS-2002   Wealth Q2            Wealth Q1         1.5483871   0.9597678   2.4980027
18 months   ki1000108-CMC-V-BCS-2002   Wealth Q3            Wealth Q1         1.3000000   0.7844624   2.1543415
18 months   ki1000108-CMC-V-BCS-2002   Wealth Q4            Wealth Q1         1.4531250   0.8958848   2.3569685
18 months   ki1000108-IRC              Wealth Q2            Wealth Q1         0.8404040   0.3454194   2.0446997
18 months   ki1000108-IRC              Wealth Q3            Wealth Q1         0.9087379   0.3847749   2.1462018
18 months   ki1000108-IRC              Wealth Q4            Wealth Q1         0.7353535   0.2910115   1.8581561
18 months   ki1113344-GMS-Nepal        Wealth Q2            Wealth Q1         0.7328571   0.4235954   1.2679070
18 months   ki1113344-GMS-Nepal        Wealth Q3            Wealth Q1         0.9893130   0.5962412   1.6415172
18 months   ki1113344-GMS-Nepal        Wealth Q4            Wealth Q1         0.6375000   0.3604638   1.1274537
18 months   ki1135781-COHORTS          Wealth Q2            Wealth Q1         0.8867942   0.7512702   1.0467657
18 months   ki1135781-COHORTS          Wealth Q3            Wealth Q1         0.8199362   0.7080846   0.9494563
18 months   ki1135781-COHORTS          Wealth Q4            Wealth Q1         0.5935545   0.5027923   0.7007009
18 months   ki1148112-LCNI-5           Wealth Q2            Wealth Q1         1.2500000   0.6219709   2.5121755
18 months   ki1148112-LCNI-5           Wealth Q3            Wealth Q1         0.8333333   0.3802453   1.8263066
18 months   ki1148112-LCNI-5           Wealth Q4            Wealth Q1         1.0119048   0.4948970   2.0690191
24 months   ki0047075b-MAL-ED          Wealth Q2            Wealth Q1         1.3095238   0.7285869   2.3536693
24 months   ki0047075b-MAL-ED          Wealth Q3            Wealth Q1         0.8953488   0.4656664   1.7215104
24 months   ki0047075b-MAL-ED          Wealth Q4            Wealth Q1         0.4184783   0.1806745   0.9692793
24 months   ki1000108-CMC-V-BCS-2002   Wealth Q2            Wealth Q1         1.4993135   0.9678242   2.3226749
24 months   ki1000108-CMC-V-BCS-2002   Wealth Q3            Wealth Q1         1.3478261   0.8550861   2.1245055
24 months   ki1000108-CMC-V-BCS-2002   Wealth Q4            Wealth Q1         1.3743707   0.8774901   2.1526110
24 months   ki1000108-IRC              Wealth Q2            Wealth Q1         0.6930693   0.3264019   1.4716369
24 months   ki1000108-IRC              Wealth Q3            Wealth Q1         0.7475728   0.3603010   1.5511063
24 months   ki1000108-IRC              Wealth Q4            Wealth Q1         0.3500000   0.1319435   0.9284277
24 months   ki1113344-GMS-Nepal        Wealth Q2            Wealth Q1         0.6872294   0.3738308   1.2633638
24 months   ki1113344-GMS-Nepal        Wealth Q3            Wealth Q1         0.3880825   0.1796226   0.8384693
24 months   ki1113344-GMS-Nepal        Wealth Q4            Wealth Q1         0.4090909   0.1959206   0.8541998
24 months   ki1135781-COHORTS          Wealth Q2            Wealth Q1         0.9307318   0.8029456   1.0788547
24 months   ki1135781-COHORTS          Wealth Q3            Wealth Q1         0.8071407   0.7057219   0.9231343
24 months   ki1135781-COHORTS          Wealth Q4            Wealth Q1         0.5437032   0.4644660   0.6364582


### Parameter: PAR


agecat      studyid                    intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1135781-COHORTS          Wealth Q1            NA                -0.0014300   -0.0100929    0.0072329
3 months    ki1000108-CMC-V-BCS-2002   Wealth Q1            NA                 0.0356047   -0.0119310    0.0831403
3 months    ki1000108-IRC              Wealth Q1            NA                -0.0258336   -0.0868522    0.0351849
3 months    ki1135781-COHORTS          Wealth Q1            NA                -0.0018684   -0.0154707    0.0117338
6 months    ki1135781-COHORTS          Wealth Q1            NA                -0.0059582   -0.0252527    0.0133363
6 months    ki1148112-LCNI-5           Wealth Q1            NA                -0.0304207   -0.0876977    0.0268562
9 months    ki1000108-IRC              Wealth Q1            NA                -0.0117000   -0.0679252    0.0445252
9 months    ki1113344-GMS-Nepal        Wealth Q1            NA                -0.0215855   -0.0677104    0.0245394
9 months    ki1135781-COHORTS          Wealth Q1            NA                -0.0290029   -0.0541143   -0.0038914
12 months   ki0047075b-MAL-ED          Wealth Q1            NA                 0.0030641   -0.0590843    0.0652124
12 months   ki1000108-CMC-V-BCS-2002   Wealth Q1            NA                 0.1232708    0.0594786    0.1870629
12 months   ki1000108-IRC              Wealth Q1            NA                -0.0124100   -0.0691727    0.0443527
12 months   ki1113344-GMS-Nepal        Wealth Q1            NA                -0.0443164   -0.1011587    0.0125258
12 months   ki1135781-COHORTS          Wealth Q1            NA                -0.0567680   -0.0892470   -0.0242890
12 months   ki1148112-LCNI-5           Wealth Q1            NA                 0.0039470   -0.0644366    0.0723306
18 months   ki0047075b-MAL-ED          Wealth Q1            NA                -0.0621408   -0.1493280    0.0250464
18 months   ki1000108-CMC-V-BCS-2002   Wealth Q1            NA                 0.0731707   -0.0129650    0.1593065
18 months   ki1000108-IRC              Wealth Q1            NA                -0.0122032   -0.0689387    0.0445322
18 months   ki1113344-GMS-Nepal        Wealth Q1            NA                -0.0306397   -0.0962715    0.0349921
18 months   ki1135781-COHORTS          Wealth Q1            NA                -0.0721214   -0.1108389   -0.0334038
18 months   ki1148112-LCNI-5           Wealth Q1            NA                 0.0032995   -0.0708606    0.0774595
24 months   ki0047075b-MAL-ED          Wealth Q1            NA                -0.0189610   -0.0998941    0.0619721
24 months   ki1000108-CMC-V-BCS-2002   Wealth Q1            NA                 0.0778979   -0.0116386    0.1674344
24 months   ki1000108-IRC              Wealth Q1            NA                -0.0426126   -0.1097030    0.0244778
24 months   ki1113344-GMS-Nepal        Wealth Q1            NA                -0.0650119   -0.1310054    0.0009816
24 months   ki1135781-COHORTS          Wealth Q1            NA                -0.0855342   -0.1249813   -0.0460871


### Parameter: PAF


agecat      studyid                    intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1135781-COHORTS          Wealth Q1            NA                -0.1021851   -0.9327980    0.3714749
3 months    ki1000108-CMC-V-BCS-2002   Wealth Q1            NA                 0.3905724   -0.4315396    0.7405576
3 months    ki1000108-IRC              Wealth Q1            NA                -0.2920635   -1.2048764    0.2428473
3 months    ki1135781-COHORTS          Wealth Q1            NA                -0.0535890   -0.5257543    0.2724583
6 months    ki1135781-COHORTS          Wealth Q1            NA                -0.0942532   -0.4463145    0.1721095
6 months    ki1148112-LCNI-5           Wealth Q1            NA                -0.4563107   -1.6278804    0.1929462
9 months    ki1000108-IRC              Wealth Q1            NA                -0.1400560   -1.0574567    0.3682843
9 months    ki1113344-GMS-Nepal        Wealth Q1            NA                -0.3398176   -1.3042024    0.2209403
9 months    ki1135781-COHORTS          Wealth Q1            NA                -0.2980849   -0.5837086   -0.0639737
12 months   ki0047075b-MAL-ED          Wealth Q1            NA                 0.0297297   -0.8062531    0.4787971
12 months   ki1000108-CMC-V-BCS-2002   Wealth Q1            NA                 0.5465498    0.1565150    0.7562291
12 months   ki1000108-IRC              Wealth Q1            NA                -0.1481900   -1.0722484    0.3638116
12 months   ki1113344-GMS-Nepal        Wealth Q1            NA                -0.4848739   -1.2584909    0.0237505
12 months   ki1135781-COHORTS          Wealth Q1            NA                -0.3395080   -0.5486619   -0.1586013
12 months   ki1148112-LCNI-5           Wealth Q1            NA                 0.0365998   -0.8604588    0.5011231
18 months   ki0047075b-MAL-ED          Wealth Q1            NA                -0.3977011   -1.0857582    0.0633773
18 months   ki1000108-CMC-V-BCS-2002   Wealth Q1            NA                 0.2477064   -0.1081948    0.4893085
18 months   ki1000108-IRC              Wealth Q1            NA                -0.1453620   -1.0663685    0.3651403
18 months   ki1113344-GMS-Nepal        Wealth Q1            NA                -0.1982571   -0.7081113    0.1594107
18 months   ki1135781-COHORTS          Wealth Q1            NA                -0.2507035   -0.3929076   -0.1230172
18 months   ki1148112-LCNI-5           Wealth Q1            NA                 0.0228374   -0.6523333    0.4221222
24 months   ki0047075b-MAL-ED          Wealth Q1            NA                -0.1164274   -0.7429544    0.2848865
24 months   ki1000108-CMC-V-BCS-2002   Wealth Q1            NA                 0.2355937   -0.0891421    0.4635071
24 months   ki1000108-IRC              Wealth Q1            NA                -0.4250871   -1.2805568    0.1094836
24 months   ki1113344-GMS-Nepal        Wealth Q1            NA                -0.6007582   -1.3453146   -0.0925728
24 months   ki1135781-COHORTS          Wealth Q1            NA                -0.2688478   -0.3992730   -0.1505794


