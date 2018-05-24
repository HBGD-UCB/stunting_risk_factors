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
* agecat: 12 months, studyid: ki1017093c-NIH-Crypto
* agecat: 12 months, studyid: ki1066203-TanzaniaChild2
* agecat: 12 months, studyid: ki1119695-PROBIT
* agecat: 12 months, studyid: ki1126311-ZVITAMBO
* agecat: 12 months, studyid: kiGH5241-JiVitA-3
* agecat: 12 months, studyid: kiGH5241-JiVitA-4
* agecat: 18 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 18 months, studyid: ki1000108-IRC
* agecat: 18 months, studyid: ki1017093c-NIH-Crypto
* agecat: 18 months, studyid: ki1066203-TanzaniaChild2
* agecat: 18 months, studyid: ki1119695-PROBIT
* agecat: 18 months, studyid: ki1126311-ZVITAMBO
* agecat: 18 months, studyid: kiGH5241-JiVitA-3
* agecat: 18 months, studyid: kiGH5241-JiVitA-4
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 24 months, studyid: ki1000108-IRC
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2
* agecat: 24 months, studyid: ki1119695-PROBIT
* agecat: 24 months, studyid: ki1126311-ZVITAMBO
* agecat: 24 months, studyid: kiGH5241-JiVitA-3
* agecat: 24 months, studyid: kiGH5241-JiVitA-4
* agecat: 3 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 3 months, studyid: ki1000108-IRC
* agecat: 3 months, studyid: ki1017093c-NIH-Crypto
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2
* agecat: 3 months, studyid: ki1119695-PROBIT
* agecat: 3 months, studyid: ki1126311-ZVITAMBO
* agecat: 3 months, studyid: kiGH5241-JiVitA-3
* agecat: 3 months, studyid: kiGH5241-JiVitA-4
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 6 months, studyid: ki1000108-IRC
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2
* agecat: 6 months, studyid: ki1119695-PROBIT
* agecat: 6 months, studyid: ki1126311-ZVITAMBO
* agecat: 6 months, studyid: kiGH5241-JiVitA-3
* agecat: 6 months, studyid: kiGH5241-JiVitA-4

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 18 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 24 months, studyid: kiGH5241-JiVitA-3

## Methods Detail

**todo**




# Results Detail

