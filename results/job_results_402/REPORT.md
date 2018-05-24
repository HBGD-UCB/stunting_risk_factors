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
      strata: ['study_id']
      W: ['apgar1', 'apgar5', 'gagebrth', 'mage', 'meducyrs', 'sexn']
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

**Outcome Variable:** ever_stunted

## Predictor Variables

**Intervention Variable:** nhh

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid


The following strata were considered:

* agecat: 12 months, studyid: ki1000108-IRC
* agecat: 12 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 12 months, studyid: ki1017093-NIH-Birth
* agecat: 12 months, studyid: ki1017093c-NIH-Crypto
* agecat: 12 months, studyid: ki1148112-LCNI-5
* agecat: 18 months, studyid: ki1000108-IRC
* agecat: 18 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 18 months, studyid: ki1017093-NIH-Birth
* agecat: 18 months, studyid: ki1017093c-NIH-Crypto
* agecat: 18 months, studyid: ki1148112-LCNI-5
* agecat: 24 months, studyid: ki1000108-IRC
* agecat: 24 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 24 months, studyid: ki1017093-NIH-Birth
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto
* agecat: 24 months, studyid: ki1148112-LCNI-5
* agecat: 3 months, studyid: ki1000108-IRC
* agecat: 3 months, studyid: ki1017093-NIH-Birth
* agecat: 3 months, studyid: ki1017093c-NIH-Crypto
* agecat: 6 months, studyid: ki1000108-IRC
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 6 months, studyid: ki1017093-NIH-Birth
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto
* agecat: 6 months, studyid: ki1148112-LCNI-5

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 12 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 18 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 24 months, studyid: ki1000304b-SAS-FoodSuppl
* NA
* NA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl

## Methods Detail

**todo**




# Results Detail

