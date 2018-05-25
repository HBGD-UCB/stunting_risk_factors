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
* agecat: 18 months, studyid: ki1112895-Guatemala BSC
* agecat: 18 months, studyid: ki1113344-GMS-Nepal
* agecat: 18 months, studyid: ki1126311-ZVITAMBO
* agecat: 18 months, studyid: ki1135781-COHORTS
* agecat: 18 months, studyid: ki1148112-LCNI-5
* agecat: 24 months, studyid: ki0047075b-MAL-ED
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 24 months, studyid: ki1000108-IRC
* agecat: 24 months, studyid: ki1000109-EE
* agecat: 24 months, studyid: ki1000304b-SAS-FoodSuppl
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
* agecat: 3 months, studyid: ki1017093-NIH-Birth
* agecat: 3 months, studyid: ki1017093b-PROVIDE
* agecat: 3 months, studyid: ki1017093c-NIH-Crypto
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2
* agecat: 3 months, studyid: ki1101329-Keneba
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

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 3 months, studyid: ki1000109-EE
* agecat: 6 months, studyid: ki1000109-EE
* agecat: 6 months, studyid: ki1112895-Guatemala BSC
* agecat: 12 months, studyid: ki1000109-EE
* agecat: 12 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 12 months, studyid: ki1112895-Guatemala BSC
* agecat: 18 months, studyid: ki1000109-EE
* agecat: 18 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 18 months, studyid: ki1112895-Guatemala BSC
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 24 months, studyid: ki1000109-EE
* agecat: 24 months, studyid: ki1000304b-SAS-FoodSuppl

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness




# Results Detail

