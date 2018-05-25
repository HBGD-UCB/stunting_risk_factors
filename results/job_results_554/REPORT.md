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

**Outcome Variable:** stunted

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
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2
* agecat: 3 months, studyid: ki1112895-Guatemala BSC
* agecat: 3 months, studyid: ki1113344-GMS-Nepal
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 6 months, studyid: ki1000108-IRC
* agecat: 6 months, studyid: ki1000109-EE
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 6 months, studyid: ki1017093-NIH-Birth
* agecat: 6 months, studyid: ki1017093b-PROVIDE
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2
* agecat: 6 months, studyid: ki1112895-Guatemala BSC
* agecat: 9 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 9 months, studyid: ki1000108-IRC
* agecat: 9 months, studyid: ki1000109-EE
* agecat: 9 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 9 months, studyid: ki1017093b-PROVIDE
* agecat: 9 months, studyid: ki1066203-TanzaniaChild2
* agecat: 9 months, studyid: ki1112895-Guatemala BSC
* agecat: 9 months, studyid: ki1148112-LCNI-5
* agecat: 12 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 12 months, studyid: ki1000108-IRC
* agecat: 12 months, studyid: ki1000109-EE
* agecat: 12 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 12 months, studyid: ki1017093b-PROVIDE
* agecat: 12 months, studyid: ki1066203-TanzaniaChild2
* agecat: 12 months, studyid: ki1112895-Guatemala BSC
* agecat: 12 months, studyid: ki1126311-ZVITAMBO
* agecat: 18 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 18 months, studyid: ki1000108-IRC
* agecat: 18 months, studyid: ki1000109-EE
* agecat: 18 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 18 months, studyid: ki1017093b-PROVIDE
* agecat: 18 months, studyid: ki1066203-TanzaniaChild2
* agecat: 18 months, studyid: ki1126311-ZVITAMBO
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 24 months, studyid: ki1000108-IRC
* agecat: 24 months, studyid: ki1017093b-PROVIDE
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2
* agecat: 24 months, studyid: ki1126311-ZVITAMBO

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness




# Results Detail

