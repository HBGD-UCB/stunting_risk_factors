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

**Outcome Variable:** sstunted

## Predictor Variables

**Intervention Variable:** mage

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        A              n     nA   nAY0   nAY1
----------  -------------------------  -----------------------------  --------  ------  -----  -----  -----
Birth       ki0047075b-MAL-ED          BANGLADESH                     <20          257     36     35      1
Birth       ki0047075b-MAL-ED          BANGLADESH                     [20-25)      257     84     80      4
Birth       ki0047075b-MAL-ED          BANGLADESH                     [25-30)      257     92     90      2
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=30         257     45     43      2
Birth       ki0047075b-MAL-ED          BRAZIL                         <20          191     34     33      1
Birth       ki0047075b-MAL-ED          BRAZIL                         [20-25)      191     63     62      1
Birth       ki0047075b-MAL-ED          BRAZIL                         [25-30)      191     54     49      5
Birth       ki0047075b-MAL-ED          BRAZIL                         >=30         191     40     39      1
Birth       ki0047075b-MAL-ED          INDIA                          <20          205     25     24      1
Birth       ki0047075b-MAL-ED          INDIA                          [20-25)      205     97     94      3
Birth       ki0047075b-MAL-ED          INDIA                          [25-30)      205     68     65      3
Birth       ki0047075b-MAL-ED          INDIA                          >=30         205     15     15      0
Birth       ki0047075b-MAL-ED          NEPAL                          <20          173      5      4      1
Birth       ki0047075b-MAL-ED          NEPAL                          [20-25)      173     41     40      1
Birth       ki0047075b-MAL-ED          NEPAL                          [25-30)      173     91     88      3
Birth       ki0047075b-MAL-ED          NEPAL                          >=30         173     36     35      1
Birth       ki0047075b-MAL-ED          PERU                           <20          287     77     73      4
Birth       ki0047075b-MAL-ED          PERU                           [20-25)      287     84     83      1
Birth       ki0047075b-MAL-ED          PERU                           [25-30)      287     61     59      2
Birth       ki0047075b-MAL-ED          PERU                           >=30         287     65     64      1
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <20          262     41     40      1
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [20-25)      262     82     82      0
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)      262     53     52      1
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=30         262     86     86      0
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20          123      9      9      0
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-25)      123     40     36      4
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)      123     34     33      1
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30         123     40     39      1
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          <20           90      9      7      2
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          [20-25)       90     44     43      1
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)       90     33     33      0
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          >=30          90      4      4      0
Birth       ki1000108-IRC              INDIA                          <20          388     35     31      4
Birth       ki1000108-IRC              INDIA                          [20-25)      388    210    201      9
Birth       ki1000108-IRC              INDIA                          [25-30)      388    115    112      3
Birth       ki1000108-IRC              INDIA                          >=30         388     28     28      0
Birth       ki1000109-EE               PAKISTAN                       <20            2      0      0      0
Birth       ki1000109-EE               PAKISTAN                       [20-25)        2      0      0      0
Birth       ki1000109-EE               PAKISTAN                       [25-30)        2      1      1      0
Birth       ki1000109-EE               PAKISTAN                       >=30           2      1      1      0
Birth       ki1017093-NIH-Birth        BANGLADESH                     <20           28      6      6      0
Birth       ki1017093-NIH-Birth        BANGLADESH                     [20-25)       28     10     10      0
Birth       ki1017093-NIH-Birth        BANGLADESH                     [25-30)       28      5      5      0
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=30          28      7      7      0
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <20           27      3      3      0
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [20-25)       27     13     12      1
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)       27      9      9      0
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=30          27      2      2      0
Birth       ki1101329-Keneba           GAMBIA                         <20         1541    238    231      7
Birth       ki1101329-Keneba           GAMBIA                         [20-25)     1541    365    358      7
Birth       ki1101329-Keneba           GAMBIA                         [25-30)     1541    340    336      4
Birth       ki1101329-Keneba           GAMBIA                         >=30        1541    598    587     11
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <20        13790   2200   2117     83
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [20-25)    13790   5824   5651    173
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)    13790   3442   3338    104
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=30       13790   2324   2245     79
Birth       ki1135781-COHORTS          GUATEMALA                      <20          407     66     65      1
Birth       ki1135781-COHORTS          GUATEMALA                      [20-25)      407    100     99      1
Birth       ki1135781-COHORTS          GUATEMALA                      [25-30)      407     85     85      0
Birth       ki1135781-COHORTS          GUATEMALA                      >=30         407    156    154      2
Birth       ki1135781-COHORTS          INDIA                          <20         4715    368    352     16
Birth       ki1135781-COHORTS          INDIA                          [20-25)     4715   1622   1571     51
Birth       ki1135781-COHORTS          INDIA                          [25-30)     4715   1558   1516     42
Birth       ki1135781-COHORTS          INDIA                          >=30        4715   1167   1138     29
Birth       ki1135781-COHORTS          PHILIPPINES                    <20         3050    378    368     10
Birth       ki1135781-COHORTS          PHILIPPINES                    [20-25)     3050    966    956     10
Birth       ki1135781-COHORTS          PHILIPPINES                    [25-30)     3050    855    846      9
Birth       ki1135781-COHORTS          PHILIPPINES                    >=30        3050    851    834     17
3 months    ki0047075b-MAL-ED          BANGLADESH                     <20          250     36     33      3
3 months    ki0047075b-MAL-ED          BANGLADESH                     [20-25)      250     81     79      2
3 months    ki0047075b-MAL-ED          BANGLADESH                     [25-30)      250     89     89      0
3 months    ki0047075b-MAL-ED          BANGLADESH                     >=30         250     44     42      2
3 months    ki0047075b-MAL-ED          BRAZIL                         <20          225     41     41      0
3 months    ki0047075b-MAL-ED          BRAZIL                         [20-25)      225     70     69      1
3 months    ki0047075b-MAL-ED          BRAZIL                         [25-30)      225     64     64      0
3 months    ki0047075b-MAL-ED          BRAZIL                         >=30         225     50     50      0
3 months    ki0047075b-MAL-ED          INDIA                          <20          239     34     34      0
3 months    ki0047075b-MAL-ED          INDIA                          [20-25)      239    105    100      5
3 months    ki0047075b-MAL-ED          INDIA                          [25-30)      239     79     74      5
3 months    ki0047075b-MAL-ED          INDIA                          >=30         239     21     21      0
3 months    ki0047075b-MAL-ED          NEPAL                          <20          236      5      4      1
3 months    ki0047075b-MAL-ED          NEPAL                          [20-25)      236     57     56      1
3 months    ki0047075b-MAL-ED          NEPAL                          [25-30)      236    128    127      1
3 months    ki0047075b-MAL-ED          NEPAL                          >=30         236     46     46      0
3 months    ki0047075b-MAL-ED          PERU                           <20          291     79     74      5
3 months    ki0047075b-MAL-ED          PERU                           [20-25)      291     84     76      8
3 months    ki0047075b-MAL-ED          PERU                           [25-30)      291     64     61      3
3 months    ki0047075b-MAL-ED          PERU                           >=30         291     64     60      4
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20          281     42     39      3
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-25)      281     90     88      2
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)      281     51     49      2
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30         281     98     95      3
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20          254     15     15      0
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-25)      254     66     61      5
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)      254     67     65      2
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30         254    106    100      6
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20          362     33     29      4
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-25)      362    181    163     18
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)      362    106     97      9
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30         362     42     40      2
3 months    ki1000108-IRC              INDIA                          <20          407     37     31      6
3 months    ki1000108-IRC              INDIA                          [20-25)      407    219    196     23
3 months    ki1000108-IRC              INDIA                          [25-30)      407    123    116      7
3 months    ki1000108-IRC              INDIA                          >=30         407     28     28      0
3 months    ki1000109-EE               PAKISTAN                       <20          374      1      0      1
3 months    ki1000109-EE               PAKISTAN                       [20-25)      374     20     13      7
3 months    ki1000109-EE               PAKISTAN                       [25-30)      374    141     98     43
3 months    ki1000109-EE               PAKISTAN                       >=30         374    212    142     70
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          <20           97      6      5      1
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-25)       97     36     33      3
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)       97     37     29      8
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30          97     18     17      1
3 months    ki1017093-NIH-Birth        BANGLADESH                     <20          568     61     60      1
3 months    ki1017093-NIH-Birth        BANGLADESH                     [20-25)      568    214    205      9
3 months    ki1017093-NIH-Birth        BANGLADESH                     [25-30)      568    169    156     13
3 months    ki1017093-NIH-Birth        BANGLADESH                     >=30         568    124    114     10
3 months    ki1017093b-PROVIDE         BANGLADESH                     <20          645     74     73      1
3 months    ki1017093b-PROVIDE         BANGLADESH                     [20-25)      645    260    259      1
3 months    ki1017093b-PROVIDE         BANGLADESH                     [25-30)      645    193    188      5
3 months    ki1017093b-PROVIDE         BANGLADESH                     >=30         645    118    115      3
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20          728    133    123     10
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-25)      728    249    236     13
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)      728    222    218      4
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30         728    124    118      6
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20         2274    159    157      2
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-25)     2274    710    701      9
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)     2274    780    771      9
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30        2274    625    622      3
3 months    ki1101329-Keneba           GAMBIA                         <20         2174    318    307     11
3 months    ki1101329-Keneba           GAMBIA                         [20-25)     2174    570    553     17
3 months    ki1101329-Keneba           GAMBIA                         [25-30)     2174    467    457     10
3 months    ki1101329-Keneba           GAMBIA                         >=30        2174    819    785     34
3 months    ki1112895-Guatemala BSC    GUATEMALA                      <20           21      4      3      1
3 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-25)       21      8      7      1
3 months    ki1112895-Guatemala BSC    GUATEMALA                      [25-30)       21      4      4      0
3 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30          21      5      5      0
3 months    ki1113344-GMS-Nepal        NEPAL                          <20          571    115    107      8
3 months    ki1113344-GMS-Nepal        NEPAL                          [20-25)      571    198    195      3
3 months    ki1113344-GMS-Nepal        NEPAL                          [25-30)      571    169    167      2
3 months    ki1113344-GMS-Nepal        NEPAL                          >=30         571     89     80      9
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20         9173   1396   1299     97
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-25)     9173   3727   3522    205
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)     9173   2354   2227    127
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30        9173   1696   1599     97
3 months    ki1135781-COHORTS          GUATEMALA                      <20          474     73     68      5
3 months    ki1135781-COHORTS          GUATEMALA                      [20-25)      474    112    101     11
3 months    ki1135781-COHORTS          GUATEMALA                      [25-30)      474    105     98      7
3 months    ki1135781-COHORTS          GUATEMALA                      >=30         474    184    163     21
3 months    ki1135781-COHORTS          INDIA                          <20         5021    399    382     17
3 months    ki1135781-COHORTS          INDIA                          [20-25)     5021   1734   1669     65
3 months    ki1135781-COHORTS          INDIA                          [25-30)     5021   1665   1606     59
3 months    ki1135781-COHORTS          INDIA                          >=30        5021   1223   1179     44
3 months    ki1135781-COHORTS          PHILIPPINES                    <20         2875    349    336     13
3 months    ki1135781-COHORTS          PHILIPPINES                    [20-25)     2875    903    889     14
3 months    ki1135781-COHORTS          PHILIPPINES                    [25-30)     2875    808    790     18
3 months    ki1135781-COHORTS          PHILIPPINES                    >=30        2875    815    786     29
6 months    ki0047075b-MAL-ED          BANGLADESH                     <20          241     35     32      3
6 months    ki0047075b-MAL-ED          BANGLADESH                     [20-25)      241     78     75      3
6 months    ki0047075b-MAL-ED          BANGLADESH                     [25-30)      241     87     85      2
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30         241     41     41      0
6 months    ki0047075b-MAL-ED          BRAZIL                         <20          209     37     37      0
6 months    ki0047075b-MAL-ED          BRAZIL                         [20-25)      209     63     63      0
6 months    ki0047075b-MAL-ED          BRAZIL                         [25-30)      209     62     62      0
6 months    ki0047075b-MAL-ED          BRAZIL                         >=30         209     47     47      0
6 months    ki0047075b-MAL-ED          INDIA                          <20          234     34     34      0
6 months    ki0047075b-MAL-ED          INDIA                          [20-25)      234    103     99      4
6 months    ki0047075b-MAL-ED          INDIA                          [25-30)      234     76     71      5
6 months    ki0047075b-MAL-ED          INDIA                          >=30         234     21     21      0
6 months    ki0047075b-MAL-ED          NEPAL                          <20          236      5      4      1
6 months    ki0047075b-MAL-ED          NEPAL                          [20-25)      236     58     58      0
6 months    ki0047075b-MAL-ED          NEPAL                          [25-30)      236    127    127      0
6 months    ki0047075b-MAL-ED          NEPAL                          >=30         236     46     46      0
6 months    ki0047075b-MAL-ED          PERU                           <20          273     76     71      5
6 months    ki0047075b-MAL-ED          PERU                           [20-25)      273     77     75      2
6 months    ki0047075b-MAL-ED          PERU                           [25-30)      273     59     57      2
6 months    ki0047075b-MAL-ED          PERU                           >=30         273     61     58      3
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20          254     42     40      2
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-25)      254     77     76      1
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)      254     41     40      1
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30         254     94     92      2
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20          247     15     15      0
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-25)      247     63     59      4
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)      247     65     59      6
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30         247    104    100      4
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20          369     33     30      3
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-25)      369    185    164     21
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)      369    108     97     11
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30         369     43     36      7
6 months    ki1000108-IRC              INDIA                          <20          407     36     34      2
6 months    ki1000108-IRC              INDIA                          [20-25)      407    219    198     21
6 months    ki1000108-IRC              INDIA                          [25-30)      407    123    119      4
6 months    ki1000108-IRC              INDIA                          >=30         407     29     27      2
6 months    ki1000109-EE               PAKISTAN                       <20          370      1      0      1
6 months    ki1000109-EE               PAKISTAN                       [20-25)      370     19     15      4
6 months    ki1000109-EE               PAKISTAN                       [25-30)      370    140    111     29
6 months    ki1000109-EE               PAKISTAN                       >=30         370    210    151     59
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <20           96      8      7      1
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-25)       96     35     32      3
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)       96     35     26      9
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30          96     18     16      2
6 months    ki1017093-NIH-Birth        BANGLADESH                     <20          535     61     59      2
6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-25)      535    195    184     11
6 months    ki1017093-NIH-Birth        BANGLADESH                     [25-30)      535    162    150     12
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30         535    117    107     10
6 months    ki1017093b-PROVIDE         BANGLADESH                     <20          583     65     64      1
6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-25)      583    227    222      5
6 months    ki1017093b-PROVIDE         BANGLADESH                     [25-30)      583    182    177      5
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30         583    109    106      3
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20          715    131    124      7
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-25)      715    243    238      5
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)      715    219    214      5
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30         715    122    116      6
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20         2012    146    145      1
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-25)     2012    624    622      2
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)     2012    694    685      9
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30        2012    548    542      6
6 months    ki1101329-Keneba           GAMBIA                         <20         2080    288    284      4
6 months    ki1101329-Keneba           GAMBIA                         [20-25)     2080    524    508     16
6 months    ki1101329-Keneba           GAMBIA                         [25-30)     2080    463    452     11
6 months    ki1101329-Keneba           GAMBIA                         >=30        2080    805    766     39
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <20          276     46     42      4
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-25)      276    108     98     10
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [25-30)      276     63     59      4
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30         276     59     52      7
6 months    ki1113344-GMS-Nepal        NEPAL                          <20          563    108    100      8
6 months    ki1113344-GMS-Nepal        NEPAL                          [20-25)      563    199    195      4
6 months    ki1113344-GMS-Nepal        NEPAL                          [25-30)      563    171    169      2
6 months    ki1113344-GMS-Nepal        NEPAL                          >=30         563     85     79      6
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20         8280   1261   1198     63
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-25)     8280   3364   3239    125
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)     8280   2117   2023     94
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30        8280   1538   1475     63
6 months    ki1135781-COHORTS          GUATEMALA                      <20          464     66     62      4
6 months    ki1135781-COHORTS          GUATEMALA                      [20-25)      464    115    102     13
6 months    ki1135781-COHORTS          GUATEMALA                      [25-30)      464     98     78     20
6 months    ki1135781-COHORTS          GUATEMALA                      >=30         464    185    150     35
6 months    ki1135781-COHORTS          INDIA                          <20         4904    371    352     19
6 months    ki1135781-COHORTS          INDIA                          [20-25)     4904   1708   1623     85
6 months    ki1135781-COHORTS          INDIA                          [25-30)     4904   1623   1551     72
6 months    ki1135781-COHORTS          INDIA                          >=30        4904   1202   1139     63
6 months    ki1135781-COHORTS          PHILIPPINES                    <20         2708    331    310     21
6 months    ki1135781-COHORTS          PHILIPPINES                    [20-25)     2708    843    809     34
6 months    ki1135781-COHORTS          PHILIPPINES                    [25-30)     2708    758    736     22
6 months    ki1135781-COHORTS          PHILIPPINES                    >=30        2708    776    721     55
6 months    ki1148112-LCNI-5           MALAWI                         <20          669    107    103      4
6 months    ki1148112-LCNI-5           MALAWI                         [20-25)      669    193    177     16
6 months    ki1148112-LCNI-5           MALAWI                         [25-30)      669    171    156     15
6 months    ki1148112-LCNI-5           MALAWI                         >=30         669    198    180     18
9 months    ki0047075b-MAL-ED          BANGLADESH                     <20          234     34     31      3
9 months    ki0047075b-MAL-ED          BANGLADESH                     [20-25)      234     75     71      4
9 months    ki0047075b-MAL-ED          BANGLADESH                     [25-30)      234     84     80      4
9 months    ki0047075b-MAL-ED          BANGLADESH                     >=30         234     41     41      0
9 months    ki0047075b-MAL-ED          BRAZIL                         <20          199     34     34      0
9 months    ki0047075b-MAL-ED          BRAZIL                         [20-25)      199     60     60      0
9 months    ki0047075b-MAL-ED          BRAZIL                         [25-30)      199     60     60      0
9 months    ki0047075b-MAL-ED          BRAZIL                         >=30         199     45     45      0
9 months    ki0047075b-MAL-ED          INDIA                          <20          230     34     33      1
9 months    ki0047075b-MAL-ED          INDIA                          [20-25)      230    100     96      4
9 months    ki0047075b-MAL-ED          INDIA                          [25-30)      230     75     70      5
9 months    ki0047075b-MAL-ED          INDIA                          >=30         230     21     21      0
9 months    ki0047075b-MAL-ED          NEPAL                          <20          231      4      4      0
9 months    ki0047075b-MAL-ED          NEPAL                          [20-25)      231     56     55      1
9 months    ki0047075b-MAL-ED          NEPAL                          [25-30)      231    126    126      0
9 months    ki0047075b-MAL-ED          NEPAL                          >=30         231     45     45      0
9 months    ki0047075b-MAL-ED          PERU                           <20          256     72     67      5
9 months    ki0047075b-MAL-ED          PERU                           [20-25)      256     68     64      4
9 months    ki0047075b-MAL-ED          PERU                           [25-30)      256     57     56      1
9 months    ki0047075b-MAL-ED          PERU                           >=30         256     59     57      2
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20          250     41     39      2
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-25)      250     74     71      3
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)      250     41     41      0
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30         250     94     90      4
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20          238     13     10      3
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-25)      238     58     52      6
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)      238     64     55      9
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30         238    103     92     11
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20          366     34     31      3
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-25)      366    184    158     26
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)      366    107     94     13
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30         366     41     36      5
9 months    ki1000108-IRC              INDIA                          <20          407     36     35      1
9 months    ki1000108-IRC              INDIA                          [20-25)      407    219    193     26
9 months    ki1000108-IRC              INDIA                          [25-30)      407    123    118      5
9 months    ki1000108-IRC              INDIA                          >=30         407     29     27      2
9 months    ki1000109-EE               PAKISTAN                       <20          364      1      1      0
9 months    ki1000109-EE               PAKISTAN                       [20-25)      364     20     17      3
9 months    ki1000109-EE               PAKISTAN                       [25-30)      364    139    105     34
9 months    ki1000109-EE               PAKISTAN                       >=30         364    204    147     57
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          <20           85      8      6      2
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-25)       85     29     23      6
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)       85     32     22     10
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30          85     16     14      2
9 months    ki1017093-NIH-Birth        BANGLADESH                     <20          505     52     51      1
9 months    ki1017093-NIH-Birth        BANGLADESH                     [20-25)      505    187    169     18
9 months    ki1017093-NIH-Birth        BANGLADESH                     [25-30)      505    156    140     16
9 months    ki1017093-NIH-Birth        BANGLADESH                     >=30         505    110    100     10
9 months    ki1017093b-PROVIDE         BANGLADESH                     <20          605     67     63      4
9 months    ki1017093b-PROVIDE         BANGLADESH                     [20-25)      605    242    237      5
9 months    ki1017093b-PROVIDE         BANGLADESH                     [25-30)      605    186    175     11
9 months    ki1017093b-PROVIDE         BANGLADESH                     >=30         605    110    105      5
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20          706    124    118      6
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-25)      706    247    236     11
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)      706    215    209      6
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30         706    120    115      5
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20         1773    122    120      2
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-25)     1773    540    528     12
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)     1773    609    594     15
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30        1773    502    498      4
9 months    ki1101329-Keneba           GAMBIA                         <20         2057    276    269      7
9 months    ki1101329-Keneba           GAMBIA                         [20-25)     2057    501    481     20
9 months    ki1101329-Keneba           GAMBIA                         [25-30)     2057    470    452     18
9 months    ki1101329-Keneba           GAMBIA                         >=30        2057    810    757     53
9 months    ki1112895-Guatemala BSC    GUATEMALA                      <20          231     35     29      6
9 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-25)      231     91     79     12
9 months    ki1112895-Guatemala BSC    GUATEMALA                      [25-30)      231     57     52      5
9 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30         231     48     41      7
9 months    ki1113344-GMS-Nepal        NEPAL                          <20          551    110     98     12
9 months    ki1113344-GMS-Nepal        NEPAL                          [20-25)      551    192    183      9
9 months    ki1113344-GMS-Nepal        NEPAL                          [25-30)      551    167    159      8
9 months    ki1113344-GMS-Nepal        NEPAL                          >=30         551     82     76      6
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20         7657   1163   1106     57
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-25)     7657   3125   2975    150
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)     7657   1968   1883     85
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30        7657   1401   1324     77
9 months    ki1135781-COHORTS          GUATEMALA                      <20          453     68     58     10
9 months    ki1135781-COHORTS          GUATEMALA                      [20-25)      453    113     91     22
9 months    ki1135781-COHORTS          GUATEMALA                      [25-30)      453     95     71     24
9 months    ki1135781-COHORTS          GUATEMALA                      >=30         453    177    118     59
9 months    ki1135781-COHORTS          INDIA                          <20         4283    301    276     25
9 months    ki1135781-COHORTS          INDIA                          [20-25)     4283   1456   1348    108
9 months    ki1135781-COHORTS          INDIA                          [25-30)     4283   1430   1318    112
9 months    ki1135781-COHORTS          INDIA                          >=30        4283   1096    983    113
9 months    ki1135781-COHORTS          PHILIPPINES                    <20         2712    331    303     28
9 months    ki1135781-COHORTS          PHILIPPINES                    [20-25)     2712    854    802     52
9 months    ki1135781-COHORTS          PHILIPPINES                    [25-30)     2712    754    707     47
9 months    ki1135781-COHORTS          PHILIPPINES                    >=30        2712    773    704     69
9 months    ki1148112-LCNI-5           MALAWI                         <20          538     93     90      3
9 months    ki1148112-LCNI-5           MALAWI                         [20-25)      538    148    136     12
9 months    ki1148112-LCNI-5           MALAWI                         [25-30)      538    138    130      8
9 months    ki1148112-LCNI-5           MALAWI                         >=30         538    159    144     15
12 months   ki0047075b-MAL-ED          BANGLADESH                     <20          233     34     30      4
12 months   ki0047075b-MAL-ED          BANGLADESH                     [20-25)      233     75     71      4
12 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)      233     84     79      5
12 months   ki0047075b-MAL-ED          BANGLADESH                     >=30         233     40     36      4
12 months   ki0047075b-MAL-ED          BRAZIL                         <20          195     34     34      0
12 months   ki0047075b-MAL-ED          BRAZIL                         [20-25)      195     58     58      0
12 months   ki0047075b-MAL-ED          BRAZIL                         [25-30)      195     60     60      0
12 months   ki0047075b-MAL-ED          BRAZIL                         >=30         195     43     43      0
12 months   ki0047075b-MAL-ED          INDIA                          <20          226     33     31      2
12 months   ki0047075b-MAL-ED          INDIA                          [20-25)      226     99     91      8
12 months   ki0047075b-MAL-ED          INDIA                          [25-30)      226     73     65      8
12 months   ki0047075b-MAL-ED          INDIA                          >=30         226     21     21      0
12 months   ki0047075b-MAL-ED          NEPAL                          <20          231      4      4      0
12 months   ki0047075b-MAL-ED          NEPAL                          [20-25)      231     56     53      3
12 months   ki0047075b-MAL-ED          NEPAL                          [25-30)      231    126    124      2
12 months   ki0047075b-MAL-ED          NEPAL                          >=30         231     45     45      0
12 months   ki0047075b-MAL-ED          PERU                           <20          246     70     66      4
12 months   ki0047075b-MAL-ED          PERU                           [20-25)      246     65     60      5
12 months   ki0047075b-MAL-ED          PERU                           [25-30)      246     57     54      3
12 months   ki0047075b-MAL-ED          PERU                           >=30         246     54     53      1
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20          252     42     40      2
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-25)      252     75     70      5
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)      252     41     41      0
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30         252     94     89      5
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20          231     13     11      2
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-25)      231     57     51      6
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)      231     61     50     11
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30         231    100     82     18
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20          368     32     26      6
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-25)      368    185    136     49
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)      368    108     89     19
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30         368     43     34      9
12 months   ki1000108-IRC              INDIA                          <20          406     35     34      1
12 months   ki1000108-IRC              INDIA                          [20-25)      406    219    190     29
12 months   ki1000108-IRC              INDIA                          [25-30)      406    123    120      3
12 months   ki1000108-IRC              INDIA                          >=30         406     29     28      1
12 months   ki1000109-EE               PAKISTAN                       <20          355      1      1      0
12 months   ki1000109-EE               PAKISTAN                       [20-25)      355     18     13      5
12 months   ki1000109-EE               PAKISTAN                       [25-30)      355    135     89     46
12 months   ki1000109-EE               PAKISTAN                       >=30         355    201    133     68
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          <20           92      6      3      3
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-25)       92     34     19     15
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)       92     35     19     16
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30          92     17     10      7
12 months   ki1017093-NIH-Birth        BANGLADESH                     <20          489     54     50      4
12 months   ki1017093-NIH-Birth        BANGLADESH                     [20-25)      489    180    165     15
12 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)      489    150    135     15
12 months   ki1017093-NIH-Birth        BANGLADESH                     >=30         489    105     91     14
12 months   ki1017093b-PROVIDE         BANGLADESH                     <20          600     64     60      4
12 months   ki1017093b-PROVIDE         BANGLADESH                     [20-25)      600    242    232     10
12 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)      600    186    172     14
12 months   ki1017093b-PROVIDE         BANGLADESH                     >=30         600    108    100      8
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20          706    127    116     11
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-25)      706    240    221     19
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)      706    218    212      6
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30         706    121    116      5
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20         1433     96     92      4
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-25)     1433    432    421     11
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)     1433    490    480     10
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30        1433    415    407      8
12 months   ki1101329-Keneba           GAMBIA                         <20         1935    254    241     13
12 months   ki1101329-Keneba           GAMBIA                         [20-25)     1935    471    451     20
12 months   ki1101329-Keneba           GAMBIA                         [25-30)     1935    441    420     21
12 months   ki1101329-Keneba           GAMBIA                         >=30        1935    769    695     74
12 months   ki1112895-Guatemala BSC    GUATEMALA                      <20          199     33     26      7
12 months   ki1112895-Guatemala BSC    GUATEMALA                      [20-25)      199     80     65     15
12 months   ki1112895-Guatemala BSC    GUATEMALA                      [25-30)      199     44     38      6
12 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30         199     42     35      7
12 months   ki1113344-GMS-Nepal        NEPAL                          <20          558    107     93     14
12 months   ki1113344-GMS-Nepal        NEPAL                          [20-25)      558    194    185      9
12 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)      558    172    156     16
12 months   ki1113344-GMS-Nepal        NEPAL                          >=30         558     85     73     12
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20         6731   1032    950     82
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-25)     6731   2713   2535    178
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)     6731   1740   1634    106
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30        6731   1246   1168     78
12 months   ki1135781-COHORTS          GUATEMALA                      <20          533     82     61     21
12 months   ki1135781-COHORTS          GUATEMALA                      [20-25)      533    135     98     37
12 months   ki1135781-COHORTS          GUATEMALA                      [25-30)      533    112     68     44
12 months   ki1135781-COHORTS          GUATEMALA                      >=30         533    204    122     82
12 months   ki1135781-COHORTS          INDIA                          <20         3823    253    222     31
12 months   ki1135781-COHORTS          INDIA                          [20-25)     3823   1275   1127    148
12 months   ki1135781-COHORTS          INDIA                          [25-30)     3823   1283   1139    144
12 months   ki1135781-COHORTS          INDIA                          >=30        3823   1012    862    150
12 months   ki1135781-COHORTS          PHILIPPINES                    <20         2585    306    260     46
12 months   ki1135781-COHORTS          PHILIPPINES                    [20-25)     2585    807    717     90
12 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)     2585    727    635     92
12 months   ki1135781-COHORTS          PHILIPPINES                    >=30        2585    745    629    116
12 months   ki1148112-LCNI-5           MALAWI                         <20          513     84     81      3
12 months   ki1148112-LCNI-5           MALAWI                         [20-25)      513    138    117     21
12 months   ki1148112-LCNI-5           MALAWI                         [25-30)      513    130    122      8
12 months   ki1148112-LCNI-5           MALAWI                         >=30         513    161    138     23
18 months   ki0047075b-MAL-ED          BANGLADESH                     <20          221     32     28      4
18 months   ki0047075b-MAL-ED          BANGLADESH                     [20-25)      221     67     58      9
18 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)      221     84     77      7
18 months   ki0047075b-MAL-ED          BANGLADESH                     >=30         221     38     27     11
18 months   ki0047075b-MAL-ED          BRAZIL                         <20          180     31     31      0
18 months   ki0047075b-MAL-ED          BRAZIL                         [20-25)      180     55     55      0
18 months   ki0047075b-MAL-ED          BRAZIL                         [25-30)      180     54     54      0
18 months   ki0047075b-MAL-ED          BRAZIL                         >=30         180     40     40      0
18 months   ki0047075b-MAL-ED          INDIA                          <20          226     33     29      4
18 months   ki0047075b-MAL-ED          INDIA                          [20-25)      226     99     86     13
18 months   ki0047075b-MAL-ED          INDIA                          [25-30)      226     73     58     15
18 months   ki0047075b-MAL-ED          INDIA                          >=30         226     21     21      0
18 months   ki0047075b-MAL-ED          NEPAL                          <20          229      4      4      0
18 months   ki0047075b-MAL-ED          NEPAL                          [20-25)      229     56     53      3
18 months   ki0047075b-MAL-ED          NEPAL                          [25-30)      229    124    121      3
18 months   ki0047075b-MAL-ED          NEPAL                          >=30         229     45     44      1
18 months   ki0047075b-MAL-ED          PERU                           <20          222     62     57      5
18 months   ki0047075b-MAL-ED          PERU                           [20-25)      222     57     49      8
18 months   ki0047075b-MAL-ED          PERU                           [25-30)      222     53     47      6
18 months   ki0047075b-MAL-ED          PERU                           >=30         222     50     49      1
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20          241     40     35      5
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-25)      241     68     61      7
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)      241     39     38      1
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30         241     94     81     13
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20          225     12      9      3
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-25)      225     55     36     19
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)      225     60     41     19
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30         225     98     70     28
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20          369     34     29      5
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-25)      369    185    121     64
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)      369    107     79     28
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30         369     43     31     12
18 months   ki1000108-IRC              INDIA                          <20          405     37     35      2
18 months   ki1000108-IRC              INDIA                          [20-25)      405    217    192     25
18 months   ki1000108-IRC              INDIA                          [25-30)      405    122    117      5
18 months   ki1000108-IRC              INDIA                          >=30         405     29     27      2
18 months   ki1000109-EE               PAKISTAN                       <20          348      1      0      1
18 months   ki1000109-EE               PAKISTAN                       [20-25)      348     18     10      8
18 months   ki1000109-EE               PAKISTAN                       [25-30)      348    133     72     61
18 months   ki1000109-EE               PAKISTAN                       >=30         348    196     97     99
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          <20           84      8      4      4
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-25)       84     31     20     11
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)       84     31     17     14
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30          84     14      6      8
18 months   ki1017093-NIH-Birth        BANGLADESH                     <20          461     50     43      7
18 months   ki1017093-NIH-Birth        BANGLADESH                     [20-25)      461    170    135     35
18 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)      461    139    103     36
18 months   ki1017093-NIH-Birth        BANGLADESH                     >=30         461    102     79     23
18 months   ki1017093b-PROVIDE         BANGLADESH                     <20          552     61     54      7
18 months   ki1017093b-PROVIDE         BANGLADESH                     [20-25)      552    220    200     20
18 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)      552    172    151     21
18 months   ki1017093b-PROVIDE         BANGLADESH                     >=30         552     99     90      9
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20          634    115    105     10
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-25)      634    221    201     20
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)      634    196    188      8
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30         634    102     98      4
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20          973     54     53      1
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-25)      973    281    267     14
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)      973    343    327     16
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30         973    295    286      9
18 months   ki1101329-Keneba           GAMBIA                         <20         1910    245    232     13
18 months   ki1101329-Keneba           GAMBIA                         [20-25)     1910    450    417     33
18 months   ki1101329-Keneba           GAMBIA                         [25-30)     1910    426    396     30
18 months   ki1101329-Keneba           GAMBIA                         >=30        1910    789    696     93
18 months   ki1113344-GMS-Nepal        NEPAL                          <20          550    109     85     24
18 months   ki1113344-GMS-Nepal        NEPAL                          [20-25)      550    192    165     27
18 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)      550    167    146     21
18 months   ki1113344-GMS-Nepal        NEPAL                          >=30         550     82     69     13
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20         1706    259    203     56
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-25)     1706    641    537    104
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)     1706    467    384     83
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30        1706    339    284     55
18 months   ki1135781-COHORTS          GUATEMALA                      <20          436     64     36     28
18 months   ki1135781-COHORTS          GUATEMALA                      [20-25)      436    110     61     49
18 months   ki1135781-COHORTS          GUATEMALA                      [25-30)      436    100     47     53
18 months   ki1135781-COHORTS          GUATEMALA                      >=30         436    162     77     85
18 months   ki1135781-COHORTS          PHILIPPINES                    <20         2492    301    226     75
18 months   ki1135781-COHORTS          PHILIPPINES                    [20-25)     2492    774    582    192
18 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)     2492    712    545    167
18 months   ki1135781-COHORTS          PHILIPPINES                    >=30        2492    705    512    193
18 months   ki1148112-LCNI-5           MALAWI                         <20          589     95     87      8
18 months   ki1148112-LCNI-5           MALAWI                         [20-25)      589    163    143     20
18 months   ki1148112-LCNI-5           MALAWI                         [25-30)      589    153    134     19
18 months   ki1148112-LCNI-5           MALAWI                         >=30         589    178    149     29
24 months   ki0047075b-MAL-ED          BANGLADESH                     <20          212     29     24      5
24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-25)      212     64     57      7
24 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)      212     82     77      5
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30         212     37     28      9
24 months   ki0047075b-MAL-ED          BRAZIL                         <20          169     27     27      0
24 months   ki0047075b-MAL-ED          BRAZIL                         [20-25)      169     51     50      1
24 months   ki0047075b-MAL-ED          BRAZIL                         [25-30)      169     51     51      0
24 months   ki0047075b-MAL-ED          BRAZIL                         >=30         169     40     40      0
24 months   ki0047075b-MAL-ED          INDIA                          <20          225     33     31      2
24 months   ki0047075b-MAL-ED          INDIA                          [20-25)      225     99     86     13
24 months   ki0047075b-MAL-ED          INDIA                          [25-30)      225     73     60     13
24 months   ki0047075b-MAL-ED          INDIA                          >=30         225     20     20      0
24 months   ki0047075b-MAL-ED          NEPAL                          <20          228      4      4      0
24 months   ki0047075b-MAL-ED          NEPAL                          [20-25)      228     55     51      4
24 months   ki0047075b-MAL-ED          NEPAL                          [25-30)      228    124    121      3
24 months   ki0047075b-MAL-ED          NEPAL                          >=30         228     45     45      0
24 months   ki0047075b-MAL-ED          PERU                           <20          201     55     50      5
24 months   ki0047075b-MAL-ED          PERU                           [20-25)      201     50     43      7
24 months   ki0047075b-MAL-ED          PERU                           [25-30)      201     48     45      3
24 months   ki0047075b-MAL-ED          PERU                           >=30         201     48     48      0
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20          238     39     38      1
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-25)      238     69     57     12
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)      238     37     35      2
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30         238     93     82     11
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20          214      9      6      3
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-25)      214     53     32     21
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)      214     60     40     20
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30         214     92     67     25
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20          372     34     25      9
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-25)      372    187    120     67
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)      372    109     75     34
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30         372     42     29     13
24 months   ki1000108-IRC              INDIA                          <20          409     37     33      4
24 months   ki1000108-IRC              INDIA                          [20-25)      409    220    194     26
24 months   ki1000108-IRC              INDIA                          [25-30)      409    123    115      8
24 months   ki1000108-IRC              INDIA                          >=30         409     29     26      3
24 months   ki1017093-NIH-Birth        BANGLADESH                     <20          427     44     41      3
24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-25)      427    161    125     36
24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)      427    128     95     33
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30         427     94     73     21
24 months   ki1017093b-PROVIDE         BANGLADESH                     <20          577     64     59      5
24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-25)      577    229    213     16
24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)      577    179    160     19
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30         577    105     96      9
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20          514    101     91     10
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-25)      514    176    161     15
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)      514    158    151      7
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30         514     79     76      3
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20            6      1      1      0
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-25)        6      0      0      0
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)        6      3      2      1
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30           6      2      2      0
24 months   ki1101329-Keneba           GAMBIA                         <20         1714    217    201     16
24 months   ki1101329-Keneba           GAMBIA                         [20-25)     1714    406    378     28
24 months   ki1101329-Keneba           GAMBIA                         [25-30)     1714    384    358     26
24 months   ki1101329-Keneba           GAMBIA                         >=30        1714    707    640     67
24 months   ki1113344-GMS-Nepal        NEPAL                          <20          499     98     85     13
24 months   ki1113344-GMS-Nepal        NEPAL                          [20-25)      499    174    158     16
24 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)      499    149    133     16
24 months   ki1113344-GMS-Nepal        NEPAL                          >=30         499     78     69      9
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20          456     71     43     28
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-25)      456    170    126     44
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)      456    129     92     37
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30         456     86     64     22
24 months   ki1135781-COHORTS          GUATEMALA                      <20          518     85     48     37
24 months   ki1135781-COHORTS          GUATEMALA                      [20-25)      518    124     67     57
24 months   ki1135781-COHORTS          GUATEMALA                      [25-30)      518    118     55     63
24 months   ki1135781-COHORTS          GUATEMALA                      >=30         518    191     91    100
24 months   ki1135781-COHORTS          INDIA                          <20         3695    247    180     67
24 months   ki1135781-COHORTS          INDIA                          [20-25)     3695   1238    988    250
24 months   ki1135781-COHORTS          INDIA                          [25-30)     3695   1228   1006    222
24 months   ki1135781-COHORTS          INDIA                          >=30        3695    982    752    230
24 months   ki1135781-COHORTS          PHILIPPINES                    <20         2445    292    206     86
24 months   ki1135781-COHORTS          PHILIPPINES                    [20-25)     2445    766    561    205
24 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)     2445    694    509    185
24 months   ki1135781-COHORTS          PHILIPPINES                    >=30        2445    693    480    213
24 months   ki1148112-LCNI-5           MALAWI                         <20          475     80     73      7
24 months   ki1148112-LCNI-5           MALAWI                         [20-25)      475    128    114     14
24 months   ki1148112-LCNI-5           MALAWI                         [25-30)      475    122    105     17
24 months   ki1148112-LCNI-5           MALAWI                         >=30         475    145    126     19


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
* agecat: 12 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 12 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 12 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 12 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 12 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 12 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 12 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 12 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 12 months, studyid: ki1148112-LCNI-5, country: MALAWI
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
* agecat: 18 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 18 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 18 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 18 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 18 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 18 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 18 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 18 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 18 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 18 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
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
* agecat: 3 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 3 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 3 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 3 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 3 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 3 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 3 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 3 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
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
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 9 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 9 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 9 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 9 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 9 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 9 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 9 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 9 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 9 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 9 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 9 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 9 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 9 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 9 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
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
* agecat: 3 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 3 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 3 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 9 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 9 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 9 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 9 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 9 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 9 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 12 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 12 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 18 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 18 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 18 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 18 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/b2a8ac38-a2ec-46a2-9189-b06bbf85c515/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->


