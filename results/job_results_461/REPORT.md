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

**Intervention Variable:** vagbrth

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid


The following strata were considered:

* agecat: 12 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 12 months, studyid: ki1000108-IRC
* agecat: 12 months, studyid: ki1017093b-PROVIDE
* agecat: 12 months, studyid: ki1017093c-NIH-Crypto
* agecat: 12 months, studyid: ki1066203-TanzaniaChild2
* agecat: 12 months, studyid: ki1126311-ZVITAMBO
* agecat: 18 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 18 months, studyid: ki1000108-IRC
* agecat: 18 months, studyid: ki1017093b-PROVIDE
* agecat: 18 months, studyid: ki1017093c-NIH-Crypto
* agecat: 18 months, studyid: ki1066203-TanzaniaChild2
* agecat: 18 months, studyid: ki1126311-ZVITAMBO
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 24 months, studyid: ki1000108-IRC
* agecat: 24 months, studyid: ki1017093b-PROVIDE
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2
* agecat: 24 months, studyid: ki1126311-ZVITAMBO
* agecat: 3 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 3 months, studyid: ki1000108-IRC
* agecat: 3 months, studyid: ki1017093b-PROVIDE
* agecat: 3 months, studyid: ki1017093c-NIH-Crypto
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2
* agecat: 3 months, studyid: ki1126311-ZVITAMBO
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 6 months, studyid: ki1000108-IRC
* agecat: 6 months, studyid: ki1017093b-PROVIDE
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2
* agecat: 6 months, studyid: ki1126311-ZVITAMBO
* agecat: 9 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 9 months, studyid: ki1000108-IRC
* agecat: 9 months, studyid: ki1017093b-PROVIDE
* agecat: 9 months, studyid: ki1017093c-NIH-Crypto
* agecat: 9 months, studyid: ki1066203-TanzaniaChild2
* agecat: 9 months, studyid: ki1126311-ZVITAMBO
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002
* agecat: Birth, studyid: ki1000108-IRC
* agecat: Birth, studyid: ki1017093c-NIH-Crypto
* agecat: Birth, studyid: ki1126311-ZVITAMBO

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 12 months, studyid: ki1066203-TanzaniaChild2
* agecat: 18 months, studyid: ki1066203-TanzaniaChild2
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2
* agecat: 24 months, studyid: ki1126311-ZVITAMBO
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2
* agecat: 9 months, studyid: ki1066203-TanzaniaChild2
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002
* agecat: Birth, studyid: ki1017093c-NIH-Crypto

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness




# Results Detail

