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

**Intervention Variable:** single

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid


The following strata were considered:

* agecat: 12 months, studyid: ki1066203-TanzaniaChild2
* agecat: 12 months, studyid: ki1112895-Guatemala BSC
* agecat: 12 months, studyid: ki1119695-PROBIT
* agecat: 12 months, studyid: ki1126311-ZVITAMBO
* agecat: 12 months, studyid: ki1135781-COHORTS
* agecat: 12 months, studyid: kiGH5241-JiVitA-4
* agecat: 18 months, studyid: ki1066203-TanzaniaChild2
* agecat: 18 months, studyid: ki1112895-Guatemala BSC
* agecat: 18 months, studyid: ki1119695-PROBIT
* agecat: 18 months, studyid: ki1126311-ZVITAMBO
* agecat: 18 months, studyid: ki1135781-COHORTS
* agecat: 18 months, studyid: kiGH5241-JiVitA-4
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2
* agecat: 24 months, studyid: ki1119695-PROBIT
* agecat: 24 months, studyid: ki1126311-ZVITAMBO
* agecat: 24 months, studyid: ki1135781-COHORTS
* agecat: 24 months, studyid: kiGH5241-JiVitA-4
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2
* agecat: 3 months, studyid: ki1119695-PROBIT
* agecat: 3 months, studyid: ki1126311-ZVITAMBO
* agecat: 3 months, studyid: ki1135781-COHORTS
* agecat: 3 months, studyid: kiGH5241-JiVitA-4
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2
* agecat: 6 months, studyid: ki1112895-Guatemala BSC
* agecat: 6 months, studyid: ki1119695-PROBIT
* agecat: 6 months, studyid: ki1126311-ZVITAMBO
* agecat: 6 months, studyid: ki1135781-COHORTS
* agecat: 6 months, studyid: kiGH5241-JiVitA-4

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 12 months, studyid: ki1112895-Guatemala BSC
* agecat: 18 months, studyid: ki1112895-Guatemala BSC
* NA
* NA
* agecat: 6 months, studyid: ki1112895-Guatemala BSC

## Methods Detail

**todo**




# Results Detail

