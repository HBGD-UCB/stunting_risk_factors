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

**Intervention Variable:** hdlvry

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid


The following strata were considered:

* agecat: 12 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 12 months, studyid: ki1000108-IRC
* agecat: 12 months, studyid: ki1000109-EE
* agecat: 12 months, studyid: ki1000304b-SAS-CompFeed
* agecat: 12 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 12 months, studyid: ki1017093c-NIH-Crypto
* agecat: 12 months, studyid: ki1066203-TanzaniaChild2
* agecat: 12 months, studyid: ki1113344-GMS-Nepal
* agecat: 12 months, studyid: ki1135781-COHORTS
* agecat: 12 months, studyid: kiGH5241-JiVitA-3
* agecat: 12 months, studyid: kiGH5241-JiVitA-4
* agecat: 18 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 18 months, studyid: ki1000108-IRC
* agecat: 18 months, studyid: ki1000109-EE
* agecat: 18 months, studyid: ki1000304b-SAS-CompFeed
* agecat: 18 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 18 months, studyid: ki1017093c-NIH-Crypto
* agecat: 18 months, studyid: ki1066203-TanzaniaChild2
* agecat: 18 months, studyid: ki1113344-GMS-Nepal
* agecat: 18 months, studyid: kiGH5241-JiVitA-3
* agecat: 18 months, studyid: kiGH5241-JiVitA-4
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 24 months, studyid: ki1000108-IRC
* agecat: 24 months, studyid: ki1000109-EE
* agecat: 24 months, studyid: ki1000304b-SAS-CompFeed
* agecat: 24 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2
* agecat: 24 months, studyid: ki1113344-GMS-Nepal
* agecat: 24 months, studyid: kiGH5241-JiVitA-4
* agecat: 3 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 3 months, studyid: ki1000108-IRC
* agecat: 3 months, studyid: ki1000109-EE
* agecat: 3 months, studyid: ki1000304b-SAS-CompFeed
* agecat: 3 months, studyid: ki1017093c-NIH-Crypto
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2
* agecat: 3 months, studyid: ki1113344-GMS-Nepal
* agecat: 3 months, studyid: ki1135781-COHORTS
* agecat: 3 months, studyid: kiGH5241-JiVitA-3
* agecat: 3 months, studyid: kiGH5241-JiVitA-4
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 6 months, studyid: ki1000108-IRC
* agecat: 6 months, studyid: ki1000109-EE
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2
* agecat: 6 months, studyid: ki1113344-GMS-Nepal
* agecat: 6 months, studyid: kiGH5241-JiVitA-3
* agecat: 6 months, studyid: kiGH5241-JiVitA-4

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 12 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 12 months, studyid: ki1000108-IRC
* agecat: 12 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 12 months, studyid: ki1066203-TanzaniaChild2
* agecat: 12 months, studyid: kiGH5241-JiVitA-3
* agecat: 18 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 18 months, studyid: ki1000108-IRC
* agecat: 18 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 18 months, studyid: ki1066203-TanzaniaChild2
* NA
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 24 months, studyid: ki1000108-IRC
* agecat: 24 months, studyid: ki1000109-EE
* agecat: 24 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2
* NA
* NA
* agecat: 3 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 3 months, studyid: ki1000108-IRC
* NA
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2
* agecat: 3 months, studyid: kiGH5241-JiVitA-3
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 6 months, studyid: ki1000108-IRC
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2
* NA
* agecat: 6 months, studyid: kiGH5241-JiVitA-3

## Methods Detail

**todo**




# Results Detail

