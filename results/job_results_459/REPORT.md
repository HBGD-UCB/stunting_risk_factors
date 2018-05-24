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

* agecat: 12 months, studyid: ki0047075b-MAL-ED
* agecat: 12 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 12 months, studyid: ki1017093b-PROVIDE
* agecat: 12 months, studyid: ki1017093c-NIH-Crypto
* agecat: 18 months, studyid: ki0047075b-MAL-ED
* agecat: 18 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 18 months, studyid: ki1017093b-PROVIDE
* agecat: 18 months, studyid: ki1017093c-NIH-Crypto
* agecat: 24 months, studyid: ki0047075b-MAL-ED
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 24 months, studyid: ki1017093b-PROVIDE
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto
* agecat: 24 months, studyid: ki1126311-ZVITAMBO
* agecat: 3 months, studyid: ki0047075b-MAL-ED
* agecat: 3 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 3 months, studyid: ki1017093b-PROVIDE
* agecat: 3 months, studyid: ki1017093c-NIH-Crypto
* agecat: 6 months, studyid: ki0047075b-MAL-ED
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 6 months, studyid: ki1017093b-PROVIDE
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto
* agecat: 9 months, studyid: ki0047075b-MAL-ED
* agecat: 9 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 9 months, studyid: ki1017093b-PROVIDE
* agecat: 9 months, studyid: ki1017093c-NIH-Crypto
* agecat: Birth, studyid: ki0047075b-MAL-ED
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002
* agecat: Birth, studyid: ki1000108-IRC
* agecat: Birth, studyid: ki1017093c-NIH-Crypto
* agecat: Birth, studyid: ki1101329-Keneba
* agecat: Birth, studyid: ki1126311-ZVITAMBO
* agecat: Birth, studyid: ki1135781-COHORTS

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness




# Results Detail

