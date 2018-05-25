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

* agecat: Birth, studyid: ki0047075b-MAL-ED
* agecat: Birth, studyid: ki1017093-NIH-Birth
* agecat: Birth, studyid: ki1017093c-NIH-Crypto
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
* agecat: 12 months, studyid: ki0047075b-MAL-ED
* agecat: 12 months, studyid: ki1017093-NIH-Birth
* agecat: 12 months, studyid: ki1017093c-NIH-Crypto
* agecat: 12 months, studyid: ki1113344-GMS-Nepal
* agecat: 18 months, studyid: ki1017093-NIH-Birth
* agecat: 18 months, studyid: ki1017093c-NIH-Crypto
* agecat: 18 months, studyid: ki1113344-GMS-Nepal
* agecat: 24 months, studyid: ki1017093-NIH-Birth
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto
* agecat: 24 months, studyid: ki1113344-GMS-Nepal

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness




# Results Detail

## Results Plots
![](/tmp/0e63f89c-6766-47f8-8c83-afd20841f476/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/0e63f89c-6766-47f8-8c83-afd20841f476/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/0e63f89c-6766-47f8-8c83-afd20841f476/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/0e63f89c-6766-47f8-8c83-afd20841f476/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Data Summary

agecat      studyid                 A                              n    nA   nAY0   nAY1
----------  ----------------------  -------------------------  -----  ----  -----  -----
Birth       ki0047075b-MAL-ED       Food Secure                  863   521    513      8
Birth       ki0047075b-MAL-ED       Mildly Food Insecure         863    68     67      1
Birth       ki0047075b-MAL-ED       Moderately Food Insecure     863   184    177      7
Birth       ki0047075b-MAL-ED       Severely Food Insecure       863    90     88      2
Birth       ki1017093-NIH-Birth     Food Secure                   28     3      3      0
Birth       ki1017093-NIH-Birth     Mildly Food Insecure          28    21     21      0
Birth       ki1017093-NIH-Birth     Moderately Food Insecure      28     4      4      0
Birth       ki1017093-NIH-Birth     Severely Food Insecure        28     0      0      0
Birth       ki1017093c-NIH-Crypto   Food Secure                   27    14     14      0
Birth       ki1017093c-NIH-Crypto   Mildly Food Insecure          27     9      9      0
Birth       ki1017093c-NIH-Crypto   Moderately Food Insecure      27     2      2      0
Birth       ki1017093c-NIH-Crypto   Severely Food Insecure        27     2      1      1
Birth       ki1113344-GMS-Nepal     Food Secure                    0     0      0      0
Birth       ki1113344-GMS-Nepal     Mildly Food Insecure           0     0      0      0
Birth       ki1113344-GMS-Nepal     Moderately Food Insecure       0     0      0      0
Birth       ki1113344-GMS-Nepal     Severely Food Insecure         0     0      0      0
3 months    ki0047075b-MAL-ED       Food Secure                 1006   604    586     18
3 months    ki0047075b-MAL-ED       Mildly Food Insecure        1006    83     80      3
3 months    ki0047075b-MAL-ED       Moderately Food Insecure    1006   214    209      5
3 months    ki0047075b-MAL-ED       Severely Food Insecure      1006   105    100      5
3 months    ki1017093-NIH-Birth     Food Secure                  570    84     82      2
3 months    ki1017093-NIH-Birth     Mildly Food Insecure         570   446    419     27
3 months    ki1017093-NIH-Birth     Moderately Food Insecure     570    35     31      4
3 months    ki1017093-NIH-Birth     Severely Food Insecure       570     5      5      0
3 months    ki1017093c-NIH-Crypto   Food Secure                  728   432    418     14
3 months    ki1017093c-NIH-Crypto   Mildly Food Insecure         728   210    199     11
3 months    ki1017093c-NIH-Crypto   Moderately Food Insecure     728    62     57      5
3 months    ki1017093c-NIH-Crypto   Severely Food Insecure       728    24     21      3
3 months    ki1113344-GMS-Nepal     Food Secure                  553   399    387     12
3 months    ki1113344-GMS-Nepal     Mildly Food Insecure         553    79     75      4
3 months    ki1113344-GMS-Nepal     Moderately Food Insecure     553    52     51      1
3 months    ki1113344-GMS-Nepal     Severely Food Insecure       553    23     21      2
6 months    ki0047075b-MAL-ED       Food Secure                 1001   603    586     17
6 months    ki0047075b-MAL-ED       Mildly Food Insecure        1001    81     79      2
6 months    ki0047075b-MAL-ED       Moderately Food Insecure    1001   213    208      5
6 months    ki0047075b-MAL-ED       Severely Food Insecure      1001   104    101      3
6 months    ki1017093-NIH-Birth     Food Secure                  537    80     77      3
6 months    ki1017093-NIH-Birth     Mildly Food Insecure         537   417    391     26
6 months    ki1017093-NIH-Birth     Moderately Food Insecure     537    36     31      5
6 months    ki1017093-NIH-Birth     Severely Food Insecure       537     4      3      1
6 months    ki1017093c-NIH-Crypto   Food Secure                  715   427    416     11
6 months    ki1017093c-NIH-Crypto   Mildly Food Insecure         715   204    196      8
6 months    ki1017093c-NIH-Crypto   Moderately Food Insecure     715    60     56      4
6 months    ki1017093c-NIH-Crypto   Severely Food Insecure       715    24     24      0
6 months    ki1113344-GMS-Nepal     Food Secure                  545   395    385     10
6 months    ki1113344-GMS-Nepal     Mildly Food Insecure         545    76     72      4
6 months    ki1113344-GMS-Nepal     Moderately Food Insecure     545    52     52      0
6 months    ki1113344-GMS-Nepal     Severely Food Insecure       545    22     19      3
9 months    ki0047075b-MAL-ED       Food Secure                 1000   603    578     25
9 months    ki0047075b-MAL-ED       Mildly Food Insecure        1000    82     80      2
9 months    ki0047075b-MAL-ED       Moderately Food Insecure    1000   211    204      7
9 months    ki0047075b-MAL-ED       Severely Food Insecure      1000   104    101      3
9 months    ki1017093-NIH-Birth     Food Secure                  507    76     72      4
9 months    ki1017093-NIH-Birth     Mildly Food Insecure         507   392    362     30
9 months    ki1017093-NIH-Birth     Moderately Food Insecure     507    35     25     10
9 months    ki1017093-NIH-Birth     Severely Food Insecure       507     4      3      1
9 months    ki1017093c-NIH-Crypto   Food Secure                  706   428    412     16
9 months    ki1017093c-NIH-Crypto   Mildly Food Insecure         706   197    188      9
9 months    ki1017093c-NIH-Crypto   Moderately Food Insecure     706    58     55      3
9 months    ki1017093c-NIH-Crypto   Severely Food Insecure       706    23     23      0
9 months    ki1113344-GMS-Nepal     Food Secure                  535   386    366     20
9 months    ki1113344-GMS-Nepal     Mildly Food Insecure         535    77     70      7
9 months    ki1113344-GMS-Nepal     Moderately Food Insecure     535    52     49      3
9 months    ki1113344-GMS-Nepal     Severely Food Insecure       535    20     18      2
12 months   ki0047075b-MAL-ED       Food Secure                 1001   602    567     35
12 months   ki0047075b-MAL-ED       Mildly Food Insecure        1001    82     80      2
12 months   ki0047075b-MAL-ED       Moderately Food Insecure    1001   213    202     11
12 months   ki0047075b-MAL-ED       Severely Food Insecure      1001   104     98      6
12 months   ki1017093-NIH-Birth     Food Secure                  491    76     74      2
12 months   ki1017093-NIH-Birth     Mildly Food Insecure         491   377    338     39
12 months   ki1017093-NIH-Birth     Moderately Food Insecure     491    35     28      7
12 months   ki1017093-NIH-Birth     Severely Food Insecure       491     3      3      0
12 months   ki1017093c-NIH-Crypto   Food Secure                  706   427    405     22
12 months   ki1017093c-NIH-Crypto   Mildly Food Insecure         706   198    186     12
12 months   ki1017093c-NIH-Crypto   Moderately Food Insecure     706    57     52      5
12 months   ki1017093c-NIH-Crypto   Severely Food Insecure       706    24     22      2
12 months   ki1113344-GMS-Nepal     Food Secure                  541   392    367     25
12 months   ki1113344-GMS-Nepal     Mildly Food Insecure         541    78     65     13
12 months   ki1113344-GMS-Nepal     Moderately Food Insecure     541    52     45      7
12 months   ki1113344-GMS-Nepal     Severely Food Insecure       541    19     16      3
18 months   ki0047075b-MAL-ED       Food Secure                  999   603    539     64
18 months   ki0047075b-MAL-ED       Mildly Food Insecure         999    80     75      5
18 months   ki0047075b-MAL-ED       Moderately Food Insecure     999   213    191     22
18 months   ki0047075b-MAL-ED       Severely Food Insecure       999   103     92     11
18 months   ki1017093-NIH-Birth     Food Secure                  463    70     63      7
18 months   ki1017093-NIH-Birth     Mildly Food Insecure         463   355    277     78
18 months   ki1017093-NIH-Birth     Moderately Food Insecure     463    34     19     15
18 months   ki1017093-NIH-Birth     Severely Food Insecure       463     4      3      1
18 months   ki1017093c-NIH-Crypto   Food Secure                  634   392    369     23
18 months   ki1017093c-NIH-Crypto   Mildly Food Insecure         634   171    158     13
18 months   ki1017093c-NIH-Crypto   Moderately Food Insecure     634    49     44      5
18 months   ki1017093c-NIH-Crypto   Severely Food Insecure       634    22     21      1
18 months   ki1113344-GMS-Nepal     Food Secure                  534   388    335     53
18 months   ki1113344-GMS-Nepal     Mildly Food Insecure         534    74     60     14
18 months   ki1113344-GMS-Nepal     Moderately Food Insecure     534    54     43     11
18 months   ki1113344-GMS-Nepal     Severely Food Insecure       534    18     15      3
24 months   ki0047075b-MAL-ED       Food Secure                  998   603    544     59
24 months   ki0047075b-MAL-ED       Mildly Food Insecure         998    80     72      8
24 months   ki0047075b-MAL-ED       Moderately Food Insecure     998   212    197     15
24 months   ki0047075b-MAL-ED       Severely Food Insecure       998   103     94      9
24 months   ki1017093-NIH-Birth     Food Secure                  429    68     61      7
24 months   ki1017093-NIH-Birth     Mildly Food Insecure         429   328    258     70
24 months   ki1017093-NIH-Birth     Moderately Food Insecure     429    30     16     14
24 months   ki1017093-NIH-Birth     Severely Food Insecure       429     3      1      2
24 months   ki1017093c-NIH-Crypto   Food Secure                  514   334    314     20
24 months   ki1017093c-NIH-Crypto   Mildly Food Insecure         514   124    114     10
24 months   ki1017093c-NIH-Crypto   Moderately Food Insecure     514    38     33      5
24 months   ki1017093c-NIH-Crypto   Severely Food Insecure       514    18     18      0
24 months   ki1113344-GMS-Nepal     Food Secure                  488   349    316     33
24 months   ki1113344-GMS-Nepal     Mildly Food Insecure         488    69     61      8
24 months   ki1113344-GMS-Nepal     Moderately Food Insecure     488    51     42      9
24 months   ki1113344-GMS-Nepal     Severely Food Insecure       488    19     18      1

## Results Table

### Parameter: TSM


agecat      studyid             intervention_level         baseline_level     estimate    ci_lower    ci_upper
----------  ------------------  -------------------------  ---------------  ----------  ----------  ----------
18 months   ki0047075b-MAL-ED   Food Secure                NA                0.1061360   0.0815394   0.1307325
18 months   ki0047075b-MAL-ED   Mildly Food Insecure       NA                0.0625000   0.0094304   0.1155696
18 months   ki0047075b-MAL-ED   Moderately Food Insecure   NA                0.1032864   0.0623957   0.1441771
18 months   ki0047075b-MAL-ED   Severely Food Insecure     NA                0.1067961   0.0471201   0.1664722
24 months   ki0047075b-MAL-ED   Food Secure                NA                0.0978441   0.0741186   0.1215696
24 months   ki0047075b-MAL-ED   Mildly Food Insecure       NA                0.1000000   0.0342278   0.1657722
24 months   ki0047075b-MAL-ED   Moderately Food Insecure   NA                0.0707547   0.0362212   0.1052882
24 months   ki0047075b-MAL-ED   Severely Food Insecure     NA                0.0873786   0.0328160   0.1419412


### Parameter: E(Y)


agecat      studyid             intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------  -------------------  ---------------  ----------  ----------  ----------
18 months   ki0047075b-MAL-ED   NA                   NA                0.1021021   0.1013733   0.1028309
24 months   ki0047075b-MAL-ED   NA                   NA                0.0911824   0.0904934   0.0918713


### Parameter: RR


agecat      studyid             intervention_level         baseline_level     estimate    ci_lower   ci_upper
----------  ------------------  -------------------------  ---------------  ----------  ----------  ---------
18 months   ki0047075b-MAL-ED   Mildly Food Insecure       Food Secure       0.5888672   0.2442103   1.419943
18 months   ki0047075b-MAL-ED   Moderately Food Insecure   Food Secure       0.9731514   0.6151110   1.539598
18 months   ki0047075b-MAL-ED   Severely Food Insecure     Food Secure       1.0062197   0.5495065   1.842522
24 months   ki0047075b-MAL-ED   Mildly Food Insecure       Food Secure       1.0220339   0.5070218   2.060174
24 months   ki0047075b-MAL-ED   Moderately Food Insecure   Food Secure       0.7231372   0.4193095   1.247116
24 months   ki0047075b-MAL-ED   Severely Food Insecure     Food Secure       0.8930393   0.4570367   1.744978


### Parameter: PAR


agecat      studyid             intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ------------------  -------------------  ---------------  -----------  -----------  ----------
18 months   ki0047075b-MAL-ED   Food Secure          NA                -0.0040339   -0.0286412   0.0205734
24 months   ki0047075b-MAL-ED   Food Secure          NA                -0.0066617   -0.0303972   0.0170737


### Parameter: PAF


agecat      studyid             intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ------------------  -------------------  ---------------  -----------  -----------  ----------
18 months   ki0047075b-MAL-ED   Food Secure          NA                -0.0395083   -0.3107549   0.1756067
24 months   ki0047075b-MAL-ED   Food Secure          NA                -0.0730596   -0.3676778   0.1580935


