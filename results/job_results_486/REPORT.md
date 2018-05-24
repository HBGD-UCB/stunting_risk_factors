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

**Intervention Variable:** birthwt

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
* agecat: 12 months, studyid: ki1017093b-PROVIDE
* agecat: 12 months, studyid: ki1017093c-NIH-Crypto
* agecat: 12 months, studyid: ki1066203-TanzaniaChild2
* agecat: 12 months, studyid: ki1101329-Keneba
* agecat: 12 months, studyid: ki1126311-ZVITAMBO
* agecat: 12 months, studyid: ki1135781-COHORTS
* agecat: 18 months, studyid: ki0047075b-MAL-ED
* agecat: 18 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 18 months, studyid: ki1000108-IRC
* agecat: 18 months, studyid: ki1000109-EE
* agecat: 18 months, studyid: ki1017093b-PROVIDE
* agecat: 18 months, studyid: ki1017093c-NIH-Crypto
* agecat: 18 months, studyid: ki1066203-TanzaniaChild2
* agecat: 18 months, studyid: ki1101329-Keneba
* agecat: 18 months, studyid: ki1126311-ZVITAMBO
* agecat: 18 months, studyid: ki1135781-COHORTS
* agecat: 24 months, studyid: ki0047075b-MAL-ED
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 24 months, studyid: ki1000108-IRC
* agecat: 24 months, studyid: ki1017093b-PROVIDE
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2
* agecat: 24 months, studyid: ki1101329-Keneba
* agecat: 24 months, studyid: ki1126311-ZVITAMBO
* agecat: 24 months, studyid: ki1135781-COHORTS
* agecat: 3 months, studyid: ki0047075b-MAL-ED
* agecat: 3 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 3 months, studyid: ki1000108-IRC
* agecat: 3 months, studyid: ki1000109-EE
* agecat: 3 months, studyid: ki1017093b-PROVIDE
* agecat: 3 months, studyid: ki1017093c-NIH-Crypto
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2
* agecat: 3 months, studyid: ki1101329-Keneba
* agecat: 3 months, studyid: ki1126311-ZVITAMBO
* agecat: 3 months, studyid: ki1135781-COHORTS
* agecat: 6 months, studyid: ki0047075b-MAL-ED
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 6 months, studyid: ki1000108-IRC
* agecat: 6 months, studyid: ki1000109-EE
* agecat: 6 months, studyid: ki1017093b-PROVIDE
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2
* agecat: 6 months, studyid: ki1101329-Keneba
* agecat: 6 months, studyid: ki1126311-ZVITAMBO
* agecat: 6 months, studyid: ki1135781-COHORTS
* agecat: 9 months, studyid: ki0047075b-MAL-ED
* agecat: 9 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 9 months, studyid: ki1000108-IRC
* agecat: 9 months, studyid: ki1000109-EE
* agecat: 9 months, studyid: ki1017093b-PROVIDE
* agecat: 9 months, studyid: ki1017093c-NIH-Crypto
* agecat: 9 months, studyid: ki1066203-TanzaniaChild2
* agecat: 9 months, studyid: ki1101329-Keneba
* agecat: 9 months, studyid: ki1126311-ZVITAMBO
* agecat: 9 months, studyid: ki1135781-COHORTS
* agecat: Birth, studyid: ki0047075b-MAL-ED
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002
* agecat: Birth, studyid: ki1000108-IRC
* agecat: Birth, studyid: ki1000109-EE
* agecat: Birth, studyid: ki1017093c-NIH-Crypto
* agecat: Birth, studyid: ki1101329-Keneba
* agecat: Birth, studyid: ki1126311-ZVITAMBO
* agecat: Birth, studyid: ki1135781-COHORTS

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002
* agecat: Birth, studyid: ki1000108-IRC
* agecat: Birth, studyid: ki1000109-EE
* agecat: Birth, studyid: ki1017093c-NIH-Crypto
* agecat: Birth, studyid: ki1101329-Keneba
* agecat: 3 months, studyid: ki1000108-IRC
* agecat: 3 months, studyid: ki1017093b-PROVIDE
* agecat: 3 months, studyid: ki1017093c-NIH-Crypto
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2
* agecat: 6 months, studyid: ki1017093b-PROVIDE
* agecat: 9 months, studyid: ki1017093b-PROVIDE
* agecat: 12 months, studyid: ki1017093b-PROVIDE
* agecat: 12 months, studyid: ki1017093c-NIH-Crypto
* agecat: 18 months, studyid: ki1017093b-PROVIDE
* agecat: 24 months, studyid: ki1017093b-PROVIDE
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness




# Results Detail

