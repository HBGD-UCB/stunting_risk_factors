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

**Intervention Variable:** hhwealth_quart

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid


The following strata were considered:

* agecat: 12 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 12 months, studyid: ki1000108-IRC
* agecat: 12 months, studyid: ki1066203-TanzaniaChild2
* agecat: 12 months, studyid: ki1113344-GMS-Nepal
* agecat: 12 months, studyid: ki1114097-CONTENT
* agecat: 12 months, studyid: ki1148112-LCNI-5
* agecat: 12 months, studyid: kiGH5241-JiVitA-3
* agecat: 12 months, studyid: kiGH5241-JiVitA-4
* agecat: 18 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 18 months, studyid: ki1000108-IRC
* agecat: 18 months, studyid: ki1066203-TanzaniaChild2
* agecat: 18 months, studyid: ki1113344-GMS-Nepal
* agecat: 18 months, studyid: ki1114097-CONTENT
* agecat: 18 months, studyid: ki1148112-LCNI-5
* agecat: 18 months, studyid: kiGH5241-JiVitA-3
* agecat: 18 months, studyid: kiGH5241-JiVitA-4
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 24 months, studyid: ki1000108-IRC
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2
* agecat: 24 months, studyid: ki1113344-GMS-Nepal
* agecat: 24 months, studyid: ki1114097-CONTENT
* agecat: 24 months, studyid: ki1148112-LCNI-5
* agecat: 24 months, studyid: kiGH5241-JiVitA-3
* agecat: 24 months, studyid: kiGH5241-JiVitA-4
* agecat: 3 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 3 months, studyid: ki1000108-IRC
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2
* agecat: 3 months, studyid: ki1113344-GMS-Nepal
* agecat: 3 months, studyid: ki1114097-CONTENT
* agecat: 3 months, studyid: kiGH5241-JiVitA-3
* agecat: 3 months, studyid: kiGH5241-JiVitA-4
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 6 months, studyid: ki1000108-IRC
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2
* agecat: 6 months, studyid: ki1113344-GMS-Nepal
* agecat: 6 months, studyid: ki1114097-CONTENT
* agecat: 6 months, studyid: ki1148112-LCNI-5
* agecat: 6 months, studyid: kiGH5241-JiVitA-3
* agecat: 6 months, studyid: kiGH5241-JiVitA-4

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 24 months, studyid: kiGH5241-JiVitA-3
* NA

## Methods Detail

**todo**




# Results Detail

