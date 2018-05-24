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

**Intervention Variable:** nrooms

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
* agecat: 12 months, studyid: ki1113344-GMS-Nepal
* agecat: 12 months, studyid: ki1114097-CONTENT
* agecat: 12 months, studyid: ki1135781-COHORTS
* agecat: 12 months, studyid: kiGH5241-JiVitA-3
* agecat: 12 months, studyid: kiGH5241-JiVitA-4
* agecat: 18 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 18 months, studyid: ki1000108-IRC
* agecat: 18 months, studyid: ki1017093c-NIH-Crypto
* agecat: 18 months, studyid: ki1113344-GMS-Nepal
* agecat: 18 months, studyid: ki1114097-CONTENT
* agecat: 18 months, studyid: kiGH5241-JiVitA-3
* agecat: 18 months, studyid: kiGH5241-JiVitA-4
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 24 months, studyid: ki1000108-IRC
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto
* agecat: 24 months, studyid: ki1113344-GMS-Nepal
* agecat: 24 months, studyid: ki1114097-CONTENT
* agecat: 24 months, studyid: kiGH5241-JiVitA-3
* agecat: 24 months, studyid: kiGH5241-JiVitA-4
* agecat: 3 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 3 months, studyid: ki1000108-IRC
* agecat: 3 months, studyid: ki1017093c-NIH-Crypto
* agecat: 3 months, studyid: ki1113344-GMS-Nepal
* agecat: 3 months, studyid: ki1114097-CONTENT
* agecat: 3 months, studyid: ki1135781-COHORTS
* agecat: 3 months, studyid: kiGH5241-JiVitA-3
* agecat: 3 months, studyid: kiGH5241-JiVitA-4
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 6 months, studyid: ki1000108-IRC
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto
* agecat: 6 months, studyid: ki1113344-GMS-Nepal
* agecat: 6 months, studyid: ki1114097-CONTENT
* agecat: 6 months, studyid: kiGH5241-JiVitA-3
* agecat: 6 months, studyid: kiGH5241-JiVitA-4

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 12 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 18 months, studyid: ki1000108-CMC-V-BCS-2002
* NA
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 24 months, studyid: ki1000108-IRC
* NA
* agecat: 24 months, studyid: kiGH5241-JiVitA-3
* agecat: 3 months, studyid: ki1000108-CMC-V-BCS-2002
* NA

## Methods Detail

**todo**




# Results Detail

