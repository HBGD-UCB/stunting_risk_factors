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

* agecat: 12 months, studyid: ki1017093b-PROVIDE
* agecat: 12 months, studyid: ki1017093c-NIH-Crypto
* agecat: 18 months, studyid: ki1017093b-PROVIDE
* agecat: 24 months, studyid: ki1017093b-PROVIDE
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2
* agecat: 3 months, studyid: ki1000108-IRC
* agecat: 3 months, studyid: ki1017093b-PROVIDE
* agecat: 3 months, studyid: ki1017093c-NIH-Crypto
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2
* agecat: 6 months, studyid: ki1017093b-PROVIDE
* agecat: 9 months, studyid: ki1017093b-PROVIDE
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002
* agecat: Birth, studyid: ki1000108-IRC
* agecat: Birth, studyid: ki1000109-EE
* agecat: Birth, studyid: ki1017093c-NIH-Crypto
* agecat: Birth, studyid: ki1101329-Keneba

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness




# Results Detail

## Results Plots
![](/tmp/849347b5-1c11-455d-8ccb-a163c348d5d7/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/849347b5-1c11-455d-8ccb-a163c348d5d7/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/849347b5-1c11-455d-8ccb-a163c348d5d7/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/849347b5-1c11-455d-8ccb-a163c348d5d7/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Data Summary

agecat      studyid                    A                     n     nA   nAY0   nAY1
----------  -------------------------  ---------------  ------  -----  -----  -----
12 months   ki0047075b-MAL-ED          (2600-2970]        1468    319    236     83
12 months   ki0047075b-MAL-ED          (2970-3302.75]     1468    481    379    102
12 months   ki0047075b-MAL-ED          <=2600             1468    252    145    107
12 months   ki0047075b-MAL-ED          >3302.75           1468    416    354     62
12 months   ki1000108-CMC-V-BCS-2002   (2600-2970]         368     82     41     41
12 months   ki1000108-CMC-V-BCS-2002   (2970-3302.75]      368    133     66     67
12 months   ki1000108-CMC-V-BCS-2002   <=2600              368     90     32     58
12 months   ki1000108-CMC-V-BCS-2002   >3302.75            368     63     46     17
12 months   ki1000108-IRC              (2600-2970]         400    123     80     43
12 months   ki1000108-IRC              (2970-3302.75]      400    116     98     18
12 months   ki1000108-IRC              <=2600              400    100     56     44
12 months   ki1000108-IRC              >3302.75            400     61     52      9
12 months   ki1000109-EE               (2600-2970]         357     92     32     60
12 months   ki1000109-EE               (2970-3302.75]      357     66     22     44
12 months   ki1000109-EE               <=2600              357    167     27    140
12 months   ki1000109-EE               >3302.75            357     32     21     11
12 months   ki1017093b-PROVIDE         (2600-2970]         153     59     40     19
12 months   ki1017093b-PROVIDE         (2970-3302.75]      153     38     36      2
12 months   ki1017093b-PROVIDE         <=2600              153     46     23     23
12 months   ki1017093b-PROVIDE         >3302.75            153     10     10      0
12 months   ki1017093c-NIH-Crypto      (2600-2970]         706    216    171     45
12 months   ki1017093c-NIH-Crypto      (2970-3302.75]      706    165    142     23
12 months   ki1017093c-NIH-Crypto      <=2600              706    246    147     99
12 months   ki1017093c-NIH-Crypto      >3302.75            706     79     75      4
12 months   ki1066203-TanzaniaChild2   (2600-2970]         352     39     29     10
12 months   ki1066203-TanzaniaChild2   (2970-3302.75]      352    151    125     26
12 months   ki1066203-TanzaniaChild2   <=2600              352     26     21      5
12 months   ki1066203-TanzaniaChild2   >3302.75            352    136    126     10
12 months   ki1101329-Keneba           (2600-2970]        1607    492    350    142
12 months   ki1101329-Keneba           (2970-3302.75]     1607    510    433     77
12 months   ki1101329-Keneba           <=2600             1607    298    151    147
12 months   ki1101329-Keneba           >3302.75           1607    307    271     36
12 months   ki1126311-ZVITAMBO         (2600-2970]        1699    494    362    132
12 months   ki1126311-ZVITAMBO         (2970-3302.75]     1699    529    441     88
12 months   ki1126311-ZVITAMBO         <=2600             1699    351    211    140
12 months   ki1126311-ZVITAMBO         >3302.75           1699    325    281     44
12 months   ki1135781-COHORTS          (2600-2970]        7733   2134   1348    786
12 months   ki1135781-COHORTS          (2970-3302.75]     7733   2293   1662    631
12 months   ki1135781-COHORTS          <=2600             7733   2228   1013   1215
12 months   ki1135781-COHORTS          >3302.75           7733   1078    869    209
18 months   ki0047075b-MAL-ED          (2600-2970]        1401    307    182    125
18 months   ki0047075b-MAL-ED          (2970-3302.75]     1401    456    297    159
18 months   ki0047075b-MAL-ED          <=2600             1401    245    123    122
18 months   ki0047075b-MAL-ED          >3302.75           1401    393    300     93
18 months   ki1000108-CMC-V-BCS-2002   (2600-2970]         369     82     20     62
18 months   ki1000108-CMC-V-BCS-2002   (2970-3302.75]      369    133     52     81
18 months   ki1000108-CMC-V-BCS-2002   <=2600              369     90     17     73
18 months   ki1000108-CMC-V-BCS-2002   >3302.75            369     64     26     38
18 months   ki1000108-IRC              (2600-2970]         399    123     77     46
18 months   ki1000108-IRC              (2970-3302.75]      399    116     87     29
18 months   ki1000108-IRC              <=2600              399     99     42     57
18 months   ki1000108-IRC              >3302.75            399     61     54      7
18 months   ki1000109-EE               (2600-2970]         350     90     18     72
18 months   ki1000109-EE               (2970-3302.75]      350     64     14     50
18 months   ki1000109-EE               <=2600              350    164     12    152
18 months   ki1000109-EE               >3302.75            350     32      9     23
18 months   ki1017093b-PROVIDE         (2600-2970]         141     54     35     19
18 months   ki1017093b-PROVIDE         (2970-3302.75]      141     34     27      7
18 months   ki1017093b-PROVIDE         <=2600              141     44     19     25
18 months   ki1017093b-PROVIDE         >3302.75            141      9      8      1
18 months   ki1017093c-NIH-Crypto      (2600-2970]         634    193    145     48
18 months   ki1017093c-NIH-Crypto      (2970-3302.75]      634    144    109     35
18 months   ki1017093c-NIH-Crypto      <=2600              634    231    129    102
18 months   ki1017093c-NIH-Crypto      >3302.75            634     66     60      6
18 months   ki1066203-TanzaniaChild2   (2600-2970]         255     29     17     12
18 months   ki1066203-TanzaniaChild2   (2970-3302.75]      255    111     75     36
18 months   ki1066203-TanzaniaChild2   <=2600              255     19     11      8
18 months   ki1066203-TanzaniaChild2   >3302.75            255     96     84     12
18 months   ki1101329-Keneba           (2600-2970]        1608    510    307    203
18 months   ki1101329-Keneba           (2970-3302.75]     1608    505    385    120
18 months   ki1101329-Keneba           <=2600             1608    296    130    166
18 months   ki1101329-Keneba           >3302.75           1608    297    254     43
18 months   ki1126311-ZVITAMBO         (2600-2970]         424    153     75     78
18 months   ki1126311-ZVITAMBO         (2970-3302.75]      424    115     73     42
18 months   ki1126311-ZVITAMBO         <=2600              424     95     35     60
18 months   ki1126311-ZVITAMBO         >3302.75            424     61     40     21
18 months   ki1135781-COHORTS          (2600-2970]        2755    746    263    483
18 months   ki1135781-COHORTS          (2970-3302.75]     2755   1001    426    575
18 months   ki1135781-COHORTS          <=2600             2755    468     95    373
18 months   ki1135781-COHORTS          >3302.75           2755    540    278    262
24 months   ki0047075b-MAL-ED          (2600-2970]        1349    294    177    117
24 months   ki0047075b-MAL-ED          (2970-3302.75]     1349    444    303    141
24 months   ki0047075b-MAL-ED          <=2600             1349    236    126    110
24 months   ki0047075b-MAL-ED          >3302.75           1349    375    293     82
24 months   ki1000108-CMC-V-BCS-2002   (2600-2970]         372     84     18     66
24 months   ki1000108-CMC-V-BCS-2002   (2970-3302.75]      372    133     46     87
24 months   ki1000108-CMC-V-BCS-2002   <=2600              372     90     17     73
24 months   ki1000108-CMC-V-BCS-2002   >3302.75            372     65     25     40
24 months   ki1000108-IRC              (2600-2970]         403    124     71     53
24 months   ki1000108-IRC              (2970-3302.75]      403    116     67     49
24 months   ki1000108-IRC              <=2600              403    102     45     57
24 months   ki1000108-IRC              >3302.75            403     61     54      7
24 months   ki1000109-EE               (2600-2970]           0      0      0      0
24 months   ki1000109-EE               (2970-3302.75]        0      0      0      0
24 months   ki1000109-EE               <=2600                0      0      0      0
24 months   ki1000109-EE               >3302.75              0      0      0      0
24 months   ki1017093b-PROVIDE         (2600-2970]         149     58     35     23
24 months   ki1017093b-PROVIDE         (2970-3302.75]      149     35     32      3
24 months   ki1017093b-PROVIDE         <=2600              149     46     24     22
24 months   ki1017093b-PROVIDE         >3302.75            149     10      9      1
24 months   ki1017093c-NIH-Crypto      (2600-2970]         514    164    133     31
24 months   ki1017093c-NIH-Crypto      (2970-3302.75]      514    115     91     24
24 months   ki1017093c-NIH-Crypto      <=2600              514    183    109     74
24 months   ki1017093c-NIH-Crypto      >3302.75            514     52     49      3
24 months   ki1066203-TanzaniaChild2   (2600-2970]           2      0      0      0
24 months   ki1066203-TanzaniaChild2   (2970-3302.75]        2      0      0      0
24 months   ki1066203-TanzaniaChild2   <=2600                2      1      1      0
24 months   ki1066203-TanzaniaChild2   >3302.75              2      1      1      0
24 months   ki1101329-Keneba           (2600-2970]        1426    443    261    182
24 months   ki1101329-Keneba           (2970-3302.75]     1426    447    332    115
24 months   ki1101329-Keneba           <=2600             1426    272    128    144
24 months   ki1101329-Keneba           >3302.75           1426    264    217     47
24 months   ki1126311-ZVITAMBO         (2600-2970]         116     44     16     28
24 months   ki1126311-ZVITAMBO         (2970-3302.75]      116     28     14     14
24 months   ki1126311-ZVITAMBO         <=2600              116     27     10     17
24 months   ki1126311-ZVITAMBO         >3302.75            116     17      8      9
24 months   ki1135781-COHORTS          (2600-2970]        7575   2114    984   1130
24 months   ki1135781-COHORTS          (2970-3302.75]     7575   2267   1225   1042
24 months   ki1135781-COHORTS          <=2600             7575   2165    727   1438
24 months   ki1135781-COHORTS          >3302.75           7575   1029    661    368
3 months    ki0047075b-MAL-ED          (2600-2970]        1614    354    292     62
3 months    ki0047075b-MAL-ED          (2970-3302.75]     1614    520    466     54
3 months    ki0047075b-MAL-ED          <=2600             1614    272    171    101
3 months    ki0047075b-MAL-ED          >3302.75           1614    468    449     19
3 months    ki1000108-CMC-V-BCS-2002   (2600-2970]         362     83     61     22
3 months    ki1000108-CMC-V-BCS-2002   (2970-3302.75]      362    126    105     21
3 months    ki1000108-CMC-V-BCS-2002   <=2600              362     89     48     41
3 months    ki1000108-CMC-V-BCS-2002   >3302.75            362     64     58      6
3 months    ki1000108-IRC              (2600-2970]         401    123     99     24
3 months    ki1000108-IRC              (2970-3302.75]      401    115    101     14
3 months    ki1000108-IRC              <=2600              401    103     56     47
3 months    ki1000108-IRC              >3302.75            401     60     57      3
3 months    ki1000109-EE               (2600-2970]         376     96     45     51
3 months    ki1000109-EE               (2970-3302.75]      376     69     42     27
3 months    ki1000109-EE               <=2600              376    178     44    134
3 months    ki1000109-EE               >3302.75            376     33     28      5
3 months    ki1017093b-PROVIDE         (2600-2970]         168     63     60      3
3 months    ki1017093b-PROVIDE         (2970-3302.75]      168     42     41      1
3 months    ki1017093b-PROVIDE         <=2600              168     53     37     16
3 months    ki1017093b-PROVIDE         >3302.75            168     10     10      0
3 months    ki1017093c-NIH-Crypto      (2600-2970]         728    221    186     35
3 months    ki1017093c-NIH-Crypto      (2970-3302.75]      728    168    155     13
3 months    ki1017093c-NIH-Crypto      <=2600              728    254    147    107
3 months    ki1017093c-NIH-Crypto      >3302.75            728     85     84      1
3 months    ki1066203-TanzaniaChild2   (2600-2970]         569     70     63      7
3 months    ki1066203-TanzaniaChild2   (2970-3302.75]      569    220    209     11
3 months    ki1066203-TanzaniaChild2   <=2600              569     49     33     16
3 months    ki1066203-TanzaniaChild2   >3302.75            569    230    226      4
3 months    ki1101329-Keneba           (2600-2970]        1790    554    487     67
3 months    ki1101329-Keneba           (2970-3302.75]     1790    558    520     38
3 months    ki1101329-Keneba           <=2600             1790    351    221    130
3 months    ki1101329-Keneba           >3302.75           1790    327    319      8
3 months    ki1126311-ZVITAMBO         (2600-2970]        2262    604    496    108
3 months    ki1126311-ZVITAMBO         (2970-3302.75]     2262    705    646     59
3 months    ki1126311-ZVITAMBO         <=2600             2262    439    239    200
3 months    ki1126311-ZVITAMBO         >3302.75           2262    514    492     22
3 months    ki1135781-COHORTS          (2600-2970]        9701   2701   2428    273
3 months    ki1135781-COHORTS          (2970-3302.75]     9701   2785   2637    148
3 months    ki1135781-COHORTS          <=2600             9701   2964   1989    975
3 months    ki1135781-COHORTS          >3302.75           9701   1251   1220     31
6 months    ki0047075b-MAL-ED          (2600-2970]        1538    331    274     57
6 months    ki0047075b-MAL-ED          (2970-3302.75]     1538    498    435     63
6 months    ki0047075b-MAL-ED          <=2600             1538    262    181     81
6 months    ki0047075b-MAL-ED          >3302.75           1538    447    423     24
6 months    ki1000108-CMC-V-BCS-2002   (2600-2970]         369     84     58     26
6 months    ki1000108-CMC-V-BCS-2002   (2970-3302.75]      369    132     99     33
6 months    ki1000108-CMC-V-BCS-2002   <=2600              369     88     47     41
6 months    ki1000108-CMC-V-BCS-2002   >3302.75            369     65     54     11
6 months    ki1000108-IRC              (2600-2970]         401    124     93     31
6 months    ki1000108-IRC              (2970-3302.75]      401    116     98     18
6 months    ki1000108-IRC              <=2600              401    100     62     38
6 months    ki1000108-IRC              >3302.75            401     61     53      8
6 months    ki1000109-EE               (2600-2970]         372     95     47     48
6 months    ki1000109-EE               (2970-3302.75]      372     70     51     19
6 months    ki1000109-EE               <=2600              372    173     54    119
6 months    ki1000109-EE               >3302.75            372     34     27      7
6 months    ki1017093b-PROVIDE         (2600-2970]         153     56     49      7
6 months    ki1017093b-PROVIDE         (2970-3302.75]      153     38     37      1
6 months    ki1017093b-PROVIDE         <=2600              153     49     29     20
6 months    ki1017093b-PROVIDE         >3302.75            153     10     10      0
6 months    ki1017093c-NIH-Crypto      (2600-2970]         715    216    185     31
6 months    ki1017093c-NIH-Crypto      (2970-3302.75]      715    165    149     16
6 months    ki1017093c-NIH-Crypto      <=2600              715    251    153     98
6 months    ki1017093c-NIH-Crypto      >3302.75            715     83     78      5
6 months    ki1066203-TanzaniaChild2   (2600-2970]         498     60     53      7
6 months    ki1066203-TanzaniaChild2   (2970-3302.75]      498    194    178     16
6 months    ki1066203-TanzaniaChild2   <=2600              498     42     32     10
6 months    ki1066203-TanzaniaChild2   >3302.75            498    202    192     10
6 months    ki1101329-Keneba           (2600-2970]        1711    526    443     83
6 months    ki1101329-Keneba           (2970-3302.75]     1711    533    492     41
6 months    ki1101329-Keneba           <=2600             1711    330    229    101
6 months    ki1101329-Keneba           >3302.75           1711    322    305     17
6 months    ki1126311-ZVITAMBO         (2600-2970]        2045    552    454     98
6 months    ki1126311-ZVITAMBO         (2970-3302.75]     2045    649    579     70
6 months    ki1126311-ZVITAMBO         <=2600             2045    383    249    134
6 months    ki1126311-ZVITAMBO         >3302.75           2045    461    430     31
6 months    ki1135781-COHORTS          (2600-2970]        9302   2579   2113    466
6 months    ki1135781-COHORTS          (2970-3302.75]     9302   2693   2377    316
6 months    ki1135781-COHORTS          <=2600             9302   2809   1787   1022
6 months    ki1135781-COHORTS          >3302.75           9302   1221   1139     82
9 months    ki0047075b-MAL-ED          (2600-2970]        1488    319    248     71
9 months    ki0047075b-MAL-ED          (2970-3302.75]     1488    490    406     84
9 months    ki0047075b-MAL-ED          <=2600             1488    256    167     89
9 months    ki0047075b-MAL-ED          >3302.75           1488    423    384     39
9 months    ki1000108-CMC-V-BCS-2002   (2600-2970]         366     82     56     26
9 months    ki1000108-CMC-V-BCS-2002   (2970-3302.75]      366    132     86     46
9 months    ki1000108-CMC-V-BCS-2002   <=2600              366     89     41     48
9 months    ki1000108-CMC-V-BCS-2002   >3302.75            366     63     48     15
9 months    ki1000108-IRC              (2600-2970]         401    124     91     33
9 months    ki1000108-IRC              (2970-3302.75]      401    116     97     19
9 months    ki1000108-IRC              <=2600              401    100     54     46
9 months    ki1000108-IRC              >3302.75            401     61     53      8
9 months    ki1000109-EE               (2600-2970]         366     93     42     51
9 months    ki1000109-EE               (2970-3302.75]      366     69     39     30
9 months    ki1000109-EE               <=2600              366    171     43    128
9 months    ki1000109-EE               >3302.75            366     33     25      8
9 months    ki1017093b-PROVIDE         (2600-2970]         158     60     47     13
9 months    ki1017093b-PROVIDE         (2970-3302.75]      158     39     36      3
9 months    ki1017093b-PROVIDE         <=2600              158     49     28     21
9 months    ki1017093b-PROVIDE         >3302.75            158     10     10      0
9 months    ki1017093c-NIH-Crypto      (2600-2970]         706    216    173     43
9 months    ki1017093c-NIH-Crypto      (2970-3302.75]      706    166    147     19
9 months    ki1017093c-NIH-Crypto      <=2600              706    240    143     97
9 months    ki1017093c-NIH-Crypto      >3302.75            706     84     79      5
9 months    ki1066203-TanzaniaChild2   (2600-2970]         428     50     38     12
9 months    ki1066203-TanzaniaChild2   (2970-3302.75]      428    171    144     27
9 months    ki1066203-TanzaniaChild2   <=2600              428     32     23      9
9 months    ki1066203-TanzaniaChild2   >3302.75            428    175    162     13
9 months    ki1101329-Keneba           (2600-2970]        1705    522    404    118
9 months    ki1101329-Keneba           (2970-3302.75]     1705    538    486     52
9 months    ki1101329-Keneba           <=2600             1705    328    206    122
9 months    ki1101329-Keneba           >3302.75           1705    317    299     18
9 months    ki1126311-ZVITAMBO         (2600-2970]        1960    544    428    116
9 months    ki1126311-ZVITAMBO         (2970-3302.75]     1960    624    538     86
9 months    ki1126311-ZVITAMBO         <=2600             1960    377    239    138
9 months    ki1126311-ZVITAMBO         >3302.75           1960    415    374     41
9 months    ki1135781-COHORTS          (2600-2970]        8423   2334   1684    650
9 months    ki1135781-COHORTS          (2970-3302.75]     8423   2475   2022    453
9 months    ki1135781-COHORTS          <=2600             8423   2477   1387   1090
9 months    ki1135781-COHORTS          >3302.75           8423   1137    996    141
Birth       ki0047075b-MAL-ED          (2600-2970]        1486    328    292     36
Birth       ki0047075b-MAL-ED          (2970-3302.75]     1486    481    453     28
Birth       ki0047075b-MAL-ED          <=2600             1486    261    146    115
Birth       ki0047075b-MAL-ED          >3302.75           1486    416    409      7
Birth       ki1000108-CMC-V-BCS-2002   (2600-2970]          90     23     19      4
Birth       ki1000108-CMC-V-BCS-2002   (2970-3302.75]       90     28     26      2
Birth       ki1000108-CMC-V-BCS-2002   <=2600               90     28     19      9
Birth       ki1000108-CMC-V-BCS-2002   >3302.75             90     11     10      1
Birth       ki1000108-IRC              (2600-2970]         383    114    107      7
Birth       ki1000108-IRC              (2970-3302.75]      383    113    102     11
Birth       ki1000108-IRC              <=2600              383     98     73     25
Birth       ki1000108-IRC              >3302.75            383     58     57      1
Birth       ki1000109-EE               (2600-2970]           2      1      1      0
Birth       ki1000109-EE               (2970-3302.75]        2      0      0      0
Birth       ki1000109-EE               <=2600                2      1      0      1
Birth       ki1000109-EE               >3302.75              2      0      0      0
Birth       ki1017093b-PROVIDE         (2600-2970]           0      0      0      0
Birth       ki1017093b-PROVIDE         (2970-3302.75]        0      0      0      0
Birth       ki1017093b-PROVIDE         <=2600                0      0      0      0
Birth       ki1017093b-PROVIDE         >3302.75              0      0      0      0
Birth       ki1017093c-NIH-Crypto      (2600-2970]          27      9      8      1
Birth       ki1017093c-NIH-Crypto      (2970-3302.75]       27      8      8      0
Birth       ki1017093c-NIH-Crypto      <=2600               27     10      6      4
Birth       ki1017093c-NIH-Crypto      >3302.75             27      0      0      0
Birth       ki1066203-TanzaniaChild2   (2600-2970]           0      0      0      0
Birth       ki1066203-TanzaniaChild2   (2970-3302.75]        0      0      0      0
Birth       ki1066203-TanzaniaChild2   <=2600                0      0      0      0
Birth       ki1066203-TanzaniaChild2   >3302.75              0      0      0      0
Birth       ki1101329-Keneba           (2600-2970]        1527    491    463     28
Birth       ki1101329-Keneba           (2970-3302.75]     1527    488    484      4
Birth       ki1101329-Keneba           <=2600             1527    293    245     48
Birth       ki1101329-Keneba           >3302.75           1527    255    253      2
Birth       ki1126311-ZVITAMBO         (2600-2970]        3449    934    850     84
Birth       ki1126311-ZVITAMBO         (2970-3302.75]     3449   1058   1010     48
Birth       ki1126311-ZVITAMBO         <=2600             3449    701    489    212
Birth       ki1126311-ZVITAMBO         >3302.75           3449    756    740     16
Birth       ki1135781-COHORTS          (2600-2970]       10025   2775   2674    101
Birth       ki1135781-COHORTS          (2970-3302.75]    10025   2874   2844     30
Birth       ki1135781-COHORTS          <=2600            10025   3062   2210    852
Birth       ki1135781-COHORTS          >3302.75          10025   1314   1308      6

## Results Table

### Parameter: TSM


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
12 months   ki0047075b-MAL-ED          (2600-2970]          NA                0.2601881   0.2120260   0.3083502
12 months   ki0047075b-MAL-ED          (2970-3302.75]       NA                0.2120582   0.1755157   0.2486007
12 months   ki0047075b-MAL-ED          <=2600               NA                0.4246032   0.3635552   0.4856511
12 months   ki0047075b-MAL-ED          >3302.75             NA                0.1490385   0.1148048   0.1832721
12 months   ki1000108-CMC-V-BCS-2002   (2600-2970]          NA                0.5000000   0.3916318   0.6083682
12 months   ki1000108-CMC-V-BCS-2002   (2970-3302.75]       NA                0.5037594   0.4186709   0.5888479
12 months   ki1000108-CMC-V-BCS-2002   <=2600               NA                0.6444444   0.5454150   0.7434739
12 months   ki1000108-CMC-V-BCS-2002   >3302.75             NA                0.2698413   0.1600844   0.3795981
12 months   ki1000108-IRC              (2600-2970]          NA                0.3495935   0.2652186   0.4339684
12 months   ki1000108-IRC              (2970-3302.75]       NA                0.1551724   0.0892013   0.2211435
12 months   ki1000108-IRC              <=2600               NA                0.4400000   0.3425881   0.5374119
12 months   ki1000108-IRC              >3302.75             NA                0.1475410   0.0584323   0.2366496
12 months   ki1000109-EE               (2600-2970]          NA                0.6521739   0.5547140   0.7496338
12 months   ki1000109-EE               (2970-3302.75]       NA                0.6666667   0.5527784   0.7805549
12 months   ki1000109-EE               <=2600               NA                0.8383234   0.7824083   0.8942384
12 months   ki1000109-EE               >3302.75             NA                0.3437500   0.1789572   0.5085428
12 months   ki1066203-TanzaniaChild2   (2600-2970]          NA                0.2564103   0.1191743   0.3936462
12 months   ki1066203-TanzaniaChild2   (2970-3302.75]       NA                0.1721854   0.1118820   0.2324889
12 months   ki1066203-TanzaniaChild2   <=2600               NA                0.1923077   0.0406025   0.3440129
12 months   ki1066203-TanzaniaChild2   >3302.75             NA                0.0735294   0.0296013   0.1174575
12 months   ki1101329-Keneba           (2600-2970]          NA                0.2886179   0.2485668   0.3286689
12 months   ki1101329-Keneba           (2970-3302.75]       NA                0.1509804   0.1198978   0.1820630
12 months   ki1101329-Keneba           <=2600               NA                0.4932886   0.4365072   0.5500700
12 months   ki1101329-Keneba           >3302.75             NA                0.1172638   0.0812631   0.1532646
12 months   ki1126311-ZVITAMBO         (2600-2970]          NA                0.2672065   0.2281739   0.3062390
12 months   ki1126311-ZVITAMBO         (2970-3302.75]       NA                0.1663516   0.1346082   0.1980950
12 months   ki1126311-ZVITAMBO         <=2600               NA                0.3988604   0.3476191   0.4501017
12 months   ki1126311-ZVITAMBO         >3302.75             NA                0.1353846   0.0981771   0.1725921
12 months   ki1135781-COHORTS          (2600-2970]          NA                0.3683224   0.3478560   0.3887888
12 months   ki1135781-COHORTS          (2970-3302.75]       NA                0.2751853   0.2569043   0.2934664
12 months   ki1135781-COHORTS          <=2600               NA                0.5453321   0.5246547   0.5660096
12 months   ki1135781-COHORTS          >3302.75             NA                0.1938776   0.1702765   0.2174786
18 months   ki0047075b-MAL-ED          (2600-2970]          NA                0.4071661   0.3521885   0.4621438
18 months   ki0047075b-MAL-ED          (2970-3302.75]       NA                0.3486842   0.3049287   0.3924397
18 months   ki0047075b-MAL-ED          <=2600               NA                0.4979592   0.4353286   0.5605898
18 months   ki0047075b-MAL-ED          >3302.75             NA                0.2366412   0.1946057   0.2786767
18 months   ki1000108-CMC-V-BCS-2002   (2600-2970]          NA                0.7560976   0.6630238   0.8491714
18 months   ki1000108-CMC-V-BCS-2002   (2970-3302.75]       NA                0.6090226   0.5259794   0.6920658
18 months   ki1000108-CMC-V-BCS-2002   <=2600               NA                0.8111111   0.7301345   0.8920877
18 months   ki1000108-CMC-V-BCS-2002   >3302.75             NA                0.5937500   0.4732614   0.7142386
18 months   ki1000108-IRC              (2600-2970]          NA                0.3739837   0.2883668   0.4596007
18 months   ki1000108-IRC              (2970-3302.75]       NA                0.2500000   0.1711022   0.3288978
18 months   ki1000108-IRC              <=2600               NA                0.5757576   0.4782805   0.6732346
18 months   ki1000108-IRC              >3302.75             NA                0.1147541   0.0346704   0.1948378
18 months   ki1000109-EE               (2600-2970]          NA                0.8000000   0.7172424   0.8827576
18 months   ki1000109-EE               (2970-3302.75]       NA                0.7812500   0.6798242   0.8826758
18 months   ki1000109-EE               <=2600               NA                0.9268293   0.8869161   0.9667424
18 months   ki1000109-EE               >3302.75             NA                0.7187500   0.5627482   0.8747518
18 months   ki1017093c-NIH-Crypto      (2600-2970]          NA                0.2487047   0.1876724   0.3097369
18 months   ki1017093c-NIH-Crypto      (2970-3302.75]       NA                0.2430556   0.1729432   0.3131679
18 months   ki1017093c-NIH-Crypto      <=2600               NA                0.4415584   0.3774718   0.5056451
18 months   ki1017093c-NIH-Crypto      >3302.75             NA                0.0909091   0.0214984   0.1603198
18 months   ki1066203-TanzaniaChild2   (2600-2970]          NA                0.4137931   0.2341877   0.5933985
18 months   ki1066203-TanzaniaChild2   (2970-3302.75]       NA                0.3243243   0.2370676   0.4115810
18 months   ki1066203-TanzaniaChild2   <=2600               NA                0.4210526   0.1986130   0.6434923
18 months   ki1066203-TanzaniaChild2   >3302.75             NA                0.1250000   0.0587136   0.1912864
18 months   ki1101329-Keneba           (2600-2970]          NA                0.3980392   0.3555435   0.4405349
18 months   ki1101329-Keneba           (2970-3302.75]       NA                0.2376238   0.2004902   0.2747574
18 months   ki1101329-Keneba           <=2600               NA                0.5608108   0.5042558   0.6173659
18 months   ki1101329-Keneba           >3302.75             NA                0.1447811   0.1047499   0.1848124
18 months   ki1126311-ZVITAMBO         (2600-2970]          NA                0.5098039   0.4304987   0.5891091
18 months   ki1126311-ZVITAMBO         (2970-3302.75]       NA                0.3652174   0.2771125   0.4533223
18 months   ki1126311-ZVITAMBO         <=2600               NA                0.6315789   0.5344642   0.7286937
18 months   ki1126311-ZVITAMBO         >3302.75             NA                0.3442623   0.2248894   0.4636352
18 months   ki1135781-COHORTS          (2600-2970]          NA                0.6474531   0.6131629   0.6817433
18 months   ki1135781-COHORTS          (2970-3302.75]       NA                0.5744256   0.5437908   0.6050603
18 months   ki1135781-COHORTS          <=2600               NA                0.7970085   0.7605605   0.8334566
18 months   ki1135781-COHORTS          >3302.75             NA                0.4851852   0.4430243   0.5273460
24 months   ki0047075b-MAL-ED          (2600-2970]          NA                0.3979592   0.3419876   0.4539308
24 months   ki0047075b-MAL-ED          (2970-3302.75]       NA                0.3175676   0.2742499   0.3608853
24 months   ki0047075b-MAL-ED          <=2600               NA                0.4661017   0.4024335   0.5297699
24 months   ki0047075b-MAL-ED          >3302.75             NA                0.2186667   0.1768159   0.2605174
24 months   ki1000108-CMC-V-BCS-2002   (2600-2970]          NA                0.7857143   0.6978481   0.8735805
24 months   ki1000108-CMC-V-BCS-2002   (2970-3302.75]       NA                0.6541353   0.5731897   0.7350810
24 months   ki1000108-CMC-V-BCS-2002   <=2600               NA                0.8111111   0.7301354   0.8920868
24 months   ki1000108-CMC-V-BCS-2002   >3302.75             NA                0.6153846   0.4969544   0.7338148
24 months   ki1000108-IRC              (2600-2970]          NA                0.4274194   0.3402383   0.5146004
24 months   ki1000108-IRC              (2970-3302.75]       NA                0.4224138   0.3324151   0.5124125
24 months   ki1000108-IRC              <=2600               NA                0.5588235   0.4623449   0.6553021
24 months   ki1000108-IRC              >3302.75             NA                0.1147541   0.0346714   0.1948368
24 months   ki1101329-Keneba           (2600-2970]          NA                0.4108352   0.3650051   0.4566653
24 months   ki1101329-Keneba           (2970-3302.75]       NA                0.2572707   0.2167332   0.2978082
24 months   ki1101329-Keneba           <=2600               NA                0.5294118   0.4700737   0.5887498
24 months   ki1101329-Keneba           >3302.75             NA                0.1780303   0.1318695   0.2241911
24 months   ki1126311-ZVITAMBO         (2600-2970]          NA                0.6363636   0.4936097   0.7791176
24 months   ki1126311-ZVITAMBO         (2970-3302.75]       NA                0.5000000   0.3139973   0.6860027
24 months   ki1126311-ZVITAMBO         <=2600               NA                0.6296296   0.4466903   0.8125689
24 months   ki1126311-ZVITAMBO         >3302.75             NA                0.5294118   0.2911134   0.7677101
24 months   ki1135781-COHORTS          (2600-2970]          NA                0.5345317   0.5132672   0.5557962
24 months   ki1135781-COHORTS          (2970-3302.75]       NA                0.4596383   0.4391219   0.4801547
24 months   ki1135781-COHORTS          <=2600               NA                0.6642032   0.6443086   0.6840979
24 months   ki1135781-COHORTS          >3302.75             NA                0.3576288   0.3283415   0.3869160
3 months    ki0047075b-MAL-ED          (2600-2970]          NA                0.1751412   0.1355349   0.2147476
3 months    ki0047075b-MAL-ED          (2970-3302.75]       NA                0.1038462   0.0776180   0.1300743
3 months    ki0047075b-MAL-ED          <=2600               NA                0.3713235   0.3138870   0.4287600
3 months    ki0047075b-MAL-ED          >3302.75             NA                0.0405983   0.0227123   0.0584843
3 months    ki1000108-CMC-V-BCS-2002   (2600-2970]          NA                0.2650602   0.1699761   0.3601443
3 months    ki1000108-CMC-V-BCS-2002   (2970-3302.75]       NA                0.1666667   0.1015042   0.2318291
3 months    ki1000108-CMC-V-BCS-2002   <=2600               NA                0.4606742   0.3569747   0.5643736
3 months    ki1000108-CMC-V-BCS-2002   >3302.75             NA                0.0937500   0.0222397   0.1652603
3 months    ki1000109-EE               (2600-2970]          NA                0.5312500   0.4312935   0.6312065
3 months    ki1000109-EE               (2970-3302.75]       NA                0.3913043   0.2759964   0.5066123
3 months    ki1000109-EE               <=2600               NA                0.7528090   0.6893526   0.8162653
3 months    ki1000109-EE               >3302.75             NA                0.1515152   0.0290198   0.2740105
3 months    ki1101329-Keneba           (2600-2970]          NA                0.1209386   0.0937801   0.1480972
3 months    ki1101329-Keneba           (2970-3302.75]       NA                0.0681004   0.0471924   0.0890083
3 months    ki1101329-Keneba           <=2600               NA                0.3703704   0.3198372   0.4209035
3 months    ki1101329-Keneba           >3302.75             NA                0.0244648   0.0077159   0.0412138
3 months    ki1126311-ZVITAMBO         (2600-2970]          NA                0.1788079   0.1482417   0.2093741
3 months    ki1126311-ZVITAMBO         (2970-3302.75]       NA                0.0836879   0.0632422   0.1041337
3 months    ki1126311-ZVITAMBO         <=2600               NA                0.4555809   0.4089835   0.5021782
3 months    ki1126311-ZVITAMBO         >3302.75             NA                0.0428016   0.0252993   0.0603038
3 months    ki1135781-COHORTS          (2600-2970]          NA                0.1010737   0.0897055   0.1124418
3 months    ki1135781-COHORTS          (2970-3302.75]       NA                0.0531418   0.0448104   0.0614732
3 months    ki1135781-COHORTS          <=2600               NA                0.3289474   0.3120323   0.3458624
3 months    ki1135781-COHORTS          >3302.75             NA                0.0247802   0.0161654   0.0333950
6 months    ki0047075b-MAL-ED          (2600-2970]          NA                0.1722054   0.1315180   0.2128928
6 months    ki0047075b-MAL-ED          (2970-3302.75]       NA                0.1265060   0.0973008   0.1557112
6 months    ki0047075b-MAL-ED          <=2600               NA                0.3091603   0.2531821   0.3651385
6 months    ki0047075b-MAL-ED          >3302.75             NA                0.0536913   0.0327885   0.0745940
6 months    ki1000108-CMC-V-BCS-2002   (2600-2970]          NA                0.3095238   0.2105275   0.4085201
6 months    ki1000108-CMC-V-BCS-2002   (2970-3302.75]       NA                0.2500000   0.1760308   0.3239692
6 months    ki1000108-CMC-V-BCS-2002   <=2600               NA                0.4659091   0.3615443   0.5702739
6 months    ki1000108-CMC-V-BCS-2002   >3302.75             NA                0.1692308   0.0779539   0.2605076
6 months    ki1000108-IRC              (2600-2970]          NA                0.2500000   0.1736902   0.3263098
6 months    ki1000108-IRC              (2970-3302.75]       NA                0.1551724   0.0892015   0.2211433
6 months    ki1000108-IRC              <=2600               NA                0.3800000   0.2847472   0.4752528
6 months    ki1000108-IRC              >3302.75             NA                0.1311475   0.0463314   0.2159637
6 months    ki1000109-EE               (2600-2970]          NA                0.5052632   0.4045893   0.6059370
6 months    ki1000109-EE               (2970-3302.75]       NA                0.2714286   0.1671134   0.3757437
6 months    ki1000109-EE               <=2600               NA                0.6878613   0.6187206   0.7570020
6 months    ki1000109-EE               >3302.75             NA                0.2058824   0.0697864   0.3419783
6 months    ki1017093c-NIH-Crypto      (2600-2970]          NA                0.1435185   0.0967301   0.1903069
6 months    ki1017093c-NIH-Crypto      (2970-3302.75]       NA                0.0969697   0.0517863   0.1421531
6 months    ki1017093c-NIH-Crypto      <=2600               NA                0.3904382   0.3300434   0.4508331
6 months    ki1017093c-NIH-Crypto      >3302.75             NA                0.0602410   0.0090177   0.1114642
6 months    ki1066203-TanzaniaChild2   (2600-2970]          NA                0.1166667   0.0353565   0.1979768
6 months    ki1066203-TanzaniaChild2   (2970-3302.75]       NA                0.0824742   0.0437260   0.1212225
6 months    ki1066203-TanzaniaChild2   <=2600               NA                0.2380952   0.1091558   0.3670346
6 months    ki1066203-TanzaniaChild2   >3302.75             NA                0.0495050   0.0195611   0.0794488
6 months    ki1101329-Keneba           (2600-2970]          NA                0.1577947   0.1266318   0.1889575
6 months    ki1101329-Keneba           (2970-3302.75]       NA                0.0769231   0.0542944   0.0995517
6 months    ki1101329-Keneba           <=2600               NA                0.3060606   0.2563233   0.3557979
6 months    ki1101329-Keneba           >3302.75             NA                0.0527950   0.0283627   0.0772274
6 months    ki1126311-ZVITAMBO         (2600-2970]          NA                0.1775362   0.1456512   0.2094212
6 months    ki1126311-ZVITAMBO         (2970-3302.75]       NA                0.1078582   0.0839870   0.1317295
6 months    ki1126311-ZVITAMBO         <=2600               NA                0.3498695   0.3020936   0.3976453
6 months    ki1126311-ZVITAMBO         >3302.75             NA                0.0672451   0.0443777   0.0901126
6 months    ki1135781-COHORTS          (2600-2970]          NA                0.1806902   0.1658398   0.1955406
6 months    ki1135781-COHORTS          (2970-3302.75]       NA                0.1173413   0.1051857   0.1294968
6 months    ki1135781-COHORTS          <=2600               NA                0.3638305   0.3460383   0.3816228
6 months    ki1135781-COHORTS          >3302.75             NA                0.0671581   0.0531181   0.0811981
9 months    ki0047075b-MAL-ED          (2600-2970]          NA                0.2225705   0.1769077   0.2682334
9 months    ki0047075b-MAL-ED          (2970-3302.75]       NA                0.1714286   0.1380473   0.2048098
9 months    ki0047075b-MAL-ED          <=2600               NA                0.3476563   0.2893000   0.4060125
9 months    ki0047075b-MAL-ED          >3302.75             NA                0.0921986   0.0646194   0.1197778
9 months    ki1000108-CMC-V-BCS-2002   (2600-2970]          NA                0.3170732   0.2162171   0.4179293
9 months    ki1000108-CMC-V-BCS-2002   (2970-3302.75]       NA                0.3484848   0.2670877   0.4298820
9 months    ki1000108-CMC-V-BCS-2002   <=2600               NA                0.5393258   0.4356280   0.6430237
9 months    ki1000108-CMC-V-BCS-2002   >3302.75             NA                0.2380952   0.1327784   0.3434120
9 months    ki1000108-IRC              (2600-2970]          NA                0.2661290   0.1882473   0.3440107
9 months    ki1000108-IRC              (2970-3302.75]       NA                0.1637931   0.0963611   0.2312251
9 months    ki1000108-IRC              <=2600               NA                0.4600000   0.3621939   0.5578061
9 months    ki1000108-IRC              >3302.75             NA                0.1311475   0.0463314   0.2159637
9 months    ki1000109-EE               (2600-2970]          NA                0.5483871   0.4471062   0.6496680
9 months    ki1000109-EE               (2970-3302.75]       NA                0.4347826   0.3176544   0.5519108
9 months    ki1000109-EE               <=2600               NA                0.7485380   0.6834221   0.8136539
9 months    ki1000109-EE               >3302.75             NA                0.2424242   0.0960090   0.3888395
9 months    ki1017093c-NIH-Crypto      (2600-2970]          NA                0.1990741   0.1457857   0.2523625
9 months    ki1017093c-NIH-Crypto      (2970-3302.75]       NA                0.1144578   0.0659927   0.1629229
9 months    ki1017093c-NIH-Crypto      <=2600               NA                0.4041667   0.3420379   0.4662955
9 months    ki1017093c-NIH-Crypto      >3302.75             NA                0.0595238   0.0088906   0.1101570
9 months    ki1066203-TanzaniaChild2   (2600-2970]          NA                0.2400000   0.1214822   0.3585178
9 months    ki1066203-TanzaniaChild2   (2970-3302.75]       NA                0.1578947   0.1031774   0.2126121
9 months    ki1066203-TanzaniaChild2   <=2600               NA                0.2812500   0.1252889   0.4372111
9 months    ki1066203-TanzaniaChild2   >3302.75             NA                0.0742857   0.0353876   0.1131838
9 months    ki1101329-Keneba           (2600-2970]          NA                0.2260536   0.1901613   0.2619460
9 months    ki1101329-Keneba           (2970-3302.75]       NA                0.0966543   0.0716783   0.1216302
9 months    ki1101329-Keneba           <=2600               NA                0.3719512   0.3196300   0.4242725
9 months    ki1101329-Keneba           >3302.75             NA                0.0567823   0.0312989   0.0822658
9 months    ki1126311-ZVITAMBO         (2600-2970]          NA                0.2132353   0.1788073   0.2476633
9 months    ki1126311-ZVITAMBO         (2970-3302.75]       NA                0.1378205   0.1107671   0.1648739
9 months    ki1126311-ZVITAMBO         <=2600               NA                0.3660477   0.3174087   0.4146868
9 months    ki1126311-ZVITAMBO         >3302.75             NA                0.0987952   0.0700798   0.1275106
9 months    ki1135781-COHORTS          (2600-2970]          NA                0.2784919   0.2603053   0.2966784
9 months    ki1135781-COHORTS          (2970-3302.75]       NA                0.1830303   0.1677950   0.1982656
9 months    ki1135781-COHORTS          <=2600               NA                0.4400484   0.4204989   0.4595980
9 months    ki1135781-COHORTS          >3302.75             NA                0.1240106   0.1048516   0.1431695
Birth       ki0047075b-MAL-ED          (2600-2970]          NA                0.1097561   0.0759164   0.1435958
Birth       ki0047075b-MAL-ED          (2970-3302.75]       NA                0.0582121   0.0372803   0.0791438
Birth       ki0047075b-MAL-ED          <=2600               NA                0.4406130   0.3803628   0.5008633
Birth       ki0047075b-MAL-ED          >3302.75             NA                0.0168269   0.0044628   0.0291911
Birth       ki1126311-ZVITAMBO         (2600-2970]          NA                0.0899358   0.0715856   0.1082859
Birth       ki1126311-ZVITAMBO         (2970-3302.75]       NA                0.0453686   0.0328267   0.0579105
Birth       ki1126311-ZVITAMBO         <=2600               NA                0.3024251   0.2684190   0.3364312
Birth       ki1126311-ZVITAMBO         >3302.75             NA                0.0211640   0.0109027   0.0314254
Birth       ki1135781-COHORTS          (2600-2970]          NA                0.0363964   0.0294283   0.0433645
Birth       ki1135781-COHORTS          (2970-3302.75]       NA                0.0104384   0.0067225   0.0141543
Birth       ki1135781-COHORTS          <=2600               NA                0.2782495   0.2623758   0.2941232
Birth       ki1135781-COHORTS          >3302.75             NA                0.0045662   0.0009207   0.0082117


### Parameter: E(Y)


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
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
Birth       ki0047075b-MAL-ED          NA                   NA                0.1251682   0.1175788   0.1327577
Birth       ki1126311-ZVITAMBO         NA                   NA                0.1043781   0.1009392   0.1078169
Birth       ki1135781-COHORTS          NA                   NA                0.0986534   0.0963111   0.1009956


### Parameter: RR


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
12 months   ki0047075b-MAL-ED          (2970-3302.75]       (2600-2970]       0.8150189   0.6328986   1.0495454
12 months   ki0047075b-MAL-ED          <=2600               (2600-2970]       1.6319086   1.2909354   2.0629426
12 months   ki0047075b-MAL-ED          >3302.75             (2600-2970]       0.5728105   0.4264759   0.7693561
12 months   ki1000108-CMC-V-BCS-2002   (2970-3302.75]       (2600-2970]       1.0075188   0.7654512   1.3261382
12 months   ki1000108-CMC-V-BCS-2002   <=2600               (2600-2970]       1.2888889   0.9881670   1.6811274
12 months   ki1000108-CMC-V-BCS-2002   >3302.75             (2600-2970]       0.5396825   0.3403907   0.8556558
12 months   ki1000108-IRC              (2970-3302.75]       (2600-2970]       0.4438653   0.2722291   0.7237153
12 months   ki1000108-IRC              <=2600               (2600-2970]       1.2586047   0.9070945   1.7463293
12 months   ki1000108-IRC              >3302.75             (2600-2970]       0.4220358   0.2202345   0.8087480
12 months   ki1000109-EE               (2970-3302.75]       (2600-2970]       1.0222222   0.8146542   1.2826771
12 months   ki1000109-EE               <=2600               (2600-2970]       1.2854291   1.0913821   1.5139776
12 months   ki1000109-EE               >3302.75             (2600-2970]       0.5270833   0.3190059   0.8708830
12 months   ki1066203-TanzaniaChild2   (2970-3302.75]       (2600-2970]       0.6715232   0.3542226   1.2730508
12 months   ki1066203-TanzaniaChild2   <=2600               (2600-2970]       0.7500000   0.2891015   1.9456834
12 months   ki1066203-TanzaniaChild2   >3302.75             (2600-2970]       0.2867647   0.1285806   0.6395523
12 months   ki1101329-Keneba           (2970-3302.75]       (2600-2970]       0.5231152   0.4081064   0.6705346
12 months   ki1101329-Keneba           <=2600               (2600-2970]       1.7091408   1.4271725   2.0468178
12 months   ki1101329-Keneba           >3302.75             (2600-2970]       0.4062944   0.2900828   0.5690623
12 months   ki1126311-ZVITAMBO         (2970-3302.75]       (2600-2970]       0.6225583   0.4895678   0.7916754
12 months   ki1126311-ZVITAMBO         <=2600               (2600-2970]       1.4927048   1.2288243   1.8132516
12 months   ki1126311-ZVITAMBO         >3302.75             (2600-2970]       0.5066667   0.3711536   0.6916574
12 months   ki1135781-COHORTS          (2970-3302.75]       (2600-2970]       0.7471317   0.6851477   0.8147234
12 months   ki1135781-COHORTS          <=2600               (2600-2970]       1.4805837   1.3842601   1.5836099
12 months   ki1135781-COHORTS          >3302.75             (2600-2970]       0.5263800   0.4604523   0.6017473
18 months   ki0047075b-MAL-ED          (2970-3302.75]       (2600-2970]       0.8563684   0.7122059   1.0297119
18 months   ki0047075b-MAL-ED          <=2600               (2600-2970]       1.2229878   1.0169090   1.4708288
18 months   ki0047075b-MAL-ED          >3302.75             (2600-2970]       0.5811908   0.4649604   0.7264765
18 months   ki1000108-CMC-V-BCS-2002   (2970-3302.75]       (2600-2970]       0.8054814   0.6703099   0.9679110
18 months   ki1000108-CMC-V-BCS-2002   <=2600               (2600-2970]       1.0727599   0.9155247   1.2569990
18 months   ki1000108-CMC-V-BCS-2002   >3302.75             (2600-2970]       0.7852823   0.6193669   0.9956429
18 months   ki1000108-IRC              (2970-3302.75]       (2600-2970]       0.6684783   0.4526514   0.9872126
18 months   ki1000108-IRC              <=2600               (2600-2970]       1.5395257   1.1580538   2.0466574
18 months   ki1000108-IRC              >3302.75             (2600-2970]       0.3068425   0.1472117   0.6395708
18 months   ki1000109-EE               (2970-3302.75]       (2600-2970]       0.9765625   0.8271940   1.1529028
18 months   ki1000109-EE               <=2600               (2600-2970]       1.1585366   1.0357283   1.2959064
18 months   ki1000109-EE               >3302.75             (2600-2970]       0.8984375   0.7064268   1.1426378
18 months   ki1017093c-NIH-Crypto      (2970-3302.75]       (2600-2970]       0.9772859   0.6691814   1.4272477
18 months   ki1017093c-NIH-Crypto      <=2600               (2600-2970]       1.7754329   1.3350072   2.3611573
18 months   ki1017093c-NIH-Crypto      >3302.75             (2600-2970]       0.3655303   0.1639177   0.8151192
18 months   ki1066203-TanzaniaChild2   (2970-3302.75]       (2600-2970]       0.7837838   0.4703454   1.3060976
18 months   ki1066203-TanzaniaChild2   <=2600               (2600-2970]       1.0175439   0.5135841   2.0160193
18 months   ki1066203-TanzaniaChild2   >3302.75             (2600-2970]       0.3020833   0.1522350   0.5994308
18 months   ki1101329-Keneba           (2970-3302.75]       (2600-2970]       0.5969858   0.4940491   0.7213697
18 months   ki1101329-Keneba           <=2600               (2600-2970]       1.4089336   1.2164936   1.6318161
18 months   ki1101329-Keneba           >3302.75             (2600-2970]       0.3637359   0.2704363   0.4892235
18 months   ki1126311-ZVITAMBO         (2970-3302.75]       (2600-2970]       0.7163880   0.5376327   0.9545768
18 months   ki1126311-ZVITAMBO         <=2600               (2600-2970]       1.2388664   0.9954774   1.5417627
18 months   ki1126311-ZVITAMBO         >3302.75             (2600-2970]       0.6752837   0.4617796   0.9875017
18 months   ki1135781-COHORTS          (2970-3302.75]       (2600-2970]       0.8872080   0.8229691   0.9564613
18 months   ki1135781-COHORTS          <=2600               (2600-2970]       1.2309904   1.1477984   1.3202121
18 months   ki1135781-COHORTS          >3302.75             (2600-2970]       0.7493750   0.6768675   0.8296498
24 months   ki0047075b-MAL-ED          (2970-3302.75]       (2600-2970]       0.7979903   0.6560051   0.9707066
24 months   ki0047075b-MAL-ED          <=2600               (2600-2970]       1.1712299   0.9627057   1.4249209
24 months   ki0047075b-MAL-ED          >3302.75             (2600-2970]       0.5494701   0.4333054   0.6967774
24 months   ki1000108-CMC-V-BCS-2002   (2970-3302.75]       (2600-2970]       0.8325359   0.7046401   0.9836453
24 months   ki1000108-CMC-V-BCS-2002   <=2600               (2600-2970]       1.0323232   0.8886102   1.1992786
24 months   ki1000108-CMC-V-BCS-2002   >3302.75             (2600-2970]       0.7832168   0.6269257   0.9784709
24 months   ki1000108-IRC              (2970-3302.75]       (2600-2970]       0.9882889   0.7358462   1.3273357
24 months   ki1000108-IRC              <=2600               (2600-2970]       1.3074362   1.0008407   1.7079536
24 months   ki1000108-IRC              >3302.75             (2600-2970]       0.2684813   0.1297644   0.5554853
24 months   ki1101329-Keneba           (2970-3302.75]       (2600-2970]       0.6262138   0.5162716   0.7595687
24 months   ki1101329-Keneba           <=2600               (2600-2970]       1.2886231   1.1001417   1.5093961
24 months   ki1101329-Keneba           >3302.75             (2600-2970]       0.4333375   0.3267685   0.5746619
24 months   ki1126311-ZVITAMBO         (2970-3302.75]       (2600-2970]       0.7857143   0.5088659   1.2131819
24 months   ki1126311-ZVITAMBO         <=2600               (2600-2970]       0.9894180   0.6854283   1.4282281
24 months   ki1126311-ZVITAMBO         >3302.75             (2600-2970]       0.8319328   0.5031207   1.3756384
24 months   ki1135781-COHORTS          (2970-3302.75]       (2600-2970]       0.8598897   0.8099830   0.9128714
24 months   ki1135781-COHORTS          <=2600               (2600-2970]       1.2425891   1.1822272   1.3060328
24 months   ki1135781-COHORTS          >3302.75             (2600-2970]       0.6690506   0.6108282   0.7328227
3 months    ki0047075b-MAL-ED          (2970-3302.75]       (2600-2970]       0.5929280   0.4224456   0.8322105
3 months    ki0047075b-MAL-ED          <=2600               (2600-2970]       2.1201376   1.6120404   2.7883813
3 months    ki0047075b-MAL-ED          >3302.75             (2600-2970]       0.2318032   0.1412708   0.3803526
3 months    ki1000108-CMC-V-BCS-2002   (2970-3302.75]       (2600-2970]       0.6287879   0.3698824   1.0689186
3 months    ki1000108-CMC-V-BCS-2002   <=2600               (2600-2970]       1.7379980   1.1379508   2.6544529
3 months    ki1000108-CMC-V-BCS-2002   >3302.75             (2600-2970]       0.3536932   0.1522480   0.8216781
3 months    ki1000109-EE               (2970-3302.75]       (2600-2970]       0.7365729   0.5192504   1.0448517
3 months    ki1000109-EE               <=2600               (2600-2970]       1.4170522   1.1530455   1.7415072
3 months    ki1000109-EE               >3302.75             (2600-2970]       0.2852050   0.1243541   0.6541148
3 months    ki1101329-Keneba           (2970-3302.75]       (2600-2970]       0.5630985   0.3849352   0.8237229
3 months    ki1101329-Keneba           <=2600               (2600-2970]       3.0624655   2.3548004   3.9827982
3 months    ki1101329-Keneba           >3302.75             (2600-2970]       0.2022913   0.0984161   0.4158035
3 months    ki1126311-ZVITAMBO         (2970-3302.75]       (2600-2970]       0.4680326   0.3473601   0.6306266
3 months    ki1126311-ZVITAMBO         <=2600               (2600-2970]       2.5478782   2.0876813   3.1095183
3 months    ki1126311-ZVITAMBO         >3302.75             (2600-2970]       0.2393717   0.1536702   0.3728686
3 months    ki1135781-COHORTS          (2970-3302.75]       (2600-2970]       0.5257732   0.4335126   0.6376688
3 months    ki1135781-COHORTS          <=2600               (2600-2970]       3.2545306   2.8759325   3.6829687
3 months    ki1135781-COHORTS          >3302.75             (2600-2970]       0.2451694   0.1701294   0.3533079
6 months    ki0047075b-MAL-ED          (2970-3302.75]       (2600-2970]       0.7346227   0.5279609   1.0221790
6 months    ki0047075b-MAL-ED          <=2600               (2600-2970]       1.7952993   1.3330886   2.4177685
6 months    ki0047075b-MAL-ED          >3302.75             (2600-2970]       0.3117862   0.1977328   0.4916262
6 months    ki1000108-CMC-V-BCS-2002   (2970-3302.75]       (2600-2970]       0.8076923   0.5224233   1.2487323
6 months    ki1000108-CMC-V-BCS-2002   <=2600               (2600-2970]       1.5052448   1.0186518   2.2242751
6 months    ki1000108-CMC-V-BCS-2002   >3302.75             (2600-2970]       0.5467456   0.2920490   1.0235634
6 months    ki1000108-IRC              (2970-3302.75]       (2600-2970]       0.6206897   0.3677699   1.0475452
6 months    ki1000108-IRC              <=2600               (2600-2970]       1.5200000   1.0240209   2.2562040
6 months    ki1000108-IRC              >3302.75             (2600-2970]       0.5245902   0.2565901   1.0725076
6 months    ki1000109-EE               (2970-3302.75]       (2600-2970]       0.5372024   0.3484433   0.8282162
6 months    ki1000109-EE               <=2600               (2600-2970]       1.3613921   1.0890868   1.7017822
6 months    ki1000109-EE               >3302.75             (2600-2970]       0.4074755   0.2042954   0.8127264
6 months    ki1017093c-NIH-Crypto      (2970-3302.75]       (2600-2970]       0.6756598   0.3826080   1.1931694
6 months    ki1017093c-NIH-Crypto      <=2600               (2600-2970]       2.7204729   1.8964053   3.9026326
6 months    ki1017093c-NIH-Crypto      >3302.75             (2600-2970]       0.4197435   0.1688454   1.0434672
6 months    ki1066203-TanzaniaChild2   (2970-3302.75]       (2600-2970]       0.7069219   0.3050288   1.6383327
6 months    ki1066203-TanzaniaChild2   <=2600               (2600-2970]       2.0408163   0.8442883   4.9330674
6 months    ki1066203-TanzaniaChild2   >3302.75             (2600-2970]       0.4243281   0.1686269   1.0677680
6 months    ki1101329-Keneba           (2970-3302.75]       (2600-2970]       0.4874884   0.3420479   0.6947711
6 months    ki1101329-Keneba           <=2600               (2600-2970]       1.9396130   1.5019021   2.5048893
6 months    ki1101329-Keneba           >3302.75             (2600-2970]       0.3345806   0.2022940   0.5533736
6 months    ki1126311-ZVITAMBO         (2970-3302.75]       (2600-2970]       0.6075281   0.4568593   0.8078863
6 months    ki1126311-ZVITAMBO         <=2600               (2600-2970]       1.9706932   1.5726636   2.4694613
6 months    ki1126311-ZVITAMBO         >3302.75             (2600-2970]       0.3787684   0.2578431   0.5564062
6 months    ki1135781-COHORTS          (2970-3302.75]       (2600-2970]       0.6494058   0.5689676   0.7412159
6 months    ki1135781-COHORTS          <=2600               (2600-2970]       2.0135600   1.8299137   2.2156368
6 months    ki1135781-COHORTS          >3302.75             (2600-2970]       0.3716752   0.2968974   0.4652868
9 months    ki0047075b-MAL-ED          (2970-3302.75]       (2600-2970]       0.7702213   0.5804595   1.0220194
9 months    ki0047075b-MAL-ED          <=2600               (2600-2970]       1.5620048   1.1982848   2.0361262
9 months    ki0047075b-MAL-ED          >3302.75             (2600-2970]       0.4142444   0.2882223   0.5953682
9 months    ki1000108-CMC-V-BCS-2002   (2970-3302.75]       (2600-2970]       1.0990676   0.7406920   1.6308393
9 months    ki1000108-CMC-V-BCS-2002   <=2600               (2600-2970]       1.7009507   1.1729317   2.4666682
9 months    ki1000108-CMC-V-BCS-2002   >3302.75             (2600-2970]       0.7509158   0.4354886   1.2948088
9 months    ki1000108-IRC              (2970-3302.75]       (2600-2970]       0.6154650   0.3713977   1.0199232
9 months    ki1000108-IRC              <=2600               (2600-2970]       1.7284848   1.2038361   2.4817829
9 months    ki1000108-IRC              >3302.75             (2600-2970]       0.4927968   0.2423161   1.0021980
9 months    ki1000109-EE               (2970-3302.75]       (2600-2970]       0.7928389   0.5719180   1.0990972
9 months    ki1000109-EE               <=2600               (2600-2970]       1.3649811   1.1129235   1.6741252
9 months    ki1000109-EE               >3302.75             (2600-2970]       0.4420677   0.2350722   0.8313355
9 months    ki1017093c-NIH-Crypto      (2970-3302.75]       (2600-2970]       0.5749510   0.3483953   0.9488320
9 months    ki1017093c-NIH-Crypto      <=2600               (2600-2970]       2.0302326   1.4910349   2.7644183
9 months    ki1017093c-NIH-Crypto      >3302.75             (2600-2970]       0.2990033   0.1225714   0.7293954
9 months    ki1066203-TanzaniaChild2   (2970-3302.75]       (2600-2970]       0.6578947   0.3598757   1.2027083
9 months    ki1066203-TanzaniaChild2   <=2600               (2600-2970]       1.1718750   0.5577002   2.4624180
9 months    ki1066203-TanzaniaChild2   >3302.75             (2600-2970]       0.3095238   0.1506982   0.6357407
9 months    ki1101329-Keneba           (2970-3302.75]       (2600-2970]       0.4275723   0.3157136   0.5790630
9 months    ki1101329-Keneba           <=2600               (2600-2970]       1.6454113   1.3309114   2.0342289
9 months    ki1101329-Keneba           >3302.75             (2600-2970]       0.2511896   0.1560470   0.4043413
9 months    ki1126311-ZVITAMBO         (2970-3302.75]       (2600-2970]       0.6463307   0.5012711   0.8333681
9 months    ki1126311-ZVITAMBO         <=2600               (2600-2970]       1.7166377   1.3927286   2.1158788
9 months    ki1126311-ZVITAMBO         >3302.75             (2600-2970]       0.4633153   0.3322606   0.6460625
9 months    ki1135781-COHORTS          (2970-3302.75]       (2600-2970]       0.6572196   0.5912386   0.7305639
9 months    ki1135781-COHORTS          <=2600               (2600-2970]       1.5801124   1.4601126   1.7099745
9 months    ki1135781-COHORTS          >3302.75             (2600-2970]       0.4452933   0.3765322   0.5266113
Birth       ki0047075b-MAL-ED          (2970-3302.75]       (2600-2970]       0.5303765   0.3302751   0.8517120
Birth       ki0047075b-MAL-ED          <=2600               (2600-2970]       4.0144742   2.8651666   5.6248051
Birth       ki0047075b-MAL-ED          >3302.75             (2600-2970]       0.1533120   0.0691049   0.3401286
Birth       ki1126311-ZVITAMBO         (2970-3302.75]       (2600-2970]       0.5044558   0.3577708   0.7112813
Birth       ki1126311-ZVITAMBO         <=2600               (2600-2970]       3.3626792   2.6638407   4.2448527
Birth       ki1126311-ZVITAMBO         >3302.75             (2600-2970]       0.2353238   0.1390636   0.3982156
Birth       ki1135781-COHORTS          (2970-3302.75]       (2600-2970]       0.2867980   0.1914406   0.4296534
Birth       ki1135781-COHORTS          <=2600               (2600-2970]       7.6449742   6.2606143   9.3354465
Birth       ki1135781-COHORTS          >3302.75             (2600-2970]       0.1254581   0.0552008   0.2851363


### Parameter: PAR


agecat      studyid                    intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -------------------  ---------------  -----------  -----------  -----------
12 months   ki0047075b-MAL-ED          (2600-2970]          NA                -0.0190437   -0.0674373    0.0293499
12 months   ki1000108-CMC-V-BCS-2002   (2600-2970]          NA                -0.0027174   -0.1117678    0.1063330
12 months   ki1000108-IRC              (2600-2970]          NA                -0.0645935   -0.1498232    0.0206362
12 months   ki1000109-EE               (2600-2970]          NA                 0.0621118   -0.0364993    0.1607229
12 months   ki1066203-TanzaniaChild2   (2600-2970]          NA                -0.1115239   -0.2489125    0.0258648
12 months   ki1101329-Keneba           (2600-2970]          NA                -0.0384623   -0.0790447    0.0021200
12 months   ki1126311-ZVITAMBO         (2600-2970]          NA                -0.0294195   -0.0687180    0.0098789
12 months   ki1135781-COHORTS          (2600-2970]          NA                -0.0009359   -0.0215936    0.0197219
18 months   ki0047075b-MAL-ED          (2600-2970]          NA                -0.0509920   -0.1061717    0.0041878
18 months   ki1000108-CMC-V-BCS-2002   (2600-2970]          NA                -0.0677507   -0.1613008    0.0257995
18 months   ki1000108-IRC              (2600-2970]          NA                -0.0256128   -0.1125825    0.0613568
18 months   ki1000109-EE               (2600-2970]          NA                 0.0485714   -0.0345741    0.1317169
18 months   ki1017093c-NIH-Crypto      (2600-2970]          NA                 0.0525572   -0.0091371    0.1142515
18 months   ki1066203-TanzaniaChild2   (2600-2970]          NA                -0.1471264   -0.3272884    0.0330356
18 months   ki1101329-Keneba           (2600-2970]          NA                -0.0671934   -0.1102561   -0.0241308
18 months   ki1126311-ZVITAMBO         (2600-2970]          NA                -0.0357473   -0.1157172    0.0442225
18 months   ki1135781-COHORTS          (2600-2970]          NA                -0.0329340   -0.0674233    0.0015552
24 months   ki0047075b-MAL-ED          (2600-2970]          NA                -0.0643788   -0.1205468   -0.0082107
24 months   ki1000108-CMC-V-BCS-2002   (2600-2970]          NA                -0.0706605   -0.1589043    0.0175833
24 months   ki1000108-IRC              (2600-2970]          NA                -0.0155087   -0.1037213    0.0727040
24 months   ki1101329-Keneba           (2600-2970]          NA                -0.0686192   -0.1149000   -0.0223384
24 months   ki1126311-ZVITAMBO         (2600-2970]          NA                -0.0501567   -0.1933382    0.0930248
24 months   ki1135781-COHORTS          (2600-2970]          NA                -0.0093832   -0.0307743    0.0120080
3 months    ki0047075b-MAL-ED          (2600-2970]          NA                -0.0289207   -0.0689022    0.0110608
3 months    ki1000108-CMC-V-BCS-2002   (2600-2970]          NA                -0.0164415   -0.1125106    0.0796277
3 months    ki1000109-EE               (2600-2970]          NA                 0.0458777   -0.0559764    0.1477317
3 months    ki1101329-Keneba           (2600-2970]          NA                 0.0148156   -0.0129123    0.0425434
3 months    ki1126311-ZVITAMBO         (2600-2970]          NA                -0.0068362   -0.0380036    0.0243311
3 months    ki1135781-COHORTS          (2600-2970]          NA                 0.0460246    0.0343954    0.0576537
6 months    ki0047075b-MAL-ED          (2600-2970]          NA                -0.0259115   -0.0668220    0.0149989
6 months    ki1000108-CMC-V-BCS-2002   (2600-2970]          NA                -0.0087108   -0.1082587    0.0908371
6 months    ki1000108-IRC              (2600-2970]          NA                -0.0130923   -0.0899533    0.0637688
6 months    ki1000109-EE               (2600-2970]          NA                 0.0135540   -0.0888434    0.1159515
6 months    ki1017093c-NIH-Crypto      (2600-2970]          NA                 0.0662717    0.0184418    0.1141016
6 months    ki1066203-TanzaniaChild2   (2600-2970]          NA                -0.0303213   -0.1117553    0.0511128
6 months    ki1101329-Keneba           (2600-2970]          NA                -0.0163569   -0.0478098    0.0150960
6 months    ki1126311-ZVITAMBO         (2600-2970]          NA                -0.0147000   -0.0468676    0.0174675
6 months    ki1135781-COHORTS          (2600-2970]          NA                 0.0220619    0.0070388    0.0370850
9 months    ki0047075b-MAL-ED          (2600-2970]          NA                -0.0323824   -0.0782523    0.0134876
9 months    ki1000108-CMC-V-BCS-2002   (2600-2970]          NA                 0.0517793   -0.0496367    0.1531952
9 months    ki1000108-IRC              (2600-2970]          NA                -0.0017899   -0.0806014    0.0770216
9 months    ki1000109-EE               (2600-2970]          NA                 0.0445091   -0.0581963    0.1472145
9 months    ki1017093c-NIH-Crypto      (2600-2970]          NA                 0.0332205   -0.0209399    0.0873810
9 months    ki1066203-TanzaniaChild2   (2600-2970]          NA                -0.0974766   -0.2161669    0.0212136
9 months    ki1101329-Keneba           (2600-2970]          NA                -0.0442355   -0.0805259   -0.0079450
9 months    ki1126311-ZVITAMBO         (2600-2970]          NA                -0.0188475   -0.0535230    0.0158279
9 months    ki1135781-COHORTS          (2600-2970]          NA                -0.0013934   -0.0197494    0.0169625
Birth       ki0047075b-MAL-ED          (2600-2970]          NA                 0.0154121   -0.0192682    0.0500924
Birth       ki1126311-ZVITAMBO         (2600-2970]          NA                 0.0144423   -0.0042273    0.0331119
Birth       ki1135781-COHORTS          (2600-2970]          NA                 0.0622570    0.0549057    0.0696082


### Parameter: PAF


agecat      studyid                    intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -------------------  ---------------  -----------  -----------  -----------
12 months   ki0047075b-MAL-ED          (2600-2970]          NA                -0.0789721   -0.2997204    0.1042837
12 months   ki1000108-CMC-V-BCS-2002   (2600-2970]          NA                -0.0054645   -0.2505273    0.1915740
12 months   ki1000108-IRC              (2600-2970]          NA                -0.2266438   -0.5672197    0.0399207
12 months   ki1000109-EE               (2600-2970]          NA                 0.0869565   -0.0617725    0.2148522
12 months   ki1066203-TanzaniaChild2   (2600-2970]          NA                -0.7697335   -2.0280291   -0.0343219
12 months   ki1101329-Keneba           (2600-2970]          NA                -0.1537536   -0.3287440   -0.0018087
12 months   ki1126311-ZVITAMBO         (2600-2970]          NA                -0.1237223   -0.3021001    0.0302191
12 months   ki1135781-COHORTS          (2600-2970]          NA                -0.0025474   -0.0603858    0.0521363
18 months   ki0047075b-MAL-ED          (2600-2970]          NA                -0.1431658   -0.3092765    0.0018701
18 months   ki1000108-CMC-V-BCS-2002   (2600-2970]          NA                -0.0984252   -0.2432573    0.0295349
18 months   ki1000108-IRC              (2600-2970]          NA                -0.0735217   -0.3553237    0.1496874
18 months   ki1000109-EE               (2600-2970]          NA                 0.0572391   -0.0459604    0.1502564
18 months   ki1017093c-NIH-Crypto      (2600-2970]          NA                 0.1744568   -0.0570735    0.3552751
18 months   ki1066203-TanzaniaChild2   (2600-2970]          NA                -0.5517241   -1.4028243   -0.0020906
18 months   ki1101329-Keneba           (2600-2970]          NA                -0.2030960   -0.3414033   -0.0790490
18 months   ki1126311-ZVITAMBO         (2600-2970]          NA                -0.0754073   -0.2583061    0.0809066
18 months   ki1135781-COHORTS          (2600-2970]          NA                -0.0535932   -0.1112763    0.0010958
24 months   ki0047075b-MAL-ED          (2600-2970]          NA                -0.1929932   -0.3741208   -0.0357407
24 months   ki1000108-CMC-V-BCS-2002   (2600-2970]          NA                -0.0988185   -0.2295463    0.0180101
24 months   ki1000108-IRC              (2600-2970]          NA                -0.0376506   -0.2757413    0.1560054
24 months   ki1101329-Keneba           (2600-2970]          NA                -0.2005144   -0.3443105   -0.0720996
24 months   ki1126311-ZVITAMBO         (2600-2970]          NA                -0.0855615   -0.3596353    0.1332648
24 months   ki1135781-COHORTS          (2600-2970]          NA                -0.0178677   -0.0594362    0.0220699
3 months    ki0047075b-MAL-ED          (2600-2970]          NA                -0.1977880   -0.5063399    0.0475615
3 months    ki1000108-CMC-V-BCS-2002   (2600-2970]          NA                -0.0661312   -0.5326282    0.2583748
3 months    ki1000109-EE               (2600-2970]          NA                 0.0794931   -0.1144416    0.2396794
3 months    ki1101329-Keneba           (2600-2970]          NA                 0.1091352   -0.1193474    0.2909796
3 months    ki1126311-ZVITAMBO         (2600-2970]          NA                -0.0397521   -0.2380759    0.1268027
3 months    ki1135781-COHORTS          (2600-2970]          NA                 0.3128832    0.2301431    0.3867308
6 months    ki0047075b-MAL-ED          (2600-2970]          NA                -0.1771198   -0.4935204    0.0722516
6 months    ki1000108-CMC-V-BCS-2002   (2600-2970]          NA                -0.0289575   -0.4194464    0.2541081
6 months    ki1000108-IRC              (2600-2970]          NA                -0.0552632   -0.4354580    0.2242334
6 months    ki1000109-EE               (2600-2970]          NA                 0.0261249   -0.1924558    0.2046391
6 months    ki1017093c-NIH-Crypto      (2600-2970]          NA                 0.3158951    0.0489783    0.5078981
6 months    ki1066203-TanzaniaChild2   (2600-2970]          NA                -0.3511628   -1.7178672    0.3282818
6 months    ki1101329-Keneba           (2600-2970]          NA                -0.1156475   -0.3623487    0.0863798
6 months    ki1126311-ZVITAMBO         (2600-2970]          NA                -0.0902751   -0.3072391    0.0906792
6 months    ki1135781-COHORTS          (2600-2970]          NA                 0.1088122    0.0317384    0.1797509
9 months    ki0047075b-MAL-ED          (2600-2970]          NA                -0.1702648   -0.4385913    0.0480133
9 months    ki1000108-CMC-V-BCS-2002   (2600-2970]          NA                 0.1403794   -0.1830858    0.3754066
9 months    ki1000108-IRC              (2600-2970]          NA                -0.0067712   -0.3538275    0.2513166
9 months    ki1000109-EE               (2600-2970]          NA                 0.0750706   -0.1150233    0.2327565
9 months    ki1017093c-NIH-Crypto      (2600-2970]          NA                 0.1430104   -0.1236426    0.3463836
9 months    ki1066203-TanzaniaChild2   (2600-2970]          NA                -0.6839344   -1.7648652   -0.0255962
9 months    ki1101329-Keneba           (2600-2970]          NA                -0.2432950   -0.4611994   -0.0578861
9 months    ki1126311-ZVITAMBO         (2600-2970]          NA                -0.0969585   -0.2909676    0.0678946
9 months    ki1135781-COHORTS          (2600-2970]          NA                -0.0050287   -0.0735106    0.0590846
Birth       ki0047075b-MAL-ED          (2600-2970]          NA                 0.1231314   -0.2006038    0.3595734
Birth       ki1126311-ZVITAMBO         (2600-2970]          NA                 0.1383655   -0.0594554    0.2992493
Birth       ki1135781-COHORTS          (2600-2970]          NA                 0.6310679    0.5525653    0.6957971