## Results Plots
![](/tmp/0322f77d-d086-41bd-a4ed-a9e8db4cf25a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/0322f77d-d086-41bd-a4ed-a9e8db4cf25a/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/0322f77d-d086-41bd-a4ed-a9e8db4cf25a/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/0322f77d-d086-41bd-a4ed-a9e8db4cf25a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Data Summary

agecat      studyid                      A      n     nA   nAY0   nAY1
----------  -------------------------  ---  -----  -----  -----  -----
12 months   ki1000108-CMC-V-BCS-2002     0    368     25     11     14
12 months   ki1000108-CMC-V-BCS-2002     1    368    343    174    169
12 months   ki1000108-IRC                0    406     70     51     19
12 months   ki1000108-IRC                1    406    336    236    100
12 months   ki1017093b-PROVIDE           0    153     35     24     11
12 months   ki1017093b-PROVIDE           1    153    118     85     33
12 months   ki1017093c-NIH-Crypto        0    450    185    147     38
12 months   ki1017093c-NIH-Crypto        1    450    265    186     79
12 months   ki1066203-TanzaniaChild2     0    355     27     24      3
12 months   ki1066203-TanzaniaChild2     1    355    328    279     49
12 months   ki1126311-ZVITAMBO           0   1688    142    110     32
12 months   ki1126311-ZVITAMBO           1   1688   1546   1179    367
18 months   ki1000108-CMC-V-BCS-2002     0    369     25      7     18
18 months   ki1000108-CMC-V-BCS-2002     1    369    344    108    236
18 months   ki1000108-IRC                0    405     69     44     25
18 months   ki1000108-IRC                1    405    336    217    119
18 months   ki1017093b-PROVIDE           0    141     34     20     14
18 months   ki1017093b-PROVIDE           1    141    107     69     38
18 months   ki1017093c-NIH-Crypto        0    380    150    109     41
18 months   ki1017093c-NIH-Crypto        1    380    230    140     90
18 months   ki1066203-TanzaniaChild2     0    256     19     15      4
18 months   ki1066203-TanzaniaChild2     1    256    237    174     63
18 months   ki1126311-ZVITAMBO           0    417     35     13     22
18 months   ki1126311-ZVITAMBO           1    417    382    203    179
24 months   ki1000108-CMC-V-BCS-2002     0    372     25      8     17
24 months   ki1000108-CMC-V-BCS-2002     1    372    347     98    249
24 months   ki1000108-IRC                0    409     69     42     27
24 months   ki1000108-IRC                1    409    340    197    143
24 months   ki1017093b-PROVIDE           0    149     35     25     10
24 months   ki1017093b-PROVIDE           1    149    114     75     39
24 months   ki1017093c-NIH-Crypto        0    260     99     75     24
24 months   ki1017093c-NIH-Crypto        1    260    161    104     57
24 months   ki1066203-TanzaniaChild2     0      2      2      2      0
24 months   ki1066203-TanzaniaChild2     1      2      0      0      0
24 months   ki1126311-ZVITAMBO           0    113     13      3     10
24 months   ki1126311-ZVITAMBO           1    113    100     44     56
3 months    ki1000108-CMC-V-BCS-2002     0    362     25     20      5
3 months    ki1000108-CMC-V-BCS-2002     1    362    337    252     85
3 months    ki1000108-IRC                0    407     69     51     18
3 months    ki1000108-IRC                1    407    338    265     73
3 months    ki1017093b-PROVIDE           0    168     38     32      6
3 months    ki1017093b-PROVIDE           1    168    130    116     14
3 months    ki1017093c-NIH-Crypto        0    471    193    159     34
3 months    ki1017093c-NIH-Crypto        1    471    278    215     63
3 months    ki1066203-TanzaniaChild2     0    573     43     39      4
3 months    ki1066203-TanzaniaChild2     1    573    530    495     35
3 months    ki1126311-ZVITAMBO           0   2251    201    173     28
3 months    ki1126311-ZVITAMBO           1   2251   2050   1691    359
6 months    ki1000108-CMC-V-BCS-2002     0    369     25     17      8
6 months    ki1000108-CMC-V-BCS-2002     1    369    344    241    103
6 months    ki1000108-IRC                0    407     69     50     19
6 months    ki1000108-IRC                1    407    338    257     81
6 months    ki1017093b-PROVIDE           0    153     32     24      8
6 months    ki1017093b-PROVIDE           1    153    121    101     20
6 months    ki1017093c-NIH-Crypto        0    457    187    151     36
6 months    ki1017093c-NIH-Crypto        1    457    270    198     72
6 months    ki1066203-TanzaniaChild2     0    502     42     38      4
6 months    ki1066203-TanzaniaChild2     1    502    460    419     41
6 months    ki1126311-ZVITAMBO           0   2037    169    138     31
6 months    ki1126311-ZVITAMBO           1   2037   1868   1566    302
9 months    ki1000108-CMC-V-BCS-2002     0    366     24     12     12
9 months    ki1000108-CMC-V-BCS-2002     1    366    342    219    123
9 months    ki1000108-IRC                0    407     69     53     16
9 months    ki1000108-IRC                1    407    338    243     95
9 months    ki1017093b-PROVIDE           0    158     35     28      7
9 months    ki1017093b-PROVIDE           1    158    123     93     30
9 months    ki1017093c-NIH-Crypto        0    450    185    151     34
9 months    ki1017093c-NIH-Crypto        1    450    265    194     71
9 months    ki1066203-TanzaniaChild2     0    433     36     35      1
9 months    ki1066203-TanzaniaChild2     1    433    397    335     62
9 months    ki1126311-ZVITAMBO           0   1950    163    136     27
9 months    ki1126311-ZVITAMBO           1   1950   1787   1435    352
Birth       ki1000108-CMC-V-BCS-2002     0     90     11      9      2
Birth       ki1000108-CMC-V-BCS-2002     1     90     79     65     14
Birth       ki1000108-IRC                0    388     68     58     10
Birth       ki1000108-IRC                1    388    320    285     35
Birth       ki1017093b-PROVIDE           0      0      0      0      0
Birth       ki1017093b-PROVIDE           1      0      0      0      0
Birth       ki1017093c-NIH-Crypto        0     19      1      1      0
Birth       ki1017093c-NIH-Crypto        1     19     18     15      3
Birth       ki1066203-TanzaniaChild2     0      0      0      0      0
Birth       ki1066203-TanzaniaChild2     1      0      0      0      0
Birth       ki1126311-ZVITAMBO           0   3418    288    268     20
Birth       ki1126311-ZVITAMBO           1   3418   3130   2797    333

## Results Table

### Parameter: TSM


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
12 months   ki1000108-CMC-V-BCS-2002   0                    NA                0.5600000   0.3651550   0.7548450
12 months   ki1000108-CMC-V-BCS-2002   1                    NA                0.4927114   0.4397309   0.5456918
12 months   ki1000108-IRC              0                    NA                0.2714286   0.1671252   0.3757320
12 months   ki1000108-IRC              1                    NA                0.2976190   0.2486715   0.3465666
12 months   ki1017093b-PROVIDE         0                    NA                0.3142857   0.1599836   0.4685878
12 months   ki1017093b-PROVIDE         1                    NA                0.2796610   0.1984125   0.3609095
12 months   ki1017093c-NIH-Crypto      0                    NA                0.2054054   0.1471248   0.2636860
12 months   ki1017093c-NIH-Crypto      1                    NA                0.2981132   0.2429776   0.3532488
12 months   ki1126311-ZVITAMBO         0                    NA                0.2253521   0.1566112   0.2940931
12 months   ki1126311-ZVITAMBO         1                    NA                0.2373868   0.2161713   0.2586023
18 months   ki1000108-CMC-V-BCS-2002   0                    NA                0.7200000   0.5437567   0.8962433
18 months   ki1000108-CMC-V-BCS-2002   1                    NA                0.6860465   0.6369368   0.7351562
18 months   ki1000108-IRC              0                    NA                0.3623188   0.2487635   0.4758742
18 months   ki1000108-IRC              1                    NA                0.3541667   0.3029656   0.4053678
18 months   ki1017093b-PROVIDE         0                    NA                0.4117647   0.2457471   0.5777824
18 months   ki1017093b-PROVIDE         1                    NA                0.3551402   0.2641417   0.4461387
18 months   ki1017093c-NIH-Crypto      0                    NA                0.2733333   0.2019185   0.3447482
18 months   ki1017093c-NIH-Crypto      1                    NA                0.3913043   0.3281485   0.4544602
18 months   ki1126311-ZVITAMBO         0                    NA                0.6285714   0.4683021   0.7888408
18 months   ki1126311-ZVITAMBO         1                    NA                0.4685864   0.4184851   0.5186877
24 months   ki1000108-CMC-V-BCS-2002   0                    NA                0.6800000   0.4968984   0.8631016
24 months   ki1000108-CMC-V-BCS-2002   1                    NA                0.7175793   0.6701495   0.7650090
24 months   ki1000108-IRC              0                    NA                0.3913043   0.2760088   0.5065999
24 months   ki1000108-IRC              1                    NA                0.4205882   0.3680516   0.4731249
24 months   ki1017093b-PROVIDE         0                    NA                0.2857143   0.1355460   0.4358826
24 months   ki1017093b-PROVIDE         1                    NA                0.3421053   0.2547245   0.4294861
24 months   ki1017093c-NIH-Crypto      0                    NA                0.2424242   0.1578441   0.3270044
24 months   ki1017093c-NIH-Crypto      1                    NA                0.3540373   0.2800256   0.4280489
3 months    ki1000108-CMC-V-BCS-2002   0                    NA                0.2000000   0.0429859   0.3570141
3 months    ki1000108-CMC-V-BCS-2002   1                    NA                0.2522255   0.2057939   0.2986571
3 months    ki1000108-IRC              0                    NA                0.2608696   0.1571334   0.3646057
3 months    ki1000108-IRC              1                    NA                0.2159763   0.1720534   0.2598993
3 months    ki1017093b-PROVIDE         0                    NA                0.1578947   0.0416108   0.2741787
3 months    ki1017093b-PROVIDE         1                    NA                0.1076923   0.0542454   0.1611392
3 months    ki1017093c-NIH-Crypto      0                    NA                0.1761658   0.1223622   0.2299694
3 months    ki1017093c-NIH-Crypto      1                    NA                0.2266187   0.1773544   0.2758830
3 months    ki1126311-ZVITAMBO         0                    NA                0.1393035   0.0914237   0.1871833
3 months    ki1126311-ZVITAMBO         1                    NA                0.1751220   0.1586656   0.1915783
6 months    ki1000108-CMC-V-BCS-2002   0                    NA                0.3200000   0.1368964   0.5031036
6 months    ki1000108-CMC-V-BCS-2002   1                    NA                0.2994186   0.2509538   0.3478835
6 months    ki1000108-IRC              0                    NA                0.2753623   0.1698337   0.3808910
6 months    ki1000108-IRC              1                    NA                0.2396450   0.1940816   0.2852084
6 months    ki1017093b-PROVIDE         0                    NA                0.2500000   0.0994788   0.4005212
6 months    ki1017093b-PROVIDE         1                    NA                0.1652893   0.0988890   0.2316895
6 months    ki1017093c-NIH-Crypto      0                    NA                0.1925134   0.1359414   0.2490853
6 months    ki1017093c-NIH-Crypto      1                    NA                0.2666667   0.2138614   0.3194719
6 months    ki1126311-ZVITAMBO         0                    NA                0.1834320   0.1250680   0.2417960
6 months    ki1126311-ZVITAMBO         1                    NA                0.1616702   0.1449713   0.1783692
9 months    ki1000108-CMC-V-BCS-2002   0                    NA                0.5000000   0.2996882   0.7003118
9 months    ki1000108-CMC-V-BCS-2002   1                    NA                0.3596491   0.3087187   0.4105796
9 months    ki1000108-IRC              0                    NA                0.2318841   0.1321814   0.3315867
9 months    ki1000108-IRC              1                    NA                0.2810651   0.2330838   0.3290464
9 months    ki1017093b-PROVIDE         0                    NA                0.2000000   0.0670609   0.3329391
9 months    ki1017093b-PROVIDE         1                    NA                0.2439024   0.1677697   0.3200351
9 months    ki1017093c-NIH-Crypto      0                    NA                0.1837838   0.1279108   0.2396567
9 months    ki1017093c-NIH-Crypto      1                    NA                0.2679245   0.2145428   0.3213062
9 months    ki1126311-ZVITAMBO         0                    NA                0.1656442   0.1085582   0.2227301
9 months    ki1126311-ZVITAMBO         1                    NA                0.1969782   0.1785335   0.2154228
Birth       ki1000108-IRC              0                    NA                0.1470588   0.0627721   0.2313455
Birth       ki1000108-IRC              1                    NA                0.1093750   0.0751345   0.1436155
Birth       ki1126311-ZVITAMBO         0                    NA                0.0694444   0.0400811   0.0988078
Birth       ki1126311-ZVITAMBO         1                    NA                0.1063898   0.0955863   0.1171933


### Parameter: E(Y)


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
12 months   ki1000108-CMC-V-BCS-2002   NA                   NA                0.4972826   0.4955503   0.4990149
12 months   ki1000108-IRC              NA                   NA                0.2931034   0.2921399   0.2940670
12 months   ki1017093b-PROVIDE         NA                   NA                0.2875817   0.2852697   0.2898937
12 months   ki1017093c-NIH-Crypto      NA                   NA                0.2600000   0.2557807   0.2642193
12 months   ki1126311-ZVITAMBO         NA                   NA                0.2363744   0.2362150   0.2365338
18 months   ki1000108-CMC-V-BCS-2002   NA                   NA                0.6883469   0.6874751   0.6892187
18 months   ki1000108-IRC              NA                   NA                0.3555556   0.3552567   0.3558544
18 months   ki1017093b-PROVIDE         NA                   NA                0.3687943   0.3647820   0.3728067
18 months   ki1017093c-NIH-Crypto      NA                   NA                0.3447368   0.3389315   0.3505422
18 months   ki1126311-ZVITAMBO         NA                   NA                0.4820144   0.4777514   0.4862773
24 months   ki1000108-CMC-V-BCS-2002   NA                   NA                0.7150538   0.7140963   0.7160112
24 months   ki1000108-IRC              NA                   NA                0.4156479   0.4145838   0.4167120
24 months   ki1017093b-PROVIDE         NA                   NA                0.3288591   0.3250076   0.3327105
24 months   ki1017093c-NIH-Crypto      NA                   NA                0.3115385   0.3049381   0.3181389
3 months    ki1000108-CMC-V-BCS-2002   NA                   NA                0.2486188   0.2472528   0.2499848
3 months    ki1000108-IRC              NA                   NA                0.2235872   0.2219487   0.2252258
3 months    ki1017093b-PROVIDE         NA                   NA                0.1190476   0.1158622   0.1222331
3 months    ki1017093c-NIH-Crypto      NA                   NA                0.2059448   0.2037016   0.2081880
3 months    ki1126311-ZVITAMBO         NA                   NA                0.1719236   0.1715015   0.1723456
6 months    ki1000108-CMC-V-BCS-2002   NA                   NA                0.3008130   0.3002845   0.3013415
6 months    ki1000108-IRC              NA                   NA                0.2457002   0.2443966   0.2470039
6 months    ki1017093b-PROVIDE         NA                   NA                0.1830065   0.1775296   0.1884835
6 months    ki1017093c-NIH-Crypto      NA                   NA                0.2363239   0.2329774   0.2396703
6 months    ki1126311-ZVITAMBO         NA                   NA                0.1634757   0.1632150   0.1637364
9 months    ki1000108-CMC-V-BCS-2002   NA                   NA                0.3688525   0.3652883   0.3724166
9 months    ki1000108-IRC              NA                   NA                0.2727273   0.2709322   0.2745223
9 months    ki1017093b-PROVIDE         NA                   NA                0.2341772   0.2313254   0.2370290
9 months    ki1017093c-NIH-Crypto      NA                   NA                0.2333333   0.2295040   0.2371627
9 months    ki1126311-ZVITAMBO         NA                   NA                0.1943590   0.1939740   0.1947440
Birth       ki1000108-IRC              NA                   NA                0.1159794   0.1145520   0.1174068
Birth       ki1126311-ZVITAMBO         NA                   NA                0.1032768   0.1029327   0.1036209


### Parameter: RR


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ---------
12 months   ki1000108-CMC-V-BCS-2002   1                    0                 0.8798417   0.6112877   1.266378
12 months   ki1000108-IRC              1                    0                 1.0964912   0.7218953   1.665467
12 months   ki1017093b-PROVIDE         1                    0                 0.8898305   0.5029801   1.574214
12 months   ki1017093c-NIH-Crypto      1                    0                 1.4513406   1.0343748   2.036389
12 months   ki1126311-ZVITAMBO         1                    0                 1.0534039   0.7665665   1.447572
18 months   ki1000108-CMC-V-BCS-2002   1                    0                 0.9528424   0.7383478   1.229649
18 months   ki1000108-IRC              1                    0                 0.9775000   0.6921827   1.380425
18 months   ki1017093b-PROVIDE         1                    0                 0.8624833   0.5349099   1.390659
18 months   ki1017093c-NIH-Crypto      1                    0                 1.4316013   1.0530478   1.946239
18 months   ki1126311-ZVITAMBO         1                    0                 0.7454783   0.5654047   0.982903
24 months   ki1000108-CMC-V-BCS-2002   1                    0                 1.0552636   0.7997388   1.392431
24 months   ki1000108-IRC              1                    0                 1.0748366   0.7804693   1.480230
24 months   ki1017093b-PROVIDE         1                    0                 1.1973684   0.6674840   2.147903
24 months   ki1017093c-NIH-Crypto      1                    0                 1.4604037   0.9723728   2.193376
3 months    ki1000108-CMC-V-BCS-2002   1                    0                 1.2611276   0.5630659   2.824612
3 months    ki1000108-IRC              1                    0                 0.8279093   0.5296742   1.294067
3 months    ki1017093b-PROVIDE         1                    0                 0.6820513   0.2806264   1.657698
3 months    ki1017093c-NIH-Crypto      1                    0                 1.2863944   0.8842302   1.871470
3 months    ki1126311-ZVITAMBO         1                    0                 1.2571254   0.8802974   1.795262
6 months    ki1000108-CMC-V-BCS-2002   1                    0                 0.9356831   0.5162674   1.695832
6 months    ki1000108-IRC              1                    0                 0.8702896   0.5673744   1.334928
6 months    ki1017093b-PROVIDE         1                    0                 0.6611570   0.3205991   1.363474
6 months    ki1017093c-NIH-Crypto      1                    0                 1.3851852   0.9718846   1.974245
6 months    ki1126311-ZVITAMBO         1                    0                 0.8813634   0.6307733   1.231507
9 months    ki1000108-CMC-V-BCS-2002   1                    0                 0.7192982   0.4702952   1.100139
9 months    ki1000108-IRC              1                    0                 1.2120932   0.7631745   1.925077
9 months    ki1017093b-PROVIDE         1                    0                 1.2195122   0.5851493   2.541591
9 months    ki1017093c-NIH-Crypto      1                    0                 1.4578246   1.0135504   2.096840
9 months    ki1126311-ZVITAMBO         1                    0                 1.1891645   0.8320410   1.699571
Birth       ki1000108-IRC              1                    0                 0.7437500   0.3870802   1.429068
Birth       ki1126311-ZVITAMBO         1                    0                 1.5320128   0.9917620   2.366559


### Parameter: PAR


agecat      studyid                    intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  -----------  -----------  ----------
12 months   ki1000108-CMC-V-BCS-2002   0                    NA                -0.0627174   -0.2575701   0.1321353
12 months   ki1000108-IRC              0                    NA                 0.0216749   -0.0826330   0.1259827
12 months   ki1017093b-PROVIDE         0                    NA                -0.0267040   -0.1810235   0.1276154
12 months   ki1017093c-NIH-Crypto      0                    NA                 0.0545946   -0.0038385   0.1130277
12 months   ki1126311-ZVITAMBO         0                    NA                 0.0110223   -0.0577188   0.0797634
18 months   ki1000108-CMC-V-BCS-2002   0                    NA                -0.0316531   -0.2078986   0.1445923
18 months   ki1000108-IRC              0                    NA                -0.0067633   -0.1203190   0.1067925
18 months   ki1017093b-PROVIDE         0                    NA                -0.0429704   -0.2090365   0.1230958
18 months   ki1017093c-NIH-Crypto      0                    NA                 0.0714035   -0.0002469   0.1430539
18 months   ki1126311-ZVITAMBO         0                    NA                -0.1465570   -0.3068830   0.0137690
24 months   ki1000108-CMC-V-BCS-2002   0                    NA                 0.0350538   -0.1480503   0.2181578
24 months   ki1000108-IRC              0                    NA                 0.0243436   -0.0909569   0.1396440
24 months   ki1017093b-PROVIDE         0                    NA                 0.0431448   -0.1070729   0.1933625
24 months   ki1017093c-NIH-Crypto      0                    NA                 0.0691142   -0.0157231   0.1539515
3 months    ki1000108-CMC-V-BCS-2002   0                    NA                 0.0486188   -0.1084013   0.2056389
3 months    ki1000108-IRC              0                    NA                -0.0372823   -0.1410314   0.0664667
3 months    ki1017093b-PROVIDE         0                    NA                -0.0388471   -0.1551747   0.0774804
3 months    ki1017093c-NIH-Crypto      0                    NA                 0.0297790   -0.0240714   0.0836294
3 months    ki1126311-ZVITAMBO         0                    NA                 0.0326201   -0.0152616   0.0805018
6 months    ki1000108-CMC-V-BCS-2002   0                    NA                -0.0191870   -0.2022913   0.1639173
6 months    ki1000108-IRC              0                    NA                -0.0296621   -0.1351988   0.0758746
6 months    ki1017093b-PROVIDE         0                    NA                -0.0669935   -0.2176143   0.0836273
6 months    ki1017093c-NIH-Crypto      0                    NA                 0.0438105   -0.0128603   0.1004813
6 months    ki1126311-ZVITAMBO         0                    NA                -0.0199563   -0.0783209   0.0384083
9 months    ki1000108-CMC-V-BCS-2002   0                    NA                -0.1311475   -0.3314911   0.0691960
9 months    ki1000108-IRC              0                    NA                 0.0408432   -0.0588756   0.1405620
9 months    ki1017093b-PROVIDE         0                    NA                 0.0341772   -0.0987925   0.1671469
9 months    ki1017093c-NIH-Crypto      0                    NA                 0.0495495   -0.0064545   0.1055536
9 months    ki1126311-ZVITAMBO         0                    NA                 0.0287148   -0.0283725   0.0858021
Birth       ki1000108-IRC              0                    NA                -0.0310794   -0.1153782   0.0532194
Birth       ki1126311-ZVITAMBO         0                    NA                 0.0338323    0.0044670   0.0631977


### Parameter: PAF


agecat      studyid                    intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -------------------  ---------------  -----------  -----------  -----------
12 months   ki1000108-CMC-V-BCS-2002   0                    NA                -0.1261202   -0.5947760    0.2048120
12 months   ki1000108-IRC              0                    NA                 0.0739496   -0.3599706    0.3694207
12 months   ki1017093b-PROVIDE         0                    NA                -0.0928571   -0.7857217    0.3311742
12 months   ki1017093c-NIH-Crypto      0                    NA                 0.2099792   -0.0496977    0.4054166
12 months   ki1126311-ZVITAMBO         0                    NA                 0.0466307   -0.2934148    0.2972764
18 months   ki1000108-CMC-V-BCS-2002   0                    NA                -0.0459843   -0.3360853    0.1811279
18 months   ki1000108-IRC              0                    NA                -0.0190217   -0.3941111    0.2551488
18 months   ki1017093b-PROVIDE         0                    NA                -0.1165158   -0.6712059    0.2540670
18 months   ki1017093c-NIH-Crypto      0                    NA                 0.2071247   -0.0301730    0.3897614
18 months   ki1126311-ZVITAMBO         0                    NA                -0.3040512   -0.6830422   -0.0104022
24 months   ki1000108-CMC-V-BCS-2002   0                    NA                 0.0490226   -0.2448380    0.2735134
24 months   ki1000108-IRC              0                    NA                 0.0585678   -0.2640267    0.2988323
24 months   ki1017093b-PROVIDE         0                    NA                 0.1311953   -0.4697357    0.4864236
24 months   ki1017093c-NIH-Crypto      0                    NA                 0.2218481   -0.1037375    0.4513910
3 months    ki1000108-CMC-V-BCS-2002   0                    NA                 0.1955556   -0.7638282    0.6331100
3 months    ki1000108-IRC              0                    NA                -0.1667463   -0.7366215    0.2161234
3 months    ki1017093b-PROVIDE         0                    NA                -0.3263158   -1.7714090    0.3652638
3 months    ki1017093c-NIH-Crypto      0                    NA                 0.1445970   -0.1611680    0.3698463
3 months    ki1126311-ZVITAMBO         0                    NA                 0.1897361   -0.1426182    0.4254182
6 months    ki1000108-CMC-V-BCS-2002   0                    NA                -0.0637838   -0.8851992    0.3997261
6 months    ki1000108-IRC              0                    NA                -0.1207246   -0.6441900    0.2360836
6 months    ki1017093b-PROVIDE         0                    NA                -0.3660714   -1.4961940    0.2524014
6 months    ki1017093c-NIH-Crypto      0                    NA                 0.1853832   -0.0932591    0.3930072
6 months    ki1126311-ZVITAMBO         0                    NA                -0.1220749   -0.5424336    0.1837237
9 months    ki1000108-CMC-V-BCS-2002   0                    NA                -0.3555556   -1.0237486    0.0920162
9 months    ki1000108-IRC              0                    NA                 0.1497585   -0.3070636    0.4469201
9 months    ki1017093b-PROVIDE         0                    NA                 0.1459459   -0.6603797    0.5606979
9 months    ki1017093c-NIH-Crypto      0                    NA                 0.2123552   -0.0679587    0.4190934
9 months    ki1126311-ZVITAMBO         0                    NA                 0.1477411   -0.2029429    0.3961930
Birth       ki1000108-IRC              0                    NA                -0.2679739   -1.2494865    0.2852779
Birth       ki1126311-ZVITAMBO         0                    NA                 0.3275889   -0.0262996    0.5594496