## Results Plots
![](/tmp/f95be79c-3210-43e6-b023-9b2d4de46c17/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/f95be79c-3210-43e6-b023-9b2d4de46c17/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/f95be79c-3210-43e6-b023-9b2d4de46c17/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/f95be79c-3210-43e6-b023-9b2d4de46c17/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Data Summary

agecat      studyid                    A              n    nA   nAY0   nAY1
----------  -------------------------  ----------  ----  ----  -----  -----
12 months   ki1000108-IRC              3 or less    344    58     31     27
12 months   ki1000108-IRC              4            344    80     35     45
12 months   ki1000108-IRC              5-6          344    78     38     40
12 months   ki1000108-IRC              6+           344   128     70     58
12 months   ki1000304b-SAS-FoodSuppl   3 or less     75     8      3      5
12 months   ki1000304b-SAS-FoodSuppl   4             75    15      0     15
12 months   ki1000304b-SAS-FoodSuppl   5-6           75    23      4     19
12 months   ki1000304b-SAS-FoodSuppl   6+            75    29      3     26
12 months   ki1017093-NIH-Birth        3 or less    465    95     56     39
12 months   ki1017093-NIH-Birth        4            465   114     49     65
12 months   ki1017093-NIH-Birth        5-6          465   116     53     63
12 months   ki1017093-NIH-Birth        6+           465   140     74     66
12 months   ki1017093c-NIH-Crypto      3 or less    621   106     63     43
12 months   ki1017093c-NIH-Crypto      4            621   166     99     67
12 months   ki1017093c-NIH-Crypto      5-6          621   164    107     57
12 months   ki1017093c-NIH-Crypto      6+           621   185    111     74
12 months   ki1148112-LCNI-5           3 or less    336   114     62     52
12 months   ki1148112-LCNI-5           4            336    86     45     41
12 months   ki1148112-LCNI-5           5-6          336    75     38     37
12 months   ki1148112-LCNI-5           6+           336    61     31     30
18 months   ki1000108-IRC              3 or less    345    58     29     29
18 months   ki1000108-IRC              4            345    80     34     46
18 months   ki1000108-IRC              5-6          345    78     32     46
18 months   ki1000108-IRC              6+           345   129     58     71
18 months   ki1000304b-SAS-FoodSuppl   3 or less     70     7      1      6
18 months   ki1000304b-SAS-FoodSuppl   4             70    15      1     14
18 months   ki1000304b-SAS-FoodSuppl   5-6           70    21      2     19
18 months   ki1000304b-SAS-FoodSuppl   6+            70    27      2     25
18 months   ki1017093-NIH-Birth        3 or less    428    89     37     52
18 months   ki1017093-NIH-Birth        4            428   108     33     75
18 months   ki1017093-NIH-Birth        5-6          428    99     25     74
18 months   ki1017093-NIH-Birth        6+           428   132     55     77
18 months   ki1017093c-NIH-Crypto      3 or less    610   101     56     45
18 months   ki1017093c-NIH-Crypto      4            610   162     81     81
18 months   ki1017093c-NIH-Crypto      5-6          610   163     97     66
18 months   ki1017093c-NIH-Crypto      6+           610   184    101     83
18 months   ki1148112-LCNI-5           3 or less    276    92     47     45
18 months   ki1148112-LCNI-5           4            276    73     34     39
18 months   ki1148112-LCNI-5           5-6          276    64     20     44
18 months   ki1148112-LCNI-5           6+           276    47     21     26
24 months   ki1000108-IRC              3 or less    346    58     25     33
24 months   ki1000108-IRC              4            346    80     25     55
24 months   ki1000108-IRC              5-6          346    78     27     51
24 months   ki1000108-IRC              6+           346   130     48     82
24 months   ki1000304b-SAS-FoodSuppl   3 or less      5     1      0      1
24 months   ki1000304b-SAS-FoodSuppl   4              5     1      0      1
24 months   ki1000304b-SAS-FoodSuppl   5-6            5     1      0      1
24 months   ki1000304b-SAS-FoodSuppl   6+             5     2      0      2
24 months   ki1017093-NIH-Birth        3 or less    407    83     24     59
24 months   ki1017093-NIH-Birth        4            407   103     25     78
24 months   ki1017093-NIH-Birth        5-6          407    95     16     79
24 months   ki1017093-NIH-Birth        6+           407   126     37     89
24 months   ki1017093c-NIH-Crypto      3 or less    541    89     44     45
24 months   ki1017093c-NIH-Crypto      4            541   146     66     80
24 months   ki1017093c-NIH-Crypto      5-6          541   146     73     73
24 months   ki1017093c-NIH-Crypto      6+           541   160     83     77
24 months   ki1148112-LCNI-5           3 or less    302   104     37     67
24 months   ki1148112-LCNI-5           4            302    79     31     48
24 months   ki1148112-LCNI-5           5-6          302    65     17     48
24 months   ki1148112-LCNI-5           6+           302    54     19     35
3 months    ki1000108-IRC              3 or less    346    58     44     14
3 months    ki1000108-IRC              4            346    80     43     37
3 months    ki1000108-IRC              5-6          346    78     60     18
3 months    ki1000108-IRC              6+           346   130     89     41
3 months    ki1000304b-SAS-FoodSuppl   3 or less      0     0      0      0
3 months    ki1000304b-SAS-FoodSuppl   4              0     0      0      0
3 months    ki1000304b-SAS-FoodSuppl   5-6            0     0      0      0
3 months    ki1000304b-SAS-FoodSuppl   6+             0     0      0      0
3 months    ki1017093-NIH-Birth        3 or less    546   117     93     24
3 months    ki1017093-NIH-Birth        4            546   130     98     32
3 months    ki1017093-NIH-Birth        5-6          546   134    102     32
3 months    ki1017093-NIH-Birth        6+           546   165    132     33
3 months    ki1017093c-NIH-Crypto      3 or less    648   114     91     23
3 months    ki1017093c-NIH-Crypto      4            648   176    149     27
3 months    ki1017093c-NIH-Crypto      5-6          648   166    142     24
3 months    ki1017093c-NIH-Crypto      6+           648   192    161     31
3 months    ki1148112-LCNI-5           3 or less      0     0      0      0
3 months    ki1148112-LCNI-5           4              0     0      0      0
3 months    ki1148112-LCNI-5           5-6            0     0      0      0
3 months    ki1148112-LCNI-5           6+             0     0      0      0
6 months    ki1000108-IRC              3 or less    344    58     36     22
6 months    ki1000108-IRC              4            344    80     39     41
6 months    ki1000108-IRC              5-6          344    78     44     34
6 months    ki1000108-IRC              6+           344   128     78     50
6 months    ki1000304b-SAS-FoodSuppl   3 or less     80     9      5      4
6 months    ki1000304b-SAS-FoodSuppl   4             80    17     10      7
6 months    ki1000304b-SAS-FoodSuppl   5-6           80    24     13     11
6 months    ki1000304b-SAS-FoodSuppl   6+            80    30     18     12
6 months    ki1017093-NIH-Birth        3 or less    480   100     64     36
6 months    ki1017093-NIH-Birth        4            480   115     71     44
6 months    ki1017093-NIH-Birth        5-6          480   121     74     47
6 months    ki1017093-NIH-Birth        6+           480   144     98     46
6 months    ki1017093c-NIH-Crypto      3 or less    630   110     72     38
6 months    ki1017093c-NIH-Crypto      4            630   166    115     51
6 months    ki1017093c-NIH-Crypto      5-6          630   165    118     47
6 months    ki1017093c-NIH-Crypto      6+           630   189    125     64
6 months    ki1148112-LCNI-5           3 or less    112    34     25      9
6 months    ki1148112-LCNI-5           4            112    30     18     12
6 months    ki1148112-LCNI-5           5-6          112    30     17     13
6 months    ki1148112-LCNI-5           6+           112    18     10      8

## Results Table

### Parameter: TSM


agecat      studyid                 intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -------------------  ---------------  ----------  ----------  ----------
12 months   ki1000108-IRC           3 or less            NA                0.4655172   0.3369587   0.5940758
12 months   ki1000108-IRC           4                    NA                0.5625000   0.4536357   0.6713643
12 months   ki1000108-IRC           5-6                  NA                0.5128205   0.4017343   0.6239067
12 months   ki1000108-IRC           6+                   NA                0.4531250   0.3667619   0.5394881
12 months   ki1017093-NIH-Birth     3 or less            NA                0.4105263   0.3114987   0.5095540
12 months   ki1017093-NIH-Birth     4                    NA                0.5701754   0.4792023   0.6611485
12 months   ki1017093-NIH-Birth     5-6                  NA                0.5431034   0.4523555   0.6338514
12 months   ki1017093-NIH-Birth     6+                   NA                0.4714286   0.3886513   0.5542059
12 months   ki1017093c-NIH-Crypto   3 or less            NA                0.4056604   0.3121104   0.4992104
12 months   ki1017093c-NIH-Crypto   4                    NA                0.4036145   0.3289196   0.4783094
12 months   ki1017093c-NIH-Crypto   5-6                  NA                0.3475610   0.2746217   0.4205003
12 months   ki1017093c-NIH-Crypto   6+                   NA                0.4000000   0.3293491   0.4706509
12 months   ki1148112-LCNI-5        3 or less            NA                0.4561404   0.3645741   0.5477066
12 months   ki1148112-LCNI-5        4                    NA                0.4767442   0.3710269   0.5824614
12 months   ki1148112-LCNI-5        5-6                  NA                0.4933333   0.3800161   0.6066506
12 months   ki1148112-LCNI-5        6+                   NA                0.4918033   0.3661592   0.6174474
18 months   ki1000108-IRC           3 or less            NA                0.5000000   0.3711352   0.6288648
18 months   ki1000108-IRC           4                    NA                0.5750000   0.4665170   0.6834830
18 months   ki1000108-IRC           5-6                  NA                0.5897436   0.4804259   0.6990613
18 months   ki1000108-IRC           6+                   NA                0.5503876   0.4644196   0.6363556
18 months   ki1017093-NIH-Birth     3 or less            NA                0.5842697   0.4817579   0.6867814
18 months   ki1017093-NIH-Birth     4                    NA                0.6944444   0.6074667   0.7814222
18 months   ki1017093-NIH-Birth     5-6                  NA                0.7474747   0.6617928   0.8331567
18 months   ki1017093-NIH-Birth     6+                   NA                0.5833333   0.4991314   0.6675352
18 months   ki1017093c-NIH-Crypto   3 or less            NA                0.4455446   0.3485332   0.5425559
18 months   ki1017093c-NIH-Crypto   4                    NA                0.5000000   0.4229422   0.5770578
18 months   ki1017093c-NIH-Crypto   5-6                  NA                0.4049080   0.3294890   0.4803270
18 months   ki1017093c-NIH-Crypto   6+                   NA                0.4510870   0.3791292   0.5230447
18 months   ki1148112-LCNI-5        3 or less            NA                0.4891304   0.3867988   0.5914620
18 months   ki1148112-LCNI-5        4                    NA                0.5342466   0.4196099   0.6488833
18 months   ki1148112-LCNI-5        5-6                  NA                0.6875000   0.5737353   0.8012647
18 months   ki1148112-LCNI-5        6+                   NA                0.5531915   0.4107994   0.6955836
24 months   ki1000108-IRC           3 or less            NA                0.5689655   0.4413329   0.6965981
24 months   ki1000108-IRC           4                    NA                0.6875000   0.5857831   0.7892169
24 months   ki1000108-IRC           5-6                  NA                0.6538462   0.5481153   0.7595770
24 months   ki1000108-IRC           6+                   NA                0.6307692   0.5476906   0.7138478
24 months   ki1017093-NIH-Birth     3 or less            NA                0.7108434   0.6131879   0.8084989
24 months   ki1017093-NIH-Birth     4                    NA                0.7572816   0.6743836   0.8401795
24 months   ki1017093-NIH-Birth     5-6                  NA                0.8315789   0.7562312   0.9069267
24 months   ki1017093-NIH-Birth     6+                   NA                0.7063492   0.6267292   0.7859692
24 months   ki1017093c-NIH-Crypto   3 or less            NA                0.5056180   0.4016505   0.6095854
24 months   ki1017093c-NIH-Crypto   4                    NA                0.5479452   0.4671403   0.6287501
24 months   ki1017093c-NIH-Crypto   5-6                  NA                0.5000000   0.4188211   0.5811789
24 months   ki1017093c-NIH-Crypto   6+                   NA                0.4812500   0.4037585   0.5587415
24 months   ki1148112-LCNI-5        3 or less            NA                0.6442308   0.5520678   0.7363938
24 months   ki1148112-LCNI-5        4                    NA                0.6075949   0.4997427   0.7154472
24 months   ki1148112-LCNI-5        5-6                  NA                0.7384615   0.6314469   0.8454762
24 months   ki1148112-LCNI-5        6+                   NA                0.6481481   0.5205664   0.7757299
3 months    ki1000108-IRC           3 or less            NA                0.2413793   0.1310921   0.3516665
3 months    ki1000108-IRC           4                    NA                0.4625000   0.3530850   0.5719150
3 months    ki1000108-IRC           5-6                  NA                0.2307692   0.1371324   0.3244060
3 months    ki1000108-IRC           6+                   NA                0.3153846   0.2353923   0.3953770
3 months    ki1017093-NIH-Birth     3 or less            NA                0.2051282   0.1318939   0.2783625
3 months    ki1017093-NIH-Birth     4                    NA                0.2461538   0.1720366   0.3202711
3 months    ki1017093-NIH-Birth     5-6                  NA                0.2388060   0.1665516   0.3110603
3 months    ki1017093-NIH-Birth     6+                   NA                0.2000000   0.1389108   0.2610892
3 months    ki1017093c-NIH-Crypto   3 or less            NA                0.2017544   0.1280301   0.2754787
3 months    ki1017093c-NIH-Crypto   4                    NA                0.1534091   0.1001260   0.2066922
3 months    ki1017093c-NIH-Crypto   5-6                  NA                0.1445783   0.0910392   0.1981174
3 months    ki1017093c-NIH-Crypto   6+                   NA                0.1614583   0.1093718   0.2135449
6 months    ki1000108-IRC           3 or less            NA                0.3793103   0.2542554   0.5043653
6 months    ki1000108-IRC           4                    NA                0.5125000   0.4028094   0.6221906
6 months    ki1000108-IRC           5-6                  NA                0.4358974   0.3256917   0.5461032
6 months    ki1000108-IRC           6+                   NA                0.3906250   0.3059807   0.4752693
6 months    ki1017093-NIH-Birth     3 or less            NA                0.3600000   0.2658236   0.4541764
6 months    ki1017093-NIH-Birth     4                    NA                0.3826087   0.2936866   0.4715308
6 months    ki1017093-NIH-Birth     5-6                  NA                0.3884298   0.3014961   0.4753634
6 months    ki1017093-NIH-Birth     6+                   NA                0.3194444   0.2432104   0.3956785
6 months    ki1017093c-NIH-Crypto   3 or less            NA                0.3454545   0.2565217   0.4343874
6 months    ki1017093c-NIH-Crypto   4                    NA                0.3072289   0.2369921   0.3774657
6 months    ki1017093c-NIH-Crypto   5-6                  NA                0.2848485   0.2159266   0.3537704
6 months    ki1017093c-NIH-Crypto   6+                   NA                0.3386243   0.2711023   0.4061463
6 months    ki1148112-LCNI-5        3 or less            NA                0.2647059   0.1157463   0.4136655
6 months    ki1148112-LCNI-5        4                    NA                0.4000000   0.2239076   0.5760924
6 months    ki1148112-LCNI-5        5-6                  NA                0.4333333   0.2552145   0.6114522
6 months    ki1148112-LCNI-5        6+                   NA                0.4444444   0.2138590   0.6750299


### Parameter: E(Y)


agecat      studyid                 intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -------------------  ---------------  ----------  ----------  ----------
12 months   ki1000108-IRC           NA                   NA                0.4941860   0.4895369   0.4988352
12 months   ki1017093-NIH-Birth     NA                   NA                0.5010753   0.4956532   0.5064973
12 months   ki1017093c-NIH-Crypto   NA                   NA                0.3880837   0.3861666   0.3900008
12 months   ki1148112-LCNI-5        NA                   NA                0.4761905   0.4745098   0.4778711
18 months   ki1000108-IRC           NA                   NA                0.5565217   0.5533872   0.5596563
18 months   ki1017093-NIH-Birth     NA                   NA                0.6495327   0.6428493   0.6562161
18 months   ki1017093c-NIH-Crypto   NA                   NA                0.4508197   0.4480567   0.4535826
18 months   ki1148112-LCNI-5        NA                   NA                0.5579710   0.5491084   0.5668337
24 months   ki1000108-IRC           NA                   NA                0.6387283   0.6347225   0.6427341
24 months   ki1017093-NIH-Birth     NA                   NA                0.7493857   0.7445524   0.7542191
24 months   ki1017093c-NIH-Crypto   NA                   NA                0.5083179   0.5061505   0.5104853
24 months   ki1148112-LCNI-5        NA                   NA                0.6556291   0.6504091   0.6608491
3 months    ki1000108-IRC           NA                   NA                0.3179191   0.3087625   0.3270756
3 months    ki1017093-NIH-Birth     NA                   NA                0.2216117   0.2199007   0.2233227
3 months    ki1017093c-NIH-Crypto   NA                   NA                0.1620370   0.1605431   0.1635310
6 months    ki1000108-IRC           NA                   NA                0.4273256   0.4219359   0.4327152
6 months    ki1017093-NIH-Birth     NA                   NA                0.3604167   0.3578531   0.3629802
6 months    ki1017093c-NIH-Crypto   NA                   NA                0.3174603   0.3155826   0.3193381
6 months    ki1148112-LCNI-5        NA                   NA                0.3750000   0.3611450   0.3888550


### Parameter: RR


agecat      studyid                 intervention_level   baseline_level    estimate   ci_lower    ci_upper
----------  ----------------------  -------------------  ---------------  ---------  ---------  ----------
12 months   ki1000108-IRC           4                    3 or less         3.347900   2.389552    4.690601
12 months   ki1000108-IRC           5-6                  3 or less         3.009020   2.118336    4.274204
12 months   ki1000108-IRC           6+                   3 or less         2.646875   1.892374    3.702200
12 months   ki1017093-NIH-Birth     4                    3 or less         4.010392   3.003189    5.355387
12 months   ki1017093-NIH-Birth     5-6                  3 or less         3.754459   2.799677    5.034854
12 months   ki1017093-NIH-Birth     6+                   3 or less         3.152991   2.339627    4.249120
12 months   ki1017093c-NIH-Crypto   4                    3 or less         2.704607   2.012282    3.635125
12 months   ki1017093c-NIH-Crypto   5-6                  3 or less         2.355559   1.724560    3.217435
12 months   ki1017093c-NIH-Crypto   6+                   3 or less         2.680616   2.004843    3.584170
12 months   ki1148112-LCNI-5        4                    3 or less         2.843882   2.108666    3.835441
12 months   ki1148112-LCNI-5        5-6                  3 or less         2.949213   2.173817    4.001192
12 months   ki1148112-LCNI-5        6+                   3 or less         2.939337   2.123947    4.067759
18 months   ki1000108-IRC           4                    3 or less         3.158193   2.294684    4.346648
18 months   ki1000108-IRC           5-6                  3 or less         3.252706   2.367942    4.468055
18 months   ki1000108-IRC           6+                   3 or less         3.006496   2.224226    4.063893
18 months   ki1017093-NIH-Birth     4                    3 or less         3.282379   2.645864    4.072019
18 months   ki1017093-NIH-Birth     5-6                  3 or less         3.594237   2.914659    4.432265
18 months   ki1017093-NIH-Birth     6+                   3 or less         2.713929   2.162356    3.406198
18 months   ki1017093c-NIH-Crypto   4                    3 or less         3.071673   2.352462    4.010766
18 months   ki1017093c-NIH-Crypto   5-6                  3 or less         2.481327   1.863130    3.304646
18 months   ki1017093c-NIH-Crypto   6+                   3 or less         2.752307   2.101226    3.605132
18 months   ki1148112-LCNI-5        4                    3 or less         2.980936   2.209023    4.022584
18 months   ki1148112-LCNI-5        5-6                  3 or less         4.077792   3.123059    5.324390
18 months   ki1148112-LCNI-5        6+                   3 or less         3.098658   2.223916    4.317467
24 months   ki1000108-IRC           4                    3 or less         3.347900   2.558989    4.380025
24 months   ki1000108-IRC           5-6                  3 or less         3.155617   2.393249    4.160837
24 months   ki1000108-IRC           6+                   3 or less         3.030188   2.336123    3.930462
24 months   ki1017093-NIH-Birth     4                    3 or less         2.901791   2.434322    3.459030
24 months   ki1017093-NIH-Birth     5-6                  3 or less         3.221504   2.732670    3.797783
24 months   ki1017093-NIH-Birth     6+                   3 or less         2.701150   2.261374    3.226451
24 months   ki1017093c-NIH-Crypto   4                    3 or less         2.955636   2.294868    3.806661
24 months   ki1017093c-NIH-Crypto   5-6                  3 or less         2.688246   2.068645    3.493430
24 months   ki1017093c-NIH-Crypto   6+                   3 or less         2.590383   1.994985    3.363475
24 months   ki1148112-LCNI-5        4                    3 or less         2.568013   2.044500    3.225576
24 months   ki1148112-LCNI-5        5-6                  3 or less         3.146431   2.566737    3.857047
24 months   ki1148112-LCNI-5        6+                   3 or less         2.734861   2.144155    3.488305
3 months    ki1000108-IRC           4                    3 or less         6.794214   4.061508   11.365570
3 months    ki1000108-IRC           5-6                  3 or less         2.601385   1.411958    4.792778
3 months    ki1000108-IRC           6+                   3 or less         3.693570   2.190241    6.228746
3 months    ki1017093-NIH-Birth     4                    3 or less         3.320117   2.081239    5.296449
3 months    ki1017093-NIH-Birth     5-6                  3 or less         3.203292   2.006110    5.114915
3 months    ki1017093-NIH-Birth     6+                   3 or less         2.651167   1.657235    4.241213
3 months    ki1017093c-NIH-Crypto   4                    3 or less         2.139079   1.292047    3.541404
3 months    ki1017093c-NIH-Crypto   5-6                  3 or less         2.047471   1.216959    3.444765
3 months    ki1017093c-NIH-Crypto   6+                   3 or less         2.226146   1.367288    3.624492
6 months    ki1000108-IRC           4                    3 or less         3.861811   2.606649    5.721364
6 months    ki1000108-IRC           5-6                  3 or less         3.155617   2.082800    4.781026
6 months    ki1000108-IRC           6+                   3 or less         2.800588   1.887597    4.155175
6 months    ki1017093-NIH-Birth     4                    3 or less         2.894470   2.039845    4.107152
6 months    ki1017093-NIH-Birth     5-6                  3 or less         2.941653   2.084850    4.150572
6 months    ki1017093-NIH-Birth     6+                   3 or less         2.428675   1.704455    3.460614
6 months    ki1017093c-NIH-Crypto   4                    3 or less         2.433540   1.724700    3.433708
6 months    ki1017093c-NIH-Crypto   5-6                  3 or less         2.280880   1.602019    3.247410
6 months    ki1017093c-NIH-Crypto   6+                   3 or less         2.665065   1.924370    3.690854
6 months    ki1148112-LCNI-5        4                    3 or less         4.531763   2.218066    9.258914
6 months    ki1148112-LCNI-5        5-6                  3 or less         5.139918   2.560407   10.318184
6 months    ki1148112-LCNI-5        6+                   3 or less         5.360259   2.493303   11.523822


### Parameter: PAR


agecat      studyid                 intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------------------  -------------------  ---------------  -----------  -----------  ----------
12 months   ki1000108-IRC           3 or less            NA                 0.0286688   -0.0999738   0.1573114
12 months   ki1017093-NIH-Birth     3 or less            NA                 0.0905490   -0.0086270   0.1897249
12 months   ki1017093c-NIH-Crypto   3 or less            NA                -0.0175766   -0.1111463   0.0759930
12 months   ki1148112-LCNI-5        3 or less            NA                 0.0200501   -0.0715316   0.1116318
18 months   ki1000108-IRC           3 or less            NA                 0.0565217   -0.0723812   0.1854247
18 months   ki1017093-NIH-Birth     3 or less            NA                 0.0652630   -0.0374663   0.1679924
18 months   ki1017093c-NIH-Crypto   3 or less            NA                 0.0052751   -0.0917756   0.1023258
18 months   ki1148112-LCNI-5        3 or less            NA                 0.0688406   -0.0338741   0.1715552
24 months   ki1000108-IRC           3 or less            NA                 0.0697628   -0.0579326   0.1974582
24 months   ki1017093-NIH-Birth     3 or less            NA                 0.0385424   -0.0592327   0.1363174
24 months   ki1017093c-NIH-Crypto   3 or less            NA                 0.0027000   -0.1012901   0.1066900
24 months   ki1148112-LCNI-5        3 or less            NA                 0.0113984   -0.0809123   0.1037091
3 months    ki1000108-IRC           3 or less            NA                 0.0765398   -0.0341269   0.1872064
3 months    ki1017093-NIH-Birth     3 or less            NA                 0.0164835   -0.0567708   0.0897378
3 months    ki1017093c-NIH-Crypto   3 or less            NA                -0.0397173   -0.1134568   0.0340221
6 months    ki1000108-IRC           3 or less            NA                 0.0480152   -0.0771558   0.1731863
6 months    ki1017093-NIH-Birth     3 or less            NA                 0.0004167   -0.0937946   0.0946280
6 months    ki1017093c-NIH-Crypto   3 or less            NA                -0.0279942   -0.1169469   0.0609584
6 months    ki1148112-LCNI-5        3 or less            NA                 0.1102941   -0.0393084   0.2598967


### Parameter: PAF


agecat      studyid                 intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -------------------  ---------------  ----------  ----------  ----------
12 months   ki1000108-IRC           3 or less            NA                0.6540928   0.5439997   0.7376059
12 months   ki1017093-NIH-Birth     3 or less            NA                0.7049375   0.6243525   0.7682351
12 months   ki1017093c-NIH-Crypto   3 or less            NA                0.6158305   0.5161629   0.6949672
12 months   ki1148112-LCNI-5        3 or less            NA                0.6479408   0.5696617   0.7119809
18 months   ki1000108-IRC           3 or less            NA                0.6714425   0.5748241   0.7461051
18 months   ki1017093-NIH-Birth     3 or less            NA                0.6710009   0.6077853   0.7240276
18 months   ki1017093c-NIH-Crypto   3 or less            NA                0.6364505   0.5479746   0.7076088
18 months   ki1148112-LCNI-5        3 or less            NA                0.6804178   0.6058120   0.7409033
24 months   ki1000108-IRC           3 or less            NA                0.6745718   0.5926986   0.7399874
24 months   ki1017093-NIH-Birth     3 or less            NA                0.6515361   0.6001595   0.6963112
24 months   ki1017093c-NIH-Crypto   3 or less            NA                0.6340798   0.5505233   0.7021033
24 months   ki1148112-LCNI-5        3 or less            NA                0.6385722   0.5828931   0.6868188
3 months    ki1000108-IRC           3 or less            NA                0.7320871   0.5765342   0.8305003
3 months    ki1017093-NIH-Birth     3 or less            NA                0.6605257   0.5148303   0.7624692
3 months    ki1017093c-NIH-Crypto   3 or less            NA                0.5520798   0.3544209   0.6892208
6 months    ki1000108-IRC           3 or less            NA                0.6758619   0.5491651   0.7669535
6 months    ki1017093-NIH-Birth     3 or less            NA                0.6325461   0.5226282   0.7171547
6 months    ki1017093c-NIH-Crypto   3 or less            NA                0.6010679   0.4839022   0.6916344
6 months    ki1148112-LCNI-5        3 or less            NA                0.7574789   0.5737456   0.8620156


