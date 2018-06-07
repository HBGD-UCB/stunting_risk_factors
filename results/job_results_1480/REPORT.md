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
      uri: 'https://raw.githubusercontent.com/HBGD-UCB/longbowRiskFactors/master/inst/sample_data/birthwt_data.rdata'
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

**Intervention Variable:** enstunt

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        A         n      nA    nAY0   nAY1
----------  -------------------------  -----------------------------  ---  ------  ------  ------  -----
3 months    ki0047075b-MAL-ED          BANGLADESH                     0       257     210     182     28
3 months    ki0047075b-MAL-ED          BANGLADESH                     1       257      47       0     47
3 months    ki0047075b-MAL-ED          BRAZIL                         0       191     170     157     13
3 months    ki0047075b-MAL-ED          BRAZIL                         1       191      21       0     21
3 months    ki0047075b-MAL-ED          INDIA                          0       206     173     150     23
3 months    ki0047075b-MAL-ED          INDIA                          1       206      33       0     33
3 months    ki0047075b-MAL-ED          NEPAL                          0       173     155     147      8
3 months    ki0047075b-MAL-ED          NEPAL                          1       173      18       0     18
3 months    ki0047075b-MAL-ED          PERU                           0       287     253     192     61
3 months    ki0047075b-MAL-ED          PERU                           1       287      34       0     34
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0       262     234     193     41
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1       262      28       0     28
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0       123     105      91     14
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1       123      18       0     18
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          0        97      81      56     25
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          1        97      16       0     16
3 months    ki1000108-IRC              INDIA                          0       410     362     278     84
3 months    ki1000108-IRC              INDIA                          1       410      48       2     46
3 months    ki1000109-EE               PAKISTAN                       0         9       6       4      2
3 months    ki1000109-EE               PAKISTAN                       1         9       3       0      3
3 months    ki1000109-ResPak           PAKISTAN                       0        91      70      40     30
3 months    ki1000109-ResPak           PAKISTAN                       1        91      21       0     21
3 months    ki1000304b-SAS-CompFeed    INDIA                          0       469     339     313     26
3 months    ki1000304b-SAS-CompFeed    INDIA                          1       469     130       0    130
3 months    ki1017093-NIH-Birth        BANGLADESH                     0       624     525     484     41
3 months    ki1017093-NIH-Birth        BANGLADESH                     1       624      99       0     99
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     0        27      22      21      1
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     1        27       5       0      5
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0        20      19      16      3
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1        20       1       0      1
3 months    ki1101329-Keneba           GAMBIA                         0      2295    2079    1725    354
3 months    ki1101329-Keneba           GAMBIA                         1      2295     216       8    208
3 months    ki1113344-GMS-Nepal        NEPAL                          0        53      43      41      2
3 months    ki1113344-GMS-Nepal        NEPAL                          1        53      10       0     10
3 months    ki1114097-CMIN             BANGLADESH                     0        13       7       7      0
3 months    ki1114097-CMIN             BANGLADESH                     1        13       6       0      6
3 months    ki1114097-CMIN             BRAZIL                         0       115     110     108      2
3 months    ki1114097-CMIN             BRAZIL                         1       115       5       0      5
3 months    ki1114097-CMIN             GUINEA-BISSAU                  0       153     129     128      1
3 months    ki1114097-CMIN             GUINEA-BISSAU                  1       153      24       0     24
3 months    ki1114097-CMIN             PERU                           0       106     101      95      6
3 months    ki1114097-CMIN             PERU                           1       106       5       0      5
3 months    ki1114097-CONTENT          PERU                           0        55      49      45      4
3 months    ki1114097-CONTENT          PERU                           1        55       6       0      6
3 months    ki1119695-PROBIT           BELARUS                        0      6781    6760    6281    479
3 months    ki1119695-PROBIT           BELARUS                        1      6781      21       0     21
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       0     13902   12416   10951   1465
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       1     13902    1486      36   1450
3 months    ki1135781-COHORTS          GUATEMALA                      0       459     417     337     80
3 months    ki1135781-COHORTS          GUATEMALA                      1       459      42       0     42
3 months    ki1135781-COHORTS          INDIA                          0      7175    6299    5837    462
3 months    ki1135781-COHORTS          INDIA                          1      7175     876       0    876
3 months    ki1135781-COHORTS          PHILIPPINES                    0      3051    2864    2610    254
3 months    ki1135781-COHORTS          PHILIPPINES                    1      3051     187       0    187
3 months    kiGH5241-JiVitA-3          BANGLADESH                     0     13169    8702    7858    844
3 months    kiGH5241-JiVitA-3          BANGLADESH                     1     13169    4467       1   4466
3 months    kiGH5241-JiVitA-4          BANGLADESH                     0      1156     842     840      2
3 months    kiGH5241-JiVitA-4          BANGLADESH                     1      1156     314       0    314
6 months    ki0047075b-MAL-ED          BANGLADESH                     0       238     199     157     42
6 months    ki0047075b-MAL-ED          BANGLADESH                     1       238      39       0     39
6 months    ki0047075b-MAL-ED          BRAZIL                         0       180     163     146     17
6 months    ki0047075b-MAL-ED          BRAZIL                         1       180      17       0     17
6 months    ki0047075b-MAL-ED          INDIA                          0       195     163     126     37
6 months    ki0047075b-MAL-ED          INDIA                          1       195      32       0     32
6 months    ki0047075b-MAL-ED          NEPAL                          0       172     154     144     10
6 months    ki0047075b-MAL-ED          NEPAL                          1       172      18       0     18
6 months    ki0047075b-MAL-ED          PERU                           0       268     236     151     85
6 months    ki0047075b-MAL-ED          PERU                           1       268      32       0     32
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   0       229     205     144     61
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1       229      24       0     24
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0       119     103      79     24
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1       119      16       0     16
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          0        96      80      42     38
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1        96      16       0     16
6 months    ki1000108-IRC              INDIA                          0       408     361     234    127
6 months    ki1000108-IRC              INDIA                          1       408      47       1     46
6 months    ki1000109-EE               PAKISTAN                       0         9       6       3      3
6 months    ki1000109-EE               PAKISTAN                       1         9       3       0      3
6 months    ki1000109-ResPak           PAKISTAN                       0        82      65      26     39
6 months    ki1000109-ResPak           PAKISTAN                       1        82      17       0     17
6 months    ki1000304b-SAS-CompFeed    INDIA                          0       365     272     207     65
6 months    ki1000304b-SAS-CompFeed    INDIA                          1       365      93       0     93
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          0       104      62      61      1
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          1       104      42       0     42
6 months    ki1017093-NIH-Birth        BANGLADESH                     0       546     458     346    112
6 months    ki1017093-NIH-Birth        BANGLADESH                     1       546      88       0     88
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     0        27      22      15      7
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1        27       5       0      5
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0        19      18      12      6
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1        19       1       0      1
6 months    ki1101329-Keneba           GAMBIA                         0      2263    2044    1524    520
6 months    ki1101329-Keneba           GAMBIA                         1      2263     219       8    211
6 months    ki1112895-Guatemala BSC    GUATEMALA                      0       292     220     199     21
6 months    ki1112895-Guatemala BSC    GUATEMALA                      1       292      72       0     72
6 months    ki1113344-GMS-Nepal        NEPAL                          0        52      42      32     10
6 months    ki1113344-GMS-Nepal        NEPAL                          1        52      10       0     10
6 months    ki1114097-CMIN             BRAZIL                         0        87      82      72     10
6 months    ki1114097-CMIN             BRAZIL                         1        87       5       0      5
6 months    ki1114097-CMIN             GUINEA-BISSAU                  0       276     239     235      4
6 months    ki1114097-CMIN             GUINEA-BISSAU                  1       276      37       0     37
6 months    ki1114097-CMIN             PERU                           0        99      94      86      8
6 months    ki1114097-CMIN             PERU                           1        99       5       0      5
6 months    ki1114097-CONTENT          PERU                           0        55      49      43      6
6 months    ki1114097-CONTENT          PERU                           1        55       6       0      6
6 months    ki1119695-PROBIT           BELARUS                        0      6584    6563    5904    659
6 months    ki1119695-PROBIT           BELARUS                        1      6584      21       0     21
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       0      9000    8070    6313   1757
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       1      9000     930      30    900
6 months    ki1135781-COHORTS          GUATEMALA                      0       132     125      83     42
6 months    ki1135781-COHORTS          GUATEMALA                      1       132       7       0      7
6 months    ki1135781-COHORTS          PHILIPPINES                    0      2799    2638    2099    539
6 months    ki1135781-COHORTS          PHILIPPINES                    1      2799     161       0    161
6 months    ki1148112-LCNI-5           MALAWI                         0       270     173     173      0
6 months    ki1148112-LCNI-5           MALAWI                         1       270      97       0     97
6 months    kiGH5241-JiVitA-3          BANGLADESH                     0      9453    6403    5435    968
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1      9453    3050       0   3050
6 months    kiGH5241-JiVitA-4          BANGLADESH                     0      1171     850     786     64
6 months    kiGH5241-JiVitA-4          BANGLADESH                     1      1171     321       0    321
12 months   ki0047075b-MAL-ED          BANGLADESH                     0       232     195     133     62
12 months   ki0047075b-MAL-ED          BANGLADESH                     1       232      37       0     37
12 months   ki0047075b-MAL-ED          BRAZIL                         0       171     154     136     18
12 months   ki0047075b-MAL-ED          BRAZIL                         1       171      17       0     17
12 months   ki0047075b-MAL-ED          INDIA                          0       191     161     105     56
12 months   ki0047075b-MAL-ED          INDIA                          1       191      30       0     30
12 months   ki0047075b-MAL-ED          NEPAL                          0       170     152     138     14
12 months   ki0047075b-MAL-ED          NEPAL                          1       170      18       0     18
12 months   ki0047075b-MAL-ED          PERU                           0       257     226     125    101
12 months   ki0047075b-MAL-ED          PERU                           1       257      31       0     31
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0       220     198     119     79
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1       220      22       0     22
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0       115      99      45     54
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1       115      16       0     16
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          0        98      82      32     50
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          1        98      16       0     16
12 months   ki1000108-IRC              INDIA                          0       408     361     200    161
12 months   ki1000108-IRC              INDIA                          1       408      47       1     46
12 months   ki1000109-EE               PAKISTAN                       0         8       5       2      3
12 months   ki1000109-EE               PAKISTAN                       1         8       3       0      3
12 months   ki1000109-ResPak           PAKISTAN                       0        73      57      20     37
12 months   ki1000109-ResPak           PAKISTAN                       1        73      16       0     16
12 months   ki1000304b-SAS-CompFeed    INDIA                          0       424     312     174    138
12 months   ki1000304b-SAS-CompFeed    INDIA                          1       424     112       0    112
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          0        97      58      15     43
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          1        97      39       0     39
12 months   ki1017093-NIH-Birth        BANGLADESH                     0       537     451     262    189
12 months   ki1017093-NIH-Birth        BANGLADESH                     1       537      86       0     86
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     0        27      22      13      9
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     1        27       5       0      5
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0        15      15       7      8
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1        15       0       0      0
12 months   ki1101329-Keneba           GAMBIA                         0      2383    2158    1406    752
12 months   ki1101329-Keneba           GAMBIA                         1      2383     225       6    219
12 months   ki1112895-Guatemala BSC    GUATEMALA                      0       272     206     129     77
12 months   ki1112895-Guatemala BSC    GUATEMALA                      1       272      66       0     66
12 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0       796     627     627      0
12 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1       796     169       0    169
12 months   ki1113344-GMS-Nepal        NEPAL                          0        53      43      24     19
12 months   ki1113344-GMS-Nepal        NEPAL                          1        53      10       0     10
12 months   ki1114097-CMIN             BRAZIL                         0       112     107      81     26
12 months   ki1114097-CMIN             BRAZIL                         1       112       5       0      5
12 months   ki1114097-CMIN             GUINEA-BISSAU                  0       423     364     328     36
12 months   ki1114097-CMIN             GUINEA-BISSAU                  1       423      59       0     59
12 months   ki1114097-CMIN             PERU                           0       101      97      73     24
12 months   ki1114097-CMIN             PERU                           1       101       4       0      4
12 months   ki1114097-CONTENT          PERU                           0        55      49      41      8
12 months   ki1114097-CONTENT          PERU                           1        55       6       0      6
12 months   ki1119695-PROBIT           BELARUS                        0      6754    6733    5795    938
12 months   ki1119695-PROBIT           BELARUS                        1      6754      21       0     21
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       0     10058    9027    6239   2788
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       1     10058    1031      28   1003
12 months   ki1135781-COHORTS          GUATEMALA                      0       491     386     136    250
12 months   ki1135781-COHORTS          GUATEMALA                      1       491     105       0    105
12 months   ki1135781-COHORTS          INDIA                          0      6814    5990    4200   1790
12 months   ki1135781-COHORTS          INDIA                          1      6814     824       0    824
12 months   ki1135781-COHORTS          PHILIPPINES                    0      2756    2596    1545   1051
12 months   ki1135781-COHORTS          PHILIPPINES                    1      2756     160       0    160
12 months   ki1148112-LCNI-5           MALAWI                         0       802     503     423     80
12 months   ki1148112-LCNI-5           MALAWI                         1       802     299       0    299
12 months   kiGH5241-JiVitA-3          BANGLADESH                     0      8238    5663    4518   1145
12 months   kiGH5241-JiVitA-3          BANGLADESH                     1      8238    2575       1   2574
12 months   kiGH5241-JiVitA-4          BANGLADESH                     0      1324     964     744    220
12 months   kiGH5241-JiVitA-4          BANGLADESH                     1      1324     360       0    360
18 months   ki0047075b-MAL-ED          BANGLADESH                     0       224     187      98     89
18 months   ki0047075b-MAL-ED          BANGLADESH                     1       224      37       0     37
18 months   ki0047075b-MAL-ED          BRAZIL                         0       160     144     122     22
18 months   ki0047075b-MAL-ED          BRAZIL                         1       160      16       0     16
18 months   ki0047075b-MAL-ED          INDIA                          0       185     157      82     75
18 months   ki0047075b-MAL-ED          INDIA                          1       185      28       0     28
18 months   ki0047075b-MAL-ED          NEPAL                          0       167     150     120     30
18 months   ki0047075b-MAL-ED          NEPAL                          1       167      17       0     17
18 months   ki0047075b-MAL-ED          PERU                           0       233     204      78    126
18 months   ki0047075b-MAL-ED          PERU                           1       233      29       0     29
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0       215     193      95     98
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1       215      22       0     22
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0       111      95      22     73
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1       111      16       0     16
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          0        98      82      20     62
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          1        98      16       0     16
18 months   ki1000108-IRC              INDIA                          0       409     361     178    183
18 months   ki1000108-IRC              INDIA                          1       409      48       1     47
18 months   ki1000109-EE               PAKISTAN                       0         7       4       0      4
18 months   ki1000109-EE               PAKISTAN                       1         7       3       0      3
18 months   ki1000109-ResPak           PAKISTAN                       0        58      48      16     32
18 months   ki1000109-ResPak           PAKISTAN                       1        58      10       0     10
18 months   ki1000304b-SAS-CompFeed    INDIA                          0       415     303     125    178
18 months   ki1000304b-SAS-CompFeed    INDIA                          1       415     112       0    112
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          0        91      57      10     47
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          1        91      34       0     34
18 months   ki1017093-NIH-Birth        BANGLADESH                     0       494     413     173    240
18 months   ki1017093-NIH-Birth        BANGLADESH                     1       494      81       0     81
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     0        25      20      11      9
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     1        25       5       0      5
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0        13      12       6      6
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1        13       1       0      1
18 months   ki1101329-Keneba           GAMBIA                         0      2283    2046    1134    912
18 months   ki1101329-Keneba           GAMBIA                         1      2283     237       8    229
18 months   ki1112895-Guatemala BSC    GUATEMALA                      0       182     135      67     68
18 months   ki1112895-Guatemala BSC    GUATEMALA                      1       182      47       0     47
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0       124     101      77     24
18 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1       124      23       0     23
18 months   ki1113344-GMS-Nepal        NEPAL                          0        50      40      17     23
18 months   ki1113344-GMS-Nepal        NEPAL                          1        50      10       0     10
18 months   ki1114097-CMIN             BRAZIL                         0       114     109      79     30
18 months   ki1114097-CMIN             BRAZIL                         1       114       5       0      5
18 months   ki1114097-CMIN             GUINEA-BISSAU                  0       391     333     266     67
18 months   ki1114097-CMIN             GUINEA-BISSAU                  1       391      58       0     58
18 months   ki1114097-CMIN             PERU                           0        81      77      54     23
18 months   ki1114097-CMIN             PERU                           1        81       4       0      4
18 months   ki1114097-CONTENT          PERU                           0        55      49      41      8
18 months   ki1114097-CONTENT          PERU                           1        55       6       0      6
18 months   ki1119695-PROBIT           BELARUS                        0      6429    6410    5434    976
18 months   ki1119695-PROBIT           BELARUS                        1      6429      19       0     19
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       0      7192    6405    3643   2762
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       1      7192     787      22    765
18 months   ki1135781-COHORTS          GUATEMALA                      0       393     307      64    243
18 months   ki1135781-COHORTS          GUATEMALA                      1       393      86       0     86
18 months   ki1135781-COHORTS          PHILIPPINES                    0      2628    2477    1005   1472
18 months   ki1135781-COHORTS          PHILIPPINES                    1      2628     151       0    151
18 months   ki1148112-LCNI-5           MALAWI                         0       664     427     297    130
18 months   ki1148112-LCNI-5           MALAWI                         1       664     237       0    237
18 months   kiGH5241-JiVitA-3          BANGLADESH                     0      7203    4970    3293   1677
18 months   kiGH5241-JiVitA-3          BANGLADESH                     1      7203    2233       1   2232
18 months   kiGH5241-JiVitA-4          BANGLADESH                     0      1284     933     577    356
18 months   kiGH5241-JiVitA-4          BANGLADESH                     1      1284     351       0    351
24 months   ki0047075b-MAL-ED          BANGLADESH                     0       213     180      82     98
24 months   ki0047075b-MAL-ED          BANGLADESH                     1       213      33       0     33
24 months   ki0047075b-MAL-ED          BRAZIL                         0       144     131     109     22
24 months   ki0047075b-MAL-ED          BRAZIL                         1       144      13       0     13
24 months   ki0047075b-MAL-ED          INDIA                          0       184     156      74     82
24 months   ki0047075b-MAL-ED          INDIA                          1       184      28       0     28
24 months   ki0047075b-MAL-ED          NEPAL                          0       166     149     110     39
24 months   ki0047075b-MAL-ED          NEPAL                          1       166      17       0     17
24 months   ki0047075b-MAL-ED          PERU                           0       207     180      59    121
24 months   ki0047075b-MAL-ED          PERU                           1       207      27       0     27
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   0       205     185      78    107
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1       205      20       0     20
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   0       107      92      16     76
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1       107      15       0     15
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          0        98      82       9     73
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1        98      16       0     16
24 months   ki1000108-IRC              INDIA                          0       410     362     146    216
24 months   ki1000108-IRC              INDIA                          1       410      48       1     47
24 months   ki1000109-EE               PAKISTAN                       0         7       4       0      4
24 months   ki1000109-EE               PAKISTAN                       1         7       3       0      3
24 months   ki1000304b-SAS-CompFeed    INDIA                          0        43      31      13     18
24 months   ki1000304b-SAS-CompFeed    INDIA                          1        43      12       0     12
24 months   ki1000304b-SAS-FoodSuppl   INDIA                          0         9       5       1      4
24 months   ki1000304b-SAS-FoodSuppl   INDIA                          1         9       4       0      4
24 months   ki1017093-NIH-Birth        BANGLADESH                     0       467     389     115    274
24 months   ki1017093-NIH-Birth        BANGLADESH                     1       467      78       0     78
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     0        25      20       8     12
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1        25       5       0      5
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   0         7       6       5      1
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1         7       1       0      1
24 months   ki1101329-Keneba           GAMBIA                         0      2206    1972     937   1035
24 months   ki1101329-Keneba           GAMBIA                         1      2206     234       7    227
24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   0       550     425     319    106
24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1       550     125       0    125
24 months   ki1113344-GMS-Nepal        NEPAL                          0        52      43      13     30
24 months   ki1113344-GMS-Nepal        NEPAL                          1        52       9       0      9
24 months   ki1114097-CMIN             BRAZIL                         0       115     110      75     35
24 months   ki1114097-CMIN             BRAZIL                         1       115       5       0      5
24 months   ki1114097-CMIN             GUINEA-BISSAU                  0       382     320     239     81
24 months   ki1114097-CMIN             GUINEA-BISSAU                  1       382      62       0     62
24 months   ki1114097-CMIN             PERU                           0        55      53      38     15
24 months   ki1114097-CMIN             PERU                           1        55       2       0      2
24 months   ki1114097-CONTENT          PERU                           0        54      48      41      7
24 months   ki1114097-CONTENT          PERU                           1        54       6       0      6
24 months   ki1119695-PROBIT           BELARUS                        0      2075    2070    1648    422
24 months   ki1119695-PROBIT           BELARUS                        1      2075       5       0      5
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       0      1852    1566     524   1042
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       1      1852     286       2    284
24 months   ki1135781-COHORTS          GUATEMALA                      0       413     305      39    266
24 months   ki1135781-COHORTS          GUATEMALA                      1       413     108       0    108
24 months   ki1135781-COHORTS          PHILIPPINES                    0      2560    2416     632   1784
24 months   ki1135781-COHORTS          PHILIPPINES                    1      2560     144       0    144
24 months   ki1148112-LCNI-5           MALAWI                         0       713     459     247    212
24 months   ki1148112-LCNI-5           MALAWI                         1       713     254       0    254
24 months   kiGH5241-JiVitA-3          BANGLADESH                     0         3       2       2      0
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1         3       1       0      1
24 months   kiGH5241-JiVitA-4          BANGLADESH                     0      1125     811     456    355
24 months   kiGH5241-JiVitA-4          BANGLADESH                     1      1125     314       0    314


