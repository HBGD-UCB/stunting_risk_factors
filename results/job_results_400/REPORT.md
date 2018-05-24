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

**Intervention Variable:** fhtcm

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid


The following strata were considered:

* agecat: 12 months, studyid: ki1000304b-SAS-CompFeed
* agecat: 12 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 12 months, studyid: ki1101329-Keneba
* agecat: 12 months, studyid: ki1119695-PROBIT
* agecat: 12 months, studyid: ki1135781-COHORTS
* agecat: 18 months, studyid: ki1000304b-SAS-CompFeed
* agecat: 18 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 18 months, studyid: ki1101329-Keneba
* agecat: 18 months, studyid: ki1119695-PROBIT
* agecat: 18 months, studyid: ki1135781-COHORTS
* agecat: 24 months, studyid: ki1000304b-SAS-CompFeed
* agecat: 24 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 24 months, studyid: ki1101329-Keneba
* agecat: 24 months, studyid: ki1119695-PROBIT
* agecat: 24 months, studyid: ki1135781-COHORTS
* agecat: 3 months, studyid: ki1000304b-SAS-CompFeed
* agecat: 3 months, studyid: ki1101329-Keneba
* agecat: 3 months, studyid: ki1119695-PROBIT
* agecat: 3 months, studyid: ki1135781-COHORTS
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 6 months, studyid: ki1101329-Keneba
* agecat: 6 months, studyid: ki1119695-PROBIT

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 12 months, studyid: ki1000304b-SAS-CompFeed
* agecat: 12 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 12 months, studyid: ki1135781-COHORTS
* agecat: 18 months, studyid: ki1000304b-SAS-CompFeed
* agecat: 18 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 18 months, studyid: ki1135781-COHORTS
* agecat: 24 months, studyid: ki1000304b-SAS-CompFeed
* agecat: 24 months, studyid: ki1000304b-SAS-FoodSuppl
* agecat: 24 months, studyid: ki1135781-COHORTS
* agecat: 3 months, studyid: ki1000304b-SAS-CompFeed
* NA
* agecat: 3 months, studyid: ki1135781-COHORTS
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl
* NA

## Methods Detail

**todo**




# Results Detail

