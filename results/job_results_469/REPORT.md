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

**Intervention Variable:** fhtcm

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid


The following strata were considered:

* agecat: 12 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 12 months, studyid: ki1101329-Keneba
* agecat: 12 months, studyid: ki1135781-COHORTS
* agecat: 18 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 18 months, studyid: ki1101329-Keneba
* agecat: 18 months, studyid: ki1135781-COHORTS
* agecat: 24 months, studyid: ki1101329-Keneba
* agecat: 24 months, studyid: ki1135781-COHORTS
* agecat: 3 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 3 months, studyid: ki1101329-Keneba
* agecat: 3 months, studyid: ki1135781-COHORTS
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 6 months, studyid: ki1101329-Keneba
* agecat: 6 months, studyid: ki1135781-COHORTS
* agecat: 9 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 9 months, studyid: ki1101329-Keneba
* agecat: 9 months, studyid: ki1135781-COHORTS
* agecat: Birth, studyid: ki1101329-Keneba
* agecat: Birth, studyid: ki1135781-COHORTS

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 12 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 12 months, studyid: ki1135781-COHORTS
* agecat: 18 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 18 months, studyid: ki1135781-COHORTS
* agecat: 24 months, studyid: ki1135781-COHORTS
* agecat: 3 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 3 months, studyid: ki1135781-COHORTS
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 6 months, studyid: ki1135781-COHORTS
* agecat: 9 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 9 months, studyid: ki1135781-COHORTS
* agecat: Birth, studyid: ki1135781-COHORTS

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness




# Results Detail