## Results Plots
![](/tmp/4852fab0-e384-453b-9a42-1ca52a2e6daf/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/4852fab0-e384-453b-9a42-1ca52a2e6daf/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/4852fab0-e384-453b-9a42-1ca52a2e6daf/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/4852fab0-e384-453b-9a42-1ca52a2e6daf/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Data Summary

agecat      studyid                      A      n     nA   nAY0   nAY1
----------  -------------------------  ---  -----  -----  -----  -----
12 months   ki1000108-CMC-V-BCS-2002     0    369    361    109    252
12 months   ki1000108-CMC-V-BCS-2002     1    369      8      3      5
12 months   ki1000108-IRC                0    408    400    199    201
12 months   ki1000108-IRC                1    408      8      2      6
12 months   ki1000109-EE                 0    371    249     44    205
12 months   ki1000109-EE                 1    371    122     21    101
12 months   ki1000304b-SAS-CompFeed      0    756    132     58     74
12 months   ki1000304b-SAS-CompFeed      1    756    624    250    374
12 months   ki1000304b-SAS-FoodSuppl     0     99     24      3     21
12 months   ki1000304b-SAS-FoodSuppl     1     99     75     12     63
12 months   ki1017093c-NIH-Crypto        0    729    566    360    206
12 months   ki1017093c-NIH-Crypto        1    729    163     92     71
12 months   ki1066203-TanzaniaChild2     0    469    462    314    148
12 months   ki1066203-TanzaniaChild2     1    469      7      5      2
12 months   ki1113344-GMS-Nepal          0    543    134     77     57
12 months   ki1113344-GMS-Nepal          1    543    409    221    188
12 months   ki1135781-COHORTS            0   4747   2929   1936    993
12 months   ki1135781-COHORTS            1   4747   1818    907    911
12 months   kiGH5241-JiVitA-3            0    158     17     14      3
12 months   kiGH5241-JiVitA-3            1    158    141     86     55
12 months   kiGH5241-JiVitA-4            0   1170    294    182    112
12 months   kiGH5241-JiVitA-4            1   1170    876    476    400
18 months   ki1000108-CMC-V-BCS-2002     0    370    362     55    307
18 months   ki1000108-CMC-V-BCS-2002     1    370      8      2      6
18 months   ki1000108-IRC                0    409    401    177    224
18 months   ki1000108-IRC                1    409      8      2      6
18 months   ki1000109-EE                 0    361    245     26    219
18 months   ki1000109-EE                 1    361    116      6    110
18 months   ki1000304b-SAS-CompFeed      0    736    127     42     85
18 months   ki1000304b-SAS-CompFeed      1    736    609    155    454
18 months   ki1000304b-SAS-FoodSuppl     0     93     25      3     22
18 months   ki1000304b-SAS-FoodSuppl     1     93     68      7     61
18 months   ki1017093c-NIH-Crypto        0    715    555    321    234
18 months   ki1017093c-NIH-Crypto        1    715    160     77     83
18 months   ki1066203-TanzaniaChild2     0    345    343    199    144
18 months   ki1066203-TanzaniaChild2     1    345      2      1      1
18 months   ki1113344-GMS-Nepal          0    535    132     56     76
18 months   ki1113344-GMS-Nepal          1    535    403    146    257
18 months   ki1135781-COHORTS            0      0      0      0      0
18 months   ki1135781-COHORTS            1      0      0      0      0
18 months   kiGH5241-JiVitA-3            0    149     15      9      6
18 months   kiGH5241-JiVitA-3            1    149    134     65     69
18 months   kiGH5241-JiVitA-4            0   1140    285    141    144
18 months   kiGH5241-JiVitA-4            1   1140    855    369    486
24 months   ki1000108-CMC-V-BCS-2002     0    370    362     27    335
24 months   ki1000108-CMC-V-BCS-2002     1    370      8      1      7
24 months   ki1000108-IRC                0    410    402    145    257
24 months   ki1000108-IRC                1    410      8      2      6
24 months   ki1000109-EE                 0    336    226     23    203
24 months   ki1000109-EE                 1    336    110      4    106
24 months   ki1000304b-SAS-CompFeed      0     66     15      8      7
24 months   ki1000304b-SAS-CompFeed      1     66     51     12     39
24 months   ki1000304b-SAS-FoodSuppl     0      9      3      0      3
24 months   ki1000304b-SAS-FoodSuppl     1      9      6      1      5
24 months   ki1017093c-NIH-Crypto        0    634    484    250    234
24 months   ki1017093c-NIH-Crypto        1    634    150     66     84
24 months   ki1066203-TanzaniaChild2     0    238    236    124    112
24 months   ki1066203-TanzaniaChild2     1    238      2      1      1
24 months   ki1113344-GMS-Nepal          0    530    133     48     85
24 months   ki1113344-GMS-Nepal          1    530    397    118    279
24 months   ki1135781-COHORTS            0      0      0      0      0
24 months   ki1135781-COHORTS            1      0      0      0      0
24 months   kiGH5241-JiVitA-3            0      0      0      0      0
24 months   kiGH5241-JiVitA-3            1      0      0      0      0
24 months   kiGH5241-JiVitA-4            0   1002    250    111    139
24 months   kiGH5241-JiVitA-4            1   1002    752    290    462
3 months    ki1000108-CMC-V-BCS-2002     0    359    352    230    122
3 months    ki1000108-CMC-V-BCS-2002     1    359      7      5      2
3 months    ki1000108-IRC                0    410    402    274    128
3 months    ki1000108-IRC                1    410      8      6      2
3 months    ki1000109-EE                 0    377    253     95    158
3 months    ki1000109-EE                 1    377    124     42     82
3 months    ki1000304b-SAS-CompFeed      0    830    143     92     51
3 months    ki1000304b-SAS-CompFeed      1    830    687    459    228
3 months    ki1000304b-SAS-FoodSuppl     0      0      0      0      0
3 months    ki1000304b-SAS-FoodSuppl     1      0      0      0      0
3 months    ki1017093c-NIH-Crypto        0    758    590    502     88
3 months    ki1017093c-NIH-Crypto        1    758    168    135     33
3 months    ki1066203-TanzaniaChild2     0    571    561    508     53
3 months    ki1066203-TanzaniaChild2     1    571     10      8      2
3 months    ki1113344-GMS-Nepal          0    552    135    118     17
3 months    ki1113344-GMS-Nepal          1    552    417    348     69
3 months    ki1135781-COHORTS            0   4962   3057   2530    527
3 months    ki1135781-COHORTS            1   4962   1905   1483    422
3 months    kiGH5241-JiVitA-3            0    164     19     16      3
3 months    kiGH5241-JiVitA-3            1    164    145     98     47
3 months    kiGH5241-JiVitA-4            0   1146    276    215     61
3 months    kiGH5241-JiVitA-4            1   1146    870    619    251
6 months    ki1000108-CMC-V-BCS-2002     0    364    357    172    185
6 months    ki1000108-CMC-V-BCS-2002     1    364      7      5      2
6 months    ki1000108-IRC                0    408    400    231    169
6 months    ki1000108-IRC                1    408      8      4      4
6 months    ki1000109-EE                 0    371    250     65    185
6 months    ki1000109-EE                 1    371    121     31     90
6 months    ki1000304b-SAS-CompFeed      0    690    119     63     56
6 months    ki1000304b-SAS-CompFeed      1    690    571    331    240
6 months    ki1000304b-SAS-FoodSuppl     0    105     25     18      7
6 months    ki1000304b-SAS-FoodSuppl     1    105     80     44     36
6 months    ki1017093c-NIH-Crypto        0    736    572    401    171
6 months    ki1017093c-NIH-Crypto        1    736    164    109     55
6 months    ki1066203-TanzaniaChild2     0    529    521    422     99
6 months    ki1066203-TanzaniaChild2     1    529      8      6      2
6 months    ki1113344-GMS-Nepal          0    531    128     95     33
6 months    ki1113344-GMS-Nepal          1    531    403    289    114
6 months    ki1135781-COHORTS            0      0      0      0      0
6 months    ki1135781-COHORTS            1      0      0      0      0
6 months    kiGH5241-JiVitA-3            0    129     17     14      3
6 months    kiGH5241-JiVitA-3            1    129    112     67     45
6 months    kiGH5241-JiVitA-4            0   1017    256    184     72
6 months    kiGH5241-JiVitA-4            1   1017    761    490    271

## Results Table

### Parameter: TSM


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
12 months   ki1000109-EE               0                    NA                0.8232932   0.7758539   0.8707325
12 months   ki1000109-EE               1                    NA                0.8278689   0.7607932   0.8949445
12 months   ki1000304b-SAS-CompFeed    0                    NA                0.5606061   0.4758824   0.6453297
12 months   ki1000304b-SAS-CompFeed    1                    NA                0.5993590   0.5608852   0.6378327
12 months   ki1017093c-NIH-Crypto      0                    NA                0.3639576   0.3242927   0.4036225
12 months   ki1017093c-NIH-Crypto      1                    NA                0.4355828   0.3594121   0.5117535
12 months   ki1113344-GMS-Nepal        0                    NA                0.4253731   0.3415867   0.5091596
12 months   ki1113344-GMS-Nepal        1                    NA                0.4596577   0.4113142   0.5080012
12 months   ki1135781-COHORTS          0                    NA                0.3390236   0.3218784   0.3561687
12 months   ki1135781-COHORTS          1                    NA                0.5011001   0.4781140   0.5240862
12 months   kiGH5241-JiVitA-4          0                    NA                0.3809524   0.3254186   0.4364862
12 months   kiGH5241-JiVitA-4          1                    NA                0.4566210   0.4236212   0.4896208
18 months   ki1000109-EE               0                    NA                0.8938776   0.8552577   0.9324974
18 months   ki1000109-EE               1                    NA                0.9482759   0.9079173   0.9886344
18 months   ki1000304b-SAS-CompFeed    0                    NA                0.6692913   0.5874125   0.7511702
18 months   ki1000304b-SAS-CompFeed    1                    NA                0.7454844   0.7108657   0.7801031
18 months   ki1017093c-NIH-Crypto      0                    NA                0.4216216   0.3805092   0.4627340
18 months   ki1017093c-NIH-Crypto      1                    NA                0.5187500   0.4412759   0.5962241
18 months   ki1113344-GMS-Nepal        0                    NA                0.5757576   0.4913669   0.6601482
18 months   ki1113344-GMS-Nepal        1                    NA                0.6377171   0.5907450   0.6846892
18 months   kiGH5241-JiVitA-3          0                    NA                0.4000000   0.1512458   0.6487542
18 months   kiGH5241-JiVitA-3          1                    NA                0.5149254   0.4300202   0.5998306
18 months   kiGH5241-JiVitA-4          0                    NA                0.5052632   0.4471918   0.5633345
18 months   kiGH5241-JiVitA-4          1                    NA                0.5684211   0.5352071   0.6016350
24 months   ki1000304b-SAS-CompFeed    0                    NA                0.4666667   0.2122647   0.7210687
24 months   ki1000304b-SAS-CompFeed    1                    NA                0.7647059   0.6473970   0.8820148
24 months   ki1017093c-NIH-Crypto      0                    NA                0.4834711   0.4389156   0.5280265
24 months   ki1017093c-NIH-Crypto      1                    NA                0.5600000   0.4805003   0.6394997
24 months   ki1113344-GMS-Nepal        0                    NA                0.6390977   0.5573999   0.7207956
24 months   ki1113344-GMS-Nepal        1                    NA                0.7027708   0.6577705   0.7477711
24 months   kiGH5241-JiVitA-4          0                    NA                0.5560000   0.4943797   0.6176203
24 months   kiGH5241-JiVitA-4          1                    NA                0.6143617   0.5795554   0.6491680
3 months    ki1000109-EE               0                    NA                0.6245059   0.5647564   0.6842554
3 months    ki1000109-EE               1                    NA                0.6612903   0.5778792   0.7447014
3 months    ki1000304b-SAS-CompFeed    0                    NA                0.3566434   0.2780864   0.4352003
3 months    ki1000304b-SAS-CompFeed    1                    NA                0.3318777   0.2966448   0.3671106
3 months    ki1017093c-NIH-Crypto      0                    NA                0.1491525   0.1203885   0.1779166
3 months    ki1017093c-NIH-Crypto      1                    NA                0.1964286   0.1363119   0.2565452
3 months    ki1113344-GMS-Nepal        0                    NA                0.1259259   0.0699106   0.1819412
3 months    ki1113344-GMS-Nepal        1                    NA                0.1654676   0.1297690   0.2011663
3 months    ki1135781-COHORTS          0                    NA                0.1723912   0.1590002   0.1857823
3 months    ki1135781-COHORTS          1                    NA                0.2215223   0.2028724   0.2401722
3 months    kiGH5241-JiVitA-4          0                    NA                0.2210145   0.1720413   0.2699877
3 months    kiGH5241-JiVitA-4          1                    NA                0.2885057   0.2583867   0.3186248
6 months    ki1000109-EE               0                    NA                0.7400000   0.6855539   0.7944461
6 months    ki1000109-EE               1                    NA                0.7438017   0.6659159   0.8216874
6 months    ki1000304b-SAS-CompFeed    0                    NA                0.4705882   0.3808439   0.5603325
6 months    ki1000304b-SAS-CompFeed    1                    NA                0.4203152   0.3797991   0.4608314
6 months    ki1000304b-SAS-FoodSuppl   0                    NA                0.2800000   0.1031515   0.4568485
6 months    ki1000304b-SAS-FoodSuppl   1                    NA                0.4500000   0.3404610   0.5595390
6 months    ki1017093c-NIH-Crypto      0                    NA                0.2989510   0.2614089   0.3364932
6 months    ki1017093c-NIH-Crypto      1                    NA                0.3353659   0.2630602   0.4076715
6 months    ki1113344-GMS-Nepal        0                    NA                0.2578125   0.1819615   0.3336635
6 months    ki1113344-GMS-Nepal        1                    NA                0.2828784   0.2388634   0.3268935
6 months    kiGH5241-JiVitA-4          0                    NA                0.2812500   0.2261468   0.3363532
6 months    kiGH5241-JiVitA-4          1                    NA                0.3561104   0.3220721   0.3901486


### Parameter: E(Y)


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
12 months   ki1000109-EE               NA                   NA                0.8247978   0.8245788   0.8250169
12 months   ki1000304b-SAS-CompFeed    NA                   NA                0.5925926   0.5915432   0.5936420
12 months   ki1017093c-NIH-Crypto      NA                   NA                0.3799726   0.3778047   0.3821404
12 months   ki1113344-GMS-Nepal        NA                   NA                0.4511971   0.4499527   0.4524415
12 months   ki1135781-COHORTS          NA                   NA                0.4010954   0.3988539   0.4033369
12 months   kiGH5241-JiVitA-4          NA                   NA                0.4376068   0.4357254   0.4394883
18 months   ki1000109-EE               NA                   NA                0.9113573   0.9087332   0.9139815
18 months   ki1000304b-SAS-CompFeed    NA                   NA                0.7323370   0.7302556   0.7344183
18 months   ki1017093c-NIH-Crypto      NA                   NA                0.4433566   0.4403874   0.4463259
18 months   ki1113344-GMS-Nepal        NA                   NA                0.6224299   0.6201644   0.6246954
18 months   kiGH5241-JiVitA-3          NA                   NA                0.5033557   0.4977846   0.5089269
18 months   kiGH5241-JiVitA-4          NA                   NA                0.5526316   0.5510433   0.5542198
24 months   ki1000304b-SAS-CompFeed    NA                   NA                0.6969697   0.6666062   0.7273332
24 months   ki1017093c-NIH-Crypto      NA                   NA                0.5015773   0.4990436   0.5041110
24 months   ki1113344-GMS-Nepal        NA                   NA                0.6867925   0.6844400   0.6891449
24 months   kiGH5241-JiVitA-4          NA                   NA                0.5998004   0.5982359   0.6013649
3 months    ki1000109-EE               NA                   NA                0.6366048   0.6348580   0.6383516
3 months    ki1000304b-SAS-CompFeed    NA                   NA                0.3361446   0.3355079   0.3367812
3 months    ki1017093c-NIH-Crypto      NA                   NA                0.1596306   0.1582318   0.1610294
3 months    ki1113344-GMS-Nepal        NA                   NA                0.1557971   0.1543780   0.1572162
3 months    ki1135781-COHORTS          NA                   NA                0.1912535   0.1905886   0.1919184
3 months    kiGH5241-JiVitA-4          NA                   NA                0.2722513   0.2705797   0.2739229
6 months    ki1000109-EE               NA                   NA                0.7412399   0.7410583   0.7414215
6 months    ki1000304b-SAS-CompFeed    NA                   NA                0.4289855   0.4275674   0.4304036
6 months    ki1000304b-SAS-FoodSuppl   NA                   NA                0.4095238   0.3956081   0.4234395
6 months    ki1017093c-NIH-Crypto      NA                   NA                0.3070652   0.3059697   0.3081607
6 months    ki1113344-GMS-Nepal        NA                   NA                0.2768362   0.2759234   0.2777489
6 months    kiGH5241-JiVitA-4          NA                   NA                0.3372665   0.3352687   0.3392642


### Parameter: RR


agecat      studyid                    intervention_level   baseline_level    estimate   ci_lower   ci_upper
----------  -------------------------  -------------------  ---------------  ---------  ---------  ---------
12 months   ki1000109-EE               1                    0                 2.733432   2.474740   3.019164
12 months   ki1000304b-SAS-CompFeed    1                    0                 2.912835   2.471760   3.432617
12 months   ki1017093c-NIH-Crypto      1                    0                 3.309495   2.693240   4.066758
12 months   ki1113344-GMS-Nepal        1                    0                 2.946443   2.356805   3.683600
12 months   ki1135781-COHORTS          1                    0                 4.384470   4.095103   4.694284
12 months   kiGH5241-JiVitA-4          1                    0                 3.315572   2.817706   3.901407
18 months   ki1000109-EE               1                    0                 2.888844   2.718853   3.069464
18 months   ki1000304b-SAS-CompFeed    1                    0                 3.046037   2.672428   3.471877
18 months   ki1017093c-NIH-Crypto      1                    0                 3.422491   2.863391   4.090759
18 months   ki1113344-GMS-Nepal        1                    0                 3.027127   2.569148   3.566746
18 months   kiGH5241-JiVitA-3          1                    0                 3.623040   1.903967   6.894245
18 months   kiGH5241-JiVitA-4          1                    0                 3.080217   2.707610   3.504100
24 months   ki1000304b-SAS-CompFeed    1                    0                 5.148243   2.922197   9.070028
24 months   ki1017093c-NIH-Crypto      1                    0                 3.184485   2.688645   3.771768
24 months   ki1113344-GMS-Nepal        1                    0                 3.003053   2.602977   3.464621
24 months   kiGH5241-JiVitA-4          1                    0                 3.019125   2.665784   3.419301
3 months    ki1000109-EE               1                    0                 2.883202   2.461048   3.377771
3 months    ki1000304b-SAS-CompFeed    1                    0                 2.535927   1.985841   3.238387
3 months    ki1017093c-NIH-Crypto      1                    0                 3.732075   2.599251   5.358614
3 months    ki1113344-GMS-Nepal        1                    0                 3.721056   2.269642   6.100636
3 months    ki1135781-COHORTS          1                    0                 3.614659   3.223434   4.053367
3 months    kiGH5241-JiVitA-4          1                    0                 3.689055   2.887600   4.712954
6 months    ki1000109-EE               1                    0                 2.732283   2.404062   3.105314
6 months    ki1000304b-SAS-CompFeed    1                    0                 2.442861   1.972863   3.024828
6 months    ki1000304b-SAS-FoodSuppl   1                    0                 4.988538   2.535162   9.816144
6 months    ki1017093c-NIH-Crypto      1                    0                 3.070402   2.392407   3.940538
6 months    ki1113344-GMS-Nepal        1                    0                 2.995842   2.147714   4.178893
6 months    kiGH5241-JiVitA-4          1                    0                 3.547241   2.852441   4.411282


### Parameter: PAR


agecat      studyid                    intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  -----------  -----------  ----------
12 months   ki1000109-EE               0                    NA                 0.0015047   -0.0459352   0.0489445
12 months   ki1000304b-SAS-CompFeed    0                    NA                 0.0319865   -0.0527436   0.1167166
12 months   ki1017093c-NIH-Crypto      0                    NA                 0.0160150   -0.0237091   0.0557391
12 months   ki1113344-GMS-Nepal        0                    NA                 0.0258239   -0.0579718   0.1096196
12 months   ki1135781-COHORTS          0                    NA                 0.0620719    0.0447808   0.0793630
12 months   kiGH5241-JiVitA-4          0                    NA                 0.0566545    0.0010888   0.1122201
18 months   ki1000109-EE               0                    NA                 0.0174798   -0.0212291   0.0561886
18 months   ki1000304b-SAS-CompFeed    0                    NA                 0.0630456   -0.0188597   0.1449509
18 months   ki1017093c-NIH-Crypto      0                    NA                 0.0217350   -0.0194845   0.0629545
18 months   ki1113344-GMS-Nepal        0                    NA                 0.0466723   -0.0377487   0.1310934
18 months   kiGH5241-JiVitA-3          0                    NA                 0.1033557   -0.1454608   0.3521722
18 months   kiGH5241-JiVitA-4          0                    NA                 0.0473684   -0.0107247   0.1054615
24 months   ki1000304b-SAS-CompFeed    0                    NA                 0.2303030   -0.0259045   0.4865106
24 months   ki1017093c-NIH-Crypto      0                    NA                 0.0181062   -0.0265212   0.0627336
24 months   ki1113344-GMS-Nepal        0                    NA                 0.0476947   -0.0340370   0.1294265
24 months   kiGH5241-JiVitA-4          0                    NA                 0.0438004   -0.0178398   0.1054406
3 months    ki1000109-EE               0                    NA                 0.0120988   -0.0476762   0.0718739
3 months    ki1000304b-SAS-CompFeed    0                    NA                -0.0204988   -0.0990583   0.0580608
3 months    ki1017093c-NIH-Crypto      0                    NA                 0.0104781   -0.0183200   0.0392761
3 months    ki1113344-GMS-Nepal        0                    NA                 0.0298712   -0.0261621   0.0859044
3 months    ki1135781-COHORTS          0                    NA                 0.0188623    0.0054548   0.0322698
3 months    kiGH5241-JiVitA-4          0                    NA                 0.0512368    0.0022351   0.1002385
6 months    ki1000109-EE               0                    NA                 0.0012399   -0.0532065   0.0556863
6 months    ki1000304b-SAS-CompFeed    0                    NA                -0.0416027   -0.1313582   0.0481528
6 months    ki1000304b-SAS-FoodSuppl   0                    NA                 0.1295238   -0.0478713   0.3069189
6 months    ki1017093c-NIH-Crypto      0                    NA                 0.0081142   -0.0294440   0.0456723
6 months    ki1113344-GMS-Nepal        0                    NA                 0.0190237   -0.0568328   0.0948801
6 months    kiGH5241-JiVitA-4          0                    NA                 0.0560165    0.0008771   0.1111559


### Parameter: PAF


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
12 months   ki1000109-EE               0                    NA                0.6327923   0.6110115   0.6533535
12 months   ki1000304b-SAS-CompFeed    0                    NA                0.6525231   0.5958293   0.7012643
12 months   ki1017093c-NIH-Crypto      0                    NA                0.6479571   0.6073634   0.6843539
12 months   ki1113344-GMS-Nepal        0                    NA                0.6537897   0.5784082   0.7156928
12 months   ki1135781-COHORTS          0                    NA                0.6936693   0.6776799   0.7088656
12 months   kiGH5241-JiVitA-4          0                    NA                0.6829570   0.6331779   0.7259809
18 months   ki1000109-EE               0                    NA                0.6392446   0.6232805   0.6545321
18 months   ki1000304b-SAS-CompFeed    0                    NA                0.6651918   0.6216093   0.7037546
18 months   ki1017093c-NIH-Crypto      0                    NA                0.6506046   0.6147301   0.6831386
18 months   ki1113344-GMS-Nepal        0                    NA                0.6607651   0.6071958   0.7070288
18 months   kiGH5241-JiVitA-3          0                    NA                0.7158887   0.4708087   0.8474668
18 months   kiGH5241-JiVitA-4          0                    NA                0.6650420   0.6242312   0.7014204
24 months   ki1000304b-SAS-CompFeed    0                    NA                0.7754162   0.6119501   0.8700222
24 months   ki1017093c-NIH-Crypto      0                    NA                0.6456430   0.6113806   0.6768847
24 months   ki1113344-GMS-Nepal        0                    NA                0.6585753   0.6119997   0.6995600
24 months   kiGH5241-JiVitA-4          0                    NA                0.6599891   0.6201273   0.6956681
3 months    ki1000109-EE               0                    NA                0.6391791   0.6029366   0.6721135
3 months    ki1000304b-SAS-CompFeed    0                    NA                0.6103565   0.5143404   0.6873900
3 months    ki1017093c-NIH-Crypto      0                    NA                0.6570775   0.5840548   0.7172803
3 months    ki1113344-GMS-Nepal        0                    NA                0.7098079   0.5471941   0.8140231
3 months    ki1135781-COHORTS          0                    NA                0.6702484   0.6435851   0.6949170
3 months    kiGH5241-JiVitA-4          0                    NA                0.7082405   0.6358382   0.7662479
6 months    ki1000109-EE               0                    NA                0.6327364   0.6046957   0.6587882
6 months    ki1000304b-SAS-CompFeed    0                    NA                0.5981170   0.5136656   0.6679034
6 months    ki1000304b-SAS-FoodSuppl   0                    NA                0.7683633   0.5639812   0.8769421
6 months    ki1017093c-NIH-Crypto      0                    NA                0.6419713   0.5940445   0.6842399
6 months    ki1113344-GMS-Nepal        0                    NA                0.6582886   0.5413924   0.7453887
6 months    kiGH5241-JiVitA-4          0                    NA                0.6985556   0.6332803   0.7522120


