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

**Intervention Variable:** birthlen

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
* agecat: 12 months, studyid: ki1017093c-NIH-Crypto
* agecat: 12 months, studyid: ki1101329-Keneba
* agecat: 12 months, studyid: ki1126311-ZVITAMBO
* agecat: 12 months, studyid: ki1135781-COHORTS
* agecat: 18 months, studyid: ki0047075b-MAL-ED
* agecat: 18 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 18 months, studyid: ki1000108-IRC
* agecat: 18 months, studyid: ki1017093b-PROVIDE
* agecat: 18 months, studyid: ki1017093c-NIH-Crypto
* agecat: 18 months, studyid: ki1101329-Keneba
* agecat: 18 months, studyid: ki1126311-ZVITAMBO
* agecat: 18 months, studyid: ki1135781-COHORTS
* agecat: 24 months, studyid: ki0047075b-MAL-ED
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 24 months, studyid: ki1000108-IRC
* agecat: 24 months, studyid: ki1017093b-PROVIDE
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto
* agecat: 24 months, studyid: ki1101329-Keneba
* agecat: 24 months, studyid: ki1126311-ZVITAMBO
* agecat: 24 months, studyid: ki1135781-COHORTS
* agecat: 3 months, studyid: ki0047075b-MAL-ED
* agecat: 3 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 3 months, studyid: ki1000108-IRC
* agecat: 3 months, studyid: ki1017093b-PROVIDE
* agecat: 3 months, studyid: ki1017093c-NIH-Crypto
* agecat: 3 months, studyid: ki1101329-Keneba
* agecat: 3 months, studyid: ki1126311-ZVITAMBO
* agecat: 3 months, studyid: ki1135781-COHORTS
* agecat: 6 months, studyid: ki0047075b-MAL-ED
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 6 months, studyid: ki1000108-IRC
* agecat: 6 months, studyid: ki1017093b-PROVIDE
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto
* agecat: 6 months, studyid: ki1101329-Keneba
* agecat: 6 months, studyid: ki1126311-ZVITAMBO
* agecat: 6 months, studyid: ki1135781-COHORTS
* agecat: 9 months, studyid: ki0047075b-MAL-ED
* agecat: 9 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 9 months, studyid: ki1000108-IRC
* agecat: 9 months, studyid: ki1017093b-PROVIDE
* agecat: 9 months, studyid: ki1017093c-NIH-Crypto
* agecat: 9 months, studyid: ki1101329-Keneba
* agecat: 9 months, studyid: ki1126311-ZVITAMBO
* agecat: 9 months, studyid: ki1135781-COHORTS
* agecat: Birth, studyid: ki0047075b-MAL-ED
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002
* agecat: Birth, studyid: ki1000108-IRC
* agecat: Birth, studyid: ki1017093c-NIH-Crypto
* agecat: Birth, studyid: ki1101329-Keneba
* agecat: Birth, studyid: ki1126311-ZVITAMBO
* agecat: Birth, studyid: ki1135781-COHORTS

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002
* agecat: Birth, studyid: ki1000108-IRC
* agecat: Birth, studyid: ki1017093c-NIH-Crypto
* agecat: Birth, studyid: ki1101329-Keneba
* agecat: Birth, studyid: ki1126311-ZVITAMBO
* agecat: Birth, studyid: ki1135781-COHORTS
* agecat: 3 months, studyid: ki0047075b-MAL-ED
* agecat: 3 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 3 months, studyid: ki1000108-IRC
* agecat: 3 months, studyid: ki1017093b-PROVIDE
* agecat: 3 months, studyid: ki1017093c-NIH-Crypto
* agecat: 3 months, studyid: ki1101329-Keneba
* agecat: 3 months, studyid: ki1126311-ZVITAMBO
* agecat: 3 months, studyid: ki1135781-COHORTS
* agecat: 6 months, studyid: ki0047075b-MAL-ED
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 6 months, studyid: ki1000108-IRC
* agecat: 6 months, studyid: ki1017093b-PROVIDE
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto
* agecat: 6 months, studyid: ki1126311-ZVITAMBO
* agecat: 9 months, studyid: ki0047075b-MAL-ED
* agecat: 9 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 9 months, studyid: ki1000108-IRC
* agecat: 9 months, studyid: ki1017093b-PROVIDE
* agecat: 9 months, studyid: ki1017093c-NIH-Crypto
* agecat: 12 months, studyid: ki0047075b-MAL-ED
* agecat: 12 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 12 months, studyid: ki1000108-IRC
* agecat: 12 months, studyid: ki1017093b-PROVIDE
* agecat: 12 months, studyid: ki1017093c-NIH-Crypto
* agecat: 18 months, studyid: ki0047075b-MAL-ED
* agecat: 18 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 18 months, studyid: ki1000108-IRC
* agecat: 18 months, studyid: ki1017093b-PROVIDE
* agecat: 18 months, studyid: ki1017093c-NIH-Crypto
* agecat: 18 months, studyid: ki1126311-ZVITAMBO
* agecat: 24 months, studyid: ki0047075b-MAL-ED
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 24 months, studyid: ki1000108-IRC
* agecat: 24 months, studyid: ki1017093b-PROVIDE
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto
* agecat: 24 months, studyid: ki1126311-ZVITAMBO

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness




