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

**Outcome Variable:** ever_stunted

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

### Dropped Strata

Some strata were dropped due to rare outcomes:

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness




# Results Detail

## Results Plots
![](/tmp/13d78d9d-6cb3-4598-8984-a04112790bde/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/13d78d9d-6cb3-4598-8984-a04112790bde/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/13d78d9d-6cb3-4598-8984-a04112790bde/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/13d78d9d-6cb3-4598-8984-a04112790bde/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Data Summary

agecat      studyid                    A               n     nA   nAY0   nAY1
----------  -------------------------  ----------  -----  -----  -----  -----
3 months    ki0047075b-MAL-ED          Wealth Q1     363     91     67     24
3 months    ki0047075b-MAL-ED          Wealth Q2     363     88     67     21
3 months    ki0047075b-MAL-ED          Wealth Q3     363     92     60     32
3 months    ki0047075b-MAL-ED          Wealth Q4     363     92     69     23
3 months    ki1000108-CMC-V-BCS-2002   Wealth Q1     362     90     71     19
3 months    ki1000108-CMC-V-BCS-2002   Wealth Q2     362     91     60     31
3 months    ki1000108-CMC-V-BCS-2002   Wealth Q3     362     89     59     30
3 months    ki1000108-CMC-V-BCS-2002   Wealth Q4     362     92     47     45
3 months    ki1000108-IRC              Wealth Q1     410    105     69     36
3 months    ki1000108-IRC              Wealth Q2     410    102     66     36
3 months    ki1000108-IRC              Wealth Q3     410    103     74     29
3 months    ki1000108-IRC              Wealth Q4     410    100     71     29
3 months    ki1017093b-PROVIDE         Wealth Q1     175     45     31     14
3 months    ki1017093b-PROVIDE         Wealth Q2     175     40     31      9
3 months    ki1017093b-PROVIDE         Wealth Q3     175     42     29     13
3 months    ki1017093b-PROVIDE         Wealth Q4     175     48     40      8
3 months    ki1066203-TanzaniaChild2   Wealth Q1     600    171    159     12
3 months    ki1066203-TanzaniaChild2   Wealth Q2     600    114    102     12
3 months    ki1066203-TanzaniaChild2   Wealth Q3     600    171    155     16
3 months    ki1066203-TanzaniaChild2   Wealth Q4     600    144    125     19
3 months    ki1113344-GMS-Nepal        Wealth Q1     593    150    123     27
3 months    ki1113344-GMS-Nepal        Wealth Q2     593    148    125     23
3 months    ki1113344-GMS-Nepal        Wealth Q3     593    149    126     23
3 months    ki1113344-GMS-Nepal        Wealth Q4     593    146    125     21
3 months    ki1114097-CONTENT          Wealth Q1     215     59     50      9
3 months    ki1114097-CONTENT          Wealth Q2     215     52     43      9
3 months    ki1114097-CONTENT          Wealth Q3     215     52     45      7
3 months    ki1114097-CONTENT          Wealth Q4     215     52     42     10
3 months    ki1135781-COHORTS          Wealth Q1    3537    794    652    142
3 months    ki1135781-COHORTS          Wealth Q2    3537    628    505    123
3 months    ki1135781-COHORTS          Wealth Q3    3537   1086    909    177
3 months    ki1135781-COHORTS          Wealth Q4    3537   1029    898    131
3 months    ki1148112-LCNI-5           Wealth Q1       0      0      0      0
3 months    ki1148112-LCNI-5           Wealth Q2       0      0      0      0
3 months    ki1148112-LCNI-5           Wealth Q3       0      0      0      0
3 months    ki1148112-LCNI-5           Wealth Q4       0      0      0      0
6 months    ki0047075b-MAL-ED          Wealth Q1     362     90     59     31
6 months    ki0047075b-MAL-ED          Wealth Q2     362     88     60     28
6 months    ki0047075b-MAL-ED          Wealth Q3     362     92     55     37
6 months    ki0047075b-MAL-ED          Wealth Q4     362     92     63     29
6 months    ki1000108-CMC-V-BCS-2002   Wealth Q1     367     90     55     35
6 months    ki1000108-CMC-V-BCS-2002   Wealth Q2     367     92     45     47
6 months    ki1000108-CMC-V-BCS-2002   Wealth Q3     367     90     48     42
6 months    ki1000108-CMC-V-BCS-2002   Wealth Q4     367     95     31     64
6 months    ki1000108-IRC              Wealth Q1     408    105     61     44
6 months    ki1000108-IRC              Wealth Q2     408    101     51     50
6 months    ki1000108-IRC              Wealth Q3     408    102     63     39
6 months    ki1000108-IRC              Wealth Q4     408    100     60     40
6 months    ki1017093b-PROVIDE         Wealth Q1     166     42     27     15
6 months    ki1017093b-PROVIDE         Wealth Q2     166     38     29      9
6 months    ki1017093b-PROVIDE         Wealth Q3     166     39     26     13
6 months    ki1017093b-PROVIDE         Wealth Q4     166     47     36     11
6 months    ki1066203-TanzaniaChild2   Wealth Q1     556    161    137     24
6 months    ki1066203-TanzaniaChild2   Wealth Q2     556    107     88     19
6 months    ki1066203-TanzaniaChild2   Wealth Q3     556    162    125     37
6 months    ki1066203-TanzaniaChild2   Wealth Q4     556    126     98     28
6 months    ki1113344-GMS-Nepal        Wealth Q1     567    145     99     46
6 months    ki1113344-GMS-Nepal        Wealth Q2     567    143    103     40
6 months    ki1113344-GMS-Nepal        Wealth Q3     567    137     97     40
6 months    ki1113344-GMS-Nepal        Wealth Q4     567    142    106     36
6 months    ki1114097-CONTENT          Wealth Q1     215     59     45     14
6 months    ki1114097-CONTENT          Wealth Q2     215     52     40     12
6 months    ki1114097-CONTENT          Wealth Q3     215     52     42     10
6 months    ki1114097-CONTENT          Wealth Q4     215     52     40     12
6 months    ki1135781-COHORTS          Wealth Q1    2941    642    455    187
6 months    ki1135781-COHORTS          Wealth Q2    2941    524    381    143
6 months    ki1135781-COHORTS          Wealth Q3    2941    954    699    255
6 months    ki1135781-COHORTS          Wealth Q4    2941    821    656    165
6 months    ki1148112-LCNI-5           Wealth Q1     132     33     23     10
6 months    ki1148112-LCNI-5           Wealth Q2     132     28     17     11
6 months    ki1148112-LCNI-5           Wealth Q3     132     30     14     16
6 months    ki1148112-LCNI-5           Wealth Q4     132     41     27     14
12 months   ki0047075b-MAL-ED          Wealth Q1     361     90     40     50
12 months   ki0047075b-MAL-ED          Wealth Q2     361     88     46     42
12 months   ki0047075b-MAL-ED          Wealth Q3     361     91     48     43
12 months   ki0047075b-MAL-ED          Wealth Q4     361     92     54     38
12 months   ki1000108-CMC-V-BCS-2002   Wealth Q1     372     90     32     58
12 months   ki1000108-CMC-V-BCS-2002   Wealth Q2     372     95     27     68
12 months   ki1000108-CMC-V-BCS-2002   Wealth Q3     372     91     32     59
12 months   ki1000108-CMC-V-BCS-2002   Wealth Q4     372     96     21     75
12 months   ki1000108-IRC              Wealth Q1     408    105     48     57
12 months   ki1000108-IRC              Wealth Q2     408    101     43     58
12 months   ki1000108-IRC              Wealth Q3     408    103     57     46
12 months   ki1000108-IRC              Wealth Q4     408     99     53     46
12 months   ki1017093b-PROVIDE         Wealth Q1     159     40     20     20
12 months   ki1017093b-PROVIDE         Wealth Q2     159     36     25     11
12 months   ki1017093b-PROVIDE         Wealth Q3     159     39     24     15
12 months   ki1017093b-PROVIDE         Wealth Q4     159     44     34     10
12 months   ki1066203-TanzaniaChild2   Wealth Q1     495    144    104     40
12 months   ki1066203-TanzaniaChild2   Wealth Q2     495     94     64     30
12 months   ki1066203-TanzaniaChild2   Wealth Q3     495    143     96     47
12 months   ki1066203-TanzaniaChild2   Wealth Q4     495    114     73     41
12 months   ki1113344-GMS-Nepal        Wealth Q1     582    148     74     74
12 months   ki1113344-GMS-Nepal        Wealth Q2     582    146     83     63
12 months   ki1113344-GMS-Nepal        Wealth Q3     582    142     81     61
12 months   ki1113344-GMS-Nepal        Wealth Q4     582    146     79     67
12 months   ki1114097-CONTENT          Wealth Q1     215     59     43     16
12 months   ki1114097-CONTENT          Wealth Q2     215     52     39     13
12 months   ki1114097-CONTENT          Wealth Q3     215     52     39     13
12 months   ki1114097-CONTENT          Wealth Q4     215     52     40     12
12 months   ki1135781-COHORTS          Wealth Q1    3287    700    315    385
12 months   ki1135781-COHORTS          Wealth Q2    3287    596    290    306
12 months   ki1135781-COHORTS          Wealth Q3    3287   1022    523    499
12 months   ki1135781-COHORTS          Wealth Q4    3287    969    567    402
12 months   ki1148112-LCNI-5           Wealth Q1     392     95     46     49
12 months   ki1148112-LCNI-5           Wealth Q2     392     93     49     44
12 months   ki1148112-LCNI-5           Wealth Q3     392     95     46     49
12 months   ki1148112-LCNI-5           Wealth Q4     392    109     62     47
18 months   ki0047075b-MAL-ED          Wealth Q1     360     90     28     62
18 months   ki0047075b-MAL-ED          Wealth Q2     360     88     30     58
18 months   ki0047075b-MAL-ED          Wealth Q3     360     90     38     52
18 months   ki0047075b-MAL-ED          Wealth Q4     360     92     43     49
18 months   ki1000108-CMC-V-BCS-2002   Wealth Q1     373     91     19     72
18 months   ki1000108-CMC-V-BCS-2002   Wealth Q2     373     95     16     79
18 months   ki1000108-CMC-V-BCS-2002   Wealth Q3     373     91     13     78
18 months   ki1000108-CMC-V-BCS-2002   Wealth Q4     373     96      9     87
18 months   ki1000108-IRC              Wealth Q1     409    105     42     63
18 months   ki1000108-IRC              Wealth Q2     409    102     40     62
18 months   ki1000108-IRC              Wealth Q3     409    103     45     58
18 months   ki1000108-IRC              Wealth Q4     409     99     52     47
18 months   ki1017093b-PROVIDE         Wealth Q1     155     38     11     27
18 months   ki1017093b-PROVIDE         Wealth Q2     155     34     20     14
18 months   ki1017093b-PROVIDE         Wealth Q3     155     38     23     15
18 months   ki1017093b-PROVIDE         Wealth Q4     155     45     31     14
18 months   ki1066203-TanzaniaChild2   Wealth Q1     359    103     63     40
18 months   ki1066203-TanzaniaChild2   Wealth Q2     359     68     41     27
18 months   ki1066203-TanzaniaChild2   Wealth Q3     359    103     52     51
18 months   ki1066203-TanzaniaChild2   Wealth Q4     359     85     50     35
18 months   ki1113344-GMS-Nepal        Wealth Q1     574    144     49     95
18 months   ki1113344-GMS-Nepal        Wealth Q2     574    144     53     91
18 months   ki1113344-GMS-Nepal        Wealth Q3     574    139     57     82
18 months   ki1113344-GMS-Nepal        Wealth Q4     574    147     57     90
18 months   ki1114097-CONTENT          Wealth Q1     214     59     40     19
18 months   ki1114097-CONTENT          Wealth Q2     214     52     39     13
18 months   ki1114097-CONTENT          Wealth Q3     214     52     39     13
18 months   ki1114097-CONTENT          Wealth Q4     214     51     36     15
18 months   ki1135781-COHORTS          Wealth Q1    3063    634    162    472
18 months   ki1135781-COHORTS          Wealth Q2    3063    551    183    368
18 months   ki1135781-COHORTS          Wealth Q3    3063    961    312    649
18 months   ki1135781-COHORTS          Wealth Q4    3063    917    423    494
18 months   ki1148112-LCNI-5           Wealth Q1     325     76     36     40
18 months   ki1148112-LCNI-5           Wealth Q2     325     79     33     46
18 months   ki1148112-LCNI-5           Wealth Q3     325     76     29     47
18 months   ki1148112-LCNI-5           Wealth Q4     325     94     42     52
24 months   ki0047075b-MAL-ED          Wealth Q1     353     88     21     67
24 months   ki0047075b-MAL-ED          Wealth Q2     353     86     23     63
24 months   ki0047075b-MAL-ED          Wealth Q3     353     87     32     55
24 months   ki0047075b-MAL-ED          Wealth Q4     353     92     41     51
24 months   ki1000108-CMC-V-BCS-2002   Wealth Q1     373     91      6     85
24 months   ki1000108-CMC-V-BCS-2002   Wealth Q2     373     95      8     87
24 months   ki1000108-CMC-V-BCS-2002   Wealth Q3     373     91      8     83
24 months   ki1000108-CMC-V-BCS-2002   Wealth Q4     373     96      6     90
24 months   ki1000108-IRC              Wealth Q1     410    105     34     71
24 months   ki1000108-IRC              Wealth Q2     410    102     32     70
24 months   ki1000108-IRC              Wealth Q3     410    103     33     70
24 months   ki1000108-IRC              Wealth Q4     410    100     48     52
24 months   ki1017093b-PROVIDE         Wealth Q1     148     34      9     25
24 months   ki1017093b-PROVIDE         Wealth Q2     148     34     20     14
24 months   ki1017093b-PROVIDE         Wealth Q3     148     38     19     19
24 months   ki1017093b-PROVIDE         Wealth Q4     148     42     28     14
24 months   ki1066203-TanzaniaChild2   Wealth Q1     250     70     41     29
24 months   ki1066203-TanzaniaChild2   Wealth Q2     250     46     22     24
24 months   ki1066203-TanzaniaChild2   Wealth Q3     250     76     36     40
24 months   ki1066203-TanzaniaChild2   Wealth Q4     250     58     32     26
24 months   ki1113344-GMS-Nepal        Wealth Q1     568    144     40    104
24 months   ki1113344-GMS-Nepal        Wealth Q2     568    143     40    103
24 months   ki1113344-GMS-Nepal        Wealth Q3     568    134     46     88
24 months   ki1113344-GMS-Nepal        Wealth Q4     568    147     50     97
24 months   ki1114097-CONTENT          Wealth Q1     197     54     36     18
24 months   ki1114097-CONTENT          Wealth Q2     197     47     34     13
24 months   ki1114097-CONTENT          Wealth Q3     197     50     38     12
24 months   ki1114097-CONTENT          Wealth Q4     197     46     32     14
24 months   ki1135781-COHORTS          Wealth Q1    3018    617     91    526
24 months   ki1135781-COHORTS          Wealth Q2    3018    534    113    421
24 months   ki1135781-COHORTS          Wealth Q3    3018    948    173    775
24 months   ki1135781-COHORTS          Wealth Q4    3018    919    304    615
24 months   ki1148112-LCNI-5           Wealth Q1     351     82     29     53
24 months   ki1148112-LCNI-5           Wealth Q2     351     85     29     56
24 months   ki1148112-LCNI-5           Wealth Q3     351     84     24     60
24 months   ki1148112-LCNI-5           Wealth Q4     351    100     39     61

## Results Table

### Parameter: TSM


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki0047075b-MAL-ED          Wealth Q1            NA                0.2637363   0.1730737   0.3543988
3 months    ki0047075b-MAL-ED          Wealth Q2            NA                0.2386364   0.1494558   0.3278169
3 months    ki0047075b-MAL-ED          Wealth Q3            NA                0.3478261   0.2503684   0.4452837
3 months    ki0047075b-MAL-ED          Wealth Q4            NA                0.2500000   0.1613959   0.3386041
3 months    ki1000108-CMC-V-BCS-2002   Wealth Q1            NA                0.2111111   0.1266822   0.2955400
3 months    ki1000108-CMC-V-BCS-2002   Wealth Q2            NA                0.3406593   0.2431507   0.4381680
3 months    ki1000108-CMC-V-BCS-2002   Wealth Q3            NA                0.3370787   0.2387341   0.4354232
3 months    ki1000108-CMC-V-BCS-2002   Wealth Q4            NA                0.4891304   0.3868430   0.5914179
3 months    ki1000108-IRC              Wealth Q1            NA                0.3428571   0.2519558   0.4337585
3 months    ki1000108-IRC              Wealth Q2            NA                0.3529412   0.2600870   0.4457953
3 months    ki1000108-IRC              Wealth Q3            NA                0.2815534   0.1945898   0.3685170
3 months    ki1000108-IRC              Wealth Q4            NA                0.2900000   0.2009556   0.3790444
3 months    ki1017093b-PROVIDE         Wealth Q1            NA                0.3111111   0.1754615   0.4467607
3 months    ki1017093b-PROVIDE         Wealth Q2            NA                0.2250000   0.0952209   0.3547791
3 months    ki1017093b-PROVIDE         Wealth Q3            NA                0.3095238   0.1693105   0.4497371
3 months    ki1017093b-PROVIDE         Wealth Q4            NA                0.1666667   0.0609349   0.2723985
3 months    ki1066203-TanzaniaChild2   Wealth Q1            NA                0.0701754   0.0318572   0.1084937
3 months    ki1066203-TanzaniaChild2   Wealth Q2            NA                0.1052632   0.0488807   0.1616456
3 months    ki1066203-TanzaniaChild2   Wealth Q3            NA                0.0935673   0.0498813   0.1372532
3 months    ki1066203-TanzaniaChild2   Wealth Q4            NA                0.1319444   0.0766224   0.1872665
3 months    ki1113344-GMS-Nepal        Wealth Q1            NA                0.1800000   0.1184664   0.2415336
3 months    ki1113344-GMS-Nepal        Wealth Q2            NA                0.1554054   0.0969882   0.2138226
3 months    ki1113344-GMS-Nepal        Wealth Q3            NA                0.1543624   0.0963014   0.2124234
3 months    ki1113344-GMS-Nepal        Wealth Q4            NA                0.1438356   0.0868651   0.2008061
3 months    ki1114097-CONTENT          Wealth Q1            NA                0.1525424   0.0605846   0.2445002
3 months    ki1114097-CONTENT          Wealth Q2            NA                0.1730769   0.0700120   0.2761419
3 months    ki1114097-CONTENT          Wealth Q3            NA                0.1346154   0.0416309   0.2275999
3 months    ki1114097-CONTENT          Wealth Q4            NA                0.1923077   0.0849384   0.2996770
3 months    ki1135781-COHORTS          Wealth Q1            NA                0.1788413   0.1521821   0.2055005
3 months    ki1135781-COHORTS          Wealth Q2            NA                0.1958599   0.1648165   0.2269032
3 months    ki1135781-COHORTS          Wealth Q3            NA                0.1629834   0.1410133   0.1849536
3 months    ki1135781-COHORTS          Wealth Q4            NA                0.1273081   0.1069395   0.1476766
6 months    ki0047075b-MAL-ED          Wealth Q1            NA                0.3444444   0.2461358   0.4427531
6 months    ki0047075b-MAL-ED          Wealth Q2            NA                0.3181818   0.2207324   0.4156313
6 months    ki0047075b-MAL-ED          Wealth Q3            NA                0.4021739   0.3018397   0.5025082
6 months    ki0047075b-MAL-ED          Wealth Q4            NA                0.3152174   0.2201490   0.4102858
6 months    ki1000108-CMC-V-BCS-2002   Wealth Q1            NA                0.3888889   0.2880351   0.4897427
6 months    ki1000108-CMC-V-BCS-2002   Wealth Q2            NA                0.5108696   0.4085841   0.6131551
6 months    ki1000108-CMC-V-BCS-2002   Wealth Q3            NA                0.4666667   0.3634566   0.5698767
6 months    ki1000108-CMC-V-BCS-2002   Wealth Q4            NA                0.6736842   0.5792725   0.7680960
6 months    ki1000108-IRC              Wealth Q1            NA                0.4190476   0.3245571   0.5135381
6 months    ki1000108-IRC              Wealth Q2            NA                0.4950495   0.3974227   0.5926763
6 months    ki1000108-IRC              Wealth Q3            NA                0.3823529   0.2879287   0.4767771
6 months    ki1000108-IRC              Wealth Q4            NA                0.4000000   0.3038639   0.4961361
6 months    ki1017093b-PROVIDE         Wealth Q1            NA                0.3571429   0.2117933   0.5024924
6 months    ki1017093b-PROVIDE         Wealth Q2            NA                0.2368421   0.1012592   0.3724250
6 months    ki1017093b-PROVIDE         Wealth Q3            NA                0.3333333   0.1849375   0.4817291
6 months    ki1017093b-PROVIDE         Wealth Q4            NA                0.2340426   0.1126307   0.3554544
6 months    ki1066203-TanzaniaChild2   Wealth Q1            NA                0.1490683   0.0940045   0.2041321
6 months    ki1066203-TanzaniaChild2   Wealth Q2            NA                0.1775701   0.1050962   0.2500440
6 months    ki1066203-TanzaniaChild2   Wealth Q3            NA                0.2283951   0.1636924   0.2930978
6 months    ki1066203-TanzaniaChild2   Wealth Q4            NA                0.2222222   0.1495656   0.2948788
6 months    ki1113344-GMS-Nepal        Wealth Q1            NA                0.3172414   0.2414228   0.3930600
6 months    ki1113344-GMS-Nepal        Wealth Q2            NA                0.2797203   0.2060867   0.3533539
6 months    ki1113344-GMS-Nepal        Wealth Q3            NA                0.2919708   0.2157688   0.3681728
6 months    ki1113344-GMS-Nepal        Wealth Q4            NA                0.2535211   0.1819063   0.3251360
6 months    ki1114097-CONTENT          Wealth Q1            NA                0.2372881   0.1284822   0.3460941
6 months    ki1114097-CONTENT          Wealth Q2            NA                0.2307692   0.1159866   0.3455518
6 months    ki1114097-CONTENT          Wealth Q3            NA                0.1923077   0.0849384   0.2996770
6 months    ki1114097-CONTENT          Wealth Q4            NA                0.2307692   0.1159866   0.3455518
6 months    ki1135781-COHORTS          Wealth Q1            NA                0.2912773   0.2561256   0.3264289
6 months    ki1135781-COHORTS          Wealth Q2            NA                0.2729008   0.2347542   0.3110473
6 months    ki1135781-COHORTS          Wealth Q3            NA                0.2672956   0.2392084   0.2953828
6 months    ki1135781-COHORTS          Wealth Q4            NA                0.2009744   0.1735586   0.2283902
6 months    ki1148112-LCNI-5           Wealth Q1            NA                0.3030303   0.1456348   0.4604258
6 months    ki1148112-LCNI-5           Wealth Q2            NA                0.3928571   0.2112708   0.5744435
6 months    ki1148112-LCNI-5           Wealth Q3            NA                0.5333333   0.3541319   0.7125348
6 months    ki1148112-LCNI-5           Wealth Q4            NA                0.3414634   0.1957601   0.4871668
12 months   ki0047075b-MAL-ED          Wealth Q1            NA                0.5555556   0.4527535   0.6583576
12 months   ki0047075b-MAL-ED          Wealth Q2            NA                0.4772727   0.3727694   0.5817760
12 months   ki0047075b-MAL-ED          Wealth Q3            NA                0.4725275   0.3698103   0.5752447
12 months   ki0047075b-MAL-ED          Wealth Q4            NA                0.4130435   0.3122906   0.5137963
12 months   ki1000108-CMC-V-BCS-2002   Wealth Q1            NA                0.6444444   0.5454165   0.7434724
12 months   ki1000108-CMC-V-BCS-2002   Wealth Q2            NA                0.7157895   0.6249690   0.8066099
12 months   ki1000108-CMC-V-BCS-2002   Wealth Q3            NA                0.6483516   0.5501155   0.7465878
12 months   ki1000108-CMC-V-BCS-2002   Wealth Q4            NA                0.7812500   0.6984432   0.8640568
12 months   ki1000108-IRC              Wealth Q1            NA                0.5428571   0.4474557   0.6382586
12 months   ki1000108-IRC              Wealth Q2            NA                0.5742574   0.4777086   0.6708063
12 months   ki1000108-IRC              Wealth Q3            NA                0.4466019   0.3504758   0.5427281
12 months   ki1000108-IRC              Wealth Q4            NA                0.4646465   0.3662805   0.5630125
12 months   ki1017093b-PROVIDE         Wealth Q1            NA                0.5000000   0.3445617   0.6554383
12 months   ki1017093b-PROVIDE         Wealth Q2            NA                0.3055556   0.1546064   0.4565047
12 months   ki1017093b-PROVIDE         Wealth Q3            NA                0.3846154   0.2314458   0.5377849
12 months   ki1017093b-PROVIDE         Wealth Q4            NA                0.2272727   0.1030564   0.3514890
12 months   ki1066203-TanzaniaChild2   Wealth Q1            NA                0.2777778   0.2045476   0.3510080
12 months   ki1066203-TanzaniaChild2   Wealth Q2            NA                0.3191489   0.2248198   0.4134781
12 months   ki1066203-TanzaniaChild2   Wealth Q3            NA                0.3286713   0.2516045   0.4057382
12 months   ki1066203-TanzaniaChild2   Wealth Q4            NA                0.3596491   0.2714664   0.4478318
12 months   ki1113344-GMS-Nepal        Wealth Q1            NA                0.5000000   0.4193767   0.5806233
12 months   ki1113344-GMS-Nepal        Wealth Q2            NA                0.4315069   0.3510984   0.5119153
12 months   ki1113344-GMS-Nepal        Wealth Q3            NA                0.4295775   0.3480889   0.5110660
12 months   ki1113344-GMS-Nepal        Wealth Q4            NA                0.4589041   0.3780051   0.5398031
12 months   ki1114097-CONTENT          Wealth Q1            NA                0.2711864   0.1574822   0.3848907
12 months   ki1114097-CONTENT          Wealth Q2            NA                0.2500000   0.1320333   0.3679667
12 months   ki1114097-CONTENT          Wealth Q3            NA                0.2500000   0.1320333   0.3679667
12 months   ki1114097-CONTENT          Wealth Q4            NA                0.2307692   0.1159866   0.3455518
12 months   ki1135781-COHORTS          Wealth Q1            NA                0.5500000   0.5131402   0.5868598
12 months   ki1135781-COHORTS          Wealth Q2            NA                0.5134228   0.4732896   0.5535561
12 months   ki1135781-COHORTS          Wealth Q3            NA                0.4882583   0.4576077   0.5189089
12 months   ki1135781-COHORTS          Wealth Q4            NA                0.4148607   0.3838342   0.4458872
12 months   ki1148112-LCNI-5           Wealth Q1            NA                0.5157895   0.4151672   0.6164118
12 months   ki1148112-LCNI-5           Wealth Q2            NA                0.4731183   0.3715162   0.5747204
12 months   ki1148112-LCNI-5           Wealth Q3            NA                0.5157895   0.4151672   0.6164118
12 months   ki1148112-LCNI-5           Wealth Q4            NA                0.4311927   0.3381016   0.5242837
18 months   ki0047075b-MAL-ED          Wealth Q1            NA                0.6888889   0.5931115   0.7846663
18 months   ki0047075b-MAL-ED          Wealth Q2            NA                0.6590909   0.5599158   0.7582660
18 months   ki0047075b-MAL-ED          Wealth Q3            NA                0.5777778   0.4755940   0.6799615
18 months   ki0047075b-MAL-ED          Wealth Q4            NA                0.5326087   0.4305141   0.6347033
18 months   ki1000108-CMC-V-BCS-2002   Wealth Q1            NA                0.7912088   0.7075884   0.8748291
18 months   ki1000108-CMC-V-BCS-2002   Wealth Q2            NA                0.8315789   0.7562227   0.9069352
18 months   ki1000108-CMC-V-BCS-2002   Wealth Q3            NA                0.8571429   0.7851502   0.9291355
18 months   ki1000108-CMC-V-BCS-2002   Wealth Q4            NA                0.9062500   0.8478645   0.9646355
18 months   ki1000108-IRC              Wealth Q1            NA                0.6000000   0.5061810   0.6938190
18 months   ki1000108-IRC              Wealth Q2            NA                0.6078431   0.5129783   0.7027080
18 months   ki1000108-IRC              Wealth Q3            NA                0.5631068   0.4672012   0.6590124
18 months   ki1000108-IRC              Wealth Q4            NA                0.4747475   0.3762608   0.5732341
18 months   ki1017093b-PROVIDE         Wealth Q1            NA                0.7105263   0.5658637   0.8551890
18 months   ki1017093b-PROVIDE         Wealth Q2            NA                0.4117647   0.2458006   0.5777288
18 months   ki1017093b-PROVIDE         Wealth Q3            NA                0.3947368   0.2388219   0.5506518
18 months   ki1017093b-PROVIDE         Wealth Q4            NA                0.3111111   0.1754112   0.4468111
18 months   ki1066203-TanzaniaChild2   Wealth Q1            NA                0.3883495   0.2940959   0.4826032
18 months   ki1066203-TanzaniaChild2   Wealth Q2            NA                0.3970588   0.2806022   0.5135155
18 months   ki1066203-TanzaniaChild2   Wealth Q3            NA                0.4951456   0.3984549   0.5918363
18 months   ki1066203-TanzaniaChild2   Wealth Q4            NA                0.4117647   0.3069929   0.5165365
18 months   ki1113344-GMS-Nepal        Wealth Q1            NA                0.6597222   0.5822684   0.7371760
18 months   ki1113344-GMS-Nepal        Wealth Q2            NA                0.6319444   0.5531054   0.7107835
18 months   ki1113344-GMS-Nepal        Wealth Q3            NA                0.5899281   0.5080912   0.6717649
18 months   ki1113344-GMS-Nepal        Wealth Q4            NA                0.6122449   0.5334117   0.6910781
18 months   ki1114097-CONTENT          Wealth Q1            NA                0.3220339   0.2025267   0.4415411
18 months   ki1114097-CONTENT          Wealth Q2            NA                0.2500000   0.1320320   0.3679680
18 months   ki1114097-CONTENT          Wealth Q3            NA                0.2500000   0.1320320   0.3679680
18 months   ki1114097-CONTENT          Wealth Q4            NA                0.2941176   0.1687727   0.4194626
18 months   ki1135781-COHORTS          Wealth Q1            NA                0.7444795   0.7105237   0.7784353
18 months   ki1135781-COHORTS          Wealth Q2            NA                0.6678766   0.6285450   0.7072081
18 months   ki1135781-COHORTS          Wealth Q3            NA                0.6753382   0.6457285   0.7049479
18 months   ki1135781-COHORTS          Wealth Q4            NA                0.5387132   0.5064432   0.5709832
18 months   ki1148112-LCNI-5           Wealth Q1            NA                0.5263158   0.4138868   0.6387447
18 months   ki1148112-LCNI-5           Wealth Q2            NA                0.5822785   0.4733573   0.6911997
18 months   ki1148112-LCNI-5           Wealth Q3            NA                0.6184211   0.5090393   0.7278028
18 months   ki1148112-LCNI-5           Wealth Q4            NA                0.5531915   0.4525327   0.6538503
24 months   ki0047075b-MAL-ED          Wealth Q1            NA                0.7613636   0.6721796   0.8505477
24 months   ki0047075b-MAL-ED          Wealth Q2            NA                0.7325581   0.6388773   0.8262389
24 months   ki0047075b-MAL-ED          Wealth Q3            NA                0.6321839   0.5307130   0.7336548
24 months   ki0047075b-MAL-ED          Wealth Q4            NA                0.5543478   0.4526388   0.6560568
24 months   ki1000108-CMC-V-BCS-2002   Wealth Q1            NA                0.9340659   0.8830091   0.9851228
24 months   ki1000108-CMC-V-BCS-2002   Wealth Q2            NA                0.9157895   0.8598717   0.9717073
24 months   ki1000108-CMC-V-BCS-2002   Wealth Q3            NA                0.9120879   0.8538303   0.9703456
24 months   ki1000108-CMC-V-BCS-2002   Wealth Q4            NA                0.9375000   0.8890135   0.9859865
24 months   ki1000108-IRC              Wealth Q1            NA                0.6761905   0.5865791   0.7658018
24 months   ki1000108-IRC              Wealth Q2            NA                0.6862745   0.5961170   0.7764321
24 months   ki1000108-IRC              Wealth Q3            NA                0.6796117   0.5893863   0.7698370
24 months   ki1000108-IRC              Wealth Q4            NA                0.5200000   0.4219606   0.6180394
24 months   ki1017093b-PROVIDE         Wealth Q1            NA                0.7352941   0.5864975   0.8840908
24 months   ki1017093b-PROVIDE         Wealth Q2            NA                0.4117647   0.2457751   0.5777543
24 months   ki1017093b-PROVIDE         Wealth Q3            NA                0.5000000   0.3404861   0.6595139
24 months   ki1017093b-PROVIDE         Wealth Q4            NA                0.3333333   0.1902828   0.4763838
24 months   ki1066203-TanzaniaChild2   Wealth Q1            NA                0.4142857   0.2986579   0.5299135
24 months   ki1066203-TanzaniaChild2   Wealth Q2            NA                0.5217391   0.3770957   0.6663825
24 months   ki1066203-TanzaniaChild2   Wealth Q3            NA                0.5263158   0.4138348   0.6387968
24 months   ki1066203-TanzaniaChild2   Wealth Q4            NA                0.4482759   0.3200316   0.5765202
24 months   ki1113344-GMS-Nepal        Wealth Q1            NA                0.7222222   0.6490016   0.7954429
24 months   ki1113344-GMS-Nepal        Wealth Q2            NA                0.7202797   0.6466462   0.7939132
24 months   ki1113344-GMS-Nepal        Wealth Q3            NA                0.6567164   0.5762539   0.7371790
24 months   ki1113344-GMS-Nepal        Wealth Q4            NA                0.6598639   0.5832116   0.7365163
24 months   ki1114097-CONTENT          Wealth Q1            NA                0.3333333   0.2072812   0.4593854
24 months   ki1114097-CONTENT          Wealth Q2            NA                0.2765957   0.1483870   0.4048045
24 months   ki1114097-CONTENT          Wealth Q3            NA                0.2400000   0.1213192   0.3586808
24 months   ki1114097-CONTENT          Wealth Q4            NA                0.3043478   0.1710401   0.4376556
24 months   ki1135781-COHORTS          Wealth Q1            NA                0.8525122   0.8245284   0.8804959
24 months   ki1135781-COHORTS          Wealth Q2            NA                0.7883895   0.7537407   0.8230383
24 months   ki1135781-COHORTS          Wealth Q3            NA                0.8175105   0.7929193   0.8421018
24 months   ki1135781-COHORTS          Wealth Q4            NA                0.6692057   0.6387813   0.6996300
24 months   ki1148112-LCNI-5           Wealth Q1            NA                0.6463415   0.5427119   0.7499711
24 months   ki1148112-LCNI-5           Wealth Q2            NA                0.6588235   0.5578907   0.7597563
24 months   ki1148112-LCNI-5           Wealth Q3            NA                0.7142857   0.6175404   0.8110310
24 months   ki1148112-LCNI-5           Wealth Q4            NA                0.6100000   0.5142663   0.7057337


### Parameter: E(Y)


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki0047075b-MAL-ED          NA                   NA                0.2754821   0.2710457   0.2799185
3 months    ki1000108-CMC-V-BCS-2002   NA                   NA                0.3453039   0.3351147   0.3554930
3 months    ki1000108-IRC              NA                   NA                0.3170732   0.3140300   0.3201164
3 months    ki1017093b-PROVIDE         NA                   NA                0.2514286   0.2422017   0.2606555
3 months    ki1066203-TanzaniaChild2   NA                   NA                0.0983333   0.0965201   0.1001466
3 months    ki1113344-GMS-Nepal        NA                   NA                0.1585160   0.1574456   0.1595864
3 months    ki1114097-CONTENT          NA                   NA                0.1627907   0.1599261   0.1656553
3 months    ki1135781-COHORTS          NA                   NA                0.1620017   0.1611825   0.1628209
6 months    ki0047075b-MAL-ED          NA                   NA                0.3453039   0.3416846   0.3489232
6 months    ki1000108-CMC-V-BCS-2002   NA                   NA                0.5122616   0.5015225   0.5230007
6 months    ki1000108-IRC              NA                   NA                0.4240196   0.4198628   0.4281765
6 months    ki1017093b-PROVIDE         NA                   NA                0.2891566   0.2806413   0.2976719
6 months    ki1066203-TanzaniaChild2   NA                   NA                0.1942446   0.1914090   0.1970802
6 months    ki1113344-GMS-Nepal        NA                   NA                0.2857143   0.2838136   0.2876149
6 months    ki1114097-CONTENT          NA                   NA                0.2232558   0.2208855   0.2256261
6 months    ki1135781-COHORTS          NA                   NA                0.2550153   0.2537589   0.2562718
6 months    ki1148112-LCNI-5           NA                   NA                0.3863636   0.3717523   0.4009749
12 months   ki0047075b-MAL-ED          NA                   NA                0.4792244   0.4739764   0.4844724
12 months   ki1000108-CMC-V-BCS-2002   NA                   NA                0.6989247   0.6931997   0.7046497
12 months   ki1000108-IRC              NA                   NA                0.5073529   0.5022060   0.5124999
12 months   ki1017093b-PROVIDE         NA                   NA                0.3522013   0.3361744   0.3682282
12 months   ki1066203-TanzaniaChild2   NA                   NA                0.3191919   0.3165437   0.3218401
12 months   ki1113344-GMS-Nepal        NA                   NA                0.4553265   0.4530054   0.4576475
12 months   ki1114097-CONTENT          NA                   NA                0.2511628   0.2492154   0.2531102
12 months   ki1135781-COHORTS          NA                   NA                0.4843322   0.4826229   0.4860416
12 months   ki1148112-LCNI-5           NA                   NA                0.4821429   0.4785830   0.4857027
18 months   ki0047075b-MAL-ED          NA                   NA                0.6138889   0.6074123   0.6203655
18 months   ki1000108-CMC-V-BCS-2002   NA                   NA                0.8471850   0.8429357   0.8514343
18 months   ki1000108-IRC              NA                   NA                0.5623472   0.5572701   0.5674243
18 months   ki1017093b-PROVIDE         NA                   NA                0.4516129   0.4275009   0.4757249
18 months   ki1066203-TanzaniaChild2   NA                   NA                0.4261838   0.4215686   0.4307991
18 months   ki1113344-GMS-Nepal        NA                   NA                0.6236934   0.6216021   0.6257847
18 months   ki1114097-CONTENT          NA                   NA                0.2803738   0.2761872   0.2845604
18 months   ki1135781-COHORTS          NA                   NA                0.6474045   0.6447053   0.6501038
18 months   ki1148112-LCNI-5           NA                   NA                0.5692308   0.5655993   0.5728623
24 months   ki0047075b-MAL-ED          NA                   NA                0.6685552   0.6598961   0.6772144
24 months   ki1000108-CMC-V-BCS-2002   NA                   NA                0.9249330   0.9238081   0.9260579
24 months   ki1000108-IRC              NA                   NA                0.6414634   0.6347684   0.6481585
24 months   ki1017093b-PROVIDE         NA                   NA                0.4864865   0.4623964   0.5105766
24 months   ki1066203-TanzaniaChild2   NA                   NA                0.4760000   0.4699160   0.4820840
24 months   ki1113344-GMS-Nepal        NA                   NA                0.6901408   0.6875504   0.6927312
24 months   ki1114097-CONTENT          NA                   NA                0.2893401   0.2844108   0.2942694
24 months   ki1135781-COHORTS          NA                   NA                0.7743539   0.7717720   0.7769358
24 months   ki1148112-LCNI-5           NA                   NA                0.6552707   0.6512964   0.6592449


### Parameter: RR


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki0047075b-MAL-ED          Wealth Q2            Wealth Q1         0.9048295   0.5445589   1.5034490
3 months    ki0047075b-MAL-ED          Wealth Q3            Wealth Q1         1.3188406   0.8464260   2.0549232
3 months    ki0047075b-MAL-ED          Wealth Q4            Wealth Q1         0.9479167   0.5785484   1.5531043
3 months    ki1000108-CMC-V-BCS-2002   Wealth Q2            Wealth Q1         1.6136495   0.9867822   2.6387432
3 months    ki1000108-CMC-V-BCS-2002   Wealth Q3            Wealth Q1         1.5966884   0.9732581   2.6194631
3 months    ki1000108-CMC-V-BCS-2002   Wealth Q4            Wealth Q1         2.3169336   1.4754214   3.6384056
3 months    ki1000108-IRC              Wealth Q2            Wealth Q1         1.0294118   0.7085603   1.4955517
3 months    ki1000108-IRC              Wealth Q3            Wealth Q1         0.8211974   0.5465948   1.2337570
3 months    ki1000108-IRC              Wealth Q4            Wealth Q1         0.8458333   0.5637702   1.2690172
3 months    ki1017093b-PROVIDE         Wealth Q2            Wealth Q1         0.7232143   0.3509535   1.4903367
3 months    ki1017093b-PROVIDE         Wealth Q3            Wealth Q1         0.9948980   0.5305414   1.8656826
3 months    ki1017093b-PROVIDE         Wealth Q4            Wealth Q1         0.5357143   0.2480971   1.1567638
3 months    ki1066203-TanzaniaChild2   Wealth Q2            Wealth Q1         1.5000000   0.6980778   3.2231367
3 months    ki1066203-TanzaniaChild2   Wealth Q3            Wealth Q1         1.3333333   0.6500218   2.7349508
3 months    ki1066203-TanzaniaChild2   Wealth Q4            Wealth Q1         1.8802083   0.9445382   3.7427639
3 months    ki1113344-GMS-Nepal        Wealth Q2            Wealth Q1         0.8633634   0.5194317   1.4350229
3 months    ki1113344-GMS-Nepal        Wealth Q3            Wealth Q1         0.8575690   0.5158570   1.4256366
3 months    ki1113344-GMS-Nepal        Wealth Q4            Wealth Q1         0.7990868   0.4735534   1.3484006
3 months    ki1114097-CONTENT          Wealth Q2            Wealth Q1         1.1346154   0.4862351   2.6475918
3 months    ki1114097-CONTENT          Wealth Q3            Wealth Q1         0.8824786   0.3528094   2.2073350
3 months    ki1114097-CONTENT          Wealth Q4            Wealth Q1         1.2606838   0.5543221   2.8671482
3 months    ki1135781-COHORTS          Wealth Q2            Wealth Q1         1.0951601   0.8810138   1.3613587
3 months    ki1135781-COHORTS          Wealth Q3            Wealth Q1         0.9113299   0.7454052   1.1141888
3 months    ki1135781-COHORTS          Wealth Q4            Wealth Q1         0.7118493   0.5720298   0.8858446
6 months    ki0047075b-MAL-ED          Wealth Q2            Wealth Q1         0.9237537   0.6077741   1.4040099
6 months    ki0047075b-MAL-ED          Wealth Q3            Wealth Q1         1.1676017   0.7992141   1.7057929
6 months    ki0047075b-MAL-ED          Wealth Q4            Wealth Q1         0.9151473   0.6041663   1.3861987
6 months    ki1000108-CMC-V-BCS-2002   Wealth Q2            Wealth Q1         1.3136646   0.9466622   1.8229466
6 months    ki1000108-CMC-V-BCS-2002   Wealth Q3            Wealth Q1         1.2000000   0.8534095   1.6873493
6 months    ki1000108-CMC-V-BCS-2002   Wealth Q4            Wealth Q1         1.7323308   1.2900566   2.3262313
6 months    ki1000108-IRC              Wealth Q2            Wealth Q1         1.1813681   0.8755653   1.5939766
6 months    ki1000108-IRC              Wealth Q3            Wealth Q1         0.9124332   0.6530813   1.2747790
6 months    ki1000108-IRC              Wealth Q4            Wealth Q1         0.9545455   0.6865486   1.3271559
6 months    ki1017093b-PROVIDE         Wealth Q2            Wealth Q1         0.6631579   0.3285302   1.3386238
6 months    ki1017093b-PROVIDE         Wealth Q3            Wealth Q1         0.9333333   0.5105990   1.7060572
6 months    ki1017093b-PROVIDE         Wealth Q4            Wealth Q1         0.6553191   0.3389226   1.2670834
6 months    ki1066203-TanzaniaChild2   Wealth Q2            Wealth Q1         1.1911994   0.6869336   2.0656377
6 months    ki1066203-TanzaniaChild2   Wealth Q3            Wealth Q1         1.5321502   0.9619051   2.4404531
6 months    ki1066203-TanzaniaChild2   Wealth Q4            Wealth Q1         1.4907407   0.9102576   2.4414055
6 months    ki1113344-GMS-Nepal        Wealth Q2            Wealth Q1         0.8817270   0.6179058   1.2581892
6 months    ki1113344-GMS-Nepal        Wealth Q3            Wealth Q1         0.9203427   0.6460398   1.3111124
6 months    ki1113344-GMS-Nepal        Wealth Q4            Wealth Q1         0.7991427   0.5519854   1.1569673
6 months    ki1114097-CONTENT          Wealth Q2            Wealth Q1         0.9725275   0.4944249   1.9129492
6 months    ki1114097-CONTENT          Wealth Q3            Wealth Q1         0.8104396   0.3935055   1.6691312
6 months    ki1114097-CONTENT          Wealth Q4            Wealth Q1         0.9725275   0.4944249   1.9129492
6 months    ki1135781-COHORTS          Wealth Q2            Wealth Q1         0.9369106   0.7789277   1.1269359
6 months    ki1135781-COHORTS          Wealth Q3            Wealth Q1         0.9176672   0.7819709   1.0769111
6 months    ki1135781-COHORTS          Wealth Q4            Wealth Q1         0.6899764   0.5750881   0.8278164
6 months    ki1148112-LCNI-5           Wealth Q2            Wealth Q1         1.2964286   0.6468264   2.5984206
6 months    ki1148112-LCNI-5           Wealth Q3            Wealth Q1         1.7600000   0.9480981   3.2671724
6 months    ki1148112-LCNI-5           Wealth Q4            Wealth Q1         1.1268293   0.5753393   2.2069486
12 months   ki0047075b-MAL-ED          Wealth Q2            Wealth Q1         0.8590909   0.6449654   1.1443051
12 months   ki0047075b-MAL-ED          Wealth Q3            Wealth Q1         0.8505495   0.6393233   1.1315627
12 months   ki0047075b-MAL-ED          Wealth Q4            Wealth Q1         0.7434783   0.5473926   1.0098052
12 months   ki1000108-CMC-V-BCS-2002   Wealth Q2            Wealth Q1         1.1107078   0.9100278   1.3556419
12 months   ki1000108-CMC-V-BCS-2002   Wealth Q3            Wealth Q1         1.0060629   0.8107819   1.2483784
12 months   ki1000108-CMC-V-BCS-2002   Wealth Q4            Wealth Q1         1.2122845   1.0058498   1.4610865
12 months   ki1000108-IRC              Wealth Q2            Wealth Q1         1.0578426   0.8294610   1.3491062
12 months   ki1000108-IRC              Wealth Q3            Wealth Q1         0.8226878   0.6230993   1.0862075
12 months   ki1000108-IRC              Wealth Q4            Wealth Q1         0.8559277   0.6500483   1.1270120
12 months   ki1017093b-PROVIDE         Wealth Q2            Wealth Q1         0.6111111   0.3408994   1.0955043
12 months   ki1017093b-PROVIDE         Wealth Q3            Wealth Q1         0.7692308   0.4641362   1.2748756
12 months   ki1017093b-PROVIDE         Wealth Q4            Wealth Q1         0.4545455   0.2423830   0.8524179
12 months   ki1066203-TanzaniaChild2   Wealth Q2            Wealth Q1         1.1489362   0.7732001   1.7072608
12 months   ki1066203-TanzaniaChild2   Wealth Q3            Wealth Q1         1.1832168   0.8314519   1.6838038
12 months   ki1066203-TanzaniaChild2   Wealth Q4            Wealth Q1         1.2947368   0.9032839   1.8558324
12 months   ki1113344-GMS-Nepal        Wealth Q2            Wealth Q1         0.8630137   0.6745242   1.1041749
12 months   ki1113344-GMS-Nepal        Wealth Q3            Wealth Q1         0.8591549   0.6698022   1.1020377
12 months   ki1113344-GMS-Nepal        Wealth Q4            Wealth Q1         0.9178082   0.7227613   1.1654912
12 months   ki1114097-CONTENT          Wealth Q2            Wealth Q1         0.9218750   0.4903771   1.7330613
12 months   ki1114097-CONTENT          Wealth Q3            Wealth Q1         0.9218750   0.4903771   1.7330613
12 months   ki1114097-CONTENT          Wealth Q4            Wealth Q1         0.8509615   0.4440027   1.6309259
12 months   ki1135781-COHORTS          Wealth Q2            Wealth Q1         0.9334960   0.8421621   1.0347353
12 months   ki1135781-COHORTS          Wealth Q3            Wealth Q1         0.8877424   0.8098548   0.9731208
12 months   ki1135781-COHORTS          Wealth Q4            Wealth Q1         0.7542921   0.6822237   0.8339737
12 months   ki1148112-LCNI-5           Wealth Q2            Wealth Q1         0.9172701   0.6862707   1.2260242
12 months   ki1148112-LCNI-5           Wealth Q3            Wealth Q1         1.0000000   0.7588960   1.3177036
12 months   ki1148112-LCNI-5           Wealth Q4            Wealth Q1         0.8359858   0.6249274   1.1183255
18 months   ki0047075b-MAL-ED          Wealth Q2            Wealth Q1         0.9567449   0.7795107   1.1742760
18 months   ki0047075b-MAL-ED          Wealth Q3            Wealth Q1         0.8387097   0.6697485   1.0502956
18 months   ki0047075b-MAL-ED          Wealth Q4            Wealth Q1         0.7731417   0.6101243   0.9797151
18 months   ki1000108-CMC-V-BCS-2002   Wealth Q2            Wealth Q1         1.0510234   0.9144316   1.2080184
18 months   ki1000108-CMC-V-BCS-2002   Wealth Q3            Wealth Q1         1.0833333   0.9465282   1.2399114
18 months   ki1000108-CMC-V-BCS-2002   Wealth Q4            Wealth Q1         1.1453993   1.0120500   1.2963189
18 months   ki1000108-IRC              Wealth Q2            Wealth Q1         1.0130719   0.8122588   1.2635317
18 months   ki1000108-IRC              Wealth Q3            Wealth Q1         0.9385113   0.7447784   1.1826384
18 months   ki1000108-IRC              Wealth Q4            Wealth Q1         0.7912458   0.6102254   1.0259650
18 months   ki1017093b-PROVIDE         Wealth Q2            Wealth Q1         0.5795207   0.3689426   0.9102885
18 months   ki1017093b-PROVIDE         Wealth Q3            Wealth Q1         0.5555556   0.3562376   0.8663937
18 months   ki1017093b-PROVIDE         Wealth Q4            Wealth Q1         0.4378601   0.2705732   0.7085751
18 months   ki1066203-TanzaniaChild2   Wealth Q2            Wealth Q1         1.0224265   0.6987122   1.4961179
18 months   ki1066203-TanzaniaChild2   Wealth Q3            Wealth Q1         1.2750000   0.9337345   1.7409928
18 months   ki1066203-TanzaniaChild2   Wealth Q4            Wealth Q1         1.0602941   0.7459556   1.5070918
18 months   ki1113344-GMS-Nepal        Wealth Q2            Wealth Q1         0.9578947   0.8070826   1.1368878
18 months   ki1113344-GMS-Nepal        Wealth Q3            Wealth Q1         0.8942067   0.7456091   1.0724195
18 months   ki1113344-GMS-Nepal        Wealth Q4            Wealth Q1         0.9280344   0.7796296   1.1046884
18 months   ki1114097-CONTENT          Wealth Q2            Wealth Q1         0.7763158   0.4259166   1.4149866
18 months   ki1114097-CONTENT          Wealth Q3            Wealth Q1         0.7763158   0.4259166   1.4149866
18 months   ki1114097-CONTENT          Wealth Q4            Wealth Q1         0.9133127   0.5190380   1.6070886
18 months   ki1135781-COHORTS          Wealth Q2            Wealth Q1         0.8971054   0.8327105   0.9664801
18 months   ki1135781-COHORTS          Wealth Q3            Wealth Q1         0.9071280   0.8515153   0.9663727
18 months   ki1135781-COHORTS          Wealth Q4            Wealth Q1         0.7236105   0.6711306   0.7801942
18 months   ki1148112-LCNI-5           Wealth Q2            Wealth Q1         1.1063291   0.8328561   1.4695985
18 months   ki1148112-LCNI-5           Wealth Q3            Wealth Q1         1.1750000   0.8904148   1.5505414
18 months   ki1148112-LCNI-5           Wealth Q4            Wealth Q1         1.0510638   0.7938941   1.3915397
24 months   ki0047075b-MAL-ED          Wealth Q2            Wealth Q1         0.9621659   0.8089732   1.1443682
24 months   ki0047075b-MAL-ED          Wealth Q3            Wealth Q1         0.8303311   0.6806978   1.0128573
24 months   ki0047075b-MAL-ED          Wealth Q4            Wealth Q1         0.7280986   0.5856705   0.9051636
24 months   ki1000108-CMC-V-BCS-2002   Wealth Q2            Wealth Q1         0.9804334   0.9032894   1.0641659
24 months   ki1000108-CMC-V-BCS-2002   Wealth Q3            Wealth Q1         0.9764706   0.8977359   1.0621106
24 months   ki1000108-CMC-V-BCS-2002   Wealth Q4            Wealth Q1         1.0036765   0.9309209   1.0821182
24 months   ki1000108-IRC              Wealth Q2            Wealth Q1         1.0149130   0.8421461   1.2231231
24 months   ki1000108-IRC              Wealth Q3            Wealth Q1         1.0050595   0.8331534   1.2124352
24 months   ki1000108-IRC              Wealth Q4            Wealth Q1         0.7690141   0.6107304   0.9683203
24 months   ki1017093b-PROVIDE         Wealth Q2            Wealth Q1         0.5600000   0.3566936   0.8791859
24 months   ki1017093b-PROVIDE         Wealth Q3            Wealth Q1         0.6800000   0.4660519   0.9921642
24 months   ki1017093b-PROVIDE         Wealth Q4            Wealth Q1         0.4533333   0.2820706   0.7285803
24 months   ki1066203-TanzaniaChild2   Wealth Q2            Wealth Q1         1.2593703   0.8497794   1.8663827
24 months   ki1066203-TanzaniaChild2   Wealth Q3            Wealth Q1         1.2704174   0.8938819   1.8055635
24 months   ki1066203-TanzaniaChild2   Wealth Q4            Wealth Q1         1.0820452   0.7255511   1.6136999
24 months   ki1113344-GMS-Nepal        Wealth Q2            Wealth Q1         0.9973104   0.8635793   1.1517506
24 months   ki1113344-GMS-Nepal        Wealth Q3            Wealth Q1         0.9092997   0.7756069   1.0660372
24 months   ki1113344-GMS-Nepal        Wealth Q4            Wealth Q1         0.9136578   0.7831098   1.0659687
24 months   ki1114097-CONTENT          Wealth Q2            Wealth Q1         0.8297872   0.4562123   1.5092685
24 months   ki1114097-CONTENT          Wealth Q3            Wealth Q1         0.7200000   0.3863437   1.3418103
24 months   ki1114097-CONTENT          Wealth Q4            Wealth Q1         0.9130435   0.5118932   1.6285591
24 months   ki1135781-COHORTS          Wealth Q2            Wealth Q1         0.9247839   0.8754218   0.9769293
24 months   ki1135781-COHORTS          Wealth Q3            Wealth Q1         0.9589430   0.9171841   1.0026031
24 months   ki1135781-COHORTS          Wealth Q4            Wealth Q1         0.7849808   0.7421744   0.8302561
24 months   ki1148112-LCNI-5           Wealth Q2            Wealth Q1         1.0193119   0.8165790   1.2723775
24 months   ki1148112-LCNI-5           Wealth Q3            Wealth Q1         1.1051213   0.8958975   1.3632063
24 months   ki1148112-LCNI-5           Wealth Q4            Wealth Q1         0.9437736   0.7541019   1.1811515


### Parameter: PAR


agecat      studyid                    intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -------------------  ---------------  -----------  -----------  -----------
3 months    ki0047075b-MAL-ED          Wealth Q1            NA                 0.0117458   -0.0790252    0.1025169
3 months    ki1000108-CMC-V-BCS-2002   Wealth Q1            NA                 0.1341928    0.0491513    0.2192342
3 months    ki1000108-IRC              Wealth Q1            NA                -0.0257840   -0.1167362    0.0651683
3 months    ki1017093b-PROVIDE         Wealth Q1            NA                -0.0596825   -0.1956456    0.0762805
3 months    ki1066203-TanzaniaChild2   Wealth Q1            NA                 0.0281579   -0.0102032    0.0665190
3 months    ki1113344-GMS-Nepal        Wealth Q1            NA                -0.0214840   -0.0830269    0.0400589
3 months    ki1114097-CONTENT          Wealth Q1            NA                 0.0102483   -0.0817541    0.1022508
3 months    ki1135781-COHORTS          Wealth Q1            NA                -0.0168396   -0.0435114    0.0098321
6 months    ki0047075b-MAL-ED          Wealth Q1            NA                 0.0008594   -0.0975159    0.0992347
6 months    ki1000108-CMC-V-BCS-2002   Wealth Q1            NA                 0.1233727    0.0219488    0.2247966
6 months    ki1000108-IRC              Wealth Q1            NA                 0.0049720   -0.0896099    0.0995539
6 months    ki1017093b-PROVIDE         Wealth Q1            NA                -0.0679862   -0.2135850    0.0776126
6 months    ki1066203-TanzaniaChild2   Wealth Q1            NA                 0.0451763   -0.0099605    0.1003130
6 months    ki1113344-GMS-Nepal        Wealth Q1            NA                -0.0315271   -0.1073695    0.0443154
6 months    ki1114097-CONTENT          Wealth Q1            NA                -0.0140323   -0.1228641    0.0947995
6 months    ki1135781-COHORTS          Wealth Q1            NA                -0.0362620   -0.0714361   -0.0010878
6 months    ki1148112-LCNI-5           Wealth Q1            NA                 0.0833333   -0.0747389    0.2414056
12 months   ki0047075b-MAL-ED          Wealth Q1            NA                -0.0763312   -0.1792671    0.0266047
12 months   ki1000108-CMC-V-BCS-2002   Wealth Q1            NA                 0.0544803   -0.0447130    0.1536736
12 months   ki1000108-IRC              Wealth Q1            NA                -0.0355042   -0.1310444    0.0600360
12 months   ki1017093b-PROVIDE         Wealth Q1            NA                -0.1477987   -0.3040611    0.0084637
12 months   ki1066203-TanzaniaChild2   Wealth Q1            NA                 0.0414141   -0.0318639    0.1146922
12 months   ki1113344-GMS-Nepal        Wealth Q1            NA                -0.0446735   -0.1253303    0.0359832
12 months   ki1114097-CONTENT          Wealth Q1            NA                -0.0200236   -0.1337446    0.0936973
12 months   ki1135781-COHORTS          Wealth Q1            NA                -0.0656678   -0.1025672   -0.0287684
12 months   ki1148112-LCNI-5           Wealth Q1            NA                -0.0336466   -0.1343319    0.0670386
18 months   ki0047075b-MAL-ED          Wealth Q1            NA                -0.0750000   -0.1709962    0.0209962
18 months   ki1000108-CMC-V-BCS-2002   Wealth Q1            NA                 0.0559762   -0.0277521    0.1397044
18 months   ki1000108-IRC              Wealth Q1            NA                -0.0376528   -0.1316091    0.0563034
18 months   ki1017093b-PROVIDE         Wealth Q1            NA                -0.2589134   -0.4055718   -0.1122551
18 months   ki1066203-TanzaniaChild2   Wealth Q1            NA                 0.0378343   -0.0565323    0.1322009
18 months   ki1113344-GMS-Nepal        Wealth Q1            NA                -0.0360288   -0.1135109    0.0414532
18 months   ki1114097-CONTENT          Wealth Q1            NA                -0.0416601   -0.1612405    0.0779204
18 months   ki1135781-COHORTS          Wealth Q1            NA                -0.0970750   -0.1311379   -0.0630121
18 months   ki1148112-LCNI-5           Wealth Q1            NA                 0.0429150   -0.0695726    0.1554026
24 months   ki0047075b-MAL-ED          Wealth Q1            NA                -0.0928084   -0.1824118   -0.0032050
24 months   ki1000108-CMC-V-BCS-2002   Wealth Q1            NA                -0.0091330   -0.0602022    0.0419363
24 months   ki1000108-IRC              Wealth Q1            NA                -0.0347271   -0.1245882    0.0551340
24 months   ki1017093b-PROVIDE         Wealth Q1            NA                -0.2488076   -0.3995418   -0.0980735
24 months   ki1066203-TanzaniaChild2   Wealth Q1            NA                 0.0617143   -0.0540735    0.1775020
24 months   ki1113344-GMS-Nepal        Wealth Q1            NA                -0.0320814   -0.1053478    0.0411851
24 months   ki1114097-CONTENT          Wealth Q1            NA                -0.0439932   -0.1701417    0.0821552
24 months   ki1135781-COHORTS          Wealth Q1            NA                -0.0781583   -0.1062609   -0.0500557
24 months   ki1148112-LCNI-5           Wealth Q1            NA                 0.0089292   -0.0947766    0.1126350


### Parameter: PAF


agecat      studyid                    intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -------------------  ---------------  -----------  -----------  -----------
3 months    ki0047075b-MAL-ED          Wealth Q1            NA                 0.0426374   -0.3506234    0.3213925
3 months    ki1000108-CMC-V-BCS-2002   Wealth Q1            NA                 0.3886222    0.0870068    0.5905963
3 months    ki1000108-IRC              Wealth Q1            NA                -0.0813187   -0.4098507    0.1706568
3 months    ki1017093b-PROVIDE         Wealth Q1            NA                -0.2373737   -0.9165936    0.2011380
3 months    ki1066203-TanzaniaChild2   Wealth Q1            NA                 0.2863515   -0.2324219    0.5867533
3 months    ki1113344-GMS-Nepal        Wealth Q1            NA                -0.1355319   -0.5984287    0.1933123
3 months    ki1114097-CONTENT          Wealth Q1            NA                 0.0629540   -0.7126956    0.4873256
3 months    ki1135781-COHORTS          Wealth Q1            NA                -0.1039471   -0.2815162    0.0490176
6 months    ki0047075b-MAL-ED          Wealth Q1            NA                 0.0024889   -0.3272547    0.2503109
6 months    ki1000108-CMC-V-BCS-2002   Wealth Q1            NA                 0.2408392    0.0152402    0.4147557
6 months    ki1000108-IRC              Wealth Q1            NA                 0.0117258   -0.2385070    0.2114007
6 months    ki1017093b-PROVIDE         Wealth Q1            NA                -0.2351190   -0.8574604    0.1787071
6 months    ki1066203-TanzaniaChild2   Wealth Q1            NA                 0.2325742   -0.1106674    0.4697401
6 months    ki1113344-GMS-Nepal        Wealth Q1            NA                -0.1103448   -0.4102355    0.1257732
6 months    ki1114097-CONTENT          Wealth Q1            NA                -0.0628531   -0.6813873    0.3281401
6 months    ki1135781-COHORTS          Wealth Q1            NA                -0.1421952   -0.2888285   -0.0122448
6 months    ki1148112-LCNI-5           Wealth Q1            NA                 0.2156863   -0.3202670    0.5340730
12 months   ki0047075b-MAL-ED          Wealth Q1            NA                -0.1592807   -0.3953805    0.0368708
12 months   ki1000108-CMC-V-BCS-2002   Wealth Q1            NA                 0.0779487   -0.0754378    0.2094581
12 months   ki1000108-IRC              Wealth Q1            NA                -0.0699793   -0.2759250    0.1027249
12 months   ki1017093b-PROVIDE         Wealth Q1            NA                -0.4196429   -0.9437027   -0.0368797
12 months   ki1066203-TanzaniaChild2   Wealth Q1            NA                 0.1297468   -0.1329083    0.3315076
12 months   ki1113344-GMS-Nepal        Wealth Q1            NA                -0.0981132   -0.2903592    0.0654907
12 months   ki1114097-CONTENT          Wealth Q1            NA                -0.0797238   -0.6422402    0.2901139
12 months   ki1135781-COHORTS          Wealth Q1            NA                -0.1355842   -0.2144094   -0.0618754
12 months   ki1148112-LCNI-5           Wealth Q1            NA                -0.0697856   -0.3004131    0.1199403
18 months   ki0047075b-MAL-ED          Wealth Q1            NA                -0.1221719   -0.2900713    0.0238758
18 months   ki1000108-CMC-V-BCS-2002   Wealth Q1            NA                 0.0660732   -0.0381586    0.1598400
18 months   ki1000108-IRC              Wealth Q1            NA                -0.0669565   -0.2478669    0.0877262
18 months   ki1017093b-PROVIDE         Wealth Q1            NA                -0.5733083   -0.9418943   -0.2746826
18 months   ki1066203-TanzaniaChild2   Wealth Q1            NA                 0.0887747   -0.1618105    0.2853124
18 months   ki1113344-GMS-Nepal        Wealth Q1            NA                -0.0577669   -0.1895934    0.0594510
18 months   ki1114097-CONTENT          Wealth Q1            NA                -0.1485876   -0.6651821    0.2077423
18 months   ki1135781-COHORTS          Wealth Q1            NA                -0.1499449   -0.2038374   -0.0984650
18 months   ki1148112-LCNI-5           Wealth Q1            NA                 0.0753912   -0.1449096    0.2533022
24 months   ki0047075b-MAL-ED          Wealth Q1            NA                -0.1388193   -0.2812590   -0.0122149
24 months   ki1000108-CMC-V-BCS-2002   Wealth Q1            NA                -0.0098742   -0.0666257    0.0438578
24 months   ki1000108-IRC              Wealth Q1            NA                -0.0541372   -0.2040090    0.0770789
24 months   ki1017093b-PROVIDE         Wealth Q1            NA                -0.5114379   -0.8615239   -0.2271906
24 months   ki1066203-TanzaniaChild2   Wealth Q1            NA                 0.1296519   -0.1508861    0.3418064
24 months   ki1113344-GMS-Nepal        Wealth Q1            NA                -0.0464853   -0.1582255    0.0544748
24 months   ki1114097-CONTENT          Wealth Q1            NA                -0.1520468   -0.6821622    0.2110084
24 months   ki1135781-COHORTS          Wealth Q1            NA                -0.1009335   -0.1378636   -0.0652021
24 months   ki1148112-LCNI-5           Wealth Q1            NA                 0.0136267   -0.1580376    0.1598440


