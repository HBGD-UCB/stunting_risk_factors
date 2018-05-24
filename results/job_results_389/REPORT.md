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

**Intervention Variable:** birthwt

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
* agecat: 12 months, studyid: ki1017093c-NIH-Crypto
* agecat: 12 months, studyid: ki1066203-TanzaniaChild2
* agecat: 12 months, studyid: ki1101329-Keneba
* agecat: 12 months, studyid: ki1119695-PROBIT
* agecat: 12 months, studyid: ki1126311-ZVITAMBO
* agecat: 12 months, studyid: ki1135781-COHORTS
* agecat: 12 months, studyid: kiGH5241-JiVitA-3
* agecat: 12 months, studyid: kiGH5241-JiVitA-4
* agecat: 18 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 18 months, studyid: ki1000108-IRC
* agecat: 18 months, studyid: ki1000109-EE
* agecat: 18 months, studyid: ki1000304b-SAS-CompFeed
* agecat: 18 months, studyid: ki1017093c-NIH-Crypto
* agecat: 18 months, studyid: ki1066203-TanzaniaChild2
* agecat: 18 months, studyid: ki1101329-Keneba
* agecat: 18 months, studyid: ki1119695-PROBIT
* agecat: 18 months, studyid: ki1126311-ZVITAMBO
* agecat: 18 months, studyid: ki1135781-COHORTS
* agecat: 18 months, studyid: kiGH5241-JiVitA-3
* agecat: 18 months, studyid: kiGH5241-JiVitA-4
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 24 months, studyid: ki1000108-IRC
* agecat: 24 months, studyid: ki1000109-EE
* agecat: 24 months, studyid: ki1000304b-SAS-CompFeed
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2
* agecat: 24 months, studyid: ki1101329-Keneba
* agecat: 24 months, studyid: ki1119695-PROBIT
* agecat: 24 months, studyid: ki1126311-ZVITAMBO
* agecat: 24 months, studyid: ki1135781-COHORTS
* agecat: 24 months, studyid: kiGH5241-JiVitA-3
* agecat: 24 months, studyid: kiGH5241-JiVitA-4
* agecat: 3 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 3 months, studyid: ki1000108-IRC
* agecat: 3 months, studyid: ki1000109-EE
* agecat: 3 months, studyid: ki1000304b-SAS-CompFeed
* agecat: 3 months, studyid: ki1017093c-NIH-Crypto
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2
* agecat: 3 months, studyid: ki1101329-Keneba
* agecat: 3 months, studyid: ki1119695-PROBIT
* agecat: 3 months, studyid: ki1126311-ZVITAMBO
* agecat: 3 months, studyid: ki1135781-COHORTS
* agecat: 3 months, studyid: kiGH5241-JiVitA-3
* agecat: 3 months, studyid: kiGH5241-JiVitA-4
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 6 months, studyid: ki1000108-IRC
* agecat: 6 months, studyid: ki1000109-EE
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2
* agecat: 6 months, studyid: ki1101329-Keneba
* agecat: 6 months, studyid: ki1119695-PROBIT
* agecat: 6 months, studyid: ki1126311-ZVITAMBO
* agecat: 6 months, studyid: ki1135781-COHORTS
* agecat: 6 months, studyid: kiGH5241-JiVitA-3
* agecat: 6 months, studyid: kiGH5241-JiVitA-4

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002
* agecat: 24 months, studyid: ki1000109-EE
* agecat: 24 months, studyid: ki1000304b-SAS-CompFeed
* agecat: 24 months, studyid: kiGH5241-JiVitA-3
* agecat: 3 months, studyid: ki1017093c-NIH-Crypto
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto

## Methods Detail

**todo**




# Results Detail