## Results Plots
![](/tmp/40c66ff8-d616-42f4-93ee-2e0cf364b478/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/40c66ff8-d616-42f4-93ee-2e0cf364b478/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/40c66ff8-d616-42f4-93ee-2e0cf364b478/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/40c66ff8-d616-42f4-93ee-2e0cf364b478/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Data Summary

agecat      studyid                    A             n     nA   nAY0   nAY1
----------  -------------------------  --------  -----  -----  -----  -----
3 months    ki0047075b-MAL-ED          <=20       1866    410    281    129
3 months    ki0047075b-MAL-ED          (20-24]    1866    453    335    118
3 months    ki0047075b-MAL-ED          (24-28]    1866    497    378    119
3 months    ki0047075b-MAL-ED          >28        1866    506    387    119
3 months    ki1000108-CMC-V-BCS-2002   <=20        362     69     37     32
3 months    ki1000108-CMC-V-BCS-2002   (20-24]     362    146    100     46
3 months    ki1000108-CMC-V-BCS-2002   (24-28]     362     97     63     34
3 months    ki1000108-CMC-V-BCS-2002   >28         362     50     37     13
3 months    ki1000108-IRC              <=20        410     87     55     32
3 months    ki1000108-IRC              (20-24]     410    171    119     52
3 months    ki1000108-IRC              (24-28]     410    108     74     34
3 months    ki1000108-IRC              >28         410     44     32     12
3 months    ki1000109-EE               <=20        377      4      1      3
3 months    ki1000109-EE               (20-24]     377     18      5     13
3 months    ki1000109-EE               (24-28]     377    115     34     81
3 months    ki1000109-EE               >28         377    240     97    143
3 months    ki1000304b-SAS-FoodSuppl   <=20          0      0      0      0
3 months    ki1000304b-SAS-FoodSuppl   (20-24]       0      0      0      0
3 months    ki1000304b-SAS-FoodSuppl   (24-28]       0      0      0      0
3 months    ki1000304b-SAS-FoodSuppl   >28           0      0      0      0
3 months    ki1017093-NIH-Birth        <=20        627    159    128     31
3 months    ki1017093-NIH-Birth        (20-24]     627    154    117     37
3 months    ki1017093-NIH-Birth        (24-28]     627    170    129     41
3 months    ki1017093-NIH-Birth        >28         627    144    113     31
3 months    ki1017093b-PROVIDE         <=20        175     39     28     11
3 months    ki1017093b-PROVIDE         (20-24]     175     56     42     14
3 months    ki1017093b-PROVIDE         (24-28]     175     46     38      8
3 months    ki1017093b-PROVIDE         >28         175     34     23     11
3 months    ki1017093c-NIH-Crypto      <=20        758    228    185     43
3 months    ki1017093c-NIH-Crypto      (20-24]     758    171    141     30
3 months    ki1017093c-NIH-Crypto      (24-28]     758    211    182     29
3 months    ki1017093c-NIH-Crypto      >28         758    148    129     19
3 months    ki1066203-TanzaniaChild2   <=20        599     72     60     12
3 months    ki1066203-TanzaniaChild2   (20-24]     599    159    142     17
3 months    ki1066203-TanzaniaChild2   (24-28]     599    171    155     16
3 months    ki1066203-TanzaniaChild2   >28         599    197    183     14
3 months    ki1101329-Keneba           <=20       2282    469    340    129
3 months    ki1101329-Keneba           (20-24]    2282    457    348    109
3 months    ki1101329-Keneba           (24-28]    2282    400    302     98
3 months    ki1101329-Keneba           >28        2282    956    735    221
3 months    ki1112895-Guatemala BSC    <=20          0      0      0      0
3 months    ki1112895-Guatemala BSC    (20-24]       0      0      0      0
3 months    ki1112895-Guatemala BSC    (24-28]       0      0      0      0
3 months    ki1112895-Guatemala BSC    >28           0      0      0      0
3 months    ki1113344-GMS-Nepal        <=20        593    176    136     40
3 months    ki1113344-GMS-Nepal        (20-24]     593    150    128     22
3 months    ki1113344-GMS-Nepal        (24-28]     593    165    149     16
3 months    ki1113344-GMS-Nepal        >28         593    102     86     16
3 months    ki1126311-ZVITAMBO         <=20       3492    893    693    200
3 months    ki1126311-ZVITAMBO         (20-24]    3492   1147    891    256
3 months    ki1126311-ZVITAMBO         (24-28]    3492    763    601    162
3 months    ki1126311-ZVITAMBO         >28        3492    689    573    116
3 months    ki1135781-COHORTS          <=20       8705   1405   1106    299
3 months    ki1135781-COHORTS          (20-24]    8705   2335   1950    385
3 months    ki1135781-COHORTS          (24-28]    8705   2332   1949    383
3 months    ki1135781-COHORTS          >28        8705   2633   2140    493
3 months    ki1148112-LCNI-5           <=20          0      0      0      0
3 months    ki1148112-LCNI-5           (20-24]       0      0      0      0
3 months    ki1148112-LCNI-5           (24-28]       0      0      0      0
3 months    ki1148112-LCNI-5           >28           0      0      0      0
6 months    ki0047075b-MAL-ED          <=20       1746    382    236    146
6 months    ki0047075b-MAL-ED          (20-24]    1746    408    266    142
6 months    ki0047075b-MAL-ED          (24-28]    1746    470    328    142
6 months    ki0047075b-MAL-ED          >28        1746    486    336    150
6 months    ki1000108-CMC-V-BCS-2002   <=20        367     70     27     43
6 months    ki1000108-CMC-V-BCS-2002   (20-24]     367    148     75     73
6 months    ki1000108-CMC-V-BCS-2002   (24-28]     367     99     48     51
6 months    ki1000108-CMC-V-BCS-2002   >28         367     50     29     21
6 months    ki1000108-IRC              <=20        408     86     48     38
6 months    ki1000108-IRC              (20-24]     408    170     95     75
6 months    ki1000108-IRC              (24-28]     408    108     63     45
6 months    ki1000108-IRC              >28         408     44     29     15
6 months    ki1000109-EE               <=20        371      4      1      3
6 months    ki1000109-EE               (20-24]     371     18      3     15
6 months    ki1000109-EE               (24-28]     371    115     26     89
6 months    ki1000109-EE               >28         371    234     65    169
6 months    ki1000304b-SAS-FoodSuppl   <=20        105     30     19     11
6 months    ki1000304b-SAS-FoodSuppl   (20-24]     105     18     11      7
6 months    ki1000304b-SAS-FoodSuppl   (24-28]     105     37     18     19
6 months    ki1000304b-SAS-FoodSuppl   >28         105     20     14      6
6 months    ki1017093-NIH-Birth        <=20        549    126     89     37
6 months    ki1017093-NIH-Birth        (20-24]     549    141     85     56
6 months    ki1017093-NIH-Birth        (24-28]     549    151     92     59
6 months    ki1017093-NIH-Birth        >28         549    131     84     47
6 months    ki1017093b-PROVIDE         <=20        166     37     23     14
6 months    ki1017093b-PROVIDE         (20-24]     166     53     39     14
6 months    ki1017093b-PROVIDE         (24-28]     166     42     34      8
6 months    ki1017093b-PROVIDE         >28         166     34     22     12
6 months    ki1017093c-NIH-Crypto      <=20        736    220    146     74
6 months    ki1017093c-NIH-Crypto      (20-24]     736    167    113     54
6 months    ki1017093c-NIH-Crypto      (24-28]     736    204    145     59
6 months    ki1017093c-NIH-Crypto      >28         736    145    106     39
6 months    ki1066203-TanzaniaChild2   <=20        555     64     48     16
6 months    ki1066203-TanzaniaChild2   (20-24]     555    144    112     32
6 months    ki1066203-TanzaniaChild2   (24-28]     555    160    128     32
6 months    ki1066203-TanzaniaChild2   >28         555    187    160     27
6 months    ki1101329-Keneba           <=20       2246    459    312    147
6 months    ki1101329-Keneba           (20-24]    2246    449    312    137
6 months    ki1101329-Keneba           (24-28]    2246    396    269    127
6 months    ki1101329-Keneba           >28        2246    942    627    315
6 months    ki1112895-Guatemala BSC    <=20         90     26     16     10
6 months    ki1112895-Guatemala BSC    (20-24]      90     31     25      6
6 months    ki1112895-Guatemala BSC    (24-28]      90     13     10      3
6 months    ki1112895-Guatemala BSC    >28          90     20     13      7
6 months    ki1113344-GMS-Nepal        <=20        567    162    105     57
6 months    ki1113344-GMS-Nepal        (20-24]     567    146    112     34
6 months    ki1113344-GMS-Nepal        (24-28]     567    162    117     45
6 months    ki1113344-GMS-Nepal        >28         567     97     71     26
6 months    ki1126311-ZVITAMBO         <=20       2280    556    363    193
6 months    ki1126311-ZVITAMBO         (20-24]    2280    723    510    213
6 months    ki1126311-ZVITAMBO         (24-28]    2280    516    364    152
6 months    ki1126311-ZVITAMBO         >28        2280    485    366    119
6 months    ki1135781-COHORTS          <=20       2947    529    367    162
6 months    ki1135781-COHORTS          (20-24]    2947    756    598    158
6 months    ki1135781-COHORTS          (24-28]    2947    680    523    157
6 months    ki1135781-COHORTS          >28        2947    982    707    275
6 months    ki1148112-LCNI-5           <=20        110     31     23      8
6 months    ki1148112-LCNI-5           (20-24]     110     29     20      9
6 months    ki1148112-LCNI-5           (24-28]     110     19      8     11
6 months    ki1148112-LCNI-5           >28         110     31     15     16
12 months   ki0047075b-MAL-ED          <=20       1688    365    184    181
12 months   ki0047075b-MAL-ED          (20-24]    1688    389    231    158
12 months   ki0047075b-MAL-ED          (24-28]    1688    459    280    179
12 months   ki0047075b-MAL-ED          >28        1688    475    268    207
12 months   ki1000108-CMC-V-BCS-2002   <=20        372     71     19     52
12 months   ki1000108-CMC-V-BCS-2002   (20-24]     372    150     44    106
12 months   ki1000108-CMC-V-BCS-2002   (24-28]     372    100     32     68
12 months   ki1000108-CMC-V-BCS-2002   >28         372     51     17     34
12 months   ki1000108-IRC              <=20        408     86     41     45
12 months   ki1000108-IRC              (20-24]     408    170     79     91
12 months   ki1000108-IRC              (24-28]     408    108     54     54
12 months   ki1000108-IRC              >28         408     44     27     17
12 months   ki1000109-EE               <=20        371      4      1      3
12 months   ki1000109-EE               (20-24]     371     17      2     15
12 months   ki1000109-EE               (24-28]     371    114     17     97
12 months   ki1000109-EE               >28         371    236     45    191
12 months   ki1000304b-SAS-FoodSuppl   <=20         99     27      6     21
12 months   ki1000304b-SAS-FoodSuppl   (20-24]      99     17      3     14
12 months   ki1000304b-SAS-FoodSuppl   (24-28]      99     37      5     32
12 months   ki1000304b-SAS-FoodSuppl   >28          99     18      1     17
12 months   ki1017093-NIH-Birth        <=20        539    125     69     56
12 months   ki1017093-NIH-Birth        (20-24]     539    134     64     70
12 months   ki1017093-NIH-Birth        (24-28]     539    149     65     84
12 months   ki1017093-NIH-Birth        >28         539    131     67     64
12 months   ki1017093b-PROVIDE         <=20        159     36     20     16
12 months   ki1017093b-PROVIDE         (20-24]     159     50     33     17
12 months   ki1017093b-PROVIDE         (24-28]     159     40     32      8
12 months   ki1017093b-PROVIDE         >28         159     33     18     15
12 months   ki1017093c-NIH-Crypto      <=20        729    219    134     85
12 months   ki1017093c-NIH-Crypto      (20-24]     729    163     93     70
12 months   ki1017093c-NIH-Crypto      (24-28]     729    204    132     72
12 months   ki1017093c-NIH-Crypto      >28         729    143     93     50
12 months   ki1066203-TanzaniaChild2   <=20        494     57     35     22
12 months   ki1066203-TanzaniaChild2   (20-24]     494    127     84     43
12 months   ki1066203-TanzaniaChild2   (24-28]     494    140     94     46
12 months   ki1066203-TanzaniaChild2   >28         494    170    124     46
12 months   ki1101329-Keneba           <=20       2360    452    285    167
12 months   ki1101329-Keneba           (20-24]    2360    471    278    193
12 months   ki1101329-Keneba           (24-28]    2360    441    274    167
12 months   ki1101329-Keneba           >28        2360    996    557    439
12 months   ki1112895-Guatemala BSC    <=20         80     23      9     14
12 months   ki1112895-Guatemala BSC    (20-24]      80     27     17     10
12 months   ki1112895-Guatemala BSC    (24-28]      80     12      8      4
12 months   ki1112895-Guatemala BSC    >28          80     18     10      8
12 months   ki1113344-GMS-Nepal        <=20        582    169     87     82
12 months   ki1113344-GMS-Nepal        (20-24]     582    149     88     61
12 months   ki1113344-GMS-Nepal        (24-28]     582    165     92     73
12 months   ki1113344-GMS-Nepal        >28         582     99     50     49
12 months   ki1126311-ZVITAMBO         <=20       2540    620    361    259
12 months   ki1126311-ZVITAMBO         (20-24]    2540    823    514    309
12 months   ki1126311-ZVITAMBO         (24-28]    2540    566    352    214
12 months   ki1126311-ZVITAMBO         >28        2540    531    354    177
12 months   ki1135781-COHORTS          <=20       8286   1321    674    647
12 months   ki1135781-COHORTS          (20-24]    8286   2229   1329    900
12 months   ki1135781-COHORTS          (24-28]    8286   2220   1333    887
12 months   ki1135781-COHORTS          >28        8286   2516   1348   1168
12 months   ki1148112-LCNI-5           <=20        331     80     41     39
12 months   ki1148112-LCNI-5           (20-24]     331     79     43     36
12 months   ki1148112-LCNI-5           (24-28]     331     79     40     39
12 months   ki1148112-LCNI-5           >28         331     93     46     47
18 months   ki0047075b-MAL-ED          <=20       1613    346    137    209
18 months   ki0047075b-MAL-ED          (20-24]    1613    365    172    193
18 months   ki0047075b-MAL-ED          (24-28]    1613    445    223    222
18 months   ki0047075b-MAL-ED          >28        1613    457    211    246
18 months   ki1000108-CMC-V-BCS-2002   <=20        373     71      9     62
18 months   ki1000108-CMC-V-BCS-2002   (20-24]     373    150     22    128
18 months   ki1000108-CMC-V-BCS-2002   (24-28]     373    101     17     84
18 months   ki1000108-CMC-V-BCS-2002   >28         373     51      9     42
18 months   ki1000108-IRC              <=20        409     87     35     52
18 months   ki1000108-IRC              (20-24]     409    170     71     99
18 months   ki1000108-IRC              (24-28]     409    108     46     62
18 months   ki1000108-IRC              >28         409     44     27     17
18 months   ki1000109-EE               <=20        361      4      1      3
18 months   ki1000109-EE               (20-24]     361     16      1     15
18 months   ki1000109-EE               (24-28]     361    113      6    107
18 months   ki1000109-EE               >28         361    228     24    204
18 months   ki1000304b-SAS-FoodSuppl   <=20         93     25      2     23
18 months   ki1000304b-SAS-FoodSuppl   (20-24]      93     16      2     14
18 months   ki1000304b-SAS-FoodSuppl   (24-28]      93     36      5     31
18 months   ki1000304b-SAS-FoodSuppl   >28          93     16      1     15
18 months   ki1017093-NIH-Birth        <=20        495    115     38     77
18 months   ki1017093-NIH-Birth        (20-24]     495    122     45     77
18 months   ki1017093-NIH-Birth        (24-28]     495    141     51     90
18 months   ki1017093-NIH-Birth        >28         495    117     40     77
18 months   ki1017093b-PROVIDE         <=20        155     34     14     20
18 months   ki1017093b-PROVIDE         (20-24]     155     50     30     20
18 months   ki1017093b-PROVIDE         (24-28]     155     40     29     11
18 months   ki1017093b-PROVIDE         >28         155     31     12     19
18 months   ki1017093c-NIH-Crypto      <=20        715    213    120     93
18 months   ki1017093c-NIH-Crypto      (20-24]     715    161     87     74
18 months   ki1017093c-NIH-Crypto      (24-28]     715    200    111     89
18 months   ki1017093c-NIH-Crypto      >28         715    141     80     61
18 months   ki1066203-TanzaniaChild2   <=20        358     35     18     17
18 months   ki1066203-TanzaniaChild2   (20-24]     358     92     50     42
18 months   ki1066203-TanzaniaChild2   (24-28]     358    108     60     48
18 months   ki1066203-TanzaniaChild2   >28         358    123     78     45
18 months   ki1101329-Keneba           <=20       2263    415    228    187
18 months   ki1101329-Keneba           (20-24]    2263    444    217    227
18 months   ki1101329-Keneba           (24-28]    2263    427    230    197
18 months   ki1101329-Keneba           >28        2263    977    450    527
18 months   ki1112895-Guatemala BSC    <=20         49     16      4     12
18 months   ki1112895-Guatemala BSC    (20-24]      49     18     11      7
18 months   ki1112895-Guatemala BSC    (24-28]      49      6      4      2
18 months   ki1112895-Guatemala BSC    >28          49      9      4      5
18 months   ki1113344-GMS-Nepal        <=20        574    168     62    106
18 months   ki1113344-GMS-Nepal        (20-24]     574    145     62     83
18 months   ki1113344-GMS-Nepal        (24-28]     574    164     57    107
18 months   ki1113344-GMS-Nepal        >28         574     97     35     62
18 months   ki1126311-ZVITAMBO         <=20       1854    449    215    234
18 months   ki1126311-ZVITAMBO         (20-24]    1854    587    306    281
18 months   ki1126311-ZVITAMBO         (24-28]    1854    419    213    206
18 months   ki1126311-ZVITAMBO         >28        1854    399    218    181
18 months   ki1135781-COHORTS          <=20       3083    550    184    366
18 months   ki1135781-COHORTS          (20-24]    3083    777    300    477
18 months   ki1135781-COHORTS          (24-28]    3083    701    259    442
18 months   ki1135781-COHORTS          >28        3083   1055    343    712
18 months   ki1148112-LCNI-5           <=20        275     63     27     36
18 months   ki1148112-LCNI-5           (20-24]     275     66     27     39
18 months   ki1148112-LCNI-5           (24-28]     275     66     29     37
18 months   ki1148112-LCNI-5           >28         275     80     30     50
24 months   ki0047075b-MAL-ED          <=20       1538    318    115    203
24 months   ki0047075b-MAL-ED          (20-24]    1538    349    144    205
24 months   ki0047075b-MAL-ED          (24-28]    1538    431    196    235
24 months   ki0047075b-MAL-ED          >28        1538    440    180    260
24 months   ki1000108-CMC-V-BCS-2002   <=20        373     71      5     66
24 months   ki1000108-CMC-V-BCS-2002   (20-24]     373    150     12    138
24 months   ki1000108-CMC-V-BCS-2002   (24-28]     373    101      8     93
24 months   ki1000108-CMC-V-BCS-2002   >28         373     51      3     48
24 months   ki1000108-IRC              <=20        410     87     28     59
24 months   ki1000108-IRC              (20-24]     410    171     55    116
24 months   ki1000108-IRC              (24-28]     410    108     40     68
24 months   ki1000108-IRC              >28         410     44     24     20
24 months   ki1000109-EE               <=20        337      4      1      3
24 months   ki1000109-EE               (20-24]     337     15      1     14
24 months   ki1000109-EE               (24-28]     337    101      4     97
24 months   ki1000109-EE               >28         337    217     21    196
24 months   ki1000304b-SAS-FoodSuppl   <=20          9      0      0      0
24 months   ki1000304b-SAS-FoodSuppl   (20-24]       9      3      0      3
24 months   ki1000304b-SAS-FoodSuppl   (24-28]       9      6      1      5
24 months   ki1000304b-SAS-FoodSuppl   >28           9      0      0      0
24 months   ki1017093-NIH-Birth        <=20        468    110     23     87
24 months   ki1017093-NIH-Birth        (20-24]     468    115     35     80
24 months   ki1017093-NIH-Birth        (24-28]     468    131     27    104
24 months   ki1017093-NIH-Birth        >28         468    112     30     82
24 months   ki1017093b-PROVIDE         <=20        148     31     13     18
24 months   ki1017093b-PROVIDE         (20-24]     148     49     28     21
24 months   ki1017093b-PROVIDE         (24-28]     148     38     23     15
24 months   ki1017093b-PROVIDE         >28         148     30     12     18
24 months   ki1017093c-NIH-Crypto      <=20        634    194    102     92
24 months   ki1017093c-NIH-Crypto      (20-24]     634    141     71     70
24 months   ki1017093c-NIH-Crypto      (24-28]     634    177     86     91
24 months   ki1017093c-NIH-Crypto      >28         634    122     57     65
24 months   ki1066203-TanzaniaChild2   <=20        250     25     13     12
24 months   ki1066203-TanzaniaChild2   (20-24]     250     58     28     30
24 months   ki1066203-TanzaniaChild2   (24-28]     250     73     35     38
24 months   ki1066203-TanzaniaChild2   >28         250     94     55     39
24 months   ki1101329-Keneba           <=20       2186    396    182    214
24 months   ki1101329-Keneba           (20-24]    2186    426    188    238
24 months   ki1101329-Keneba           (24-28]    2186    414    185    229
24 months   ki1101329-Keneba           >28        2186    950    376    574
24 months   ki1112895-Guatemala BSC    <=20          0      0      0      0
24 months   ki1112895-Guatemala BSC    (20-24]       0      0      0      0
24 months   ki1112895-Guatemala BSC    (24-28]       0      0      0      0
24 months   ki1112895-Guatemala BSC    >28           0      0      0      0
24 months   ki1113344-GMS-Nepal        <=20        568    170     52    118
24 months   ki1113344-GMS-Nepal        (20-24]     568    143     53     90
24 months   ki1113344-GMS-Nepal        (24-28]     568    160     41    119
24 months   ki1113344-GMS-Nepal        >28         568     95     30     65
24 months   ki1126311-ZVITAMBO         <=20        470    103     23     80
24 months   ki1126311-ZVITAMBO         (20-24]     470    146     40    106
24 months   ki1126311-ZVITAMBO         (24-28]     470    106     30     76
24 months   ki1126311-ZVITAMBO         >28         470    115     38     77
24 months   ki1135781-COHORTS          <=20       3036    556    102    454
24 months   ki1135781-COHORTS          (20-24]    3036    762    189    573
24 months   ki1135781-COHORTS          (24-28]    3036    697    175    522
24 months   ki1135781-COHORTS          >28        3036   1021    217    804
24 months   ki1148112-LCNI-5           <=20        296     71     24     47
24 months   ki1148112-LCNI-5           (20-24]     296     72     27     45
24 months   ki1148112-LCNI-5           (24-28]     296     68     21     47
24 months   ki1148112-LCNI-5           >28         296     85     29     56

## Results Table

### Parameter: TSM


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki0047075b-MAL-ED          <=20                 NA                0.3146341   0.2696731   0.3595952
3 months    ki0047075b-MAL-ED          (20-24]              NA                0.2604857   0.2200578   0.3009135
3 months    ki0047075b-MAL-ED          (24-28]              NA                0.2394366   0.2019091   0.2769641
3 months    ki0047075b-MAL-ED          >28                  NA                0.2351779   0.1982148   0.2721409
3 months    ki1000108-CMC-V-BCS-2002   <=20                 NA                0.4637681   0.3459394   0.5815968
3 months    ki1000108-CMC-V-BCS-2002   (20-24]              NA                0.3150685   0.2396117   0.3905253
3 months    ki1000108-CMC-V-BCS-2002   (24-28]              NA                0.3505155   0.2554329   0.4455980
3 months    ki1000108-CMC-V-BCS-2002   >28                  NA                0.2600000   0.1382507   0.3817493
3 months    ki1000108-IRC              <=20                 NA                0.3678161   0.2663652   0.4692670
3 months    ki1000108-IRC              (20-24]              NA                0.3040936   0.2350602   0.3731270
3 months    ki1000108-IRC              (24-28]              NA                0.3148148   0.2271151   0.4025145
3 months    ki1000108-IRC              >28                  NA                0.2727273   0.1409729   0.4044816
3 months    ki1017093-NIH-Birth        <=20                 NA                0.1949686   0.1333396   0.2565975
3 months    ki1017093-NIH-Birth        (20-24]              NA                0.2402597   0.1727281   0.3077914
3 months    ki1017093-NIH-Birth        (24-28]              NA                0.2411765   0.1768176   0.3055353
3 months    ki1017093-NIH-Birth        >28                  NA                0.2152778   0.1480930   0.2824626
3 months    ki1017093b-PROVIDE         <=20                 NA                0.2820513   0.1404162   0.4236864
3 months    ki1017093b-PROVIDE         (20-24]              NA                0.2500000   0.1362637   0.3637363
3 months    ki1017093b-PROVIDE         (24-28]              NA                0.1739130   0.0640649   0.2837611
3 months    ki1017093b-PROVIDE         >28                  NA                0.3235294   0.1658284   0.4812304
3 months    ki1017093c-NIH-Crypto      <=20                 NA                0.1885965   0.1377861   0.2394069
3 months    ki1017093c-NIH-Crypto      (20-24]              NA                0.1754386   0.1183945   0.2324827
3 months    ki1017093c-NIH-Crypto      (24-28]              NA                0.1374408   0.0909522   0.1839293
3 months    ki1017093c-NIH-Crypto      >28                  NA                0.1283784   0.0744504   0.1823063
3 months    ki1066203-TanzaniaChild2   <=20                 NA                0.1666667   0.0805121   0.2528213
3 months    ki1066203-TanzaniaChild2   (20-24]              NA                0.1069182   0.0588472   0.1549893
3 months    ki1066203-TanzaniaChild2   (24-28]              NA                0.0935673   0.0498812   0.1372533
3 months    ki1066203-TanzaniaChild2   >28                  NA                0.0710660   0.0351572   0.1069748
3 months    ki1101329-Keneba           <=20                 NA                0.2750533   0.2346313   0.3154754
3 months    ki1101329-Keneba           (20-24]              NA                0.2385120   0.1994305   0.2775936
3 months    ki1101329-Keneba           (24-28]              NA                0.2450000   0.2028430   0.2871570
3 months    ki1101329-Keneba           >28                  NA                0.2311715   0.2044417   0.2579014
3 months    ki1113344-GMS-Nepal        <=20                 NA                0.2272727   0.1653079   0.2892375
3 months    ki1113344-GMS-Nepal        (20-24]              NA                0.1466667   0.0900044   0.2033289
3 months    ki1113344-GMS-Nepal        (24-28]              NA                0.0969697   0.0517798   0.1421596
3 months    ki1113344-GMS-Nepal        >28                  NA                0.1568627   0.0862272   0.2274983
3 months    ki1126311-ZVITAMBO         <=20                 NA                0.2239642   0.1966168   0.2513115
3 months    ki1126311-ZVITAMBO         (20-24]              NA                0.2231909   0.1990905   0.2472913
3 months    ki1126311-ZVITAMBO         (24-28]              NA                0.2123198   0.1832984   0.2413412
3 months    ki1126311-ZVITAMBO         >28                  NA                0.1683599   0.1404160   0.1963039
3 months    ki1135781-COHORTS          <=20                 NA                0.2128114   0.1914085   0.2342142
3 months    ki1135781-COHORTS          (20-24]              NA                0.1648822   0.1498304   0.1799341
3 months    ki1135781-COHORTS          (24-28]              NA                0.1642367   0.1491989   0.1792745
3 months    ki1135781-COHORTS          >28                  NA                0.1872389   0.1723375   0.2021403
6 months    ki0047075b-MAL-ED          <=20                 NA                0.3821990   0.3334562   0.4309417
6 months    ki0047075b-MAL-ED          (20-24]              NA                0.3480392   0.3018046   0.3942738
6 months    ki0047075b-MAL-ED          (24-28]              NA                0.3021277   0.2606029   0.3436524
6 months    ki0047075b-MAL-ED          >28                  NA                0.3086420   0.2675617   0.3497223
6 months    ki1000108-CMC-V-BCS-2002   <=20                 NA                0.6142857   0.5001006   0.7284709
6 months    ki1000108-CMC-V-BCS-2002   (20-24]              NA                0.4932432   0.4125866   0.5738999
6 months    ki1000108-CMC-V-BCS-2002   (24-28]              NA                0.5151515   0.4165705   0.6137326
6 months    ki1000108-CMC-V-BCS-2002   >28                  NA                0.4200000   0.2830083   0.5569917
6 months    ki1000108-IRC              <=20                 NA                0.4418605   0.3367743   0.5469467
6 months    ki1000108-IRC              (20-24]              NA                0.4411765   0.3664456   0.5159073
6 months    ki1000108-IRC              (24-28]              NA                0.4166667   0.3235726   0.5097607
6 months    ki1000108-IRC              >28                  NA                0.3409091   0.2006773   0.4811409
6 months    ki1000304b-SAS-FoodSuppl   <=20                 NA                0.3666667   0.1933991   0.5399343
6 months    ki1000304b-SAS-FoodSuppl   (20-24]              NA                0.3888889   0.1626003   0.6151775
6 months    ki1000304b-SAS-FoodSuppl   (24-28]              NA                0.5135135   0.3516919   0.6753351
6 months    ki1000304b-SAS-FoodSuppl   >28                  NA                0.3000000   0.0982002   0.5017998
6 months    ki1017093-NIH-Birth        <=20                 NA                0.2936508   0.2140561   0.3732455
6 months    ki1017093-NIH-Birth        (20-24]              NA                0.3971631   0.3163245   0.4780017
6 months    ki1017093-NIH-Birth        (24-28]              NA                0.3907285   0.3128355   0.4686215
6 months    ki1017093-NIH-Birth        >28                  NA                0.3587786   0.2765684   0.4409888
6 months    ki1017093b-PROVIDE         <=20                 NA                0.3783784   0.2216363   0.5351204
6 months    ki1017093b-PROVIDE         (20-24]              NA                0.2641509   0.1450973   0.3832046
6 months    ki1017093b-PROVIDE         (24-28]              NA                0.1904762   0.0713600   0.3095923
6 months    ki1017093b-PROVIDE         >28                  NA                0.3529412   0.1918233   0.5140591
6 months    ki1017093c-NIH-Crypto      <=20                 NA                0.3363636   0.2738893   0.3988380
6 months    ki1017093c-NIH-Crypto      (20-24]              NA                0.3233533   0.2523621   0.3943445
6 months    ki1017093c-NIH-Crypto      (24-28]              NA                0.2892157   0.2269558   0.3514755
6 months    ki1017093c-NIH-Crypto      >28                  NA                0.2689655   0.1967423   0.3411887
6 months    ki1066203-TanzaniaChild2   <=20                 NA                0.2500000   0.1438181   0.3561819
6 months    ki1066203-TanzaniaChild2   (20-24]              NA                0.2222222   0.1542581   0.2901864
6 months    ki1066203-TanzaniaChild2   (24-28]              NA                0.2000000   0.1379646   0.2620354
6 months    ki1066203-TanzaniaChild2   >28                  NA                0.1443850   0.0939631   0.1948069
6 months    ki1101329-Keneba           <=20                 NA                0.3202614   0.2775679   0.3629549
6 months    ki1101329-Keneba           (20-24]              NA                0.3051225   0.2625222   0.3477228
6 months    ki1101329-Keneba           (24-28]              NA                0.3207071   0.2747259   0.3666882
6 months    ki1101329-Keneba           >28                  NA                0.3343949   0.3042609   0.3645290
6 months    ki1113344-GMS-Nepal        <=20                 NA                0.3518519   0.2782496   0.4254541
6 months    ki1113344-GMS-Nepal        (20-24]              NA                0.2328767   0.1642567   0.3014967
6 months    ki1113344-GMS-Nepal        (24-28]              NA                0.2777778   0.2087446   0.3468110
6 months    ki1113344-GMS-Nepal        >28                  NA                0.2680412   0.1798166   0.3562658
6 months    ki1126311-ZVITAMBO         <=20                 NA                0.3471223   0.3075435   0.3867011
6 months    ki1126311-ZVITAMBO         (20-24]              NA                0.2946058   0.2613697   0.3278420
6 months    ki1126311-ZVITAMBO         (24-28]              NA                0.2945736   0.2552330   0.3339143
6 months    ki1126311-ZVITAMBO         >28                  NA                0.2453608   0.2070568   0.2836649
6 months    ki1135781-COHORTS          <=20                 NA                0.3062382   0.2669530   0.3455234
6 months    ki1135781-COHORTS          (20-24]              NA                0.2089947   0.1800067   0.2379827
6 months    ki1135781-COHORTS          (24-28]              NA                0.2308824   0.1992043   0.2625605
6 months    ki1135781-COHORTS          >28                  NA                0.2800407   0.2519521   0.3081294
6 months    ki1148112-LCNI-5           <=20                 NA                0.2580645   0.1033263   0.4128027
6 months    ki1148112-LCNI-5           (20-24]              NA                0.3103448   0.1411954   0.4794942
6 months    ki1148112-LCNI-5           (24-28]              NA                0.5789474   0.3559282   0.8019665
6 months    ki1148112-LCNI-5           >28                  NA                0.5161290   0.3394055   0.6928525
12 months   ki0047075b-MAL-ED          <=20                 NA                0.4958904   0.4445823   0.5471985
12 months   ki0047075b-MAL-ED          (20-24]              NA                0.4061697   0.3573509   0.4549884
12 months   ki0047075b-MAL-ED          (24-28]              NA                0.3899782   0.3453445   0.4346120
12 months   ki0047075b-MAL-ED          >28                  NA                0.4357895   0.3911839   0.4803950
12 months   ki1000108-CMC-V-BCS-2002   <=20                 NA                0.7323944   0.6292790   0.8355098
12 months   ki1000108-CMC-V-BCS-2002   (20-24]              NA                0.7066667   0.6337083   0.7796250
12 months   ki1000108-CMC-V-BCS-2002   (24-28]              NA                0.6800000   0.5884492   0.7715508
12 months   ki1000108-CMC-V-BCS-2002   >28                  NA                0.6666667   0.5371155   0.7962178
12 months   ki1000108-IRC              <=20                 NA                0.5232558   0.4175664   0.6289452
12 months   ki1000108-IRC              (20-24]              NA                0.5352941   0.4602284   0.6103599
12 months   ki1000108-IRC              (24-28]              NA                0.5000000   0.4055854   0.5944146
12 months   ki1000108-IRC              >28                  NA                0.3863636   0.2423153   0.5304120
12 months   ki1017093-NIH-Birth        <=20                 NA                0.4480000   0.3607421   0.5352579
12 months   ki1017093-NIH-Birth        (20-24]              NA                0.5223881   0.4377369   0.6070393
12 months   ki1017093-NIH-Birth        (24-28]              NA                0.5637584   0.4840566   0.6434602
12 months   ki1017093-NIH-Birth        >28                  NA                0.4885496   0.4028711   0.5742281
12 months   ki1017093b-PROVIDE         <=20                 NA                0.4444444   0.2816126   0.6072763
12 months   ki1017093b-PROVIDE         (20-24]              NA                0.3400000   0.2082822   0.4717178
12 months   ki1017093b-PROVIDE         (24-28]              NA                0.2000000   0.0756493   0.3243507
12 months   ki1017093b-PROVIDE         >28                  NA                0.4545455   0.2841221   0.6249688
12 months   ki1017093c-NIH-Crypto      <=20                 NA                0.3881279   0.3235413   0.4527144
12 months   ki1017093c-NIH-Crypto      (20-24]              NA                0.4294479   0.3534056   0.5054902
12 months   ki1017093c-NIH-Crypto      (24-28]              NA                0.3529412   0.2873185   0.4185639
12 months   ki1017093c-NIH-Crypto      >28                  NA                0.3496503   0.2714392   0.4278615
12 months   ki1066203-TanzaniaChild2   <=20                 NA                0.3859649   0.2594560   0.5124738
12 months   ki1066203-TanzaniaChild2   (20-24]              NA                0.3385827   0.2561961   0.4209692
12 months   ki1066203-TanzaniaChild2   (24-28]              NA                0.3285714   0.2506891   0.4064538
12 months   ki1066203-TanzaniaChild2   >28                  NA                0.2705882   0.2037378   0.3374387
12 months   ki1101329-Keneba           <=20                 NA                0.3694690   0.3249636   0.4139745
12 months   ki1101329-Keneba           (20-24]              NA                0.4097665   0.3653433   0.4541897
12 months   ki1101329-Keneba           (24-28]              NA                0.3786848   0.3334038   0.4239658
12 months   ki1101329-Keneba           >28                  NA                0.4407631   0.4099233   0.4716028
12 months   ki1113344-GMS-Nepal        <=20                 NA                0.4852071   0.4097921   0.5606221
12 months   ki1113344-GMS-Nepal        (20-24]              NA                0.4093960   0.3303739   0.4884180
12 months   ki1113344-GMS-Nepal        (24-28]              NA                0.4424242   0.3665751   0.5182734
12 months   ki1113344-GMS-Nepal        >28                  NA                0.4949495   0.3963779   0.5935211
12 months   ki1126311-ZVITAMBO         <=20                 NA                0.4177419   0.3789135   0.4565703
12 months   ki1126311-ZVITAMBO         (20-24]              NA                0.3754557   0.3423658   0.4085455
12 months   ki1126311-ZVITAMBO         (24-28]              NA                0.3780919   0.3381354   0.4180483
12 months   ki1126311-ZVITAMBO         >28                  NA                0.3333333   0.2932300   0.3734366
12 months   ki1135781-COHORTS          <=20                 NA                0.4897805   0.4628216   0.5167394
12 months   ki1135781-COHORTS          (20-24]              NA                0.4037685   0.3833984   0.4241386
12 months   ki1135781-COHORTS          (24-28]              NA                0.3995495   0.3791734   0.4199257
12 months   ki1135781-COHORTS          >28                  NA                0.4642289   0.4447406   0.4837173
12 months   ki1148112-LCNI-5           <=20                 NA                0.4875000   0.3778031   0.5971969
12 months   ki1148112-LCNI-5           (20-24]              NA                0.4556962   0.3457070   0.5656854
12 months   ki1148112-LCNI-5           (24-28]              NA                0.4936709   0.3832562   0.6040856
12 months   ki1148112-LCNI-5           >28                  NA                0.5053763   0.4036090   0.6071437
18 months   ki0047075b-MAL-ED          <=20                 NA                0.6040462   0.5524994   0.6555931
18 months   ki0047075b-MAL-ED          (20-24]              NA                0.5287671   0.4775416   0.5799926
18 months   ki0047075b-MAL-ED          (24-28]              NA                0.4988764   0.4524065   0.5453463
18 months   ki0047075b-MAL-ED          >28                  NA                0.5382932   0.4925721   0.5840144
18 months   ki1000108-CMC-V-BCS-2002   <=20                 NA                0.8732394   0.7957468   0.9507321
18 months   ki1000108-CMC-V-BCS-2002   (20-24]              NA                0.8533333   0.7966428   0.9100239
18 months   ki1000108-CMC-V-BCS-2002   (24-28]              NA                0.8316832   0.7586175   0.9047488
18 months   ki1000108-CMC-V-BCS-2002   >28                  NA                0.8235294   0.7187631   0.9282957
18 months   ki1000108-IRC              <=20                 NA                0.5977011   0.4945352   0.7008671
18 months   ki1000108-IRC              (20-24]              NA                0.5823529   0.5081275   0.6565784
18 months   ki1000108-IRC              (24-28]              NA                0.5740741   0.4807016   0.6674465
18 months   ki1000108-IRC              >28                  NA                0.3863636   0.2423157   0.5304116
18 months   ki1017093-NIH-Birth        <=20                 NA                0.6695652   0.5835099   0.7556205
18 months   ki1017093-NIH-Birth        (20-24]              NA                0.6311475   0.5454439   0.7168511
18 months   ki1017093-NIH-Birth        (24-28]              NA                0.6382979   0.5589080   0.7176877
18 months   ki1017093-NIH-Birth        >28                  NA                0.6581197   0.5720830   0.7441564
18 months   ki1017093b-PROVIDE         <=20                 NA                0.5882353   0.4222712   0.7541994
18 months   ki1017093b-PROVIDE         (20-24]              NA                0.4000000   0.2637695   0.5362305
18 months   ki1017093b-PROVIDE         (24-28]              NA                0.2750000   0.1361778   0.4138222
18 months   ki1017093b-PROVIDE         >28                  NA                0.6129032   0.4408834   0.7849230
18 months   ki1017093c-NIH-Crypto      <=20                 NA                0.4366197   0.3699675   0.5032720
18 months   ki1017093c-NIH-Crypto      (20-24]              NA                0.4596273   0.3825922   0.5366624
18 months   ki1017093c-NIH-Crypto      (24-28]              NA                0.4450000   0.3760771   0.5139229
18 months   ki1017093c-NIH-Crypto      >28                  NA                0.4326241   0.3507902   0.5144580
18 months   ki1066203-TanzaniaChild2   <=20                 NA                0.4857143   0.3199030   0.6515256
18 months   ki1066203-TanzaniaChild2   (20-24]              NA                0.4565217   0.3545961   0.5584474
18 months   ki1066203-TanzaniaChild2   (24-28]              NA                0.4444444   0.3505984   0.5382905
18 months   ki1066203-TanzaniaChild2   >28                  NA                0.3658537   0.2806121   0.4510952
18 months   ki1101329-Keneba           <=20                 NA                0.4506024   0.4027217   0.4984831
18 months   ki1101329-Keneba           (20-24]              NA                0.5112613   0.4647549   0.5577676
18 months   ki1101329-Keneba           (24-28]              NA                0.4613583   0.4140651   0.5086516
18 months   ki1101329-Keneba           >28                  NA                0.5394063   0.5081446   0.5706681
18 months   ki1113344-GMS-Nepal        <=20                 NA                0.6309524   0.5579207   0.7039841
18 months   ki1113344-GMS-Nepal        (20-24]              NA                0.5724138   0.4918185   0.6530091
18 months   ki1113344-GMS-Nepal        (24-28]              NA                0.6524390   0.5794949   0.7253831
18 months   ki1113344-GMS-Nepal        >28                  NA                0.6391753   0.5435222   0.7348283
18 months   ki1126311-ZVITAMBO         <=20                 NA                0.5211581   0.4749389   0.5673774
18 months   ki1126311-ZVITAMBO         (20-24]              NA                0.4787053   0.4382829   0.5191277
18 months   ki1126311-ZVITAMBO         (24-28]              NA                0.4916468   0.4437653   0.5395283
18 months   ki1126311-ZVITAMBO         >28                  NA                0.4536341   0.4047718   0.5024963
18 months   ki1135781-COHORTS          <=20                 NA                0.6654545   0.6260157   0.7048934
18 months   ki1135781-COHORTS          (20-24]              NA                0.6138996   0.5796617   0.6481375
18 months   ki1135781-COHORTS          (24-28]              NA                0.6305278   0.5947921   0.6662635
18 months   ki1135781-COHORTS          >28                  NA                0.6748815   0.6466114   0.7031516
18 months   ki1148112-LCNI-5           <=20                 NA                0.5714286   0.4490060   0.6938511
18 months   ki1148112-LCNI-5           (20-24]              NA                0.5909091   0.4720760   0.7097422
18 months   ki1148112-LCNI-5           (24-28]              NA                0.5606061   0.4406497   0.6805624
18 months   ki1148112-LCNI-5           >28                  NA                0.6250000   0.5187204   0.7312796
24 months   ki0047075b-MAL-ED          <=20                 NA                0.6383648   0.5855390   0.6911905
24 months   ki0047075b-MAL-ED          (20-24]              NA                0.5873926   0.5357260   0.6390591
24 months   ki0047075b-MAL-ED          (24-28]              NA                0.5452436   0.4982179   0.5922693
24 months   ki0047075b-MAL-ED          >28                  NA                0.5909091   0.5449540   0.6368641
24 months   ki1000108-IRC              <=20                 NA                0.6781609   0.5798720   0.7764498
24 months   ki1000108-IRC              (20-24]              NA                0.6783626   0.6082664   0.7484588
24 months   ki1000108-IRC              (24-28]              NA                0.6296296   0.5384438   0.7208154
24 months   ki1000108-IRC              >28                  NA                0.4545455   0.3072396   0.6018513
24 months   ki1017093-NIH-Birth        <=20                 NA                0.7909091   0.7148332   0.8669850
24 months   ki1017093-NIH-Birth        (20-24]              NA                0.6956522   0.6114652   0.7798391
24 months   ki1017093-NIH-Birth        (24-28]              NA                0.7938931   0.7245499   0.8632364
24 months   ki1017093-NIH-Birth        >28                  NA                0.7321429   0.6500410   0.8142447
24 months   ki1017093b-PROVIDE         <=20                 NA                0.5806452   0.4063499   0.7549405
24 months   ki1017093b-PROVIDE         (20-24]              NA                0.4285714   0.2895394   0.5676034
24 months   ki1017093b-PROVIDE         (24-28]              NA                0.3947368   0.2387980   0.5506757
24 months   ki1017093b-PROVIDE         >28                  NA                0.6000000   0.4241002   0.7758998
24 months   ki1017093c-NIH-Crypto      <=20                 NA                0.4742268   0.4039063   0.5445474
24 months   ki1017093c-NIH-Crypto      (20-24]              NA                0.4964539   0.4138614   0.5790464
24 months   ki1017093c-NIH-Crypto      (24-28]              NA                0.5141243   0.4404356   0.5878130
24 months   ki1017093c-NIH-Crypto      >28                  NA                0.5327869   0.4441845   0.6213892
24 months   ki1066203-TanzaniaChild2   <=20                 NA                0.4800000   0.2837676   0.6762324
24 months   ki1066203-TanzaniaChild2   (20-24]              NA                0.5172414   0.3883820   0.6461008
24 months   ki1066203-TanzaniaChild2   (24-28]              NA                0.5205479   0.4057167   0.6353792
24 months   ki1066203-TanzaniaChild2   >28                  NA                0.4148936   0.3150914   0.5146959
24 months   ki1101329-Keneba           <=20                 NA                0.5404040   0.4913079   0.5895002
24 months   ki1101329-Keneba           (20-24]              NA                0.5586854   0.5115226   0.6058483
24 months   ki1101329-Keneba           (24-28]              NA                0.5531401   0.5052384   0.6010418
24 months   ki1101329-Keneba           >28                  NA                0.6042105   0.5731068   0.6353142
24 months   ki1113344-GMS-Nepal        <=20                 NA                0.6941176   0.6247910   0.7634443
24 months   ki1113344-GMS-Nepal        (20-24]              NA                0.6293706   0.5501413   0.7085999
24 months   ki1113344-GMS-Nepal        (24-28]              NA                0.7437500   0.6760457   0.8114543
24 months   ki1113344-GMS-Nepal        >28                  NA                0.6842105   0.5906565   0.7777646
24 months   ki1126311-ZVITAMBO         <=20                 NA                0.7766990   0.6961865   0.8572116
24 months   ki1126311-ZVITAMBO         (20-24]              NA                0.7260274   0.6536064   0.7984484
24 months   ki1126311-ZVITAMBO         (24-28]              NA                0.7169811   0.6311353   0.8028270
24 months   ki1126311-ZVITAMBO         >28                  NA                0.6695652   0.5835053   0.7556251
24 months   ki1135781-COHORTS          <=20                 NA                0.8165468   0.7843705   0.8487230
24 months   ki1135781-COHORTS          (20-24]              NA                0.7519685   0.7212998   0.7826372
24 months   ki1135781-COHORTS          (24-28]              NA                0.7489240   0.7167263   0.7811217
24 months   ki1135781-COHORTS          >28                  NA                0.7874633   0.7623653   0.8125613
24 months   ki1148112-LCNI-5           <=20                 NA                0.6619718   0.5517545   0.7721892
24 months   ki1148112-LCNI-5           (20-24]              NA                0.6250000   0.5129860   0.7370140
24 months   ki1148112-LCNI-5           (24-28]              NA                0.6911765   0.5811802   0.8011728
24 months   ki1148112-LCNI-5           >28                  NA                0.6588235   0.5578639   0.7597831


### Parameter: E(Y)


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki0047075b-MAL-ED          NA                   NA                0.2599143   0.2585261   0.2613025
3 months    ki1000108-CMC-V-BCS-2002   NA                   NA                0.3453039   0.3387342   0.3518735
3 months    ki1000108-IRC              NA                   NA                0.3170732   0.3142828   0.3198636
3 months    ki1017093-NIH-Birth        NA                   NA                0.2232855   0.2217673   0.2248037
3 months    ki1017093b-PROVIDE         NA                   NA                0.2514286   0.2435675   0.2592896
3 months    ki1017093c-NIH-Crypto      NA                   NA                0.1596306   0.1578334   0.1614278
3 months    ki1066203-TanzaniaChild2   NA                   NA                0.0984975   0.0961859   0.1008091
3 months    ki1101329-Keneba           NA                   NA                0.2440841   0.2434057   0.2447626
3 months    ki1113344-GMS-Nepal        NA                   NA                0.1585160   0.1544939   0.1625381
3 months    ki1126311-ZVITAMBO         NA                   NA                0.2101947   0.2094908   0.2108986
3 months    ki1135781-COHORTS          NA                   NA                0.1792074   0.1788334   0.1795813
6 months    ki0047075b-MAL-ED          NA                   NA                0.3321879   0.3307016   0.3336742
6 months    ki1000108-CMC-V-BCS-2002   NA                   NA                0.5122616   0.5063824   0.5181407
6 months    ki1000108-IRC              NA                   NA                0.4240196   0.4210268   0.4270124
6 months    ki1000304b-SAS-FoodSuppl   NA                   NA                0.4095238   0.3938003   0.4252473
6 months    ki1017093-NIH-Birth        NA                   NA                0.3624772   0.3591084   0.3658461
6 months    ki1017093b-PROVIDE         NA                   NA                0.2891566   0.2780788   0.3002345
6 months    ki1017093c-NIH-Crypto      NA                   NA                0.3070652   0.3051647   0.3089657
6 months    ki1066203-TanzaniaChild2   NA                   NA                0.1927928   0.1896697   0.1959159
6 months    ki1101329-Keneba           NA                   NA                0.3232413   0.3227868   0.3236959
6 months    ki1113344-GMS-Nepal        NA                   NA                0.2857143   0.2819933   0.2894353
6 months    ki1126311-ZVITAMBO         NA                   NA                0.2969298   0.2955177   0.2983419
6 months    ki1135781-COHORTS          NA                   NA                0.2551748   0.2538444   0.2565051
6 months    ki1148112-LCNI-5           NA                   NA                0.4000000   0.3754308   0.4245692
12 months   ki0047075b-MAL-ED          NA                   NA                0.4295024   0.4276454   0.4313594
12 months   ki1000108-CMC-V-BCS-2002   NA                   NA                0.6989247   0.6967026   0.7011469
12 months   ki1000108-IRC              NA                   NA                0.5073529   0.5030392   0.5116667
12 months   ki1017093-NIH-Birth        NA                   NA                0.5083488   0.5047265   0.5119711
12 months   ki1017093b-PROVIDE         NA                   NA                0.3522013   0.3366281   0.3677744
12 months   ki1017093c-NIH-Crypto      NA                   NA                0.3799726   0.3777311   0.3822140
12 months   ki1066203-TanzaniaChild2   NA                   NA                0.3178138   0.3144558   0.3211717
12 months   ki1101329-Keneba           NA                   NA                0.4093220   0.4081136   0.4105305
12 months   ki1113344-GMS-Nepal        NA                   NA                0.4553265   0.4526130   0.4580399
12 months   ki1126311-ZVITAMBO         NA                   NA                0.3775591   0.3764558   0.3786623
12 months   ki1135781-COHORTS          NA                   NA                0.4347091   0.4339218   0.4354965
12 months   ki1148112-LCNI-5           NA                   NA                0.4864048   0.4844181   0.4883916
18 months   ki0047075b-MAL-ED          NA                   NA                0.5393676   0.5375572   0.5411781
18 months   ki1000108-CMC-V-BCS-2002   NA                   NA                0.8471850   0.8454665   0.8489035
18 months   ki1000108-IRC              NA                   NA                0.5623472   0.5563655   0.5683289
18 months   ki1017093-NIH-Birth        NA                   NA                0.6484848   0.6471509   0.6498188
18 months   ki1017093b-PROVIDE         NA                   NA                0.4516129   0.4303022   0.4729236
18 months   ki1017093c-NIH-Crypto      NA                   NA                0.4433566   0.4426357   0.4440776
18 months   ki1066203-TanzaniaChild2   NA                   NA                0.4245810   0.4200220   0.4291400
18 months   ki1101329-Keneba           NA                   NA                0.5028723   0.5013214   0.5044232
18 months   ki1113344-GMS-Nepal        NA                   NA                0.6236934   0.6211614   0.6262254
18 months   ki1126311-ZVITAMBO         NA                   NA                0.4865156   0.4854492   0.4875821
18 months   ki1135781-COHORTS          NA                   NA                0.6477457   0.6468359   0.6486555
18 months   ki1148112-LCNI-5           NA                   NA                0.5890909   0.5860905   0.5920913
24 months   ki0047075b-MAL-ED          NA                   NA                0.5871261   0.5855151   0.5887372
24 months   ki1000108-IRC              NA                   NA                0.6414634   0.6348619   0.6480650
24 months   ki1017093-NIH-Birth        NA                   NA                0.7542735   0.7505159   0.7580311
24 months   ki1017093b-PROVIDE         NA                   NA                0.4864865   0.4722638   0.5007092
24 months   ki1017093c-NIH-Crypto      NA                   NA                0.5015773   0.4998954   0.5032592
24 months   ki1066203-TanzaniaChild2   NA                   NA                0.4760000   0.4699409   0.4820591
24 months   ki1101329-Keneba           NA                   NA                0.5741080   0.5729757   0.5752402
24 months   ki1113344-GMS-Nepal        NA                   NA                0.6901408   0.6866976   0.6935841
24 months   ki1126311-ZVITAMBO         NA                   NA                0.7212766   0.7179654   0.7245878
24 months   ki1135781-COHORTS          NA                   NA                0.7750329   0.7741206   0.7759453
24 months   ki1148112-LCNI-5           NA                   NA                0.6587838   0.6561788   0.6613888


### Parameter: RR


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki0047075b-MAL-ED          (20-24]              <=20              0.8279001   0.6704329   1.0223523
3 months    ki0047075b-MAL-ED          (24-28]              <=20              0.7610001   0.6155622   0.9408003
3 months    ki0047075b-MAL-ED          >28                  <=20              0.7474645   0.6044176   0.9243662
3 months    ki1000108-CMC-V-BCS-2002   (20-24]              <=20              0.6793664   0.4791472   0.9632504
3 months    ki1000108-CMC-V-BCS-2002   (24-28]              <=20              0.7557990   0.5211875   1.0960203
3 months    ki1000108-CMC-V-BCS-2002   >28                  <=20              0.5606250   0.3290800   0.9550881
3 months    ki1000108-IRC              (20-24]              <=20              0.8267544   0.5784082   1.1817308
3 months    ki1000108-IRC              (24-28]              <=20              0.8559028   0.5783247   1.2667098
3 months    ki1000108-IRC              >28                  <=20              0.7414773   0.4251117   1.2932802
3 months    ki1017093-NIH-Birth        (20-24]              <=20              1.2323000   0.8072601   1.8811325
3 months    ki1017093-NIH-Birth        (24-28]              <=20              1.2370019   0.8179241   1.8708016
3 months    ki1017093-NIH-Birth        >28                  <=20              1.1041667   0.7081429   1.7216637
3 months    ki1017093b-PROVIDE         (20-24]              <=20              0.8863636   0.4501262   1.7453781
3 months    ki1017093b-PROVIDE         (24-28]              <=20              0.6166008   0.2751464   1.3817974
3 months    ki1017093b-PROVIDE         >28                  <=20              1.1470588   0.5697091   2.3095012
3 months    ki1017093c-NIH-Crypto      (20-24]              <=20              0.9302326   0.6098241   1.4189872
3 months    ki1017093c-NIH-Crypto      (24-28]              <=20              0.7287556   0.4729133   1.1230066
3 months    ki1017093c-NIH-Crypto      >28                  <=20              0.6807040   0.4132637   1.1212160
3 months    ki1066203-TanzaniaChild2   (20-24]              <=20              0.6415094   0.3233469   1.2727334
3 months    ki1066203-TanzaniaChild2   (24-28]              <=20              0.5614035   0.2797437   1.1266525
3 months    ki1066203-TanzaniaChild2   >28                  <=20              0.4263959   0.2069559   0.8785133
3 months    ki1101329-Keneba           (20-24]              <=20              0.8671484   0.6958299   1.0806468
3 months    ki1101329-Keneba           (24-28]              <=20              0.8907364   0.7103534   1.1169249
3 months    ki1101329-Keneba           >28                  <=20              0.8404609   0.6971183   1.0132778
3 months    ki1113344-GMS-Nepal        (20-24]              <=20              0.6453333   0.4021861   1.0354786
3 months    ki1113344-GMS-Nepal        (24-28]              <=20              0.4266667   0.2486597   0.7321027
3 months    ki1113344-GMS-Nepal        >28                  <=20              0.6901961   0.4077141   1.1683939
3 months    ki1126311-ZVITAMBO         (20-24]              <=20              0.9965475   0.8466561   1.1729756
3 months    ki1126311-ZVITAMBO         (24-28]              <=20              0.9480079   0.7892462   1.1387054
3 months    ki1126311-ZVITAMBO         >28                  <=20              0.7517271   0.6117473   0.9237372
3 months    ki1135781-COHORTS          (20-24]              <=20              0.7747810   0.6763805   0.8874969
3 months    ki1135781-COHORTS          (24-28]              <=20              0.7717477   0.6736086   0.8841849
3 months    ki1135781-COHORTS          >28                  <=20              0.8798349   0.7739310   1.0002307
6 months    ki0047075b-MAL-ED          (20-24]              <=20              0.9106232   0.7574652   1.0947493
6 months    ki0047075b-MAL-ED          (24-28]              <=20              0.7904984   0.6553492   0.9535187
6 months    ki0047075b-MAL-ED          >28                  <=20              0.8075427   0.6715973   0.9710063
6 months    ki1000108-CMC-V-BCS-2002   (20-24]              <=20              0.8029541   0.6268611   1.0285139
6 months    ki1000108-CMC-V-BCS-2002   (24-28]              <=20              0.8386187   0.6422482   1.0950306
6 months    ki1000108-CMC-V-BCS-2002   >28                  <=20              0.6837209   0.4697170   0.9952254
6 months    ki1000108-IRC              (20-24]              <=20              0.9984520   0.7456247   1.3370083
6 months    ki1000108-IRC              (24-28]              <=20              0.9429825   0.6804362   1.3068321
6 months    ki1000108-IRC              >28                  <=20              0.7715311   0.4797316   1.2408192
6 months    ki1000304b-SAS-FoodSuppl   (20-24]              <=20              1.0606061   0.5011981   2.2443924
6 months    ki1000304b-SAS-FoodSuppl   (24-28]              <=20              1.4004914   0.7936116   2.4714561
6 months    ki1000304b-SAS-FoodSuppl   >28                  <=20              0.8181818   0.3596119   1.8615107
6 months    ki1017093-NIH-Birth        (20-24]              <=20              1.3525014   0.9636665   1.8982295
6 months    ki1017093-NIH-Birth        (24-28]              <=20              1.3305889   0.9504242   1.8628173
6 months    ki1017093-NIH-Birth        >28                  <=20              1.2217867   0.8567460   1.7423632
6 months    ki1017093b-PROVIDE         (20-24]              <=20              0.6981132   0.3785039   1.2876012
6 months    ki1017093b-PROVIDE         (24-28]              <=20              0.5034014   0.2377622   1.0658253
6 months    ki1017093b-PROVIDE         >28                  <=20              0.9327731   0.5035717   1.7277892
6 months    ki1017093c-NIH-Crypto      (20-24]              <=20              0.9613206   0.7210692   1.2816209
6 months    ki1017093c-NIH-Crypto      (24-28]              <=20              0.8598304   0.6470432   1.1425950
6 months    ki1017093c-NIH-Crypto      >28                  <=20              0.7996272   0.5768873   1.1083684
6 months    ki1066203-TanzaniaChild2   (20-24]              <=20              0.8888889   0.5266774   1.5002037
6 months    ki1066203-TanzaniaChild2   (24-28]              <=20              0.8000000   0.4728040   1.3536265
6 months    ki1066203-TanzaniaChild2   >28                  <=20              0.5775401   0.3332581   1.0008837
6 months    ki1101329-Keneba           (20-24]              <=20              0.9527294   0.7854777   1.1555941
6 months    ki1101329-Keneba           (24-28]              <=20              1.0013915   0.8233424   1.2179439
6 months    ki1101329-Keneba           >28                  <=20              1.0441310   0.8889410   1.2264139
6 months    ki1113344-GMS-Nepal        (20-24]              <=20              0.6618601   0.4611345   0.9499590
6 months    ki1113344-GMS-Nepal        (24-28]              <=20              0.7894737   0.5705081   1.0924800
6 months    ki1113344-GMS-Nepal        >28                  <=20              0.7618014   0.5157860   1.1251593
6 months    ki1126311-ZVITAMBO         (20-24]              <=20              0.8487090   0.7229334   0.9963669
6 months    ki1126311-ZVITAMBO         (24-28]              <=20              0.8486163   0.7119475   1.0115208
6 months    ki1126311-ZVITAMBO         >28                  <=20              0.7068426   0.5825937   0.8575899
6 months    ki1135781-COHORTS          (20-24]              <=20              0.6824580   0.5649687   0.8243801
6 months    ki1135781-COHORTS          (24-28]              <=20              0.7539306   0.6248217   0.9097178
6 months    ki1135781-COHORTS          >28                  <=20              0.9144540   0.7770360   1.0761743
6 months    ki1148112-LCNI-5           (20-24]              <=20              1.2025862   0.5348158   2.7041342
6 months    ki1148112-LCNI-5           (24-28]              <=20              2.2434211   1.1000048   4.5753781
6 months    ki1148112-LCNI-5           >28                  <=20              2.0000000   1.0026641   3.9893719
12 months   ki0047075b-MAL-ED          (20-24]              <=20              0.8190714   0.6989494   0.9598377
12 months   ki0047075b-MAL-ED          (24-28]              <=20              0.7864202   0.6739824   0.9176155
12 months   ki0047075b-MAL-ED          >28                  <=20              0.8788020   0.7597726   1.0164791
12 months   ki1000108-CMC-V-BCS-2002   (20-24]              <=20              0.9648718   0.8103008   1.1489283
12 months   ki1000108-CMC-V-BCS-2002   (24-28]              <=20              0.9284615   0.7641200   1.1281484
12 months   ki1000108-CMC-V-BCS-2002   >28                  <=20              0.9102564   0.7160550   1.1571273
12 months   ki1000108-IRC              (20-24]              <=20              1.0230065   0.7999980   1.3081812
12 months   ki1000108-IRC              (24-28]              <=20              0.9555556   0.7247231   1.2599108
12 months   ki1000108-IRC              >28                  <=20              0.7383838   0.4832020   1.1283287
12 months   ki1017093-NIH-Birth        (20-24]              <=20              1.1660448   0.9050633   1.5022821
12 months   ki1017093-NIH-Birth        (24-28]              <=20              1.2583893   0.9892184   1.6008027
12 months   ki1017093-NIH-Birth        >28                  <=20              1.0905125   0.8390847   1.4172796
12 months   ki1017093b-PROVIDE         (20-24]              <=20              0.7650000   0.4488405   1.3038597
12 months   ki1017093b-PROVIDE         (24-28]              <=20              0.4500000   0.2186734   0.9260387
12 months   ki1017093b-PROVIDE         >28                  <=20              1.0227273   0.6054747   1.7275223
12 months   ki1017093c-NIH-Crypto      (20-24]              <=20              1.1064598   0.8677730   1.4107990
12 months   ki1017093c-NIH-Crypto      (24-28]              <=20              0.9093426   0.7085356   1.1670605
12 months   ki1017093c-NIH-Crypto      >28                  <=20              0.9008638   0.6816810   1.1905212
12 months   ki1066203-TanzaniaChild2   (20-24]              <=20              0.8772369   0.5832157   1.3194855
12 months   ki1066203-TanzaniaChild2   (24-28]              <=20              0.8512987   0.5680807   1.2757158
12 months   ki1066203-TanzaniaChild2   >28                  <=20              0.7010695   0.4650541   1.0568630
12 months   ki1101329-Keneba           (20-24]              <=20              1.1090685   0.9431421   1.3041862
12 months   ki1101329-Keneba           (24-28]              <=20              1.0249433   0.8649425   1.2145417
12 months   ki1101329-Keneba           >28                  <=20              1.1929635   1.0378341   1.3712806
12 months   ki1113344-GMS-Nepal        (20-24]              <=20              0.8437551   0.6585506   1.0810447
12 months   ki1113344-GMS-Nepal        (24-28]              <=20              0.9118256   0.7234567   1.1492408
12 months   ki1113344-GMS-Nepal        >28                  <=20              1.0200788   0.7923535   1.3132533
12 months   ki1126311-ZVITAMBO         (20-24]              <=20              0.8987741   0.7907193   1.0215951
12 months   ki1126311-ZVITAMBO         (24-28]              <=20              0.9050848   0.7862616   1.0418651
12 months   ki1126311-ZVITAMBO         >28                  <=20              0.7979408   0.6853996   0.9289611
12 months   ki1135781-COHORTS          (20-24]              <=20              0.8243867   0.7650754   0.8882960
12 months   ki1135781-COHORTS          (24-28]              <=20              0.8157727   0.7568002   0.8793406
12 months   ki1135781-COHORTS          >28                  <=20              0.9478306   0.8844370   1.0157681
12 months   ki1148112-LCNI-5           (20-24]              <=20              0.9347614   0.6720315   1.3002053
12 months   ki1148112-LCNI-5           (24-28]              <=20              1.0126582   0.7373540   1.3907522
12 months   ki1148112-LCNI-5           >28                  <=20              1.0366694   0.7664754   1.4021109
18 months   ki0047075b-MAL-ED          (20-24]              <=20              0.8753752   0.7693533   0.9960077
18 months   ki0047075b-MAL-ED          (24-28]              <=20              0.8258911   0.7278784   0.9371016
18 months   ki0047075b-MAL-ED          >28                  <=20              0.8911457   0.7900579   1.0051676
18 months   ki1000108-CMC-V-BCS-2002   (20-24]              <=20              0.9772043   0.8746658   1.0917635
18 months   ki1000108-CMC-V-BCS-2002   (24-28]              <=20              0.9524114   0.8406072   1.0790860
18 months   ki1000108-CMC-V-BCS-2002   >28                  <=20              0.9430740   0.8075742   1.1013088
18 months   ki1000108-IRC              (20-24]              <=20              0.9743213   0.7861729   1.2074977
18 months   ki1000108-IRC              (24-28]              <=20              0.9604701   0.7576779   1.2175395
18 months   ki1000108-IRC              >28                  <=20              0.6464161   0.4286314   0.9748557
18 months   ki1017093-NIH-Birth        (20-24]              <=20              0.9426230   0.7818769   1.1364167
18 months   ki1017093-NIH-Birth        (24-28]              <=20              0.9533020   0.7971791   1.1400008
18 months   ki1017093-NIH-Birth        >28                  <=20              0.9829060   0.8182645   1.1806746
18 months   ki1017093b-PROVIDE         (20-24]              <=20              0.6800000   0.4369558   1.0582305
18 months   ki1017093b-PROVIDE         (24-28]              <=20              0.4675000   0.2621972   0.8335566
18 months   ki1017093b-PROVIDE         >28                  <=20              1.0419355   0.6998543   1.5512222
18 months   ki1017093c-NIH-Crypto      (20-24]              <=20              1.0526948   0.8391632   1.3205614
18 months   ki1017093c-NIH-Crypto      (24-28]              <=20              1.0191935   0.8199956   1.2667817
18 months   ki1017093c-NIH-Crypto      >28                  <=20              0.9908488   0.7770386   1.2634911
18 months   ki1066203-TanzaniaChild2   (20-24]              <=20              0.9398977   0.6250724   1.4132885
18 months   ki1066203-TanzaniaChild2   (24-28]              <=20              0.9150327   0.6125054   1.3669836
18 months   ki1066203-TanzaniaChild2   >28                  <=20              0.7532281   0.4982290   1.1387386
18 months   ki1101329-Keneba           (20-24]              <=20              1.1346172   0.9865105   1.3049595
18 months   ki1101329-Keneba           (24-28]              <=20              1.0238701   0.8833309   1.1867692
18 months   ki1101329-Keneba           >28                  <=20              1.1970783   1.0606129   1.3511021
18 months   ki1113344-GMS-Nepal        (20-24]              <=20              0.9072219   0.7560578   1.0886092
18 months   ki1113344-GMS-Nepal        (24-28]              <=20              1.0340543   0.8803467   1.2145991
18 months   ki1113344-GMS-Nepal        >28                  <=20              1.0130325   0.8384149   1.2240179
18 months   ki1126311-ZVITAMBO         (20-24]              <=20              0.9185413   0.8126748   1.0381990
18 months   ki1126311-ZVITAMBO         (24-28]              <=20              0.9433735   0.8269490   1.0761892
18 months   ki1126311-ZVITAMBO         >28                  <=20              0.8704346   0.7570791   1.0007626
18 months   ki1135781-COHORTS          (20-24]              <=20              0.9225267   0.8504242   1.0007424
18 months   ki1135781-COHORTS          (24-28]              <=20              0.9475145   0.8729153   1.0284889
18 months   ki1135781-COHORTS          >28                  <=20              1.0141662   0.9431704   1.0905061
18 months   ki1148112-LCNI-5           (20-24]              <=20              1.0340909   0.7708087   1.3873015
18 months   ki1148112-LCNI-5           (24-28]              <=20              0.9810606   0.7247596   1.3279988
18 months   ki1148112-LCNI-5           >28                  <=20              1.0937500   0.8320103   1.4378297
24 months   ki0047075b-MAL-ED          (20-24]              <=20              0.9201519   0.8154759   1.0382643
24 months   ki0047075b-MAL-ED          (24-28]              <=20              0.8541255   0.7579007   0.9625672
24 months   ki0047075b-MAL-ED          >28                  <=20              0.9256605   0.8262909   1.0369803
24 months   ki1000108-IRC              (20-24]              <=20              1.0002974   0.8371927   1.1951786
24 months   ki1000108-IRC              (24-28]              <=20              0.9284369   0.7564314   1.1395549
24 months   ki1000108-IRC              >28                  <=20              0.6702619   0.4699671   0.9559203
24 months   ki1017093-NIH-Birth        (20-24]              <=20              0.8795602   0.7535786   1.0266031
24 months   ki1017093-NIH-Birth        (24-28]              <=20              1.0037729   0.8814715   1.1430433
24 months   ki1017093-NIH-Birth        >28                  <=20              0.9256979   0.7985577   1.0730803
24 months   ki1017093b-PROVIDE         (20-24]              <=20              0.7380952   0.4744202   1.1483165
24 months   ki1017093b-PROVIDE         (24-28]              <=20              0.6798246   0.4139246   1.1165354
24 months   ki1017093b-PROVIDE         >28                  <=20              1.0333333   0.6792301   1.5720412
24 months   ki1017093c-NIH-Crypto      (20-24]              <=20              1.0468702   0.8377355   1.3082138
24 months   ki1017093c-NIH-Crypto      (24-28]              <=20              1.0841317   0.8820980   1.3324386
24 months   ki1017093c-NIH-Crypto      >28                  <=20              1.1234854   0.8990888   1.4038873
24 months   ki1066203-TanzaniaChild2   (20-24]              <=20              1.0775862   0.6676299   1.7392750
24 months   ki1066203-TanzaniaChild2   (24-28]              <=20              1.0844749   0.6815122   1.7257003
24 months   ki1066203-TanzaniaChild2   >28                  <=20              0.8643617   0.5378901   1.3889846
24 months   ki1101329-Keneba           (20-24]              <=20              1.0338291   0.9132484   1.1703308
24 months   ki1101329-Keneba           (24-28]              <=20              1.0235677   0.9028326   1.1604485
24 months   ki1101329-Keneba           >28                  <=20              1.1180718   1.0072099   1.2411362
24 months   ki1113344-GMS-Nepal        (20-24]              <=20              0.9067204   0.7721193   1.0647861
24 months   ki1113344-GMS-Nepal        (24-28]              <=20              1.0715042   0.9360617   1.2265445
24 months   ki1113344-GMS-Nepal        >28                  <=20              0.9857270   0.8321838   1.1676000
24 months   ki1126311-ZVITAMBO         (20-24]              <=20              0.9347603   0.8095117   1.0793874
24 months   ki1126311-ZVITAMBO         (24-28]              <=20              0.9231132   0.7879080   1.0815196
24 months   ki1126311-ZVITAMBO         >28                  <=20              0.8620652   0.7308497   1.0168389
24 months   ki1135781-COHORTS          (20-24]              <=20              0.9209130   0.8701402   0.9746483
24 months   ki1135781-COHORTS          (24-28]              <=20              0.9171844   0.8652251   0.9722640
24 months   ki1135781-COHORTS          >28                  <=20              0.9643823   0.9167240   1.0145183
24 months   ki1148112-LCNI-5           (20-24]              <=20              0.9441489   0.7392652   1.2058151
24 months   ki1148112-LCNI-5           (24-28]              <=20              1.0441176   0.8293191   1.3145504
24 months   ki1148112-LCNI-5           >28                  <=20              0.9952441   0.7936979   1.2479695


### Parameter: PAR


agecat      studyid                    intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -------------------  ---------------  -----------  -----------  -----------
3 months    ki0047075b-MAL-ED          <=20                 NA                -0.0547199   -0.0997024   -0.0097374
3 months    ki1000108-CMC-V-BCS-2002   <=20                 NA                -0.1184642   -0.2364759   -0.0004526
3 months    ki1000108-IRC              <=20                 NA                -0.0507429   -0.1522322    0.0507463
3 months    ki1017093-NIH-Birth        <=20                 NA                 0.0283169   -0.0333307    0.0899646
3 months    ki1017093b-PROVIDE         <=20                 NA                -0.0306227   -0.1724758    0.1112304
3 months    ki1017093c-NIH-Crypto      <=20                 NA                -0.0289659   -0.0798081    0.0218763
3 months    ki1066203-TanzaniaChild2   <=20                 NA                -0.0681692   -0.1543548    0.0180164
3 months    ki1101329-Keneba           <=20                 NA                -0.0309692   -0.0713969    0.0094586
3 months    ki1113344-GMS-Nepal        <=20                 NA                -0.0687567   -0.1308519   -0.0066615
3 months    ki1126311-ZVITAMBO         <=20                 NA                -0.0137694   -0.0411258    0.0135869
3 months    ki1135781-COHORTS          <=20                 NA                -0.0336040   -0.0550102   -0.0121979
6 months    ki0047075b-MAL-ED          <=20                 NA                -0.0500111   -0.0987765   -0.0012457
6 months    ki1000108-CMC-V-BCS-2002   <=20                 NA                -0.1020241   -0.2163605    0.0123123
6 months    ki1000108-IRC              <=20                 NA                -0.0178409   -0.1229697    0.0872880
6 months    ki1000304b-SAS-FoodSuppl   <=20                 NA                 0.0428571   -0.1311224    0.2168367
6 months    ki1017093-NIH-Birth        <=20                 NA                 0.0688264   -0.0108395    0.1484924
6 months    ki1017093b-PROVIDE         <=20                 NA                -0.0892218   -0.2463548    0.0679113
6 months    ki1017093c-NIH-Crypto      <=20                 NA                -0.0292984   -0.0918016    0.0332048
6 months    ki1066203-TanzaniaChild2   <=20                 NA                -0.0572072   -0.1634350    0.0490206
6 months    ki1101329-Keneba           <=20                 NA                 0.0029799   -0.0397160    0.0456758
6 months    ki1113344-GMS-Nepal        <=20                 NA                -0.0661376   -0.1398338    0.0075587
6 months    ki1126311-ZVITAMBO         <=20                 NA                -0.0501925   -0.0897965   -0.0105884
6 months    ki1135781-COHORTS          <=20                 NA                -0.0510634   -0.0903711   -0.0117557
6 months    ki1148112-LCNI-5           <=20                 NA                 0.1419355   -0.0147411    0.2986121
12 months   ki0047075b-MAL-ED          <=20                 NA                -0.0663880   -0.1177297   -0.0150464
12 months   ki1000108-CMC-V-BCS-2002   <=20                 NA                -0.0334696   -0.1366090    0.0696697
12 months   ki1000108-IRC              <=20                 NA                -0.0159029   -0.1216803    0.0898745
12 months   ki1017093-NIH-Birth        <=20                 NA                 0.0603488   -0.0269843    0.1476819
12 months   ki1017093b-PROVIDE         <=20                 NA                -0.0922432   -0.2558180    0.0713317
12 months   ki1017093c-NIH-Crypto      <=20                 NA                -0.0081553   -0.0727807    0.0564701
12 months   ki1066203-TanzaniaChild2   <=20                 NA                -0.0681511   -0.1947046    0.0584023
12 months   ki1101329-Keneba           <=20                 NA                 0.0398530   -0.0046688    0.0843749
12 months   ki1113344-GMS-Nepal        <=20                 NA                -0.0298806   -0.1053445    0.0455832
12 months   ki1126311-ZVITAMBO         <=20                 NA                -0.0401829   -0.0790270   -0.0013388
12 months   ki1135781-COHORTS          <=20                 NA                -0.0550713   -0.0820417   -0.0281009
12 months   ki1148112-LCNI-5           <=20                 NA                -0.0010952   -0.1108101    0.1086197
18 months   ki0047075b-MAL-ED          <=20                 NA                -0.0646786   -0.1162572   -0.0131000
18 months   ki1000108-CMC-V-BCS-2002   <=20                 NA                -0.0260545   -0.1035662    0.0514573
18 months   ki1000108-IRC              <=20                 NA                -0.0353540   -0.1386932    0.0679853
18 months   ki1017093-NIH-Birth        <=20                 NA                -0.0210804   -0.1071460    0.0649853
18 months   ki1017093b-PROVIDE         <=20                 NA                -0.1366224   -0.3039491    0.0307043
18 months   ki1017093c-NIH-Crypto      <=20                 NA                 0.0067369   -0.0599192    0.0733931
18 months   ki1066203-TanzaniaChild2   <=20                 NA                -0.0611333   -0.2270072    0.1047407
18 months   ki1101329-Keneba           <=20                 NA                 0.0522699    0.0043641    0.1001757
18 months   ki1113344-GMS-Nepal        <=20                 NA                -0.0072590   -0.0803346    0.0658166
18 months   ki1126311-ZVITAMBO         <=20                 NA                -0.0346425   -0.0808740    0.0115891
18 months   ki1135781-COHORTS          <=20                 NA                -0.0177088   -0.0571582    0.0217405
18 months   ki1148112-LCNI-5           <=20                 NA                 0.0176623   -0.1047970    0.1401217
24 months   ki0047075b-MAL-ED          <=20                 NA                -0.0512386   -0.1040889    0.0016117
24 months   ki1000108-IRC              <=20                 NA                -0.0366975   -0.1352079    0.0618128
24 months   ki1017093-NIH-Birth        <=20                 NA                -0.0366356   -0.1128042    0.0395331
24 months   ki1017093b-PROVIDE         <=20                 NA                -0.0941587   -0.2690333    0.0807160
24 months   ki1017093c-NIH-Crypto      <=20                 NA                 0.0273505   -0.0429902    0.0976911
24 months   ki1066203-TanzaniaChild2   <=20                 NA                -0.0040000   -0.2003259    0.1923259
24 months   ki1101329-Keneba           <=20                 NA                 0.0337039   -0.0154053    0.0828131
24 months   ki1113344-GMS-Nepal        <=20                 NA                -0.0039768   -0.0733889    0.0654353
24 months   ki1126311-ZVITAMBO         <=20                 NA                -0.0554224   -0.1360031    0.0251582
24 months   ki1135781-COHORTS          <=20                 NA                -0.0415138   -0.0737030   -0.0093246
24 months   ki1148112-LCNI-5           <=20                 NA                -0.0031880   -0.1134362    0.1070601


### Parameter: PAF


agecat      studyid                    intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -------------------  ---------------  -----------  -----------  -----------
3 months    ki0047075b-MAL-ED          <=20                 NA                -0.2105306   -0.3966242   -0.0492330
3 months    ki1000108-CMC-V-BCS-2002   <=20                 NA                -0.3430725   -0.7328013   -0.0409986
3 months    ki1000108-IRC              <=20                 NA                -0.1600354   -0.5286889    0.1197149
3 months    ki1017093-NIH-Birth        <=20                 NA                 0.1268194   -0.1978846    0.3635077
3 months    ki1017093b-PROVIDE         <=20                 NA                -0.1217949   -0.8553312    0.3217255
3 months    ki1017093c-NIH-Crypto      <=20                 NA                -0.1814557   -0.5471209    0.0977838
3 months    ki1066203-TanzaniaChild2   <=20                 NA                -0.6920904   -1.8389228   -0.0085410
3 months    ki1101329-Keneba           <=20                 NA                -0.1268791   -0.3053080    0.0271595
3 months    ki1113344-GMS-Nepal        <=20                 NA                -0.4337524   -0.8853591   -0.0903206
3 months    ki1126311-ZVITAMBO         <=20                 NA                -0.0655080   -0.2039446    0.0570104
3 months    ki1135781-COHORTS          <=20                 NA                -0.1875148   -0.3131861   -0.0738702
6 months    ki0047075b-MAL-ED          <=20                 NA                -0.1505506   -0.3071530   -0.0127099
6 months    ki1000108-CMC-V-BCS-2002   <=20                 NA                -0.1991641   -0.4446420    0.0046014
6 months    ki1000108-IRC              <=20                 NA                -0.0420755   -0.3220001    0.1785769
6 months    ki1000304b-SAS-FoodSuppl   <=20                 NA                 0.1046512   -0.4384459    0.4426975
6 months    ki1017093-NIH-Birth        <=20                 NA                 0.1898780   -0.0625175    0.3823182
6 months    ki1017093b-PROVIDE         <=20                 NA                -0.3085586   -0.9836544    0.1367824
6 months    ki1017093c-NIH-Crypto      <=20                 NA                -0.0954143   -0.3191271    0.0903587
6 months    ki1066203-TanzaniaChild2   <=20                 NA                -0.2967290   -0.9835361    0.1522685
6 months    ki1101329-Keneba           <=20                 NA                 0.0092187   -0.1320772    0.1328794
6 months    ki1113344-GMS-Nepal        <=20                 NA                -0.2314815   -0.5186294    0.0013715
6 months    ki1126311-ZVITAMBO         <=20                 NA                -0.1690382   -0.3103580   -0.0429595
6 months    ki1135781-COHORTS          <=20                 NA                -0.2001116   -0.3645212   -0.0555116
6 months    ki1148112-LCNI-5           <=20                 NA                 0.3548387   -0.1787958    0.6468998
12 months   ki0047075b-MAL-ED          <=20                 NA                -0.1545697   -0.2805434   -0.0409886
12 months   ki1000108-CMC-V-BCS-2002   <=20                 NA                -0.0478873   -0.2063559    0.0897646
12 months   ki1000108-IRC              <=20                 NA                -0.0313448   -0.2624151    0.1574308
12 months   ki1017093-NIH-Birth        <=20                 NA                 0.1187153   -0.0709305    0.2747777
12 months   ki1017093b-PROVIDE         <=20                 NA                -0.2619048   -0.8251323    0.1275133
12 months   ki1017093c-NIH-Crypto      <=20                 NA                -0.0214628   -0.2065265    0.1352147
12 months   ki1066203-TanzaniaChild2   <=20                 NA                -0.2144374   -0.6857731    0.1251147
12 months   ki1101329-Keneba           <=20                 NA                 0.0973635   -0.0182228    0.1998286
12 months   ki1113344-GMS-Nepal        <=20                 NA                -0.0656247   -0.2449607    0.0878781
12 months   ki1126311-ZVITAMBO         <=20                 NA                -0.1064281   -0.2142555   -0.0081759
12 months   ki1135781-COHORTS          <=20                 NA                -0.1266854   -0.1904754   -0.0663136
12 months   ki1148112-LCNI-5           <=20                 NA                -0.0022516   -0.2552131    0.1997310
18 months   ki0047075b-MAL-ED          <=20                 NA                -0.1199156   -0.2197614   -0.0282429
18 months   ki1000108-CMC-V-BCS-2002   <=20                 NA                -0.0307541   -0.1264324    0.0567973
18 months   ki1000108-IRC              <=20                 NA                -0.0628686   -0.2635226    0.1059205
18 months   ki1017093-NIH-Birth        <=20                 NA                -0.0325071   -0.1741336    0.0920361
18 months   ki1017093b-PROVIDE         <=20                 NA                -0.3025210   -0.7338763    0.0215213
18 months   ki1017093c-NIH-Crypto      <=20                 NA                 0.0151953   -0.1472318    0.1546256
18 months   ki1066203-TanzaniaChild2   <=20                 NA                -0.1439850   -0.6097241    0.1870025
18 months   ki1101329-Keneba           <=20                 NA                 0.1039427    0.0034410    0.1943089
18 months   ki1113344-GMS-Nepal        <=20                 NA                -0.0116387   -0.1358612    0.0989982
18 months   ki1126311-ZVITAMBO         <=20                 NA                -0.0712053   -0.1705775    0.0197310
18 months   ki1135781-COHORTS          <=20                 NA                -0.0273392   -0.0900840    0.0317941
18 months   ki1148112-LCNI-5           <=20                 NA                 0.0299824   -0.2018463    0.2170927
24 months   ki0047075b-MAL-ED          <=20                 NA                -0.0872702   -0.1811249   -0.0008734
24 months   ki1000108-IRC              <=20                 NA                -0.0572090   -0.2225415    0.0857644
24 months   ki1017093-NIH-Birth        <=20                 NA                -0.0485707   -0.1545895    0.0477130
24 months   ki1017093b-PROVIDE         <=20                 NA                -0.1935484   -0.6136945    0.1172073
24 months   ki1017093c-NIH-Crypto      <=20                 NA                 0.0545290   -0.0966395    0.1848593
24 months   ki1066203-TanzaniaChild2   <=20                 NA                -0.0084034   -0.5179851    0.3301138
24 months   ki1101329-Keneba           <=20                 NA                 0.0587066   -0.0308377    0.1404726
24 months   ki1113344-GMS-Nepal        <=20                 NA                -0.0057623   -0.1115413    0.0899503
24 months   ki1126311-ZVITAMBO         <=20                 NA                -0.0768394   -0.1945765    0.0292937
24 months   ki1135781-COHORTS          <=20                 NA                -0.0535639   -0.0959280   -0.0128375
24 months   ki1148112-LCNI-5           <=20                 NA                -0.0048393   -0.1869335    0.1493188


