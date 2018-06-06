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

**Outcome Variable:** stunted

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
Birth       ki0047075b-MAL-ED          BANGLADESH                     <20          257     36     27      9
Birth       ki0047075b-MAL-ED          BANGLADESH                     [20-25)      257     84     70     14
Birth       ki0047075b-MAL-ED          BANGLADESH                     [25-30)      257     92     77     15
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=30         257     45     36      9
Birth       ki0047075b-MAL-ED          BRAZIL                         <20          191     34     32      2
Birth       ki0047075b-MAL-ED          BRAZIL                         [20-25)      191     63     56      7
Birth       ki0047075b-MAL-ED          BRAZIL                         [25-30)      191     54     45      9
Birth       ki0047075b-MAL-ED          BRAZIL                         >=30         191     40     37      3
Birth       ki0047075b-MAL-ED          INDIA                          <20          205     25     20      5
Birth       ki0047075b-MAL-ED          INDIA                          [20-25)      205     97     80     17
Birth       ki0047075b-MAL-ED          INDIA                          [25-30)      205     68     59      9
Birth       ki0047075b-MAL-ED          INDIA                          >=30         205     15     14      1
Birth       ki0047075b-MAL-ED          NEPAL                          <20          173      5      3      2
Birth       ki0047075b-MAL-ED          NEPAL                          [20-25)      173     41     37      4
Birth       ki0047075b-MAL-ED          NEPAL                          [25-30)      173     91     83      8
Birth       ki0047075b-MAL-ED          NEPAL                          >=30         173     36     32      4
Birth       ki0047075b-MAL-ED          PERU                           <20          287     77     63     14
Birth       ki0047075b-MAL-ED          PERU                           [20-25)      287     84     76      8
Birth       ki0047075b-MAL-ED          PERU                           [25-30)      287     61     57      4
Birth       ki0047075b-MAL-ED          PERU                           >=30         287     65     57      8
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <20          262     41     35      6
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [20-25)      262     82     70     12
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)      262     53     49      4
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=30         262     86     80      6
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20          123      9      9      0
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-25)      123     40     32      8
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)      123     34     28      6
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30         123     40     36      4
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          <20           90      9      7      2
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          [20-25)       90     44     34     10
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)       90     33     30      3
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          >=30          90      4      3      1
Birth       ki1000108-IRC              INDIA                          <20          388     35     28      7
Birth       ki1000108-IRC              INDIA                          [20-25)      388    210    184     26
Birth       ki1000108-IRC              INDIA                          [25-30)      388    115    104     11
Birth       ki1000108-IRC              INDIA                          >=30         388     28     27      1
Birth       ki1000109-EE               PAKISTAN                       <20            2      0      0      0
Birth       ki1000109-EE               PAKISTAN                       [20-25)        2      0      0      0
Birth       ki1000109-EE               PAKISTAN                       [25-30)        2      1      1      0
Birth       ki1000109-EE               PAKISTAN                       >=30           2      1      0      1
Birth       ki1017093-NIH-Birth        BANGLADESH                     <20           28      6      6      0
Birth       ki1017093-NIH-Birth        BANGLADESH                     [20-25)       28     10     10      0
Birth       ki1017093-NIH-Birth        BANGLADESH                     [25-30)       28      5      4      1
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=30          28      7      7      0
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <20           27      3      3      0
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [20-25)       27     13      9      4
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)       27      9      9      0
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=30          27      2      1      1
Birth       ki1101329-Keneba           GAMBIA                         <20         1541    238    217     21
Birth       ki1101329-Keneba           GAMBIA                         [20-25)     1541    365    344     21
Birth       ki1101329-Keneba           GAMBIA                         [25-30)     1541    340    329     11
Birth       ki1101329-Keneba           GAMBIA                         >=30        1541    598    569     29
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <20        13790   2200   1947    253
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [20-25)    13790   5824   5224    600
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)    13790   3442   3090    352
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=30       13790   2324   2103    221
Birth       ki1135781-COHORTS          GUATEMALA                      <20          407     66     63      3
Birth       ki1135781-COHORTS          GUATEMALA                      [20-25)      407    100     95      5
Birth       ki1135781-COHORTS          GUATEMALA                      [25-30)      407     85     84      1
Birth       ki1135781-COHORTS          GUATEMALA                      >=30         407    156    146     10
Birth       ki1135781-COHORTS          INDIA                          <20         4715    368    309     59
Birth       ki1135781-COHORTS          INDIA                          [20-25)     4715   1622   1406    216
Birth       ki1135781-COHORTS          INDIA                          [25-30)     4715   1558   1389    169
Birth       ki1135781-COHORTS          INDIA                          >=30        4715   1167   1053    114
Birth       ki1135781-COHORTS          PHILIPPINES                    <20         3050    378    342     36
Birth       ki1135781-COHORTS          PHILIPPINES                    [20-25)     3050    966    922     44
Birth       ki1135781-COHORTS          PHILIPPINES                    [25-30)     3050    855    803     52
Birth       ki1135781-COHORTS          PHILIPPINES                    >=30        3050    851    796     55
3 months    ki0047075b-MAL-ED          BANGLADESH                     <20          250     36     29      7
3 months    ki0047075b-MAL-ED          BANGLADESH                     [20-25)      250     81     66     15
3 months    ki0047075b-MAL-ED          BANGLADESH                     [25-30)      250     89     82      7
3 months    ki0047075b-MAL-ED          BANGLADESH                     >=30         250     44     30     14
3 months    ki0047075b-MAL-ED          BRAZIL                         <20          225     41     39      2
3 months    ki0047075b-MAL-ED          BRAZIL                         [20-25)      225     70     64      6
3 months    ki0047075b-MAL-ED          BRAZIL                         [25-30)      225     64     58      6
3 months    ki0047075b-MAL-ED          BRAZIL                         >=30         225     50     50      0
3 months    ki0047075b-MAL-ED          INDIA                          <20          239     34     27      7
3 months    ki0047075b-MAL-ED          INDIA                          [20-25)      239    105     91     14
3 months    ki0047075b-MAL-ED          INDIA                          [25-30)      239     79     66     13
3 months    ki0047075b-MAL-ED          INDIA                          >=30         239     21     21      0
3 months    ki0047075b-MAL-ED          NEPAL                          <20          236      5      4      1
3 months    ki0047075b-MAL-ED          NEPAL                          [20-25)      236     57     52      5
3 months    ki0047075b-MAL-ED          NEPAL                          [25-30)      236    128    122      6
3 months    ki0047075b-MAL-ED          NEPAL                          >=30         236     46     45      1
3 months    ki0047075b-MAL-ED          PERU                           <20          291     79     56     23
3 months    ki0047075b-MAL-ED          PERU                           [20-25)      291     84     64     20
3 months    ki0047075b-MAL-ED          PERU                           [25-30)      291     64     49     15
3 months    ki0047075b-MAL-ED          PERU                           >=30         291     64     49     15
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20          281     42     31     11
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-25)      281     90     71     19
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)      281     51     40     11
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30         281     98     85     13
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20          254     15     14      1
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-25)      254     66     53     13
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)      254     67     53     14
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30         254    106     91     15
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20          362     33     23     10
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-25)      362    181    133     48
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)      362    106     80     26
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30         362     42     36      6
3 months    ki1000108-IRC              INDIA                          <20          407     37     25     12
3 months    ki1000108-IRC              INDIA                          [20-25)      407    219    170     49
3 months    ki1000108-IRC              INDIA                          [25-30)      407    123    100     23
3 months    ki1000108-IRC              INDIA                          >=30         407     28     21      7
3 months    ki1000109-EE               PAKISTAN                       <20          374      1      0      1
3 months    ki1000109-EE               PAKISTAN                       [20-25)      374     20      9     11
3 months    ki1000109-EE               PAKISTAN                       [25-30)      374    141     53     88
3 months    ki1000109-EE               PAKISTAN                       >=30         374    212     96    116
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          <20           97      6      3      3
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-25)       97     36     25     11
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)       97     37     18     19
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30          97     18     13      5
3 months    ki1017093-NIH-Birth        BANGLADESH                     <20          568     61     52      9
3 months    ki1017093-NIH-Birth        BANGLADESH                     [20-25)      568    214    166     48
3 months    ki1017093-NIH-Birth        BANGLADESH                     [25-30)      568    169    126     43
3 months    ki1017093-NIH-Birth        BANGLADESH                     >=30         568    124     95     29
3 months    ki1017093b-PROVIDE         BANGLADESH                     <20          645     74     61     13
3 months    ki1017093b-PROVIDE         BANGLADESH                     [20-25)      645    260    234     26
3 months    ki1017093b-PROVIDE         BANGLADESH                     [25-30)      645    193    168     25
3 months    ki1017093b-PROVIDE         BANGLADESH                     >=30         645    118    104     14
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20          728    133    103     30
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-25)      728    249    192     57
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)      728    222    178     44
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30         728    124     99     25
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20         2274    159    146     13
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-25)     2274    710    667     43
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)     2274    780    730     50
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30        2274    625    596     29
3 months    ki1101329-Keneba           GAMBIA                         <20         2174    318    266     52
3 months    ki1101329-Keneba           GAMBIA                         [20-25)     2174    570    489     81
3 months    ki1101329-Keneba           GAMBIA                         [25-30)     2174    467    411     56
3 months    ki1101329-Keneba           GAMBIA                         >=30        2174    819    696    123
3 months    ki1112895-Guatemala BSC    GUATEMALA                      <20           21      4      2      2
3 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-25)       21      8      7      1
3 months    ki1112895-Guatemala BSC    GUATEMALA                      [25-30)       21      4      4      0
3 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30          21      5      4      1
3 months    ki1113344-GMS-Nepal        NEPAL                          <20          571    115     88     27
3 months    ki1113344-GMS-Nepal        NEPAL                          [20-25)      571    198    172     26
3 months    ki1113344-GMS-Nepal        NEPAL                          [25-30)      571    169    149     20
3 months    ki1113344-GMS-Nepal        NEPAL                          >=30         571     89     78     11
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20         9173   1396   1107    289
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-25)     9173   3727   3071    656
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)     9173   2354   1952    402
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30        9173   1696   1407    289
3 months    ki1135781-COHORTS          GUATEMALA                      <20          474     73     49     24
3 months    ki1135781-COHORTS          GUATEMALA                      [20-25)      474    112     83     29
3 months    ki1135781-COHORTS          GUATEMALA                      [25-30)      474    105     72     33
3 months    ki1135781-COHORTS          GUATEMALA                      >=30         474    184    118     66
3 months    ki1135781-COHORTS          INDIA                          <20         5021    399    325     74
3 months    ki1135781-COHORTS          INDIA                          [20-25)     5021   1734   1463    271
3 months    ki1135781-COHORTS          INDIA                          [25-30)     5021   1665   1440    225
3 months    ki1135781-COHORTS          INDIA                          >=30        5021   1223   1017    206
3 months    ki1135781-COHORTS          PHILIPPINES                    <20         2875    349    297     52
3 months    ki1135781-COHORTS          PHILIPPINES                    [20-25)     2875    903    806     97
3 months    ki1135781-COHORTS          PHILIPPINES                    [25-30)     2875    808    722     86
3 months    ki1135781-COHORTS          PHILIPPINES                    >=30        2875    815    695    120
6 months    ki0047075b-MAL-ED          BANGLADESH                     <20          241     35     29      6
6 months    ki0047075b-MAL-ED          BANGLADESH                     [20-25)      241     78     59     19
6 months    ki0047075b-MAL-ED          BANGLADESH                     [25-30)      241     87     77     10
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30         241     41     31     10
6 months    ki0047075b-MAL-ED          BRAZIL                         <20          209     37     37      0
6 months    ki0047075b-MAL-ED          BRAZIL                         [20-25)      209     63     60      3
6 months    ki0047075b-MAL-ED          BRAZIL                         [25-30)      209     62     60      2
6 months    ki0047075b-MAL-ED          BRAZIL                         >=30         209     47     46      1
6 months    ki0047075b-MAL-ED          INDIA                          <20          234     34     26      8
6 months    ki0047075b-MAL-ED          INDIA                          [20-25)      234    103     85     18
6 months    ki0047075b-MAL-ED          INDIA                          [25-30)      234     76     60     16
6 months    ki0047075b-MAL-ED          INDIA                          >=30         234     21     19      2
6 months    ki0047075b-MAL-ED          NEPAL                          <20          236      5      4      1
6 months    ki0047075b-MAL-ED          NEPAL                          [20-25)      236     58     52      6
6 months    ki0047075b-MAL-ED          NEPAL                          [25-30)      236    127    124      3
6 months    ki0047075b-MAL-ED          NEPAL                          >=30         236     46     44      2
6 months    ki0047075b-MAL-ED          PERU                           <20          273     76     60     16
6 months    ki0047075b-MAL-ED          PERU                           [20-25)      273     77     57     20
6 months    ki0047075b-MAL-ED          PERU                           [25-30)      273     59     49     10
6 months    ki0047075b-MAL-ED          PERU                           >=30         273     61     47     14
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20          254     42     32     10
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-25)      254     77     59     18
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)      254     41     35      6
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30         254     94     78     16
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20          247     15     12      3
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-25)      247     63     48     15
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)      247     65     47     18
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30         247    104     82     22
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20          369     33     23     10
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-25)      369    185    127     58
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)      369    108     78     30
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30         369     43     30     13
6 months    ki1000108-IRC              INDIA                          <20          407     36     29      7
6 months    ki1000108-IRC              INDIA                          [20-25)      407    219    156     63
6 months    ki1000108-IRC              INDIA                          [25-30)      407    123     99     24
6 months    ki1000108-IRC              INDIA                          >=30         407     29     23      6
6 months    ki1000109-EE               PAKISTAN                       <20          370      1      0      1
6 months    ki1000109-EE               PAKISTAN                       [20-25)      370     19     11      8
6 months    ki1000109-EE               PAKISTAN                       [25-30)      370    140     68     72
6 months    ki1000109-EE               PAKISTAN                       >=30         370    210     99    111
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <20           96      8      6      2
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-25)       96     35     18     17
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)       96     35     14     21
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30          96     18     10      8
6 months    ki1017093-NIH-Birth        BANGLADESH                     <20          535     61     51     10
6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-25)      535    195    145     50
6 months    ki1017093-NIH-Birth        BANGLADESH                     [25-30)      535    162    115     47
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30         535    117     81     36
6 months    ki1017093b-PROVIDE         BANGLADESH                     <20          583     65     50     15
6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-25)      583    227    196     31
6 months    ki1017093b-PROVIDE         BANGLADESH                     [25-30)      583    182    153     29
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30         583    109     90     19
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20          715    131    100     31
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-25)      715    243    183     60
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)      715    219    186     33
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30         715    122     96     26
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20         2012    146    132     14
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-25)     2012    624    568     56
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)     2012    694    615     79
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30        2012    548    503     45
6 months    ki1101329-Keneba           GAMBIA                         <20         2080    288    254     34
6 months    ki1101329-Keneba           GAMBIA                         [20-25)     2080    524    464     60
6 months    ki1101329-Keneba           GAMBIA                         [25-30)     2080    463    405     58
6 months    ki1101329-Keneba           GAMBIA                         >=30        2080    805    664    141
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <20          276     46     25     21
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-25)      276    108     75     33
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [25-30)      276     63     49     14
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30         276     59     41     18
6 months    ki1113344-GMS-Nepal        NEPAL                          <20          563    108     80     28
6 months    ki1113344-GMS-Nepal        NEPAL                          [20-25)      563    199    161     38
6 months    ki1113344-GMS-Nepal        NEPAL                          [25-30)      563    171    137     34
6 months    ki1113344-GMS-Nepal        NEPAL                          >=30         563     85     66     19
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20         8280   1261   1024    237
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-25)     8280   3364   2835    529
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)     8280   2117   1768    349
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30        8280   1538   1278    260
6 months    ki1135781-COHORTS          GUATEMALA                      <20          464     66     37     29
6 months    ki1135781-COHORTS          GUATEMALA                      [20-25)      464    115     76     39
6 months    ki1135781-COHORTS          GUATEMALA                      [25-30)      464     98     52     46
6 months    ki1135781-COHORTS          GUATEMALA                      >=30         464    185     88     97
6 months    ki1135781-COHORTS          INDIA                          <20         4904    371    288     83
6 months    ki1135781-COHORTS          INDIA                          [20-25)     4904   1708   1374    334
6 months    ki1135781-COHORTS          INDIA                          [25-30)     4904   1623   1338    285
6 months    ki1135781-COHORTS          INDIA                          >=30        4904   1202    943    259
6 months    ki1135781-COHORTS          PHILIPPINES                    <20         2708    331    249     82
6 months    ki1135781-COHORTS          PHILIPPINES                    [20-25)     2708    843    676    167
6 months    ki1135781-COHORTS          PHILIPPINES                    [25-30)     2708    758    612    146
6 months    ki1135781-COHORTS          PHILIPPINES                    >=30        2708    776    599    177
6 months    ki1148112-LCNI-5           MALAWI                         <20          669    107     74     33
6 months    ki1148112-LCNI-5           MALAWI                         [20-25)      669    193    125     68
6 months    ki1148112-LCNI-5           MALAWI                         [25-30)      669    171    103     68
6 months    ki1148112-LCNI-5           MALAWI                         >=30         669    198    117     81
9 months    ki0047075b-MAL-ED          BANGLADESH                     <20          234     34     28      6
9 months    ki0047075b-MAL-ED          BANGLADESH                     [20-25)      234     75     57     18
9 months    ki0047075b-MAL-ED          BANGLADESH                     [25-30)      234     84     67     17
9 months    ki0047075b-MAL-ED          BANGLADESH                     >=30         234     41     24     17
9 months    ki0047075b-MAL-ED          BRAZIL                         <20          199     34     34      0
9 months    ki0047075b-MAL-ED          BRAZIL                         [20-25)      199     60     59      1
9 months    ki0047075b-MAL-ED          BRAZIL                         [25-30)      199     60     58      2
9 months    ki0047075b-MAL-ED          BRAZIL                         >=30         199     45     44      1
9 months    ki0047075b-MAL-ED          INDIA                          <20          230     34     28      6
9 months    ki0047075b-MAL-ED          INDIA                          [20-25)      230    100     78     22
9 months    ki0047075b-MAL-ED          INDIA                          [25-30)      230     75     52     23
9 months    ki0047075b-MAL-ED          INDIA                          >=30         230     21     20      1
9 months    ki0047075b-MAL-ED          NEPAL                          <20          231      4      4      0
9 months    ki0047075b-MAL-ED          NEPAL                          [20-25)      231     56     50      6
9 months    ki0047075b-MAL-ED          NEPAL                          [25-30)      231    126    118      8
9 months    ki0047075b-MAL-ED          NEPAL                          >=30         231     45     41      4
9 months    ki0047075b-MAL-ED          PERU                           <20          256     72     53     19
9 months    ki0047075b-MAL-ED          PERU                           [20-25)      256     68     49     19
9 months    ki0047075b-MAL-ED          PERU                           [25-30)      256     57     43     14
9 months    ki0047075b-MAL-ED          PERU                           >=30         256     59     48     11
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20          250     41     28     13
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-25)      250     74     56     18
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)      250     41     36      5
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30         250     94     77     17
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20          238     13      6      7
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-25)      238     58     37     21
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)      238     64     36     28
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30         238    103     69     34
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20          366     34     25      9
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-25)      366    184    109     75
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)      366    107     72     35
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30         366     41     25     16
9 months    ki1000108-IRC              INDIA                          <20          407     36     27      9
9 months    ki1000108-IRC              INDIA                          [20-25)      407    219    151     68
9 months    ki1000108-IRC              INDIA                          [25-30)      407    123     93     30
9 months    ki1000108-IRC              INDIA                          >=30         407     29     25      4
9 months    ki1000109-EE               PAKISTAN                       <20          364      1      0      1
9 months    ki1000109-EE               PAKISTAN                       [20-25)      364     20      7     13
9 months    ki1000109-EE               PAKISTAN                       [25-30)      364    139     65     74
9 months    ki1000109-EE               PAKISTAN                       >=30         364    204     77    127
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          <20           85      8      4      4
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-25)       85     29     12     17
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)       85     32      8     24
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30          85     16      4     12
9 months    ki1017093-NIH-Birth        BANGLADESH                     <20          505     52     37     15
9 months    ki1017093-NIH-Birth        BANGLADESH                     [20-25)      505    187    121     66
9 months    ki1017093-NIH-Birth        BANGLADESH                     [25-30)      505    156     94     62
9 months    ki1017093-NIH-Birth        BANGLADESH                     >=30         505    110     72     38
9 months    ki1017093b-PROVIDE         BANGLADESH                     <20          605     67     49     18
9 months    ki1017093b-PROVIDE         BANGLADESH                     [20-25)      605    242    197     45
9 months    ki1017093b-PROVIDE         BANGLADESH                     [25-30)      605    186    145     41
9 months    ki1017093b-PROVIDE         BANGLADESH                     >=30         605    110     85     25
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20          706    124     89     35
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-25)      706    247    189     58
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)      706    215    172     43
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30         706    120     92     28
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20         1773    122    109     13
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-25)     1773    540    457     83
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)     1773    609    509    100
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30        1773    502    438     64
9 months    ki1101329-Keneba           GAMBIA                         <20         2057    276    236     40
9 months    ki1101329-Keneba           GAMBIA                         [20-25)     2057    501    428     73
9 months    ki1101329-Keneba           GAMBIA                         [25-30)     2057    470    384     86
9 months    ki1101329-Keneba           GAMBIA                         >=30        2057    810    637    173
9 months    ki1112895-Guatemala BSC    GUATEMALA                      <20          231     35     17     18
9 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-25)      231     91     53     38
9 months    ki1112895-Guatemala BSC    GUATEMALA                      [25-30)      231     57     39     18
9 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30         231     48     28     20
9 months    ki1113344-GMS-Nepal        NEPAL                          <20          551    110     72     38
9 months    ki1113344-GMS-Nepal        NEPAL                          [20-25)      551    192    139     53
9 months    ki1113344-GMS-Nepal        NEPAL                          [25-30)      551    167    126     41
9 months    ki1113344-GMS-Nepal        NEPAL                          >=30         551     82     59     23
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20         7657   1163    906    257
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-25)     7657   3125   2541    584
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)     7657   1968   1569    399
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30        7657   1401   1126    275
9 months    ki1135781-COHORTS          GUATEMALA                      <20          453     68     26     42
9 months    ki1135781-COHORTS          GUATEMALA                      [20-25)      453    113     54     59
9 months    ki1135781-COHORTS          GUATEMALA                      [25-30)      453     95     32     63
9 months    ki1135781-COHORTS          GUATEMALA                      >=30         453    177     59    118
9 months    ki1135781-COHORTS          INDIA                          <20         4283    301    207     94
9 months    ki1135781-COHORTS          INDIA                          [20-25)     4283   1456   1055    401
9 months    ki1135781-COHORTS          INDIA                          [25-30)     4283   1430   1085    345
9 months    ki1135781-COHORTS          INDIA                          >=30        4283   1096    766    330
9 months    ki1135781-COHORTS          PHILIPPINES                    <20         2712    331    235     96
9 months    ki1135781-COHORTS          PHILIPPINES                    [20-25)     2712    854    628    226
9 months    ki1135781-COHORTS          PHILIPPINES                    [25-30)     2712    754    569    185
9 months    ki1135781-COHORTS          PHILIPPINES                    >=30        2712    773    534    239
9 months    ki1148112-LCNI-5           MALAWI                         <20          538     93     72     21
9 months    ki1148112-LCNI-5           MALAWI                         [20-25)      538    148     96     52
9 months    ki1148112-LCNI-5           MALAWI                         [25-30)      538    138     90     48
9 months    ki1148112-LCNI-5           MALAWI                         >=30         538    159     99     60
12 months   ki0047075b-MAL-ED          BANGLADESH                     <20          233     34     23     11
12 months   ki0047075b-MAL-ED          BANGLADESH                     [20-25)      233     75     52     23
12 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)      233     84     63     21
12 months   ki0047075b-MAL-ED          BANGLADESH                     >=30         233     40     20     20
12 months   ki0047075b-MAL-ED          BRAZIL                         <20          195     34     34      0
12 months   ki0047075b-MAL-ED          BRAZIL                         [20-25)      195     58     57      1
12 months   ki0047075b-MAL-ED          BRAZIL                         [25-30)      195     60     56      4
12 months   ki0047075b-MAL-ED          BRAZIL                         >=30         195     43     42      1
12 months   ki0047075b-MAL-ED          INDIA                          <20          226     33     23     10
12 months   ki0047075b-MAL-ED          INDIA                          [20-25)      226     99     68     31
12 months   ki0047075b-MAL-ED          INDIA                          [25-30)      226     73     44     29
12 months   ki0047075b-MAL-ED          INDIA                          >=30         226     21     17      4
12 months   ki0047075b-MAL-ED          NEPAL                          <20          231      4      3      1
12 months   ki0047075b-MAL-ED          NEPAL                          [20-25)      231     56     49      7
12 months   ki0047075b-MAL-ED          NEPAL                          [25-30)      231    126    113     13
12 months   ki0047075b-MAL-ED          NEPAL                          >=30         231     45     40      5
12 months   ki0047075b-MAL-ED          PERU                           <20          246     70     49     21
12 months   ki0047075b-MAL-ED          PERU                           [20-25)      246     65     45     20
12 months   ki0047075b-MAL-ED          PERU                           [25-30)      246     57     40     17
12 months   ki0047075b-MAL-ED          PERU                           >=30         246     54     43     11
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20          252     42     34      8
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-25)      252     75     51     24
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)      252     41     37      4
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30         252     94     70     24
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20          231     13      4      9
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-25)      231     57     27     30
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)      231     61     27     34
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30         231    100     48     52
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20          368     32     18     14
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-25)      368    185     91     94
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)      368    108     53     55
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30         368     43     23     20
12 months   ki1000108-IRC              INDIA                          <20          406     35     28      7
12 months   ki1000108-IRC              INDIA                          [20-25)      406    219    145     74
12 months   ki1000108-IRC              INDIA                          [25-30)      406    123     90     33
12 months   ki1000108-IRC              INDIA                          >=30         406     29     24      5
12 months   ki1000109-EE               PAKISTAN                       <20          355      1      0      1
12 months   ki1000109-EE               PAKISTAN                       [20-25)      355     18      6     12
12 months   ki1000109-EE               PAKISTAN                       [25-30)      355    135     43     92
12 months   ki1000109-EE               PAKISTAN                       >=30         355    201     53    148
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          <20           92      6      2      4
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-25)       92     34      8     26
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)       92     35      6     29
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30          92     17      3     14
12 months   ki1017093-NIH-Birth        BANGLADESH                     <20          489     54     39     15
12 months   ki1017093-NIH-Birth        BANGLADESH                     [20-25)      489    180    109     71
12 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)      489    150     92     58
12 months   ki1017093-NIH-Birth        BANGLADESH                     >=30         489    105     66     39
12 months   ki1017093b-PROVIDE         BANGLADESH                     <20          600     64     43     21
12 months   ki1017093b-PROVIDE         BANGLADESH                     [20-25)      600    242    187     55
12 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)      600    186    140     46
12 months   ki1017093b-PROVIDE         BANGLADESH                     >=30         600    108     73     35
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20          706    127     93     34
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-25)      706    240    181     59
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)      706    218    171     47
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30         706    121     90     31
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20         1433     96     78     18
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-25)     1433    432    364     68
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)     1433    490    402     88
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30        1433    415    352     63
12 months   ki1101329-Keneba           GAMBIA                         <20         1935    254    198     56
12 months   ki1101329-Keneba           GAMBIA                         [20-25)     1935    471    371    100
12 months   ki1101329-Keneba           GAMBIA                         [25-30)     1935    441    342     99
12 months   ki1101329-Keneba           GAMBIA                         >=30        1935    769    541    228
12 months   ki1112895-Guatemala BSC    GUATEMALA                      <20          199     33     13     20
12 months   ki1112895-Guatemala BSC    GUATEMALA                      [20-25)      199     80     38     42
12 months   ki1112895-Guatemala BSC    GUATEMALA                      [25-30)      199     44     26     18
12 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30         199     42     22     20
12 months   ki1113344-GMS-Nepal        NEPAL                          <20          558    107     71     36
12 months   ki1113344-GMS-Nepal        NEPAL                          [20-25)      558    194    137     57
12 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)      558    172    109     63
12 months   ki1113344-GMS-Nepal        NEPAL                          >=30         558     85     50     35
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20         6731   1032    752    280
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-25)     6731   2713   2077    636
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)     6731   1740   1315    425
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30        6731   1246    943    303
12 months   ki1135781-COHORTS          GUATEMALA                      <20          533     82     28     54
12 months   ki1135781-COHORTS          GUATEMALA                      [20-25)      533    135     46     89
12 months   ki1135781-COHORTS          GUATEMALA                      [25-30)      533    112     30     82
12 months   ki1135781-COHORTS          GUATEMALA                      >=30         533    204     54    150
12 months   ki1135781-COHORTS          INDIA                          <20         3823    253    143    110
12 months   ki1135781-COHORTS          INDIA                          [20-25)     3823   1275    804    471
12 months   ki1135781-COHORTS          INDIA                          [25-30)     3823   1283    876    407
12 months   ki1135781-COHORTS          INDIA                          >=30        3823   1012    611    401
12 months   ki1135781-COHORTS          PHILIPPINES                    <20         2585    306    183    123
12 months   ki1135781-COHORTS          PHILIPPINES                    [20-25)     2585    807    514    293
12 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)     2585    727    469    258
12 months   ki1135781-COHORTS          PHILIPPINES                    >=30        2585    745    419    326
12 months   ki1148112-LCNI-5           MALAWI                         <20          513     84     54     30
12 months   ki1148112-LCNI-5           MALAWI                         [20-25)      513    138     85     53
12 months   ki1148112-LCNI-5           MALAWI                         [25-30)      513    130     81     49
12 months   ki1148112-LCNI-5           MALAWI                         >=30         513    161     84     77
18 months   ki0047075b-MAL-ED          BANGLADESH                     <20          221     32     13     19
18 months   ki0047075b-MAL-ED          BANGLADESH                     [20-25)      221     67     37     30
18 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)      221     84     48     36
18 months   ki0047075b-MAL-ED          BANGLADESH                     >=30         221     38     18     20
18 months   ki0047075b-MAL-ED          BRAZIL                         <20          180     31     28      3
18 months   ki0047075b-MAL-ED          BRAZIL                         [20-25)      180     55     54      1
18 months   ki0047075b-MAL-ED          BRAZIL                         [25-30)      180     54     52      2
18 months   ki0047075b-MAL-ED          BRAZIL                         >=30         180     40     39      1
18 months   ki0047075b-MAL-ED          INDIA                          <20          226     33     19     14
18 months   ki0047075b-MAL-ED          INDIA                          [20-25)      226     99     54     45
18 months   ki0047075b-MAL-ED          INDIA                          [25-30)      226     73     33     40
18 months   ki0047075b-MAL-ED          INDIA                          >=30         226     21     17      4
18 months   ki0047075b-MAL-ED          NEPAL                          <20          229      4      3      1
18 months   ki0047075b-MAL-ED          NEPAL                          [20-25)      229     56     44     12
18 months   ki0047075b-MAL-ED          NEPAL                          [25-30)      229    124    102     22
18 months   ki0047075b-MAL-ED          NEPAL                          >=30         229     45     35     10
18 months   ki0047075b-MAL-ED          PERU                           <20          222     62     33     29
18 months   ki0047075b-MAL-ED          PERU                           [20-25)      222     57     34     23
18 months   ki0047075b-MAL-ED          PERU                           [25-30)      222     53     27     26
18 months   ki0047075b-MAL-ED          PERU                           >=30         222     50     29     21
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20          241     40     28     12
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-25)      241     68     37     31
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)      241     39     30      9
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30         241     94     64     30
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20          225     12      2     10
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-25)      225     55     15     40
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)      225     60     20     40
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30         225     98     32     66
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20          369     34     11     23
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-25)      369    185     51    134
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)      369    107     36     71
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30         369     43     17     26
18 months   ki1000108-IRC              INDIA                          <20          405     37     22     15
18 months   ki1000108-IRC              INDIA                          [20-25)      405    217    134     83
18 months   ki1000108-IRC              INDIA                          [25-30)      405    122     81     41
18 months   ki1000108-IRC              INDIA                          >=30         405     29     24      5
18 months   ki1000109-EE               PAKISTAN                       <20          348      1      0      1
18 months   ki1000109-EE               PAKISTAN                       [20-25)      348     18      3     15
18 months   ki1000109-EE               PAKISTAN                       [25-30)      348    133     23    110
18 months   ki1000109-EE               PAKISTAN                       >=30         348    196     27    169
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          <20           84      8      1      7
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-25)       84     31      3     28
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)       84     31      5     26
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30          84     14      1     13
18 months   ki1017093-NIH-Birth        BANGLADESH                     <20          461     50     19     31
18 months   ki1017093-NIH-Birth        BANGLADESH                     [20-25)      461    170     70    100
18 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)      461    139     52     87
18 months   ki1017093-NIH-Birth        BANGLADESH                     >=30         461    102     49     53
18 months   ki1017093b-PROVIDE         BANGLADESH                     <20          552     61     34     27
18 months   ki1017093b-PROVIDE         BANGLADESH                     [20-25)      552    220    143     77
18 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)      552    172    107     65
18 months   ki1017093b-PROVIDE         BANGLADESH                     >=30         552     99     62     37
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20          634    115     82     33
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-25)      634    221    158     63
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)      634    196    135     61
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30         634    102     68     34
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20          973     54     42     12
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-25)      973    281    209     72
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)      973    343    252     91
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30         973    295    235     60
18 months   ki1101329-Keneba           GAMBIA                         <20         1910    245    175     70
18 months   ki1101329-Keneba           GAMBIA                         [20-25)     1910    450    318    132
18 months   ki1101329-Keneba           GAMBIA                         [25-30)     1910    426    286    140
18 months   ki1101329-Keneba           GAMBIA                         >=30        1910    789    511    278
18 months   ki1113344-GMS-Nepal        NEPAL                          <20          550    109     47     62
18 months   ki1113344-GMS-Nepal        NEPAL                          [20-25)      550    192     98     94
18 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)      550    167     78     89
18 months   ki1113344-GMS-Nepal        NEPAL                          >=30         550     82     35     47
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20         1706    259    119    140
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-25)     1706    641    343    298
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)     1706    467    256    211
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30        1706    339    177    162
18 months   ki1135781-COHORTS          GUATEMALA                      <20          436     64     14     50
18 months   ki1135781-COHORTS          GUATEMALA                      [20-25)      436    110     18     92
18 months   ki1135781-COHORTS          GUATEMALA                      [25-30)      436    100     12     88
18 months   ki1135781-COHORTS          GUATEMALA                      >=30         436    162     26    136
18 months   ki1135781-COHORTS          PHILIPPINES                    <20         2492    301    120    181
18 months   ki1135781-COHORTS          PHILIPPINES                    [20-25)     2492    774    326    448
18 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)     2492    712    304    408
18 months   ki1135781-COHORTS          PHILIPPINES                    >=30        2492    705    278    427
18 months   ki1148112-LCNI-5           MALAWI                         <20          589     95     49     46
18 months   ki1148112-LCNI-5           MALAWI                         [20-25)      589    163     86     77
18 months   ki1148112-LCNI-5           MALAWI                         [25-30)      589    153     83     70
18 months   ki1148112-LCNI-5           MALAWI                         >=30         589    178     97     81
24 months   ki0047075b-MAL-ED          BANGLADESH                     <20          212     29     13     16
24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-25)      212     64     36     28
24 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)      212     82     48     34
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30         212     37     17     20
24 months   ki0047075b-MAL-ED          BRAZIL                         <20          169     27     25      2
24 months   ki0047075b-MAL-ED          BRAZIL                         [20-25)      169     51     49      2
24 months   ki0047075b-MAL-ED          BRAZIL                         [25-30)      169     51     49      2
24 months   ki0047075b-MAL-ED          BRAZIL                         >=30         169     40     40      0
24 months   ki0047075b-MAL-ED          INDIA                          <20          225     33     21     12
24 months   ki0047075b-MAL-ED          INDIA                          [20-25)      225     99     59     40
24 months   ki0047075b-MAL-ED          INDIA                          [25-30)      225     73     35     38
24 months   ki0047075b-MAL-ED          INDIA                          >=30         225     20     16      4
24 months   ki0047075b-MAL-ED          NEPAL                          <20          228      4      3      1
24 months   ki0047075b-MAL-ED          NEPAL                          [20-25)      228     55     44     11
24 months   ki0047075b-MAL-ED          NEPAL                          [25-30)      228    124     99     25
24 months   ki0047075b-MAL-ED          NEPAL                          >=30         228     45     33     12
24 months   ki0047075b-MAL-ED          PERU                           <20          201     55     33     22
24 months   ki0047075b-MAL-ED          PERU                           [20-25)      201     50     32     18
24 months   ki0047075b-MAL-ED          PERU                           [25-30)      201     48     32     16
24 months   ki0047075b-MAL-ED          PERU                           >=30         201     48     30     18
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20          238     39     25     14
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-25)      238     69     40     29
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)      238     37     28      9
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30         238     93     61     32
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20          214      9      3      6
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-25)      214     53     15     38
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)      214     60     14     46
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30         214     92     29     63
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20          372     34     13     21
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-25)      372    187     48    139
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)      372    109     34     75
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30         372     42     11     31
24 months   ki1000108-IRC              INDIA                          <20          409     37     20     17
24 months   ki1000108-IRC              INDIA                          [20-25)      409    220    127     93
24 months   ki1000108-IRC              INDIA                          [25-30)      409    123     74     49
24 months   ki1000108-IRC              INDIA                          >=30         409     29     18     11
24 months   ki1017093-NIH-Birth        BANGLADESH                     <20          427     44     21     23
24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-25)      427    161     73     88
24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)      427    128     54     74
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30         427     94     42     52
24 months   ki1017093b-PROVIDE         BANGLADESH                     <20          577     64     44     20
24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-25)      577    229    155     74
24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)      577    179    121     58
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30         577    105     67     38
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20          514    101     80     21
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-25)      514    176    127     49
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)      514    158    117     41
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30         514     79     58     21
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20            6      1      1      0
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-25)        6      0      0      0
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)        6      3      2      1
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30           6      2      2      0
24 months   ki1101329-Keneba           GAMBIA                         <20         1714    217    146     71
24 months   ki1101329-Keneba           GAMBIA                         [20-25)     1714    406    274    132
24 months   ki1101329-Keneba           GAMBIA                         [25-30)     1714    384    262    122
24 months   ki1101329-Keneba           GAMBIA                         >=30        1714    707    458    249
24 months   ki1113344-GMS-Nepal        NEPAL                          <20          499     98     53     45
24 months   ki1113344-GMS-Nepal        NEPAL                          [20-25)      499    174     97     77
24 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)      499    149     82     67
24 months   ki1113344-GMS-Nepal        NEPAL                          >=30         499     78     44     34
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20          456     71     23     48
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-25)      456    170     61    109
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)      456    129     44     85
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30         456     86     30     56
24 months   ki1135781-COHORTS          GUATEMALA                      <20          518     85     14     71
24 months   ki1135781-COHORTS          GUATEMALA                      [20-25)      518    124     19    105
24 months   ki1135781-COHORTS          GUATEMALA                      [25-30)      518    118     17    101
24 months   ki1135781-COHORTS          GUATEMALA                      >=30         518    191     35    156
24 months   ki1135781-COHORTS          INDIA                          <20         3695    247     88    159
24 months   ki1135781-COHORTS          INDIA                          [20-25)     3695   1238    643    595
24 months   ki1135781-COHORTS          INDIA                          [25-30)     3695   1228    685    543
24 months   ki1135781-COHORTS          INDIA                          >=30        3695    982    452    530
24 months   ki1135781-COHORTS          PHILIPPINES                    <20         2445    292    101    191
24 months   ki1135781-COHORTS          PHILIPPINES                    [20-25)     2445    766    292    474
24 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)     2445    694    284    410
24 months   ki1135781-COHORTS          PHILIPPINES                    >=30        2445    693    260    433
24 months   ki1148112-LCNI-5           MALAWI                         <20          475     80     49     31
24 months   ki1148112-LCNI-5           MALAWI                         [20-25)      475    128     73     55
24 months   ki1148112-LCNI-5           MALAWI                         [25-30)      475    122     61     61
24 months   ki1148112-LCNI-5           MALAWI                         >=30         475    145     78     67


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
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 3 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 3 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 9 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 9 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 9 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 12 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 18 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/37e49d1a-7f85-4b55-aaee-fe5f6f05377a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->


