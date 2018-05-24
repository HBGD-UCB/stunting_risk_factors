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

* agecat: 12 months, studyid: ki1000109-EE
* agecat: 12 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 12 months, studyid: ki1112895-Guatemala BSC
* agecat: 18 months, studyid: ki1000109-EE
* agecat: 18 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2
* agecat: 3 months, studyid: ki1000109-EE
* agecat: 3 months, studyid: ki1017093b-PROVIDE
* agecat: 3 months, studyid: ki1112895-Guatemala BSC
* agecat: 6 months, studyid: ki1000109-EE
* agecat: 6 months, studyid: ki1112895-Guatemala BSC
* agecat: 9 months, studyid: ki1000109-EE
* agecat: 9 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 9 months, studyid: ki1112895-Guatemala BSC
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002
* agecat: Birth, studyid: ki1000108-IRC
* agecat: Birth, studyid: ki1000109-EE
* agecat: Birth, studyid: ki1017093-NIH-Birth
* agecat: Birth, studyid: ki1017093c-NIH-Crypto

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness




# Results Detail

## Results Plots
![](/tmp/9b6d204e-6198-42b4-b37c-c5eb6370e4c0/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/9b6d204e-6198-42b4-b37c-c5eb6370e4c0/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/9b6d204e-6198-42b4-b37c-c5eb6370e4c0/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/9b6d204e-6198-42b4-b37c-c5eb6370e4c0/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Data Summary

agecat      studyid                    A             n     nA   nAY0   nAY1
----------  -------------------------  --------  -----  -----  -----  -----
12 months   ki0047075b-MAL-ED          (20-24]    1614    367    274     93
12 months   ki0047075b-MAL-ED          (24-28]    1614    444    334    110
12 months   ki0047075b-MAL-ED          <=20       1614    348    245    103
12 months   ki0047075b-MAL-ED          >28        1614    455    326    129
12 months   ki1000108-CMC-V-BCS-2002   (20-24]     368    148     77     71
12 months   ki1000108-CMC-V-BCS-2002   (24-28]     368    100     49     51
12 months   ki1000108-CMC-V-BCS-2002   <=20        368     69     32     37
12 months   ki1000108-CMC-V-BCS-2002   >28         368     51     27     24
12 months   ki1000108-IRC              (20-24]     406    169    109     60
12 months   ki1000108-IRC              (24-28]     406    108     78     30
12 months   ki1000108-IRC              <=20        406     85     64     21
12 months   ki1000108-IRC              >28         406     44     36      8
12 months   ki1000109-EE               (20-24]     355     15      4     11
12 months   ki1000109-EE               (24-28]     355    110     35     75
12 months   ki1000109-EE               <=20        355      4      2      2
12 months   ki1000109-EE               >28         355    226     61    165
12 months   ki1000304b-SAS-FoodSuppl   (20-24]      92     16      4     12
12 months   ki1000304b-SAS-FoodSuppl   (24-28]      92     35      6     29
12 months   ki1000304b-SAS-FoodSuppl   <=20         92     24      6     18
12 months   ki1000304b-SAS-FoodSuppl   >28          92     17      3     14
12 months   ki1017093-NIH-Birth        (20-24]     489    121     69     52
12 months   ki1017093-NIH-Birth        (24-28]     489    141     88     53
12 months   ki1017093-NIH-Birth        <=20        489    113     79     34
12 months   ki1017093-NIH-Birth        >28         489    114     70     44
12 months   ki1017093b-PROVIDE         (20-24]     153     49     36     13
12 months   ki1017093b-PROVIDE         (24-28]     153     40     33      7
12 months   ki1017093b-PROVIDE         <=20        153     33     21     12
12 months   ki1017093b-PROVIDE         >28         153     31     19     12
12 months   ki1017093c-NIH-Crypto      (20-24]     706    156    116     40
12 months   ki1017093c-NIH-Crypto      (24-28]     706    198    154     44
12 months   ki1017093c-NIH-Crypto      <=20        706    211    158     53
12 months   ki1017093c-NIH-Crypto      >28         706    141    107     34
12 months   ki1066203-TanzaniaChild2   (20-24]     355     92     76     16
12 months   ki1066203-TanzaniaChild2   (24-28]     355    102     89     13
12 months   ki1066203-TanzaniaChild2   <=20        355     39     33      6
12 months   ki1066203-TanzaniaChild2   >28         355    122    105     17
12 months   ki1101329-Keneba           (20-24]    1935    362    285     77
12 months   ki1101329-Keneba           (24-28]    1935    366    279     87
12 months   ki1101329-Keneba           <=20       1935    363    284     79
12 months   ki1101329-Keneba           >28        1935    844    604    240
12 months   ki1112895-Guatemala BSC    (20-24]      53     19     12      7
12 months   ki1112895-Guatemala BSC    (24-28]      53      7      6      1
12 months   ki1112895-Guatemala BSC    <=20         53     16      5     11
12 months   ki1112895-Guatemala BSC    >28          53     11      7      4
12 months   ki1113344-GMS-Nepal        (20-24]     558    141    100     41
12 months   ki1113344-GMS-Nepal        (24-28]     558    162    102     60
12 months   ki1113344-GMS-Nepal        <=20        558    160    108     52
12 months   ki1113344-GMS-Nepal        >28         558     95     57     38
12 months   ki1126311-ZVITAMBO         (20-24]    1698    541    412    129
12 months   ki1126311-ZVITAMBO         (24-28]    1698    388    296     92
12 months   ki1126311-ZVITAMBO         <=20       1698    409    306    103
12 months   ki1126311-ZVITAMBO         >28        1698    360    279     81
12 months   ki1135781-COHORTS          (20-24]    6941   1805   1132    673
12 months   ki1135781-COHORTS          (24-28]    6941   1857   1188    669
12 months   ki1135781-COHORTS          <=20       6941   1053    586    467
12 months   ki1135781-COHORTS          >28        6941   2226   1271    955
12 months   ki1148112-LCNI-5           (20-24]     258     59     33     26
12 months   ki1148112-LCNI-5           (24-28]     258     59     32     27
12 months   ki1148112-LCNI-5           <=20        258     65     41     24
12 months   ki1148112-LCNI-5           >28         258     75     44     31
18 months   ki0047075b-MAL-ED          (20-24]    1544    349    216    133
18 months   ki0047075b-MAL-ED          (24-28]    1544    433    273    160
18 months   ki0047075b-MAL-ED          <=20       1544    322    185    137
18 months   ki0047075b-MAL-ED          >28        1544    440    273    167
18 months   ki1000108-CMC-V-BCS-2002   (20-24]     369    150     41    109
18 months   ki1000108-CMC-V-BCS-2002   (24-28]     369     99     33     66
18 months   ki1000108-CMC-V-BCS-2002   <=20        369     69     21     48
18 months   ki1000108-CMC-V-BCS-2002   >28         369     51     20     31
18 months   ki1000108-IRC              (20-24]     405    167     98     69
18 months   ki1000108-IRC              (24-28]     405    107     69     38
18 months   ki1000108-IRC              <=20        405     87     58     29
18 months   ki1000108-IRC              >28         405     44     36      8
18 months   ki1000109-EE               (20-24]     348     15      2     13
18 months   ki1000109-EE               (24-28]     348    108     18     90
18 months   ki1000109-EE               <=20        348      4      1      3
18 months   ki1000109-EE               >28         348    221     32    189
18 months   ki1000304b-SAS-FoodSuppl   (20-24]      84     16      2     14
18 months   ki1000304b-SAS-FoodSuppl   (24-28]      84     31      5     26
18 months   ki1000304b-SAS-FoodSuppl   <=20         84     23      2     21
18 months   ki1000304b-SAS-FoodSuppl   >28          84     14      1     13
18 months   ki1017093-NIH-Birth        (20-24]     461    114     49     65
18 months   ki1017093-NIH-Birth        (24-28]     461    130     49     81
18 months   ki1017093-NIH-Birth        <=20        461    106     40     66
18 months   ki1017093-NIH-Birth        >28         461    111     52     59
18 months   ki1017093b-PROVIDE         (20-24]     141     44     31     13
18 months   ki1017093b-PROVIDE         (24-28]     141     38     26     12
18 months   ki1017093b-PROVIDE         <=20        141     31     17     14
18 months   ki1017093b-PROVIDE         >28         141     28     15     13
18 months   ki1017093c-NIH-Crypto      (20-24]     634    144    103     41
18 months   ki1017093c-NIH-Crypto      (24-28]     634    177    120     57
18 months   ki1017093c-NIH-Crypto      <=20        634    192    137     55
18 months   ki1017093c-NIH-Crypto      >28         634    121     83     38
18 months   ki1066203-TanzaniaChild2   (20-24]     257     62     43     19
18 months   ki1066203-TanzaniaChild2   (24-28]     257     78     56     22
18 months   ki1066203-TanzaniaChild2   <=20        257     26     19      7
18 months   ki1066203-TanzaniaChild2   >28         257     91     71     20
18 months   ki1101329-Keneba           (20-24]    1910    355    251    104
18 months   ki1101329-Keneba           (24-28]    1910    348    236    112
18 months   ki1101329-Keneba           <=20       1910    340    242     98
18 months   ki1101329-Keneba           >28        1910    867    561    306
18 months   ki1112895-Guatemala BSC    (20-24]       0      0      0      0
18 months   ki1112895-Guatemala BSC    (24-28]       0      0      0      0
18 months   ki1112895-Guatemala BSC    <=20          0      0      0      0
18 months   ki1112895-Guatemala BSC    >28           0      0      0      0
18 months   ki1113344-GMS-Nepal        (20-24]     550    138     68     70
18 months   ki1113344-GMS-Nepal        (24-28]     550    158     72     86
18 months   ki1113344-GMS-Nepal        <=20        550    163     77     86
18 months   ki1113344-GMS-Nepal        >28         550     91     41     50
18 months   ki1126311-ZVITAMBO         (20-24]     425    138     66     72
18 months   ki1126311-ZVITAMBO         (24-28]     425     98     58     40
18 months   ki1126311-ZVITAMBO         <=20        425     94     51     43
18 months   ki1126311-ZVITAMBO         >28         425     95     48     47
18 months   ki1135781-COHORTS          (20-24]    2928    731    293    438
18 months   ki1135781-COHORTS          (24-28]    2928    683    268    415
18 months   ki1135781-COHORTS          <=20       2928    518    185    333
18 months   ki1135781-COHORTS          >28        2928    996    352    644
18 months   ki1148112-LCNI-5           (20-24]     298     72     32     40
18 months   ki1148112-LCNI-5           (24-28]     298     69     34     35
18 months   ki1148112-LCNI-5           <=20        298     70     34     36
18 months   ki1148112-LCNI-5           >28         298     87     48     39
24 months   ki0047075b-MAL-ED          (20-24]    1487    341    218    123
24 months   ki0047075b-MAL-ED          (24-28]    1487    422    267    155
24 months   ki0047075b-MAL-ED          <=20       1487    296    180    116
24 months   ki0047075b-MAL-ED          >28        1487    428    264    164
24 months   ki1000108-CMC-V-BCS-2002   (20-24]     372    150     40    110
24 months   ki1000108-CMC-V-BCS-2002   (24-28]     372    101     33     68
24 months   ki1000108-CMC-V-BCS-2002   <=20        372     71     21     50
24 months   ki1000108-CMC-V-BCS-2002   >28         372     50     12     38
24 months   ki1000108-IRC              (20-24]     409    170     98     72
24 months   ki1000108-IRC              (24-28]     409    108     63     45
24 months   ki1000108-IRC              <=20        409     87     49     38
24 months   ki1000108-IRC              >28         409     44     29     15
24 months   ki1000109-EE               (20-24]       0      0      0      0
24 months   ki1000109-EE               (24-28]       0      0      0      0
24 months   ki1000109-EE               <=20          0      0      0      0
24 months   ki1000109-EE               >28           0      0      0      0
24 months   ki1000304b-SAS-FoodSuppl   (20-24]       0      0      0      0
24 months   ki1000304b-SAS-FoodSuppl   (24-28]       0      0      0      0
24 months   ki1000304b-SAS-FoodSuppl   <=20          0      0      0      0
24 months   ki1000304b-SAS-FoodSuppl   >28           0      0      0      0
24 months   ki1017093-NIH-Birth        (20-24]     427    107     49     58
24 months   ki1017093-NIH-Birth        (24-28]     427    119     50     69
24 months   ki1017093-NIH-Birth        <=20        427     98     45     53
24 months   ki1017093-NIH-Birth        >28         427    103     46     57
24 months   ki1017093b-PROVIDE         (20-24]     149     48     37     11
24 months   ki1017093b-PROVIDE         (24-28]     149     38     28     10
24 months   ki1017093b-PROVIDE         <=20        149     33     19     14
24 months   ki1017093b-PROVIDE         >28         149     30     16     14
24 months   ki1017093c-NIH-Crypto      (20-24]     514    115     81     34
24 months   ki1017093c-NIH-Crypto      (24-28]     514    143    105     38
24 months   ki1017093c-NIH-Crypto      <=20        514    162    126     36
24 months   ki1017093c-NIH-Crypto      >28         514     94     70     24
24 months   ki1066203-TanzaniaChild2   (20-24]       2      0      0      0
24 months   ki1066203-TanzaniaChild2   (24-28]       2      0      0      0
24 months   ki1066203-TanzaniaChild2   <=20          2      1      1      0
24 months   ki1066203-TanzaniaChild2   >28           2      1      1      0
24 months   ki1101329-Keneba           (20-24]    1714    316    215    101
24 months   ki1101329-Keneba           (24-28]    1714    312    215     97
24 months   ki1101329-Keneba           <=20       1714    307    205    102
24 months   ki1101329-Keneba           >28        1714    779    505    274
24 months   ki1112895-Guatemala BSC    (20-24]       0      0      0      0
24 months   ki1112895-Guatemala BSC    (24-28]       0      0      0      0
24 months   ki1112895-Guatemala BSC    <=20          0      0      0      0
24 months   ki1112895-Guatemala BSC    >28           0      0      0      0
24 months   ki1113344-GMS-Nepal        (20-24]     499    126     69     57
24 months   ki1113344-GMS-Nepal        (24-28]     499    140     76     64
24 months   ki1113344-GMS-Nepal        <=20        499    146     81     65
24 months   ki1113344-GMS-Nepal        >28         499     87     50     37
24 months   ki1126311-ZVITAMBO         (20-24]     116     41     18     23
24 months   ki1126311-ZVITAMBO         (24-28]     116     22     10     12
24 months   ki1126311-ZVITAMBO         <=20        116     27     10     17
24 months   ki1126311-ZVITAMBO         >28         116     26     10     16
24 months   ki1135781-COHORTS          (20-24]    6658   1736    804    932
24 months   ki1135781-COHORTS          (24-28]    6658   1774    859    915
24 months   ki1135781-COHORTS          <=20       6658   1016    353    663
24 months   ki1135781-COHORTS          >28        6658   2132    874   1258
24 months   ki1148112-LCNI-5           (20-24]     250     56     27     29
24 months   ki1148112-LCNI-5           (24-28]     250     60     28     32
24 months   ki1148112-LCNI-5           <=20        250     60     38     22
24 months   ki1148112-LCNI-5           >28         250     74     43     31
3 months    ki0047075b-MAL-ED          (20-24]    1776    417    357     60
3 months    ki0047075b-MAL-ED          (24-28]    1776    479    414     65
3 months    ki0047075b-MAL-ED          <=20       1776    388    304     84
3 months    ki0047075b-MAL-ED          >28        1776    492    427     65
3 months    ki1000108-CMC-V-BCS-2002   (20-24]     362    145    112     33
3 months    ki1000108-CMC-V-BCS-2002   (24-28]     362     98     73     25
3 months    ki1000108-CMC-V-BCS-2002   <=20        362     69     44     25
3 months    ki1000108-CMC-V-BCS-2002   >28         362     50     43      7
3 months    ki1000108-IRC              (20-24]     407    170    133     37
3 months    ki1000108-IRC              (24-28]     407    108     87     21
3 months    ki1000108-IRC              <=20        407     86     62     24
3 months    ki1000108-IRC              >28         407     43     34      9
3 months    ki1000109-EE               (20-24]     374     17      7     10
3 months    ki1000109-EE               (24-28]     374    115     41     74
3 months    ki1000109-EE               <=20        374      4      2      2
3 months    ki1000109-EE               >28         374    238    108    130
3 months    ki1000304b-SAS-FoodSuppl   (20-24]      97     17     12      5
3 months    ki1000304b-SAS-FoodSuppl   (24-28]      97     37     18     19
3 months    ki1000304b-SAS-FoodSuppl   <=20         97     25     16      9
3 months    ki1000304b-SAS-FoodSuppl   >28          97     18     13      5
3 months    ki1017093-NIH-Birth        (20-24]     568    143    110     33
3 months    ki1017093-NIH-Birth        (24-28]     568    157    118     39
3 months    ki1017093-NIH-Birth        <=20        568    132    108     24
3 months    ki1017093-NIH-Birth        >28         568    136    103     33
3 months    ki1017093b-PROVIDE         (20-24]     168     53     50      3
3 months    ki1017093b-PROVIDE         (24-28]     168     43     37      6
3 months    ki1017093b-PROVIDE         <=20        168     38     31      7
3 months    ki1017093b-PROVIDE         >28         168     34     30      4
3 months    ki1017093c-NIH-Crypto      (20-24]     728    164    128     36
3 months    ki1017093c-NIH-Crypto      (24-28]     728    202    159     43
3 months    ki1017093c-NIH-Crypto      <=20        728    218    167     51
3 months    ki1017093c-NIH-Crypto      >28         728    144    118     26
3 months    ki1066203-TanzaniaChild2   (20-24]     573    151    136     15
3 months    ki1066203-TanzaniaChild2   (24-28]     573    163    154      9
3 months    ki1066203-TanzaniaChild2   <=20        573     67     60      7
3 months    ki1066203-TanzaniaChild2   >28         573    192    184      8
3 months    ki1101329-Keneba           (20-24]    2174    443    381     62
3 months    ki1101329-Keneba           (24-28]    2174    384    334     50
3 months    ki1101329-Keneba           <=20       2174    445    374     71
3 months    ki1101329-Keneba           >28        2174    902    773    129
3 months    ki1112895-Guatemala BSC    (20-24]       4      2      2      0
3 months    ki1112895-Guatemala BSC    (24-28]       4      0      0      0
3 months    ki1112895-Guatemala BSC    <=20          4      2      0      2
3 months    ki1112895-Guatemala BSC    >28           4      0      0      0
3 months    ki1113344-GMS-Nepal        (20-24]     571    146    126     20
3 months    ki1113344-GMS-Nepal        (24-28]     571    159    140     19
3 months    ki1113344-GMS-Nepal        <=20        571    167    134     33
3 months    ki1113344-GMS-Nepal        >28         571     99     87     12
3 months    ki1126311-ZVITAMBO         (20-24]    2267    709    588    121
3 months    ki1126311-ZVITAMBO         (24-28]    2267    519    434     85
3 months    ki1126311-ZVITAMBO         <=20       2267    540    433    107
3 months    ki1126311-ZVITAMBO         >28        2267    499    421     78
3 months    ki1135781-COHORTS          (20-24]    8370   2235   1925    310
3 months    ki1135781-COHORTS          (24-28]    8370   2259   1953    306
3 months    ki1135781-COHORTS          <=20       8370   1335   1098    237
3 months    ki1135781-COHORTS          >28        8370   2541   2111    430
3 months    ki1148112-LCNI-5           (20-24]       0      0      0      0
3 months    ki1148112-LCNI-5           (24-28]       0      0      0      0
3 months    ki1148112-LCNI-5           <=20          0      0      0      0
3 months    ki1148112-LCNI-5           >28           0      0      0      0
6 months    ki0047075b-MAL-ED          (20-24]    1694    394    326     68
6 months    ki0047075b-MAL-ED          (24-28]    1694    459    401     58
6 months    ki0047075b-MAL-ED          <=20       1694    369    294     75
6 months    ki0047075b-MAL-ED          >28        1694    472    398     74
6 months    ki1000108-CMC-V-BCS-2002   (20-24]     369    149    106     43
6 months    ki1000108-CMC-V-BCS-2002   (24-28]     369    100     73     27
6 months    ki1000108-CMC-V-BCS-2002   <=20        369     69     44     25
6 months    ki1000108-CMC-V-BCS-2002   >28         369     51     35     16
6 months    ki1000108-IRC              (20-24]     407    169    122     47
6 months    ki1000108-IRC              (24-28]     407    108     86     22
6 months    ki1000108-IRC              <=20        407     86     63     23
6 months    ki1000108-IRC              >28         407     44     36      8
6 months    ki1000109-EE               (20-24]     370     16      8      8
6 months    ki1000109-EE               (24-28]     370    114     53     61
6 months    ki1000109-EE               <=20        370      4      3      1
6 months    ki1000109-EE               >28         370    236    114    122
6 months    ki1000304b-SAS-FoodSuppl   (20-24]      96     15      7      8
6 months    ki1000304b-SAS-FoodSuppl   (24-28]      96     35     14     21
6 months    ki1000304b-SAS-FoodSuppl   <=20         96     28     17     11
6 months    ki1000304b-SAS-FoodSuppl   >28          96     18     10      8
6 months    ki1017093-NIH-Birth        (20-24]     535    131     95     36
6 months    ki1017093-NIH-Birth        (24-28]     535    150    107     43
6 months    ki1017093-NIH-Birth        <=20        535    125    101     24
6 months    ki1017093-NIH-Birth        >28         535    129     89     40
6 months    ki1017093b-PROVIDE         (20-24]     153     46     39      7
6 months    ki1017093b-PROVIDE         (24-28]     153     40     34      6
6 months    ki1017093b-PROVIDE         <=20        153     35     29      6
6 months    ki1017093b-PROVIDE         >28         153     32     23      9
6 months    ki1017093c-NIH-Crypto      (20-24]     715    159    116     43
6 months    ki1017093c-NIH-Crypto      (24-28]     715    200    168     32
6 months    ki1017093c-NIH-Crypto      <=20        715    215    167     48
6 months    ki1017093c-NIH-Crypto      >28         715    141    114     27
6 months    ki1066203-TanzaniaChild2   (20-24]     502    127    119      8
6 months    ki1066203-TanzaniaChild2   (24-28]     502    141    124     17
6 months    ki1066203-TanzaniaChild2   <=20        502     61     55      6
6 months    ki1066203-TanzaniaChild2   >28         502    173    159     14
6 months    ki1101329-Keneba           (20-24]    2080    407    362     45
6 months    ki1101329-Keneba           (24-28]    2080    376    329     47
6 months    ki1101329-Keneba           <=20       2080    405    356     49
6 months    ki1101329-Keneba           >28        2080    892    740    152
6 months    ki1112895-Guatemala BSC    (20-24]      90     31     26      5
6 months    ki1112895-Guatemala BSC    (24-28]      90     13     10      3
6 months    ki1112895-Guatemala BSC    <=20         90     26     15     11
6 months    ki1112895-Guatemala BSC    >28          90     20     13      7
6 months    ki1113344-GMS-Nepal        (20-24]     563    147    119     28
6 months    ki1113344-GMS-Nepal        (24-28]     563    161    131     30
6 months    ki1113344-GMS-Nepal        <=20        563    160    122     38
6 months    ki1113344-GMS-Nepal        >28         563     95     72     23
6 months    ki1126311-ZVITAMBO         (20-24]    2049    655    554    101
6 months    ki1126311-ZVITAMBO         (24-28]    2049    453    371     82
6 months    ki1126311-ZVITAMBO         <=20       2049    495    408     87
6 months    ki1126311-ZVITAMBO         >28        2049    446    381     65
6 months    ki1135781-COHORTS          (20-24]    8076   2169   1753    416
6 months    ki1135781-COHORTS          (24-28]    8076   2180   1757    423
6 months    ki1135781-COHORTS          <=20       8076   1265    947    318
6 months    ki1135781-COHORTS          >28        8076   2462   1875    587
6 months    ki1148112-LCNI-5           (20-24]     343     82     53     29
6 months    ki1148112-LCNI-5           (24-28]     343     80     49     31
6 months    ki1148112-LCNI-5           <=20        343     83     57     26
6 months    ki1148112-LCNI-5           >28         343     98     57     41
9 months    ki0047075b-MAL-ED          (20-24]    1638    371    295     76
9 months    ki0047075b-MAL-ED          (24-28]    1638    449    360     89
9 months    ki0047075b-MAL-ED          <=20       1638    352    272     80
9 months    ki0047075b-MAL-ED          >28        1638    466    373     93
9 months    ki1000108-CMC-V-BCS-2002   (20-24]     366    149     90     59
9 months    ki1000108-CMC-V-BCS-2002   (24-28]     366     99     66     33
9 months    ki1000108-CMC-V-BCS-2002   <=20        366     69     44     25
9 months    ki1000108-CMC-V-BCS-2002   >28         366     49     31     18
9 months    ki1000108-IRC              (20-24]     407    169    120     49
9 months    ki1000108-IRC              (24-28]     407    108     80     28
9 months    ki1000108-IRC              <=20        407     86     58     28
9 months    ki1000108-IRC              >28         407     44     38      6
9 months    ki1000109-EE               (20-24]     364     17      5     12
9 months    ki1000109-EE               (24-28]     364    113     53     60
9 months    ki1000109-EE               <=20        364      4      2      2
9 months    ki1000109-EE               >28         364    230     89    141
9 months    ki1000304b-SAS-FoodSuppl   (20-24]      85     13      5      8
9 months    ki1000304b-SAS-FoodSuppl   (24-28]      85     32      8     24
9 months    ki1000304b-SAS-FoodSuppl   <=20         85     24     11     13
9 months    ki1000304b-SAS-FoodSuppl   >28          85     16      4     12
9 months    ki1017093-NIH-Birth        (20-24]     505    125     79     46
9 months    ki1017093-NIH-Birth        (24-28]     505    145     88     57
9 months    ki1017093-NIH-Birth        <=20        505    114     79     35
9 months    ki1017093-NIH-Birth        >28         505    121     78     43
9 months    ki1017093b-PROVIDE         (20-24]     158     49     40      9
9 months    ki1017093b-PROVIDE         (24-28]     158     40     33      7
9 months    ki1017093b-PROVIDE         <=20        158     36     24     12
9 months    ki1017093b-PROVIDE         >28         158     33     24      9
9 months    ki1017093c-NIH-Crypto      (20-24]     706    162    122     40
9 months    ki1017093c-NIH-Crypto      (24-28]     706    195    155     40
9 months    ki1017093c-NIH-Crypto      <=20        706    209    156     53
9 months    ki1017093c-NIH-Crypto      >28         706    140    109     31
9 months    ki1066203-TanzaniaChild2   (20-24]     432    109     88     21
9 months    ki1066203-TanzaniaChild2   (24-28]     432    125    107     18
9 months    ki1066203-TanzaniaChild2   <=20        432     46     41      5
9 months    ki1066203-TanzaniaChild2   >28         432    152    134     18
9 months    ki1101329-Keneba           (20-24]    2057    394    337     57
9 months    ki1101329-Keneba           (24-28]    2057    377    308     69
9 months    ki1101329-Keneba           <=20       2057    383    327     56
9 months    ki1101329-Keneba           >28        2057    903    713    190
9 months    ki1112895-Guatemala BSC    (20-24]      60     20     14      6
9 months    ki1112895-Guatemala BSC    (24-28]      60     11      8      3
9 months    ki1112895-Guatemala BSC    <=20         60     17      8      9
9 months    ki1112895-Guatemala BSC    >28          60     12      8      4
9 months    ki1113344-GMS-Nepal        (20-24]     551    141    102     39
9 months    ki1113344-GMS-Nepal        (24-28]     551    158    120     38
9 months    ki1113344-GMS-Nepal        <=20        551    161    109     52
9 months    ki1113344-GMS-Nepal        >28         551     91     65     26
9 months    ki1126311-ZVITAMBO         (20-24]    1960    620    495    125
9 months    ki1126311-ZVITAMBO         (24-28]    1960    450    369     81
9 months    ki1126311-ZVITAMBO         <=20       1960    474    368    106
9 months    ki1126311-ZVITAMBO         >28        1960    416    346     70
9 months    ki1135781-COHORTS          (20-24]    7448   1954   1422    532
9 months    ki1135781-COHORTS          (24-28]    7448   1994   1461    533
9 months    ki1135781-COHORTS          <=20       7448   1169    783    386
9 months    ki1135781-COHORTS          >28        7448   2331   1584    747
9 months    ki1148112-LCNI-5           (20-24]     269     61     39     22
9 months    ki1148112-LCNI-5           (24-28]     269     63     42     21
9 months    ki1148112-LCNI-5           <=20        269     72     52     20
9 months    ki1148112-LCNI-5           >28         269     73     50     23
Birth       ki0047075b-MAL-ED          (20-24]    1498    378    326     52
Birth       ki0047075b-MAL-ED          (24-28]    1498    399    350     49
Birth       ki0047075b-MAL-ED          <=20       1498    340    284     56
Birth       ki0047075b-MAL-ED          >28        1498    381    340     41
Birth       ki1000108-CMC-V-BCS-2002   (20-24]      90     33     26      7
Birth       ki1000108-CMC-V-BCS-2002   (24-28]      90     29     26      3
Birth       ki1000108-CMC-V-BCS-2002   <=20         90     20     15      5
Birth       ki1000108-CMC-V-BCS-2002   >28          90      8      7      1
Birth       ki1000108-IRC              (20-24]     388    164    145     19
Birth       ki1000108-IRC              (24-28]     388    102     92     10
Birth       ki1000108-IRC              <=20        388     81     67     14
Birth       ki1000108-IRC              >28         388     41     39      2
Birth       ki1000109-EE               (20-24]       2      0      0      0
Birth       ki1000109-EE               (24-28]       2      0      0      0
Birth       ki1000109-EE               <=20          2      0      0      0
Birth       ki1000109-EE               >28           2      2      1      1
Birth       ki1000304b-SAS-FoodSuppl   (20-24]       0      0      0      0
Birth       ki1000304b-SAS-FoodSuppl   (24-28]       0      0      0      0
Birth       ki1000304b-SAS-FoodSuppl   <=20          0      0      0      0
Birth       ki1000304b-SAS-FoodSuppl   >28           0      0      0      0
Birth       ki1017093-NIH-Birth        (20-24]      28      7      7      0
Birth       ki1017093-NIH-Birth        (24-28]      28      5      4      1
Birth       ki1017093-NIH-Birth        <=20         28      9      9      0
Birth       ki1017093-NIH-Birth        >28          28      7      7      0
Birth       ki1017093b-PROVIDE         (20-24]       0      0      0      0
Birth       ki1017093b-PROVIDE         (24-28]       0      0      0      0
Birth       ki1017093b-PROVIDE         <=20          0      0      0      0
Birth       ki1017093b-PROVIDE         >28           0      0      0      0
Birth       ki1017093c-NIH-Crypto      (20-24]      27      6      4      2
Birth       ki1017093c-NIH-Crypto      (24-28]      27      9      9      0
Birth       ki1017093c-NIH-Crypto      <=20         27     10      8      2
Birth       ki1017093c-NIH-Crypto      >28          27      2      1      1
Birth       ki1066203-TanzaniaChild2   (20-24]       0      0      0      0
Birth       ki1066203-TanzaniaChild2   (24-28]       0      0      0      0
Birth       ki1066203-TanzaniaChild2   <=20          0      0      0      0
Birth       ki1066203-TanzaniaChild2   >28           0      0      0      0
Birth       ki1101329-Keneba           (20-24]    1541    276    259     17
Birth       ki1101329-Keneba           (24-28]    1541    265    255     10
Birth       ki1101329-Keneba           <=20       1541    327    302     25
Birth       ki1101329-Keneba           >28        1541    673    643     30
Birth       ki1112895-Guatemala BSC    (20-24]       0      0      0      0
Birth       ki1112895-Guatemala BSC    (24-28]       0      0      0      0
Birth       ki1112895-Guatemala BSC    <=20          0      0      0      0
Birth       ki1112895-Guatemala BSC    >28           0      0      0      0
Birth       ki1113344-GMS-Nepal        (20-24]       0      0      0      0
Birth       ki1113344-GMS-Nepal        (24-28]       0      0      0      0
Birth       ki1113344-GMS-Nepal        <=20          0      0      0      0
Birth       ki1113344-GMS-Nepal        >28           0      0      0      0
Birth       ki1126311-ZVITAMBO         (20-24]    3439   1130   1000    130
Birth       ki1126311-ZVITAMBO         (24-28]    3439    749    676     73
Birth       ki1126311-ZVITAMBO         <=20       3439    878    782     96
Birth       ki1126311-ZVITAMBO         >28        3439    682    622     60
Birth       ki1135781-COHORTS          (20-24]    8172   2198   1993    205
Birth       ki1135781-COHORTS          (24-28]    8172   2181   1986    195
Birth       ki1135781-COHORTS          <=20       8172   1302   1144    158
Birth       ki1135781-COHORTS          >28        8172   2491   2285    206
Birth       ki1148112-LCNI-5           (20-24]       0      0      0      0
Birth       ki1148112-LCNI-5           (24-28]       0      0      0      0
Birth       ki1148112-LCNI-5           <=20          0      0      0      0
Birth       ki1148112-LCNI-5           >28           0      0      0      0

## Results Table

### Parameter: TSM


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
12 months   ki0047075b-MAL-ED          (20-24]              NA                0.2534060   0.2088916   0.2979204
12 months   ki0047075b-MAL-ED          (24-28]              NA                0.2477477   0.2075800   0.2879155
12 months   ki0047075b-MAL-ED          <=20                 NA                0.2959770   0.2480020   0.3439521
12 months   ki0047075b-MAL-ED          >28                  NA                0.2835165   0.2420908   0.3249421
12 months   ki1000108-CMC-V-BCS-2002   (20-24]              NA                0.4797297   0.3991323   0.5603271
12 months   ki1000108-CMC-V-BCS-2002   (24-28]              NA                0.5100000   0.4118880   0.6081120
12 months   ki1000108-CMC-V-BCS-2002   <=20                 NA                0.5362319   0.4184059   0.6540579
12 months   ki1000108-CMC-V-BCS-2002   >28                  NA                0.4705882   0.3334144   0.6077620
12 months   ki1000108-IRC              (20-24]              NA                0.3550296   0.2827955   0.4272637
12 months   ki1000108-IRC              (24-28]              NA                0.2777778   0.1932001   0.3623555
12 months   ki1000108-IRC              <=20                 NA                0.2470588   0.1552563   0.3388614
12 months   ki1000108-IRC              >28                  NA                0.1818182   0.0677142   0.2959222
12 months   ki1017093-NIH-Birth        (20-24]              NA                0.4297521   0.3414561   0.5180480
12 months   ki1017093-NIH-Birth        (24-28]              NA                0.3758865   0.2958583   0.4559148
12 months   ki1017093-NIH-Birth        <=20                 NA                0.3008850   0.2162348   0.3855351
12 months   ki1017093-NIH-Birth        >28                  NA                0.3859649   0.2965087   0.4754212
12 months   ki1017093b-PROVIDE         (20-24]              NA                0.2653061   0.1412835   0.3893287
12 months   ki1017093b-PROVIDE         (24-28]              NA                0.1750000   0.0568624   0.2931376
12 months   ki1017093b-PROVIDE         <=20                 NA                0.3636364   0.1989713   0.5283014
12 months   ki1017093b-PROVIDE         >28                  NA                0.3870968   0.2150697   0.5591239
12 months   ki1017093c-NIH-Crypto      (20-24]              NA                0.2564103   0.1878412   0.3249793
12 months   ki1017093c-NIH-Crypto      (24-28]              NA                0.2222222   0.1642734   0.2801711
12 months   ki1017093c-NIH-Crypto      <=20                 NA                0.2511848   0.1926252   0.3097445
12 months   ki1017093c-NIH-Crypto      >28                  NA                0.2411348   0.1704772   0.3117923
12 months   ki1066203-TanzaniaChild2   (20-24]              NA                0.1739130   0.0963516   0.2514745
12 months   ki1066203-TanzaniaChild2   (24-28]              NA                0.1274510   0.0626432   0.1922587
12 months   ki1066203-TanzaniaChild2   <=20                 NA                0.1538462   0.0404505   0.2672418
12 months   ki1066203-TanzaniaChild2   >28                  NA                0.1393443   0.0778067   0.2008818
12 months   ki1101329-Keneba           (20-24]              NA                0.2127072   0.1705409   0.2548735
12 months   ki1101329-Keneba           (24-28]              NA                0.2377049   0.1940834   0.2813264
12 months   ki1101329-Keneba           <=20                 NA                0.2176309   0.1751715   0.2600902
12 months   ki1101329-Keneba           >28                  NA                0.2843602   0.2539184   0.3148020
12 months   ki1113344-GMS-Nepal        (20-24]              NA                0.2907801   0.2157560   0.3658043
12 months   ki1113344-GMS-Nepal        (24-28]              NA                0.3703704   0.2959416   0.4447991
12 months   ki1113344-GMS-Nepal        <=20                 NA                0.3250000   0.2523608   0.3976392
12 months   ki1113344-GMS-Nepal        >28                  NA                0.4000000   0.3013990   0.4986010
12 months   ki1126311-ZVITAMBO         (20-24]              NA                0.2384473   0.2025284   0.2743663
12 months   ki1126311-ZVITAMBO         (24-28]              NA                0.2371134   0.1947815   0.2794453
12 months   ki1126311-ZVITAMBO         <=20                 NA                0.2518337   0.2097543   0.2939132
12 months   ki1126311-ZVITAMBO         >28                  NA                0.2250000   0.1818514   0.2681486
12 months   ki1135781-COHORTS          (20-24]              NA                0.3728532   0.3505435   0.3951629
12 months   ki1135781-COHORTS          (24-28]              NA                0.3602585   0.3384220   0.3820950
12 months   ki1135781-COHORTS          <=20                 NA                0.4434948   0.4134863   0.4735033
12 months   ki1135781-COHORTS          >28                  NA                0.4290207   0.4084586   0.4495827
12 months   ki1148112-LCNI-5           (20-24]              NA                0.4406780   0.3137501   0.5676058
12 months   ki1148112-LCNI-5           (24-28]              NA                0.4576271   0.3302562   0.5849980
12 months   ki1148112-LCNI-5           <=20                 NA                0.3692308   0.2516818   0.4867798
12 months   ki1148112-LCNI-5           >28                  NA                0.4133333   0.3016710   0.5249957
18 months   ki0047075b-MAL-ED          (20-24]              NA                0.3810888   0.3301202   0.4320575
18 months   ki0047075b-MAL-ED          (24-28]              NA                0.3695150   0.3240373   0.4149927
18 months   ki0047075b-MAL-ED          <=20                 NA                0.4254658   0.3714463   0.4794854
18 months   ki0047075b-MAL-ED          >28                  NA                0.3795455   0.3341879   0.4249030
18 months   ki1000108-CMC-V-BCS-2002   (20-24]              NA                0.7266667   0.6552490   0.7980843
18 months   ki1000108-CMC-V-BCS-2002   (24-28]              NA                0.6666667   0.5736815   0.7596518
18 months   ki1000108-CMC-V-BCS-2002   <=20                 NA                0.6956522   0.5869360   0.8043683
18 months   ki1000108-CMC-V-BCS-2002   >28                  NA                0.6078431   0.4736662   0.7420201
18 months   ki1000108-IRC              (20-24]              NA                0.4131737   0.3384001   0.4879472
18 months   ki1000108-IRC              (24-28]              NA                0.3551402   0.2643528   0.4459276
18 months   ki1000108-IRC              <=20                 NA                0.3333333   0.2341545   0.4325122
18 months   ki1000108-IRC              >28                  NA                0.1818182   0.0677138   0.2959225
18 months   ki1017093-NIH-Birth        (20-24]              NA                0.5701754   0.4792015   0.6611494
18 months   ki1017093-NIH-Birth        (24-28]              NA                0.6230769   0.5396809   0.7064729
18 months   ki1017093-NIH-Birth        <=20                 NA                0.6226415   0.5302647   0.7150183
18 months   ki1017093-NIH-Birth        >28                  NA                0.5315315   0.4386001   0.6244630
18 months   ki1017093b-PROVIDE         (20-24]              NA                0.2954545   0.1601641   0.4307450
18 months   ki1017093b-PROVIDE         (24-28]              NA                0.3157895   0.1674709   0.4641080
18 months   ki1017093b-PROVIDE         <=20                 NA                0.4516129   0.2758045   0.6274213
18 months   ki1017093b-PROVIDE         >28                  NA                0.4642857   0.2789010   0.6496704
18 months   ki1017093c-NIH-Crypto      (20-24]              NA                0.2847222   0.2109560   0.3584885
18 months   ki1017093c-NIH-Crypto      (24-28]              NA                0.3220339   0.2531434   0.3909243
18 months   ki1017093c-NIH-Crypto      <=20                 NA                0.2864583   0.2224582   0.3504584
18 months   ki1017093c-NIH-Crypto      >28                  NA                0.3140496   0.2312852   0.3968140
18 months   ki1066203-TanzaniaChild2   (20-24]              NA                0.3064516   0.1914727   0.4214305
18 months   ki1066203-TanzaniaChild2   (24-28]              NA                0.2820513   0.1819918   0.3821107
18 months   ki1066203-TanzaniaChild2   <=20                 NA                0.2692308   0.0984022   0.4400593
18 months   ki1066203-TanzaniaChild2   >28                  NA                0.2197802   0.1345337   0.3050268
18 months   ki1101329-Keneba           (20-24]              NA                0.2929577   0.2456020   0.3403135
18 months   ki1101329-Keneba           (24-28]              NA                0.3218391   0.2727417   0.3709364
18 months   ki1101329-Keneba           <=20                 NA                0.2882353   0.2400778   0.3363928
18 months   ki1101329-Keneba           >28                  NA                0.3529412   0.3211230   0.3847594
18 months   ki1113344-GMS-Nepal        (20-24]              NA                0.5072464   0.4237576   0.5907352
18 months   ki1113344-GMS-Nepal        (24-28]              NA                0.5443038   0.4665766   0.6220310
18 months   ki1113344-GMS-Nepal        <=20                 NA                0.5276074   0.4508966   0.6043182
18 months   ki1113344-GMS-Nepal        >28                  NA                0.5494505   0.4471311   0.6517700
18 months   ki1126311-ZVITAMBO         (20-24]              NA                0.5217391   0.4382982   0.6051801
18 months   ki1126311-ZVITAMBO         (24-28]              NA                0.4081633   0.3107396   0.5055869
18 months   ki1126311-ZVITAMBO         <=20                 NA                0.4574468   0.3566174   0.5582762
18 months   ki1126311-ZVITAMBO         >28                  NA                0.4947368   0.3940799   0.5953938
18 months   ki1135781-COHORTS          (20-24]              NA                0.5991792   0.5636474   0.6347110
18 months   ki1135781-COHORTS          (24-28]              NA                0.6076135   0.5709880   0.6442389
18 months   ki1135781-COHORTS          <=20                 NA                0.6428571   0.6015870   0.6841273
18 months   ki1135781-COHORTS          >28                  NA                0.6465863   0.6168938   0.6762789
18 months   ki1148112-LCNI-5           (20-24]              NA                0.5555556   0.4405856   0.6705255
18 months   ki1148112-LCNI-5           (24-28]              NA                0.5072464   0.3890844   0.6254084
18 months   ki1148112-LCNI-5           <=20                 NA                0.5142857   0.3970063   0.6315651
18 months   ki1148112-LCNI-5           >28                  NA                0.4482759   0.3435987   0.5529530
24 months   ki0047075b-MAL-ED          (20-24]              NA                0.3607038   0.3097187   0.4116889
24 months   ki0047075b-MAL-ED          (24-28]              NA                0.3672986   0.3212891   0.4133080
24 months   ki0047075b-MAL-ED          <=20                 NA                0.3918919   0.3362603   0.4475235
24 months   ki0047075b-MAL-ED          >28                  NA                0.3831776   0.3371039   0.4292512
24 months   ki1000108-CMC-V-BCS-2002   (20-24]              NA                0.7333333   0.6624699   0.8041967
24 months   ki1000108-CMC-V-BCS-2002   (24-28]              NA                0.6732673   0.5816744   0.7648603
24 months   ki1000108-CMC-V-BCS-2002   <=20                 NA                0.7042254   0.5979238   0.8105269
24 months   ki1000108-CMC-V-BCS-2002   >28                  NA                0.7600000   0.6414613   0.8785387
24 months   ki1000108-IRC              (20-24]              NA                0.4235294   0.3491615   0.4978973
24 months   ki1000108-IRC              (24-28]              NA                0.4166667   0.3235729   0.5097604
24 months   ki1000108-IRC              <=20                 NA                0.4367816   0.3324320   0.5411312
24 months   ki1000108-IRC              >28                  NA                0.3409091   0.2006777   0.4811405
24 months   ki1017093-NIH-Birth        (20-24]              NA                0.5420561   0.4475426   0.6365695
24 months   ki1017093-NIH-Birth        (24-28]              NA                0.5798319   0.4910456   0.6686183
24 months   ki1017093-NIH-Birth        <=20                 NA                0.5408163   0.4420379   0.6395948
24 months   ki1017093-NIH-Birth        >28                  NA                0.5533981   0.4572772   0.6495189
24 months   ki1017093b-PROVIDE         (20-24]              NA                0.2291667   0.1098652   0.3484681
24 months   ki1017093b-PROVIDE         (24-28]              NA                0.2631579   0.1226781   0.4036377
24 months   ki1017093b-PROVIDE         <=20                 NA                0.4242424   0.2550502   0.5934346
24 months   ki1017093b-PROVIDE         >28                  NA                0.4666667   0.2875432   0.6457901
24 months   ki1017093c-NIH-Crypto      (20-24]              NA                0.2956522   0.2121676   0.3791367
24 months   ki1017093c-NIH-Crypto      (24-28]              NA                0.2657343   0.1932651   0.3382034
24 months   ki1017093c-NIH-Crypto      <=20                 NA                0.2222222   0.1581404   0.2863041
24 months   ki1017093c-NIH-Crypto      >28                  NA                0.2553191   0.1670856   0.3435527
24 months   ki1101329-Keneba           (20-24]              NA                0.3196203   0.2681894   0.3710512
24 months   ki1101329-Keneba           (24-28]              NA                0.3108974   0.2595229   0.3622720
24 months   ki1101329-Keneba           <=20                 NA                0.3322476   0.2795435   0.3849516
24 months   ki1101329-Keneba           >28                  NA                0.3517330   0.3181909   0.3852750
24 months   ki1113344-GMS-Nepal        (20-24]              NA                0.4523810   0.3653868   0.5393751
24 months   ki1113344-GMS-Nepal        (24-28]              NA                0.4571429   0.3745413   0.5397445
24 months   ki1113344-GMS-Nepal        <=20                 NA                0.4452055   0.3645092   0.5259018
24 months   ki1113344-GMS-Nepal        >28                  NA                0.4252874   0.3212976   0.5292771
24 months   ki1126311-ZVITAMBO         (20-24]              NA                0.5609756   0.4084114   0.7135398
24 months   ki1126311-ZVITAMBO         (24-28]              NA                0.5454545   0.3364841   0.7544249
24 months   ki1126311-ZVITAMBO         <=20                 NA                0.6296296   0.4466903   0.8125689
24 months   ki1126311-ZVITAMBO         >28                  NA                0.6153846   0.4275705   0.8031987
24 months   ki1135781-COHORTS          (20-24]              NA                0.5368664   0.5134083   0.5603244
24 months   ki1135781-COHORTS          (24-28]              NA                0.5157835   0.4925263   0.5390407
24 months   ki1135781-COHORTS          <=20                 NA                0.6525591   0.6232782   0.6818399
24 months   ki1135781-COHORTS          >28                  NA                0.5900563   0.5691779   0.6109346
24 months   ki1148112-LCNI-5           (20-24]              NA                0.5178571   0.3867226   0.6489917
24 months   ki1148112-LCNI-5           (24-28]              NA                0.5333333   0.4068464   0.6598202
24 months   ki1148112-LCNI-5           <=20                 NA                0.3666667   0.2444882   0.4888451
24 months   ki1148112-LCNI-5           >28                  NA                0.4189189   0.3062807   0.5315572
3 months    ki0047075b-MAL-ED          (20-24]              NA                0.1438849   0.1101891   0.1775807
3 months    ki0047075b-MAL-ED          (24-28]              NA                0.1356994   0.1050216   0.1663772
3 months    ki0047075b-MAL-ED          <=20                 NA                0.2164948   0.1755028   0.2574869
3 months    ki0047075b-MAL-ED          >28                  NA                0.1321138   0.1021847   0.1620429
3 months    ki1000108-CMC-V-BCS-2002   (20-24]              NA                0.2275862   0.1592481   0.2959243
3 months    ki1000108-CMC-V-BCS-2002   (24-28]              NA                0.2551020   0.1686767   0.3415274
3 months    ki1000108-CMC-V-BCS-2002   <=20                 NA                0.3623188   0.2487468   0.4758909
3 months    ki1000108-CMC-V-BCS-2002   >28                  NA                0.1400000   0.0436888   0.2363112
3 months    ki1000108-IRC              (20-24]              NA                0.2176471   0.1555408   0.2797533
3 months    ki1000108-IRC              (24-28]              NA                0.1944444   0.1197108   0.2691780
3 months    ki1000108-IRC              <=20                 NA                0.2790698   0.1841545   0.3739850
3 months    ki1000108-IRC              >28                  NA                0.2093023   0.0875604   0.3310443
3 months    ki1000304b-SAS-FoodSuppl   (20-24]              NA                0.2941176   0.0763965   0.5118388
3 months    ki1000304b-SAS-FoodSuppl   (24-28]              NA                0.5135135   0.3516277   0.6753993
3 months    ki1000304b-SAS-FoodSuppl   <=20                 NA                0.3600000   0.1708660   0.5491340
3 months    ki1000304b-SAS-FoodSuppl   >28                  NA                0.2777778   0.0697860   0.4857696
3 months    ki1017093-NIH-Birth        (20-24]              NA                0.2307692   0.1616530   0.2998855
3 months    ki1017093-NIH-Birth        (24-28]              NA                0.2484076   0.1807597   0.3160556
3 months    ki1017093-NIH-Birth        <=20                 NA                0.1818182   0.1159634   0.2476730
3 months    ki1017093-NIH-Birth        >28                  NA                0.2426471   0.1705367   0.3147575
3 months    ki1017093c-NIH-Crypto      (20-24]              NA                0.2195122   0.1561198   0.2829046
3 months    ki1017093c-NIH-Crypto      (24-28]              NA                0.2128713   0.1563838   0.2693588
3 months    ki1017093c-NIH-Crypto      <=20                 NA                0.2339450   0.1777102   0.2901798
3 months    ki1017093c-NIH-Crypto      >28                  NA                0.1805556   0.1176874   0.2434237
3 months    ki1066203-TanzaniaChild2   (20-24]              NA                0.0993377   0.0515873   0.1470882
3 months    ki1066203-TanzaniaChild2   (24-28]              NA                0.0552147   0.0201212   0.0903083
3 months    ki1066203-TanzaniaChild2   <=20                 NA                0.1044776   0.0311716   0.1777837
3 months    ki1066203-TanzaniaChild2   >28                  NA                0.0416667   0.0133769   0.0699564
3 months    ki1101329-Keneba           (20-24]              NA                0.1399549   0.1076401   0.1722696
3 months    ki1101329-Keneba           (24-28]              NA                0.1302083   0.0965409   0.1638757
3 months    ki1101329-Keneba           <=20                 NA                0.1595506   0.1255197   0.1935814
3 months    ki1101329-Keneba           >28                  NA                0.1430155   0.1201636   0.1658674
3 months    ki1113344-GMS-Nepal        (20-24]              NA                0.1369863   0.0811650   0.1928076
3 months    ki1113344-GMS-Nepal        (24-28]              NA                0.1194969   0.0690338   0.1699599
3 months    ki1113344-GMS-Nepal        <=20                 NA                0.1976048   0.1371594   0.2580502
3 months    ki1113344-GMS-Nepal        >28                  NA                0.1212121   0.0568654   0.1855588
3 months    ki1126311-ZVITAMBO         (20-24]              NA                0.1706629   0.1429644   0.1983614
3 months    ki1126311-ZVITAMBO         (24-28]              NA                0.1637765   0.1319311   0.1956219
3 months    ki1126311-ZVITAMBO         <=20                 NA                0.1981481   0.1645211   0.2317752
3 months    ki1126311-ZVITAMBO         >28                  NA                0.1563126   0.1244427   0.1881826
3 months    ki1135781-COHORTS          (20-24]              NA                0.1387025   0.1243722   0.1530327
3 months    ki1135781-COHORTS          (24-28]              NA                0.1354582   0.1213454   0.1495709
3 months    ki1135781-COHORTS          <=20                 NA                0.1775281   0.1570293   0.1980268
3 months    ki1135781-COHORTS          >28                  NA                0.1692247   0.1546451   0.1838043
6 months    ki0047075b-MAL-ED          (20-24]              NA                0.1725888   0.1352642   0.2099134
6 months    ki0047075b-MAL-ED          (24-28]              NA                0.1263617   0.0959568   0.1567665
6 months    ki0047075b-MAL-ED          <=20                 NA                0.2032520   0.1621805   0.2443236
6 months    ki0047075b-MAL-ED          >28                  NA                0.1567797   0.1239686   0.1895908
6 months    ki1000108-CMC-V-BCS-2002   (20-24]              NA                0.2885906   0.2157380   0.3614432
6 months    ki1000108-CMC-V-BCS-2002   (24-28]              NA                0.2700000   0.1828674   0.3571326
6 months    ki1000108-CMC-V-BCS-2002   <=20                 NA                0.3623188   0.2487498   0.4758879
6 months    ki1000108-CMC-V-BCS-2002   >28                  NA                0.3137255   0.1862061   0.4412448
6 months    ki1000108-IRC              (20-24]              NA                0.2781065   0.2104700   0.3457430
6 months    ki1000108-IRC              (24-28]              NA                0.2037037   0.1276523   0.2797551
6 months    ki1000108-IRC              <=20                 NA                0.2674419   0.1737787   0.3611050
6 months    ki1000108-IRC              >28                  NA                0.1818182   0.0677145   0.2959218
6 months    ki1000304b-SAS-FoodSuppl   (20-24]              NA                0.5333333   0.2795407   0.7871260
6 months    ki1000304b-SAS-FoodSuppl   (24-28]              NA                0.6000000   0.4368476   0.7631524
6 months    ki1000304b-SAS-FoodSuppl   <=20                 NA                0.3928571   0.2110103   0.5747039
6 months    ki1000304b-SAS-FoodSuppl   >28                  NA                0.4444444   0.2136857   0.6752032
6 months    ki1017093-NIH-Birth        (20-24]              NA                0.2748092   0.1982917   0.3513266
6 months    ki1017093-NIH-Birth        (24-28]              NA                0.2866667   0.2142325   0.3591009
6 months    ki1017093-NIH-Birth        <=20                 NA                0.1920000   0.1228877   0.2611123
6 months    ki1017093-NIH-Birth        >28                  NA                0.3100775   0.2301871   0.3899680
6 months    ki1017093b-PROVIDE         (20-24]              NA                0.1521739   0.0480341   0.2563137
6 months    ki1017093b-PROVIDE         (24-28]              NA                0.1500000   0.0389811   0.2610189
6 months    ki1017093b-PROVIDE         <=20                 NA                0.1714286   0.0461593   0.2966978
6 months    ki1017093b-PROVIDE         >28                  NA                0.2812500   0.1249596   0.4375404
6 months    ki1017093c-NIH-Crypto      (20-24]              NA                0.2704403   0.2013496   0.3395309
6 months    ki1017093c-NIH-Crypto      (24-28]              NA                0.1600000   0.1091564   0.2108436
6 months    ki1017093c-NIH-Crypto      <=20                 NA                0.2232558   0.1675535   0.2789581
6 months    ki1017093c-NIH-Crypto      >28                  NA                0.1914894   0.1264977   0.2564810
6 months    ki1066203-TanzaniaChild2   (20-24]              NA                0.0629921   0.0206966   0.1052876
6 months    ki1066203-TanzaniaChild2   (24-28]              NA                0.1205674   0.0667667   0.1743681
6 months    ki1066203-TanzaniaChild2   <=20                 NA                0.0983607   0.0235535   0.1731678
6 months    ki1066203-TanzaniaChild2   >28                  NA                0.0809249   0.0402455   0.1216043
6 months    ki1101329-Keneba           (20-24]              NA                0.1105651   0.0800917   0.1410385
6 months    ki1101329-Keneba           (24-28]              NA                0.1250000   0.0915637   0.1584363
6 months    ki1101329-Keneba           <=20                 NA                0.1209877   0.0892194   0.1527559
6 months    ki1101329-Keneba           >28                  NA                0.1704036   0.1457237   0.1950835
6 months    ki1113344-GMS-Nepal        (20-24]              NA                0.1904762   0.1269415   0.2540108
6 months    ki1113344-GMS-Nepal        (24-28]              NA                0.1863354   0.1261361   0.2465347
6 months    ki1113344-GMS-Nepal        <=20                 NA                0.2375000   0.1715027   0.3034973
6 months    ki1113344-GMS-Nepal        >28                  NA                0.2421053   0.1558910   0.3283195
6 months    ki1126311-ZVITAMBO         (20-24]              NA                0.1541985   0.1265349   0.1818620
6 months    ki1126311-ZVITAMBO         (24-28]              NA                0.1810155   0.1455504   0.2164805
6 months    ki1126311-ZVITAMBO         <=20                 NA                0.1757576   0.1422197   0.2092955
6 months    ki1126311-ZVITAMBO         >28                  NA                0.1457399   0.1129854   0.1784944
6 months    ki1135781-COHORTS          (20-24]              NA                0.1917935   0.1752234   0.2083635
6 months    ki1135781-COHORTS          (24-28]              NA                0.1940367   0.1774352   0.2106382
6 months    ki1135781-COHORTS          <=20                 NA                0.2513834   0.2274763   0.2752905
6 months    ki1135781-COHORTS          >28                  NA                0.2384240   0.2215910   0.2552571
6 months    ki1148112-LCNI-5           (20-24]              NA                0.3536585   0.2500255   0.4572916
6 months    ki1148112-LCNI-5           (24-28]              NA                0.3875000   0.2805881   0.4944119
6 months    ki1148112-LCNI-5           <=20                 NA                0.3132530   0.2133246   0.4131814
6 months    ki1148112-LCNI-5           >28                  NA                0.4183673   0.3205598   0.5161749
9 months    ki0047075b-MAL-ED          (20-24]              NA                0.2048518   0.1637711   0.2459324
9 months    ki0047075b-MAL-ED          (24-28]              NA                0.1982183   0.1613326   0.2351039
9 months    ki0047075b-MAL-ED          <=20                 NA                0.2272727   0.1834806   0.2710649
9 months    ki0047075b-MAL-ED          >28                  NA                0.1995708   0.1632716   0.2358701
9 months    ki1000108-CMC-V-BCS-2002   (20-24]              NA                0.3959732   0.3173392   0.4746071
9 months    ki1000108-CMC-V-BCS-2002   (24-28]              NA                0.3333333   0.2403472   0.4263195
9 months    ki1000108-CMC-V-BCS-2002   <=20                 NA                0.3623188   0.2487485   0.4758892
9 months    ki1000108-CMC-V-BCS-2002   >28                  NA                0.3673469   0.2321816   0.5025122
9 months    ki1000108-IRC              (20-24]              NA                0.2899408   0.2214487   0.3584330
9 months    ki1000108-IRC              (24-28]              NA                0.2592593   0.1765088   0.3420098
9 months    ki1000108-IRC              <=20                 NA                0.3255814   0.2264234   0.4247394
9 months    ki1000108-IRC              >28                  NA                0.1363636   0.0348392   0.2378881
9 months    ki1017093-NIH-Birth        (20-24]              NA                0.3680000   0.2833736   0.4526264
9 months    ki1017093-NIH-Birth        (24-28]              NA                0.3931034   0.3135232   0.4726837
9 months    ki1017093-NIH-Birth        <=20                 NA                0.3070175   0.2222619   0.3917732
9 months    ki1017093-NIH-Birth        >28                  NA                0.3553719   0.2700065   0.4407373
9 months    ki1017093b-PROVIDE         (20-24]              NA                0.1836735   0.0749098   0.2924372
9 months    ki1017093b-PROVIDE         (24-28]              NA                0.1750000   0.0568747   0.2931253
9 months    ki1017093b-PROVIDE         <=20                 NA                0.3333333   0.1788544   0.4878123
9 months    ki1017093b-PROVIDE         >28                  NA                0.2727273   0.1202929   0.4251616
9 months    ki1017093c-NIH-Crypto      (20-24]              NA                0.2469136   0.1804638   0.3133633
9 months    ki1017093c-NIH-Crypto      (24-28]              NA                0.2051282   0.1484130   0.2618434
9 months    ki1017093c-NIH-Crypto      <=20                 NA                0.2535885   0.1945634   0.3126136
9 months    ki1017093c-NIH-Crypto      >28                  NA                0.2214286   0.1526017   0.2902554
9 months    ki1066203-TanzaniaChild2   (20-24]              NA                0.1926606   0.1185359   0.2667852
9 months    ki1066203-TanzaniaChild2   (24-28]              NA                0.1440000   0.0823810   0.2056190
9 months    ki1066203-TanzaniaChild2   <=20                 NA                0.1086957   0.0186440   0.1987473
9 months    ki1066203-TanzaniaChild2   >28                  NA                0.1184211   0.0669960   0.1698461
9 months    ki1101329-Keneba           (20-24]              NA                0.1446701   0.1099275   0.1794126
9 months    ki1101329-Keneba           (24-28]              NA                0.1830239   0.1439810   0.2220667
9 months    ki1101329-Keneba           <=20                 NA                0.1462141   0.1108206   0.1816076
9 months    ki1101329-Keneba           >28                  NA                0.2104097   0.1838182   0.2370013
9 months    ki1113344-GMS-Nepal        (20-24]              NA                0.2765957   0.2026954   0.3504961
9 months    ki1113344-GMS-Nepal        (24-28]              NA                0.2405063   0.1738043   0.3072084
9 months    ki1113344-GMS-Nepal        <=20                 NA                0.3229814   0.2506846   0.3952781
9 months    ki1113344-GMS-Nepal        >28                  NA                0.2857143   0.1928126   0.3786160
9 months    ki1126311-ZVITAMBO         (20-24]              NA                0.2016129   0.1700244   0.2332014
9 months    ki1126311-ZVITAMBO         (24-28]              NA                0.1800000   0.1444945   0.2155055
9 months    ki1126311-ZVITAMBO         <=20                 NA                0.2236287   0.1861082   0.2611492
9 months    ki1126311-ZVITAMBO         >28                  NA                0.1682692   0.1323104   0.2042281
9 months    ki1135781-COHORTS          (20-24]              NA                0.2722620   0.2525244   0.2919997
9 months    ki1135781-COHORTS          (24-28]              NA                0.2673019   0.2478761   0.2867277
9 months    ki1135781-COHORTS          <=20                 NA                0.3301967   0.3032361   0.3571574
9 months    ki1135781-COHORTS          >28                  NA                0.3204633   0.3015180   0.3394086
9 months    ki1148112-LCNI-5           (20-24]              NA                0.3606557   0.2399284   0.4813831
9 months    ki1148112-LCNI-5           (24-28]              NA                0.3333333   0.2167114   0.4499553
9 months    ki1148112-LCNI-5           <=20                 NA                0.2777778   0.1741265   0.3814291
9 months    ki1148112-LCNI-5           >28                  NA                0.3150685   0.2083053   0.4218317
Birth       ki0047075b-MAL-ED          (20-24]              NA                0.1375661   0.1028313   0.1723010
Birth       ki0047075b-MAL-ED          (24-28]              NA                0.1228070   0.0905914   0.1550226
Birth       ki0047075b-MAL-ED          <=20                 NA                0.1647059   0.1252667   0.2041451
Birth       ki0047075b-MAL-ED          >28                  NA                0.1076115   0.0764846   0.1387385
Birth       ki1101329-Keneba           (20-24]              NA                0.0615942   0.0332216   0.0899668
Birth       ki1101329-Keneba           (24-28]              NA                0.0377358   0.0147854   0.0606863
Birth       ki1101329-Keneba           <=20                 NA                0.0764526   0.0476428   0.1052624
Birth       ki1101329-Keneba           >28                  NA                0.0445765   0.0289798   0.0601732
Birth       ki1126311-ZVITAMBO         (20-24]              NA                0.1150442   0.0964377   0.1336508
Birth       ki1126311-ZVITAMBO         (24-28]              NA                0.0974633   0.0762199   0.1187066
Birth       ki1126311-ZVITAMBO         <=20                 NA                0.1093394   0.0886947   0.1299841
Birth       ki1126311-ZVITAMBO         >28                  NA                0.0879765   0.0667145   0.1092386
Birth       ki1135781-COHORTS          (20-24]              NA                0.0932666   0.0811086   0.1054247
Birth       ki1135781-COHORTS          (24-28]              NA                0.0894085   0.0774329   0.1013842
Birth       ki1135781-COHORTS          <=20                 NA                0.1213518   0.1036140   0.1390896
Birth       ki1135781-COHORTS          >28                  NA                0.0826977   0.0718811   0.0935143


### Parameter: E(Y)


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
12 months   ki0047075b-MAL-ED          NA                   NA                0.2695167   0.2685461   0.2704874
12 months   ki1000108-CMC-V-BCS-2002   NA                   NA                0.4972826   0.4948809   0.4996843
12 months   ki1000108-IRC              NA                   NA                0.2931034   0.2873873   0.2988196
12 months   ki1017093-NIH-Birth        NA                   NA                0.3742331   0.3702270   0.3782393
12 months   ki1017093b-PROVIDE         NA                   NA                0.2875817   0.2745432   0.3006202
12 months   ki1017093c-NIH-Crypto      NA                   NA                0.2422096   0.2412168   0.2432025
12 months   ki1066203-TanzaniaChild2   NA                   NA                0.1464789   0.1446080   0.1483497
12 months   ki1101329-Keneba           NA                   NA                0.2496124   0.2482030   0.2510219
12 months   ki1113344-GMS-Nepal        NA                   NA                0.3422939   0.3390222   0.3455657
12 months   ki1126311-ZVITAMBO         NA                   NA                0.2385159   0.2380853   0.2389465
12 months   ki1135781-COHORTS          NA                   NA                0.3982135   0.3974094   0.3990176
12 months   ki1148112-LCNI-5           NA                   NA                0.4186047   0.4145833   0.4226260
18 months   ki0047075b-MAL-ED          NA                   NA                0.3866580   0.3856380   0.3876781
18 months   ki1000108-CMC-V-BCS-2002   NA                   NA                0.6883469   0.6842236   0.6924702
18 months   ki1000108-IRC              NA                   NA                0.3555556   0.3488319   0.3622792
18 months   ki1017093-NIH-Birth        NA                   NA                0.5878525   0.5843497   0.5913553
18 months   ki1017093b-PROVIDE         NA                   NA                0.3687943   0.3562287   0.3813600
18 months   ki1017093c-NIH-Crypto      NA                   NA                0.3012618   0.2999579   0.3025658
18 months   ki1066203-TanzaniaChild2   NA                   NA                0.2645914   0.2602980   0.2688849
18 months   ki1101329-Keneba           NA                   NA                0.3246073   0.3233485   0.3258662
18 months   ki1113344-GMS-Nepal        NA                   NA                0.5309091   0.5295808   0.5322374
18 months   ki1126311-ZVITAMBO         NA                   NA                0.4752941   0.4711511   0.4794371
18 months   ki1135781-COHORTS          NA                   NA                0.6250000   0.6242299   0.6257701
18 months   ki1148112-LCNI-5           NA                   NA                0.5033557   0.4988414   0.5078701
24 months   ki0047075b-MAL-ED          NA                   NA                0.3752522   0.3746513   0.3758531
24 months   ki1000108-CMC-V-BCS-2002   NA                   NA                0.7150538   0.7119965   0.7181111
24 months   ki1000108-IRC              NA                   NA                0.4156479   0.4130406   0.4182552
24 months   ki1017093-NIH-Birth        NA                   NA                0.5550351   0.5535021   0.5565681
24 months   ki1017093b-PROVIDE         NA                   NA                0.3288591   0.3126349   0.3450832
24 months   ki1017093c-NIH-Crypto      NA                   NA                0.2568093   0.2544599   0.2591588
24 months   ki1101329-Keneba           NA                   NA                0.3348891   0.3340996   0.3356787
24 months   ki1113344-GMS-Nepal        NA                   NA                0.4468938   0.4459345   0.4478531
24 months   ki1126311-ZVITAMBO         NA                   NA                0.5862069   0.5799562   0.5924576
24 months   ki1135781-COHORTS          NA                   NA                0.5659357   0.5648034   0.5670680
24 months   ki1148112-LCNI-5           NA                   NA                0.4560000   0.4475624   0.4644376
3 months    ki0047075b-MAL-ED          NA                   NA                0.1542793   0.1527362   0.1558224
3 months    ki1000108-CMC-V-BCS-2002   NA                   NA                0.2486188   0.2418684   0.2553692
3 months    ki1000108-IRC              NA                   NA                0.2235872   0.2206495   0.2265249
3 months    ki1000304b-SAS-FoodSuppl   NA                   NA                0.3917526   0.3717525   0.4117526
3 months    ki1017093-NIH-Birth        NA                   NA                0.2271127   0.2249928   0.2292325
3 months    ki1017093c-NIH-Crypto      NA                   NA                0.2142857   0.2129307   0.2156407
3 months    ki1066203-TanzaniaChild2   NA                   NA                0.0680628   0.0659051   0.0702205
3 months    ki1101329-Keneba           NA                   NA                0.1435143   0.1431230   0.1439055
3 months    ki1113344-GMS-Nepal        NA                   NA                0.1471103   0.1443869   0.1498337
3 months    ki1126311-ZVITAMBO         NA                   NA                0.1724746   0.1718464   0.1731029
3 months    ki1135781-COHORTS          NA                   NA                0.1532855   0.1529062   0.1536648
6 months    ki0047075b-MAL-ED          NA                   NA                0.1623377   0.1610346   0.1636408
6 months    ki1000108-CMC-V-BCS-2002   NA                   NA                0.3008130   0.2975054   0.3041206
6 months    ki1000108-IRC              NA                   NA                0.2457002   0.2420025   0.2493980
6 months    ki1000304b-SAS-FoodSuppl   NA                   NA                0.5000000   0.4823016   0.5176984
6 months    ki1017093-NIH-Birth        NA                   NA                0.2672897   0.2636073   0.2709721
6 months    ki1017093b-PROVIDE         NA                   NA                0.1830065   0.1748693   0.1911437
6 months    ki1017093c-NIH-Crypto      NA                   NA                0.2097902   0.2068270   0.2127534
6 months    ki1066203-TanzaniaChild2   NA                   NA                0.0896414   0.0877156   0.0915673
6 months    ki1101329-Keneba           NA                   NA                0.1408654   0.1397476   0.1419832
6 months    ki1113344-GMS-Nepal        NA                   NA                0.2113677   0.2092653   0.2134701
6 months    ki1126311-ZVITAMBO         NA                   NA                0.1634944   0.1628812   0.1641075
6 months    ki1135781-COHORTS          NA                   NA                0.2159485   0.2153980   0.2164990
6 months    ki1148112-LCNI-5           NA                   NA                0.3702624   0.3660459   0.3744789
9 months    ki0047075b-MAL-ED          NA                   NA                0.2063492   0.2058059   0.2068925
9 months    ki1000108-CMC-V-BCS-2002   NA                   NA                0.3688525   0.3662389   0.3714661
9 months    ki1000108-IRC              NA                   NA                0.2727273   0.2676062   0.2778483
9 months    ki1017093-NIH-Birth        NA                   NA                0.3584158   0.3557013   0.3611304
9 months    ki1017093b-PROVIDE         NA                   NA                0.2341772   0.2240060   0.2443485
9 months    ki1017093c-NIH-Crypto      NA                   NA                0.2322946   0.2307990   0.2337902
9 months    ki1066203-TanzaniaChild2   NA                   NA                0.1435185   0.1405932   0.1464439
9 months    ki1101329-Keneba           NA                   NA                0.1808459   0.1795794   0.1821124
9 months    ki1113344-GMS-Nepal        NA                   NA                0.2813067   0.2786722   0.2839412
9 months    ki1126311-ZVITAMBO         NA                   NA                0.1948980   0.1939955   0.1958004
9 months    ki1135781-COHORTS          NA                   NA                0.2951128   0.2944956   0.2957299
9 months    ki1148112-LCNI-5           NA                   NA                0.3197026   0.3161106   0.3232946
Birth       ki0047075b-MAL-ED          NA                   NA                0.1321762   0.1311327   0.1332198
Birth       ki1101329-Keneba           NA                   NA                0.0532122   0.0525042   0.0539202
Birth       ki1126311-ZVITAMBO         NA                   NA                0.1043908   0.1040444   0.1047373
Birth       ki1135781-COHORTS          NA                   NA                0.0934900   0.0932126   0.0937673


### Parameter: RR


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
12 months   ki0047075b-MAL-ED          (24-28]              (20-24]           0.9776712   0.7697948   1.2416829
12 months   ki0047075b-MAL-ED          <=20                 (20-24]           1.1679953   0.9196771   1.4833608
12 months   ki0047075b-MAL-ED          >28                  (20-24]           1.1188231   0.8902869   1.4060244
12 months   ki1000108-CMC-V-BCS-2002   (24-28]              (20-24]           1.0630986   0.8234743   1.3724516
12 months   ki1000108-CMC-V-BCS-2002   <=20                 (20-24]           1.1177791   0.8476773   1.4739456
12 months   ki1000108-CMC-V-BCS-2002   >28                  (20-24]           0.9809445   0.7006941   1.3732842
12 months   ki1000108-IRC              (24-28]              (20-24]           0.7824074   0.5424923   1.1284240
12 months   ki1000108-IRC              <=20                 (20-24]           0.6958824   0.4555671   1.0629658
12 months   ki1000108-IRC              >28                  (20-24]           0.5121212   0.2647623   0.9905797
12 months   ki1017093-NIH-Birth        (24-28]              (20-24]           0.8746590   0.6506422   1.1758052
12 months   ki1017093-NIH-Birth        <=20                 (20-24]           0.7001361   0.4941810   0.9919252
12 months   ki1017093-NIH-Birth        >28                  (20-24]           0.8981107   0.6588955   1.2241741
12 months   ki1017093b-PROVIDE         (24-28]              (20-24]           0.6596154   0.2901882   1.4993458
12 months   ki1017093b-PROVIDE         <=20                 (20-24]           1.3706294   0.7149364   2.6276811
12 months   ki1017093b-PROVIDE         >28                  (20-24]           1.4590571   0.7655142   2.7809382
12 months   ki1017093c-NIH-Crypto      (24-28]              (20-24]           0.8666667   0.5965355   1.2591222
12 months   ki1017093c-NIH-Crypto      <=20                 (20-24]           0.9796209   0.6870396   1.3968002
12 months   ki1017093c-NIH-Crypto      >28                  (20-24]           0.9404255   0.6324670   1.3983340
12 months   ki1066203-TanzaniaChild2   (24-28]              (20-24]           0.7328431   0.3726254   1.4412842
12 months   ki1066203-TanzaniaChild2   <=20                 (20-24]           0.8846154   0.3737770   2.0936127
12 months   ki1066203-TanzaniaChild2   >28                  (20-24]           0.8012295   0.4277384   1.5008444
12 months   ki1101329-Keneba           (24-28]              (20-24]           1.1175218   0.8529765   1.4641143
12 months   ki1101329-Keneba           <=20                 (20-24]           1.0231477   0.7747194   1.3512390
12 months   ki1101329-Keneba           >28                  (20-24]           1.3368622   1.0671906   1.6746779
12 months   ki1113344-GMS-Nepal        (24-28]              (20-24]           1.2737127   0.9184198   1.7664515
12 months   ki1113344-GMS-Nepal        <=20                 (20-24]           1.1176829   0.7944558   1.5724161
12 months   ki1113344-GMS-Nepal        >28                  (20-24]           1.3756098   0.9627709   1.9654750
12 months   ki1126311-ZVITAMBO         (24-28]              (20-24]           0.9944058   0.7872571   1.2560610
12 months   ki1126311-ZVITAMBO         <=20                 (20-24]           1.0561400   0.8433706   1.3225878
12 months   ki1126311-ZVITAMBO         >28                  (20-24]           0.9436047   0.7394059   1.2041961
12 months   ki1135781-COHORTS          (24-28]              (20-24]           0.9662207   0.8873332   1.0521217
12 months   ki1135781-COHORTS          <=20                 (20-24]           1.1894622   1.0867333   1.3019021
12 months   ki1135781-COHORTS          >28                  (20-24]           1.1506423   1.0657264   1.2423243
12 months   ki1148112-LCNI-5           (24-28]              (20-24]           1.0384615   0.6957299   1.5500302
12 months   ki1148112-LCNI-5           <=20                 (20-24]           0.8378698   0.5454133   1.2871448
12 months   ki1148112-LCNI-5           >28                  (20-24]           0.9379487   0.6319438   1.3921299
18 months   ki0047075b-MAL-ED          (24-28]              (20-24]           0.9696296   0.8084826   1.1628965
18 months   ki0047075b-MAL-ED          <=20                 (20-24]           1.1164480   0.9284299   1.3425418
18 months   ki0047075b-MAL-ED          >28                  (20-24]           0.9959501   0.8324221   1.1916029
18 months   ki1000108-CMC-V-BCS-2002   (24-28]              (20-24]           0.9174312   0.7735201   1.0881166
18 months   ki1000108-CMC-V-BCS-2002   <=20                 (20-24]           0.9573195   0.7959392   1.1514203
18 months   ki1000108-CMC-V-BCS-2002   >28                  (20-24]           0.8364814   0.6569259   1.0651143
18 months   ki1000108-IRC              (24-28]              (20-24]           0.8595422   0.6284063   1.1756928
18 months   ki1000108-IRC              <=20                 (20-24]           0.8067633   0.5695111   1.1428521
18 months   ki1000108-IRC              >28                  (20-24]           0.4400527   0.2290059   0.8455954
18 months   ki1017093-NIH-Birth        (24-28]              (20-24]           1.0927811   0.8873338   1.3457961
18 months   ki1017093-NIH-Birth        <=20                 (20-24]           1.0920174   0.8782297   1.3578476
18 months   ki1017093-NIH-Birth        >28                  (20-24]           0.9322245   0.7357397   1.1811821
18 months   ki1017093b-PROVIDE         (24-28]              (20-24]           1.0688259   0.5546648   2.0596021
18 months   ki1017093b-PROVIDE         <=20                 (20-24]           1.5285360   0.8380233   2.7880157
18 months   ki1017093b-PROVIDE         >28                  (20-24]           1.5714286   0.8559360   2.8850144
18 months   ki1017093c-NIH-Crypto      (24-28]              (20-24]           1.1310459   0.8082833   1.5826936
18 months   ki1017093c-NIH-Crypto      <=20                 (20-24]           1.0060976   0.7146012   1.4164996
18 months   ki1017093c-NIH-Crypto      >28                  (20-24]           1.1030034   0.7622160   1.5961572
18 months   ki1066203-TanzaniaChild2   (24-28]              (20-24]           0.9203779   0.5491815   1.5424689
18 months   ki1066203-TanzaniaChild2   <=20                 (20-24]           0.8785425   0.4203673   1.8361014
18 months   ki1066203-TanzaniaChild2   >28                  (20-24]           0.7171776   0.4180829   1.2302431
18 months   ki1101329-Keneba           (24-28]              (20-24]           1.0985853   0.8796401   1.3720266
18 months   ki1101329-Keneba           <=20                 (20-24]           0.9838801   0.7797936   1.2413799
18 months   ki1101329-Keneba           >28                  (20-24]           1.2047511   1.0011871   1.4497044
18 months   ki1113344-GMS-Nepal        (24-28]              (20-24]           1.0730561   0.8629533   1.3343124
18 months   ki1113344-GMS-Nepal        <=20                 (20-24]           1.0401402   0.8350551   1.2955932
18 months   ki1113344-GMS-Nepal        >28                  (20-24]           1.0832025   0.8448369   1.3888216
18 months   ki1126311-ZVITAMBO         (24-28]              (20-24]           0.7823129   0.5869510   1.0426996
18 months   ki1126311-ZVITAMBO         <=20                 (20-24]           0.8767730   0.6677560   1.1512154
18 months   ki1126311-ZVITAMBO         >28                  (20-24]           0.9482456   0.7320329   1.2283187
18 months   ki1135781-COHORTS          (24-28]              (20-24]           1.0140764   0.9318539   1.1035537
18 months   ki1135781-COHORTS          <=20                 (20-24]           1.0728963   0.9831106   1.1708819
18 months   ki1135781-COHORTS          >28                  (20-24]           1.0791201   1.0011439   1.1631697
18 months   ki1148112-LCNI-5           (24-28]              (20-24]           0.9130435   0.6686018   1.2468533
18 months   ki1148112-LCNI-5           <=20                 (20-24]           0.9257143   0.6803588   1.2595514
18 months   ki1148112-LCNI-5           >28                  (20-24]           0.8068966   0.5906241   1.1023628
24 months   ki0047075b-MAL-ED          (24-28]              (20-24]           1.0182831   0.8430332   1.2299639
24 months   ki0047075b-MAL-ED          <=20                 (20-24]           1.0864645   0.8892304   1.3274458
24 months   ki0047075b-MAL-ED          >28                  (20-24]           1.0623053   0.8823806   1.2789182
24 months   ki1000108-CMC-V-BCS-2002   (24-28]              (20-24]           0.9180918   0.7769907   1.0848168
24 months   ki1000108-CMC-V-BCS-2002   <=20                 (20-24]           0.9603073   0.8027346   1.1488107
24 months   ki1000108-CMC-V-BCS-2002   >28                  (20-24]           1.0363636   0.8626363   1.2450781
24 months   ki1000108-IRC              (24-28]              (20-24]           0.9837963   0.7404453   1.3071257
24 months   ki1000108-IRC              <=20                 (20-24]           1.0312899   0.7666825   1.3872221
24 months   ki1000108-IRC              >28                  (20-24]           0.8049242   0.5146530   1.2589123
24 months   ki1017093-NIH-Birth        (24-28]              (20-24]           1.0696899   0.8481611   1.3490793
24 months   ki1017093-NIH-Birth        <=20                 (20-24]           0.9977129   0.7750711   1.2843092
24 months   ki1017093-NIH-Birth        >28                  (20-24]           1.0209240   0.7981944   1.3058044
24 months   ki1017093b-PROVIDE         (24-28]              (20-24]           1.1483254   0.5448005   2.4204293
24 months   ki1017093b-PROVIDE         <=20                 (20-24]           1.8512397   0.9608516   3.5667195
24 months   ki1017093b-PROVIDE         >28                  (20-24]           2.0363636   1.0664890   3.8882508
24 months   ki1017093c-NIH-Crypto      (24-28]              (20-24]           0.8988071   0.6069844   1.3309308
24 months   ki1017093c-NIH-Crypto      <=20                 (20-24]           0.7516340   0.5020257   1.1253481
24 months   ki1017093c-NIH-Crypto      >28                  (20-24]           0.8635795   0.5526973   1.3493272
24 months   ki1101329-Keneba           (24-28]              (20-24]           0.9727088   0.7723482   1.2250464
24 months   ki1101329-Keneba           <=20                 (20-24]           1.0395072   0.8292704   1.3030432
24 months   ki1101329-Keneba           >28                  (20-24]           1.1004715   0.9127358   1.3268216
24 months   ki1113344-GMS-Nepal        (24-28]              (20-24]           1.0105263   0.7761551   1.3156693
24 months   ki1113344-GMS-Nepal        <=20                 (20-24]           0.9841384   0.7555946   1.2818097
24 months   ki1113344-GMS-Nepal        >28                  (20-24]           0.9401089   0.6887780   1.2831488
24 months   ki1126311-ZVITAMBO         (24-28]              (20-24]           0.9723320   0.6078141   1.5554584
24 months   ki1126311-ZVITAMBO         <=20                 (20-24]           1.1223833   0.7538820   1.6710098
24 months   ki1126311-ZVITAMBO         >28                  (20-24]           1.0969900   0.7288992   1.6509650
24 months   ki1135781-COHORTS          (24-28]              (20-24]           0.9607299   0.9022618   1.0229867
24 months   ki1135781-COHORTS          <=20                 (20-24]           1.2154963   1.1417039   1.2940581
24 months   ki1135781-COHORTS          >28                  (20-24]           1.0990748   1.0389849   1.1626400
24 months   ki1148112-LCNI-5           (24-28]              (20-24]           1.0298851   0.7279698   1.4570154
24 months   ki1148112-LCNI-5           <=20                 (20-24]           0.7080460   0.4659108   1.0760195
24 months   ki1148112-LCNI-5           >28                  (20-24]           0.8089469   0.5591312   1.1703783
3 months    ki0047075b-MAL-ED          (24-28]              (20-24]           0.9431106   0.6810813   1.3059493
3 months    ki0047075b-MAL-ED          <=20                 (20-24]           1.5046392   1.1133776   2.0333973
3 months    ki0047075b-MAL-ED          >28                  (20-24]           0.9181911   0.6628695   1.2718564
3 months    ki1000108-CMC-V-BCS-2002   (24-28]              (20-24]           1.1209029   0.7127892   1.7626856
3 months    ki1000108-CMC-V-BCS-2002   <=20                 (20-24]           1.5920070   1.0314042   2.4573164
3 months    ki1000108-CMC-V-BCS-2002   >28                  (20-24]           0.6151515   0.2903985   1.3030762
3 months    ki1000108-IRC              (24-28]              (20-24]           0.8933934   0.5535400   1.4419043
3 months    ki1000108-IRC              <=20                 (20-24]           1.2822124   0.8225252   1.9988065
3 months    ki1000108-IRC              >28                  (20-24]           0.9616593   0.5030950   1.8381991
3 months    ki1000304b-SAS-FoodSuppl   (24-28]              (20-24]           1.7459459   0.7809158   3.9035289
3 months    ki1000304b-SAS-FoodSuppl   <=20                 (20-24]           1.2240000   0.4938053   3.0339410
3 months    ki1000304b-SAS-FoodSuppl   >28                  (20-24]           0.9444444   0.3295347   2.7067717
3 months    ki1017093-NIH-Birth        (24-28]              (20-24]           1.0764331   0.7180986   1.6135781
3 months    ki1017093-NIH-Birth        <=20                 (20-24]           0.7878788   0.4924301   1.2605910
3 months    ki1017093-NIH-Birth        >28                  (20-24]           1.0514706   0.6895376   1.6033795
3 months    ki1017093c-NIH-Crypto      (24-28]              (20-24]           0.9697470   0.6551366   1.4354398
3 months    ki1017093c-NIH-Crypto      <=20                 (20-24]           1.0657492   0.7319378   1.5518006
3 months    ki1017093c-NIH-Crypto      >28                  (20-24]           0.8225309   0.5232286   1.2930429
3 months    ki1066203-TanzaniaChild2   (24-28]              (20-24]           0.5558282   0.2505287   1.2331721
3 months    ki1066203-TanzaniaChild2   <=20                 (20-24]           1.0517413   0.4493015   2.4619540
3 months    ki1066203-TanzaniaChild2   >28                  (20-24]           0.4194445   0.1825533   0.9637388
3 months    ki1101329-Keneba           (24-28]              (20-24]           0.9303595   0.6578114   1.3158314
3 months    ki1101329-Keneba           <=20                 (20-24]           1.1400145   0.8325246   1.5610747
3 months    ki1101329-Keneba           >28                  (20-24]           1.0218690   0.7717011   1.3531356
3 months    ki1113344-GMS-Nepal        (24-28]              (20-24]           0.8723270   0.4850829   1.5687102
3 months    ki1113344-GMS-Nepal        <=20                 (20-24]           1.4425150   0.8666306   2.4010800
3 months    ki1113344-GMS-Nepal        >28                  (20-24]           0.8848485   0.4531347   1.7278679
3 months    ki1126311-ZVITAMBO         (24-28]              (20-24]           0.9596490   0.7449296   1.2362596
3 months    ki1126311-ZVITAMBO         <=20                 (20-24]           1.1610499   0.9180554   1.4683611
3 months    ki1126311-ZVITAMBO         >28                  (20-24]           0.9159145   0.7057961   1.1885859
3 months    ki1135781-COHORTS          (24-28]              (20-24]           0.9766097   0.8433313   1.1309512
3 months    ki1135781-COHORTS          <=20                 (20-24]           1.2799203   1.0962065   1.4944227
3 months    ki1135781-COHORTS          >28                  (20-24]           1.2200556   1.0664883   1.3957356
6 months    ki0047075b-MAL-ED          (24-28]              (20-24]           0.7321543   0.5297837   1.0118279
6 months    ki0047075b-MAL-ED          <=20                 (20-24]           1.1776662   0.8759528   1.5833019
6 months    ki0047075b-MAL-ED          >28                  (20-24]           0.9083998   0.6723228   1.2273721
6 months    ki1000108-CMC-V-BCS-2002   (24-28]              (20-24]           0.9355814   0.6210721   1.4093573
6 months    ki1000108-CMC-V-BCS-2002   <=20                 (20-24]           1.2554769   0.8394988   1.8775753
6 months    ki1000108-CMC-V-BCS-2002   >28                  (20-24]           1.0870953   0.6736995   1.7541593
6 months    ki1000108-IRC              (24-28]              (20-24]           0.7324665   0.4691146   1.1436592
6 months    ki1000108-IRC              <=20                 (20-24]           0.9616526   0.6278315   1.4729681
6 months    ki1000108-IRC              >28                  (20-24]           0.6537718   0.3335229   1.2815239
6 months    ki1000304b-SAS-FoodSuppl   (24-28]              (20-24]           1.1250000   0.6503201   1.9461571
6 months    ki1000304b-SAS-FoodSuppl   <=20                 (20-24]           0.7366071   0.3792513   1.4306875
6 months    ki1000304b-SAS-FoodSuppl   >28                  (20-24]           0.8333333   0.4120509   1.6853366
6 months    ki1017093-NIH-Birth        (24-28]              (20-24]           1.0431481   0.7162300   1.5192858
6 months    ki1017093-NIH-Birth        <=20                 (20-24]           0.6986667   0.4432315   1.1013097
6 months    ki1017093-NIH-Birth        >28                  (20-24]           1.1283376   0.7721249   1.6488859
6 months    ki1017093b-PROVIDE         (24-28]              (20-24]           0.9857143   0.3597250   2.7010429
6 months    ki1017093b-PROVIDE         <=20                 (20-24]           1.1265306   0.4139497   3.0657616
6 months    ki1017093b-PROVIDE         >28                  (20-24]           1.8482143   0.7654195   4.4627761
6 months    ki1017093c-NIH-Crypto      (24-28]              (20-24]           0.5916279   0.3935248   0.8894576
6 months    ki1017093c-NIH-Crypto      <=20                 (20-24]           0.8255273   0.5776258   1.1798215
6 months    ki1017093c-NIH-Crypto      >28                  (20-24]           0.7080653   0.4630014   1.0828402
6 months    ki1066203-TanzaniaChild2   (24-28]              (20-24]           1.9140071   0.8547060   4.2861792
6 months    ki1066203-TanzaniaChild2   <=20                 (20-24]           1.5614754   0.5661535   4.3066158
6 months    ki1066203-TanzaniaChild2   >28                  (20-24]           1.2846821   0.5552980   2.9721122
6 months    ki1101329-Keneba           (24-28]              (20-24]           1.1305556   0.7699981   1.6599469
6 months    ki1101329-Keneba           <=20                 (20-24]           1.0942661   0.7478258   1.6011995
6 months    ki1101329-Keneba           >28                  (20-24]           1.5412058   1.1288654   2.1041616
6 months    ki1113344-GMS-Nepal        (24-28]              (20-24]           0.9782609   0.6148707   1.5564155
6 months    ki1113344-GMS-Nepal        <=20                 (20-24]           1.2468750   0.8077509   1.9247237
6 months    ki1113344-GMS-Nepal        >28                  (20-24]           1.2710526   0.7802993   2.0704553
6 months    ki1126311-ZVITAMBO         (24-28]              (20-24]           1.1739121   0.9000455   1.5311110
6 months    ki1126311-ZVITAMBO         <=20                 (20-24]           1.1398140   0.8771780   1.4810859
6 months    ki1126311-ZVITAMBO         >28                  (20-24]           0.9451450   0.7089388   1.2600510
6 months    ki1135781-COHORTS          (24-28]              (20-24]           1.0116961   0.8958676   1.1425004
6 months    ki1135781-COHORTS          <=20                 (20-24]           1.3106985   1.1526625   1.4904021
6 months    ki1135781-COHORTS          >28                  (20-24]           1.2431292   1.1118866   1.3898632
6 months    ki1148112-LCNI-5           (24-28]              (20-24]           1.0956897   0.7326445   1.6386335
6 months    ki1148112-LCNI-5           <=20                 (20-24]           0.8857499   0.5743690   1.3659388
6 months    ki1148112-LCNI-5           >28                  (20-24]           1.1829697   0.8131538   1.7209751
9 months    ki0047075b-MAL-ED          (24-28]              (20-24]           0.9676181   0.7360232   1.2720860
9 months    ki0047075b-MAL-ED          <=20                 (20-24]           1.1094498   0.8400931   1.4651696
9 months    ki0047075b-MAL-ED          >28                  (20-24]           0.9742207   0.7431523   1.2771352
9 months    ki1000108-CMC-V-BCS-2002   (24-28]              (20-24]           0.8418079   0.5977239   1.1855651
9 months    ki1000108-CMC-V-BCS-2002   <=20                 (20-24]           0.9150086   0.6313552   1.3261009
9 months    ki1000108-CMC-V-BCS-2002   >28                  (20-24]           0.9277067   0.6106949   1.4092793
9 months    ki1000108-IRC              (24-28]              (20-24]           0.8941799   0.6011339   1.3300825
9 months    ki1000108-IRC              <=20                 (20-24]           1.1229236   0.7637635   1.6509790
9 months    ki1000108-IRC              >28                  (20-24]           0.4703154   0.2153604   1.0270998
9 months    ki1017093-NIH-Birth        (24-28]              (20-24]           1.0682159   0.7863253   1.4511617
9 months    ki1017093-NIH-Birth        <=20                 (20-24]           0.8342868   0.5824727   1.1949651
9 months    ki1017093-NIH-Birth        >28                  (20-24]           0.9656845   0.6924891   1.3466588
9 months    ki1017093b-PROVIDE         (24-28]              (20-24]           0.9527778   0.3881733   2.3386089
9 months    ki1017093b-PROVIDE         <=20                 (20-24]           1.8148148   0.8555902   3.8494515
9 months    ki1017093b-PROVIDE         >28                  (20-24]           1.4848485   0.6577269   3.3521133
9 months    ki1017093c-NIH-Crypto      (24-28]              (20-24]           0.8307692   0.5648237   1.2219345
9 months    ki1017093c-NIH-Crypto      <=20                 (20-24]           1.0270335   0.7195430   1.4659274
9 months    ki1017093c-NIH-Crypto      >28                  (20-24]           0.8967857   0.5944695   1.3528441
9 months    ki1066203-TanzaniaChild2   (24-28]              (20-24]           0.7474286   0.4203960   1.3288649
9 months    ki1066203-TanzaniaChild2   <=20                 (20-24]           0.5641822   0.2263141   1.4064592
9 months    ki1066203-TanzaniaChild2   >28                  (20-24]           0.6146617   0.3440873   1.0980030
9 months    ki1101329-Keneba           (24-28]              (20-24]           1.2651124   0.9175461   1.7443367
9 months    ki1101329-Keneba           <=20                 (20-24]           1.0106729   0.7186615   1.4213364
9 months    ki1101329-Keneba           >28                  (20-24]           1.4544112   1.1087429   1.9078472
9 months    ki1113344-GMS-Nepal        (24-28]              (20-24]           0.8695229   0.5916085   1.2779906
9 months    ki1113344-GMS-Nepal        <=20                 (20-24]           1.1677019   0.8240571   1.6546520
9 months    ki1113344-GMS-Nepal        >28                  (20-24]           1.0329670   0.6781344   1.5734652
9 months    ki1126311-ZVITAMBO         (24-28]              (20-24]           0.8928000   0.6939888   1.1485658
9 months    ki1126311-ZVITAMBO         <=20                 (20-24]           1.1091983   0.8816818   1.3954250
9 months    ki1126311-ZVITAMBO         >28                  (20-24]           0.8346154   0.6403336   1.0878436
9 months    ki1135781-COHORTS          (24-28]              (20-24]           0.9817818   0.8860021   1.0879157
9 months    ki1135781-COHORTS          <=20                 (20-24]           1.2127903   1.0873401   1.3527141
9 months    ki1135781-COHORTS          >28                  (20-24]           1.1770401   1.0719276   1.2924598
9 months    ki1148112-LCNI-5           (24-28]              (20-24]           0.9242424   0.5695030   1.4999466
9 months    ki1148112-LCNI-5           <=20                 (20-24]           0.7702020   0.4665494   1.2714862
9 months    ki1148112-LCNI-5           >28                  (20-24]           0.8735990   0.5425633   1.4066106
Birth       ki0047075b-MAL-ED          (24-28]              (20-24]           0.8927126   0.6202755   1.2848093
Birth       ki0047075b-MAL-ED          <=20                 (20-24]           1.1972851   0.8454168   1.6956033
Birth       ki0047075b-MAL-ED          >28                  (20-24]           0.7822532   0.5328411   1.1484100
Birth       ki1101329-Keneba           (24-28]              (20-24]           0.6126526   0.2856759   1.3138776
Birth       ki1101329-Keneba           <=20                 (20-24]           1.2412304   0.6845211   2.2507021
Birth       ki1101329-Keneba           >28                  (20-24]           0.7237130   0.4058331   1.2905808
Birth       ki1126311-ZVITAMBO         (24-28]              (20-24]           0.8471809   0.6458067   1.1113471
Birth       ki1126311-ZVITAMBO         <=20                 (20-24]           0.9504118   0.7412093   1.2186606
Birth       ki1126311-ZVITAMBO         >28                  (20-24]           0.7647192   0.5717521   1.0228128
Birth       ki1135781-COHORTS          (24-28]              (20-24]           0.9586339   0.7952076   1.1556465
Birth       ki1135781-COHORTS          <=20                 (20-24]           1.3011277   1.0697001   1.5826243
Birth       ki1135781-COHORTS          >28                  (20-24]           0.8866808   0.7371714   1.0665130


### Parameter: PAR


agecat      studyid                    intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  -----------  -----------  ----------
12 months   ki0047075b-MAL-ED          (20-24]              NA                 0.0161107   -0.0284142   0.0606357
12 months   ki1000108-CMC-V-BCS-2002   (20-24]              NA                 0.0175529   -0.0630803   0.0981860
12 months   ki1000108-IRC              (20-24]              NA                -0.0619261   -0.1343861   0.0105338
12 months   ki1017093-NIH-Birth        (20-24]              NA                -0.0555189   -0.1439057   0.0328678
12 months   ki1017093b-PROVIDE         (20-24]              NA                 0.0222756   -0.1024305   0.1469817
12 months   ki1017093c-NIH-Crypto      (20-24]              NA                -0.0142006   -0.0827768   0.0543756
12 months   ki1066203-TanzaniaChild2   (20-24]              NA                -0.0274342   -0.1050181   0.0501498
12 months   ki1101329-Keneba           (20-24]              NA                 0.0369052   -0.0052846   0.0790950
12 months   ki1113344-GMS-Nepal        (20-24]              NA                 0.0515138   -0.0235817   0.1266092
12 months   ki1126311-ZVITAMBO         (20-24]              NA                 0.0000686   -0.0358529   0.0359901
12 months   ki1135781-COHORTS          (20-24]              NA                 0.0253603    0.0030361   0.0476845
12 months   ki1148112-LCNI-5           (20-24]              NA                -0.0220733   -0.1490649   0.1049182
18 months   ki0047075b-MAL-ED          (20-24]              NA                 0.0055692   -0.0454097   0.0565481
18 months   ki1000108-CMC-V-BCS-2002   (20-24]              NA                -0.0383198   -0.1098564   0.0332168
18 months   ki1000108-IRC              (20-24]              NA                -0.0576181   -0.1326933   0.0174571
18 months   ki1017093-NIH-Birth        (20-24]              NA                 0.0176771   -0.0733643   0.1087184
18 months   ki1017093b-PROVIDE         (20-24]              NA                 0.0733398   -0.0625330   0.2092125
18 months   ki1017093c-NIH-Crypto      (20-24]              NA                 0.0165396   -0.0572382   0.0903174
18 months   ki1066203-TanzaniaChild2   (20-24]              NA                -0.0418602   -0.1569192   0.0731989
18 months   ki1101329-Keneba           (20-24]              NA                 0.0316496   -0.0157229   0.0790221
18 months   ki1113344-GMS-Nepal        (20-24]              NA                 0.0236627   -0.0598366   0.1071621
18 months   ki1126311-ZVITAMBO         (20-24]              NA                -0.0464450   -0.1299887   0.0370987
18 months   ki1135781-COHORTS          (20-24]              NA                 0.0258208   -0.0097193   0.0613609
18 months   ki1148112-LCNI-5           (20-24]              NA                -0.0521999   -0.1672584   0.0628587
24 months   ki0047075b-MAL-ED          (20-24]              NA                 0.0145484   -0.0364403   0.0655370
24 months   ki1000108-CMC-V-BCS-2002   (20-24]              NA                -0.0182796   -0.0892089   0.0526498
24 months   ki1000108-IRC              (20-24]              NA                -0.0078815   -0.0822951   0.0665321
24 months   ki1017093-NIH-Birth        (20-24]              NA                 0.0129791   -0.0815468   0.1075049
24 months   ki1017093b-PROVIDE         (20-24]              NA                 0.0996924   -0.0207072   0.2200920
24 months   ki1017093c-NIH-Crypto      (20-24]              NA                -0.0388428   -0.1223605   0.0446748
24 months   ki1101329-Keneba           (20-24]              NA                 0.0152689   -0.0361681   0.0667059
24 months   ki1113344-GMS-Nepal        (20-24]              NA                -0.0054872   -0.0924866   0.0815122
24 months   ki1126311-ZVITAMBO         (20-24]              NA                 0.0252313   -0.1274609   0.1779235
24 months   ki1135781-COHORTS          (20-24]              NA                 0.0290694    0.0055840   0.0525547
24 months   ki1148112-LCNI-5           (20-24]              NA                -0.0618571   -0.1932629   0.0695486
3 months    ki0047075b-MAL-ED          (20-24]              NA                 0.0103944   -0.0233367   0.0441255
3 months    ki1000108-CMC-V-BCS-2002   (20-24]              NA                 0.0210326   -0.0476381   0.0897032
3 months    ki1000108-IRC              (20-24]              NA                 0.0059402   -0.0562356   0.0681159
3 months    ki1000304b-SAS-FoodSuppl   (20-24]              NA                 0.0976349   -0.1210029   0.3162727
3 months    ki1017093-NIH-Birth        (20-24]              NA                -0.0036566   -0.0728053   0.0654922
3 months    ki1017093c-NIH-Crypto      (20-24]              NA                -0.0052265   -0.0686333   0.0581804
3 months    ki1066203-TanzaniaChild2   (20-24]              NA                -0.0312749   -0.0790740   0.0165242
3 months    ki1101329-Keneba           (20-24]              NA                 0.0035594   -0.0287577   0.0358765
3 months    ki1113344-GMS-Nepal        (20-24]              NA                 0.0101240   -0.0457636   0.0660117
3 months    ki1126311-ZVITAMBO         (20-24]              NA                 0.0018117   -0.0258939   0.0295173
3 months    ki1135781-COHORTS          (20-24]              NA                 0.0145831    0.0002478   0.0289184
6 months    ki0047075b-MAL-ED          (20-24]              NA                -0.0102512   -0.0475985   0.0270962
6 months    ki1000108-CMC-V-BCS-2002   (20-24]              NA                 0.0122224   -0.0607053   0.0851501
6 months    ki1000108-IRC              (20-24]              NA                -0.0324063   -0.1001438   0.0353312
6 months    ki1000304b-SAS-FoodSuppl   (20-24]              NA                -0.0333333   -0.2877423   0.2210757
6 months    ki1017093-NIH-Birth        (20-24]              NA                -0.0075194   -0.0841254   0.0690866
6 months    ki1017093b-PROVIDE         (20-24]              NA                 0.0308326   -0.0736246   0.1352898
6 months    ki1017093c-NIH-Crypto      (20-24]              NA                -0.0606500   -0.1298042   0.0085042
6 months    ki1066203-TanzaniaChild2   (20-24]              NA                 0.0266493   -0.0156900   0.0689886
6 months    ki1101329-Keneba           (20-24]              NA                 0.0303003   -0.0001937   0.0607942
6 months    ki1113344-GMS-Nepal        (20-24]              NA                 0.0208915   -0.0426779   0.0844609
6 months    ki1126311-ZVITAMBO         (20-24]              NA                 0.0092959   -0.0183744   0.0369662
6 months    ki1135781-COHORTS          (20-24]              NA                 0.0241550    0.0075759   0.0407342
6 months    ki1148112-LCNI-5           (20-24]              NA                 0.0166039   -0.0871149   0.1203226
9 months    ki0047075b-MAL-ED          (20-24]              NA                 0.0014975   -0.0395868   0.0425817
9 months    ki1000108-CMC-V-BCS-2002   (20-24]              NA                -0.0271207   -0.1057981   0.0515567
9 months    ki1000108-IRC              (20-24]              NA                -0.0172136   -0.0858969   0.0514698
9 months    ki1017093-NIH-Birth        (20-24]              NA                -0.0095842   -0.0942541   0.0750858
9 months    ki1017093b-PROVIDE         (20-24]              NA                 0.0505037   -0.0587345   0.1597420
9 months    ki1017093c-NIH-Crypto      (20-24]              NA                -0.0146190   -0.0810855   0.0518476
9 months    ki1066203-TanzaniaChild2   (20-24]              NA                -0.0491420   -0.1233244   0.0250403
9 months    ki1101329-Keneba           (20-24]              NA                 0.0361758    0.0014102   0.0709415
9 months    ki1113344-GMS-Nepal        (20-24]              NA                 0.0047110   -0.0692363   0.0786582
9 months    ki1126311-ZVITAMBO         (20-24]              NA                -0.0067149   -0.0383163   0.0248864
9 months    ki1135781-COHORTS          (20-24]              NA                 0.0228508    0.0031034   0.0425981
9 months    ki1148112-LCNI-5           (20-24]              NA                -0.0409531   -0.1617339   0.0798277
Birth       ki0047075b-MAL-ED          (20-24]              NA                -0.0053899   -0.0401405   0.0293607
Birth       ki1101329-Keneba           (20-24]              NA                -0.0083820   -0.0367635   0.0199995
Birth       ki1126311-ZVITAMBO         (20-24]              NA                -0.0106534   -0.0292632   0.0079563
Birth       ki1135781-COHORTS          (20-24]              NA                 0.0002234   -0.0119378   0.0123846


### Parameter: PAF


agecat      studyid                    intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  -----------  -----------  ----------
12 months   ki0047075b-MAL-ED          (20-24]              NA                 0.0597764   -0.1208235   0.2112759
12 months   ki1000108-CMC-V-BCS-2002   (20-24]              NA                 0.0352976   -0.1412676   0.1845465
12 months   ki1000108-IRC              (20-24]              NA                -0.2112774   -0.4859696   0.0126359
12 months   ki1017093-NIH-Birth        (20-24]              NA                -0.1483539   -0.4106718   0.0651854
12 months   ki1017093b-PROVIDE         (20-24]              NA                 0.0774583   -0.4755644   0.4232151
12 months   ki1017093c-NIH-Crypto      (20-24]              NA                -0.0586295   -0.3832361   0.1898011
12 months   ki1066203-TanzaniaChild2   (20-24]              NA                -0.1872910   -0.8549081   0.2400379
12 months   ki1101329-Keneba           (20-24]              NA                 0.1478501   -0.0390677   0.3011433
12 months   ki1113344-GMS-Nepal        (20-24]              NA                 0.1504957   -0.0997517   0.3437996
12 months   ki1126311-ZVITAMBO         (20-24]              NA                 0.0002875   -0.1622526   0.1400966
12 months   ki1135781-COHORTS          (20-24]              NA                 0.0636853    0.0059168   0.1180967
12 months   ki1148112-LCNI-5           (20-24]              NA                -0.0527307   -0.4043524   0.2108520
18 months   ki0047075b-MAL-ED          (20-24]              NA                 0.0144034   -0.1266659   0.1378095
18 months   ki1000108-CMC-V-BCS-2002   (20-24]              NA                -0.0556693   -0.1649038   0.0433222
18 months   ki1000108-IRC              (20-24]              NA                -0.1620509   -0.3939554   0.0312730
18 months   ki1017093-NIH-Birth        (20-24]              NA                 0.0300706   -0.1378421   0.1732042
18 months   ki1017093b-PROVIDE         (20-24]              NA                 0.1988636   -0.2680090   0.4938368
18 months   ki1017093c-NIH-Crypto      (20-24]              NA                 0.0549011   -0.2246461   0.2706367
18 months   ki1066203-TanzaniaChild2   (20-24]              NA                -0.1582068   -0.6860997   0.2044106
18 months   ki1101329-Keneba           (20-24]              NA                 0.0975011   -0.0608874   0.2322426
18 months   ki1113344-GMS-Nepal        (20-24]              NA                 0.0445702   -0.1263893   0.1895820
18 months   ki1126311-ZVITAMBO         (20-24]              NA                -0.0977185   -0.2883982   0.0647412
18 months   ki1135781-COHORTS          (20-24]              NA                 0.0413133   -0.0172701   0.0965229
18 months   ki1148112-LCNI-5           (20-24]              NA                -0.1037037   -0.3577265   0.1027929
24 months   ki0047075b-MAL-ED          (20-24]              NA                 0.0387696   -0.1071807   0.1654805
24 months   ki1000108-CMC-V-BCS-2002   (20-24]              NA                -0.0255639   -0.1297192   0.0689887
24 months   ki1000108-IRC              (20-24]              NA                -0.0189619   -0.2146881   0.1452263
24 months   ki1017093-NIH-Birth        (20-24]              NA                 0.0233842   -0.1626722   0.1796669
24 months   ki1017093b-PROVIDE         (20-24]              NA                 0.3031463   -0.1755556   0.5869143
24 months   ki1017093c-NIH-Crypto      (20-24]              NA                -0.1512516   -0.5271025   0.1320947
24 months   ki1101329-Keneba           (20-24]              NA                 0.0455939   -0.1210478   0.1874646
24 months   ki1113344-GMS-Nepal        (20-24]              NA                -0.0122785   -0.2269341   0.1648226
24 months   ki1126311-ZVITAMBO         (20-24]              NA                 0.0430416   -0.2563062   0.2710620
24 months   ki1135781-COHORTS          (20-24]              NA                 0.0513651    0.0089508   0.0919642
24 months   ki1148112-LCNI-5           (20-24]              NA                -0.1356516   -0.4639045   0.1189967
3 months    ki0047075b-MAL-ED          (20-24]              NA                 0.0673738   -0.1789788   0.2622500
3 months    ki1000108-CMC-V-BCS-2002   (20-24]              NA                 0.0845977   -0.2375168   0.3228687
3 months    ki1000108-IRC              (20-24]              NA                 0.0265676   -0.2952824   0.2684447
3 months    ki1000304b-SAS-FoodSuppl   (20-24]              NA                 0.2492260   -0.5767403   0.6425146
3 months    ki1017093-NIH-Birth        (20-24]              NA                -0.0161002   -0.3711105   0.2469902
3 months    ki1017093c-NIH-Crypto      (20-24]              NA                -0.0243902   -0.3674590   0.2326093
3 months    ki1066203-TanzaniaChild2   (20-24]              NA                -0.4595007   -1.3627497   0.0984477
3 months    ki1101329-Keneba           (20-24]              NA                 0.0248018   -0.2285021   0.2258771
3 months    ki1113344-GMS-Nepal        (20-24]              NA                 0.0688193   -0.4001980   0.3807322
3 months    ki1126311-ZVITAMBO         (20-24]              NA                 0.0105043   -0.1639045   0.1587784
3 months    ki1135781-COHORTS          (20-24]              NA                 0.0951367   -0.0033804   0.1839809
6 months    ki0047075b-MAL-ED          (20-24]              NA                -0.0631472   -0.3200184   0.1437377
6 months    ki1000108-CMC-V-BCS-2002   (20-24]              NA                 0.0406312   -0.2351623   0.2548441
6 months    ki1000108-IRC              (20-24]              NA                -0.1318935   -0.4442074   0.1128817
6 months    ki1000304b-SAS-FoodSuppl   (20-24]              NA                -0.0666667   -0.7189513   0.3380977
6 months    ki1017093-NIH-Birth        (20-24]              NA                -0.0281322   -0.3586925   0.2220051
6 months    ki1017093b-PROVIDE         (20-24]              NA                 0.1684783   -0.6508530   0.5811690
6 months    ki1017093c-NIH-Crypto      (20-24]              NA                -0.2890985   -0.6649718   0.0019200
6 months    ki1066203-TanzaniaChild2   (20-24]              NA                 0.2972878   -0.3757190   0.6410572
6 months    ki1101329-Keneba           (20-24]              NA                 0.2151009   -0.0340978   0.4042473
6 months    ki1113344-GMS-Nepal        (20-24]              NA                 0.0988395   -0.2581385   0.3545304
6 months    ki1126311-ZVITAMBO         (20-24]              NA                 0.0568577   -0.1285157   0.2117811
6 months    ki1135781-COHORTS          (20-24]              NA                 0.1118555    0.0316756   0.1853964
6 months    ki1148112-LCNI-5           (20-24]              NA                 0.0448435   -0.2806561   0.2876120
9 months    ki0047075b-MAL-ED          (20-24]              NA                 0.0072569   -0.2132134   0.1876624
9 months    ki1000108-CMC-V-BCS-2002   (20-24]              NA                -0.0735272   -0.3095193   0.1199361
9 months    ki1000108-IRC              (20-24]              NA                -0.0631164   -0.3474013   0.1611879
9 months    ki1017093-NIH-Birth        (20-24]              NA                -0.0267403   -0.2923688   0.1842919
9 months    ki1017093b-PROVIDE         (20-24]              NA                 0.2156646   -0.4202459   0.5668483
9 months    ki1017093c-NIH-Crypto      (20-24]              NA                -0.0629329   -0.3912886   0.1879282
9 months    ki1066203-TanzaniaChild2   (20-24]              NA                -0.3424090   -0.9733793   0.0868142
9 months    ki1101329-Keneba           (20-24]              NA                 0.2000368   -0.0172092   0.3708855
9 months    ki1113344-GMS-Nepal        (20-24]              NA                 0.0167467   -0.2846080   0.2474070
9 months    ki1126311-ZVITAMBO         (20-24]              NA                -0.0344536   -0.2100005   0.1156249
9 months    ki1135781-COHORTS          (20-24]              NA                 0.0774306    0.0080349   0.1419715
9 months    ki1148112-LCNI-5           (20-24]              NA                -0.1280976   -0.5769068   0.1929744
Birth       ki0047075b-MAL-ED          (20-24]              NA                -0.0407782   -0.3398906   0.1915615
Birth       ki1101329-Keneba           (20-24]              NA                -0.1575203   -0.8351209   0.2698828
Birth       ki1126311-ZVITAMBO         (20-24]              NA                -0.1020534   -0.2955598   0.0625506
Birth       ki1135781-COHORTS          (20-24]              NA                 0.0023891   -0.1365527   0.1243455