## Results Plots
![](/tmp/b2d20b93-ff7f-4741-bfa6-0647a9a7766e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/b2d20b93-ff7f-4741-bfa6-0647a9a7766e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/b2d20b93-ff7f-4741-bfa6-0647a9a7766e/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/b2d20b93-ff7f-4741-bfa6-0647a9a7766e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Data Summary

agecat      studyid                    A                n     nA   nAY0   nAY1
----------  -------------------------  ----------  ------  -----  -----  -----
12 months   ki1000108-CMC-V-BCS-2002   <=2600         372     91     14     77
12 months   ki1000108-CMC-V-BCS-2002   >3310          372     64     28     36
12 months   ki1000108-CMC-V-BCS-2002   2600-2970      372     84     24     60
12 months   ki1000108-CMC-V-BCS-2002   2970-3310      372    133     46     87
12 months   ki1000108-IRC              <=2600         402    101     34     67
12 months   ki1000108-IRC              >3310          402     60     46     14
12 months   ki1000108-IRC              2600-2970      402    124     49     75
12 months   ki1000108-IRC              2970-3310      402    117     71     46
12 months   ki1000109-EE               <=2600         373    176      9    167
12 months   ki1000109-EE               >3310          373     34     18     16
12 months   ki1000109-EE               2600-2970      373     94     22     72
12 months   ki1000109-EE               2970-3310      373     69     16     53
12 months   ki1000304b-SAS-CompFeed    <=2600         887    351     61    290
12 months   ki1000304b-SAS-CompFeed    >3310          887     78     53     25
12 months   ki1000304b-SAS-CompFeed    2600-2970      887    252    121    131
12 months   ki1000304b-SAS-CompFeed    2970-3310      887    206    133     73
12 months   ki1017093c-NIH-Crypto      <=2600         729    251     95    156
12 months   ki1017093c-NIH-Crypto      >3310          729     84     74     10
12 months   ki1017093c-NIH-Crypto      2600-2970      729    222    147     75
12 months   ki1017093c-NIH-Crypto      2970-3310      729    172    136     36
12 months   ki1066203-TanzaniaChild2   <=2600         490     40     18     22
12 months   ki1066203-TanzaniaChild2   >3310          490    200    158     42
12 months   ki1066203-TanzaniaChild2   2600-2970      490     56     29     27
12 months   ki1066203-TanzaniaChild2   2970-3310      490    194    130     64
12 months   ki1101329-Keneba           <=2600        1885    354    116    238
12 months   ki1101329-Keneba           >3310         1885    341    256     85
12 months   ki1101329-Keneba           2600-2970     1885    586    301    285
12 months   ki1101329-Keneba           2970-3310     1885    604    413    191
12 months   ki1119695-PROBIT           <=2600        7943    141     47     94
12 months   ki1119695-PROBIT           >3310         7943   4723   4430    293
12 months   ki1119695-PROBIT           2600-2970     7943    869    537    332
12 months   ki1119695-PROBIT           2970-3310     7943   2210   1772    438
12 months   ki1126311-ZVITAMBO         <=2600        2541    484    149    335
12 months   ki1126311-ZVITAMBO         >3310         2541    556    452    104
12 months   ki1126311-ZVITAMBO         2600-2970     2541    691    394    297
12 months   ki1126311-ZVITAMBO         2970-3310     2541    810    588    222
12 months   ki1135781-COHORTS          <=2600        9423   2838   1040   1798
12 months   ki1135781-COHORTS          >3310         9423   1242   1007    235
12 months   ki1135781-COHORTS          2600-2970     9423   2609   1554   1055
12 months   ki1135781-COHORTS          2970-3310     9423   2734   1941    793
12 months   kiGH5241-JiVitA-3          <=2600        8340   4054   1193   2861
12 months   kiGH5241-JiVitA-3          >3310         8340    893    731    162
12 months   kiGH5241-JiVitA-3          2600-2970     8340   2399   1796    603
12 months   kiGH5241-JiVitA-3          2970-3310     8340    994    845    149
12 months   kiGH5241-JiVitA-4          <=2600        1175    382    102    280
12 months   kiGH5241-JiVitA-4          >3310         1175    287    215     72
12 months   kiGH5241-JiVitA-4          2600-2970     1175    307    195    112
12 months   kiGH5241-JiVitA-4          2970-3310     1175    199    147     52
18 months   ki1000108-CMC-V-BCS-2002   <=2600         373     91      5     86
18 months   ki1000108-CMC-V-BCS-2002   >3310          373     65     13     52
18 months   ki1000108-CMC-V-BCS-2002   2600-2970      373     84     15     69
18 months   ki1000108-CMC-V-BCS-2002   2970-3310      373    133     24    109
18 months   ki1000108-IRC              <=2600         403    102     29     73
18 months   ki1000108-IRC              >3310          403     60     46     14
18 months   ki1000108-IRC              2600-2970      403    124     45     79
18 months   ki1000108-IRC              2970-3310      403    117     58     59
18 months   ki1000109-EE               <=2600         363    170      6    164
18 months   ki1000109-EE               >3310          363     32      7     25
18 months   ki1000109-EE               2600-2970      363     93     13     80
18 months   ki1000109-EE               2970-3310      363     68      6     62
18 months   ki1000304b-SAS-CompFeed    <=2600         856    337     37    300
18 months   ki1000304b-SAS-CompFeed    >3310          856     73     34     39
18 months   ki1000304b-SAS-CompFeed    2600-2970      856    245     74    171
18 months   ki1000304b-SAS-CompFeed    2970-3310      856    201     99    102
18 months   ki1017093c-NIH-Crypto      <=2600         715    249     79    170
18 months   ki1017093c-NIH-Crypto      >3310          715     80     68     12
18 months   ki1017093c-NIH-Crypto      2600-2970      715    218    133     85
18 months   ki1017093c-NIH-Crypto      2970-3310      715    168    118     50
18 months   ki1066203-TanzaniaChild2   <=2600         355     26     10     16
18 months   ki1066203-TanzaniaChild2   >3310          355    134     93     41
18 months   ki1066203-TanzaniaChild2   2600-2970      355     40     19     21
18 months   ki1066203-TanzaniaChild2   2970-3310      355    155     82     73
18 months   ki1101329-Keneba           <=2600        1819    340     84    256
18 months   ki1101329-Keneba           >3310         1819    331    229    102
18 months   ki1101329-Keneba           2600-2970     1819    568    243    325
18 months   ki1101329-Keneba           2970-3310     1819    580    328    252
18 months   ki1119695-PROBIT           <=2600        7475    134     43     91
18 months   ki1119695-PROBIT           >3310         7475   4436   4117    319
18 months   ki1119695-PROBIT           2600-2970     7475    810    491    319
18 months   ki1119695-PROBIT           2970-3310     7475   2095   1654    441
18 months   ki1126311-ZVITAMBO         <=2600        1854    395     87    308
18 months   ki1126311-ZVITAMBO         >3310         1854    338    242     96
18 months   ki1126311-ZVITAMBO         2600-2970     1854    546    258    288
18 months   ki1126311-ZVITAMBO         2970-3310     1854    575    366    209
18 months   ki1135781-COHORTS          <=2600        2915    509     68    441
18 months   ki1135781-COHORTS          >3310         2915    577    301    276
18 months   ki1135781-COHORTS          2600-2970     2915    781    262    519
18 months   ki1135781-COHORTS          2970-3310     2915   1048    427    621
18 months   kiGH5241-JiVitA-3          <=2600        7298   3574    835   2739
18 months   kiGH5241-JiVitA-3          >3310         7298    757    546    211
18 months   kiGH5241-JiVitA-3          2600-2970     7298   2094   1288    806
18 months   kiGH5241-JiVitA-3          2970-3310     7298    873    657    216
18 months   kiGH5241-JiVitA-4          <=2600        1144    375     72    303
18 months   kiGH5241-JiVitA-4          >3310         1144    273    164    109
18 months   kiGH5241-JiVitA-4          2600-2970     1144    305    152    153
18 months   kiGH5241-JiVitA-4          2970-3310     1144    191    123     68
24 months   ki1000108-CMC-V-BCS-2002   <=2600         373     91      2     89
24 months   ki1000108-CMC-V-BCS-2002   >3310          373     65      8     57
24 months   ki1000108-CMC-V-BCS-2002   2600-2970      373     84      6     78
24 months   ki1000108-CMC-V-BCS-2002   2970-3310      373    133     12    121
24 months   ki1000108-IRC              <=2600         404    103     25     78
24 months   ki1000108-IRC              >3310          404     60     39     21
24 months   ki1000108-IRC              2600-2970      404    124     37     87
24 months   ki1000108-IRC              2970-3310      404    117     45     72
24 months   ki1000109-EE               <=2600         338    156      4    152
24 months   ki1000109-EE               >3310          338     31      6     25
24 months   ki1000109-EE               2600-2970      338     87     12     75
24 months   ki1000109-EE               2970-3310      338     64      5     59
24 months   ki1000304b-SAS-CompFeed    <=2600          74     28      1     27
24 months   ki1000304b-SAS-CompFeed    >3310           74      5      2      3
24 months   ki1000304b-SAS-CompFeed    2600-2970       74     23      8     15
24 months   ki1000304b-SAS-CompFeed    2970-3310       74     18     10      8
24 months   ki1017093c-NIH-Crypto      <=2600         634    229     65    164
24 months   ki1017093c-NIH-Crypto      >3310          634     65     51     14
24 months   ki1017093c-NIH-Crypto      2600-2970      634    194    106     88
24 months   ki1017093c-NIH-Crypto      2970-3310      634    146     94     52
24 months   ki1066203-TanzaniaChild2   <=2600         248     18      6     12
24 months   ki1066203-TanzaniaChild2   >3310          248     92     57     35
24 months   ki1066203-TanzaniaChild2   2600-2970      248     31     11     20
24 months   ki1066203-TanzaniaChild2   2970-3310      248    107     55     52
24 months   ki1101329-Keneba           <=2600        1787    339     70    269
24 months   ki1101329-Keneba           >3310         1787    323    200    123
24 months   ki1101329-Keneba           2600-2970     1787    555    187    368
24 months   ki1101329-Keneba           2970-3310     1787    570    282    288
24 months   ki1119695-PROBIT           <=2600        2076     35     10     25
24 months   ki1119695-PROBIT           >3310         2076   1231   1078    153
24 months   ki1119695-PROBIT           2600-2970     2076    230    135     95
24 months   ki1119695-PROBIT           2970-3310     2076    580    425    155
24 months   ki1126311-ZVITAMBO         <=2600         470    102     11     91
24 months   ki1126311-ZVITAMBO         >3310          470     64     29     35
24 months   ki1126311-ZVITAMBO         2600-2970      470    169     36    133
24 months   ki1126311-ZVITAMBO         2970-3310      470    135     56     79
24 months   ki1135781-COHORTS          <=2600        2833    490     39    451
24 months   ki1135781-COHORTS          >3310         2833    543    206    337
24 months   ki1135781-COHORTS          2600-2970     2833    774    153    621
24 months   ki1135781-COHORTS          2970-3310     2833   1026    264    762
24 months   kiGH5241-JiVitA-3          <=2600           3      2      1      1
24 months   kiGH5241-JiVitA-3          >3310            3      0      0      0
24 months   kiGH5241-JiVitA-3          2600-2970        3      1      1      0
24 months   kiGH5241-JiVitA-3          2970-3310        3      0      0      0
24 months   kiGH5241-JiVitA-4          <=2600        1006    336     57    279
24 months   kiGH5241-JiVitA-4          >3310         1006    233    128    105
24 months   kiGH5241-JiVitA-4          2600-2970     1006    270    123    147
24 months   kiGH5241-JiVitA-4          2970-3310     1006    167     94     73
3 months    ki1000108-CMC-V-BCS-2002   <=2600         362     89     35     54
3 months    ki1000108-CMC-V-BCS-2002   >3310          362     64     54     10
3 months    ki1000108-CMC-V-BCS-2002   2600-2970      362     83     50     33
3 months    ki1000108-CMC-V-BCS-2002   2970-3310      362    126     98     28
3 months    ki1000108-IRC              <=2600         404    103     46     57
3 months    ki1000108-IRC              >3310          404     60     54      6
3 months    ki1000108-IRC              2600-2970      404    124     84     40
3 months    ki1000108-IRC              2970-3310      404    117     93     24
3 months    ki1000109-EE               <=2600         379    179     35    144
3 months    ki1000109-EE               >3310          379     34     26      8
3 months    ki1000109-EE               2600-2970      379     96     39     57
3 months    ki1000109-EE               2970-3310      379     70     38     32
3 months    ki1000304b-SAS-CompFeed    <=2600         972    389    157    232
3 months    ki1000304b-SAS-CompFeed    >3310          972     83     77      6
3 months    ki1000304b-SAS-CompFeed    2600-2970      972    275    212     63
3 months    ki1000304b-SAS-CompFeed    2970-3310      972    225    203     22
3 months    ki1017093c-NIH-Crypto      <=2600         758    263    170     93
3 months    ki1017093c-NIH-Crypto      >3310          758     87     85      2
3 months    ki1017093c-NIH-Crypto      2600-2970      758    230    210     20
3 months    ki1017093c-NIH-Crypto      2970-3310      758    178    172      6
3 months    ki1066203-TanzaniaChild2   <=2600         596     51     33     18
3 months    ki1066203-TanzaniaChild2   >3310          596    240    234      6
3 months    ki1066203-TanzaniaChild2   2600-2970      596     72     57     15
3 months    ki1066203-TanzaniaChild2   2970-3310      596    233    214     19
3 months    ki1101329-Keneba           <=2600        1917    372    172    200
3 months    ki1101329-Keneba           >3310         1917    332    309     23
3 months    ki1101329-Keneba           2600-2970     1917    595    446    149
3 months    ki1101329-Keneba           2970-3310     1917    618    533     85
3 months    ki1119695-PROBIT           <=2600        8125    149     67     82
3 months    ki1119695-PROBIT           >3310         8125   4808   4740     68
3 months    ki1119695-PROBIT           2600-2970     8125    888    665    223
3 months    ki1119695-PROBIT           2970-3310     8125   2280   2051    229
3 months    ki1126311-ZVITAMBO         <=2600        3494    709    340    369
3 months    ki1126311-ZVITAMBO         >3310         3494    758    719     39
3 months    ki1126311-ZVITAMBO         2600-2970     3494    945    738    207
3 months    ki1126311-ZVITAMBO         2970-3310     3494   1082    963    119
3 months    ki1135781-COHORTS          <=2600       10087   3078   1807   1271
3 months    ki1135781-COHORTS          >3310        10087   1329   1296     33
3 months    ki1135781-COHORTS          2600-2970    10087   2790   2457    333
3 months    ki1135781-COHORTS          2970-3310    10087   2890   2727    163
3 months    kiGH5241-JiVitA-3          <=2600       13345   6742   2261   4481
3 months    kiGH5241-JiVitA-3          >3310        13345   1350   1177    173
3 months    kiGH5241-JiVitA-3          2600-2970    13345   3712   3101    611
3 months    kiGH5241-JiVitA-3          2970-3310    13345   1541   1420    121
3 months    kiGH5241-JiVitA-4          <=2600        1156    381    159    222
3 months    kiGH5241-JiVitA-4          >3310         1156    270    240     30
3 months    kiGH5241-JiVitA-4          2600-2970     1156    306    255     51
3 months    kiGH5241-JiVitA-4          2970-3310     1156    199    186     13
6 months    ki1000108-CMC-V-BCS-2002   <=2600         367     90     22     68
6 months    ki1000108-CMC-V-BCS-2002   >3310          367     64     42     22
6 months    ki1000108-CMC-V-BCS-2002   2600-2970      367     84     38     46
6 months    ki1000108-CMC-V-BCS-2002   2970-3310      367    129     77     52
6 months    ki1000108-IRC              <=2600         402    102     41     61
6 months    ki1000108-IRC              >3310          402     60     50     10
6 months    ki1000108-IRC              2600-2970      402    124     63     61
6 months    ki1000108-IRC              2970-3310      402    116     80     36
6 months    ki1000109-EE               <=2600         373    177     18    159
6 months    ki1000109-EE               >3310          373     32     20     12
6 months    ki1000109-EE               2600-2970      373     95     29     66
6 months    ki1000109-EE               2970-3310      373     69     29     40
6 months    ki1000304b-SAS-CompFeed    <=2600         807    322     96    226
6 months    ki1000304b-SAS-CompFeed    >3310          807     68     59      9
6 months    ki1000304b-SAS-CompFeed    2600-2970      807    233    159     74
6 months    ki1000304b-SAS-CompFeed    2970-3310      807    184    150     34
6 months    ki1017093c-NIH-Crypto      <=2600         736    256    116    140
6 months    ki1017093c-NIH-Crypto      >3310          736     85     83      2
6 months    ki1017093c-NIH-Crypto      2600-2970      736    222    162     60
6 months    ki1017093c-NIH-Crypto      2970-3310      736    173    149     24
6 months    ki1066203-TanzaniaChild2   <=2600         551     48     27     21
6 months    ki1066203-TanzaniaChild2   >3310          551    228    206     22
6 months    ki1066203-TanzaniaChild2   2600-2970      551     64     43     21
6 months    ki1066203-TanzaniaChild2   2970-3310      551    211    170     41
6 months    ki1101329-Keneba           <=2600        1825    353    143    210
6 months    ki1101329-Keneba           >3310         1825    331    288     43
6 months    ki1101329-Keneba           2600-2970     1825    562    355    207
6 months    ki1101329-Keneba           2970-3310     1825    579    451    128
6 months    ki1119695-PROBIT           <=2600        7807    141     56     85
6 months    ki1119695-PROBIT           >3310         7807   4629   4490    139
6 months    ki1119695-PROBIT           2600-2970     7807    850    585    265
6 months    ki1119695-PROBIT           2970-3310     7807   2187   1862    325
6 months    ki1126311-ZVITAMBO         <=2600        2278    442    156    286
6 months    ki1126311-ZVITAMBO         >3310         2278    503    454     49
6 months    ki1126311-ZVITAMBO         2600-2970     2278    605    402    203
6 months    ki1126311-ZVITAMBO         2970-3310     2278    728    590    138
6 months    ki1135781-COHORTS          <=2600        2889    504    210    294
6 months    ki1135781-COHORTS          >3310         2889    555    519     36
6 months    ki1135781-COHORTS          2600-2970     2889    777    559    218
6 months    ki1135781-COHORTS          2970-3310     2889   1053    870    183
6 months    kiGH5241-JiVitA-3          <=2600        9581   4749   1507   3242
6 months    kiGH5241-JiVitA-3          >3310         9581   1054    889    165
6 months    kiGH5241-JiVitA-3          2600-2970     9581   2696   2147    549
6 months    kiGH5241-JiVitA-3          2970-3310     9581   1082    959    123
6 months    kiGH5241-JiVitA-4          <=2600        1021    334    114    220
6 months    kiGH5241-JiVitA-4          >3310         1021    246    202     44
6 months    kiGH5241-JiVitA-4          2600-2970     1021    273    218     55
6 months    kiGH5241-JiVitA-4          2970-3310     1021    168    141     27

## Results Table

### Parameter: TSM


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
12 months   ki1000108-CMC-V-BCS-2002   <=2600               NA                0.8461538   0.7719238   0.9203839
12 months   ki1000108-CMC-V-BCS-2002   >3310                NA                0.5625000   0.4407993   0.6842007
12 months   ki1000108-CMC-V-BCS-2002   2600-2970            NA                0.7142857   0.6175482   0.8110232
12 months   ki1000108-CMC-V-BCS-2002   2970-3310            NA                0.6541353   0.5731897   0.7350810
12 months   ki1000108-IRC              <=2600               NA                0.6633663   0.5710914   0.7556413
12 months   ki1000108-IRC              >3310                NA                0.2333333   0.1261802   0.3404865
12 months   ki1000108-IRC              2600-2970            NA                0.6048387   0.5186828   0.6909946
12 months   ki1000108-IRC              2970-3310            NA                0.3931624   0.3045452   0.4817796
12 months   ki1000109-EE               <=2600               NA                0.9488636   0.9162769   0.9814504
12 months   ki1000109-EE               >3310                NA                0.4705882   0.3025884   0.6385881
12 months   ki1000109-EE               2600-2970            NA                0.7659574   0.6802503   0.8516646
12 months   ki1000109-EE               2970-3310            NA                0.7681159   0.6684021   0.8678298
12 months   ki1000304b-SAS-CompFeed    <=2600               NA                0.8262108   0.7865468   0.8658748
12 months   ki1000304b-SAS-CompFeed    >3310                NA                0.3205128   0.2168891   0.4241365
12 months   ki1000304b-SAS-CompFeed    2600-2970            NA                0.5198413   0.4581220   0.5815605
12 months   ki1000304b-SAS-CompFeed    2970-3310            NA                0.3543689   0.2890138   0.4197240
12 months   ki1017093c-NIH-Crypto      <=2600               NA                0.6215139   0.5614713   0.6815566
12 months   ki1017093c-NIH-Crypto      >3310                NA                0.1190476   0.0497460   0.1883492
12 months   ki1017093c-NIH-Crypto      2600-2970            NA                0.3378378   0.2755783   0.4000974
12 months   ki1017093c-NIH-Crypto      2970-3310            NA                0.2093023   0.1484644   0.2701402
12 months   ki1066203-TanzaniaChild2   <=2600               NA                0.5500000   0.3956704   0.7043296
12 months   ki1066203-TanzaniaChild2   >3310                NA                0.2100000   0.1534933   0.2665067
12 months   ki1066203-TanzaniaChild2   2600-2970            NA                0.4821429   0.3511371   0.6131487
12 months   ki1066203-TanzaniaChild2   2970-3310            NA                0.3298969   0.2636675   0.3961263
12 months   ki1101329-Keneba           <=2600               NA                0.6723164   0.6234088   0.7212239
12 months   ki1101329-Keneba           >3310                NA                0.2492669   0.2033406   0.2951931
12 months   ki1101329-Keneba           2600-2970            NA                0.4863481   0.4458698   0.5268265
12 months   ki1101329-Keneba           2970-3310            NA                0.3162252   0.2791315   0.3533188
12 months   ki1119695-PROBIT           <=2600               NA                0.6666667   0.5888523   0.7444810
12 months   ki1119695-PROBIT           >3310                NA                0.0620368   0.0551569   0.0689168
12 months   ki1119695-PROBIT           2600-2970            NA                0.3820483   0.3497409   0.4143557
12 months   ki1119695-PROBIT           2970-3310            NA                0.1981900   0.1815691   0.2148110
12 months   ki1126311-ZVITAMBO         <=2600               NA                0.6921488   0.6510166   0.7332809
12 months   ki1126311-ZVITAMBO         >3310                NA                0.1870504   0.1546308   0.2194699
12 months   ki1126311-ZVITAMBO         2600-2970            NA                0.4298119   0.3928935   0.4667303
12 months   ki1126311-ZVITAMBO         2970-3310            NA                0.2740741   0.2433505   0.3047976
12 months   ki1135781-COHORTS          <=2600               NA                0.6335447   0.6158166   0.6512729
12 months   ki1135781-COHORTS          >3310                NA                0.1892110   0.1674270   0.2109949
12 months   ki1135781-COHORTS          2600-2970            NA                0.4043695   0.3855368   0.4232022
12 months   ki1135781-COHORTS          2970-3310            NA                0.2900512   0.2730405   0.3070619
12 months   kiGH5241-JiVitA-3          <=2600               NA                0.7057227   0.6916937   0.7197518
12 months   kiGH5241-JiVitA-3          >3310                NA                0.1814110   0.1561347   0.2066873
12 months   kiGH5241-JiVitA-3          2600-2970            NA                0.2513547   0.2339951   0.2687144
12 months   kiGH5241-JiVitA-3          2970-3310            NA                0.1498994   0.1277064   0.1720924
12 months   kiGH5241-JiVitA-4          <=2600               NA                0.7329843   0.6886013   0.7773673
12 months   kiGH5241-JiVitA-4          >3310                NA                0.2508711   0.2006951   0.3010470
12 months   kiGH5241-JiVitA-4          2600-2970            NA                0.3648208   0.3109503   0.4186914
12 months   kiGH5241-JiVitA-4          2970-3310            NA                0.2613065   0.2002385   0.3223745
18 months   ki1000108-CMC-V-BCS-2002   <=2600               NA                0.9450549   0.8981733   0.9919366
18 months   ki1000108-CMC-V-BCS-2002   >3310                NA                0.8000000   0.7026279   0.8973721
18 months   ki1000108-CMC-V-BCS-2002   2600-2970            NA                0.8214286   0.7394156   0.9034415
18 months   ki1000108-CMC-V-BCS-2002   2970-3310            NA                0.8195489   0.7541045   0.8849933
18 months   ki1000108-IRC              <=2600               NA                0.7156863   0.6280371   0.8033354
18 months   ki1000108-IRC              >3310                NA                0.2333333   0.1261805   0.3404862
18 months   ki1000108-IRC              2600-2970            NA                0.6370968   0.5523594   0.7218341
18 months   ki1000108-IRC              2970-3310            NA                0.5042735   0.4135648   0.5949822
18 months   ki1000109-EE               <=2600               NA                0.9647059   0.9369298   0.9924820
18 months   ki1000109-EE               >3310                NA                0.7812500   0.6378196   0.9246804
18 months   ki1000109-EE               2600-2970            NA                0.8602151   0.7896419   0.9307882
18 months   ki1000109-EE               2970-3310            NA                0.9117647   0.8442567   0.9792727
18 months   ki1000304b-SAS-CompFeed    <=2600               NA                0.8902077   0.8568099   0.9236056
18 months   ki1000304b-SAS-CompFeed    >3310                NA                0.5342466   0.4197508   0.6487423
18 months   ki1000304b-SAS-CompFeed    2600-2970            NA                0.6979592   0.6404328   0.7554855
18 months   ki1000304b-SAS-CompFeed    2970-3310            NA                0.5074627   0.4383074   0.5766180
18 months   ki1017093c-NIH-Crypto      <=2600               NA                0.6827309   0.6248826   0.7405793
18 months   ki1017093c-NIH-Crypto      >3310                NA                0.1500000   0.0716999   0.2283001
18 months   ki1017093c-NIH-Crypto      2600-2970            NA                0.3899083   0.3251191   0.4546974
18 months   ki1017093c-NIH-Crypto      2970-3310            NA                0.2976190   0.2284337   0.3668044
18 months   ki1066203-TanzaniaChild2   <=2600               NA                0.6153846   0.4281179   0.8026513
18 months   ki1066203-TanzaniaChild2   >3310                NA                0.3059701   0.2278367   0.3841036
18 months   ki1066203-TanzaniaChild2   2600-2970            NA                0.5250000   0.3700266   0.6799734
18 months   ki1066203-TanzaniaChild2   2970-3310            NA                0.4709677   0.3922756   0.5496599
18 months   ki1101329-Keneba           <=2600               NA                0.7529412   0.7070838   0.7987985
18 months   ki1101329-Keneba           >3310                NA                0.3081571   0.2584013   0.3579129
18 months   ki1101329-Keneba           2600-2970            NA                0.5721831   0.5314835   0.6128827
18 months   ki1101329-Keneba           2970-3310            NA                0.4344828   0.3941310   0.4748345
18 months   ki1119695-PROBIT           <=2600               NA                0.6791045   0.6000594   0.7581496
18 months   ki1119695-PROBIT           >3310                NA                0.0719116   0.0643088   0.0795145
18 months   ki1119695-PROBIT           2600-2970            NA                0.3938272   0.3601771   0.4274772
18 months   ki1119695-PROBIT           2970-3310            NA                0.2105012   0.1930434   0.2279589
18 months   ki1126311-ZVITAMBO         <=2600               NA                0.7797468   0.7388674   0.8206262
18 months   ki1126311-ZVITAMBO         >3310                NA                0.2840237   0.2359360   0.3321113
18 months   ki1126311-ZVITAMBO         2600-2970            NA                0.5274725   0.4855852   0.5693598
18 months   ki1126311-ZVITAMBO         2970-3310            NA                0.3634783   0.3241525   0.4028040
18 months   ki1135781-COHORTS          <=2600               NA                0.8664047   0.8368437   0.8959658
18 months   ki1135781-COHORTS          >3310                NA                0.4783362   0.4375704   0.5191021
18 months   ki1135781-COHORTS          2600-2970            NA                0.6645327   0.6314134   0.6976519
18 months   ki1135781-COHORTS          2970-3310            NA                0.5925573   0.5628036   0.6223109
18 months   kiGH5241-JiVitA-3          <=2600               NA                0.7663682   0.7524947   0.7802417
18 months   kiGH5241-JiVitA-3          >3310                NA                0.2787318   0.2467891   0.3106745
18 months   kiGH5241-JiVitA-3          2600-2970            NA                0.3849093   0.3640673   0.4057512
18 months   kiGH5241-JiVitA-3          2970-3310            NA                0.2474227   0.2187963   0.2760490
18 months   kiGH5241-JiVitA-4          <=2600               NA                0.8080000   0.7681178   0.8478822
18 months   kiGH5241-JiVitA-4          >3310                NA                0.3992674   0.3411469   0.4573879
18 months   kiGH5241-JiVitA-4          2600-2970            NA                0.5016393   0.4455015   0.5577772
18 months   kiGH5241-JiVitA-4          2970-3310            NA                0.3560209   0.2880857   0.4239562
24 months   ki1000108-IRC              <=2600               NA                0.7572816   0.6743829   0.8401803
24 months   ki1000108-IRC              >3310                NA                0.3500000   0.2291626   0.4708374
24 months   ki1000108-IRC              2600-2970            NA                0.7016129   0.6209796   0.7822462
24 months   ki1000108-IRC              2970-3310            NA                0.6153846   0.5271214   0.7036479
24 months   ki1017093c-NIH-Crypto      <=2600               NA                0.7161572   0.6577164   0.7745980
24 months   ki1017093c-NIH-Crypto      >3310                NA                0.2153846   0.1153685   0.3154007
24 months   ki1017093c-NIH-Crypto      2600-2970            NA                0.4536082   0.3834978   0.5237187
24 months   ki1017093c-NIH-Crypto      2970-3310            NA                0.3561644   0.2784275   0.4339013
24 months   ki1066203-TanzaniaChild2   <=2600               NA                0.6666667   0.4484525   0.8848808
24 months   ki1066203-TanzaniaChild2   >3310                NA                0.3804348   0.2810282   0.4798414
24 months   ki1066203-TanzaniaChild2   2600-2970            NA                0.6451613   0.4763917   0.8139309
24 months   ki1066203-TanzaniaChild2   2970-3310            NA                0.4859813   0.3910886   0.5808740
24 months   ki1101329-Keneba           <=2600               NA                0.7935103   0.7504085   0.8366121
24 months   ki1101329-Keneba           >3310                NA                0.3808050   0.3278345   0.4337754
24 months   ki1101329-Keneba           2600-2970            NA                0.6630631   0.6237285   0.7023977
24 months   ki1101329-Keneba           2970-3310            NA                0.5052632   0.4642070   0.5463193
24 months   ki1119695-PROBIT           <=2600               NA                0.7142857   0.5645861   0.8639853
24 months   ki1119695-PROBIT           >3310                NA                0.1242892   0.1058551   0.1427232
24 months   ki1119695-PROBIT           2600-2970            NA                0.4130435   0.3493948   0.4766922
24 months   ki1119695-PROBIT           2970-3310            NA                0.2672414   0.2312191   0.3032636
24 months   ki1126311-ZVITAMBO         <=2600               NA                0.8921569   0.8318971   0.9524166
24 months   ki1126311-ZVITAMBO         >3310                NA                0.5468750   0.4247868   0.6689632
24 months   ki1126311-ZVITAMBO         2600-2970            NA                0.7869822   0.7251866   0.8487779
24 months   ki1126311-ZVITAMBO         2970-3310            NA                0.5851852   0.5019863   0.6683841
24 months   ki1135781-COHORTS          <=2600               NA                0.9204082   0.8964391   0.9443772
24 months   ki1135781-COHORTS          >3310                NA                0.6206262   0.5798061   0.6614462
24 months   ki1135781-COHORTS          2600-2970            NA                0.8023256   0.7742645   0.8303867
24 months   ki1135781-COHORTS          2970-3310            NA                0.7426901   0.7159364   0.7694437
24 months   kiGH5241-JiVitA-4          <=2600               NA                0.8303571   0.7902063   0.8705080
24 months   kiGH5241-JiVitA-4          >3310                NA                0.4506438   0.3867248   0.5145628
24 months   kiGH5241-JiVitA-4          2600-2970            NA                0.5444444   0.4850112   0.6038777
24 months   kiGH5241-JiVitA-4          2970-3310            NA                0.4371257   0.3618570   0.5123945
3 months    ki1000108-CMC-V-BCS-2002   <=2600               NA                0.6067416   0.5051180   0.7083652
3 months    ki1000108-CMC-V-BCS-2002   >3310                NA                0.1562500   0.0671709   0.2453291
3 months    ki1000108-CMC-V-BCS-2002   2600-2970            NA                0.3975904   0.2921581   0.5030226
3 months    ki1000108-CMC-V-BCS-2002   2970-3310            NA                0.2222222   0.1495305   0.2949140
3 months    ki1000108-IRC              <=2600               NA                0.5533981   0.4572708   0.6495254
3 months    ki1000108-IRC              >3310                NA                0.1000000   0.0239968   0.1760032
3 months    ki1000108-IRC              2600-2970            NA                0.3225806   0.2402003   0.4049609
3 months    ki1000108-IRC              2970-3310            NA                0.2051282   0.1318703   0.2783861
3 months    ki1000109-EE               <=2600               NA                0.8044693   0.7462914   0.8626471
3 months    ki1000109-EE               >3310                NA                0.2352941   0.0925247   0.3780635
3 months    ki1000109-EE               2600-2970            NA                0.5937500   0.4953750   0.6921250
3 months    ki1000109-EE               2970-3310            NA                0.4571429   0.3402894   0.5739963
3 months    ki1000304b-SAS-CompFeed    <=2600               NA                0.5964010   0.5476211   0.6451809
3 months    ki1000304b-SAS-CompFeed    >3310                NA                0.0722892   0.0165481   0.1280302
3 months    ki1000304b-SAS-CompFeed    2600-2970            NA                0.2290909   0.1793961   0.2787857
3 months    ki1000304b-SAS-CompFeed    2970-3310            NA                0.0977778   0.0589487   0.1366069
3 months    ki1066203-TanzaniaChild2   <=2600               NA                0.3529412   0.2216756   0.4842067
3 months    ki1066203-TanzaniaChild2   >3310                NA                0.0250000   0.0052312   0.0447688
3 months    ki1066203-TanzaniaChild2   2600-2970            NA                0.2083333   0.1144482   0.3022185
3 months    ki1066203-TanzaniaChild2   2970-3310            NA                0.0815451   0.0463759   0.1167143
3 months    ki1101329-Keneba           <=2600               NA                0.5376344   0.4869556   0.5883132
3 months    ki1101329-Keneba           >3310                NA                0.0692771   0.0419561   0.0965982
3 months    ki1101329-Keneba           2600-2970            NA                0.2504202   0.2155987   0.2852416
3 months    ki1101329-Keneba           2970-3310            NA                0.1375405   0.1103791   0.1647018
3 months    ki1119695-PROBIT           <=2600               NA                0.5503356   0.4704553   0.6302159
3 months    ki1119695-PROBIT           >3310                NA                0.0141431   0.0108052   0.0174810
3 months    ki1119695-PROBIT           2600-2970            NA                0.2511261   0.2226016   0.2796507
3 months    ki1119695-PROBIT           2970-3310            NA                0.1004386   0.0880998   0.1127774
3 months    ki1126311-ZVITAMBO         <=2600               NA                0.5204513   0.4836729   0.5572298
3 months    ki1126311-ZVITAMBO         >3310                NA                0.0514512   0.0357221   0.0671803
3 months    ki1126311-ZVITAMBO         2600-2970            NA                0.2190476   0.1926736   0.2454216
3 months    ki1126311-ZVITAMBO         2970-3310            NA                0.1099815   0.0913368   0.1286262
3 months    ki1135781-COHORTS          <=2600               NA                0.4129305   0.3955357   0.4303252
3 months    ki1135781-COHORTS          >3310                NA                0.0248307   0.0164642   0.0331972
3 months    ki1135781-COHORTS          2600-2970            NA                0.1193548   0.1073242   0.1313855
3 months    ki1135781-COHORTS          2970-3310            NA                0.0564014   0.0479902   0.0648126
3 months    kiGH5241-JiVitA-3          <=2600               NA                0.6646396   0.6533697   0.6759094
3 months    kiGH5241-JiVitA-3          >3310                NA                0.1281481   0.1103172   0.1459791
3 months    kiGH5241-JiVitA-3          2600-2970            NA                0.1646013   0.1526717   0.1765308
3 months    kiGH5241-JiVitA-3          2970-3310            NA                0.0785204   0.0650898   0.0919511
3 months    kiGH5241-JiVitA-4          <=2600               NA                0.5826772   0.5331409   0.6322135
3 months    kiGH5241-JiVitA-4          >3310                NA                0.1111111   0.0736089   0.1486133
3 months    kiGH5241-JiVitA-4          2600-2970            NA                0.1666667   0.1248924   0.2084410
3 months    kiGH5241-JiVitA-4          2970-3310            NA                0.0653266   0.0309800   0.0996733
6 months    ki1000108-CMC-V-BCS-2002   <=2600               NA                0.7555556   0.6666472   0.8444639
6 months    ki1000108-CMC-V-BCS-2002   >3310                NA                0.3437500   0.2272284   0.4602716
6 months    ki1000108-CMC-V-BCS-2002   2600-2970            NA                0.5476190   0.4410350   0.6542031
6 months    ki1000108-CMC-V-BCS-2002   2970-3310            NA                0.4031008   0.3183384   0.4878631
6 months    ki1000108-IRC              <=2600               NA                0.5980392   0.5027716   0.6933069
6 months    ki1000108-IRC              >3310                NA                0.1666667   0.0722503   0.2610830
6 months    ki1000108-IRC              2600-2970            NA                0.4919355   0.4038323   0.5800387
6 months    ki1000108-IRC              2970-3310            NA                0.3103448   0.2260505   0.3946391
6 months    ki1000109-EE               <=2600               NA                0.8983051   0.8537183   0.9428918
6 months    ki1000109-EE               >3310                NA                0.3750000   0.2070377   0.5429623
6 months    ki1000109-EE               2600-2970            NA                0.6947368   0.6020076   0.7874661
6 months    ki1000109-EE               2970-3310            NA                0.5797101   0.4630866   0.6963337
6 months    ki1000304b-SAS-CompFeed    <=2600               NA                0.7018634   0.6518687   0.7518580
6 months    ki1000304b-SAS-CompFeed    >3310                NA                0.1323529   0.0517592   0.2129467
6 months    ki1000304b-SAS-CompFeed    2600-2970            NA                0.3175966   0.2577833   0.3774099
6 months    ki1000304b-SAS-CompFeed    2970-3310            NA                0.1847826   0.1286680   0.2408972
6 months    ki1066203-TanzaniaChild2   <=2600               NA                0.4375000   0.2970337   0.5779663
6 months    ki1066203-TanzaniaChild2   >3310                NA                0.0964912   0.0581306   0.1348518
6 months    ki1066203-TanzaniaChild2   2600-2970            NA                0.3281250   0.2129876   0.4432624
6 months    ki1066203-TanzaniaChild2   2970-3310            NA                0.1943128   0.1408766   0.2477490
6 months    ki1101329-Keneba           <=2600               NA                0.5949008   0.5436758   0.6461259
6 months    ki1101329-Keneba           >3310                NA                0.1299094   0.0936804   0.1661383
6 months    ki1101329-Keneba           2600-2970            NA                0.3683274   0.3284376   0.4082172
6 months    ki1101329-Keneba           2970-3310            NA                0.2210708   0.1872610   0.2548806
6 months    ki1119695-PROBIT           <=2600               NA                0.6028369   0.5220668   0.6836070
6 months    ki1119695-PROBIT           >3310                NA                0.0300281   0.0251114   0.0349448
6 months    ki1119695-PROBIT           2600-2970            NA                0.3117647   0.2806226   0.3429068
6 months    ki1119695-PROBIT           2970-3310            NA                0.1486054   0.1336969   0.1635139
6 months    ki1126311-ZVITAMBO         <=2600               NA                0.6470588   0.6024978   0.6916199
6 months    ki1126311-ZVITAMBO         >3310                NA                0.0974155   0.0714966   0.1233345
6 months    ki1126311-ZVITAMBO         2600-2970            NA                0.3355372   0.2979040   0.3731704
6 months    ki1126311-ZVITAMBO         2970-3310            NA                0.1895604   0.1610823   0.2180386
6 months    ki1135781-COHORTS          <=2600               NA                0.5833333   0.5402846   0.6263821
6 months    ki1135781-COHORTS          >3310                NA                0.0648649   0.0443712   0.0853585
6 months    ki1135781-COHORTS          2600-2970            NA                0.2805663   0.2489707   0.3121618
6 months    ki1135781-COHORTS          2970-3310            NA                0.1737892   0.1508981   0.1966802
6 months    kiGH5241-JiVitA-3          <=2600               NA                0.6826700   0.6694318   0.6959083
6 months    kiGH5241-JiVitA-3          >3310                NA                0.1565465   0.1346082   0.1784848
6 months    kiGH5241-JiVitA-3          2600-2970            NA                0.2036350   0.1884333   0.2188367
6 months    kiGH5241-JiVitA-3          2970-3310            NA                0.1136784   0.0947640   0.1325927
6 months    kiGH5241-JiVitA-4          <=2600               NA                0.6586826   0.6078076   0.7095577
6 months    kiGH5241-JiVitA-4          >3310                NA                0.1788618   0.1309480   0.2267755
6 months    kiGH5241-JiVitA-4          2600-2970            NA                0.2014652   0.1538631   0.2490673
6 months    kiGH5241-JiVitA-4          2970-3310            NA                0.1607143   0.1051509   0.2162776


### Parameter: E(Y)


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
12 months   ki1000108-CMC-V-BCS-2002   NA                   NA                0.6989247   0.6891249   0.7087246
12 months   ki1000108-IRC              NA                   NA                0.5024876   0.4873168   0.5176584
12 months   ki1000109-EE               NA                   NA                0.8257373   0.8113069   0.8401677
12 months   ki1000304b-SAS-CompFeed    NA                   NA                0.5851184   0.5715064   0.5987304
12 months   ki1017093c-NIH-Crypto      NA                   NA                0.3799726   0.3663157   0.3936294
12 months   ki1066203-TanzaniaChild2   NA                   NA                0.3163265   0.3065019   0.3261512
12 months   ki1101329-Keneba           NA                   NA                0.4238727   0.4171700   0.4305754
12 months   ki1119695-PROBIT           NA                   NA                0.1456628   0.1428933   0.1484324
12 months   ki1126311-ZVITAMBO         NA                   NA                0.3770169   0.3701755   0.3838584
12 months   ki1135781-COHORTS          NA                   NA                0.4118646   0.4086304   0.4150988
12 months   kiGH5241-JiVitA-3          NA                   NA                0.4526379   0.4473114   0.4579644
12 months   kiGH5241-JiVitA-4          NA                   NA                0.4391489   0.4272146   0.4510833
18 months   ki1000108-CMC-V-BCS-2002   NA                   NA                0.8471850   0.8414847   0.8528852
18 months   ki1000108-IRC              NA                   NA                0.5583127   0.5429339   0.5736914
18 months   ki1000109-EE               NA                   NA                0.9118457   0.9057557   0.9179358
18 months   ki1000304b-SAS-CompFeed    NA                   NA                0.7149533   0.7043405   0.7255661
18 months   ki1017093c-NIH-Crypto      NA                   NA                0.4433566   0.4295471   0.4571661
18 months   ki1066203-TanzaniaChild2   NA                   NA                0.4253521   0.4149081   0.4357962
18 months   ki1101329-Keneba           NA                   NA                0.5140187   0.5072856   0.5207518
18 months   ki1119695-PROBIT           NA                   NA                0.1565217   0.1536484   0.1593951
18 months   ki1126311-ZVITAMBO         NA                   NA                0.4859763   0.4779618   0.4939907
18 months   ki1135781-COHORTS          NA                   NA                0.6370497   0.6325903   0.6415092
18 months   kiGH5241-JiVitA-3          NA                   NA                0.5442587   0.5391643   0.5493531
18 months   kiGH5241-JiVitA-4          NA                   NA                0.5533217   0.5426106   0.5640327
24 months   ki1000108-IRC              NA                   NA                0.6386139   0.6257591   0.6514687
24 months   ki1017093c-NIH-Crypto      NA                   NA                0.5015773   0.4879496   0.5152049
24 months   ki1066203-TanzaniaChild2   NA                   NA                0.4798387   0.4675996   0.4920779
24 months   ki1101329-Keneba           NA                   NA                0.5864578   0.5799479   0.5929676
24 months   ki1119695-PROBIT           NA                   NA                0.2061657   0.2010544   0.2112770
24 months   ki1126311-ZVITAMBO         NA                   NA                0.7191489   0.7072292   0.7310687
24 months   ki1135781-COHORTS          NA                   NA                0.7663255   0.7628840   0.7697670
24 months   kiGH5241-JiVitA-4          NA                   NA                0.6003976   0.5900298   0.6107654
3 months    ki1000108-CMC-V-BCS-2002   NA                   NA                0.3453039   0.3277301   0.3628776
3 months    ki1000108-IRC              NA                   NA                0.3143564   0.2989601   0.3297528
3 months    ki1000109-EE               NA                   NA                0.6358839   0.6172493   0.6545186
3 months    ki1000304b-SAS-CompFeed    NA                   NA                0.3323045   0.3183201   0.3462889
3 months    ki1066203-TanzaniaChild2   NA                   NA                0.0973154   0.0895735   0.1050573
3 months    ki1101329-Keneba           NA                   NA                0.2383933   0.2312216   0.2455651
3 months    ki1119695-PROBIT           NA                   NA                0.0740923   0.0719280   0.0762566
3 months    ki1126311-ZVITAMBO         NA                   NA                0.2100744   0.2045123   0.2156365
3 months    ki1135781-COHORTS          NA                   NA                0.1784475   0.1753544   0.1815406
3 months    kiGH5241-JiVitA-3          NA                   NA                0.4035969   0.3991016   0.4080921
3 months    kiGH5241-JiVitA-4          NA                   NA                0.2733564   0.2607022   0.2860106
6 months    ki1000108-CMC-V-BCS-2002   NA                   NA                0.5122616   0.4964094   0.5281138
6 months    ki1000108-IRC              NA                   NA                0.4179104   0.4031695   0.4326514
6 months    ki1000109-EE               NA                   NA                0.7426273   0.7254452   0.7598095
6 months    ki1000304b-SAS-CompFeed    NA                   NA                0.4250310   0.4089454   0.4411166
6 months    ki1066203-TanzaniaChild2   NA                   NA                0.1905626   0.1817270   0.1993982
6 months    ki1101329-Keneba           NA                   NA                0.3221918   0.3149370   0.3294465
6 months    ki1119695-PROBIT           NA                   NA                0.1042654   0.1017365   0.1067943
6 months    ki1126311-ZVITAMBO         NA                   NA                0.2967515   0.2888877   0.3046154
6 months    ki1135781-COHORTS          NA                   NA                0.2530287   0.2468904   0.2591671
6 months    kiGH5241-JiVitA-3          NA                   NA                0.4257384   0.4206108   0.4308661
6 months    kiGH5241-JiVitA-4          NA                   NA                0.3388834   0.3251749   0.3525920


### Parameter: RR


agecat      studyid                    intervention_level   baseline_level    estimate    ci_lower   ci_upper
----------  -------------------------  -------------------  ---------------  ---------  ----------  ---------
12 months   ki1000108-CMC-V-BCS-2002   >3310                <=2600            1.944049   1.5392683   2.455274
12 months   ki1000108-CMC-V-BCS-2002   2600-2970            <=2600            2.326014   1.9793989   2.733324
12 months   ki1000108-CMC-V-BCS-2002   2970-3310            <=2600            2.166405   1.8615008   2.521251
12 months   ki1000108-IRC              >3310                <=2600            1.421541   0.8797731   2.296931
12 months   ki1000108-IRC              2600-2970            <=2600            2.488728   2.0394396   3.036995
12 months   ki1000108-IRC              2970-3310            <=2600            1.808825   1.3879315   2.357356
12 months   ki1000109-EE               >3310                <=2600            1.642056   1.1471740   2.350427
12 months   ki1000109-EE               2600-2970            <=2600            2.241705   1.9940934   2.520062
12 months   ki1000109-EE               2970-3310            <=2600            2.246810   1.9644836   2.569711
12 months   ki1000304b-SAS-CompFeed    >3310                <=2600            1.473928   1.0629843   2.043741
12 months   ki1000304b-SAS-CompFeed    2600-2970            <=2600            1.876085   1.6505715   2.132410
12 months   ki1000304b-SAS-CompFeed    2970-3310            <=2600            1.535581   1.2691356   1.857964
12 months   ki1017093c-NIH-Crypto      >3310                <=2600            1.211119   0.6712925   2.185052
12 months   ki1017093c-NIH-Crypto      2600-2970            <=2600            1.722148   1.3986363   2.120490
12 months   ki1017093c-NIH-Crypto      2970-3310            <=2600            1.400406   1.0309270   1.902304
12 months   ki1066203-TanzaniaChild2   >3310                <=2600            1.464946   0.9930753   2.161030
12 months   ki1066203-TanzaniaChild2   2600-2970            <=2600            2.402773   1.6258441   3.550966
12 months   ki1066203-TanzaniaChild2   2970-3310            <=2600            1.821777   1.2901923   2.572386
12 months   ki1101329-Keneba           >3310                <=2600            1.448833   1.1884762   1.766225
12 months   ki1101329-Keneba           2600-2970            <=2600            2.061413   1.8456889   2.302351
12 months   ki1101329-Keneba           2970-3310            <=2600            1.600557   1.3942056   1.837450
12 months   ki1119695-PROBIT           >3310                <=2600            1.097522   0.9343066   1.289251
12 months   ki1119695-PROBIT           2600-2970            <=2600            1.773708   1.5356249   2.048704
12 months   ki1119695-PROBIT           2970-3310            <=2600            1.346199   1.1659772   1.554277
12 months   ki1126311-ZVITAMBO         >3310                <=2600            1.310287   1.0909196   1.573765
12 months   ki1126311-ZVITAMBO         2600-2970            <=2600            1.860754   1.6762078   2.065619
12 months   ki1126311-ZVITAMBO         2970-3310            <=2600            1.485833   1.3087841   1.686833
12 months   ki1135781-COHORTS          >3310                <=2600            1.348044   1.1974232   1.517610
12 months   ki1135781-COHORTS          2600-2970            <=2600            1.893193   1.7930754   1.998902
12 months   ki1135781-COHORTS          2970-3310            <=2600            1.580629   1.4811840   1.686750
12 months   kiGH5241-JiVitA-3          >3310                <=2600            1.293119   1.1233491   1.488546
12 months   kiGH5241-JiVitA-3          2600-2970            <=2600            1.427845   1.3288290   1.534239
12 months   kiGH5241-JiVitA-3          2970-3310            <=2600            1.236649   1.0650527   1.435893
12 months   kiGH5241-JiVitA-4          >3310                <=2600            1.408126   1.1425791   1.735389
12 months   kiGH5241-JiVitA-4          2600-2970            <=2600            1.644966   1.4023144   1.929606
12 months   kiGH5241-JiVitA-4          2970-3310            <=2600            1.428317   1.1219603   1.818326
18 months   ki1000108-CMC-V-BCS-2002   >3310                <=2600            2.331500   2.0443411   2.658994
18 months   ki1000108-CMC-V-BCS-2002   2600-2970            <=2600            2.384969   2.1333625   2.666249
18 months   ki1000108-CMC-V-BCS-2002   2970-3310            <=2600            2.380230   2.1666640   2.614847
18 months   ki1000108-IRC              >3310                <=2600            1.385453   0.8613548   2.228444
18 months   ki1000108-IRC              2600-2970            <=2600            2.435592   2.0327487   2.918270
18 months   ki1000108-IRC              2970-3310            <=2600            2.023040   1.6274078   2.514853
18 months   ki1000109-EE               >3310                <=2600            2.247531   1.8663738   2.706530
18 months   ki1000109-EE               2600-2970            <=2600            2.439240   2.2361138   2.660817
18 months   ki1000109-EE               2970-3310            <=2600            2.573127   2.3766209   2.785881
18 months   ki1000304b-SAS-CompFeed    >3310                <=2600            1.822368   1.4660407   2.265303
18 months   ki1000304b-SAS-CompFeed    2600-2970            <=2600            2.190305   2.0006719   2.397912
18 months   ki1000304b-SAS-CompFeed    2970-3310            <=2600            1.768355   1.5352653   2.036833
18 months   ki1017093c-NIH-Crypto      >3310                <=2600            1.245710   0.7340879   2.113908
18 months   ki1017093c-NIH-Crypto      2600-2970            <=2600            1.770215   1.4689967   2.133198
18 months   ki1017093c-NIH-Crypto      2970-3310            <=2600            1.546392   1.2074385   1.980497
18 months   ki1066203-TanzaniaChild2   >3310                <=2600            1.644114   1.1051086   2.446013
18 months   ki1066203-TanzaniaChild2   2600-2970            <=2600            2.346970   1.5359797   3.586159
18 months   ki1066203-TanzaniaChild2   2970-3310            <=2600            2.149688   1.5191648   3.041907
18 months   ki1101329-Keneba           >3310                <=2600            1.505720   1.2670661   1.789325
18 months   ki1101329-Keneba           2600-2970            <=2600            2.138128   1.9469977   2.348021
18 months   ki1101329-Keneba           2970-3310            <=2600            1.780773   1.5935839   1.989950
18 months   ki1119695-PROBIT           >3310                <=2600            1.111702   0.9499439   1.301004
18 months   ki1119695-PROBIT           2600-2970            <=2600            1.785898   1.5457831   2.063311
18 months   ki1119695-PROBIT           2970-3310            <=2600            1.363383   1.1818119   1.572849
18 months   ki1126311-ZVITAMBO         >3310                <=2600            1.439436   1.2056410   1.718567
18 months   ki1126311-ZVITAMBO         2600-2970            <=2600            1.966915   1.7883800   2.163273
18 months   ki1126311-ZVITAMBO         2970-3310            <=2600            1.593845   1.4132942   1.797460
18 months   ki1135781-COHORTS          >3310                <=2600            1.736885   1.5845381   1.903879
18 months   ki1135781-COHORTS          2600-2970            <=2600            2.153297   2.0270909   2.287361
18 months   ki1135781-COHORTS          2970-3310            <=2600            1.981644   1.8649219   2.105671
18 months   kiGH5241-JiVitA-3          >3310                <=2600            1.438649   1.2810547   1.615632
18 months   kiGH5241-JiVitA-3          2600-2970            <=2600            1.652437   1.5607359   1.749526
18 months   kiGH5241-JiVitA-3          2970-3310            <=2600            1.381059   1.2284400   1.552640
18 months   kiGH5241-JiVitA-4          >3310                <=2600            1.639093   1.4055579   1.911429
18 months   kiGH5241-JiVitA-4          2600-2970            <=2600            1.860492   1.6462996   2.102551
18 months   kiGH5241-JiVitA-4          2970-3310            <=2600            1.553670   1.2757336   1.892159
24 months   ki1000108-IRC              >3310                <=2600            1.587530   1.1051606   2.280440
24 months   ki1000108-IRC              2600-2970            <=2600            2.525626   2.1549578   2.960051
24 months   ki1000108-IRC              2970-3310            <=2600            2.253813   1.8817334   2.699464
24 months   ki1017093c-NIH-Crypto      >3310                <=2600            1.350872   0.8430528   2.164581
24 months   ki1017093c-NIH-Crypto      2600-2970            <=2600            1.883990   1.5818753   2.243805
24 months   ki1017093c-NIH-Crypto      2970-3310            <=2600            1.644320   1.3025316   2.075795
24 months   ki1066203-TanzaniaChild2   >3310                <=2600            1.769421   1.1639575   2.689831
24 months   ki1066203-TanzaniaChild2   2600-2970            <=2600            2.631994   1.7310552   4.001834
24 months   ki1066203-TanzaniaChild2   2970-3310            <=2600            2.072948   1.4159981   3.034690
24 months   ki1101329-Keneba           >3310                <=2600            1.615911   1.3917595   1.876165
24 months   ki1101329-Keneba           2600-2970            <=2600            2.306214   2.1279808   2.499376
24 months   ki1101329-Keneba           2970-3310            <=2600            1.890316   1.7142989   2.084407
24 months   ki1119695-PROBIT           >3310                <=2600            1.190061   0.9205848   1.538420
24 months   ki1119695-PROBIT           2600-2970            <=2600            1.782935   1.3745514   2.312651
24 months   ki1119695-PROBIT           2970-3310            <=2600            1.453738   1.1330962   1.865114
24 months   ki1126311-ZVITAMBO         >3310                <=2600            1.845926   1.4619040   2.330824
24 months   ki1126311-ZVITAMBO         2600-2970            <=2600            2.415997   2.1782816   2.679654
24 months   ki1126311-ZVITAMBO         2970-3310            <=2600            1.926918   1.6462796   2.255396
24 months   ki1135781-COHORTS          >3310                <=2600            1.962648   1.8286066   2.106515
24 months   ki1135781-COHORTS          2600-2970            <=2600            2.390987   2.2889683   2.497553
24 months   ki1135781-COHORTS          2970-3310            <=2600            2.240981   2.1435510   2.342840
24 months   kiGH5241-JiVitA-4          >3310                <=2600            1.720665   1.4812051   1.998837
24 months   kiGH5241-JiVitA-4          2600-2970            <=2600            1.926443   1.7096388   2.170740
24 months   kiGH5241-JiVitA-4          2970-3310            <=2600            1.692880   1.4156382   2.024417
3 months    ki1000108-CMC-V-BCS-2002   >3310                <=2600            1.293722   0.7141393   2.343683
3 months    ki1000108-CMC-V-BCS-2002   2600-2970            <=2600            1.925697   1.4072588   2.635128
3 months    ki1000108-CMC-V-BCS-2002   2970-3310            <=2600            1.442323   0.9987563   2.082887
3 months    ki1000108-IRC              >3310                <=2600            1.198058   0.5494006   2.612561
3 months    ki1000108-IRC              2600-2970            <=2600            1.791241   1.3152857   2.439429
3 months    ki1000108-IRC              2970-3310            <=2600            1.448705   0.9738820   2.155032
3 months    ki1000109-EE               >3310                <=2600            1.339751   0.7271804   2.468345
3 months    ki1000109-EE               2600-2970            <=2600            2.091882   1.7459256   2.506390
3 months    ki1000109-EE               2970-3310            <=2600            1.765182   1.3533783   2.302289
3 months    ki1000304b-SAS-CompFeed    >3310                <=2600            1.128861   0.5198568   2.451303
3 months    ki1000304b-SAS-CompFeed    2600-2970            <=2600            1.468325   1.1645017   1.851417
3 months    ki1000304b-SAS-CompFeed    2970-3310            <=2600            1.178151   0.7854451   1.767202
3 months    ki1066203-TanzaniaChild2   >3310                <=2600            1.073402   0.4479765   2.571993
3 months    ki1066203-TanzaniaChild2   2600-2970            <=2600            1.804490   1.0059943   3.236781
3 months    ki1066203-TanzaniaChild2   2970-3310            <=2600            1.259915   0.7128700   2.226754
3 months    ki1101329-Keneba           >3310                <=2600            1.137526   0.7583374   1.706318
3 months    ki1101329-Keneba           2600-2970            <=2600            1.593259   1.3468800   1.884707
3 months    ki1101329-Keneba           2970-3310            <=2600            1.291527   1.0376955   1.607449
3 months    ki1119695-PROBIT           >3310                <=2600            1.026032   0.7777335   1.353602
3 months    ki1119695-PROBIT           2600-2970            <=2600            1.578247   1.3125938   1.897665
3 months    ki1119695-PROBIT           2970-3310            <=2600            1.200219   0.9923757   1.451594
3 months    ki1126311-ZVITAMBO         >3310                <=2600            1.103910   0.8066131   1.510784
3 months    ki1126311-ZVITAMBO         2600-2970            <=2600            1.523302   1.3248129   1.751529
3 months    ki1126311-ZVITAMBO         2970-3310            <=2600            1.235307   1.0280405   1.484361
3 months    ki1135781-COHORTS          >3310                <=2600            1.061978   0.7562145   1.491371
3 months    ki1135781-COHORTS          2600-2970            <=2600            1.335150   1.1969754   1.489274
3 months    ki1135781-COHORTS          2970-3310            <=2600            1.146356   0.9817890   1.338507
3 months    kiGH5241-JiVitA-3          >3310                <=2600            1.212651   1.0540456   1.395121
3 months    kiGH5241-JiVitA-3          2600-2970            <=2600            1.281018   1.1891306   1.380005
3 months    kiGH5241-JiVitA-3          2970-3310            <=2600            1.125401   0.9476736   1.336461
3 months    kiGH5241-JiVitA-4          >3310                <=2600            1.210085   0.8543868   1.713868
3 months    kiGH5241-JiVitA-4          2600-2970            <=2600            1.331140   1.0215947   1.734479
3 months    kiGH5241-JiVitA-4          2970-3310            <=2600            1.118641   0.6567299   1.905438
6 months    ki1000108-CMC-V-BCS-2002   >3310                <=2600            1.576115   1.1009211   2.256419
6 months    ki1000108-CMC-V-BCS-2002   2600-2970            <=2600            2.064297   1.6443597   2.591479
6 months    ki1000108-CMC-V-BCS-2002   2970-3310            <=2600            1.704916   1.3398443   2.169459
6 months    ki1000108-IRC              >3310                <=2600            1.321396   0.7336076   2.380137
6 months    ki1000108-IRC              2600-2970            <=2600            2.276367   1.7912079   2.892934
6 months    ki1000108-IRC              2970-3310            <=2600            1.680241   1.2263649   2.302096
6 months    ki1000109-EE               >3310                <=2600            1.518090   0.9673564   2.382366
6 months    ki1000109-EE               2600-2970            <=2600            2.167092   1.8794562   2.498749
6 months    ki1000109-EE               2970-3310            <=2600            1.906631   1.5498057   2.345611
6 months    ki1000304b-SAS-CompFeed    >3310                <=2600            1.207526   0.6540910   2.229230
6 months    ki1000304b-SAS-CompFeed    2600-2970            <=2600            1.572245   1.2855069   1.922942
6 months    ki1000304b-SAS-CompFeed    2970-3310            <=2600            1.301184   0.9525176   1.777478
6 months    ki1066203-TanzaniaChild2   >3310                <=2600            1.246764   0.7479189   2.078328
6 months    ki1066203-TanzaniaChild2   2600-2970            <=2600            2.117000   1.3157199   3.406264
6 months    ki1066203-TanzaniaChild2   2970-3310            <=2600            1.559154   1.0216347   2.379483
6 months    ki1101329-Keneba           >3310                <=2600            1.244049   0.9291382   1.665692
6 months    ki1101329-Keneba           2600-2970            <=2600            1.857332   1.6173381   2.132937
6 months    ki1101329-Keneba           2970-3310            <=2600            1.450067   1.2166472   1.728269
6 months    ki1119695-PROBIT           >3310                <=2600            1.051073   0.8506472   1.298722
6 months    ki1119695-PROBIT           2600-2970            <=2600            1.677262   1.4191262   1.982352
6 months    ki1119695-PROBIT           2970-3310            <=2600            1.279552   1.0823447   1.512692
6 months    ki1126311-ZVITAMBO         >3310                <=2600            1.162475   0.8831300   1.530180
6 months    ki1126311-ZVITAMBO         2600-2970            <=2600            1.679603   1.4724740   1.915868
6 months    ki1126311-ZVITAMBO         2970-3310            <=2600            1.340385   1.1362031   1.581260
6 months    ki1135781-COHORTS          >3310                <=2600            1.117615   0.8079535   1.545959
6 months    ki1135781-COHORTS          2600-2970            <=2600            1.617644   1.4138702   1.850787
6 months    ki1135781-COHORTS          2970-3310            <=2600            1.347060   1.1582870   1.566598
6 months    kiGH5241-JiVitA-3          >3310                <=2600            1.257738   1.0918141   1.448878
6 months    kiGH5241-JiVitA-3          2600-2970            <=2600            1.347555   1.2475263   1.455605
6 months    kiGH5241-JiVitA-3          2970-3310            <=2600            1.181187   0.9990096   1.396587
6 months    kiGH5241-JiVitA-4          >3310                <=2600            1.311989   0.9927769   1.733840
6 months    kiGH5241-JiVitA-4          2600-2970            <=2600            1.357793   1.0589494   1.740973
6 months    kiGH5241-JiVitA-4          2970-3310            <=2600            1.276336   0.8956043   1.818921


### Parameter: PAR


agecat      studyid                    intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -------------------  ---------------  -----------  -----------  -----------
12 months   ki1000108-CMC-V-BCS-2002   <=2600               NA                -0.1472291   -0.2221033   -0.0723549
12 months   ki1000108-IRC              <=2600               NA                -0.1608788   -0.2543925   -0.0673651
12 months   ki1000109-EE               <=2600               NA                -0.1231264   -0.1587653   -0.0874874
12 months   ki1000304b-SAS-CompFeed    <=2600               NA                -0.2410924   -0.2830271   -0.1991578
12 months   ki1017093c-NIH-Crypto      <=2600               NA                -0.2415414   -0.3031176   -0.1799652
12 months   ki1066203-TanzaniaChild2   <=2600               NA                -0.2336735   -0.3883155   -0.0790314
12 months   ki1101329-Keneba           <=2600               NA                -0.2484437   -0.2978084   -0.1990790
12 months   ki1119695-PROBIT           <=2600               NA                -0.5210038   -0.5988674   -0.4431402
12 months   ki1126311-ZVITAMBO         <=2600               NA                -0.3151318   -0.3568290   -0.2734346
12 months   ki1135781-COHORTS          <=2600               NA                -0.2216802   -0.2397009   -0.2036594
12 months   kiGH5241-JiVitA-3          <=2600               NA                -0.2530849   -0.2680910   -0.2380787
12 months   kiGH5241-JiVitA-4          <=2600               NA                -0.2938354   -0.3397949   -0.2478758
18 months   ki1000108-CMC-V-BCS-2002   <=2600               NA                -0.0978700   -0.1450969   -0.0506430
18 months   ki1000108-IRC              <=2600               NA                -0.1573736   -0.2463617   -0.0683855
18 months   ki1000109-EE               <=2600               NA                -0.0528602   -0.0812960   -0.0244243
18 months   ki1000304b-SAS-CompFeed    <=2600               NA                -0.1752544   -0.2102980   -0.1402109
18 months   ki1017093c-NIH-Crypto      <=2600               NA                -0.2393743   -0.2988481   -0.1799005
18 months   ki1066203-TanzaniaChild2   <=2600               NA                -0.1900325   -0.3775902   -0.0024748
18 months   ki1101329-Keneba           <=2600               NA                -0.2389225   -0.2852715   -0.1925735
18 months   ki1119695-PROBIT           <=2600               NA                -0.5225827   -0.6016800   -0.4434854
18 months   ki1126311-ZVITAMBO         <=2600               NA                -0.2937706   -0.3354282   -0.2521130
18 months   ki1135781-COHORTS          <=2600               NA                -0.2293550   -0.2592505   -0.1994595
18 months   kiGH5241-JiVitA-3          <=2600               NA                -0.2221095   -0.2368888   -0.2073303
18 months   kiGH5241-JiVitA-4          <=2600               NA                -0.2546783   -0.2959738   -0.2133829
24 months   ki1000108-IRC              <=2600               NA                -0.1186677   -0.2025571   -0.0347782
24 months   ki1017093c-NIH-Crypto      <=2600               NA                -0.2145799   -0.2745886   -0.1545712
24 months   ki1066203-TanzaniaChild2   <=2600               NA                -0.1868280   -0.4053851    0.0317292
24 months   ki1101329-Keneba           <=2600               NA                -0.2070526   -0.2506432   -0.1634620
24 months   ki1119695-PROBIT           <=2600               NA                -0.5081200   -0.6579068   -0.3583332
24 months   ki1126311-ZVITAMBO         <=2600               NA                -0.1730079   -0.2344353   -0.1115806
24 months   ki1135781-COHORTS          <=2600               NA                -0.1540827   -0.1782976   -0.1298678
24 months   kiGH5241-JiVitA-4          <=2600               NA                -0.2299595   -0.2714274   -0.1884917
3 months    ki1000108-CMC-V-BCS-2002   <=2600               NA                -0.2614377   -0.3645696   -0.1583058
3 months    ki1000108-IRC              <=2600               NA                -0.2390416   -0.3363941   -0.1416891
3 months    ki1000109-EE               <=2600               NA                -0.1685854   -0.2296747   -0.1074960
3 months    ki1000304b-SAS-CompFeed    <=2600               NA                -0.2640965   -0.3148414   -0.2133516
3 months    ki1066203-TanzaniaChild2   <=2600               NA                -0.2556257   -0.3871194   -0.1241321
3 months    ki1101329-Keneba           <=2600               NA                -0.2992411   -0.3504248   -0.2480574
3 months    ki1119695-PROBIT           <=2600               NA                -0.4762433   -0.5561529   -0.3963336
3 months    ki1126311-ZVITAMBO         <=2600               NA                -0.3103769   -0.3475736   -0.2731803
3 months    ki1135781-COHORTS          <=2600               NA                -0.2344830   -0.2521506   -0.2168153
3 months    kiGH5241-JiVitA-3          <=2600               NA                -0.2610427   -0.2731760   -0.2489094
3 months    kiGH5241-JiVitA-4          <=2600               NA                -0.3093208   -0.3604478   -0.2581937
6 months    ki1000108-CMC-V-BCS-2002   <=2600               NA                -0.2432940   -0.3336045   -0.1529835
6 months    ki1000108-IRC              <=2600               NA                -0.1801288   -0.2765301   -0.0837274
6 months    ki1000109-EE               <=2600               NA                -0.1556777   -0.2034606   -0.1078948
6 months    ki1000304b-SAS-CompFeed    <=2600               NA                -0.2768324   -0.3293510   -0.2243137
6 months    ki1066203-TanzaniaChild2   <=2600               NA                -0.2469374   -0.3876813   -0.1061934
6 months    ki1101329-Keneba           <=2600               NA                -0.2727091   -0.3244453   -0.2209728
6 months    ki1119695-PROBIT           <=2600               NA                -0.4985715   -0.5793812   -0.4177618
6 months    ki1126311-ZVITAMBO         <=2600               NA                -0.3503073   -0.3955569   -0.3050577
6 months    ki1135781-COHORTS          <=2600               NA                -0.3303046   -0.3737888   -0.2868204
6 months    kiGH5241-JiVitA-3          <=2600               NA                -0.2569316   -0.2711282   -0.2427350
6 months    kiGH5241-JiVitA-4          <=2600               NA                -0.3197992   -0.3724888   -0.2671096


### Parameter: PAF


agecat      studyid                    intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  -----------  ----------
12 months   ki1000108-CMC-V-BCS-2002   <=2600               NA                0.5622039    0.5215301   0.5994200
12 months   ki1000108-IRC              <=2600               NA                0.5311542    0.4594356   0.5933576
12 months   ki1000109-EE               <=2600               NA                0.5811482    0.5646933   0.5969811
12 months   ki1000304b-SAS-CompFeed    <=2600               NA                0.5074676    0.4804791   0.5330541
12 months   ki1017093c-NIH-Crypto      <=2600               NA                0.4573909    0.3984766   0.5105350
12 months   ki1066203-TanzaniaChild2   <=2600               NA                0.4373734    0.2538482   0.5757584
12 months   ki1101329-Keneba           <=2600               NA                0.4676564    0.4265144   0.5058468
12 months   ki1119695-PROBIT           <=2600               NA                0.1962719    0.0953746   0.2859157
12 months   ki1126311-ZVITAMBO         <=2600               NA                0.4199872    0.3828046   0.4549297
12 months   ki1135781-COHORTS          <=2600               NA                0.4780041    0.4626105   0.4929567
12 months   kiGH5241-JiVitA-3          <=2600               NA                0.4734358    0.4611301   0.4854605
12 months   kiGH5241-JiVitA-4          <=2600               NA                0.4507077    0.4130142   0.4859808
18 months   ki1000108-CMC-V-BCS-2002   <=2600               NA                0.5919803    0.5710343   0.6119036
18 months   ki1000108-IRC              <=2600               NA                0.5416435    0.4803397   0.5957154
18 months   ki1000109-EE               <=2600               NA                0.6114005    0.5997433   0.6227181
18 months   ki1000304b-SAS-CompFeed    <=2600               NA                0.5520756    0.5336338   0.5697882
18 months   ki1017093c-NIH-Crypto      <=2600               NA                0.4776342    0.4282838   0.5227246
18 months   ki1066203-TanzaniaChild2   <=2600               NA                0.4990241    0.3201613   0.6308287
18 months   ki1101329-Keneba           <=2600               NA                0.4947395    0.4622622   0.5252553
18 months   ki1119695-PROBIT           <=2600               NA                0.2058497    0.1065347   0.2941252
18 months   ki1126311-ZVITAMBO         <=2600               NA                0.4638004    0.4335065   0.4924743
18 months   ki1135781-COHORTS          <=2600               NA                0.5206286    0.5036380   0.5370377
18 months   kiGH5241-JiVitA-3          <=2600               NA                0.5084439    0.4983234   0.5183602
18 months   kiGH5241-JiVitA-4          <=2600               NA                0.4958110    0.4683579   0.5218464
24 months   ki1000108-IRC              <=2600               NA                0.5697108    0.5190508   0.6150346
24 months   ki1017093c-NIH-Crypto      <=2600               NA                0.5036000    0.4590160   0.5445096
24 months   ki1066203-TanzaniaChild2   <=2600               NA                0.5131300    0.3239204   0.6493868
24 months   ki1101329-Keneba           <=2600               NA                0.5224410    0.4952172   0.5481966
24 months   ki1119695-PROBIT           <=2600               NA                0.2507121    0.0746574   0.3932708
24 months   ki1126311-ZVITAMBO         <=2600               NA                0.5533942    0.5212282   0.5833992
24 months   ki1135781-COHORTS          <=2600               NA                0.5650800    0.5534335   0.5764227
24 months   kiGH5241-JiVitA-4          <=2600               NA                0.5147347    0.4891682   0.5390216
3 months    ki1000108-CMC-V-BCS-2002   <=2600               NA                0.4339721    0.3256861   0.5248688
3 months    ki1000108-IRC              <=2600               NA                0.4333693    0.3212966   0.5269358
3 months    ki1000109-EE               <=2600               NA                0.5463544    0.5095386   0.5804067
3 months    ki1000304b-SAS-CompFeed    <=2600               NA                0.4271796    0.3719912   0.4775181
3 months    ki1066203-TanzaniaChild2   <=2600               NA                0.2409799   -0.1102722   0.4811079
3 months    ki1101329-Keneba           <=2600               NA                0.3581570    0.2914005   0.4186244
3 months    ki1119695-PROBIT           <=2600               NA                0.1259618   -0.0135179   0.2462463
3 months    ki1126311-ZVITAMBO         <=2600               NA                0.3321148    0.2797632   0.3806611
3 months    ki1135781-COHORTS          <=2600               NA                0.3508874    0.3206352   0.3797924
3 months    kiGH5241-JiVitA-3          <=2600               NA                0.4551483    0.4439819   0.4660905
3 months    kiGH5241-JiVitA-4          <=2600               NA                0.3744592    0.3108783   0.4321739
6 months    ki1000108-CMC-V-BCS-2002   <=2600               NA                0.4923653    0.4266847   0.5505214
6 months    ki1000108-IRC              <=2600               NA                0.5028190    0.4147069   0.5776663
6 months    ki1000109-EE               <=2600               NA                0.5625087    0.5378826   0.5858224
6 months    ki1000304b-SAS-CompFeed    <=2600               NA                0.4542395    0.4083938   0.4965325
6 months    ki1066203-TanzaniaChild2   <=2600               NA                0.3531053    0.1052180   0.5323187
6 months    ki1101329-Keneba           <=2600               NA                0.4181770    0.3640191   0.4677231
6 months    ki1119695-PROBIT           <=2600               NA                0.1588270    0.0361281   0.2659065
6 months    ki1126311-ZVITAMBO         <=2600               NA                0.3678421    0.3194312   0.4128093
6 months    ki1135781-COHORTS          <=2600               NA                0.3519345    0.2995838   0.4003725
6 months    kiGH5241-JiVitA-3          <=2600               NA                0.4640086    0.4516324   0.4761055
6 months    kiGH5241-JiVitA-4          <=2600               NA                0.4021926    0.3477303   0.4521075