```
## Warning: Removed 48 rows containing missing values (geom_errorbar).
```

![](/tmp/b2a8ac38-a2ec-46a2-9189-b06bbf85c515/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/b2a8ac38-a2ec-46a2-9189-b06bbf85c515/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/b2a8ac38-a2ec-46a2-9189-b06bbf85c515/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE      <20                  NA                0.0377273   0.0297651   0.0456894
Birth       ki1126311-ZVITAMBO         ZIMBABWE      [20-25)              NA                0.0297047   0.0253444   0.0340650
Birth       ki1126311-ZVITAMBO         ZIMBABWE      [25-30)              NA                0.0302150   0.0244962   0.0359338
Birth       ki1126311-ZVITAMBO         ZIMBABWE      >=30                 NA                0.0339931   0.0266254   0.0413608
Birth       ki1135781-COHORTS          INDIA         <20                  NA                0.0434783   0.0226404   0.0643162
Birth       ki1135781-COHORTS          INDIA         [20-25)              NA                0.0314427   0.0229491   0.0399362
Birth       ki1135781-COHORTS          INDIA         [25-30)              NA                0.0269576   0.0189147   0.0350006
Birth       ki1135781-COHORTS          INDIA         >=30                 NA                0.0248500   0.0159179   0.0337822
Birth       ki1135781-COHORTS          PHILIPPINES   <20                  NA                0.0264550   0.0102740   0.0426360
Birth       ki1135781-COHORTS          PHILIPPINES   [20-25)              NA                0.0103520   0.0039681   0.0167358
Birth       ki1135781-COHORTS          PHILIPPINES   [25-30)              NA                0.0105263   0.0036844   0.0173682
Birth       ki1135781-COHORTS          PHILIPPINES   >=30                 NA                0.0199765   0.0105742   0.0293788
3 months    ki1101329-Keneba           GAMBIA        <20                  NA                0.0345912   0.0145015   0.0546809
3 months    ki1101329-Keneba           GAMBIA        [20-25)              NA                0.0298246   0.0158569   0.0437922
3 months    ki1101329-Keneba           GAMBIA        [25-30)              NA                0.0214133   0.0082813   0.0345453
3 months    ki1101329-Keneba           GAMBIA        >=30                 NA                0.0415140   0.0278495   0.0551786
3 months    ki1126311-ZVITAMBO         ZIMBABWE      <20                  NA                0.0694842   0.0561449   0.0828236
3 months    ki1126311-ZVITAMBO         ZIMBABWE      [20-25)              NA                0.0550040   0.0476841   0.0623239
3 months    ki1126311-ZVITAMBO         ZIMBABWE      [25-30)              NA                0.0539507   0.0448238   0.0630776
3 months    ki1126311-ZVITAMBO         ZIMBABWE      >=30                 NA                0.0571934   0.0461413   0.0682455
3 months    ki1135781-COHORTS          GUATEMALA     <20                  NA                0.0684932   0.0104886   0.1264977
3 months    ki1135781-COHORTS          GUATEMALA     [20-25)              NA                0.0982143   0.0430400   0.1533886
3 months    ki1135781-COHORTS          GUATEMALA     [25-30)              NA                0.0666667   0.0189044   0.1144289
3 months    ki1135781-COHORTS          GUATEMALA     >=30                 NA                0.1141304   0.0681383   0.1601226
3 months    ki1135781-COHORTS          INDIA         <20                  NA                0.0426065   0.0227872   0.0624258
3 months    ki1135781-COHORTS          INDIA         [20-25)              NA                0.0374856   0.0285442   0.0464269
3 months    ki1135781-COHORTS          INDIA         [25-30)              NA                0.0354354   0.0265543   0.0443166
3 months    ki1135781-COHORTS          INDIA         >=30                 NA                0.0359771   0.0255387   0.0464155
3 months    ki1135781-COHORTS          PHILIPPINES   <20                  NA                0.0372493   0.0173780   0.0571206
3 months    ki1135781-COHORTS          PHILIPPINES   [20-25)              NA                0.0155039   0.0074444   0.0235634
3 months    ki1135781-COHORTS          PHILIPPINES   [25-30)              NA                0.0222772   0.0120994   0.0324551
3 months    ki1135781-COHORTS          PHILIPPINES   >=30                 NA                0.0355828   0.0228625   0.0483031
6 months    ki1017093c-NIH-Crypto      BANGLADESH    <20                  NA                0.0534351   0.0148957   0.0919745
6 months    ki1017093c-NIH-Crypto      BANGLADESH    [20-25)              NA                0.0205761   0.0027147   0.0384376
6 months    ki1017093c-NIH-Crypto      BANGLADESH    [25-30)              NA                0.0228311   0.0030350   0.0426271
6 months    ki1017093c-NIH-Crypto      BANGLADESH    >=30                 NA                0.0491803   0.0107816   0.0875791
6 months    ki1126311-ZVITAMBO         ZIMBABWE      <20                  NA                0.0499603   0.0379349   0.0619858
6 months    ki1126311-ZVITAMBO         ZIMBABWE      [20-25)              NA                0.0371581   0.0307659   0.0435504
6 months    ki1126311-ZVITAMBO         ZIMBABWE      [25-30)              NA                0.0444025   0.0356273   0.0531776
6 months    ki1126311-ZVITAMBO         ZIMBABWE      >=30                 NA                0.0409623   0.0310561   0.0508685
6 months    ki1135781-COHORTS          INDIA         <20                  NA                0.0512129   0.0287803   0.0736455
6 months    ki1135781-COHORTS          INDIA         [20-25)              NA                0.0497658   0.0394518   0.0600799
6 months    ki1135781-COHORTS          INDIA         [25-30)              NA                0.0443623   0.0343442   0.0543804
6 months    ki1135781-COHORTS          INDIA         >=30                 NA                0.0524126   0.0398127   0.0650126
6 months    ki1135781-COHORTS          PHILIPPINES   <20                  NA                0.0634441   0.0371791   0.0897091
6 months    ki1135781-COHORTS          PHILIPPINES   [20-25)              NA                0.0403321   0.0270490   0.0536153
6 months    ki1135781-COHORTS          PHILIPPINES   [25-30)              NA                0.0290237   0.0170708   0.0409767
6 months    ki1135781-COHORTS          PHILIPPINES   >=30                 NA                0.0708763   0.0528177   0.0889349
9 months    ki1017093c-NIH-Crypto      BANGLADESH    <20                  NA                0.0483871   0.0105916   0.0861826
9 months    ki1017093c-NIH-Crypto      BANGLADESH    [20-25)              NA                0.0445344   0.0187912   0.0702776
9 months    ki1017093c-NIH-Crypto      BANGLADESH    [25-30)              NA                0.0279070   0.0058753   0.0499386
9 months    ki1017093c-NIH-Crypto      BANGLADESH    >=30                 NA                0.0416667   0.0058885   0.0774448
9 months    ki1101329-Keneba           GAMBIA        <20                  NA                0.0253623   0.0068093   0.0439154
9 months    ki1101329-Keneba           GAMBIA        [20-25)              NA                0.0399202   0.0227733   0.0570670
9 months    ki1101329-Keneba           GAMBIA        [25-30)              NA                0.0382979   0.0209434   0.0556524
9 months    ki1101329-Keneba           GAMBIA        >=30                 NA                0.0654321   0.0483983   0.0824659
9 months    ki1112895-Guatemala BSC    GUATEMALA     <20                  NA                0.1714286   0.0462982   0.2965589
9 months    ki1112895-Guatemala BSC    GUATEMALA     [20-25)              NA                0.1318681   0.0622003   0.2015360
9 months    ki1112895-Guatemala BSC    GUATEMALA     [25-30)              NA                0.0877193   0.0141215   0.1613171
9 months    ki1112895-Guatemala BSC    GUATEMALA     >=30                 NA                0.1458333   0.0457713   0.2458954
9 months    ki1113344-GMS-Nepal        NEPAL         <20                  NA                0.1090909   0.0507790   0.1674028
9 months    ki1113344-GMS-Nepal        NEPAL         [20-25)              NA                0.0468750   0.0169498   0.0768002
9 months    ki1113344-GMS-Nepal        NEPAL         [25-30)              NA                0.0479042   0.0154843   0.0803241
9 months    ki1113344-GMS-Nepal        NEPAL         >=30                 NA                0.0731707   0.0167545   0.1295870
9 months    ki1126311-ZVITAMBO         ZIMBABWE      <20                  NA                0.0490112   0.0366026   0.0614198
9 months    ki1126311-ZVITAMBO         ZIMBABWE      [20-25)              NA                0.0480000   0.0405047   0.0554953
9 months    ki1126311-ZVITAMBO         ZIMBABWE      [25-30)              NA                0.0431911   0.0342091   0.0521731
9 months    ki1126311-ZVITAMBO         ZIMBABWE      >=30                 NA                0.0549607   0.0430261   0.0668954
9 months    ki1135781-COHORTS          GUATEMALA     <20                  NA                0.1470588   0.0627877   0.2313299
9 months    ki1135781-COHORTS          GUATEMALA     [20-25)              NA                0.1946903   0.1216029   0.2677776
9 months    ki1135781-COHORTS          GUATEMALA     [25-30)              NA                0.2526316   0.1651579   0.3401053
9 months    ki1135781-COHORTS          GUATEMALA     >=30                 NA                0.3333333   0.2638093   0.4028574
9 months    ki1135781-COHORTS          INDIA         <20                  NA                0.0830565   0.0518767   0.1142363
9 months    ki1135781-COHORTS          INDIA         [20-25)              NA                0.0741758   0.0607137   0.0876379
9 months    ki1135781-COHORTS          INDIA         [25-30)              NA                0.0783217   0.0643946   0.0922488
9 months    ki1135781-COHORTS          INDIA         >=30                 NA                0.1031022   0.0850969   0.1211074
9 months    ki1135781-COHORTS          PHILIPPINES   <20                  NA                0.0845921   0.0546084   0.1145759
9 months    ki1135781-COHORTS          PHILIPPINES   [20-25)              NA                0.0608899   0.0448490   0.0769309
9 months    ki1135781-COHORTS          PHILIPPINES   [25-30)              NA                0.0623342   0.0450747   0.0795938
9 months    ki1135781-COHORTS          PHILIPPINES   >=30                 NA                0.0892626   0.0691592   0.1093660
12 months   ki1000108-CMC-V-BCS-2002   INDIA         <20                  NA                0.1875000   0.0520820   0.3229180
12 months   ki1000108-CMC-V-BCS-2002   INDIA         [20-25)              NA                0.2648649   0.2011928   0.3285369
12 months   ki1000108-CMC-V-BCS-2002   INDIA         [25-30)              NA                0.1759259   0.1040183   0.2478336
12 months   ki1000108-CMC-V-BCS-2002   INDIA         >=30                 NA                0.2093023   0.0875445   0.3310602
12 months   ki1017093c-NIH-Crypto      BANGLADESH    <20                  NA                0.0866142   0.0376616   0.1355668
12 months   ki1017093c-NIH-Crypto      BANGLADESH    [20-25)              NA                0.0791667   0.0449835   0.1133498
12 months   ki1017093c-NIH-Crypto      BANGLADESH    [25-30)              NA                0.0275229   0.0057902   0.0492557
12 months   ki1017093c-NIH-Crypto      BANGLADESH    >=30                 NA                0.0413223   0.0058335   0.0768112
12 months   ki1101329-Keneba           GAMBIA        <20                  NA                0.0511811   0.0240736   0.0782886
12 months   ki1101329-Keneba           GAMBIA        [20-25)              NA                0.0424628   0.0242477   0.0606780
12 months   ki1101329-Keneba           GAMBIA        [25-30)              NA                0.0476190   0.0277381   0.0675000
12 months   ki1101329-Keneba           GAMBIA        >=30                 NA                0.0962289   0.0753802   0.1170776
12 months   ki1112895-Guatemala BSC    GUATEMALA     <20                  NA                0.2121212   0.0722891   0.3519533
12 months   ki1112895-Guatemala BSC    GUATEMALA     [20-25)              NA                0.1875000   0.1017549   0.2732451
12 months   ki1112895-Guatemala BSC    GUATEMALA     [25-30)              NA                0.1363636   0.0347082   0.2380190
12 months   ki1112895-Guatemala BSC    GUATEMALA     >=30                 NA                0.1666667   0.0536738   0.2796596
12 months   ki1113344-GMS-Nepal        NEPAL         <20                  NA                0.1308411   0.0668872   0.1947951
12 months   ki1113344-GMS-Nepal        NEPAL         [20-25)              NA                0.0463918   0.0167679   0.0760156
12 months   ki1113344-GMS-Nepal        NEPAL         [25-30)              NA                0.0930233   0.0495755   0.1364710
12 months   ki1113344-GMS-Nepal        NEPAL         >=30                 NA                0.1411765   0.0670862   0.2152668
12 months   ki1126311-ZVITAMBO         ZIMBABWE      <20                  NA                0.0794574   0.0629556   0.0959591
12 months   ki1126311-ZVITAMBO         ZIMBABWE      [20-25)              NA                0.0656100   0.0562924   0.0749276
12 months   ki1126311-ZVITAMBO         ZIMBABWE      [25-30)              NA                0.0609195   0.0496803   0.0721587
12 months   ki1126311-ZVITAMBO         ZIMBABWE      >=30                 NA                0.0626003   0.0491488   0.0760519
12 months   ki1135781-COHORTS          GUATEMALA     <20                  NA                0.2560976   0.1615371   0.3506580
12 months   ki1135781-COHORTS          GUATEMALA     [20-25)              NA                0.2740741   0.1987612   0.3493869
12 months   ki1135781-COHORTS          GUATEMALA     [25-30)              NA                0.3928571   0.3023236   0.4833907
12 months   ki1135781-COHORTS          GUATEMALA     >=30                 NA                0.4019608   0.3346170   0.4693046
12 months   ki1135781-COHORTS          INDIA         <20                  NA                0.1225296   0.0821203   0.1629390
12 months   ki1135781-COHORTS          INDIA         [20-25)              NA                0.1160784   0.0984938   0.1336630
12 months   ki1135781-COHORTS          INDIA         [25-30)              NA                0.1122369   0.0949623   0.1295115
12 months   ki1135781-COHORTS          INDIA         >=30                 NA                0.1482213   0.1263269   0.1701158
12 months   ki1135781-COHORTS          PHILIPPINES   <20                  NA                0.1503268   0.1102756   0.1903780
12 months   ki1135781-COHORTS          PHILIPPINES   [20-25)              NA                0.1115242   0.0898020   0.1332463
12 months   ki1135781-COHORTS          PHILIPPINES   [25-30)              NA                0.1265475   0.1023755   0.1507194
12 months   ki1135781-COHORTS          PHILIPPINES   >=30                 NA                0.1557047   0.1296640   0.1817454
18 months   ki1000108-CMC-V-BCS-2002   INDIA         <20                  NA                0.1470588   0.0278515   0.2662662
18 months   ki1000108-CMC-V-BCS-2002   INDIA         [20-25)              NA                0.3459459   0.2773083   0.4145836
18 months   ki1000108-CMC-V-BCS-2002   INDIA         [25-30)              NA                0.2616822   0.1782845   0.3450800
18 months   ki1000108-CMC-V-BCS-2002   INDIA         >=30                 NA                0.2790698   0.1448223   0.4133173
18 months   ki1017093-NIH-Birth        BANGLADESH    <20                  NA                0.1400000   0.0437174   0.2362826
18 months   ki1017093-NIH-Birth        BANGLADESH    [20-25)              NA                0.2058824   0.1450342   0.2667305
18 months   ki1017093-NIH-Birth        BANGLADESH    [25-30)              NA                0.2589928   0.1860861   0.3318995
18 months   ki1017093-NIH-Birth        BANGLADESH    >=30                 NA                0.2254902   0.1443013   0.3066791
18 months   ki1017093b-PROVIDE         BANGLADESH    <20                  NA                0.1147541   0.0346983   0.1948099
18 months   ki1017093b-PROVIDE         BANGLADESH    [20-25)              NA                0.0909091   0.0528868   0.1289313
18 months   ki1017093b-PROVIDE         BANGLADESH    [25-30)              NA                0.1220930   0.0731211   0.1710650
18 months   ki1017093b-PROVIDE         BANGLADESH    >=30                 NA                0.0909091   0.0342289   0.1475893
18 months   ki1101329-Keneba           GAMBIA        <20                  NA                0.0530612   0.0249857   0.0811368
18 months   ki1101329-Keneba           GAMBIA        [20-25)              NA                0.0733333   0.0492416   0.0974251
18 months   ki1101329-Keneba           GAMBIA        [25-30)              NA                0.0704225   0.0461198   0.0947253
18 months   ki1101329-Keneba           GAMBIA        >=30                 NA                0.1178707   0.0953650   0.1403764
18 months   ki1113344-GMS-Nepal        NEPAL         <20                  NA                0.2201835   0.1423227   0.2980442
18 months   ki1113344-GMS-Nepal        NEPAL         [20-25)              NA                0.1406250   0.0914080   0.1898420
18 months   ki1113344-GMS-Nepal        NEPAL         [25-30)              NA                0.1257485   0.0754153   0.1760817
18 months   ki1113344-GMS-Nepal        NEPAL         >=30                 NA                0.1585366   0.0794107   0.2376625
18 months   ki1126311-ZVITAMBO         ZIMBABWE      <20                  NA                0.2162162   0.1660666   0.2663659
18 months   ki1126311-ZVITAMBO         ZIMBABWE      [20-25)              NA                0.1622465   0.1336974   0.1907956
18 months   ki1126311-ZVITAMBO         ZIMBABWE      [25-30)              NA                0.1777302   0.1430481   0.2124122
18 months   ki1126311-ZVITAMBO         ZIMBABWE      >=30                 NA                0.1622419   0.1229850   0.2014988
18 months   ki1135781-COHORTS          GUATEMALA     <20                  NA                0.4375000   0.3158234   0.5591766
18 months   ki1135781-COHORTS          GUATEMALA     [20-25)              NA                0.4454545   0.3524679   0.5384412
18 months   ki1135781-COHORTS          GUATEMALA     [25-30)              NA                0.5300000   0.4320660   0.6279340
18 months   ki1135781-COHORTS          GUATEMALA     >=30                 NA                0.5246914   0.4477023   0.6016804
18 months   ki1135781-COHORTS          PHILIPPINES   <20                  NA                0.2491694   0.2002963   0.2980426
18 months   ki1135781-COHORTS          PHILIPPINES   [20-25)              NA                0.2480620   0.2176296   0.2784944
18 months   ki1135781-COHORTS          PHILIPPINES   [25-30)              NA                0.2345506   0.2034211   0.2656800
18 months   ki1135781-COHORTS          PHILIPPINES   >=30                 NA                0.2737589   0.2408385   0.3066793
18 months   ki1148112-LCNI-5           MALAWI        <20                  NA                0.0842105   0.0283202   0.1401008
18 months   ki1148112-LCNI-5           MALAWI        [20-25)              NA                0.1226994   0.0722892   0.1731096
18 months   ki1148112-LCNI-5           MALAWI        [25-30)              NA                0.1241830   0.0718821   0.1764839
18 months   ki1148112-LCNI-5           MALAWI        >=30                 NA                0.1629213   0.1086239   0.2172188
24 months   ki0047075b-MAL-ED          BANGLADESH    <20                  NA                0.1724138   0.0346077   0.3102199
24 months   ki0047075b-MAL-ED          BANGLADESH    [20-25)              NA                0.1093750   0.0327287   0.1860213
24 months   ki0047075b-MAL-ED          BANGLADESH    [25-30)              NA                0.0609756   0.0090616   0.1128896
24 months   ki0047075b-MAL-ED          BANGLADESH    >=30                 NA                0.2432432   0.1046722   0.3818143
24 months   ki1000108-CMC-V-BCS-2002   INDIA         <20                  NA                0.2647059   0.1162131   0.4131987
24 months   ki1000108-CMC-V-BCS-2002   INDIA         [20-25)              NA                0.3582888   0.2894714   0.4271062
24 months   ki1000108-CMC-V-BCS-2002   INDIA         [25-30)              NA                0.3119266   0.2248377   0.3990155
24 months   ki1000108-CMC-V-BCS-2002   INDIA         >=30                 NA                0.3095238   0.1695234   0.4495242
24 months   ki1017093b-PROVIDE         BANGLADESH    <20                  NA                0.0781250   0.0123190   0.1439310
24 months   ki1017093b-PROVIDE         BANGLADESH    [20-25)              NA                0.0698690   0.0368228   0.1029152
24 months   ki1017093b-PROVIDE         BANGLADESH    [25-30)              NA                0.1061453   0.0609823   0.1513082
24 months   ki1017093b-PROVIDE         BANGLADESH    >=30                 NA                0.0857143   0.0321226   0.1393060
24 months   ki1101329-Keneba           GAMBIA        <20                  NA                0.0737327   0.0389516   0.1085138
24 months   ki1101329-Keneba           GAMBIA        [20-25)              NA                0.0689655   0.0443102   0.0936208
24 months   ki1101329-Keneba           GAMBIA        [25-30)              NA                0.0677083   0.0425718   0.0928449
24 months   ki1101329-Keneba           GAMBIA        >=30                 NA                0.0947666   0.0731706   0.1163626
24 months   ki1113344-GMS-Nepal        NEPAL         <20                  NA                0.1326531   0.0654288   0.1998773
24 months   ki1113344-GMS-Nepal        NEPAL         [20-25)              NA                0.0919540   0.0489758   0.1349322
24 months   ki1113344-GMS-Nepal        NEPAL         [25-30)              NA                0.1073826   0.0576214   0.1571437
24 months   ki1113344-GMS-Nepal        NEPAL         >=30                 NA                0.1153846   0.0444125   0.1863567
24 months   ki1126311-ZVITAMBO         ZIMBABWE      <20                  NA                0.3943662   0.2805640   0.5081684
24 months   ki1126311-ZVITAMBO         ZIMBABWE      [20-25)              NA                0.2588235   0.1929117   0.3247353
24 months   ki1126311-ZVITAMBO         ZIMBABWE      [25-30)              NA                0.2868217   0.2086886   0.3649548
24 months   ki1126311-ZVITAMBO         ZIMBABWE      >=30                 NA                0.2558140   0.1634976   0.3481303
24 months   ki1135781-COHORTS          GUATEMALA     <20                  NA                0.4352941   0.3297921   0.5407961
24 months   ki1135781-COHORTS          GUATEMALA     [20-25)              NA                0.4596774   0.3718743   0.5474805
24 months   ki1135781-COHORTS          GUATEMALA     [25-30)              NA                0.5338983   0.4438042   0.6239924
24 months   ki1135781-COHORTS          GUATEMALA     >=30                 NA                0.5235602   0.4526615   0.5944589
24 months   ki1135781-COHORTS          INDIA         <20                  NA                0.2712551   0.2158008   0.3267093
24 months   ki1135781-COHORTS          INDIA         [20-25)              NA                0.2019386   0.1795733   0.2243039
24 months   ki1135781-COHORTS          INDIA         [25-30)              NA                0.1807818   0.1592547   0.2023088
24 months   ki1135781-COHORTS          INDIA         >=30                 NA                0.2342159   0.2077240   0.2607077
24 months   ki1135781-COHORTS          PHILIPPINES   <20                  NA                0.2945205   0.2422273   0.3468138
24 months   ki1135781-COHORTS          PHILIPPINES   [20-25)              NA                0.2676240   0.2362657   0.2989823
24 months   ki1135781-COHORTS          PHILIPPINES   [25-30)              NA                0.2665706   0.2336671   0.2994741
24 months   ki1135781-COHORTS          PHILIPPINES   >=30                 NA                0.3073593   0.2729998   0.3417189
24 months   ki1148112-LCNI-5           MALAWI        <20                  NA                0.0875000   0.0255158   0.1494842
24 months   ki1148112-LCNI-5           MALAWI        [20-25)              NA                0.1093750   0.0552488   0.1635012
24 months   ki1148112-LCNI-5           MALAWI        [25-30)              NA                0.1393443   0.0778287   0.2008598
24 months   ki1148112-LCNI-5           MALAWI        >=30                 NA                0.1310345   0.0760531   0.1860159


### Parameter: E(Y)


agecat      studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE      NA                   NA                0.0318347   0.0317849   0.0318844
Birth       ki1135781-COHORTS          INDIA         NA                   NA                0.0292683   0.0291285   0.0294081
Birth       ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.0150820   0.0148701   0.0152938
3 months    ki1101329-Keneba           GAMBIA        NA                   NA                0.0331187   0.0327953   0.0334420
3 months    ki1126311-ZVITAMBO         ZIMBABWE      NA                   NA                0.0573422   0.0572347   0.0574497
3 months    ki1135781-COHORTS          GUATEMALA     NA                   NA                0.0928270   0.0909673   0.0946867
3 months    ki1135781-COHORTS          INDIA         NA                   NA                0.0368452   0.0367926   0.0368979
3 months    ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.0257391   0.0254125   0.0260658
6 months    ki1017093c-NIH-Crypto      BANGLADESH    NA                   NA                0.0321678   0.0311186   0.0332171
6 months    ki1126311-ZVITAMBO         ZIMBABWE      NA                   NA                0.0416667   0.0415686   0.0417648
6 months    ki1135781-COHORTS          INDIA         NA                   NA                0.0487357   0.0486451   0.0488263
6 months    ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.0487445   0.0480945   0.0493944
9 months    ki1017093c-NIH-Crypto      BANGLADESH    NA                   NA                0.0396601   0.0390675   0.0402526
9 months    ki1101329-Keneba           GAMBIA        NA                   NA                0.0476422   0.0469928   0.0482916
9 months    ki1112895-Guatemala BSC    GUATEMALA     NA                   NA                0.1298701   0.1263200   0.1334203
9 months    ki1113344-GMS-Nepal        NEPAL         NA                   NA                0.0635209   0.0614756   0.0655661
9 months    ki1126311-ZVITAMBO         ZIMBABWE      NA                   NA                0.0481912   0.0481047   0.0482777
9 months    ki1135781-COHORTS          GUATEMALA     NA                   NA                0.2538631   0.2473095   0.2604168
9 months    ki1135781-COHORTS          INDIA         NA                   NA                0.0835863   0.0832359   0.0839366
9 months    ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.0722714   0.0717819   0.0727608
12 months   ki1000108-CMC-V-BCS-2002   INDIA         NA                   NA                0.2255435   0.2213795   0.2297074
12 months   ki1017093c-NIH-Crypto      BANGLADESH    NA                   NA                0.0580737   0.0562149   0.0599324
12 months   ki1101329-Keneba           GAMBIA        NA                   NA                0.0661499   0.0650547   0.0672450
12 months   ki1112895-Guatemala BSC    GUATEMALA     NA                   NA                0.1758794   0.1723687   0.1793901
12 months   ki1113344-GMS-Nepal        NEPAL         NA                   NA                0.0913978   0.0883119   0.0944838
12 months   ki1126311-ZVITAMBO         ZIMBABWE      NA                   NA                0.0659635   0.0658188   0.0661081
12 months   ki1135781-COHORTS          GUATEMALA     NA                   NA                0.3452158   0.3397001   0.3507314
12 months   ki1135781-COHORTS          INDIA         NA                   NA                0.1237248   0.1232517   0.1241980
12 months   ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.1330754   0.1323647   0.1337862
18 months   ki1000108-CMC-V-BCS-2002   INDIA         NA                   NA                0.2953930   0.2892041   0.3015818
18 months   ki1017093-NIH-Birth        BANGLADESH    NA                   NA                0.2190889   0.2158815   0.2222964
18 months   ki1017093b-PROVIDE         BANGLADESH    NA                   NA                0.1032609   0.1020415   0.1044803
18 months   ki1101329-Keneba           GAMBIA        NA                   NA                0.0884817   0.0873428   0.0896205
18 months   ki1113344-GMS-Nepal        NEPAL         NA                   NA                0.1545455   0.1516773   0.1574136
18 months   ki1126311-ZVITAMBO         ZIMBABWE      NA                   NA                0.1746776   0.1737854   0.1755698
18 months   ki1135781-COHORTS          GUATEMALA     NA                   NA                0.4931193   0.4892337   0.4970048
18 months   ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.2516051   0.2510140   0.2521962
18 months   ki1148112-LCNI-5           MALAWI        NA                   NA                0.1290323   0.1269117   0.1311528
24 months   ki0047075b-MAL-ED          BANGLADESH    NA                   NA                0.1226415   0.1136899   0.1315931
24 months   ki1000108-CMC-V-BCS-2002   INDIA         NA                   NA                0.3306452   0.3275344   0.3337559
24 months   ki1017093b-PROVIDE         BANGLADESH    NA                   NA                0.0849220   0.0836704   0.0861737
24 months   ki1101329-Keneba           GAMBIA        NA                   NA                0.0799300   0.0793355   0.0805245
24 months   ki1113344-GMS-Nepal        NEPAL         NA                   NA                0.1082164   0.1069205   0.1095124
24 months   ki1126311-ZVITAMBO         ZIMBABWE      NA                   NA                0.2872807   0.2828989   0.2916625
24 months   ki1135781-COHORTS          GUATEMALA     NA                   NA                0.4961390   0.4927698   0.4995082
24 months   ki1135781-COHORTS          INDIA         NA                   NA                0.2081191   0.2072606   0.2089775
24 months   ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.2817996   0.2810758   0.2825234
24 months   ki1148112-LCNI-5           MALAWI        NA                   NA                0.1200000   0.1183362   0.1216639


### Parameter: RR


agecat      studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE      <20                  <20               1.0000000   1.0000000   1.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE      [20-25)              <20               0.7873527   0.6088689   1.0181572
Birth       ki1126311-ZVITAMBO         ZIMBABWE      [25-30)              <20               0.8008793   0.6031861   1.0633660
Birth       ki1126311-ZVITAMBO         ZIMBABWE      >=30                 <20               0.9010223   0.6658161   1.2193176
Birth       ki1135781-COHORTS          INDIA         <20                  <20               1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          INDIA         [20-25)              <20               0.7231813   0.4171744   1.2536509
Birth       ki1135781-COHORTS          INDIA         [25-30)              <20               0.6200257   0.3525562   1.0904130
Birth       ki1135781-COHORTS          INDIA         >=30                 <20               0.5715510   0.3139615   1.0404796
Birth       ki1135781-COHORTS          PHILIPPINES   <20                  <20               1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          PHILIPPINES   [20-25)              <20               0.3913043   0.1641735   0.9326664
Birth       ki1135781-COHORTS          PHILIPPINES   [25-30)              <20               0.3978947   0.1629876   0.9713637
Birth       ki1135781-COHORTS          PHILIPPINES   >=30                 <20               0.7551116   0.3490074   1.6337578
3 months    ki1101329-Keneba           GAMBIA        <20                  <20               1.0000000   1.0000000   1.0000000
3 months    ki1101329-Keneba           GAMBIA        [20-25)              <20               0.8622010   0.4088765   1.8181297
3 months    ki1101329-Keneba           GAMBIA        [25-30)              <20               0.6190384   0.2660122   1.4405675
3 months    ki1101329-Keneba           GAMBIA        >=30                 <20               1.2001332   0.6156161   2.3396395
3 months    ki1126311-ZVITAMBO         ZIMBABWE      <20                  <20               1.0000000   1.0000000   1.0000000
3 months    ki1126311-ZVITAMBO         ZIMBABWE      [20-25)              <20               0.7916043   0.6267014   0.9998978
3 months    ki1126311-ZVITAMBO         ZIMBABWE      [25-30)              <20               0.7764454   0.6011520   1.0028538
3 months    ki1126311-ZVITAMBO         ZIMBABWE      >=30                 <20               0.8231132   0.6268474   1.0808298
3 months    ki1135781-COHORTS          GUATEMALA     <20                  <20               1.0000000   1.0000000   1.0000000
3 months    ki1135781-COHORTS          GUATEMALA     [20-25)              <20               1.4339286   0.5190078   3.9616958
3 months    ki1135781-COHORTS          GUATEMALA     [25-30)              <20               0.9733333   0.3210079   2.9512597
3 months    ki1135781-COHORTS          GUATEMALA     >=30                 <20               1.6663043   0.6523019   4.2565721
3 months    ki1135781-COHORTS          INDIA         <20                  <20               1.0000000   1.0000000   1.0000000
3 months    ki1135781-COHORTS          INDIA         [20-25)              <20               0.8798087   0.5216222   1.4839538
3 months    ki1135781-COHORTS          INDIA         [25-30)              <20               0.8316905   0.4903249   1.4107159
3 months    ki1135781-COHORTS          INDIA         >=30                 <20               0.8444038   0.4880377   1.4609893
3 months    ki1135781-COHORTS          PHILIPPINES   <20                  <20               1.0000000   1.0000000   1.0000000
3 months    ki1135781-COHORTS          PHILIPPINES   [20-25)              <20               0.4162195   0.1976211   0.8766205
3 months    ki1135781-COHORTS          PHILIPPINES   [25-30)              <20               0.5980579   0.2962842   1.2071965
3 months    ki1135781-COHORTS          PHILIPPINES   >=30                 <20               0.9552619   0.5026099   1.8155737
6 months    ki1017093c-NIH-Crypto      BANGLADESH    <20                  <20               1.0000000   1.0000000   1.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH    [20-25)              <20               0.3850676   0.1245649   1.1903601
6 months    ki1017093c-NIH-Crypto      BANGLADESH    [25-30)              <20               0.4272668   0.1383221   1.3197954
6 months    ki1017093c-NIH-Crypto      BANGLADESH    >=30                 <20               0.9203747   0.3179405   2.6643021
6 months    ki1126311-ZVITAMBO         ZIMBABWE      <20                  <20               1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE      [20-25)              <20               0.7437527   0.5532748   0.9998072
6 months    ki1126311-ZVITAMBO         ZIMBABWE      [25-30)              <20               0.8887539   0.6509179   1.2134918
6 months    ki1126311-ZVITAMBO         ZIMBABWE      >=30                 <20               0.8198960   0.5828746   1.1533001
6 months    ki1135781-COHORTS          INDIA         <20                  <20               1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          INDIA         [20-25)              <20               0.9717429   0.5985493   1.5776216
6 months    ki1135781-COHORTS          INDIA         [25-30)              <20               0.8662322   0.5291864   1.4179468
6 months    ki1135781-COHORTS          INDIA         >=30                 <20               1.0234259   0.6209514   1.6867673
6 months    ki1135781-COHORTS          PHILIPPINES   <20                  <20               1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          PHILIPPINES   [20-25)              <20               0.6357115   0.3745536   1.0789620
6 months    ki1135781-COHORTS          PHILIPPINES   [25-30)              <20               0.4574695   0.2551282   0.8202871
6 months    ki1135781-COHORTS          PHILIPPINES   >=30                 <20               1.1171453   0.6870604   1.8164541
9 months    ki1017093c-NIH-Crypto      BANGLADESH    <20                  <20               1.0000000   1.0000000   1.0000000
9 months    ki1017093c-NIH-Crypto      BANGLADESH    [20-25)              <20               0.9203779   0.3482942   2.4321259
9 months    ki1017093c-NIH-Crypto      BANGLADESH    [25-30)              <20               0.5767442   0.1899611   1.7510628
9 months    ki1017093c-NIH-Crypto      BANGLADESH    >=30                 <20               0.8611111   0.2697311   2.7490797
9 months    ki1101329-Keneba           GAMBIA        <20                  <20               1.0000000   1.0000000   1.0000000
9 months    ki1101329-Keneba           GAMBIA        [20-25)              <20               1.5739949   0.6738920   3.6763453
9 months    ki1101329-Keneba           GAMBIA        [25-30)              <20               1.5100304   0.6386673   3.5702339
9 months    ki1101329-Keneba           GAMBIA        >=30                 <20               2.5798942   1.1868312   5.6080880
9 months    ki1112895-Guatemala BSC    GUATEMALA     <20                  <20               1.0000000   1.0000000   1.0000000
9 months    ki1112895-Guatemala BSC    GUATEMALA     [20-25)              <20               0.7692308   0.3124145   1.8940095
9 months    ki1112895-Guatemala BSC    GUATEMALA     [25-30)              <20               0.5116959   0.1682823   1.5559135
9 months    ki1112895-Guatemala BSC    GUATEMALA     >=30                 <20               0.8506944   0.3123936   2.3165678
9 months    ki1113344-GMS-Nepal        NEPAL         <20                  <20               1.0000000   1.0000000   1.0000000
9 months    ki1113344-GMS-Nepal        NEPAL         [20-25)              <20               0.4296875   0.1868722   0.9880089
9 months    ki1113344-GMS-Nepal        NEPAL         [25-30)              <20               0.4391218   0.1853748   1.0402057
9 months    ki1113344-GMS-Nepal        NEPAL         >=30                 <20               0.6707317   0.2624822   1.7139486
9 months    ki1126311-ZVITAMBO         ZIMBABWE      <20                  <20               1.0000000   1.0000000   1.0000000
9 months    ki1126311-ZVITAMBO         ZIMBABWE      [20-25)              <20               0.9793684   0.7273785   1.3186566
9 months    ki1126311-ZVITAMBO         ZIMBABWE      [25-30)              <20               0.8812491   0.6350492   1.2228975
9 months    ki1126311-ZVITAMBO         ZIMBABWE      >=30                 <20               1.1213920   0.8033420   1.5653607
9 months    ki1135781-COHORTS          GUATEMALA     <20                  <20               1.0000000   1.0000000   1.0000000
9 months    ki1135781-COHORTS          GUATEMALA     [20-25)              <20               1.3238938   0.6673223   2.6264593
9 months    ki1135781-COHORTS          GUATEMALA     [25-30)              <20               1.7178947   0.8794765   3.3555899
9 months    ki1135781-COHORTS          GUATEMALA     >=30                 <20               2.2666667   1.2318164   4.1708959
9 months    ki1135781-COHORTS          INDIA         <20                  <20               1.0000000   1.0000000   1.0000000
9 months    ki1135781-COHORTS          INDIA         [20-25)              <20               0.8930769   0.5885717   1.3551219
9 months    ki1135781-COHORTS          INDIA         [25-30)              <20               0.9429930   0.6224536   1.4285978
9 months    ki1135781-COHORTS          INDIA         >=30                 <20               1.2413504   0.8205038   1.8780544
9 months    ki1135781-COHORTS          PHILIPPINES   <20                  <20               1.0000000   1.0000000   1.0000000
9 months    ki1135781-COHORTS          PHILIPPINES   [20-25)              <20               0.7198060   0.4628261   1.1194714
9 months    ki1135781-COHORTS          PHILIPPINES   [25-30)              <20               0.7368795   0.4699583   1.1554032
9 months    ki1135781-COHORTS          PHILIPPINES   >=30                 <20               1.0552116   0.6933580   1.6059115
12 months   ki1000108-CMC-V-BCS-2002   INDIA         <20                  <20               1.0000000   1.0000000   1.0000000
12 months   ki1000108-CMC-V-BCS-2002   INDIA         [20-25)              <20               1.4126126   0.6598483   3.0241412
12 months   ki1000108-CMC-V-BCS-2002   INDIA         [25-30)              <20               0.9382716   0.4091864   2.1514732
12 months   ki1000108-CMC-V-BCS-2002   INDIA         >=30                 <20               1.1162791   0.4415891   2.8218067
12 months   ki1017093c-NIH-Crypto      BANGLADESH    <20                  <20               1.0000000   1.0000000   1.0000000
12 months   ki1017093c-NIH-Crypto      BANGLADESH    [20-25)              <20               0.9140152   0.4488115   1.8614134
12 months   ki1017093c-NIH-Crypto      BANGLADESH    [25-30)              <20               0.3177648   0.1203331   0.8391244
12 months   ki1017093c-NIH-Crypto      BANGLADESH    >=30                 <20               0.4770849   0.1706443   1.3338274
12 months   ki1101329-Keneba           GAMBIA        <20                  <20               1.0000000   1.0000000   1.0000000
12 months   ki1101329-Keneba           GAMBIA        [20-25)              <20               0.8296587   0.4196622   1.6402088
12 months   ki1101329-Keneba           GAMBIA        [25-30)              <20               0.9304029   0.4740020   1.8262575
12 months   ki1101329-Keneba           GAMBIA        >=30                 <20               1.8801640   1.0609017   3.3320871
12 months   ki1112895-Guatemala BSC    GUATEMALA     <20                  <20               1.0000000   1.0000000   1.0000000
12 months   ki1112895-Guatemala BSC    GUATEMALA     [20-25)              <20               0.8839286   0.3962622   1.9717494
12 months   ki1112895-Guatemala BSC    GUATEMALA     [25-30)              <20               0.6428571   0.2376482   1.7389790
12 months   ki1112895-Guatemala BSC    GUATEMALA     >=30                 <20               0.7857143   0.3052043   2.0227336
12 months   ki1113344-GMS-Nepal        NEPAL         <20                  <20               1.0000000   1.0000000   1.0000000
12 months   ki1113344-GMS-Nepal        NEPAL         [20-25)              <20               0.3545655   0.1586550   0.7923903
12 months   ki1113344-GMS-Nepal        NEPAL         [25-30)              <20               0.7109635   0.3616061   1.3978444
12 months   ki1113344-GMS-Nepal        NEPAL         >=30                 <20               1.0789916   0.5266881   2.2104599
12 months   ki1126311-ZVITAMBO         ZIMBABWE      <20                  <20               1.0000000   1.0000000   1.0000000
12 months   ki1126311-ZVITAMBO         ZIMBABWE      [20-25)              <20               0.8257262   0.6420521   1.0619445
12 months   ki1126311-ZVITAMBO         ZIMBABWE      [25-30)              <20               0.7666947   0.5807360   1.0121996
12 months   ki1126311-ZVITAMBO         ZIMBABWE      >=30                 <20               0.7878479   0.5843304   1.0622489
12 months   ki1135781-COHORTS          GUATEMALA     <20                  <20               1.0000000   1.0000000   1.0000000
12 months   ki1135781-COHORTS          GUATEMALA     [20-25)              <20               1.0701940   0.6754162   1.6957178
12 months   ki1135781-COHORTS          GUATEMALA     [25-30)              <20               1.5340136   0.9926651   2.3705857
12 months   ki1135781-COHORTS          GUATEMALA     >=30                 <20               1.5695612   1.0463710   2.3543488
12 months   ki1135781-COHORTS          INDIA         <20                  <20               1.0000000   1.0000000   1.0000000
12 months   ki1135781-COHORTS          INDIA         [20-25)              <20               0.9473498   0.6590156   1.3618366
12 months   ki1135781-COHORTS          INDIA         [25-30)              <20               0.9159983   0.6365579   1.3181093
12 months   ki1135781-COHORTS          INDIA         >=30                 <20               1.2096774   0.8428147   1.7362291
12 months   ki1135781-COHORTS          PHILIPPINES   <20                  <20               1.0000000   1.0000000   1.0000000
12 months   ki1135781-COHORTS          PHILIPPINES   [20-25)              <20               0.7418781   0.5333368   1.0319617
12 months   ki1135781-COHORTS          PHILIPPINES   [25-30)              <20               0.8418157   0.6065195   1.1683939
12 months   ki1135781-COHORTS          PHILIPPINES   >=30                 <20               1.0357747   0.7562221   1.4186696
18 months   ki1000108-CMC-V-BCS-2002   INDIA         <20                  <20               1.0000000   1.0000000   1.0000000
18 months   ki1000108-CMC-V-BCS-2002   INDIA         [20-25)              <20               2.3524324   1.0211323   5.4194136
18 months   ki1000108-CMC-V-BCS-2002   INDIA         [25-30)              <20               1.7794393   0.7447468   4.2516517
18 months   ki1000108-CMC-V-BCS-2002   INDIA         >=30                 <20               1.8976744   0.7393572   4.8706743
18 months   ki1017093-NIH-Birth        BANGLADESH    <20                  <20               1.0000000   1.0000000   1.0000000
18 months   ki1017093-NIH-Birth        BANGLADESH    [20-25)              <20               1.4705882   0.6956655   3.1087206
18 months   ki1017093-NIH-Birth        BANGLADESH    [25-30)              <20               1.8499486   0.8798914   3.8894683
18 months   ki1017093-NIH-Birth        BANGLADESH    >=30                 <20               1.6106443   0.7410779   3.5005426
18 months   ki1017093b-PROVIDE         BANGLADESH    <20                  <20               1.0000000   1.0000000   1.0000000
18 months   ki1017093b-PROVIDE         BANGLADESH    [20-25)              <20               0.7922078   0.3512247   1.7868708
18 months   ki1017093b-PROVIDE         BANGLADESH    [25-30)              <20               1.0639535   0.4758150   2.3790696
18 months   ki1017093b-PROVIDE         BANGLADESH    >=30                 <20               0.7922078   0.3108114   2.0192088
18 months   ki1101329-Keneba           GAMBIA        <20                  <20               1.0000000   1.0000000   1.0000000
18 months   ki1101329-Keneba           GAMBIA        [20-25)              <20               1.3820513   0.7413809   2.5763622
18 months   ki1101329-Keneba           GAMBIA        [25-30)              <20               1.3271939   0.7056450   2.4962181
18 months   ki1101329-Keneba           GAMBIA        >=30                 <20               2.2214098   1.2657053   3.8987443
18 months   ki1113344-GMS-Nepal        NEPAL         <20                  <20               1.0000000   1.0000000   1.0000000
18 months   ki1113344-GMS-Nepal        NEPAL         [20-25)              <20               0.6386719   0.3883318   1.0503949
18 months   ki1113344-GMS-Nepal        NEPAL         [25-30)              <20               0.5711078   0.3347822   0.9742577
18 months   ki1113344-GMS-Nepal        NEPAL         >=30                 <20               0.7200203   0.3905684   1.3273714
18 months   ki1126311-ZVITAMBO         ZIMBABWE      <20                  <20               1.0000000   1.0000000   1.0000000
18 months   ki1126311-ZVITAMBO         ZIMBABWE      [20-25)              <20               0.7503900   0.5608527   1.0039805
18 months   ki1126311-ZVITAMBO         ZIMBABWE      [25-30)              <20               0.8220021   0.6070627   1.1130441
18 months   ki1126311-ZVITAMBO         ZIMBABWE      >=30                 <20               0.7503687   0.5366717   1.0491577
18 months   ki1135781-COHORTS          GUATEMALA     <20                  <20               1.0000000   1.0000000   1.0000000
18 months   ki1135781-COHORTS          GUATEMALA     [20-25)              <20               1.0181818   0.7191228   1.4416095
18 months   ki1135781-COHORTS          GUATEMALA     [25-30)              <20               1.2114286   0.8675290   1.6916543
18 months   ki1135781-COHORTS          GUATEMALA     >=30                 <20               1.1992945   0.8757118   1.6424437
18 months   ki1135781-COHORTS          PHILIPPINES   <20                  <20               1.0000000   1.0000000   1.0000000
18 months   ki1135781-COHORTS          PHILIPPINES   [20-25)              <20               0.9955556   0.7899348   1.2546996
18 months   ki1135781-COHORTS          PHILIPPINES   [25-30)              <20               0.9413296   0.7428293   1.1928736
18 months   ki1135781-COHORTS          PHILIPPINES   >=30                 <20               1.0986856   0.8728792   1.3829061
18 months   ki1148112-LCNI-5           MALAWI        <20                  <20               1.0000000   1.0000000   1.0000000
18 months   ki1148112-LCNI-5           MALAWI        [20-25)              <20               1.4570552   0.6675437   3.1803308
18 months   ki1148112-LCNI-5           MALAWI        [25-30)              <20               1.4746732   0.6719238   3.2364696
18 months   ki1148112-LCNI-5           MALAWI        >=30                 <20               1.9346910   0.9206027   4.0658467
24 months   ki0047075b-MAL-ED          BANGLADESH    <20                  <20               1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH    [20-25)              <20               0.6343750   0.2191302   1.8364959
24 months   ki0047075b-MAL-ED          BANGLADESH    [25-30)              <20               0.3536585   0.1100081   1.1369558
24 months   ki0047075b-MAL-ED          BANGLADESH    >=30                 <20               1.4108108   0.5286898   3.7647540
24 months   ki1000108-CMC-V-BCS-2002   INDIA         <20                  <20               1.0000000   1.0000000   1.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA         [20-25)              <20               1.3535354   0.7480960   2.4489609
24 months   ki1000108-CMC-V-BCS-2002   INDIA         [25-30)              <20               1.1783894   0.6297310   2.2050710
24 months   ki1000108-CMC-V-BCS-2002   INDIA         >=30                 <20               1.1693122   0.5688201   2.4037318
24 months   ki1017093b-PROVIDE         BANGLADESH    <20                  <20               1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH    [20-25)              <20               0.8943231   0.3403733   2.3498136
24 months   ki1017093b-PROVIDE         BANGLADESH    [25-30)              <20               1.3586592   0.5287801   3.4909688
24 months   ki1017093b-PROVIDE         BANGLADESH    >=30                 <20               1.0971429   0.3843124   3.1321455
24 months   ki1101329-Keneba           GAMBIA        <20                  <20               1.0000000   1.0000000   1.0000000
24 months   ki1101329-Keneba           GAMBIA        [20-25)              <20               0.9353448   0.5175114   1.6905326
24 months   ki1101329-Keneba           GAMBIA        [25-30)              <20               0.9182943   0.5038264   1.6737201
24 months   ki1101329-Keneba           GAMBIA        >=30                 <20               1.2852723   0.7611616   2.1702683
24 months   ki1113344-GMS-Nepal        NEPAL         <20                  <20               1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal        NEPAL         [20-25)              <20               0.6931919   0.3478991   1.3811907
24 months   ki1113344-GMS-Nepal        NEPAL         [25-30)              <20               0.8094992   0.4073687   1.6085893
24 months   ki1113344-GMS-Nepal        NEPAL         >=30                 <20               0.8698225   0.3920251   1.9299558
24 months   ki1126311-ZVITAMBO         ZIMBABWE      <20                  <20               1.0000000   1.0000000   1.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE      [20-25)              <20               0.6563025   0.4466402   0.9643848
24 months   ki1126311-ZVITAMBO         ZIMBABWE      [25-30)              <20               0.7272979   0.4890668   1.0815747
24 months   ki1126311-ZVITAMBO         ZIMBABWE      >=30                 <20               0.6486711   0.4086517   1.0296645
24 months   ki1135781-COHORTS          GUATEMALA     <20                  <20               1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          GUATEMALA     [20-25)              <20               1.0560157   0.7756242   1.4377699
24 months   ki1135781-COHORTS          GUATEMALA     [25-30)              <20               1.2265231   0.9128855   1.6479163
24 months   ki1135781-COHORTS          GUATEMALA     >=30                 <20               1.2027735   0.9111900   1.5876645
24 months   ki1135781-COHORTS          INDIA         <20                  <20               1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          INDIA         [20-25)              <20               0.7444603   0.5900167   0.9393311
24 months   ki1135781-COHORTS          INDIA         [25-30)              <20               0.6664641   0.5260514   0.8443554
24 months   ki1135781-COHORTS          INDIA         >=30                 <20               0.8634526   0.6835495   1.0907044
24 months   ki1135781-COHORTS          PHILIPPINES   <20                  <20               1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          PHILIPPINES   [20-25)              <20               0.9086769   0.7345498   1.1240813
24 months   ki1135781-COHORTS          PHILIPPINES   [25-30)              <20               0.9051002   0.7290941   1.1235948
24 months   ki1135781-COHORTS          PHILIPPINES   >=30                 <20               1.0435921   0.8460760   1.2872182
24 months   ki1148112-LCNI-5           MALAWI        <20                  <20               1.0000000   1.0000000   1.0000000
24 months   ki1148112-LCNI-5           MALAWI        [20-25)              <20               1.2499998   0.5267751   2.9661605
24 months   ki1148112-LCNI-5           MALAWI        [25-30)              <20               1.5925056   0.6911611   3.6692950
24 months   ki1148112-LCNI-5           MALAWI        >=30                 <20               1.4975367   0.6573677   3.4115095


### Parameter: PAR


agecat      studyid                    country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE      <20                  NA                -0.0058926   -0.0138549    0.0020697
Birth       ki1135781-COHORTS          INDIA         <20                  NA                -0.0142100   -0.0350483    0.0066284
Birth       ki1135781-COHORTS          PHILIPPINES   <20                  NA                -0.0113731   -0.0275555    0.0048093
3 months    ki1101329-Keneba           GAMBIA        <20                  NA                -0.0014725   -0.0215648    0.0186198
3 months    ki1126311-ZVITAMBO         ZIMBABWE      <20                  NA                -0.0121420   -0.0254818    0.0011977
3 months    ki1135781-COHORTS          GUATEMALA     <20                  NA                 0.0243339   -0.0337005    0.0823682
3 months    ki1135781-COHORTS          INDIA         <20                  NA                -0.0057613   -0.0255806    0.0140581
3 months    ki1135781-COHORTS          PHILIPPINES   <20                  NA                -0.0115102   -0.0313842    0.0083639
6 months    ki1017093c-NIH-Crypto      BANGLADESH    <20                  NA                -0.0212673   -0.0598210    0.0172864
6 months    ki1126311-ZVITAMBO         ZIMBABWE      <20                  NA                -0.0082937   -0.0203195    0.0037321
6 months    ki1135781-COHORTS          INDIA         <20                  NA                -0.0024772   -0.0249100    0.0199556
6 months    ki1135781-COHORTS          PHILIPPINES   <20                  NA                -0.0146996   -0.0409727    0.0115734
9 months    ki1017093c-NIH-Crypto      BANGLADESH    <20                  NA                -0.0087270   -0.0465272    0.0290731
9 months    ki1101329-Keneba           GAMBIA        <20                  NA                 0.0222799    0.0037155    0.0408443
9 months    ki1112895-Guatemala BSC    GUATEMALA     <20                  NA                -0.0415584   -0.1667392    0.0836223
9 months    ki1113344-GMS-Nepal        NEPAL         <20                  NA                -0.0455700   -0.1039178    0.0127777
9 months    ki1126311-ZVITAMBO         ZIMBABWE      <20                  NA                -0.0008200   -0.0132289    0.0115889
9 months    ki1135781-COHORTS          GUATEMALA     <20                  NA                 0.1068043    0.0222788    0.1913299
9 months    ki1135781-COHORTS          INDIA         <20                  NA                 0.0005298   -0.0306520    0.0317116
9 months    ki1135781-COHORTS          PHILIPPINES   <20                  NA                -0.0123208   -0.0423085    0.0176670
12 months   ki1000108-CMC-V-BCS-2002   INDIA         <20                  NA                 0.0380435   -0.0974385    0.1735255
12 months   ki1017093c-NIH-Crypto      BANGLADESH    <20                  NA                -0.0285405   -0.0775284    0.0204473
12 months   ki1101329-Keneba           GAMBIA        <20                  NA                 0.0149688   -0.0121609    0.0420984
12 months   ki1112895-Guatemala BSC    GUATEMALA     <20                  NA                -0.0362418   -0.1761180    0.1036343
12 months   ki1113344-GMS-Nepal        NEPAL         <20                  NA                -0.0394433   -0.1034716    0.0245851
12 months   ki1126311-ZVITAMBO         ZIMBABWE      <20                  NA                -0.0134939   -0.0299963    0.0030085
12 months   ki1135781-COHORTS          GUATEMALA     <20                  NA                 0.0891182   -0.0056030    0.1838394
12 months   ki1135781-COHORTS          INDIA         <20                  NA                 0.0011952   -0.0392169    0.0416073
12 months   ki1135781-COHORTS          PHILIPPINES   <20                  NA                -0.0172514   -0.0573089    0.0228061
18 months   ki1000108-CMC-V-BCS-2002   INDIA         <20                  NA                 0.1483341    0.0289662    0.2677020
18 months   ki1017093-NIH-Birth        BANGLADESH    <20                  NA                 0.0790889   -0.0172471    0.1754250
18 months   ki1017093b-PROVIDE         BANGLADESH    <20                  NA                -0.0114932   -0.0915583    0.0685719
18 months   ki1101329-Keneba           GAMBIA        <20                  NA                 0.0354205    0.0073218    0.0635191
18 months   ki1113344-GMS-Nepal        NEPAL         <20                  NA                -0.0656380   -0.1435516    0.0122755
18 months   ki1126311-ZVITAMBO         ZIMBABWE      <20                  NA                -0.0415386   -0.0916962    0.0086190
18 months   ki1135781-COHORTS          GUATEMALA     <20                  NA                 0.0556193   -0.0661193    0.1773579
18 months   ki1135781-COHORTS          PHILIPPINES   <20                  NA                 0.0024357   -0.0464410    0.0513124
18 months   ki1148112-LCNI-5           MALAWI        <20                  NA                 0.0448217   -0.0111088    0.1007522
24 months   ki0047075b-MAL-ED          BANGLADESH    <20                  NA                -0.0497723   -0.1878688    0.0883242
24 months   ki1000108-CMC-V-BCS-2002   INDIA         <20                  NA                 0.0659393   -0.0825861    0.2144647
24 months   ki1017093b-PROVIDE         BANGLADESH    <20                  NA                 0.0067970   -0.0590209    0.0726150
24 months   ki1101329-Keneba           GAMBIA        <20                  NA                 0.0061973   -0.0285889    0.0409834
24 months   ki1113344-GMS-Nepal        NEPAL         <20                  NA                -0.0244366   -0.0916733    0.0428001
24 months   ki1126311-ZVITAMBO         ZIMBABWE      <20                  NA                -0.1070855   -0.2209720    0.0068010
24 months   ki1135781-COHORTS          GUATEMALA     <20                  NA                 0.0608449   -0.0447109    0.1664007
24 months   ki1135781-COHORTS          INDIA         <20                  NA                -0.0631360   -0.1185969   -0.0076751
24 months   ki1135781-COHORTS          PHILIPPINES   <20                  NA                -0.0127210   -0.0650192    0.0395773
24 months   ki1148112-LCNI-5           MALAWI        <20                  NA                 0.0325000   -0.0295066    0.0945065


### Parameter: PAF


agecat      studyid                    country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE      <20                  NA                -0.1851004   -0.4635687    0.0403846
Birth       ki1135781-COHORTS          INDIA         <20                  NA                -0.4855072   -1.3989990    0.0801448
Birth       ki1135781-COHORTS          PHILIPPINES   <20                  NA                -0.7540833   -2.2340966    0.0486344
3 months    ki1101329-Keneba           GAMBIA        <20                  NA                -0.0444619   -0.8670470    0.4157080
3 months    ki1126311-ZVITAMBO         ZIMBABWE      <20                  NA                -0.2117470   -0.4682169   -0.0000776
3 months    ki1135781-COHORTS          GUATEMALA     <20                  NA                 0.2621420   -0.7213332    0.6837135
3 months    ki1135781-COHORTS          INDIA         <20                  NA                -0.1563639   -0.8412656    0.2737726
3 months    ki1135781-COHORTS          PHILIPPINES   <20                  NA                -0.4471849   -1.4675847    0.1512574
6 months    ki1017093c-NIH-Crypto      BANGLADESH    <20                  NA                -0.6611351   -2.4194360    0.1930337
6 months    ki1126311-ZVITAMBO         ZIMBABWE      <20                  NA                -0.1990484   -0.5253732    0.0574654
6 months    ki1135781-COHORTS          INDIA         <20                  NA                -0.0508295   -0.6284194    0.3218930
6 months    ki1135781-COHORTS          PHILIPPINES   <20                  NA                -0.3015655   -0.9694775    0.1398365
9 months    ki1017093c-NIH-Crypto      BANGLADESH    <20                  NA                -0.2200461   -1.6648248    0.4414220
9 months    ki1101329-Keneba           GAMBIA        <20                  NA                 0.4676501   -0.1064899    0.7438780
9 months    ki1112895-Guatemala BSC    GUATEMALA     <20                  NA                -0.3200000   -1.7403087    0.3641592
9 months    ki1113344-GMS-Nepal        NEPAL         <20                  NA                -0.7174026   -1.9338267   -0.0053326
9 months    ki1126311-ZVITAMBO         ZIMBABWE      <20                  NA                -0.0170151   -0.3100389    0.2104663
9 months    ki1135781-COHORTS          GUATEMALA     <20                  NA                 0.4207161   -0.0280481    0.6735855
9 months    ki1135781-COHORTS          INDIA         <20                  NA                 0.0063383   -0.4463888    0.3173595
9 months    ki1135781-COHORTS          PHILIPPINES   <20                  NA                -0.1704791   -0.6685067    0.1788938
12 months   ki1000108-CMC-V-BCS-2002   INDIA         <20                  NA                 0.1686747   -0.7121177    0.5963468
12 months   ki1017093c-NIH-Crypto      BANGLADESH    <20                  NA                -0.4914538   -1.6269849    0.1532367
12 months   ki1101329-Keneba           GAMBIA        <20                  NA                 0.2262857   -0.3143543    0.5445415
12 months   ki1112895-Guatemala BSC    GUATEMALA     <20                  NA                -0.2060606   -1.3323349    0.3763408
12 months   ki1113344-GMS-Nepal        NEPAL         <20                  NA                -0.4315558   -1.3366483    0.1229523
12 months   ki1126311-ZVITAMBO         ZIMBABWE      <20                  NA                -0.2045665   -0.4826213    0.0213412
12 months   ki1135781-COHORTS          GUATEMALA     <20                  NA                 0.2581522   -0.0735496    0.4873658
12 months   ki1135781-COHORTS          INDIA         <20                  NA                 0.0096600   -0.3772756    0.2878888
12 months   ki1135781-COHORTS          PHILIPPINES   <20                  NA                -0.1296360   -0.4745849    0.1346192
18 months   ki1000108-CMC-V-BCS-2002   INDIA         <20                  NA                 0.5021587   -0.1200874    0.7787262
18 months   ki1017093-NIH-Birth        BANGLADESH    <20                  NA                 0.3609901   -0.2713171    0.6788105
18 months   ki1017093b-PROVIDE         BANGLADESH    <20                  NA                -0.1113028   -1.2328134    0.4468888
18 months   ki1101329-Keneba           GAMBIA        <20                  NA                 0.4003140   -0.0180853    0.6467650
18 months   ki1113344-GMS-Nepal        NEPAL         <20                  NA                -0.4247167   -1.0300841    0.0001313
18 months   ki1126311-ZVITAMBO         ZIMBABWE      <20                  NA                -0.2378016   -0.5610133    0.0184884
18 months   ki1135781-COHORTS          GUATEMALA     <20                  NA                 0.1127907   -0.1718165    0.3282734
18 months   ki1135781-COHORTS          PHILIPPINES   <20                  NA                 0.0096806   -0.2049409    0.1860742
18 months   ki1148112-LCNI-5           MALAWI        <20                  NA                 0.3473684   -0.2676414    0.6639996
24 months   ki0047075b-MAL-ED          BANGLADESH    <20                  NA                -0.4058355   -2.1368934    0.3699583
24 months   ki1000108-CMC-V-BCS-2002   INDIA         <20                  NA                 0.1994261   -0.4030176    0.5431857
24 months   ki1017093b-PROVIDE         BANGLADESH    <20                  NA                 0.0800383   -1.1361884    0.6038132
24 months   ki1101329-Keneba           GAMBIA        <20                  NA                 0.0775337   -0.4785661    0.4244802
24 months   ki1113344-GMS-Nepal        NEPAL         <20                  NA                -0.2258125   -1.0350340    0.2616259
24 months   ki1126311-ZVITAMBO         ZIMBABWE      <20                  NA                -0.3727556   -0.8327045   -0.0282389
24 months   ki1135781-COHORTS          GUATEMALA     <20                  NA                 0.1226368   -0.1180996    0.3115405
24 months   ki1135781-COHORTS          INDIA         <20                  NA                -0.3033647   -0.5990772   -0.0623374
24 months   ki1135781-COHORTS          PHILIPPINES   <20                  NA                -0.0451419   -0.2482280    0.1249023
24 months   ki1148112-LCNI-5           MALAWI        <20                  NA                 0.2708332   -0.4809354    0.6409808
