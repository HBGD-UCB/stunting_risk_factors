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

* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002
* agecat: Birth, studyid: ki1114097-CONTENT
* agecat: 3 months, studyid: ki1017093b-PROVIDE
* agecat: 3 months, studyid: ki1114097-CONTENT
* agecat: 6 months, studyid: ki1017093b-PROVIDE
* agecat: 6 months, studyid: ki1114097-CONTENT
* agecat: 9 months, studyid: ki1114097-CONTENT
* agecat: 12 months, studyid: ki1114097-CONTENT
* agecat: 18 months, studyid: ki1114097-CONTENT
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2
* agecat: 24 months, studyid: ki1114097-CONTENT

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness




# Results Detail

## Results Plots
![](/tmp/98db642e-b87e-4222-b346-6e22017f1e7b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/98db642e-b87e-4222-b346-6e22017f1e7b/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/98db642e-b87e-4222-b346-6e22017f1e7b/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/98db642e-b87e-4222-b346-6e22017f1e7b/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Data Summary

agecat      studyid                    A               n     nA   nAY0   nAY1
----------  -------------------------  ----------  -----  -----  -----  -----
Birth       ki0047075b-MAL-ED          Wealth Q1     291     65     55     10
Birth       ki0047075b-MAL-ED          Wealth Q2     291     69     61      8
Birth       ki0047075b-MAL-ED          Wealth Q3     291     81     62     19
Birth       ki0047075b-MAL-ED          Wealth Q4     291     76     64     12
Birth       ki1000108-CMC-V-BCS-2002   Wealth Q1      90     14     12      2
Birth       ki1000108-CMC-V-BCS-2002   Wealth Q2      90     20     18      2
Birth       ki1000108-CMC-V-BCS-2002   Wealth Q3      90     25     20      5
Birth       ki1000108-CMC-V-BCS-2002   Wealth Q4      90     31     24      7
Birth       ki1000108-IRC              Wealth Q1     388     98     90      8
Birth       ki1000108-IRC              Wealth Q2     388     99     83     16
Birth       ki1000108-IRC              Wealth Q3     388    100     90     10
Birth       ki1000108-IRC              Wealth Q4     388     91     80     11
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
Birth       ki1135781-COHORTS          Wealth Q1    3430    778    723     55
Birth       ki1135781-COHORTS          Wealth Q2    3430    602    558     44
Birth       ki1135781-COHORTS          Wealth Q3    3430   1064    995     69
Birth       ki1135781-COHORTS          Wealth Q4    3430    986    950     36
Birth       ki1148112-LCNI-5           Wealth Q1       0      0      0      0
Birth       ki1148112-LCNI-5           Wealth Q2       0      0      0      0
Birth       ki1148112-LCNI-5           Wealth Q3       0      0      0      0
Birth       ki1148112-LCNI-5           Wealth Q4       0      0      0      0
3 months    ki0047075b-MAL-ED          Wealth Q1     362     90     71     19
3 months    ki0047075b-MAL-ED          Wealth Q2     362     88     75     13
3 months    ki0047075b-MAL-ED          Wealth Q3     362     92     69     23
3 months    ki0047075b-MAL-ED          Wealth Q4     362     92     85      7
3 months    ki1000108-CMC-V-BCS-2002   Wealth Q1     362     90     77     13
3 months    ki1000108-CMC-V-BCS-2002   Wealth Q2     362     92     69     23
3 months    ki1000108-CMC-V-BCS-2002   Wealth Q3     362     87     65     22
3 months    ki1000108-CMC-V-BCS-2002   Wealth Q4     362     93     61     32
3 months    ki1000108-IRC              Wealth Q1     407    105     82     23
3 months    ki1000108-IRC              Wealth Q2     407    101     73     28
3 months    ki1000108-IRC              Wealth Q3     407    103     84     19
3 months    ki1000108-IRC              Wealth Q4     407     98     77     21
3 months    ki1017093b-PROVIDE         Wealth Q1     168     44     34     10
3 months    ki1017093b-PROVIDE         Wealth Q2     168     38     35      3
3 months    ki1017093b-PROVIDE         Wealth Q3     168     39     36      3
3 months    ki1017093b-PROVIDE         Wealth Q4     168     47     43      4
3 months    ki1066203-TanzaniaChild2   Wealth Q1     574    166    157      9
3 months    ki1066203-TanzaniaChild2   Wealth Q2     574    109    100      9
3 months    ki1066203-TanzaniaChild2   Wealth Q3     574    164    154     10
3 months    ki1066203-TanzaniaChild2   Wealth Q4     574    135    124     11
3 months    ki1113344-GMS-Nepal        Wealth Q1     571    146    122     24
3 months    ki1113344-GMS-Nepal        Wealth Q2     571    142    119     23
3 months    ki1113344-GMS-Nepal        Wealth Q3     571    141    119     22
3 months    ki1113344-GMS-Nepal        Wealth Q4     571    142    127     15
3 months    ki1114097-CONTENT          Wealth Q1     215     59     54      5
3 months    ki1114097-CONTENT          Wealth Q2     215     52     45      7
3 months    ki1114097-CONTENT          Wealth Q3     215     52     48      4
3 months    ki1114097-CONTENT          Wealth Q4     215     52     48      4
3 months    ki1135781-COHORTS          Wealth Q1    3327    735    615    120
3 months    ki1135781-COHORTS          Wealth Q2    3327    593    489    104
3 months    ki1135781-COHORTS          Wealth Q3    3327   1035    883    152
3 months    ki1135781-COHORTS          Wealth Q4    3327    964    842    122
3 months    ki1148112-LCNI-5           Wealth Q1       0      0      0      0
3 months    ki1148112-LCNI-5           Wealth Q2       0      0      0      0
3 months    ki1148112-LCNI-5           Wealth Q3       0      0      0      0
3 months    ki1148112-LCNI-5           Wealth Q4       0      0      0      0
6 months    ki0047075b-MAL-ED          Wealth Q1     356     88     69     19
6 months    ki0047075b-MAL-ED          Wealth Q2     356     86     74     12
6 months    ki0047075b-MAL-ED          Wealth Q3     356     91     70     21
6 months    ki0047075b-MAL-ED          Wealth Q4     356     91     81     10
6 months    ki1000108-CMC-V-BCS-2002   Wealth Q1     369     91     77     14
6 months    ki1000108-CMC-V-BCS-2002   Wealth Q2     369     94     64     30
6 months    ki1000108-CMC-V-BCS-2002   Wealth Q3     369     90     63     27
6 months    ki1000108-CMC-V-BCS-2002   Wealth Q4     369     94     54     40
6 months    ki1000108-IRC              Wealth Q1     407    105     79     26
6 months    ki1000108-IRC              Wealth Q2     407    100     67     33
6 months    ki1000108-IRC              Wealth Q3     407    103     83     20
6 months    ki1000108-IRC              Wealth Q4     407     99     78     21
6 months    ki1017093b-PROVIDE         Wealth Q1     153     38     27     11
6 months    ki1017093b-PROVIDE         Wealth Q2     153     34     30      4
6 months    ki1017093b-PROVIDE         Wealth Q3     153     38     32      6
6 months    ki1017093b-PROVIDE         Wealth Q4     153     43     36      7
6 months    ki1066203-TanzaniaChild2   Wealth Q1     503    141    131     10
6 months    ki1066203-TanzaniaChild2   Wealth Q2     503     97     86     11
6 months    ki1066203-TanzaniaChild2   Wealth Q3     503    146    136     10
6 months    ki1066203-TanzaniaChild2   Wealth Q4     503    119    105     14
6 months    ki1113344-GMS-Nepal        Wealth Q1     563    145    112     33
6 months    ki1113344-GMS-Nepal        Wealth Q2     563    139    109     30
6 months    ki1113344-GMS-Nepal        Wealth Q3     563    138    106     32
6 months    ki1113344-GMS-Nepal        Wealth Q4     563    141    117     24
6 months    ki1114097-CONTENT          Wealth Q1     215     59     52      7
6 months    ki1114097-CONTENT          Wealth Q2     215     52     45      7
6 months    ki1114097-CONTENT          Wealth Q3     215     52     49      3
6 months    ki1114097-CONTENT          Wealth Q4     215     52     50      2
6 months    ki1135781-COHORTS          Wealth Q1    3148    665    481    184
6 months    ki1135781-COHORTS          Wealth Q2    3148    569    423    146
6 months    ki1135781-COHORTS          Wealth Q3    3148   1001    746    255
6 months    ki1135781-COHORTS          Wealth Q4    3148    913    727    186
6 months    ki1148112-LCNI-5           Wealth Q1     405    103     68     35
6 months    ki1148112-LCNI-5           Wealth Q2     405     95     56     39
6 months    ki1148112-LCNI-5           Wealth Q3     405     95     56     39
6 months    ki1148112-LCNI-5           Wealth Q4     405    112     76     36
9 months    ki0047075b-MAL-ED          Wealth Q1     358     89     65     24
9 months    ki0047075b-MAL-ED          Wealth Q2     358     88     68     20
9 months    ki0047075b-MAL-ED          Wealth Q3     358     89     65     24
9 months    ki0047075b-MAL-ED          Wealth Q4     358     92     79     13
9 months    ki1000108-CMC-V-BCS-2002   Wealth Q1     366     88     68     20
9 months    ki1000108-CMC-V-BCS-2002   Wealth Q2     366     95     55     40
9 months    ki1000108-CMC-V-BCS-2002   Wealth Q3     366     89     49     40
9 months    ki1000108-CMC-V-BCS-2002   Wealth Q4     366     94     59     35
9 months    ki1000108-IRC              Wealth Q1     407    105     71     34
9 months    ki1000108-IRC              Wealth Q2     407    100     65     35
9 months    ki1000108-IRC              Wealth Q3     407    103     82     21
9 months    ki1000108-IRC              Wealth Q4     407     99     78     21
9 months    ki1017093b-PROVIDE         Wealth Q1     158     40     24     16
9 months    ki1017093b-PROVIDE         Wealth Q2     158     36     29      7
9 months    ki1017093b-PROVIDE         Wealth Q3     158     38     31      7
9 months    ki1017093b-PROVIDE         Wealth Q4     158     44     37      7
9 months    ki1066203-TanzaniaChild2   Wealth Q1     433    122    106     16
9 months    ki1066203-TanzaniaChild2   Wealth Q2     433     88     73     15
9 months    ki1066203-TanzaniaChild2   Wealth Q3     433    130    115     15
9 months    ki1066203-TanzaniaChild2   Wealth Q4     433     93     76     17
9 months    ki1113344-GMS-Nepal        Wealth Q1     551    141     95     46
9 months    ki1113344-GMS-Nepal        Wealth Q2     551    139    102     37
9 months    ki1113344-GMS-Nepal        Wealth Q3     551    132    100     32
9 months    ki1113344-GMS-Nepal        Wealth Q4     551    139     99     40
9 months    ki1114097-CONTENT          Wealth Q1     214     59     49     10
9 months    ki1114097-CONTENT          Wealth Q2     214     52     47      5
9 months    ki1114097-CONTENT          Wealth Q3     214     51     47      4
9 months    ki1114097-CONTENT          Wealth Q4     214     52     49      3
9 months    ki1135781-COHORTS          Wealth Q1    3145    673    412    261
9 months    ki1135781-COHORTS          Wealth Q2    3145    567    377    190
9 months    ki1135781-COHORTS          Wealth Q3    3145    990    657    333
9 months    ki1135781-COHORTS          Wealth Q4    3145    915    683    232
9 months    ki1148112-LCNI-5           Wealth Q1     317     73     52     21
9 months    ki1148112-LCNI-5           Wealth Q2     317     70     42     28
9 months    ki1148112-LCNI-5           Wealth Q3     317     76     51     25
9 months    ki1148112-LCNI-5           Wealth Q4     317     98     73     25
12 months   ki0047075b-MAL-ED          Wealth Q1     359     90     52     38
12 months   ki0047075b-MAL-ED          Wealth Q2     359     88     58     30
12 months   ki0047075b-MAL-ED          Wealth Q3     359     90     65     25
12 months   ki0047075b-MAL-ED          Wealth Q4     359     91     69     22
12 months   ki1000108-CMC-V-BCS-2002   Wealth Q1     368     88     48     40
12 months   ki1000108-CMC-V-BCS-2002   Wealth Q2     368     95     45     50
12 months   ki1000108-CMC-V-BCS-2002   Wealth Q3     368     90     47     43
12 months   ki1000108-CMC-V-BCS-2002   Wealth Q4     368     95     45     50
12 months   ki1000108-IRC              Wealth Q1     406    104     66     38
12 months   ki1000108-IRC              Wealth Q2     406    100     67     33
12 months   ki1000108-IRC              Wealth Q3     406    103     77     26
12 months   ki1000108-IRC              Wealth Q4     406     99     77     22
12 months   ki1017093b-PROVIDE         Wealth Q1     153     37     20     17
12 months   ki1017093b-PROVIDE         Wealth Q2     153     34     26      8
12 months   ki1017093b-PROVIDE         Wealth Q3     153     38     28     10
12 months   ki1017093b-PROVIDE         Wealth Q4     153     44     35      9
12 months   ki1066203-TanzaniaChild2   Wealth Q1     356    101     90     11
12 months   ki1066203-TanzaniaChild2   Wealth Q2     356     68     57     11
12 months   ki1066203-TanzaniaChild2   Wealth Q3     356    104     88     16
12 months   ki1066203-TanzaniaChild2   Wealth Q4     356     83     69     14
12 months   ki1113344-GMS-Nepal        Wealth Q1     558    140     89     51
12 months   ki1113344-GMS-Nepal        Wealth Q2     558    141     96     45
12 months   ki1113344-GMS-Nepal        Wealth Q3     558    135     86     49
12 months   ki1113344-GMS-Nepal        Wealth Q4     558    142     96     46
12 months   ki1114097-CONTENT          Wealth Q1     215     59     48     11
12 months   ki1114097-CONTENT          Wealth Q2     215     52     46      6
12 months   ki1114097-CONTENT          Wealth Q3     215     52     46      6
12 months   ki1114097-CONTENT          Wealth Q4     215     52     49      3
12 months   ki1135781-COHORTS          Wealth Q1    3086    634    301    333
12 months   ki1135781-COHORTS          Wealth Q2    3086    556    300    256
12 months   ki1135781-COHORTS          Wealth Q3    3086    965    543    422
12 months   ki1135781-COHORTS          Wealth Q4    3086    931    589    342
12 months   ki1148112-LCNI-5           Wealth Q1     306     77     44     33
12 months   ki1148112-LCNI-5           Wealth Q2     306     62     34     28
12 months   ki1148112-LCNI-5           Wealth Q3     306     79     47     32
12 months   ki1148112-LCNI-5           Wealth Q4     306     88     56     32
18 months   ki0047075b-MAL-ED          Wealth Q1     352     87     40     47
18 months   ki0047075b-MAL-ED          Wealth Q2     352     87     46     41
18 months   ki0047075b-MAL-ED          Wealth Q3     352     86     48     38
18 months   ki0047075b-MAL-ED          Wealth Q4     352     92     59     33
18 months   ki1000108-CMC-V-BCS-2002   Wealth Q1     369     90     30     60
18 months   ki1000108-CMC-V-BCS-2002   Wealth Q2     369     93     32     61
18 months   ki1000108-CMC-V-BCS-2002   Wealth Q3     369     90     25     65
18 months   ki1000108-CMC-V-BCS-2002   Wealth Q4     369     96     28     68
18 months   ki1000108-IRC              Wealth Q1     405    104     62     42
18 months   ki1000108-IRC              Wealth Q2     405     99     61     38
18 months   ki1000108-IRC              Wealth Q3     405    103     65     38
18 months   ki1000108-IRC              Wealth Q4     405     99     73     26
18 months   ki1017093b-PROVIDE         Wealth Q1     141     34     12     22
18 months   ki1017093b-PROVIDE         Wealth Q2     141     30     20     10
18 months   ki1017093b-PROVIDE         Wealth Q3     141     38     27     11
18 months   ki1017093b-PROVIDE         Wealth Q4     141     39     30      9
18 months   ki1066203-TanzaniaChild2   Wealth Q1     257     71     59     12
18 months   ki1066203-TanzaniaChild2   Wealth Q2     257     45     26     19
18 months   ki1066203-TanzaniaChild2   Wealth Q3     257     77     59     18
18 months   ki1066203-TanzaniaChild2   Wealth Q4     257     64     45     19
18 months   ki1113344-GMS-Nepal        Wealth Q1     550    135     59     76
18 months   ki1113344-GMS-Nepal        Wealth Q2     550    140     67     73
18 months   ki1113344-GMS-Nepal        Wealth Q3     550    131     59     72
18 months   ki1113344-GMS-Nepal        Wealth Q4     550    144     73     71
18 months   ki1114097-CONTENT          Wealth Q1     200     54     41     13
18 months   ki1114097-CONTENT          Wealth Q2     200     48     43      5
18 months   ki1114097-CONTENT          Wealth Q3     200     50     43      7
18 months   ki1114097-CONTENT          Wealth Q4     200     48     46      2
18 months   ki1135781-COHORTS          Wealth Q1    2913    592    161    431
18 months   ki1135781-COHORTS          Wealth Q2    2913    514    192    322
18 months   ki1135781-COHORTS          Wealth Q3    2913    922    307    615
18 months   ki1135781-COHORTS          Wealth Q4    2913    885    436    449
18 months   ki1148112-LCNI-5           Wealth Q1     353     85     42     43
18 months   ki1148112-LCNI-5           Wealth Q2     353     85     40     45
18 months   ki1148112-LCNI-5           Wealth Q3     353     85     41     44
18 months   ki1148112-LCNI-5           Wealth Q4     353     98     56     42
24 months   ki0047075b-MAL-ED          Wealth Q1     350     88     36     52
24 months   ki0047075b-MAL-ED          Wealth Q2     350     84     44     40
24 months   ki0047075b-MAL-ED          Wealth Q3     350     86     51     35
24 months   ki0047075b-MAL-ED          Wealth Q4     350     92     58     34
24 months   ki1000108-CMC-V-BCS-2002   Wealth Q1     372     91     21     70
24 months   ki1000108-CMC-V-BCS-2002   Wealth Q2     372     95     26     69
24 months   ki1000108-CMC-V-BCS-2002   Wealth Q3     372     91     32     59
24 months   ki1000108-CMC-V-BCS-2002   Wealth Q4     372     95     27     68
24 months   ki1000108-IRC              Wealth Q1     409    105     51     54
24 months   ki1000108-IRC              Wealth Q2     409    101     55     46
24 months   ki1000108-IRC              Wealth Q3     409    103     64     39
24 months   ki1000108-IRC              Wealth Q4     409    100     69     31
24 months   ki1017093b-PROVIDE         Wealth Q1     149     34     14     20
24 months   ki1017093b-PROVIDE         Wealth Q2     149     34     24     10
24 months   ki1017093b-PROVIDE         Wealth Q3     149     38     29      9
24 months   ki1017093b-PROVIDE         Wealth Q4     149     43     33     10
24 months   ki1066203-TanzaniaChild2   Wealth Q1       2      1      1      0
24 months   ki1066203-TanzaniaChild2   Wealth Q2       2      1      1      0
24 months   ki1066203-TanzaniaChild2   Wealth Q3       2      0      0      0
24 months   ki1066203-TanzaniaChild2   Wealth Q4       2      0      0      0
24 months   ki1113344-GMS-Nepal        Wealth Q1     499    127     64     63
24 months   ki1113344-GMS-Nepal        Wealth Q2     499    126     72     54
24 months   ki1113344-GMS-Nepal        Wealth Q3     499    119     63     56
24 months   ki1113344-GMS-Nepal        Wealth Q4     499    127     77     50
24 months   ki1114097-CONTENT          Wealth Q1     164     40     30     10
24 months   ki1114097-CONTENT          Wealth Q2     164     42     38      4
24 months   ki1114097-CONTENT          Wealth Q3     164     41     37      4
24 months   ki1114097-CONTENT          Wealth Q4     164     41     38      3
24 months   ki1135781-COHORTS          Wealth Q1    2942    597    154    443
24 months   ki1135781-COHORTS          Wealth Q2    2942    519    150    369
24 months   ki1135781-COHORTS          Wealth Q3    2942    933    294    639
24 months   ki1135781-COHORTS          Wealth Q4    2942    893    421    472
24 months   ki1148112-LCNI-5           Wealth Q1     293     65     39     26
24 months   ki1148112-LCNI-5           Wealth Q2     293     73     35     38
24 months   ki1148112-LCNI-5           Wealth Q3     293     67     39     28
24 months   ki1148112-LCNI-5           Wealth Q4     293     88     52     36

## Results Table

### Parameter: TSM


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          Wealth Q1            NA                0.1538462   0.0659830   0.2417093
Birth       ki0047075b-MAL-ED          Wealth Q2            NA                0.1159420   0.0402706   0.1916134
Birth       ki0047075b-MAL-ED          Wealth Q3            NA                0.2345679   0.1421320   0.3270038
Birth       ki0047075b-MAL-ED          Wealth Q4            NA                0.1578947   0.0757734   0.2400160
Birth       ki1000108-IRC              Wealth Q1            NA                0.0816327   0.0273532   0.1359121
Birth       ki1000108-IRC              Wealth Q2            NA                0.1616162   0.0890131   0.2342192
Birth       ki1000108-IRC              Wealth Q3            NA                0.1000000   0.0411252   0.1588748
Birth       ki1000108-IRC              Wealth Q4            NA                0.1208791   0.0538154   0.1879429
Birth       ki1135781-COHORTS          Wealth Q1            NA                0.0706941   0.0526808   0.0887074
Birth       ki1135781-COHORTS          Wealth Q2            NA                0.0730897   0.0522946   0.0938848
Birth       ki1135781-COHORTS          Wealth Q3            NA                0.0648496   0.0500505   0.0796487
Birth       ki1135781-COHORTS          Wealth Q4            NA                0.0365112   0.0248024   0.0482199
3 months    ki0047075b-MAL-ED          Wealth Q1            NA                0.2111111   0.1266822   0.2955400
3 months    ki0047075b-MAL-ED          Wealth Q2            NA                0.1477273   0.0734891   0.2219654
3 months    ki0047075b-MAL-ED          Wealth Q3            NA                0.2500000   0.1613956   0.3386044
3 months    ki0047075b-MAL-ED          Wealth Q4            NA                0.0760870   0.0218337   0.1303402
3 months    ki1000108-CMC-V-BCS-2002   Wealth Q1            NA                0.1444444   0.0717164   0.2171725
3 months    ki1000108-CMC-V-BCS-2002   Wealth Q2            NA                0.2500000   0.1613956   0.3386044
3 months    ki1000108-CMC-V-BCS-2002   Wealth Q3            NA                0.2528736   0.1614121   0.3443350
3 months    ki1000108-CMC-V-BCS-2002   Wealth Q4            NA                0.3440860   0.2473999   0.4407722
3 months    ki1000108-IRC              Wealth Q1            NA                0.2190476   0.1398396   0.2982556
3 months    ki1000108-IRC              Wealth Q2            NA                0.2772277   0.1898218   0.3646336
3 months    ki1000108-IRC              Wealth Q3            NA                0.1844660   0.1094692   0.2594628
3 months    ki1000108-IRC              Wealth Q4            NA                0.2142857   0.1329468   0.2956246
3 months    ki1066203-TanzaniaChild2   Wealth Q1            NA                0.0542169   0.0197394   0.0886944
3 months    ki1066203-TanzaniaChild2   Wealth Q2            NA                0.0825688   0.0308548   0.1342828
3 months    ki1066203-TanzaniaChild2   Wealth Q3            NA                0.0609756   0.0243216   0.0976296
3 months    ki1066203-TanzaniaChild2   Wealth Q4            NA                0.0814815   0.0352930   0.1276699
3 months    ki1113344-GMS-Nepal        Wealth Q1            NA                0.1643836   0.1042129   0.2245542
3 months    ki1113344-GMS-Nepal        Wealth Q2            NA                0.1619718   0.1013214   0.2226222
3 months    ki1113344-GMS-Nepal        Wealth Q3            NA                0.1560284   0.0960790   0.2159778
3 months    ki1113344-GMS-Nepal        Wealth Q4            NA                0.1056338   0.0550346   0.1562330
3 months    ki1135781-COHORTS          Wealth Q1            NA                0.1632653   0.1365407   0.1899899
3 months    ki1135781-COHORTS          Wealth Q2            NA                0.1753794   0.1447667   0.2059922
3 months    ki1135781-COHORTS          Wealth Q3            NA                0.1468599   0.1252921   0.1684277
3 months    ki1135781-COHORTS          Wealth Q4            NA                0.1265560   0.1055650   0.1475470
6 months    ki0047075b-MAL-ED          Wealth Q1            NA                0.2159091   0.1298224   0.3019958
6 months    ki0047075b-MAL-ED          Wealth Q2            NA                0.1395349   0.0661988   0.2128710
6 months    ki0047075b-MAL-ED          Wealth Q3            NA                0.2307692   0.1440819   0.3174565
6 months    ki0047075b-MAL-ED          Wealth Q4            NA                0.1098901   0.0455415   0.1742387
6 months    ki1000108-CMC-V-BCS-2002   Wealth Q1            NA                0.1538462   0.0796153   0.2280770
6 months    ki1000108-CMC-V-BCS-2002   Wealth Q2            NA                0.3191489   0.2247871   0.4135107
6 months    ki1000108-CMC-V-BCS-2002   Wealth Q3            NA                0.3000000   0.2051962   0.3948038
6 months    ki1000108-CMC-V-BCS-2002   Wealth Q4            NA                0.4255319   0.3254461   0.5256177
6 months    ki1000108-IRC              Wealth Q1            NA                0.2476190   0.1649584   0.3302796
6 months    ki1000108-IRC              Wealth Q2            NA                0.3300000   0.2377266   0.4222734
6 months    ki1000108-IRC              Wealth Q3            NA                0.1941748   0.1176890   0.2706605
6 months    ki1000108-IRC              Wealth Q4            NA                0.2121212   0.1314931   0.2927493
6 months    ki1066203-TanzaniaChild2   Wealth Q1            NA                0.0709220   0.0285101   0.1133338
6 months    ki1066203-TanzaniaChild2   Wealth Q2            NA                0.1134021   0.0502383   0.1765659
6 months    ki1066203-TanzaniaChild2   Wealth Q3            NA                0.0684932   0.0274803   0.1095060
6 months    ki1066203-TanzaniaChild2   Wealth Q4            NA                0.1176471   0.0597017   0.1755924
6 months    ki1113344-GMS-Nepal        Wealth Q1            NA                0.2275862   0.1592819   0.2958905
6 months    ki1113344-GMS-Nepal        Wealth Q2            NA                0.2158273   0.1473754   0.2842793
6 months    ki1113344-GMS-Nepal        Wealth Q3            NA                0.2318841   0.1614077   0.3023604
6 months    ki1113344-GMS-Nepal        Wealth Q4            NA                0.1702128   0.1081253   0.2323002
6 months    ki1135781-COHORTS          Wealth Q1            NA                0.2766917   0.2426849   0.3106986
6 months    ki1135781-COHORTS          Wealth Q2            NA                0.2565905   0.2206987   0.2924823
6 months    ki1135781-COHORTS          Wealth Q3            NA                0.2547453   0.2277489   0.2817416
6 months    ki1135781-COHORTS          Wealth Q4            NA                0.2037240   0.1775943   0.2298537
6 months    ki1148112-LCNI-5           Wealth Q1            NA                0.3398058   0.2482223   0.4313894
6 months    ki1148112-LCNI-5           Wealth Q2            NA                0.4105263   0.3114828   0.5095698
6 months    ki1148112-LCNI-5           Wealth Q3            NA                0.4105263   0.3114828   0.5095698
6 months    ki1148112-LCNI-5           Wealth Q4            NA                0.3214286   0.2348290   0.4080282
9 months    ki0047075b-MAL-ED          Wealth Q1            NA                0.2696629   0.1773351   0.3619908
9 months    ki0047075b-MAL-ED          Wealth Q2            NA                0.2272727   0.1395926   0.3149528
9 months    ki0047075b-MAL-ED          Wealth Q3            NA                0.2696629   0.1773351   0.3619908
9 months    ki0047075b-MAL-ED          Wealth Q4            NA                0.1413043   0.0700258   0.2125829
9 months    ki1000108-CMC-V-BCS-2002   Wealth Q1            NA                0.2272727   0.1395953   0.3149501
9 months    ki1000108-CMC-V-BCS-2002   Wealth Q2            NA                0.4210526   0.3216339   0.5204713
9 months    ki1000108-CMC-V-BCS-2002   Wealth Q3            NA                0.4494382   0.3459513   0.5529251
9 months    ki1000108-CMC-V-BCS-2002   Wealth Q4            NA                0.3723404   0.2744792   0.4702016
9 months    ki1000108-IRC              Wealth Q1            NA                0.3238095   0.2341974   0.4134217
9 months    ki1000108-IRC              Wealth Q2            NA                0.3500000   0.2564006   0.4435994
9 months    ki1000108-IRC              Wealth Q3            NA                0.2038835   0.1259825   0.2817845
9 months    ki1000108-IRC              Wealth Q4            NA                0.2121212   0.1314931   0.2927493
9 months    ki1017093b-PROVIDE         Wealth Q1            NA                0.4000000   0.2476991   0.5523009
9 months    ki1017093b-PROVIDE         Wealth Q2            NA                0.1944444   0.0647501   0.3241388
9 months    ki1017093b-PROVIDE         Wealth Q3            NA                0.1842105   0.0605642   0.3078569
9 months    ki1017093b-PROVIDE         Wealth Q4            NA                0.1590909   0.0506738   0.2675080
9 months    ki1066203-TanzaniaChild2   Wealth Q1            NA                0.1311475   0.0711790   0.1911161
9 months    ki1066203-TanzaniaChild2   Wealth Q2            NA                0.1704545   0.0917983   0.2491108
9 months    ki1066203-TanzaniaChild2   Wealth Q3            NA                0.1153846   0.0604015   0.1703678
9 months    ki1066203-TanzaniaChild2   Wealth Q4            NA                0.1827957   0.1041533   0.2614381
9 months    ki1113344-GMS-Nepal        Wealth Q1            NA                0.3262411   0.2487852   0.4036971
9 months    ki1113344-GMS-Nepal        Wealth Q2            NA                0.2661871   0.1926474   0.3397267
9 months    ki1113344-GMS-Nepal        Wealth Q3            NA                0.2424242   0.1692503   0.3155982
9 months    ki1113344-GMS-Nepal        Wealth Q4            NA                0.2877698   0.2124398   0.3630998
9 months    ki1135781-COHORTS          Wealth Q1            NA                0.3878158   0.3509975   0.4246340
9 months    ki1135781-COHORTS          Wealth Q2            NA                0.3350970   0.2962381   0.3739559
9 months    ki1135781-COHORTS          Wealth Q3            NA                0.3363636   0.3069283   0.3657990
9 months    ki1135781-COHORTS          Wealth Q4            NA                0.2535519   0.2253590   0.2817448
9 months    ki1148112-LCNI-5           Wealth Q1            NA                0.2876712   0.1836646   0.3916779
9 months    ki1148112-LCNI-5           Wealth Q2            NA                0.4000000   0.2850548   0.5149452
9 months    ki1148112-LCNI-5           Wealth Q3            NA                0.3289474   0.2231515   0.4347433
9 months    ki1148112-LCNI-5           Wealth Q4            NA                0.2551020   0.1686597   0.3415444
12 months   ki0047075b-MAL-ED          Wealth Q1            NA                0.4222222   0.3200381   0.5244064
12 months   ki0047075b-MAL-ED          Wealth Q2            NA                0.3409091   0.2417336   0.4400846
12 months   ki0047075b-MAL-ED          Wealth Q3            NA                0.2777778   0.1851126   0.3704430
12 months   ki0047075b-MAL-ED          Wealth Q4            NA                0.2417582   0.1536680   0.3298484
12 months   ki1000108-CMC-V-BCS-2002   Wealth Q1            NA                0.4545455   0.3503700   0.5587210
12 months   ki1000108-CMC-V-BCS-2002   Wealth Q2            NA                0.5263158   0.4257744   0.6268572
12 months   ki1000108-CMC-V-BCS-2002   Wealth Q3            NA                0.4777778   0.3744402   0.5811154
12 months   ki1000108-CMC-V-BCS-2002   Wealth Q4            NA                0.5263158   0.4257744   0.6268572
12 months   ki1000108-IRC              Wealth Q1            NA                0.3653846   0.2727235   0.4580457
12 months   ki1000108-IRC              Wealth Q2            NA                0.3300000   0.2377263   0.4222737
12 months   ki1000108-IRC              Wealth Q3            NA                0.2524272   0.1684310   0.3364234
12 months   ki1000108-IRC              Wealth Q4            NA                0.2222222   0.1402272   0.3042172
12 months   ki1017093b-PROVIDE         Wealth Q1            NA                0.4594595   0.2983545   0.6205644
12 months   ki1017093b-PROVIDE         Wealth Q2            NA                0.2352941   0.0922450   0.3783433
12 months   ki1017093b-PROVIDE         Wealth Q3            NA                0.2631579   0.1226905   0.4036253
12 months   ki1017093b-PROVIDE         Wealth Q4            NA                0.2045455   0.0849683   0.3241226
12 months   ki1066203-TanzaniaChild2   Wealth Q1            NA                0.1089109   0.0480702   0.1697516
12 months   ki1066203-TanzaniaChild2   Wealth Q2            NA                0.1617647   0.0741193   0.2494101
12 months   ki1066203-TanzaniaChild2   Wealth Q3            NA                0.1538462   0.0844061   0.2232862
12 months   ki1066203-TanzaniaChild2   Wealth Q4            NA                0.1686747   0.0880013   0.2493481
12 months   ki1113344-GMS-Nepal        Wealth Q1            NA                0.3642857   0.2844999   0.4440715
12 months   ki1113344-GMS-Nepal        Wealth Q2            NA                0.3191489   0.2421383   0.3961596
12 months   ki1113344-GMS-Nepal        Wealth Q3            NA                0.3629630   0.2817764   0.4441495
12 months   ki1113344-GMS-Nepal        Wealth Q4            NA                0.3239437   0.2469031   0.4009843
12 months   ki1135781-COHORTS          Wealth Q1            NA                0.5252366   0.4863598   0.5641133
12 months   ki1135781-COHORTS          Wealth Q2            NA                0.4604317   0.4189948   0.5018685
12 months   ki1135781-COHORTS          Wealth Q3            NA                0.4373057   0.4060029   0.4686085
12 months   ki1135781-COHORTS          Wealth Q4            NA                0.3673469   0.3363753   0.3983186
12 months   ki1148112-LCNI-5           Wealth Q1            NA                0.4285714   0.3178565   0.5392863
12 months   ki1148112-LCNI-5           Wealth Q2            NA                0.4516129   0.3275363   0.5756895
12 months   ki1148112-LCNI-5           Wealth Q3            NA                0.4050633   0.2966351   0.5134915
12 months   ki1148112-LCNI-5           Wealth Q4            NA                0.3636364   0.2629655   0.4643072
18 months   ki0047075b-MAL-ED          Wealth Q1            NA                0.5402299   0.4353563   0.6451034
18 months   ki0047075b-MAL-ED          Wealth Q2            NA                0.4712644   0.3662236   0.5763051
18 months   ki0047075b-MAL-ED          Wealth Q3            NA                0.4418605   0.3367537   0.5469672
18 months   ki0047075b-MAL-ED          Wealth Q4            NA                0.3586957   0.2605509   0.4568404
18 months   ki1000108-CMC-V-BCS-2002   Wealth Q1            NA                0.6666667   0.5691430   0.7641903
18 months   ki1000108-CMC-V-BCS-2002   Wealth Q2            NA                0.6559140   0.5592304   0.7525976
18 months   ki1000108-CMC-V-BCS-2002   Wealth Q3            NA                0.7222222   0.6295605   0.8148839
18 months   ki1000108-CMC-V-BCS-2002   Wealth Q4            NA                0.7083333   0.6172867   0.7993800
18 months   ki1000108-IRC              Wealth Q1            NA                0.4038462   0.3094280   0.4982643
18 months   ki1000108-IRC              Wealth Q2            NA                0.3838384   0.2879229   0.4797539
18 months   ki1000108-IRC              Wealth Q3            NA                0.3689320   0.2756329   0.4622312
18 months   ki1000108-IRC              Wealth Q4            NA                0.2626263   0.1758342   0.3494184
18 months   ki1017093b-PROVIDE         Wealth Q1            NA                0.6470588   0.4858543   0.8082633
18 months   ki1017093b-PROVIDE         Wealth Q2            NA                0.3333333   0.1640451   0.5026216
18 months   ki1017093b-PROVIDE         Wealth Q3            NA                0.2894737   0.1447644   0.4341830
18 months   ki1017093b-PROVIDE         Wealth Q4            NA                0.2307692   0.0980669   0.3634716
18 months   ki1066203-TanzaniaChild2   Wealth Q1            NA                0.1690141   0.0816720   0.2563562
18 months   ki1066203-TanzaniaChild2   Wealth Q2            NA                0.4222222   0.2776319   0.5668126
18 months   ki1066203-TanzaniaChild2   Wealth Q3            NA                0.2337662   0.1390508   0.3284817
18 months   ki1066203-TanzaniaChild2   Wealth Q4            NA                0.2968750   0.1847228   0.4090272
18 months   ki1113344-GMS-Nepal        Wealth Q1            NA                0.5629630   0.4792148   0.6467111
18 months   ki1113344-GMS-Nepal        Wealth Q2            NA                0.5214286   0.4386057   0.6042514
18 months   ki1113344-GMS-Nepal        Wealth Q3            NA                0.5496183   0.4643420   0.6348947
18 months   ki1113344-GMS-Nepal        Wealth Q4            NA                0.4930556   0.4113239   0.5747872
18 months   ki1135781-COHORTS          Wealth Q1            NA                0.7280405   0.6921903   0.7638907
18 months   ki1135781-COHORTS          Wealth Q2            NA                0.6264591   0.5846322   0.6682861
18 months   ki1135781-COHORTS          Wealth Q3            NA                0.6670282   0.6366030   0.6974534
18 months   ki1135781-COHORTS          Wealth Q4            NA                0.5073446   0.4744008   0.5402885
18 months   ki1148112-LCNI-5           Wealth Q1            NA                0.5058824   0.3994449   0.6123198
18 months   ki1148112-LCNI-5           Wealth Q2            NA                0.5294118   0.4231512   0.6356723
18 months   ki1148112-LCNI-5           Wealth Q3            NA                0.5176471   0.4112685   0.6240256
18 months   ki1148112-LCNI-5           Wealth Q4            NA                0.4285714   0.3304546   0.5266883
24 months   ki0047075b-MAL-ED          Wealth Q1            NA                0.5909091   0.4880368   0.6937814
24 months   ki0047075b-MAL-ED          Wealth Q2            NA                0.4761905   0.3692341   0.5831469
24 months   ki0047075b-MAL-ED          Wealth Q3            NA                0.4069767   0.3029989   0.5109546
24 months   ki0047075b-MAL-ED          Wealth Q4            NA                0.3695652   0.2707916   0.4683389
24 months   ki1000108-CMC-V-BCS-2002   Wealth Q1            NA                0.7692308   0.6825487   0.8559128
24 months   ki1000108-CMC-V-BCS-2002   Wealth Q2            NA                0.7263158   0.6365402   0.8160914
24 months   ki1000108-CMC-V-BCS-2002   Wealth Q3            NA                0.6483516   0.5501155   0.7465878
24 months   ki1000108-CMC-V-BCS-2002   Wealth Q4            NA                0.7157895   0.6249690   0.8066099
24 months   ki1000108-IRC              Wealth Q1            NA                0.5142857   0.4185712   0.6100002
24 months   ki1000108-IRC              Wealth Q2            NA                0.4554455   0.3582027   0.5526884
24 months   ki1000108-IRC              Wealth Q3            NA                0.3786408   0.2848530   0.4724285
24 months   ki1000108-IRC              Wealth Q4            NA                0.3100000   0.2192420   0.4007580
24 months   ki1017093b-PROVIDE         Wealth Q1            NA                0.5882353   0.4222495   0.7542211
24 months   ki1017093b-PROVIDE         Wealth Q2            NA                0.2941176   0.1404446   0.4477907
24 months   ki1017093b-PROVIDE         Wealth Q3            NA                0.2368421   0.1012123   0.3724719
24 months   ki1017093b-PROVIDE         Wealth Q4            NA                0.2325581   0.1058616   0.3592547
24 months   ki1113344-GMS-Nepal        Wealth Q1            NA                0.4960630   0.4090191   0.5831069
24 months   ki1113344-GMS-Nepal        Wealth Q2            NA                0.4285714   0.3420764   0.5150664
24 months   ki1113344-GMS-Nepal        Wealth Q3            NA                0.4705882   0.3808190   0.5603575
24 months   ki1113344-GMS-Nepal        Wealth Q4            NA                0.3937008   0.3086441   0.4787575
24 months   ki1135781-COHORTS          Wealth Q1            NA                0.7420436   0.7069423   0.7771448
24 months   ki1135781-COHORTS          Wealth Q2            NA                0.7109827   0.6719768   0.7499885
24 months   ki1135781-COHORTS          Wealth Q3            NA                0.6848875   0.6550732   0.7147017
24 months   ki1135781-COHORTS          Wealth Q4            NA                0.5285554   0.4958095   0.5613013
24 months   ki1148112-LCNI-5           Wealth Q1            NA                0.4000000   0.2807003   0.5192997
24 months   ki1148112-LCNI-5           Wealth Q2            NA                0.5205479   0.4057506   0.6353453
24 months   ki1148112-LCNI-5           Wealth Q3            NA                0.4179104   0.2996091   0.5362118
24 months   ki1148112-LCNI-5           Wealth Q4            NA                0.4090909   0.3061900   0.5119919


### Parameter: E(Y)


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          NA                   NA                0.1683849   0.1633060   0.1734637
Birth       ki1000108-IRC              NA                   NA                0.1159794   0.1129891   0.1189697
Birth       ki1135781-COHORTS          NA                   NA                0.0594752   0.0589769   0.0599735
3 months    ki0047075b-MAL-ED          NA                   NA                0.1712707   0.1644226   0.1781189
3 months    ki1000108-CMC-V-BCS-2002   NA                   NA                0.2486188   0.2412923   0.2559453
3 months    ki1000108-IRC              NA                   NA                0.2235872   0.2203210   0.2268534
3 months    ki1066203-TanzaniaChild2   NA                   NA                0.0679443   0.0669345   0.0689540
3 months    ki1113344-GMS-Nepal        NA                   NA                0.1471103   0.1451355   0.1490851
3 months    ki1135781-COHORTS          NA                   NA                0.1496844   0.1490804   0.1502884
6 months    ki0047075b-MAL-ED          NA                   NA                0.1741573   0.1688577   0.1794569
6 months    ki1000108-CMC-V-BCS-2002   NA                   NA                0.3008130   0.2909205   0.3107056
6 months    ki1000108-IRC              NA                   NA                0.2457002   0.2406523   0.2507482
6 months    ki1066203-TanzaniaChild2   NA                   NA                0.0894632   0.0874638   0.0914627
6 months    ki1113344-GMS-Nepal        NA                   NA                0.2113677   0.2093425   0.2133928
6 months    ki1135781-COHORTS          NA                   NA                0.2449174   0.2439537   0.2458811
6 months    ki1148112-LCNI-5           NA                   NA                0.3679012   0.3639398   0.3718626
9 months    ki0047075b-MAL-ED          NA                   NA                0.2262570   0.2207762   0.2317378
9 months    ki1000108-CMC-V-BCS-2002   NA                   NA                0.3688525   0.3602026   0.3775023
9 months    ki1000108-IRC              NA                   NA                0.2727273   0.2663985   0.2790560
9 months    ki1017093b-PROVIDE         NA                   NA                0.2341772   0.2189379   0.2494166
9 months    ki1066203-TanzaniaChild2   NA                   NA                0.1454965   0.1429044   0.1480887
9 months    ki1113344-GMS-Nepal        NA                   NA                0.2813067   0.2787348   0.2838786
9 months    ki1135781-COHORTS          NA                   NA                0.3230525   0.3213455   0.3247595
9 months    ki1148112-LCNI-5           NA                   NA                0.3123028   0.3063491   0.3182566
12 months   ki0047075b-MAL-ED          NA                   NA                0.3203343   0.3132135   0.3274550
12 months   ki1000108-CMC-V-BCS-2002   NA                   NA                0.4972826   0.4941044   0.5004608
12 months   ki1000108-IRC              NA                   NA                0.2931034   0.2874931   0.2987138
12 months   ki1017093b-PROVIDE         NA                   NA                0.2875817   0.2717778   0.3033856
12 months   ki1066203-TanzaniaChild2   NA                   NA                0.1460674   0.1435717   0.1485631
12 months   ki1113344-GMS-Nepal        NA                   NA                0.3422939   0.3405406   0.3440473
12 months   ki1135781-COHORTS          NA                   NA                0.4384316   0.4364480   0.4404153
12 months   ki1148112-LCNI-5           NA                   NA                0.4084967   0.4048431   0.4121503
18 months   ki0047075b-MAL-ED          NA                   NA                0.4517045   0.4448316   0.4585775
18 months   ki1000108-CMC-V-BCS-2002   NA                   NA                0.6883469   0.6855236   0.6911701
18 months   ki1000108-IRC              NA                   NA                0.3555556   0.3502585   0.3608526
18 months   ki1017093b-PROVIDE         NA                   NA                0.3687943   0.3421339   0.3954547
18 months   ki1066203-TanzaniaChild2   NA                   NA                0.2645914   0.2540405   0.2751424
18 months   ki1113344-GMS-Nepal        NA                   NA                0.5309091   0.5286434   0.5331747
18 months   ki1135781-COHORTS          NA                   NA                0.6237556   0.6207339   0.6267772
18 months   ki1148112-LCNI-5           NA                   NA                0.4929178   0.4886643   0.4971714
24 months   ki0047075b-MAL-ED          NA                   NA                0.4600000   0.4510901   0.4689099
24 months   ki1000108-CMC-V-BCS-2002   NA                   NA                0.7150538   0.7106902   0.7194173
24 months   ki1000108-IRC              NA                   NA                0.4156479   0.4081552   0.4231407
24 months   ki1017093b-PROVIDE         NA                   NA                0.3288591   0.3058129   0.3519053
24 months   ki1113344-GMS-Nepal        NA                   NA                0.4468938   0.4434314   0.4503561
24 months   ki1135781-COHORTS          NA                   NA                0.6536370   0.6505650   0.6567089
24 months   ki1148112-LCNI-5           NA                   NA                0.4368601   0.4312880   0.4424322


### Parameter: RR


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          Wealth Q2            Wealth Q1         0.7536232   0.3165978   1.7939096
Birth       ki0047075b-MAL-ED          Wealth Q3            Wealth Q1         1.5246914   0.7617937   3.0515922
Birth       ki0047075b-MAL-ED          Wealth Q4            Wealth Q1         1.0263158   0.4740367   2.2220309
Birth       ki1000108-IRC              Wealth Q2            Wealth Q1         1.9797980   0.8874005   4.4169461
Birth       ki1000108-IRC              Wealth Q3            Wealth Q1         1.2250000   0.5040025   2.9774156
Birth       ki1000108-IRC              Wealth Q4            Wealth Q1         1.4807692   0.6228677   3.5202941
Birth       ki1135781-COHORTS          Wealth Q2            Wealth Q1         1.0338870   0.7056687   1.5147653
Birth       ki1135781-COHORTS          Wealth Q3            Wealth Q1         0.9173274   0.6515836   1.2914529
Birth       ki1135781-COHORTS          Wealth Q4            Wealth Q1         0.5164669   0.3428926   0.7779056
3 months    ki0047075b-MAL-ED          Wealth Q2            Wealth Q1         0.6997608   0.3681500   1.3300696
3 months    ki0047075b-MAL-ED          Wealth Q3            Wealth Q1         1.1842105   0.6939917   2.0207079
3 months    ki0047075b-MAL-ED          Wealth Q4            Wealth Q1         0.3604119   0.1591279   0.8163039
3 months    ki1000108-CMC-V-BCS-2002   Wealth Q2            Wealth Q1         1.7307692   0.9350397   3.2036738
3 months    ki1000108-CMC-V-BCS-2002   Wealth Q3            Wealth Q1         1.7506631   0.9418106   3.2541802
3 months    ki1000108-CMC-V-BCS-2002   Wealth Q4            Wealth Q1         2.3821340   1.3382903   4.2401580
3 months    ki1000108-IRC              Wealth Q2            Wealth Q1         1.2656048   0.7833304   2.0448020
3 months    ki1000108-IRC              Wealth Q3            Wealth Q1         0.8421275   0.4887388   1.4510383
3 months    ki1000108-IRC              Wealth Q4            Wealth Q1         0.9782609   0.5791297   1.6524698
3 months    ki1066203-TanzaniaChild2   Wealth Q2            Wealth Q1         1.5229358   0.6238041   3.7180480
3 months    ki1066203-TanzaniaChild2   Wealth Q3            Wealth Q1         1.1246612   0.4687967   2.6981053
3 months    ki1066203-TanzaniaChild2   Wealth Q4            Wealth Q1         1.5028807   0.6411394   3.5228691
3 months    ki1113344-GMS-Nepal        Wealth Q2            Wealth Q1         0.9853286   0.5836707   1.6633909
3 months    ki1113344-GMS-Nepal        Wealth Q3            Wealth Q1         0.9491726   0.5583138   1.6136597
3 months    ki1113344-GMS-Nepal        Wealth Q4            Wealth Q1         0.6426056   0.3516650   1.1742481
3 months    ki1135781-COHORTS          Wealth Q2            Wealth Q1         1.0741990   0.8455910   1.3646119
3 months    ki1135781-COHORTS          Wealth Q3            Wealth Q1         0.8995169   0.7219425   1.1207688
3 months    ki1135781-COHORTS          Wealth Q4            Wealth Q1         0.7751556   0.6140219   0.9785745
6 months    ki0047075b-MAL-ED          Wealth Q2            Wealth Q1         0.6462668   0.3341239   1.2500179
6 months    ki0047075b-MAL-ED          Wealth Q3            Wealth Q1         1.0688259   0.6180171   1.8484746
6 months    ki0047075b-MAL-ED          Wealth Q4            Wealth Q1         0.5089647   0.2506231   1.0336042
6 months    ki1000108-CMC-V-BCS-2002   Wealth Q2            Wealth Q1         2.0744681   1.1780019   3.6531502
6 months    ki1000108-CMC-V-BCS-2002   Wealth Q3            Wealth Q1         1.9500000   1.0953270   3.4715659
6 months    ki1000108-CMC-V-BCS-2002   Wealth Q4            Wealth Q1         2.7659574   1.6170644   4.7311168
6 months    ki1000108-IRC              Wealth Q2            Wealth Q1         1.3326923   0.8622111   2.0599002
6 months    ki1000108-IRC              Wealth Q3            Wealth Q1         0.7841673   0.4679183   1.3141576
6 months    ki1000108-IRC              Wealth Q4            Wealth Q1         0.8566434   0.5165336   1.4206971
6 months    ki1066203-TanzaniaChild2   Wealth Q2            Wealth Q1         1.5989691   0.7061964   3.6203838
6 months    ki1066203-TanzaniaChild2   Wealth Q3            Wealth Q1         0.9657534   0.4143232   2.2510922
6 months    ki1066203-TanzaniaChild2   Wealth Q4            Wealth Q1         1.6588235   0.7644342   3.5996501
6 months    ki1113344-GMS-Nepal        Wealth Q2            Wealth Q1         0.9483322   0.6128081   1.4675623
6 months    ki1113344-GMS-Nepal        Wealth Q3            Wealth Q1         1.0188845   0.6646924   1.5618136
6 months    ki1113344-GMS-Nepal        Wealth Q4            Wealth Q1         0.7479046   0.4663383   1.1994752
6 months    ki1135781-COHORTS          Wealth Q2            Wealth Q1         0.9273516   0.7697983   1.1171509
6 months    ki1135781-COHORTS          Wealth Q3            Wealth Q1         0.9206826   0.7827639   1.0829017
6 months    ki1135781-COHORTS          Wealth Q4            Wealth Q1         0.7362851   0.6164494   0.8794164
6 months    ki1148112-LCNI-5           Wealth Q2            Wealth Q1         1.2081203   0.8414232   1.7346261
6 months    ki1148112-LCNI-5           Wealth Q3            Wealth Q1         1.2081203   0.8414232   1.7346261
6 months    ki1148112-LCNI-5           Wealth Q4            Wealth Q1         0.9459184   0.6461743   1.3847062
9 months    ki0047075b-MAL-ED          Wealth Q2            Wealth Q1         0.8428030   0.5031668   1.4116927
9 months    ki0047075b-MAL-ED          Wealth Q3            Wealth Q1         1.0000000   0.6161887   1.6228794
9 months    ki0047075b-MAL-ED          Wealth Q4            Wealth Q1         0.5240036   0.2848163   0.9640594
9 months    ki1000108-CMC-V-BCS-2002   Wealth Q2            Wealth Q1         1.8526316   1.1785713   2.9122070
9 months    ki1000108-CMC-V-BCS-2002   Wealth Q3            Wealth Q1         1.9775281   1.2618456   3.0991250
9 months    ki1000108-CMC-V-BCS-2002   Wealth Q4            Wealth Q1         1.6382979   1.0272190   2.6128995
9 months    ki1000108-IRC              Wealth Q2            Wealth Q1         1.0808824   0.7356027   1.5882306
9 months    ki1000108-IRC              Wealth Q3            Wealth Q1         0.6296402   0.3928266   1.0092156
9 months    ki1000108-IRC              Wealth Q4            Wealth Q1         0.6550802   0.4093544   1.0483095
9 months    ki1017093b-PROVIDE         Wealth Q2            Wealth Q1         0.4861111   0.2255210   1.0478137
9 months    ki1017093b-PROVIDE         Wealth Q3            Wealth Q1         0.4605263   0.2128687   0.9963161
9 months    ki1017093b-PROVIDE         Wealth Q4            Wealth Q1         0.3977273   0.1822055   0.8681791
9 months    ki1066203-TanzaniaChild2   Wealth Q2            Wealth Q1         1.2997159   0.6787604   2.4887448
9 months    ki1066203-TanzaniaChild2   Wealth Q3            Wealth Q1         0.8798077   0.4545374   1.7029656
9 months    ki1066203-TanzaniaChild2   Wealth Q4            Wealth Q1         1.3938172   0.7439448   2.6113851
9 months    ki1113344-GMS-Nepal        Wealth Q2            Wealth Q1         0.8159212   0.5668229   1.1744891
9 months    ki1113344-GMS-Nepal        Wealth Q3            Wealth Q1         0.7430830   0.5061234   1.0909836
9 months    ki1113344-GMS-Nepal        Wealth Q4            Wealth Q1         0.8820769   0.6194786   1.2559912
9 months    ki1135781-COHORTS          Wealth Q2            Wealth Q1         0.8640624   0.7438032   1.0037652
9 months    ki1135781-COHORTS          Wealth Q3            Wealth Q1         0.8673285   0.7622699   0.9868666
9 months    ki1135781-COHORTS          Wealth Q4            Wealth Q1         0.6537948   0.5648643   0.7567262
9 months    ki1148112-LCNI-5           Wealth Q2            Wealth Q1         1.3904762   0.8761736   2.2066678
9 months    ki1148112-LCNI-5           Wealth Q3            Wealth Q1         1.1434837   0.7048174   1.8551685
9 months    ki1148112-LCNI-5           Wealth Q4            Wealth Q1         0.8867833   0.5402773   1.4555204
12 months   ki0047075b-MAL-ED          Wealth Q2            Wealth Q1         0.8074163   0.5530332   1.1788100
12 months   ki0047075b-MAL-ED          Wealth Q3            Wealth Q1         0.6578947   0.4356800   0.9934480
12 months   ki0047075b-MAL-ED          Wealth Q4            Wealth Q1         0.5725853   0.3697173   0.8867694
12 months   ki1000108-CMC-V-BCS-2002   Wealth Q2            Wealth Q1         1.1578947   0.8591982   1.5604319
12 months   ki1000108-CMC-V-BCS-2002   Wealth Q3            Wealth Q1         1.0511111   0.7669897   1.4404817
12 months   ki1000108-CMC-V-BCS-2002   Wealth Q4            Wealth Q1         1.1578947   0.8591982   1.5604319
12 months   ki1000108-IRC              Wealth Q2            Wealth Q1         0.9031579   0.6191875   1.3173622
12 months   ki1000108-IRC              Wealth Q3            Wealth Q1         0.6908533   0.4546612   1.0497451
12 months   ki1000108-IRC              Wealth Q4            Wealth Q1         0.6081871   0.3886809   0.9516589
12 months   ki1017093b-PROVIDE         Wealth Q2            Wealth Q1         0.5121107   0.2538422   1.0331513
12 months   ki1017093b-PROVIDE         Wealth Q3            Wealth Q1         0.5727554   0.3024195   1.0847473
12 months   ki1017093b-PROVIDE         Wealth Q4            Wealth Q1         0.4451872   0.2251579   0.8802339
12 months   ki1066203-TanzaniaChild2   Wealth Q2            Wealth Q1         1.4852941   0.6820827   3.2343564
12 months   ki1066203-TanzaniaChild2   Wealth Q3            Wealth Q1         1.4125874   0.6888280   2.8968091
12 months   ki1066203-TanzaniaChild2   Wealth Q4            Wealth Q1         1.5487404   0.7423312   3.2311680
12 months   ki1113344-GMS-Nepal        Wealth Q2            Wealth Q1         0.8760951   0.6324482   1.2136056
12 months   ki1113344-GMS-Nepal        Wealth Q3            Wealth Q1         0.9963689   0.7285572   1.3626261
12 months   ki1113344-GMS-Nepal        Wealth Q4            Wealth Q1         0.8892571   0.6436002   1.2286793
12 months   ki1135781-COHORTS          Wealth Q2            Wealth Q1         0.8766176   0.7801974   0.9849539
12 months   ki1135781-COHORTS          Wealth Q3            Wealth Q1         0.8325880   0.7511240   0.9228874
12 months   ki1135781-COHORTS          Wealth Q4            Wealth Q1         0.6993933   0.6251684   0.7824307
12 months   ki1148112-LCNI-5           Wealth Q2            Wealth Q1         1.0537634   0.7227066   1.5364706
12 months   ki1148112-LCNI-5           Wealth Q3            Wealth Q1         0.9451477   0.6515358   1.3710745
12 months   ki1148112-LCNI-5           Wealth Q4            Wealth Q1         0.8484848   0.5810267   1.2390593
18 months   ki0047075b-MAL-ED          Wealth Q2            Wealth Q1         0.8723404   0.6491100   1.1723403
18 months   ki0047075b-MAL-ED          Wealth Q3            Wealth Q1         0.8179119   0.6016776   1.1118577
18 months   ki0047075b-MAL-ED          Wealth Q4            Wealth Q1         0.6639685   0.4747311   0.9286400
18 months   ki1000108-CMC-V-BCS-2002   Wealth Q2            Wealth Q1         0.9838710   0.7993703   1.2109558
18 months   ki1000108-CMC-V-BCS-2002   Wealth Q3            Wealth Q1         1.0833333   0.8917806   1.3160312
18 months   ki1000108-CMC-V-BCS-2002   Wealth Q4            Wealth Q1         1.0625000   0.8744950   1.2909236
18 months   ki1000108-IRC              Wealth Q2            Wealth Q1         0.9504570   0.6750175   1.3382889
18 months   ki1000108-IRC              Wealth Q3            Wealth Q1         0.9135460   0.6473773   1.2891497
18 months   ki1000108-IRC              Wealth Q4            Wealth Q1         0.6503127   0.4338229   0.9748368
18 months   ki1017093b-PROVIDE         Wealth Q2            Wealth Q1         0.5151515   0.2925924   0.9069992
18 months   ki1017093b-PROVIDE         Wealth Q3            Wealth Q1         0.4473684   0.2559129   0.7820570
18 months   ki1017093b-PROVIDE         Wealth Q4            Wealth Q1         0.3566434   0.1905747   0.6674259
18 months   ki1066203-TanzaniaChild2   Wealth Q2            Wealth Q1         2.4981481   1.3439427   4.6436089
18 months   ki1066203-TanzaniaChild2   Wealth Q3            Wealth Q1         1.3831169   0.7172480   2.6671561
18 months   ki1066203-TanzaniaChild2   Wealth Q4            Wealth Q1         1.7565104   0.9260715   3.3316313
18 months   ki1113344-GMS-Nepal        Wealth Q2            Wealth Q1         0.9262218   0.7450788   1.1514042
18 months   ki1113344-GMS-Nepal        Wealth Q3            Wealth Q1         0.9762957   0.7874619   1.2104120
18 months   ki1113344-GMS-Nepal        Wealth Q4            Wealth Q1         0.8758224   0.7009476   1.0943255
18 months   ki1135781-COHORTS          Wealth Q2            Wealth Q1         0.8604729   0.7919675   0.9349040
18 months   ki1135781-COHORTS          Wealth Q3            Wealth Q1         0.9161965   0.8567183   0.9798040
18 months   ki1135781-COHORTS          Wealth Q4            Wealth Q1         0.6968632   0.6423258   0.7560311
18 months   ki1148112-LCNI-5           Wealth Q2            Wealth Q1         1.0465116   0.7824543   1.3996813
18 months   ki1148112-LCNI-5           Wealth Q3            Wealth Q1         1.0232558   0.7625256   1.3731374
18 months   ki1148112-LCNI-5           Wealth Q4            Wealth Q1         0.8471761   0.6207773   1.1561429
24 months   ki0047075b-MAL-ED          Wealth Q2            Wealth Q1         0.8058608   0.6065175   1.0707220
24 months   ki0047075b-MAL-ED          Wealth Q3            Wealth Q1         0.6887299   0.5055695   0.9382466
24 months   ki0047075b-MAL-ED          Wealth Q4            Wealth Q1         0.6254181   0.4546153   0.8603928
24 months   ki1000108-CMC-V-BCS-2002   Wealth Q2            Wealth Q1         0.9442105   0.7987820   1.1161162
24 months   ki1000108-CMC-V-BCS-2002   Wealth Q3            Wealth Q1         0.8428571   0.6978265   1.0180298
24 months   ki1000108-CMC-V-BCS-2002   Wealth Q4            Wealth Q1         0.9305263   0.7852899   1.1026236
24 months   ki1000108-IRC              Wealth Q2            Wealth Q1         0.8855886   0.6671486   1.1755508
24 months   ki1000108-IRC              Wealth Q3            Wealth Q1         0.7362460   0.5400926   1.0036393
24 months   ki1000108-IRC              Wealth Q4            Wealth Q1         0.6027778   0.4260825   0.8527482
24 months   ki1017093b-PROVIDE         Wealth Q2            Wealth Q1         0.5000000   0.2761081   0.9054426
24 months   ki1017093b-PROVIDE         Wealth Q3            Wealth Q1         0.4026316   0.2126433   0.7623667
24 months   ki1017093b-PROVIDE         Wealth Q4            Wealth Q1         0.3953488   0.2140552   0.7301889
24 months   ki1113344-GMS-Nepal        Wealth Q2            Wealth Q1         0.8639456   0.6612121   1.1288389
24 months   ki1113344-GMS-Nepal        Wealth Q3            Wealth Q1         0.9486461   0.7320488   1.2293299
24 months   ki1113344-GMS-Nepal        Wealth Q4            Wealth Q1         0.7936508   0.6008342   1.0483451
24 months   ki1135781-COHORTS          Wealth Q2            Wealth Q1         0.9581414   0.8911886   1.0301242
24 months   ki1135781-COHORTS          Wealth Q3            Wealth Q1         0.9229747   0.8655078   0.9842573
24 months   ki1135781-COHORTS          Wealth Q4            Wealth Q1         0.7122970   0.6588838   0.7700403
24 months   ki1148112-LCNI-5           Wealth Q2            Wealth Q1         1.3013699   0.8980678   1.8857857
24 months   ki1148112-LCNI-5           Wealth Q3            Wealth Q1         1.0447761   0.6925340   1.5761784
24 months   ki1148112-LCNI-5           Wealth Q4            Wealth Q1         1.0227273   0.6923355   1.5107864


### Parameter: PAR


agecat      studyid                    intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          Wealth Q1            NA                 0.0145387   -0.0734711    0.1025486
Birth       ki1000108-IRC              Wealth Q1            NA                 0.0343467   -0.0200150    0.0887085
Birth       ki1135781-COHORTS          Wealth Q1            NA                -0.0112189   -0.0292390    0.0068013
3 months    ki0047075b-MAL-ED          Wealth Q1            NA                -0.0398404   -0.1245465    0.0448658
3 months    ki1000108-CMC-V-BCS-2002   Wealth Q1            NA                 0.1041743    0.0310782    0.1772705
3 months    ki1000108-IRC              Wealth Q1            NA                 0.0045396   -0.0747357    0.0838149
3 months    ki1066203-TanzaniaChild2   Wealth Q1            NA                 0.0137274   -0.0207649    0.0482197
3 months    ki1113344-GMS-Nepal        Wealth Q1            NA                -0.0172732   -0.0774763    0.0429299
3 months    ki1135781-COHORTS          Wealth Q1            NA                -0.0135809   -0.0403123    0.0131505
6 months    ki0047075b-MAL-ED          Wealth Q1            NA                -0.0417518   -0.1280015    0.0444979
6 months    ki1000108-CMC-V-BCS-2002   Wealth Q1            NA                 0.1469669    0.0720797    0.2218540
6 months    ki1000108-IRC              Wealth Q1            NA                -0.0019188   -0.0847334    0.0808958
6 months    ki1066203-TanzaniaChild2   Wealth Q1            NA                 0.0185412   -0.0239177    0.0610002
6 months    ki1113344-GMS-Nepal        Wealth Q1            NA                -0.0162185   -0.0845529    0.0521158
6 months    ki1135781-COHORTS          Wealth Q1            NA                -0.0317743   -0.0657948    0.0022462
6 months    ki1148112-LCNI-5           Wealth Q1            NA                 0.0280954   -0.0635738    0.1197646
9 months    ki0047075b-MAL-ED          Wealth Q1            NA                -0.0434059   -0.1358963    0.0490845
9 months    ki1000108-CMC-V-BCS-2002   Wealth Q1            NA                 0.1415797    0.0534767    0.2296828
9 months    ki1000108-IRC              Wealth Q1            NA                -0.0510823   -0.1409176    0.0387531
9 months    ki1017093b-PROVIDE         Wealth Q1            NA                -0.1658228   -0.3188842   -0.0127614
9 months    ki1066203-TanzaniaChild2   Wealth Q1            NA                 0.0143490   -0.0456755    0.0743735
9 months    ki1113344-GMS-Nepal        Wealth Q1            NA                -0.0449344   -0.1224330    0.0325642
9 months    ki1135781-COHORTS          Wealth Q1            NA                -0.0647633   -0.1016211   -0.0279055
9 months    ki1148112-LCNI-5           Wealth Q1            NA                 0.0246316   -0.0795453    0.1288086
12 months   ki0047075b-MAL-ED          Wealth Q1            NA                -0.1018880   -0.2043199    0.0005440
12 months   ki1000108-CMC-V-BCS-2002   Wealth Q1            NA                 0.0427372   -0.0614868    0.1469611
12 months   ki1000108-IRC              Wealth Q1            NA                -0.0722812   -0.1651119    0.0205496
12 months   ki1017093b-PROVIDE         Wealth Q1            NA                -0.1718778   -0.3337560   -0.0099995
12 months   ki1066203-TanzaniaChild2   Wealth Q1            NA                 0.0371565   -0.0237354    0.0980484
12 months   ki1113344-GMS-Nepal        Wealth Q1            NA                -0.0219918   -0.1017969    0.0578133
12 months   ki1135781-COHORTS          Wealth Q1            NA                -0.0868050   -0.1257323   -0.0478776
12 months   ki1148112-LCNI-5           Wealth Q1            NA                -0.0200747   -0.1308499    0.0907005
18 months   ki0047075b-MAL-ED          Wealth Q1            NA                -0.0885253   -0.1936238    0.0165732
18 months   ki1000108-CMC-V-BCS-2002   Wealth Q1            NA                 0.0216802   -0.0758843    0.1192447
18 months   ki1000108-IRC              Wealth Q1            NA                -0.0482906   -0.1428572    0.0462760
18 months   ki1017093b-PROVIDE         Wealth Q1            NA                -0.2782645   -0.4416587   -0.1148703
18 months   ki1066203-TanzaniaChild2   Wealth Q1            NA                 0.0955774    0.0076003    0.1835545
18 months   ki1113344-GMS-Nepal        Wealth Q1            NA                -0.0320539   -0.1158327    0.0517250
18 months   ki1135781-COHORTS          Wealth Q1            NA                -0.1042850   -0.1402623   -0.0683076
18 months   ki1148112-LCNI-5           Wealth Q1            NA                -0.0129645   -0.1194869    0.0935579
24 months   ki0047075b-MAL-ED          Wealth Q1            NA                -0.1309091   -0.2341665   -0.0276517
24 months   ki1000108-CMC-V-BCS-2002   Wealth Q1            NA                -0.0541770   -0.1409688    0.0326148
24 months   ki1000108-IRC              Wealth Q1            NA                -0.0986378   -0.1946451   -0.0026305
24 months   ki1017093b-PROVIDE         Wealth Q1            NA                -0.2593762   -0.4269543   -0.0917981
24 months   ki1113344-GMS-Nepal        Wealth Q1            NA                -0.0491692   -0.1362819    0.0379435
24 months   ki1135781-COHORTS          Wealth Q1            NA                -0.0884066   -0.1236420   -0.0531711
24 months   ki1148112-LCNI-5           Wealth Q1            NA                 0.0368601   -0.0825697    0.1562898


### Parameter: PAF


agecat      studyid                    intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          Wealth Q1            NA                 0.0863422   -0.6186741    0.4842875
Birth       ki1000108-IRC              Wealth Q1            NA                 0.2961451   -0.3692185    0.6381792
Birth       ki1135781-COHORTS          Wealth Q1            NA                -0.1886310   -0.5337961    0.0788583
3 months    ki0047075b-MAL-ED          Wealth Q1            NA                -0.2326165   -0.8423818    0.1753374
3 months    ki1000108-CMC-V-BCS-2002   Wealth Q1            NA                 0.4190123    0.0379243    0.6491475
3 months    ki1000108-IRC              Wealth Q1            NA                 0.0203035   -0.4068939    0.3177842
3 months    ki1066203-TanzaniaChild2   Wealth Q1            NA                 0.2020389   -0.5074152    0.5775936
3 months    ki1113344-GMS-Nepal        Wealth Q1            NA                -0.1174168   -0.6117234    0.2252887
3 months    ki1135781-COHORTS          Wealth Q1            NA                -0.0907303   -0.2847769    0.0740085
6 months    ki0047075b-MAL-ED          Wealth Q1            NA                -0.2397361   -0.8492415    0.1688779
6 months    ki1000108-CMC-V-BCS-2002   Wealth Q1            NA                 0.4885655    0.1704862    0.6846764
6 months    ki1000108-IRC              Wealth Q1            NA                -0.0078095   -0.4080876    0.2786812
6 months    ki1066203-TanzaniaChild2   Wealth Q1            NA                 0.2072498   -0.4422111    0.5642435
6 months    ki1113344-GMS-Nepal        Wealth Q1            NA                -0.0767314   -0.4538393    0.2025594
6 months    ki1135781-COHORTS          Wealth Q1            NA                -0.1297348   -0.2775587    0.0009846
6 months    ki1148112-LCNI-5           Wealth Q1            NA                 0.0763667   -0.2096030    0.2947286
9 months    ki0047075b-MAL-ED          Wealth Q1            NA                -0.1918435   -0.6799090    0.1544239
9 months    ki1000108-CMC-V-BCS-2002   Wealth Q1            NA                 0.3838384    0.0931274    0.5813578
9 months    ki1000108-IRC              Wealth Q1            NA                -0.1873016   -0.5673680    0.1006037
9 months    ki1017093b-PROVIDE         Wealth Q1            NA                -0.7081081   -1.5134588   -0.1608041
9 months    ki1066203-TanzaniaChild2   Wealth Q1            NA                 0.0986209   -0.4244384    0.4296107
9 months    ki1113344-GMS-Nepal        Wealth Q1            NA                -0.1597346   -0.4707705    0.0855239
9 months    ki1135781-COHORTS          Wealth Q1            NA                -0.2004730   -0.3202222   -0.0915854
9 months    ki1148112-LCNI-5           Wealth Q1            NA                 0.0788709   -0.3229898    0.3586657
12 months   ki0047075b-MAL-ED          Wealth Q1            NA                -0.3180676   -0.6806835   -0.0336880
12 months   ki1000108-CMC-V-BCS-2002   Wealth Q1            NA                 0.0859414   -0.1496006    0.2732231
12 months   ki1000108-IRC              Wealth Q1            NA                -0.2466063   -0.6076042    0.0333272
12 months   ki1017093b-PROVIDE         Wealth Q1            NA                -0.5976658   -1.2783789   -0.1203300
12 months   ki1066203-TanzaniaChild2   Wealth Q1            NA                 0.2543793   -0.3038893    0.5736216
12 months   ki1113344-GMS-Nepal        Wealth Q1            NA                -0.0642483   -0.3249152    0.1451344
12 months   ki1135781-COHORTS          Wealth Q1            NA                -0.1979897   -0.2902044   -0.1123659
12 months   ki1148112-LCNI-5           Wealth Q1            NA                -0.0491429   -0.3586113    0.1898340
18 months   ki0047075b-MAL-ED          Wealth Q1            NA                -0.1959806   -0.4530858    0.0156330
18 months   ki1000108-CMC-V-BCS-2002   Wealth Q1            NA                 0.0314961   -0.1211335    0.1633468
18 months   ki1000108-IRC              Wealth Q1            NA                -0.1358173   -0.4356589    0.1014015
18 months   ki1017093b-PROVIDE         Wealth Q1            NA                -0.7545249   -1.2741552   -0.3536269
18 months   ki1066203-TanzaniaChild2   Wealth Q1            NA                 0.3612262   -0.0726215    0.6195937
18 months   ki1113344-GMS-Nepal        Wealth Q1            NA                -0.0603754   -0.2305331    0.0862528
18 months   ki1135781-COHORTS          Wealth Q1            NA                -0.1671888   -0.2263937   -0.1108421
18 months   ki1148112-LCNI-5           Wealth Q1            NA                -0.0263016   -0.2668559    0.1685756
24 months   ki0047075b-MAL-ED          Wealth Q1            NA                -0.2845850   -0.5305106   -0.0781752
24 months   ki1000108-CMC-V-BCS-2002   Wealth Q1            NA                -0.0757663   -0.2042838    0.0390362
24 months   ki1000108-IRC              Wealth Q1            NA                -0.2373109   -0.4917097   -0.0262978
24 months   ki1017093b-PROVIDE         Wealth Q1            NA                -0.7887155   -1.3922771   -0.3374300
24 months   ki1113344-GMS-Nepal        Wealth Q1            NA                -0.1100244   -0.3231594    0.0687788
24 months   ki1135781-COHORTS          Wealth Q1            NA                -0.1352533   -0.1905224   -0.0825501
24 months   ki1148112-LCNI-5           Wealth Q1            NA                 0.0843750   -0.2341390    0.3206850