The following strata were considered:

* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 12 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 12 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 12 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 12 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 12 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 12 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 12 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 12 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 12 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 12 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 12 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 12 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 12 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 12 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 12 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 12 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 12 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 12 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 12 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 12 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 18 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 18 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 18 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 18 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 18 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 18 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 18 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 18 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 18 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 18 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 18 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 18 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 18 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 18 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 18 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 18 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 18 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 18 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 18 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 18 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 18 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 18 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 3 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 3 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 3 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 3 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 3 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 3 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 3 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 3 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 3 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 3 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 3 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 3 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 3 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 3 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 3 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 3 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 3 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 3 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 3 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 3 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 3 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 3 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 3 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 3 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 3 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 3 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 3 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 3 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 3 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 3 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 3 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 3 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 3 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 3 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 12 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 12 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 12 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 12 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 12 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 12 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 12 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 12 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 12 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 12 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 12 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 12 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 12 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 12 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 12 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 12 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 12 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 12 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 18 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 18 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 18 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 18 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 18 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 18 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 18 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 18 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 18 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 18 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 18 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 18 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 18 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 18 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 18 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 18 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 18 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 18 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 18 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 18 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* agecat: 24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/53268771-4e5e-43a3-b62c-a95a5d31f048/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->


```
## Warning: Removed 9 rows containing missing values (geom_errorbar).
```