## Results Plots
![](/tmp/408cbc29-332a-4392-9026-6e90f9a1b4a7/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/408cbc29-332a-4392-9026-6e90f9a1b4a7/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/408cbc29-332a-4392-9026-6e90f9a1b4a7/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/408cbc29-332a-4392-9026-6e90f9a1b4a7/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Data Summary

agecat      studyid                    A                n     nA   nAY0   nAY1
----------  -------------------------  ----------  ------  -----  -----  -----
12 months   ki1000108-CMC-V-BCS-2002   Wealth Q1      372     90     32     58
12 months   ki1000108-CMC-V-BCS-2002   Wealth Q2      372     95     27     68
12 months   ki1000108-CMC-V-BCS-2002   Wealth Q3      372     91     32     59
12 months   ki1000108-CMC-V-BCS-2002   Wealth Q4      372     96     21     75
12 months   ki1000108-IRC              Wealth Q1      408    105     48     57
12 months   ki1000108-IRC              Wealth Q2      408    101     43     58
12 months   ki1000108-IRC              Wealth Q3      408    103     57     46
12 months   ki1000108-IRC              Wealth Q4      408     99     53     46
12 months   ki1066203-TanzaniaChild2   Wealth Q1      495    144    104     40
12 months   ki1066203-TanzaniaChild2   Wealth Q2      495     94     64     30
12 months   ki1066203-TanzaniaChild2   Wealth Q3      495    143     96     47
12 months   ki1066203-TanzaniaChild2   Wealth Q4      495    114     73     41
12 months   ki1113344-GMS-Nepal        Wealth Q1      582    148     74     74
12 months   ki1113344-GMS-Nepal        Wealth Q2      582    146     83     63
12 months   ki1113344-GMS-Nepal        Wealth Q3      582    142     81     61
12 months   ki1113344-GMS-Nepal        Wealth Q4      582    146     79     67
12 months   ki1114097-CONTENT          Wealth Q1      215     59     43     16
12 months   ki1114097-CONTENT          Wealth Q2      215     52     39     13
12 months   ki1114097-CONTENT          Wealth Q3      215     52     39     13
12 months   ki1114097-CONTENT          Wealth Q4      215     52     40     12
12 months   ki1148112-LCNI-5           Wealth Q1      392     95     46     49
12 months   ki1148112-LCNI-5           Wealth Q2      392     93     49     44
12 months   ki1148112-LCNI-5           Wealth Q3      392     95     46     49
12 months   ki1148112-LCNI-5           Wealth Q4      392    109     62     47
12 months   kiGH5241-JiVitA-3          Wealth Q1     8371   1818    866    952
12 months   kiGH5241-JiVitA-3          Wealth Q2     8371   2061   1060   1001
12 months   kiGH5241-JiVitA-3          Wealth Q3     8371   2106   1145    961
12 months   kiGH5241-JiVitA-3          Wealth Q4     8371   2386   1519    867
12 months   kiGH5241-JiVitA-4          Wealth Q1     1419    367    178    189
12 months   kiGH5241-JiVitA-4          Wealth Q2     1419    338    178    160
12 months   kiGH5241-JiVitA-4          Wealth Q3     1419    386    237    149
12 months   kiGH5241-JiVitA-4          Wealth Q4     1419    328    210    118
18 months   ki1000108-CMC-V-BCS-2002   Wealth Q1      373     91     19     72
18 months   ki1000108-CMC-V-BCS-2002   Wealth Q2      373     95     16     79
18 months   ki1000108-CMC-V-BCS-2002   Wealth Q3      373     91     13     78
18 months   ki1000108-CMC-V-BCS-2002   Wealth Q4      373     96      9     87
18 months   ki1000108-IRC              Wealth Q1      409    105     42     63
18 months   ki1000108-IRC              Wealth Q2      409    102     40     62
18 months   ki1000108-IRC              Wealth Q3      409    103     45     58
18 months   ki1000108-IRC              Wealth Q4      409     99     52     47
18 months   ki1066203-TanzaniaChild2   Wealth Q1      359    103     63     40
18 months   ki1066203-TanzaniaChild2   Wealth Q2      359     68     41     27
18 months   ki1066203-TanzaniaChild2   Wealth Q3      359    103     52     51
18 months   ki1066203-TanzaniaChild2   Wealth Q4      359     85     50     35
18 months   ki1113344-GMS-Nepal        Wealth Q1      574    144     49     95
18 months   ki1113344-GMS-Nepal        Wealth Q2      574    144     53     91
18 months   ki1113344-GMS-Nepal        Wealth Q3      574    139     57     82
18 months   ki1113344-GMS-Nepal        Wealth Q4      574    147     57     90
18 months   ki1114097-CONTENT          Wealth Q1      214     59     40     19
18 months   ki1114097-CONTENT          Wealth Q2      214     52     39     13
18 months   ki1114097-CONTENT          Wealth Q3      214     52     39     13
18 months   ki1114097-CONTENT          Wealth Q4      214     51     36     15
18 months   ki1148112-LCNI-5           Wealth Q1      325     76     36     40
18 months   ki1148112-LCNI-5           Wealth Q2      325     79     33     46
18 months   ki1148112-LCNI-5           Wealth Q3      325     76     29     47
18 months   ki1148112-LCNI-5           Wealth Q4      325     94     42     52
18 months   kiGH5241-JiVitA-3          Wealth Q1     7327   1584    598    986
18 months   kiGH5241-JiVitA-3          Wealth Q2     7327   1801    753   1048
18 months   kiGH5241-JiVitA-3          Wealth Q3     7327   1846    819   1027
18 months   kiGH5241-JiVitA-3          Wealth Q4     7327   2096   1175    921
18 months   kiGH5241-JiVitA-4          Wealth Q1     1371    354    135    219
18 months   kiGH5241-JiVitA-4          Wealth Q2     1371    324    128    196
18 months   kiGH5241-JiVitA-4          Wealth Q3     1371    380    188    192
18 months   kiGH5241-JiVitA-4          Wealth Q4     1371    313    169    144
24 months   ki1000108-CMC-V-BCS-2002   Wealth Q1      373     91      6     85
24 months   ki1000108-CMC-V-BCS-2002   Wealth Q2      373     95      8     87
24 months   ki1000108-CMC-V-BCS-2002   Wealth Q3      373     91      8     83
24 months   ki1000108-CMC-V-BCS-2002   Wealth Q4      373     96      6     90
24 months   ki1000108-IRC              Wealth Q1      410    105     34     71
24 months   ki1000108-IRC              Wealth Q2      410    102     32     70
24 months   ki1000108-IRC              Wealth Q3      410    103     33     70
24 months   ki1000108-IRC              Wealth Q4      410    100     48     52
24 months   ki1066203-TanzaniaChild2   Wealth Q1      250     70     41     29
24 months   ki1066203-TanzaniaChild2   Wealth Q2      250     46     22     24
24 months   ki1066203-TanzaniaChild2   Wealth Q3      250     76     36     40
24 months   ki1066203-TanzaniaChild2   Wealth Q4      250     58     32     26
24 months   ki1113344-GMS-Nepal        Wealth Q1      568    144     40    104
24 months   ki1113344-GMS-Nepal        Wealth Q2      568    143     40    103
24 months   ki1113344-GMS-Nepal        Wealth Q3      568    134     46     88
24 months   ki1113344-GMS-Nepal        Wealth Q4      568    147     50     97
24 months   ki1114097-CONTENT          Wealth Q1      197     54     36     18
24 months   ki1114097-CONTENT          Wealth Q2      197     47     34     13
24 months   ki1114097-CONTENT          Wealth Q3      197     50     38     12
24 months   ki1114097-CONTENT          Wealth Q4      197     46     32     14
24 months   ki1148112-LCNI-5           Wealth Q1      351     82     29     53
24 months   ki1148112-LCNI-5           Wealth Q2      351     85     29     56
24 months   ki1148112-LCNI-5           Wealth Q3      351     84     24     60
24 months   ki1148112-LCNI-5           Wealth Q4      351    100     39     61
24 months   kiGH5241-JiVitA-3          Wealth Q1        3      0      0      0
24 months   kiGH5241-JiVitA-3          Wealth Q2        3      1      1      0
24 months   kiGH5241-JiVitA-3          Wealth Q3        3      1      0      1
24 months   kiGH5241-JiVitA-3          Wealth Q4        3      1      1      0
24 months   kiGH5241-JiVitA-4          Wealth Q1     1195    299    102    197
24 months   kiGH5241-JiVitA-4          Wealth Q2     1195    291    104    187
24 months   kiGH5241-JiVitA-4          Wealth Q3     1195    331    145    186
24 months   kiGH5241-JiVitA-4          Wealth Q4     1195    274    133    141
3 months    ki1000108-CMC-V-BCS-2002   Wealth Q1      362     90     71     19
3 months    ki1000108-CMC-V-BCS-2002   Wealth Q2      362     91     60     31
3 months    ki1000108-CMC-V-BCS-2002   Wealth Q3      362     89     59     30
3 months    ki1000108-CMC-V-BCS-2002   Wealth Q4      362     92     47     45
3 months    ki1000108-IRC              Wealth Q1      410    105     69     36
3 months    ki1000108-IRC              Wealth Q2      410    102     66     36
3 months    ki1000108-IRC              Wealth Q3      410    103     74     29
3 months    ki1000108-IRC              Wealth Q4      410    100     71     29
3 months    ki1066203-TanzaniaChild2   Wealth Q1      600    171    159     12
3 months    ki1066203-TanzaniaChild2   Wealth Q2      600    114    102     12
3 months    ki1066203-TanzaniaChild2   Wealth Q3      600    171    155     16
3 months    ki1066203-TanzaniaChild2   Wealth Q4      600    144    125     19
3 months    ki1113344-GMS-Nepal        Wealth Q1      593    150    123     27
3 months    ki1113344-GMS-Nepal        Wealth Q2      593    148    125     23
3 months    ki1113344-GMS-Nepal        Wealth Q3      593    149    126     23
3 months    ki1113344-GMS-Nepal        Wealth Q4      593    146    125     21
3 months    ki1114097-CONTENT          Wealth Q1      215     59     50      9
3 months    ki1114097-CONTENT          Wealth Q2      215     52     43      9
3 months    ki1114097-CONTENT          Wealth Q3      215     52     45      7
3 months    ki1114097-CONTENT          Wealth Q4      215     52     42     10
3 months    ki1148112-LCNI-5           Wealth Q1        0      0      0      0
3 months    ki1148112-LCNI-5           Wealth Q2        0      0      0      0
3 months    ki1148112-LCNI-5           Wealth Q3        0      0      0      0
3 months    ki1148112-LCNI-5           Wealth Q4        0      0      0      0
3 months    kiGH5241-JiVitA-3          Wealth Q1    13353   3324   1741   1583
3 months    kiGH5241-JiVitA-3          Wealth Q2    13353   3382   1917   1465
3 months    kiGH5241-JiVitA-3          Wealth Q3    13353   3262   1947   1315
3 months    kiGH5241-JiVitA-3          Wealth Q4    13353   3385   2360   1025
3 months    kiGH5241-JiVitA-4          Wealth Q1     1155    282    190     92
3 months    kiGH5241-JiVitA-4          Wealth Q2     1155    266    187     79
3 months    kiGH5241-JiVitA-4          Wealth Q3     1155    350    264     86
3 months    kiGH5241-JiVitA-4          Wealth Q4     1155    257    198     59
6 months    ki1000108-CMC-V-BCS-2002   Wealth Q1      367     90     55     35
6 months    ki1000108-CMC-V-BCS-2002   Wealth Q2      367     92     45     47
6 months    ki1000108-CMC-V-BCS-2002   Wealth Q3      367     90     48     42
6 months    ki1000108-CMC-V-BCS-2002   Wealth Q4      367     95     31     64
6 months    ki1000108-IRC              Wealth Q1      408    105     61     44
6 months    ki1000108-IRC              Wealth Q2      408    101     51     50
6 months    ki1000108-IRC              Wealth Q3      408    102     63     39
6 months    ki1000108-IRC              Wealth Q4      408    100     60     40
6 months    ki1066203-TanzaniaChild2   Wealth Q1      556    161    137     24
6 months    ki1066203-TanzaniaChild2   Wealth Q2      556    107     88     19
6 months    ki1066203-TanzaniaChild2   Wealth Q3      556    162    125     37
6 months    ki1066203-TanzaniaChild2   Wealth Q4      556    126     98     28
6 months    ki1113344-GMS-Nepal        Wealth Q1      567    145     99     46
6 months    ki1113344-GMS-Nepal        Wealth Q2      567    143    103     40
6 months    ki1113344-GMS-Nepal        Wealth Q3      567    137     97     40
6 months    ki1113344-GMS-Nepal        Wealth Q4      567    142    106     36
6 months    ki1114097-CONTENT          Wealth Q1      215     59     45     14
6 months    ki1114097-CONTENT          Wealth Q2      215     52     40     12
6 months    ki1114097-CONTENT          Wealth Q3      215     52     42     10
6 months    ki1114097-CONTENT          Wealth Q4      215     52     40     12
6 months    ki1148112-LCNI-5           Wealth Q1      132     33     23     10
6 months    ki1148112-LCNI-5           Wealth Q2      132     28     17     11
6 months    ki1148112-LCNI-5           Wealth Q3      132     30     14     16
6 months    ki1148112-LCNI-5           Wealth Q4      132     41     27     14
6 months    kiGH5241-JiVitA-3          Wealth Q1     9594   2287   1124   1163
6 months    kiGH5241-JiVitA-3          Wealth Q2     9594   2375   1284   1091
6 months    kiGH5241-JiVitA-3          Wealth Q3     9594   2351   1347   1004
6 months    kiGH5241-JiVitA-3          Wealth Q4     9594   2581   1756    825
6 months    kiGH5241-JiVitA-4          Wealth Q1     1179    306    183    123
6 months    kiGH5241-JiVitA-4          Wealth Q2     1179    279    186     93
6 months    kiGH5241-JiVitA-4          Wealth Q3     1179    323    228     95
6 months    kiGH5241-JiVitA-4          Wealth Q4     1179    271    196     75

## Results Table

### Parameter: TSM


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
12 months   ki1000108-CMC-V-BCS-2002   Wealth Q1            NA                0.6444444   0.5454165   0.7434724
12 months   ki1000108-CMC-V-BCS-2002   Wealth Q2            NA                0.7157895   0.6249690   0.8066099
12 months   ki1000108-CMC-V-BCS-2002   Wealth Q3            NA                0.6483516   0.5501155   0.7465878
12 months   ki1000108-CMC-V-BCS-2002   Wealth Q4            NA                0.7812500   0.6984432   0.8640568
12 months   ki1000108-IRC              Wealth Q1            NA                0.5428571   0.4474557   0.6382586
12 months   ki1000108-IRC              Wealth Q2            NA                0.5742574   0.4777086   0.6708063
12 months   ki1000108-IRC              Wealth Q3            NA                0.4466019   0.3504758   0.5427281
12 months   ki1000108-IRC              Wealth Q4            NA                0.4646465   0.3662805   0.5630125
12 months   ki1066203-TanzaniaChild2   Wealth Q1            NA                0.2777778   0.2045476   0.3510080
12 months   ki1066203-TanzaniaChild2   Wealth Q2            NA                0.3191489   0.2248198   0.4134781
12 months   ki1066203-TanzaniaChild2   Wealth Q3            NA                0.3286713   0.2516045   0.4057382
12 months   ki1066203-TanzaniaChild2   Wealth Q4            NA                0.3596491   0.2714664   0.4478318
12 months   ki1113344-GMS-Nepal        Wealth Q1            NA                0.5000000   0.4193767   0.5806233
12 months   ki1113344-GMS-Nepal        Wealth Q2            NA                0.4315069   0.3510984   0.5119153
12 months   ki1113344-GMS-Nepal        Wealth Q3            NA                0.4295775   0.3480889   0.5110660
12 months   ki1113344-GMS-Nepal        Wealth Q4            NA                0.4589041   0.3780051   0.5398031
12 months   ki1114097-CONTENT          Wealth Q1            NA                0.2711864   0.1574822   0.3848907
12 months   ki1114097-CONTENT          Wealth Q2            NA                0.2500000   0.1320333   0.3679667
12 months   ki1114097-CONTENT          Wealth Q3            NA                0.2500000   0.1320333   0.3679667
12 months   ki1114097-CONTENT          Wealth Q4            NA                0.2307692   0.1159866   0.3455518
12 months   ki1148112-LCNI-5           Wealth Q1            NA                0.5157895   0.4151672   0.6164118
12 months   ki1148112-LCNI-5           Wealth Q2            NA                0.4731183   0.3715162   0.5747204
12 months   ki1148112-LCNI-5           Wealth Q3            NA                0.5157895   0.4151672   0.6164118
12 months   ki1148112-LCNI-5           Wealth Q4            NA                0.4311927   0.3381016   0.5242837
12 months   kiGH5241-JiVitA-3          Wealth Q1            NA                0.5236524   0.5006930   0.5466118
12 months   kiGH5241-JiVitA-3          Wealth Q2            NA                0.4856866   0.4641078   0.5072653
12 months   kiGH5241-JiVitA-3          Wealth Q3            NA                0.4563153   0.4350412   0.4775894
12 months   kiGH5241-JiVitA-3          Wealth Q4            NA                0.3633697   0.3440697   0.3826696
12 months   kiGH5241-JiVitA-4          Wealth Q1            NA                0.5149864   0.4638367   0.5661361
12 months   kiGH5241-JiVitA-4          Wealth Q2            NA                0.4733728   0.4201257   0.5266199
12 months   kiGH5241-JiVitA-4          Wealth Q3            NA                0.3860104   0.3374270   0.4345937
12 months   kiGH5241-JiVitA-4          Wealth Q4            NA                0.3597561   0.3077995   0.4117127
18 months   ki1000108-CMC-V-BCS-2002   Wealth Q1            NA                0.7912088   0.7075884   0.8748291
18 months   ki1000108-CMC-V-BCS-2002   Wealth Q2            NA                0.8315789   0.7562227   0.9069352
18 months   ki1000108-CMC-V-BCS-2002   Wealth Q3            NA                0.8571429   0.7851502   0.9291355
18 months   ki1000108-CMC-V-BCS-2002   Wealth Q4            NA                0.9062500   0.8478645   0.9646355
18 months   ki1000108-IRC              Wealth Q1            NA                0.6000000   0.5061810   0.6938190
18 months   ki1000108-IRC              Wealth Q2            NA                0.6078431   0.5129783   0.7027080
18 months   ki1000108-IRC              Wealth Q3            NA                0.5631068   0.4672012   0.6590124
18 months   ki1000108-IRC              Wealth Q4            NA                0.4747475   0.3762608   0.5732341
18 months   ki1066203-TanzaniaChild2   Wealth Q1            NA                0.3883495   0.2940959   0.4826032
18 months   ki1066203-TanzaniaChild2   Wealth Q2            NA                0.3970588   0.2806022   0.5135155
18 months   ki1066203-TanzaniaChild2   Wealth Q3            NA                0.4951456   0.3984549   0.5918363
18 months   ki1066203-TanzaniaChild2   Wealth Q4            NA                0.4117647   0.3069929   0.5165365
18 months   ki1113344-GMS-Nepal        Wealth Q1            NA                0.6597222   0.5822684   0.7371760
18 months   ki1113344-GMS-Nepal        Wealth Q2            NA                0.6319444   0.5531054   0.7107835
18 months   ki1113344-GMS-Nepal        Wealth Q3            NA                0.5899281   0.5080912   0.6717649
18 months   ki1113344-GMS-Nepal        Wealth Q4            NA                0.6122449   0.5334117   0.6910781
18 months   ki1114097-CONTENT          Wealth Q1            NA                0.3220339   0.2025267   0.4415411
18 months   ki1114097-CONTENT          Wealth Q2            NA                0.2500000   0.1320320   0.3679680
18 months   ki1114097-CONTENT          Wealth Q3            NA                0.2500000   0.1320320   0.3679680
18 months   ki1114097-CONTENT          Wealth Q4            NA                0.2941176   0.1687727   0.4194626
18 months   ki1148112-LCNI-5           Wealth Q1            NA                0.5263158   0.4138868   0.6387447
18 months   ki1148112-LCNI-5           Wealth Q2            NA                0.5822785   0.4733573   0.6911997
18 months   ki1148112-LCNI-5           Wealth Q3            NA                0.6184211   0.5090393   0.7278028
18 months   ki1148112-LCNI-5           Wealth Q4            NA                0.5531915   0.4525327   0.6538503
18 months   kiGH5241-JiVitA-3          Wealth Q1            NA                0.6224747   0.5986003   0.6463492
18 months   kiGH5241-JiVitA-3          Wealth Q2            NA                0.5818989   0.5591173   0.6046806
18 months   kiGH5241-JiVitA-3          Wealth Q3            NA                0.5563380   0.5336729   0.5790031
18 months   kiGH5241-JiVitA-3          Wealth Q4            NA                0.4394084   0.4181593   0.4606574
18 months   kiGH5241-JiVitA-4          Wealth Q1            NA                0.6186441   0.5680277   0.6692604
18 months   kiGH5241-JiVitA-4          Wealth Q2            NA                0.6049383   0.5516880   0.6581886
18 months   kiGH5241-JiVitA-4          Wealth Q3            NA                0.5052632   0.4549756   0.5555507
18 months   kiGH5241-JiVitA-4          Wealth Q4            NA                0.4600639   0.4048289   0.5152989
24 months   ki1000108-CMC-V-BCS-2002   Wealth Q1            NA                0.9340659   0.8830091   0.9851228
24 months   ki1000108-CMC-V-BCS-2002   Wealth Q2            NA                0.9157895   0.8598717   0.9717073
24 months   ki1000108-CMC-V-BCS-2002   Wealth Q3            NA                0.9120879   0.8538303   0.9703456
24 months   ki1000108-CMC-V-BCS-2002   Wealth Q4            NA                0.9375000   0.8890135   0.9859865
24 months   ki1000108-IRC              Wealth Q1            NA                0.6761905   0.5865791   0.7658018
24 months   ki1000108-IRC              Wealth Q2            NA                0.6862745   0.5961170   0.7764321
24 months   ki1000108-IRC              Wealth Q3            NA                0.6796117   0.5893863   0.7698370
24 months   ki1000108-IRC              Wealth Q4            NA                0.5200000   0.4219606   0.6180394
24 months   ki1066203-TanzaniaChild2   Wealth Q1            NA                0.4142857   0.2986579   0.5299135
24 months   ki1066203-TanzaniaChild2   Wealth Q2            NA                0.5217391   0.3770957   0.6663825
24 months   ki1066203-TanzaniaChild2   Wealth Q3            NA                0.5263158   0.4138348   0.6387968
24 months   ki1066203-TanzaniaChild2   Wealth Q4            NA                0.4482759   0.3200316   0.5765202
24 months   ki1113344-GMS-Nepal        Wealth Q1            NA                0.7222222   0.6490016   0.7954429
24 months   ki1113344-GMS-Nepal        Wealth Q2            NA                0.7202797   0.6466462   0.7939132
24 months   ki1113344-GMS-Nepal        Wealth Q3            NA                0.6567164   0.5762539   0.7371790
24 months   ki1113344-GMS-Nepal        Wealth Q4            NA                0.6598639   0.5832116   0.7365163
24 months   ki1114097-CONTENT          Wealth Q1            NA                0.3333333   0.2072812   0.4593854
24 months   ki1114097-CONTENT          Wealth Q2            NA                0.2765957   0.1483870   0.4048045
24 months   ki1114097-CONTENT          Wealth Q3            NA                0.2400000   0.1213192   0.3586808
24 months   ki1114097-CONTENT          Wealth Q4            NA                0.3043478   0.1710401   0.4376556
24 months   ki1148112-LCNI-5           Wealth Q1            NA                0.6463415   0.5427119   0.7499711
24 months   ki1148112-LCNI-5           Wealth Q2            NA                0.6588235   0.5578907   0.7597563
24 months   ki1148112-LCNI-5           Wealth Q3            NA                0.7142857   0.6175404   0.8110310
24 months   ki1148112-LCNI-5           Wealth Q4            NA                0.6100000   0.5142663   0.7057337
24 months   kiGH5241-JiVitA-4          Wealth Q1            NA                0.6588629   0.6051032   0.7126225
24 months   kiGH5241-JiVitA-4          Wealth Q2            NA                0.6426117   0.5875274   0.6976960
24 months   kiGH5241-JiVitA-4          Wealth Q3            NA                0.5619335   0.5084613   0.6154058
24 months   kiGH5241-JiVitA-4          Wealth Q4            NA                0.5145985   0.4553961   0.5738010
3 months    ki1000108-CMC-V-BCS-2002   Wealth Q1            NA                0.2111111   0.1266822   0.2955400
3 months    ki1000108-CMC-V-BCS-2002   Wealth Q2            NA                0.3406593   0.2431507   0.4381680
3 months    ki1000108-CMC-V-BCS-2002   Wealth Q3            NA                0.3370787   0.2387341   0.4354232
3 months    ki1000108-CMC-V-BCS-2002   Wealth Q4            NA                0.4891304   0.3868430   0.5914179
3 months    ki1000108-IRC              Wealth Q1            NA                0.3428571   0.2519558   0.4337585
3 months    ki1000108-IRC              Wealth Q2            NA                0.3529412   0.2600870   0.4457953
3 months    ki1000108-IRC              Wealth Q3            NA                0.2815534   0.1945898   0.3685170
3 months    ki1000108-IRC              Wealth Q4            NA                0.2900000   0.2009556   0.3790444
3 months    ki1066203-TanzaniaChild2   Wealth Q1            NA                0.0701754   0.0318572   0.1084937
3 months    ki1066203-TanzaniaChild2   Wealth Q2            NA                0.1052632   0.0488807   0.1616456
3 months    ki1066203-TanzaniaChild2   Wealth Q3            NA                0.0935673   0.0498813   0.1372532
3 months    ki1066203-TanzaniaChild2   Wealth Q4            NA                0.1319444   0.0766224   0.1872665
3 months    ki1113344-GMS-Nepal        Wealth Q1            NA                0.1800000   0.1184664   0.2415336
3 months    ki1113344-GMS-Nepal        Wealth Q2            NA                0.1554054   0.0969882   0.2138226
3 months    ki1113344-GMS-Nepal        Wealth Q3            NA                0.1543624   0.0963014   0.2124234
3 months    ki1113344-GMS-Nepal        Wealth Q4            NA                0.1438356   0.0868651   0.2008061
3 months    ki1114097-CONTENT          Wealth Q1            NA                0.1525424   0.0605846   0.2445002
3 months    ki1114097-CONTENT          Wealth Q2            NA                0.1730769   0.0700120   0.2761419
3 months    ki1114097-CONTENT          Wealth Q3            NA                0.1346154   0.0416309   0.2275999
3 months    ki1114097-CONTENT          Wealth Q4            NA                0.1923077   0.0849384   0.2996770
3 months    kiGH5241-JiVitA-3          Wealth Q1            NA                0.4762335   0.4592544   0.4932125
3 months    kiGH5241-JiVitA-3          Wealth Q2            NA                0.4331756   0.4164750   0.4498763
3 months    kiGH5241-JiVitA-3          Wealth Q3            NA                0.4031269   0.3862930   0.4199608
3 months    kiGH5241-JiVitA-3          Wealth Q4            NA                0.3028065   0.2873275   0.3182855
3 months    kiGH5241-JiVitA-4          Wealth Q1            NA                0.3262411   0.2714976   0.3809847
3 months    kiGH5241-JiVitA-4          Wealth Q2            NA                0.2969925   0.2420576   0.3519273
3 months    kiGH5241-JiVitA-4          Wealth Q3            NA                0.2457143   0.2005926   0.2908360
3 months    kiGH5241-JiVitA-4          Wealth Q4            NA                0.2295720   0.1781327   0.2810113
6 months    ki1000108-CMC-V-BCS-2002   Wealth Q1            NA                0.3888889   0.2880351   0.4897427
6 months    ki1000108-CMC-V-BCS-2002   Wealth Q2            NA                0.5108696   0.4085841   0.6131551
6 months    ki1000108-CMC-V-BCS-2002   Wealth Q3            NA                0.4666667   0.3634566   0.5698767
6 months    ki1000108-CMC-V-BCS-2002   Wealth Q4            NA                0.6736842   0.5792725   0.7680960
6 months    ki1000108-IRC              Wealth Q1            NA                0.4190476   0.3245571   0.5135381
6 months    ki1000108-IRC              Wealth Q2            NA                0.4950495   0.3974227   0.5926763
6 months    ki1000108-IRC              Wealth Q3            NA                0.3823529   0.2879287   0.4767771
6 months    ki1000108-IRC              Wealth Q4            NA                0.4000000   0.3038639   0.4961361
6 months    ki1066203-TanzaniaChild2   Wealth Q1            NA                0.1490683   0.0940045   0.2041321
6 months    ki1066203-TanzaniaChild2   Wealth Q2            NA                0.1775701   0.1050962   0.2500440
6 months    ki1066203-TanzaniaChild2   Wealth Q3            NA                0.2283951   0.1636924   0.2930978
6 months    ki1066203-TanzaniaChild2   Wealth Q4            NA                0.2222222   0.1495656   0.2948788
6 months    ki1113344-GMS-Nepal        Wealth Q1            NA                0.3172414   0.2414228   0.3930600
6 months    ki1113344-GMS-Nepal        Wealth Q2            NA                0.2797203   0.2060867   0.3533539
6 months    ki1113344-GMS-Nepal        Wealth Q3            NA                0.2919708   0.2157688   0.3681728
6 months    ki1113344-GMS-Nepal        Wealth Q4            NA                0.2535211   0.1819063   0.3251360
6 months    ki1114097-CONTENT          Wealth Q1            NA                0.2372881   0.1284822   0.3460941
6 months    ki1114097-CONTENT          Wealth Q2            NA                0.2307692   0.1159866   0.3455518
6 months    ki1114097-CONTENT          Wealth Q3            NA                0.1923077   0.0849384   0.2996770
6 months    ki1114097-CONTENT          Wealth Q4            NA                0.2307692   0.1159866   0.3455518
6 months    ki1148112-LCNI-5           Wealth Q1            NA                0.3030303   0.1456348   0.4604258
6 months    ki1148112-LCNI-5           Wealth Q2            NA                0.3928571   0.2112708   0.5744435
6 months    ki1148112-LCNI-5           Wealth Q3            NA                0.5333333   0.3541319   0.7125348
6 months    ki1148112-LCNI-5           Wealth Q4            NA                0.3414634   0.1957601   0.4871668
6 months    kiGH5241-JiVitA-3          Wealth Q1            NA                0.5085265   0.4880363   0.5290166
6 months    kiGH5241-JiVitA-3          Wealth Q2            NA                0.4593684   0.4393251   0.4794118
6 months    kiGH5241-JiVitA-3          Wealth Q3            NA                0.4270523   0.4070564   0.4470483
6 months    kiGH5241-JiVitA-3          Wealth Q4            NA                0.3196435   0.3016516   0.3376355
6 months    kiGH5241-JiVitA-4          Wealth Q1            NA                0.4019608   0.3470031   0.4569185
6 months    kiGH5241-JiVitA-4          Wealth Q2            NA                0.3333333   0.2779953   0.3886714
6 months    kiGH5241-JiVitA-4          Wealth Q3            NA                0.2941176   0.2444060   0.3438293
6 months    kiGH5241-JiVitA-4          Wealth Q4            NA                0.2767528   0.2234638   0.3300417


### Parameter: E(Y)


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
12 months   ki1000108-CMC-V-BCS-2002   NA                   NA                0.6989247   0.6931997   0.7046497
12 months   ki1000108-IRC              NA                   NA                0.5073529   0.5022060   0.5124999
12 months   ki1066203-TanzaniaChild2   NA                   NA                0.3191919   0.3165437   0.3218401
12 months   ki1113344-GMS-Nepal        NA                   NA                0.4553265   0.4530054   0.4576475
12 months   ki1114097-CONTENT          NA                   NA                0.2511628   0.2492154   0.2531102
12 months   ki1148112-LCNI-5           NA                   NA                0.4821429   0.4785830   0.4857027
12 months   kiGH5241-JiVitA-3          NA                   NA                0.4516784   0.4503863   0.4529706
12 months   kiGH5241-JiVitA-4          NA                   NA                0.4341085   0.4308306   0.4373864
18 months   ki1000108-CMC-V-BCS-2002   NA                   NA                0.8471850   0.8429357   0.8514343
18 months   ki1000108-IRC              NA                   NA                0.5623472   0.5572701   0.5674243
18 months   ki1066203-TanzaniaChild2   NA                   NA                0.4261838   0.4215686   0.4307991
18 months   ki1113344-GMS-Nepal        NA                   NA                0.6236934   0.6216021   0.6257847
18 months   ki1114097-CONTENT          NA                   NA                0.2803738   0.2761872   0.2845604
18 months   ki1148112-LCNI-5           NA                   NA                0.5692308   0.5655993   0.5728623
18 months   kiGH5241-JiVitA-3          NA                   NA                0.5434694   0.5418743   0.5450644
18 months   kiGH5241-JiVitA-4          NA                   NA                0.5477753   0.5442924   0.5512583
24 months   ki1000108-CMC-V-BCS-2002   NA                   NA                0.9249330   0.9238081   0.9260579
24 months   ki1000108-IRC              NA                   NA                0.6414634   0.6347684   0.6481585
24 months   ki1066203-TanzaniaChild2   NA                   NA                0.4760000   0.4699160   0.4820840
24 months   ki1113344-GMS-Nepal        NA                   NA                0.6901408   0.6875504   0.6927312
24 months   ki1114097-CONTENT          NA                   NA                0.2893401   0.2844108   0.2942694
24 months   ki1148112-LCNI-5           NA                   NA                0.6552707   0.6512964   0.6592449
24 months   kiGH5241-JiVitA-4          NA                   NA                0.5949791   0.5916924   0.5982658
3 months    ki1000108-CMC-V-BCS-2002   NA                   NA                0.3453039   0.3351147   0.3554930
3 months    ki1000108-IRC              NA                   NA                0.3170732   0.3140300   0.3201164
3 months    ki1066203-TanzaniaChild2   NA                   NA                0.0983333   0.0965201   0.1001466
3 months    ki1113344-GMS-Nepal        NA                   NA                0.1585160   0.1574456   0.1595864
3 months    ki1114097-CONTENT          NA                   NA                0.1627907   0.1599261   0.1656553
3 months    kiGH5241-JiVitA-3          NA                   NA                0.4035048   0.4024174   0.4045923
3 months    kiGH5241-JiVitA-4          NA                   NA                0.2735931   0.2713813   0.2758048
6 months    ki1000108-CMC-V-BCS-2002   NA                   NA                0.5122616   0.5015225   0.5230007
6 months    ki1000108-IRC              NA                   NA                0.4240196   0.4198628   0.4281765
6 months    ki1066203-TanzaniaChild2   NA                   NA                0.1942446   0.1914090   0.1970802
6 months    ki1113344-GMS-Nepal        NA                   NA                0.2857143   0.2838136   0.2876149
6 months    ki1114097-CONTENT          NA                   NA                0.2232558   0.2208855   0.2256261
6 months    ki1148112-LCNI-5           NA                   NA                0.3863636   0.3717523   0.4009749
6 months    kiGH5241-JiVitA-3          NA                   NA                0.4255785   0.4241717   0.4269853
6 months    kiGH5241-JiVitA-4          NA                   NA                0.3273961   0.3246312   0.3301610


### Parameter: RR


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
12 months   ki1000108-CMC-V-BCS-2002   Wealth Q2            Wealth Q1          3.036507   2.4878782    3.706120
12 months   ki1000108-CMC-V-BCS-2002   Wealth Q3            Wealth Q1          2.734813   2.2039739    3.393506
12 months   ki1000108-CMC-V-BCS-2002   Wealth Q4            Wealth Q1          3.361154   2.7887980    4.050978
12 months   ki1000108-IRC              Wealth Q2            Wealth Q1          2.880151   2.2583441    3.673164
12 months   ki1000108-IRC              Wealth Q3            Wealth Q1          2.276611   1.7242927    3.005845
12 months   ki1000108-IRC              Wealth Q4            Wealth Q1          2.353557   1.7874472    3.098961
12 months   ki1066203-TanzaniaChild2   Wealth Q2            Wealth Q1          3.154835   2.1231108    4.687925
12 months   ki1066203-TanzaniaChild2   Wealth Q3            Wealth Q1          3.264860   2.2942321    4.646134
12 months   ki1066203-TanzaniaChild2   Wealth Q4            Wealth Q1          3.650035   2.5464773    5.231838
12 months   ki1113344-GMS-Nepal        Wealth Q2            Wealth Q1          2.370293   1.8526011    3.032650
12 months   ki1113344-GMS-Nepal        Wealth Q3            Wealth Q1          2.361165   1.8407775    3.028665
12 months   ki1113344-GMS-Nepal        Wealth Q4            Wealth Q1          2.503797   1.9717053    3.179480
12 months   ki1114097-CONTENT          Wealth Q2            Wealth Q1          2.514000   1.3372831    4.726146
12 months   ki1114097-CONTENT          Wealth Q3            Wealth Q1          2.514000   1.3372831    4.726146
12 months   ki1114097-CONTENT          Wealth Q4            Wealth Q1          2.341898   1.2219223    4.488407
12 months   ki1148112-LCNI-5           Wealth Q2            Wealth Q1          2.502450   1.8722489    3.344777
12 months   ki1148112-LCNI-5           Wealth Q3            Wealth Q1          2.718282   2.0628932    3.581890
12 months   ki1148112-LCNI-5           Wealth Q4            Wealth Q1          2.307087   1.7246250    3.086266
12 months   kiGH5241-JiVitA-3          Wealth Q2            Wealth Q1          2.528176   2.3751900    2.691016
12 months   kiGH5241-JiVitA-3          Wealth Q3            Wealth Q1          2.390276   2.2420921    2.548253
12 months   kiGH5241-JiVitA-3          Wealth Q4            Wealth Q1          2.001534   1.8683230    2.144243
12 months   kiGH5241-JiVitA-4          Wealth Q2            Wealth Q1          2.507271   2.1579005    2.913205
12 months   kiGH5241-JiVitA-4          Wealth Q3            Wealth Q1          2.116057   1.8025898    2.484036
12 months   kiGH5241-JiVitA-4          Wealth Q4            Wealth Q1          2.010883   1.6875797    2.396125
18 months   ki1000108-CMC-V-BCS-2002   Wealth Q2            Wealth Q1          2.860577   2.4888142    3.287872
18 months   ki1000108-CMC-V-BCS-2002   Wealth Q3            Wealth Q1          2.954512   2.5814108    3.381538
18 months   ki1000108-CMC-V-BCS-2002   Wealth Q4            Wealth Q1          3.143696   2.7777019    3.557915
18 months   ki1000108-IRC              Wealth Q2            Wealth Q1          2.754048   2.2081352    3.434926
18 months   ki1000108-IRC              Wealth Q3            Wealth Q1          2.556173   2.0285132    3.221089
18 months   ki1000108-IRC              Wealth Q4            Wealth Q1          2.206143   1.7014240    2.860585
18 months   ki1066203-TanzaniaChild2   Wealth Q2            Wealth Q1          2.779932   1.8997675    4.067878
18 months   ki1066203-TanzaniaChild2   Wealth Q3            Wealth Q1          3.578701   2.6208290    4.886661
18 months   ki1066203-TanzaniaChild2   Wealth Q4            Wealth Q1          2.887220   2.0312648    4.103867
18 months   ki1113344-GMS-Nepal        Wealth Q2            Wealth Q1          2.606204   2.1958799    3.093202
18 months   ki1113344-GMS-Nepal        Wealth Q3            Wealth Q1          2.445395   2.0390238    2.932755
18 months   ki1113344-GMS-Nepal        Wealth Q4            Wealth Q1          2.529532   2.1250270    3.011036
18 months   ki1114097-CONTENT          Wealth Q2            Wealth Q1          2.173450   1.1924379    3.961536
18 months   ki1114097-CONTENT          Wealth Q3            Wealth Q1          2.173450   1.1924379    3.961536
18 months   ki1114097-CONTENT          Wealth Q4            Wealth Q1          2.492566   1.4165318    4.385983
18 months   ki1148112-LCNI-5           Wealth Q2            Wealth Q1          3.023240   2.2759267    4.015938
18 months   ki1148112-LCNI-5           Wealth Q3            Wealth Q1          3.238143   2.4538641    4.273085
18 months   ki1148112-LCNI-5           Wealth Q4            Wealth Q1          2.860693   2.1607509    3.787370
18 months   kiGH5241-JiVitA-3          Wealth Q2            Wealth Q1          2.546743   2.4109199    2.690218
18 months   kiGH5241-JiVitA-3          Wealth Q3            Wealth Q1          2.444283   2.3112735    2.584948
18 months   kiGH5241-JiVitA-3          Wealth Q4            Wealth Q1          2.025680   1.9044322    2.154648
18 months   kiGH5241-JiVitA-4          Wealth Q2            Wealth Q1          2.658722   2.3576545    2.998234
18 months   kiGH5241-JiVitA-4          Wealth Q3            Wealth Q1          2.263080   1.9895053    2.574274
18 months   kiGH5241-JiVitA-4          Wealth Q4            Wealth Q1          2.103631   1.8191645    2.432580
24 months   ki1000108-CMC-V-BCS-2002   Wealth Q2            Wealth Q1          2.665611   2.4558714    2.893264
24 months   ki1000108-CMC-V-BCS-2002   Wealth Q3            Wealth Q1          2.655069   2.4409855    2.887928
24 months   ki1000108-CMC-V-BCS-2002   Wealth Q4            Wealth Q1          2.728294   2.5305225    2.941522
24 months   ki1000108-IRC              Wealth Q2            Wealth Q1          2.759123   2.2894426    3.325159
24 months   ki1000108-IRC              Wealth Q3            Wealth Q1          2.732070   2.2647748    3.295783
24 months   ki1000108-IRC              Wealth Q4            Wealth Q1          2.157638   1.7135383    2.716835
24 months   ki1066203-TanzaniaChild2   Wealth Q2            Wealth Q1          3.523202   2.3773347    5.221374
24 months   ki1066203-TanzaniaChild2   Wealth Q3            Wealth Q1          3.562339   2.5065072    5.062926
24 months   ki1066203-TanzaniaChild2   Wealth Q4            Wealth Q1          2.950708   1.9785584    4.400516
24 months   ki1113344-GMS-Nepal        Wealth Q2            Wealth Q1          2.710980   2.3474605    3.130794
24 months   ki1113344-GMS-Nepal        Wealth Q3            Wealth Q1          2.482583   2.1175734    2.910511
24 months   ki1113344-GMS-Nepal        Wealth Q4            Wealth Q1          2.493426   2.1371530    2.909092
24 months   ki1114097-CONTENT          Wealth Q2            Wealth Q1          2.292831   1.2605854    4.170343
24 months   ki1114097-CONTENT          Wealth Q3            Wealth Q1          2.054433   1.1023852    3.828694
24 months   ki1114097-CONTENT          Wealth Q4            Wealth Q1          2.491895   1.3970684    4.444693
24 months   ki1148112-LCNI-5           Wealth Q2            Wealth Q1          2.771287   2.2201004    3.459318
24 months   ki1148112-LCNI-5           Wealth Q3            Wealth Q1          3.019591   2.4479156    3.724772
24 months   ki1148112-LCNI-5           Wealth Q4            Wealth Q1          2.569660   2.0532314    3.215981
24 months   kiGH5241-JiVitA-4          Wealth Q2            Wealth Q1          2.652054   2.3560575    2.985238
24 months   kiGH5241-JiVitA-4          Wealth Q3            Wealth Q1          2.346404   2.0699694    2.659755
24 months   kiGH5241-JiVitA-4          Wealth Q4            Wealth Q1          2.183743   1.8964754    2.514524
3 months    ki1000108-CMC-V-BCS-2002   Wealth Q2            Wealth Q1          5.021102   3.0705146    8.210829
3 months    ki1000108-CMC-V-BCS-2002   Wealth Q3            Wealth Q1          4.936657   3.0091290    8.098882
3 months    ki1000108-CMC-V-BCS-2002   Wealth Q4            Wealth Q1         10.144520   6.4600217   15.930486
3 months    ki1000108-IRC              Wealth Q2            Wealth Q1          2.799419   1.9268839    4.067056
3 months    ki1000108-IRC              Wealth Q3            Wealth Q1          2.273220   1.5130715    3.415258
3 months    ki1000108-IRC              Wealth Q4            Wealth Q1          2.329919   1.5529520    3.495614
3 months    ki1066203-TanzaniaChild2   Wealth Q2            Wealth Q1          4.481689   2.0857116    9.630064
3 months    ki1066203-TanzaniaChild2   Wealth Q3            Wealth Q1          3.793668   1.8494753    7.781621
3 months    ki1066203-TanzaniaChild2   Wealth Q4            Wealth Q1          6.554870   3.2928932   13.048199
3 months    ki1113344-GMS-Nepal        Wealth Q2            Wealth Q1          2.371122   1.4265557    3.941115
3 months    ki1113344-GMS-Nepal        Wealth Q3            Wealth Q1          2.357423   1.4180701    3.919018
3 months    ki1113344-GMS-Nepal        Wealth Q4            Wealth Q1          2.223509   1.3176921    3.752010
3 months    ki1114097-CONTENT          Wealth Q2            Wealth Q1          3.109977   1.3327689    7.257041
3 months    ki1114097-CONTENT          Wealth Q3            Wealth Q1          2.416883   0.9662545    6.045325
3 months    ki1114097-CONTENT          Wealth Q4            Wealth Q1          3.527833   1.5511865    8.023281
3 months    kiGH5241-JiVitA-3          Wealth Q2            Wealth Q1          2.483296   2.3562575    2.617184
3 months    kiGH5241-JiVitA-3          Wealth Q3            Wealth Q1          2.331449   2.2068856    2.463044
3 months    kiGH5241-JiVitA-3          Wealth Q4            Wealth Q1          1.888601   1.7744893    2.010051
3 months    kiGH5241-JiVitA-4          Wealth Q2            Wealth Q1          2.485184   1.9359615    3.190217
3 months    kiGH5241-JiVitA-4          Wealth Q3            Wealth Q1          2.123717   1.6560132    2.723513
3 months    kiGH5241-JiVitA-4          Wealth Q4            Wealth Q1          2.021193   1.5276865    2.674123
6 months    ki1000108-CMC-V-BCS-2002   Wealth Q2            Wealth Q1          3.719780   2.6805742    5.161866
6 months    ki1000108-CMC-V-BCS-2002   Wealth Q3            Wealth Q1          3.320117   2.3611829    4.668497
6 months    ki1000108-CMC-V-BCS-2002   Wealth Q4            Wealth Q1          5.653817   4.2103641    7.592133
6 months    ki1000108-IRC              Wealth Q2            Wealth Q1          3.258830   2.4152660    4.397019
6 months    ki1000108-IRC              Wealth Q3            Wealth Q1          2.490375   1.7825054    3.479353
6 months    ki1000108-IRC              Wealth Q4            Wealth Q1          2.597490   1.8682221    3.611430
6 months    ki1066203-TanzaniaChild2   Wealth Q2            Wealth Q1          3.291026   1.8978489    5.706910
6 months    ki1066203-TanzaniaChild2   Wealth Q3            Wealth Q1          4.628118   2.9055962    7.371799
6 months    ki1066203-TanzaniaChild2   Wealth Q4            Wealth Q1          4.440384   2.7113318    7.272074
6 months    ki1113344-GMS-Nepal        Wealth Q2            Wealth Q1          2.415067   1.6924558    3.446204
6 months    ki1113344-GMS-Nepal        Wealth Q3            Wealth Q1          2.510151   1.7620143    3.575939
6 months    ki1113344-GMS-Nepal        Wealth Q4            Wealth Q1          2.223634   1.5359126    3.219289
6 months    ki1114097-CONTENT          Wealth Q2            Wealth Q1          2.644620   1.3445029    5.201935
6 months    ki1114097-CONTENT          Wealth Q3            Wealth Q1          2.248896   1.0919420    4.631688
6 months    ki1114097-CONTENT          Wealth Q4            Wealth Q1          2.644620   1.3445029    5.201935
6 months    ki1148112-LCNI-5           Wealth Q2            Wealth Q1          3.656215   1.8241936    7.328121
6 months    ki1148112-LCNI-5           Wealth Q3            Wealth Q1          5.812437   3.1311142   10.789906
6 months    ki1148112-LCNI-5           Wealth Q4            Wealth Q1          3.085856   1.5755843    6.043796
6 months    kiGH5241-JiVitA-3          Wealth Q2            Wealth Q1          2.467813   2.3255141    2.618819
6 months    kiGH5241-JiVitA-3          Wealth Q3            Wealth Q1          2.315866   2.1771365    2.463436
6 months    kiGH5241-JiVitA-3          Wealth Q4            Wealth Q1          1.874924   1.7495266    2.009310
6 months    kiGH5241-JiVitA-4          Wealth Q2            Wealth Q1          2.291641   1.8481784    2.841511
6 months    kiGH5241-JiVitA-4          Wealth Q3            Wealth Q1          2.078626   1.6724863    2.583392
6 months    kiGH5241-JiVitA-4          Wealth Q4            Wealth Q1          1.990741   1.5720049    2.521016


### Parameter: PAR


agecat      studyid                    intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -------------------  ---------------  -----------  -----------  -----------
12 months   ki1000108-CMC-V-BCS-2002   Wealth Q1            NA                 0.0544803   -0.0447130    0.1536736
12 months   ki1000108-IRC              Wealth Q1            NA                -0.0355042   -0.1310444    0.0600360
12 months   ki1066203-TanzaniaChild2   Wealth Q1            NA                 0.0414141   -0.0318639    0.1146922
12 months   ki1113344-GMS-Nepal        Wealth Q1            NA                -0.0446735   -0.1253303    0.0359832
12 months   ki1114097-CONTENT          Wealth Q1            NA                -0.0200236   -0.1337446    0.0936973
12 months   ki1148112-LCNI-5           Wealth Q1            NA                -0.0336466   -0.1343319    0.0670386
12 months   kiGH5241-JiVitA-3          Wealth Q1            NA                -0.0719740   -0.0949697   -0.0489782
12 months   kiGH5241-JiVitA-4          Wealth Q1            NA                -0.0808778   -0.1321325   -0.0296232
18 months   ki1000108-CMC-V-BCS-2002   Wealth Q1            NA                 0.0559762   -0.0277521    0.1397044
18 months   ki1000108-IRC              Wealth Q1            NA                -0.0376528   -0.1316091    0.0563034
18 months   ki1066203-TanzaniaChild2   Wealth Q1            NA                 0.0378343   -0.0565323    0.1322009
18 months   ki1113344-GMS-Nepal        Wealth Q1            NA                -0.0360288   -0.1135109    0.0414532
18 months   ki1114097-CONTENT          Wealth Q1            NA                -0.0416601   -0.1612405    0.0779204
18 months   ki1148112-LCNI-5           Wealth Q1            NA                 0.0429150   -0.0695726    0.1554026
18 months   kiGH5241-JiVitA-3          Wealth Q1            NA                -0.0790054   -0.1029331   -0.0550777
18 months   kiGH5241-JiVitA-4          Wealth Q1            NA                -0.0708687   -0.1216047   -0.0201327
24 months   ki1000108-CMC-V-BCS-2002   Wealth Q1            NA                -0.0091330   -0.0602022    0.0419363
24 months   ki1000108-IRC              Wealth Q1            NA                -0.0347271   -0.1245882    0.0551340
24 months   ki1066203-TanzaniaChild2   Wealth Q1            NA                 0.0617143   -0.0540735    0.1775020
24 months   ki1113344-GMS-Nepal        Wealth Q1            NA                -0.0320814   -0.1053478    0.0411851
24 months   ki1114097-CONTENT          Wealth Q1            NA                -0.0439932   -0.1701417    0.0821552
24 months   ki1148112-LCNI-5           Wealth Q1            NA                 0.0089292   -0.0947766    0.1126350
24 months   kiGH5241-JiVitA-4          Wealth Q1            NA                -0.0638838   -0.1177438   -0.0100238
3 months    ki1000108-CMC-V-BCS-2002   Wealth Q1            NA                 0.1341928    0.0491513    0.2192342
3 months    ki1000108-IRC              Wealth Q1            NA                -0.0257840   -0.1167362    0.0651683
3 months    ki1066203-TanzaniaChild2   Wealth Q1            NA                 0.0281579   -0.0102032    0.0665190
3 months    ki1113344-GMS-Nepal        Wealth Q1            NA                -0.0214840   -0.0830269    0.0400589
3 months    ki1114097-CONTENT          Wealth Q1            NA                 0.0102483   -0.0817541    0.1022508
3 months    kiGH5241-JiVitA-3          Wealth Q1            NA                -0.0727286   -0.0897424   -0.0557148
3 months    kiGH5241-JiVitA-4          Wealth Q1            NA                -0.0526481   -0.1074363    0.0021402
6 months    ki1000108-CMC-V-BCS-2002   Wealth Q1            NA                 0.1233727    0.0219488    0.2247966
6 months    ki1000108-IRC              Wealth Q1            NA                 0.0049720   -0.0896099    0.0995539
6 months    ki1066203-TanzaniaChild2   Wealth Q1            NA                 0.0451763   -0.0099605    0.1003130
6 months    ki1113344-GMS-Nepal        Wealth Q1            NA                -0.0315271   -0.1073695    0.0443154
6 months    ki1114097-CONTENT          Wealth Q1            NA                -0.0140323   -0.1228641    0.0947995
6 months    ki1148112-LCNI-5           Wealth Q1            NA                 0.0833333   -0.0747389    0.2414056
6 months    kiGH5241-JiVitA-3          Wealth Q1            NA                -0.0829480   -0.1034863   -0.0624096
6 months    kiGH5241-JiVitA-4          Wealth Q1            NA                -0.0745647   -0.1295919   -0.0195375


### Parameter: PAF


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
12 months   ki1000108-CMC-V-BCS-2002   Wealth Q1            NA                0.6619422   0.6057051   0.7101584
12 months   ki1000108-IRC              Wealth Q1            NA                0.6072561   0.5316622   0.6706485
12 months   ki1066203-TanzaniaChild2   Wealth Q1            NA                0.6830752   0.5874227   0.7565516
12 months   ki1113344-GMS-Nepal        Wealth Q1            NA                0.5977385   0.5273148   0.6576700
12 months   ki1114097-CONTENT          Wealth Q1            NA                0.6039294   0.3975838   0.7395954
12 months   ki1148112-LCNI-5           Wealth Q1            NA                0.6073226   0.5226680   0.6769637
12 months   kiGH5241-JiVitA-3          Wealth Q1            NA                0.5779173   0.5589584   0.5960612
12 months   kiGH5241-JiVitA-4          Wealth Q1            NA                0.5695618   0.5244782   0.6103711
18 months   ki1000108-CMC-V-BCS-2002   Wealth Q1            NA                0.6572479   0.6189947   0.6916604
18 months   ki1000108-IRC              Wealth Q1            NA                0.6082946   0.5418781   0.6650824
18 months   ki1066203-TanzaniaChild2   Wealth Q1            NA                0.6662701   0.5744951   0.7382507
18 months   ki1113344-GMS-Nepal        Wealth Q1            NA                0.6114712   0.5630499   0.6545265
18 months   ki1114097-CONTENT          Wealth Q1            NA                0.5813142   0.3930040   0.7112044
18 months   ki1148112-LCNI-5           Wealth Q1            NA                0.6609265   0.5801376   0.7261702
18 months   kiGH5241-JiVitA-3          Wealth Q1            NA                0.5823362   0.5659573   0.5980971
18 months   kiGH5241-JiVitA-4          Wealth Q1            NA                0.5874695   0.5521873   0.6199718
24 months   ki1000108-CMC-V-BCS-2002   Wealth Q1            NA                0.6285059   0.6076292   0.6482719
24 months   ki1000108-IRC              Wealth Q1            NA                0.6127338   0.5576743   0.6609397
24 months   ki1066203-TanzaniaChild2   Wealth Q1            NA                0.6830355   0.5808688   0.7602982
24 months   ki1113344-GMS-Nepal        Wealth Q1            NA                0.6154108   0.5743457   0.6525142
24 months   ki1114097-CONTENT          Wealth Q1            NA                0.5802182   0.3870553   0.7125080
24 months   ki1148112-LCNI-5           Wealth Q1            NA                0.6371679   0.5740221   0.6909531
24 months   kiGH5241-JiVitA-4          Wealth Q1            NA                0.5946642   0.5601220   0.6264938
3 months    ki1000108-CMC-V-BCS-2002   Wealth Q1            NA                0.8051743   0.7090595   0.8695367
3 months    ki1000108-IRC              Wealth Q1            NA                0.6033880   0.4828872   0.6958089
3 months    ki1066203-TanzaniaChild2   Wealth Q1            NA                0.7537111   0.5746760   0.8573835
3 months    ki1113344-GMS-Nepal        Wealth Q1            NA                0.5854844   0.4165081   0.7055260
3 months    ki1114097-CONTENT          Wealth Q1            NA                0.6560240   0.3712943   0.8118047
3 months    kiGH5241-JiVitA-3          Wealth Q1            NA                0.5714225   0.5558217   0.5864753
3 months    kiGH5241-JiVitA-4          Wealth Q1            NA                0.5676943   0.4886120   0.6345471
6 months    ki1000108-CMC-V-BCS-2002   Wealth Q1            NA                0.7321275   0.6525240   0.7934945
6 months    ki1000108-IRC              Wealth Q1            NA                0.6364596   0.5444106   0.7099108
6 months    ki1066203-TanzaniaChild2   Wealth Q1            NA                0.7283002   0.6067788   0.8122666
6 months    ki1113344-GMS-Nepal        Wealth Q1            NA                0.5936828   0.4839415   0.6800873
6 months    ki1114097-CONTENT          Wealth Q1            NA                0.6097094   0.3825773   0.7532861
6 months    ki1148112-LCNI-5           Wealth Q1            NA                0.7205690   0.5296225   0.8340021
6 months    kiGH5241-JiVitA-3          Wealth Q1            NA                0.5669429   0.5490763   0.5841015
6 months    kiGH5241-JiVitA-4          Wealth Q1            NA                0.5571382   0.4921215   0.6138318