# Results Detail

## Results Plots
![](/tmp/019299b7-528e-4ab1-a9d8-7c1618b1ed0a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/019299b7-528e-4ab1-a9d8-7c1618b1ed0a/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/019299b7-528e-4ab1-a9d8-7c1618b1ed0a/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/019299b7-528e-4ab1-a9d8-7c1618b1ed0a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Data Summary

agecat      studyid                    A                  n     nA   nAY0   nAY1
----------  -------------------------  ------------  ------  -----  -----  -----
Birth       ki0047075b-MAL-ED          <=46.8            54     20     19      1
Birth       ki0047075b-MAL-ED          (46.8-48.8]       54     23     23      0
Birth       ki0047075b-MAL-ED          (48.8-51]         54     11     11      0
Birth       ki0047075b-MAL-ED          >51               54      0      0      0
Birth       ki1000108-CMC-V-BCS-2002   <=46.8            89     22     19      3
Birth       ki1000108-CMC-V-BCS-2002   (46.8-48.8]       89     32     32      0
Birth       ki1000108-CMC-V-BCS-2002   (48.8-51]         89     34     34      0
Birth       ki1000108-CMC-V-BCS-2002   >51               89      1      1      0
Birth       ki1000108-IRC              <=46.8           388     65     49     16
Birth       ki1000108-IRC              (46.8-48.8]      388    107    107      0
Birth       ki1000108-IRC              (48.8-51]        388    143    143      0
Birth       ki1000108-IRC              >51              388     73     73      0
Birth       ki1017093b-PROVIDE         <=46.8             0      0      0      0
Birth       ki1017093b-PROVIDE         (46.8-48.8]        0      0      0      0
Birth       ki1017093b-PROVIDE         (48.8-51]          0      0      0      0
Birth       ki1017093b-PROVIDE         >51                0      0      0      0
Birth       ki1017093c-NIH-Crypto      <=46.8            27     11     10      1
Birth       ki1017093c-NIH-Crypto      (46.8-48.8]       27     10     10      0
Birth       ki1017093c-NIH-Crypto      (48.8-51]         27      6      6      0
Birth       ki1017093c-NIH-Crypto      >51               27      0      0      0
Birth       ki1101329-Keneba           <=46.8          1541    143    114     29
Birth       ki1101329-Keneba           (46.8-48.8]     1541    337    337      0
Birth       ki1101329-Keneba           (48.8-51]       1541    730    730      0
Birth       ki1101329-Keneba           >51             1541    331    331      0
Birth       ki1126311-ZVITAMBO         <=46.8          3449    613    501    112
Birth       ki1126311-ZVITAMBO         (46.8-48.8]     3449   1095   1095      0
Birth       ki1126311-ZVITAMBO         (48.8-51]       3449   1410   1410      0
Birth       ki1126311-ZVITAMBO         >51             3449    331    331      0
Birth       ki1135781-COHORTS          <=46.8         10097   2015   1759    256
Birth       ki1135781-COHORTS          (46.8-48.8]    10097   3341   3341      0
Birth       ki1135781-COHORTS          (48.8-51]      10097   3607   3607      0
Birth       ki1135781-COHORTS          >51            10097   1134   1134      0
3 months    ki0047075b-MAL-ED          <=46.8            53     19     17      2
3 months    ki0047075b-MAL-ED          (46.8-48.8]       53     23     23      0
3 months    ki0047075b-MAL-ED          (48.8-51]         53     11     11      0
3 months    ki0047075b-MAL-ED          >51               53      0      0      0
3 months    ki1000108-CMC-V-BCS-2002   <=46.8           101     32     23      9
3 months    ki1000108-CMC-V-BCS-2002   (46.8-48.8]      101     33     32      1
3 months    ki1000108-CMC-V-BCS-2002   (48.8-51]        101     34     32      2
3 months    ki1000108-CMC-V-BCS-2002   >51              101      2      2      0
3 months    ki1000108-IRC              <=46.8           388     68     46     22
3 months    ki1000108-IRC              (46.8-48.8]      388    106     98      8
3 months    ki1000108-IRC              (48.8-51]        388    142    136      6
3 months    ki1000108-IRC              >51              388     72     72      0
3 months    ki1017093b-PROVIDE         <=46.8           168     21     17      4
3 months    ki1017093b-PROVIDE         (46.8-48.8]      168     66     65      1
3 months    ki1017093b-PROVIDE         (48.8-51]        168     68     68      0
3 months    ki1017093b-PROVIDE         >51              168     13     13      0
3 months    ki1017093c-NIH-Crypto      <=46.8           728    145    121     24
3 months    ki1017093c-NIH-Crypto      (46.8-48.8]      728    281    272      9
3 months    ki1017093c-NIH-Crypto      (48.8-51]        728    234    234      0
3 months    ki1017093c-NIH-Crypto      >51              728     68     68      0
3 months    ki1101329-Keneba           <=46.8          1428    137    120     17
3 months    ki1101329-Keneba           (46.8-48.8]     1428    312    304      8
3 months    ki1101329-Keneba           (48.8-51]       1428    672    664      8
3 months    ki1101329-Keneba           >51             1428    307    306      1
3 months    ki1126311-ZVITAMBO         <=46.8          2247    405    360     45
3 months    ki1126311-ZVITAMBO         (46.8-48.8]     2247    722    685     37
3 months    ki1126311-ZVITAMBO         (48.8-51]       2247    905    879     26
3 months    ki1126311-ZVITAMBO         >51             2247    215    211      4
3 months    ki1135781-COHORTS          <=46.8          9695   1921   1660    261
3 months    ki1135781-COHORTS          (46.8-48.8]     9695   3220   3164     56
3 months    ki1135781-COHORTS          (48.8-51]       9695   3483   3466     17
3 months    ki1135781-COHORTS          >51             9695   1071   1070      1
6 months    ki0047075b-MAL-ED          <=46.8            49     16     15      1
6 months    ki0047075b-MAL-ED          (46.8-48.8]       49     22     22      0
6 months    ki0047075b-MAL-ED          (48.8-51]         49     11     11      0
6 months    ki0047075b-MAL-ED          >51               49      0      0      0
6 months    ki1000108-CMC-V-BCS-2002   <=46.8           101     31     27      4
6 months    ki1000108-CMC-V-BCS-2002   (46.8-48.8]      101     33     32      1
6 months    ki1000108-CMC-V-BCS-2002   (48.8-51]        101     35     32      3
6 months    ki1000108-CMC-V-BCS-2002   >51              101      2      2      0
6 months    ki1000108-IRC              <=46.8           389     66     52     14
6 months    ki1000108-IRC              (46.8-48.8]      389    107    100      7
6 months    ki1000108-IRC              (48.8-51]        389    143    137      6
6 months    ki1000108-IRC              >51              389     73     72      1
6 months    ki1017093b-PROVIDE         <=46.8           153     20     17      3
6 months    ki1017093b-PROVIDE         (46.8-48.8]      153     57     55      2
6 months    ki1017093b-PROVIDE         (48.8-51]        153     64     63      1
6 months    ki1017093b-PROVIDE         >51              153     12     12      0
6 months    ki1017093c-NIH-Crypto      <=46.8           715    146    134     12
6 months    ki1017093c-NIH-Crypto      (46.8-48.8]      715    266    256     10
6 months    ki1017093c-NIH-Crypto      (48.8-51]        715    235    234      1
6 months    ki1017093c-NIH-Crypto      >51              715     68     68      0
6 months    ki1101329-Keneba           <=46.8          1346    120    111      9
6 months    ki1101329-Keneba           (46.8-48.8]     1346    293    282     11
6 months    ki1101329-Keneba           (48.8-51]       1346    641    632      9
6 months    ki1101329-Keneba           >51             1346    292    287      5
6 months    ki1126311-ZVITAMBO         <=46.8          2033    350    320     30
6 months    ki1126311-ZVITAMBO         (46.8-48.8]     2033    671    651     20
6 months    ki1126311-ZVITAMBO         (48.8-51]       2033    821    803     18
6 months    ki1126311-ZVITAMBO         >51             2033    191    189      2
6 months    ki1135781-COHORTS          <=46.8          9164   1798   1531    267
6 months    ki1135781-COHORTS          (46.8-48.8]     9164   3055   2940    115
6 months    ki1135781-COHORTS          (48.8-51]       9164   3297   3239     58
6 months    ki1135781-COHORTS          >51             9164   1014   1007      7
9 months    ki0047075b-MAL-ED          <=46.8            47     16     14      2
9 months    ki0047075b-MAL-ED          (46.8-48.8]       47     20     20      0
9 months    ki0047075b-MAL-ED          (48.8-51]         47     11     11      0
9 months    ki0047075b-MAL-ED          >51               47      0      0      0
9 months    ki1000108-CMC-V-BCS-2002   <=46.8           102     32     28      4
9 months    ki1000108-CMC-V-BCS-2002   (46.8-48.8]      102     33     31      2
9 months    ki1000108-CMC-V-BCS-2002   (48.8-51]        102     35     32      3
9 months    ki1000108-CMC-V-BCS-2002   >51              102      2      2      0
9 months    ki1000108-IRC              <=46.8           389     66     51     15
9 months    ki1000108-IRC              (46.8-48.8]      389    107     98      9
9 months    ki1000108-IRC              (48.8-51]        389    143    137      6
9 months    ki1000108-IRC              >51              389     73     71      2
9 months    ki1017093b-PROVIDE         <=46.8           158     19     16      3
9 months    ki1017093b-PROVIDE         (46.8-48.8]      158     60     57      3
9 months    ki1017093b-PROVIDE         (48.8-51]        158     67     64      3
9 months    ki1017093b-PROVIDE         >51              158     12     12      0
9 months    ki1017093c-NIH-Crypto      <=46.8           706    138    120     18
9 months    ki1017093c-NIH-Crypto      (46.8-48.8]      706    272    265      7
9 months    ki1017093c-NIH-Crypto      (48.8-51]        706    229    226      3
9 months    ki1017093c-NIH-Crypto      >51              706     67     67      0
9 months    ki1101329-Keneba           <=46.8          1326    123    106     17
9 months    ki1101329-Keneba           (46.8-48.8]     1326    280    261     19
9 months    ki1101329-Keneba           (48.8-51]       1326    632    616     16
9 months    ki1101329-Keneba           >51             1326    291    285      6
9 months    ki1126311-ZVITAMBO         <=46.8          1940    349    318     31
9 months    ki1126311-ZVITAMBO         (46.8-48.8]     1940    643    619     24
9 months    ki1126311-ZVITAMBO         (48.8-51]       1940    782    756     26
9 months    ki1126311-ZVITAMBO         >51             1940    166    161      5
9 months    ki1135781-COHORTS          <=46.8          8297   1590   1257    333
9 months    ki1135781-COHORTS          (46.8-48.8]     8297   2752   2536    216
9 months    ki1135781-COHORTS          (48.8-51]       8297   3011   2912     99
9 months    ki1135781-COHORTS          >51             8297    944    929     15
12 months   ki0047075b-MAL-ED          <=46.8            46     16     13      3
12 months   ki0047075b-MAL-ED          (46.8-48.8]       46     19     19      0
12 months   ki0047075b-MAL-ED          (48.8-51]         46     11     11      0
12 months   ki0047075b-MAL-ED          >51               46      0      0      0
12 months   ki1000108-CMC-V-BCS-2002   <=46.8           102     33     29      4
12 months   ki1000108-CMC-V-BCS-2002   (46.8-48.8]      102     33     30      3
12 months   ki1000108-CMC-V-BCS-2002   (48.8-51]        102     34     31      3
12 months   ki1000108-CMC-V-BCS-2002   >51              102      2      2      0
12 months   ki1000108-IRC              <=46.8           388     66     50     16
12 months   ki1000108-IRC              (46.8-48.8]      388    107     99      8
12 months   ki1000108-IRC              (48.8-51]        388    143    138      5
12 months   ki1000108-IRC              >51              388     72     69      3
12 months   ki1017093b-PROVIDE         <=46.8           153     18     13      5
12 months   ki1017093b-PROVIDE         (46.8-48.8]      153     59     53      6
12 months   ki1017093b-PROVIDE         (48.8-51]        153     64     62      2
12 months   ki1017093b-PROVIDE         >51              153     12     12      0
12 months   ki1017093c-NIH-Crypto      <=46.8           706    144    120     24
12 months   ki1017093c-NIH-Crypto      (46.8-48.8]      706    269    257     12
12 months   ki1017093c-NIH-Crypto      (48.8-51]        706    226    221      5
12 months   ki1017093c-NIH-Crypto      >51              706     67     67      0
12 months   ki1101329-Keneba           <=46.8          1234    121     99     22
12 months   ki1101329-Keneba           (46.8-48.8]     1234    259    240     19
12 months   ki1101329-Keneba           (48.8-51]       1234    590    566     24
12 months   ki1101329-Keneba           >51             1234    264    255      9
12 months   ki1126311-ZVITAMBO         <=46.8          1678    321    284     37
12 months   ki1126311-ZVITAMBO         (46.8-48.8]     1678    563    524     39
12 months   ki1126311-ZVITAMBO         (48.8-51]       1678    661    637     24
12 months   ki1126311-ZVITAMBO         >51             1678    133    128      5
12 months   ki1135781-COHORTS          <=46.8          7607   1432   1028    404
12 months   ki1135781-COHORTS          (46.8-48.8]     7607   2519   2168    351
12 months   ki1135781-COHORTS          (48.8-51]       7607   2760   2582    178
12 months   ki1135781-COHORTS          >51             7607    896    868     28
18 months   ki0047075b-MAL-ED          <=46.8            42     14     11      3
18 months   ki0047075b-MAL-ED          (46.8-48.8]       42     17     14      3
18 months   ki0047075b-MAL-ED          (48.8-51]         42     11     11      0
18 months   ki0047075b-MAL-ED          >51               42      0      0      0
18 months   ki1000108-CMC-V-BCS-2002   <=46.8           102     33     25      8
18 months   ki1000108-CMC-V-BCS-2002   (46.8-48.8]      102     33     25      8
18 months   ki1000108-CMC-V-BCS-2002   (48.8-51]        102     34     28      6
18 months   ki1000108-CMC-V-BCS-2002   >51              102      2      2      0
18 months   ki1000108-IRC              <=46.8           387     67     54     13
18 months   ki1000108-IRC              (46.8-48.8]      387    107     97     10
18 months   ki1000108-IRC              (48.8-51]        387    140    134      6
18 months   ki1000108-IRC              >51              387     73     70      3
18 months   ki1017093b-PROVIDE         <=46.8           141     16     11      5
18 months   ki1017093b-PROVIDE         (46.8-48.8]      141     56     44     12
18 months   ki1017093b-PROVIDE         (48.8-51]        141     59     56      3
18 months   ki1017093b-PROVIDE         >51              141     10     10      0
18 months   ki1017093c-NIH-Crypto      <=46.8           634    132    109     23
18 months   ki1017093c-NIH-Crypto      (46.8-48.8]      634    240    225     15
18 months   ki1017093c-NIH-Crypto      (48.8-51]        634    200    196      4
18 months   ki1017093c-NIH-Crypto      >51              634     62     62      0
18 months   ki1101329-Keneba           <=46.8          1197    107     88     19
18 months   ki1101329-Keneba           (46.8-48.8]     1197    257    226     31
18 months   ki1101329-Keneba           (48.8-51]       1197    567    526     41
18 months   ki1101329-Keneba           >51             1197    266    255     11
18 months   ki1126311-ZVITAMBO         <=46.8           421    117     96     21
18 months   ki1126311-ZVITAMBO         (46.8-48.8]      421    150    122     28
18 months   ki1126311-ZVITAMBO         (48.8-51]        421    136    119     17
18 months   ki1126311-ZVITAMBO         >51              421     18     17      1
18 months   ki1135781-COHORTS          <=46.8          2746    327    150    177
18 months   ki1135781-COHORTS          (46.8-48.8]     2746    799    534    265
18 months   ki1135781-COHORTS          (48.8-51]       2746   1187    929    258
18 months   ki1135781-COHORTS          >51             2746    433    379     54
24 months   ki0047075b-MAL-ED          <=46.8            40     13     10      3
24 months   ki0047075b-MAL-ED          (46.8-48.8]       40     16     14      2
24 months   ki0047075b-MAL-ED          (48.8-51]         40     11     11      0
24 months   ki0047075b-MAL-ED          >51               40      0      0      0
24 months   ki1000108-CMC-V-BCS-2002   <=46.8           103     33     22     11
24 months   ki1000108-CMC-V-BCS-2002   (46.8-48.8]      103     33     21     12
24 months   ki1000108-CMC-V-BCS-2002   (48.8-51]        103     35     28      7
24 months   ki1000108-CMC-V-BCS-2002   >51              103      2      1      1
24 months   ki1000108-IRC              <=46.8           390     67     52     15
24 months   ki1000108-IRC              (46.8-48.8]      390    107     96     11
24 months   ki1000108-IRC              (48.8-51]        390    143    134      9
24 months   ki1000108-IRC              >51              390     73     69      4
24 months   ki1017093b-PROVIDE         <=46.8           149     18     14      4
24 months   ki1017093b-PROVIDE         (46.8-48.8]      149     57     45     12
24 months   ki1017093b-PROVIDE         (48.8-51]        149     62     60      2
24 months   ki1017093b-PROVIDE         >51              149     12     12      0
24 months   ki1017093c-NIH-Crypto      <=46.8           514    105     86     19
24 months   ki1017093c-NIH-Crypto      (46.8-48.8]      514    196    183     13
24 months   ki1017093c-NIH-Crypto      (48.8-51]        514    157    154      3
24 months   ki1017093c-NIH-Crypto      >51              514     56     56      0
24 months   ki1101329-Keneba           <=46.8          1064    102     86     16
24 months   ki1101329-Keneba           (46.8-48.8]     1064    227    198     29
24 months   ki1101329-Keneba           (48.8-51]       1064    511    481     30
24 months   ki1101329-Keneba           >51             1064    224    217      7
24 months   ki1126311-ZVITAMBO         <=46.8           114     34     28      6
24 months   ki1126311-ZVITAMBO         (46.8-48.8]      114     42     30     12
24 months   ki1126311-ZVITAMBO         (48.8-51]        114     36     33      3
24 months   ki1126311-ZVITAMBO         >51              114      2      2      0
24 months   ki1135781-COHORTS          <=46.8          7465   1407    843    564
24 months   ki1135781-COHORTS          (46.8-48.8]     7465   2501   1877    624
24 months   ki1135781-COHORTS          (48.8-51]       7465   2707   2292    415
24 months   ki1135781-COHORTS          >51             7465    850    767     83

## Results Table

### Parameter: TSM


agecat      studyid              intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------  -------------------  ---------------  ----------  ----------  ----------
6 months    ki1101329-Keneba     <=46.8               NA                0.0750000   0.0278567   0.1221433
6 months    ki1101329-Keneba     (46.8-48.8]          NA                0.0375427   0.0157691   0.0593162
6 months    ki1101329-Keneba     (48.8-51]            NA                0.0140406   0.0049288   0.0231523
6 months    ki1101329-Keneba     >51                  NA                0.0171233   0.0022379   0.0320087
6 months    ki1135781-COHORTS    <=46.8               NA                0.1484983   0.1320610   0.1649356
6 months    ki1135781-COHORTS    (46.8-48.8]          NA                0.0376432   0.0308936   0.0443928
6 months    ki1135781-COHORTS    (48.8-51]            NA                0.0175918   0.0131042   0.0220793
6 months    ki1135781-COHORTS    >51                  NA                0.0069034   0.0018068   0.0119999
9 months    ki1101329-Keneba     <=46.8               NA                0.1382114   0.0771971   0.1992257
9 months    ki1101329-Keneba     (46.8-48.8]          NA                0.0678571   0.0383877   0.0973266
9 months    ki1101329-Keneba     (48.8-51]            NA                0.0253165   0.0130650   0.0375679
9 months    ki1101329-Keneba     >51                  NA                0.0206186   0.0042854   0.0369517
9 months    ki1126311-ZVITAMBO   <=46.8               NA                0.0888252   0.0589703   0.1186802
9 months    ki1126311-ZVITAMBO   (46.8-48.8]          NA                0.0373250   0.0226697   0.0519803
9 months    ki1126311-ZVITAMBO   (48.8-51]            NA                0.0332481   0.0206792   0.0458170
9 months    ki1126311-ZVITAMBO   >51                  NA                0.0301205   0.0041131   0.0561278
9 months    ki1135781-COHORTS    <=46.8               NA                0.2094340   0.1894322   0.2294357
9 months    ki1135781-COHORTS    (46.8-48.8]          NA                0.0784884   0.0684398   0.0885369
9 months    ki1135781-COHORTS    (48.8-51]            NA                0.0328794   0.0265097   0.0392492
9 months    ki1135781-COHORTS    >51                  NA                0.0158898   0.0079123   0.0238674
12 months   ki1101329-Keneba     <=46.8               NA                0.1818182   0.1130678   0.2505685
12 months   ki1101329-Keneba     (46.8-48.8]          NA                0.0733591   0.0415935   0.1051247
12 months   ki1101329-Keneba     (48.8-51]            NA                0.0406780   0.0247317   0.0566243
12 months   ki1101329-Keneba     >51                  NA                0.0340909   0.0121927   0.0559892
12 months   ki1126311-ZVITAMBO   <=46.8               NA                0.1152648   0.0803202   0.1502094
12 months   ki1126311-ZVITAMBO   (46.8-48.8]          NA                0.0692718   0.0482914   0.0902521
12 months   ki1126311-ZVITAMBO   (48.8-51]            NA                0.0363086   0.0220443   0.0505729
12 months   ki1126311-ZVITAMBO   >51                  NA                0.0375940   0.0052577   0.0699303
12 months   ki1135781-COHORTS    <=46.8               NA                0.2821229   0.2588125   0.3054333
12 months   ki1135781-COHORTS    (46.8-48.8]          NA                0.1393410   0.1258166   0.1528654
12 months   ki1135781-COHORTS    (48.8-51]            NA                0.0644928   0.0553284   0.0736571
12 months   ki1135781-COHORTS    >51                  NA                0.0312500   0.0198566   0.0426434
18 months   ki1101329-Keneba     <=46.8               NA                0.1775701   0.1051312   0.2500090
18 months   ki1101329-Keneba     (46.8-48.8]          NA                0.1206226   0.0807876   0.1604576
18 months   ki1101329-Keneba     (48.8-51]            NA                0.0723104   0.0509829   0.0936379
18 months   ki1101329-Keneba     >51                  NA                0.0413534   0.0174162   0.0652906
18 months   ki1135781-COHORTS    <=46.8               NA                0.5412844   0.4872665   0.5953023
18 months   ki1135781-COHORTS    (46.8-48.8]          NA                0.3316646   0.2990133   0.3643159
18 months   ki1135781-COHORTS    (48.8-51]            NA                0.2173547   0.1938871   0.2408223
18 months   ki1135781-COHORTS    >51                  NA                0.1247113   0.0935861   0.1558365
24 months   ki1101329-Keneba     <=46.8               NA                0.1568627   0.0862536   0.2274719
24 months   ki1101329-Keneba     (46.8-48.8]          NA                0.1277533   0.0843078   0.1711988
24 months   ki1101329-Keneba     (48.8-51]            NA                0.0587084   0.0383167   0.0791001
24 months   ki1101329-Keneba     >51                  NA                0.0312500   0.0084540   0.0540460
24 months   ki1135781-COHORTS    <=46.8               NA                0.4008529   0.3752441   0.4264617
24 months   ki1135781-COHORTS    (46.8-48.8]          NA                0.2495002   0.2325400   0.2664604
24 months   ki1135781-COHORTS    (48.8-51]            NA                0.1533062   0.1397332   0.1668793
24 months   ki1135781-COHORTS    >51                  NA                0.0976471   0.0776905   0.1176036


### Parameter: E(Y)


agecat      studyid              intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------  -------------------  ---------------  ----------  ----------  ----------
6 months    ki1101329-Keneba     NA                   NA                0.0252600   0.0242926   0.0262275
6 months    ki1135781-COHORTS    NA                   NA                0.0487778   0.0477467   0.0498090
9 months    ki1101329-Keneba     NA                   NA                0.0437406   0.0418523   0.0456288
9 months    ki1126311-ZVITAMBO   NA                   NA                0.0443299   0.0433971   0.0452627
9 months    ki1135781-COHORTS    NA                   NA                0.0799084   0.0784674   0.0813494
12 months   ki1101329-Keneba     NA                   NA                0.0599676   0.0575898   0.0623453
12 months   ki1126311-ZVITAMBO   NA                   NA                0.0625745   0.0611649   0.0639841
12 months   ki1135781-COHORTS    NA                   NA                0.1263310   0.1244404   0.1282216
18 months   ki1101329-Keneba     NA                   NA                0.0852130   0.0829904   0.0874356
18 months   ki1135781-COHORTS    NA                   NA                0.2745812   0.2700959   0.2790665
24 months   ki1101329-Keneba     NA                   NA                0.0770677   0.0745441   0.0795913
24 months   ki1135781-COHORTS    NA                   NA                0.2258540   0.2236151   0.2280929


### Parameter: RR


agecat      studyid              intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------  -------------------  ---------------  ----------  ----------  ----------
6 months    ki1101329-Keneba     (46.8-48.8]          <=46.8            0.5005688   0.2128278   1.1773329
6 months    ki1101329-Keneba     (48.8-51]            <=46.8            0.1872075   0.0758492   0.4620569
6 months    ki1101329-Keneba     >51                  <=46.8            0.2283105   0.0780968   0.6674494
6 months    ki1135781-COHORTS    (46.8-48.8]          <=46.8            0.2534925   0.2053294   0.3129529
6 months    ki1135781-COHORTS    (48.8-51]            <=46.8            0.1184643   0.0897058   0.1564424
6 months    ki1135781-COHORTS    >51                  <=46.8            0.0464877   0.0220356   0.0980734
9 months    ki1101329-Keneba     (46.8-48.8]          <=46.8            0.4909664   0.2643070   0.9120002
9 months    ki1101329-Keneba     (48.8-51]            <=46.8            0.1831720   0.0951437   0.3526452
9 months    ki1101329-Keneba     >51                  <=46.8            0.1491813   0.0602378   0.3694535
9 months    ki1126311-ZVITAMBO   (46.8-48.8]          <=46.8            0.4202077   0.2506100   0.7045789
9 months    ki1126311-ZVITAMBO   (48.8-51]            <=46.8            0.3743091   0.2257068   0.6207489
9 months    ki1126311-ZVITAMBO   >51                  <=46.8            0.3390983   0.1342542   0.8564920
9 months    ki1135781-COHORTS    (46.8-48.8]          <=46.8            0.3747643   0.3194414   0.4396684
9 months    ki1135781-COHORTS    (48.8-51]            <=46.8            0.1569919   0.1264950   0.1948414
9 months    ki1135781-COHORTS    >51                  <=46.8            0.0758704   0.0455117   0.1264799
12 months   ki1101329-Keneba     (46.8-48.8]          <=46.8            0.4034749   0.2270655   0.7169385
12 months   ki1101329-Keneba     (48.8-51]            <=46.8            0.2237288   0.1297714   0.3857134
12 months   ki1101329-Keneba     >51                  <=46.8            0.1875000   0.0889788   0.3951081
12 months   ki1126311-ZVITAMBO   (46.8-48.8]          <=46.8            0.6009793   0.3915161   0.9225064
12 months   ki1126311-ZVITAMBO   (48.8-51]            <=46.8            0.3150018   0.1917784   0.5174000
12 months   ki1126311-ZVITAMBO   >51                  <=46.8            0.3261532   0.1310211   0.8118992
12 months   ki1135781-COHORTS    (46.8-48.8]          <=46.8            0.4939018   0.4347935   0.5610456
12 months   ki1135781-COHORTS    (48.8-51]            <=46.8            0.2285981   0.1939482   0.2694384
12 months   ki1135781-COHORTS    >51                  <=46.8            0.1107673   0.0762180   0.1609777
18 months   ki1101329-Keneba     (46.8-48.8]          <=46.8            0.6792955   0.4018959   1.1481641
18 months   ki1101329-Keneba     (48.8-51]            <=46.8            0.4072218   0.2461542   0.6736816
18 months   ki1101329-Keneba     >51                  <=46.8            0.2328849   0.1147081   0.4728119
18 months   ki1135781-COHORTS    (46.8-48.8]          <=46.8            0.6127363   0.5325904   0.7049427
18 months   ki1135781-COHORTS    (48.8-51]            <=46.8            0.4015536   0.3466499   0.4651531
18 months   ki1135781-COHORTS    >51                  <=46.8            0.2303989   0.1760946   0.3014495
24 months   ki1101329-Keneba     (46.8-48.8]          <=46.8            0.8144273   0.4632796   1.4317313
24 months   ki1101329-Keneba     (48.8-51]            <=46.8            0.3742661   0.2119612   0.6608527
24 months   ki1101329-Keneba     >51                  <=46.8            0.1992188   0.0845402   0.4694583
24 months   ki1135781-COHORTS    (46.8-48.8]          <=46.8            0.6224234   0.5669861   0.6832810
24 months   ki1135781-COHORTS    (48.8-51]            <=46.8            0.3824501   0.3428936   0.4265700
24 months   ki1135781-COHORTS    >51                  <=46.8            0.2435983   0.1966437   0.3017646


### Parameter: PAR


agecat      studyid              intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki1101329-Keneba     <=46.8               NA                -0.0497400   -0.0968932   -0.0025867
6 months    ki1135781-COHORTS    <=46.8               NA                -0.0997205   -0.1161901   -0.0832509
9 months    ki1101329-Keneba     <=46.8               NA                -0.0944708   -0.1555143   -0.0334273
9 months    ki1126311-ZVITAMBO   <=46.8               NA                -0.0444953   -0.0743648   -0.0146258
9 months    ki1135781-COHORTS    <=46.8               NA                -0.1295256   -0.1495792   -0.1094720
12 months   ki1101329-Keneba     <=46.8               NA                -0.1218506   -0.1906421   -0.0530591
12 months   ki1126311-ZVITAMBO   <=46.8               NA                -0.0526903   -0.0876633   -0.0177173
12 months   ki1135781-COHORTS    <=46.8               NA                -0.1557919   -0.1791788   -0.1324050
18 months   ki1101329-Keneba     <=46.8               NA                -0.0923571   -0.1648301   -0.0198840
18 months   ki1135781-COHORTS    <=46.8               NA                -0.2667032   -0.3209070   -0.2124994
24 months   ki1101329-Keneba     <=46.8               NA                -0.0797951   -0.1504493   -0.0091408
24 months   ki1135781-COHORTS    <=46.8               NA                -0.1749989   -0.2007054   -0.1492924


### Parameter: PAF


agecat      studyid              intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  -------------------  ---------------  -----------  -----------  -----------
6 months    ki1101329-Keneba     <=46.8               NA                -1.9691176   -4.5734178   -0.5817331
6 months    ki1135781-COHORTS    <=46.8               NA                -2.0443819   -2.4075334   -1.7199326
9 months    ki1101329-Keneba     <=46.8               NA                -2.1597981   -3.9237490   -1.0277891
9 months    ki1126311-ZVITAMBO   <=46.8               NA                -1.0037316   -1.8060512   -0.4308151
9 months    ki1135781-COHORTS    <=46.8               NA                -1.6209255   -1.8884474   -1.3781808
12 months   ki1101329-Keneba     <=46.8               NA                -2.0319410   -3.4344484   -1.0730124
12 months   ki1126311-ZVITAMBO   <=46.8               NA                -0.8420412   -1.4964707   -0.3591651
12 months   ki1135781-COHORTS    <=46.8               NA                -1.2332039   -1.4288225   -1.0533405
18 months   ki1101329-Keneba     <=46.8               NA                -1.0838373   -2.1361301   -0.3846293
18 months   ki1135781-COHORTS    <=46.8               NA                -0.9713090   -1.1810833   -0.7817106
24 months   ki1101329-Keneba     <=46.8               NA                -1.0353898   -2.1963528   -0.2961058
24 months   ki1135781-COHORTS    <=46.8               NA                -0.7748320   -0.8933658   -0.6637190