## Results Plots
![](/tmp/e5be66e3-15bf-4d83-b42b-486d7151cf86/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/e5be66e3-15bf-4d83-b42b-486d7151cf86/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/e5be66e3-15bf-4d83-b42b-486d7151cf86/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/e5be66e3-15bf-4d83-b42b-486d7151cf86/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Data Summary

agecat      studyid                    A        n     nA   nAY0   nAY1
----------  -------------------------  ---  -----  -----  -----  -----
Birth       ki0047075b-MAL-ED          Q1    1395    398    348     50
Birth       ki0047075b-MAL-ED          Q2    1395    394    350     44
Birth       ki0047075b-MAL-ED          Q3    1395    439    373     66
Birth       ki0047075b-MAL-ED          Q4    1395    164    146     18
Birth       ki1000108-CMC-V-BCS-2002   Q1      90     15     13      2
Birth       ki1000108-CMC-V-BCS-2002   Q2      90     50     37     13
Birth       ki1000108-CMC-V-BCS-2002   Q3      90     22     21      1
Birth       ki1000108-CMC-V-BCS-2002   Q4      90      3      3      0
Birth       ki1000108-IRC              Q1     388    176    155     21
Birth       ki1000108-IRC              Q2     388     99     86     13
Birth       ki1000108-IRC              Q3     388    103     93     10
Birth       ki1000108-IRC              Q4     388     10      9      1
Birth       ki1000109-EE               Q1       2      2      1      1
Birth       ki1000109-EE               Q2       2      0      0      0
Birth       ki1000109-EE               Q3       2      0      0      0
Birth       ki1000109-EE               Q4       2      0      0      0
Birth       ki1000304b-SAS-FoodSuppl   Q1       0      0      0      0
Birth       ki1000304b-SAS-FoodSuppl   Q2       0      0      0      0
Birth       ki1000304b-SAS-FoodSuppl   Q3       0      0      0      0
Birth       ki1000304b-SAS-FoodSuppl   Q4       0      0      0      0
Birth       ki1017093-NIH-Birth        Q1      28     16     15      1
Birth       ki1017093-NIH-Birth        Q2      28     10     10      0
Birth       ki1017093-NIH-Birth        Q3      28      1      1      0
Birth       ki1017093-NIH-Birth        Q4      28      1      1      0
Birth       ki1017093b-PROVIDE         Q1       0      0      0      0
Birth       ki1017093b-PROVIDE         Q2       0      0      0      0
Birth       ki1017093b-PROVIDE         Q3       0      0      0      0
Birth       ki1017093b-PROVIDE         Q4       0      0      0      0
Birth       ki1017093c-NIH-Crypto      Q1      27     12     10      2
Birth       ki1017093c-NIH-Crypto      Q2      27      4      3      1
Birth       ki1017093c-NIH-Crypto      Q3      27      7      6      1
Birth       ki1017093c-NIH-Crypto      Q4      27      4      3      1
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
Birth       ki1126311-ZVITAMBO         Q1    3446     55     48      7
Birth       ki1126311-ZVITAMBO         Q2    3446    103     92     11
Birth       ki1126311-ZVITAMBO         Q3    3446   1118   1019     99
Birth       ki1126311-ZVITAMBO         Q4    3446   2170   1927    243
Birth       ki1135781-COHORTS          Q1    8667   3901   3455    446
Birth       ki1135781-COHORTS          Q2    8667    806    757     49
Birth       ki1135781-COHORTS          Q3    8667   1459   1312    147
Birth       ki1135781-COHORTS          Q4    8667   2501   2320    181
Birth       ki1148112-LCNI-5           Q1       0      0      0      0
Birth       ki1148112-LCNI-5           Q2       0      0      0      0
Birth       ki1148112-LCNI-5           Q3       0      0      0      0
Birth       ki1148112-LCNI-5           Q4       0      0      0      0
3 months    ki0047075b-MAL-ED          Q1    1639    450    373     77
3 months    ki0047075b-MAL-ED          Q2    1639    435    369     66
3 months    ki0047075b-MAL-ED          Q3    1639    574    498     76
3 months    ki0047075b-MAL-ED          Q4    1639    180    156     24
3 months    ki1000108-CMC-V-BCS-2002   Q1     362    103     73     30
3 months    ki1000108-CMC-V-BCS-2002   Q2     362    192    141     51
3 months    ki1000108-CMC-V-BCS-2002   Q3     362     58     50      8
3 months    ki1000108-CMC-V-BCS-2002   Q4     362      9      8      1
3 months    ki1000108-IRC              Q1     407    181    140     41
3 months    ki1000108-IRC              Q2     407    103     76     27
3 months    ki1000108-IRC              Q3     407    112     90     22
3 months    ki1000108-IRC              Q4     407     11     10      1
3 months    ki1000109-EE               Q1     373    325    137    188
3 months    ki1000109-EE               Q2     373     33     15     18
3 months    ki1000109-EE               Q3     373     11      4      7
3 months    ki1000109-EE               Q4     373      4      2      2
3 months    ki1000304b-SAS-FoodSuppl   Q1      97     79     47     32
3 months    ki1000304b-SAS-FoodSuppl   Q2      97     12      7      5
3 months    ki1000304b-SAS-FoodSuppl   Q3      97      3      3      0
3 months    ki1000304b-SAS-FoodSuppl   Q4      97      3      2      1
3 months    ki1017093-NIH-Birth        Q1     570    272    199     73
3 months    ki1017093-NIH-Birth        Q2     570    163    128     35
3 months    ki1017093-NIH-Birth        Q3     570    106     88     18
3 months    ki1017093-NIH-Birth        Q4     570     29     25      4
3 months    ki1017093b-PROVIDE         Q1     168     83     72     11
3 months    ki1017093b-PROVIDE         Q2     168     61     55      6
3 months    ki1017093b-PROVIDE         Q3     168     21     19      2
3 months    ki1017093b-PROVIDE         Q4     168      3      2      1
3 months    ki1017093c-NIH-Crypto      Q1     728    232    181     51
3 months    ki1017093c-NIH-Crypto      Q2     728    133     95     38
3 months    ki1017093c-NIH-Crypto      Q3     728    196    152     44
3 months    ki1017093c-NIH-Crypto      Q4     728    167    144     23
3 months    ki1066203-TanzaniaChild2   Q1     574     18     16      2
3 months    ki1066203-TanzaniaChild2   Q2     574    451    421     30
3 months    ki1066203-TanzaniaChild2   Q3     574    101     95      6
3 months    ki1066203-TanzaniaChild2   Q4     574      4      3      1
3 months    ki1112895-Guatemala BSC    Q1       4      2      2      0
3 months    ki1112895-Guatemala BSC    Q2       4      0      0      0
3 months    ki1112895-Guatemala BSC    Q3       4      1      0      1
3 months    ki1112895-Guatemala BSC    Q4       4      1      0      1
3 months    ki1113344-GMS-Nepal        Q1     568    401    332     69
3 months    ki1113344-GMS-Nepal        Q2     568     46     44      2
3 months    ki1113344-GMS-Nepal        Q3     568     53     46      7
3 months    ki1113344-GMS-Nepal        Q4     568     68     62      6
3 months    ki1126311-ZVITAMBO         Q1    2269     34     26      8
3 months    ki1126311-ZVITAMBO         Q2    2269     69     51     18
3 months    ki1126311-ZVITAMBO         Q3    2269    749    608    141
3 months    ki1126311-ZVITAMBO         Q4    2269   1417   1193    224
3 months    ki1135781-COHORTS          Q1    8880   4081   3247    834
3 months    ki1135781-COHORTS          Q2    8880    764    663    101
3 months    ki1135781-COHORTS          Q3    8880   1456   1258    198
3 months    ki1135781-COHORTS          Q4    8880   2579   2371    208
3 months    ki1148112-LCNI-5           Q1       0      0      0      0
3 months    ki1148112-LCNI-5           Q2       0      0      0      0
3 months    ki1148112-LCNI-5           Q3       0      0      0      0
3 months    ki1148112-LCNI-5           Q4       0      0      0      0
6 months    ki0047075b-MAL-ED          Q1    1562    428    357     71
6 months    ki0047075b-MAL-ED          Q2    1562    418    353     65
6 months    ki0047075b-MAL-ED          Q3    1562    552    478     74
6 months    ki0047075b-MAL-ED          Q4    1562    164    136     28
6 months    ki1000108-CMC-V-BCS-2002   Q1     369    105     69     36
6 months    ki1000108-CMC-V-BCS-2002   Q2     369    197    137     60
6 months    ki1000108-CMC-V-BCS-2002   Q3     369     58     45     13
6 months    ki1000108-CMC-V-BCS-2002   Q4     369      9      7      2
6 months    ki1000108-IRC              Q1     407    181    134     47
6 months    ki1000108-IRC              Q2     407    103     75     28
6 months    ki1000108-IRC              Q3     407    112     90     22
6 months    ki1000108-IRC              Q4     407     11      8      3
6 months    ki1000109-EE               Q1     369    321    149    172
6 months    ki1000109-EE               Q2     369     33     20     13
6 months    ki1000109-EE               Q3     369     11      6      5
6 months    ki1000109-EE               Q4     369      4      3      1
6 months    ki1000304b-SAS-FoodSuppl   Q1      96     78     40     38
6 months    ki1000304b-SAS-FoodSuppl   Q2      96     12      4      8
6 months    ki1000304b-SAS-FoodSuppl   Q3      96      3      2      1
6 months    ki1000304b-SAS-FoodSuppl   Q4      96      3      2      1
6 months    ki1017093-NIH-Birth        Q1     537    255    173     82
6 months    ki1017093-NIH-Birth        Q2     537    155    116     39
6 months    ki1017093-NIH-Birth        Q3     537     98     79     19
6 months    ki1017093-NIH-Birth        Q4     537     29     25      4
6 months    ki1017093b-PROVIDE         Q1     153     76     59     17
6 months    ki1017093b-PROVIDE         Q2     153     55     47      8
6 months    ki1017093b-PROVIDE         Q3     153     19     17      2
6 months    ki1017093b-PROVIDE         Q4     153      3      2      1
6 months    ki1017093c-NIH-Crypto      Q1     715    229    173     56
6 months    ki1017093c-NIH-Crypto      Q2     715    128     93     35
6 months    ki1017093c-NIH-Crypto      Q3     715    191    157     34
6 months    ki1017093c-NIH-Crypto      Q4     715    167    142     25
6 months    ki1066203-TanzaniaChild2   Q1     503     15     14      1
6 months    ki1066203-TanzaniaChild2   Q2     503    397    358     39
6 months    ki1066203-TanzaniaChild2   Q3     503     87     82      5
6 months    ki1066203-TanzaniaChild2   Q4     503      4      4      0
6 months    ki1112895-Guatemala BSC    Q1      90     29     19     10
6 months    ki1112895-Guatemala BSC    Q2      90     17     11      6
6 months    ki1112895-Guatemala BSC    Q3      90     33     24      9
6 months    ki1112895-Guatemala BSC    Q4      90     11     10      1
6 months    ki1113344-GMS-Nepal        Q1     560    399    306     93
6 months    ki1113344-GMS-Nepal        Q2     560     42     37      5
6 months    ki1113344-GMS-Nepal        Q3     560     52     41     11
6 months    ki1113344-GMS-Nepal        Q4     560     67     57     10
6 months    ki1126311-ZVITAMBO         Q1    2051     31     24      7
6 months    ki1126311-ZVITAMBO         Q2    2051     67     53     14
6 months    ki1126311-ZVITAMBO         Q3    2051    669    555    114
6 months    ki1126311-ZVITAMBO         Q4    2051   1284   1084    200
6 months    ki1135781-COHORTS          Q1    8580   3909   2798   1111
6 months    ki1135781-COHORTS          Q2    8580    728    559    169
6 months    ki1135781-COHORTS          Q3    8580   1411   1150    261
6 months    ki1135781-COHORTS          Q4    8580   2532   2256    276
6 months    ki1148112-LCNI-5           Q1     404    207    120     87
6 months    ki1148112-LCNI-5           Q2     404    112     75     37
6 months    ki1148112-LCNI-5           Q3     404     63     45     18
6 months    ki1148112-LCNI-5           Q4     404     22     15      7
9 months    ki0047075b-MAL-ED          Q1    1510    413    328     85
9 months    ki0047075b-MAL-ED          Q2    1510    407    333     74
9 months    ki0047075b-MAL-ED          Q3    1510    534    431    103
9 months    ki0047075b-MAL-ED          Q4    1510    156    129     27
9 months    ki1000108-CMC-V-BCS-2002   Q1     366    105     64     41
9 months    ki1000108-CMC-V-BCS-2002   Q2     366    196    119     77
9 months    ki1000108-CMC-V-BCS-2002   Q3     366     56     41     15
9 months    ki1000108-CMC-V-BCS-2002   Q4     366      9      7      2
9 months    ki1000108-IRC              Q1     407    181    130     51
9 months    ki1000108-IRC              Q2     407    103     69     34
9 months    ki1000108-IRC              Q3     407    112     87     25
9 months    ki1000108-IRC              Q4     407     11     10      1
9 months    ki1000109-EE               Q1     363    315    119    196
9 months    ki1000109-EE               Q2     363     33     20     13
9 months    ki1000109-EE               Q3     363     11      6      5
9 months    ki1000109-EE               Q4     363      4      4      0
9 months    ki1000304b-SAS-FoodSuppl   Q1      85     67     21     46
9 months    ki1000304b-SAS-FoodSuppl   Q2      85     12      4      8
9 months    ki1000304b-SAS-FoodSuppl   Q3      85      2      1      1
9 months    ki1000304b-SAS-FoodSuppl   Q4      85      4      2      2
9 months    ki1017093-NIH-Birth        Q1     507    237    142     95
9 months    ki1017093-NIH-Birth        Q2     507    148     91     57
9 months    ki1017093-NIH-Birth        Q3     507     93     69     24
9 months    ki1017093-NIH-Birth        Q4     507     29     24      5
9 months    ki1017093b-PROVIDE         Q1     158     78     57     21
9 months    ki1017093b-PROVIDE         Q2     158     57     44     13
9 months    ki1017093b-PROVIDE         Q3     158     20     18      2
9 months    ki1017093b-PROVIDE         Q4     158      3      2      1
9 months    ki1017093c-NIH-Crypto      Q1     706    224    164     60
9 months    ki1017093c-NIH-Crypto      Q2     706    124     85     39
9 months    ki1017093c-NIH-Crypto      Q3     706    190    152     38
9 months    ki1017093c-NIH-Crypto      Q4     706    168    141     27
9 months    ki1066203-TanzaniaChild2   Q1     433     13     10      3
9 months    ki1066203-TanzaniaChild2   Q2     433    343    290     53
9 months    ki1066203-TanzaniaChild2   Q3     433     74     68      6
9 months    ki1066203-TanzaniaChild2   Q4     433      3      2      1
9 months    ki1112895-Guatemala BSC    Q1      60     22     13      9
9 months    ki1112895-Guatemala BSC    Q2      60      8      6      2
9 months    ki1112895-Guatemala BSC    Q3      60     22     14      8
9 months    ki1112895-Guatemala BSC    Q4      60      8      5      3
9 months    ki1113344-GMS-Nepal        Q1     549    392    275    117
9 months    ki1113344-GMS-Nepal        Q2     549     42     33      9
9 months    ki1113344-GMS-Nepal        Q3     549     50     35     15
9 months    ki1113344-GMS-Nepal        Q4     549     65     51     14
9 months    ki1126311-ZVITAMBO         Q1    1961     33     25      8
9 months    ki1126311-ZVITAMBO         Q2    1961     69     51     18
9 months    ki1126311-ZVITAMBO         Q3    1961    610    478    132
9 months    ki1126311-ZVITAMBO         Q4    1961   1249   1025    224
9 months    ki1135781-COHORTS          Q1    7908   3580   2166   1414
9 months    ki1135781-COHORTS          Q2    7908    730    508    222
9 months    ki1135781-COHORTS          Q3    7908   1309    977    332
9 months    ki1135781-COHORTS          Q4    7908   2289   1972    317
9 months    ki1148112-LCNI-5           Q1     317    162    104     58
9 months    ki1148112-LCNI-5           Q2     317     88     62     26
9 months    ki1148112-LCNI-5           Q3     317     51     39     12
9 months    ki1148112-LCNI-5           Q4     317     16     13      3
12 months   ki0047075b-MAL-ED          Q1    1487    410    302    108
12 months   ki0047075b-MAL-ED          Q2    1487    400    309     91
12 months   ki0047075b-MAL-ED          Q3    1487    526    391    135
12 months   ki0047075b-MAL-ED          Q4    1487    151    114     37
12 months   ki1000108-CMC-V-BCS-2002   Q1     368    106     47     59
12 months   ki1000108-CMC-V-BCS-2002   Q2     368    196     98     98
12 months   ki1000108-CMC-V-BCS-2002   Q3     368     57     33     24
12 months   ki1000108-CMC-V-BCS-2002   Q4     368      9      7      2
12 months   ki1000108-IRC              Q1     406    181    123     58
12 months   ki1000108-IRC              Q2     406    102     70     32
12 months   ki1000108-IRC              Q3     406    112     85     27
12 months   ki1000108-IRC              Q4     406     11      9      2
12 months   ki1000109-EE               Q1     354    308     82    226
12 months   ki1000109-EE               Q2     354     32     13     19
12 months   ki1000109-EE               Q3     354     10      5      5
12 months   ki1000109-EE               Q4     354      4      2      2
12 months   ki1000304b-SAS-FoodSuppl   Q1      92     74     17     57
12 months   ki1000304b-SAS-FoodSuppl   Q2      92     11      1     10
12 months   ki1000304b-SAS-FoodSuppl   Q3      92      3      1      2
12 months   ki1000304b-SAS-FoodSuppl   Q4      92      4      0      4
12 months   ki1017093-NIH-Birth        Q1     491    233    130    103
12 months   ki1017093-NIH-Birth        Q2     491    139     88     51
12 months   ki1017093-NIH-Birth        Q3     491     91     67     24
12 months   ki1017093-NIH-Birth        Q4     491     28     22      6
12 months   ki1017093b-PROVIDE         Q1     153     73     48     25
12 months   ki1017093b-PROVIDE         Q2     153     57     41     16
12 months   ki1017093b-PROVIDE         Q3     153     20     18      2
12 months   ki1017093b-PROVIDE         Q4     153      3      2      1
12 months   ki1017093c-NIH-Crypto      Q1     706    227    171     56
12 months   ki1017093c-NIH-Crypto      Q2     706    122     77     45
12 months   ki1017093c-NIH-Crypto      Q3     706    190    145     45
12 months   ki1017093c-NIH-Crypto      Q4     706    167    142     25
12 months   ki1066203-TanzaniaChild2   Q1     356     11      8      3
12 months   ki1066203-TanzaniaChild2   Q2     356    281    239     42
12 months   ki1066203-TanzaniaChild2   Q3     356     62     55      7
12 months   ki1066203-TanzaniaChild2   Q4     356      2      2      0
12 months   ki1112895-Guatemala BSC    Q1      53     18      8     10
12 months   ki1112895-Guatemala BSC    Q2      53      6      4      2
12 months   ki1112895-Guatemala BSC    Q3      53     21     13      8
12 months   ki1112895-Guatemala BSC    Q4      53      8      5      3
12 months   ki1113344-GMS-Nepal        Q1     555    394    246    148
12 months   ki1113344-GMS-Nepal        Q2     555     44     32     12
12 months   ki1113344-GMS-Nepal        Q3     555     52     34     18
12 months   ki1113344-GMS-Nepal        Q4     555     65     52     13
12 months   ki1126311-ZVITAMBO         Q1    1700     28     24      4
12 months   ki1126311-ZVITAMBO         Q2    1700     56     34     22
12 months   ki1126311-ZVITAMBO         Q3    1700    541    401    140
12 months   ki1126311-ZVITAMBO         Q4    1700   1075    836    239
12 months   ki1135781-COHORTS          Q1    7363   3306   1574   1732
12 months   ki1135781-COHORTS          Q2    7363    707    408    299
12 months   ki1135781-COHORTS          Q3    7363   1215    803    412
12 months   ki1135781-COHORTS          Q4    7363   2135   1712    423
12 months   ki1148112-LCNI-5           Q1     306    158     87     71
12 months   ki1148112-LCNI-5           Q2     306     83     51     32
12 months   ki1148112-LCNI-5           Q3     306     49     32     17
12 months   ki1148112-LCNI-5           Q4     306     16     11      5
18 months   ki0047075b-MAL-ED          Q1    1420    390    238    152
18 months   ki0047075b-MAL-ED          Q2    1420    375    239    136
18 months   ki0047075b-MAL-ED          Q3    1420    505    318    187
18 months   ki0047075b-MAL-ED          Q4    1420    150     98     52
18 months   ki1000108-CMC-V-BCS-2002   Q1     369    106     30     76
18 months   ki1000108-CMC-V-BCS-2002   Q2     369    197     59    138
18 months   ki1000108-CMC-V-BCS-2002   Q3     369     57     20     37
18 months   ki1000108-CMC-V-BCS-2002   Q4     369      9      6      3
18 months   ki1000108-IRC              Q1     405    180    112     68
18 months   ki1000108-IRC              Q2     405    102     64     38
18 months   ki1000108-IRC              Q3     405    112     75     37
18 months   ki1000108-IRC              Q4     405     11     10      1
18 months   ki1000109-EE               Q1     347    303     40    263
18 months   ki1000109-EE               Q2     347     30      8     22
18 months   ki1000109-EE               Q3     347     10      4      6
18 months   ki1000109-EE               Q4     347      4      1      3
18 months   ki1000304b-SAS-FoodSuppl   Q1      84     66      8     58
18 months   ki1000304b-SAS-FoodSuppl   Q2      84     12      1     11
18 months   ki1000304b-SAS-FoodSuppl   Q3      84      2      0      2
18 months   ki1000304b-SAS-FoodSuppl   Q4      84      4      1      3
18 months   ki1017093-NIH-Birth        Q1     463    219     78    141
18 months   ki1017093-NIH-Birth        Q2     463    132     48     84
18 months   ki1017093-NIH-Birth        Q3     463     86     47     39
18 months   ki1017093-NIH-Birth        Q4     463     26     18      8
18 months   ki1017093b-PROVIDE         Q1     141     67     36     31
18 months   ki1017093b-PROVIDE         Q2     141     53     35     18
18 months   ki1017093b-PROVIDE         Q3     141     18     15      3
18 months   ki1017093b-PROVIDE         Q4     141      3      3      0
18 months   ki1017093c-NIH-Crypto      Q1     634    195    126     69
18 months   ki1017093c-NIH-Crypto      Q2     634    109     62     47
18 months   ki1017093c-NIH-Crypto      Q3     634    175    128     47
18 months   ki1017093c-NIH-Crypto      Q4     634    155    127     28
18 months   ki1066203-TanzaniaChild2   Q1     257      9      5      4
18 months   ki1066203-TanzaniaChild2   Q2     257    203    146     57
18 months   ki1066203-TanzaniaChild2   Q3     257     44     37      7
18 months   ki1066203-TanzaniaChild2   Q4     257      1      1      0
18 months   ki1112895-Guatemala BSC    Q1       0      0      0      0
18 months   ki1112895-Guatemala BSC    Q2       0      0      0      0
18 months   ki1112895-Guatemala BSC    Q3       0      0      0      0
18 months   ki1112895-Guatemala BSC    Q4       0      0      0      0
18 months   ki1113344-GMS-Nepal        Q1     547    388    166    222
18 months   ki1113344-GMS-Nepal        Q2     547     41     24     17
18 months   ki1113344-GMS-Nepal        Q3     547     53     24     29
18 months   ki1113344-GMS-Nepal        Q4     547     65     41     24
18 months   ki1126311-ZVITAMBO         Q1     425     11      5      6
18 months   ki1126311-ZVITAMBO         Q2     425     18      3     15
18 months   ki1126311-ZVITAMBO         Q3     425    155     80     75
18 months   ki1126311-ZVITAMBO         Q4     425    241    135    106
18 months   ki1135781-COHORTS          Q1    2924   1150    293    857
18 months   ki1135781-COHORTS          Q2    2924    675    236    439
18 months   ki1135781-COHORTS          Q3    2924    505    209    296
18 months   ki1135781-COHORTS          Q4    2924    594    359    235
18 months   ki1148112-LCNI-5           Q1     353    182     85     97
18 months   ki1148112-LCNI-5           Q2     353     94     49     45
18 months   ki1148112-LCNI-5           Q3     353     57     36     21
18 months   ki1148112-LCNI-5           Q4     353     20      9     11
24 months   ki0047075b-MAL-ED          Q1    1364    380    232    148
24 months   ki0047075b-MAL-ED          Q2    1364    362    238    124
24 months   ki0047075b-MAL-ED          Q3    1364    482    310    172
24 months   ki0047075b-MAL-ED          Q4    1364    140     97     43
24 months   ki1000108-CMC-V-BCS-2002   Q1     372    105     18     87
24 months   ki1000108-CMC-V-BCS-2002   Q2     372    199     57    142
24 months   ki1000108-CMC-V-BCS-2002   Q3     372     59     25     34
24 months   ki1000108-CMC-V-BCS-2002   Q4     372      9      6      3
24 months   ki1000108-IRC              Q1     409    181    102     79
24 months   ki1000108-IRC              Q2     409    104     57     47
24 months   ki1000108-IRC              Q3     409    113     70     43
24 months   ki1000108-IRC              Q4     409     11     10      1
24 months   ki1000109-EE               Q1       0      0      0      0
24 months   ki1000109-EE               Q2       0      0      0      0
24 months   ki1000109-EE               Q3       0      0      0      0
24 months   ki1000109-EE               Q4       0      0      0      0
24 months   ki1000304b-SAS-FoodSuppl   Q1       0      0      0      0
24 months   ki1000304b-SAS-FoodSuppl   Q2       0      0      0      0
24 months   ki1000304b-SAS-FoodSuppl   Q3       0      0      0      0
24 months   ki1000304b-SAS-FoodSuppl   Q4       0      0      0      0
24 months   ki1017093-NIH-Birth        Q1     429    202     71    131
24 months   ki1017093-NIH-Birth        Q2     429    117     50     67
24 months   ki1017093-NIH-Birth        Q3     429     83     50     33
24 months   ki1017093-NIH-Birth        Q4     429     27     20      7
24 months   ki1017093b-PROVIDE         Q1     149     71     40     31
24 months   ki1017093b-PROVIDE         Q2     149     55     41     14
24 months   ki1017093b-PROVIDE         Q3     149     20     16      4
24 months   ki1017093b-PROVIDE         Q4     149      3      3      0
24 months   ki1017093c-NIH-Crypto      Q1     514    146     97     49
24 months   ki1017093c-NIH-Crypto      Q2     514     88     58     30
24 months   ki1017093c-NIH-Crypto      Q3     514    145    108     37
24 months   ki1017093c-NIH-Crypto      Q4     514    135    119     16
24 months   ki1066203-TanzaniaChild2   Q1       2      0      0      0
24 months   ki1066203-TanzaniaChild2   Q2       2      1      1      0
24 months   ki1066203-TanzaniaChild2   Q3       2      1      1      0
24 months   ki1066203-TanzaniaChild2   Q4       2      0      0      0
24 months   ki1112895-Guatemala BSC    Q1       0      0      0      0
24 months   ki1112895-Guatemala BSC    Q2       0      0      0      0
24 months   ki1112895-Guatemala BSC    Q3       0      0      0      0
24 months   ki1112895-Guatemala BSC    Q4       0      0      0      0
24 months   ki1113344-GMS-Nepal        Q1     496    350    185    165
24 months   ki1113344-GMS-Nepal        Q2     496     38     23     15
24 months   ki1113344-GMS-Nepal        Q3     496     50     23     27
24 months   ki1113344-GMS-Nepal        Q4     496     58     42     16
24 months   ki1126311-ZVITAMBO         Q1     116      2      0      2
24 months   ki1126311-ZVITAMBO         Q2     116      6      1      5
24 months   ki1126311-ZVITAMBO         Q3     116     36     15     21
24 months   ki1126311-ZVITAMBO         Q4     116     72     32     40
24 months   ki1135781-COHORTS          Q1    7159   3186    942   2244
24 months   ki1135781-COHORTS          Q2    7159    672    207    465
24 months   ki1135781-COHORTS          Q3    7159   1188    563    625
24 months   ki1135781-COHORTS          Q4    7159   2113   1488    625
24 months   ki1148112-LCNI-5           Q1     293    143     75     68
24 months   ki1148112-LCNI-5           Q2     293     83     52     31
24 months   ki1148112-LCNI-5           Q3     293     49     31     18
24 months   ki1148112-LCNI-5           Q4     293     18      7     11

## Results Table

### Parameter: TSM


agecat      studyid                 intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED       Q1                   NA                0.1256281   0.0930554   0.1582008
Birth       ki0047075b-MAL-ED       Q2                   NA                0.1116751   0.0805637   0.1427865
Birth       ki0047075b-MAL-ED       Q3                   NA                0.1503417   0.1168965   0.1837869
Birth       ki0047075b-MAL-ED       Q4                   NA                0.1097561   0.0618985   0.1576137
Birth       ki1126311-ZVITAMBO      Q1                   NA                0.1272727   0.0391807   0.2153648
Birth       ki1126311-ZVITAMBO      Q2                   NA                0.1067961   0.0471413   0.1664509
Birth       ki1126311-ZVITAMBO      Q3                   NA                0.0885510   0.0718957   0.1052063
Birth       ki1126311-ZVITAMBO      Q4                   NA                0.1119816   0.0987117   0.1252514
Birth       ki1135781-COHORTS       Q1                   NA                0.1143297   0.1043434   0.1243159
Birth       ki1135781-COHORTS       Q2                   NA                0.0607940   0.0442966   0.0772915
Birth       ki1135781-COHORTS       Q3                   NA                0.1007539   0.0853079   0.1161999
Birth       ki1135781-COHORTS       Q4                   NA                0.0723711   0.0622159   0.0825262
3 months    ki0047075b-MAL-ED       Q1                   NA                0.1711111   0.1363045   0.2059177
3 months    ki0047075b-MAL-ED       Q2                   NA                0.1517241   0.1180007   0.1854476
3 months    ki0047075b-MAL-ED       Q3                   NA                0.1324042   0.1046688   0.1601396
3 months    ki0047075b-MAL-ED       Q4                   NA                0.1333333   0.0836581   0.1830086
3 months    ki1017093c-NIH-Crypto   Q1                   NA                0.2198276   0.1665016   0.2731536
3 months    ki1017093c-NIH-Crypto   Q2                   NA                0.2857143   0.2088857   0.3625428
3 months    ki1017093c-NIH-Crypto   Q3                   NA                0.2244898   0.1660363   0.2829433
3 months    ki1017093c-NIH-Crypto   Q4                   NA                0.1377246   0.0854227   0.1900264
3 months    ki1126311-ZVITAMBO      Q1                   NA                0.2352941   0.0926818   0.3779065
3 months    ki1126311-ZVITAMBO      Q2                   NA                0.2608696   0.1572381   0.3645010
3 months    ki1126311-ZVITAMBO      Q3                   NA                0.1882510   0.1602494   0.2162526
3 months    ki1126311-ZVITAMBO      Q4                   NA                0.1580805   0.1390813   0.1770796
3 months    ki1135781-COHORTS       Q1                   NA                0.2043617   0.1919895   0.2167339
3 months    ki1135781-COHORTS       Q2                   NA                0.1321990   0.1081802   0.1562177
3 months    ki1135781-COHORTS       Q3                   NA                0.1359890   0.1183813   0.1535967
3 months    ki1135781-COHORTS       Q4                   NA                0.0806514   0.0701417   0.0911612
6 months    ki0047075b-MAL-ED       Q1                   NA                0.1658879   0.1306358   0.2011399
6 months    ki0047075b-MAL-ED       Q2                   NA                0.1555024   0.1207514   0.1902533
6 months    ki0047075b-MAL-ED       Q3                   NA                0.1340580   0.1056259   0.1624900
6 months    ki0047075b-MAL-ED       Q4                   NA                0.1707317   0.1131254   0.2283380
6 months    ki1017093c-NIH-Crypto   Q1                   NA                0.2445415   0.1888337   0.3002493
6 months    ki1017093c-NIH-Crypto   Q2                   NA                0.2734375   0.1961672   0.3507078
6 months    ki1017093c-NIH-Crypto   Q3                   NA                0.1780105   0.1237240   0.2322969
6 months    ki1017093c-NIH-Crypto   Q4                   NA                0.1497006   0.0955515   0.2038497
6 months    ki1113344-GMS-Nepal     Q1                   NA                0.2330827   0.1915606   0.2746048
6 months    ki1113344-GMS-Nepal     Q2                   NA                0.1190476   0.0210201   0.2170752
6 months    ki1113344-GMS-Nepal     Q3                   NA                0.2115385   0.1004371   0.3226398
6 months    ki1113344-GMS-Nepal     Q4                   NA                0.1492537   0.0638530   0.2346544
6 months    ki1126311-ZVITAMBO      Q1                   NA                0.2258065   0.0785867   0.3730262
6 months    ki1126311-ZVITAMBO      Q2                   NA                0.2089552   0.1115811   0.3063294
6 months    ki1126311-ZVITAMBO      Q3                   NA                0.1704036   0.1419056   0.1989015
6 months    ki1126311-ZVITAMBO      Q4                   NA                0.1557632   0.1359235   0.1756030
6 months    ki1135781-COHORTS       Q1                   NA                0.2842159   0.2700757   0.2983561
6 months    ki1135781-COHORTS       Q2                   NA                0.2321429   0.2014720   0.2628137
6 months    ki1135781-COHORTS       Q3                   NA                0.1849752   0.1647146   0.2052358
6 months    ki1135781-COHORTS       Q4                   NA                0.1090047   0.0968652   0.1211443
6 months    ki1148112-LCNI-5        Q1                   NA                0.4202899   0.3529641   0.4876156
6 months    ki1148112-LCNI-5        Q2                   NA                0.3303571   0.2431422   0.4175720
6 months    ki1148112-LCNI-5        Q3                   NA                0.2857143   0.1740233   0.3974052
6 months    ki1148112-LCNI-5        Q4                   NA                0.3181818   0.1233110   0.5130527
9 months    ki0047075b-MAL-ED       Q1                   NA                0.2058111   0.1668068   0.2448155
9 months    ki0047075b-MAL-ED       Q2                   NA                0.1818182   0.1443348   0.2193015
9 months    ki0047075b-MAL-ED       Q3                   NA                0.1928839   0.1594076   0.2263602
9 months    ki0047075b-MAL-ED       Q4                   NA                0.1730769   0.1136912   0.2324626
9 months    ki1017093-NIH-Birth     Q1                   NA                0.4008439   0.3383899   0.4632979
9 months    ki1017093-NIH-Birth     Q2                   NA                0.3851351   0.3066581   0.4636121
9 months    ki1017093-NIH-Birth     Q3                   NA                0.2580645   0.1690455   0.3470835
9 months    ki1017093-NIH-Birth     Q4                   NA                0.1724138   0.0347973   0.3100303
9 months    ki1017093c-NIH-Crypto   Q1                   NA                0.2678571   0.2098233   0.3258910
9 months    ki1017093c-NIH-Crypto   Q2                   NA                0.3145161   0.2327327   0.3962995
9 months    ki1017093c-NIH-Crypto   Q3                   NA                0.2000000   0.1430834   0.2569166
9 months    ki1017093c-NIH-Crypto   Q4                   NA                0.1607143   0.1051388   0.2162898
9 months    ki1113344-GMS-Nepal     Q1                   NA                0.2984694   0.2531302   0.3438086
9 months    ki1113344-GMS-Nepal     Q2                   NA                0.2142857   0.0900781   0.3384933
9 months    ki1113344-GMS-Nepal     Q3                   NA                0.3000000   0.1728640   0.4271360
9 months    ki1113344-GMS-Nepal     Q4                   NA                0.2153846   0.1153563   0.3154130
9 months    ki1126311-ZVITAMBO      Q1                   NA                0.2424242   0.0961719   0.3886766
9 months    ki1126311-ZVITAMBO      Q2                   NA                0.2608696   0.1572345   0.3645046
9 months    ki1126311-ZVITAMBO      Q3                   NA                0.2163934   0.1837072   0.2490797
9 months    ki1126311-ZVITAMBO      Q4                   NA                0.1793435   0.1580620   0.2006249
9 months    ki1135781-COHORTS       Q1                   NA                0.3949721   0.3789579   0.4109863
9 months    ki1135781-COHORTS       Q2                   NA                0.3041096   0.2707363   0.3374829
9 months    ki1135781-COHORTS       Q3                   NA                0.2536287   0.2300575   0.2772000
9 months    ki1135781-COHORTS       Q4                   NA                0.1384884   0.1243373   0.1526395
12 months   ki0047075b-MAL-ED       Q1                   NA                0.2634146   0.2207632   0.3060661
12 months   ki0047075b-MAL-ED       Q2                   NA                0.2275000   0.1864036   0.2685964
12 months   ki0047075b-MAL-ED       Q3                   NA                0.2566540   0.2193143   0.2939937
12 months   ki0047075b-MAL-ED       Q4                   NA                0.2450331   0.1764082   0.3136581
12 months   ki1017093-NIH-Birth     Q1                   NA                0.4420601   0.3782268   0.5058934
12 months   ki1017093-NIH-Birth     Q2                   NA                0.3669065   0.2867027   0.4471103
12 months   ki1017093-NIH-Birth     Q3                   NA                0.2637363   0.1731063   0.3543662
12 months   ki1017093-NIH-Birth     Q4                   NA                0.2142857   0.0621467   0.3664248
12 months   ki1017093c-NIH-Crypto   Q1                   NA                0.2466960   0.1905771   0.3028149
12 months   ki1017093c-NIH-Crypto   Q2                   NA                0.3688525   0.2831748   0.4545302
12 months   ki1017093c-NIH-Crypto   Q3                   NA                0.2368421   0.1763476   0.2973366
12 months   ki1017093c-NIH-Crypto   Q4                   NA                0.1497006   0.0955510   0.2038502
12 months   ki1113344-GMS-Nepal     Q1                   NA                0.3756345   0.3277722   0.4234968
12 months   ki1113344-GMS-Nepal     Q2                   NA                0.2727273   0.1410150   0.4044396
12 months   ki1113344-GMS-Nepal     Q3                   NA                0.3461538   0.2167312   0.4755765
12 months   ki1113344-GMS-Nepal     Q4                   NA                0.2000000   0.1026708   0.2973292
12 months   ki1135781-COHORTS       Q1                   NA                0.5238959   0.5068705   0.5409214
12 months   ki1135781-COHORTS       Q2                   NA                0.4229137   0.3864959   0.4593316
12 months   ki1135781-COHORTS       Q3                   NA                0.3390947   0.3124739   0.3657154
12 months   ki1135781-COHORTS       Q4                   NA                0.1981265   0.1812181   0.2150349
12 months   ki1148112-LCNI-5        Q1                   NA                0.4493671   0.3716776   0.5270565
12 months   ki1148112-LCNI-5        Q2                   NA                0.3855422   0.2806600   0.4904244
12 months   ki1148112-LCNI-5        Q3                   NA                0.3469388   0.2134440   0.4804335
12 months   ki1148112-LCNI-5        Q4                   NA                0.3125000   0.0850111   0.5399889
18 months   ki0047075b-MAL-ED       Q1                   NA                0.3897436   0.3413247   0.4381624
18 months   ki0047075b-MAL-ED       Q2                   NA                0.3626667   0.3139898   0.4113435
18 months   ki0047075b-MAL-ED       Q3                   NA                0.3702970   0.3281664   0.4124277
18 months   ki0047075b-MAL-ED       Q4                   NA                0.3466667   0.2704800   0.4228533
18 months   ki1017093-NIH-Birth     Q1                   NA                0.6438356   0.5803452   0.7073260
18 months   ki1017093-NIH-Birth     Q2                   NA                0.6363636   0.5542119   0.7185154
18 months   ki1017093-NIH-Birth     Q3                   NA                0.4534884   0.3481586   0.5588181
18 months   ki1017093-NIH-Birth     Q4                   NA                0.3076923   0.1300940   0.4852906
18 months   ki1017093c-NIH-Crypto   Q1                   NA                0.3538462   0.2866803   0.4210120
18 months   ki1017093c-NIH-Crypto   Q2                   NA                0.4311927   0.3381470   0.5242383
18 months   ki1017093c-NIH-Crypto   Q3                   NA                0.2685714   0.2028529   0.3342899
18 months   ki1017093c-NIH-Crypto   Q4                   NA                0.1806452   0.1200310   0.2412593
18 months   ki1113344-GMS-Nepal     Q1                   NA                0.5721649   0.5228898   0.6214401
18 months   ki1113344-GMS-Nepal     Q2                   NA                0.4146341   0.2636958   0.5655725
18 months   ki1113344-GMS-Nepal     Q3                   NA                0.5471698   0.4130366   0.6813030
18 months   ki1113344-GMS-Nepal     Q4                   NA                0.3692308   0.2518024   0.4866591
18 months   ki1135781-COHORTS       Q1                   NA                0.7452174   0.7200290   0.7704057
18 months   ki1135781-COHORTS       Q2                   NA                0.6503704   0.6143909   0.6863499
18 months   ki1135781-COHORTS       Q3                   NA                0.5861386   0.5431747   0.6291026
18 months   ki1135781-COHORTS       Q4                   NA                0.3956229   0.3562929   0.4349529
18 months   ki1148112-LCNI-5        Q1                   NA                0.5329670   0.4603811   0.6055529
18 months   ki1148112-LCNI-5        Q2                   NA                0.4787234   0.3775942   0.5798526
18 months   ki1148112-LCNI-5        Q3                   NA                0.3684211   0.2430167   0.4938254
18 months   ki1148112-LCNI-5        Q4                   NA                0.5500000   0.3316583   0.7683417
24 months   ki0047075b-MAL-ED       Q1                   NA                0.3894737   0.3404273   0.4385200
24 months   ki0047075b-MAL-ED       Q2                   NA                0.3425414   0.2936375   0.3914454
24 months   ki0047075b-MAL-ED       Q3                   NA                0.3568465   0.3140624   0.3996305
24 months   ki0047075b-MAL-ED       Q4                   NA                0.3071429   0.2307003   0.3835854
24 months   ki1017093-NIH-Birth     Q1                   NA                0.6485149   0.5825986   0.7144311
24 months   ki1017093-NIH-Birth     Q2                   NA                0.5726496   0.4829070   0.6623921
24 months   ki1017093-NIH-Birth     Q3                   NA                0.3975904   0.2921809   0.5029998
24 months   ki1017093-NIH-Birth     Q4                   NA                0.2592593   0.0937687   0.4247498
24 months   ki1017093c-NIH-Crypto   Q1                   NA                0.3356164   0.2589464   0.4122865
24 months   ki1017093c-NIH-Crypto   Q2                   NA                0.3409091   0.2417753   0.4400429
24 months   ki1017093c-NIH-Crypto   Q3                   NA                0.2551724   0.1841441   0.3262008
24 months   ki1017093c-NIH-Crypto   Q4                   NA                0.1185185   0.0639423   0.1730948
24 months   ki1113344-GMS-Nepal     Q1                   NA                0.4714286   0.4190791   0.5237780
24 months   ki1113344-GMS-Nepal     Q2                   NA                0.3947368   0.2391688   0.5503049
24 months   ki1113344-GMS-Nepal     Q3                   NA                0.5400000   0.4017143   0.6782857
24 months   ki1113344-GMS-Nepal     Q4                   NA                0.2758621   0.1607213   0.3910028
24 months   ki1135781-COHORTS       Q1                   NA                0.7043315   0.6884845   0.7201784
24 months   ki1135781-COHORTS       Q2                   NA                0.6919643   0.6570554   0.7268732
24 months   ki1135781-COHORTS       Q3                   NA                0.5260943   0.4976989   0.5544897
24 months   ki1135781-COHORTS       Q4                   NA                0.2957880   0.2763267   0.3152492
24 months   ki1148112-LCNI-5        Q1                   NA                0.4755245   0.3935325   0.5575165
24 months   ki1148112-LCNI-5        Q2                   NA                0.3734940   0.2692488   0.4777391
24 months   ki1148112-LCNI-5        Q3                   NA                0.3673469   0.2321355   0.5025584
24 months   ki1148112-LCNI-5        Q4                   NA                0.6111111   0.3855174   0.8367049


### Parameter: E(Y)


agecat      studyid                 intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED       NA                   NA                0.1275986   0.1267313   0.1284658
Birth       ki1126311-ZVITAMBO      NA                   NA                0.1044689   0.1040938   0.1048441
Birth       ki1135781-COHORTS       NA                   NA                0.0949579   0.0945211   0.0953946
3 months    ki0047075b-MAL-ED       NA                   NA                0.1482611   0.1474817   0.1490406
3 months    ki1017093c-NIH-Crypto   NA                   NA                0.2142857   0.2107886   0.2177829
3 months    ki1126311-ZVITAMBO      NA                   NA                0.1723226   0.1713948   0.1732505
3 months    ki1135781-COHORTS       NA                   NA                0.1510135   0.1499103   0.1521168
6 months    ki0047075b-MAL-ED       NA                   NA                0.1523688   0.1516557   0.1530818
6 months    ki1017093c-NIH-Crypto   NA                   NA                0.2097902   0.2063302   0.2132502
6 months    ki1113344-GMS-Nepal     NA                   NA                0.2125000   0.2093592   0.2156408
6 months    ki1126311-ZVITAMBO      NA                   NA                0.1633350   0.1627555   0.1639144
6 months    ki1135781-COHORTS       NA                   NA                0.2117716   0.2101794   0.2133637
6 months    ki1148112-LCNI-5        NA                   NA                0.3688119   0.3634785   0.3741453
9 months    ki0047075b-MAL-ED       NA                   NA                0.1913907   0.1908449   0.1919365
9 months    ki1017093-NIH-Birth     NA                   NA                0.3570020   0.3509190   0.3630850
9 months    ki1017093c-NIH-Crypto   NA                   NA                0.2322946   0.2281923   0.2363970
9 months    ki1113344-GMS-Nepal     NA                   NA                0.2823315   0.2795556   0.2851074
9 months    ki1126311-ZVITAMBO      NA                   NA                0.1947986   0.1938196   0.1957775
9 months    ki1135781-COHORTS       NA                   NA                0.2889479   0.2865466   0.2913492
12 months   ki0047075b-MAL-ED       NA                   NA                0.2494956   0.2487699   0.2502213
12 months   ki1017093-NIH-Birth     NA                   NA                0.3747454   0.3679329   0.3815579
12 months   ki1017093c-NIH-Crypto   NA                   NA                0.2422096   0.2370901   0.2473291
12 months   ki1113344-GMS-Nepal     NA                   NA                0.3441441   0.3391882   0.3491001
12 months   ki1135781-COHORTS       NA                   NA                0.3892435   0.3860737   0.3924133
12 months   ki1148112-LCNI-5        NA                   NA                0.4084967   0.4033611   0.4136323
18 months   ki0047075b-MAL-ED       NA                   NA                0.3711268   0.3704335   0.3718200
18 months   ki1017093-NIH-Birth     NA                   NA                0.5874730   0.5783936   0.5965524
18 months   ki1017093c-NIH-Crypto   NA                   NA                0.3012618   0.2944684   0.3080552
18 months   ki1113344-GMS-Nepal     NA                   NA                0.5338208   0.5276891   0.5399526
18 months   ki1135781-COHORTS       NA                   NA                0.6248290   0.6201327   0.6295253
18 months   ki1148112-LCNI-5        NA                   NA                0.4929178   0.4866778   0.4991579
24 months   ki0047075b-MAL-ED       NA                   NA                0.3570381   0.3557330   0.3583433
24 months   ki1017093-NIH-Birth     NA                   NA                0.5547786   0.5433701   0.5661870
24 months   ki1017093c-NIH-Crypto   NA                   NA                0.2568093   0.2490701   0.2645486
24 months   ki1113344-GMS-Nepal     NA                   NA                0.4495968   0.4434174   0.4557761
24 months   ki1135781-COHORTS       NA                   NA                0.5530102   0.5488888   0.5571316
24 months   ki1148112-LCNI-5        NA                   NA                0.4368601   0.4291314   0.4445888


### Parameter: RR


agecat      studyid                 intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED       Q2                   Q1                0.8889340   0.6075584   1.3006217
Birth       ki0047075b-MAL-ED       Q3                   Q1                1.1967198   0.8503982   1.6840796
Birth       ki0047075b-MAL-ED       Q4                   Q1                0.8736585   0.5260469   1.4509720
Birth       ki1126311-ZVITAMBO      Q2                   Q1                0.8391123   0.3447815   2.0421908
Birth       ki1126311-ZVITAMBO      Q3                   Q1                0.6957577   0.3395934   1.4254658
Birth       ki1126311-ZVITAMBO      Q4                   Q1                0.8798552   0.4359532   1.7757530
Birth       ki1135781-COHORTS       Q2                   Q1                0.5317434   0.3998479   0.7071466
Birth       ki1135781-COHORTS       Q3                   Q1                0.8812581   0.7387131   1.0513092
Birth       ki1135781-COHORTS       Q4                   Q1                0.6330033   0.5365666   0.7467725
3 months    ki0047075b-MAL-ED       Q2                   Q1                0.8866995   0.6560307   1.1984745
3 months    ki0047075b-MAL-ED       Q3                   Q1                0.7737907   0.5778489   1.0361741
3 months    ki0047075b-MAL-ED       Q4                   Q1                0.7792208   0.5096969   1.1912669
3 months    ki1017093c-NIH-Crypto   Q2                   Q1                1.2997199   0.9048362   1.8669366
3 months    ki1017093c-NIH-Crypto   Q3                   Q1                1.0212085   0.7154198   1.4576992
3 months    ki1017093c-NIH-Crypto   Q4                   Q1                0.6265117   0.3992328   0.9831780
3 months    ki1126311-ZVITAMBO      Q2                   Q1                1.1086957   0.5371368   2.2884413
3 months    ki1126311-ZVITAMBO      Q3                   Q1                0.8000668   0.4286357   1.4933586
3 months    ki1126311-ZVITAMBO      Q4                   Q1                0.6718419   0.3621721   1.2462904
3 months    ki1135781-COHORTS       Q2                   Q1                0.6468872   0.5341436   0.7834281
3 months    ki1135781-COHORTS       Q3                   Q1                0.6654330   0.5768051   0.7676789
3 months    ki1135781-COHORTS       Q4                   Q1                0.3946504   0.3418297   0.4556331
6 months    ki0047075b-MAL-ED       Q2                   Q1                0.9373947   0.6886422   1.2760020
6 months    ki0047075b-MAL-ED       Q3                   Q1                0.8081241   0.5985336   1.0911076
6 months    ki0047075b-MAL-ED       Q4                   Q1                1.0291996   0.6907549   1.5334699
6 months    ki1017093c-NIH-Crypto   Q2                   Q1                1.1181641   0.7777986   1.6074738
6 months    ki1017093c-NIH-Crypto   Q3                   Q1                0.7279357   0.4974820   1.0651448
6 months    ki1017093c-NIH-Crypto   Q4                   Q1                0.6121685   0.3992285   0.9386862
6 months    ki1113344-GMS-Nepal     Q2                   Q1                0.5107527   0.2199509   1.1860295
6 months    ki1113344-GMS-Nepal     Q3                   Q1                0.9075682   0.5212202   1.5802919
6 months    ki1113344-GMS-Nepal     Q4                   Q1                0.6403467   0.3516846   1.1659418
6 months    ki1126311-ZVITAMBO      Q2                   Q1                0.9253731   0.4152184   2.0623252
6 months    ki1126311-ZVITAMBO      Q3                   Q1                0.7546445   0.3849702   1.4793046
6 months    ki1126311-ZVITAMBO      Q4                   Q1                0.6898086   0.3549993   1.3403857
6 months    ki1135781-COHORTS       Q2                   Q1                0.8167835   0.7092419   0.9406315
6 months    ki1135781-COHORTS       Q3                   Q1                0.6508263   0.5770574   0.7340256
6 months    ki1135781-COHORTS       Q4                   Q1                0.3835279   0.3394877   0.4332813
6 months    ki1148112-LCNI-5        Q2                   Q1                0.7860222   0.5771978   1.0703971
6 months    ki1148112-LCNI-5        Q3                   Q1                0.6798030   0.4455622   1.0371885
6 months    ki1148112-LCNI-5        Q4                   Q1                0.7570533   0.4019710   1.4257986
9 months    ki0047075b-MAL-ED       Q2                   Q1                0.8834225   0.6676557   1.1689188
9 months    ki0047075b-MAL-ED       Q3                   Q1                0.9371888   0.7248076   1.2118015
9 months    ki0047075b-MAL-ED       Q4                   Q1                0.8409502   0.5682469   1.2445247
9 months    ki1017093-NIH-Birth     Q2                   Q1                0.9608108   0.7434272   1.2417591
9 months    ki1017093-NIH-Birth     Q3                   Q1                0.6438031   0.4409313   0.9400157
9 months    ki1017093-NIH-Birth     Q4                   Q1                0.4301270   0.1907265   0.9700241
9 months    ki1017093c-NIH-Crypto   Q2                   Q1                1.1741935   0.8370424   1.6471454
9 months    ki1017093c-NIH-Crypto   Q3                   Q1                0.7466667   0.5221460   1.0677303
9 months    ki1017093c-NIH-Crypto   Q4                   Q1                0.6000000   0.3989593   0.9023476
9 months    ki1113344-GMS-Nepal     Q2                   Q1                0.7179487   0.3943299   1.3071550
9 months    ki1113344-GMS-Nepal     Q3                   Q1                1.0051282   0.6407766   1.5766536
9 months    ki1113344-GMS-Nepal     Q4                   Q1                0.7216305   0.4426962   1.1763159
9 months    ki1126311-ZVITAMBO      Q2                   Q1                1.0760870   0.5225611   2.2159381
9 months    ki1126311-ZVITAMBO      Q3                   Q1                0.8926230   0.4792637   1.6624998
9 months    ki1126311-ZVITAMBO      Q4                   Q1                0.7397918   0.4000216   1.3681562
9 months    ki1135781-COHORTS       Q2                   Q1                0.7699521   0.6849438   0.8655109
9 months    ki1135781-COHORTS       Q3                   Q1                0.6421434   0.5802253   0.7106692
9 months    ki1135781-COHORTS       Q4                   Q1                0.3506284   0.3141261   0.3913724
12 months   ki0047075b-MAL-ED       Q2                   Q1                0.8636574   0.6776204   1.1007699
12 months   ki0047075b-MAL-ED       Q3                   Q1                0.9743346   0.7837397   1.2112795
12 months   ki0047075b-MAL-ED       Q4                   Q1                0.9302183   0.6731162   1.2855226
12 months   ki1017093-NIH-Birth     Q2                   Q1                0.8299923   0.6386994   1.0785783
12 months   ki1017093-NIH-Birth     Q3                   Q1                0.5966073   0.4109676   0.8661030
12 months   ki1017093-NIH-Birth     Q4                   Q1                0.4847434   0.2348864   1.0003823
12 months   ki1017093c-NIH-Crypto   Q2                   Q1                1.4951698   1.0801717   2.0696086
12 months   ki1017093c-NIH-Crypto   Q3                   Q1                0.9600564   0.6819504   1.3515767
12 months   ki1017093c-NIH-Crypto   Q4                   Q1                0.6068221   0.3958088   0.9303305
12 months   ki1113344-GMS-Nepal     Q2                   Q1                0.7260442   0.4406012   1.1964113
12 months   ki1113344-GMS-Nepal     Q3                   Q1                0.9215177   0.6208063   1.3678901
12 months   ki1113344-GMS-Nepal     Q4                   Q1                0.5324324   0.3219531   0.8805142
12 months   ki1135781-COHORTS       Q2                   Q1                0.8072476   0.7362653   0.8850731
12 months   ki1135781-COHORTS       Q3                   Q1                0.6472557   0.5945327   0.7046542
12 months   ki1135781-COHORTS       Q4                   Q1                0.3781790   0.3451738   0.4143402
12 months   ki1148112-LCNI-5        Q2                   Q1                0.8579671   0.6215641   1.1842825
12 months   ki1148112-LCNI-5        Q3                   Q1                0.7720609   0.5063503   1.1772050
12 months   ki1148112-LCNI-5        Q4                   Q1                0.6954225   0.3290820   1.4695804
18 months   ki0047075b-MAL-ED       Q2                   Q1                0.9305263   0.7749984   1.1172659
18 months   ki0047075b-MAL-ED       Q3                   Q1                0.9501042   0.8028054   1.1244295
18 months   ki0047075b-MAL-ED       Q4                   Q1                0.8894737   0.6910260   1.1449112
18 months   ki1017093-NIH-Birth     Q2                   Q1                0.9883946   0.8401929   1.1627376
18 months   ki1017093-NIH-Birth     Q3                   Q1                0.7043543   0.5472735   0.9065210
18 months   ki1017093-NIH-Birth     Q4                   Q1                0.4779051   0.2660952   0.8583140
18 months   ki1017093c-NIH-Crypto   Q2                   Q1                1.2185880   0.9142060   1.6243129
18 months   ki1017093c-NIH-Crypto   Q3                   Q1                0.7590062   0.5568644   1.0345255
18 months   ki1017093c-NIH-Crypto   Q4                   Q1                0.5105189   0.3472052   0.7506500
18 months   ki1113344-GMS-Nepal     Q2                   Q1                0.7246759   0.4985223   1.0534237
18 months   ki1113344-GMS-Nepal     Q3                   Q1                0.9563148   0.7374952   1.2400596
18 months   ki1113344-GMS-Nepal     Q4                   Q1                0.6453222   0.4641745   0.8971642
18 months   ki1135781-COHORTS       Q2                   Q1                0.8727257   0.8179420   0.9311787
18 months   ki1135781-COHORTS       Q3                   Q1                0.7865337   0.7255413   0.8526535
18 months   ki1135781-COHORTS       Q4                   Q1                0.5308825   0.4779658   0.5896578
18 months   ki1148112-LCNI-5        Q2                   Q1                0.8982233   0.6985974   1.1548928
18 months   ki1148112-LCNI-5        Q3                   Q1                0.6912642   0.4790973   0.9973888
18 months   ki1148112-LCNI-5        Q4                   Q1                1.0319588   0.6782509   1.5701253
24 months   ki0047075b-MAL-ED       Q2                   Q1                0.8794983   0.7270396   1.0639273
24 months   ki0047075b-MAL-ED       Q3                   Q1                0.9162274   0.7699980   1.0902271
24 months   ki0047075b-MAL-ED       Q4                   Q1                0.7886100   0.5966577   1.0423158
24 months   ki1017093-NIH-Birth     Q2                   Q1                0.8830169   0.7325666   1.0643658
24 months   ki1017093-NIH-Birth     Q3                   Q1                0.6130783   0.4615340   0.8143819
24 months   ki1017093-NIH-Birth     Q4                   Q1                0.3997738   0.2094608   0.7630026
24 months   ki1017093c-NIH-Crypto   Q2                   Q1                1.0157699   0.7017718   1.4702622
24 months   ki1017093c-NIH-Crypto   Q3                   Q1                0.7603096   0.5303996   1.0898777
24 months   ki1017093c-NIH-Crypto   Q4                   Q1                0.3531368   0.2112024   0.5904555
24 months   ki1113344-GMS-Nepal     Q2                   Q1                0.8373206   0.5559931   1.2609972
24 months   ki1113344-GMS-Nepal     Q3                   Q1                1.1454545   0.8664747   1.5142578
24 months   ki1113344-GMS-Nepal     Q4                   Q1                0.5851620   0.3799291   0.9012591
24 months   ki1135781-COHORTS       Q2                   Q1                0.9824413   0.9296441   1.0382370
24 months   ki1135781-COHORTS       Q3                   Q1                0.7469413   0.7045159   0.7919216
24 months   ki1135781-COHORTS       Q4                   Q1                0.4199557   0.3917461   0.4501966
24 months   ki1148112-LCNI-5        Q2                   Q1                0.7854359   0.5657580   1.0904122
24 months   ki1148112-LCNI-5        Q3                   Q1                0.7725090   0.5144938   1.1599170
24 months   ki1148112-LCNI-5        Q4                   Q1                1.2851307   0.8550666   1.9314999


### Parameter: PAR


agecat      studyid                 intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       Q1                   NA                 0.0019704   -0.0306138    0.0345547
Birth       ki1126311-ZVITAMBO      Q1                   NA                -0.0228038   -0.1108966    0.0652891
Birth       ki1135781-COHORTS       Q1                   NA                -0.0193718   -0.0293675   -0.0093760
3 months    ki0047075b-MAL-ED       Q1                   NA                -0.0228500   -0.0576653    0.0119654
3 months    ki1017093c-NIH-Crypto   Q1                   NA                -0.0055419   -0.0589824    0.0478987
3 months    ki1126311-ZVITAMBO      Q1                   NA                -0.0629715   -0.2055869    0.0796438
3 months    ki1135781-COHORTS       Q1                   NA                -0.0533482   -0.0657695   -0.0409269
6 months    ki0047075b-MAL-ED       Q1                   NA                -0.0135191   -0.0487784    0.0217402
6 months    ki1017093c-NIH-Crypto   Q1                   NA                -0.0347513   -0.0905664    0.0210639
6 months    ki1113344-GMS-Nepal     Q1                   NA                -0.0205827   -0.0622234    0.0210580
6 months    ki1126311-ZVITAMBO      Q1                   NA                -0.0624715   -0.2096924    0.0847494
6 months    ki1135781-COHORTS       Q1                   NA                -0.0724444   -0.0866739   -0.0582148
6 months    ki1148112-LCNI-5        Q1                   NA                -0.0514780   -0.1190146    0.0160587
9 months    ki0047075b-MAL-ED       Q1                   NA                -0.0144204   -0.0534286    0.0245878
9 months    ki1017093-NIH-Birth     Q1                   NA                -0.0438419   -0.1065915    0.0189076
9 months    ki1017093c-NIH-Crypto   Q1                   NA                -0.0355625   -0.0937412    0.0226161
9 months    ki1113344-GMS-Nepal     Q1                   NA                -0.0161379   -0.0615620    0.0292863
9 months    ki1126311-ZVITAMBO      Q1                   NA                -0.0476257   -0.1938813    0.0986300
9 months    ki1135781-COHORTS       Q1                   NA                -0.1060242   -0.1222174   -0.0898309
12 months   ki0047075b-MAL-ED       Q1                   NA                -0.0139190   -0.0565766    0.0287386
12 months   ki1017093-NIH-Birth     Q1                   NA                -0.0673147   -0.1315104   -0.0031189
12 months   ki1017093c-NIH-Crypto   Q1                   NA                -0.0044864   -0.0608383    0.0518655
12 months   ki1113344-GMS-Nepal     Q1                   NA                -0.0314904   -0.0796086    0.0166278
12 months   ki1135781-COHORTS       Q1                   NA                -0.1346524   -0.1519705   -0.1173344
12 months   ki1148112-LCNI-5        Q1                   NA                -0.0408704   -0.1187294    0.0369887
18 months   ki0047075b-MAL-ED       Q1                   NA                -0.0186168   -0.0670406    0.0298070
18 months   ki1017093-NIH-Birth     Q1                   NA                -0.0563626   -0.1204990    0.0077737
18 months   ki1017093c-NIH-Crypto   Q1                   NA                -0.0525843   -0.1200929    0.0149242
18 months   ki1113344-GMS-Nepal     Q1                   NA                -0.0383441   -0.0879994    0.0113111
18 months   ki1135781-COHORTS       Q1                   NA                -0.1203884   -0.1460108   -0.0947660
18 months   ki1148112-LCNI-5        Q1                   NA                -0.0400492   -0.1129028    0.0328045
24 months   ki0047075b-MAL-ED       Q1                   NA                -0.0324356   -0.0814993    0.0166282
24 months   ki1017093-NIH-Birth     Q1                   NA                -0.0937363   -0.1606325   -0.0268401
24 months   ki1017093c-NIH-Crypto   Q1                   NA                -0.0788071   -0.1558667   -0.0017475
24 months   ki1113344-GMS-Nepal     Q1                   NA                -0.0218318   -0.0745447    0.0308811
24 months   ki1135781-COHORTS       Q1                   NA                -0.1513213   -0.1676954   -0.1349471
24 months   ki1148112-LCNI-5        Q1                   NA                -0.0386644   -0.1210199    0.0436911


### Parameter: PAF


agecat      studyid                 intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       Q1                   NA                 0.0154424   -0.2760954    0.2403752
Birth       ki1126311-ZVITAMBO      Q1                   NA                -0.2182828   -1.4341643    0.3902577
Birth       ki1135781-COHORTS       Q1                   NA                -0.2040038   -0.3140570   -0.1031677
3 months    ki0047075b-MAL-ED       Q1                   NA                -0.1541198   -0.4145637    0.0583722
3 months    ki1017093c-NIH-Crypto   Q1                   NA                -0.0258621   -0.3082138    0.1955497
3 months    ki1126311-ZVITAMBO      Q1                   NA                -0.3654280   -1.5032611    0.2552141
3 months    ki1135781-COHORTS       Q1                   NA                -0.3532675   -0.4383576   -0.2732111
6 months    ki0047075b-MAL-ED       Q1                   NA                -0.0887261   -0.3465764    0.1197494
6 months    ki1017093c-NIH-Crypto   Q1                   NA                -0.1656477   -0.4647407    0.0723719
6 months    ki1113344-GMS-Nepal     Q1                   NA                -0.0968598   -0.3115460    0.0826845
6 months    ki1126311-ZVITAMBO      Q1                   NA                -0.3824747   -1.6534429    0.2797145
6 months    ki1135781-COHORTS       Q1                   NA                -0.3420872   -0.4113441   -0.2762289
6 months    ki1148112-LCNI-5        Q1                   NA                -0.1395779   -0.3384311    0.0297314
9 months    ki0047075b-MAL-ED       Q1                   NA                -0.0753454   -0.2997588    0.1103213
9 months    ki1017093-NIH-Birth     Q1                   NA                -0.1228058   -0.3133301    0.0400792
9 months    ki1017093c-NIH-Crypto   Q1                   NA                -0.1530923   -0.4330794    0.0721924
9 months    ki1113344-GMS-Nepal     Q1                   NA                -0.0571593   -0.2309781    0.0921156
9 months    ki1126311-ZVITAMBO      Q1                   NA                -0.2444868   -1.2751254    0.3192695
9 months    ki1135781-COHORTS       Q1                   NA                -0.3669318   -0.4246935   -0.3115119
12 months   ki0047075b-MAL-ED       Q1                   NA                -0.0557886   -0.2413898    0.1020633
12 months   ki1017093-NIH-Birth     Q1                   NA                -0.1796277   -0.3644321   -0.0198540
12 months   ki1017093c-NIH-Crypto   Q1                   NA                -0.0185228   -0.2799425    0.1895037
12 months   ki1113344-GMS-Nepal     Q1                   NA                -0.0915034   -0.2408350    0.0398564
12 months   ki1135781-COHORTS       Q1                   NA                -0.3459337   -0.3917898   -0.3015883
12 months   ki1148112-LCNI-5        Q1                   NA                -0.1000506   -0.3082614    0.0750233
18 months   ki0047075b-MAL-ED       Q1                   NA                -0.0501630   -0.1890944    0.0725359
18 months   ki1017093-NIH-Birth     Q1                   NA                -0.0959408   -0.2109797    0.0081698
18 months   ki1017093c-NIH-Crypto   Q1                   NA                -0.1745469   -0.4219567    0.0298154
18 months   ki1113344-GMS-Nepal     Q1                   NA                -0.0718295   -0.1691188    0.0173637
18 months   ki1135781-COHORTS       Q1                   NA                -0.1926741   -0.2346945   -0.1520839
18 months   ki1148112-LCNI-5        Q1                   NA                -0.0812492   -0.2397333    0.0569747
24 months   ki0047075b-MAL-ED       Q1                   NA                -0.0908462   -0.2373062    0.0382773
24 months   ki1017093-NIH-Birth     Q1                   NA                -0.1689616   -0.2966929   -0.0538126
24 months   ki1017093c-NIH-Crypto   Q1                   NA                -0.3068701   -0.6455252   -0.0379114
24 months   ki1113344-GMS-Nepal     Q1                   NA                -0.0485586   -0.1726992    0.0624406
24 months   ki1135781-COHORTS       Q1                   NA                -0.2736319   -0.3041796   -0.2437998
24 months   ki1148112-LCNI-5        Q1                   NA                -0.0885052   -0.2945136    0.0847190


