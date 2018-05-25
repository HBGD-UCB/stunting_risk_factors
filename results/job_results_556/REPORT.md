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

**Intervention Variable:** hfoodsec

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid


The following strata were considered:

* agecat: 12 months, studyid: ki0047075b-MAL-ED
* agecat: 12 months, studyid: ki1017093-NIH-Birth
* agecat: 12 months, studyid: ki1017093c-NIH-Crypto
* agecat: 12 months, studyid: ki1113344-GMS-Nepal
* agecat: 18 months, studyid: ki0047075b-MAL-ED
* agecat: 18 months, studyid: ki1017093-NIH-Birth
* agecat: 18 months, studyid: ki1017093c-NIH-Crypto
* agecat: 18 months, studyid: ki1113344-GMS-Nepal
* agecat: 24 months, studyid: ki0047075b-MAL-ED
* agecat: 24 months, studyid: ki1017093-NIH-Birth
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto
* agecat: 24 months, studyid: ki1113344-GMS-Nepal
* agecat: 3 months, studyid: ki0047075b-MAL-ED
* agecat: 3 months, studyid: ki1017093-NIH-Birth
* agecat: 3 months, studyid: ki1017093c-NIH-Crypto
* agecat: 3 months, studyid: ki1113344-GMS-Nepal
* agecat: 6 months, studyid: ki0047075b-MAL-ED
* agecat: 6 months, studyid: ki1017093-NIH-Birth
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto
* agecat: 6 months, studyid: ki1113344-GMS-Nepal
* agecat: 9 months, studyid: ki0047075b-MAL-ED
* agecat: 9 months, studyid: ki1017093-NIH-Birth
* agecat: 9 months, studyid: ki1017093c-NIH-Crypto
* agecat: 9 months, studyid: ki1113344-GMS-Nepal
* agecat: Birth, studyid: ki0047075b-MAL-ED
* agecat: Birth, studyid: ki1017093-NIH-Birth
* agecat: Birth, studyid: ki1017093c-NIH-Crypto

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki1017093-NIH-Birth
* agecat: Birth, studyid: ki1017093c-NIH-Crypto
* agecat: 3 months, studyid: ki1017093-NIH-Birth
* agecat: 3 months, studyid: ki1113344-GMS-Nepal
* agecat: 6 months, studyid: ki1017093-NIH-Birth
* agecat: 6 months, studyid: ki1113344-GMS-Nepal
* agecat: 9 months, studyid: ki1017093-NIH-Birth
* agecat: 12 months, studyid: ki1017093-NIH-Birth
* agecat: 18 months, studyid: ki1017093-NIH-Birth
* agecat: 24 months, studyid: ki1017093-NIH-Birth

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness




# Results Detail