```
## Warning: Removed 100 rows containing missing values (geom_errorbar).
```

![](/tmp/37e49d1a-7f85-4b55-aaee-fe5f6f05377a/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/37e49d1a-7f85-4b55-aaee-fe5f6f05377a/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/37e49d1a-7f85-4b55-aaee-fe5f6f05377a/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                0.2500000   0.1082758   0.3917242
Birth       ki0047075b-MAL-ED          BANGLADESH                     [20-25)              NA                0.1666667   0.0868141   0.2465192
Birth       ki0047075b-MAL-ED          BANGLADESH                     [25-30)              NA                0.1630435   0.0874118   0.2386752
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                0.2000000   0.0829023   0.3170977
Birth       ki1101329-Keneba           GAMBIA                         <20                  NA                0.0882353   0.0521888   0.1242818
Birth       ki1101329-Keneba           GAMBIA                         [20-25)              NA                0.0575342   0.0336375   0.0814310
Birth       ki1101329-Keneba           GAMBIA                         [25-30)              NA                0.0323529   0.0135396   0.0511662
Birth       ki1101329-Keneba           GAMBIA                         >=30                 NA                0.0484950   0.0312726   0.0657173
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                0.1150000   0.1016687   0.1283313
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [20-25)              NA                0.1030220   0.0952145   0.1108294
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              NA                0.1022661   0.0921434   0.1123889
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.0950947   0.0831678   0.1070215
Birth       ki1135781-COHORTS          INDIA                          <20                  NA                0.1603261   0.1228350   0.1978171
Birth       ki1135781-COHORTS          INDIA                          [20-25)              NA                0.1331689   0.1166327   0.1497052
Birth       ki1135781-COHORTS          INDIA                          [25-30)              NA                0.1084724   0.0930292   0.1239156
Birth       ki1135781-COHORTS          INDIA                          >=30                 NA                0.0976864   0.0806509   0.1147219
Birth       ki1135781-COHORTS          PHILIPPINES                    <20                  NA                0.0952381   0.0656412   0.1248350
Birth       ki1135781-COHORTS          PHILIPPINES                    [20-25)              NA                0.0455487   0.0323981   0.0586993
Birth       ki1135781-COHORTS          PHILIPPINES                    [25-30)              NA                0.0608187   0.0447962   0.0768412
Birth       ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.0646298   0.0481078   0.0811519
3 months    ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                0.1944444   0.0649018   0.3239871
3 months    ki0047075b-MAL-ED          BANGLADESH                     [20-25)              NA                0.1851852   0.1004218   0.2699486
3 months    ki0047075b-MAL-ED          BANGLADESH                     [25-30)              NA                0.0786517   0.0226128   0.1346906
3 months    ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                0.3181818   0.1802819   0.4560818
3 months    ki0047075b-MAL-ED          PERU                           <20                  NA                0.2911392   0.1907903   0.3914882
3 months    ki0047075b-MAL-ED          PERU                           [20-25)              NA                0.2380952   0.1468560   0.3293345
3 months    ki0047075b-MAL-ED          PERU                           [25-30)              NA                0.2343750   0.1304143   0.3383357
3 months    ki0047075b-MAL-ED          PERU                           >=30                 NA                0.2343750   0.1304143   0.3383357
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  NA                0.2619048   0.1286982   0.3951113
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-25)              NA                0.2111111   0.1266485   0.2955737
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              NA                0.2156863   0.1026043   0.3287682
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                0.1326531   0.0653764   0.1999297
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                0.3030303   0.1460151   0.4600455
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-25)              NA                0.2651934   0.2007946   0.3295921
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              NA                0.2452830   0.1632627   0.3273034
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 NA                0.1428571   0.0368826   0.2488317
3 months    ki1000108-IRC              INDIA                          <20                  NA                0.3243243   0.1733023   0.4753464
3 months    ki1000108-IRC              INDIA                          [20-25)              NA                0.2237443   0.1684808   0.2790078
3 months    ki1000108-IRC              INDIA                          [25-30)              NA                0.1869919   0.1180015   0.2559822
3 months    ki1000108-IRC              INDIA                          >=30                 NA                0.2500000   0.0894154   0.4105846
3 months    ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                0.1475410   0.0584654   0.2366166
3 months    ki1017093-NIH-Birth        BANGLADESH                     [20-25)              NA                0.2242991   0.1683639   0.2802342
3 months    ki1017093-NIH-Birth        BANGLADESH                     [25-30)              NA                0.2544379   0.1887144   0.3201613
3 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                0.2338710   0.1593019   0.3084401
3 months    ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                0.1756757   0.0889048   0.2624466
3 months    ki1017093b-PROVIDE         BANGLADESH                     [20-25)              NA                0.1000000   0.0635062   0.1364938
3 months    ki1017093b-PROVIDE         BANGLADESH                     [25-30)              NA                0.1295337   0.0821233   0.1769441
3 months    ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                0.1186441   0.0602535   0.1770346
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                0.2255639   0.1544838   0.2966441
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-25)              NA                0.2289157   0.1766958   0.2811355
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              NA                0.1981982   0.1457231   0.2506733
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                0.2016129   0.1309483   0.2722775
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.0817610   0.0391623   0.1243597
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-25)              NA                0.0605634   0.0430143   0.0781124
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                0.0641026   0.0469097   0.0812954
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.0464000   0.0299053   0.0628947
3 months    ki1101329-Keneba           GAMBIA                         <20                  NA                0.1635220   0.1228637   0.2041804
3 months    ki1101329-Keneba           GAMBIA                         [20-25)              NA                0.1421053   0.1134349   0.1707756
3 months    ki1101329-Keneba           GAMBIA                         [25-30)              NA                0.1199143   0.0904438   0.1493849
3 months    ki1101329-Keneba           GAMBIA                         >=30                 NA                0.1501832   0.1257106   0.1746557
3 months    ki1113344-GMS-Nepal        NEPAL                          <20                  NA                0.2347826   0.1572463   0.3123189
3 months    ki1113344-GMS-Nepal        NEPAL                          [20-25)              NA                0.1313131   0.0842282   0.1783981
3 months    ki1113344-GMS-Nepal        NEPAL                          [25-30)              NA                0.1183432   0.0696008   0.1670856
3 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.1235955   0.0551591   0.1920319
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                0.2070201   0.1857648   0.2282753
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-25)              NA                0.1760129   0.1637857   0.1882400
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              NA                0.1707732   0.1555707   0.1859757
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.1704009   0.1525061   0.1882958
3 months    ki1135781-COHORTS          GUATEMALA                      <20                  NA                0.3287671   0.2208908   0.4366434
3 months    ki1135781-COHORTS          GUATEMALA                      [20-25)              NA                0.2589286   0.1777170   0.3401401
3 months    ki1135781-COHORTS          GUATEMALA                      [25-30)              NA                0.3142857   0.2253971   0.4031743
3 months    ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.3586957   0.2893223   0.4280690
3 months    ki1135781-COHORTS          INDIA                          <20                  NA                0.1854637   0.1473229   0.2236044
3 months    ki1135781-COHORTS          INDIA                          [20-25)              NA                0.1562860   0.1391928   0.1733793
3 months    ki1135781-COHORTS          INDIA                          [25-30)              NA                0.1351351   0.1187125   0.1515578
3 months    ki1135781-COHORTS          INDIA                          >=30                 NA                0.1684383   0.1474612   0.1894154
3 months    ki1135781-COHORTS          PHILIPPINES                    <20                  NA                0.1489971   0.1116321   0.1863622
3 months    ki1135781-COHORTS          PHILIPPINES                    [20-25)              NA                0.1074197   0.0872200   0.1276194
3 months    ki1135781-COHORTS          PHILIPPINES                    [25-30)              NA                0.1064356   0.0851678   0.1277035
3 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.1472393   0.1229077   0.1715708
6 months    ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                0.1714286   0.0463095   0.2965477
6 months    ki0047075b-MAL-ED          BANGLADESH                     [20-25)              NA                0.2435897   0.1481318   0.3390476
6 months    ki0047075b-MAL-ED          BANGLADESH                     [25-30)              NA                0.1149425   0.0477815   0.1821036
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                0.2439024   0.1121811   0.3756238
6 months    ki0047075b-MAL-ED          PERU                           <20                  NA                0.2105263   0.1187015   0.3023512
6 months    ki0047075b-MAL-ED          PERU                           [20-25)              NA                0.2597403   0.1616194   0.3578611
6 months    ki0047075b-MAL-ED          PERU                           [25-30)              NA                0.1694915   0.0735813   0.2654018
6 months    ki0047075b-MAL-ED          PERU                           >=30                 NA                0.2295082   0.1237867   0.3352297
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  NA                0.2380952   0.1090311   0.3671594
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-25)              NA                0.2337662   0.1390486   0.3284839
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              NA                0.1463415   0.0379391   0.2547438
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                0.1702128   0.0940890   0.2463365
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                0.3030303   0.1460192   0.4600414
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-25)              NA                0.3135135   0.2465720   0.3804550
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              NA                0.2777778   0.1931896   0.3623660
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 NA                0.3023256   0.1648685   0.4397826
6 months    ki1000108-IRC              INDIA                          <20                  NA                0.1944444   0.0650020   0.3238868
6 months    ki1000108-IRC              INDIA                          [20-25)              NA                0.2876712   0.2276440   0.3476985
6 months    ki1000108-IRC              INDIA                          [25-30)              NA                0.1951220   0.1250010   0.2652429
6 months    ki1000108-IRC              INDIA                          >=30                 NA                0.2068966   0.0592835   0.3545096
6 months    ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                0.1639344   0.0709426   0.2569262
6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-25)              NA                0.2564103   0.1950663   0.3177542
6 months    ki1017093-NIH-Birth        BANGLADESH                     [25-30)              NA                0.2901235   0.2201748   0.3600722
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                0.3076923   0.2239839   0.3914008
6 months    ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                0.2307692   0.1282556   0.3332828
6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-25)              NA                0.1365639   0.0918553   0.1812725
6 months    ki1017093b-PROVIDE         BANGLADESH                     [25-30)              NA                0.1593407   0.1061227   0.2125587
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                0.1743119   0.1030300   0.2455938
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                0.2366412   0.1638086   0.3094738
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-25)              NA                0.2469136   0.1926581   0.3011691
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              NA                0.1506849   0.1032717   0.1980981
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                0.2131148   0.1403980   0.2858315
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.0958904   0.0481179   0.1436629
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-25)              NA                0.0897436   0.0673127   0.1121745
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                0.1138329   0.0901972   0.1374685
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.0821168   0.0591249   0.1051087
6 months    ki1101329-Keneba           GAMBIA                         <20                  NA                0.1180556   0.0807803   0.1553308
6 months    ki1101329-Keneba           GAMBIA                         [20-25)              NA                0.1145038   0.0872335   0.1417741
6 months    ki1101329-Keneba           GAMBIA                         [25-30)              NA                0.1252700   0.0951106   0.1554294
6 months    ki1101329-Keneba           GAMBIA                         >=30                 NA                0.1751553   0.1488918   0.2014188
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <20                  NA                0.4565217   0.3123171   0.6007264
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-25)              NA                0.3055556   0.2185217   0.3925894
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [25-30)              NA                0.2222222   0.1193762   0.3250682
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30                 NA                0.3050847   0.1873820   0.4227875
6 months    ki1113344-GMS-Nepal        NEPAL                          <20                  NA                0.2592593   0.1765370   0.3419815
6 months    ki1113344-GMS-Nepal        NEPAL                          [20-25)              NA                0.1909548   0.1362961   0.2456135
6 months    ki1113344-GMS-Nepal        NEPAL                          [25-30)              NA                0.1988304   0.1389562   0.2587046
6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.2235294   0.1348844   0.3121745
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                0.1879461   0.1663822   0.2095099
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-25)              NA                0.1572533   0.1449507   0.1695558
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              NA                0.1648559   0.1490490   0.1806628
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.1690507   0.1503184   0.1877831
6 months    ki1135781-COHORTS          GUATEMALA                      <20                  NA                0.4393939   0.3195267   0.5592612
6 months    ki1135781-COHORTS          GUATEMALA                      [20-25)              NA                0.3391304   0.2525123   0.4257486
6 months    ki1135781-COHORTS          GUATEMALA                      [25-30)              NA                0.4693878   0.3704737   0.5683018
6 months    ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.5243243   0.4522823   0.5963664
6 months    ki1135781-COHORTS          INDIA                          <20                  NA                0.2237197   0.1813098   0.2661295
6 months    ki1135781-COHORTS          INDIA                          [20-25)              NA                0.1955504   0.1767387   0.2143620
6 months    ki1135781-COHORTS          INDIA                          [25-30)              NA                0.1756007   0.1570882   0.1941132
6 months    ki1135781-COHORTS          INDIA                          >=30                 NA                0.2154742   0.1922286   0.2387198
6 months    ki1135781-COHORTS          PHILIPPINES                    <20                  NA                0.2477341   0.2012192   0.2942491
6 months    ki1135781-COHORTS          PHILIPPINES                    [20-25)              NA                0.1981020   0.1711917   0.2250123
6 months    ki1135781-COHORTS          PHILIPPINES                    [25-30)              NA                0.1926121   0.1645335   0.2206908
6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.2280928   0.1985647   0.2576209
6 months    ki1148112-LCNI-5           MALAWI                         <20                  NA                0.3084112   0.2208382   0.3959842
6 months    ki1148112-LCNI-5           MALAWI                         [20-25)              NA                0.3523316   0.2848871   0.4197761
6 months    ki1148112-LCNI-5           MALAWI                         [25-30)              NA                0.3976608   0.3242514   0.4710702
6 months    ki1148112-LCNI-5           MALAWI                         >=30                 NA                0.4090909   0.3405562   0.4776256
9 months    ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                0.1764706   0.0480560   0.3048852
9 months    ki0047075b-MAL-ED          BANGLADESH                     [20-25)              NA                0.2400000   0.1431366   0.3368634
9 months    ki0047075b-MAL-ED          BANGLADESH                     [25-30)              NA                0.2023810   0.1162774   0.2884845
9 months    ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                0.4146341   0.2635105   0.5657578
9 months    ki0047075b-MAL-ED          PERU                           <20                  NA                0.2638889   0.1618856   0.3658921
9 months    ki0047075b-MAL-ED          PERU                           [20-25)              NA                0.2794118   0.1725532   0.3862704
9 months    ki0047075b-MAL-ED          PERU                           [25-30)              NA                0.2456140   0.1336486   0.3575795
9 months    ki0047075b-MAL-ED          PERU                           >=30                 NA                0.1864407   0.0868687   0.2860126
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  NA                0.3170732   0.1743504   0.4597960
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-25)              NA                0.2432432   0.1452940   0.3411925
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              NA                0.1219512   0.0215870   0.2223154
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                0.1808511   0.1028866   0.2588155
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.5384615   0.2668977   0.8100254
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-25)              NA                0.3620690   0.2381234   0.4860145
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                0.4375000   0.3157069   0.5592931
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.3300971   0.2390910   0.4211032
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                0.2647059   0.1162098   0.4132020
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-25)              NA                0.4076087   0.3365104   0.4787070
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              NA                0.3271028   0.2380871   0.4161185
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 NA                0.3902439   0.2407249   0.5397629
9 months    ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                0.2884615   0.1652022   0.4117209
9 months    ki1017093-NIH-Birth        BANGLADESH                     [20-25)              NA                0.3529412   0.2843796   0.4215027
9 months    ki1017093-NIH-Birth        BANGLADESH                     [25-30)              NA                0.3974359   0.3205669   0.4743049
9 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                0.3454545   0.2565042   0.4344049
9 months    ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                0.2686567   0.1624311   0.3748824
9 months    ki1017093b-PROVIDE         BANGLADESH                     [20-25)              NA                0.1859504   0.1368909   0.2350100
9 months    ki1017093b-PROVIDE         BANGLADESH                     [25-30)              NA                0.2204301   0.1608071   0.2800531
9 months    ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                0.2272727   0.1488941   0.3056514
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                0.2822581   0.2029801   0.3615360
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-25)              NA                0.2348178   0.1819179   0.2877178
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              NA                0.2000000   0.1464947   0.2535053
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                0.2333333   0.1576053   0.3090614
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.1065574   0.0517908   0.1613240
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-25)              NA                0.1537037   0.1232754   0.1841320
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                0.1642036   0.1347727   0.1936345
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.1274900   0.0983062   0.1566739
9 months    ki1101329-Keneba           GAMBIA                         <20                  NA                0.1449275   0.1033866   0.1864685
9 months    ki1101329-Keneba           GAMBIA                         [20-25)              NA                0.1457086   0.1148070   0.1766101
9 months    ki1101329-Keneba           GAMBIA                         [25-30)              NA                0.1829787   0.1480147   0.2179428
9 months    ki1101329-Keneba           GAMBIA                         >=30                 NA                0.2135802   0.1853497   0.2418108
9 months    ki1112895-Guatemala BSC    GUATEMALA                      <20                  NA                0.5142857   0.3483466   0.6802248
9 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-25)              NA                0.4175824   0.3160376   0.5191272
9 months    ki1112895-Guatemala BSC    GUATEMALA                      [25-30)              NA                0.3157895   0.1948560   0.4367229
9 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30                 NA                0.4166667   0.2768940   0.5564394
9 months    ki1113344-GMS-Nepal        NEPAL                          <20                  NA                0.3454545   0.2565116   0.4343975
9 months    ki1113344-GMS-Nepal        NEPAL                          [20-25)              NA                0.2760417   0.2127515   0.3393318
9 months    ki1113344-GMS-Nepal        NEPAL                          [25-30)              NA                0.2455090   0.1801741   0.3108439
9 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.2804878   0.1831657   0.3778100
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                0.2209802   0.1971330   0.2448274
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-25)              NA                0.1868800   0.1732118   0.2005482
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              NA                0.2027439   0.1849801   0.2205077
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.1962884   0.1754888   0.2170880
9 months    ki1135781-COHORTS          GUATEMALA                      <20                  NA                0.6176471   0.5020156   0.7332785
9 months    ki1135781-COHORTS          GUATEMALA                      [20-25)              NA                0.5221239   0.4299234   0.6143244
9 months    ki1135781-COHORTS          GUATEMALA                      [25-30)              NA                0.6631579   0.5680125   0.7583033
9 months    ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.6666667   0.5971426   0.7361907
9 months    ki1135781-COHORTS          INDIA                          <20                  NA                0.3122924   0.2599325   0.3646522
9 months    ki1135781-COHORTS          INDIA                          [20-25)              NA                0.2754121   0.2524635   0.2983606
9 months    ki1135781-COHORTS          INDIA                          [25-30)              NA                0.2412587   0.2190809   0.2634366
9 months    ki1135781-COHORTS          INDIA                          >=30                 NA                0.3010949   0.2739334   0.3282564
9 months    ki1135781-COHORTS          PHILIPPINES                    <20                  NA                0.2900302   0.2411362   0.3389242
9 months    ki1135781-COHORTS          PHILIPPINES                    [20-25)              NA                0.2646370   0.2350449   0.2942291
9 months    ki1135781-COHORTS          PHILIPPINES                    [25-30)              NA                0.2453581   0.2146387   0.2760775
9 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.3091850   0.2765992   0.3417708
9 months    ki1148112-LCNI-5           MALAWI                         <20                  NA                0.2258065   0.1407507   0.3108622
9 months    ki1148112-LCNI-5           MALAWI                         [20-25)              NA                0.3513514   0.2743680   0.4283347
9 months    ki1148112-LCNI-5           MALAWI                         [25-30)              NA                0.3478261   0.2682880   0.4273642
9 months    ki1148112-LCNI-5           MALAWI                         >=30                 NA                0.3773585   0.3019449   0.4527721
12 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                0.3235294   0.1659411   0.4811177
12 months   ki0047075b-MAL-ED          BANGLADESH                     [20-25)              NA                0.3066667   0.2020850   0.4112484
12 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)              NA                0.2500000   0.1572011   0.3427989
12 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                0.5000000   0.3447177   0.6552823
12 months   ki0047075b-MAL-ED          PERU                           <20                  NA                0.3000000   0.1924295   0.4075705
12 months   ki0047075b-MAL-ED          PERU                           [20-25)              NA                0.3076923   0.1952619   0.4201227
12 months   ki0047075b-MAL-ED          PERU                           [25-30)              NA                0.2982456   0.1792380   0.4172532
12 months   ki0047075b-MAL-ED          PERU                           >=30                 NA                0.2037037   0.0960640   0.3113434
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                0.4375000   0.2653868   0.6096132
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-25)              NA                0.5081081   0.4359698   0.5802464
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              NA                0.5092593   0.4148483   0.6036703
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 NA                0.4651163   0.3158316   0.6144009
12 months   ki1000108-IRC              INDIA                          <20                  NA                0.2000000   0.0673187   0.3326813
12 months   ki1000108-IRC              INDIA                          [20-25)              NA                0.3378995   0.2751779   0.4006212
12 months   ki1000108-IRC              INDIA                          [25-30)              NA                0.2682927   0.1898948   0.3466905
12 months   ki1000108-IRC              INDIA                          >=30                 NA                0.1724138   0.0347635   0.3100641
12 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                0.2777778   0.1581919   0.3973637
12 months   ki1017093-NIH-Birth        BANGLADESH                     [20-25)              NA                0.3944444   0.3229740   0.4659149
12 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)              NA                0.3866667   0.3086543   0.4646791
12 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                0.3714286   0.2789134   0.4639437
12 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                0.3281250   0.2129961   0.4432539
12 months   ki1017093b-PROVIDE         BANGLADESH                     [20-25)              NA                0.2272727   0.1744295   0.2801160
12 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)              NA                0.2473118   0.1852558   0.3093678
12 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                0.3240741   0.2357315   0.4124167
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                0.2677165   0.1906561   0.3447769
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-25)              NA                0.2458333   0.1913198   0.3003469
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              NA                0.2155963   0.1609680   0.2702247
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                0.2561983   0.1783625   0.3340342
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.1875000   0.1093954   0.2656046
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-25)              NA                0.1574074   0.1230533   0.1917616
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                0.1795918   0.1455933   0.2135903
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.1518072   0.1172715   0.1863430
12 months   ki1101329-Keneba           GAMBIA                         <20                  NA                0.2204724   0.1694764   0.2714685
12 months   ki1101329-Keneba           GAMBIA                         [20-25)              NA                0.2123142   0.1753726   0.2492558
12 months   ki1101329-Keneba           GAMBIA                         [25-30)              NA                0.2244898   0.1855375   0.2634421
12 months   ki1101329-Keneba           GAMBIA                         >=30                 NA                0.2964889   0.2642013   0.3287766
12 months   ki1112895-Guatemala BSC    GUATEMALA                      <20                  NA                0.6060606   0.4389293   0.7731919
12 months   ki1112895-Guatemala BSC    GUATEMALA                      [20-25)              NA                0.5250000   0.4152957   0.6347043
12 months   ki1112895-Guatemala BSC    GUATEMALA                      [25-30)              NA                0.4090909   0.2634491   0.5547327
12 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30                 NA                0.4761905   0.3247666   0.6276144
12 months   ki1113344-GMS-Nepal        NEPAL                          <20                  NA                0.3364486   0.2468415   0.4260557
12 months   ki1113344-GMS-Nepal        NEPAL                          [20-25)              NA                0.2938144   0.2296591   0.3579698
12 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)              NA                0.3662791   0.2942134   0.4383447
12 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.4117647   0.3070450   0.5164844
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                0.2713178   0.2441879   0.2984478
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-25)              NA                0.2344268   0.2184845   0.2503692
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              NA                0.2442529   0.2240639   0.2644418
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.2431782   0.2193560   0.2670003
12 months   ki1135781-COHORTS          GUATEMALA                      <20                  NA                0.6585366   0.5558033   0.7612698
12 months   ki1135781-COHORTS          GUATEMALA                      [20-25)              NA                0.6592593   0.5792336   0.7392849
12 months   ki1135781-COHORTS          GUATEMALA                      [25-30)              NA                0.7321429   0.6500517   0.8142340
12 months   ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.7352941   0.6746968   0.7958914
12 months   ki1135781-COHORTS          INDIA                          <20                  NA                0.4347826   0.3736900   0.4958752
12 months   ki1135781-COHORTS          INDIA                          [20-25)              NA                0.3694118   0.3429159   0.3959076
12 months   ki1135781-COHORTS          INDIA                          [25-30)              NA                0.3172253   0.2917561   0.3426944
12 months   ki1135781-COHORTS          INDIA                          >=30                 NA                0.3962451   0.3661062   0.4263839
12 months   ki1135781-COHORTS          PHILIPPINES                    <20                  NA                0.4019608   0.3470158   0.4569058
12 months   ki1135781-COHORTS          PHILIPPINES                    [20-25)              NA                0.3630731   0.3298885   0.3962578
12 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)              NA                0.3548831   0.3200953   0.3896709
12 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.4375839   0.4019541   0.4732137
12 months   ki1148112-LCNI-5           MALAWI                         <20                  NA                0.3571429   0.2545752   0.4597105
12 months   ki1148112-LCNI-5           MALAWI                         [20-25)              NA                0.3840580   0.3028309   0.4652850
12 months   ki1148112-LCNI-5           MALAWI                         [25-30)              NA                0.3769231   0.2935363   0.4603099
12 months   ki1148112-LCNI-5           MALAWI                         >=30                 NA                0.4782609   0.4010252   0.5554966
18 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                0.5937500   0.4231982   0.7643018
18 months   ki0047075b-MAL-ED          BANGLADESH                     [20-25)              NA                0.4477612   0.3284223   0.5671001
18 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)              NA                0.4285714   0.3225031   0.5346398
18 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                0.5263158   0.3672017   0.6854299
18 months   ki0047075b-MAL-ED          PERU                           <20                  NA                0.4677419   0.3432627   0.5922212
18 months   ki0047075b-MAL-ED          PERU                           [20-25)              NA                0.4035088   0.2758591   0.5311584
18 months   ki0047075b-MAL-ED          PERU                           [25-30)              NA                0.4905660   0.3556750   0.6254571
18 months   ki0047075b-MAL-ED          PERU                           >=30                 NA                0.4200000   0.2828859   0.5571141
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  NA                0.3000000   0.1576916   0.4423084
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-25)              NA                0.4558824   0.3372592   0.5745055
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              NA                0.2307692   0.0982631   0.3632754
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                0.3191489   0.2247190   0.4135789
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                0.6764706   0.5190073   0.8339339
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-25)              NA                0.7243243   0.6598455   0.7888032
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              NA                0.6635514   0.5739031   0.7531997
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 NA                0.6046512   0.4583170   0.7509854
18 months   ki1000108-IRC              INDIA                          <20                  NA                0.4054054   0.2470112   0.5637996
18 months   ki1000108-IRC              INDIA                          [20-25)              NA                0.3824885   0.3177464   0.4472306
18 months   ki1000108-IRC              INDIA                          [25-30)              NA                0.3360656   0.2521428   0.4199883
18 months   ki1000108-IRC              INDIA                          >=30                 NA                0.1724138   0.0347631   0.3100645
18 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                0.6200000   0.4853141   0.7546859
18 months   ki1017093-NIH-Birth        BANGLADESH                     [20-25)              NA                0.5882353   0.5141733   0.6622973
18 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)              NA                0.6258993   0.5453691   0.7064295
18 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                0.5196078   0.4225445   0.6166712
18 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                0.4426230   0.3178649   0.5673810
18 months   ki1017093b-PROVIDE         BANGLADESH                     [20-25)              NA                0.3500000   0.2869157   0.4130843
18 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)              NA                0.3779070   0.3053803   0.4504336
18 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                0.3737374   0.2783511   0.4691236
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                0.2869565   0.2042180   0.3696951
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-25)              NA                0.2850679   0.2255015   0.3446343
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              NA                0.3112245   0.2463553   0.3760937
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                0.3333333   0.2417778   0.4248889
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.2222222   0.1112802   0.3331642
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-25)              NA                0.2562278   0.2051595   0.3072960
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                0.2653061   0.2185594   0.3120528
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.2033898   0.1574332   0.2493464
18 months   ki1101329-Keneba           GAMBIA                         <20                  NA                0.2857143   0.2291320   0.3422966
18 months   ki1101329-Keneba           GAMBIA                         [20-25)              NA                0.2933333   0.2512564   0.3354102
18 months   ki1101329-Keneba           GAMBIA                         [25-30)              NA                0.3286385   0.2840221   0.3732549
18 months   ki1101329-Keneba           GAMBIA                         >=30                 NA                0.3523447   0.3190037   0.3856858
18 months   ki1113344-GMS-Nepal        NEPAL                          <20                  NA                0.5688073   0.4757505   0.6618642
18 months   ki1113344-GMS-Nepal        NEPAL                          [20-25)              NA                0.4895833   0.4188102   0.5603565
18 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)              NA                0.5329341   0.4571966   0.6086716
18 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.5731707   0.4660175   0.6803240
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                0.5405405   0.4798301   0.6012510
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-25)              NA                0.4648986   0.4262758   0.5035214
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              NA                0.4518201   0.4066698   0.4969705
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.4778761   0.4246873   0.5310649
18 months   ki1135781-COHORTS          GUATEMALA                      <20                  NA                0.7812500   0.6798528   0.8826472
18 months   ki1135781-COHORTS          GUATEMALA                      [20-25)              NA                0.8363636   0.7671506   0.9055767
18 months   ki1135781-COHORTS          GUATEMALA                      [25-30)              NA                0.8800000   0.8162355   0.9437645
18 months   ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.8395062   0.7829174   0.8960950
18 months   ki1135781-COHORTS          PHILIPPINES                    <20                  NA                0.6013289   0.5460047   0.6566531
18 months   ki1135781-COHORTS          PHILIPPINES                    [20-25)              NA                0.5788114   0.5440200   0.6136027
18 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)              NA                0.5730337   0.5366939   0.6093735
18 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.6056738   0.5695920   0.6417555
18 months   ki1148112-LCNI-5           MALAWI                         <20                  NA                0.4842105   0.3836312   0.5847898
18 months   ki1148112-LCNI-5           MALAWI                         [20-25)              NA                0.4723926   0.3956865   0.5490988
18 months   ki1148112-LCNI-5           MALAWI                         [25-30)              NA                0.4575163   0.3785089   0.5365238
18 months   ki1148112-LCNI-5           MALAWI                         >=30                 NA                0.4550562   0.3818386   0.5282738
24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                0.5517241   0.3702940   0.7331543
24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-25)              NA                0.4375000   0.3156754   0.5593246
24 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)              NA                0.4146341   0.3077498   0.5215185
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                0.5405405   0.3795829   0.7014982
24 months   ki0047075b-MAL-ED          PERU                           <20                  NA                0.4000000   0.2702058   0.5297942
24 months   ki0047075b-MAL-ED          PERU                           [20-25)              NA                0.3600000   0.2266210   0.4933790
24 months   ki0047075b-MAL-ED          PERU                           [25-30)              NA                0.3333333   0.1996417   0.4670250
24 months   ki0047075b-MAL-ED          PERU                           >=30                 NA                0.3750000   0.2377014   0.5122986
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  NA                0.3589744   0.2081055   0.5098432
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-25)              NA                0.4202899   0.3035773   0.5370025
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              NA                0.2432432   0.1047081   0.3817784
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                0.3440860   0.2473300   0.4408420
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                0.6176471   0.4540801   0.7812140
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-25)              NA                0.7433155   0.6806255   0.8060055
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              NA                0.6880734   0.6009845   0.7751623
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 NA                0.7380952   0.6049469   0.8712436
24 months   ki1000108-IRC              INDIA                          <20                  NA                0.4594595   0.2986852   0.6202337
24 months   ki1000108-IRC              INDIA                          [20-25)              NA                0.4227273   0.3573707   0.4880838
24 months   ki1000108-IRC              INDIA                          [25-30)              NA                0.3983740   0.3117505   0.4849975
24 months   ki1000108-IRC              INDIA                          >=30                 NA                0.3793103   0.2024969   0.5561238
24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                0.5227273   0.3749690   0.6704855
24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-25)              NA                0.5465839   0.4695962   0.6235715
24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)              NA                0.5781250   0.4924695   0.6637804
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                0.5531915   0.4525698   0.6538132
24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                0.3125000   0.1988430   0.4261570
24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-25)              NA                0.3231441   0.2625189   0.3837693
24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)              NA                0.3240223   0.2554022   0.3926425
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                0.3619048   0.2699085   0.4539010
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                0.2079208   0.1286992   0.2871424
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-25)              NA                0.2784091   0.2121261   0.3446920
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              NA                0.2594937   0.1910757   0.3279116
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                0.2658228   0.1683117   0.3633339
24 months   ki1101329-Keneba           GAMBIA                         <20                  NA                0.3271889   0.2647449   0.3896330
24 months   ki1101329-Keneba           GAMBIA                         [20-25)              NA                0.3251232   0.2795459   0.3707004
24 months   ki1101329-Keneba           GAMBIA                         [25-30)              NA                0.3177083   0.2711274   0.3642893
24 months   ki1101329-Keneba           GAMBIA                         >=30                 NA                0.3521924   0.3169733   0.3874115
24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  NA                0.4591837   0.3604219   0.5579454
24 months   ki1113344-GMS-Nepal        NEPAL                          [20-25)              NA                0.4425287   0.3686548   0.5164026
24 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)              NA                0.4496644   0.3697089   0.5296200
24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.4358974   0.3257416   0.5460533
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                0.6760563   0.5670826   0.7850301
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-25)              NA                0.6411765   0.5689944   0.7133586
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              NA                0.6589147   0.5770162   0.7408132
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.6511628   0.5503230   0.7520025
24 months   ki1135781-COHORTS          GUATEMALA                      <20                  NA                0.8352941   0.7563659   0.9142224
24 months   ki1135781-COHORTS          GUATEMALA                      [20-25)              NA                0.8467742   0.7833132   0.9102352
24 months   ki1135781-COHORTS          GUATEMALA                      [25-30)              NA                0.8559322   0.7925117   0.9193527
24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.8167539   0.7618360   0.8716718
24 months   ki1135781-COHORTS          INDIA                          <20                  NA                0.6437247   0.5839935   0.7034559
24 months   ki1135781-COHORTS          INDIA                          [20-25)              NA                0.4806139   0.4527790   0.5084488
24 months   ki1135781-COHORTS          INDIA                          [25-30)              NA                0.4421824   0.4144010   0.4699638
24 months   ki1135781-COHORTS          INDIA                          >=30                 NA                0.5397149   0.5085370   0.5708928
24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  NA                0.6541096   0.5995413   0.7086778
24 months   ki1135781-COHORTS          PHILIPPINES                    [20-25)              NA                0.6187990   0.5843977   0.6532002
24 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)              NA                0.5907781   0.5541892   0.6273670
24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.6248196   0.5887644   0.6608748
24 months   ki1148112-LCNI-5           MALAWI                         <20                  NA                0.3875000   0.2806315   0.4943685
24 months   ki1148112-LCNI-5           MALAWI                         [20-25)              NA                0.4296875   0.3438388   0.5155362
24 months   ki1148112-LCNI-5           MALAWI                         [25-30)              NA                0.5000000   0.4111831   0.5888169
24 months   ki1148112-LCNI-5           MALAWI                         >=30                 NA                0.4620690   0.3808349   0.5433031


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1828794   0.1791858   0.1865730
Birth       ki1101329-Keneba           GAMBIA                         NA                   NA                0.0532122   0.0523493   0.0540751
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1034083   0.1033117   0.1035048
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                0.1183457   0.1178109   0.1188805
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0613115   0.0607797   0.0618433
3 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1720000   0.1616140   0.1823860
3 months    ki0047075b-MAL-ED          PERU                           NA                   NA                0.2508591   0.2480235   0.2536947
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1921708   0.1867051   0.1976366
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.2486188   0.2443552   0.2528824
3 months    ki1000108-IRC              INDIA                          NA                   NA                0.2235872   0.2199799   0.2271945
3 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2271127   0.2246227   0.2296026
3 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1209302   0.1191296   0.1227309
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2142857   0.2132507   0.2153207
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0593668   0.0589780   0.0597555
3 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.1435143   0.1429264   0.1441021
3 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1471103   0.1434706   0.1507501
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1783495   0.1780958   0.1786032
3 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.3206751   0.3172068   0.3241434
3 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.1545509   0.1541144   0.1549874
3 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1234783   0.1227455   0.1242110
6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1867220   0.1792406   0.1942033
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                0.2197802   0.2159442   0.2236162
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1968504   0.1922915   0.2014093
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.3008130   0.2992405   0.3023855
6 months    ki1000108-IRC              INDIA                          NA                   NA                0.2457002   0.2412847   0.2501158
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2672897   0.2637154   0.2708641
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1612350   0.1589240   0.1635460
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2097902   0.2067906   0.2127898
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0964215   0.0958447   0.0969982
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.1408654   0.1396832   0.1420475
6 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.3115942   0.3029516   0.3202368
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.2113677   0.2092480   0.2134874
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1660628   0.1658405   0.1662851
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.4547414   0.4480964   0.4613863
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.1959625   0.1954867   0.1964382
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2112260   0.2104773   0.2119747
6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                0.3736921   0.3709255   0.3764586
9 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.2478632   0.2376103   0.2581162
9 months    ki0047075b-MAL-ED          PERU                           NA                   NA                0.2460938   0.2418347   0.2503528
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.2120000   0.2043492   0.2196508
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3781513   0.3707132   0.3855894
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.3688525   0.3639073   0.3737976
9 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.3584158   0.3556250   0.3612067
9 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2132231   0.2111288   0.2153175
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2322946   0.2302617   0.2343276
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1466441   0.1457912   0.1474970
9 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.1808459   0.1795514   0.1821403
9 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.4069264   0.3988968   0.4149561
9 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.2813067   0.2783880   0.2842254
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1978582   0.1975960   0.1981203
9 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.6225166   0.6169655   0.6280676
9 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.2731730   0.2724101   0.2739359
9 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2750737   0.2741224   0.2760251
9 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                0.3364312   0.3320323   0.3408302
12 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.3218884   0.3108309   0.3329459
12 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.2804878   0.2753689   0.2856067
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.4972826   0.4949213   0.4996439
12 months   ki1000108-IRC              INDIA                          NA                   NA                0.2931034   0.2877190   0.2984879
12 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.3742331   0.3711254   0.3773408
12 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2616667   0.2583520   0.2649813
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2422096   0.2407826   0.2436367
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1653873   0.1647034   0.1660712
12 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.2496124   0.2479053   0.2513195
12 months   ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.5025126   0.4936403   0.5113848
12 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.3422939   0.3388336   0.3457542
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2442431   0.2439490   0.2445371
12 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7035647   0.7004240   0.7067054
12 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.3633272   0.3621622   0.3644922
12 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.3868472   0.3854935   0.3882009
12 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.4074074   0.4031893   0.4116255
18 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.4751131   0.4672523   0.4829740
18 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.4459459   0.4413371   0.4505548
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.3402490   0.3303235   0.3501745
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.6883469   0.6841885   0.6925052
18 months   ki1000108-IRC              INDIA                          NA                   NA                0.3555556   0.3500985   0.3610126
18 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.5878525   0.5842211   0.5914839
18 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3731884   0.3708955   0.3754813
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.3012618   0.2998581   0.3026656
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2415211   0.2398302   0.2432119
18 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.3246073   0.3233822   0.3258325
18 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.5309091   0.5280744   0.5337437
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.4753810   0.4740061   0.4767559
18 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.8394495   0.8366670   0.8422321
18 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.5874799   0.5869249   0.5880350
18 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.4651952   0.4643134   0.4660771
24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.4622642   0.4545995   0.4699288
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.3681592   0.3647792   0.3715392
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.3529412   0.3457141   0.3601683
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.7150538   0.7110581   0.7190495
24 months   ki1000108-IRC              INDIA                          NA                   NA                0.4156479   0.4137466   0.4175493
24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.5550351   0.5534040   0.5566663
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3292894   0.3280022   0.3305766
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2568093   0.2546132   0.2590055
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.3348891   0.3341872   0.3355911
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.4468938   0.4462278   0.4475598
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.6535088   0.6524017   0.6546158
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.8359073   0.8345310   0.8372837
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.4944520   0.4926839   0.4962201
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6167689   0.6159982   0.6175396
24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.4505263   0.4470920   0.4539607


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     <20                  <20               1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     [20-25)              <20               0.6666667   0.3173635   1.4004269
Birth       ki0047075b-MAL-ED          BANGLADESH                     [25-30)              <20               0.6521739   0.3135047   1.3566966
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=30                 <20               0.8000000   0.3541237   1.8072783
Birth       ki1101329-Keneba           GAMBIA                         <20                  <20               1.0000000   1.0000000   1.0000000
Birth       ki1101329-Keneba           GAMBIA                         [20-25)              <20               0.6520548   0.3641409   1.1676124
Birth       ki1101329-Keneba           GAMBIA                         [25-30)              <20               0.3666667   0.1801504   0.7462898
Birth       ki1101329-Keneba           GAMBIA                         >=30                 <20               0.5496098   0.3198649   0.9443704
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <20                  <20               1.0000000   1.0000000   1.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [20-25)              <20               0.8958433   0.7799793   1.0289187
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              <20               0.8892707   0.7635410   1.0357038
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 <20               0.8269102   0.6970849   0.9809141
Birth       ki1135781-COHORTS          INDIA                          <20                  <20               1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          INDIA                          [20-25)              <20               0.8306130   0.6373995   1.0823949
Birth       ki1135781-COHORTS          INDIA                          [25-30)              <20               0.6765736   0.5145375   0.8896374
Birth       ki1135781-COHORTS          INDIA                          >=30                 <20               0.6092981   0.4551371   0.8156754
Birth       ki1135781-COHORTS          PHILIPPINES                    <20                  <20               1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    [20-25)              <20               0.4782609   0.3129275   0.7309472
Birth       ki1135781-COHORTS          PHILIPPINES                    [25-30)              <20               0.6385965   0.4249052   0.9597565
Birth       ki1135781-COHORTS          PHILIPPINES                    >=30                 <20               0.6786134   0.4537963   1.0148081
3 months    ki0047075b-MAL-ED          BANGLADESH                     <20                  <20               1.0000000   1.0000000   1.0000000
3 months    ki0047075b-MAL-ED          BANGLADESH                     [20-25)              <20               0.9523810   0.4243928   2.1372403
3 months    ki0047075b-MAL-ED          BANGLADESH                     [25-30)              <20               0.4044944   0.1525041   1.0728612
3 months    ki0047075b-MAL-ED          BANGLADESH                     >=30                 <20               1.6363636   0.7391099   3.6228522
3 months    ki0047075b-MAL-ED          PERU                           <20                  <20               1.0000000   1.0000000   1.0000000
3 months    ki0047075b-MAL-ED          PERU                           [20-25)              <20               0.8178054   0.4884386   1.3692726
3 months    ki0047075b-MAL-ED          PERU                           [25-30)              <20               0.8050272   0.4590390   1.4117944
3 months    ki0047075b-MAL-ED          PERU                           >=30                 <20               0.8050272   0.4590390   1.4117944
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  <20               1.0000000   1.0000000   1.0000000
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-25)              <20               0.8060606   0.4220190   1.5395841
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              <20               0.8235294   0.3966870   1.7096621
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 <20               0.5064935   0.2469667   1.0387459
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20                  <20               1.0000000   1.0000000   1.0000000
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-25)              <20               0.8751381   0.4938095   1.5509357
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              <20               0.8094340   0.4368776   1.4996954
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 <20               0.4714286   0.1907385   1.1651814
3 months    ki1000108-IRC              INDIA                          <20                  <20               1.0000000   1.0000000   1.0000000
3 months    ki1000108-IRC              INDIA                          [20-25)              <20               0.6898782   0.4072440   1.1686655
3 months    ki1000108-IRC              INDIA                          [25-30)              <20               0.5765583   0.3182945   1.0443770
3 months    ki1000108-IRC              INDIA                          >=30                 <20               0.7708333   0.3486631   1.7041782
3 months    ki1017093-NIH-Birth        BANGLADESH                     <20                  <20               1.0000000   1.0000000   1.0000000
3 months    ki1017093-NIH-Birth        BANGLADESH                     [20-25)              <20               1.5202492   0.7910952   2.9214658
3 months    ki1017093-NIH-Birth        BANGLADESH                     [25-30)              <20               1.7245233   0.8942929   3.3255109
3 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                 <20               1.5851254   0.8008392   3.1374870
3 months    ki1017093b-PROVIDE         BANGLADESH                     <20                  <20               1.0000000   1.0000000   1.0000000
3 months    ki1017093b-PROVIDE         BANGLADESH                     [20-25)              <20               0.5692308   0.3080203   1.0519555
3 months    ki1017093b-PROVIDE         BANGLADESH                     [25-30)              <20               0.7373456   0.3987362   1.3635040
3 months    ki1017093b-PROVIDE         BANGLADESH                     >=30                 <20               0.6753585   0.3362927   1.3562864
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20                  <20               1.0000000   1.0000000   1.0000000
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-25)              <20               1.0148594   0.6877884   1.4974660
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              <20               0.8786787   0.5822132   1.3261056
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 <20               0.8938172   0.5578968   1.4320018
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  <20               1.0000000   1.0000000   1.0000000
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-25)              <20               0.7407367   0.4080849   1.3445509
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              <20               0.7840237   0.4363491   1.4087186
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 <20               0.5675077   0.3020272   1.0663443
3 months    ki1101329-Keneba           GAMBIA                         <20                  <20               1.0000000   1.0000000   1.0000000
3 months    ki1101329-Keneba           GAMBIA                         [20-25)              <20               0.8690283   0.6309186   1.1970011
3 months    ki1101329-Keneba           GAMBIA                         [25-30)              <20               0.7333224   0.5169689   1.0402206
3 months    ki1101329-Keneba           GAMBIA                         >=30                 <20               0.9184277   0.6822408   1.2363809
3 months    ki1113344-GMS-Nepal        NEPAL                          <20                  <20               1.0000000   1.0000000   1.0000000
3 months    ki1113344-GMS-Nepal        NEPAL                          [20-25)              <20               0.5592967   0.3435049   0.9106502
3 months    ki1113344-GMS-Nepal        NEPAL                          [25-30)              <20               0.5040544   0.2973057   0.8545775
3 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 <20               0.5264253   0.2762735   1.0030769
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                  <20               1.0000000   1.0000000   1.0000000
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-25)              <20               0.8502214   0.7510947   0.9624304
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              <20               0.8249111   0.7200958   0.9449832
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 <20               0.8231132   0.7106828   0.9533301
3 months    ki1135781-COHORTS          GUATEMALA                      <20                  <20               1.0000000   1.0000000   1.0000000
3 months    ki1135781-COHORTS          GUATEMALA                      [20-25)              <20               0.7875744   0.5002178   1.2400067
3 months    ki1135781-COHORTS          GUATEMALA                      [25-30)              <20               0.9559524   0.6198731   1.4742453
3 months    ki1135781-COHORTS          GUATEMALA                      >=30                 <20               1.0910326   0.7454579   1.5968068
3 months    ki1135781-COHORTS          INDIA                          <20                  <20               1.0000000   1.0000000   1.0000000
3 months    ki1135781-COHORTS          INDIA                          [20-25)              <20               0.8426775   0.6675795   1.0637015
3 months    ki1135781-COHORTS          INDIA                          [25-30)              <20               0.7286340   0.5738091   0.9252338
3 months    ki1135781-COHORTS          INDIA                          >=30                 <20               0.9082009   0.7141155   1.1550358
3 months    ki1135781-COHORTS          PHILIPPINES                    <20                  <20               1.0000000   1.0000000   1.0000000
3 months    ki1135781-COHORTS          PHILIPPINES                    [20-25)              <20               0.7209515   0.5269594   0.9863589
3 months    ki1135781-COHORTS          PHILIPPINES                    [25-30)              <20               0.7143469   0.5183850   0.9843872
3 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 <20               0.9882020   0.7318375   1.3343715
6 months    ki0047075b-MAL-ED          BANGLADESH                     <20                  <20               1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED          BANGLADESH                     [20-25)              <20               1.4209402   0.6205843   3.2534998
6 months    ki0047075b-MAL-ED          BANGLADESH                     [25-30)              <20               0.6704981   0.2632449   1.7077925
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30                 <20               1.4227642   0.5738766   3.5273401
6 months    ki0047075b-MAL-ED          PERU                           <20                  <20               1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED          PERU                           [20-25)              <20               1.2337662   0.6928471   2.1969915
6 months    ki0047075b-MAL-ED          PERU                           [25-30)              <20               0.8050847   0.3940542   1.6448536
6 months    ki0047075b-MAL-ED          PERU                           >=30                 <20               1.0901639   0.5780762   2.0558835
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  <20               1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-25)              <20               0.9818182   0.4990174   1.9317301
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              <20               0.6146341   0.2454572   1.5390671
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 <20               0.7148936   0.3540323   1.4435771
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20                  <20               1.0000000   1.0000000   1.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-25)              <20               1.0345946   0.5907290   1.8119745
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              <20               0.9166667   0.5025764   1.6719404
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 <20               0.9976744   0.5007412   1.9877619
6 months    ki1000108-IRC              INDIA                          <20                  <20               1.0000000   1.0000000   1.0000000
6 months    ki1000108-IRC              INDIA                          [20-25)              <20               1.4794521   0.7364092   2.9722311
6 months    ki1000108-IRC              INDIA                          [25-30)              <20               1.0034843   0.4709364   2.1382523
6 months    ki1000108-IRC              INDIA                          >=30                 <20               1.0640394   0.4010254   2.8232121
6 months    ki1017093-NIH-Birth        BANGLADESH                     <20                  <20               1.0000000   1.0000000   1.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-25)              <20               1.5641026   0.8450793   2.8948962
6 months    ki1017093-NIH-Birth        BANGLADESH                     [25-30)              <20               1.7697531   0.9554989   3.2778958
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                 <20               1.8769231   1.0005193   3.5210116
6 months    ki1017093b-PROVIDE         BANGLADESH                     <20                  <20               1.0000000   1.0000000   1.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-25)              <20               0.5917768   0.3408015   1.0275769
6 months    ki1017093b-PROVIDE         BANGLADESH                     [25-30)              <20               0.6904762   0.3960765   1.2037002
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30                 <20               0.7553517   0.4129776   1.3815669
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20                  <20               1.0000000   1.0000000   1.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-25)              <20               1.0434090   0.7148568   1.5229657
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              <20               0.6367654   0.4100387   0.9888582
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 <20               0.9005817   0.5688006   1.4258905
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  <20               1.0000000   1.0000000   1.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-25)              <20               0.9358974   0.5359947   1.6341654
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              <20               1.1871140   0.6919718   2.0365566
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 <20               0.8563608   0.4835745   1.5165270
6 months    ki1101329-Keneba           GAMBIA                         <20                  <20               1.0000000   1.0000000   1.0000000
6 months    ki1101329-Keneba           GAMBIA                         [20-25)              <20               0.9699147   0.6530906   1.4404350
6 months    ki1101329-Keneba           GAMBIA                         [25-30)              <20               1.0611104   0.7133778   1.5783435
6 months    ki1101329-Keneba           GAMBIA                         >=30                 <20               1.4836682   1.0460065   2.1044530
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <20                  <20               1.0000000   1.0000000   1.0000000
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-25)              <20               0.6693122   0.4374290   1.0241177
6 months    ki1112895-Guatemala BSC    GUATEMALA                      [25-30)              <20               0.4867725   0.2779574   0.8524596
6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30                 <20               0.6682809   0.4058924   1.1002899
6 months    ki1113344-GMS-Nepal        NEPAL                          <20                  <20               1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          [20-25)              <20               0.7365398   0.4797739   1.1307221
6 months    ki1113344-GMS-Nepal        NEPAL                          [25-30)              <20               0.7669173   0.4945486   1.1892910
6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 <20               0.8621849   0.5182595   1.4343446
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                  <20               1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-25)              <20               0.8366936   0.7282099   0.9613383
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              <20               0.8771448   0.7553248   1.0186122
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 <20               0.8994639   0.7668504   1.0550107
6 months    ki1135781-COHORTS          GUATEMALA                      <20                  <20               1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      [20-25)              <20               0.7718141   0.5311465   1.1215306
6 months    ki1135781-COHORTS          GUATEMALA                      [25-30)              <20               1.0682618   0.7567812   1.5079434
6 months    ki1135781-COHORTS          GUATEMALA                      >=30                 <20               1.1932898   0.8792067   1.6195744
6 months    ki1135781-COHORTS          INDIA                          <20                  <20               1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          INDIA                          [20-25)              <20               0.8740865   0.7066959   1.0811259
6 months    ki1135781-COHORTS          INDIA                          [25-30)              <20               0.7849141   0.6318580   0.9750454
6 months    ki1135781-COHORTS          INDIA                          >=30                 <20               0.9631438   0.7743996   1.1978904
6 months    ki1135781-COHORTS          PHILIPPINES                    <20                  <20               1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    [20-25)              <20               0.7996557   0.6342437   1.0082075
6 months    ki1135781-COHORTS          PHILIPPINES                    [25-30)              <20               0.7774953   0.6130020   0.9861289
6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 <20               0.9207160   0.7329570   1.1565726
6 months    ki1148112-LCNI-5           MALAWI                         <20                  <20               1.0000000   1.0000000   1.0000000
6 months    ki1148112-LCNI-5           MALAWI                         [20-25)              <20               1.1424085   0.8111454   1.6089560
6 months    ki1148112-LCNI-5           MALAWI                         [25-30)              <20               1.2893851   0.9189568   1.8091316
6 months    ki1148112-LCNI-5           MALAWI                         >=30                 <20               1.3264463   0.9539131   1.8444655
9 months    ki0047075b-MAL-ED          BANGLADESH                     <20                  <20               1.0000000   1.0000000   1.0000000
9 months    ki0047075b-MAL-ED          BANGLADESH                     [20-25)              <20               1.3600000   0.5917749   3.1255125
9 months    ki0047075b-MAL-ED          BANGLADESH                     [25-30)              <20               1.1468254   0.4936478   2.6642650
9 months    ki0047075b-MAL-ED          BANGLADESH                     >=30                 <20               2.3495935   1.0412116   5.3020824
9 months    ki0047075b-MAL-ED          PERU                           <20                  <20               1.0000000   1.0000000   1.0000000
9 months    ki0047075b-MAL-ED          PERU                           [20-25)              <20               1.0588235   0.6147127   1.8237905
9 months    ki0047075b-MAL-ED          PERU                           [25-30)              <20               0.9307479   0.5119924   1.6920010
9 months    ki0047075b-MAL-ED          PERU                           >=30                 <20               0.7065120   0.3654274   1.3659601
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  <20               1.0000000   1.0000000   1.0000000
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-25)              <20               0.7671518   0.4193590   1.4033844
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              <20               0.3846154   0.1505362   0.9826808
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 <20               0.5703764   0.3058309   1.0637553
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  <20               1.0000000   1.0000000   1.0000000
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-25)              <20               0.6724138   0.3655248   1.2369620
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              <20               0.8125000   0.4567116   1.4454554
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 <20               0.6130374   0.3450388   1.0891960
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20                  <20               1.0000000   1.0000000   1.0000000
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-25)              <20               1.5398551   0.8557397   2.7708819
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              <20               1.2357217   0.6624222   2.3051885
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 <20               1.4742547   0.7473757   2.9080783
9 months    ki1017093-NIH-Birth        BANGLADESH                     <20                  <20               1.0000000   1.0000000   1.0000000
9 months    ki1017093-NIH-Birth        BANGLADESH                     [20-25)              <20               1.2235294   0.7651804   1.9564331
9 months    ki1017093-NIH-Birth        BANGLADESH                     [25-30)              <20               1.3777778   0.8619464   2.2023081
9 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                 <20               1.1975758   0.7271780   1.9722650
9 months    ki1017093b-PROVIDE         BANGLADESH                     <20                  <20               1.0000000   1.0000000   1.0000000
9 months    ki1017093b-PROVIDE         BANGLADESH                     [20-25)              <20               0.6921488   0.4302922   1.1133594
9 months    ki1017093b-PROVIDE         BANGLADESH                     [25-30)              <20               0.8204898   0.5081824   1.3247284
9 months    ki1017093b-PROVIDE         BANGLADESH                     >=30                 <20               0.8459596   0.5006011   1.4295765
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20                  <20               1.0000000   1.0000000   1.0000000
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-25)              <20               0.8319260   0.5803831   1.1924897
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              <20               0.7085714   0.4807565   1.0443404
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 <20               0.8266667   0.5381798   1.2697945
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  <20               1.0000000   1.0000000   1.0000000
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-25)              <20               1.4424501   0.8315794   2.5020610
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              <20               1.5409877   0.8941376   2.6557916
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 <20               1.1964450   0.6816216   2.1001105
9 months    ki1101329-Keneba           GAMBIA                         <20                  <20               1.0000000   1.0000000   1.0000000
9 months    ki1101329-Keneba           GAMBIA                         [20-25)              <20               1.0053892   0.7038533   1.4361053
9 months    ki1101329-Keneba           GAMBIA                         [25-30)              <20               1.2625532   0.8946255   1.7817964
9 months    ki1101329-Keneba           GAMBIA                         >=30                 <20               1.4737037   1.0748038   2.0206503
9 months    ki1112895-Guatemala BSC    GUATEMALA                      <20                  <20               1.0000000   1.0000000   1.0000000
9 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-25)              <20               0.8119658   0.5420866   1.2162051
9 months    ki1112895-Guatemala BSC    GUATEMALA                      [25-30)              <20               0.6140351   0.3721468   1.0131462
9 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30                 <20               0.8101852   0.5086795   1.2904001
9 months    ki1113344-GMS-Nepal        NEPAL                          <20                  <20               1.0000000   1.0000000   1.0000000
9 months    ki1113344-GMS-Nepal        NEPAL                          [20-25)              <20               0.7990680   0.5660539   1.1280014
9 months    ki1113344-GMS-Nepal        NEPAL                          [25-30)              <20               0.7106839   0.4907553   1.0291720
9 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 <20               0.8119384   0.5270836   1.2507388
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                  <20               1.0000000   1.0000000   1.0000000
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-25)              <20               0.8456865   0.7423225   0.9634435
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              <20               0.9174753   0.7984084   1.0542988
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 <20               0.8882621   0.7635851   1.0332963
9 months    ki1135781-COHORTS          GUATEMALA                      <20                  <20               1.0000000   1.0000000   1.0000000
9 months    ki1135781-COHORTS          GUATEMALA                      [20-25)              <20               0.8453434   0.6535295   1.0934556
9 months    ki1135781-COHORTS          GUATEMALA                      [25-30)              <20               1.0736842   0.8480879   1.3592905
9 months    ki1135781-COHORTS          GUATEMALA                      >=30                 <20               1.0793651   0.8711628   1.3373263
9 months    ki1135781-COHORTS          INDIA                          <20                  <20               1.0000000   1.0000000   1.0000000
9 months    ki1135781-COHORTS          INDIA                          [20-25)              <20               0.8819047   0.7313246   1.0634892
9 months    ki1135781-COHORTS          INDIA                          [25-30)              <20               0.7725413   0.6380878   0.9353260
9 months    ki1135781-COHORTS          INDIA                          >=30                 <20               0.9641443   0.7969967   1.1663464
9 months    ki1135781-COHORTS          PHILIPPINES                    <20                  <20               1.0000000   1.0000000   1.0000000
9 months    ki1135781-COHORTS          PHILIPPINES                    [20-25)              <20               0.9124463   0.7453339   1.1170273
9 months    ki1135781-COHORTS          PHILIPPINES                    [25-30)              <20               0.8459742   0.6857404   1.0436492
9 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 <20               1.0660441   0.8738374   1.3005280
9 months    ki1148112-LCNI-5           MALAWI                         <20                  <20               1.0000000   1.0000000   1.0000000
9 months    ki1148112-LCNI-5           MALAWI                         [20-25)              <20               1.5559846   1.0063627   2.4057807
9 months    ki1148112-LCNI-5           MALAWI                         [25-30)              <20               1.5403727   0.9914083   2.3933106
9 months    ki1148112-LCNI-5           MALAWI                         >=30                 <20               1.6711590   1.0910174   2.5597874
12 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  <20               1.0000000   1.0000000   1.0000000
12 months   ki0047075b-MAL-ED          BANGLADESH                     [20-25)              <20               0.9478788   0.5230200   1.7178581
12 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)              <20               0.7727273   0.4188521   1.4255808
12 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 <20               1.5454545   0.8673118   2.7538305
12 months   ki0047075b-MAL-ED          PERU                           <20                  <20               1.0000000   1.0000000   1.0000000
12 months   ki0047075b-MAL-ED          PERU                           [20-25)              <20               1.0256410   0.6146962   1.7113161
12 months   ki0047075b-MAL-ED          PERU                           [25-30)              <20               0.9941520   0.5813931   1.6999486
12 months   ki0047075b-MAL-ED          PERU                           >=30                 <20               0.6790123   0.3585448   1.2859140
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  <20               1.0000000   1.0000000   1.0000000
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-25)              <20               1.1613900   0.7644346   1.7644761
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              <20               1.1640212   0.7535087   1.7981814
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 <20               1.0631229   0.6398566   1.7663806
12 months   ki1000108-IRC              INDIA                          <20                  <20               1.0000000   1.0000000   1.0000000
12 months   ki1000108-IRC              INDIA                          [20-25)              <20               1.6894977   0.8483565   3.3646264
12 months   ki1000108-IRC              INDIA                          [25-30)              <20               1.3414634   0.6497621   2.7695122
12 months   ki1000108-IRC              INDIA                          >=30                 <20               0.8620690   0.3053033   2.4341792
12 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  <20               1.0000000   1.0000000   1.0000000
12 months   ki1017093-NIH-Birth        BANGLADESH                     [20-25)              <20               1.4200000   0.8900936   2.2653798
12 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)              <20               1.3920000   0.8652827   2.2393421
12 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 <20               1.3371429   0.8131525   2.1987893
12 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  <20               1.0000000   1.0000000   1.0000000
12 months   ki1017093b-PROVIDE         BANGLADESH                     [20-25)              <20               0.6926407   0.4546808   1.0551382
12 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)              <20               0.7537122   0.4896306   1.1602259
12 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 <20               0.9876543   0.6333438   1.5401763
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  <20               1.0000000   1.0000000   1.0000000
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-25)              <20               0.9182598   0.6385024   1.3205918
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              <20               0.8053157   0.5488115   1.1817052
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 <20               0.9569762   0.6297125   1.4543199
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  <20               1.0000000   1.0000000   1.0000000
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-25)              <20               0.8395062   0.5245519   1.3435669
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              <20               0.9578231   0.6061370   1.5135607
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 <20               0.8096386   0.5036875   1.3014311
12 months   ki1101329-Keneba           GAMBIA                         <20                  <20               1.0000000   1.0000000   1.0000000
12 months   ki1101329-Keneba           GAMBIA                         [20-25)              <20               0.9629967   0.7209789   1.2862548
12 months   ki1101329-Keneba           GAMBIA                         [25-30)              <20               1.0182216   0.7625448   1.3596253
12 months   ki1101329-Keneba           GAMBIA                         >=30                 <20               1.3447892   1.0414148   1.7365394
12 months   ki1112895-Guatemala BSC    GUATEMALA                      <20                  <20               1.0000000   1.0000000   1.0000000
12 months   ki1112895-Guatemala BSC    GUATEMALA                      [20-25)              <20               0.8662500   0.6128865   1.2243525
12 months   ki1112895-Guatemala BSC    GUATEMALA                      [25-30)              <20               0.6750000   0.4302591   1.0589549
12 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30                 <20               0.7857143   0.5157816   1.1969153
12 months   ki1113344-GMS-Nepal        NEPAL                          <20                  <20               1.0000000   1.0000000   1.0000000
12 months   ki1113344-GMS-Nepal        NEPAL                          [20-25)              <20               0.8732818   0.6188475   1.2323247
12 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)              <20               1.0886628   0.7817856   1.5159996
12 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 <20               1.2238562   0.8468367   1.7687282
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  <20               1.0000000   1.0000000   1.0000000
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-25)              <20               0.8640303   0.7656159   0.9750953
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              <20               0.9002463   0.7907133   1.0249523
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 <20               0.8962853   0.7792066   1.0309554
12 months   ki1135781-COHORTS          GUATEMALA                      <20                  <20               1.0000000   1.0000000   1.0000000
12 months   ki1135781-COHORTS          GUATEMALA                      [20-25)              <20               1.0010974   0.8215450   1.2198917
12 months   ki1135781-COHORTS          GUATEMALA                      [25-30)              <20               1.1117725   0.9174469   1.3472585
12 months   ki1135781-COHORTS          GUATEMALA                      >=30                 <20               1.1165577   0.9359603   1.3320022
12 months   ki1135781-COHORTS          INDIA                          <20                  <20               1.0000000   1.0000000   1.0000000
12 months   ki1135781-COHORTS          INDIA                          [20-25)              <20               0.8496471   0.7256449   0.9948393
12 months   ki1135781-COHORTS          INDIA                          [25-30)              <20               0.7296181   0.6206009   0.8577856
12 months   ki1135781-COHORTS          INDIA                          >=30                 <20               0.9113636   0.7767849   1.0692583
12 months   ki1135781-COHORTS          PHILIPPINES                    <20                  <20               1.0000000   1.0000000   1.0000000
12 months   ki1135781-COHORTS          PHILIPPINES                    [20-25)              <20               0.9032551   0.7662976   1.0646904
12 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)              <20               0.8828799   0.7461907   1.0446081
12 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 <20               1.0886233   0.9284935   1.2763696
12 months   ki1148112-LCNI-5           MALAWI                         <20                  <20               1.0000000   1.0000000   1.0000000
12 months   ki1148112-LCNI-5           MALAWI                         [20-25)              <20               1.0753623   0.7527625   1.5362139
12 months   ki1148112-LCNI-5           MALAWI                         [25-30)              <20               1.0553846   0.7344638   1.5165303
12 months   ki1148112-LCNI-5           MALAWI                         >=30                 <20               1.3391304   0.9632325   1.8617211
18 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  <20               1.0000000   1.0000000   1.0000000
18 months   ki0047075b-MAL-ED          BANGLADESH                     [20-25)              <20               0.7541241   0.5096424   1.1158868
18 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)              <20               0.7218045   0.4940289   1.0545977
18 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 <20               0.8864266   0.5841623   1.3450922
18 months   ki0047075b-MAL-ED          PERU                           <20                  <20               1.0000000   1.0000000   1.0000000
18 months   ki0047075b-MAL-ED          PERU                           [20-25)              <20               0.8626739   0.5705696   1.3043216
18 months   ki0047075b-MAL-ED          PERU                           [25-30)              <20               1.0487964   0.7153222   1.5377318
18 months   ki0047075b-MAL-ED          PERU                           >=30                 <20               0.8979310   0.5892806   1.3682447
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  <20               1.0000000   1.0000000   1.0000000
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-25)              <20               1.5196078   0.8846272   2.6103743
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              <20               0.7692308   0.3652558   1.6200042
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 <20               1.0638298   0.6082320   1.8606943
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  <20               1.0000000   1.0000000   1.0000000
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-25)              <20               1.0707403   0.8345499   1.3737762
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              <20               0.9809021   0.7494456   1.2838408
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 <20               0.8938322   0.6388885   1.2505091
18 months   ki1000108-IRC              INDIA                          <20                  <20               1.0000000   1.0000000   1.0000000
18 months   ki1000108-IRC              INDIA                          [20-25)              <20               0.9434716   0.6163228   1.4442735
18 months   ki1000108-IRC              INDIA                          [25-30)              <20               0.8289617   0.5213807   1.3179958
18 months   ki1000108-IRC              INDIA                          >=30                 <20               0.4252874   0.1748478   1.0344385
18 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  <20               1.0000000   1.0000000   1.0000000
18 months   ki1017093-NIH-Birth        BANGLADESH                     [20-25)              <20               0.9487666   0.7380993   1.2195622
18 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)              <20               1.0095150   0.7842648   1.2994597
18 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 <20               0.8380772   0.6292973   1.1161232
18 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  <20               1.0000000   1.0000000   1.0000000
18 months   ki1017093b-PROVIDE         BANGLADESH                     [20-25)              <20               0.7907407   0.5658944   1.1049251
18 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)              <20               0.8537898   0.6070980   1.2007239
18 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 <20               0.8443696   0.5772920   1.2350076
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  <20               1.0000000   1.0000000   1.0000000
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-25)              <20               0.9934183   0.6958025   1.4183335
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              <20               1.0845702   0.7598794   1.5479990
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 <20               1.1616162   0.7800443   1.7298404
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  <20               1.0000000   1.0000000   1.0000000
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-25)              <20               1.1530249   0.6735694   1.9737632
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              <20               1.1938776   0.7031298   2.0271415
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 <20               0.9152542   0.5291175   1.5831839
18 months   ki1101329-Keneba           GAMBIA                         <20                  <20               1.0000000   1.0000000   1.0000000
18 months   ki1101329-Keneba           GAMBIA                         [20-25)              <20               1.0266667   0.8039539   1.3110758
18 months   ki1101329-Keneba           GAMBIA                         [25-30)              <20               1.1502347   0.9047120   1.4623879
18 months   ki1101329-Keneba           GAMBIA                         >=30                 <20               1.2332066   0.9901823   1.5358773
18 months   ki1113344-GMS-Nepal        NEPAL                          <20                  <20               1.0000000   1.0000000   1.0000000
18 months   ki1113344-GMS-Nepal        NEPAL                          [20-25)              <20               0.8607191   0.6919074   1.0707175
18 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)              <20               0.9369326   0.7543871   1.1636502
18 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 <20               1.0076711   0.7860127   1.2918381
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  <20               1.0000000   1.0000000   1.0000000
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-25)              <20               0.8600624   0.7479258   0.9890117
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              <20               0.8358672   0.7191969   0.9714642
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 <20               0.8840708   0.7547712   1.0355207
18 months   ki1135781-COHORTS          GUATEMALA                      <20                  <20               1.0000000   1.0000000   1.0000000
18 months   ki1135781-COHORTS          GUATEMALA                      [20-25)              <20               1.0705455   0.9178161   1.2486897
18 months   ki1135781-COHORTS          GUATEMALA                      [25-30)              <20               1.1264000   0.9708158   1.3069184
18 months   ki1135781-COHORTS          GUATEMALA                      >=30                 <20               1.0745679   0.9283650   1.2437955
18 months   ki1135781-COHORTS          PHILIPPINES                    <20                  <20               1.0000000   1.0000000   1.0000000
18 months   ki1135781-COHORTS          PHILIPPINES                    [20-25)              <20               0.9625537   0.8623763   1.0743682
18 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)              <20               0.9529456   0.8521954   1.0656068
18 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 <20               1.0072254   0.9026622   1.1239011
18 months   ki1148112-LCNI-5           MALAWI                         <20                  <20               1.0000000   1.0000000   1.0000000
18 months   ki1148112-LCNI-5           MALAWI                         [20-25)              <20               0.9755935   0.7494893   1.2699083
18 months   ki1148112-LCNI-5           MALAWI                         [25-30)              <20               0.9448707   0.7212043   1.2379025
18 months   ki1148112-LCNI-5           MALAWI                         >=30                 <20               0.9397899   0.7226401   1.2221922
24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  <20               1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-25)              <20               0.7929688   0.5153692   1.2200951
24 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)              <20               0.7515244   0.4948560   1.1413197
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 <20               0.9797297   0.6286970   1.5267613
24 months   ki0047075b-MAL-ED          PERU                           <20                  <20               1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          PERU                           [20-25)              <20               0.9000000   0.5499855   1.4727660
24 months   ki0047075b-MAL-ED          PERU                           [25-30)              <20               0.8333333   0.4974696   1.3959534
24 months   ki0047075b-MAL-ED          PERU                           >=30                 <20               0.9375000   0.5747821   1.5291120
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  <20               1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-25)              <20               1.1708075   0.7074839   1.9375565
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              <20               0.6776062   0.3338700   1.3752364
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 <20               0.9585253   0.5780863   1.5893315
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  <20               1.0000000   1.0000000   1.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-25)              <20               1.2034632   0.9114444   1.5890422
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              <20               1.1140236   0.8306587   1.4940535
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 <20               1.1950113   0.8673862   1.6463856
24 months   ki1000108-IRC              INDIA                          <20                  <20               1.0000000   1.0000000   1.0000000
24 months   ki1000108-IRC              INDIA                          [20-25)              <20               0.9200535   0.6275841   1.3488206
24 months   ki1000108-IRC              INDIA                          [25-30)              <20               0.8670493   0.5742805   1.3090717
24 months   ki1000108-IRC              INDIA                          >=30                 <20               0.8255578   0.4609047   1.4787128
24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  <20               1.0000000   1.0000000   1.0000000
24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-25)              <20               1.0456387   0.7624720   1.4339677
24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)              <20               1.1059783   0.8037929   1.5217700
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 <20               1.0582794   0.7561693   1.4810906
24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  <20               1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-25)              <20               1.0340611   0.6867769   1.5569574
24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)              <20               1.0368715   0.6806831   1.5794464
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 <20               1.1580952   0.7430780   1.8049042
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  <20               1.0000000   1.0000000   1.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-25)              <20               1.3390152   0.8544057   2.0984898
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              <20               1.2480410   0.7852347   1.9836188
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 <20               1.2784810   0.7533471   2.1696687
24 months   ki1101329-Keneba           GAMBIA                         <20                  <20               1.0000000   1.0000000   1.0000000
24 months   ki1101329-Keneba           GAMBIA                         [20-25)              <20               0.9936863   0.7841646   1.2591901
24 months   ki1101329-Keneba           GAMBIA                         [25-30)              <20               0.9710241   0.7633265   1.2352352
24 months   ki1101329-Keneba           GAMBIA                         >=30                 <20               1.0764189   0.8677759   1.3352268
24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  <20               1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          [20-25)              <20               0.9637292   0.7340277   1.2653120
24 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)              <20               0.9792692   0.7408086   1.2944884
24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 <20               0.9492878   0.6812061   1.3228702
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  <20               1.0000000   1.0000000   1.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-25)              <20               0.9484069   0.7791256   1.1544681
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              <20               0.9746447   0.7951468   1.1946628
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 <20               0.9631783   0.7702473   1.2044345
24 months   ki1135781-COHORTS          GUATEMALA                      <20                  <20               1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      [20-25)              <20               1.0137438   0.8985672   1.1436834
24 months   ki1135781-COHORTS          GUATEMALA                      [25-30)              <20               1.0247076   0.9087630   1.1554449
24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 <20               0.9778040   0.8707336   1.0980404
24 months   ki1135781-COHORTS          INDIA                          <20                  <20               1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          INDIA                          [20-25)              <20               0.7466140   0.6692566   0.8329130
24 months   ki1135781-COHORTS          INDIA                          [25-30)              <20               0.6869123   0.6140934   0.7683660
24 months   ki1135781-COHORTS          INDIA                          >=30                 <20               0.8384250   0.7516137   0.9352629
24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  <20               1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    [20-25)              <20               0.9460173   0.8557774   1.0457727
24 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)              <20               0.9031791   0.8140491   1.0020679
24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 <20               0.9552216   0.8630795   1.0572008
24 months   ki1148112-LCNI-5           MALAWI                         <20                  <20               1.0000000   1.0000000   1.0000000
24 months   ki1148112-LCNI-5           MALAWI                         [20-25)              <20               1.1088710   0.7888240   1.5587695
24 months   ki1148112-LCNI-5           MALAWI                         [25-30)              <20               1.2903226   0.9294586   1.7912927
24 months   ki1148112-LCNI-5           MALAWI                         >=30                 <20               1.1924360   0.8597958   1.6537691


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                -0.0671206   -0.2088930    0.0746517
Birth       ki1101329-Keneba           GAMBIA                         <20                  NA                -0.0350231   -0.0710799    0.0010337
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                -0.0115917   -0.0249234    0.0017399
Birth       ki1135781-COHORTS          INDIA                          <20                  NA                -0.0419804   -0.0794753   -0.0044855
Birth       ki1135781-COHORTS          PHILIPPINES                    <20                  NA                -0.0339266   -0.0635283   -0.0043250
3 months    ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                -0.0224444   -0.1524027    0.1075139
3 months    ki0047075b-MAL-ED          PERU                           <20                  NA                -0.0402801   -0.1406692    0.0601089
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  NA                -0.0697339   -0.2030526    0.0635847
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                -0.0544115   -0.2114846    0.1026616
3 months    ki1000108-IRC              INDIA                          <20                  NA                -0.1007371   -0.2518022    0.0503280
3 months    ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                 0.0795717   -0.0095387    0.1686821
3 months    ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                -0.0547454   -0.1415350    0.0320441
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                -0.0112782   -0.0823659    0.0598095
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                -0.0223943   -0.0649947    0.0202062
3 months    ki1101329-Keneba           GAMBIA                         <20                  NA                -0.0200078   -0.0606704    0.0206549
3 months    ki1113344-GMS-Nepal        NEPAL                          <20                  NA                -0.0876723   -0.1652940   -0.0100506
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                -0.0286706   -0.0499273   -0.0074138
3 months    ki1135781-COHORTS          GUATEMALA                      <20                  NA                -0.0080920   -0.1160241    0.0998400
3 months    ki1135781-COHORTS          INDIA                          <20                  NA                -0.0309128   -0.0690560    0.0072305
3 months    ki1135781-COHORTS          PHILIPPINES                    <20                  NA                -0.0255189   -0.0628911    0.0118533
6 months    ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                 0.0152934   -0.1100491    0.1406360
6 months    ki0047075b-MAL-ED          PERU                           <20                  NA                 0.0092539   -0.0826510    0.1011588
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  NA                -0.0412448   -0.1703895    0.0878998
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                -0.0022173   -0.1592363    0.1548017
6 months    ki1000108-IRC              INDIA                          <20                  NA                 0.0512558   -0.0782619    0.1807735
6 months    ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                 0.1033553    0.0102948    0.1964158
6 months    ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                -0.0695342   -0.1720739    0.0330054
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                -0.0268510   -0.0997454    0.0460433
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                 0.0005311   -0.0472449    0.0483070
6 months    ki1101329-Keneba           GAMBIA                         <20                  NA                 0.0228098   -0.0144841    0.0601038
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <20                  NA                -0.1449275   -0.2893909   -0.0004642
6 months    ki1113344-GMS-Nepal        NEPAL                          <20                  NA                -0.0478916   -0.1306410    0.0348578
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                -0.0218833   -0.0434482   -0.0003183
6 months    ki1135781-COHORTS          GUATEMALA                      <20                  NA                 0.0153474   -0.1047039    0.1353987
6 months    ki1135781-COHORTS          INDIA                          <20                  NA                -0.0277572   -0.0701697    0.0146553
6 months    ki1135781-COHORTS          PHILIPPINES                    <20                  NA                -0.0365081   -0.0830292    0.0100129
6 months    ki1148112-LCNI-5           MALAWI                         <20                  NA                 0.0652809   -0.0223358    0.1528975
9 months    ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                 0.0713927   -0.0574306    0.2002159
9 months    ki0047075b-MAL-ED          PERU                           <20                  NA                -0.0177951   -0.1198873    0.0842970
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  NA                -0.1050732   -0.2480009    0.0378545
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  NA                -0.1603103   -0.4319760    0.1113555
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                 0.1041466   -0.0444319    0.2527250
9 months    ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                 0.0699543   -0.0533367    0.1932453
9 months    ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                -0.0554336   -0.1616799    0.0508127
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                -0.0499634   -0.1292675    0.0293406
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                 0.0400867   -0.0146865    0.0948600
9 months    ki1101329-Keneba           GAMBIA                         <20                  NA                 0.0359184   -0.0056427    0.0774794
9 months    ki1112895-Guatemala BSC    GUATEMALA                      <20                  NA                -0.1073593   -0.2734926    0.0587740
9 months    ki1113344-GMS-Nepal        NEPAL                          <20                  NA                -0.0641478   -0.1531387    0.0248430
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                -0.0231221   -0.0469707    0.0007266
9 months    ki1135781-COHORTS          GUATEMALA                      <20                  NA                 0.0048695   -0.1108951    0.1206341
9 months    ki1135781-COHORTS          INDIA                          <20                  NA                -0.0391193   -0.0914847    0.0132460
9 months    ki1135781-COHORTS          PHILIPPINES                    <20                  NA                -0.0149565   -0.0638597    0.0339468
9 months    ki1148112-LCNI-5           MALAWI                         <20                  NA                 0.1106248    0.0254554    0.1957942
12 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                -0.0016410   -0.1596167    0.1563347
12 months   ki0047075b-MAL-ED          PERU                           <20                  NA                -0.0195122   -0.1272044    0.0881800
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                 0.0597826   -0.1123468    0.2319120
12 months   ki1000108-IRC              INDIA                          <20                  NA                 0.0931034   -0.0396870    0.2258939
12 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                 0.0964554   -0.0231709    0.2160816
12 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                -0.0664583   -0.1816349    0.0487182
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                -0.0255069   -0.1025805    0.0515667
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                -0.0221127   -0.1002203    0.0559949
12 months   ki1101329-Keneba           GAMBIA                         <20                  NA                 0.0291400   -0.0218846    0.0801646
12 months   ki1112895-Guatemala BSC    GUATEMALA                      <20                  NA                -0.1035480   -0.2709147    0.0638186
12 months   ki1113344-GMS-Nepal        NEPAL                          <20                  NA                 0.0058453   -0.0838286    0.0955192
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                -0.0270748   -0.0542063    0.0000568
12 months   ki1135781-COHORTS          GUATEMALA                      <20                  NA                 0.0450281   -0.0577531    0.1478094
12 months   ki1135781-COHORTS          INDIA                          <20                  NA                -0.0714554   -0.1325591   -0.0103517
12 months   ki1135781-COHORTS          PHILIPPINES                    <20                  NA                -0.0151136   -0.0700752    0.0398481
12 months   ki1148112-LCNI-5           MALAWI                         <20                  NA                 0.0502646   -0.0523898    0.1529189
18 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                -0.1186369   -0.2893698    0.0520960
18 months   ki0047075b-MAL-ED          PERU                           <20                  NA                -0.0217960   -0.1463605    0.1027685
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  NA                 0.0402490   -0.1024052    0.1829031
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                 0.0118763   -0.1456419    0.1693945
18 months   ki1000108-IRC              INDIA                          <20                  NA                -0.0498498   -0.2083380    0.1086383
18 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                -0.0321475   -0.1668824    0.1025874
18 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                -0.0694345   -0.1942136    0.0553445
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                 0.0143053   -0.0684452    0.0970558
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                 0.0192988   -0.0916560    0.1302537
18 months   ki1101329-Keneba           GAMBIA                         <20                  NA                 0.0388930   -0.0177025    0.0954886
18 months   ki1113344-GMS-Nepal        NEPAL                          <20                  NA                -0.0378982   -0.1309982    0.0552018
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                -0.0651595   -0.1258855   -0.0044335
18 months   ki1135781-COHORTS          GUATEMALA                      <20                  NA                 0.0581995   -0.0432358    0.1596349
18 months   ki1135781-COHORTS          PHILIPPINES                    <20                  NA                -0.0138490   -0.0691760    0.0414781
18 months   ki1148112-LCNI-5           MALAWI                         <20                  NA                -0.0190153   -0.1195984    0.0815679
24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                -0.0894600   -0.2710520    0.0921320
24 months   ki0047075b-MAL-ED          PERU                           <20                  NA                -0.0318408   -0.1616790    0.0979974
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  NA                -0.0060332   -0.1570750    0.1450086
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                 0.0974067   -0.0662090    0.2610225
24 months   ki1000108-IRC              INDIA                          <20                  NA                -0.0438115   -0.2045970    0.1169740
24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                 0.0323079   -0.1154594    0.1800751
24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                 0.0167894   -0.0968748    0.1304537
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                 0.0488885   -0.0303635    0.1281406
24 months   ki1101329-Keneba           GAMBIA                         <20                  NA                 0.0077002   -0.0547478    0.0701482
24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  NA                -0.0122899   -0.1110539    0.0864741
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                -0.0225476   -0.1315269    0.0864318
24 months   ki1135781-COHORTS          GUATEMALA                      <20                  NA                 0.0006132   -0.0783270    0.0795535
24 months   ki1135781-COHORTS          INDIA                          <20                  NA                -0.1492727   -0.2090301   -0.0895154
24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  NA                -0.0373407   -0.0919144    0.0172330
24 months   ki1148112-LCNI-5           MALAWI                         <20                  NA                 0.0630263   -0.0438973    0.1699500


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                -0.3670213   -1.4106361    0.2247908
Birth       ki1101329-Keneba           GAMBIA                         <20                  NA                -0.6581779   -1.4956971   -0.1017178
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                -0.1120968   -0.2487905    0.0096343
Birth       ki1135781-COHORTS          INDIA                          <20                  NA                -0.3547267   -0.7116981   -0.0722010
Birth       ki1135781-COHORTS          PHILIPPINES                    <20                  NA                -0.5533486   -1.1197565   -0.1382873
3 months    ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                -0.1304910   -1.2069293    0.4209104
3 months    ki0047075b-MAL-ED          PERU                           <20                  NA                -0.1605688   -0.6384855    0.1779483
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  NA                -0.3628748   -1.2682251    0.1811096
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                -0.2188552   -1.0469401    0.2742298
3 months    ki1000108-IRC              INDIA                          <20                  NA                -0.4505495   -1.3114455    0.0897066
3 months    ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                 0.3503622   -0.1882648    0.6448356
3 months    ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                -0.4527027   -1.3811337    0.1137225
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                -0.0526316   -0.4426076    0.2319233
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                -0.3772187   -1.3189666    0.1820790
3 months    ki1101329-Keneba           GAMBIA                         <20                  NA                -0.1394130   -0.4610983    0.1114479
3 months    ki1113344-GMS-Nepal        NEPAL                          <20                  NA                -0.5959627   -1.2225383   -0.1460307
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                -0.1607549   -0.2862781   -0.0474810
3 months    ki1135781-COHORTS          GUATEMALA                      <20                  NA                -0.0252343   -0.4236488    0.2616821
3 months    ki1135781-COHORTS          INDIA                          <20                  NA                -0.2000168   -0.4740385    0.0230646
3 months    ki1135781-COHORTS          PHILIPPINES                    <20                  NA                -0.2066669   -0.5507040    0.0610426
6 months    ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                 0.0819048   -0.9069519    0.5579863
6 months    ki0047075b-MAL-ED          PERU                           <20                  NA                 0.0421053   -0.4821588    0.3809285
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  NA                -0.2095238   -1.0808798    0.2969571
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                -0.0073710   -0.6913161    0.3999961
6 months    ki1000108-IRC              INDIA                          <20                  NA                 0.2086111   -0.5403051    0.5933946
6 months    ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                 0.3866789   -0.0817077    0.6522510
6 months    ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                -0.4312602   -1.2322546    0.0823153
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                -0.1279898   -0.5350234    0.1711129
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                 0.0055077   -0.6367485    0.3957441
6 months    ki1101329-Keneba           GAMBIA                         <20                  NA                 0.1619264   -0.1493598    0.3889056
6 months    ki1112895-Guatemala BSC    GUATEMALA                      <20                  NA                -0.4651163   -1.0117939   -0.0669908
6 months    ki1113344-GMS-Nepal        NEPAL                          <20                  NA                -0.2265795   -0.6878552    0.1086337
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                -0.1317771   -0.2693830   -0.0090882
6 months    ki1135781-COHORTS          GUATEMALA                      <20                  NA                 0.0337498   -0.2698006    0.2647354
6 months    ki1135781-COHORTS          INDIA                          <20                  NA                -0.1416455   -0.3799581    0.0555116
6 months    ki1135781-COHORTS          PHILIPPINES                    <20                  NA                -0.1728392   -0.4151318    0.0279691
6 months    ki1148112-LCNI-5           MALAWI                         <20                  NA                 0.1746916   -0.0964164    0.3787634
9 months    ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                 0.2880325   -0.4757029    0.6565042
9 months    ki0047075b-MAL-ED          PERU                           <20                  NA                -0.0723104   -0.5789205    0.2717495
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  NA                -0.4956282   -1.3492977    0.0478416
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  NA                -0.4239316   -1.3587649    0.1404055
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                 0.2823529   -0.2578050    0.5905428
9 months    ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                 0.1951764   -0.2339717    0.4750762
9 months    ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                -0.2599792   -0.8712612    0.1516163
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                -0.2150865   -0.6093366    0.0825814
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                 0.2733607   -0.2149117    0.5653966
9 months    ki1101329-Keneba           GAMBIA                         <20                  NA                 0.1986131   -0.0674902    0.3983823
9 months    ki1112895-Guatemala BSC    GUATEMALA                      <20                  NA                -0.2638298   -0.7461421    0.0852602
9 months    ki1113344-GMS-Nepal        NEPAL                          <20                  NA                -0.2280352   -0.5889778    0.0509179
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                -0.1168618   -0.2441424   -0.0026024
9 months    ki1135781-COHORTS          GUATEMALA                      <20                  NA                 0.0078223   -0.1967051    0.1773941
9 months    ki1135781-COHORTS          INDIA                          <20                  NA                -0.1432036   -0.3519129    0.0332851
9 months    ki1135781-COHORTS          PHILIPPINES                    <20                  NA                -0.0543726   -0.2480269    0.1092328
9 months    ki1148112-LCNI-5           MALAWI                         <20                  NA                 0.3288184    0.0215771    0.5395807
12 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                -0.0050980   -0.6378526    0.3832033
12 months   ki0047075b-MAL-ED          PERU                           <20                  NA                -0.0695652   -0.5315568    0.2530674
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                 0.1202186   -0.3038854    0.4063778
12 months   ki1000108-IRC              INDIA                          <20                  NA                 0.3176471   -0.3250528    0.6486136
12 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                 0.2577413   -0.1417153    0.5174384
12 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                -0.2539809   -0.7814377    0.1173039
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                -0.1053092   -0.4740720    0.1712017
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                -0.1337025   -0.7195576    0.2525511
12 months   ki1101329-Keneba           GAMBIA                         <20                  NA                 0.1167408   -0.1132324    0.2992059
12 months   ki1112895-Guatemala BSC    GUATEMALA                      <20                  NA                -0.2060606   -0.5899310    0.0851287
12 months   ki1113344-GMS-Nepal        NEPAL                          <20                  NA                 0.0170769   -0.2831264    0.2470439
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                -0.1108518   -0.2276816   -0.0051398
12 months   ki1135781-COHORTS          GUATEMALA                      <20                  NA                 0.0640000   -0.0940937    0.1992496
12 months   ki1135781-COHORTS          INDIA                          <20                  NA                -0.1966695   -0.3772542   -0.0397629
12 months   ki1135781-COHORTS          PHILIPPINES                    <20                  NA                -0.0390686   -0.1913200    0.0937249
12 months   ki1148112-LCNI-5           MALAWI                         <20                  NA                 0.1233766   -0.1684734    0.3423312
18 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                -0.2497024   -0.6663352    0.0627600
18 months   ki0047075b-MAL-ED          PERU                           <20                  NA                -0.0488759   -0.3689549    0.1963646
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  NA                 0.1182927   -0.4181631    0.4518206
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                 0.0172534   -0.2404153    0.2213971
18 months   ki1000108-IRC              INDIA                          <20                  NA                -0.1402027   -0.6857543    0.2287950
18 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                -0.0546863   -0.3107069    0.1513257
18 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                -0.1860576   -0.5723362    0.1053232
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                 0.0474846   -0.2708932    0.2861041
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                 0.0799054   -0.5158999    0.4415370
18 months   ki1101329-Keneba           GAMBIA                         <20                  NA                 0.1198157   -0.0729911    0.2779768
18 months   ki1113344-GMS-Nepal        NEPAL                          <20                  NA                -0.0713837   -0.2619246    0.0903870
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                -0.1370680   -0.2722723   -0.0162318
18 months   ki1135781-COHORTS          GUATEMALA                      <20                  NA                 0.0693306   -0.0596933    0.1826451
18 months   ki1135781-COHORTS          PHILIPPINES                    <20                  NA                -0.0235735   -0.1222191    0.0664009
18 months   ki1148112-LCNI-5           MALAWI                         <20                  NA                -0.0408759   -0.2811900    0.1543622
24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                -0.1935257   -0.6589279    0.1413108
24 months   ki0047075b-MAL-ED          PERU                           <20                  NA                -0.0864865   -0.5031524    0.2146818
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  NA                -0.0170940   -0.5491797    0.3322400
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                 0.1362229   -0.1257406    0.3372266
24 months   ki1000108-IRC              INDIA                          <20                  NA                -0.1054054   -0.5685671    0.2209953
24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                 0.0582087   -0.2494603    0.2901168
24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                 0.0509868   -0.3653226    0.3403567
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                 0.1903690   -0.1852306    0.4469411
24 months   ki1101329-Keneba           GAMBIA                         <20                  NA                 0.0229933   -0.1824632    0.1927512
24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  NA                -0.0275007   -0.2740689    0.1713496
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                -0.0345023   -0.2154564    0.1195118
24 months   ki1135781-COHORTS          GUATEMALA                      <20                  NA                 0.0007336   -0.0983094    0.0908451
24 months   ki1135781-COHORTS          INDIA                          <20                  NA                -0.3018953   -0.4285787   -0.1864460
24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  NA                -0.0605424   -0.1528228    0.0243512
24 months   ki1148112-LCNI-5           MALAWI                         <20                  NA                 0.1398949   -0.1333687    0.3472725