## Results Plots
![](/tmp/d849a47b-f7ab-4d66-82d7-e88817a886ff/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/d849a47b-f7ab-4d66-82d7-e88817a886ff/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/d849a47b-f7ab-4d66-82d7-e88817a886ff/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/d849a47b-f7ab-4d66-82d7-e88817a886ff/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Data Summary

agecat      studyid                    A               n    nA   nAY0   nAY1
----------  -------------------------  ----------  -----  ----  -----  -----
12 months   ki1000304b-SAS-FoodSuppl   (168-173]      91     6      0      6
12 months   ki1000304b-SAS-FoodSuppl   (173-178]      91     4      2      2
12 months   ki1000304b-SAS-FoodSuppl   <=168          91    80     16     64
12 months   ki1000304b-SAS-FoodSuppl   >178           91     1      0      1
12 months   ki1101329-Keneba           (168-173]    1448   299    220     79
12 months   ki1101329-Keneba           (173-178]    1448   228    190     38
12 months   ki1101329-Keneba           <=168        1448   773    529    244
12 months   ki1101329-Keneba           >178         1448   148    132     16
12 months   ki1135781-COHORTS          (168-173]     204     7      2      5
12 months   ki1135781-COHORTS          (173-178]     204     7      1      6
12 months   ki1135781-COHORTS          <=168         204   190     43    147
12 months   ki1135781-COHORTS          >178          204     0      0      0
18 months   ki1000304b-SAS-FoodSuppl   (168-173]      83     7      1      6
18 months   ki1000304b-SAS-FoodSuppl   (173-178]      83     2      0      2
18 months   ki1000304b-SAS-FoodSuppl   <=168          83    73      8     65
18 months   ki1000304b-SAS-FoodSuppl   >178           83     1      0      1
18 months   ki1101329-Keneba           (168-173]    1445   310    210    100
18 months   ki1101329-Keneba           (173-178]    1445   206    165     41
18 months   ki1101329-Keneba           <=168        1445   793    466    327
18 months   ki1101329-Keneba           >178         1445   136    114     22
18 months   ki1135781-COHORTS          (168-173]     188     6      2      4
18 months   ki1135781-COHORTS          (173-178]     188     8      2      6
18 months   ki1135781-COHORTS          <=168         188   174     22    152
18 months   ki1135781-COHORTS          >178          188     0      0      0
24 months   ki1000304b-SAS-FoodSuppl   (168-173]       0     0      0      0
24 months   ki1000304b-SAS-FoodSuppl   (173-178]       0     0      0      0
24 months   ki1000304b-SAS-FoodSuppl   <=168           0     0      0      0
24 months   ki1000304b-SAS-FoodSuppl   >178            0     0      0      0
24 months   ki1101329-Keneba           (168-173]    1297   277    186     91
24 months   ki1101329-Keneba           (173-178]    1297   192    150     42
24 months   ki1101329-Keneba           <=168        1297   703    410    293
24 months   ki1101329-Keneba           >178         1297   125    102     23
24 months   ki1135781-COHORTS          (168-173]     240     8      2      6
24 months   ki1135781-COHORTS          (173-178]     240     8      3      5
24 months   ki1135781-COHORTS          <=168         240   224     31    193
24 months   ki1135781-COHORTS          >178          240     0      0      0
3 months    ki1000304b-SAS-FoodSuppl   (168-173]      92     8      3      5
3 months    ki1000304b-SAS-FoodSuppl   (173-178]      92     4      3      1
3 months    ki1000304b-SAS-FoodSuppl   <=168          92    79     50     29
3 months    ki1000304b-SAS-FoodSuppl   >178           92     1      1      0
3 months    ki1101329-Keneba           (168-173]    1562   331    286     45
3 months    ki1101329-Keneba           (173-178]    1562   239    217     22
3 months    ki1101329-Keneba           <=168        1562   831    695    136
3 months    ki1101329-Keneba           >178         1562   161    146     15
3 months    ki1135781-COHORTS          (168-173]     140     6      2      4
3 months    ki1135781-COHORTS          (173-178]     140     6      5      1
3 months    ki1135781-COHORTS          <=168         140   128     78     50
3 months    ki1135781-COHORTS          >178          140     0      0      0
6 months    ki1000304b-SAS-FoodSuppl   (168-173]      94     8      3      5
6 months    ki1000304b-SAS-FoodSuppl   (173-178]      94     4      2      2
6 months    ki1000304b-SAS-FoodSuppl   <=168          94    81     41     40
6 months    ki1000304b-SAS-FoodSuppl   >178           94     1      1      0
6 months    ki1101329-Keneba           (168-173]    1511   312    262     50
6 months    ki1101329-Keneba           (173-178]    1511   241    224     17
6 months    ki1101329-Keneba           <=168        1511   799    669    130
6 months    ki1101329-Keneba           >178         1511   159    147     12
6 months    ki1135781-COHORTS          (168-173]     151     6      3      3
6 months    ki1135781-COHORTS          (173-178]     151     5      3      2
6 months    ki1135781-COHORTS          <=168         151   140     68     72
6 months    ki1135781-COHORTS          >178          151     0      0      0
9 months    ki1000304b-SAS-FoodSuppl   (168-173]      84     6      2      4
9 months    ki1000304b-SAS-FoodSuppl   (173-178]      84     3      2      1
9 months    ki1000304b-SAS-FoodSuppl   <=168          84    74     22     52
9 months    ki1000304b-SAS-FoodSuppl   >178           84     1      1      0
9 months    ki1101329-Keneba           (168-173]    1529   320    266     54
9 months    ki1101329-Keneba           (173-178]    1529   234    214     20
9 months    ki1101329-Keneba           <=168        1529   813    629    184
9 months    ki1101329-Keneba           >178         1529   162    152     10
9 months    ki1135781-COHORTS          (168-173]     164     7      2      5
9 months    ki1135781-COHORTS          (173-178]     164     5      2      3
9 months    ki1135781-COHORTS          <=168         164   152     44    108
9 months    ki1135781-COHORTS          >178          164     0      0      0
Birth       ki1000304b-SAS-FoodSuppl   (168-173]       0     0      0      0
Birth       ki1000304b-SAS-FoodSuppl   (173-178]       0     0      0      0
Birth       ki1000304b-SAS-FoodSuppl   <=168           0     0      0      0
Birth       ki1000304b-SAS-FoodSuppl   >178            0     0      0      0
Birth       ki1101329-Keneba           (168-173]    1165   252    237     15
Birth       ki1101329-Keneba           (173-178]    1165   179    174      5
Birth       ki1101329-Keneba           <=168        1165   609    576     33
Birth       ki1101329-Keneba           >178         1165   125    120      5
Birth       ki1135781-COHORTS          (168-173]      91     5      3      2
Birth       ki1135781-COHORTS          (173-178]      91     1      1      0
Birth       ki1135781-COHORTS          <=168          91    85     81      4
Birth       ki1135781-COHORTS          >178           91     0      0      0

## Results Table

### Parameter: TSM


agecat      studyid            intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -----------------  -------------------  ---------------  ----------  ----------  ----------
12 months   ki1101329-Keneba   (168-173]            NA                0.2642140   0.2142202   0.3142079
12 months   ki1101329-Keneba   (173-178]            NA                0.1666667   0.1182757   0.2150576
12 months   ki1101329-Keneba   <=168                NA                0.3156533   0.2828776   0.3484290
12 months   ki1101329-Keneba   >178                 NA                0.1081081   0.0580641   0.1581522
18 months   ki1101329-Keneba   (168-173]            NA                0.3225806   0.2705253   0.3746360
18 months   ki1101329-Keneba   (173-178]            NA                0.1990291   0.1444871   0.2535712
18 months   ki1101329-Keneba   <=168                NA                0.4123581   0.3780849   0.4466314
18 months   ki1101329-Keneba   >178                 NA                0.1617647   0.0998557   0.2236737
24 months   ki1101329-Keneba   (168-173]            NA                0.3285199   0.2731883   0.3838514
24 months   ki1101329-Keneba   (173-178]            NA                0.2187500   0.1602529   0.2772471
24 months   ki1101329-Keneba   <=168                NA                0.4167852   0.3803259   0.4532445
24 months   ki1101329-Keneba   >178                 NA                0.1840000   0.1160461   0.2519539
3 months    ki1101329-Keneba   (168-173]            NA                0.1359517   0.0990170   0.1728863
3 months    ki1101329-Keneba   (173-178]            NA                0.0920502   0.0553869   0.1287135
3 months    ki1101329-Keneba   <=168                NA                0.1636582   0.1384961   0.1888204
3 months    ki1101329-Keneba   >178                 NA                0.0931677   0.0482549   0.1380805
6 months    ki1101329-Keneba   (168-173]            NA                0.1602564   0.1195376   0.2009753
6 months    ki1101329-Keneba   (173-178]            NA                0.0705394   0.0382013   0.1028775
6 months    ki1101329-Keneba   <=168                NA                0.1627034   0.1371024   0.1883043
6 months    ki1101329-Keneba   >178                 NA                0.0754717   0.0343997   0.1165437
9 months    ki1101329-Keneba   (168-173]            NA                0.1687500   0.1277010   0.2097990
9 months    ki1101329-Keneba   (173-178]            NA                0.0854701   0.0496367   0.1213035
9 months    ki1101329-Keneba   <=168                NA                0.2263223   0.1975490   0.2550955
9 months    ki1101329-Keneba   >178                 NA                0.0617284   0.0246570   0.0987998
Birth       ki1101329-Keneba   (168-173]            NA                0.0595238   0.0302989   0.0887487
Birth       ki1101329-Keneba   (173-178]            NA                0.0279330   0.0037831   0.0520828
Birth       ki1101329-Keneba   <=168                NA                0.0541872   0.0361994   0.0721749
Birth       ki1101329-Keneba   >178                 NA                0.0400000   0.0056327   0.0743673


### Parameter: E(Y)


agecat      studyid            intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -----------------  -------------------  ---------------  ----------  ----------  ----------
12 months   ki1101329-Keneba   NA                   NA                0.2603591   0.2565775   0.2641407
18 months   ki1101329-Keneba   NA                   NA                0.3391003   0.3342728   0.3439279
24 months   ki1101329-Keneba   NA                   NA                0.3461835   0.3414038   0.3509632
3 months    ki1101329-Keneba   NA                   NA                0.1395647   0.1380940   0.1410354
6 months    ki1101329-Keneba   NA                   NA                0.1383190   0.1363255   0.1403125
9 months    ki1101329-Keneba   NA                   NA                0.1752780   0.1721089   0.1784470
Birth       ki1101329-Keneba   NA                   NA                0.0497854   0.0491713   0.0503996


### Parameter: RR


agecat      studyid            intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -----------------  -------------------  ---------------  ----------  ----------  ----------
12 months   ki1101329-Keneba   (173-178]            (168-173]         0.6308017   0.4460502   0.8920762
12 months   ki1101329-Keneba   <=168                (168-173]         1.1946878   0.9627611   1.4824850
12 months   ki1101329-Keneba   >178                 (168-173]         0.4091687   0.2481519   0.6746634
18 months   ki1101329-Keneba   (173-178]            (168-173]         0.6169903   0.4489132   0.8479969
18 months   ki1101329-Keneba   <=168                (168-173]         1.2783102   1.0661143   1.5327409
18 months   ki1101329-Keneba   >178                 (168-173]         0.5014706   0.3310284   0.7596712
24 months   ki1101329-Keneba   (173-178]            (168-173]         0.6658654   0.4854382   0.9133536
24 months   ki1101329-Keneba   <=168                (168-173]         1.2686758   1.0493643   1.5338223
24 months   ki1101329-Keneba   >178                 (168-173]         0.5600879   0.3732267   0.8405038
3 months    ki1101329-Keneba   (173-178]            (168-173]         0.6770805   0.4180754   1.0965437
3 months    ki1101329-Keneba   <=168                (168-173]         1.2037973   0.8810136   1.6448417
3 months    ki1101329-Keneba   >178                 (168-173]         0.6853002   0.3940625   1.1917815
6 months    ki1101329-Keneba   (173-178]            (168-173]         0.4401660   0.2606055   0.7434459
6 months    ki1101329-Keneba   <=168                (168-173]         1.0152691   0.7529872   1.3689096
6 months    ki1101329-Keneba   >178                 (168-173]         0.4709434   0.2583049   0.8586274
9 months    ki1101329-Keneba   (173-178]            (168-173]         0.5064894   0.3119346   0.8223888
9 months    ki1101329-Keneba   <=168                (168-173]         1.3411690   1.0192518   1.7647594
9 months    ki1101329-Keneba   >178                 (168-173]         0.3657979   0.1913548   0.6992670
Birth       ki1101329-Keneba   (173-178]            (168-173]         0.4692737   0.1736317   1.2683045
Birth       ki1101329-Keneba   <=168                (168-173]         0.9103448   0.5032846   1.6466383
Birth       ki1101329-Keneba   >178                 (168-173]         0.6720000   0.2498063   1.8077369


### Parameter: PAR


agecat      studyid            intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -----------------  -------------------  ---------------  -----------  -----------  ----------
12 months   ki1101329-Keneba   (168-173]            NA                -0.0038549   -0.0539916   0.0462817
18 months   ki1101329-Keneba   (168-173]            NA                 0.0165197   -0.0357590   0.0687984
24 months   ki1101329-Keneba   (168-173]            NA                 0.0176636   -0.0378740   0.0732013
3 months    ki1101329-Keneba   (168-173]            NA                 0.0036130   -0.0333510   0.0405770
6 months    ki1101329-Keneba   (168-173]            NA                -0.0219374   -0.0627050   0.0188302
9 months    ki1101329-Keneba   (168-173]            NA                 0.0065280   -0.0346432   0.0476991
Birth       ki1101329-Keneba   (168-173]            NA                -0.0097384   -0.0389698   0.0194930


### Parameter: PAF


agecat      studyid            intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -----------------  -------------------  ---------------  -----------  -----------  ----------
12 months   ki1101329-Keneba   (168-173]            NA                -0.0148062   -0.2268763   0.1606068
18 months   ki1101329-Keneba   (168-173]            NA                 0.0487163   -0.1185749   0.1909878
24 months   ki1101329-Keneba   (168-173]            NA                 0.0510239   -0.1236925   0.1985747
3 months    ki1101329-Keneba   (168-173]            NA                 0.0258876   -0.2784531   0.2577789
6 months    ki1101329-Keneba   (168-173]            NA                -0.1586002   -0.4943729   0.1017273
9 months    ki1101329-Keneba   (168-173]            NA                 0.0372435   -0.2287161   0.2456352
Birth       ki1101329-Keneba   (168-173]            NA                -0.1956076   -0.9538237   0.2683693