## Results Plots
![](/tmp/2b5e2a5a-8b0a-4b69-b480-ced5964a2c19/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/2b5e2a5a-8b0a-4b69-b480-ced5964a2c19/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/2b5e2a5a-8b0a-4b69-b480-ced5964a2c19/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/2b5e2a5a-8b0a-4b69-b480-ced5964a2c19/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Data Summary

agecat      studyid                    A                  n     nA   nAY0   nAY1
----------  -------------------------  ------------  ------  -----  -----  -----
12 months   ki0047075b-MAL-ED          (46.8-48.8]       46     19     14      5
12 months   ki0047075b-MAL-ED          (48.8-51]         46     11     11      0
12 months   ki0047075b-MAL-ED          <=46.8            46     16      8      8
12 months   ki0047075b-MAL-ED          >51               46      0      0      0
12 months   ki1000108-CMC-V-BCS-2002   (46.8-48.8]      102     33     21     12
12 months   ki1000108-CMC-V-BCS-2002   (48.8-51]        102     34     23     11
12 months   ki1000108-CMC-V-BCS-2002   <=46.8           102     33     14     19
12 months   ki1000108-CMC-V-BCS-2002   >51              102      2      1      1
12 months   ki1000108-IRC              (46.8-48.8]      388    107     78     29
12 months   ki1000108-IRC              (48.8-51]        388    143    105     38
12 months   ki1000108-IRC              <=46.8           388     66     33     33
12 months   ki1000108-IRC              >51              388     72     58     14
12 months   ki1017093b-PROVIDE         (46.8-48.8]      153     59     36     23
12 months   ki1017093b-PROVIDE         (48.8-51]        153     64     55      9
12 months   ki1017093b-PROVIDE         <=46.8           153     18      6     12
12 months   ki1017093b-PROVIDE         >51              153     12     12      0
12 months   ki1017093c-NIH-Crypto      (46.8-48.8]      706    269    197     72
12 months   ki1017093c-NIH-Crypto      (48.8-51]        706    226    203     23
12 months   ki1017093c-NIH-Crypto      <=46.8           706    144     69     75
12 months   ki1017093c-NIH-Crypto      >51              706     67     66      1
12 months   ki1101329-Keneba           (46.8-48.8]     1234    259    170     89
12 months   ki1101329-Keneba           (48.8-51]       1234    590    474    116
12 months   ki1101329-Keneba           <=46.8          1234    121     59     62
12 months   ki1101329-Keneba           >51             1234    264    230     34
12 months   ki1126311-ZVITAMBO         (46.8-48.8]     1678    563    428    135
12 months   ki1126311-ZVITAMBO         (48.8-51]       1678    661    534    127
12 months   ki1126311-ZVITAMBO         <=46.8          1678    321    197    124
12 months   ki1126311-ZVITAMBO         >51             1678    133    119     14
12 months   ki1135781-COHORTS          (46.8-48.8]     7607   2519   1462   1057
12 months   ki1135781-COHORTS          (48.8-51]       7607   2760   2056    704
12 months   ki1135781-COHORTS          <=46.8          7607   1432    538    894
12 months   ki1135781-COHORTS          >51             7607    896    755    141
18 months   ki0047075b-MAL-ED          (46.8-48.8]       42     17      8      9
18 months   ki0047075b-MAL-ED          (48.8-51]         42     11     10      1
18 months   ki0047075b-MAL-ED          <=46.8            42     14      5      9
18 months   ki0047075b-MAL-ED          >51               42      0      0      0
18 months   ki1000108-CMC-V-BCS-2002   (46.8-48.8]      102     33     14     19
18 months   ki1000108-CMC-V-BCS-2002   (48.8-51]        102     34     14     20
18 months   ki1000108-CMC-V-BCS-2002   <=46.8           102     33      9     24
18 months   ki1000108-CMC-V-BCS-2002   >51              102      2      0      2
18 months   ki1000108-IRC              (46.8-48.8]      387    107     70     37
18 months   ki1000108-IRC              (48.8-51]        387    140     93     47
18 months   ki1000108-IRC              <=46.8           387     67     26     41
18 months   ki1000108-IRC              >51              387     73     59     14
18 months   ki1017093b-PROVIDE         (46.8-48.8]      141     56     31     25
18 months   ki1017093b-PROVIDE         (48.8-51]        141     59     45     14
18 months   ki1017093b-PROVIDE         <=46.8           141     16      5     11
18 months   ki1017093b-PROVIDE         >51              141     10      8      2
18 months   ki1017093c-NIH-Crypto      (46.8-48.8]      634    240    157     83
18 months   ki1017093c-NIH-Crypto      (48.8-51]        634    200    167     33
18 months   ki1017093c-NIH-Crypto      <=46.8           634    132     60     72
18 months   ki1017093c-NIH-Crypto      >51              634     62     59      3
18 months   ki1101329-Keneba           (46.8-48.8]     1197    257    135    122
18 months   ki1101329-Keneba           (48.8-51]       1197    567    408    159
18 months   ki1101329-Keneba           <=46.8          1197    107     44     63
18 months   ki1101329-Keneba           >51             1197    266    223     43
18 months   ki1126311-ZVITAMBO         (46.8-48.8]      421    150     77     73
18 months   ki1126311-ZVITAMBO         (48.8-51]        421    136     85     51
18 months   ki1126311-ZVITAMBO         <=46.8           421    117     47     70
18 months   ki1126311-ZVITAMBO         >51              421     18     10      8
18 months   ki1135781-COHORTS          (46.8-48.8]     2746    799    232    567
18 months   ki1135781-COHORTS          (48.8-51]       2746   1187    533    654
18 months   ki1135781-COHORTS          <=46.8          2746    327     43    284
18 months   ki1135781-COHORTS          >51             2746    433    254    179
24 months   ki0047075b-MAL-ED          (46.8-48.8]       40     16      6     10
24 months   ki0047075b-MAL-ED          (48.8-51]         40     11     11      0
24 months   ki0047075b-MAL-ED          <=46.8            40     13      6      7
24 months   ki0047075b-MAL-ED          >51               40      0      0      0
24 months   ki1000108-CMC-V-BCS-2002   (46.8-48.8]      103     33     10     23
24 months   ki1000108-CMC-V-BCS-2002   (48.8-51]        103     35     10     25
24 months   ki1000108-CMC-V-BCS-2002   <=46.8           103     33      7     26
24 months   ki1000108-CMC-V-BCS-2002   >51              103      2      0      2
24 months   ki1000108-IRC              (46.8-48.8]      390    107     65     42
24 months   ki1000108-IRC              (48.8-51]        390    143     89     54
24 months   ki1000108-IRC              <=46.8           390     67     27     40
24 months   ki1000108-IRC              >51              390     73     51     22
24 months   ki1017093b-PROVIDE         (46.8-48.8]      149     57     30     27
24 months   ki1017093b-PROVIDE         (48.8-51]        149     62     52     10
24 months   ki1017093b-PROVIDE         <=46.8           149     18      7     11
24 months   ki1017093b-PROVIDE         >51              149     12     11      1
24 months   ki1017093c-NIH-Crypto      (46.8-48.8]      514    196    141     55
24 months   ki1017093c-NIH-Crypto      (48.8-51]        514    157    128     29
24 months   ki1017093c-NIH-Crypto      <=46.8           514    105     58     47
24 months   ki1017093c-NIH-Crypto      >51              514     56     55      1
24 months   ki1101329-Keneba           (46.8-48.8]     1064    227    120    107
24 months   ki1101329-Keneba           (48.8-51]       1064    511    367    144
24 months   ki1101329-Keneba           <=46.8          1064    102     54     48
24 months   ki1101329-Keneba           >51             1064    224    182     42
24 months   ki1126311-ZVITAMBO         (46.8-48.8]      114     42     17     25
24 months   ki1126311-ZVITAMBO         (48.8-51]        114     36     21     15
24 months   ki1126311-ZVITAMBO         <=46.8           114     34      8     26
24 months   ki1126311-ZVITAMBO         >51              114      2      1      1
24 months   ki1135781-COHORTS          (46.8-48.8]     7465   2501   1056   1445
24 months   ki1135781-COHORTS          (48.8-51]       7465   2707   1515   1192
24 months   ki1135781-COHORTS          <=46.8          7465   1407    373   1034
24 months   ki1135781-COHORTS          >51             7465    850    591    259
3 months    ki0047075b-MAL-ED          (46.8-48.8]       53     23     22      1
3 months    ki0047075b-MAL-ED          (48.8-51]         53     11     11      0
3 months    ki0047075b-MAL-ED          <=46.8            53     19     12      7
3 months    ki0047075b-MAL-ED          >51               53      0      0      0
3 months    ki1000108-CMC-V-BCS-2002   (46.8-48.8]      101     33     28      5
3 months    ki1000108-CMC-V-BCS-2002   (48.8-51]        101     34     27      7
3 months    ki1000108-CMC-V-BCS-2002   <=46.8           101     32     17     15
3 months    ki1000108-CMC-V-BCS-2002   >51              101      2      2      0
3 months    ki1000108-IRC              (46.8-48.8]      388    106     79     27
3 months    ki1000108-IRC              (48.8-51]        388    142    122     20
3 months    ki1000108-IRC              <=46.8           388     68     32     36
3 months    ki1000108-IRC              >51              388     72     67      5
3 months    ki1017093b-PROVIDE         (46.8-48.8]      168     66     56     10
3 months    ki1017093b-PROVIDE         (48.8-51]        168     68     66      2
3 months    ki1017093b-PROVIDE         <=46.8           168     21     13      8
3 months    ki1017093b-PROVIDE         >51              168     13     13      0
3 months    ki1017093c-NIH-Crypto      (46.8-48.8]      728    281    222     59
3 months    ki1017093c-NIH-Crypto      (48.8-51]        728    234    224     10
3 months    ki1017093c-NIH-Crypto      <=46.8           728    145     58     87
3 months    ki1017093c-NIH-Crypto      >51              728     68     68      0
3 months    ki1101329-Keneba           (46.8-48.8]     1428    312    256     56
3 months    ki1101329-Keneba           (48.8-51]       1428    672    628     44
3 months    ki1101329-Keneba           <=46.8          1428    137     79     58
3 months    ki1101329-Keneba           >51             1428    307    299      8
3 months    ki1126311-ZVITAMBO         (46.8-48.8]     2247    722    593    129
3 months    ki1126311-ZVITAMBO         (48.8-51]       2247    905    811     94
3 months    ki1126311-ZVITAMBO         <=46.8          2247    405    252    153
3 months    ki1126311-ZVITAMBO         >51             2247    215    203     12
3 months    ki1135781-COHORTS          (46.8-48.8]     9695   3220   2865    355
3 months    ki1135781-COHORTS          (48.8-51]       9695   3483   3309    174
3 months    ki1135781-COHORTS          <=46.8          9695   1921   1046    875
3 months    ki1135781-COHORTS          >51             9695   1071   1057     14
6 months    ki0047075b-MAL-ED          (46.8-48.8]       49     22     19      3
6 months    ki0047075b-MAL-ED          (48.8-51]         49     11     11      0
6 months    ki0047075b-MAL-ED          <=46.8            49     16     12      4
6 months    ki0047075b-MAL-ED          >51               49      0      0      0
6 months    ki1000108-CMC-V-BCS-2002   (46.8-48.8]      101     33     25      8
6 months    ki1000108-CMC-V-BCS-2002   (48.8-51]        101     35     28      7
6 months    ki1000108-CMC-V-BCS-2002   <=46.8           101     31     18     13
6 months    ki1000108-CMC-V-BCS-2002   >51              101      2      1      1
6 months    ki1000108-IRC              (46.8-48.8]      389    107     82     25
6 months    ki1000108-IRC              (48.8-51]        389    143    119     24
6 months    ki1000108-IRC              <=46.8           389     66     32     34
6 months    ki1000108-IRC              >51              389     73     61     12
6 months    ki1017093b-PROVIDE         (46.8-48.8]      153     57     43     14
6 months    ki1017093b-PROVIDE         (48.8-51]        153     64     61      3
6 months    ki1017093b-PROVIDE         <=46.8           153     20      9     11
6 months    ki1017093b-PROVIDE         >51              153     12     12      0
6 months    ki1017093c-NIH-Crypto      (46.8-48.8]      715    266    210     56
6 months    ki1017093c-NIH-Crypto      (48.8-51]        715    235    219     16
6 months    ki1017093c-NIH-Crypto      <=46.8           715    146     69     77
6 months    ki1017093c-NIH-Crypto      >51              715     68     67      1
6 months    ki1101329-Keneba           (46.8-48.8]     1346    293    229     64
6 months    ki1101329-Keneba           (48.8-51]       1346    641    577     64
6 months    ki1101329-Keneba           <=46.8          1346    120     86     34
6 months    ki1101329-Keneba           >51             1346    292    274     18
6 months    ki1126311-ZVITAMBO         (46.8-48.8]     2033    671    573     98
6 months    ki1126311-ZVITAMBO         (48.8-51]       2033    821    730     91
6 months    ki1126311-ZVITAMBO         <=46.8          2033    350    226    124
6 months    ki1126311-ZVITAMBO         >51             2033    191    172     19
6 months    ki1135781-COHORTS          (46.8-48.8]     9164   3055   2418    637
6 months    ki1135781-COHORTS          (48.8-51]       9164   3297   2959    338
6 months    ki1135781-COHORTS          <=46.8          9164   1798    957    841
6 months    ki1135781-COHORTS          >51             9164   1014    973     41
9 months    ki0047075b-MAL-ED          (46.8-48.8]       47     20     15      5
9 months    ki0047075b-MAL-ED          (48.8-51]         47     11     11      0
9 months    ki0047075b-MAL-ED          <=46.8            47     16      9      7
9 months    ki0047075b-MAL-ED          >51               47      0      0      0
9 months    ki1000108-CMC-V-BCS-2002   (46.8-48.8]      102     33     28      5
9 months    ki1000108-CMC-V-BCS-2002   (48.8-51]        102     35     26      9
9 months    ki1000108-CMC-V-BCS-2002   <=46.8           102     32     21     11
9 months    ki1000108-CMC-V-BCS-2002   >51              102      2      2      0
9 months    ki1000108-IRC              (46.8-48.8]      389    107     80     27
9 months    ki1000108-IRC              (48.8-51]        389    143    111     32
9 months    ki1000108-IRC              <=46.8           389     66     33     33
9 months    ki1000108-IRC              >51              389     73     60     13
9 months    ki1017093b-PROVIDE         (46.8-48.8]      158     60     42     18
9 months    ki1017093b-PROVIDE         (48.8-51]        158     67     59      8
9 months    ki1017093b-PROVIDE         <=46.8           158     19      8     11
9 months    ki1017093b-PROVIDE         >51              158     12     12      0
9 months    ki1017093c-NIH-Crypto      (46.8-48.8]      706    272    204     68
9 months    ki1017093c-NIH-Crypto      (48.8-51]        706    229    210     19
9 months    ki1017093c-NIH-Crypto      <=46.8           706    138     63     75
9 months    ki1017093c-NIH-Crypto      >51              706     67     65      2
9 months    ki1101329-Keneba           (46.8-48.8]     1326    280    197     83
9 months    ki1101329-Keneba           (48.8-51]       1326    632    549     83
9 months    ki1101329-Keneba           <=46.8          1326    123     76     47
9 months    ki1101329-Keneba           >51             1326    291    268     23
9 months    ki1126311-ZVITAMBO         (46.8-48.8]     1940    643    511    132
9 months    ki1126311-ZVITAMBO         (48.8-51]       1940    782    664    118
9 months    ki1126311-ZVITAMBO         <=46.8          1940    349    235    114
9 months    ki1126311-ZVITAMBO         >51             1940    166    150     16
9 months    ki1135781-COHORTS          (46.8-48.8]     8297   2752   1892    860
9 months    ki1135781-COHORTS          (48.8-51]       8297   3011   2512    499
9 months    ki1135781-COHORTS          <=46.8          8297   1590    734    856
9 months    ki1135781-COHORTS          >51             8297    944    858     86
Birth       ki0047075b-MAL-ED          (46.8-48.8]       54     23     23      0
Birth       ki0047075b-MAL-ED          (48.8-51]         54     11     11      0
Birth       ki0047075b-MAL-ED          <=46.8            54     20     11      9
Birth       ki0047075b-MAL-ED          >51               54      0      0      0
Birth       ki1000108-CMC-V-BCS-2002   (46.8-48.8]       89     32     32      0
Birth       ki1000108-CMC-V-BCS-2002   (48.8-51]         89     34     34      0
Birth       ki1000108-CMC-V-BCS-2002   <=46.8            89     22      6     16
Birth       ki1000108-CMC-V-BCS-2002   >51               89      1      1      0
Birth       ki1000108-IRC              (46.8-48.8]      388    107    107      0
Birth       ki1000108-IRC              (48.8-51]        388    143    143      0
Birth       ki1000108-IRC              <=46.8           388     65     20     45
Birth       ki1000108-IRC              >51              388     73     73      0
Birth       ki1017093b-PROVIDE         (46.8-48.8]        0      0      0      0
Birth       ki1017093b-PROVIDE         (48.8-51]          0      0      0      0
Birth       ki1017093b-PROVIDE         <=46.8             0      0      0      0
Birth       ki1017093b-PROVIDE         >51                0      0      0      0
Birth       ki1017093c-NIH-Crypto      (46.8-48.8]       27     10     10      0
Birth       ki1017093c-NIH-Crypto      (48.8-51]         27      6      6      0
Birth       ki1017093c-NIH-Crypto      <=46.8            27     11      6      5
Birth       ki1017093c-NIH-Crypto      >51               27      0      0      0
Birth       ki1101329-Keneba           (46.8-48.8]     1541    337    337      0
Birth       ki1101329-Keneba           (48.8-51]       1541    730    730      0
Birth       ki1101329-Keneba           <=46.8          1541    143     61     82
Birth       ki1101329-Keneba           >51             1541    331    331      0
Birth       ki1126311-ZVITAMBO         (46.8-48.8]     3449   1095   1095      0
Birth       ki1126311-ZVITAMBO         (48.8-51]       3449   1410   1410      0
Birth       ki1126311-ZVITAMBO         <=46.8          3449    613    253    360
Birth       ki1126311-ZVITAMBO         >51             3449    331    331      0
Birth       ki1135781-COHORTS          (46.8-48.8]    10097   3341   3341      0
Birth       ki1135781-COHORTS          (48.8-51]      10097   3607   3607      0
Birth       ki1135781-COHORTS          <=46.8         10097   2015   1017    998
Birth       ki1135781-COHORTS          >51            10097   1134   1134      0

## Results Table

### Parameter: TSM


agecat      studyid              intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------  -------------------  ---------------  ----------  ----------  ----------
12 months   ki1000108-IRC        (46.8-48.8]          NA                0.2710280   0.1866986   0.3553575
12 months   ki1000108-IRC        (48.8-51]            NA                0.2657343   0.1932421   0.3382264
12 months   ki1000108-IRC        <=46.8               NA                0.5000000   0.3792168   0.6207832
12 months   ki1000108-IRC        >51                  NA                0.1944444   0.1029093   0.2859796
12 months   ki1101329-Keneba     (46.8-48.8]          NA                0.3436293   0.2857673   0.4014914
12 months   ki1101329-Keneba     (48.8-51]            NA                0.1966102   0.1645280   0.2286924
12 months   ki1101329-Keneba     <=46.8               NA                0.5123967   0.4232987   0.6014947
12 months   ki1101329-Keneba     >51                  NA                0.1287879   0.0883655   0.1692102
12 months   ki1126311-ZVITAMBO   (46.8-48.8]          NA                0.2397869   0.2045089   0.2750648
12 months   ki1126311-ZVITAMBO   (48.8-51]            NA                0.1921331   0.1620898   0.2221764
12 months   ki1126311-ZVITAMBO   <=46.8               NA                0.3862928   0.3330129   0.4395728
12 months   ki1126311-ZVITAMBO   >51                  NA                0.1052632   0.0530911   0.1574352
12 months   ki1135781-COHORTS    (46.8-48.8]          NA                0.4196110   0.4003381   0.4388838
12 months   ki1135781-COHORTS    (48.8-51]            NA                0.2550725   0.2388091   0.2713358
12 months   ki1135781-COHORTS    <=46.8               NA                0.6243017   0.5992162   0.6493871
12 months   ki1135781-COHORTS    >51                  NA                0.1573661   0.1335211   0.1812111
18 months   ki1000108-IRC        (46.8-48.8]          NA                0.3457944   0.2555575   0.4360313
18 months   ki1000108-IRC        (48.8-51]            NA                0.3357143   0.2573879   0.4140407
18 months   ki1000108-IRC        <=46.8               NA                0.6119403   0.4951044   0.7287762
18 months   ki1000108-IRC        >51                  NA                0.1917808   0.1013502   0.2822115
18 months   ki1101329-Keneba     (46.8-48.8]          NA                0.4747082   0.4136313   0.5357850
18 months   ki1101329-Keneba     (48.8-51]            NA                0.2804233   0.2434333   0.3174132
18 months   ki1101329-Keneba     <=46.8               NA                0.5887850   0.4955132   0.6820569
18 months   ki1101329-Keneba     >51                  NA                0.1616541   0.1173959   0.2059123
18 months   ki1126311-ZVITAMBO   (46.8-48.8]          NA                0.4866667   0.4065848   0.5667486
18 months   ki1126311-ZVITAMBO   (48.8-51]            NA                0.3750000   0.2935388   0.4564612
18 months   ki1126311-ZVITAMBO   <=46.8               NA                0.5982906   0.5093534   0.6872278
18 months   ki1126311-ZVITAMBO   >51                  NA                0.4444444   0.2146176   0.6742713
18 months   ki1135781-COHORTS    (46.8-48.8]          NA                0.7096370   0.6781565   0.7411176
18 months   ki1135781-COHORTS    (48.8-51]            NA                0.5509688   0.5226677   0.5792699
18 months   ki1135781-COHORTS    <=46.8               NA                0.8685015   0.8318663   0.9051368
18 months   ki1135781-COHORTS    >51                  NA                0.4133949   0.3670034   0.4597865
24 months   ki1000108-IRC        (46.8-48.8]          NA                0.3925234   0.2998807   0.4851661
24 months   ki1000108-IRC        (48.8-51]            NA                0.3776224   0.2980626   0.4571821
24 months   ki1000108-IRC        <=46.8               NA                0.5970149   0.4794155   0.7146144
24 months   ki1000108-IRC        >51                  NA                0.3013699   0.1959754   0.4067643
24 months   ki1101329-Keneba     (46.8-48.8]          NA                0.4713656   0.4063982   0.5363331
24 months   ki1101329-Keneba     (48.8-51]            NA                0.2818004   0.2427761   0.3208247
24 months   ki1101329-Keneba     <=46.8               NA                0.4705882   0.3736780   0.5674984
24 months   ki1101329-Keneba     >51                  NA                0.1875000   0.1363624   0.2386376
24 months   ki1135781-COHORTS    (46.8-48.8]          NA                0.5777689   0.5584104   0.5971274
24 months   ki1135781-COHORTS    (48.8-51]            NA                0.4403399   0.4216378   0.4590419
24 months   ki1135781-COHORTS    <=46.8               NA                0.7348969   0.7118321   0.7579618
24 months   ki1135781-COHORTS    >51                  NA                0.3047059   0.2737607   0.3356510
3 months    ki1000108-IRC        (46.8-48.8]          NA                0.2547170   0.1716659   0.3377680
3 months    ki1000108-IRC        (48.8-51]            NA                0.1408451   0.0835561   0.1981340
3 months    ki1000108-IRC        <=46.8               NA                0.5294118   0.4106241   0.6481994
3 months    ki1000108-IRC        >51                  NA                0.0694444   0.0106506   0.1282383
3 months    ki1101329-Keneba     (46.8-48.8]          NA                0.1794872   0.1368899   0.2220845
3 months    ki1101329-Keneba     (48.8-51]            NA                0.0654762   0.0467671   0.0841853
3 months    ki1101329-Keneba     <=46.8               NA                0.4233577   0.3405926   0.5061227
3 months    ki1101329-Keneba     >51                  NA                0.0260586   0.0082318   0.0438854
3 months    ki1126311-ZVITAMBO   (46.8-48.8]          NA                0.1786704   0.1507217   0.2066190
3 months    ki1126311-ZVITAMBO   (48.8-51]            NA                0.1038674   0.0839860   0.1237488
3 months    ki1126311-ZVITAMBO   <=46.8               NA                0.3777778   0.3305488   0.4250067
3 months    ki1126311-ZVITAMBO   >51                  NA                0.0558140   0.0251219   0.0865060
3 months    ki1135781-COHORTS    (46.8-48.8]          NA                0.1102484   0.0994300   0.1210669
3 months    ki1135781-COHORTS    (48.8-51]            NA                0.0499569   0.0427215   0.0571923
3 months    ki1135781-COHORTS    <=46.8               NA                0.4554919   0.4332204   0.4777634
3 months    ki1135781-COHORTS    >51                  NA                0.0130719   0.0062691   0.0198747
6 months    ki1000108-IRC        (46.8-48.8]          NA                0.2336449   0.1533647   0.3139250
6 months    ki1000108-IRC        (48.8-51]            NA                0.1678322   0.1065009   0.2291635
6 months    ki1000108-IRC        <=46.8               NA                0.5151515   0.3944242   0.6358788
6 months    ki1000108-IRC        >51                  NA                0.1643836   0.0792544   0.2495127
6 months    ki1101329-Keneba     (46.8-48.8]          NA                0.2184300   0.1711023   0.2657578
6 months    ki1101329-Keneba     (48.8-51]            NA                0.0998440   0.0766273   0.1230607
6 months    ki1101329-Keneba     <=46.8               NA                0.2833333   0.2026793   0.3639874
6 months    ki1101329-Keneba     >51                  NA                0.0616438   0.0340478   0.0892399
6 months    ki1126311-ZVITAMBO   (46.8-48.8]          NA                0.1460507   0.1193230   0.1727784
6 months    ki1126311-ZVITAMBO   (48.8-51]            NA                0.1108404   0.0893610   0.1323198
6 months    ki1126311-ZVITAMBO   <=46.8               NA                0.3542857   0.3041649   0.4044065
6 months    ki1126311-ZVITAMBO   >51                  NA                0.0994764   0.0570198   0.1419331
6 months    ki1135781-COHORTS    (46.8-48.8]          NA                0.2085106   0.1941043   0.2229170
6 months    ki1135781-COHORTS    (48.8-51]            NA                0.1025174   0.0921631   0.1128718
6 months    ki1135781-COHORTS    <=46.8               NA                0.4677419   0.4446776   0.4908063
6 months    ki1135781-COHORTS    >51                  NA                0.0404339   0.0283094   0.0525584
9 months    ki1000108-IRC        (46.8-48.8]          NA                0.2523364   0.1699306   0.3347423
9 months    ki1000108-IRC        (48.8-51]            NA                0.2237762   0.1553788   0.2921736
9 months    ki1000108-IRC        <=46.8               NA                0.5000000   0.3792172   0.6207828
9 months    ki1000108-IRC        >51                  NA                0.1780822   0.0902062   0.2659581
9 months    ki1101329-Keneba     (46.8-48.8]          NA                0.2964286   0.2429171   0.3499401
9 months    ki1101329-Keneba     (48.8-51]            NA                0.1313291   0.1049863   0.1576719
9 months    ki1101329-Keneba     <=46.8               NA                0.3821138   0.2962105   0.4680171
9 months    ki1101329-Keneba     >51                  NA                0.0790378   0.0480277   0.1100479
9 months    ki1126311-ZVITAMBO   (46.8-48.8]          NA                0.2052877   0.1740599   0.2365155
9 months    ki1126311-ZVITAMBO   (48.8-51]            NA                0.1508951   0.1258008   0.1759894
9 months    ki1126311-ZVITAMBO   <=46.8               NA                0.3266476   0.2774313   0.3758638
9 months    ki1126311-ZVITAMBO   >51                  NA                0.0963855   0.0514796   0.1412915
9 months    ki1135781-COHORTS    (46.8-48.8]          NA                0.3125000   0.2951815   0.3298185
9 months    ki1135781-COHORTS    (48.8-51]            NA                0.1657257   0.1524435   0.1790078
9 months    ki1135781-COHORTS    <=46.8               NA                0.5383648   0.5138593   0.5628703
9 months    ki1135781-COHORTS    >51                  NA                0.0911017   0.0727444   0.1094590


### Parameter: E(Y)


agecat      studyid              intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------  -------------------  ---------------  ----------  ----------  ----------
12 months   ki1000108-IRC        NA                   NA                0.2938144   0.2841048   0.3035240
12 months   ki1101329-Keneba     NA                   NA                0.2439222   0.2375433   0.2503011
12 months   ki1126311-ZVITAMBO   NA                   NA                0.2383790   0.2345403   0.2422177
12 months   ki1135781-COHORTS    NA                   NA                0.3675562   0.3641405   0.3709719
18 months   ki1000108-IRC        NA                   NA                0.3591731   0.3463218   0.3720244
18 months   ki1101329-Keneba     NA                   NA                0.3233083   0.3157259   0.3308907
18 months   ki1126311-ZVITAMBO   NA                   NA                0.4798100   0.4715165   0.4881034
18 months   ki1135781-COHORTS    NA                   NA                0.6132556   0.6081762   0.6183351
24 months   ki1000108-IRC        NA                   NA                0.4051282   0.3958796   0.4143768
24 months   ki1101329-Keneba     NA                   NA                0.3204887   0.3140537   0.3269237
24 months   ki1135781-COHORTS    NA                   NA                0.5264568   0.5234678   0.5294458
3 months    ki1000108-IRC        NA                   NA                0.2268041   0.2115113   0.2420969
3 months    ki1101329-Keneba     NA                   NA                0.1162465   0.1103572   0.1221358
3 months    ki1126311-ZVITAMBO   NA                   NA                0.1726747   0.1683753   0.1769740
3 months    ki1135781-COHORTS    NA                   NA                0.1462610   0.1431343   0.1493876
6 months    ki1000108-IRC        NA                   NA                0.2442159   0.2316984   0.2567335
6 months    ki1101329-Keneba     NA                   NA                0.1337296   0.1298642   0.1375949
6 months    ki1126311-ZVITAMBO   NA                   NA                0.1633055   0.1594478   0.1671631
6 months    ki1135781-COHORTS    NA                   NA                0.2026408   0.1997222   0.2055594
9 months    ki1000108-IRC        NA                   NA                0.2699229   0.2592840   0.2805617
9 months    ki1101329-Keneba     NA                   NA                0.1779789   0.1725908   0.1833670
9 months    ki1126311-ZVITAMBO   NA                   NA                0.1958763   0.1928027   0.1989499
9 months    ki1135781-COHORTS    NA                   NA                0.2773292   0.2741422   0.2805161


### Parameter: RR


agecat      studyid              intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------  -------------------  ---------------  ----------  ----------  ----------
12 months   ki1000108-IRC        (48.8-51]            (46.8-48.8]       0.9804678   0.6482189   1.4830132
12 months   ki1000108-IRC        <=46.8               (46.8-48.8]       1.8448276   1.2441768   2.7354544
12 months   ki1000108-IRC        >51                  (46.8-48.8]       0.7174330   0.4080512   1.2613859
12 months   ki1101329-Keneba     (48.8-51]            (46.8-48.8]       0.5721577   0.4525671   0.7233500
12 months   ki1101329-Keneba     <=46.8               (46.8-48.8]       1.4911320   1.1705608   1.8994952
12 months   ki1101329-Keneba     >51                  (46.8-48.8]       0.3747872   0.2624801   0.5351471
12 months   ki1126311-ZVITAMBO   (48.8-51]            (46.8-48.8]       0.8012663   0.6464491   0.9931606
12 months   ki1126311-ZVITAMBO   <=46.8               (46.8-48.8]       1.6109842   1.3167685   1.9709388
12 months   ki1126311-ZVITAMBO   >51                  (46.8-48.8]       0.4389864   0.2617682   0.7361818
12 months   ki1135781-COHORTS    (48.8-51]            (46.8-48.8]       0.6078785   0.5619396   0.6575728
12 months   ki1135781-COHORTS    <=46.8               (46.8-48.8]       1.4878107   1.3997308   1.5814332
12 months   ki1135781-COHORTS    >51                  (46.8-48.8]       0.3750285   0.3201111   0.4393674
18 months   ki1000108-IRC        (48.8-51]            (46.8-48.8]       0.9708494   0.6841142   1.3777649
18 months   ki1000108-IRC        <=46.8               (46.8-48.8]       1.7696652   1.2807518   2.4452161
18 months   ki1000108-IRC        >51                  (46.8-48.8]       0.5546094   0.3235455   0.9506903
18 months   ki1101329-Keneba     (48.8-51]            (46.8-48.8]       0.5907277   0.4913175   0.7102521
18 months   ki1101329-Keneba     <=46.8               (46.8-48.8]       1.2403095   1.0113442   1.5211119
18 months   ki1101329-Keneba     >51                  (46.8-48.8]       0.3405337   0.2516416   0.4608268
18 months   ki1126311-ZVITAMBO   (48.8-51]            (46.8-48.8]       0.7705479   0.5867412   1.0119353
18 months   ki1126311-ZVITAMBO   <=46.8               (46.8-48.8]       1.2293642   0.9848590   1.5345713
18 months   ki1126311-ZVITAMBO   >51                  (46.8-48.8]       0.9132420   0.5307762   1.5713045
18 months   ki1135781-COHORTS    (48.8-51]            (46.8-48.8]       0.7764093   0.7254624   0.8309341
18 months   ki1135781-COHORTS    <=46.8               (46.8-48.8]       1.2238672   1.1511952   1.3011268
18 months   ki1135781-COHORTS    >51                  (46.8-48.8]       0.5825442   0.5163238   0.6572575
24 months   ki1000108-IRC        (48.8-51]            (46.8-48.8]       0.9620380   0.7011198   1.3200555
24 months   ki1000108-IRC        <=46.8               (46.8-48.8]       1.5209666   1.1184332   2.0683752
24 months   ki1000108-IRC        >51                  (46.8-48.8]       0.7677756   0.5035024   1.1707579
24 months   ki1101329-Keneba     (48.8-51]            (46.8-48.8]       0.5978382   0.4917344   0.7268365
24 months   ki1101329-Keneba     <=46.8               (46.8-48.8]       0.9983507   0.7792277   1.2790923
24 months   ki1101329-Keneba     >51                  (46.8-48.8]       0.3977804   0.2930426   0.5399530
24 months   ki1135781-COHORTS    (48.8-51]            (46.8-48.8]       0.7621384   0.7220043   0.8045034
24 months   ki1135781-COHORTS    <=46.8               (46.8-48.8]       1.2719566   1.2148822   1.3317123
24 months   ki1135781-COHORTS    >51                  (46.8-48.8]       0.5273837   0.4738954   0.5869092
3 months    ki1000108-IRC        (48.8-51]            (46.8-48.8]       0.5529473   0.3283104   0.9312854
3 months    ki1000108-IRC        <=46.8               (46.8-48.8]       2.0784314   1.3990827   3.0876494
3 months    ki1000108-IRC        >51                  (46.8-48.8]       0.2726337   0.1100443   0.6754475
3 months    ki1101329-Keneba     (48.8-51]            (46.8-48.8]       0.3647959   0.2516133   0.5288912
3 months    ki1101329-Keneba     <=46.8               (46.8-48.8]       2.3587070   1.7343527   3.2078242
3 months    ki1101329-Keneba     >51                  (46.8-48.8]       0.1451838   0.0703794   0.2994960
3 months    ki1126311-ZVITAMBO   (48.8-51]            (46.8-48.8]       0.5813354   0.4540145   0.7443614
3 months    ki1126311-ZVITAMBO   <=46.8               (46.8-48.8]       2.1143842   1.7306853   2.5831503
3 months    ki1126311-ZVITAMBO   >51                  (46.8-48.8]       0.3123851   0.1763590   0.5533283
3 months    ki1135781-COHORTS    (48.8-51]            (46.8-48.8]       0.4531305   0.3804047   0.5397601
3 months    ki1135781-COHORTS    <=46.8               (46.8-48.8]       4.1315043   3.7024948   4.6102233
3 months    ki1135781-COHORTS    >51                  (46.8-48.8]       0.1185678   0.0698186   0.2013549
6 months    ki1000108-IRC        (48.8-51]            (46.8-48.8]       0.7183217   0.4349882   1.1862069
6 months    ki1000108-IRC        <=46.8               (46.8-48.8]       2.2048485   1.4546249   3.3420002
6 months    ki1000108-IRC        >51                  (46.8-48.8]       0.7035616   0.3779139   1.3098194
6 months    ki1101329-Keneba     (48.8-51]            (46.8-48.8]       0.4570983   0.3326420   0.6281193
6 months    ki1101329-Keneba     <=46.8               (46.8-48.8]       1.2971354   0.9070268   1.8550281
6 months    ki1101329-Keneba     >51                  (46.8-48.8]       0.2822132   0.1716256   0.4640583
6 months    ki1126311-ZVITAMBO   (48.8-51]            (46.8-48.8]       0.7589177   0.5813504   0.9907210
6 months    ki1126311-ZVITAMBO   <=46.8               (46.8-48.8]       2.4257726   1.9248368   3.0570762
6 months    ki1126311-ZVITAMBO   >51                  (46.8-48.8]       0.6811091   0.4280936   1.0836639
6 months    ki1135781-COHORTS    (48.8-51]            (46.8-48.8]       0.4916653   0.4350349   0.5556675
6 months    ki1135781-COHORTS    <=46.8               (46.8-48.8]       2.2432521   2.0606959   2.4419810
6 months    ki1135781-COHORTS    >51                  (46.8-48.8]       0.1939178   0.1425537   0.2637892
9 months    ki1000108-IRC        (48.8-51]            (46.8-48.8]       0.8868169   0.5669920   1.3870464
9 months    ki1000108-IRC        <=46.8               (46.8-48.8]       1.9814815   1.3200100   2.9744235
9 months    ki1000108-IRC        >51                  (46.8-48.8]       0.7057331   0.3905294   1.2753438
9 months    ki1101329-Keneba     (48.8-51]            (46.8-48.8]       0.4430380   0.3382547   0.5802806
9 months    ki1101329-Keneba     <=46.8               (46.8-48.8]       1.2890587   0.9661788   1.7198393
9 months    ki1101329-Keneba     >51                  (46.8-48.8]       0.2666335   0.1731213   0.4106569
9 months    ki1126311-ZVITAMBO   (48.8-51]            (46.8-48.8]       0.7350422   0.5867200   0.9208602
9 months    ki1126311-ZVITAMBO   <=46.8               (46.8-48.8]       1.5911696   1.2844923   1.9710671
9 months    ki1126311-ZVITAMBO   >51                  (46.8-48.8]       0.4695144   0.2876072   0.7664753
9 months    ki1135781-COHORTS    (48.8-51]            (46.8-48.8]       0.5303222   0.4810853   0.5845982
9 months    ki1135781-COHORTS    <=46.8               (46.8-48.8]       1.7227673   1.6035431   1.8508559
9 months    ki1135781-COHORTS    >51                  (46.8-48.8]       0.2915254   0.2365458   0.3592839


### Parameter: PAR


agecat      studyid              intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  -------------------  ---------------  -----------  -----------  -----------
12 months   ki1000108-IRC        (46.8-48.8]          NA                 0.0227864   -0.0621002    0.1076729
12 months   ki1101329-Keneba     (46.8-48.8]          NA                -0.0997071   -0.1579198   -0.0414945
12 months   ki1126311-ZVITAMBO   (46.8-48.8]          NA                -0.0014078   -0.0368941    0.0340784
12 months   ki1135781-COHORTS    (46.8-48.8]          NA                -0.0520548   -0.0716279   -0.0324816
18 months   ki1000108-IRC        (46.8-48.8]          NA                 0.0133787   -0.0777687    0.1045262
18 months   ki1101329-Keneba     (46.8-48.8]          NA                -0.1513999   -0.2129456   -0.0898542
18 months   ki1126311-ZVITAMBO   (46.8-48.8]          NA                -0.0068567   -0.0873669    0.0736535
18 months   ki1135781-COHORTS    (46.8-48.8]          NA                -0.0963814   -0.1282691   -0.0644937
24 months   ki1000108-IRC        (46.8-48.8]          NA                 0.0126048   -0.0804984    0.1057081
24 months   ki1101329-Keneba     (46.8-48.8]          NA                -0.1508769   -0.2161623   -0.0855915
24 months   ki1135781-COHORTS    (46.8-48.8]          NA                -0.0513121   -0.0709000   -0.0317242
3 months    ki1000108-IRC        (46.8-48.8]          NA                -0.0279129   -0.1123602    0.0565344
3 months    ki1101329-Keneba     (46.8-48.8]          NA                -0.0632407   -0.1062432   -0.0202382
3 months    ki1126311-ZVITAMBO   (46.8-48.8]          NA                -0.0059957   -0.0342731    0.0222817
3 months    ki1135781-COHORTS    (46.8-48.8]          NA                 0.0360125    0.0247514    0.0472737
6 months    ki1000108-IRC        (46.8-48.8]          NA                 0.0105711   -0.0706791    0.0918213
6 months    ki1101329-Keneba     (46.8-48.8]          NA                -0.0847005   -0.1321858   -0.0372151
6 months    ki1126311-ZVITAMBO   (46.8-48.8]          NA                 0.0172548   -0.0097499    0.0442594
6 months    ki1135781-COHORTS    (46.8-48.8]          NA                -0.0058699   -0.0205688    0.0088291
9 months    ki1000108-IRC        (46.8-48.8]          NA                 0.0175864   -0.0655034    0.1006762
9 months    ki1101329-Keneba     (46.8-48.8]          NA                -0.1184497   -0.1722318   -0.0646676
9 months    ki1126311-ZVITAMBO   (46.8-48.8]          NA                -0.0094114   -0.0407901    0.0219672
9 months    ki1135781-COHORTS    (46.8-48.8]          NA                -0.0351708   -0.0527802   -0.0175615


### Parameter: PAF


agecat      studyid              intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  -------------------  ---------------  -----------  -----------  -----------
12 months   ki1000108-IRC        (46.8-48.8]          NA                 0.0775537   -0.2613346    0.3253914
12 months   ki1101329-Keneba     (46.8-48.8]          NA                -0.4087661   -0.6704917   -0.1880466
12 months   ki1126311-ZVITAMBO   (46.8-48.8]          NA                -0.0059059   -0.1663619    0.1324763
12 months   ki1135781-COHORTS    (46.8-48.8]          NA                -0.1416239   -0.1963948   -0.0893605
18 months   ki1000108-IRC        (46.8-48.8]          NA                 0.0372487   -0.2528697    0.2601864
18 months   ki1101329-Keneba     (46.8-48.8]          NA                -0.4682834   -0.6734308   -0.2882853
18 months   ki1126311-ZVITAMBO   (46.8-48.8]          NA                -0.0142904   -0.1967942    0.1403826
18 months   ki1135781-COHORTS    (46.8-48.8]          NA                -0.1571635   -0.2105804   -0.1061037
24 months   ki1000108-IRC        (46.8-48.8]          NA                 0.0311132   -0.2281541    0.2356484
24 months   ki1101329-Keneba     (46.8-48.8]          NA                -0.4707714   -0.6905773   -0.2795443
24 months   ki1135781-COHORTS    (46.8-48.8]          NA                -0.0974669   -0.1354034   -0.0607979
3 months    ki1000108-IRC        (46.8-48.8]          NA                -0.1230703   -0.5667721    0.1949774
3 months    ki1101329-Keneba     (46.8-48.8]          NA                -0.5440222   -0.9680948   -0.2113261
3 months    ki1126311-ZVITAMBO   (46.8-48.8]          NA                -0.0347224   -0.2123108    0.1168515
3 months    ki1135781-COHORTS    (46.8-48.8]          NA                 0.2462210    0.1665879    0.3182451
6 months    ki1000108-IRC        (46.8-48.8]          NA                 0.0432858   -0.3541183    0.3240605
6 months    ki1101329-Keneba     (46.8-48.8]          NA                -0.6333713   -1.0324416   -0.3126584
6 months    ki1126311-ZVITAMBO   (46.8-48.8]          NA                 0.1056596   -0.0755718    0.2563539
6 months    ki1135781-COHORTS    (46.8-48.8]          NA                -0.0289669   -0.1042120    0.0411508
9 months    ki1000108-IRC        (46.8-48.8]          NA                 0.0651535   -0.2989658    0.3272048
9 months    ki1101329-Keneba     (46.8-48.8]          NA                -0.6655266   -1.0000716   -0.3869399
9 months    ki1126311-ZVITAMBO   (46.8-48.8]          NA                -0.0480478   -0.2212238    0.1005709
9 months    ki1135781-COHORTS    (46.8-48.8]          NA                -0.1268199   -0.1924352   -0.0648151


