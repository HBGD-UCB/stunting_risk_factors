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

**Outcome Variable:** ever_stunted

## Predictor Variables

**Intervention Variable:** sex

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
* agecat: 12 months, studyid: ki1000109-EE
* agecat: 12 months, studyid: ki1000109-ResPak
* agecat: 12 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 12 months, studyid: ki1017093-NIH-Birth
* agecat: 12 months, studyid: ki1017093b-PROVIDE
* agecat: 12 months, studyid: ki1017093c-NIH-Crypto
* agecat: 12 months, studyid: ki1066203-TanzaniaChild2
* agecat: 12 months, studyid: ki1101329-Keneba
* agecat: 12 months, studyid: ki1112895-Guatemala BSC
* agecat: 12 months, studyid: ki1113344-GMS-Nepal
* agecat: 12 months, studyid: ki1114097-CMIN
* agecat: 12 months, studyid: ki1114097-CONTENT
* agecat: 12 months, studyid: ki1126311-ZVITAMBO
* agecat: 12 months, studyid: ki1135781-COHORTS
* agecat: 12 months, studyid: ki1148112-LCNI-5
* agecat: 18 months, studyid: ki0047075b-MAL-ED
* agecat: 18 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 18 months, studyid: ki1000108-IRC
* agecat: 18 months, studyid: ki1000109-EE
* agecat: 18 months, studyid: ki1000109-ResPak
* agecat: 18 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 18 months, studyid: ki1017093-NIH-Birth
* agecat: 18 months, studyid: ki1017093b-PROVIDE
* agecat: 18 months, studyid: ki1017093c-NIH-Crypto
* agecat: 18 months, studyid: ki1066203-TanzaniaChild2
* agecat: 18 months, studyid: ki1101329-Keneba
* agecat: 18 months, studyid: ki1112895-Guatemala BSC
* agecat: 18 months, studyid: ki1113344-GMS-Nepal
* agecat: 18 months, studyid: ki1114097-CMIN
* agecat: 18 months, studyid: ki1114097-CONTENT
* agecat: 18 months, studyid: ki1126311-ZVITAMBO
* agecat: 18 months, studyid: ki1135781-COHORTS
* agecat: 18 months, studyid: ki1148112-LCNI-5
* agecat: 24 months, studyid: ki0047075b-MAL-ED
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 24 months, studyid: ki1000108-IRC
* agecat: 24 months, studyid: ki1000109-EE
* agecat: 24 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 24 months, studyid: ki1017093-NIH-Birth
* agecat: 24 months, studyid: ki1017093b-PROVIDE
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2
* agecat: 24 months, studyid: ki1101329-Keneba
* agecat: 24 months, studyid: ki1113344-GMS-Nepal
* agecat: 24 months, studyid: ki1114097-CMIN
* agecat: 24 months, studyid: ki1114097-CONTENT
* agecat: 24 months, studyid: ki1126311-ZVITAMBO
* agecat: 24 months, studyid: ki1135781-COHORTS
* agecat: 24 months, studyid: ki1148112-LCNI-5
* agecat: 3 months, studyid: ki0047075b-MAL-ED
* agecat: 3 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 3 months, studyid: ki1000108-IRC
* agecat: 3 months, studyid: ki1000109-EE
* agecat: 3 months, studyid: ki1000109-ResPak
* agecat: 3 months, studyid: ki1017093-NIH-Birth
* agecat: 3 months, studyid: ki1017093b-PROVIDE
* agecat: 3 months, studyid: ki1017093c-NIH-Crypto
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2
* agecat: 3 months, studyid: ki1101329-Keneba
* agecat: 3 months, studyid: ki1113344-GMS-Nepal
* agecat: 3 months, studyid: ki1114097-CMIN
* agecat: 3 months, studyid: ki1114097-CONTENT
* agecat: 3 months, studyid: ki1126311-ZVITAMBO
* agecat: 3 months, studyid: ki1135781-COHORTS
* agecat: 6 months, studyid: ki0047075b-MAL-ED
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 6 months, studyid: ki1000108-IRC
* agecat: 6 months, studyid: ki1000109-EE
* agecat: 6 months, studyid: ki1000109-ResPak
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 6 months, studyid: ki1017093-NIH-Birth
* agecat: 6 months, studyid: ki1017093b-PROVIDE
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2
* agecat: 6 months, studyid: ki1101329-Keneba
* agecat: 6 months, studyid: ki1112895-Guatemala BSC
* agecat: 6 months, studyid: ki1113344-GMS-Nepal
* agecat: 6 months, studyid: ki1114097-CMIN
* agecat: 6 months, studyid: ki1114097-CONTENT
* agecat: 6 months, studyid: ki1126311-ZVITAMBO
* agecat: 6 months, studyid: ki1135781-COHORTS
* agecat: 6 months, studyid: ki1148112-LCNI-5

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 24 months, studyid: ki1000304b-SAS-FoodSuppl

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness




# Results Detail