## Results Plots
![](/tmp/78aef9cf-8231-4a3b-880c-04843cc1d592/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/78aef9cf-8231-4a3b-880c-04843cc1d592/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/78aef9cf-8231-4a3b-880c-04843cc1d592/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/78aef9cf-8231-4a3b-880c-04843cc1d592/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Data Summary

agecat      studyid                    A             n     nA   nAY0   nAY1
----------  -------------------------  --------  -----  -----  -----  -----
12 months   ki1000304b-SAS-CompFeed    <=168       600    386    138    248
12 months   ki1000304b-SAS-CompFeed    >178        600     16     12      4
12 months   ki1000304b-SAS-CompFeed    168-173     600    136     64     72
12 months   ki1000304b-SAS-CompFeed    173-178     600     62     32     30
12 months   ki1000304b-SAS-FoodSuppl   <=168        97     84     12     72
12 months   ki1000304b-SAS-FoodSuppl   >178         97      1      0      1
12 months   ki1000304b-SAS-FoodSuppl   168-173      97      8      1      7
12 months   ki1000304b-SAS-FoodSuppl   173-178      97      4      1      3
12 months   ki1101329-Keneba           <=168      1687    890    477    413
12 months   ki1101329-Keneba           >178       1687    184    133     51
12 months   ki1101329-Keneba           168-173    1687    357    197    160
12 months   ki1101329-Keneba           173-178    1687    256    171     85
12 months   ki1119695-PROBIT           <=168      6226    688    544    144
12 months   ki1119695-PROBIT           >178       6226   1978   1778    200
12 months   ki1119695-PROBIT           168-173    6226   1516   1276    240
12 months   ki1119695-PROBIT           173-178    6226   2044   1763    281
12 months   ki1135781-COHORTS          <=168       208    194     39    155
12 months   ki1135781-COHORTS          >178        208      0      0      0
12 months   ki1135781-COHORTS          168-173     208      7      2      5
12 months   ki1135781-COHORTS          173-178     208      7      1      6
18 months   ki1000304b-SAS-CompFeed    <=168       580    371     77    294
18 months   ki1000304b-SAS-CompFeed    >178        580     17     13      4
18 months   ki1000304b-SAS-CompFeed    168-173     580    129     42     87
18 months   ki1000304b-SAS-CompFeed    173-178     580     63     24     39
18 months   ki1000304b-SAS-FoodSuppl   <=168        92     81      9     72
18 months   ki1000304b-SAS-FoodSuppl   >178         92      1      0      1
18 months   ki1000304b-SAS-FoodSuppl   168-173      92      7      0      7
18 months   ki1000304b-SAS-FoodSuppl   173-178      92      3      0      3
18 months   ki1101329-Keneba           <=168      1644    877    377    500
18 months   ki1101329-Keneba           >178       1644    172    105     67
18 months   ki1101329-Keneba           168-173    1644    346    160    186
18 months   ki1101329-Keneba           173-178    1644    249    147    102
18 months   ki1119695-PROBIT           <=168      5940    663    507    156
18 months   ki1119695-PROBIT           >178       5940   1881   1674    207
18 months   ki1119695-PROBIT           168-173    5940   1454   1203    251
18 months   ki1119695-PROBIT           173-178    5940   1942   1655    287
18 months   ki1135781-COHORTS          <=168       175    162     21    141
18 months   ki1135781-COHORTS          >178        175      0      0      0
18 months   ki1135781-COHORTS          168-173     175      6      1      5
18 months   ki1135781-COHORTS          173-178     175      7      1      6
24 months   ki1000304b-SAS-CompFeed    <=168        54     33     10     23
24 months   ki1000304b-SAS-CompFeed    >178         54      1      0      1
24 months   ki1000304b-SAS-CompFeed    168-173      54     13      4      9
24 months   ki1000304b-SAS-CompFeed    173-178      54      7      2      5
24 months   ki1000304b-SAS-FoodSuppl   <=168         9      7      1      6
24 months   ki1000304b-SAS-FoodSuppl   >178          9      0      0      0
24 months   ki1000304b-SAS-FoodSuppl   168-173       9      2      0      2
24 months   ki1000304b-SAS-FoodSuppl   173-178       9      0      0      0
24 months   ki1101329-Keneba           <=168      1611    875    311    564
24 months   ki1101329-Keneba           >178       1611    158     88     70
24 months   ki1101329-Keneba           168-173    1611    340    137    203
24 months   ki1101329-Keneba           173-178    1611    238    126    112
24 months   ki1119695-PROBIT           <=168      1926    208    136     72
24 months   ki1119695-PROBIT           >178       1926    615    522     93
24 months   ki1119695-PROBIT           168-173    1926    448    353     95
24 months   ki1119695-PROBIT           173-178    1926    655    528    127
24 months   ki1135781-COHORTS          <=168       213    198     16    182
24 months   ki1135781-COHORTS          >178        213      0      0      0
24 months   ki1135781-COHORTS          168-173     213      7      2      5
24 months   ki1135781-COHORTS          173-178     213      8      1      7
3 months    ki1000304b-SAS-CompFeed    <=168       645    419    269    150
3 months    ki1000304b-SAS-CompFeed    >178        645     17     13      4
3 months    ki1000304b-SAS-CompFeed    168-173     645    144    106     38
3 months    ki1000304b-SAS-CompFeed    173-178     645     65     46     19
3 months    ki1000304b-SAS-FoodSuppl   <=168         0      0      0      0
3 months    ki1000304b-SAS-FoodSuppl   >178          0      0      0      0
3 months    ki1000304b-SAS-FoodSuppl   168-173       0      0      0      0
3 months    ki1000304b-SAS-FoodSuppl   173-178       0      0      0      0
3 months    ki1101329-Keneba           <=168      1647    872    649    223
3 months    ki1101329-Keneba           >178       1647    173    139     34
3 months    ki1101329-Keneba           168-173    1647    352    266     86
3 months    ki1101329-Keneba           173-178    1647    250    203     47
3 months    ki1119695-PROBIT           <=168      6249    692    618     74
3 months    ki1119695-PROBIT           >178       6249   1988   1877    111
3 months    ki1119695-PROBIT           168-173    6249   1519   1396    123
3 months    ki1119695-PROBIT           173-178    6249   2050   1916    134
3 months    ki1135781-COHORTS          <=168       150    137     87     50
3 months    ki1135781-COHORTS          >178        150      0      0      0
3 months    ki1135781-COHORTS          168-173     150      7      2      5
3 months    ki1135781-COHORTS          173-178     150      6      5      1
6 months    ki1000304b-SAS-CompFeed    <=168       541    353    196    157
6 months    ki1000304b-SAS-CompFeed    >178        541     14     12      2
6 months    ki1000304b-SAS-CompFeed    168-173     541    119     76     43
6 months    ki1000304b-SAS-CompFeed    173-178     541     55     35     20
6 months    ki1000304b-SAS-FoodSuppl   <=168       100     87     53     34
6 months    ki1000304b-SAS-FoodSuppl   >178        100      1      1      0
6 months    ki1000304b-SAS-FoodSuppl   168-173     100      8      3      5
6 months    ki1000304b-SAS-FoodSuppl   173-178     100      4      3      1
6 months    ki1101329-Keneba           <=168      1609    858    560    298
6 months    ki1101329-Keneba           >178       1609    171    127     44
6 months    ki1101329-Keneba           168-173    1609    334    216    118
6 months    ki1101329-Keneba           173-178    1609    246    193     53
6 months    ki1119695-PROBIT           <=168      6068    669    570     99
6 months    ki1119695-PROBIT           >178       6068   1926   1780    146
6 months    ki1119695-PROBIT           168-173    6068   1474   1296    178
6 months    ki1119695-PROBIT           173-178    6068   1999   1808    191
6 months    ki1135781-COHORTS          <=168         0      0      0      0
6 months    ki1135781-COHORTS          >178          0      0      0      0
6 months    ki1135781-COHORTS          168-173       0      0      0      0
6 months    ki1135781-COHORTS          173-178       0      0      0      0

## Results Table

### Parameter: TSM


agecat      studyid            intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -----------------  -------------------  ---------------  ----------  ----------  ----------
12 months   ki1101329-Keneba   <=168                NA                0.4640449   0.4312712   0.4968187
12 months   ki1101329-Keneba   >178                 NA                0.2771739   0.2124804   0.3418675
12 months   ki1101329-Keneba   168-173              NA                0.4481793   0.3965771   0.4997814
12 months   ki1101329-Keneba   173-178              NA                0.3320313   0.2743248   0.3897377
12 months   ki1119695-PROBIT   <=168                NA                0.2093023   0.1789018   0.2397028
12 months   ki1119695-PROBIT   >178                 NA                0.1011122   0.0878253   0.1143992
12 months   ki1119695-PROBIT   168-173              NA                0.1583113   0.1399347   0.1766879
12 months   ki1119695-PROBIT   173-178              NA                0.1374755   0.1225462   0.1524049
18 months   ki1101329-Keneba   <=168                NA                0.5701254   0.5373509   0.6029000
18 months   ki1101329-Keneba   >178                 NA                0.3895349   0.3166362   0.4624336
18 months   ki1101329-Keneba   168-173              NA                0.5375723   0.4850211   0.5901234
18 months   ki1101329-Keneba   173-178              NA                0.4096386   0.3485387   0.4707384
18 months   ki1119695-PROBIT   <=168                NA                0.2352941   0.2030032   0.2675851
18 months   ki1119695-PROBIT   >178                 NA                0.1100478   0.0959041   0.1241916
18 months   ki1119695-PROBIT   168-173              NA                0.1726272   0.1532001   0.1920543
18 months   ki1119695-PROBIT   173-178              NA                0.1477858   0.1320006   0.1635710
24 months   ki1101329-Keneba   <=168                NA                0.6445714   0.6128472   0.6762956
24 months   ki1101329-Keneba   >178                 NA                0.4430380   0.3655583   0.5205176
24 months   ki1101329-Keneba   168-173              NA                0.5970588   0.5449066   0.6492110
24 months   ki1101329-Keneba   173-178              NA                0.4705882   0.4071557   0.5340207
24 months   ki1119695-PROBIT   <=168                NA                0.3461538   0.2814840   0.4108237
24 months   ki1119695-PROBIT   >178                 NA                0.1512195   0.1228974   0.1795416
24 months   ki1119695-PROBIT   168-173              NA                0.2120536   0.1741925   0.2499147
24 months   ki1119695-PROBIT   173-178              NA                0.1938931   0.1636088   0.2241774
3 months    ki1101329-Keneba   <=168                NA                0.2557339   0.2267685   0.2846994
3 months    ki1101329-Keneba   >178                 NA                0.1965318   0.1372996   0.2557640
3 months    ki1101329-Keneba   168-173              NA                0.2443182   0.1994172   0.2892192
3 months    ki1101329-Keneba   173-178              NA                0.1880000   0.1395530   0.2364470
3 months    ki1119695-PROBIT   <=168                NA                0.1069364   0.0839096   0.1299632
3 months    ki1119695-PROBIT   >178                 NA                0.0558350   0.0457413   0.0659287
3 months    ki1119695-PROBIT   168-173              NA                0.0809743   0.0672547   0.0946939
3 months    ki1119695-PROBIT   173-178              NA                0.0653659   0.0546654   0.0760663
6 months    ki1101329-Keneba   <=168                NA                0.3473193   0.3154514   0.3791873
6 months    ki1101329-Keneba   >178                 NA                0.2573099   0.1917683   0.3228516
6 months    ki1101329-Keneba   168-173              NA                0.3532934   0.3020154   0.4045714
6 months    ki1101329-Keneba   173-178              NA                0.2154472   0.1640550   0.2668393
6 months    ki1119695-PROBIT   <=168                NA                0.1479821   0.1210729   0.1748912
6 months    ki1119695-PROBIT   >178                 NA                0.0758048   0.0639829   0.0876266
6 months    ki1119695-PROBIT   168-173              NA                0.1207598   0.1041238   0.1373959
6 months    ki1119695-PROBIT   173-178              NA                0.0955478   0.0826599   0.1084356


### Parameter: E(Y)


agecat      studyid            intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -----------------  -------------------  ---------------  ----------  ----------  ----------
12 months   ki1101329-Keneba   NA                   NA                0.4202727   0.4170385   0.4235068
12 months   ki1119695-PROBIT   NA                   NA                0.1389335   0.1381119   0.1397551
18 months   ki1101329-Keneba   NA                   NA                0.5200730   0.5166433   0.5235026
18 months   ki1119695-PROBIT   NA                   NA                0.1516835   0.1507179   0.1526491
24 months   ki1101329-Keneba   NA                   NA                0.5890751   0.5853384   0.5928118
24 months   ki1119695-PROBIT   NA                   NA                0.2009346   0.1984424   0.2034267
3 months    ki1101329-Keneba   NA                   NA                0.2367942   0.2354856   0.2381027
3 months    ki1119695-PROBIT   NA                   NA                0.0707313   0.0703387   0.0711239
6 months    ki1101329-Keneba   NA                   NA                0.3188316   0.3162845   0.3213787
6 months    ki1119695-PROBIT   NA                   NA                0.1011866   0.1005967   0.1017764


### Parameter: RR


agecat      studyid            intervention_level   baseline_level    estimate   ci_lower   ci_upper
----------  -----------------  -------------------  ---------------  ---------  ---------  ---------
12 months   ki1101329-Keneba   >178                 <=168             1.817205   1.423963   2.319045
12 months   ki1101329-Keneba   168-173              <=168             2.626915   2.295010   3.006819
12 months   ki1101329-Keneba   173-178              <=168             2.045240   1.695394   2.467278
12 months   ki1119695-PROBIT   >178                 <=168             1.621079   1.332721   1.971827
12 months   ki1119695-PROBIT   168-173              <=168             2.130542   1.769052   2.565900
12 months   ki1119695-PROBIT   173-178              <=168             1.928664   1.608773   2.312162
18 months   ki1101329-Keneba   >178                 <=168             1.980292   1.628193   2.408532
18 months   ki1101329-Keneba   168-173              <=168             2.567421   2.292161   2.875735
18 months   ki1101329-Keneba   173-178              <=168             2.051366   1.748321   2.406940
18 months   ki1119695-PROBIT   >178                 <=168             1.596324   1.322709   1.926539
18 months   ki1119695-PROBIT   168-173              <=168             2.082701   1.744010   2.487167
18 months   ki1119695-PROBIT   173-178              <=168             1.874027   1.574890   2.229982
24 months   ki1101329-Keneba   >178                 <=168             1.988414   1.658081   2.384558
24 months   ki1101329-Keneba   168-173              <=168             2.525119   2.284227   2.791414
24 months   ki1101329-Keneba   173-178              <=168             2.075245   1.797831   2.395466
24 months   ki1119695-PROBIT   >178                 <=168             1.547834   1.188054   2.016566
24 months   ki1119695-PROBIT   168-173              <=168             1.845221   1.425009   2.389347
24 months   ki1119695-PROBIT   173-178              <=168             1.750910   1.372484   2.233677
3 months    ki1101329-Keneba   >178                 <=168             2.156531   1.562885   2.975668
3 months    ki1101329-Keneba   168-173              <=168             2.599608   2.094848   3.225992
3 months    ki1101329-Keneba   173-178              <=168             2.085772   1.574046   2.763861
3 months    ki1119695-PROBIT   >178                 <=168             1.685619   1.272492   2.232871
3 months    ki1119695-PROBIT   168-173              <=168             2.132339   1.621289   2.804477
3 months    ki1119695-PROBIT   173-178              <=168             1.842750   1.406026   2.415125
6 months    ki1101329-Keneba   >178                 <=168             2.097708   1.600162   2.749958
6 months    ki1101329-Keneba   168-173              <=168             2.765442   2.329114   3.283511
6 months    ki1101329-Keneba   173-178              <=168             1.859512   1.440138   2.401011
6 months    ki1119695-PROBIT   >178                 <=168             1.669053   1.313508   2.120839
6 months    ki1119695-PROBIT   168-173              <=168             2.261535   1.800225   2.841056
6 months    ki1119695-PROBIT   173-178              <=168             1.907267   1.520844   2.391874


### Parameter: PAR


agecat      studyid            intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -----------------  -------------------  ---------------  -----------  -----------  -----------
12 months   ki1101329-Keneba   <=168                NA                -0.0437723   -0.0767052   -0.0108393
12 months   ki1119695-PROBIT   <=168                NA                -0.0703688   -0.1007804   -0.0399572
18 months   ki1101329-Keneba   <=168                NA                -0.0500524   -0.0830059   -0.0170989
18 months   ki1119695-PROBIT   <=168                NA                -0.0836106   -0.1159160   -0.0513052
24 months   ki1101329-Keneba   <=168                NA                -0.0554963   -0.0874398   -0.0235528
24 months   ki1119695-PROBIT   <=168                NA                -0.1452193   -0.2099371   -0.0805015
3 months    ki1101329-Keneba   <=168                NA                -0.0189398   -0.0479347    0.0100552
3 months    ki1119695-PROBIT   <=168                NA                -0.0362051   -0.0592353   -0.0131749
6 months    ki1101329-Keneba   <=168                NA                -0.0284878   -0.0604574    0.0034818
6 months    ki1119695-PROBIT   <=168                NA                -0.0467955   -0.0737111   -0.0198799


### Parameter: PAF


agecat      studyid            intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -----------------  -------------------  ---------------  ----------  ----------  ----------
12 months   ki1101329-Keneba   <=168                NA                0.5957300   0.5659641   0.6234546
12 months   ki1119695-PROBIT   <=168                NA                0.4851056   0.4045430   0.5547684
18 months   ki1101329-Keneba   <=168                NA                0.5983636   0.5744379   0.6209441
18 months   ki1119695-PROBIT   <=168                NA                0.4751564   0.3978633   0.5425277
24 months   ki1101329-Keneba   <=168                NA                0.5990434   0.5786441   0.6184550
24 months   ki1119695-PROBIT   <=168                NA                0.4403690   0.3251350   0.5359267
3 months    ki1101329-Keneba   <=168                NA                0.6038410   0.5562708   0.6463113
3 months    ki1119695-PROBIT   <=168                NA                0.4838890   0.3598355   0.5839029
6 months    ki1101329-Keneba   <=168                NA                0.6006744   0.5621492   0.6358099
6 months    ki1119695-PROBIT   <=168                NA                0.4952923   0.3945855   0.5792472