![](/tmp/53268771-4e5e-43a3-b62c-a95a5d31f048/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/53268771-4e5e-43a3-b62c-a95a5d31f048/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/53268771-4e5e-43a3-b62c-a95a5d31f048/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid              country    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------  ---------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki1101329-Keneba     GAMBIA     0                    NA                0.1702742   0.1541136   0.1864348
3 months    ki1101329-Keneba     GAMBIA     1                    NA                0.9629629   0.9377723   0.9881536
3 months    ki1126311-ZVITAMBO   ZIMBABWE   0                    NA                0.1179929   0.1123183   0.1236675
3 months    ki1126311-ZVITAMBO   ZIMBABWE   1                    NA                0.9757739   0.9679563   0.9835914
6 months    ki1101329-Keneba     GAMBIA     0                    NA                0.2544031   0.2355181   0.2732881
6 months    ki1101329-Keneba     GAMBIA     1                    NA                0.9634703   0.9386181   0.9883225
6 months    ki1126311-ZVITAMBO   ZIMBABWE   0                    NA                0.2177200   0.2087153   0.2267246
6 months    ki1126311-ZVITAMBO   ZIMBABWE   1                    NA                0.9677419   0.9563858   0.9790980
12 months   ki1101329-Keneba     GAMBIA     0                    NA                0.3484708   0.3283630   0.3685786
12 months   ki1101329-Keneba     GAMBIA     1                    NA                0.9733333   0.9522780   0.9943887
12 months   ki1126311-ZVITAMBO   ZIMBABWE   0                    NA                0.3088512   0.2993198   0.3183827
12 months   ki1126311-ZVITAMBO   ZIMBABWE   1                    NA                0.9728419   0.9629196   0.9827642
18 months   ki1101329-Keneba     GAMBIA     0                    NA                0.4457478   0.4242057   0.4672899
18 months   ki1101329-Keneba     GAMBIA     1                    NA                0.9662447   0.9432470   0.9892423
18 months   ki1126311-ZVITAMBO   ZIMBABWE   0                    NA                0.4312256   0.4190962   0.4433551
18 months   ki1126311-ZVITAMBO   ZIMBABWE   1                    NA                0.9720457   0.9605282   0.9835632
24 months   ki1101329-Keneba     GAMBIA     0                    NA                0.5248479   0.5028021   0.5468937
24 months   ki1101329-Keneba     GAMBIA     1                    NA                0.9700855   0.9482539   0.9919170


### Parameter: E(Y)


agecat      studyid              country    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------  ---------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki1101329-Keneba     GAMBIA     NA                   NA                0.2448802   0.2272833   0.2624771
3 months    ki1126311-ZVITAMBO   ZIMBABWE   NA                   NA                0.2096821   0.2029149   0.2164492
6 months    ki1101329-Keneba     GAMBIA     NA                   NA                0.3230225   0.3037515   0.3422936
6 months    ki1126311-ZVITAMBO   ZIMBABWE   NA                   NA                0.2952222   0.2857979   0.3046466
12 months   ki1101329-Keneba     GAMBIA     NA                   NA                0.4074696   0.3877372   0.4272020
12 months   ki1126311-ZVITAMBO   ZIMBABWE   NA                   NA                0.3769139   0.3674426   0.3863852
18 months   ki1101329-Keneba     GAMBIA     NA                   NA                0.4997810   0.4792665   0.5202955
18 months   ki1126311-ZVITAMBO   ZIMBABWE   NA                   NA                0.4904060   0.4788517   0.5019603
24 months   ki1101329-Keneba     GAMBIA     NA                   NA                0.5720762   0.5514245   0.5927278


### Parameter: RR


agecat      studyid              country    intervention_level   baseline_level    estimate   ci_lower   ci_upper
----------  -------------------  ---------  -------------------  ---------------  ---------  ---------  ---------
3 months    ki1101329-Keneba     GAMBIA     0                    0                 1.000000   1.000000   1.000000
3 months    ki1101329-Keneba     GAMBIA     1                    0                 5.655367   5.125134   6.240457
3 months    ki1126311-ZVITAMBO   ZIMBABWE   0                    0                 1.000000   1.000000   1.000000
3 months    ki1126311-ZVITAMBO   ZIMBABWE   1                    0                 8.269767   7.876240   8.682956
6 months    ki1101329-Keneba     GAMBIA     0                    0                 1.000000   1.000000   1.000000
6 months    ki1101329-Keneba     GAMBIA     1                    0                 3.787179   3.500953   4.096807
6 months    ki1126311-ZVITAMBO   ZIMBABWE   0                    0                 1.000000   1.000000   1.000000
6 months    ki1126311-ZVITAMBO   ZIMBABWE   1                    0                 4.444893   4.257851   4.640152
12 months   ki1101329-Keneba     GAMBIA     0                    0                 1.000000   1.000000   1.000000
12 months   ki1101329-Keneba     GAMBIA     1                    0                 2.793156   2.626226   2.970697
12 months   ki1126311-ZVITAMBO   ZIMBABWE   0                    0                 1.000000   1.000000   1.000000
12 months   ki1126311-ZVITAMBO   ZIMBABWE   1                    0                 3.149872   3.049139   3.253933
18 months   ki1101329-Keneba     GAMBIA     0                    0                 1.000000   1.000000   1.000000
18 months   ki1101329-Keneba     GAMBIA     1                    0                 2.167694   2.054007   2.287672
18 months   ki1126311-ZVITAMBO   ZIMBABWE   0                    0                 1.000000   1.000000   1.000000
18 months   ki1126311-ZVITAMBO   ZIMBABWE   1                    0                 2.254147   2.186386   2.324008
24 months   ki1101329-Keneba     GAMBIA     0                    0                 1.000000   1.000000   1.000000
24 months   ki1101329-Keneba     GAMBIA     1                    0                 1.848317   1.762305   1.938528


### Parameter: PAR


agecat      studyid              country    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------  ---------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki1101329-Keneba     GAMBIA     0                    NA                0.0746060   0.0647244   0.0844876
3 months    ki1126311-ZVITAMBO   ZIMBABWE   0                    NA                0.0916891   0.0871640   0.0962143
6 months    ki1101329-Keneba     GAMBIA     0                    NA                0.0686194   0.0594675   0.0777713
6 months    ki1126311-ZVITAMBO   ZIMBABWE   0                    NA                0.0775023   0.0725533   0.0824512
12 months   ki1101329-Keneba     GAMBIA     0                    NA                0.0589988   0.0511631   0.0668344
12 months   ki1126311-ZVITAMBO   ZIMBABWE   0                    NA                0.0680627   0.0638815   0.0722438
18 months   ki1101329-Keneba     GAMBIA     0                    NA                0.0540332   0.0467442   0.0613222
18 months   ki1126311-ZVITAMBO   ZIMBABWE   0                    NA                0.0591804   0.0548703   0.0634905
24 months   ki1101329-Keneba     GAMBIA     0                    NA                0.0472283   0.0406268   0.0538297


### Parameter: PAF


agecat      studyid              country    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------  ---------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki1101329-Keneba     GAMBIA     0                    NA                0.3046633   0.2667151   0.3406476
3 months    ki1126311-ZVITAMBO   ZIMBABWE   0                    NA                0.4372770   0.4189272   0.4550473
6 months    ki1101329-Keneba     GAMBIA     0                    NA                0.2124292   0.1843201   0.2395696
6 months    ki1126311-ZVITAMBO   ZIMBABWE   0                    NA                0.2625218   0.2464053   0.2782936
12 months   ki1101329-Keneba     GAMBIA     0                    NA                0.1447931   0.1251162   0.1640274
12 months   ki1126311-ZVITAMBO   ZIMBABWE   0                    NA                0.1805788   0.1694185   0.1915892
18 months   ki1101329-Keneba     GAMBIA     0                    NA                0.1081137   0.0928819   0.1230898
18 months   ki1126311-ZVITAMBO   ZIMBABWE   0                    NA                0.1206763   0.1115274   0.1297311
24 months   ki1101329-Keneba     GAMBIA     0                    NA                0.0825559   0.0703903   0.0945624
