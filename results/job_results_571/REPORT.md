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

**Intervention Variable:** nrooms

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
* agecat: 12 months, studyid: ki1113344-GMS-Nepal
* agecat: 12 months, studyid: ki1114097-CONTENT
* agecat: 12 months, studyid: ki1135781-COHORTS
* agecat: 18 months, studyid: ki0047075b-MAL-ED
* agecat: 18 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 18 months, studyid: ki1000108-IRC
* agecat: 18 months, studyid: ki1017093b-PROVIDE
* agecat: 18 months, studyid: ki1017093c-NIH-Crypto
* agecat: 18 months, studyid: ki1113344-GMS-Nepal
* agecat: 18 months, studyid: ki1114097-CONTENT
* agecat: 24 months, studyid: ki0047075b-MAL-ED
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 24 months, studyid: ki1000108-IRC
* agecat: 24 months, studyid: ki1017093b-PROVIDE
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto
* agecat: 24 months, studyid: ki1113344-GMS-Nepal
* agecat: 24 months, studyid: ki1114097-CONTENT
* agecat: 24 months, studyid: ki1135781-COHORTS
* agecat: 3 months, studyid: ki0047075b-MAL-ED
* agecat: 3 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 3 months, studyid: ki1000108-IRC
* agecat: 3 months, studyid: ki1017093b-PROVIDE
* agecat: 3 months, studyid: ki1017093c-NIH-Crypto
* agecat: 3 months, studyid: ki1113344-GMS-Nepal
* agecat: 3 months, studyid: ki1114097-CONTENT
* agecat: 3 months, studyid: ki1135781-COHORTS
* agecat: 6 months, studyid: ki0047075b-MAL-ED
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 6 months, studyid: ki1000108-IRC
* agecat: 6 months, studyid: ki1017093b-PROVIDE
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto
* agecat: 6 months, studyid: ki1113344-GMS-Nepal
* agecat: 6 months, studyid: ki1114097-CONTENT
* agecat: 6 months, studyid: ki1135781-COHORTS
* agecat: 9 months, studyid: ki0047075b-MAL-ED
* agecat: 9 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 9 months, studyid: ki1000108-IRC
* agecat: 9 months, studyid: ki1017093b-PROVIDE
* agecat: 9 months, studyid: ki1017093c-NIH-Crypto
* agecat: 9 months, studyid: ki1113344-GMS-Nepal
* agecat: 9 months, studyid: ki1114097-CONTENT
* agecat: 9 months, studyid: ki1135781-COHORTS
* agecat: Birth, studyid: ki0047075b-MAL-ED
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002
* agecat: Birth, studyid: ki1000108-IRC
* agecat: Birth, studyid: ki1017093c-NIH-Crypto
* agecat: Birth, studyid: ki1114097-CONTENT
* agecat: Birth, studyid: ki1135781-COHORTS

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002
* agecat: Birth, studyid: ki1000108-IRC
* agecat: Birth, studyid: ki1017093c-NIH-Crypto
* agecat: Birth, studyid: ki1114097-CONTENT
* agecat: Birth, studyid: ki1135781-COHORTS
* agecat: 3 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 3 months, studyid: ki1000108-IRC
* agecat: 3 months, studyid: ki1017093b-PROVIDE
* agecat: 3 months, studyid: ki1017093c-NIH-Crypto
* agecat: 3 months, studyid: ki1113344-GMS-Nepal
* agecat: 3 months, studyid: ki1114097-CONTENT
* agecat: 3 months, studyid: ki1135781-COHORTS
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 6 months, studyid: ki1000108-IRC
* agecat: 6 months, studyid: ki1017093b-PROVIDE
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto
* agecat: 6 months, studyid: ki1113344-GMS-Nepal
* agecat: 6 months, studyid: ki1114097-CONTENT
* agecat: 6 months, studyid: ki1135781-COHORTS
* agecat: 9 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 9 months, studyid: ki1000108-IRC
* agecat: 9 months, studyid: ki1017093b-PROVIDE
* agecat: 9 months, studyid: ki1017093c-NIH-Crypto
* agecat: 9 months, studyid: ki1113344-GMS-Nepal
* agecat: 9 months, studyid: ki1114097-CONTENT
* agecat: 9 months, studyid: ki1135781-COHORTS
* agecat: 12 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 12 months, studyid: ki1000108-IRC
* agecat: 12 months, studyid: ki1017093b-PROVIDE
* agecat: 12 months, studyid: ki1017093c-NIH-Crypto
* agecat: 12 months, studyid: ki1114097-CONTENT
* agecat: 12 months, studyid: ki1135781-COHORTS
* agecat: 18 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 18 months, studyid: ki1000108-IRC
* agecat: 18 months, studyid: ki1017093b-PROVIDE
* agecat: 18 months, studyid: ki1017093c-NIH-Crypto
* agecat: 18 months, studyid: ki1114097-CONTENT
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 24 months, studyid: ki1000108-IRC
* agecat: 24 months, studyid: ki1017093b-PROVIDE
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto
* agecat: 24 months, studyid: ki1114097-CONTENT
* agecat: 24 months, studyid: ki1135781-COHORTS

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness




# Results Detail

## Results Plots
![](/tmp/8c011cae-5111-4cfb-b504-29c97b968d78/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/8c011cae-5111-4cfb-b504-29c97b968d78/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/8c011cae-5111-4cfb-b504-29c97b968d78/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/8c011cae-5111-4cfb-b504-29c97b968d78/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Data Summary

agecat      studyid                    A        n     nA   nAY0   nAY1
----------  -------------------------  ---  -----  -----  -----  -----
Birth       ki0047075b-MAL-ED          1     1365    289    279     10
Birth       ki0047075b-MAL-ED          2     1365    254    246      8
Birth       ki0047075b-MAL-ED          3     1365    242    234      8
Birth       ki0047075b-MAL-ED          4+    1365    580    567     13
Birth       ki1000108-CMC-V-BCS-2002   1       90     38     36      2
Birth       ki1000108-CMC-V-BCS-2002   2       90     28     28      0
Birth       ki1000108-CMC-V-BCS-2002   3       90     19     18      1
Birth       ki1000108-CMC-V-BCS-2002   4+      90      5      5      0
Birth       ki1000108-IRC              1      386    175    167      8
Birth       ki1000108-IRC              2      386    161    153      8
Birth       ki1000108-IRC              3      386     33     33      0
Birth       ki1000108-IRC              4+     386     17     17      0
Birth       ki1017093b-PROVIDE         1        0      0      0      0
Birth       ki1017093b-PROVIDE         2        0      0      0      0
Birth       ki1017093b-PROVIDE         3        0      0      0      0
Birth       ki1017093b-PROVIDE         4+       0      0      0      0
Birth       ki1017093c-NIH-Crypto      1       27     17     17      0
Birth       ki1017093c-NIH-Crypto      2       27      7      7      0
Birth       ki1017093c-NIH-Crypto      3       27      0      0      0
Birth       ki1017093c-NIH-Crypto      4+      27      3      2      1
Birth       ki1113344-GMS-Nepal        1        0      0      0      0
Birth       ki1113344-GMS-Nepal        2        0      0      0      0
Birth       ki1113344-GMS-Nepal        3        0      0      0      0
Birth       ki1113344-GMS-Nepal        4+       0      0      0      0
Birth       ki1114097-CONTENT          1        2      0      0      0
Birth       ki1114097-CONTENT          2        2      1      1      0
Birth       ki1114097-CONTENT          3        2      0      0      0
Birth       ki1114097-CONTENT          4+       2      1      1      0
Birth       ki1135781-COHORTS          1     4769   3125   3021    104
Birth       ki1135781-COHORTS          2     4769   1385   1356     29
Birth       ki1135781-COHORTS          3     4769    167    160      7
Birth       ki1135781-COHORTS          4+    4769     92     91      1
3 months    ki0047075b-MAL-ED          1     1697    337    329      8
3 months    ki0047075b-MAL-ED          2     1697    316    299     17
3 months    ki0047075b-MAL-ED          3     1697    309    301      8
3 months    ki0047075b-MAL-ED          4+    1697    735    706     29
3 months    ki1000108-CMC-V-BCS-2002   1      362    195    181     14
3 months    ki1000108-CMC-V-BCS-2002   2      362    102     91     11
3 months    ki1000108-CMC-V-BCS-2002   3      362     51     43      8
3 months    ki1000108-CMC-V-BCS-2002   4+     362     14     14      0
3 months    ki1000108-IRC              1      405    184    166     18
3 months    ki1000108-IRC              2      405    168    155     13
3 months    ki1000108-IRC              3      405     36     32      4
3 months    ki1000108-IRC              4+     405     17     16      1
3 months    ki1017093b-PROVIDE         1      168    118    114      4
3 months    ki1017093b-PROVIDE         2      168     26     26      0
3 months    ki1017093b-PROVIDE         3      168     17     16      1
3 months    ki1017093b-PROVIDE         4+     168      7      7      0
3 months    ki1017093c-NIH-Crypto      1      728    349    333     16
3 months    ki1017093c-NIH-Crypto      2      728    186    175     11
3 months    ki1017093c-NIH-Crypto      3      728    102     99      3
3 months    ki1017093c-NIH-Crypto      4+     728     91     88      3
3 months    ki1113344-GMS-Nepal        1      571     40     38      2
3 months    ki1113344-GMS-Nepal        2      571    121    113      8
3 months    ki1113344-GMS-Nepal        3      571    140    134      6
3 months    ki1113344-GMS-Nepal        4+     571    270    264      6
3 months    ki1114097-CONTENT          1      215     44     44      0
3 months    ki1114097-CONTENT          2      215     54     53      1
3 months    ki1114097-CONTENT          3      215     39     39      0
3 months    ki1114097-CONTENT          4+     215     78     76      2
3 months    ki1135781-COHORTS          1     5077   3327   3172    155
3 months    ki1135781-COHORTS          2     5077   1467   1437     30
3 months    ki1135781-COHORTS          3     5077    185    182      3
3 months    ki1135781-COHORTS          4+    5077     98     98      0
6 months    ki0047075b-MAL-ED          1     1686    336    323     13
6 months    ki0047075b-MAL-ED          2     1686    312    297     15
6 months    ki0047075b-MAL-ED          3     1686    306    301      5
6 months    ki0047075b-MAL-ED          4+    1686    732    715     17
6 months    ki1000108-CMC-V-BCS-2002   1      369    198    179     19
6 months    ki1000108-CMC-V-BCS-2002   2      369    106     91     15
6 months    ki1000108-CMC-V-BCS-2002   3      369     51     43      8
6 months    ki1000108-CMC-V-BCS-2002   4+     369     14     14      0
6 months    ki1000108-IRC              1      405    183    172     11
6 months    ki1000108-IRC              2      405    170    156     14
6 months    ki1000108-IRC              3      405     35     32      3
6 months    ki1000108-IRC              4+     405     17     16      1
6 months    ki1017093b-PROVIDE         1      153    106    101      5
6 months    ki1017093b-PROVIDE         2      153     24     23      1
6 months    ki1017093b-PROVIDE         3      153     16     16      0
6 months    ki1017093b-PROVIDE         4+     153      7      7      0
6 months    ki1017093c-NIH-Crypto      1      715    339    326     13
6 months    ki1017093c-NIH-Crypto      2      715    184    178      6
6 months    ki1017093c-NIH-Crypto      3      715    101     98      3
6 months    ki1017093c-NIH-Crypto      4+     715     91     90      1
6 months    ki1113344-GMS-Nepal        1      563     40     38      2
6 months    ki1113344-GMS-Nepal        2      563    115    108      7
6 months    ki1113344-GMS-Nepal        3      563    141    136      5
6 months    ki1113344-GMS-Nepal        4+     563    267    261      6
6 months    ki1114097-CONTENT          1      215     44     43      1
6 months    ki1114097-CONTENT          2      215     54     53      1
6 months    ki1114097-CONTENT          3      215     39     39      0
6 months    ki1114097-CONTENT          4+     215     78     76      2
6 months    ki1135781-COHORTS          1     4962   3213   3000    213
6 months    ki1135781-COHORTS          2     4962   1474   1448     26
6 months    ki1135781-COHORTS          3     4962    182    179      3
6 months    ki1135781-COHORTS          4+    4962     93     93      0
9 months    ki0047075b-MAL-ED          1     1638    329    316     13
9 months    ki0047075b-MAL-ED          2     1638    295    275     20
9 months    ki0047075b-MAL-ED          3     1638    299    291      8
9 months    ki0047075b-MAL-ED          4+    1638    715    684     31
9 months    ki1000108-CMC-V-BCS-2002   1      366    199    172     27
9 months    ki1000108-CMC-V-BCS-2002   2      366    103     89     14
9 months    ki1000108-CMC-V-BCS-2002   3      366     50     44      6
9 months    ki1000108-CMC-V-BCS-2002   4+     366     14     14      0
9 months    ki1000108-IRC              1      405    183    169     14
9 months    ki1000108-IRC              2      405    170    156     14
9 months    ki1000108-IRC              3      405     35     31      4
9 months    ki1000108-IRC              4+     405     17     15      2
9 months    ki1017093b-PROVIDE         1      158    109    102      7
9 months    ki1017093b-PROVIDE         2      158     26     24      2
9 months    ki1017093b-PROVIDE         3      158     16     16      0
9 months    ki1017093b-PROVIDE         4+     158      7      7      0
9 months    ki1017093c-NIH-Crypto      1      706    332    320     12
9 months    ki1017093c-NIH-Crypto      2      706    184    175      9
9 months    ki1017093c-NIH-Crypto      3      706    101     98      3
9 months    ki1017093c-NIH-Crypto      4+     706     89     85      4
9 months    ki1113344-GMS-Nepal        1      551     38     35      3
9 months    ki1113344-GMS-Nepal        2      551    117    109      8
9 months    ki1113344-GMS-Nepal        3      551    136    128      8
9 months    ki1113344-GMS-Nepal        4+     551    260    244     16
9 months    ki1114097-CONTENT          1      214     44     41      3
9 months    ki1114097-CONTENT          2      214     54     54      0
9 months    ki1114097-CONTENT          3      214     38     38      0
9 months    ki1114097-CONTENT          4+     214     78     76      2
9 months    ki1135781-COHORTS          1     4337   2793   2493    300
9 months    ki1135781-COHORTS          2     4337   1306   1253     53
9 months    ki1135781-COHORTS          3     4337    156    149      7
9 months    ki1135781-COHORTS          4+    4337     82     80      2
12 months   ki0047075b-MAL-ED          1     1615    325    301     24
12 months   ki0047075b-MAL-ED          2     1615    291    263     28
12 months   ki0047075b-MAL-ED          3     1615    290    280     10
12 months   ki0047075b-MAL-ED          4+    1615    709    669     40
12 months   ki1000108-CMC-V-BCS-2002   1      368    200    153     47
12 months   ki1000108-CMC-V-BCS-2002   2      368    105     81     24
12 months   ki1000108-CMC-V-BCS-2002   3      368     49     39     10
12 months   ki1000108-CMC-V-BCS-2002   4+     368     14     12      2
12 months   ki1000108-IRC              1      404    184    168     16
12 months   ki1000108-IRC              2      404    169    157     12
12 months   ki1000108-IRC              3      404     34     30      4
12 months   ki1000108-IRC              4+     404     17     15      2
12 months   ki1017093b-PROVIDE         1      153    105     95     10
12 months   ki1017093b-PROVIDE         2      153     25     23      2
12 months   ki1017093b-PROVIDE         3      153     16     16      0
12 months   ki1017093b-PROVIDE         4+     153      7      6      1
12 months   ki1017093c-NIH-Crypto      1      706    331    315     16
12 months   ki1017093c-NIH-Crypto      2      706    183    166     17
12 months   ki1017093c-NIH-Crypto      3      706    102     99      3
12 months   ki1017093c-NIH-Crypto      4+     706     90     85      5
12 months   ki1113344-GMS-Nepal        1      558     38     31      7
12 months   ki1113344-GMS-Nepal        2      558    119    104     15
12 months   ki1113344-GMS-Nepal        3      558    136    127      9
12 months   ki1113344-GMS-Nepal        4+     558    265    245     20
12 months   ki1114097-CONTENT          1      215     44     43      1
12 months   ki1114097-CONTENT          2      215     54     54      0
12 months   ki1114097-CONTENT          3      215     39     39      0
12 months   ki1114097-CONTENT          4+     215     78     76      2
12 months   ki1135781-COHORTS          1     3874   2451   2057    394
12 months   ki1135781-COHORTS          2     3874   1202   1131     71
12 months   ki1135781-COHORTS          3     3874    143    133     10
12 months   ki1135781-COHORTS          4+    3874     78     75      3
18 months   ki0047075b-MAL-ED          1     1546    312    267     45
18 months   ki0047075b-MAL-ED          2     1546    275    232     43
18 months   ki0047075b-MAL-ED          3     1546    279    252     27
18 months   ki0047075b-MAL-ED          4+    1546    680    610     70
18 months   ki1000108-CMC-V-BCS-2002   1      369    200    139     61
18 months   ki1000108-CMC-V-BCS-2002   2      369    105     71     34
18 months   ki1000108-CMC-V-BCS-2002   3      369     51     39     12
18 months   ki1000108-CMC-V-BCS-2002   4+     369     13     11      2
18 months   ki1000108-IRC              1      403    182    166     16
18 months   ki1000108-IRC              2      403    169    156     13
18 months   ki1000108-IRC              3      403     35     33      2
18 months   ki1000108-IRC              4+     403     17     14      3
18 months   ki1017093b-PROVIDE         1      141     95     79     16
18 months   ki1017093b-PROVIDE         2      141     23     22      1
18 months   ki1017093b-PROVIDE         3      141     16     15      1
18 months   ki1017093b-PROVIDE         4+     141      7      5      2
18 months   ki1017093c-NIH-Crypto      1      634    287    267     20
18 months   ki1017093c-NIH-Crypto      2      634    169    153     16
18 months   ki1017093c-NIH-Crypto      3      634     92     91      1
18 months   ki1017093c-NIH-Crypto      4+     634     86     81      5
18 months   ki1113344-GMS-Nepal        1      550     37     31      6
18 months   ki1113344-GMS-Nepal        2      550    120    100     20
18 months   ki1113344-GMS-Nepal        3      550    136    116     20
18 months   ki1113344-GMS-Nepal        4+     550    257    218     39
18 months   ki1114097-CONTENT          1      200     38     36      2
18 months   ki1114097-CONTENT          2      200     51     50      1
18 months   ki1114097-CONTENT          3      200     38     37      1
18 months   ki1114097-CONTENT          4+     200     73     72      1
18 months   ki1135781-COHORTS          1        0      0      0      0
18 months   ki1135781-COHORTS          2        0      0      0      0
18 months   ki1135781-COHORTS          3        0      0      0      0
18 months   ki1135781-COHORTS          4+       0      0      0      0
24 months   ki0047075b-MAL-ED          1     1489    302    263     39
24 months   ki0047075b-MAL-ED          2     1489    262    222     40
24 months   ki0047075b-MAL-ED          3     1489    267    240     27
24 months   ki0047075b-MAL-ED          4+    1489    658    592     66
24 months   ki1000108-CMC-V-BCS-2002   1      372    201    130     71
24 months   ki1000108-CMC-V-BCS-2002   2      372    106     72     34
24 months   ki1000108-CMC-V-BCS-2002   3      372     51     36     15
24 months   ki1000108-CMC-V-BCS-2002   4+     372     14     11      3
24 months   ki1000108-IRC              1      407    184    159     25
24 months   ki1000108-IRC              2      407    170    158     12
24 months   ki1000108-IRC              3      407     36     34      2
24 months   ki1000108-IRC              4+     407     17     15      2
24 months   ki1017093b-PROVIDE         1      149    102     89     13
24 months   ki1017093b-PROVIDE         2      149     24     21      3
24 months   ki1017093b-PROVIDE         3      149     16     15      1
24 months   ki1017093b-PROVIDE         4+     149      7      6      1
24 months   ki1017093c-NIH-Crypto      1      514    217    200     17
24 months   ki1017093c-NIH-Crypto      2      514    137    121     16
24 months   ki1017093c-NIH-Crypto      3      514     78     78      0
24 months   ki1017093c-NIH-Crypto      4+     514     82     80      2
24 months   ki1113344-GMS-Nepal        1      499     36     30      6
24 months   ki1113344-GMS-Nepal        2      499    108     92     16
24 months   ki1113344-GMS-Nepal        3      499    118    108     10
24 months   ki1113344-GMS-Nepal        4+     499    237    215     22
24 months   ki1114097-CONTENT          1      164     30     28      2
24 months   ki1114097-CONTENT          2      164     39     38      1
24 months   ki1114097-CONTENT          3      164     32     32      0
24 months   ki1114097-CONTENT          4+     164     63     63      0
24 months   ki1135781-COHORTS          1     3749   2302   1670    632
24 months   ki1135781-COHORTS          2     3749   1221   1089    132
24 months   ki1135781-COHORTS          3     3749    150    140     10
24 months   ki1135781-COHORTS          4+    3749     76     73      3

## Results Table

### Parameter: TSM


agecat      studyid               intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED     1                    NA                0.0346021   0.0135225   0.0556817
Birth       ki0047075b-MAL-ED     2                    NA                0.0314961   0.0100094   0.0529827
Birth       ki0047075b-MAL-ED     3                    NA                0.0330579   0.0105239   0.0555918
Birth       ki0047075b-MAL-ED     4+                   NA                0.0224138   0.0103626   0.0344649
3 months    ki0047075b-MAL-ED     1                    NA                0.0237389   0.0074806   0.0399971
3 months    ki0047075b-MAL-ED     2                    NA                0.0537975   0.0289143   0.0786806
3 months    ki0047075b-MAL-ED     3                    NA                0.0258900   0.0081780   0.0436019
3 months    ki0047075b-MAL-ED     4+                   NA                0.0394558   0.0253776   0.0535340
6 months    ki0047075b-MAL-ED     1                    NA                0.0386905   0.0180632   0.0593177
6 months    ki0047075b-MAL-ED     2                    NA                0.0480769   0.0243321   0.0718217
6 months    ki0047075b-MAL-ED     3                    NA                0.0163399   0.0021309   0.0305489
6 months    ki0047075b-MAL-ED     4+                   NA                0.0232240   0.0123099   0.0341381
9 months    ki0047075b-MAL-ED     1                    NA                0.0395137   0.0184564   0.0605709
9 months    ki0047075b-MAL-ED     2                    NA                0.0677966   0.0391001   0.0964931
9 months    ki0047075b-MAL-ED     3                    NA                0.0267559   0.0084595   0.0450522
9 months    ki0047075b-MAL-ED     4+                   NA                0.0433566   0.0284242   0.0582891
12 months   ki0047075b-MAL-ED     1                    NA                0.0738462   0.0454051   0.1022873
12 months   ki0047075b-MAL-ED     2                    NA                0.0962199   0.0623277   0.1301121
12 months   ki0047075b-MAL-ED     3                    NA                0.0344828   0.0134757   0.0554898
12 months   ki0047075b-MAL-ED     4+                   NA                0.0564175   0.0394289   0.0734060
12 months   ki1113344-GMS-Nepal   1                    NA                0.1842105   0.0608455   0.3075756
12 months   ki1113344-GMS-Nepal   2                    NA                0.1260504   0.0663635   0.1857374
12 months   ki1113344-GMS-Nepal   3                    NA                0.0661765   0.0243595   0.1079934
12 months   ki1113344-GMS-Nepal   4+                   NA                0.0754717   0.0436395   0.1073039
18 months   ki0047075b-MAL-ED     1                    NA                0.1442308   0.1052349   0.1832266
18 months   ki0047075b-MAL-ED     2                    NA                0.1563636   0.1134231   0.1993042
18 months   ki0047075b-MAL-ED     3                    NA                0.0967742   0.0620714   0.1314770
18 months   ki0047075b-MAL-ED     4+                   NA                0.1029412   0.0800937   0.1257887
18 months   ki1113344-GMS-Nepal   1                    NA                0.1621622   0.0432854   0.2810390
18 months   ki1113344-GMS-Nepal   2                    NA                0.1666667   0.0999266   0.2334067
18 months   ki1113344-GMS-Nepal   3                    NA                0.1470588   0.0874818   0.2066359
18 months   ki1113344-GMS-Nepal   4+                   NA                0.1517510   0.1078470   0.1956550
24 months   ki0047075b-MAL-ED     1                    NA                0.1291391   0.0913041   0.1669741
24 months   ki0047075b-MAL-ED     2                    NA                0.1526718   0.1091057   0.1962378
24 months   ki0047075b-MAL-ED     3                    NA                0.1011236   0.0649481   0.1372991
24 months   ki0047075b-MAL-ED     4+                   NA                0.1003040   0.0773431   0.1232648
24 months   ki1113344-GMS-Nepal   1                    NA                0.1666667   0.0448053   0.2885281
24 months   ki1113344-GMS-Nepal   2                    NA                0.1481481   0.0810822   0.2152141
24 months   ki1113344-GMS-Nepal   3                    NA                0.0847458   0.0344452   0.1350463
24 months   ki1113344-GMS-Nepal   4+                   NA                0.0928270   0.0558449   0.1298091


### Parameter: E(Y)


agecat      studyid               intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED     NA                   NA                0.0285714   0.0282858   0.0288571
3 months    ki0047075b-MAL-ED     NA                   NA                0.0365351   0.0360306   0.0370395
6 months    ki0047075b-MAL-ED     NA                   NA                0.0296560   0.0291133   0.0301987
9 months    ki0047075b-MAL-ED     NA                   NA                0.0439560   0.0433424   0.0445697
12 months   ki0047075b-MAL-ED     NA                   NA                0.0631579   0.0621975   0.0641183
12 months   ki1113344-GMS-Nepal   NA                   NA                0.0913978   0.0886208   0.0941749
18 months   ki0047075b-MAL-ED     NA                   NA                0.1196636   0.1184639   0.1208634
18 months   ki1113344-GMS-Nepal   NA                   NA                0.1545455   0.1539338   0.1551571
24 months   ki0047075b-MAL-ED     NA                   NA                0.1155138   0.1144725   0.1165550
24 months   ki1113344-GMS-Nepal   NA                   NA                0.1082164   0.1056795   0.1107533


### Parameter: RR


agecat      studyid               intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED     2                    1                 0.9102362   0.3647043   2.2717859
Birth       ki0047075b-MAL-ED     3                    1                 0.9553719   0.3829459   2.3834581
Birth       ki0047075b-MAL-ED     4+                   1                 0.6477586   0.2874315   1.4597957
3 months    ki0047075b-MAL-ED     2                    1                 2.2662184   0.9917104   5.1786745
3 months    ki0047075b-MAL-ED     3                    1                 1.0906149   0.4142480   2.8713253
3 months    ki0047075b-MAL-ED     4+                   1                 1.6620748   0.7678316   3.5977845
6 months    ki0047075b-MAL-ED     2                    1                 1.2426036   0.6007726   2.5701298
6 months    ki0047075b-MAL-ED     3                    1                 0.4223228   0.1522861   1.1711942
6 months    ki0047075b-MAL-ED     4+                   1                 0.6002522   0.2949062   1.2217535
9 months    ki0047075b-MAL-ED     2                    1                 1.7157757   0.8687593   3.3886101
9 months    ki0047075b-MAL-ED     3                    1                 0.6771289   0.2845488   1.6113353
9 months    ki0047075b-MAL-ED     4+                   1                 1.0972566   0.5817561   2.0695476
12 months   ki0047075b-MAL-ED     2                    1                 1.3029782   0.7731591   2.1958641
12 months   ki0047075b-MAL-ED     3                    1                 0.4669540   0.2271234   0.9600333
12 months   ki0047075b-MAL-ED     4+                   1                 0.7639868   0.4685613   1.2456767
12 months   ki1113344-GMS-Nepal   2                    1                 0.6842737   0.3013188   1.5539375
12 months   ki1113344-GMS-Nepal   3                    1                 0.3592437   0.1430573   0.9021282
12 months   ki1113344-GMS-Nepal   4+                   1                 0.4097035   0.1856730   0.9040464
18 months   ki0047075b-MAL-ED     2                    1                 1.0841212   0.7374116   1.5938436
18 months   ki0047075b-MAL-ED     3                    1                 0.6709678   0.4282129   1.0513410
18 months   ki0047075b-MAL-ED     4+                   1                 0.7137255   0.5030535   1.0126240
18 months   ki1113344-GMS-Nepal   2                    1                 1.0277778   0.4457866   2.3695804
18 months   ki1113344-GMS-Nepal   3                    1                 0.9068627   0.3924550   2.0955271
18 months   ki1113344-GMS-Nepal   4+                   1                 0.9357977   0.4255148   2.0580183
24 months   ki0047075b-MAL-ED     2                    1                 1.1822274   0.7853853   1.7795874
24 months   ki0047075b-MAL-ED     3                    1                 0.7830596   0.4931491   1.2434016
24 months   ki0047075b-MAL-ED     4+                   1                 0.7767127   0.5355356   1.1265032
24 months   ki1113344-GMS-Nepal   2                    1                 0.8888889   0.3761572   2.1005141
24 months   ki1113344-GMS-Nepal   3                    1                 0.5084746   0.1982758   1.3039733
24 months   ki1113344-GMS-Nepal   4+                   1                 0.5569620   0.2422169   1.2806980


### Parameter: PAR


agecat      studyid               intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki0047075b-MAL-ED     1                    NA                -0.0060306   -0.0271122   0.0150509
3 months    ki0047075b-MAL-ED     1                    NA                 0.0127962   -0.0034699   0.0290623
6 months    ki0047075b-MAL-ED     1                    NA                -0.0090345   -0.0296689   0.0115999
9 months    ki0047075b-MAL-ED     1                    NA                 0.0044424   -0.0166238   0.0255086
12 months   ki0047075b-MAL-ED     1                    NA                -0.0106883   -0.0391456   0.0177691
12 months   ki1113344-GMS-Nepal   1                    NA                -0.0928127   -0.2162090   0.0305836
18 months   ki0047075b-MAL-ED     1                    NA                -0.0245671   -0.0635814   0.0144472
18 months   ki1113344-GMS-Nepal   1                    NA                -0.0076167   -0.1264951   0.1112617
24 months   ki0047075b-MAL-ED     1                    NA                -0.0136253   -0.0514746   0.0242240
24 months   ki1113344-GMS-Nepal   1                    NA                -0.0584502   -0.1803380   0.0634376


### Parameter: PAF


agecat      studyid               intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  --------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED     1                    NA                -0.2110727   -1.2272981    0.3414905
3 months    ki0047075b-MAL-ED     1                    NA                 0.3502441   -0.2889914    0.6724705
6 months    ki0047075b-MAL-ED     1                    NA                -0.3046428   -1.2241569    0.2347244
9 months    ki0047075b-MAL-ED     1                    NA                 0.1010638   -0.5319639    0.4725161
12 months   ki0047075b-MAL-ED     1                    NA                -0.1692308   -0.7190745    0.2047462
12 months   ki1113344-GMS-Nepal   1                    NA                -1.0154799   -2.9402418   -0.0309416
18 months   ki0047075b-MAL-ED     1                    NA                -0.2053014   -0.5797820    0.0804101
18 months   ki1113344-GMS-Nepal   1                    NA                -0.0492846   -1.1840762    0.4958976
24 months   ki0047075b-MAL-ED     1                    NA                -0.1179539   -0.4987292    0.1660795
24 months   ki1113344-GMS-Nepal   1                    NA                -0.5401235   -2.2008191    0.2589459