## Results Plots
![](/tmp/98554183-d5fa-4955-8464-a1d188cc2a27/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/98554183-d5fa-4955-8464-a1d188cc2a27/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/98554183-d5fa-4955-8464-a1d188cc2a27/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/98554183-d5fa-4955-8464-a1d188cc2a27/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Data Summary

agecat      studyid                    A                     n     nA   nAY0   nAY1
----------  -------------------------  ---------------  ------  -----  -----  -----
Birth       ki0047075b-MAL-ED          <=2600             1486    261    146    115
Birth       ki0047075b-MAL-ED          (2600-2970]        1486    328    292     36
Birth       ki0047075b-MAL-ED          (2970-3302.75]     1486    481    453     28
Birth       ki0047075b-MAL-ED          >3302.75           1486    416    409      7
Birth       ki1000108-CMC-V-BCS-2002   <=2600               90     28     19      9
Birth       ki1000108-CMC-V-BCS-2002   (2600-2970]          90     23     19      4
Birth       ki1000108-CMC-V-BCS-2002   (2970-3302.75]       90     28     26      2
Birth       ki1000108-CMC-V-BCS-2002   >3302.75             90     11     10      1
Birth       ki1000108-IRC              <=2600              383     98     73     25
Birth       ki1000108-IRC              (2600-2970]         383    114    107      7
Birth       ki1000108-IRC              (2970-3302.75]      383    113    102     11
Birth       ki1000108-IRC              >3302.75            383     58     57      1
Birth       ki1000109-EE               <=2600                2      1      0      1
Birth       ki1000109-EE               (2600-2970]           2      1      1      0
Birth       ki1000109-EE               (2970-3302.75]        2      0      0      0
Birth       ki1000109-EE               >3302.75              2      0      0      0
Birth       ki1017093b-PROVIDE         <=2600                0      0      0      0
Birth       ki1017093b-PROVIDE         (2600-2970]           0      0      0      0
Birth       ki1017093b-PROVIDE         (2970-3302.75]        0      0      0      0
Birth       ki1017093b-PROVIDE         >3302.75              0      0      0      0
Birth       ki1017093c-NIH-Crypto      <=2600               27     10      6      4
Birth       ki1017093c-NIH-Crypto      (2600-2970]          27      9      8      1
Birth       ki1017093c-NIH-Crypto      (2970-3302.75]       27      8      8      0
Birth       ki1017093c-NIH-Crypto      >3302.75             27      0      0      0
Birth       ki1066203-TanzaniaChild2   <=2600                0      0      0      0
Birth       ki1066203-TanzaniaChild2   (2600-2970]           0      0      0      0
Birth       ki1066203-TanzaniaChild2   (2970-3302.75]        0      0      0      0
Birth       ki1066203-TanzaniaChild2   >3302.75              0      0      0      0
Birth       ki1101329-Keneba           <=2600             1527    293    245     48
Birth       ki1101329-Keneba           (2600-2970]        1527    491    463     28
Birth       ki1101329-Keneba           (2970-3302.75]     1527    488    484      4
Birth       ki1101329-Keneba           >3302.75           1527    255    253      2
Birth       ki1126311-ZVITAMBO         <=2600             3449    701    489    212
Birth       ki1126311-ZVITAMBO         (2600-2970]        3449    934    850     84
Birth       ki1126311-ZVITAMBO         (2970-3302.75]     3449   1058   1010     48
Birth       ki1126311-ZVITAMBO         >3302.75           3449    756    740     16
Birth       ki1135781-COHORTS          <=2600            10025   3062   2210    852
Birth       ki1135781-COHORTS          (2600-2970]       10025   2775   2674    101
Birth       ki1135781-COHORTS          (2970-3302.75]    10025   2874   2844     30
Birth       ki1135781-COHORTS          >3302.75          10025   1314   1308      6
3 months    ki0047075b-MAL-ED          <=2600             1614    272    171    101
3 months    ki0047075b-MAL-ED          (2600-2970]        1614    354    292     62
3 months    ki0047075b-MAL-ED          (2970-3302.75]     1614    520    466     54
3 months    ki0047075b-MAL-ED          >3302.75           1614    468    449     19
3 months    ki1000108-CMC-V-BCS-2002   <=2600              362     89     48     41
3 months    ki1000108-CMC-V-BCS-2002   (2600-2970]         362     83     61     22
3 months    ki1000108-CMC-V-BCS-2002   (2970-3302.75]      362    126    105     21
3 months    ki1000108-CMC-V-BCS-2002   >3302.75            362     64     58      6
3 months    ki1000108-IRC              <=2600              401    103     56     47
3 months    ki1000108-IRC              (2600-2970]         401    123     99     24
3 months    ki1000108-IRC              (2970-3302.75]      401    115    101     14
3 months    ki1000108-IRC              >3302.75            401     60     57      3
3 months    ki1000109-EE               <=2600              376    178     44    134
3 months    ki1000109-EE               (2600-2970]         376     96     45     51
3 months    ki1000109-EE               (2970-3302.75]      376     69     42     27
3 months    ki1000109-EE               >3302.75            376     33     28      5
3 months    ki1017093b-PROVIDE         <=2600              168     53     37     16
3 months    ki1017093b-PROVIDE         (2600-2970]         168     63     60      3
3 months    ki1017093b-PROVIDE         (2970-3302.75]      168     42     41      1
3 months    ki1017093b-PROVIDE         >3302.75            168     10     10      0
3 months    ki1017093c-NIH-Crypto      <=2600              728    254    147    107
3 months    ki1017093c-NIH-Crypto      (2600-2970]         728    221    186     35
3 months    ki1017093c-NIH-Crypto      (2970-3302.75]      728    168    155     13
3 months    ki1017093c-NIH-Crypto      >3302.75            728     85     84      1
3 months    ki1066203-TanzaniaChild2   <=2600              569     49     33     16
3 months    ki1066203-TanzaniaChild2   (2600-2970]         569     70     63      7
3 months    ki1066203-TanzaniaChild2   (2970-3302.75]      569    220    209     11
3 months    ki1066203-TanzaniaChild2   >3302.75            569    230    226      4
3 months    ki1101329-Keneba           <=2600             1790    351    221    130
3 months    ki1101329-Keneba           (2600-2970]        1790    554    487     67
3 months    ki1101329-Keneba           (2970-3302.75]     1790    558    520     38
3 months    ki1101329-Keneba           >3302.75           1790    327    319      8
3 months    ki1126311-ZVITAMBO         <=2600             2262    439    239    200
3 months    ki1126311-ZVITAMBO         (2600-2970]        2262    604    496    108
3 months    ki1126311-ZVITAMBO         (2970-3302.75]     2262    705    646     59
3 months    ki1126311-ZVITAMBO         >3302.75           2262    514    492     22
3 months    ki1135781-COHORTS          <=2600             9701   2964   1989    975
3 months    ki1135781-COHORTS          (2600-2970]        9701   2701   2428    273
3 months    ki1135781-COHORTS          (2970-3302.75]     9701   2785   2637    148
3 months    ki1135781-COHORTS          >3302.75           9701   1251   1220     31
6 months    ki0047075b-MAL-ED          <=2600             1538    262    181     81
6 months    ki0047075b-MAL-ED          (2600-2970]        1538    331    274     57
6 months    ki0047075b-MAL-ED          (2970-3302.75]     1538    498    435     63
6 months    ki0047075b-MAL-ED          >3302.75           1538    447    423     24
6 months    ki1000108-CMC-V-BCS-2002   <=2600              369     88     47     41
6 months    ki1000108-CMC-V-BCS-2002   (2600-2970]         369     84     58     26
6 months    ki1000108-CMC-V-BCS-2002   (2970-3302.75]      369    132     99     33
6 months    ki1000108-CMC-V-BCS-2002   >3302.75            369     65     54     11
6 months    ki1000108-IRC              <=2600              401    100     62     38
6 months    ki1000108-IRC              (2600-2970]         401    124     93     31
6 months    ki1000108-IRC              (2970-3302.75]      401    116     98     18
6 months    ki1000108-IRC              >3302.75            401     61     53      8
6 months    ki1000109-EE               <=2600              372    173     54    119
6 months    ki1000109-EE               (2600-2970]         372     95     47     48
6 months    ki1000109-EE               (2970-3302.75]      372     70     51     19
6 months    ki1000109-EE               >3302.75            372     34     27      7
6 months    ki1017093b-PROVIDE         <=2600              153     49     29     20
6 months    ki1017093b-PROVIDE         (2600-2970]         153     56     49      7
6 months    ki1017093b-PROVIDE         (2970-3302.75]      153     38     37      1
6 months    ki1017093b-PROVIDE         >3302.75            153     10     10      0
6 months    ki1017093c-NIH-Crypto      <=2600              715    251    153     98
6 months    ki1017093c-NIH-Crypto      (2600-2970]         715    216    185     31
6 months    ki1017093c-NIH-Crypto      (2970-3302.75]      715    165    149     16
6 months    ki1017093c-NIH-Crypto      >3302.75            715     83     78      5
6 months    ki1066203-TanzaniaChild2   <=2600              498     42     32     10
6 months    ki1066203-TanzaniaChild2   (2600-2970]         498     60     53      7
6 months    ki1066203-TanzaniaChild2   (2970-3302.75]      498    194    178     16
6 months    ki1066203-TanzaniaChild2   >3302.75            498    202    192     10
6 months    ki1101329-Keneba           <=2600             1711    330    229    101
6 months    ki1101329-Keneba           (2600-2970]        1711    526    443     83
6 months    ki1101329-Keneba           (2970-3302.75]     1711    533    492     41
6 months    ki1101329-Keneba           >3302.75           1711    322    305     17
6 months    ki1126311-ZVITAMBO         <=2600             2045    383    249    134
6 months    ki1126311-ZVITAMBO         (2600-2970]        2045    552    454     98
6 months    ki1126311-ZVITAMBO         (2970-3302.75]     2045    649    579     70
6 months    ki1126311-ZVITAMBO         >3302.75           2045    461    430     31
6 months    ki1135781-COHORTS          <=2600             9302   2809   1787   1022
6 months    ki1135781-COHORTS          (2600-2970]        9302   2579   2113    466
6 months    ki1135781-COHORTS          (2970-3302.75]     9302   2693   2377    316
6 months    ki1135781-COHORTS          >3302.75           9302   1221   1139     82
9 months    ki0047075b-MAL-ED          <=2600             1488    256    167     89
9 months    ki0047075b-MAL-ED          (2600-2970]        1488    319    248     71
9 months    ki0047075b-MAL-ED          (2970-3302.75]     1488    490    406     84
9 months    ki0047075b-MAL-ED          >3302.75           1488    423    384     39
9 months    ki1000108-CMC-V-BCS-2002   <=2600              366     89     41     48
9 months    ki1000108-CMC-V-BCS-2002   (2600-2970]         366     82     56     26
9 months    ki1000108-CMC-V-BCS-2002   (2970-3302.75]      366    132     86     46
9 months    ki1000108-CMC-V-BCS-2002   >3302.75            366     63     48     15
9 months    ki1000108-IRC              <=2600              401    100     54     46
9 months    ki1000108-IRC              (2600-2970]         401    124     91     33
9 months    ki1000108-IRC              (2970-3302.75]      401    116     97     19
9 months    ki1000108-IRC              >3302.75            401     61     53      8
9 months    ki1000109-EE               <=2600              366    171     43    128
9 months    ki1000109-EE               (2600-2970]         366     93     42     51
9 months    ki1000109-EE               (2970-3302.75]      366     69     39     30
9 months    ki1000109-EE               >3302.75            366     33     25      8
9 months    ki1017093b-PROVIDE         <=2600              158     49     28     21
9 months    ki1017093b-PROVIDE         (2600-2970]         158     60     47     13
9 months    ki1017093b-PROVIDE         (2970-3302.75]      158     39     36      3
9 months    ki1017093b-PROVIDE         >3302.75            158     10     10      0
9 months    ki1017093c-NIH-Crypto      <=2600              706    240    143     97
9 months    ki1017093c-NIH-Crypto      (2600-2970]         706    216    173     43
9 months    ki1017093c-NIH-Crypto      (2970-3302.75]      706    166    147     19
9 months    ki1017093c-NIH-Crypto      >3302.75            706     84     79      5
9 months    ki1066203-TanzaniaChild2   <=2600              428     32     23      9
9 months    ki1066203-TanzaniaChild2   (2600-2970]         428     50     38     12
9 months    ki1066203-TanzaniaChild2   (2970-3302.75]      428    171    144     27
9 months    ki1066203-TanzaniaChild2   >3302.75            428    175    162     13
9 months    ki1101329-Keneba           <=2600             1705    328    206    122
9 months    ki1101329-Keneba           (2600-2970]        1705    522    404    118
9 months    ki1101329-Keneba           (2970-3302.75]     1705    538    486     52
9 months    ki1101329-Keneba           >3302.75           1705    317    299     18
9 months    ki1126311-ZVITAMBO         <=2600             1960    377    239    138
9 months    ki1126311-ZVITAMBO         (2600-2970]        1960    544    428    116
9 months    ki1126311-ZVITAMBO         (2970-3302.75]     1960    624    538     86
9 months    ki1126311-ZVITAMBO         >3302.75           1960    415    374     41
9 months    ki1135781-COHORTS          <=2600             8423   2477   1387   1090
9 months    ki1135781-COHORTS          (2600-2970]        8423   2334   1684    650
9 months    ki1135781-COHORTS          (2970-3302.75]     8423   2475   2022    453
9 months    ki1135781-COHORTS          >3302.75           8423   1137    996    141
12 months   ki0047075b-MAL-ED          <=2600             1468    252    145    107
12 months   ki0047075b-MAL-ED          (2600-2970]        1468    319    236     83
12 months   ki0047075b-MAL-ED          (2970-3302.75]     1468    481    379    102
12 months   ki0047075b-MAL-ED          >3302.75           1468    416    354     62
12 months   ki1000108-CMC-V-BCS-2002   <=2600              368     90     32     58
12 months   ki1000108-CMC-V-BCS-2002   (2600-2970]         368     82     41     41
12 months   ki1000108-CMC-V-BCS-2002   (2970-3302.75]      368    133     66     67
12 months   ki1000108-CMC-V-BCS-2002   >3302.75            368     63     46     17
12 months   ki1000108-IRC              <=2600              400    100     56     44
12 months   ki1000108-IRC              (2600-2970]         400    123     80     43
12 months   ki1000108-IRC              (2970-3302.75]      400    116     98     18
12 months   ki1000108-IRC              >3302.75            400     61     52      9
12 months   ki1000109-EE               <=2600              357    167     27    140
12 months   ki1000109-EE               (2600-2970]         357     92     32     60
12 months   ki1000109-EE               (2970-3302.75]      357     66     22     44
12 months   ki1000109-EE               >3302.75            357     32     21     11
12 months   ki1017093b-PROVIDE         <=2600              153     46     23     23
12 months   ki1017093b-PROVIDE         (2600-2970]         153     59     40     19
12 months   ki1017093b-PROVIDE         (2970-3302.75]      153     38     36      2
12 months   ki1017093b-PROVIDE         >3302.75            153     10     10      0
12 months   ki1017093c-NIH-Crypto      <=2600              706    246    147     99
12 months   ki1017093c-NIH-Crypto      (2600-2970]         706    216    171     45
12 months   ki1017093c-NIH-Crypto      (2970-3302.75]      706    165    142     23
12 months   ki1017093c-NIH-Crypto      >3302.75            706     79     75      4
12 months   ki1066203-TanzaniaChild2   <=2600              352     26     21      5
12 months   ki1066203-TanzaniaChild2   (2600-2970]         352     39     29     10
12 months   ki1066203-TanzaniaChild2   (2970-3302.75]      352    151    125     26
12 months   ki1066203-TanzaniaChild2   >3302.75            352    136    126     10
12 months   ki1101329-Keneba           <=2600             1607    298    151    147
12 months   ki1101329-Keneba           (2600-2970]        1607    492    350    142
12 months   ki1101329-Keneba           (2970-3302.75]     1607    510    433     77
12 months   ki1101329-Keneba           >3302.75           1607    307    271     36
12 months   ki1126311-ZVITAMBO         <=2600             1699    351    211    140
12 months   ki1126311-ZVITAMBO         (2600-2970]        1699    494    362    132
12 months   ki1126311-ZVITAMBO         (2970-3302.75]     1699    529    441     88
12 months   ki1126311-ZVITAMBO         >3302.75           1699    325    281     44
12 months   ki1135781-COHORTS          <=2600             7733   2228   1013   1215
12 months   ki1135781-COHORTS          (2600-2970]        7733   2134   1348    786
12 months   ki1135781-COHORTS          (2970-3302.75]     7733   2293   1662    631
12 months   ki1135781-COHORTS          >3302.75           7733   1078    869    209
18 months   ki0047075b-MAL-ED          <=2600             1401    245    123    122
18 months   ki0047075b-MAL-ED          (2600-2970]        1401    307    182    125
18 months   ki0047075b-MAL-ED          (2970-3302.75]     1401    456    297    159
18 months   ki0047075b-MAL-ED          >3302.75           1401    393    300     93
18 months   ki1000108-CMC-V-BCS-2002   <=2600              369     90     17     73
18 months   ki1000108-CMC-V-BCS-2002   (2600-2970]         369     82     20     62
18 months   ki1000108-CMC-V-BCS-2002   (2970-3302.75]      369    133     52     81
18 months   ki1000108-CMC-V-BCS-2002   >3302.75            369     64     26     38
18 months   ki1000108-IRC              <=2600              399     99     42     57
18 months   ki1000108-IRC              (2600-2970]         399    123     77     46
18 months   ki1000108-IRC              (2970-3302.75]      399    116     87     29
18 months   ki1000108-IRC              >3302.75            399     61     54      7
18 months   ki1000109-EE               <=2600              350    164     12    152
18 months   ki1000109-EE               (2600-2970]         350     90     18     72
18 months   ki1000109-EE               (2970-3302.75]      350     64     14     50
18 months   ki1000109-EE               >3302.75            350     32      9     23
18 months   ki1017093b-PROVIDE         <=2600              141     44     19     25
18 months   ki1017093b-PROVIDE         (2600-2970]         141     54     35     19
18 months   ki1017093b-PROVIDE         (2970-3302.75]      141     34     27      7
18 months   ki1017093b-PROVIDE         >3302.75            141      9      8      1
18 months   ki1017093c-NIH-Crypto      <=2600              634    231    129    102
18 months   ki1017093c-NIH-Crypto      (2600-2970]         634    193    145     48
18 months   ki1017093c-NIH-Crypto      (2970-3302.75]      634    144    109     35
18 months   ki1017093c-NIH-Crypto      >3302.75            634     66     60      6
18 months   ki1066203-TanzaniaChild2   <=2600              255     19     11      8
18 months   ki1066203-TanzaniaChild2   (2600-2970]         255     29     17     12
18 months   ki1066203-TanzaniaChild2   (2970-3302.75]      255    111     75     36
18 months   ki1066203-TanzaniaChild2   >3302.75            255     96     84     12
18 months   ki1101329-Keneba           <=2600             1608    296    130    166
18 months   ki1101329-Keneba           (2600-2970]        1608    510    307    203
18 months   ki1101329-Keneba           (2970-3302.75]     1608    505    385    120
18 months   ki1101329-Keneba           >3302.75           1608    297    254     43
18 months   ki1126311-ZVITAMBO         <=2600              424     95     35     60
18 months   ki1126311-ZVITAMBO         (2600-2970]         424    153     75     78
18 months   ki1126311-ZVITAMBO         (2970-3302.75]      424    115     73     42
18 months   ki1126311-ZVITAMBO         >3302.75            424     61     40     21
18 months   ki1135781-COHORTS          <=2600             2755    468     95    373
18 months   ki1135781-COHORTS          (2600-2970]        2755    746    263    483
18 months   ki1135781-COHORTS          (2970-3302.75]     2755   1001    426    575
18 months   ki1135781-COHORTS          >3302.75           2755    540    278    262
24 months   ki0047075b-MAL-ED          <=2600             1349    236    126    110
24 months   ki0047075b-MAL-ED          (2600-2970]        1349    294    177    117
24 months   ki0047075b-MAL-ED          (2970-3302.75]     1349    444    303    141
24 months   ki0047075b-MAL-ED          >3302.75           1349    375    293     82
24 months   ki1000108-CMC-V-BCS-2002   <=2600              372     90     17     73
24 months   ki1000108-CMC-V-BCS-2002   (2600-2970]         372     84     18     66
24 months   ki1000108-CMC-V-BCS-2002   (2970-3302.75]      372    133     46     87
24 months   ki1000108-CMC-V-BCS-2002   >3302.75            372     65     25     40
24 months   ki1000108-IRC              <=2600              403    102     45     57
24 months   ki1000108-IRC              (2600-2970]         403    124     71     53
24 months   ki1000108-IRC              (2970-3302.75]      403    116     67     49
24 months   ki1000108-IRC              >3302.75            403     61     54      7
24 months   ki1000109-EE               <=2600                0      0      0      0
24 months   ki1000109-EE               (2600-2970]           0      0      0      0
24 months   ki1000109-EE               (2970-3302.75]        0      0      0      0
24 months   ki1000109-EE               >3302.75              0      0      0      0
24 months   ki1017093b-PROVIDE         <=2600              149     46     24     22
24 months   ki1017093b-PROVIDE         (2600-2970]         149     58     35     23
24 months   ki1017093b-PROVIDE         (2970-3302.75]      149     35     32      3
24 months   ki1017093b-PROVIDE         >3302.75            149     10      9      1
24 months   ki1017093c-NIH-Crypto      <=2600              514    183    109     74
24 months   ki1017093c-NIH-Crypto      (2600-2970]         514    164    133     31
24 months   ki1017093c-NIH-Crypto      (2970-3302.75]      514    115     91     24
24 months   ki1017093c-NIH-Crypto      >3302.75            514     52     49      3
24 months   ki1066203-TanzaniaChild2   <=2600                2      1      1      0
24 months   ki1066203-TanzaniaChild2   (2600-2970]           2      0      0      0
24 months   ki1066203-TanzaniaChild2   (2970-3302.75]        2      0      0      0
24 months   ki1066203-TanzaniaChild2   >3302.75              2      1      1      0
24 months   ki1101329-Keneba           <=2600             1426    272    128    144
24 months   ki1101329-Keneba           (2600-2970]        1426    443    261    182
24 months   ki1101329-Keneba           (2970-3302.75]     1426    447    332    115
24 months   ki1101329-Keneba           >3302.75           1426    264    217     47
24 months   ki1126311-ZVITAMBO         <=2600              116     27     10     17
24 months   ki1126311-ZVITAMBO         (2600-2970]         116     44     16     28
24 months   ki1126311-ZVITAMBO         (2970-3302.75]      116     28     14     14
24 months   ki1126311-ZVITAMBO         >3302.75            116     17      8      9
24 months   ki1135781-COHORTS          <=2600             7575   2165    727   1438
24 months   ki1135781-COHORTS          (2600-2970]        7575   2114    984   1130
24 months   ki1135781-COHORTS          (2970-3302.75]     7575   2267   1225   1042
24 months   ki1135781-COHORTS          >3302.75           7575   1029    661    368

## Results Table

### Parameter: TSM


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          <=2600               NA                0.4406130   0.3803628   0.5008633
Birth       ki0047075b-MAL-ED          (2600-2970]          NA                0.1097561   0.0759164   0.1435958
Birth       ki0047075b-MAL-ED          (2970-3302.75]       NA                0.0582121   0.0372803   0.0791438
Birth       ki0047075b-MAL-ED          >3302.75             NA                0.0168269   0.0044628   0.0291911
Birth       ki1126311-ZVITAMBO         <=2600               NA                0.3024251   0.2684190   0.3364312
Birth       ki1126311-ZVITAMBO         (2600-2970]          NA                0.0899358   0.0715856   0.1082859
Birth       ki1126311-ZVITAMBO         (2970-3302.75]       NA                0.0453686   0.0328267   0.0579105
Birth       ki1126311-ZVITAMBO         >3302.75             NA                0.0211640   0.0109027   0.0314254
Birth       ki1135781-COHORTS          <=2600               NA                0.2782495   0.2623758   0.2941232
Birth       ki1135781-COHORTS          (2600-2970]          NA                0.0363964   0.0294283   0.0433645
Birth       ki1135781-COHORTS          (2970-3302.75]       NA                0.0104384   0.0067225   0.0141543
Birth       ki1135781-COHORTS          >3302.75             NA                0.0045662   0.0009207   0.0082117
3 months    ki0047075b-MAL-ED          <=2600               NA                0.3713235   0.3138870   0.4287600
3 months    ki0047075b-MAL-ED          (2600-2970]          NA                0.1751412   0.1355349   0.2147476
3 months    ki0047075b-MAL-ED          (2970-3302.75]       NA                0.1038462   0.0776180   0.1300743
3 months    ki0047075b-MAL-ED          >3302.75             NA                0.0405983   0.0227123   0.0584843
3 months    ki1000108-CMC-V-BCS-2002   <=2600               NA                0.4606742   0.3569747   0.5643736
3 months    ki1000108-CMC-V-BCS-2002   (2600-2970]          NA                0.2650602   0.1699761   0.3601443
3 months    ki1000108-CMC-V-BCS-2002   (2970-3302.75]       NA                0.1666667   0.1015042   0.2318291
3 months    ki1000108-CMC-V-BCS-2002   >3302.75             NA                0.0937500   0.0222397   0.1652603
3 months    ki1000109-EE               <=2600               NA                0.7528090   0.6893526   0.8162653
3 months    ki1000109-EE               (2600-2970]          NA                0.5312500   0.4312935   0.6312065
3 months    ki1000109-EE               (2970-3302.75]       NA                0.3913043   0.2759964   0.5066123
3 months    ki1000109-EE               >3302.75             NA                0.1515152   0.0290198   0.2740105
3 months    ki1101329-Keneba           <=2600               NA                0.3703704   0.3198372   0.4209035
3 months    ki1101329-Keneba           (2600-2970]          NA                0.1209386   0.0937801   0.1480972
3 months    ki1101329-Keneba           (2970-3302.75]       NA                0.0681004   0.0471924   0.0890083
3 months    ki1101329-Keneba           >3302.75             NA                0.0244648   0.0077159   0.0412138
3 months    ki1126311-ZVITAMBO         <=2600               NA                0.4555809   0.4089835   0.5021782
3 months    ki1126311-ZVITAMBO         (2600-2970]          NA                0.1788079   0.1482417   0.2093741
3 months    ki1126311-ZVITAMBO         (2970-3302.75]       NA                0.0836879   0.0632422   0.1041337
3 months    ki1126311-ZVITAMBO         >3302.75             NA                0.0428016   0.0252993   0.0603038
3 months    ki1135781-COHORTS          <=2600               NA                0.3289474   0.3120323   0.3458624
3 months    ki1135781-COHORTS          (2600-2970]          NA                0.1010737   0.0897055   0.1124418
3 months    ki1135781-COHORTS          (2970-3302.75]       NA                0.0531418   0.0448104   0.0614732
3 months    ki1135781-COHORTS          >3302.75             NA                0.0247802   0.0161654   0.0333950
6 months    ki0047075b-MAL-ED          <=2600               NA                0.3091603   0.2531821   0.3651385
6 months    ki0047075b-MAL-ED          (2600-2970]          NA                0.1722054   0.1315180   0.2128928
6 months    ki0047075b-MAL-ED          (2970-3302.75]       NA                0.1265060   0.0973008   0.1557112
6 months    ki0047075b-MAL-ED          >3302.75             NA                0.0536913   0.0327885   0.0745940
6 months    ki1000108-CMC-V-BCS-2002   <=2600               NA                0.4659091   0.3615443   0.5702739
6 months    ki1000108-CMC-V-BCS-2002   (2600-2970]          NA                0.3095238   0.2105275   0.4085201
6 months    ki1000108-CMC-V-BCS-2002   (2970-3302.75]       NA                0.2500000   0.1760308   0.3239692
6 months    ki1000108-CMC-V-BCS-2002   >3302.75             NA                0.1692308   0.0779539   0.2605076
6 months    ki1000108-IRC              <=2600               NA                0.3800000   0.2847472   0.4752528
6 months    ki1000108-IRC              (2600-2970]          NA                0.2500000   0.1736902   0.3263098
6 months    ki1000108-IRC              (2970-3302.75]       NA                0.1551724   0.0892015   0.2211433
6 months    ki1000108-IRC              >3302.75             NA                0.1311475   0.0463314   0.2159637
6 months    ki1000109-EE               <=2600               NA                0.6878613   0.6187206   0.7570020
6 months    ki1000109-EE               (2600-2970]          NA                0.5052632   0.4045893   0.6059370
6 months    ki1000109-EE               (2970-3302.75]       NA                0.2714286   0.1671134   0.3757437
6 months    ki1000109-EE               >3302.75             NA                0.2058824   0.0697864   0.3419783
6 months    ki1017093c-NIH-Crypto      <=2600               NA                0.3904382   0.3300434   0.4508331
6 months    ki1017093c-NIH-Crypto      (2600-2970]          NA                0.1435185   0.0967301   0.1903069
6 months    ki1017093c-NIH-Crypto      (2970-3302.75]       NA                0.0969697   0.0517863   0.1421531
6 months    ki1017093c-NIH-Crypto      >3302.75             NA                0.0602410   0.0090177   0.1114642
6 months    ki1066203-TanzaniaChild2   <=2600               NA                0.2380952   0.1091558   0.3670346
6 months    ki1066203-TanzaniaChild2   (2600-2970]          NA                0.1166667   0.0353565   0.1979768
6 months    ki1066203-TanzaniaChild2   (2970-3302.75]       NA                0.0824742   0.0437260   0.1212225
6 months    ki1066203-TanzaniaChild2   >3302.75             NA                0.0495050   0.0195611   0.0794488
6 months    ki1101329-Keneba           <=2600               NA                0.3060606   0.2563233   0.3557979
6 months    ki1101329-Keneba           (2600-2970]          NA                0.1577947   0.1266318   0.1889575
6 months    ki1101329-Keneba           (2970-3302.75]       NA                0.0769231   0.0542944   0.0995517
6 months    ki1101329-Keneba           >3302.75             NA                0.0527950   0.0283627   0.0772274
6 months    ki1126311-ZVITAMBO         <=2600               NA                0.3498695   0.3020936   0.3976453
6 months    ki1126311-ZVITAMBO         (2600-2970]          NA                0.1775362   0.1456512   0.2094212
6 months    ki1126311-ZVITAMBO         (2970-3302.75]       NA                0.1078582   0.0839870   0.1317295
6 months    ki1126311-ZVITAMBO         >3302.75             NA                0.0672451   0.0443777   0.0901126
6 months    ki1135781-COHORTS          <=2600               NA                0.3638305   0.3460383   0.3816228
6 months    ki1135781-COHORTS          (2600-2970]          NA                0.1806902   0.1658398   0.1955406
6 months    ki1135781-COHORTS          (2970-3302.75]       NA                0.1173413   0.1051857   0.1294968
6 months    ki1135781-COHORTS          >3302.75             NA                0.0671581   0.0531181   0.0811981
9 months    ki0047075b-MAL-ED          <=2600               NA                0.3476563   0.2893000   0.4060125
9 months    ki0047075b-MAL-ED          (2600-2970]          NA                0.2225705   0.1769077   0.2682334
9 months    ki0047075b-MAL-ED          (2970-3302.75]       NA                0.1714286   0.1380473   0.2048098
9 months    ki0047075b-MAL-ED          >3302.75             NA                0.0921986   0.0646194   0.1197778
9 months    ki1000108-CMC-V-BCS-2002   <=2600               NA                0.5393258   0.4356280   0.6430237
9 months    ki1000108-CMC-V-BCS-2002   (2600-2970]          NA                0.3170732   0.2162171   0.4179293
9 months    ki1000108-CMC-V-BCS-2002   (2970-3302.75]       NA                0.3484848   0.2670877   0.4298820
9 months    ki1000108-CMC-V-BCS-2002   >3302.75             NA                0.2380952   0.1327784   0.3434120
9 months    ki1000108-IRC              <=2600               NA                0.4600000   0.3621939   0.5578061
9 months    ki1000108-IRC              (2600-2970]          NA                0.2661290   0.1882473   0.3440107
9 months    ki1000108-IRC              (2970-3302.75]       NA                0.1637931   0.0963611   0.2312251
9 months    ki1000108-IRC              >3302.75             NA                0.1311475   0.0463314   0.2159637
9 months    ki1000109-EE               <=2600               NA                0.7485380   0.6834221   0.8136539
9 months    ki1000109-EE               (2600-2970]          NA                0.5483871   0.4471062   0.6496680
9 months    ki1000109-EE               (2970-3302.75]       NA                0.4347826   0.3176544   0.5519108
9 months    ki1000109-EE               >3302.75             NA                0.2424242   0.0960090   0.3888395
9 months    ki1017093c-NIH-Crypto      <=2600               NA                0.4041667   0.3420379   0.4662955
9 months    ki1017093c-NIH-Crypto      (2600-2970]          NA                0.1990741   0.1457857   0.2523625
9 months    ki1017093c-NIH-Crypto      (2970-3302.75]       NA                0.1144578   0.0659927   0.1629229
9 months    ki1017093c-NIH-Crypto      >3302.75             NA                0.0595238   0.0088906   0.1101570
9 months    ki1066203-TanzaniaChild2   <=2600               NA                0.2812500   0.1252889   0.4372111
9 months    ki1066203-TanzaniaChild2   (2600-2970]          NA                0.2400000   0.1214822   0.3585178
9 months    ki1066203-TanzaniaChild2   (2970-3302.75]       NA                0.1578947   0.1031774   0.2126121
9 months    ki1066203-TanzaniaChild2   >3302.75             NA                0.0742857   0.0353876   0.1131838
9 months    ki1101329-Keneba           <=2600               NA                0.3719512   0.3196300   0.4242725
9 months    ki1101329-Keneba           (2600-2970]          NA                0.2260536   0.1901613   0.2619460
9 months    ki1101329-Keneba           (2970-3302.75]       NA                0.0966543   0.0716783   0.1216302
9 months    ki1101329-Keneba           >3302.75             NA                0.0567823   0.0312989   0.0822658
9 months    ki1126311-ZVITAMBO         <=2600               NA                0.3660477   0.3174087   0.4146868
9 months    ki1126311-ZVITAMBO         (2600-2970]          NA                0.2132353   0.1788073   0.2476633
9 months    ki1126311-ZVITAMBO         (2970-3302.75]       NA                0.1378205   0.1107671   0.1648739
9 months    ki1126311-ZVITAMBO         >3302.75             NA                0.0987952   0.0700798   0.1275106
9 months    ki1135781-COHORTS          <=2600               NA                0.4400484   0.4204989   0.4595980
9 months    ki1135781-COHORTS          (2600-2970]          NA                0.2784919   0.2603053   0.2966784
9 months    ki1135781-COHORTS          (2970-3302.75]       NA                0.1830303   0.1677950   0.1982656
9 months    ki1135781-COHORTS          >3302.75             NA                0.1240106   0.1048516   0.1431695
12 months   ki0047075b-MAL-ED          <=2600               NA                0.4246032   0.3635552   0.4856511
12 months   ki0047075b-MAL-ED          (2600-2970]          NA                0.2601881   0.2120260   0.3083502
12 months   ki0047075b-MAL-ED          (2970-3302.75]       NA                0.2120582   0.1755157   0.2486007
12 months   ki0047075b-MAL-ED          >3302.75             NA                0.1490385   0.1148048   0.1832721
12 months   ki1000108-CMC-V-BCS-2002   <=2600               NA                0.6444444   0.5454150   0.7434739
12 months   ki1000108-CMC-V-BCS-2002   (2600-2970]          NA                0.5000000   0.3916318   0.6083682
12 months   ki1000108-CMC-V-BCS-2002   (2970-3302.75]       NA                0.5037594   0.4186709   0.5888479
12 months   ki1000108-CMC-V-BCS-2002   >3302.75             NA                0.2698413   0.1600844   0.3795981
12 months   ki1000108-IRC              <=2600               NA                0.4400000   0.3425881   0.5374119
12 months   ki1000108-IRC              (2600-2970]          NA                0.3495935   0.2652186   0.4339684
12 months   ki1000108-IRC              (2970-3302.75]       NA                0.1551724   0.0892013   0.2211435
12 months   ki1000108-IRC              >3302.75             NA                0.1475410   0.0584323   0.2366496
12 months   ki1000109-EE               <=2600               NA                0.8383234   0.7824083   0.8942384
12 months   ki1000109-EE               (2600-2970]          NA                0.6521739   0.5547140   0.7496338
12 months   ki1000109-EE               (2970-3302.75]       NA                0.6666667   0.5527784   0.7805549
12 months   ki1000109-EE               >3302.75             NA                0.3437500   0.1789572   0.5085428
12 months   ki1066203-TanzaniaChild2   <=2600               NA                0.1923077   0.0406025   0.3440129
12 months   ki1066203-TanzaniaChild2   (2600-2970]          NA                0.2564103   0.1191743   0.3936462
12 months   ki1066203-TanzaniaChild2   (2970-3302.75]       NA                0.1721854   0.1118820   0.2324889
12 months   ki1066203-TanzaniaChild2   >3302.75             NA                0.0735294   0.0296013   0.1174575
12 months   ki1101329-Keneba           <=2600               NA                0.4932886   0.4365072   0.5500700
12 months   ki1101329-Keneba           (2600-2970]          NA                0.2886179   0.2485668   0.3286689
12 months   ki1101329-Keneba           (2970-3302.75]       NA                0.1509804   0.1198978   0.1820630
12 months   ki1101329-Keneba           >3302.75             NA                0.1172638   0.0812631   0.1532646
12 months   ki1126311-ZVITAMBO         <=2600               NA                0.3988604   0.3476191   0.4501017
12 months   ki1126311-ZVITAMBO         (2600-2970]          NA                0.2672065   0.2281739   0.3062390
12 months   ki1126311-ZVITAMBO         (2970-3302.75]       NA                0.1663516   0.1346082   0.1980950
12 months   ki1126311-ZVITAMBO         >3302.75             NA                0.1353846   0.0981771   0.1725921
12 months   ki1135781-COHORTS          <=2600               NA                0.5453321   0.5246547   0.5660096
12 months   ki1135781-COHORTS          (2600-2970]          NA                0.3683224   0.3478560   0.3887888
12 months   ki1135781-COHORTS          (2970-3302.75]       NA                0.2751853   0.2569043   0.2934664
12 months   ki1135781-COHORTS          >3302.75             NA                0.1938776   0.1702765   0.2174786
18 months   ki0047075b-MAL-ED          <=2600               NA                0.4979592   0.4353286   0.5605898
18 months   ki0047075b-MAL-ED          (2600-2970]          NA                0.4071661   0.3521885   0.4621438
18 months   ki0047075b-MAL-ED          (2970-3302.75]       NA                0.3486842   0.3049287   0.3924397
18 months   ki0047075b-MAL-ED          >3302.75             NA                0.2366412   0.1946057   0.2786767
18 months   ki1000108-CMC-V-BCS-2002   <=2600               NA                0.8111111   0.7301345   0.8920877
18 months   ki1000108-CMC-V-BCS-2002   (2600-2970]          NA                0.7560976   0.6630238   0.8491714
18 months   ki1000108-CMC-V-BCS-2002   (2970-3302.75]       NA                0.6090226   0.5259794   0.6920658
18 months   ki1000108-CMC-V-BCS-2002   >3302.75             NA                0.5937500   0.4732614   0.7142386
18 months   ki1000108-IRC              <=2600               NA                0.5757576   0.4782805   0.6732346
18 months   ki1000108-IRC              (2600-2970]          NA                0.3739837   0.2883668   0.4596007
18 months   ki1000108-IRC              (2970-3302.75]       NA                0.2500000   0.1711022   0.3288978
18 months   ki1000108-IRC              >3302.75             NA                0.1147541   0.0346704   0.1948378
18 months   ki1000109-EE               <=2600               NA                0.9268293   0.8869161   0.9667424
18 months   ki1000109-EE               (2600-2970]          NA                0.8000000   0.7172424   0.8827576
18 months   ki1000109-EE               (2970-3302.75]       NA                0.7812500   0.6798242   0.8826758
18 months   ki1000109-EE               >3302.75             NA                0.7187500   0.5627482   0.8747518
18 months   ki1017093c-NIH-Crypto      <=2600               NA                0.4415584   0.3774718   0.5056451
18 months   ki1017093c-NIH-Crypto      (2600-2970]          NA                0.2487047   0.1876724   0.3097369
18 months   ki1017093c-NIH-Crypto      (2970-3302.75]       NA                0.2430556   0.1729432   0.3131679
18 months   ki1017093c-NIH-Crypto      >3302.75             NA                0.0909091   0.0214984   0.1603198
18 months   ki1066203-TanzaniaChild2   <=2600               NA                0.4210526   0.1986130   0.6434923
18 months   ki1066203-TanzaniaChild2   (2600-2970]          NA                0.4137931   0.2341877   0.5933985
18 months   ki1066203-TanzaniaChild2   (2970-3302.75]       NA                0.3243243   0.2370676   0.4115810
18 months   ki1066203-TanzaniaChild2   >3302.75             NA                0.1250000   0.0587136   0.1912864
18 months   ki1101329-Keneba           <=2600               NA                0.5608108   0.5042558   0.6173659
18 months   ki1101329-Keneba           (2600-2970]          NA                0.3980392   0.3555435   0.4405349
18 months   ki1101329-Keneba           (2970-3302.75]       NA                0.2376238   0.2004902   0.2747574
18 months   ki1101329-Keneba           >3302.75             NA                0.1447811   0.1047499   0.1848124
18 months   ki1126311-ZVITAMBO         <=2600               NA                0.6315789   0.5344642   0.7286937
18 months   ki1126311-ZVITAMBO         (2600-2970]          NA                0.5098039   0.4304987   0.5891091
18 months   ki1126311-ZVITAMBO         (2970-3302.75]       NA                0.3652174   0.2771125   0.4533223
18 months   ki1126311-ZVITAMBO         >3302.75             NA                0.3442623   0.2248894   0.4636352
18 months   ki1135781-COHORTS          <=2600               NA                0.7970085   0.7605605   0.8334566
18 months   ki1135781-COHORTS          (2600-2970]          NA                0.6474531   0.6131629   0.6817433
18 months   ki1135781-COHORTS          (2970-3302.75]       NA                0.5744256   0.5437908   0.6050603
18 months   ki1135781-COHORTS          >3302.75             NA                0.4851852   0.4430243   0.5273460
24 months   ki0047075b-MAL-ED          <=2600               NA                0.4661017   0.4024335   0.5297699
24 months   ki0047075b-MAL-ED          (2600-2970]          NA                0.3979592   0.3419876   0.4539308
24 months   ki0047075b-MAL-ED          (2970-3302.75]       NA                0.3175676   0.2742499   0.3608853
24 months   ki0047075b-MAL-ED          >3302.75             NA                0.2186667   0.1768159   0.2605174
24 months   ki1000108-CMC-V-BCS-2002   <=2600               NA                0.8111111   0.7301354   0.8920868
24 months   ki1000108-CMC-V-BCS-2002   (2600-2970]          NA                0.7857143   0.6978481   0.8735805
24 months   ki1000108-CMC-V-BCS-2002   (2970-3302.75]       NA                0.6541353   0.5731897   0.7350810
24 months   ki1000108-CMC-V-BCS-2002   >3302.75             NA                0.6153846   0.4969544   0.7338148
24 months   ki1000108-IRC              <=2600               NA                0.5588235   0.4623449   0.6553021
24 months   ki1000108-IRC              (2600-2970]          NA                0.4274194   0.3402383   0.5146004
24 months   ki1000108-IRC              (2970-3302.75]       NA                0.4224138   0.3324151   0.5124125
24 months   ki1000108-IRC              >3302.75             NA                0.1147541   0.0346714   0.1948368
24 months   ki1101329-Keneba           <=2600               NA                0.5294118   0.4700737   0.5887498
24 months   ki1101329-Keneba           (2600-2970]          NA                0.4108352   0.3650051   0.4566653
24 months   ki1101329-Keneba           (2970-3302.75]       NA                0.2572707   0.2167332   0.2978082
24 months   ki1101329-Keneba           >3302.75             NA                0.1780303   0.1318695   0.2241911
24 months   ki1126311-ZVITAMBO         <=2600               NA                0.6296296   0.4466903   0.8125689
24 months   ki1126311-ZVITAMBO         (2600-2970]          NA                0.6363636   0.4936097   0.7791176
24 months   ki1126311-ZVITAMBO         (2970-3302.75]       NA                0.5000000   0.3139973   0.6860027
24 months   ki1126311-ZVITAMBO         >3302.75             NA                0.5294118   0.2911134   0.7677101
24 months   ki1135781-COHORTS          <=2600               NA                0.6642032   0.6443086   0.6840979
24 months   ki1135781-COHORTS          (2600-2970]          NA                0.5345317   0.5132672   0.5557962
24 months   ki1135781-COHORTS          (2970-3302.75]       NA                0.4596383   0.4391219   0.4801547
24 months   ki1135781-COHORTS          >3302.75             NA                0.3576288   0.3283415   0.3869160


### Parameter: E(Y)


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          NA                   NA                0.1251682   0.1175788   0.1327577
Birth       ki1126311-ZVITAMBO         NA                   NA                0.1043781   0.1009392   0.1078169
Birth       ki1135781-COHORTS          NA                   NA                0.0986534   0.0963111   0.1009956
3 months    ki0047075b-MAL-ED          NA                   NA                0.1462206   0.1407565   0.1516846
3 months    ki1000108-CMC-V-BCS-2002   NA                   NA                0.2486188   0.2348965   0.2623411
3 months    ki1000109-EE               NA                   NA                0.5771277   0.5575585   0.5966969
3 months    ki1101329-Keneba           NA                   NA                0.1357542   0.1301645   0.1413439
3 months    ki1126311-ZVITAMBO         NA                   NA                0.1719717   0.1658797   0.1780637
3 months    ki1135781-COHORTS          NA                   NA                0.1470982   0.1446482   0.1495483
6 months    ki0047075b-MAL-ED          NA                   NA                0.1462939   0.1420277   0.1505601
6 months    ki1000108-CMC-V-BCS-2002   NA                   NA                0.3008130   0.2903482   0.3112779
6 months    ki1000108-IRC              NA                   NA                0.2369077   0.2277183   0.2460972
6 months    ki1000109-EE               NA                   NA                0.5188172   0.5001087   0.5375257
6 months    ki1017093c-NIH-Crypto      NA                   NA                0.2097902   0.1998632   0.2197172
6 months    ki1066203-TanzaniaChild2   NA                   NA                0.0863454   0.0818545   0.0908362
6 months    ki1101329-Keneba           NA                   NA                0.1414378   0.1371761   0.1456994
6 months    ki1126311-ZVITAMBO         NA                   NA                0.1628362   0.1585822   0.1670902
6 months    ki1135781-COHORTS          NA                   NA                0.2027521   0.2004804   0.2050238
9 months    ki0047075b-MAL-ED          NA                   NA                0.1901882   0.1858347   0.1945416
9 months    ki1000108-CMC-V-BCS-2002   NA                   NA                0.3688525   0.3582108   0.3794941
9 months    ki1000108-IRC              NA                   NA                0.2643392   0.2522687   0.2764096
9 months    ki1000109-EE               NA                   NA                0.5928962   0.5758499   0.6099424
9 months    ki1017093c-NIH-Crypto      NA                   NA                0.2322946   0.2226148   0.2419744
9 months    ki1066203-TanzaniaChild2   NA                   NA                0.1425234   0.1361274   0.1489193
9 months    ki1101329-Keneba           NA                   NA                0.1818182   0.1764571   0.1871792
9 months    ki1126311-ZVITAMBO         NA                   NA                0.1943878   0.1902526   0.1985229
9 months    ki1135781-COHORTS          NA                   NA                0.2770984   0.2746103   0.2795866
12 months   ki0047075b-MAL-ED          NA                   NA                0.2411444   0.2364161   0.2458727
12 months   ki1000108-CMC-V-BCS-2002   NA                   NA                0.4972826   0.4851043   0.5094609
12 months   ki1000108-IRC              NA                   NA                0.2850000   0.2729592   0.2970408
12 months   ki1000109-EE               NA                   NA                0.7142857   0.6992621   0.7293093
12 months   ki1066203-TanzaniaChild2   NA                   NA                0.1448864   0.1384111   0.1513616
12 months   ki1101329-Keneba           NA                   NA                0.2501556   0.2436103   0.2567008
12 months   ki1126311-ZVITAMBO         NA                   NA                0.2377869   0.2332232   0.2423507
12 months   ki1135781-COHORTS          NA                   NA                0.3673865   0.3645811   0.3701919
18 months   ki0047075b-MAL-ED          NA                   NA                0.3561742   0.3514564   0.3608919
18 months   ki1000108-CMC-V-BCS-2002   NA                   NA                0.6883469   0.6789184   0.6977753
18 months   ki1000108-IRC              NA                   NA                0.3483709   0.3330914   0.3636504
18 months   ki1000109-EE               NA                   NA                0.8485714   0.8405498   0.8565931
18 months   ki1017093c-NIH-Crypto      NA                   NA                0.3012618   0.2922480   0.3102756
18 months   ki1066203-TanzaniaChild2   NA                   NA                0.2666667   0.2525159   0.2808174
18 months   ki1101329-Keneba           NA                   NA                0.3308458   0.3238813   0.3378102
18 months   ki1126311-ZVITAMBO         NA                   NA                0.4740566   0.4637675   0.4843457
18 months   ki1135781-COHORTS          NA                   NA                0.6145191   0.6108192   0.6182189
24 months   ki0047075b-MAL-ED          NA                   NA                0.3335804   0.3288867   0.3382741
24 months   ki1000108-CMC-V-BCS-2002   NA                   NA                0.7150538   0.7068991   0.7232085
24 months   ki1000108-IRC              NA                   NA                0.4119107   0.3984595   0.4253619
24 months   ki1101329-Keneba           NA                   NA                0.3422160   0.3357729   0.3486590
24 months   ki1126311-ZVITAMBO         NA                   NA                0.5862069   0.5751503   0.5972635
24 months   ki1135781-COHORTS          NA                   NA                0.5251485   0.5228247   0.5274724


### Parameter: RR


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          (2600-2970]          <=2600            0.2490986   0.1777839   0.3490198
Birth       ki0047075b-MAL-ED          (2970-3302.75]       <=2600            0.1321161   0.0899255   0.1941014
Birth       ki0047075b-MAL-ED          >3302.75             <=2600            0.0381898   0.0180865   0.0806379
Birth       ki1126311-ZVITAMBO         (2600-2970]          <=2600            0.2973819   0.2355794   0.3753978
Birth       ki1126311-ZVITAMBO         (2970-3302.75]       <=2600            0.1500161   0.1113083   0.2021845
Birth       ki1126311-ZVITAMBO         >3302.75             <=2600            0.0699810   0.0425427   0.1151161
Birth       ki1135781-COHORTS          (2600-2970]          <=2600            0.1308049   0.1071186   0.1597287
Birth       ki1135781-COHORTS          (2970-3302.75]       <=2600            0.0375146   0.0261593   0.0537991
Birth       ki1135781-COHORTS          >3302.75             <=2600            0.0164105   0.0073708   0.0365368
3 months    ki0047075b-MAL-ED          (2600-2970]          <=2600            0.4716675   0.3586310   0.6203318
3 months    ki0047075b-MAL-ED          (2970-3302.75]       <=2600            0.2796649   0.2079760   0.3760648
3 months    ki0047075b-MAL-ED          >3302.75             <=2600            0.1093340   0.0685444   0.1743969
3 months    ki1000108-CMC-V-BCS-2002   (2600-2970]          <=2600            0.5753747   0.3767255   0.8787726
3 months    ki1000108-CMC-V-BCS-2002   (2970-3302.75]       <=2600            0.3617886   0.2304224   0.5680481
3 months    ki1000108-CMC-V-BCS-2002   >3302.75             <=2600            0.2035061   0.0918721   0.4507867
3 months    ki1000109-EE               (2600-2970]          <=2600            0.7056903   0.5742153   0.8672685
3 months    ki1000109-EE               (2970-3302.75]       <=2600            0.5197923   0.3825787   0.7062183
3 months    ki1000109-EE               >3302.75             <=2600            0.2012664   0.0892800   0.4537203
3 months    ki1101329-Keneba           (2600-2970]          <=2600            0.3265343   0.2510798   0.4246644
3 months    ki1101329-Keneba           (2970-3302.75]       <=2600            0.1838710   0.1314025   0.2572898
3 months    ki1101329-Keneba           >3302.75             <=2600            0.0660550   0.0328651   0.1327631
3 months    ki1126311-ZVITAMBO         (2600-2970]          <=2600            0.3924834   0.3215932   0.4790003
3 months    ki1126311-ZVITAMBO         (2970-3302.75]       <=2600            0.1836950   0.1409523   0.2393992
3 months    ki1126311-ZVITAMBO         >3302.75             <=2600            0.0939494   0.0616358   0.1432040
3 months    ki1135781-COHORTS          (2600-2970]          <=2600            0.3072640   0.2715201   0.3477133
3 months    ki1135781-COHORTS          (2970-3302.75]       <=2600            0.1615512   0.1369790   0.1905313
3 months    ki1135781-COHORTS          >3302.75             <=2600            0.0753317   0.0530094   0.1070539
6 months    ki0047075b-MAL-ED          (2600-2970]          <=2600            0.5570102   0.4136045   0.7501377
6 months    ki0047075b-MAL-ED          (2970-3302.75]       <=2600            0.4091923   0.3051457   0.5487160
6 months    ki0047075b-MAL-ED          >3302.75             <=2600            0.1736681   0.1130450   0.2668018
6 months    ki1000108-CMC-V-BCS-2002   (2600-2970]          <=2600            0.6643438   0.4495847   0.9816897
6 months    ki1000108-CMC-V-BCS-2002   (2970-3302.75]       <=2600            0.5365854   0.3702279   0.7776935
6 months    ki1000108-CMC-V-BCS-2002   >3302.75             <=2600            0.3632270   0.2025525   0.6513564
6 months    ki1000108-IRC              (2600-2970]          <=2600            0.6578947   0.4432223   0.9765426
6 months    ki1000108-IRC              (2970-3302.75]       <=2600            0.4083485   0.2492809   0.6689179
6 months    ki1000108-IRC              >3302.75             <=2600            0.3451251   0.1724841   0.6905642
6 months    ki1000109-EE               (2600-2970]          <=2600            0.7345422   0.5876193   0.9182005
6 months    ki1000109-EE               (2970-3302.75]       <=2600            0.3945978   0.2652363   0.5870519
6 months    ki1000109-EE               >3302.75             <=2600            0.2993080   0.1533675   0.5841213
6 months    ki1017093c-NIH-Crypto      (2600-2970]          <=2600            0.3675831   0.2562373   0.5273134
6 months    ki1017093c-NIH-Crypto      (2970-3302.75]       <=2600            0.2483612   0.1520068   0.4057929
6 months    ki1017093c-NIH-Crypto      >3302.75             <=2600            0.1542906   0.0650123   0.3661706
6 months    ki1066203-TanzaniaChild2   (2600-2970]          <=2600            0.4900000   0.2027136   1.1844295
6 months    ki1066203-TanzaniaChild2   (2970-3302.75]       <=2600            0.3463918   0.1691235   0.7094652
6 months    ki1066203-TanzaniaChild2   >3302.75             <=2600            0.2079208   0.0923223   0.4682622
6 months    ki1101329-Keneba           (2600-2970]          <=2600            0.5155668   0.3992192   0.6658224
6 months    ki1101329-Keneba           (2970-3302.75]       <=2600            0.2513328   0.1795948   0.3517262
6 months    ki1101329-Keneba           >3302.75             <=2600            0.1724986   0.1056263   0.2817079
6 months    ki1126311-ZVITAMBO         (2600-2970]          <=2600            0.5074356   0.4049466   0.6358639
6 months    ki1126311-ZVITAMBO         (2970-3302.75]       <=2600            0.3082814   0.2376873   0.3998422
6 months    ki1126311-ZVITAMBO         >3302.75             <=2600            0.1922006   0.1332312   0.2772705
6 months    ki1135781-COHORTS          (2600-2970]          <=2600            0.4966328   0.4513375   0.5464739
6 months    ki1135781-COHORTS          (2970-3302.75]       <=2600            0.3225162   0.2876082   0.3616611
6 months    ki1135781-COHORTS          >3302.75             <=2600            0.1845861   0.1489207   0.2287932
9 months    ki0047075b-MAL-ED          (2600-2970]          <=2600            0.6402029   0.4911287   0.8345261
9 months    ki0047075b-MAL-ED          (2970-3302.75]       <=2600            0.4930979   0.3813135   0.6376526
9 months    ki0047075b-MAL-ED          >3302.75             <=2600            0.2652004   0.1881952   0.3737145
9 months    ki1000108-CMC-V-BCS-2002   (2600-2970]          <=2600            0.5879065   0.4054052   0.8525645
9 months    ki1000108-CMC-V-BCS-2002   (2970-3302.75]       <=2600            0.6461490   0.4774681   0.8744217
9 months    ki1000108-CMC-V-BCS-2002   >3302.75             <=2600            0.4414683   0.2725423   0.7150972
9 months    ki1000108-IRC              (2600-2970]          <=2600            0.5785414   0.4029361   0.8306778
9 months    ki1000108-IRC              (2970-3302.75]       <=2600            0.3560720   0.2240298   0.5659392
9 months    ki1000108-IRC              >3302.75             <=2600            0.2851033   0.1443259   0.5631972
9 months    ki1000109-EE               (2600-2970]          <=2600            0.7326109   0.5973269   0.8985343
9 months    ki1000109-EE               (2970-3302.75]       <=2600            0.5808424   0.4376360   0.7709097
9 months    ki1000109-EE               >3302.75             <=2600            0.3238636   0.1759372   0.5961653
9 months    ki1017093c-NIH-Crypto      (2600-2970]          <=2600            0.4925544   0.3617398   0.6706751
9 months    ki1017093c-NIH-Crypto      (2970-3302.75]       <=2600            0.2831946   0.1804877   0.4443471
9 months    ki1017093c-NIH-Crypto      >3302.75             <=2600            0.1472754   0.0620468   0.3495758
9 months    ki1066203-TanzaniaChild2   (2600-2970]          <=2600            0.8533333   0.4061049   1.7930780
9 months    ki1066203-TanzaniaChild2   (2970-3302.75]       <=2600            0.5614035   0.2919356   1.0796007
9 months    ki1066203-TanzaniaChild2   >3302.75             <=2600            0.2641270   0.1231921   0.5662947
9 months    ki1101329-Keneba           (2600-2970]          <=2600            0.6077508   0.4915868   0.7513648
9 months    ki1101329-Keneba           (2970-3302.75]       <=2600            0.2598574   0.1936247   0.3487462
9 months    ki1101329-Keneba           >3302.75             <=2600            0.1526607   0.0953827   0.2443346
9 months    ki1126311-ZVITAMBO         (2600-2970]          <=2600            0.5825341   0.4726169   0.7180150
9 months    ki1126311-ZVITAMBO         (2970-3302.75]       <=2600            0.3765097   0.2970511   0.4772227
9 months    ki1126311-ZVITAMBO         >3302.75             <=2600            0.2698970   0.1960661   0.3715297
9 months    ki1135781-COHORTS          (2600-2970]          <=2600            0.6328664   0.5848040   0.6848787
9 months    ki1135781-COHORTS          (2970-3302.75]       <=2600            0.4159322   0.3784824   0.4570875
9 months    ki1135781-COHORTS          >3302.75             <=2600            0.2818111   0.2399623   0.3309583
12 months   ki0047075b-MAL-ED          (2600-2970]          <=2600            0.6127794   0.4847445   0.7746321
12 months   ki0047075b-MAL-ED          (2970-3302.75]       <=2600            0.4994268   0.3990295   0.6250844
12 months   ki0047075b-MAL-ED          >3302.75             <=2600            0.3510065   0.2676876   0.4602587
12 months   ki1000108-CMC-V-BCS-2002   (2600-2970]          <=2600            0.7758621   0.5948389   1.0119747
12 months   ki1000108-CMC-V-BCS-2002   (2970-3302.75]       <=2600            0.7816956   0.6221102   0.9822184
12 months   ki1000108-CMC-V-BCS-2002   >3302.75             <=2600            0.4187192   0.2710750   0.6467797
12 months   ki1000108-IRC              (2600-2970]          <=2600            0.7945307   0.5726297   1.1024210
12 months   ki1000108-IRC              (2970-3302.75]       <=2600            0.3526646   0.2183677   0.5695545
12 months   ki1000108-IRC              >3302.75             <=2600            0.3353204   0.1762369   0.6380035
12 months   ki1000109-EE               (2600-2970]          <=2600            0.7779503   0.6605117   0.9162694
12 months   ki1000109-EE               (2970-3302.75]       <=2600            0.7952381   0.6619898   0.9553072
12 months   ki1000109-EE               >3302.75             <=2600            0.4100446   0.2527122   0.6653285
12 months   ki1066203-TanzaniaChild2   (2600-2970]          <=2600            1.3333333   0.5139582   3.4589927
12 months   ki1066203-TanzaniaChild2   (2970-3302.75]       <=2600            0.8953642   0.3777057   2.1224915
12 months   ki1066203-TanzaniaChild2   >3302.75             <=2600            0.3823529   0.1421362   1.0285467
12 months   ki1101329-Keneba           (2600-2970]          <=2600            0.5850893   0.4885633   0.7006861
12 months   ki1101329-Keneba           (2970-3302.75]       <=2600            0.3060691   0.2417597   0.3874851
12 months   ki1101329-Keneba           >3302.75             <=2600            0.2377185   0.1712649   0.3299574
12 months   ki1126311-ZVITAMBO         (2600-2970]          <=2600            0.6699248   0.5514954   0.8137860
12 months   ki1126311-ZVITAMBO         (2970-3302.75]       <=2600            0.4170672   0.3313617   0.5249403
12 months   ki1126311-ZVITAMBO         >3302.75             <=2600            0.3394286   0.2506083   0.4597284
12 months   ki1135781-COHORTS          (2600-2970]          <=2600            0.6754093   0.6314686   0.7224076
12 months   ki1135781-COHORTS          (2970-3302.75]       <=2600            0.5046197   0.4674602   0.5447332
12 months   ki1135781-COHORTS          >3302.75             <=2600            0.3555220   0.3129636   0.4038677
18 months   ki0047075b-MAL-ED          (2600-2970]          <=2600            0.8176697   0.6798888   0.9833721
18 months   ki0047075b-MAL-ED          (2970-3302.75]       <=2600            0.7002265   0.5862432   0.8363716
18 months   ki0047075b-MAL-ED          >3302.75             <=2600            0.4752221   0.3822706   0.5907754
18 months   ki1000108-CMC-V-BCS-2002   (2600-2970]          <=2600            0.9321751   0.7955456   1.0922698
18 months   ki1000108-CMC-V-BCS-2002   (2970-3302.75]       <=2600            0.7508497   0.6341021   0.8890924
18 months   ki1000108-CMC-V-BCS-2002   >3302.75             <=2600            0.7320205   0.5838548   0.9177866
18 months   ki1000108-IRC              (2600-2970]          <=2600            0.6495507   0.4886016   0.8635177
18 months   ki1000108-IRC              (2970-3302.75]       <=2600            0.4342105   0.3035038   0.6212073
18 months   ki1000108-IRC              >3302.75             <=2600            0.1993097   0.0971975   0.4086974
18 months   ki1000109-EE               (2600-2970]          <=2600            0.8631579   0.7716607   0.9655041
18 months   ki1000109-EE               (2970-3302.75]       <=2600            0.8429276   0.7351687   0.9664815
18 months   ki1000109-EE               >3302.75             <=2600            0.7754934   0.6215539   0.9675590
18 months   ki1017093c-NIH-Crypto      (2600-2970]          <=2600            0.5632429   0.4235211   0.7490596
18 months   ki1017093c-NIH-Crypto      (2970-3302.75]       <=2600            0.5504493   0.3985441   0.7602534
18 months   ki1017093c-NIH-Crypto      >3302.75             <=2600            0.2058824   0.0946433   0.4478662
18 months   ki1066203-TanzaniaChild2   (2600-2970]          <=2600            0.9827586   0.4960270   1.9471007
18 months   ki1066203-TanzaniaChild2   (2970-3302.75]       <=2600            0.7702703   0.4257642   1.3935327
18 months   ki1066203-TanzaniaChild2   >3302.75             <=2600            0.2968750   0.1404395   0.6275640
18 months   ki1101329-Keneba           (2600-2970]          <=2600            0.7097567   0.6128142   0.8220348
18 months   ki1101329-Keneba           (2970-3302.75]       <=2600            0.4237147   0.3518045   0.5103235
18 months   ki1101329-Keneba           >3302.75             <=2600            0.2581640   0.1923436   0.3465082
18 months   ki1126311-ZVITAMBO         (2600-2970]          <=2600            0.8071895   0.6486082   1.0045431
18 months   ki1126311-ZVITAMBO         (2970-3302.75]       <=2600            0.5782609   0.4343922   0.7697782
18 months   ki1126311-ZVITAMBO         >3302.75             <=2600            0.5450820   0.3730163   0.7965184
18 months   ki1135781-COHORTS          (2600-2970]          <=2600            0.8123540   0.7574540   0.8712331
18 months   ki1135781-COHORTS          (2970-3302.75]       <=2600            0.7207270   0.6718311   0.7731815
18 months   ki1135781-COHORTS          >3302.75             <=2600            0.6087578   0.5518218   0.6715684
24 months   ki0047075b-MAL-ED          (2600-2970]          <=2600            0.8538033   0.7017933   1.0387390
24 months   ki0047075b-MAL-ED          (2970-3302.75]       <=2600            0.6813268   0.5617183   0.8264039
24 months   ki0047075b-MAL-ED          >3302.75             <=2600            0.4691394   0.3708373   0.5934995
24 months   ki1000108-CMC-V-BCS-2002   (2600-2970]          <=2600            0.9686888   0.8338346   1.1253528
24 months   ki1000108-CMC-V-BCS-2002   (2970-3302.75]       <=2600            0.8064682   0.6879180   0.9454484
24 months   ki1000108-CMC-V-BCS-2002   >3302.75             <=2600            0.7586934   0.6108157   0.9423720
24 months   ki1000108-IRC              (2600-2970]          <=2600            0.7648557   0.5854960   0.9991601
24 months   ki1000108-IRC              (2970-3302.75]       <=2600            0.7558984   0.5746034   0.9943942
24 months   ki1000108-IRC              >3302.75             <=2600            0.2053494   0.1000641   0.4214138
24 months   ki1101329-Keneba           (2600-2970]          <=2600            0.7760221   0.6625166   0.9089738
24 months   ki1101329-Keneba           (2970-3302.75]       <=2600            0.4859558   0.4005154   0.5896227
24 months   ki1101329-Keneba           >3302.75             <=2600            0.3362795   0.2535264   0.4460438
24 months   ki1126311-ZVITAMBO         (2600-2970]          <=2600            1.0106952   0.7001683   1.4589418
24 months   ki1126311-ZVITAMBO         (2970-3302.75]       <=2600            0.7941176   0.4953213   1.2731592
24 months   ki1126311-ZVITAMBO         >3302.75             <=2600            0.8408304   0.4920799   1.4367500
24 months   ki1135781-COHORTS          (2600-2970]          <=2600            0.8047713   0.7656776   0.8458611
24 months   ki1135781-COHORTS          (2970-3302.75]       <=2600            0.6920145   0.6557978   0.7302313
24 months   ki1135781-COHORTS          >3302.75             <=2600            0.5384327   0.4934709   0.5874912


### Parameter: PAR


agecat      studyid                    intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          <=2600               NA                -0.3154448   -0.3761712   -0.2547184
Birth       ki1126311-ZVITAMBO         <=2600               NA                -0.1980470   -0.2322265   -0.1638675
Birth       ki1135781-COHORTS          <=2600               NA                -0.1795961   -0.1956417   -0.1635506
3 months    ki0047075b-MAL-ED          <=2600               NA                -0.2251030   -0.2827988   -0.1674071
3 months    ki1000108-CMC-V-BCS-2002   <=2600               NA                -0.2120554   -0.3166588   -0.1074520
3 months    ki1000109-EE               <=2600               NA                -0.1756813   -0.2420866   -0.1092760
3 months    ki1101329-Keneba           <=2600               NA                -0.2346162   -0.2854576   -0.1837748
3 months    ki1126311-ZVITAMBO         <=2600               NA                -0.2836092   -0.3306030   -0.2366153
3 months    ki1135781-COHORTS          <=2600               NA                -0.1818491   -0.1989407   -0.1647576
6 months    ki0047075b-MAL-ED          <=2600               NA                -0.1628664   -0.2190070   -0.1067259
6 months    ki1000108-CMC-V-BCS-2002   <=2600               NA                -0.1650961   -0.2699843   -0.0602079
6 months    ki1000108-IRC              <=2600               NA                -0.1430923   -0.2387874   -0.0473972
6 months    ki1000109-EE               <=2600               NA                -0.1690441   -0.2406712   -0.0974169
6 months    ki1017093c-NIH-Crypto      <=2600               NA                -0.1806480   -0.2418533   -0.1194427
6 months    ki1066203-TanzaniaChild2   <=2600               NA                -0.1517499   -0.2807674   -0.0227323
6 months    ki1101329-Keneba           <=2600               NA                -0.1646229   -0.2145424   -0.1147033
6 months    ki1126311-ZVITAMBO         <=2600               NA                -0.1870333   -0.2349981   -0.1390684
6 months    ki1135781-COHORTS          <=2600               NA                -0.1610784   -0.1790152   -0.1431417
9 months    ki0047075b-MAL-ED          <=2600               NA                -0.1574681   -0.2159865   -0.0989497
9 months    ki1000108-CMC-V-BCS-2002   <=2600               NA                -0.1704734   -0.2747158   -0.0662309
9 months    ki1000108-IRC              <=2600               NA                -0.1956608   -0.2942090   -0.0971127
9 months    ki1000109-EE               <=2600               NA                -0.1556418   -0.2229520   -0.0883317
9 months    ki1017093c-NIH-Crypto      <=2600               NA                -0.1718720   -0.2347504   -0.1089937
9 months    ki1066203-TanzaniaChild2   <=2600               NA                -0.1387266   -0.2948188    0.0173655
9 months    ki1101329-Keneba           <=2600               NA                -0.1901330   -0.2427282   -0.1375378
9 months    ki1126311-ZVITAMBO         <=2600               NA                -0.1716600   -0.2204745   -0.1228454
9 months    ki1135781-COHORTS          <=2600               NA                -0.1629500   -0.1826573   -0.1432428
12 months   ki0047075b-MAL-ED          <=2600               NA                -0.1834588   -0.2446896   -0.1222280
12 months   ki1000108-CMC-V-BCS-2002   <=2600               NA                -0.1471618   -0.2469373   -0.0473864
12 months   ki1000108-IRC              <=2600               NA                -0.1550000   -0.2531532   -0.0568468
12 months   ki1000109-EE               <=2600               NA                -0.1240376   -0.1819358   -0.0661395
12 months   ki1066203-TanzaniaChild2   <=2600               NA                -0.0474213   -0.1992647    0.1044220
12 months   ki1101329-Keneba           <=2600               NA                -0.2431330   -0.3002904   -0.1859756
12 months   ki1126311-ZVITAMBO         <=2600               NA                -0.1610735   -0.2125176   -0.1096293
12 months   ki1135781-COHORTS          <=2600               NA                -0.1779456   -0.1988125   -0.1570788
18 months   ki0047075b-MAL-ED          <=2600               NA                -0.1417850   -0.2045930   -0.0789770
18 months   ki1000108-CMC-V-BCS-2002   <=2600               NA                -0.1227642   -0.2042879   -0.0412406
18 months   ki1000108-IRC              <=2600               NA                -0.2273866   -0.3260539   -0.1287194
18 months   ki1000109-EE               <=2600               NA                -0.0782578   -0.1189691   -0.0375466
18 months   ki1017093c-NIH-Crypto      <=2600               NA                -0.1402966   -0.2050141   -0.0755791
18 months   ki1066203-TanzaniaChild2   <=2600               NA                -0.1543860   -0.3772753    0.0685034
18 months   ki1101329-Keneba           <=2600               NA                -0.2299650   -0.2869473   -0.1729828
18 months   ki1126311-ZVITAMBO         <=2600               NA                -0.1575223   -0.2551806   -0.0598641
18 months   ki1135781-COHORTS          <=2600               NA                -0.1824895   -0.2191248   -0.1458541
24 months   ki0047075b-MAL-ED          <=2600               NA                -0.1325213   -0.1963623   -0.0686803
24 months   ki1000108-CMC-V-BCS-2002   <=2600               NA                -0.0960573   -0.1774426   -0.0146721
24 months   ki1000108-IRC              <=2600               NA                -0.1469129   -0.2443246   -0.0495011
24 months   ki1101329-Keneba           <=2600               NA                -0.1871958   -0.2468826   -0.1275089
24 months   ki1126311-ZVITAMBO         <=2600               NA                -0.0434227   -0.2266958    0.1398504
24 months   ki1135781-COHORTS          <=2600               NA                -0.1390547   -0.1590846   -0.1190248


### Parameter: PAF


agecat      studyid                    intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          <=2600               NA                -2.5201664   -3.0881417   -2.0311014
Birth       ki1126311-ZVITAMBO         <=2600               NA                -1.8974005   -2.2575837   -1.5770420
Birth       ki1135781-COHORTS          <=2600               NA                -1.8204765   -2.0002560   -1.6514697
3 months    ki0047075b-MAL-ED          <=2600               NA                -1.5394753   -1.9775113   -1.1658809
3 months    ki1000108-CMC-V-BCS-2002   <=2600               NA                -0.8529338   -1.3362375   -0.4696125
3 months    ki1000109-EE               <=2600               NA                -0.3044064   -0.4284718   -0.1911163
3 months    ki1101329-Keneba           <=2600               NA                -1.7282426   -2.1461356   -1.3658573
3 months    ki1126311-ZVITAMBO         <=2600               NA                -1.6491617   -1.9520068   -1.3773854
3 months    ki1135781-COHORTS          <=2600               NA                -1.2362428   -1.3604423   -1.1185782
6 months    ki0047075b-MAL-ED          <=2600               NA                -1.1132824   -1.5386721   -0.7591727
6 months    ki1000108-CMC-V-BCS-2002   <=2600               NA                -0.5488329   -0.9429153   -0.2346824
6 months    ki1000108-IRC              <=2600               NA                -0.6040000   -1.0671055   -0.2446467
6 months    ki1000109-EE               <=2600               NA                -0.3258259   -0.4752442   -0.1915412
6 months    ki1017093c-NIH-Crypto      <=2600               NA                -0.8610890   -1.1878566   -0.5831258
6 months    ki1066203-TanzaniaChild2   <=2600               NA                -1.7574751   -3.7509884   -0.6004393
6 months    ki1101329-Keneba           <=2600               NA                -1.1639244   -1.5528266   -0.8342682
6 months    ki1126311-ZVITAMBO         <=2600               NA                -1.1485977   -1.4690790   -0.8697142
6 months    ki1135781-COHORTS          <=2600               NA                -0.7944601   -0.8867844   -0.7066534
9 months    ki0047075b-MAL-ED          <=2600               NA                -0.8279593   -1.1654105   -0.5430956
9 months    ki1000108-CMC-V-BCS-2002   <=2600               NA                -0.4621723   -0.7759736   -0.2038173
9 months    ki1000108-IRC              <=2600               NA                -0.7401887   -1.1629296   -0.4000718
9 months    ki1000109-EE               <=2600               NA                -0.2625111   -0.3836453   -0.1519819
9 months    ki1017093c-NIH-Crypto      <=2600               NA                -0.7398882   -1.0402849   -0.4837197
9 months    ki1066203-TanzaniaChild2   <=2600               NA                -0.9733607   -2.4420913   -0.1313332
9 months    ki1101329-Keneba           <=2600               NA                -1.0457317   -1.3619313   -0.7718628
9 months    ki1126311-ZVITAMBO         <=2600               NA                -0.8830803   -1.1543246   -0.6459875
9 months    ki1135781-COHORTS          <=2600               NA                -0.5880583   -0.6616919   -0.5176876
12 months   ki0047075b-MAL-ED          <=2600               NA                -0.7607838   -1.0357543   -0.5229537
12 months   ki1000108-CMC-V-BCS-2002   <=2600               NA                -0.2959320   -0.5141219   -0.1091840
12 months   ki1000108-IRC              <=2600               NA                -0.5438596   -0.9341566   -0.2323214
12 months   ki1000109-EE               <=2600               NA                -0.1736527   -0.2586720   -0.0943762
12 months   ki1066203-TanzaniaChild2   <=2600               NA                -0.3273002   -1.9249546    0.3976913
12 months   ki1101329-Keneba           <=2600               NA                -0.9719273   -1.2189974   -0.7523667
12 months   ki1126311-ZVITAMBO         <=2600               NA                -0.6773857   -0.9100541   -0.4730592
12 months   ki1135781-COHORTS          <=2600               NA                -0.4843553   -0.5428925   -0.4280390
18 months   ki0047075b-MAL-ED          <=2600               NA                -0.3980778   -0.5865604   -0.2319869
18 months   ki1000108-CMC-V-BCS-2002   <=2600               NA                -0.1783465   -0.3032766   -0.0653919
18 months   ki1000108-IRC              <=2600               NA                -0.6527142   -0.9685753   -0.3875335
18 months   ki1000109-EE               <=2600               NA                -0.0922230   -0.1414560   -0.0451136
18 months   ki1017093c-NIH-Crypto      <=2600               NA                -0.4656966   -0.6998161   -0.2638229
18 months   ki1066203-TanzaniaChild2   <=2600               NA                -0.5789474   -1.6850815    0.0715087
18 months   ki1101329-Keneba           <=2600               NA                -0.6950823   -0.8790194   -0.5291508
18 months   ki1126311-ZVITAMBO         <=2600               NA                -0.3322859   -0.5561043   -0.1406599
18 months   ki1135781-COHORTS          <=2600               NA                -0.2969631   -0.3581876   -0.2384985
24 months   ki0047075b-MAL-ED          <=2600               NA                -0.3972693   -0.6029407   -0.2179873
24 months   ki1000108-CMC-V-BCS-2002   <=2600               NA                -0.1343358   -0.2542398   -0.0258946
24 months   ki1000108-IRC              <=2600               NA                -0.3566619   -0.6172616   -0.1380543
24 months   ki1101329-Keneba           <=2600               NA                -0.5470106   -0.7332144   -0.3808112
24 months   ki1126311-ZVITAMBO         <=2600               NA                -0.0740741   -0.4370913    0.1972430
24 months   ki1135781-COHORTS          <=2600               NA                -0.2647912   -0.3036719   -0.2270701