## Results Plots
![](/tmp/bd559d3e-6797-4f3f-82c1-2eb3c288d50c/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/bd559d3e-6797-4f3f-82c1-2eb3c288d50c/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/bd559d3e-6797-4f3f-82c1-2eb3c288d50c/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/bd559d3e-6797-4f3f-82c1-2eb3c288d50c/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Data Summary

agecat      studyid                    A             n     nA   nAY0   nAY1
----------  -------------------------  -------  ------  -----  -----  -----
3 months    ki0047075b-MAL-ED          Female     1868    932    714    218
3 months    ki0047075b-MAL-ED          Male       1868    936    667    269
3 months    ki1000108-CMC-V-BCS-2002   Female      362    182    122     60
3 months    ki1000108-CMC-V-BCS-2002   Male        362    180    115     65
3 months    ki1000108-IRC              Female      410    185    132     53
3 months    ki1000108-IRC              Male        410    225    148     77
3 months    ki1000109-EE               Female      379    185     77    108
3 months    ki1000109-EE               Male        379    194     61    133
3 months    ki1000109-ResPak           Female      276    132     65     67
3 months    ki1000109-ResPak           Male        276    144     70     74
3 months    ki1000304b-SAS-FoodSuppl   Female        0      0      0      0
3 months    ki1000304b-SAS-FoodSuppl   Male          0      0      0      0
3 months    ki1017093-NIH-Birth        Female      629    297    242     55
3 months    ki1017093-NIH-Birth        Male        629    332    247     85
3 months    ki1017093b-PROVIDE         Female      175     73     57     16
3 months    ki1017093b-PROVIDE         Male        175    102     74     28
3 months    ki1017093c-NIH-Crypto      Female      758    381    319     62
3 months    ki1017093c-NIH-Crypto      Male        758    377    318     59
3 months    ki1066203-TanzaniaChild2   Female      602    293    272     21
3 months    ki1066203-TanzaniaChild2   Male        602    309    271     38
3 months    ki1101329-Keneba           Female     2296   1102    857    245
3 months    ki1101329-Keneba           Male       2296   1194    877    317
3 months    ki1112895-Guatemala BSC    Female        0      0      0      0
3 months    ki1112895-Guatemala BSC    Male          0      0      0      0
3 months    ki1113344-GMS-Nepal        Female      593    281    240     41
3 months    ki1113344-GMS-Nepal        Male        593    312    259     53
3 months    ki1114097-CMIN             Female     1580    761    635    126
3 months    ki1114097-CMIN             Male       1580    819    667    152
3 months    ki1114097-CONTENT          Female      215    106    101      5
3 months    ki1114097-CONTENT          Male        215    109     79     30
3 months    ki1126311-ZVITAMBO         Female     3502   1688   1360    328
3 months    ki1126311-ZVITAMBO         Male       3502   1814   1407    407
3 months    ki1135781-COHORTS          Female    10747   5154   4342    812
3 months    ki1135781-COHORTS          Male      10747   5593   4483   1110
3 months    ki1148112-LCNI-5           Female        0      0      0      0
3 months    ki1148112-LCNI-5           Male          0      0      0      0
6 months    ki0047075b-MAL-ED          Female     1748    872    625    247
6 months    ki0047075b-MAL-ED          Male       1748    876    541    335
6 months    ki1000108-CMC-V-BCS-2002   Female      367    184    101     83
6 months    ki1000108-CMC-V-BCS-2002   Male        367    183     78    105
6 months    ki1000108-IRC              Female      408    184    111     73
6 months    ki1000108-IRC              Male        408    224    124    100
6 months    ki1000109-EE               Female      373    181     54    127
6 months    ki1000109-EE               Male        373    192     42    150
6 months    ki1000109-ResPak           Female      255    120     52     68
6 months    ki1000109-ResPak           Male        255    135     52     83
6 months    ki1000304b-SAS-FoodSuppl   Female      105     59     38     21
6 months    ki1000304b-SAS-FoodSuppl   Male        105     46     24     22
6 months    ki1017093-NIH-Birth        Female      551    257    181     76
6 months    ki1017093-NIH-Birth        Male        551    294    169    125
6 months    ki1017093b-PROVIDE         Female      166     71     53     18
6 months    ki1017093b-PROVIDE         Male        166     95     65     30
6 months    ki1017093c-NIH-Crypto      Female      736    369    265    104
6 months    ki1017093c-NIH-Crypto      Male        736    367    245    122
6 months    ki1066203-TanzaniaChild2   Female      557    271    230     41
6 months    ki1066203-TanzaniaChild2   Male        557    286    219     67
6 months    ki1101329-Keneba           Female     2264   1088    770    318
6 months    ki1101329-Keneba           Male       2264   1176    763    413
6 months    ki1112895-Guatemala BSC    Female      115     60     43     17
6 months    ki1112895-Guatemala BSC    Male        115     55     37     18
6 months    ki1113344-GMS-Nepal        Female      567    275    203     72
6 months    ki1113344-GMS-Nepal        Male        567    292    202     90
6 months    ki1114097-CMIN             Female     1853    871    722    149
6 months    ki1114097-CMIN             Male       1853    982    761    221
6 months    ki1114097-CONTENT          Female      215    106     99      7
6 months    ki1114097-CONTENT          Male        215    109     68     41
6 months    ki1126311-ZVITAMBO         Female     2286   1109    804    305
6 months    ki1126311-ZVITAMBO         Male       2286   1177    804    373
6 months    ki1135781-COHORTS          Female     2947   1386   1087    299
6 months    ki1135781-COHORTS          Male       2947   1561   1108    453
6 months    ki1148112-LCNI-5           Female      133     61     47     14
6 months    ki1148112-LCNI-5           Male        133     72     34     38
12 months   ki0047075b-MAL-ED          Female     1690    838    517    321
12 months   ki0047075b-MAL-ED          Male       1690    852    446    406
12 months   ki1000108-CMC-V-BCS-2002   Female      372    186     68    118
12 months   ki1000108-CMC-V-BCS-2002   Male        372    186     44    142
12 months   ki1000108-IRC              Female      408    183     97     86
12 months   ki1000108-IRC              Male        408    225    104    121
12 months   ki1000109-EE               Female      373    182     35    147
12 months   ki1000109-EE               Male        373    191     30    161
12 months   ki1000109-ResPak           Female      230    106     40     66
12 months   ki1000109-ResPak           Male        230    124     45     79
12 months   ki1000304b-SAS-FoodSuppl   Female       99     55      9     46
12 months   ki1000304b-SAS-FoodSuppl   Male         99     44      6     38
12 months   ki1017093-NIH-Birth        Female      541    246    132    114
12 months   ki1017093-NIH-Birth        Male        541    295    133    162
12 months   ki1017093b-PROVIDE         Female      159     68     48     20
12 months   ki1017093b-PROVIDE         Male        159     91     55     36
12 months   ki1017093c-NIH-Crypto      Female      729    368    239    129
12 months   ki1017093c-NIH-Crypto      Male        729    361    213    148
12 months   ki1066203-TanzaniaChild2   Female      496    242    182     60
12 months   ki1066203-TanzaniaChild2   Male        496    254    156     98
12 months   ki1101329-Keneba           Female     2384   1150    723    427
12 months   ki1101329-Keneba           Male       2384   1234    690    544
12 months   ki1112895-Guatemala BSC    Female       85     43     27     16
12 months   ki1112895-Guatemala BSC    Male         85     42     21     21
12 months   ki1113344-GMS-Nepal        Female      582    282    161    121
12 months   ki1113344-GMS-Nepal        Male        582    300    156    144
12 months   ki1114097-CMIN             Female     2260   1098    803    295
12 months   ki1114097-CMIN             Male       2260   1162    780    382
12 months   ki1114097-CONTENT          Female      215    106     99      7
12 months   ki1114097-CONTENT          Male        215    109     62     47
12 months   ki1126311-ZVITAMBO         Female     2546   1254    829    425
12 months   ki1126311-ZVITAMBO         Male       2546   1292    757    535
12 months   ki1135781-COHORTS          Female    10273   4894   3016   1878
12 months   ki1135781-COHORTS          Male      10273   5379   2983   2396
12 months   ki1148112-LCNI-5           Female      403    203    124     79
12 months   ki1148112-LCNI-5           Male        403    200     84    116
18 months   ki0047075b-MAL-ED          Female     1615    793    410    383
18 months   ki0047075b-MAL-ED          Male       1615    822    333    489
18 months   ki1000108-CMC-V-BCS-2002   Female      373    187     33    154
18 months   ki1000108-CMC-V-BCS-2002   Male        373    186     24    162
18 months   ki1000108-IRC              Female      409    184     86     98
18 months   ki1000108-IRC              Male        409    225     93    132
18 months   ki1000109-EE               Female      363    178     16    162
18 months   ki1000109-EE               Male        363    185     16    169
18 months   ki1000109-ResPak           Female      184     83     27     56
18 months   ki1000109-ResPak           Male        184    101     32     69
18 months   ki1000304b-SAS-FoodSuppl   Female       93     51      5     46
18 months   ki1000304b-SAS-FoodSuppl   Male         93     42      5     37
18 months   ki1017093-NIH-Birth        Female      497    227     86    141
18 months   ki1017093-NIH-Birth        Male        497    270     88    182
18 months   ki1017093b-PROVIDE         Female      155     66     41     25
18 months   ki1017093b-PROVIDE         Male        155     89     44     45
18 months   ki1017093c-NIH-Crypto      Female      715    362    211    151
18 months   ki1017093c-NIH-Crypto      Male        715    353    187    166
18 months   ki1066203-TanzaniaChild2   Female      360    169    108     61
18 months   ki1066203-TanzaniaChild2   Male        360    191     99     92
18 months   ki1101329-Keneba           Female     2284   1107    602    505
18 months   ki1101329-Keneba           Male       2284   1177    541    636
18 months   ki1112895-Guatemala BSC    Female       49     24     13     11
18 months   ki1112895-Guatemala BSC    Male         49     25     10     15
18 months   ki1113344-GMS-Nepal        Female      574    277    105    172
18 months   ki1113344-GMS-Nepal        Male        574    297    111    186
18 months   ki1114097-CMIN             Female     2146   1047    651    396
18 months   ki1114097-CMIN             Male       2146   1099    599    500
18 months   ki1114097-CONTENT          Female      214    105     96      9
18 months   ki1114097-CONTENT          Male        214    109     58     51
18 months   ki1126311-ZVITAMBO         Female     1857    981    559    422
18 months   ki1126311-ZVITAMBO         Male       1857    876    396    480
18 months   ki1135781-COHORTS          Female     3084   1459    574    885
18 months   ki1135781-COHORTS          Male       3084   1625    512   1113
18 months   ki1148112-LCNI-5           Female      328    165     80     85
18 months   ki1148112-LCNI-5           Male        328    163     61    102
24 months   ki0047075b-MAL-ED          Female     1540    757    344    413
24 months   ki0047075b-MAL-ED          Male       1540    783    291    492
24 months   ki1000108-CMC-V-BCS-2002   Female      373    187     13    174
24 months   ki1000108-CMC-V-BCS-2002   Male        373    186     15    171
24 months   ki1000108-IRC              Female      410    185     72    113
24 months   ki1000108-IRC              Male        410    225     75    150
24 months   ki1000109-EE               Female      338    165     13    152
24 months   ki1000109-EE               Male        338    173     14    159
24 months   ki1000109-ResPak           Female        0      0      0      0
24 months   ki1000109-ResPak           Male          0      0      0      0
24 months   ki1000304b-SAS-FoodSuppl   Female        9      5      1      4
24 months   ki1000304b-SAS-FoodSuppl   Male          9      4      0      4
24 months   ki1017093-NIH-Birth        Female      470    216     53    163
24 months   ki1017093-NIH-Birth        Male        470    254     62    192
24 months   ki1017093b-PROVIDE         Female      148     63     35     28
24 months   ki1017093b-PROVIDE         Male        148     85     41     44
24 months   ki1017093c-NIH-Crypto      Female      634    319    166    153
24 months   ki1017093c-NIH-Crypto      Male        634    315    150    165
24 months   ki1066203-TanzaniaChild2   Female      250    118     68     50
24 months   ki1066203-TanzaniaChild2   Male        250    132     63     69
24 months   ki1101329-Keneba           Female     2207   1071    503    568
24 months   ki1101329-Keneba           Male       2207   1136    442    694
24 months   ki1112895-Guatemala BSC    Female        0      0      0      0
24 months   ki1112895-Guatemala BSC    Male          0      0      0      0
24 months   ki1113344-GMS-Nepal        Female      568    273     86    187
24 months   ki1113344-GMS-Nepal        Male        568    295     90    205
24 months   ki1114097-CMIN             Female     2002    971    516    455
24 months   ki1114097-CMIN             Male       2002   1031    479    552
24 months   ki1114097-CONTENT          Female      197    100     91      9
24 months   ki1114097-CONTENT          Male        197     97     49     48
24 months   ki1126311-ZVITAMBO         Female      471    273     78    195
24 months   ki1126311-ZVITAMBO         Male        471    198     54    144
24 months   ki1135781-COHORTS          Female     3038   1441    361   1080
24 months   ki1135781-COHORTS          Male       3038   1597    322   1275
24 months   ki1148112-LCNI-5           Female      355    181     75    106
24 months   ki1148112-LCNI-5           Male        355    174     47    127

## Results Table

### Parameter: TSM


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki0047075b-MAL-ED          NA                   NA                0.2873932   0.2873932   0.2873932
3 months    ki0047075b-MAL-ED          Female               NA                0.2339056   0.2067213   0.2610899
3 months    ki0047075b-MAL-ED          Male                 NA                0.2873932   0.2583937   0.3163926
3 months    ki1000108-CMC-V-BCS-2002   NA                   NA                0.3611111   0.3611111   0.3611111
3 months    ki1000108-CMC-V-BCS-2002   Female               NA                0.3296703   0.2612796   0.3980611
3 months    ki1000108-CMC-V-BCS-2002   Male                 NA                0.3611111   0.2908450   0.4313772
3 months    ki1000108-IRC              NA                   NA                0.3422222   0.3422222   0.3422222
3 months    ki1000108-IRC              Female               NA                0.2864865   0.2212567   0.3517162
3 months    ki1000108-IRC              Male                 NA                0.3422222   0.2801524   0.4042921
3 months    ki1000109-EE               NA                   NA                0.6855670   0.6855670   0.6855670
3 months    ki1000109-EE               Female               NA                0.5837838   0.5126589   0.6549086
3 months    ki1000109-EE               Male                 NA                0.6855670   0.6201471   0.7509869
3 months    ki1000109-ResPak           NA                   NA                0.5138889   0.5138889   0.5138889
3 months    ki1000109-ResPak           Female               NA                0.5075758   0.4221341   0.5930174
3 months    ki1000109-ResPak           Male                 NA                0.5138889   0.4321069   0.5956708
3 months    ki1017093-NIH-Birth        NA                   NA                0.2560241   0.2560241   0.2560241
3 months    ki1017093-NIH-Birth        Female               NA                0.1851852   0.1409724   0.2293980
3 months    ki1017093-NIH-Birth        Male                 NA                0.2560241   0.2090407   0.3030075
3 months    ki1017093b-PROVIDE         NA                   NA                0.2745098   0.2745098   0.2745098
3 months    ki1017093b-PROVIDE         Female               NA                0.2191781   0.1240069   0.3143493
3 months    ki1017093b-PROVIDE         Male                 NA                0.2745098   0.1876563   0.3613633
3 months    ki1017093c-NIH-Crypto      NA                   NA                0.1564987   0.1564987   0.1564987
3 months    ki1017093c-NIH-Crypto      Female               NA                0.1627297   0.1256412   0.1998181
3 months    ki1017093c-NIH-Crypto      Male                 NA                0.1564987   0.1197990   0.1931984
3 months    ki1066203-TanzaniaChild2   NA                   NA                0.1229773   0.1229773   0.1229773
3 months    ki1066203-TanzaniaChild2   Female               NA                0.0716724   0.0421125   0.1012322
3 months    ki1066203-TanzaniaChild2   Male                 NA                0.1229773   0.0863296   0.1596251
3 months    ki1101329-Keneba           NA                   NA                0.2654941   0.2654941   0.2654941
3 months    ki1101329-Keneba           Female               NA                0.2223230   0.1977678   0.2468783
3 months    ki1101329-Keneba           Male                 NA                0.2654941   0.2404408   0.2905475
3 months    ki1113344-GMS-Nepal        NA                   NA                0.1698718   0.1698718   0.1698718
3 months    ki1113344-GMS-Nepal        Female               NA                0.1459075   0.1045977   0.1872172
3 months    ki1113344-GMS-Nepal        Male                 NA                0.1698718   0.1281685   0.2115751
3 months    ki1114097-CMIN             NA                   NA                0.1855922   0.1855922   0.1855922
3 months    ki1114097-CMIN             Female               NA                0.1655716   0.1391548   0.1919884
3 months    ki1114097-CMIN             Male                 NA                0.1855922   0.1589577   0.2122267
3 months    ki1114097-CONTENT          NA                   NA                0.2752294   0.2752294   0.2752294
3 months    ki1114097-CONTENT          Female               NA                0.0471698   0.0067171   0.0876225
3 months    ki1114097-CONTENT          Male                 NA                0.2752294   0.1911877   0.3592711
3 months    ki1126311-ZVITAMBO         NA                   NA                0.2243660   0.2243660   0.2243660
3 months    ki1126311-ZVITAMBO         Female               NA                0.1943128   0.1754347   0.2131909
3 months    ki1126311-ZVITAMBO         Male                 NA                0.2243660   0.2051662   0.2435659
3 months    ki1135781-COHORTS          NA                   NA                0.1984624   0.1984624   0.1984624
3 months    ki1135781-COHORTS          Female               NA                0.1575475   0.1476009   0.1674941
3 months    ki1135781-COHORTS          Male                 NA                0.1984624   0.1880092   0.2089155
6 months    ki0047075b-MAL-ED          NA                   NA                0.3824201   0.3824201   0.3824201
6 months    ki0047075b-MAL-ED          Female               NA                0.2832569   0.2533421   0.3131717
6 months    ki0047075b-MAL-ED          Male                 NA                0.3824201   0.3502289   0.4146113
6 months    ki1000108-CMC-V-BCS-2002   NA                   NA                0.5737705   0.5737705   0.5737705
6 months    ki1000108-CMC-V-BCS-2002   Female               NA                0.4510870   0.3790901   0.5230838
6 months    ki1000108-CMC-V-BCS-2002   Male                 NA                0.5737705   0.5020231   0.6455178
6 months    ki1000108-IRC              NA                   NA                0.4464286   0.4464286   0.4464286
6 months    ki1000108-IRC              Female               NA                0.3967391   0.3259646   0.4675137
6 months    ki1000108-IRC              Male                 NA                0.4464286   0.3812478   0.5116094
6 months    ki1000109-EE               NA                   NA                0.7812500   0.7812500   0.7812500
6 months    ki1000109-EE               Female               NA                0.7016575   0.6349135   0.7684014
6 months    ki1000109-EE               Male                 NA                0.7812500   0.7226970   0.8398030
6 months    ki1000109-ResPak           NA                   NA                0.6148148   0.6148148   0.6148148
6 months    ki1000109-ResPak           Female               NA                0.5666667   0.4778314   0.6555020
6 months    ki1000109-ResPak           Male                 NA                0.6148148   0.5325638   0.6970659
6 months    ki1000304b-SAS-FoodSuppl   NA                   NA                0.4782609   0.4782609   0.4782609
6 months    ki1000304b-SAS-FoodSuppl   Female               NA                0.3559322   0.2331743   0.4786901
6 months    ki1000304b-SAS-FoodSuppl   Male                 NA                0.4782609   0.3332147   0.6233070
6 months    ki1017093-NIH-Birth        NA                   NA                0.4251701   0.4251701   0.4251701
6 months    ki1017093-NIH-Birth        Female               NA                0.2957198   0.2398742   0.3515654
6 months    ki1017093-NIH-Birth        Male                 NA                0.4251701   0.3686087   0.4817314
6 months    ki1017093b-PROVIDE         NA                   NA                0.3157895   0.3157895   0.3157895
6 months    ki1017093b-PROVIDE         Female               NA                0.2535211   0.1520256   0.3550166
6 months    ki1017093b-PROVIDE         Male                 NA                0.3157895   0.2220350   0.4095440
6 months    ki1017093c-NIH-Crypto      NA                   NA                0.3324251   0.3324251   0.3324251
6 months    ki1017093c-NIH-Crypto      Female               NA                0.2818428   0.2359079   0.3277778
6 months    ki1017093c-NIH-Crypto      Male                 NA                0.3324251   0.2841962   0.3806539
6 months    ki1066203-TanzaniaChild2   NA                   NA                0.2342657   0.2342657   0.2342657
6 months    ki1066203-TanzaniaChild2   Female               NA                0.1512915   0.1085903   0.1939927
6 months    ki1066203-TanzaniaChild2   Male                 NA                0.2342657   0.1851355   0.2833960
6 months    ki1101329-Keneba           NA                   NA                0.3511905   0.3511905   0.3511905
6 months    ki1101329-Keneba           Female               NA                0.2922794   0.2652486   0.3193103
6 months    ki1101329-Keneba           Male                 NA                0.3511905   0.3239026   0.3784784
6 months    ki1112895-Guatemala BSC    NA                   NA                0.3272727   0.3272727   0.3272727
6 months    ki1112895-Guatemala BSC    Female               NA                0.2833333   0.1688146   0.3978520
6 months    ki1112895-Guatemala BSC    Male                 NA                0.3272727   0.2027245   0.4518210
6 months    ki1113344-GMS-Nepal        NA                   NA                0.3082192   0.3082192   0.3082192
6 months    ki1113344-GMS-Nepal        Female               NA                0.2618182   0.2098130   0.3138234
6 months    ki1113344-GMS-Nepal        Male                 NA                0.3082192   0.2552096   0.3612287
6 months    ki1114097-CMIN             NA                   NA                0.2250509   0.2250509   0.2250509
6 months    ki1114097-CMIN             Female               NA                0.1710677   0.1460528   0.1960827
6 months    ki1114097-CMIN             Male                 NA                0.2250509   0.1989241   0.2511777
6 months    ki1114097-CONTENT          NA                   NA                0.3761468   0.3761468   0.3761468
6 months    ki1114097-CONTENT          Female               NA                0.0660377   0.0186497   0.1134257
6 months    ki1114097-CONTENT          Male                 NA                0.3761468   0.2849946   0.4672990
6 months    ki1126311-ZVITAMBO         NA                   NA                0.3169074   0.3169074   0.3169074
6 months    ki1126311-ZVITAMBO         Female               NA                0.2750225   0.2487366   0.3013085
6 months    ki1126311-ZVITAMBO         Male                 NA                0.3169074   0.2903209   0.3434939
6 months    ki1135781-COHORTS          NA                   NA                0.2901986   0.2901986   0.2901986
6 months    ki1135781-COHORTS          Female               NA                0.2157287   0.1940703   0.2373872
6 months    ki1135781-COHORTS          Male                 NA                0.2901986   0.2676802   0.3127169
6 months    ki1148112-LCNI-5           NA                   NA                0.5277778   0.5277778   0.5277778
6 months    ki1148112-LCNI-5           Female               NA                0.2295082   0.1235816   0.3354348
6 months    ki1148112-LCNI-5           Male                 NA                0.5277778   0.4120282   0.6435274
12 months   ki0047075b-MAL-ED          NA                   NA                0.4765258   0.4765258   0.4765258
12 months   ki0047075b-MAL-ED          Female               NA                0.3830549   0.3501312   0.4159786
12 months   ki0047075b-MAL-ED          Male                 NA                0.4765258   0.4429793   0.5100724
12 months   ki1000108-CMC-V-BCS-2002   NA                   NA                0.7634409   0.7634409   0.7634409
12 months   ki1000108-CMC-V-BCS-2002   Female               NA                0.6344086   0.5651045   0.7037127
12 months   ki1000108-CMC-V-BCS-2002   Male                 NA                0.7634409   0.7022856   0.8245961
12 months   ki1000108-IRC              NA                   NA                0.5377778   0.5377778   0.5377778
12 months   ki1000108-IRC              Female               NA                0.4699454   0.3975452   0.5423455
12 months   ki1000108-IRC              Male                 NA                0.5377778   0.4725524   0.6030031
12 months   ki1000109-EE               NA                   NA                0.8429319   0.8429319   0.8429319
12 months   ki1000109-EE               Female               NA                0.8076923   0.7503577   0.8650269
12 months   ki1000109-EE               Male                 NA                0.8429319   0.7912600   0.8946039
12 months   ki1000109-ResPak           NA                   NA                0.6370968   0.6370968   0.6370968
12 months   ki1000109-ResPak           Female               NA                0.6226415   0.5301637   0.7151193
12 months   ki1000109-ResPak           Male                 NA                0.6370968   0.5522800   0.7219135
12 months   ki1000304b-SAS-FoodSuppl   NA                   NA                0.8636364   0.8636364   0.8636364
12 months   ki1000304b-SAS-FoodSuppl   Female               NA                0.8363636   0.7380964   0.9346309
12 months   ki1000304b-SAS-FoodSuppl   Male                 NA                0.8636364   0.7617207   0.9655521
12 months   ki1017093-NIH-Birth        NA                   NA                0.5491525   0.5491525   0.5491525
12 months   ki1017093-NIH-Birth        Female               NA                0.4634146   0.4010431   0.5257862
12 months   ki1017093-NIH-Birth        Male                 NA                0.5491525   0.4923196   0.6059855
12 months   ki1017093b-PROVIDE         NA                   NA                0.3956044   0.3956044   0.3956044
12 months   ki1017093b-PROVIDE         Female               NA                0.2941176   0.1854775   0.4027578
12 months   ki1017093b-PROVIDE         Male                 NA                0.3956044   0.2948211   0.4963877
12 months   ki1017093c-NIH-Crypto      NA                   NA                0.4099723   0.4099723   0.4099723
12 months   ki1017093c-NIH-Crypto      Female               NA                0.3505435   0.3017605   0.3993264
12 months   ki1017093c-NIH-Crypto      Male                 NA                0.4099723   0.3592024   0.4607422
12 months   ki1066203-TanzaniaChild2   NA                   NA                0.3858268   0.3858268   0.3858268
12 months   ki1066203-TanzaniaChild2   Female               NA                0.2479339   0.1934743   0.3023935
12 months   ki1066203-TanzaniaChild2   Male                 NA                0.3858268   0.3259014   0.4457522
12 months   ki1101329-Keneba           NA                   NA                0.4408428   0.4408428   0.4408428
12 months   ki1101329-Keneba           Female               NA                0.3713043   0.3433741   0.3992346
12 months   ki1101329-Keneba           Male                 NA                0.4408428   0.4131357   0.4685498
12 months   ki1112895-Guatemala BSC    NA                   NA                0.5000000   0.5000000   0.5000000
12 months   ki1112895-Guatemala BSC    Female               NA                0.3720930   0.2267624   0.5174236
12 months   ki1112895-Guatemala BSC    Male                 NA                0.5000000   0.3478881   0.6521119
12 months   ki1113344-GMS-Nepal        NA                   NA                0.4800000   0.4800000   0.4800000
12 months   ki1113344-GMS-Nepal        Female               NA                0.4290780   0.3712613   0.4868947
12 months   ki1113344-GMS-Nepal        Male                 NA                0.4800000   0.4234174   0.5365826
12 months   ki1114097-CMIN             NA                   NA                0.3287435   0.3287435   0.3287435
12 months   ki1114097-CMIN             Female               NA                0.2686703   0.2424457   0.2948949
12 months   ki1114097-CMIN             Male                 NA                0.3287435   0.3017280   0.3557591
12 months   ki1114097-CONTENT          NA                   NA                0.4311927   0.4311927   0.4311927
12 months   ki1114097-CONTENT          Female               NA                0.0660377   0.0186497   0.1134257
12 months   ki1114097-CONTENT          Male                 NA                0.4311927   0.3380035   0.5243818
12 months   ki1126311-ZVITAMBO         NA                   NA                0.4140867   0.4140867   0.4140867
12 months   ki1126311-ZVITAMBO         Female               NA                0.3389155   0.3127120   0.3651189
12 months   ki1126311-ZVITAMBO         Male                 NA                0.4140867   0.3872231   0.4409503
12 months   ki1135781-COHORTS          NA                   NA                0.4454360   0.4454360   0.4454360
12 months   ki1135781-COHORTS          Female               NA                0.3837352   0.3701102   0.3973602
12 months   ki1135781-COHORTS          Male                 NA                0.4454360   0.4321532   0.4587187
12 months   ki1148112-LCNI-5           NA                   NA                0.5800000   0.5800000   0.5800000
12 months   ki1148112-LCNI-5           Female               NA                0.3891626   0.3220092   0.4563159
12 months   ki1148112-LCNI-5           Male                 NA                0.5800000   0.5115125   0.6484875
18 months   ki0047075b-MAL-ED          NA                   NA                0.5948905   0.5948905   0.5948905
18 months   ki0047075b-MAL-ED          Female               NA                0.4829760   0.4481853   0.5177668
18 months   ki0047075b-MAL-ED          Male                 NA                0.5948905   0.5613205   0.6284605
18 months   ki1000108-CMC-V-BCS-2002   NA                   NA                0.8709677   0.8709677   0.8709677
18 months   ki1000108-CMC-V-BCS-2002   Female               NA                0.8235294   0.7688170   0.8782418
18 months   ki1000108-CMC-V-BCS-2002   Male                 NA                0.8709677   0.8227258   0.9192097
18 months   ki1000108-IRC              NA                   NA                0.5866667   0.5866667   0.5866667
18 months   ki1000108-IRC              Female               NA                0.5326087   0.4604290   0.6047884
18 months   ki1000108-IRC              Male                 NA                0.5866667   0.5222446   0.6510887
18 months   ki1000109-EE               NA                   NA                0.9135135   0.9135135   0.9135135
18 months   ki1000109-EE               Female               NA                0.9101124   0.8680363   0.9521884
18 months   ki1000109-EE               Male                 NA                0.9135135   0.8729540   0.9540730
18 months   ki1000109-ResPak           NA                   NA                0.6831683   0.6831683   0.6831683
18 months   ki1000109-ResPak           Female               NA                0.6746988   0.5736363   0.7757613
18 months   ki1000109-ResPak           Male                 NA                0.6831683   0.5921877   0.7741489
18 months   ki1000304b-SAS-FoodSuppl   NA                   NA                0.8809524   0.8809524   0.8809524
18 months   ki1000304b-SAS-FoodSuppl   Female               NA                0.9019608   0.8199059   0.9840156
18 months   ki1000304b-SAS-FoodSuppl   Male                 NA                0.8809524   0.7824816   0.9794232
18 months   ki1017093-NIH-Birth        NA                   NA                0.6740741   0.6740741   0.6740741
18 months   ki1017093-NIH-Birth        Female               NA                0.6211454   0.5579762   0.6843146
18 months   ki1017093-NIH-Birth        Male                 NA                0.6740741   0.6181090   0.7300391
18 months   ki1017093b-PROVIDE         NA                   NA                0.5056180   0.5056180   0.5056180
18 months   ki1017093b-PROVIDE         Female               NA                0.3787879   0.2613794   0.4961964
18 months   ki1017093b-PROVIDE         Male                 NA                0.5056180   0.4014100   0.6098260
18 months   ki1017093c-NIH-Crypto      NA                   NA                0.4702550   0.4702550   0.4702550
18 months   ki1017093c-NIH-Crypto      Female               NA                0.4171271   0.3662972   0.4679569
18 months   ki1017093c-NIH-Crypto      Male                 NA                0.4702550   0.4181517   0.5223582
18 months   ki1066203-TanzaniaChild2   NA                   NA                0.4816754   0.4816754   0.4816754
18 months   ki1066203-TanzaniaChild2   Female               NA                0.3609467   0.2884366   0.4334569
18 months   ki1066203-TanzaniaChild2   Male                 NA                0.4816754   0.4107154   0.5526354
18 months   ki1101329-Keneba           NA                   NA                0.5403568   0.5403568   0.5403568
18 months   ki1101329-Keneba           Female               NA                0.4561879   0.4268408   0.4855350
18 months   ki1101329-Keneba           Male                 NA                0.5403568   0.5118791   0.5688346
18 months   ki1112895-Guatemala BSC    NA                   NA                0.6000000   0.6000000   0.6000000
18 months   ki1112895-Guatemala BSC    Female               NA                0.4583333   0.2569254   0.6597413
18 months   ki1112895-Guatemala BSC    Male                 NA                0.6000000   0.4059735   0.7940265
18 months   ki1113344-GMS-Nepal        NA                   NA                0.6262626   0.6262626   0.6262626
18 months   ki1113344-GMS-Nepal        Female               NA                0.6209386   0.5637558   0.6781215
18 months   ki1113344-GMS-Nepal        Male                 NA                0.6262626   0.5711933   0.6813320
18 months   ki1114097-CMIN             NA                   NA                0.4549591   0.4549591   0.4549591
18 months   ki1114097-CMIN             Female               NA                0.3782235   0.3488424   0.4076045
18 months   ki1114097-CMIN             Male                 NA                0.4549591   0.4255114   0.4844067
18 months   ki1114097-CONTENT          NA                   NA                0.4678899   0.4678899   0.4678899
18 months   ki1114097-CONTENT          Female               NA                0.0857143   0.0320435   0.1393851
18 months   ki1114097-CONTENT          Male                 NA                0.4678899   0.3739988   0.5617810
18 months   ki1126311-ZVITAMBO         NA                   NA                0.5479452   0.5479452   0.5479452
18 months   ki1126311-ZVITAMBO         Female               NA                0.4301733   0.3991831   0.4611634
18 months   ki1126311-ZVITAMBO         Male                 NA                0.5479452   0.5149784   0.5809120
18 months   ki1135781-COHORTS          NA                   NA                0.6849231   0.6849231   0.6849231
18 months   ki1135781-COHORTS          Female               NA                0.6065798   0.5815093   0.6316504
18 months   ki1135781-COHORTS          Male                 NA                0.6849231   0.6623328   0.7075133
18 months   ki1148112-LCNI-5           NA                   NA                0.6257669   0.6257669   0.6257669
18 months   ki1148112-LCNI-5           Female               NA                0.5151515   0.4387785   0.5915245
18 months   ki1148112-LCNI-5           Male                 NA                0.6257669   0.5513631   0.7001706
24 months   ki0047075b-MAL-ED          NA                   NA                0.6283525   0.6283525   0.6283525
24 months   ki0047075b-MAL-ED          Female               NA                0.5455746   0.5100933   0.5810559
24 months   ki0047075b-MAL-ED          Male                 NA                0.6283525   0.5944934   0.6622116
24 months   ki1000108-CMC-V-BCS-2002   NA                   NA                0.9193548   0.9193548   0.9193548
24 months   ki1000108-CMC-V-BCS-2002   Female               NA                0.9304813   0.8939794   0.9669831
24 months   ki1000108-CMC-V-BCS-2002   Male                 NA                0.9193548   0.8801712   0.9585385
24 months   ki1000108-IRC              NA                   NA                0.6666667   0.6666667   0.6666667
24 months   ki1000108-IRC              Female               NA                0.6108108   0.5404669   0.6811547
24 months   ki1000108-IRC              Male                 NA                0.6666667   0.6049957   0.7283376
24 months   ki1000109-EE               NA                   NA                0.9190751   0.9190751   0.9190751
24 months   ki1000109-EE               Female               NA                0.9212121   0.8800442   0.9623801
24 months   ki1000109-EE               Male                 NA                0.9190751   0.8783760   0.9597743
24 months   ki1017093-NIH-Birth        NA                   NA                0.7559055   0.7559055   0.7559055
24 months   ki1017093-NIH-Birth        Female               NA                0.7546296   0.6971834   0.8120759
24 months   ki1017093-NIH-Birth        Male                 NA                0.7559055   0.7030237   0.8087873
24 months   ki1017093b-PROVIDE         NA                   NA                0.5176471   0.5176471   0.5176471
24 months   ki1017093b-PROVIDE         Female               NA                0.4444444   0.3213262   0.5675627
24 months   ki1017093b-PROVIDE         Male                 NA                0.5176471   0.4110586   0.6242355
24 months   ki1017093c-NIH-Crypto      NA                   NA                0.5238095   0.5238095   0.5238095
24 months   ki1017093c-NIH-Crypto      Female               NA                0.4796238   0.4247577   0.5344900
24 months   ki1017093c-NIH-Crypto      Male                 NA                0.5238095   0.4686129   0.5790062
24 months   ki1066203-TanzaniaChild2   NA                   NA                0.5227273   0.5227273   0.5227273
24 months   ki1066203-TanzaniaChild2   Female               NA                0.4237288   0.3343911   0.5130665
24 months   ki1066203-TanzaniaChild2   Male                 NA                0.5227273   0.4373480   0.6081065
24 months   ki1101329-Keneba           NA                   NA                0.6109155   0.6109155   0.6109155
24 months   ki1101329-Keneba           Female               NA                0.5303455   0.5004490   0.5602420
24 months   ki1101329-Keneba           Male                 NA                0.6109155   0.5825579   0.6392731
24 months   ki1113344-GMS-Nepal        NA                   NA                0.6949153   0.6949153   0.6949153
24 months   ki1113344-GMS-Nepal        Female               NA                0.6849817   0.6298303   0.7401331
24 months   ki1113344-GMS-Nepal        Male                 NA                0.6949153   0.6423261   0.7475044
24 months   ki1114097-CMIN             NA                   NA                0.5354025   0.5354025   0.5354025
24 months   ki1114097-CMIN             Female               NA                0.4685891   0.4371942   0.4999839
24 months   ki1114097-CMIN             Male                 NA                0.5354025   0.5049512   0.5658538
24 months   ki1114097-CONTENT          NA                   NA                0.4948454   0.4948454   0.4948454
24 months   ki1114097-CONTENT          Female               NA                0.0900000   0.0337665   0.1462335
24 months   ki1114097-CONTENT          Male                 NA                0.4948454   0.3950951   0.5945957
24 months   ki1126311-ZVITAMBO         NA                   NA                0.7272727   0.7272727   0.7272727
24 months   ki1126311-ZVITAMBO         Female               NA                0.7142857   0.6606406   0.7679308
24 months   ki1126311-ZVITAMBO         Male                 NA                0.7272727   0.6651730   0.7893725
24 months   ki1135781-COHORTS          NA                   NA                0.7983719   0.7983719   0.7983719
24 months   ki1135781-COHORTS          Female               NA                0.7494795   0.7271032   0.7718559
24 months   ki1135781-COHORTS          Male                 NA                0.7983719   0.7786910   0.8180529
24 months   ki1148112-LCNI-5           NA                   NA                0.7298851   0.7298851   0.7298851
24 months   ki1148112-LCNI-5           Female               NA                0.5856354   0.5137689   0.6575018
24 months   ki1148112-LCNI-5           Male                 NA                0.7298851   0.6638176   0.7959525


### Parameter: E(Y)


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki0047075b-MAL-ED          NA                   NA                0.2607066   0.2594935   0.2619197
3 months    ki1000108-CMC-V-BCS-2002   NA                   NA                0.3453039   0.3436822   0.3469255
3 months    ki1000108-IRC              NA                   NA                0.3170732   0.3143853   0.3197611
3 months    ki1000109-EE               NA                   NA                0.6358839   0.6307550   0.6410128
3 months    ki1000109-ResPak           NA                   NA                0.5108696   0.5104968   0.5112423
3 months    ki1017093-NIH-Birth        NA                   NA                0.2225755   0.2198096   0.2253414
3 months    ki1017093b-PROVIDE         NA                   NA                0.2514286   0.2473747   0.2554825
3 months    ki1017093c-NIH-Crypto      NA                   NA                0.1596306   0.1594087   0.1598525
3 months    ki1066203-TanzaniaChild2   NA                   NA                0.0980066   0.0959565   0.1000568
3 months    ki1101329-Keneba           NA                   NA                0.2447735   0.2438911   0.2456559
3 months    ki1113344-GMS-Nepal        NA                   NA                0.1585160   0.1575521   0.1594799
3 months    ki1114097-CMIN             NA                   NA                0.1759494   0.1754560   0.1764428
3 months    ki1114097-CONTENT          NA                   NA                0.1627907   0.1475144   0.1780670
3 months    ki1126311-ZVITAMBO         NA                   NA                0.2098801   0.2093826   0.2103775
3 months    ki1135781-COHORTS          NA                   NA                0.1788406   0.1784541   0.1792271
6 months    ki0047075b-MAL-ED          NA                   NA                0.3329519   0.3306270   0.3352769
6 months    ki1000108-CMC-V-BCS-2002   NA                   NA                0.5122616   0.5059772   0.5185460
6 months    ki1000108-IRC              NA                   NA                0.4240196   0.4216175   0.4264217
6 months    ki1000109-EE               NA                   NA                0.7426273   0.7385850   0.7466697
6 months    ki1000109-ResPak           NA                   NA                0.5921569   0.5892014   0.5951123
6 months    ki1000304b-SAS-FoodSuppl   NA                   NA                0.4095238   0.3978591   0.4211886
6 months    ki1017093-NIH-Birth        NA                   NA                0.3647913   0.3593942   0.3701884
6 months    ki1017093b-PROVIDE         NA                   NA                0.2891566   0.2844560   0.2938573
6 months    ki1017093c-NIH-Crypto      NA                   NA                0.3070652   0.3052368   0.3088936
6 months    ki1066203-TanzaniaChild2   NA                   NA                0.1938959   0.1904487   0.1973431
6 months    ki1101329-Keneba           NA                   NA                0.3228799   0.3216672   0.3240925
6 months    ki1112895-Guatemala BSC    NA                   NA                0.3043478   0.3003187   0.3083769
6 months    ki1113344-GMS-Nepal        NA                   NA                0.2857143   0.2838038   0.2876248
6 months    ki1114097-CMIN             NA                   NA                0.1996762   0.1984491   0.2009033
6 months    ki1114097-CONTENT          NA                   NA                0.2232558   0.2024836   0.2440281
6 months    ki1126311-ZVITAMBO         NA                   NA                0.2965879   0.2957296   0.2974462
6 months    ki1135781-COHORTS          NA                   NA                0.2551748   0.2538326   0.2565169
6 months    ki1148112-LCNI-5           NA                   NA                0.3909774   0.3656233   0.4163316
12 months   ki0047075b-MAL-ED          NA                   NA                0.4301775   0.4279487   0.4324063
12 months   ki1000108-CMC-V-BCS-2002   NA                   NA                0.6989247   0.6923598   0.7054897
12 months   ki1000108-IRC              NA                   NA                0.5073529   0.5040754   0.5106305
12 months   ki1000109-EE               NA                   NA                0.8257373   0.8239473   0.8275273
12 months   ki1000109-ResPak           NA                   NA                0.6304348   0.6295015   0.6313680
12 months   ki1000304b-SAS-FoodSuppl   NA                   NA                0.8484848   0.8458018   0.8511679
12 months   ki1017093-NIH-Birth        NA                   NA                0.5101664   0.5065655   0.5137672
12 months   ki1017093b-PROVIDE         NA                   NA                0.3522013   0.3443722   0.3600303
12 months   ki1017093c-NIH-Crypto      NA                   NA                0.3799726   0.3778142   0.3821310
12 months   ki1066203-TanzaniaChild2   NA                   NA                0.3185484   0.3124764   0.3246204
12 months   ki1101329-Keneba           NA                   NA                0.4072987   0.4059035   0.4086938
12 months   ki1112895-Guatemala BSC    NA                   NA                0.4352941   0.4216186   0.4489696
12 months   ki1113344-GMS-Nepal        NA                   NA                0.4553265   0.4532571   0.4573958
12 months   ki1114097-CMIN             NA                   NA                0.2995575   0.2983194   0.3007957
12 months   ki1114097-CONTENT          NA                   NA                0.2511628   0.2267034   0.2756222
12 months   ki1126311-ZVITAMBO         NA                   NA                0.3770621   0.3756020   0.3785221
12 months   ki1135781-COHORTS          NA                   NA                0.4160421   0.4154461   0.4166380
12 months   ki1148112-LCNI-5           NA                   NA                0.4838710   0.4745437   0.4931983
18 months   ki0047075b-MAL-ED          NA                   NA                0.5399381   0.5372086   0.5426676
18 months   ki1000108-CMC-V-BCS-2002   NA                   NA                0.8471850   0.8447747   0.8495953
18 months   ki1000108-IRC              NA                   NA                0.5623472   0.5597377   0.5649567
18 months   ki1000109-EE               NA                   NA                0.9118457   0.9116706   0.9120209
18 months   ki1000109-ResPak           NA                   NA                0.6793478   0.6787372   0.6799584
18 months   ki1000304b-SAS-FoodSuppl   NA                   NA                0.8924731   0.8903368   0.8946095
18 months   ki1017093-NIH-Birth        NA                   NA                0.6498994   0.6475791   0.6522197
18 months   ki1017093b-PROVIDE         NA                   NA                0.4516129   0.4417081   0.4615177
18 months   ki1017093c-NIH-Crypto      NA                   NA                0.4433566   0.4414083   0.4453049
18 months   ki1066203-TanzaniaChild2   NA                   NA                0.4250000   0.4187674   0.4312326
18 months   ki1101329-Keneba           NA                   NA                0.4995622   0.4978367   0.5012877
18 months   ki1112895-Guatemala BSC    NA                   NA                0.5306122   0.5105779   0.5506466
18 months   ki1113344-GMS-Nepal        NA                   NA                0.6236934   0.6234756   0.6239112
18 months   ki1114097-CMIN             NA                   NA                0.4175210   0.4158978   0.4191442
18 months   ki1114097-CONTENT          NA                   NA                0.2803738   0.2547163   0.3060314
18 months   ki1126311-ZVITAMBO         NA                   NA                0.4857297   0.4830550   0.4884044
18 months   ki1135781-COHORTS          NA                   NA                0.6478599   0.6464792   0.6492406
18 months   ki1148112-LCNI-5           NA                   NA                0.5701220   0.5641275   0.5761164
24 months   ki0047075b-MAL-ED          NA                   NA                0.5876623   0.5855948   0.5897299
24 months   ki1000108-CMC-V-BCS-2002   NA                   NA                0.9249330   0.9243676   0.9254983
24 months   ki1000108-IRC              NA                   NA                0.6414634   0.6387697   0.6441571
24 months   ki1000109-EE               NA                   NA                0.9201183   0.9200043   0.9202324
24 months   ki1017093-NIH-Birth        NA                   NA                0.7553191   0.7552616   0.7553767
24 months   ki1017093b-PROVIDE         NA                   NA                0.4864865   0.4806354   0.4923375
24 months   ki1017093c-NIH-Crypto      NA                   NA                0.5015773   0.4998563   0.5032983
24 months   ki1066203-TanzaniaChild2   NA                   NA                0.4760000   0.4698615   0.4821385
24 months   ki1101329-Keneba           NA                   NA                0.5718169   0.5701366   0.5734973
24 months   ki1113344-GMS-Nepal        NA                   NA                0.6901408   0.6897323   0.6905494
24 months   ki1114097-CMIN             NA                   NA                0.5029970   0.5015339   0.5044601
24 months   ki1114097-CONTENT          NA                   NA                0.2893401   0.2610047   0.3176755
24 months   ki1126311-ZVITAMBO         NA                   NA                0.7197452   0.7191657   0.7203248
24 months   ki1135781-COHORTS          NA                   NA                0.7751810   0.7743128   0.7760493
24 months   ki1148112-LCNI-5           NA                   NA                0.6563380   0.6488262   0.6638499


### Parameter: RR


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki0047075b-MAL-ED          Female               NA                0.8138871   0.7245875   0.9141920
3 months    ki0047075b-MAL-ED          Male                 NA                1.0000000   0.9040188   1.1061717
3 months    ki1000108-CMC-V-BCS-2002   Female               NA                0.9129332   0.7418973   1.1233995
3 months    ki1000108-CMC-V-BCS-2002   Male                 NA                1.0000000   0.8231779   1.2148042
3 months    ki1000108-IRC              Female               NA                0.8371358   0.6666716   1.0511868
3 months    ki1000108-IRC              Male                 NA                1.0000000   0.8341242   1.1988623
3 months    ki1000109-EE               Female               NA                0.8515342   0.7538591   0.9618649
3 months    ki1000109-EE               Male                 NA                1.0000000   0.9089870   1.1001258
3 months    ki1000109-ResPak           Female               NA                0.9877150   0.8346909   1.1687931
3 months    ki1000109-ResPak           Male                 NA                1.0000000   0.8528742   1.1725059
3 months    ki1017093-NIH-Birth        Female               NA                0.7233115   0.5696892   0.9183597
3 months    ki1017093-NIH-Birth        Male                 NA                1.0000000   0.8323422   1.2014289
3 months    ki1017093b-PROVIDE         Female               NA                0.7984344   0.5172023   1.2325883
3 months    ki1017093b-PROVIDE         Male                 NA                1.0000000   0.7287717   1.3721718
3 months    ki1017093c-NIH-Crypto      Female               NA                1.0398149   0.8278928   1.3059845
3 months    ki1017093c-NIH-Crypto      Male                 NA                1.0000000   0.7909625   1.2642825
3 months    ki1066203-TanzaniaChild2   Female               NA                0.5828094   0.3858429   0.8803241
3 months    ki1066203-TanzaniaChild2   Male                 NA                1.0000000   0.7422981   1.3471677
3 months    ki1101329-Keneba           Female               NA                0.8373934   0.7498294   0.9351831
3 months    ki1101329-Keneba           Male                 NA                1.0000000   0.9099506   1.0989607
3 months    ki1113344-GMS-Nepal        Female               NA                0.8589270   0.6471389   1.1400267
3 months    ki1113344-GMS-Nepal        Male                 NA                1.0000000   0.7823143   1.2782586
3 months    ki1114097-CMIN             Female               NA                0.8921260   0.7605624   1.0464478
3 months    ki1114097-CMIN             Male                 NA                1.0000000   0.8663114   1.1543193
3 months    ki1114097-CONTENT          Female               NA                0.1713837   0.0726976   0.4040350
3 months    ki1114097-CONTENT          Male                 NA                1.0000000   0.7368643   1.3571020
3 months    ki1126311-ZVITAMBO         Female               NA                0.8660526   0.7858710   0.9544151
3 months    ki1126311-ZVITAMBO         Male                 NA                1.0000000   0.9179853   1.0893421
3 months    ki1135781-COHORTS          Female               NA                0.7938409   0.7452719   0.8455751
3 months    ki1135781-COHORTS          Male                 NA                1.0000000   0.9486924   1.0540824
6 months    ki0047075b-MAL-ED          Female               NA                0.7406956   0.6664597   0.8232006
6 months    ki0047075b-MAL-ED          Male                 NA                1.0000000   0.9192680   1.0878221
6 months    ki1000108-CMC-V-BCS-2002   Female               NA                0.7861801   0.6702015   0.9222289
6 months    ki1000108-CMC-V-BCS-2002   Male                 NA                1.0000000   0.8824568   1.1331999
6 months    ki1000108-IRC              Female               NA                0.8886957   0.7434966   1.0622510
6 months    ki1000108-IRC              Male                 NA                1.0000000   0.8641534   1.1572020
6 months    ki1000109-EE               Female               NA                0.8981215   0.8166268   0.9877491
6 months    ki1000109-EE               Male                 NA                1.0000000   0.9277918   1.0778280
6 months    ki1000109-ResPak           Female               NA                0.9216867   0.7879520   1.0781195
6 months    ki1000109-ResPak           Male                 NA                1.0000000   0.8747809   1.1431434
6 months    ki1000304b-SAS-FoodSuppl   Female               NA                0.7442219   0.5271304   1.0507196
6 months    ki1000304b-SAS-FoodSuppl   Male                 NA                1.0000000   0.7383935   1.3542914
6 months    ki1017093-NIH-Birth        Female               NA                0.6955331   0.5758414   0.8401033
6 months    ki1017093-NIH-Birth        Male                 NA                1.0000000   0.8754368   1.1422869
6 months    ki1017093b-PROVIDE         Female               NA                0.8028169   0.5379595   1.1980734
6 months    ki1017093b-PROVIDE         Male                 NA                1.0000000   0.7431263   1.3456662
6 months    ki1017093c-NIH-Crypto      Female               NA                0.8478386   0.7203301   0.9979180
6 months    ki1017093c-NIH-Crypto      Male                 NA                1.0000000   0.8649514   1.1561343
6 months    ki1066203-TanzaniaChild2   Female               NA                0.6458115   0.4869995   0.8564126
6 months    ki1066203-TanzaniaChild2   Male                 NA                1.0000000   0.8108112   1.2333327
6 months    ki1101329-Keneba           Female               NA                0.8322532   0.7587360   0.9128939
6 months    ki1101329-Keneba           Male                 NA                1.0000000   0.9252409   1.0807996
6 months    ki1112895-Guatemala BSC    Female               NA                0.8657407   0.5779006   1.2969480
6 months    ki1112895-Guatemala BSC    Male                 NA                1.0000000   0.6834757   1.4631097
6 months    ki1113344-GMS-Nepal        Female               NA                0.8494545   0.6964274   1.0361066
6 months    ki1113344-GMS-Nepal        Male                 NA                1.0000000   0.8419905   1.1876618
6 months    ki1114097-CMIN             Female               NA                0.7601290   0.6567214   0.8798194
6 months    ki1114097-CMIN             Male                 NA                1.0000000   0.8903925   1.1231002
6 months    ki1114097-CONTENT          Female               NA                0.1755637   0.0856623   0.3598156
6 months    ki1114097-CONTENT          Male                 NA                1.0000000   0.7847960   1.2742164
6 months    ki1126311-ZVITAMBO         Female               NA                0.8678325   0.7887278   0.9548710
6 months    ki1126311-ZVITAMBO         Male                 NA                1.0000000   0.9195292   1.0875131
6 months    ki1135781-COHORTS          Female               NA                0.7433831   0.6723740   0.8218913
6 months    ki1135781-COHORTS          Male                 NA                1.0000000   0.9253379   1.0806863
6 months    ki1148112-LCNI-5           Female               NA                0.4348576   0.2740968   0.6899065
6 months    ki1148112-LCNI-5           Male                 NA                1.0000000   0.8030687   1.2452235
12 months   ki0047075b-MAL-ED          Female               NA                0.8038492   0.7376440   0.8759964
12 months   ki0047075b-MAL-ED          Male                 NA                1.0000000   0.9320227   1.0729353
12 months   ki1000108-CMC-V-BCS-2002   Female               NA                0.8309859   0.7449900   0.9269085
12 months   ki1000108-CMC-V-BCS-2002   Male                 NA                1.0000000   0.9230196   1.0834006
12 months   ki1000108-IRC              Female               NA                0.8738653   0.7490948   1.0194179
12 months   ki1000108-IRC              Male                 NA                1.0000000   0.8857798   1.1289487
12 months   ki1000109-EE               Female               NA                0.9581940   0.8925340   1.0286843
12 months   ki1000109-EE               Male                 NA                1.0000000   0.9405408   1.0632181
12 months   ki1000109-ResPak           Female               NA                0.9773107   0.8424208   1.1337994
12 months   ki1000109-ResPak           Male                 NA                1.0000000   0.8753512   1.1423986
12 months   ki1000304b-SAS-FoodSuppl   Female               NA                0.9684211   0.8610680   1.0891582
12 months   ki1000304b-SAS-FoodSuppl   Male                 NA                1.0000000   0.8886893   1.1252527
12 months   ki1017093-NIH-Birth        Female               NA                0.8438723   0.7376061   0.9654482
12 months   ki1017093-NIH-Birth        Male                 NA                1.0000000   0.9016832   1.1090370
12 months   ki1017093b-PROVIDE         Female               NA                0.7434641   0.5138564   1.0756678
12 months   ki1017093b-PROVIDE         Male                 NA                1.0000000   0.7751042   1.2901491
12 months   ki1017093c-NIH-Crypto      Female               NA                0.8550419   0.7439595   0.9827102
12 months   ki1017093c-NIH-Crypto      Male                 NA                1.0000000   0.8835236   1.1318317
12 months   ki1066203-TanzaniaChild2   Female               NA                0.6426041   0.5158805   0.8004569
12 months   ki1066203-TanzaniaChild2   Male                 NA                1.0000000   0.8561438   1.1680281
12 months   ki1101329-Keneba           Female               NA                0.8422602   0.7812279   0.9080606
12 months   ki1101329-Keneba           Male                 NA                1.0000000   0.9390841   1.0648673
12 months   ki1112895-Guatemala BSC    Female               NA                0.7441860   0.5035661   1.0997818
12 months   ki1112895-Guatemala BSC    Male                 NA                1.0000000   0.7376957   1.3555725
12 months   ki1113344-GMS-Nepal        Female               NA                0.8939125   0.7812237   1.0228564
12 months   ki1113344-GMS-Nepal        Male                 NA                1.0000000   0.8888023   1.1251096
12 months   ki1114097-CMIN             Female               NA                0.8172641   0.7412614   0.9010595
12 months   ki1114097-CMIN             Male                 NA                1.0000000   0.9211078   1.0856493
12 months   ki1114097-CONTENT          Female               NA                0.1531513   0.0747267   0.3138817
12 months   ki1114097-CONTENT          Male                 NA                1.0000000   0.8056390   1.2412508
12 months   ki1126311-ZVITAMBO         Female               NA                0.8184650   0.7575693   0.8842557
12 months   ki1126311-ZVITAMBO         Male                 NA                1.0000000   0.9371852   1.0670250
12 months   ki1135781-COHORTS          Female               NA                0.8614823   0.8314309   0.8926198
12 months   ki1135781-COHORTS          Male                 NA                1.0000000   0.9706206   1.0302686
12 months   ki1148112-LCNI-5           Female               NA                0.6709699   0.5646272   0.7973415
12 months   ki1148112-LCNI-5           Male                 NA                1.0000000   0.8886233   1.1253362
18 months   ki0047075b-MAL-ED          Female               NA                0.8118738   0.7554479   0.8725144
18 months   ki0047075b-MAL-ED          Male                 NA                1.0000000   0.9451321   1.0580531
18 months   ki1000108-CMC-V-BCS-2002   Female               NA                0.9455338   0.8847571   1.0104854
18 months   ki1000108-CMC-V-BCS-2002   Male                 NA                1.0000000   0.9461171   1.0569516
18 months   ki1000108-IRC              Female               NA                0.9078557   0.7927948   1.0396159
18 months   ki1000108-IRC              Male                 NA                1.0000000   0.8960041   1.1160663
18 months   ki1000109-EE               Female               NA                0.9962768   0.9512658   1.0434177
18 months   ki1000109-EE               Male                 NA                1.0000000   0.9565717   1.0453999
18 months   ki1000109-ResPak           Female               NA                0.9876026   0.8502167   1.1471886
18 months   ki1000109-ResPak           Male                 NA                1.0000000   0.8753123   1.1424494
18 months   ki1000304b-SAS-FoodSuppl   Female               NA                1.0238474   0.9348152   1.1213590
18 months   ki1000304b-SAS-FoodSuppl   Male                 NA                1.0000000   0.8942430   1.1182642
18 months   ki1017093-NIH-Birth        Female               NA                0.9214794   0.8323745   1.0201229
18 months   ki1017093-NIH-Birth        Male                 NA                1.0000000   0.9203281   1.0865690
18 months   ki1017093b-PROVIDE         Female               NA                0.7491582   0.5494906   1.0213788
18 months   ki1017093b-PROVIDE         Male                 NA                1.0000000   0.8137514   1.2288765
18 months   ki1017093c-NIH-Crypto      Female               NA                0.8870232   0.7852595   1.0019748
18 months   ki1017093c-NIH-Crypto      Male                 NA                1.0000000   0.8951197   1.1171691
18 months   ki1066203-TanzaniaChild2   Female               NA                0.7493568   0.6129764   0.9160804
18 months   ki1066203-TanzaniaChild2   Male                 NA                1.0000000   0.8630185   1.1587237
18 months   ki1101329-Keneba           Female               NA                0.8442345   0.7916339   0.9003302
18 months   ki1101329-Keneba           Male                 NA                1.0000000   0.9486629   1.0541152
18 months   ki1112895-Guatemala BSC    Female               NA                0.7638889   0.4922500   1.1854265
18 months   ki1112895-Guatemala BSC    Male                 NA                1.0000000   0.7237006   1.3817870
18 months   ki1113344-GMS-Nepal        Female               NA                0.9914988   0.9042688   1.0871433
18 months   ki1113344-GMS-Nepal        Male                 NA                1.0000000   0.9158219   1.0919153
18 months   ki1114097-CMIN             Female               NA                0.8313352   0.7692003   0.8984894
18 months   ki1114097-CMIN             Male                 NA                1.0000000   0.9373242   1.0668667
18 months   ki1114097-CONTENT          Female               NA                0.1831933   0.0979427   0.3426471
18 months   ki1114097-CONTENT          Male                 NA                1.0000000   0.8181830   1.2222205
18 months   ki1126311-ZVITAMBO         Female               NA                0.7850663   0.7304984   0.8437103
18 months   ki1126311-ZVITAMBO         Male                 NA                1.0000000   0.9416097   1.0620112
18 months   ki1135781-COHORTS          Female               NA                0.8856175   0.8497602   0.9229878
18 months   ki1135781-COHORTS          Male                 NA                1.0000000   0.9675558   1.0335321
18 months   ki1148112-LCNI-5           Female               NA                0.8232323   0.7098013   0.9547904
18 months   ki1148112-LCNI-5           Male                 NA                1.0000000   0.8878965   1.1262574
24 months   ki0047075b-MAL-ED          Female               NA                0.8682621   0.8135919   0.9266059
24 months   ki0047075b-MAL-ED          Male                 NA                1.0000000   0.9475406   1.0553638
24 months   ki1000108-CMC-V-BCS-2002   Female               NA                1.0121024   0.9731674   1.0525953
24 months   ki1000108-CMC-V-BCS-2002   Male                 NA                1.0000000   0.9582746   1.0435422
24 months   ki1000108-IRC              Female               NA                0.9162162   0.8165496   1.0280480
24 months   ki1000108-IRC              Male                 NA                1.0000000   0.9116433   1.0969202
24 months   ki1000109-EE               Female               NA                1.0023251   0.9585185   1.0481339
24 months   ki1000109-EE               Male                 NA                1.0000000   0.9566835   1.0452778
24 months   ki1017093-NIH-Birth        Female               NA                0.9983121   0.9251361   1.0772762
24 months   ki1017093-NIH-Birth        Male                 NA                1.0000000   0.9324327   1.0724634
24 months   ki1017093b-PROVIDE         Female               NA                0.8585859   0.6508444   1.1326358
24 months   ki1017093b-PROVIDE         Male                 NA                1.0000000   0.8139067   1.2286420
24 months   ki1017093c-NIH-Crypto      Female               NA                0.9156455   0.8166700   1.0266162
24 months   ki1017093c-NIH-Crypto      Male                 NA                1.0000000   0.8999866   1.1111277
24 months   ki1066203-TanzaniaChild2   Female               NA                0.8106116   0.6565193   1.0008712
24 months   ki1066203-TanzaniaChild2   Male                 NA                1.0000000   0.8493073   1.1774301
24 months   ki1101329-Keneba           Female               NA                0.8681159   0.8205325   0.9184588
24 months   ki1101329-Keneba           Male                 NA                1.0000000   0.9546426   1.0475124
24 months   ki1113344-GMS-Nepal        Female               NA                0.9857054   0.9094521   1.0683521
24 months   ki1113344-GMS-Nepal        Male                 NA                1.0000000   0.9271156   1.0786142
24 months   ki1114097-CMIN             Female               NA                0.8752090   0.8184923   0.9358557
24 months   ki1114097-CMIN             Male                 NA                1.0000000   0.9447116   1.0585240
24 months   ki1114097-CONTENT          Female               NA                0.1818750   0.0973685   0.3397249
24 months   ki1114097-CONTENT          Male                 NA                1.0000000   0.8174392   1.2233326
24 months   ki1126311-ZVITAMBO         Female               NA                0.9821429   0.9110826   1.0587454
24 months   ki1126311-ZVITAMBO         Male                 NA                1.0000000   0.9181567   1.0891387
24 months   ki1135781-COHORTS          Female               NA                0.9387598   0.9111466   0.9672099
24 months   ki1135781-COHORTS          Male                 NA                1.0000000   0.9756501   1.0249577
24 months   ki1148112-LCNI-5           Female               NA                0.8023666   0.7097055   0.9071256
24 months   ki1148112-LCNI-5           Male                 NA                1.0000000   0.9134582   1.0947408


### Parameter: PAR


agecat      studyid                    intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -------------------  ---------------  -----------  -----------  -----------
3 months    ki0047075b-MAL-ED          NA                   NA                -0.0266865   -0.0278996   -0.0254734
3 months    ki1000108-CMC-V-BCS-2002   NA                   NA                -0.0158072   -0.0174289   -0.0141856
3 months    ki1000108-IRC              NA                   NA                -0.0251491   -0.0278370   -0.0224611
3 months    ki1000109-EE               NA                   NA                -0.0496831   -0.0548120   -0.0445542
3 months    ki1000109-ResPak           NA                   NA                -0.0030193   -0.0033920   -0.0026466
3 months    ki1017093-NIH-Birth        NA                   NA                -0.0334486   -0.0362145   -0.0306827
3 months    ki1017093b-PROVIDE         NA                   NA                -0.0230812   -0.0271351   -0.0190274
3 months    ki1017093c-NIH-Crypto      NA                   NA                 0.0031319    0.0029100    0.0033539
3 months    ki1066203-TanzaniaChild2   NA                   NA                -0.0249707   -0.0270209   -0.0229205
3 months    ki1101329-Keneba           NA                   NA                -0.0207206   -0.0216030   -0.0198382
3 months    ki1113344-GMS-Nepal        NA                   NA                -0.0113558   -0.0123197   -0.0103919
3 months    ki1114097-CMIN             NA                   NA                -0.0096428   -0.0101362   -0.0091494
3 months    ki1114097-CONTENT          NA                   NA                -0.1124387   -0.1277149   -0.0971624
3 months    ki1126311-ZVITAMBO         NA                   NA                -0.0144860   -0.0149834   -0.0139885
3 months    ki1135781-COHORTS          NA                   NA                -0.0196218   -0.0200082   -0.0192353
6 months    ki0047075b-MAL-ED          NA                   NA                -0.0494681   -0.0517931   -0.0471432
6 months    ki1000108-CMC-V-BCS-2002   NA                   NA                -0.0615089   -0.0677933   -0.0552245
6 months    ki1000108-IRC              NA                   NA                -0.0224090   -0.0248110   -0.0200069
6 months    ki1000109-EE               NA                   NA                -0.0386227   -0.0426650   -0.0345803
6 months    ki1000109-ResPak           NA                   NA                -0.0226580   -0.0256134   -0.0197025
6 months    ki1000304b-SAS-FoodSuppl   NA                   NA                -0.0687371   -0.0804018   -0.0570723
6 months    ki1017093-NIH-Birth        NA                   NA                -0.0603788   -0.0657759   -0.0549817
6 months    ki1017093b-PROVIDE         NA                   NA                -0.0266328   -0.0313335   -0.0219322
6 months    ki1017093c-NIH-Crypto      NA                   NA                -0.0253599   -0.0271882   -0.0235315
6 months    ki1066203-TanzaniaChild2   NA                   NA                -0.0403699   -0.0438171   -0.0369227
6 months    ki1101329-Keneba           NA                   NA                -0.0283106   -0.0295233   -0.0270979
6 months    ki1112895-Guatemala BSC    NA                   NA                -0.0229249   -0.0269540   -0.0188958
6 months    ki1113344-GMS-Nepal        NA                   NA                -0.0225049   -0.0244154   -0.0205944
6 months    ki1114097-CMIN             NA                   NA                -0.0253747   -0.0266018   -0.0241476
6 months    ki1114097-CONTENT          NA                   NA                -0.1528910   -0.1736632   -0.1321187
6 months    ki1126311-ZVITAMBO         NA                   NA                -0.0203195   -0.0211778   -0.0194612
6 months    ki1135781-COHORTS          NA                   NA                -0.0350238   -0.0363660   -0.0336816
6 months    ki1148112-LCNI-5           NA                   NA                -0.1368003   -0.1621545   -0.1114462
12 months   ki0047075b-MAL-ED          NA                   NA                -0.0463483   -0.0485771   -0.0441195
12 months   ki1000108-CMC-V-BCS-2002   NA                   NA                -0.0645161   -0.0710810   -0.0579512
12 months   ki1000108-IRC              NA                   NA                -0.0304248   -0.0337024   -0.0271473
12 months   ki1000109-EE               NA                   NA                -0.0171947   -0.0189847   -0.0154047
12 months   ki1000109-ResPak           NA                   NA                -0.0066620   -0.0075952   -0.0057288
12 months   ki1000304b-SAS-FoodSuppl   NA                   NA                -0.0151515   -0.0178346   -0.0124684
12 months   ki1017093-NIH-Birth        NA                   NA                -0.0389862   -0.0425870   -0.0353853
12 months   ki1017093b-PROVIDE         NA                   NA                -0.0434031   -0.0512321   -0.0355741
12 months   ki1017093c-NIH-Crypto      NA                   NA                -0.0299997   -0.0321581   -0.0278413
12 months   ki1066203-TanzaniaChild2   NA                   NA                -0.0672784   -0.0733504   -0.0612064
12 months   ki1101329-Keneba           NA                   NA                -0.0335441   -0.0349392   -0.0321490
12 months   ki1112895-Guatemala BSC    NA                   NA                -0.0647059   -0.0783814   -0.0510304
12 months   ki1113344-GMS-Nepal        NA                   NA                -0.0246735   -0.0267429   -0.0226042
12 months   ki1114097-CMIN             NA                   NA                -0.0291860   -0.0304242   -0.0279479
12 months   ki1114097-CONTENT          NA                   NA                -0.1800299   -0.2044893   -0.1555705
12 months   ki1126311-ZVITAMBO         NA                   NA                -0.0370246   -0.0384847   -0.0355645
12 months   ki1135781-COHORTS          NA                   NA                -0.0293939   -0.0299898   -0.0287980
12 months   ki1148112-LCNI-5           NA                   NA                -0.0961290   -0.1054563   -0.0868017
18 months   ki0047075b-MAL-ED          NA                   NA                -0.0549524   -0.0576819   -0.0522229
18 months   ki1000108-CMC-V-BCS-2002   NA                   NA                -0.0237828   -0.0261931   -0.0213724
18 months   ki1000108-IRC              NA                   NA                -0.0243195   -0.0269290   -0.0217100
18 months   ki1000109-EE               NA                   NA                -0.0016678   -0.0018429   -0.0014926
18 months   ki1000109-ResPak           NA                   NA                -0.0038205   -0.0044311   -0.0032099
18 months   ki1000304b-SAS-FoodSuppl   NA                   NA                 0.0115207    0.0093844    0.0136571
18 months   ki1017093-NIH-Birth        NA                   NA                -0.0241747   -0.0264949   -0.0218544
18 months   ki1017093b-PROVIDE         NA                   NA                -0.0540051   -0.0639099   -0.0441003
18 months   ki1017093c-NIH-Crypto      NA                   NA                -0.0268983   -0.0288466   -0.0249500
18 months   ki1066203-TanzaniaChild2   NA                   NA                -0.0566754   -0.0629080   -0.0504428
18 months   ki1101329-Keneba           NA                   NA                -0.0407947   -0.0425202   -0.0390692
18 months   ki1112895-Guatemala BSC    NA                   NA                -0.0693878   -0.0894221   -0.0493534
18 months   ki1113344-GMS-Nepal        NA                   NA                -0.0025692   -0.0027871   -0.0023514
18 months   ki1114097-CMIN             NA                   NA                -0.0374381   -0.0390613   -0.0358149
18 months   ki1114097-CONTENT          NA                   NA                -0.1875161   -0.2131736   -0.1618585
18 months   ki1126311-ZVITAMBO         NA                   NA                -0.0622155   -0.0648902   -0.0595408
18 months   ki1135781-COHORTS          NA                   NA                -0.0370632   -0.0384439   -0.0356824
18 months   ki1148112-LCNI-5           NA                   NA                -0.0556449   -0.0616394   -0.0496504
24 months   ki0047075b-MAL-ED          NA                   NA                -0.0406902   -0.0427577   -0.0386226
24 months   ki1000108-CMC-V-BCS-2002   NA                   NA                 0.0055781    0.0050128    0.0061435
24 months   ki1000108-IRC              NA                   NA                -0.0252033   -0.0278969   -0.0225096
24 months   ki1000109-EE               NA                   NA                 0.0010432    0.0009292    0.0011572
24 months   ki1017093-NIH-Birth        NA                   NA                -0.0005864   -0.0006439   -0.0005288
24 months   ki1017093b-PROVIDE         NA                   NA                -0.0311606   -0.0370116   -0.0253095
24 months   ki1017093c-NIH-Crypto      NA                   NA                -0.0222322   -0.0239533   -0.0205112
24 months   ki1066203-TanzaniaChild2   NA                   NA                -0.0467273   -0.0528658   -0.0405887
24 months   ki1101329-Keneba           NA                   NA                -0.0390985   -0.0407789   -0.0374182
24 months   ki1113344-GMS-Nepal        NA                   NA                -0.0047744   -0.0051829   -0.0043659
24 months   ki1114097-CMIN             NA                   NA                -0.0324055   -0.0338686   -0.0309425
24 months   ki1114097-CONTENT          NA                   NA                -0.2055053   -0.2338406   -0.1771699
24 months   ki1126311-ZVITAMBO         NA                   NA                -0.0075275   -0.0081071   -0.0069479
24 months   ki1135781-COHORTS          NA                   NA                -0.0231909   -0.0240592   -0.0223226
24 months   ki1148112-LCNI-5           NA                   NA                -0.0735470   -0.0810589   -0.0660352


### Parameter: PAF


agecat      studyid                    intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -------------------  ---------------  -----------  -----------  -----------
3 months    ki0047075b-MAL-ED          NA                   NA                -0.1023623   -0.1075037   -0.0972447
3 months    ki1000108-CMC-V-BCS-2002   NA                   NA                -0.0457778   -0.0507005   -0.0408781
3 months    ki1000108-IRC              NA                   NA                -0.0793162   -0.0885047   -0.0702053
3 months    ki1000109-EE               NA                   NA                -0.0781324   -0.0868635   -0.0694713
3 months    ki1000109-ResPak           NA                   NA                -0.0059102   -0.0066443   -0.0051765
3 months    ki1017093-NIH-Birth        NA                   NA                -0.1502797   -0.1646632   -0.1360738
3 months    ki1017093b-PROVIDE         NA                   NA                -0.0918004   -0.1095466   -0.0743380
3 months    ki1017093c-NIH-Crypto      NA                   NA                 0.0196199    0.0182559    0.0209819
3 months    ki1066203-TanzaniaChild2   NA                   NA                -0.2547858   -0.2813106   -0.2288101
3 months    ki1101329-Keneba           NA                   NA                -0.0846522   -0.0885694   -0.0807491
3 months    ki1113344-GMS-Nepal        NA                   NA                -0.0716380   -0.0781742   -0.0651415
3 months    ki1114097-CMIN             NA                   NA                -0.0548045   -0.0577666   -0.0518507
3 months    ki1114097-CONTENT          NA                   NA                -0.6906946   -0.8570317   -0.5392566
3 months    ki1126311-ZVITAMBO         NA                   NA                -0.0690202   -0.0715569   -0.0664896
3 months    ki1135781-COHORTS          NA                   NA                -0.1097165   -0.1121171   -0.1073210
6 months    ki0047075b-MAL-ED          NA                   NA                -0.1485744   -0.1566229   -0.1405819
6 months    ki1000108-CMC-V-BCS-2002   NA                   NA                -0.1200732   -0.1338988   -0.1064162
6 months    ki1000108-IRC              NA                   NA                -0.0528489   -0.0588302   -0.0469013
6 months    ki1000109-EE               NA                   NA                -0.0520081   -0.0577501   -0.0462973
6 months    ki1000109-ResPak           NA                   NA                -0.0382634   -0.0434584   -0.0330943
6 months    ki1000304b-SAS-FoodSuppl   NA                   NA                -0.1678463   -0.2015892   -0.1350510
6 months    ki1017093-NIH-Birth        NA                   NA                -0.1655160   -0.1828879   -0.1483991
6 months    ki1017093b-PROVIDE         NA                   NA                -0.0921053   -0.1100040   -0.0744951
6 months    ki1017093c-NIH-Crypto      NA                   NA                -0.0825878   -0.0890533   -0.0761608
6 months    ki1066203-TanzaniaChild2   NA                   NA                -0.2082038   -0.2298761   -0.1869135
6 months    ki1101329-Keneba           NA                   NA                -0.0876816   -0.0917744   -0.0836041
6 months    ki1112895-Guatemala BSC    NA                   NA                -0.0753247   -0.0896550   -0.0611828
6 months    ki1113344-GMS-Nepal        NA                   NA                -0.0787671   -0.0860047   -0.0715778
6 months    ki1114097-CMIN             NA                   NA                -0.1270793   -0.1340270   -0.1201742
6 months    ki1114097-CONTENT          NA                   NA                -0.6848242   -0.8491083   -0.5351358
6 months    ki1126311-ZVITAMBO         NA                   NA                -0.0685108   -0.0716074   -0.0654231
6 months    ki1135781-COHORTS          NA                   NA                -0.1372543   -0.1432519   -0.1312882
6 months    ki1148112-LCNI-5           NA                   NA                -0.3498932   -0.4403320   -0.2651330
12 months   ki0047075b-MAL-ED          NA                   NA                -0.1077423   -0.1134964   -0.1020179
12 months   ki1000108-CMC-V-BCS-2002   NA                   NA                -0.0923077   -0.1026159   -0.0820958
12 months   ki1000108-IRC              NA                   NA                -0.0599678   -0.0668374   -0.0531424
12 months   ki1000109-EE               NA                   NA                -0.0208234   -0.0230387   -0.0186129
12 months   ki1000109-ResPak           NA                   NA                -0.0105673   -0.0120644   -0.0090725
12 months   ki1000304b-SAS-FoodSuppl   NA                   NA                -0.0178571   -0.0210809   -0.0146435
12 months   ki1017093-NIH-Birth        NA                   NA                -0.0764186   -0.0840430   -0.0688477
12 months   ki1017093b-PROVIDE         NA                   NA                -0.1232339   -0.1484816   -0.0985412
12 months   ki1017093c-NIH-Crypto      NA                   NA                -0.0789524   -0.0850987   -0.0728409
12 months   ki1066203-TanzaniaChild2   NA                   NA                -0.2112030   -0.2345117   -0.1883344
12 months   ki1101329-Keneba           NA                   NA                -0.0823576   -0.0860713   -0.0786565
12 months   ki1112895-Guatemala BSC    NA                   NA                -0.1486486   -0.1853082   -0.1131229
12 months   ki1113344-GMS-Nepal        NA                   NA                -0.0541887   -0.0589905   -0.0494086
12 months   ki1114097-CMIN             NA                   NA                -0.0974304   -0.1019757   -0.0929039
12 months   ki1114097-CONTENT          NA                   NA                -0.7167856   -0.8923859   -0.5574798
12 months   ki1126311-ZVITAMBO         NA                   NA                -0.0981924   -0.1024531   -0.0939481
12 months   ki1135781-COHORTS          NA                   NA                -0.0706513   -0.0721860   -0.0691188
12 months   ki1148112-LCNI-5           NA                   NA                -0.1986667   -0.2219968   -0.1757819
18 months   ki0047075b-MAL-ED          NA                   NA                -0.1017754   -0.1073592   -0.0962198
18 months   ki1000108-CMC-V-BCS-2002   NA                   NA                -0.0280727   -0.0310018   -0.0251519
18 months   ki1000108-IRC              NA                   NA                -0.0432464   -0.0480986   -0.0384166
18 months   ki1000109-EE               NA                   NA                -0.0018290   -0.0020215   -0.0016366
18 months   ki1000109-ResPak           NA                   NA                -0.0056238   -0.0065280   -0.0047203
18 months   ki1000304b-SAS-FoodSuppl   NA                   NA                 0.0129088    0.0105431    0.0152688
18 months   ki1017093-NIH-Birth        NA                   NA                -0.0371976   -0.0409072   -0.0335012
18 months   ki1017093b-PROVIDE         NA                   NA                -0.1195827   -0.1444086   -0.0952952
18 months   ki1017093c-NIH-Crypto      NA                   NA                -0.0606697   -0.0653410   -0.0560189
18 months   ki1066203-TanzaniaChild2   NA                   NA                -0.1333539   -0.1500969   -0.1168546
18 months   ki1101329-Keneba           NA                   NA                -0.0816608   -0.0854034   -0.0779312
18 months   ki1112895-Guatemala BSC    NA                   NA                -0.1307692   -0.1742799   -0.0888707
18 months   ki1113344-GMS-Nepal        NA                   NA                -0.0041194   -0.0044702   -0.0037688
18 months   ki1114097-CMIN             NA                   NA                -0.0896676   -0.0939121   -0.0854395
18 months   ki1114097-CONTENT          NA                   NA                -0.6688073   -0.8287290   -0.5228708
18 months   ki1126311-ZVITAMBO         NA                   NA                -0.1280867   -0.1343158   -0.1218919
18 months   ki1135781-COHORTS          NA                   NA                -0.0572086   -0.0594641   -0.0549579
18 months   ki1148112-LCNI-5           NA                   NA                -0.0976018   -0.1092033   -0.0861216
24 months   ki0047075b-MAL-ED          NA                   NA                -0.0692407   -0.0730092   -0.0654855
24 months   ki1000108-CMC-V-BCS-2002   NA                   NA                 0.0060309    0.0054231    0.0066382
24 months   ki1000108-IRC              NA                   NA                -0.0392902   -0.0436637   -0.0349351
24 months   ki1000109-EE               NA                   NA                 0.0011338    0.0010100    0.0012576
24 months   ki1017093-NIH-Birth        NA                   NA                -0.0007763   -0.0008526   -0.0007001
24 months   ki1017093b-PROVIDE         NA                   NA                -0.0640523   -0.0769271   -0.0513314
24 months   ki1017093c-NIH-Crypto      NA                   NA                -0.0443246   -0.0479141   -0.0407475
24 months   ki1066203-TanzaniaChild2   NA                   NA                -0.0981665   -0.1124203   -0.0840954
24 months   ki1101329-Keneba           NA                   NA                -0.0683760   -0.0715202   -0.0652410
24 months   ki1113344-GMS-Nepal        NA                   NA                -0.0069180   -0.0075142   -0.0063222
24 months   ki1114097-CMIN             NA                   NA                -0.0644249   -0.0675255   -0.0613333
24 months   ki1114097-CONTENT          NA                   NA                -0.7102550   -0.8862175   -0.5507078
24 months   ki1126311-ZVITAMBO         NA                   NA                -0.0104586   -0.0112726   -0.0096452
24 months   ki1135781-COHORTS          NA                   NA                -0.0299168   -0.0310710   -0.0287638
24 months   ki1148112-LCNI-5           NA                   NA                -0.1120566   -0.1248573   -0.0994016