## Results Plots
![](/tmp/9c6de4f8-2026-40fb-8cb3-855449f8d27f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/9c6de4f8-2026-40fb-8cb3-855449f8d27f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/9c6de4f8-2026-40fb-8cb3-855449f8d27f/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/9c6de4f8-2026-40fb-8cb3-855449f8d27f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Data Summary

agecat      studyid                 A                              n    nA   nAY0   nAY1
----------  ----------------------  -------------------------  -----  ----  -----  -----
Birth       ki0047075b-MAL-ED       Food Secure                  863   521    452     69
Birth       ki0047075b-MAL-ED       Mildly Food Insecure         863    68     63      5
Birth       ki0047075b-MAL-ED       Moderately Food Insecure     863   184    161     23
Birth       ki0047075b-MAL-ED       Severely Food Insecure       863    90     82      8
Birth       ki1017093-NIH-Birth     Food Secure                   28     3      3      0
Birth       ki1017093-NIH-Birth     Mildly Food Insecure          28    21     21      0
Birth       ki1017093-NIH-Birth     Moderately Food Insecure      28     4      3      1
Birth       ki1017093-NIH-Birth     Severely Food Insecure        28     0      0      0
Birth       ki1017093c-NIH-Crypto   Food Secure                   27    14     14      0
Birth       ki1017093c-NIH-Crypto   Mildly Food Insecure          27     9      5      4
Birth       ki1017093c-NIH-Crypto   Moderately Food Insecure      27     2      2      0
Birth       ki1017093c-NIH-Crypto   Severely Food Insecure        27     2      1      1
Birth       ki1113344-GMS-Nepal     Food Secure                    0     0      0      0
Birth       ki1113344-GMS-Nepal     Mildly Food Insecure           0     0      0      0
Birth       ki1113344-GMS-Nepal     Moderately Food Insecure       0     0      0      0
Birth       ki1113344-GMS-Nepal     Severely Food Insecure         0     0      0      0
3 months    ki0047075b-MAL-ED       Food Secure                 1006   604    512     92
3 months    ki0047075b-MAL-ED       Mildly Food Insecure        1006    83     72     11
3 months    ki0047075b-MAL-ED       Moderately Food Insecure    1006   214    186     28
3 months    ki0047075b-MAL-ED       Severely Food Insecure      1006   105     92     13
3 months    ki1017093-NIH-Birth     Food Secure                  570    84     70     14
3 months    ki1017093-NIH-Birth     Mildly Food Insecure         570   446    343    103
3 months    ki1017093-NIH-Birth     Moderately Food Insecure     570    35     24     11
3 months    ki1017093-NIH-Birth     Severely Food Insecure       570     5      3      2
3 months    ki1017093c-NIH-Crypto   Food Secure                  728   432    341     91
3 months    ki1017093c-NIH-Crypto   Mildly Food Insecure         728   210    162     48
3 months    ki1017093c-NIH-Crypto   Moderately Food Insecure     728    62     51     11
3 months    ki1017093c-NIH-Crypto   Severely Food Insecure       728    24     18      6
3 months    ki1113344-GMS-Nepal     Food Secure                  553   399    345     54
3 months    ki1113344-GMS-Nepal     Mildly Food Insecure         553    79     63     16
3 months    ki1113344-GMS-Nepal     Moderately Food Insecure     553    52     45      7
3 months    ki1113344-GMS-Nepal     Severely Food Insecure       553    23     20      3
6 months    ki0047075b-MAL-ED       Food Secure                 1001   603    497    106
6 months    ki0047075b-MAL-ED       Mildly Food Insecure        1001    81     70     11
6 months    ki0047075b-MAL-ED       Moderately Food Insecure    1001   213    181     32
6 months    ki0047075b-MAL-ED       Severely Food Insecure      1001   104     92     12
6 months    ki1017093-NIH-Birth     Food Secure                  537    80     60     20
6 months    ki1017093-NIH-Birth     Mildly Food Insecure         537   417    308    109
6 months    ki1017093-NIH-Birth     Moderately Food Insecure     537    36     23     13
6 months    ki1017093-NIH-Birth     Severely Food Insecure       537     4      2      2
6 months    ki1017093c-NIH-Crypto   Food Secure                  715   427    342     85
6 months    ki1017093c-NIH-Crypto   Mildly Food Insecure         715   204    158     46
6 months    ki1017093c-NIH-Crypto   Moderately Food Insecure     715    60     46     14
6 months    ki1017093c-NIH-Crypto   Severely Food Insecure       715    24     19      5
6 months    ki1113344-GMS-Nepal     Food Secure                  545   395    314     81
6 months    ki1113344-GMS-Nepal     Mildly Food Insecure         545    76     56     20
6 months    ki1113344-GMS-Nepal     Moderately Food Insecure     545    52     42     10
6 months    ki1113344-GMS-Nepal     Severely Food Insecure       545    22     18      4
9 months    ki0047075b-MAL-ED       Food Secure                 1000   603    475    128
9 months    ki0047075b-MAL-ED       Mildly Food Insecure        1000    82     68     14
9 months    ki0047075b-MAL-ED       Moderately Food Insecure    1000   211    174     37
9 months    ki0047075b-MAL-ED       Severely Food Insecure      1000   104     86     18
9 months    ki1017093-NIH-Birth     Food Secure                  507    76     55     21
9 months    ki1017093-NIH-Birth     Mildly Food Insecure         507   392    251    141
9 months    ki1017093-NIH-Birth     Moderately Food Insecure     507    35     19     16
9 months    ki1017093-NIH-Birth     Severely Food Insecure       507     4      1      3
9 months    ki1017093c-NIH-Crypto   Food Secure                  706   428    333     95
9 months    ki1017093c-NIH-Crypto   Mildly Food Insecure         706   197    153     44
9 months    ki1017093c-NIH-Crypto   Moderately Food Insecure     706    58     41     17
9 months    ki1017093c-NIH-Crypto   Severely Food Insecure       706    23     15      8
9 months    ki1113344-GMS-Nepal     Food Secure                  535   386    282    104
9 months    ki1113344-GMS-Nepal     Mildly Food Insecure         535    77     51     26
9 months    ki1113344-GMS-Nepal     Moderately Food Insecure     535    52     38     14
9 months    ki1113344-GMS-Nepal     Severely Food Insecure       535    20     15      5
12 months   ki0047075b-MAL-ED       Food Secure                 1001   602    438    164
12 months   ki0047075b-MAL-ED       Mildly Food Insecure        1001    82     62     20
12 months   ki0047075b-MAL-ED       Moderately Food Insecure    1001   213    165     48
12 months   ki0047075b-MAL-ED       Severely Food Insecure      1001   104     85     19
12 months   ki1017093-NIH-Birth     Food Secure                  491    76     59     17
12 months   ki1017093-NIH-Birth     Mildly Food Insecure         491   377    233    144
12 months   ki1017093-NIH-Birth     Moderately Food Insecure     491    35     14     21
12 months   ki1017093-NIH-Birth     Severely Food Insecure       491     3      1      2
12 months   ki1017093c-NIH-Crypto   Food Secure                  706   427    328     99
12 months   ki1017093c-NIH-Crypto   Mildly Food Insecure         706   198    153     45
12 months   ki1017093c-NIH-Crypto   Moderately Food Insecure     706    57     37     20
12 months   ki1017093c-NIH-Crypto   Severely Food Insecure       706    24     17      7
12 months   ki1113344-GMS-Nepal     Food Secure                  541   392    268    124
12 months   ki1113344-GMS-Nepal     Mildly Food Insecure         541    78     48     30
12 months   ki1113344-GMS-Nepal     Moderately Food Insecure     541    52     31     21
12 months   ki1113344-GMS-Nepal     Severely Food Insecure       541    19     13      6
18 months   ki0047075b-MAL-ED       Food Secure                  999   603    364    239
18 months   ki0047075b-MAL-ED       Mildly Food Insecure         999    80     60     20
18 months   ki0047075b-MAL-ED       Moderately Food Insecure     999   213    147     66
18 months   ki0047075b-MAL-ED       Severely Food Insecure       999   103     76     27
18 months   ki1017093-NIH-Birth     Food Secure                  463    70     44     26
18 months   ki1017093-NIH-Birth     Mildly Food Insecure         463   355    140    215
18 months   ki1017093-NIH-Birth     Moderately Food Insecure     463    34      6     28
18 months   ki1017093-NIH-Birth     Severely Food Insecure       463     4      1      3
18 months   ki1017093c-NIH-Crypto   Food Secure                  634   392    280    112
18 months   ki1017093c-NIH-Crypto   Mildly Food Insecure         634   171    118     53
18 months   ki1017093c-NIH-Crypto   Moderately Food Insecure     634    49     30     19
18 months   ki1017093c-NIH-Crypto   Severely Food Insecure       634    22     15      7
18 months   ki1113344-GMS-Nepal     Food Secure                  534   388    198    190
18 months   ki1113344-GMS-Nepal     Mildly Food Insecure         534    74     27     47
18 months   ki1113344-GMS-Nepal     Moderately Food Insecure     534    54     19     35
18 months   ki1113344-GMS-Nepal     Severely Food Insecure       534    18     10      8
24 months   ki0047075b-MAL-ED       Food Secure                  998   603    380    223
24 months   ki0047075b-MAL-ED       Mildly Food Insecure         998    80     62     18
24 months   ki0047075b-MAL-ED       Moderately Food Insecure     998   212    147     65
24 months   ki0047075b-MAL-ED       Severely Food Insecure       998   103     79     24
24 months   ki1017093-NIH-Birth     Food Secure                  429    68     46     22
24 months   ki1017093-NIH-Birth     Mildly Food Insecure         429   328    136    192
24 months   ki1017093-NIH-Birth     Moderately Food Insecure     429    30      9     21
24 months   ki1017093-NIH-Birth     Severely Food Insecure       429     3      0      3
24 months   ki1017093c-NIH-Crypto   Food Secure                  514   334    254     80
24 months   ki1017093c-NIH-Crypto   Mildly Food Insecure         514   124     91     33
24 months   ki1017093c-NIH-Crypto   Moderately Food Insecure     514    38     24     14
24 months   ki1017093c-NIH-Crypto   Severely Food Insecure       514    18     13      5
24 months   ki1113344-GMS-Nepal     Food Secure                  488   349    206    143
24 months   ki1113344-GMS-Nepal     Mildly Food Insecure         488    69     30     39
24 months   ki1113344-GMS-Nepal     Moderately Food Insecure     488    51     25     26
24 months   ki1113344-GMS-Nepal     Severely Food Insecure       488    19     13      6

## Results Table

### Parameter: TSM


agecat      studyid                 intervention_level         baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -------------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED       Food Secure                NA                0.1324376   0.1033146   0.1615607
Birth       ki0047075b-MAL-ED       Mildly Food Insecure       NA                0.0735294   0.0114580   0.1356008
Birth       ki0047075b-MAL-ED       Moderately Food Insecure   NA                0.1250000   0.0771866   0.1728134
Birth       ki0047075b-MAL-ED       Severely Food Insecure     NA                0.0888889   0.0300604   0.1477174
3 months    ki0047075b-MAL-ED       Food Secure                NA                0.1523179   0.1236472   0.1809885
3 months    ki0047075b-MAL-ED       Mildly Food Insecure       NA                0.1325301   0.0595492   0.2055111
3 months    ki0047075b-MAL-ED       Moderately Food Insecure   NA                0.1308411   0.0856369   0.1760453
3 months    ki0047075b-MAL-ED       Severely Food Insecure     NA                0.1238095   0.0607798   0.1868393
3 months    ki1017093c-NIH-Crypto   Food Secure                NA                0.2106481   0.1721696   0.2491267
3 months    ki1017093c-NIH-Crypto   Mildly Food Insecure       NA                0.2285714   0.1717391   0.2854038
3 months    ki1017093c-NIH-Crypto   Moderately Food Insecure   NA                0.1774194   0.0822624   0.2725763
3 months    ki1017093c-NIH-Crypto   Severely Food Insecure     NA                0.2500000   0.0766429   0.4233571
6 months    ki0047075b-MAL-ED       Food Secure                NA                0.1757877   0.1453915   0.2061840
6 months    ki0047075b-MAL-ED       Mildly Food Insecure       NA                0.1358025   0.0611605   0.2104444
6 months    ki0047075b-MAL-ED       Moderately Food Insecure   NA                0.1502347   0.1022271   0.1982423
6 months    ki0047075b-MAL-ED       Severely Food Insecure     NA                0.1153846   0.0539519   0.1768173
6 months    ki1017093c-NIH-Crypto   Food Secure                NA                0.1990632   0.1611638   0.2369627
6 months    ki1017093c-NIH-Crypto   Mildly Food Insecure       NA                0.2254902   0.1681031   0.2828773
6 months    ki1017093c-NIH-Crypto   Moderately Food Insecure   NA                0.2333333   0.1262386   0.3404281
6 months    ki1017093c-NIH-Crypto   Severely Food Insecure     NA                0.2083333   0.0457422   0.3709245
9 months    ki0047075b-MAL-ED       Food Secure                NA                0.2122720   0.1796176   0.2449263
9 months    ki0047075b-MAL-ED       Mildly Food Insecure       NA                0.1707317   0.0892495   0.2522140
9 months    ki0047075b-MAL-ED       Moderately Food Insecure   NA                0.1753555   0.1240200   0.2266909
9 months    ki0047075b-MAL-ED       Severely Food Insecure     NA                0.1730769   0.1003323   0.2458215
9 months    ki1017093c-NIH-Crypto   Food Secure                NA                0.2219626   0.1825646   0.2613606
9 months    ki1017093c-NIH-Crypto   Mildly Food Insecure       NA                0.2233503   0.1651495   0.2815510
9 months    ki1017093c-NIH-Crypto   Moderately Food Insecure   NA                0.2931034   0.1758757   0.4103312
9 months    ki1017093c-NIH-Crypto   Severely Food Insecure     NA                0.3478261   0.1530414   0.5426107
9 months    ki1113344-GMS-Nepal     Food Secure                NA                0.2694301   0.2251289   0.3137312
9 months    ki1113344-GMS-Nepal     Mildly Food Insecure       NA                0.3376623   0.2319343   0.4433903
9 months    ki1113344-GMS-Nepal     Moderately Food Insecure   NA                0.2692308   0.1485591   0.3899024
9 months    ki1113344-GMS-Nepal     Severely Food Insecure     NA                0.2500000   0.0600497   0.4399503
12 months   ki0047075b-MAL-ED       Food Secure                NA                0.2724252   0.2368433   0.3080072
12 months   ki0047075b-MAL-ED       Mildly Food Insecure       NA                0.2439024   0.1509084   0.3368965
12 months   ki0047075b-MAL-ED       Moderately Food Insecure   NA                0.2253521   0.1692139   0.2814903
12 months   ki0047075b-MAL-ED       Severely Food Insecure     NA                0.1826923   0.1083902   0.2569945
12 months   ki1017093c-NIH-Crypto   Food Secure                NA                0.2318501   0.1917940   0.2719062
12 months   ki1017093c-NIH-Crypto   Mildly Food Insecure       NA                0.2272727   0.1688597   0.2856858
12 months   ki1017093c-NIH-Crypto   Moderately Food Insecure   NA                0.3508772   0.2268950   0.4748594
12 months   ki1017093c-NIH-Crypto   Severely Food Insecure     NA                0.2916667   0.1096913   0.4736420
12 months   ki1113344-GMS-Nepal     Food Secure                NA                0.3163265   0.2702480   0.3624051
12 months   ki1113344-GMS-Nepal     Mildly Food Insecure       NA                0.3846154   0.2765494   0.4926814
12 months   ki1113344-GMS-Nepal     Moderately Food Insecure   NA                0.4038462   0.2703603   0.5373320
12 months   ki1113344-GMS-Nepal     Severely Food Insecure     NA                0.3157895   0.1065870   0.5249919
18 months   ki0047075b-MAL-ED       Food Secure                NA                0.3963516   0.3572909   0.4354122
18 months   ki0047075b-MAL-ED       Mildly Food Insecure       NA                0.2500000   0.1550661   0.3449339
18 months   ki0047075b-MAL-ED       Moderately Food Insecure   NA                0.3098592   0.2477255   0.3719928
18 months   ki0047075b-MAL-ED       Severely Food Insecure     NA                0.2621359   0.1771595   0.3471123
18 months   ki1017093c-NIH-Crypto   Food Secure                NA                0.2857143   0.2409584   0.3304701
18 months   ki1017093c-NIH-Crypto   Mildly Food Insecure       NA                0.3099415   0.2405709   0.3793122
18 months   ki1017093c-NIH-Crypto   Moderately Food Insecure   NA                0.3877551   0.2512232   0.5242870
18 months   ki1017093c-NIH-Crypto   Severely Food Insecure     NA                0.3181818   0.1233986   0.5129650
18 months   ki1113344-GMS-Nepal     Food Secure                NA                0.4896907   0.4399036   0.5394778
18 months   ki1113344-GMS-Nepal     Mildly Food Insecure       NA                0.6351351   0.5253513   0.7449190
18 months   ki1113344-GMS-Nepal     Moderately Food Insecure   NA                0.6481481   0.5206584   0.7756379
18 months   ki1113344-GMS-Nepal     Severely Food Insecure     NA                0.4444444   0.2146755   0.6742134
24 months   ki0047075b-MAL-ED       Food Secure                NA                0.3698176   0.3312667   0.4083684
24 months   ki0047075b-MAL-ED       Mildly Food Insecure       NA                0.2250000   0.1334490   0.3165510
24 months   ki0047075b-MAL-ED       Moderately Food Insecure   NA                0.3066038   0.2445058   0.3687017
24 months   ki0047075b-MAL-ED       Severely Food Insecure     NA                0.2330097   0.1513272   0.3146922
24 months   ki1017093c-NIH-Crypto   Food Secure                NA                0.2395210   0.1937054   0.2853365
24 months   ki1017093c-NIH-Crypto   Mildly Food Insecure       NA                0.2661290   0.1882687   0.3439893
24 months   ki1017093c-NIH-Crypto   Moderately Food Insecure   NA                0.3684211   0.2149010   0.5219411
24 months   ki1017093c-NIH-Crypto   Severely Food Insecure     NA                0.2777778   0.0706593   0.4848963
24 months   ki1113344-GMS-Nepal     Food Secure                NA                0.4097421   0.3580937   0.4613905
24 months   ki1113344-GMS-Nepal     Mildly Food Insecure       NA                0.5652174   0.4481293   0.6823055
24 months   ki1113344-GMS-Nepal     Moderately Food Insecure   NA                0.5098039   0.3724646   0.6471433
24 months   ki1113344-GMS-Nepal     Severely Food Insecure     NA                0.3157895   0.1065660   0.5250130


### Parameter: E(Y)


agecat      studyid                 intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED       NA                   NA                0.1216686   0.1203897   0.1229475
3 months    ki0047075b-MAL-ED       NA                   NA                0.1431412   0.1424334   0.1438489
3 months    ki1017093c-NIH-Crypto   NA                   NA                0.2142857   0.2131965   0.2153749
6 months    ki0047075b-MAL-ED       NA                   NA                0.1608392   0.1595630   0.1621153
6 months    ki1017093c-NIH-Crypto   NA                   NA                0.2097902   0.2087908   0.2107896
9 months    ki0047075b-MAL-ED       NA                   NA                0.1970000   0.1958307   0.1981693
9 months    ki1017093c-NIH-Crypto   NA                   NA                0.2322946   0.2301736   0.2344157
9 months    ki1113344-GMS-Nepal     NA                   NA                0.2785047   0.2764239   0.2805854
12 months   ki0047075b-MAL-ED       NA                   NA                0.2507493   0.2488848   0.2526137
12 months   ki1017093c-NIH-Crypto   NA                   NA                0.2422096   0.2396912   0.2447281
12 months   ki1113344-GMS-Nepal     NA                   NA                0.3345656   0.3317990   0.3373322
18 months   ki0047075b-MAL-ED       NA                   NA                0.3523524   0.3488255   0.3558792
18 months   ki1017093c-NIH-Crypto   NA                   NA                0.3012618   0.2991172   0.3034065
18 months   ki1113344-GMS-Nepal     NA                   NA                0.5243446   0.5187526   0.5299365
24 months   ki0047075b-MAL-ED       NA                   NA                0.3306613   0.3273023   0.3340204
24 months   ki1017093c-NIH-Crypto   NA                   NA                0.2568093   0.2538729   0.2597458
24 months   ki1113344-GMS-Nepal     NA                   NA                0.4385246   0.4329219   0.4441273


### Parameter: RR


agecat      studyid                 intervention_level         baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -------------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED       Mildly Food Insecure       Food Secure       0.5552003   0.2320578   1.3283218
Birth       ki0047075b-MAL-ED       Moderately Food Insecure   Food Secure       0.9438406   0.6071314   1.4672855
Birth       ki0047075b-MAL-ED       Severely Food Insecure     Food Secure       0.6711755   0.3341645   1.3480685
3 months    ki0047075b-MAL-ED       Mildly Food Insecure       Food Secure       0.8700891   0.4862096   1.5570547
3 months    ki0047075b-MAL-ED       Moderately Food Insecure   Food Secure       0.8590004   0.5795964   1.2730958
3 months    ki0047075b-MAL-ED       Severely Food Insecure     Food Secure       0.8128364   0.4723687   1.3987020
3 months    ki1017093c-NIH-Crypto   Mildly Food Insecure       Food Secure       1.0850863   0.7970250   1.4772591
3 months    ki1017093c-NIH-Crypto   Moderately Food Insecure   Food Secure       0.8422545   0.4779422   1.4842646
3 months    ki1017093c-NIH-Crypto   Severely Food Insecure     Food Secure       1.1868132   0.5793707   2.4311302
6 months    ki0047075b-MAL-ED       Mildly Food Insecure       Food Secure       0.7725367   0.4341915   1.3745386
6 months    ki0047075b-MAL-ED       Moderately Food Insecure   Food Secure       0.8546373   0.5942752   1.2290684
6 months    ki0047075b-MAL-ED       Severely Food Insecure     Food Secure       0.6563861   0.3750117   1.1488781
6 months    ki1017093c-NIH-Crypto   Mildly Food Insecure       Food Secure       1.1327566   0.8243345   1.5565739
6 months    ki1017093c-NIH-Crypto   Moderately Food Insecure   Food Secure       1.1721569   0.7131575   1.9265755
6 months    ki1017093c-NIH-Crypto   Severely Food Insecure     Food Secure       1.0465686   0.4686927   2.3369383
9 months    ki0047075b-MAL-ED       Mildly Food Insecure       Food Secure       0.8043064   0.4871379   1.3279788
9 months    ki0047075b-MAL-ED       Moderately Food Insecure   Food Secure       0.8260886   0.5934747   1.1498761
9 months    ki0047075b-MAL-ED       Severely Food Insecure     Food Secure       0.8153546   0.5211582   1.2756263
9 months    ki1017093c-NIH-Crypto   Mildly Food Insecure       Food Secure       1.0062517   0.7341382   1.3792260
9 months    ki1017093c-NIH-Crypto   Moderately Food Insecure   Food Secure       1.3205082   0.8525236   2.0453882
9 months    ki1017093c-NIH-Crypto   Severely Food Insecure     Food Secure       1.5670481   0.8708645   2.8197725
9 months    ki1113344-GMS-Nepal     Mildly Food Insecure       Food Secure       1.2532468   0.8799181   1.7849701
9 months    ki1113344-GMS-Nepal     Moderately Food Insecure   Food Secure       0.9992604   0.6199250   1.6107130
9 months    ki1113344-GMS-Nepal     Severely Food Insecure     Food Secure       0.9278846   0.4264599   2.0188762
12 months   ki0047075b-MAL-ED       Mildly Food Insecure       Food Secure       0.8953004   0.5983241   1.3396799
12 months   ki0047075b-MAL-ED       Moderately Food Insecure   Food Secure       0.8272071   0.6243918   1.0959011
12 months   ki0047075b-MAL-ED       Severely Food Insecure     Food Secure       0.6706144   0.4374795   1.0279882
12 months   ki1017093c-NIH-Crypto   Mildly Food Insecure       Food Secure       0.9802571   0.7191911   1.3360899
12 months   ki1017093c-NIH-Crypto   Moderately Food Insecure   Food Secure       1.5133794   1.0212430   2.2426760
12 months   ki1017093c-NIH-Crypto   Severely Food Insecure     Food Secure       1.2579966   0.6584455   2.4034722
12 months   ki1113344-GMS-Nepal     Mildly Food Insecure       Food Secure       1.2158809   0.8860177   1.6685518
12 months   ki1113344-GMS-Nepal     Moderately Food Insecure   Food Secure       1.2766749   0.8896278   1.8321132
12 months   ki1113344-GMS-Nepal     Severely Food Insecure     Food Secure       0.9983022   0.5066172   1.9671802
18 months   ki0047075b-MAL-ED       Mildly Food Insecure       Food Secure       0.6307531   0.4260682   0.9337697
18 months   ki0047075b-MAL-ED       Moderately Food Insecure   Food Secure       0.7817785   0.6252432   0.9775040
18 months   ki0047075b-MAL-ED       Severely Food Insecure     Food Secure       0.6613722   0.4713017   0.9280960
18 months   ki1017093c-NIH-Crypto   Mildly Food Insecure       Food Secure       1.0847953   0.8254735   1.4255830
18 months   ki1017093c-NIH-Crypto   Moderately Food Insecure   Food Secure       1.3571429   0.9231172   1.9952360
18 months   ki1017093c-NIH-Crypto   Severely Food Insecure     Food Secure       1.1136364   0.5919880   2.0949510
18 months   ki1113344-GMS-Nepal     Mildly Food Insecure       Food Secure       1.2970128   1.0613360   1.5850232
18 months   ki1113344-GMS-Nepal     Moderately Food Insecure   Food Secure       1.3235867   1.0606951   1.6516357
18 months   ki1113344-GMS-Nepal     Severely Food Insecure     Food Secure       0.9076023   0.5358872   1.5371557
24 months   ki0047075b-MAL-ED       Mildly Food Insecure       Food Secure       0.6084081   0.3997390   0.9260052
24 months   ki0047075b-MAL-ED       Moderately Food Insecure   Food Secure       0.8290676   0.6601814   1.0411580
24 months   ki0047075b-MAL-ED       Severely Food Insecure     Food Secure       0.6300666   0.4370731   0.9082781
24 months   ki1017093c-NIH-Crypto   Mildly Food Insecure       Food Secure       1.1110887   0.7833260   1.5759954
24 months   ki1017093c-NIH-Crypto   Moderately Food Insecure   Food Secure       1.5381579   0.9724689   2.4329105
24 months   ki1017093c-NIH-Crypto   Severely Food Insecure     Food Secure       1.1597222   0.5370896   2.5041549
24 months   ki1113344-GMS-Nepal     Mildly Food Insecure       Food Secure       1.3794466   1.0824103   1.7579960
24 months   ki1113344-GMS-Nepal     Moderately Food Insecure   Food Secure       1.2442068   0.9241050   1.6751889
24 months   ki1113344-GMS-Nepal     Severely Food Insecure     Food Secure       0.7707030   0.3926340   1.5128164


### Parameter: PAR


agecat      studyid                 intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       Food Secure          NA                -0.0107690   -0.0399202    0.0183821
3 months    ki0047075b-MAL-ED       Food Secure          NA                -0.0091767   -0.0378561    0.0195027
3 months    ki1017093c-NIH-Crypto   Food Secure          NA                 0.0036376   -0.0348564    0.0421315
6 months    ki0047075b-MAL-ED       Food Secure          NA                -0.0149486   -0.0453716    0.0154745
6 months    ki1017093c-NIH-Crypto   Food Secure          NA                 0.0107270   -0.0271856    0.0486396
9 months    ki0047075b-MAL-ED       Food Secure          NA                -0.0152720   -0.0479473    0.0174033
9 months    ki1017093c-NIH-Crypto   Food Secure          NA                 0.0103320   -0.0291231    0.0497871
9 months    ki1113344-GMS-Nepal     Food Secure          NA                 0.0090746   -0.0352753    0.0534246
12 months   ki0047075b-MAL-ED       Food Secure          NA                -0.0216760   -0.0573067    0.0139547
12 months   ki1017093c-NIH-Crypto   Food Secure          NA                 0.0103595   -0.0297757    0.0504947
12 months   ki1113344-GMS-Nepal     Food Secure          NA                 0.0182391   -0.0279225    0.0644006
18 months   ki0047075b-MAL-ED       Food Secure          NA                -0.0439992   -0.0832188   -0.0047797
18 months   ki1017093c-NIH-Crypto   Food Secure          NA                 0.0155475   -0.0292597    0.0603547
18 months   ki1113344-GMS-Nepal     Food Secure          NA                 0.0346538   -0.0154463    0.0847540
24 months   ki0047075b-MAL-ED       Food Secure          NA                -0.0391563   -0.0778532   -0.0004593
24 months   ki1017093c-NIH-Crypto   Food Secure          NA                 0.0172884   -0.0286212    0.0631980
24 months   ki1113344-GMS-Nepal     Food Secure          NA                 0.0287825   -0.0231689    0.0807339


### Parameter: PAF


agecat      studyid                 intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED       Food Secure          NA                -0.0885111   -0.3565736    0.1265815
3 months    ki0047075b-MAL-ED       Food Secure          NA                -0.0641096   -0.2845808    0.1185223
3 months    ki1017093c-NIH-Crypto   Food Secure          NA                 0.0169753   -0.1801212    0.1811540
6 months    ki0047075b-MAL-ED       Food Secure          NA                -0.0929411   -0.2994861    0.0807749
6 months    ki1017093c-NIH-Crypto   Food Secure          NA                 0.0511319   -0.1479331    0.2156767
9 months    ki0047075b-MAL-ED       Food Secure          NA                -0.0775227   -0.2568540    0.0762211
9 months    ki1017093c-NIH-Crypto   Food Secure          NA                 0.0444780   -0.1413771    0.2000696
9 months    ki1113344-GMS-Nepal     Food Secure          NA                 0.0325834   -0.1405024    0.1794012
12 months   ki0047075b-MAL-ED       Food Secure          NA                -0.0864449   -0.2382932    0.0467826
12 months   ki1017093c-NIH-Crypto   Food Secure          NA                 0.0427709   -0.1381081    0.1949028
12 months   ki1113344-GMS-Nepal     Food Secure          NA                 0.0545157   -0.0940039    0.1828726
18 months   ki0047075b-MAL-ED       Food Secure          NA                -0.1248728   -0.2420055   -0.0187868
18 months   ki1017093c-NIH-Crypto   Food Secure          NA                 0.0516081   -0.1094004    0.1892492
18 months   ki1113344-GMS-Nepal     Food Secure          NA                 0.0660898   -0.0344328    0.1568441
24 months   ki0047075b-MAL-ED       Food Secure          NA                -0.1184180   -0.2419117   -0.0072043
24 months   ki1017093c-NIH-Crypto   Food Secure          NA                 0.0673199   -0.1296733    0.2299613
24 months   ki1113344-GMS-Nepal     Food Secure          NA                 0.0656348   -0.0605726    0.1768236


