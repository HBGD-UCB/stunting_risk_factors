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

* agecat: Birth, studyid: ki0047075b-MAL-ED
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002
* agecat: Birth, studyid: ki1000108-IRC
* agecat: Birth, studyid: ki1000109-EE
* agecat: Birth, studyid: ki1017093c-NIH-Crypto
* agecat: Birth, studyid: ki1101329-Keneba
* agecat: Birth, studyid: ki1135781-COHORTS
* agecat: 3 months, studyid: ki0047075b-MAL-ED
* agecat: 3 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 3 months, studyid: ki1000108-IRC
* agecat: 3 months, studyid: ki1000109-EE
* agecat: 3 months, studyid: ki1017093b-PROVIDE
* agecat: 3 months, studyid: ki1017093c-NIH-Crypto
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2
* agecat: 3 months, studyid: ki1101329-Keneba
* agecat: 3 months, studyid: ki1135781-COHORTS
* agecat: 6 months, studyid: ki0047075b-MAL-ED
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 6 months, studyid: ki1000108-IRC
* agecat: 6 months, studyid: ki1000109-EE
* agecat: 6 months, studyid: ki1017093b-PROVIDE
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2
* agecat: 9 months, studyid: ki0047075b-MAL-ED
* agecat: 9 months, studyid: ki1000108-IRC
* agecat: 9 months, studyid: ki1000109-EE
* agecat: 9 months, studyid: ki1017093b-PROVIDE
* agecat: 9 months, studyid: ki1017093c-NIH-Crypto
* agecat: 9 months, studyid: ki1066203-TanzaniaChild2
* agecat: 12 months, studyid: ki1000108-IRC
* agecat: 12 months, studyid: ki1000109-EE
* agecat: 12 months, studyid: ki1017093b-PROVIDE
* agecat: 12 months, studyid: ki1017093c-NIH-Crypto
* agecat: 12 months, studyid: ki1066203-TanzaniaChild2
* agecat: 18 months, studyid: ki1000108-IRC
* agecat: 18 months, studyid: ki1017093b-PROVIDE
* agecat: 18 months, studyid: ki1017093c-NIH-Crypto
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
![](/tmp/74938b5e-8547-404f-9b61-262227f8c8a0/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/74938b5e-8547-404f-9b61-262227f8c8a0/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/74938b5e-8547-404f-9b61-262227f8c8a0/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/74938b5e-8547-404f-9b61-262227f8c8a0/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Data Summary

agecat      studyid                    A                     n     nA   nAY0   nAY1
----------  -------------------------  ---------------  ------  -----  -----  -----
Birth       ki0047075b-MAL-ED          <=2600             1486    261    237     24
Birth       ki0047075b-MAL-ED          (2600-2970]        1486    328    320      8
Birth       ki0047075b-MAL-ED          (2970-3302.75]     1486    481    480      1
Birth       ki0047075b-MAL-ED          >3302.75           1486    416    414      2
Birth       ki1000108-CMC-V-BCS-2002   <=2600               90     28     27      1
Birth       ki1000108-CMC-V-BCS-2002   (2600-2970]          90     23     22      1
Birth       ki1000108-CMC-V-BCS-2002   (2970-3302.75]       90     28     27      1
Birth       ki1000108-CMC-V-BCS-2002   >3302.75             90     11     11      0
Birth       ki1000108-IRC              <=2600              383     98     90      8
Birth       ki1000108-IRC              (2600-2970]         383    114    111      3
Birth       ki1000108-IRC              (2970-3302.75]      383    113    108      5
Birth       ki1000108-IRC              >3302.75            383     58     58      0
Birth       ki1000109-EE               <=2600                2      1      1      0
Birth       ki1000109-EE               (2600-2970]           2      1      1      0
Birth       ki1000109-EE               (2970-3302.75]        2      0      0      0
Birth       ki1000109-EE               >3302.75              2      0      0      0
Birth       ki1017093b-PROVIDE         <=2600                0      0      0      0
Birth       ki1017093b-PROVIDE         (2600-2970]           0      0      0      0
Birth       ki1017093b-PROVIDE         (2970-3302.75]        0      0      0      0
Birth       ki1017093b-PROVIDE         >3302.75              0      0      0      0
Birth       ki1017093c-NIH-Crypto      <=2600               27     10      9      1
Birth       ki1017093c-NIH-Crypto      (2600-2970]          27      9      9      0
Birth       ki1017093c-NIH-Crypto      (2970-3302.75]       27      8      8      0
Birth       ki1017093c-NIH-Crypto      >3302.75             27      0      0      0
Birth       ki1066203-TanzaniaChild2   <=2600                0      0      0      0
Birth       ki1066203-TanzaniaChild2   (2600-2970]           0      0      0      0
Birth       ki1066203-TanzaniaChild2   (2970-3302.75]        0      0      0      0
Birth       ki1066203-TanzaniaChild2   >3302.75              0      0      0      0
Birth       ki1101329-Keneba           <=2600             1527    293    281     12
Birth       ki1101329-Keneba           (2600-2970]        1527    491    477     14
Birth       ki1101329-Keneba           (2970-3302.75]     1527    488    486      2
Birth       ki1101329-Keneba           >3302.75           1527    255    254      1
Birth       ki1126311-ZVITAMBO         <=2600             3449    701    619     82
Birth       ki1126311-ZVITAMBO         (2600-2970]        3449    934    919     15
Birth       ki1126311-ZVITAMBO         (2970-3302.75]     3449   1058   1048     10
Birth       ki1126311-ZVITAMBO         >3302.75           3449    756    751      5
Birth       ki1135781-COHORTS          <=2600            10025   3062   2824    238
Birth       ki1135781-COHORTS          (2600-2970]       10025   2775   2766      9
Birth       ki1135781-COHORTS          (2970-3302.75]    10025   2874   2869      5
Birth       ki1135781-COHORTS          >3302.75          10025   1314   1312      2
3 months    ki0047075b-MAL-ED          <=2600             1614    272    239     33
3 months    ki0047075b-MAL-ED          (2600-2970]        1614    354    343     11
3 months    ki0047075b-MAL-ED          (2970-3302.75]     1614    520    514      6
3 months    ki0047075b-MAL-ED          >3302.75           1614    468    467      1
3 months    ki1000108-CMC-V-BCS-2002   <=2600              362     89     69     20
3 months    ki1000108-CMC-V-BCS-2002   (2600-2970]         362     83     77      6
3 months    ki1000108-CMC-V-BCS-2002   (2970-3302.75]      362    126    120      6
3 months    ki1000108-CMC-V-BCS-2002   >3302.75            362     64     63      1
3 months    ki1000108-IRC              <=2600              401    103     79     24
3 months    ki1000108-IRC              (2600-2970]         401    123    118      5
3 months    ki1000108-IRC              (2970-3302.75]      401    115    111      4
3 months    ki1000108-IRC              >3302.75            401     60     59      1
3 months    ki1000109-EE               <=2600              376    178     85     93
3 months    ki1000109-EE               (2600-2970]         376     96     75     21
3 months    ki1000109-EE               (2970-3302.75]      376     69     62      7
3 months    ki1000109-EE               >3302.75            376     33     32      1
3 months    ki1017093b-PROVIDE         <=2600              168     53     48      5
3 months    ki1017093b-PROVIDE         (2600-2970]         168     63     63      0
3 months    ki1017093b-PROVIDE         (2970-3302.75]      168     42     42      0
3 months    ki1017093b-PROVIDE         >3302.75            168     10     10      0
3 months    ki1017093c-NIH-Crypto      <=2600              728    254    227     27
3 months    ki1017093c-NIH-Crypto      (2600-2970]         728    221    216      5
3 months    ki1017093c-NIH-Crypto      (2970-3302.75]      728    168    167      1
3 months    ki1017093c-NIH-Crypto      >3302.75            728     85     85      0
3 months    ki1066203-TanzaniaChild2   <=2600              569     49     46      3
3 months    ki1066203-TanzaniaChild2   (2600-2970]         569     70     67      3
3 months    ki1066203-TanzaniaChild2   (2970-3302.75]      569    220    217      3
3 months    ki1066203-TanzaniaChild2   >3302.75            569    230    229      1
3 months    ki1101329-Keneba           <=2600             1790    351    316     35
3 months    ki1101329-Keneba           (2600-2970]        1790    554    545      9
3 months    ki1101329-Keneba           (2970-3302.75]     1790    558    550      8
3 months    ki1101329-Keneba           >3302.75           1790    327    327      0
3 months    ki1126311-ZVITAMBO         <=2600             2262    439    373     66
3 months    ki1126311-ZVITAMBO         (2600-2970]        2262    604    576     28
3 months    ki1126311-ZVITAMBO         (2970-3302.75]     2262    705    690     15
3 months    ki1126311-ZVITAMBO         >3302.75           2262    514    509      5
3 months    ki1135781-COHORTS          <=2600             9701   2964   2683    281
3 months    ki1135781-COHORTS          (2600-2970]        9701   2701   2666     35
3 months    ki1135781-COHORTS          (2970-3302.75]     9701   2785   2765     20
3 months    ki1135781-COHORTS          >3302.75           9701   1251   1248      3
6 months    ki0047075b-MAL-ED          <=2600             1538    262    241     21
6 months    ki0047075b-MAL-ED          (2600-2970]        1538    331    325      6
6 months    ki0047075b-MAL-ED          (2970-3302.75]     1538    498    490      8
6 months    ki0047075b-MAL-ED          >3302.75           1538    447    447      0
6 months    ki1000108-CMC-V-BCS-2002   <=2600              369     88     71     17
6 months    ki1000108-CMC-V-BCS-2002   (2600-2970]         369     84     74     10
6 months    ki1000108-CMC-V-BCS-2002   (2970-3302.75]      369    132    120     12
6 months    ki1000108-CMC-V-BCS-2002   >3302.75            369     65     62      3
6 months    ki1000108-IRC              <=2600              401    100     84     16
6 months    ki1000108-IRC              (2600-2970]         401    124    117      7
6 months    ki1000108-IRC              (2970-3302.75]      401    116    114      2
6 months    ki1000108-IRC              >3302.75            401     61     59      2
6 months    ki1000109-EE               <=2600              372    173    110     63
6 months    ki1000109-EE               (2600-2970]         372     95     72     23
6 months    ki1000109-EE               (2970-3302.75]      372     70     65      5
6 months    ki1000109-EE               >3302.75            372     34     31      3
6 months    ki1017093b-PROVIDE         <=2600              153     49     44      5
6 months    ki1017093b-PROVIDE         (2600-2970]         153     56     55      1
6 months    ki1017093b-PROVIDE         (2970-3302.75]      153     38     38      0
6 months    ki1017093b-PROVIDE         >3302.75            153     10     10      0
6 months    ki1017093c-NIH-Crypto      <=2600              715    251    232     19
6 months    ki1017093c-NIH-Crypto      (2600-2970]         715    216    214      2
6 months    ki1017093c-NIH-Crypto      (2970-3302.75]      715    165    163      2
6 months    ki1017093c-NIH-Crypto      >3302.75            715     83     83      0
6 months    ki1066203-TanzaniaChild2   <=2600              498     42     40      2
6 months    ki1066203-TanzaniaChild2   (2600-2970]         498     60     59      1
6 months    ki1066203-TanzaniaChild2   (2970-3302.75]      498    194    192      2
6 months    ki1066203-TanzaniaChild2   >3302.75            498    202    201      1
6 months    ki1101329-Keneba           <=2600             1711    330    300     30
6 months    ki1101329-Keneba           (2600-2970]        1711    526    513     13
6 months    ki1101329-Keneba           (2970-3302.75]     1711    533    525      8
6 months    ki1101329-Keneba           >3302.75           1711    322    317      5
6 months    ki1126311-ZVITAMBO         <=2600             2045    383    346     37
6 months    ki1126311-ZVITAMBO         (2600-2970]        2045    552    536     16
6 months    ki1126311-ZVITAMBO         (2970-3302.75]     2045    649    638     11
6 months    ki1126311-ZVITAMBO         >3302.75           2045    461    454      7
6 months    ki1135781-COHORTS          <=2600             9302   2809   2510    299
6 months    ki1135781-COHORTS          (2600-2970]        9302   2579   2502     77
6 months    ki1135781-COHORTS          (2970-3302.75]     9302   2693   2630     63
6 months    ki1135781-COHORTS          >3302.75           9302   1221   1204     17
9 months    ki0047075b-MAL-ED          <=2600             1488    256    227     29
9 months    ki0047075b-MAL-ED          (2600-2970]        1488    319    312      7
9 months    ki0047075b-MAL-ED          (2970-3302.75]     1488    490    478     12
9 months    ki0047075b-MAL-ED          >3302.75           1488    423    419      4
9 months    ki1000108-CMC-V-BCS-2002   <=2600              366     89     68     21
9 months    ki1000108-CMC-V-BCS-2002   (2600-2970]         366     82     73      9
9 months    ki1000108-CMC-V-BCS-2002   (2970-3302.75]      366    132    120     12
9 months    ki1000108-CMC-V-BCS-2002   >3302.75            366     63     58      5
9 months    ki1000108-IRC              <=2600              401    100     84     16
9 months    ki1000108-IRC              (2600-2970]         401    124    113     11
9 months    ki1000108-IRC              (2970-3302.75]      401    116    113      3
9 months    ki1000108-IRC              >3302.75            401     61     59      2
9 months    ki1000109-EE               <=2600              366    171    107     64
9 months    ki1000109-EE               (2600-2970]         366     93     72     21
9 months    ki1000109-EE               (2970-3302.75]      366     69     62      7
9 months    ki1000109-EE               >3302.75            366     33     30      3
9 months    ki1017093b-PROVIDE         <=2600              158     49     45      4
9 months    ki1017093b-PROVIDE         (2600-2970]         158     60     56      4
9 months    ki1017093b-PROVIDE         (2970-3302.75]      158     39     38      1
9 months    ki1017093b-PROVIDE         >3302.75            158     10     10      0
9 months    ki1017093c-NIH-Crypto      <=2600              706    240    217     23
9 months    ki1017093c-NIH-Crypto      (2600-2970]         706    216    214      2
9 months    ki1017093c-NIH-Crypto      (2970-3302.75]      706    166    163      3
9 months    ki1017093c-NIH-Crypto      >3302.75            706     84     84      0
9 months    ki1066203-TanzaniaChild2   <=2600              428     32     32      0
9 months    ki1066203-TanzaniaChild2   (2600-2970]         428     50     49      1
9 months    ki1066203-TanzaniaChild2   (2970-3302.75]      428    171    168      3
9 months    ki1066203-TanzaniaChild2   >3302.75            428    175    173      2
9 months    ki1101329-Keneba           <=2600             1705    328    284     44
9 months    ki1101329-Keneba           (2600-2970]        1705    522    498     24
9 months    ki1101329-Keneba           (2970-3302.75]     1705    538    525     13
9 months    ki1101329-Keneba           >3302.75           1705    317    312      5
9 months    ki1126311-ZVITAMBO         <=2600             1960    377    346     31
9 months    ki1126311-ZVITAMBO         (2600-2970]        1960    544    513     31
9 months    ki1126311-ZVITAMBO         (2970-3302.75]     1960    624    613     11
9 months    ki1126311-ZVITAMBO         >3302.75           1960    415    401     14
9 months    ki1135781-COHORTS          <=2600             8423   2477   2091    386
9 months    ki1135781-COHORTS          (2600-2970]        8423   2334   2173    161
9 months    ki1135781-COHORTS          (2970-3302.75]     8423   2475   2372    103
9 months    ki1135781-COHORTS          >3302.75           8423   1137   1111     26
12 months   ki0047075b-MAL-ED          <=2600             1468    252    216     36
12 months   ki0047075b-MAL-ED          (2600-2970]        1468    319    309     10
12 months   ki0047075b-MAL-ED          (2970-3302.75]     1468    481    461     20
12 months   ki0047075b-MAL-ED          >3302.75           1468    416    408      8
12 months   ki1000108-CMC-V-BCS-2002   <=2600              368     90     61     29
12 months   ki1000108-CMC-V-BCS-2002   (2600-2970]         368     82     64     18
12 months   ki1000108-CMC-V-BCS-2002   (2970-3302.75]      368    133    105     28
12 months   ki1000108-CMC-V-BCS-2002   >3302.75            368     63     55      8
12 months   ki1000108-IRC              <=2600              400    100     84     16
12 months   ki1000108-IRC              (2600-2970]         400    123    113     10
12 months   ki1000108-IRC              (2970-3302.75]      400    116    112      4
12 months   ki1000108-IRC              >3302.75            400     61     59      2
12 months   ki1000109-EE               <=2600              357    167     90     77
12 months   ki1000109-EE               (2600-2970]         357     92     63     29
12 months   ki1000109-EE               (2970-3302.75]      357     66     55     11
12 months   ki1000109-EE               >3302.75            357     32     29      3
12 months   ki1017093b-PROVIDE         <=2600              153     46     39      7
12 months   ki1017093b-PROVIDE         (2600-2970]         153     59     54      5
12 months   ki1017093b-PROVIDE         (2970-3302.75]      153     38     37      1
12 months   ki1017093b-PROVIDE         >3302.75            153     10     10      0
12 months   ki1017093c-NIH-Crypto      <=2600              706    246    214     32
12 months   ki1017093c-NIH-Crypto      (2600-2970]         706    216    210      6
12 months   ki1017093c-NIH-Crypto      (2970-3302.75]      706    165    162      3
12 months   ki1017093c-NIH-Crypto      >3302.75            706     79     79      0
12 months   ki1066203-TanzaniaChild2   <=2600              352     26     24      2
12 months   ki1066203-TanzaniaChild2   (2600-2970]         352     39     37      2
12 months   ki1066203-TanzaniaChild2   (2970-3302.75]      352    151    149      2
12 months   ki1066203-TanzaniaChild2   >3302.75            352    136    136      0
12 months   ki1101329-Keneba           <=2600             1607    298    244     54
12 months   ki1101329-Keneba           (2600-2970]        1607    492    459     33
12 months   ki1101329-Keneba           (2970-3302.75]     1607    510    495     15
12 months   ki1101329-Keneba           >3302.75           1607    307    300      7
12 months   ki1126311-ZVITAMBO         <=2600             1699    351    302     49
12 months   ki1126311-ZVITAMBO         (2600-2970]        1699    494    461     33
12 months   ki1126311-ZVITAMBO         (2970-3302.75]     1699    529    512     17
12 months   ki1126311-ZVITAMBO         >3302.75           1699    325    319      6
12 months   ki1135781-COHORTS          <=2600             7733   2228   1732    496
12 months   ki1135781-COHORTS          (2600-2970]        7733   2134   1876    258
12 months   ki1135781-COHORTS          (2970-3302.75]     7733   2293   2115    178
12 months   ki1135781-COHORTS          >3302.75           7733   1078   1033     45
18 months   ki0047075b-MAL-ED          <=2600             1401    245    194     51
18 months   ki0047075b-MAL-ED          (2600-2970]        1401    307    281     26
18 months   ki0047075b-MAL-ED          (2970-3302.75]     1401    456    418     38
18 months   ki0047075b-MAL-ED          >3302.75           1401    393    370     23
18 months   ki1000108-CMC-V-BCS-2002   <=2600              369     90     48     42
18 months   ki1000108-CMC-V-BCS-2002   (2600-2970]         369     82     56     26
18 months   ki1000108-CMC-V-BCS-2002   (2970-3302.75]      369    133    104     29
18 months   ki1000108-CMC-V-BCS-2002   >3302.75            369     64     52     12
18 months   ki1000108-IRC              <=2600              399     99     83     16
18 months   ki1000108-IRC              (2600-2970]         399    123    112     11
18 months   ki1000108-IRC              (2970-3302.75]      399    116    112      4
18 months   ki1000108-IRC              >3302.75            399     61     61      0
18 months   ki1000109-EE               <=2600              350    164     63    101
18 months   ki1000109-EE               (2600-2970]         350     90     50     40
18 months   ki1000109-EE               (2970-3302.75]      350     64     40     24
18 months   ki1000109-EE               >3302.75            350     32     26      6
18 months   ki1017093b-PROVIDE         <=2600              141     44     30     14
18 months   ki1017093b-PROVIDE         (2600-2970]         141     54     49      5
18 months   ki1017093b-PROVIDE         (2970-3302.75]      141     34     33      1
18 months   ki1017093b-PROVIDE         >3302.75            141      9      9      0
18 months   ki1017093c-NIH-Crypto      <=2600              634    231    199     32
18 months   ki1017093c-NIH-Crypto      (2600-2970]         634    193    186      7
18 months   ki1017093c-NIH-Crypto      (2970-3302.75]      634    144    141      3
18 months   ki1017093c-NIH-Crypto      >3302.75            634     66     66      0
18 months   ki1066203-TanzaniaChild2   <=2600              255     19     18      1
18 months   ki1066203-TanzaniaChild2   (2600-2970]         255     29     25      4
18 months   ki1066203-TanzaniaChild2   (2970-3302.75]      255    111    103      8
18 months   ki1066203-TanzaniaChild2   >3302.75            255     96     94      2
18 months   ki1101329-Keneba           <=2600             1608    296    231     65
18 months   ki1101329-Keneba           (2600-2970]        1608    510    458     52
18 months   ki1101329-Keneba           (2970-3302.75]     1608    505    481     24
18 months   ki1101329-Keneba           >3302.75           1608    297    288      9
18 months   ki1126311-ZVITAMBO         <=2600              424     95     69     26
18 months   ki1126311-ZVITAMBO         (2600-2970]         424    153    128     25
18 months   ki1126311-ZVITAMBO         (2970-3302.75]      424    115    104     11
18 months   ki1126311-ZVITAMBO         >3302.75            424     61     56      5
18 months   ki1135781-COHORTS          <=2600             2755    468    246    222
18 months   ki1135781-COHORTS          (2600-2970]        2755    746    543    203
18 months   ki1135781-COHORTS          (2970-3302.75]     2755   1001    758    243
18 months   ki1135781-COHORTS          >3302.75           2755    540    441     99
24 months   ki0047075b-MAL-ED          <=2600             1349    236    190     46
24 months   ki0047075b-MAL-ED          (2600-2970]        1349    294    272     22
24 months   ki0047075b-MAL-ED          (2970-3302.75]     1349    444    408     36
24 months   ki0047075b-MAL-ED          >3302.75           1349    375    353     22
24 months   ki1000108-CMC-V-BCS-2002   <=2600              372     90     42     48
24 months   ki1000108-CMC-V-BCS-2002   (2600-2970]         372     84     56     28
24 months   ki1000108-CMC-V-BCS-2002   (2970-3302.75]      372    133     97     36
24 months   ki1000108-CMC-V-BCS-2002   >3302.75            372     65     54     11
24 months   ki1000108-IRC              <=2600              403    102     79     23
24 months   ki1000108-IRC              (2600-2970]         403    124    116      8
24 months   ki1000108-IRC              (2970-3302.75]      403    116    110      6
24 months   ki1000108-IRC              >3302.75            403     61     61      0
24 months   ki1000109-EE               <=2600                0      0      0      0
24 months   ki1000109-EE               (2600-2970]           0      0      0      0
24 months   ki1000109-EE               (2970-3302.75]        0      0      0      0
24 months   ki1000109-EE               >3302.75              0      0      0      0
24 months   ki1017093b-PROVIDE         <=2600              149     46     36     10
24 months   ki1017093b-PROVIDE         (2600-2970]         149     58     51      7
24 months   ki1017093b-PROVIDE         (2970-3302.75]      149     35     34      1
24 months   ki1017093b-PROVIDE         >3302.75            149     10     10      0
24 months   ki1017093c-NIH-Crypto      <=2600              514    183    157     26
24 months   ki1017093c-NIH-Crypto      (2600-2970]         514    164    158      6
24 months   ki1017093c-NIH-Crypto      (2970-3302.75]      514    115    112      3
24 months   ki1017093c-NIH-Crypto      >3302.75            514     52     52      0
24 months   ki1066203-TanzaniaChild2   <=2600                2      1      1      0
24 months   ki1066203-TanzaniaChild2   (2600-2970]           2      0      0      0
24 months   ki1066203-TanzaniaChild2   (2970-3302.75]        2      0      0      0
24 months   ki1066203-TanzaniaChild2   >3302.75              2      1      1      0
24 months   ki1101329-Keneba           <=2600             1426    272    220     52
24 months   ki1101329-Keneba           (2600-2970]        1426    443    400     43
24 months   ki1101329-Keneba           (2970-3302.75]     1426    447    432     15
24 months   ki1101329-Keneba           >3302.75           1426    264    255      9
24 months   ki1126311-ZVITAMBO         <=2600              116     27     18      9
24 months   ki1126311-ZVITAMBO         (2600-2970]         116     44     37      7
24 months   ki1126311-ZVITAMBO         (2970-3302.75]      116     28     26      2
24 months   ki1126311-ZVITAMBO         >3302.75            116     17     13      4
24 months   ki1135781-COHORTS          <=2600             7575   2165   1440    725
24 months   ki1135781-COHORTS          (2600-2970]        7575   2114   1655    459
24 months   ki1135781-COHORTS          (2970-3302.75]     7575   2267   1873    394
24 months   ki1135781-COHORTS          >3302.75           7575   1029    899    130

## Results Table

### Parameter: TSM


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO         <=2600               NA                0.1169757   0.0931807   0.1407708
Birth       ki1126311-ZVITAMBO         (2600-2970]          NA                0.0160600   0.0079970   0.0241229
Birth       ki1126311-ZVITAMBO         (2970-3302.75]       NA                0.0094518   0.0036205   0.0152831
Birth       ki1126311-ZVITAMBO         >3302.75             NA                0.0066138   0.0008350   0.0123925
3 months    ki1126311-ZVITAMBO         <=2600               NA                0.1503417   0.1169011   0.1837823
3 months    ki1126311-ZVITAMBO         (2600-2970]          NA                0.0463576   0.0295858   0.0631294
3 months    ki1126311-ZVITAMBO         (2970-3302.75]       NA                0.0212766   0.0106222   0.0319310
3 months    ki1126311-ZVITAMBO         >3302.75             NA                0.0097276   0.0012408   0.0182144
6 months    ki1101329-Keneba           <=2600               NA                0.0909091   0.0598831   0.1219351
6 months    ki1101329-Keneba           (2600-2970]          NA                0.0247148   0.0114431   0.0379865
6 months    ki1101329-Keneba           (2970-3302.75]       NA                0.0150094   0.0046839   0.0253348
6 months    ki1101329-Keneba           >3302.75             NA                0.0155280   0.0020195   0.0290364
6 months    ki1126311-ZVITAMBO         <=2600               NA                0.0966057   0.0670123   0.1261992
6 months    ki1126311-ZVITAMBO         (2600-2970]          NA                0.0289855   0.0149868   0.0429842
6 months    ki1126311-ZVITAMBO         (2970-3302.75]       NA                0.0169492   0.0070158   0.0268825
6 months    ki1126311-ZVITAMBO         >3302.75             NA                0.0151844   0.0040188   0.0263499
6 months    ki1135781-COHORTS          <=2600               NA                0.1064436   0.0950380   0.1178491
6 months    ki1135781-COHORTS          (2600-2970]          NA                0.0298565   0.0232878   0.0364253
6 months    ki1135781-COHORTS          (2970-3302.75]       NA                0.0233940   0.0176849   0.0291031
6 months    ki1135781-COHORTS          >3302.75             NA                0.0139230   0.0073504   0.0204956
9 months    ki1000108-CMC-V-BCS-2002   <=2600               NA                0.2359551   0.1476224   0.3242877
9 months    ki1000108-CMC-V-BCS-2002   (2600-2970]          NA                0.1097561   0.0420069   0.1775053
9 months    ki1000108-CMC-V-BCS-2002   (2970-3302.75]       NA                0.0909091   0.0417999   0.1400183
9 months    ki1000108-CMC-V-BCS-2002   >3302.75             NA                0.0793651   0.0125260   0.1462041
9 months    ki1101329-Keneba           <=2600               NA                0.1341463   0.0972528   0.1710399
9 months    ki1101329-Keneba           (2600-2970]          NA                0.0459770   0.0280053   0.0639487
9 months    ki1101329-Keneba           (2970-3302.75]       NA                0.0241636   0.0111842   0.0371429
9 months    ki1101329-Keneba           >3302.75             NA                0.0157729   0.0020530   0.0294927
9 months    ki1126311-ZVITAMBO         <=2600               NA                0.0822281   0.0544907   0.1099655
9 months    ki1126311-ZVITAMBO         (2600-2970]          NA                0.0569853   0.0375003   0.0764703
9 months    ki1126311-ZVITAMBO         (2970-3302.75]       NA                0.0176282   0.0073004   0.0279560
9 months    ki1126311-ZVITAMBO         >3302.75             NA                0.0337349   0.0163600   0.0511099
9 months    ki1135781-COHORTS          <=2600               NA                0.1558337   0.1415495   0.1701179
9 months    ki1135781-COHORTS          (2600-2970]          NA                0.0689803   0.0586986   0.0792620
9 months    ki1135781-COHORTS          (2970-3302.75]       NA                0.0416162   0.0337478   0.0494846
9 months    ki1135781-COHORTS          >3302.75             NA                0.0228672   0.0141781   0.0315563
12 months   ki0047075b-MAL-ED          <=2600               NA                0.1428571   0.0996383   0.1860760
12 months   ki0047075b-MAL-ED          (2600-2970]          NA                0.0313480   0.0122191   0.0504768
12 months   ki0047075b-MAL-ED          (2970-3302.75]       NA                0.0415800   0.0237339   0.0594262
12 months   ki0047075b-MAL-ED          >3302.75             NA                0.0192308   0.0060290   0.0324325
12 months   ki1000108-CMC-V-BCS-2002   <=2600               NA                0.3222222   0.2255417   0.4189028
12 months   ki1000108-CMC-V-BCS-2002   (2600-2970]          NA                0.2195122   0.1298015   0.3092229
12 months   ki1000108-CMC-V-BCS-2002   (2970-3302.75]       NA                0.2105263   0.1411462   0.2799065
12 months   ki1000108-CMC-V-BCS-2002   >3302.75             NA                0.1269841   0.0446548   0.2093134
12 months   ki1101329-Keneba           <=2600               NA                0.1812081   0.1374608   0.2249553
12 months   ki1101329-Keneba           (2600-2970]          NA                0.0670732   0.0449627   0.0891837
12 months   ki1101329-Keneba           (2970-3302.75]       NA                0.0294118   0.0147436   0.0440799
12 months   ki1101329-Keneba           >3302.75             NA                0.0228013   0.0060987   0.0395040
12 months   ki1126311-ZVITAMBO         <=2600               NA                0.1396011   0.1033337   0.1758686
12 months   ki1126311-ZVITAMBO         (2600-2970]          NA                0.0668016   0.0447778   0.0888255
12 months   ki1126311-ZVITAMBO         (2970-3302.75]       NA                0.0321361   0.0171029   0.0471693
12 months   ki1126311-ZVITAMBO         >3302.75             NA                0.0184615   0.0038222   0.0331009
12 months   ki1135781-COHORTS          <=2600               NA                0.2226212   0.2053462   0.2398962
12 months   ki1135781-COHORTS          (2600-2970]          NA                0.1208997   0.1070669   0.1347325
12 months   ki1135781-COHORTS          (2970-3302.75]       NA                0.0776276   0.0666745   0.0885806
12 months   ki1135781-COHORTS          >3302.75             NA                0.0417440   0.0298040   0.0536840
18 months   ki0047075b-MAL-ED          <=2600               NA                0.2081633   0.1573075   0.2590190
18 months   ki0047075b-MAL-ED          (2600-2970]          NA                0.0846906   0.0535350   0.1158461
18 months   ki0047075b-MAL-ED          (2970-3302.75]       NA                0.0833333   0.0579566   0.1087101
18 months   ki0047075b-MAL-ED          >3302.75             NA                0.0585242   0.0353086   0.0817397
18 months   ki1000108-CMC-V-BCS-2002   <=2600               NA                0.4666667   0.3634574   0.5698760
18 months   ki1000108-CMC-V-BCS-2002   (2600-2970]          NA                0.3170732   0.2162182   0.4179281
18 months   ki1000108-CMC-V-BCS-2002   (2970-3302.75]       NA                0.2180451   0.1477742   0.2883160
18 months   ki1000108-CMC-V-BCS-2002   >3302.75             NA                0.1875000   0.0917454   0.2832546
18 months   ki1000109-EE               <=2600               NA                0.6158537   0.5413059   0.6904014
18 months   ki1000109-EE               (2600-2970]          NA                0.4444444   0.3416379   0.5472510
18 months   ki1000109-EE               (2970-3302.75]       NA                0.3750000   0.2562223   0.4937777
18 months   ki1000109-EE               >3302.75             NA                0.1875000   0.0520725   0.3229275
18 months   ki1101329-Keneba           <=2600               NA                0.2195946   0.1724200   0.2667692
18 months   ki1101329-Keneba           (2600-2970]          NA                0.1019608   0.0756906   0.1282309
18 months   ki1101329-Keneba           (2970-3302.75]       NA                0.0475248   0.0289628   0.0660867
18 months   ki1101329-Keneba           >3302.75             NA                0.0303030   0.0108016   0.0498044
18 months   ki1126311-ZVITAMBO         <=2600               NA                0.2736842   0.1839234   0.3634450
18 months   ki1126311-ZVITAMBO         (2600-2970]          NA                0.1633987   0.1047446   0.2220528
18 months   ki1126311-ZVITAMBO         (2970-3302.75]       NA                0.0956522   0.0418342   0.1494701
18 months   ki1126311-ZVITAMBO         >3302.75             NA                0.0819672   0.0130472   0.1508872
18 months   ki1135781-COHORTS          <=2600               NA                0.4743590   0.4291107   0.5196073
18 months   ki1135781-COHORTS          (2600-2970]          NA                0.2721180   0.2401756   0.3040603
18 months   ki1135781-COHORTS          (2970-3302.75]       NA                0.2427572   0.2161920   0.2693225
18 months   ki1135781-COHORTS          >3302.75             NA                0.1833333   0.1506916   0.2159751
24 months   ki0047075b-MAL-ED          <=2600               NA                0.1949153   0.1443564   0.2454741
24 months   ki0047075b-MAL-ED          (2600-2970]          NA                0.0748299   0.0447426   0.1049173
24 months   ki0047075b-MAL-ED          (2970-3302.75]       NA                0.0810811   0.0556821   0.1064800
24 months   ki0047075b-MAL-ED          >3302.75             NA                0.0586667   0.0348730   0.0824603
24 months   ki1000108-CMC-V-BCS-2002   <=2600               NA                0.5333333   0.4301252   0.6365415
24 months   ki1000108-CMC-V-BCS-2002   (2600-2970]          NA                0.3333333   0.2323879   0.4342788
24 months   ki1000108-CMC-V-BCS-2002   (2970-3302.75]       NA                0.2706767   0.1950644   0.3462890
24 months   ki1000108-CMC-V-BCS-2002   >3302.75             NA                0.1692308   0.0779549   0.2605066
24 months   ki1101329-Keneba           <=2600               NA                0.1911765   0.1444288   0.2379242
24 months   ki1101329-Keneba           (2600-2970]          NA                0.0970655   0.0694877   0.1246432
24 months   ki1101329-Keneba           (2970-3302.75]       NA                0.0335570   0.0168567   0.0502574
24 months   ki1101329-Keneba           >3302.75             NA                0.0340909   0.0121938   0.0559880
24 months   ki1135781-COHORTS          <=2600               NA                0.3348730   0.3149919   0.3547541
24 months   ki1135781-COHORTS          (2600-2970]          NA                0.2171239   0.1995478   0.2347001
24 months   ki1135781-COHORTS          (2970-3302.75]       NA                0.1737980   0.1581983   0.1893977
24 months   ki1135781-COHORTS          >3302.75             NA                0.1263362   0.1060358   0.1466367


### Parameter: E(Y)


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO         NA                   NA                0.0324732   0.0310440   0.0339024
3 months    ki1126311-ZVITAMBO         NA                   NA                0.0503979   0.0483029   0.0524928
6 months    ki1101329-Keneba           NA                   NA                0.0327294   0.0313671   0.0340917
6 months    ki1126311-ZVITAMBO         NA                   NA                0.0347188   0.0334093   0.0360283
6 months    ki1135781-COHORTS          NA                   NA                0.0490217   0.0482480   0.0497954
9 months    ki1000108-CMC-V-BCS-2002   NA                   NA                0.1284153   0.1220816   0.1347490
9 months    ki1101329-Keneba           NA                   NA                0.0504399   0.0484281   0.0524517
9 months    ki1126311-ZVITAMBO         NA                   NA                0.0443878   0.0433292   0.0454463
9 months    ki1135781-COHORTS          NA                   NA                0.0802564   0.0791678   0.0813451
12 months   ki0047075b-MAL-ED          NA                   NA                0.0504087   0.0482095   0.0526080
12 months   ki1000108-CMC-V-BCS-2002   NA                   NA                0.2255435   0.2190418   0.2320451
12 months   ki1101329-Keneba           NA                   NA                0.0678283   0.0650445   0.0706120
12 months   ki1126311-ZVITAMBO         NA                   NA                0.0618011   0.0597327   0.0638694
12 months   ki1135781-COHORTS          NA                   NA                0.1263417   0.1248664   0.1278169
18 months   ki0047075b-MAL-ED          NA                   NA                0.0985011   0.0957954   0.1012067
18 months   ki1000108-CMC-V-BCS-2002   NA                   NA                0.2953930   0.2844676   0.3063183
18 months   ki1000109-EE               NA                   NA                0.4885714   0.4742100   0.5029328
18 months   ki1101329-Keneba           NA                   NA                0.0932836   0.0900585   0.0965086
18 months   ki1126311-ZVITAMBO         NA                   NA                0.1580189   0.1513515   0.1646863
18 months   ki1135781-COHORTS          NA                   NA                0.2784029   0.2749060   0.2818998
24 months   ki0047075b-MAL-ED          NA                   NA                0.0934025   0.0908629   0.0959422
24 months   ki1000108-CMC-V-BCS-2002   NA                   NA                0.3306452   0.3178630   0.3434273
24 months   ki1101329-Keneba           NA                   NA                0.0834502   0.0803774   0.0865230
24 months   ki1135781-COHORTS          NA                   NA                0.2254785   0.2237971   0.2271600


### Parameter: RR


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO         (2600-2970]          <=2600            0.1372930   0.0798716   0.2359961
Birth       ki1126311-ZVITAMBO         (2970-3302.75]       <=2600            0.0808013   0.0421981   0.1547192
Birth       ki1126311-ZVITAMBO         >3302.75             <=2600            0.0565396   0.0230537   0.1386639
3 months    ki1126311-ZVITAMBO         (2600-2970]          <=2600            0.3083484   0.2016498   0.4715042
3 months    ki1126311-ZVITAMBO         (2970-3302.75]       <=2600            0.1415216   0.0818195   0.2447871
3 months    ki1126311-ZVITAMBO         >3302.75             <=2600            0.0647035   0.0262973   0.1592005
6 months    ki1101329-Keneba           (2600-2970]          <=2600            0.2718631   0.1438872   0.5136631
6 months    ki1101329-Keneba           (2970-3302.75]       <=2600            0.1651032   0.0766028   0.3558495
6 months    ki1101329-Keneba           >3302.75             <=2600            0.1708075   0.0670905   0.4348632
6 months    ki1126311-ZVITAMBO         (2600-2970]          <=2600            0.3000392   0.1693554   0.5315656
6 months    ki1126311-ZVITAMBO         (2970-3302.75]       <=2600            0.1754466   0.0905624   0.3398928
6 months    ki1126311-ZVITAMBO         >3302.75             <=2600            0.1571789   0.0708665   0.3486161
6 months    ki1135781-COHORTS          (2600-2970]          <=2600            0.2804916   0.2196043   0.3582605
6 months    ki1135781-COHORTS          (2970-3302.75]       <=2600            0.2197783   0.1683579   0.2869037
6 months    ki1135781-COHORTS          >3302.75             <=2600            0.1308019   0.0806090   0.2122484
9 months    ki1000108-CMC-V-BCS-2002   (2600-2970]          <=2600            0.4651568   0.2259816   0.9574710
9 months    ki1000108-CMC-V-BCS-2002   (2970-3302.75]       <=2600            0.3852814   0.1996836   0.7433847
9 months    ki1000108-CMC-V-BCS-2002   >3302.75             <=2600            0.3363568   0.1338263   0.8453933
9 months    ki1101329-Keneba           (2600-2970]          <=2600            0.3427377   0.2125171   0.5527516
9 months    ki1101329-Keneba           (2970-3302.75]       <=2600            0.1801284   0.0985151   0.3293531
9 months    ki1101329-Keneba           >3302.75             <=2600            0.1175796   0.0472208   0.2927725
9 months    ki1126311-ZVITAMBO         (2600-2970]          <=2600            0.6930147   0.4286908   1.1203164
9 months    ki1126311-ZVITAMBO         (2970-3302.75]       <=2600            0.2143817   0.1090405   0.4214906
9 months    ki1126311-ZVITAMBO         >3302.75             <=2600            0.4102604   0.2216540   0.7593530
9 months    ki1135781-COHORTS          (2600-2970]          <=2600            0.4426533   0.3715949   0.5272999
9 months    ki1135781-COHORTS          (2970-3302.75]       <=2600            0.2670550   0.2164448   0.3294991
9 months    ki1135781-COHORTS          >3302.75             <=2600            0.1467410   0.0992644   0.2169250
12 months   ki0047075b-MAL-ED          (2600-2970]          <=2600            0.2194357   0.1110488   0.4336115
12 months   ki0047075b-MAL-ED          (2970-3302.75]       <=2600            0.2910603   0.1721598   0.4920782
12 months   ki0047075b-MAL-ED          >3302.75             <=2600            0.1346154   0.0635753   0.2850368
12 months   ki1000108-CMC-V-BCS-2002   (2600-2970]          <=2600            0.6812447   0.4103143   1.1310704
12 months   ki1000108-CMC-V-BCS-2002   (2970-3302.75]       <=2600            0.6533575   0.4184018   1.0202540
12 months   ki1000108-CMC-V-BCS-2002   >3302.75             <=2600            0.3940887   0.1928998   0.8051119
12 months   ki1101329-Keneba           (2600-2970]          <=2600            0.3701445   0.2459915   0.5569582
12 months   ki1101329-Keneba           (2970-3302.75]       <=2600            0.1623094   0.0932632   0.2824730
12 months   ki1101329-Keneba           >3302.75             <=2600            0.1258294   0.0581857   0.2721122
12 months   ki1126311-ZVITAMBO         (2600-2970]          <=2600            0.4785177   0.3144879   0.7281018
12 months   ki1126311-ZVITAMBO         (2970-3302.75]       <=2600            0.2301995   0.1348078   0.3930914
12 months   ki1126311-ZVITAMBO         >3302.75             <=2600            0.1322449   0.0574100   0.3046285
12 months   ki1135781-COHORTS          (2600-2970]          <=2600            0.5430737   0.4729537   0.6235898
12 months   ki1135781-COHORTS          (2970-3302.75]       <=2600            0.3486980   0.2968356   0.4096217
12 months   ki1135781-COHORTS          >3302.75             <=2600            0.1875112   0.1394171   0.2521962
18 months   ki0047075b-MAL-ED          (2600-2970]          <=2600            0.4068468   0.2616030   0.6327308
18 months   ki0047075b-MAL-ED          (2970-3302.75]       <=2600            0.4003268   0.2709333   0.5915166
18 months   ki0047075b-MAL-ED          >3302.75             <=2600            0.2811455   0.1764422   0.4479814
18 months   ki1000108-CMC-V-BCS-2002   (2600-2970]          <=2600            0.6794425   0.4612130   1.0009304
18 months   ki1000108-CMC-V-BCS-2002   (2970-3302.75]       <=2600            0.4672395   0.3160742   0.6907010
18 months   ki1000108-CMC-V-BCS-2002   >3302.75             <=2600            0.4017857   0.2303029   0.7009542
18 months   ki1000109-EE               (2600-2970]          <=2600            0.7216722   0.5558498   0.9369631
18 months   ki1000109-EE               (2970-3302.75]       <=2600            0.6089109   0.4338024   0.8547037
18 months   ki1000109-EE               >3302.75             <=2600            0.3044554   0.1463750   0.6332578
18 months   ki1101329-Keneba           (2600-2970]          <=2600            0.4643137   0.3319886   0.6493815
18 months   ki1101329-Keneba           (2970-3302.75]       <=2600            0.2164204   0.1385826   0.3379776
18 months   ki1101329-Keneba           >3302.75             <=2600            0.1379953   0.0700188   0.2719656
18 months   ki1126311-ZVITAMBO         (2600-2970]          <=2600            0.5970337   0.3671398   0.9708814
18 months   ki1126311-ZVITAMBO         (2970-3302.75]       <=2600            0.3494983   0.1822255   0.6703184
18 months   ki1126311-ZVITAMBO         >3302.75             <=2600            0.2994956   0.1214588   0.7385021
18 months   ki1135781-COHORTS          (2600-2970]          <=2600            0.5736541   0.4931296   0.6673277
18 months   ki1135781-COHORTS          (2970-3302.75]       <=2600            0.5117585   0.4426076   0.5917133
18 months   ki1135781-COHORTS          >3302.75             <=2600            0.3864865   0.3157999   0.4729951
24 months   ki0047075b-MAL-ED          (2600-2970]          <=2600            0.3839101   0.2379174   0.6194880
24 months   ki0047075b-MAL-ED          (2970-3302.75]       <=2600            0.4159812   0.2769766   0.6247471
24 months   ki0047075b-MAL-ED          >3302.75             <=2600            0.3009855   0.1859792   0.4871098
24 months   ki1000108-CMC-V-BCS-2002   (2600-2970]          <=2600            0.6250000   0.4363157   0.8952807
24 months   ki1000108-CMC-V-BCS-2002   (2970-3302.75]       <=2600            0.5075188   0.3612995   0.7129135
24 months   ki1000108-CMC-V-BCS-2002   >3302.75             <=2600            0.3173077   0.1789041   0.5627830
24 months   ki1101329-Keneba           (2600-2970]          <=2600            0.5077270   0.3490068   0.7386296
24 months   ki1101329-Keneba           (2970-3302.75]       <=2600            0.1755292   0.1008168   0.3056086
24 months   ki1101329-Keneba           >3302.75             <=2600            0.1783217   0.0896851   0.3545586
24 months   ki1135781-COHORTS          (2600-2970]          <=2600            0.6483770   0.5864487   0.7168449
24 months   ki1135781-COHORTS          (2970-3302.75]       <=2600            0.5189967   0.4660448   0.5779649
24 months   ki1135781-COHORTS          >3302.75             <=2600            0.3772662   0.3178719   0.4477583


### Parameter: PAR


agecat      studyid                    intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1126311-ZVITAMBO         <=2600               NA                -0.0845026   -0.1083405   -0.0606647
3 months    ki1126311-ZVITAMBO         <=2600               NA                -0.0999438   -0.1334499   -0.0664377
6 months    ki1101329-Keneba           <=2600               NA                -0.0581797   -0.0892356   -0.0271238
6 months    ki1126311-ZVITAMBO         <=2600               NA                -0.0618869   -0.0915093   -0.0322645
6 months    ki1135781-COHORTS          <=2600               NA                -0.0574219   -0.0688536   -0.0459901
9 months    ki1000108-CMC-V-BCS-2002   <=2600               NA                -0.1075398   -0.1960992   -0.0189803
9 months    ki1101329-Keneba           <=2600               NA                -0.0837065   -0.1206548   -0.0467581
9 months    ki1126311-ZVITAMBO         <=2600               NA                -0.0378404   -0.0655980   -0.0100828
9 months    ki1135781-COHORTS          <=2600               NA                -0.0755772   -0.0899028   -0.0612516
12 months   ki0047075b-MAL-ED          <=2600               NA                -0.0924484   -0.1357232   -0.0491736
12 months   ki1000108-CMC-V-BCS-2002   <=2600               NA                -0.0966787   -0.1935777    0.0002202
12 months   ki1101329-Keneba           <=2600               NA                -0.1133798   -0.1572155   -0.0695441
12 months   ki1126311-ZVITAMBO         <=2600               NA                -0.0778001   -0.1141264   -0.0414737
12 months   ki1135781-COHORTS          <=2600               NA                -0.0962795   -0.1136174   -0.0789417
18 months   ki0047075b-MAL-ED          <=2600               NA                -0.1096622   -0.1605899   -0.0587345
18 months   ki1000108-CMC-V-BCS-2002   <=2600               NA                -0.1712737   -0.2750597   -0.0674878
18 months   ki1000109-EE               <=2600               NA                -0.1272822   -0.2032007   -0.0513637
18 months   ki1101329-Keneba           <=2600               NA                -0.1263110   -0.1735957   -0.0790263
18 months   ki1126311-ZVITAMBO         <=2600               NA                -0.1156653   -0.2056734   -0.0256573
18 months   ki1135781-COHORTS          <=2600               NA                -0.1959561   -0.2413393   -0.1505729
24 months   ki0047075b-MAL-ED          <=2600               NA                -0.1015127   -0.1521353   -0.0508902
24 months   ki1000108-CMC-V-BCS-2002   <=2600               NA                -0.2026882   -0.3066849   -0.0986915
24 months   ki1101329-Keneba           <=2600               NA                -0.1077263   -0.1545748   -0.0608777
24 months   ki1135781-COHORTS          <=2600               NA                -0.1093944   -0.1293465   -0.0894424


### Parameter: PAF


agecat      studyid                    intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1126311-ZVITAMBO         <=2600               NA                -2.6022264   -3.4356644   -1.9253870
3 months    ki1126311-ZVITAMBO         <=2600               NA                -1.9830956   -2.7405878   -1.3790002
6 months    ki1101329-Keneba           <=2600               NA                -1.7775974   -2.9172923   -0.9694847
6 months    ki1126311-ZVITAMBO         <=2600               NA                -1.7825175   -2.7886172   -1.0435961
6 months    ki1135781-COHORTS          <=2600               NA                -1.1713555   -1.4197371   -0.9484698
9 months    ki1000108-CMC-V-BCS-2002   <=2600               NA                -0.8374372   -1.6804083   -0.2595751
9 months    ki1101329-Keneba           <=2600               NA                -1.6595292   -2.5115261   -1.0142511
9 months    ki1126311-ZVITAMBO         <=2600               NA                -0.8524955   -1.5978865   -0.3209736
9 months    ki1135781-COHORTS          <=2600               NA                -0.9416967   -1.1302161   -0.7698609
12 months   ki0047075b-MAL-ED          <=2600               NA                -1.8339768   -2.8471889   -1.0876086
12 months   ki1000108-CMC-V-BCS-2002   <=2600               NA                -0.4286479   -0.9312224   -0.0568617
12 months   ki1101329-Keneba           <=2600               NA                -1.6715719   -2.4128597   -1.0912951
12 months   ki1126311-ZVITAMBO         <=2600               NA                -1.2588794   -1.9352981   -0.7383366
12 months   ki1135781-COHORTS          <=2600               NA                -0.7620569   -0.9058986   -0.6290713
18 months   ki0047075b-MAL-ED          <=2600               NA                -1.1133097   -1.7022956   -0.6526977
18 months   ki1000108-CMC-V-BCS-2002   <=2600               NA                -0.5798165   -0.9769254   -0.2624757
18 months   ki1000109-EE               <=2600               NA                -0.2605192   -0.4277352   -0.1128874
18 months   ki1101329-Keneba           <=2600               NA                -1.3540541   -1.9262712   -0.8937310
18 months   ki1126311-ZVITAMBO         <=2600               NA                -0.7319717   -1.4107444   -0.2443153
18 months   ki1135781-COHORTS          <=2600               NA                -0.7038579   -0.8759341   -0.5475658
24 months   ki0047075b-MAL-ED          <=2600               NA                -1.0868308   -1.7086665   -0.6077515
24 months   ki1000108-CMC-V-BCS-2002   <=2600               NA                -0.6130081   -0.9648968   -0.3241383
24 months   ki1101329-Keneba           <=2600               NA                -1.2909046   -1.9335988   -0.7890122
24 months   ki1135781-COHORTS          <=2600               NA                -0.4851656   -0.5767438   -0.3989063