## Results Plots
![](/tmp/871bfc43-9cb7-44b2-a1f7-e428554725c2/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/871bfc43-9cb7-44b2-a1f7-e428554725c2/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/871bfc43-9cb7-44b2-a1f7-e428554725c2/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/871bfc43-9cb7-44b2-a1f7-e428554725c2/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Data Summary

agecat      studyid                      A       n      nA   nAY0   nAY1
----------  -------------------------  ---  ------  ------  -----  -----
12 months   ki1000108-CMC-V-BCS-2002     0     372      24      5     19
12 months   ki1000108-CMC-V-BCS-2002     1     372     348    107    241
12 months   ki1000108-IRC                0     408      70     31     39
12 months   ki1000108-IRC                1     408     338    170    168
12 months   ki1017093c-NIH-Crypto        0     471     194    127     67
12 months   ki1017093c-NIH-Crypto        1     471     277    159    118
12 months   ki1066203-TanzaniaChild2     0     494      41     29     12
12 months   ki1066203-TanzaniaChild2     1     494     453    307    146
12 months   ki1119695-PROBIT             0    7943     829    703    126
12 months   ki1119695-PROBIT             1    7943    7114   6083   1031
12 months   ki1126311-ZVITAMBO           0    2525     210    128     82
12 months   ki1126311-ZVITAMBO           1    2525    2315   1446    869
12 months   kiGH5241-JiVitA-3            0    8340     533    375    158
12 months   kiGH5241-JiVitA-3            1    8340    7807   4195   3612
12 months   kiGH5241-JiVitA-4            0    1177      82     51     31
12 months   kiGH5241-JiVitA-4            1    1177    1095    610    485
18 months   ki1000108-CMC-V-BCS-2002     0     373      25      4     21
18 months   ki1000108-CMC-V-BCS-2002     1     373     348     53    295
18 months   ki1000108-IRC                0     409      70     29     41
18 months   ki1000108-IRC                1     409     339    150    189
18 months   ki1017093c-NIH-Crypto        0     459     189    117     72
18 months   ki1017093c-NIH-Crypto        1     459     270    130    140
18 months   ki1066203-TanzaniaChild2     0     358      28     18     10
18 months   ki1066203-TanzaniaChild2     1     358     330    187    143
18 months   ki1119695-PROBIT             0    7475     783    656    127
18 months   ki1119695-PROBIT             1    7475    6692   5649   1043
18 months   ki1126311-ZVITAMBO           0    1842     153     74     79
18 months   ki1126311-ZVITAMBO           1    1842    1689    876    813
18 months   kiGH5241-JiVitA-3            0    7298     446    265    181
18 months   kiGH5241-JiVitA-3            1    7298    6852   3066   3786
18 months   kiGH5241-JiVitA-4            0    1145      79     41     38
18 months   kiGH5241-JiVitA-4            1    1145    1066    472    594
24 months   ki1000108-CMC-V-BCS-2002     0     373      25      3     22
24 months   ki1000108-CMC-V-BCS-2002     1     373     348     25    323
24 months   ki1000108-IRC                0     410      70     24     46
24 months   ki1000108-IRC                1     410     340    123    217
24 months   ki1017093c-NIH-Crypto        0     380     150     78     72
24 months   ki1017093c-NIH-Crypto        1     380     230     98    132
24 months   ki1066203-TanzaniaChild2     0     248      19     10      9
24 months   ki1066203-TanzaniaChild2     1     248     229    120    109
24 months   ki1119695-PROBIT             0    2076     237    192     45
24 months   ki1119695-PROBIT             1    2076    1839   1456    383
24 months   ki1126311-ZVITAMBO           0     463      43     11     32
24 months   ki1126311-ZVITAMBO           1     463     420    116    304
24 months   kiGH5241-JiVitA-3            0       3       0      0      0
24 months   kiGH5241-JiVitA-3            1       3       3      2      1
24 months   kiGH5241-JiVitA-4            0    1007      68     30     38
24 months   kiGH5241-JiVitA-4            1    1007     939    374    565
3 months    ki1000108-CMC-V-BCS-2002     0     362      25     16      9
3 months    ki1000108-CMC-V-BCS-2002     1     362     337    221    116
3 months    ki1000108-IRC                0     410      70     43     27
3 months    ki1000108-IRC                1     410     340    237    103
3 months    ki1017093c-NIH-Crypto        0     500     204    171     33
3 months    ki1017093c-NIH-Crypto        1     500     296    245     51
3 months    ki1066203-TanzaniaChild2     0     599      45     38      7
3 months    ki1066203-TanzaniaChild2     1     599     554    502     52
3 months    ki1119695-PROBIT             0    8125     849    771     78
3 months    ki1119695-PROBIT             1    8125    7276   6752    524
3 months    ki1126311-ZVITAMBO           0    3471     293    233     60
3 months    ki1126311-ZVITAMBO           1    3471    3178   2512    666
3 months    kiGH5241-JiVitA-3            0   13327     735    539    196
3 months    kiGH5241-JiVitA-3            1   13327   12592   7416   5176
3 months    kiGH5241-JiVitA-4            0    1155      72     55     17
3 months    kiGH5241-JiVitA-4            1    1155    1083    785    298
6 months    ki1000108-CMC-V-BCS-2002     0     367      25     12     13
6 months    ki1000108-CMC-V-BCS-2002     1     367     342    167    175
6 months    ki1000108-IRC                0     408      70     35     35
6 months    ki1000108-IRC                1     408     338    200    138
6 months    ki1017093c-NIH-Crypto        0     478     196    140     56
6 months    ki1017093c-NIH-Crypto        1     478     282    189     93
6 months    ki1066203-TanzaniaChild2     0     555      44     34     10
6 months    ki1066203-TanzaniaChild2     1     555     511    413     98
6 months    ki1119695-PROBIT             0    7807     815    718     97
6 months    ki1119695-PROBIT             1    7807    6992   6275    717
6 months    ki1126311-ZVITAMBO           0    2271     191    136     55
6 months    ki1126311-ZVITAMBO           1    2271    2080   1461    619
6 months    kiGH5241-JiVitA-3            0    9567     550    395    155
6 months    kiGH5241-JiVitA-3            1    9567    9017   5105   3912
6 months    kiGH5241-JiVitA-4            0    1023      72     49     23
6 months    kiGH5241-JiVitA-4            1    1023     951    628    323

## Results Table

### Parameter: TSM


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
12 months   ki1000108-CMC-V-BCS-2002   0                    NA                0.7916667   0.6289704   0.9543629
12 months   ki1000108-CMC-V-BCS-2002   1                    NA                0.6925287   0.6439815   0.7410759
12 months   ki1000108-IRC              0                    NA                0.5571429   0.4406372   0.6736485
12 months   ki1000108-IRC              1                    NA                0.4970414   0.4436729   0.5504099
12 months   ki1017093c-NIH-Crypto      0                    NA                0.3453608   0.2783806   0.4123410
12 months   ki1017093c-NIH-Crypto      1                    NA                0.4259928   0.3676980   0.4842875
12 months   ki1066203-TanzaniaChild2   0                    NA                0.2926829   0.1532704   0.4320955
12 months   ki1066203-TanzaniaChild2   1                    NA                0.3222958   0.2792147   0.3653769
12 months   ki1119695-PROBIT           0                    NA                0.1519903   0.1275500   0.1764307
12 months   ki1119695-PROBIT           1                    NA                0.1449255   0.1367448   0.1531062
12 months   ki1126311-ZVITAMBO         0                    NA                0.3904762   0.3244803   0.4564721
12 months   ki1126311-ZVITAMBO         1                    NA                0.3753780   0.3556491   0.3951068
12 months   kiGH5241-JiVitA-3          0                    NA                0.2964353   0.2576624   0.3352081
12 months   kiGH5241-JiVitA-3          1                    NA                0.4626617   0.4516009   0.4737225
12 months   kiGH5241-JiVitA-4          0                    NA                0.3780488   0.2730516   0.4830460
12 months   kiGH5241-JiVitA-4          1                    NA                0.4429224   0.4134885   0.4723562
18 months   ki1000108-IRC              0                    NA                0.5857143   0.4701766   0.7012519
18 months   ki1000108-IRC              1                    NA                0.5575221   0.5045855   0.6104588
18 months   ki1017093c-NIH-Crypto      0                    NA                0.3809524   0.3116436   0.4502611
18 months   ki1017093c-NIH-Crypto      1                    NA                0.5185185   0.4588546   0.5781824
18 months   ki1066203-TanzaniaChild2   0                    NA                0.3571429   0.1794153   0.5348704
18 months   ki1066203-TanzaniaChild2   1                    NA                0.4333333   0.3797939   0.4868727
18 months   ki1119695-PROBIT           0                    NA                0.1621967   0.1363748   0.1880186
18 months   ki1119695-PROBIT           1                    NA                0.1558577   0.1471667   0.1645488
18 months   ki1126311-ZVITAMBO         0                    NA                0.5163399   0.4371338   0.5955459
18 months   ki1126311-ZVITAMBO         1                    NA                0.4813499   0.4575147   0.5051851
18 months   kiGH5241-JiVitA-3          0                    NA                0.4058296   0.3602534   0.4514058
18 months   kiGH5241-JiVitA-3          1                    NA                0.5525394   0.5407653   0.5643135
18 months   kiGH5241-JiVitA-4          0                    NA                0.4810127   0.3707875   0.5912379
18 months   kiGH5241-JiVitA-4          1                    NA                0.5572233   0.5273924   0.5870542
24 months   ki1000108-IRC              0                    NA                0.6571429   0.5458119   0.7684738
24 months   ki1000108-IRC              1                    NA                0.6382353   0.5870975   0.6893731
24 months   ki1017093c-NIH-Crypto      0                    NA                0.4800000   0.3999434   0.5600566
24 months   ki1017093c-NIH-Crypto      1                    NA                0.5739130   0.5099206   0.6379055
24 months   ki1066203-TanzaniaChild2   0                    NA                0.4736842   0.2487185   0.6986499
24 months   ki1066203-TanzaniaChild2   1                    NA                0.4759825   0.4111674   0.5407976
24 months   ki1119695-PROBIT           0                    NA                0.1898734   0.1399290   0.2398178
24 months   ki1119695-PROBIT           1                    NA                0.2082654   0.1897018   0.2268289
24 months   ki1126311-ZVITAMBO         0                    NA                0.7441860   0.6136332   0.8747389
24 months   ki1126311-ZVITAMBO         1                    NA                0.7238095   0.6810031   0.7666160
24 months   kiGH5241-JiVitA-4          0                    NA                0.5588235   0.4407499   0.6768972
24 months   kiGH5241-JiVitA-4          1                    NA                0.6017039   0.5703765   0.6330314
3 months    ki1000108-CMC-V-BCS-2002   0                    NA                0.3600000   0.1715830   0.5484170
3 months    ki1000108-CMC-V-BCS-2002   1                    NA                0.3442136   0.2934177   0.3950096
3 months    ki1000108-IRC              0                    NA                0.3857143   0.2715455   0.4998831
3 months    ki1000108-IRC              1                    NA                0.3029412   0.2540362   0.3518461
3 months    ki1017093c-NIH-Crypto      0                    NA                0.1617647   0.1111831   0.2123463
3 months    ki1017093c-NIH-Crypto      1                    NA                0.1722973   0.1292334   0.2153612
3 months    ki1066203-TanzaniaChild2   0                    NA                0.1555556   0.0495733   0.2615378
3 months    ki1066203-TanzaniaChild2   1                    NA                0.0938628   0.0695576   0.1181680
3 months    ki1119695-PROBIT           0                    NA                0.0918728   0.0724421   0.1113035
3 months    ki1119695-PROBIT           1                    NA                0.0720176   0.0660772   0.0779580
3 months    ki1126311-ZVITAMBO         0                    NA                0.2047782   0.1585653   0.2509910
3 months    ki1126311-ZVITAMBO         1                    NA                0.2095658   0.1954135   0.2237181
3 months    kiGH5241-JiVitA-3          0                    NA                0.2666667   0.2346957   0.2986376
3 months    kiGH5241-JiVitA-3          1                    NA                0.4110546   0.4024605   0.4196488
3 months    kiGH5241-JiVitA-4          0                    NA                0.2361111   0.1379717   0.3342505
3 months    kiGH5241-JiVitA-4          1                    NA                0.2751616   0.2485521   0.3017711
6 months    ki1000108-CMC-V-BCS-2002   0                    NA                0.5200000   0.3238931   0.7161069
6 months    ki1000108-CMC-V-BCS-2002   1                    NA                0.5116959   0.4586467   0.5647451
6 months    ki1000108-IRC              0                    NA                0.5000000   0.3827259   0.6172741
6 months    ki1000108-IRC              1                    NA                0.4082840   0.3558201   0.4607479
6 months    ki1017093c-NIH-Crypto      0                    NA                0.2857143   0.2224036   0.3490249
6 months    ki1017093c-NIH-Crypto      1                    NA                0.3297872   0.2748583   0.3847162
6 months    ki1066203-TanzaniaChild2   0                    NA                0.2272727   0.1033360   0.3512095
6 months    ki1066203-TanzaniaChild2   1                    NA                0.1917808   0.1576146   0.2259470
6 months    ki1119695-PROBIT           0                    NA                0.1190184   0.0967859   0.1412509
6 months    ki1119695-PROBIT           1                    NA                0.1025458   0.0954346   0.1096569
6 months    ki1126311-ZVITAMBO         0                    NA                0.2879581   0.2237271   0.3521891
6 months    ki1126311-ZVITAMBO         1                    NA                0.2975962   0.2779436   0.3172487
6 months    kiGH5241-JiVitA-3          0                    NA                0.2818182   0.2442179   0.3194185
6 months    kiGH5241-JiVitA-3          1                    NA                0.4338472   0.4236172   0.4440772
6 months    kiGH5241-JiVitA-4          0                    NA                0.3194444   0.2116929   0.4271960
6 months    kiGH5241-JiVitA-4          1                    NA                0.3396425   0.3095283   0.3697566


### Parameter: E(Y)


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
12 months   ki1000108-CMC-V-BCS-2002   NA                   NA                0.6989247   0.6964464   0.7014030
12 months   ki1000108-IRC              NA                   NA                0.5073529   0.5051516   0.5095543
12 months   ki1017093c-NIH-Crypto      NA                   NA                0.3927813   0.3891935   0.3963691
12 months   ki1066203-TanzaniaChild2   NA                   NA                0.3198381   0.3191169   0.3205592
12 months   ki1119695-PROBIT           NA                   NA                0.1456628   0.1456153   0.1457104
12 months   ki1126311-ZVITAMBO         NA                   NA                0.3766337   0.3764710   0.3767963
12 months   kiGH5241-JiVitA-3          NA                   NA                0.4520384   0.4511657   0.4529110
12 months   kiGH5241-JiVitA-4          NA                   NA                0.4384027   0.4374588   0.4393467
18 months   ki1000108-IRC              NA                   NA                0.5623472   0.5613169   0.5633775
18 months   ki1017093c-NIH-Crypto      NA                   NA                0.4618736   0.4556731   0.4680741
18 months   ki1066203-TanzaniaChild2   NA                   NA                0.4273743   0.4252522   0.4294964
18 months   ki1119695-PROBIT           NA                   NA                0.1565217   0.1564777   0.1565657
18 months   ki1126311-ZVITAMBO         NA                   NA                0.4842562   0.4838151   0.4846973
18 months   kiGH5241-JiVitA-3          NA                   NA                0.5435736   0.5427673   0.5443799
18 months   kiGH5241-JiVitA-4          NA                   NA                0.5519651   0.5508458   0.5530843
24 months   ki1000108-IRC              NA                   NA                0.6414634   0.6407739   0.6421529
24 months   ki1017093c-NIH-Crypto      NA                   NA                0.5368421   0.5322206   0.5414636
24 months   ki1066203-TanzaniaChild2   NA                   NA                0.4758065   0.4757302   0.4758827
24 months   ki1119695-PROBIT           NA                   NA                0.2061657   0.2059140   0.2064174
24 months   ki1126311-ZVITAMBO         NA                   NA                0.7257019   0.7251626   0.7262412
24 months   kiGH5241-JiVitA-4          NA                   NA                0.5988083   0.5981434   0.5994733
3 months    ki1000108-CMC-V-BCS-2002   NA                   NA                0.3453039   0.3448910   0.3457168
3 months    ki1000108-IRC              NA                   NA                0.3170732   0.3140547   0.3200916
3 months    ki1017093c-NIH-Crypto      NA                   NA                0.1680000   0.1675458   0.1684542
3 months    ki1066203-TanzaniaChild2   NA                   NA                0.0984975   0.0971941   0.0998009
3 months    ki1119695-PROBIT           NA                   NA                0.0740923   0.0739602   0.0742244
3 months    ki1126311-ZVITAMBO         NA                   NA                0.2091616   0.2091173   0.2092059
3 months    kiGH5241-JiVitA-3          NA                   NA                0.4030915   0.4025319   0.4036511
3 months    kiGH5241-JiVitA-4          NA                   NA                0.2727273   0.2721826   0.2732720
6 months    ki1000108-CMC-V-BCS-2002   NA                   NA                0.5122616   0.5120472   0.5124759
6 months    ki1000108-IRC              NA                   NA                0.4240196   0.4206604   0.4273789
6 months    ki1017093c-NIH-Crypto      NA                   NA                0.3117155   0.3097702   0.3136608
6 months    ki1066203-TanzaniaChild2   NA                   NA                0.1945946   0.1937961   0.1953931
6 months    ki1119695-PROBIT           NA                   NA                0.1042654   0.1041537   0.1043771
6 months    ki1126311-ZVITAMBO         NA                   NA                0.2967856   0.2966755   0.2968956
6 months    kiGH5241-JiVitA-3          NA                   NA                0.4251071   0.4243980   0.4258163
6 months    kiGH5241-JiVitA-4          NA                   NA                0.3382209   0.3379042   0.3385377


### Parameter: RR


agecat      studyid                    intervention_level   baseline_level    estimate    ci_lower   ci_upper
----------  -------------------------  -------------------  ---------------  ---------  ----------  ---------
12 months   ki1000108-CMC-V-BCS-2002   1                    0                 2.398331   1.9302219   2.979964
12 months   ki1000108-IRC              1                    0                 2.440311   1.9291078   3.086981
12 months   ki1017093c-NIH-Crypto      1                    0                 3.433127   2.7077305   4.352857
12 months   ki1066203-TanzaniaChild2   1                    0                 3.007705   1.8339111   4.932785
12 months   ki1119695-PROBIT           1                    0                 2.594822   2.1882368   3.076952
12 months   ki1126311-ZVITAMBO         1                    0                 2.615182   2.1909532   3.121554
12 months   kiGH5241-JiVitA-3          1                    0                 4.762397   4.1694635   5.439652
12 months   kiGH5241-JiVitA-4          1                    0                 3.227156   2.4254739   4.293814
18 months   ki1000108-IRC              1                    0                 2.590542   2.0812012   3.224535
18 months   ki1017093c-NIH-Crypto      1                    0                 3.900525   3.1450888   4.837413
18 months   ki1066203-TanzaniaChild2   1                    0                 3.364682   2.0149370   5.618579
18 months   ki1119695-PROBIT           1                    0                 2.614096   2.2083235   3.094427
18 months   ki1126311-ZVITAMBO         1                    0                 2.540179   2.1620168   2.984487
18 months   kiGH5241-JiVitA-3          1                    0                 3.902065   3.4805782   4.374593
18 months   kiGH5241-JiVitA-4          1                    0                 3.184954   2.5171192   4.029977
24 months   ki1000108-IRC              1                    0                 2.641185   2.1898202   3.185585
24 months   ki1017093c-NIH-Crypto      1                    0                 3.305713   2.7048021   4.040125
24 months   ki1066203-TanzaniaChild2   1                    0                 2.731503   1.6666047   4.476832
24 months   ki1119695-PROBIT           1                    0                 2.994760   2.2685297   3.953482
24 months   ki1126311-ZVITAMBO         1                    0                 2.644862   2.1978690   3.182764
24 months   kiGH5241-JiVitA-4          1                    0                 2.935076   2.3610904   3.648599
3 months    ki1000108-CMC-V-BCS-2002   1                    0                 2.601658   1.5103811   4.481402
3 months    ki1000108-IRC              1                    0                 2.193291   1.5655685   3.072701
3 months    ki1017093c-NIH-Crypto      1                    0                 2.901160   1.9441165   4.329333
3 months    ki1066203-TanzaniaChild2   1                    0                 1.828331   0.8820919   3.789624
3 months    ki1119695-PROBIT           1                    0                 2.189961   1.7452056   2.748060
3 months    ki1126311-ZVITAMBO         1                    0                 2.782583   2.1985962   3.521686
3 months    kiGH5241-JiVitA-3          1                    0                 4.671382   4.1361044   5.275932
3 months    kiGH5241-JiVitA-4          1                    0                 3.207174   2.0930865   4.914258
6 months    ki1000108-CMC-V-BCS-2002   1                    0                 2.675217   1.8092483   3.955669
6 months    ki1000108-IRC              1                    0                 2.262721   1.7317406   2.956509
6 months    ki1017093c-NIH-Crypto      1                    0                 3.171661   2.4037981   4.184807
6 months    ki1066203-TanzaniaChild2   1                    0                 2.325269   1.3101623   4.126874
6 months    ki1119695-PROBIT           1                    0                 2.366935   1.9393266   2.888828
6 months    ki1126311-ZVITAMBO         1                    0                 2.810803   2.2274189   3.546982
6 months    kiGH5241-JiVitA-3          1                    0                 4.662062   4.0713300   5.338505
6 months    kiGH5241-JiVitA-4          1                    0                 2.895705   2.0430850   4.104141


### Parameter: PAR


agecat      studyid                    intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  -----------  -----------  ----------
12 months   ki1000108-CMC-V-BCS-2002   0                    NA                -0.0927419   -0.2554571   0.0699732
12 months   ki1000108-IRC              0                    NA                -0.0497899   -0.1663164   0.0667365
12 months   ki1017093c-NIH-Crypto      0                    NA                 0.0474205   -0.0196557   0.1144967
12 months   ki1066203-TanzaniaChild2   0                    NA                 0.0271551   -0.1122593   0.1665696
12 months   ki1119695-PROBIT           0                    NA                -0.0063275   -0.0307679   0.0181128
12 months   ki1126311-ZVITAMBO         0                    NA                -0.0138425   -0.0798386   0.0521536
12 months   kiGH5241-JiVitA-3          0                    NA                 0.1556031    0.1168204   0.1943857
12 months   kiGH5241-JiVitA-4          0                    NA                 0.0603539   -0.0446475   0.1653554
18 months   ki1000108-IRC              0                    NA                -0.0233671   -0.1389093   0.0921751
18 months   ki1017093c-NIH-Crypto      0                    NA                 0.0809213    0.0113357   0.1505068
18 months   ki1066203-TanzaniaChild2   0                    NA                 0.0702314   -0.1075088   0.2479716
18 months   ki1119695-PROBIT           0                    NA                -0.0056749   -0.0314969   0.0201470
18 months   ki1126311-ZVITAMBO         0                    NA                -0.0320836   -0.1112909   0.0471236
18 months   kiGH5241-JiVitA-3          0                    NA                 0.1377440    0.0921607   0.1833273
18 months   kiGH5241-JiVitA-4          0                    NA                 0.0709524   -0.0392785   0.1811833
24 months   ki1000108-IRC              0                    NA                -0.0156794   -0.1270125   0.0956536
24 months   ki1017093c-NIH-Crypto      0                    NA                 0.0568421   -0.0233477   0.1370320
24 months   ki1066203-TanzaniaChild2   0                    NA                 0.0021222   -0.2228435   0.2270880
24 months   ki1119695-PROBIT           0                    NA                 0.0162923   -0.0336528   0.0662374
24 months   ki1126311-ZVITAMBO         0                    NA                -0.0184841   -0.1490380   0.1120698
24 months   kiGH5241-JiVitA-4          0                    NA                 0.0399848   -0.0780907   0.1580603
3 months    ki1000108-CMC-V-BCS-2002   0                    NA                -0.0146961   -0.2031136   0.1737213
3 months    ki1000108-IRC              0                    NA                -0.0686411   -0.1828498   0.0455676
3 months    ki1017093c-NIH-Crypto      0                    NA                 0.0062353   -0.0443483   0.0568189
3 months    ki1066203-TanzaniaChild2   0                    NA                -0.0570581   -0.1630483   0.0489322
3 months    ki1119695-PROBIT           0                    NA                -0.0177805   -0.0372116   0.0016506
3 months    ki1126311-ZVITAMBO         0                    NA                 0.0043835   -0.0418294   0.0505963
3 months    kiGH5241-JiVitA-3          0                    NA                 0.1364248    0.1044489   0.1684007
3 months    kiGH5241-JiVitA-4          0                    NA                 0.0366162   -0.0615247   0.1347570
6 months    ki1000108-CMC-V-BCS-2002   0                    NA                -0.0077384   -0.2038454   0.1883686
6 months    ki1000108-IRC              0                    NA                -0.0759804   -0.1933026   0.0413418
6 months    ki1017093c-NIH-Crypto      0                    NA                 0.0260012   -0.0373393   0.0893417
6 months    ki1066203-TanzaniaChild2   0                    NA                -0.0326781   -0.1566175   0.0912612
6 months    ki1119695-PROBIT           0                    NA                -0.0147530   -0.0369857   0.0074797
6 months    ki1126311-ZVITAMBO         0                    NA                 0.0088274   -0.0554036   0.0730585
6 months    kiGH5241-JiVitA-3          0                    NA                 0.1432890    0.1056820   0.1808959
6 months    kiGH5241-JiVitA-4          0                    NA                 0.0187765   -0.0889756   0.1265285


### Parameter: PAF


agecat      studyid                    intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  -----------  ----------
12 months   ki1000108-CMC-V-BCS-2002   0                    NA                0.5863985    0.4920187   0.6632431
12 months   ki1000108-IRC              0                    NA                0.5977307    0.5041470   0.6736521
12 months   ki1017093c-NIH-Crypto      0                    NA                0.6793186    0.6106005   0.7359098
12 months   ki1066203-TanzaniaChild2   0                    NA                0.6647169    0.4601416   0.7917699
12 months   ki1119695-PROBIT           0                    NA                0.6164821    0.5495765   0.6734496
12 months   ki1126311-ZVITAMBO         0                    NA                0.6188452    0.5486604   0.6781160
12 months   kiGH5241-JiVitA-3          0                    NA                0.7823603    0.7519446   0.8090465
12 months   kiGH5241-JiVitA-4          0                    NA                0.6864028    0.5860057   0.7624528
18 months   ki1000108-IRC              0                    NA                0.6171473    0.5336585   0.6856892
18 months   ki1017093c-NIH-Crypto      0                    NA                0.7025230    0.6429888   0.7521294
18 months   ki1066203-TanzaniaChild2   0                    NA                0.6977945    0.5029110   0.8162740
18 months   ki1119695-PROBIT           0                    NA                0.6190214    0.5532743   0.6750921
18 months   ki1126311-ZVITAMBO         0                    NA                0.6085366    0.5436347   0.6642086
18 months   kiGH5241-JiVitA-3          0                    NA                0.7380007    0.7068585   0.7658344
18 months   kiGH5241-JiVitA-4          0                    NA                0.6825727    0.6008208   0.7475817
24 months   ki1000108-IRC              0                    NA                0.6232374    0.5536804   0.6819542
24 months   ki1017093c-NIH-Crypto      0                    NA                0.6732046    0.6138056   0.7234677
24 months   ki1066203-TanzaniaChild2   0                    NA                0.6337651    0.4111317   0.7722275
24 months   ki1119695-PROBIT           0                    NA                0.6623705    0.5607834   0.7404613
24 months   ki1126311-ZVITAMBO         0                    NA                0.6228687    0.5505497   0.6835512
24 months   kiGH5241-JiVitA-4          0                    NA                0.6575233    0.5769476   0.7227524
3 months    ki1000108-CMC-V-BCS-2002   0                    NA                0.6167920    0.3532501   0.7729441
3 months    ki1000108-IRC              0                    NA                0.5604666    0.4089740   0.6731284
3 months    ki1017093c-NIH-Crypto      0                    NA                0.6460308    0.5160857   0.7410819
3 months    ki1066203-TanzaniaChild2   0                    NA                0.4691088   -0.0494272   0.7314292
3 months    ki1119695-PROBIT           0                    NA                0.5535671    0.4484172   0.6386720
3 months    ki1126311-ZVITAMBO         0                    NA                0.6399117    0.5487497   0.7126570
3 months    kiGH5241-JiVitA-3          0                    NA                0.7794417    0.7513462   0.8043626
3 months    kiGH5241-JiVitA-4          0                    NA                0.6849677    0.5226123   0.7921075
6 months    ki1000108-CMC-V-BCS-2002   0                    NA                0.6266050    0.4555556   0.7439154
6 months    ki1000108-IRC              0                    NA                0.5717462    0.4584703   0.6613273
6 months    ki1017093c-NIH-Crypto      0                    NA                0.6641210    0.5807673   0.7309019
6 months    ki1066203-TanzaniaChild2   0                    NA                0.5752337    0.2671975   0.7537858
6 months    ki1119695-PROBIT           0                    NA                0.5835731    0.4980440   0.6545288
6 months    ki1126311-ZVITAMBO         0                    NA                0.6432269    0.5540723   0.7145568
6 months    kiGH5241-JiVitA-3          0                    NA                0.7787462    0.7471639   0.8063834
6 months    kiGH5241-JiVitA-4          0                    NA                0.6531207    0.5139617   0.7524367