## Results Plots
![](/tmp/75b5678c-c683-45b7-8adb-3ee6634fcbce/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/75b5678c-c683-45b7-8adb-3ee6634fcbce/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/75b5678c-c683-45b7-8adb-3ee6634fcbce/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/75b5678c-c683-45b7-8adb-3ee6634fcbce/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Data Summary

agecat      studyid                      A      n     nA   nAY0   nAY1
----------  -------------------------  ---  -----  -----  -----  -----
12 months   ki1066203-TanzaniaChild2     0    491    442    307    135
12 months   ki1066203-TanzaniaChild2     1    491     49     26     23
12 months   ki1112895-Guatemala BSC      0     80     74     42     32
12 months   ki1112895-Guatemala BSC      1     80      6      2      4
12 months   ki1119695-PROBIT             0   7943   7655   6558   1097
12 months   ki1119695-PROBIT             1   7943    288    228     60
12 months   ki1126311-ZVITAMBO           0   2533   2389   1498    891
12 months   ki1126311-ZVITAMBO           1   2533    144     78     66
12 months   ki1135781-COHORTS            0   8270   8138   4636   3502
12 months   ki1135781-COHORTS            1   8270    132     56     76
12 months   kiGH5241-JiVitA-4            0   1401    372    218    154
12 months   kiGH5241-JiVitA-4            1   1401   1029    575    454
18 months   ki1066203-TanzaniaChild2     0    359    321    189    132
18 months   ki1066203-TanzaniaChild2     1    359     38     17     21
18 months   ki1112895-Guatemala BSC      0     49     46     23     23
18 months   ki1112895-Guatemala BSC      1     49      3      0      3
18 months   ki1119695-PROBIT             0   7475   7214   6106   1108
18 months   ki1119695-PROBIT             1   7475    261    199     62
18 months   ki1126311-ZVITAMBO           0   1848   1736    907    829
18 months   ki1126311-ZVITAMBO           1   1848    112     43     69
18 months   ki1135781-COHORTS            0   3023   2917   1031   1886
18 months   ki1135781-COHORTS            1   3023    106     30     76
18 months   kiGH5241-JiVitA-4            0   1353    362    168    194
18 months   kiGH5241-JiVitA-4            1   1353    991    444    547
24 months   ki1066203-TanzaniaChild2     0    250    224    121    103
24 months   ki1066203-TanzaniaChild2     1    250     26     10     16
24 months   ki1112895-Guatemala BSC      0      0      0      0      0
24 months   ki1112895-Guatemala BSC      1      0      0      0      0
24 months   ki1119695-PROBIT             0   2076   1991   1584    407
24 months   ki1119695-PROBIT             1   2076     85     64     21
24 months   ki1126311-ZVITAMBO           0    469    435    124    311
24 months   ki1126311-ZVITAMBO           1    469     34      8     26
24 months   ki1135781-COHORTS            0   2975   2866    650   2216
24 months   ki1135781-COHORTS            1   2975    109     21     88
24 months   kiGH5241-JiVitA-4            0   1181    319    132    187
24 months   kiGH5241-JiVitA-4            1   1181    862    347    515
3 months    ki1066203-TanzaniaChild2     0    595    535    486     49
3 months    ki1066203-TanzaniaChild2     1    595     60     50     10
3 months    ki1112895-Guatemala BSC      0      0      0      0      0
3 months    ki1112895-Guatemala BSC      1      0      0      0      0
3 months    ki1119695-PROBIT             0   8125   7828   7259    569
3 months    ki1119695-PROBIT             1   8125    297    264     33
3 months    ki1126311-ZVITAMBO           0   3480   3268   2590    678
3 months    ki1126311-ZVITAMBO           1   3480    212    158     54
3 months    ki1135781-COHORTS            0   8678   8555   7037   1518
3 months    ki1135781-COHORTS            1   8678    123     92     31
3 months    kiGH5241-JiVitA-4            0   1139    307    225     82
3 months    kiGH5241-JiVitA-4            1   1139    832    601    231
6 months    ki1066203-TanzaniaChild2     0    551    497    404     93
6 months    ki1066203-TanzaniaChild2     1    551     54     39     15
6 months    ki1112895-Guatemala BSC      0     90     84     60     24
6 months    ki1112895-Guatemala BSC      1     90      6      3      3
6 months    ki1119695-PROBIT             0   7807   7527   6756    771
6 months    ki1119695-PROBIT             1   7807    280    237     43
6 months    ki1126311-ZVITAMBO           0   2276   2135   1506    629
6 months    ki1126311-ZVITAMBO           1   2276    141     93     48
6 months    ki1135781-COHORTS            0   2906   2824   2113    711
6 months    ki1135781-COHORTS            1   2906     82     54     28
6 months    kiGH5241-JiVitA-4            0   1168    311    208    103
6 months    kiGH5241-JiVitA-4            1   1168    857    576    281

## Results Table

### Parameter: TSM


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
12 months   ki1066203-TanzaniaChild2   0                    NA                0.3054299   0.2624472   0.3484125
12 months   ki1066203-TanzaniaChild2   1                    NA                0.4693878   0.3295104   0.6092651
12 months   ki1119695-PROBIT           0                    NA                0.1433050   0.1354554   0.1511546
12 months   ki1119695-PROBIT           1                    NA                0.2083333   0.1614272   0.2552395
12 months   ki1126311-ZVITAMBO         0                    NA                0.3729594   0.3535637   0.3923550
12 months   ki1126311-ZVITAMBO         1                    NA                0.4583333   0.3769362   0.5397305
12 months   ki1135781-COHORTS          0                    NA                0.4303269   0.4195690   0.4410848
12 months   ki1135781-COHORTS          1                    NA                0.5757576   0.4914407   0.6600744
12 months   kiGH5241-JiVitA-4          0                    NA                0.4139785   0.3639085   0.4640485
12 months   kiGH5241-JiVitA-4          1                    NA                0.4412051   0.4108562   0.4715539
18 months   ki1066203-TanzaniaChild2   0                    NA                0.4112150   0.3573118   0.4651181
18 months   ki1066203-TanzaniaChild2   1                    NA                0.5526316   0.3943201   0.7109431
18 months   ki1119695-PROBIT           0                    NA                0.1535902   0.1452695   0.1619110
18 months   ki1119695-PROBIT           1                    NA                0.2375479   0.1859135   0.2891822
18 months   ki1126311-ZVITAMBO         0                    NA                0.4775346   0.4540316   0.5010375
18 months   ki1126311-ZVITAMBO         1                    NA                0.6160714   0.5259771   0.7061657
18 months   ki1135781-COHORTS          0                    NA                0.6465547   0.6292040   0.6639053
18 months   ki1135781-COHORTS          1                    NA                0.7169811   0.6312125   0.8027498
18 months   kiGH5241-JiVitA-4          0                    NA                0.5359116   0.4845189   0.5873043
18 months   kiGH5241-JiVitA-4          1                    NA                0.5519677   0.5209947   0.5829407
24 months   ki1066203-TanzaniaChild2   0                    NA                0.4598214   0.3944244   0.5252184
24 months   ki1066203-TanzaniaChild2   1                    NA                0.6153846   0.4280067   0.8027625
24 months   ki1119695-PROBIT           0                    NA                0.2044199   0.1867016   0.2221381
24 months   ki1119695-PROBIT           1                    NA                0.2470588   0.1553473   0.3387704
24 months   ki1126311-ZVITAMBO         0                    NA                0.7149425   0.6724739   0.7574112
24 months   ki1126311-ZVITAMBO         1                    NA                0.7647059   0.6219727   0.9074390
24 months   ki1135781-COHORTS          0                    NA                0.7732031   0.7578693   0.7885368
24 months   ki1135781-COHORTS          1                    NA                0.8073394   0.7332882   0.8813907
24 months   kiGH5241-JiVitA-4          0                    NA                0.5862069   0.5321372   0.6402766
24 months   kiGH5241-JiVitA-4          1                    NA                0.5974478   0.5646957   0.6301999
3 months    ki1066203-TanzaniaChild2   0                    NA                0.0915888   0.0671264   0.1160512
3 months    ki1066203-TanzaniaChild2   1                    NA                0.1666667   0.0722885   0.2610448
3 months    ki1119695-PROBIT           0                    NA                0.0726878   0.0669361   0.0784394
3 months    ki1119695-PROBIT           1                    NA                0.1111111   0.0753674   0.1468548
3 months    ki1126311-ZVITAMBO         0                    NA                0.2074663   0.1935619   0.2213707
3 months    ki1126311-ZVITAMBO         1                    NA                0.2547170   0.1960583   0.3133756
3 months    ki1135781-COHORTS          0                    NA                0.1774401   0.1693441   0.1855361
3 months    ki1135781-COHORTS          1                    NA                0.2520325   0.1752981   0.3287669
3 months    kiGH5241-JiVitA-4          0                    NA                0.2671010   0.2175868   0.3166151
3 months    kiGH5241-JiVitA-4          1                    NA                0.2776442   0.2472006   0.3080879
6 months    ki1066203-TanzaniaChild2   0                    NA                0.1871227   0.1528033   0.2214422
6 months    ki1066203-TanzaniaChild2   1                    NA                0.2777778   0.1582057   0.3973499
6 months    ki1119695-PROBIT           0                    NA                0.1024312   0.0955809   0.1092816
6 months    ki1119695-PROBIT           1                    NA                0.1535714   0.1113389   0.1958040
6 months    ki1126311-ZVITAMBO         0                    NA                0.2946136   0.2752723   0.3139548
6 months    ki1126311-ZVITAMBO         1                    NA                0.3404255   0.2621949   0.4186562
6 months    ki1135781-COHORTS          0                    NA                0.2517705   0.2357598   0.2677812
6 months    ki1135781-COHORTS          1                    NA                0.3414634   0.2388089   0.4441179
6 months    kiGH5241-JiVitA-4          0                    NA                0.3311897   0.2788605   0.3835189
6 months    kiGH5241-JiVitA-4          1                    NA                0.3278880   0.2964447   0.3593312


### Parameter: E(Y)


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
12 months   ki1066203-TanzaniaChild2   NA                   NA                0.3217923   0.3174411   0.3261435
12 months   ki1119695-PROBIT           NA                   NA                0.1456628   0.1453955   0.1459302
12 months   ki1126311-ZVITAMBO         NA                   NA                0.3778129   0.3770429   0.3785829
12 months   ki1135781-COHORTS          NA                   NA                0.4326481   0.4322553   0.4330410
12 months   kiGH5241-JiVitA-4          NA                   NA                0.4339757   0.4333459   0.4346056
18 months   ki1066203-TanzaniaChild2   NA                   NA                0.4261838   0.4216772   0.4306905
18 months   ki1119695-PROBIT           NA                   NA                0.1565217   0.1561723   0.1568711
18 months   ki1126311-ZVITAMBO         NA                   NA                0.4859307   0.4844232   0.4874383
18 months   ki1135781-COHORTS          NA                   NA                0.6490241   0.6485623   0.6494860
18 months   kiGH5241-JiVitA-4          NA                   NA                0.5476718   0.5472930   0.5480507
24 months   ki1066203-TanzaniaChild2   NA                   NA                0.4760000   0.4701017   0.4818983
24 months   ki1119695-PROBIT           NA                   NA                0.2061657   0.2058022   0.2065293
24 months   ki1126311-ZVITAMBO         NA                   NA                0.7185501   0.7173810   0.7197192
24 months   ki1135781-COHORTS          NA                   NA                0.7744538   0.7742233   0.7746843
24 months   kiGH5241-JiVitA-4          NA                   NA                0.5944115   0.5941267   0.5946963
3 months    ki1066203-TanzaniaChild2   NA                   NA                0.0991597   0.0973416   0.1009777
3 months    ki1119695-PROBIT           NA                   NA                0.0740923   0.0739355   0.0742491
3 months    ki1126311-ZVITAMBO         NA                   NA                0.2103448   0.2099693   0.2107204
3 months    ki1135781-COHORTS          NA                   NA                0.1784973   0.1783118   0.1786829
3 months    kiGH5241-JiVitA-4          NA                   NA                0.2748025   0.2745307   0.2750743
6 months    ki1066203-TanzaniaChild2   NA                   NA                0.1960073   0.1937547   0.1982598
6 months    ki1119695-PROBIT           NA                   NA                0.1042654   0.1040544   0.1044764
6 months    ki1126311-ZVITAMBO         NA                   NA                0.2974517   0.2969979   0.2979055
6 months    ki1135781-COHORTS          NA                   NA                0.2543014   0.2537613   0.2548415
6 months    kiGH5241-JiVitA-4          NA                   NA                0.3287671   0.3286834   0.3288509


### Parameter: RR


agecat      studyid                    intervention_level   baseline_level    estimate   ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ---------  ---------  ----------
12 months   ki1066203-TanzaniaChild2   1                    0                 4.649735   3.344284    6.464773
12 months   ki1119695-PROBIT           1                    0                 4.279240   3.394168    5.395106
12 months   ki1126311-ZVITAMBO         1                    0                 3.417501   2.840153    4.112212
12 months   ki1135781-COHORTS          1                    0                 3.811238   3.285079    4.421671
12 months   kiGH5241-JiVitA-4          1                    0                 2.903068   2.525977    3.336453
18 months   ki1066203-TanzaniaChild2   1                    0                 3.833965   2.797888    5.253708
18 months   ki1119695-PROBIT           1                    0                 4.695638   3.753244    5.874656
18 months   ki1126311-ZVITAMBO         1                    0                 3.633181   3.113690    4.239344
18 months   ki1135781-COHORTS          1                    0                 3.031100   2.681370    3.426446
18 months   kiGH5241-JiVitA-4          1                    0                 2.800955   2.506411    3.130113
24 months   ki1066203-TanzaniaChild2   1                    0                 3.812603   2.724392    5.335481
24 months   ki1119695-PROBIT           1                    0                 3.348743   2.287334    4.902686
24 months   ki1126311-ZVITAMBO         1                    0                 2.914227   2.395829    3.544794
24 months   ki1135781-COHORTS          1                    0                 2.840981   2.586505    3.120494
24 months   kiGH5241-JiVitA-4          1                    0                 2.770910   2.488992    3.084759
3 months    ki1066203-TanzaniaChild2   1                    0                 6.170179   3.299039   11.540063
3 months    ki1119695-PROBIT           1                    0                 4.611751   3.311250    6.423027
3 months    ki1126311-ZVITAMBO         1                    0                 3.413543   2.685608    4.338786
3 months    ki1135781-COHORTS          1                    0                 4.138697   3.042011    5.630753
3 months    kiGH5241-JiVitA-4          1                    0                 2.827726   2.279818    3.507313
6 months    ki1066203-TanzaniaChild2   1                    0                 4.412619   2.763686    7.045375
6 months    ki1119695-PROBIT           1                    0                 4.478389   3.374495    5.943400
6 months    ki1126311-ZVITAMBO         1                    0                 3.175606   2.500529    4.032935
6 months    ki1135781-COHORTS          1                    0                 3.881604   2.854696    5.277918
6 months    kiGH5241-JiVitA-4          1                    0                 2.691317   2.237151    3.237684


### Parameter: PAR


agecat      studyid                    intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  -----------  -----------  ----------
12 months   ki1066203-TanzaniaChild2   0                    NA                 0.0163624   -0.0268400   0.0595648
12 months   ki1119695-PROBIT           0                    NA                 0.0023578   -0.0054963   0.0102120
12 months   ki1126311-ZVITAMBO         0                    NA                 0.0048535   -0.0145575   0.0242644
12 months   ki1135781-COHORTS          0                    NA                 0.0023213   -0.0084438   0.0130863
12 months   kiGH5241-JiVitA-4          0                    NA                 0.0199972   -0.0300767   0.0700712
18 months   ki1066203-TanzaniaChild2   0                    NA                 0.0149689   -0.0391223   0.0690601
18 months   ki1119695-PROBIT           0                    NA                 0.0029315   -0.0053966   0.0112596
18 months   ki1126311-ZVITAMBO         0                    NA                 0.0083962   -0.0151551   0.0319474
18 months   ki1135781-COHORTS          0                    NA                 0.0024695   -0.0148873   0.0198263
18 months   kiGH5241-JiVitA-4          0                    NA                 0.0117602   -0.0396338   0.0631543
24 months   ki1066203-TanzaniaChild2   0                    NA                 0.0161786   -0.0494839   0.0818410
24 months   ki1119695-PROBIT           0                    NA                 0.0017458   -0.0159762   0.0194678
24 months   ki1126311-ZVITAMBO         0                    NA                 0.0036076   -0.0388772   0.0460923
24 months   ki1135781-COHORTS          0                    NA                 0.0012507   -0.0140848   0.0165862
24 months   kiGH5241-JiVitA-4          0                    NA                 0.0082046   -0.0458658   0.0622750
3 months    ki1066203-TanzaniaChild2   0                    NA                 0.0075709   -0.0169590   0.0321007
3 months    ki1119695-PROBIT           0                    NA                 0.0014045   -0.0043493   0.0071583
3 months    ki1126311-ZVITAMBO         0                    NA                 0.0028785   -0.0110310   0.0167880
3 months    ki1135781-COHORTS          0                    NA                 0.0010573   -0.0070409   0.0091554
3 months    kiGH5241-JiVitA-4          0                    NA                 0.0077015   -0.0418134   0.0572164
6 months    ki1066203-TanzaniaChild2   0                    NA                 0.0088845   -0.0255088   0.0432778
6 months    ki1119695-PROBIT           0                    NA                 0.0018342   -0.0050195   0.0086878
6 months    ki1126311-ZVITAMBO         0                    NA                 0.0028381   -0.0165085   0.0221847
6 months    ki1135781-COHORTS          0                    NA                 0.0025309   -0.0134889   0.0185507
6 months    kiGH5241-JiVitA-4          0                    NA                -0.0024226   -0.0547518   0.0499066


### Parameter: PAF


agecat      studyid                    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -------------------  ---------------  ----------  ----------  ----------
12 months   ki1066203-TanzaniaChild2   0                    NA                0.6513099   0.5983584   0.6972804
12 months   ki1119695-PROBIT           0                    NA                0.6381238   0.6177372   0.6574231
12 months   ki1126311-ZVITAMBO         0                    NA                0.6368769   0.6174779   0.6552922
12 months   ki1135781-COHORTS          0                    NA                0.6340996   0.6248309   0.6431394
12 months   kiGH5241-JiVitA-4          0                    NA                0.6494686   0.6043986   0.6894039
18 months   ki1066203-TanzaniaChild2   0                    NA                0.6452712   0.5954149   0.6889837
18 months   ki1119695-PROBIT           0                    NA                0.6390755   0.6189656   0.6581240
18 months   ki1126311-ZVITAMBO         0                    NA                0.6385322   0.6202596   0.6559256
18 months   ki1135781-COHORTS          0                    NA                0.6335230   0.6235517   0.6432302
18 months   kiGH5241-JiVitA-4          0                    NA                0.6401055   0.6038824   0.6730162
24 months   ki1066203-TanzaniaChild2   0                    NA                0.6448391   0.5903381   0.6920894
24 months   ki1119695-PROBIT           0                    NA                0.6352490   0.6022162   0.6655387
24 months   ki1126311-ZVITAMBO         0                    NA                0.6339722   0.6115622   0.6550893
24 months   ki1135781-COHORTS          0                    NA                0.6327151   0.6253578   0.6399280
24 months   kiGH5241-JiVitA-4          0                    NA                0.6372336   0.6021811   0.6691975
3 months    ki1066203-TanzaniaChild2   0                    NA                0.6613072   0.5573358   0.7408581
3 months    ki1119695-PROBIT           0                    NA                0.6391607   0.6094370   0.6666223
3 months    ki1126311-ZVITAMBO         0                    NA                0.6371894   0.6120313   0.6607162
3 months    ki1135781-COHORTS          0                    NA                0.6343060   0.6172295   0.6506207
3 months    kiGH5241-JiVitA-4          0                    NA                0.6425764   0.5697784   0.7030562
6 months    ki1066203-TanzaniaChild2   0                    NA                0.6491792   0.5784066   0.7080712
6 months    ki1119695-PROBIT           0                    NA                0.6386493   0.6136446   0.6620356
6 months    ki1126311-ZVITAMBO         0                    NA                0.6356474   0.6109183   0.6588048
6 months    ki1135781-COHORTS          0                    NA                0.6358001   0.6118737   0.6582515
6 months    kiGH5241-JiVitA-4          0                    NA                0.6294197   0.5659873   0.6835813