## Results Plots
![](/tmp/4ed5c776-73eb-4485-abd4-c915a570b104/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/4ed5c776-73eb-4485-abd4-c915a570b104/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/4ed5c776-73eb-4485-abd4-c915a570b104/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/4ed5c776-73eb-4485-abd4-c915a570b104/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Data Summary

agecat      studyid                    A         n     nA   nAY0   nAY1
----------  -------------------------  ---  ------  -----  -----  -----
12 months   ki1000108-CMC-V-BCS-2002   1       372    201     58    143
12 months   ki1000108-CMC-V-BCS-2002   2       372    106     31     75
12 months   ki1000108-CMC-V-BCS-2002   3       372     51     19     32
12 months   ki1000108-CMC-V-BCS-2002   4+      372     14      4     10
12 months   ki1000108-IRC              1       408    186     93     93
12 months   ki1000108-IRC              2       408    170     84     86
12 months   ki1000108-IRC              3       408     35     19     16
12 months   ki1000108-IRC              4+      408     17      5     12
12 months   ki1017093c-NIH-Crypto      1       729    346    205    141
12 months   ki1017093c-NIH-Crypto      2       729    188    116     72
12 months   ki1017093c-NIH-Crypto      3       729    104     74     30
12 months   ki1017093c-NIH-Crypto      4+      729     91     57     34
12 months   ki1113344-GMS-Nepal        1       582     40     21     19
12 months   ki1113344-GMS-Nepal        2       582    124     65     59
12 months   ki1113344-GMS-Nepal        3       582    143     75     68
12 months   ki1113344-GMS-Nepal        4+      582    275    156    119
12 months   ki1114097-CONTENT          1       215     44     29     15
12 months   ki1114097-CONTENT          2       215     54     45      9
12 months   ki1114097-CONTENT          3       215     39     31      8
12 months   ki1114097-CONTENT          4+      215     78     56     22
12 months   ki1135781-COHORTS          1      5022   3257   1740   1517
12 months   ki1135781-COHORTS          2      5022   1487   1059    428
12 months   ki1135781-COHORTS          3      5022    184    137     47
12 months   ki1135781-COHORTS          4+     5022     94     77     17
12 months   kiGH5241-JiVitA-3          1      8369   4705   2506   2199
12 months   kiGH5241-JiVitA-3          2      8369   2453   1334   1119
12 months   kiGH5241-JiVitA-3          3      8369    855    499    356
12 months   kiGH5241-JiVitA-3          4+     8369    356    249    107
12 months   kiGH5241-JiVitA-4          1      1419    849    464    385
12 months   kiGH5241-JiVitA-4          2      1419    355    201    154
12 months   kiGH5241-JiVitA-4          3      1419    157     98     59
12 months   kiGH5241-JiVitA-4          4+     1419     58     40     18
18 months   ki1000108-CMC-V-BCS-2002   1       373    202     25    177
18 months   ki1000108-CMC-V-BCS-2002   2       373    106     17     89
18 months   ki1000108-CMC-V-BCS-2002   3       373     51     13     38
18 months   ki1000108-CMC-V-BCS-2002   4+      373     14      2     12
18 months   ki1000108-IRC              1       409    187     83    104
18 months   ki1000108-IRC              2       409    170     74     96
18 months   ki1000108-IRC              3       409     35     17     18
18 months   ki1000108-IRC              4+      409     17      5     12
18 months   ki1017093c-NIH-Crypto      1       715    337    173    164
18 months   ki1017093c-NIH-Crypto      2       715    185    101     84
18 months   ki1017093c-NIH-Crypto      3       715    102     71     31
18 months   ki1017093c-NIH-Crypto      4+      715     91     53     38
18 months   ki1113344-GMS-Nepal        1       574     39     13     26
18 months   ki1113344-GMS-Nepal        2       574    120     44     76
18 months   ki1113344-GMS-Nepal        3       574    143     54     89
18 months   ki1113344-GMS-Nepal        4+      574    272    105    167
18 months   ki1114097-CONTENT          1       214     44     29     15
18 months   ki1114097-CONTENT          2       214     54     43     11
18 months   ki1114097-CONTENT          3       214     39     29     10
18 months   ki1114097-CONTENT          4+      214     77     53     24
18 months   ki1135781-COHORTS          1         0      0      0      0
18 months   ki1135781-COHORTS          2         0      0      0      0
18 months   ki1135781-COHORTS          3         0      0      0      0
18 months   ki1135781-COHORTS          4+        0      0      0      0
18 months   kiGH5241-JiVitA-3          1      7325   4156   1799   2357
18 months   kiGH5241-JiVitA-3          2      7325   2125    980   1145
18 months   kiGH5241-JiVitA-3          3      7325    750    374    376
18 months   kiGH5241-JiVitA-3          4+     7325    294    190    104
18 months   kiGH5241-JiVitA-4          1      1371    822    359    463
18 months   kiGH5241-JiVitA-4          2      1371    344    153    191
18 months   kiGH5241-JiVitA-4          3      1371    150     76     74
18 months   kiGH5241-JiVitA-4          4+     1371     55     32     23
24 months   ki1000108-CMC-V-BCS-2002   1       373    202     11    191
24 months   ki1000108-CMC-V-BCS-2002   2       373    106      8     98
24 months   ki1000108-CMC-V-BCS-2002   3       373     51      7     44
24 months   ki1000108-CMC-V-BCS-2002   4+      373     14      2     12
24 months   ki1000108-IRC              1       410    187     67    120
24 months   ki1000108-IRC              2       410    170     66    104
24 months   ki1000108-IRC              3       410     36     10     26
24 months   ki1000108-IRC              4+      410     17      4     13
24 months   ki1017093c-NIH-Crypto      1       634    287    125    162
24 months   ki1017093c-NIH-Crypto      2       634    168     83     85
24 months   ki1017093c-NIH-Crypto      3       634     93     58     35
24 months   ki1017093c-NIH-Crypto      4+      634     86     50     36
24 months   ki1113344-GMS-Nepal        1       568     40     11     29
24 months   ki1113344-GMS-Nepal        2       568    123     37     86
24 months   ki1113344-GMS-Nepal        3       568    139     46     93
24 months   ki1113344-GMS-Nepal        4+      568    266     82    184
24 months   ki1114097-CONTENT          1       197     38     25     13
24 months   ki1114097-CONTENT          2       197     50     38     12
24 months   ki1114097-CONTENT          3       197     38     28     10
24 months   ki1114097-CONTENT          4+      197     71     49     22
24 months   ki1135781-COHORTS          1         0      0      0      0
24 months   ki1135781-COHORTS          2         0      0      0      0
24 months   ki1135781-COHORTS          3         0      0      0      0
24 months   ki1135781-COHORTS          4+        0      0      0      0
24 months   kiGH5241-JiVitA-3          1         3      2      1      1
24 months   kiGH5241-JiVitA-3          2         3      0      0      0
24 months   kiGH5241-JiVitA-3          3         3      1      1      0
24 months   kiGH5241-JiVitA-3          4+        3      0      0      0
24 months   kiGH5241-JiVitA-4          1      1195    716    280    436
24 months   kiGH5241-JiVitA-4          2      1195    298    118    180
24 months   kiGH5241-JiVitA-4          3      1195    134     62     72
24 months   kiGH5241-JiVitA-4          4+     1195     47     24     23
3 months    ki1000108-CMC-V-BCS-2002   1       362    196    128     68
3 months    ki1000108-CMC-V-BCS-2002   2       362    101     63     38
3 months    ki1000108-CMC-V-BCS-2002   3       362     51     35     16
3 months    ki1000108-CMC-V-BCS-2002   4+      362     14     11      3
3 months    ki1000108-IRC              1       410    187    131     56
3 months    ki1000108-IRC              2       410    170    114     56
3 months    ki1000108-IRC              3       410     36     26     10
3 months    ki1000108-IRC              4+      410     17      9      8
3 months    ki1017093c-NIH-Crypto      1       758    368    304     64
3 months    ki1017093c-NIH-Crypto      2       758    191    158     33
3 months    ki1017093c-NIH-Crypto      3       758    104     93     11
3 months    ki1017093c-NIH-Crypto      4+      758     95     82     13
3 months    ki1113344-GMS-Nepal        1       593     39     31      8
3 months    ki1113344-GMS-Nepal        2       593    128    105     23
3 months    ki1113344-GMS-Nepal        3       593    149    123     26
3 months    ki1113344-GMS-Nepal        4+      593    277    240     37
3 months    ki1114097-CONTENT          1       215     44     36      8
3 months    ki1114097-CONTENT          2       215     54     48      6
3 months    ki1114097-CONTENT          3       215     39     32      7
3 months    ki1114097-CONTENT          4+      215     78     64     14
3 months    ki1135781-COHORTS          1      5193   3403   2654    749
3 months    ki1135781-COHORTS          2      5193   1501   1294    207
3 months    ki1135781-COHORTS          3      5193    188    164     24
3 months    ki1135781-COHORTS          4+     5193    101     91     10
3 months    kiGH5241-JiVitA-3          1     13350   7823   4526   3297
3 months    kiGH5241-JiVitA-3          2     13350   3686   2189   1497
3 months    kiGH5241-JiVitA-3          3     13350   1298    846    452
3 months    kiGH5241-JiVitA-3          4+    13350    543    401    142
3 months    kiGH5241-JiVitA-4          1      1155    695    500    195
3 months    kiGH5241-JiVitA-4          2      1155    289    200     89
3 months    kiGH5241-JiVitA-4          3      1155    130    106     24
3 months    kiGH5241-JiVitA-4          4+     1155     41     33      8
6 months    ki1000108-CMC-V-BCS-2002   1       367    198     92    106
6 months    ki1000108-CMC-V-BCS-2002   2       367    104     51     53
6 months    ki1000108-CMC-V-BCS-2002   3       367     51     29     22
6 months    ki1000108-CMC-V-BCS-2002   4+      367     14      7      7
6 months    ki1000108-IRC              1       408    185    109     76
6 months    ki1000108-IRC              2       408    170     97     73
6 months    ki1000108-IRC              3       408     36     23     13
6 months    ki1000108-IRC              4+      408     17      6     11
6 months    ki1017093c-NIH-Crypto      1       736    352    240    112
6 months    ki1017093c-NIH-Crypto      2       736    189    126     63
6 months    ki1017093c-NIH-Crypto      3       736    104     79     25
6 months    ki1017093c-NIH-Crypto      4+      736     91     65     26
6 months    ki1113344-GMS-Nepal        1       567     39     25     14
6 months    ki1113344-GMS-Nepal        2       567    118     83     35
6 months    ki1113344-GMS-Nepal        3       567    142     97     45
6 months    ki1113344-GMS-Nepal        4+      567    268    200     68
6 months    ki1114097-CONTENT          1       215     44     31     13
6 months    ki1114097-CONTENT          2       215     54     46      8
6 months    ki1114097-CONTENT          3       215     39     31      8
6 months    ki1114097-CONTENT          4+      215     78     59     19
6 months    ki1135781-COHORTS          1         0      0      0      0
6 months    ki1135781-COHORTS          2         0      0      0      0
6 months    ki1135781-COHORTS          3         0      0      0      0
6 months    ki1135781-COHORTS          4+        0      0      0      0
6 months    kiGH5241-JiVitA-3          1      9592   5492   3045   2447
6 months    kiGH5241-JiVitA-3          2      9592   2715   1556   1159
6 months    kiGH5241-JiVitA-3          3      9592    974    609    365
6 months    kiGH5241-JiVitA-3          4+     9592    411    299    112
6 months    kiGH5241-JiVitA-4          1      1179    707    464    243
6 months    kiGH5241-JiVitA-4          2      1179    287    190     97
6 months    kiGH5241-JiVitA-4          3      1179    138    101     37
6 months    kiGH5241-JiVitA-4          4+     1179     47     38      9

## Results Table

### Parameter: TSM


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
12 months   ki1000108-IRC              1                    NA                0.5000000   0.4280560   0.5719440
12 months   ki1000108-IRC              2                    NA                0.5058824   0.4306341   0.5811306
12 months   ki1000108-IRC              3                    NA                0.4571429   0.2919027   0.6223831
12 months   ki1000108-IRC              4+                   NA                0.7058824   0.4890205   0.9227442
12 months   ki1017093c-NIH-Crypto      1                    NA                0.4075145   0.3557039   0.4593250
12 months   ki1017093c-NIH-Crypto      2                    NA                0.3829787   0.3134435   0.4525139
12 months   ki1017093c-NIH-Crypto      3                    NA                0.2884615   0.2013305   0.3755925
12 months   ki1017093c-NIH-Crypto      4+                   NA                0.3736264   0.2741635   0.4730892
12 months   ki1113344-GMS-Nepal        1                    NA                0.4750000   0.3201119   0.6298881
12 months   ki1113344-GMS-Nepal        2                    NA                0.4758065   0.3878289   0.5637840
12 months   ki1113344-GMS-Nepal        3                    NA                0.4755245   0.3936021   0.5574469
12 months   ki1113344-GMS-Nepal        4+                   NA                0.4327273   0.3741191   0.4913355
12 months   ki1114097-CONTENT          1                    NA                0.3409091   0.2005224   0.4812958
12 months   ki1114097-CONTENT          2                    NA                0.1666667   0.0670350   0.2662983
12 months   ki1114097-CONTENT          3                    NA                0.2051282   0.0781032   0.3321533
12 months   ki1114097-CONTENT          4+                   NA                0.2820513   0.1819536   0.3821489
12 months   ki1135781-COHORTS          1                    NA                0.4657660   0.4486331   0.4828990
12 months   ki1135781-COHORTS          2                    NA                0.2878278   0.2648137   0.3108420
12 months   ki1135781-COHORTS          3                    NA                0.2554348   0.1924154   0.3184541
12 months   ki1135781-COHORTS          4+                   NA                0.1808511   0.1030350   0.2586671
12 months   kiGH5241-JiVitA-3          1                    NA                0.4673751   0.4531178   0.4816324
12 months   kiGH5241-JiVitA-3          2                    NA                0.4561761   0.4364646   0.4758877
12 months   kiGH5241-JiVitA-3          3                    NA                0.4163743   0.3833297   0.4494188
12 months   kiGH5241-JiVitA-3          4+                   NA                0.3005618   0.2529307   0.3481929
12 months   kiGH5241-JiVitA-4          1                    NA                0.4534747   0.4199759   0.4869735
12 months   kiGH5241-JiVitA-4          2                    NA                0.4338028   0.3822305   0.4853752
12 months   kiGH5241-JiVitA-4          3                    NA                0.3757962   0.3000099   0.4515825
12 months   kiGH5241-JiVitA-4          4+                   NA                0.3103448   0.1912411   0.4294486
18 months   ki1000108-IRC              1                    NA                0.5561497   0.4848525   0.6274470
18 months   ki1000108-IRC              2                    NA                0.5647059   0.4900855   0.6393263
18 months   ki1000108-IRC              3                    NA                0.5142857   0.3485034   0.6800681
18 months   ki1000108-IRC              4+                   NA                0.7058824   0.4890211   0.9227436
18 months   ki1017093c-NIH-Crypto      1                    NA                0.4866469   0.4332455   0.5400482
18 months   ki1017093c-NIH-Crypto      2                    NA                0.4540541   0.3822590   0.5258491
18 months   ki1017093c-NIH-Crypto      3                    NA                0.3039216   0.2145989   0.3932443
18 months   ki1017093c-NIH-Crypto      4+                   NA                0.4175824   0.3161867   0.5189781
18 months   ki1113344-GMS-Nepal        1                    NA                0.6666667   0.5185895   0.8147439
18 months   ki1113344-GMS-Nepal        2                    NA                0.6333333   0.5470379   0.7196288
18 months   ki1113344-GMS-Nepal        3                    NA                0.6223776   0.5428506   0.7019046
18 months   ki1113344-GMS-Nepal        4+                   NA                0.6139706   0.5560642   0.6718769
18 months   ki1114097-CONTENT          1                    NA                0.3409091   0.2005208   0.4812974
18 months   ki1114097-CONTENT          2                    NA                0.2037037   0.0960311   0.3113763
18 months   ki1114097-CONTENT          3                    NA                0.2564103   0.1190480   0.3937725
18 months   ki1114097-CONTENT          4+                   NA                0.3116883   0.2079898   0.4153869
18 months   kiGH5241-JiVitA-3          1                    NA                0.5671319   0.5520672   0.5821965
18 months   kiGH5241-JiVitA-3          2                    NA                0.5388235   0.5176275   0.5600196
18 months   kiGH5241-JiVitA-3          3                    NA                0.5013333   0.4655471   0.5371195
18 months   kiGH5241-JiVitA-3          4+                   NA                0.3537415   0.2990839   0.4083991
18 months   kiGH5241-JiVitA-4          1                    NA                0.5632603   0.5293418   0.5971788
18 months   kiGH5241-JiVitA-4          2                    NA                0.5552326   0.5026997   0.6077654
18 months   kiGH5241-JiVitA-4          3                    NA                0.4933333   0.4132961   0.5733706
18 months   kiGH5241-JiVitA-4          4+                   NA                0.4181818   0.2877747   0.5485890
24 months   ki1017093c-NIH-Crypto      1                    NA                0.5644599   0.5070509   0.6218690
24 months   ki1017093c-NIH-Crypto      2                    NA                0.5059524   0.4302908   0.5816140
24 months   ki1017093c-NIH-Crypto      3                    NA                0.3763441   0.2778037   0.4748845
24 months   ki1017093c-NIH-Crypto      4+                   NA                0.4186047   0.3142578   0.5229515
24 months   ki1113344-GMS-Nepal        1                    NA                0.7250000   0.5865044   0.8634956
24 months   ki1113344-GMS-Nepal        2                    NA                0.6991870   0.6180679   0.7803061
24 months   ki1113344-GMS-Nepal        3                    NA                0.6690647   0.5907707   0.7473588
24 months   ki1113344-GMS-Nepal        4+                   NA                0.6917293   0.6361870   0.7472717
24 months   ki1114097-CONTENT          1                    NA                0.3421053   0.1908817   0.4933288
24 months   ki1114097-CONTENT          2                    NA                0.2400000   0.1213192   0.3586808
24 months   ki1114097-CONTENT          3                    NA                0.2631579   0.1227936   0.4035222
24 months   ki1114097-CONTENT          4+                   NA                0.3098592   0.2020204   0.4176979
24 months   kiGH5241-JiVitA-4          1                    NA                0.6089385   0.5731798   0.6446973
24 months   kiGH5241-JiVitA-4          2                    NA                0.6040268   0.5484770   0.6595767
24 months   kiGH5241-JiVitA-4          3                    NA                0.5373134   0.4528566   0.6217703
24 months   kiGH5241-JiVitA-4          4+                   NA                0.4893617   0.3463892   0.6323342
3 months    ki1000108-IRC              1                    NA                0.2994652   0.2337380   0.3651925
3 months    ki1000108-IRC              2                    NA                0.3294118   0.2586740   0.4001495
3 months    ki1000108-IRC              3                    NA                0.2777778   0.1312867   0.4242689
3 months    ki1000108-IRC              4+                   NA                0.4705882   0.2330294   0.7081471
3 months    ki1017093c-NIH-Crypto      1                    NA                0.1739130   0.1351614   0.2126647
3 months    ki1017093c-NIH-Crypto      2                    NA                0.1727749   0.1191248   0.2264249
3 months    ki1017093c-NIH-Crypto      3                    NA                0.1057692   0.0466236   0.1649148
3 months    ki1017093c-NIH-Crypto      4+                   NA                0.1368421   0.0676864   0.2059978
3 months    ki1113344-GMS-Nepal        1                    NA                0.2051282   0.0782919   0.3319645
3 months    ki1113344-GMS-Nepal        2                    NA                0.1796875   0.1131206   0.2462544
3 months    ki1113344-GMS-Nepal        3                    NA                0.1744966   0.1135044   0.2354889
3 months    ki1113344-GMS-Nepal        4+                   NA                0.1335740   0.0934780   0.1736700
3 months    ki1114097-CONTENT          1                    NA                0.1818182   0.0675888   0.2960475
3 months    ki1114097-CONTENT          2                    NA                0.1111111   0.0270943   0.1951279
3 months    ki1114097-CONTENT          3                    NA                0.1794872   0.0587649   0.3002095
3 months    ki1114097-CONTENT          4+                   NA                0.1794872   0.0941236   0.2648507
3 months    ki1135781-COHORTS          1                    NA                0.2200999   0.2061783   0.2340215
3 months    ki1135781-COHORTS          2                    NA                0.1379081   0.1204631   0.1553531
3 months    ki1135781-COHORTS          3                    NA                0.1276596   0.0799527   0.1753664
3 months    ki1135781-COHORTS          4+                   NA                0.0990099   0.0407555   0.1572643
3 months    kiGH5241-JiVitA-3          1                    NA                0.4214496   0.4105070   0.4323922
3 months    kiGH5241-JiVitA-3          2                    NA                0.4061313   0.3902763   0.4219863
3 months    kiGH5241-JiVitA-3          3                    NA                0.3482280   0.3223097   0.3741464
3 months    kiGH5241-JiVitA-3          4+                   NA                0.2615101   0.2245460   0.2984743
3 months    kiGH5241-JiVitA-4          1                    NA                0.2805755   0.2471590   0.3139921
3 months    kiGH5241-JiVitA-4          2                    NA                0.3079585   0.2547110   0.3612060
3 months    kiGH5241-JiVitA-4          3                    NA                0.1846154   0.1178917   0.2513390
3 months    kiGH5241-JiVitA-4          4+                   NA                0.1951220   0.0737656   0.3164783
6 months    ki1000108-CMC-V-BCS-2002   1                    NA                0.5353535   0.4657887   0.6049184
6 months    ki1000108-CMC-V-BCS-2002   2                    NA                0.5096154   0.4134069   0.6058239
6 months    ki1000108-CMC-V-BCS-2002   3                    NA                0.4313726   0.2952608   0.5674843
6 months    ki1000108-CMC-V-BCS-2002   4+                   NA                0.5000000   0.2377312   0.7622688
6 months    ki1000108-IRC              1                    NA                0.4108108   0.3398296   0.4817920
6 months    ki1000108-IRC              2                    NA                0.4294118   0.3549120   0.5039115
6 months    ki1000108-IRC              3                    NA                0.3611111   0.2040159   0.5182063
6 months    ki1000108-IRC              4+                   NA                0.6470588   0.4196122   0.8745055
6 months    ki1017093c-NIH-Crypto      1                    NA                0.3181818   0.2694913   0.3668723
6 months    ki1017093c-NIH-Crypto      2                    NA                0.3333333   0.2660812   0.4005855
6 months    ki1017093c-NIH-Crypto      3                    NA                0.2403846   0.1582026   0.3225666
6 months    ki1017093c-NIH-Crypto      4+                   NA                0.2857143   0.1928338   0.3785948
6 months    ki1113344-GMS-Nepal        1                    NA                0.3589744   0.2082899   0.5096588
6 months    ki1113344-GMS-Nepal        2                    NA                0.2966102   0.2141239   0.3790964
6 months    ki1113344-GMS-Nepal        3                    NA                0.3169014   0.2403081   0.3934947
6 months    ki1113344-GMS-Nepal        4+                   NA                0.2537313   0.2015880   0.3058747
6 months    ki1114097-CONTENT          1                    NA                0.2954545   0.1603301   0.4305790
6 months    ki1114097-CONTENT          2                    NA                0.1481481   0.0531766   0.2431197
6 months    ki1114097-CONTENT          3                    NA                0.2051282   0.0781032   0.3321533
6 months    ki1114097-CONTENT          4+                   NA                0.2435897   0.1481078   0.3390717
6 months    kiGH5241-JiVitA-3          1                    NA                0.4455572   0.4324114   0.4587029
6 months    kiGH5241-JiVitA-3          2                    NA                0.4268877   0.4082813   0.4454941
6 months    kiGH5241-JiVitA-3          3                    NA                0.3747433   0.3443424   0.4051443
6 months    kiGH5241-JiVitA-3          4+                   NA                0.2725061   0.2294581   0.3155540
6 months    kiGH5241-JiVitA-4          1                    NA                0.3437058   0.3086818   0.3787298
6 months    kiGH5241-JiVitA-4          2                    NA                0.3379791   0.2832306   0.3927276
6 months    kiGH5241-JiVitA-4          3                    NA                0.2681159   0.1941767   0.3420552
6 months    kiGH5241-JiVitA-4          4+                   NA                0.1914894   0.0789515   0.3040272


### Parameter: E(Y)


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
12 months   ki1000108-IRC              NA                   NA                0.5073529   0.5031360   0.5115699
12 months   ki1017093c-NIH-Crypto      NA                   NA                0.3799726   0.3771016   0.3828436
12 months   ki1113344-GMS-Nepal        NA                   NA                0.4553265   0.4535872   0.4570657
12 months   ki1114097-CONTENT          NA                   NA                0.2511628   0.2425088   0.2598168
12 months   ki1135781-COHORTS          NA                   NA                0.4000398   0.3975358   0.4025438
12 months   kiGH5241-JiVitA-3          NA                   NA                0.4517864   0.4510309   0.4525418
12 months   kiGH5241-JiVitA-4          NA                   NA                0.4341085   0.4322855   0.4359315
18 months   ki1000108-IRC              NA                   NA                0.5623472   0.5591674   0.5655270
18 months   ki1017093c-NIH-Crypto      NA                   NA                0.4433566   0.4388523   0.4478610
18 months   ki1113344-GMS-Nepal        NA                   NA                0.6236934   0.6225644   0.6248224
18 months   ki1114097-CONTENT          NA                   NA                0.2803738   0.2734031   0.2873445
18 months   kiGH5241-JiVitA-3          NA                   NA                0.5436177   0.5426063   0.5446292
18 months   kiGH5241-JiVitA-4          NA                   NA                0.5477753   0.5459752   0.5495755
24 months   ki1017093c-NIH-Crypto      NA                   NA                0.5015773   0.4960526   0.5071020
24 months   ki1113344-GMS-Nepal        NA                   NA                0.6901408   0.6889390   0.6913426
24 months   ki1114097-CONTENT          NA                   NA                0.2893401   0.2840296   0.2946506
24 months   kiGH5241-JiVitA-4          NA                   NA                0.5949791   0.5932319   0.5967262
3 months    ki1000108-IRC              NA                   NA                0.3170732   0.3135557   0.3205906
3 months    ki1017093c-NIH-Crypto      NA                   NA                0.1596306   0.1578774   0.1613838
3 months    ki1113344-GMS-Nepal        NA                   NA                0.1585160   0.1565521   0.1604800
3 months    ki1114097-CONTENT          NA                   NA                0.1627907   0.1587789   0.1668025
3 months    ki1135781-COHORTS          NA                   NA                0.1906412   0.1895266   0.1917559
3 months    kiGH5241-JiVitA-3          NA                   NA                0.4035955   0.4029820   0.4042090
3 months    kiGH5241-JiVitA-4          NA                   NA                0.2735931   0.2714078   0.2757783
6 months    ki1000108-CMC-V-BCS-2002   NA                   NA                0.5122616   0.5087058   0.5158174
6 months    ki1000108-IRC              NA                   NA                0.4240196   0.4191492   0.4288900
6 months    ki1017093c-NIH-Crypto      NA                   NA                0.3070652   0.3048713   0.3092591
6 months    ki1113344-GMS-Nepal        NA                   NA                0.2857143   0.2829560   0.2884725
6 months    ki1114097-CONTENT          NA                   NA                0.2232558   0.2163027   0.2302089
6 months    kiGH5241-JiVitA-3          NA                   NA                0.4256672   0.4248933   0.4264411
6 months    kiGH5241-JiVitA-4          NA                   NA                0.3273961   0.3253101   0.3294821


### Parameter: RR


agecat      studyid                    intervention_level   baseline_level    estimate    ci_lower   ci_upper
----------  -------------------------  -------------------  ---------------  ---------  ----------  ---------
12 months   ki1000108-IRC              2                    1                 2.750450   2.2362768   3.382845
12 months   ki1000108-IRC              3                    1                 2.494992   1.6908589   3.681554
12 months   ki1000108-IRC              4+                   1                 4.103190   2.9227290   5.760427
12 months   ki1017093c-NIH-Crypto      2                    1                 2.559448   2.0506151   3.194542
12 months   ki1017093c-NIH-Crypto      3                    1                 2.029635   1.4624826   2.816730
12 months   ki1017093c-NIH-Crypto      4+                   1                 2.501379   1.8623347   3.359705
12 months   ki1113344-GMS-Nepal        2                    1                 2.722901   1.8716902   3.961227
12 months   ki1113344-GMS-Nepal        3                    1                 2.721285   1.8819559   3.934944
12 months   ki1113344-GMS-Nepal        4+                   1                 2.486820   1.7470271   3.539884
12 months   ki1114097-CONTENT          2                    1                 1.630504   0.7889814   3.369587
12 months   ki1114097-CONTENT          3                    1                 1.825236   0.8676543   3.839648
12 months   ki1114097-CONTENT          4+                   1                 2.287250   1.3280681   3.939192
12 months   ki1135781-COHORTS          2                    1                 1.855152   1.6988526   2.025831
12 months   ki1135781-COHORTS          3                    1                 1.730514   1.3484793   2.220783
12 months   ki1135781-COHORTS          4+                   1                 1.474453   0.9573758   2.270804
12 months   kiGH5241-JiVitA-3          2                    1                 2.653922   2.5171951   2.798075
12 months   kiGH5241-JiVitA-3          3                    1                 2.437269   2.2386088   2.653558
12 months   kiGH5241-JiVitA-3          4+                   1                 1.902340   1.6188270   2.235506
12 months   kiGH5241-JiVitA-4          2                    1                 2.602883   2.2629150   2.993926
12 months   kiGH5241-JiVitA-4          3                    1                 2.290348   1.8476809   2.839069
12 months   kiGH5241-JiVitA-4          4+                   1                 1.982524   1.3411765   2.930563
18 months   ki1000108-IRC              2                    1                 2.760425   2.2962480   3.318433
18 months   ki1000108-IRC              3                    1                 2.521176   1.7821390   3.566684
18 months   ki1000108-IRC              4+                   1                 3.558114   2.5506189   4.963571
18 months   ki1017093c-NIH-Crypto      2                    1                 2.542190   2.0971079   3.081733
18 months   ki1017093c-NIH-Crypto      3                    1                 1.867353   1.3645217   2.555479
18 months   ki1017093c-NIH-Crypto      4+                   1                 2.358630   1.8069146   3.078804
18 months   ki1113344-GMS-Nepal        2                    1                 2.585710   1.9925626   3.355425
18 months   ki1113344-GMS-Nepal        3                    1                 2.543565   1.9685920   3.286471
18 months   ki1113344-GMS-Nepal        4+                   1                 2.511690   1.9731783   3.197170
18 months   ki1114097-CONTENT          2                    1                 1.817625   0.9300425   3.552269
18 months   ki1114097-CONTENT          3                    1                 2.121528   1.0794329   4.169674
18 months   ki1114097-CONTENT          4+                   1                 2.494992   1.4694347   4.236314
18 months   kiGH5241-JiVitA-3          2                    1                 2.585930   2.4660530   2.711634
18 months   kiGH5241-JiVitA-3          3                    1                 2.420515   2.2430039   2.612074
18 months   kiGH5241-JiVitA-3          4+                   1                 1.865889   1.5951349   2.182600
18 months   kiGH5241-JiVitA-4          2                    1                 2.679815   2.3955088   2.997863
18 months   kiGH5241-JiVitA-4          3                    1                 2.400923   2.0193996   2.854527
18 months   kiGH5241-JiVitA-4          4+                   1                 2.101037   1.5293253   2.886472
24 months   ki1017093c-NIH-Crypto      2                    1                 2.450636   2.0452015   2.936444
24 months   ki1017093c-NIH-Crypto      3                    1                 1.947863   1.4708458   2.579585
24 months   ki1017093c-NIH-Crypto      4+                   1                 2.099296   1.6038046   2.747868
24 months   ki1113344-GMS-Nepal        2                    1                 2.623202   2.0978137   3.280172
24 months   ki1113344-GMS-Nepal        3                    1                 2.516447   2.0113910   3.148321
24 months   ki1113344-GMS-Nepal        4+                   1                 2.596357   2.1104302   3.194169
24 months   ki1114097-CONTENT          2                    1                 2.016853   1.0390068   3.914986
24 months   ki1114097-CONTENT          3                    1                 2.158106   1.0794860   4.314479
24 months   ki1114097-CONTENT          4+                   1                 2.473767   1.4093685   4.342033
24 months   kiGH5241-JiVitA-4          2                    1                 2.696444   2.4177052   3.007319
24 months   kiGH5241-JiVitA-4          3                    1                 2.416638   2.0433332   2.858142
24 months   kiGH5241-JiVitA-4          4+                   1                 2.233636   1.6580236   3.009082
3 months    ki1000108-IRC              2                    1                 3.004166   2.2098850   4.083929
3 months    ki1000108-IRC              3                    1                 2.528382   1.4281242   4.476300
3 months    ki1000108-IRC              4+                   1                 4.813520   2.7758772   8.346901
3 months    ki1017093c-NIH-Crypto      2                    1                 2.700550   1.8427546   3.957646
3 months    ki1017093c-NIH-Crypto      3                    1                 1.837072   1.0062386   3.353911
3 months    ki1017093c-NIH-Crypto      4+                   1                 2.196449   1.2643164   3.815809
3 months    ki1113344-GMS-Nepal        2                    1                 2.401219   1.1678516   4.937145
3 months    ki1113344-GMS-Nepal        3                    1                 2.341218   1.1507211   4.763361
3 months    ki1113344-GMS-Nepal        4+                   1                 1.917790   0.9644802   3.813367
3 months    ki1114097-CONTENT          2                    1                 1.842477   0.6893650   4.924420
3 months    ki1114097-CONTENT          3                    1                 2.683654   1.0690823   6.736621
3 months    ki1114097-CONTENT          4+                   1                 2.683654   1.2204313   5.901194
3 months    ki1135781-COHORTS          2                    1                 1.871182   1.6244037   2.155451
3 months    ki1135781-COHORTS          3                    1                 1.786052   1.2226111   2.609154
3 months    ki1135781-COHORTS          4+                   1                 1.568062   0.8676920   2.833747
3 months    kiGH5241-JiVitA-3          2                    1                 2.621256   2.5011949   2.747079
3 months    kiGH5241-JiVitA-3          3                    1                 2.284764   2.1115764   2.472156
3 months    kiGH5241-JiVitA-3          4+                   1                 1.859861   1.6108916   2.147309
3 months    kiGH5241-JiVitA-4          2                    1                 2.996952   2.4293922   3.697105
3 months    kiGH5241-JiVitA-4          3                    1                 1.930904   1.3197607   2.825050
3 months    kiGH5241-JiVitA-4          4+                   1                 2.004580   1.0641568   3.776080
6 months    ki1000108-CMC-V-BCS-2002   2                    1                 2.590687   2.0600685   3.257979
6 months    ki1000108-CMC-V-BCS-2002   3                    1                 2.238422   1.5912672   3.148770
6 months    ki1000108-CMC-V-BCS-2002   4+                   1                 2.544571   1.4822621   4.368218
6 months    ki1000108-IRC              2                    1                 2.844191   2.2264851   3.633270
6 months    ki1000108-IRC              3                    1                 2.408539   1.5082216   3.846293
6 months    ki1000108-IRC              4+                   1                 4.831116   3.2654535   7.147454
6 months    ki1017093c-NIH-Crypto      2                    1                 2.850855   2.2130992   3.672396
6 months    ki1017093c-NIH-Crypto      3                    1                 2.128664   1.4636475   3.095834
6 months    ki1017093c-NIH-Crypto      4+                   1                 2.454589   1.7137099   3.515767
6 months    ki1113344-GMS-Nepal        2                    1                 2.284783   1.3809122   3.780280
6 months    ki1113344-GMS-Nepal        3                    1                 2.417652   1.4894739   3.924232
6 months    ki1113344-GMS-Nepal        4+                   1                 2.027540   1.2705544   3.235530
6 months    ki1114097-CONTENT          2                    1                 1.651072   0.7512234   3.628797
6 months    ki1114097-CONTENT          3                    1                 2.002267   0.9272379   4.323673
6 months    ki1114097-CONTENT          4+                   1                 2.280643   1.2487208   4.165330
6 months    kiGH5241-JiVitA-3          2                    1                 2.606735   2.4730825   2.747610
6 months    kiGH5241-JiVitA-3          3                    1                 2.318839   2.1270657   2.527903
6 months    kiGH5241-JiVitA-3          4+                   1                 1.843392   1.5697324   2.164760
6 months    kiGH5241-JiVitA-4          2                    1                 2.673366   2.2077297   3.237210
6 months    kiGH5241-JiVitA-4          3                    1                 2.181634   1.6259233   2.927275
6 months    kiGH5241-JiVitA-4          4+                   1                 1.745658   0.9614286   3.169577


### Parameter: PAR


agecat      studyid                    intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -------------------  ---------------  -----------  -----------  -----------
12 months   ki1000108-IRC              1                    NA                 0.0073529   -0.0647145    0.0794204
12 months   ki1017093c-NIH-Crypto      1                    NA                -0.0275419   -0.0794320    0.0243482
12 months   ki1113344-GMS-Nepal        1                    NA                -0.0196735   -0.1745714    0.1352243
12 months   ki1114097-CONTENT          1                    NA                -0.0897463   -0.2303995    0.0509069
12 months   ki1135781-COHORTS          1                    NA                -0.0657262   -0.0830412   -0.0484113
12 months   kiGH5241-JiVitA-3          1                    NA                -0.0155888   -0.0298661   -0.0013115
12 months   kiGH5241-JiVitA-4          1                    NA                -0.0193661   -0.0529145    0.0141822
18 months   ki1000108-IRC              1                    NA                 0.0061975   -0.0651707    0.0775656
18 months   ki1017093c-NIH-Crypto      1                    NA                -0.0432902   -0.0968812    0.0103007
18 months   ki1113344-GMS-Nepal        1                    NA                -0.0429733   -0.1910548    0.1051082
18 months   ki1114097-CONTENT          1                    NA                -0.0605353   -0.2010965    0.0800260
18 months   kiGH5241-JiVitA-3          1                    NA                -0.0235141   -0.0386127   -0.0084155
18 months   kiGH5241-JiVitA-4          1                    NA                -0.0154850   -0.0494512    0.0184812
24 months   ki1017093c-NIH-Crypto      1                    NA                -0.0628826   -0.1205569   -0.0052084
24 months   ki1113344-GMS-Nepal        1                    NA                -0.0348592   -0.1733600    0.1036417
24 months   ki1114097-CONTENT          1                    NA                -0.0527652   -0.2040819    0.0985516
24 months   kiGH5241-JiVitA-4          1                    NA                -0.0139595   -0.0497609    0.0218420
3 months    ki1000108-IRC              1                    NA                 0.0176079   -0.0482134    0.0834293
3 months    ki1017093c-NIH-Crypto      1                    NA                -0.0142824   -0.0530737    0.0245088
3 months    ki1113344-GMS-Nepal        1                    NA                -0.0466122   -0.1734637    0.0802393
3 months    ki1114097-CONTENT          1                    NA                -0.0190275   -0.1333272    0.0952723
3 months    ki1135781-COHORTS          1                    NA                -0.0294587   -0.0434248   -0.0154925
3 months    kiGH5241-JiVitA-3          1                    NA                -0.0178541   -0.0288139   -0.0068943
3 months    kiGH5241-JiVitA-4          1                    NA                -0.0069825   -0.0404704    0.0265054
6 months    ki1000108-CMC-V-BCS-2002   1                    NA                -0.0230920   -0.0927476    0.0465637
6 months    ki1000108-IRC              1                    NA                 0.0132088   -0.0579393    0.0843569
6 months    ki1017093c-NIH-Crypto      1                    NA                -0.0111166   -0.0598565    0.0376233
6 months    ki1113344-GMS-Nepal        1                    NA                -0.0732601   -0.2239698    0.0774496
6 months    ki1114097-CONTENT          1                    NA                -0.0721987   -0.2075020    0.0631045
6 months    kiGH5241-JiVitA-3          1                    NA                -0.0198900   -0.0330585   -0.0067214
6 months    kiGH5241-JiVitA-4          1                    NA                -0.0163097   -0.0513957    0.0187763


### Parameter: PAF


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
12 months   ki1000108-IRC              1                    NA                0.6374910   0.5812906   0.6861480
12 months   ki1017093c-NIH-Crypto      1                    NA                0.6063980   0.5529356   0.6534670
12 months   ki1113344-GMS-Nepal        1                    NA                0.6165638   0.4687271   0.7232621
12 months   ki1114097-CONTENT          1                    NA                0.5213302   0.2763911   0.6833582
12 months   ki1135781-COHORTS          1                    NA                0.5763662   0.5602604   0.5918820
12 months   kiGH5241-JiVitA-3          1                    NA                0.6196434   0.6078439   0.6310879
12 months   kiGH5241-JiVitA-4          1                    NA                0.6160696   0.5865850   0.6434513
18 months   ki1000108-IRC              1                    NA                0.6361973   0.5863855   0.6800102
18 months   ki1017093c-NIH-Crypto      1                    NA                0.5978957   0.5510489   0.6398542
18 months   ki1113344-GMS-Nepal        1                    NA                0.6076261   0.5100328   0.6857804
18 months   ki1114097-CONTENT          1                    NA                0.5606373   0.3362665   0.7091610
18 months   kiGH5241-JiVitA-3          1                    NA                0.6165471   0.6061994   0.6266230
18 months   kiGH5241-JiVitA-4          1                    NA                0.6218666   0.5983606   0.6439970
24 months   ki1017093c-NIH-Crypto      1                    NA                0.5887676   0.5444710   0.6287567
24 months   ki1113344-GMS-Nepal        1                    NA                0.6140002   0.5327459   0.6811246
24 months   ki1114097-CONTENT          1                    NA                0.5707704   0.3319180   0.7242284
24 months   kiGH5241-JiVitA-4          1                    NA                0.6235898   0.6007946   0.6450833
3 months    ki1000108-IRC              1                    NA                0.6531275   0.5678729   0.7215621
3 months    ki1017093c-NIH-Crypto      1                    NA                0.6006336   0.5008176   0.6804905
3 months    ki1113344-GMS-Nepal        1                    NA                0.5382657   0.1429976   0.7512275
3 months    ki1114097-CONTENT          1                    NA                0.5915349   0.2340239   0.7821815
3 months    ki1135781-COHORTS          1                    NA                0.5794356   0.5518543   0.6053195
3 months    kiGH5241-JiVitA-3          1                    NA                0.6162011   0.6060880   0.6260545
3 months    kiGH5241-JiVitA-4          1                    NA                0.6228506   0.5750341   0.6652868
6 months    ki1000108-CMC-V-BCS-2002   1                    NA                0.6159052   0.5625264   0.6627710
6 months    ki1000108-IRC              1                    NA                0.6437608   0.5764096   0.7004032
6 months    ki1017093c-NIH-Crypto      1                    NA                0.6190405   0.5559722   0.6731507
6 months    ki1113344-GMS-Nepal        1                    NA                0.5488333   0.3134275   0.7035253
6 months    ki1114097-CONTENT          1                    NA                0.5302878   0.2571280   0.7030046
6 months    kiGH5241-JiVitA-3          1                    NA                0.6153261   0.6037854   0.6265307
6 months    kiGH5241-JiVitA-4          1                    NA                0.6142429   0.5727763   0.6516848


