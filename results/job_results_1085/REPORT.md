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

**Intervention Variable:** mbmi

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        A               n     nA   nAY0   nAY1
----------  -------------------------  -----------------------------  ----------  -----  -----  -----  -----
3 months    ki0047075b-MAL-ED          BANGLADESH                     [18.5-25)     254    163    118     45
3 months    ki0047075b-MAL-ED          BANGLADESH                     <18.5         254     32     20     12
3 months    ki0047075b-MAL-ED          BANGLADESH                     [25-30)       254     53     42     11
3 months    ki0047075b-MAL-ED          BANGLADESH                     >=30          254      6      2      4
3 months    ki0047075b-MAL-ED          BRAZIL                         [18.5-25)     221     88     77     11
3 months    ki0047075b-MAL-ED          BRAZIL                         <18.5         221     10      7      3
3 months    ki0047075b-MAL-ED          BRAZIL                         [25-30)       221     82     69     13
3 months    ki0047075b-MAL-ED          BRAZIL                         >=30          221     41     34      7
3 months    ki0047075b-MAL-ED          INDIA                          [18.5-25)     242    142    103     39
3 months    ki0047075b-MAL-ED          INDIA                          <18.5         242     49     35     14
3 months    ki0047075b-MAL-ED          INDIA                          [25-30)       242     40     30     10
3 months    ki0047075b-MAL-ED          INDIA                          >=30          242     11      9      2
3 months    ki0047075b-MAL-ED          NEPAL                          [18.5-25)     238    134    114     20
3 months    ki0047075b-MAL-ED          NEPAL                          <18.5         238      0      0      0
3 months    ki0047075b-MAL-ED          NEPAL                          [25-30)       238     87     74     13
3 months    ki0047075b-MAL-ED          NEPAL                          >=30          238     17     13      4
3 months    ki0047075b-MAL-ED          PERU                           [18.5-25)     290    159     99     60
3 months    ki0047075b-MAL-ED          PERU                           <18.5         290      5      3      2
3 months    ki0047075b-MAL-ED          PERU                           [25-30)       290    109     77     32
3 months    ki0047075b-MAL-ED          PERU                           >=30          290     17     11      6
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [18.5-25)     270    109     72     37
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <18.5         270      8      6      2
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)       270     87     62     25
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30          270     66     58      8
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [18.5-25)     256    177    121     56
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <18.5         256     14      7      7
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)       256     53     37     16
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30          256     12     10      2
3 months    ki1017093-NIH-Birth        BANGLADESH                     [18.5-25)     629    445    352     93
3 months    ki1017093-NIH-Birth        BANGLADESH                     <18.5         629    106     72     34
3 months    ki1017093-NIH-Birth        BANGLADESH                     [25-30)       629     63     51     12
3 months    ki1017093-NIH-Birth        BANGLADESH                     >=30          629     15     14      1
3 months    ki1017093b-PROVIDE         BANGLADESH                     [18.5-25)     669    423    340     83
3 months    ki1017093b-PROVIDE         BANGLADESH                     <18.5         669    127    100     27
3 months    ki1017093b-PROVIDE         BANGLADESH                     [25-30)       669     98     81     17
3 months    ki1017093b-PROVIDE         BANGLADESH                     >=30          669     21     19      2
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     [18.5-25)     755    483    397     86
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     <18.5         755     68     54     14
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)       755    165    146     19
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30          755     39     37      2
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [18.5-25)    2342   1233   1099    134
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <18.5        2342     38     32      6
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)      2342    741    672     69
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30         2342    330    304     26
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)    9795   6711   5088   1623
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       <18.5        9795    517    358    159
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)      9795   1989   1615    374
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30         9795    578    478    100
6 months    ki0047075b-MAL-ED          BANGLADESH                     [18.5-25)     246    157    102     55
6 months    ki0047075b-MAL-ED          BANGLADESH                     <18.5         246     32     18     14
6 months    ki0047075b-MAL-ED          BANGLADESH                     [25-30)       246     51     40     11
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30          246      6      2      4
6 months    ki0047075b-MAL-ED          BRAZIL                         [18.5-25)     216     85     75     10
6 months    ki0047075b-MAL-ED          BRAZIL                         <18.5         216     10      7      3
6 months    ki0047075b-MAL-ED          BRAZIL                         [25-30)       216     80     64     16
6 months    ki0047075b-MAL-ED          BRAZIL                         >=30          216     41     31     10
6 months    ki0047075b-MAL-ED          INDIA                          [18.5-25)     239    140     95     45
6 months    ki0047075b-MAL-ED          INDIA                          <18.5         239     49     30     19
6 months    ki0047075b-MAL-ED          INDIA                          [25-30)       239     39     22     17
6 months    ki0047075b-MAL-ED          INDIA                          >=30          239     11      9      2
6 months    ki0047075b-MAL-ED          NEPAL                          [18.5-25)     238    134    110     24
6 months    ki0047075b-MAL-ED          NEPAL                          <18.5         238      0      0      0
6 months    ki0047075b-MAL-ED          NEPAL                          [25-30)       238     87     74     13
6 months    ki0047075b-MAL-ED          NEPAL                          >=30          238     17     13      4
6 months    ki0047075b-MAL-ED          PERU                           [18.5-25)     281    154     81     73
6 months    ki0047075b-MAL-ED          PERU                           <18.5         281      5      2      3
6 months    ki0047075b-MAL-ED          PERU                           [25-30)       281    106     62     44
6 months    ki0047075b-MAL-ED          PERU                           >=30          281     16     11      5
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [18.5-25)     263    107     61     46
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <18.5         263      7      2      5
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)       263     84     50     34
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30          263     65     49     16
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [18.5-25)     253    175    100     75
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <18.5         253     14      6      8
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)       253     52     35     17
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30          253     12      8      4
6 months    ki1017093-NIH-Birth        BANGLADESH                     [18.5-25)     551    393    257    136
6 months    ki1017093-NIH-Birth        BANGLADESH                     <18.5         551     91     48     43
6 months    ki1017093-NIH-Birth        BANGLADESH                     [25-30)       551     54     36     18
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30          551     13      9      4
6 months    ki1017093b-PROVIDE         BANGLADESH                     [18.5-25)     639    405    301    104
6 months    ki1017093b-PROVIDE         BANGLADESH                     <18.5         639    118     81     37
6 months    ki1017093b-PROVIDE         BANGLADESH                     [25-30)       639     96     79     17
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30          639     20     16      4
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [18.5-25)     736    468    318    150
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <18.5         736     68     41     27
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)       736    161    121     40
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30          736     39     30      9
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [18.5-25)    2187   1149    907    242
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <18.5        2187     35     27      8
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)      2187    695    570    125
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30         2187    308    251     57
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)    7595   5228   3569   1659
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <18.5        7595    386    237    149
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)      7595   1541   1167    374
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30         7595    440    348     92
6 months    ki1148112-LCNI-5           MALAWI                         [18.5-25)     271    215    135     80
6 months    ki1148112-LCNI-5           MALAWI                         <18.5         271     47     31     16
6 months    ki1148112-LCNI-5           MALAWI                         [25-30)       271      9      8      1
6 months    ki1148112-LCNI-5           MALAWI                         >=30          271      0      0      0
12 months   ki0047075b-MAL-ED          BANGLADESH                     [18.5-25)     239    153     88     65
12 months   ki0047075b-MAL-ED          BANGLADESH                     <18.5         239     31     15     16
12 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)       239     49     31     18
12 months   ki0047075b-MAL-ED          BANGLADESH                     >=30          239      6      2      4
12 months   ki0047075b-MAL-ED          BRAZIL                         [18.5-25)     206     81     69     12
12 months   ki0047075b-MAL-ED          BRAZIL                         <18.5         206      9      6      3
12 months   ki0047075b-MAL-ED          BRAZIL                         [25-30)       206     77     61     16
12 months   ki0047075b-MAL-ED          BRAZIL                         >=30          206     39     29     10
12 months   ki0047075b-MAL-ED          INDIA                          [18.5-25)     234    137     71     66
12 months   ki0047075b-MAL-ED          INDIA                          <18.5         234     48     25     23
12 months   ki0047075b-MAL-ED          INDIA                          [25-30)       234     39     20     19
12 months   ki0047075b-MAL-ED          INDIA                          >=30          234     10      7      3
12 months   ki0047075b-MAL-ED          NEPAL                          [18.5-25)     235    132    106     26
12 months   ki0047075b-MAL-ED          NEPAL                          <18.5         235      0      0      0
12 months   ki0047075b-MAL-ED          NEPAL                          [25-30)       235     87     69     18
12 months   ki0047075b-MAL-ED          NEPAL                          >=30          235     16     13      3
12 months   ki0047075b-MAL-ED          PERU                           [18.5-25)     269    147     69     78
12 months   ki0047075b-MAL-ED          PERU                           <18.5         269      5      2      3
12 months   ki0047075b-MAL-ED          PERU                           [25-30)       269    101     50     51
12 months   ki0047075b-MAL-ED          PERU                           >=30          269     16      8      8
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [18.5-25)     254    103     49     54
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <18.5         254      7      0      7
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)       254     80     41     39
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30          254     64     44     20
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [18.5-25)     245    170     54    116
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <18.5         245     13      4      9
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)       245     52     22     30
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30          245     10      4      6
12 months   ki1017093-NIH-Birth        BANGLADESH                     [18.5-25)     541    377    184    193
12 months   ki1017093-NIH-Birth        BANGLADESH                     <18.5         541     93     38     55
12 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)       541     57     35     22
12 months   ki1017093-NIH-Birth        BANGLADESH                     >=30          541     14      8      6
12 months   ki1017093b-PROVIDE         BANGLADESH                     [18.5-25)     608    388    256    132
12 months   ki1017093b-PROVIDE         BANGLADESH                     <18.5         608    106     61     45
12 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)       608     95     74     21
12 months   ki1017093b-PROVIDE         BANGLADESH                     >=30          608     19     16      3
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     [18.5-25)     729    463    282    181
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     <18.5         729     67     32     35
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)       729    161    110     51
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30          729     38     28     10
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [18.5-25)    1951   1011    677    334
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <18.5        1951     30     19     11
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)      1951    626    441    185
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30         1951    284    198     86
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)    8291   5658   3399   2259
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       <18.5        8291    445    219    226
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)      8291   1695   1136    559
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30         8291    493    346    147
12 months   ki1148112-LCNI-5           MALAWI                         [18.5-25)     812    635    342    293
12 months   ki1148112-LCNI-5           MALAWI                         <18.5         812    138     60     78
12 months   ki1148112-LCNI-5           MALAWI                         [25-30)       812     38     25     13
12 months   ki1148112-LCNI-5           MALAWI                         >=30          812      1      1      0
18 months   ki0047075b-MAL-ED          BANGLADESH                     [18.5-25)     231    149     63     86
18 months   ki0047075b-MAL-ED          BANGLADESH                     <18.5         231     30      9     21
18 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)       231     47     27     20
18 months   ki0047075b-MAL-ED          BANGLADESH                     >=30          231      5      1      4
18 months   ki0047075b-MAL-ED          BRAZIL                         [18.5-25)     193     74     60     14
18 months   ki0047075b-MAL-ED          BRAZIL                         <18.5         193      9      6      3
18 months   ki0047075b-MAL-ED          BRAZIL                         [25-30)       193     72     56     16
18 months   ki0047075b-MAL-ED          BRAZIL                         >=30          193     38     27     11
18 months   ki0047075b-MAL-ED          INDIA                          [18.5-25)     228    133     51     82
18 months   ki0047075b-MAL-ED          INDIA                          <18.5         228     46     21     25
18 months   ki0047075b-MAL-ED          INDIA                          [25-30)       228     39     18     21
18 months   ki0047075b-MAL-ED          INDIA                          >=30          228     10      6      4
18 months   ki0047075b-MAL-ED          NEPAL                          [18.5-25)     231    128     89     39
18 months   ki0047075b-MAL-ED          NEPAL                          <18.5         231      0      0      0
18 months   ki0047075b-MAL-ED          NEPAL                          [25-30)       231     87     63     24
18 months   ki0047075b-MAL-ED          NEPAL                          >=30          231     16     11      5
18 months   ki0047075b-MAL-ED          PERU                           [18.5-25)     243    130     40     90
18 months   ki0047075b-MAL-ED          PERU                           <18.5         243      5      2      3
18 months   ki0047075b-MAL-ED          PERU                           [25-30)       243     92     34     58
18 months   ki0047075b-MAL-ED          PERU                           >=30          243     16      4     12
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [18.5-25)     249    102     37     65
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <18.5         249      7      0      7
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)       249     78     36     42
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30          249     62     38     24
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [18.5-25)     233    162     25    137
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <18.5         233     13      2     11
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)       233     49     14     35
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30          233      9      2      7
18 months   ki1017093-NIH-Birth        BANGLADESH                     [18.5-25)     497    343    117    226
18 months   ki1017093-NIH-Birth        BANGLADESH                     <18.5         497     90     22     68
18 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)       497     54     31     23
18 months   ki1017093-NIH-Birth        BANGLADESH                     >=30          497     10      4      6
18 months   ki1017093b-PROVIDE         BANGLADESH                     [18.5-25)     603    382    219    163
18 months   ki1017093b-PROVIDE         BANGLADESH                     <18.5         603    107     51     56
18 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)       603     95     69     26
18 months   ki1017093b-PROVIDE         BANGLADESH                     >=30          603     19     13      6
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     [18.5-25)     715    456    251    205
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     <18.5         715     65     27     38
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)       715    157     94     63
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30          715     37     26     11
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [18.5-25)    1422    736    432    304
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <18.5        1422     21     12      9
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)      1422    456    277    179
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30         1422    209    125     84
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)    5957   4149   2044   2105
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       <18.5        5957    332    130    202
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)      5957   1142    625    517
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30         5957    334    205    129
18 months   ki1148112-LCNI-5           MALAWI                         [18.5-25)     673    532    248    284
18 months   ki1148112-LCNI-5           MALAWI                         <18.5         673    105     35     70
18 months   ki1148112-LCNI-5           MALAWI                         [25-30)       673     35     18     17
18 months   ki1148112-LCNI-5           MALAWI                         >=30          673      1      0      1
24 months   ki0047075b-MAL-ED          BANGLADESH                     [18.5-25)     219    141     52     89
24 months   ki0047075b-MAL-ED          BANGLADESH                     <18.5         219     29      7     22
24 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)       219     45     23     22
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30          219      4      1      3
24 months   ki0047075b-MAL-ED          BRAZIL                         [18.5-25)     175     66     53     13
24 months   ki0047075b-MAL-ED          BRAZIL                         <18.5         175      7      4      3
24 months   ki0047075b-MAL-ED          BRAZIL                         [25-30)       175     68     53     15
24 months   ki0047075b-MAL-ED          BRAZIL                         >=30          175     34     26      8
24 months   ki0047075b-MAL-ED          INDIA                          [18.5-25)     227    133     46     87
24 months   ki0047075b-MAL-ED          INDIA                          <18.5         227     46     19     27
24 months   ki0047075b-MAL-ED          INDIA                          [25-30)       227     39     16     23
24 months   ki0047075b-MAL-ED          INDIA                          >=30          227      9      5      4
24 months   ki0047075b-MAL-ED          NEPAL                          [18.5-25)     229    127     79     48
24 months   ki0047075b-MAL-ED          NEPAL                          <18.5         229      0      0      0
24 months   ki0047075b-MAL-ED          NEPAL                          [25-30)       229     86     59     27
24 months   ki0047075b-MAL-ED          NEPAL                          >=30          229     16     11      5
24 months   ki0047075b-MAL-ED          PERU                           [18.5-25)     218    115     29     86
24 months   ki0047075b-MAL-ED          PERU                           <18.5         218      5      2      3
24 months   ki0047075b-MAL-ED          PERU                           [25-30)       218     82     27     55
24 months   ki0047075b-MAL-ED          PERU                           >=30          218     16      3     13
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [18.5-25)     238     94     28     66
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <18.5         238      7      0      7
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)       238     75     32     43
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30          238     62     32     30
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [18.5-25)     228    160     15    145
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <18.5         228     13      2     11
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)       228     47      9     38
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30          228      8      1      7
24 months   ki1017093-NIH-Birth        BANGLADESH                     [18.5-25)     470    324     78    246
24 months   ki1017093-NIH-Birth        BANGLADESH                     <18.5         470     84     10     74
24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)       470     52     25     27
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30          470     10      2      8
24 months   ki1017093b-PROVIDE         BANGLADESH                     [18.5-25)     581    369    186    183
24 months   ki1017093b-PROVIDE         BANGLADESH                     <18.5         581    103     42     61
24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)       581     91     62     29
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30          581     18     12      6
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [18.5-25)     634    397    191    206
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <18.5         634     61     23     38
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)       634    142     81     61
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30          634     34     21     13
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [18.5-25)     945    488    265    223
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <18.5         945      8      5      3
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)       945    308    177    131
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30          945    141     88     53
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)    1511   1078    282    796
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <18.5        1511     91     18     73
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)      1511    276     87    189
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30         1511     66     14     52
24 months   ki1148112-LCNI-5           MALAWI                         [18.5-25)     723    571    205    366
24 months   ki1148112-LCNI-5           MALAWI                         <18.5         723    117     33     84
24 months   ki1148112-LCNI-5           MALAWI                         [25-30)       723     34     14     20
24 months   ki1148112-LCNI-5           MALAWI                         >=30          723      1      0      1


The following strata were considered:

* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 12 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 18 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 18 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 18 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 18 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 18 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/a2665e54-3c44-49d1-8d7a-d74d73ed3620/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->


```
## Warning: Removed 16 rows containing missing values (geom_errorbar).
```

![](/tmp/a2665e54-3c44-49d1-8d7a-d74d73ed3620/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/a2665e54-3c44-49d1-8d7a-d74d73ed3620/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a2665e54-3c44-49d1-8d7a-d74d73ed3620/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [18.5-25)            NA                0.1086780   0.0913021   0.1260539
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <18.5                NA                0.1578947   0.0419326   0.2738568
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                0.0931174   0.0721897   0.1140452
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.0787879   0.0497146   0.1078611
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)            NA                0.2418418   0.2315965   0.2520870
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       <18.5                NA                0.3075435   0.2677626   0.3473244
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              NA                0.1880342   0.1708614   0.2052070
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.1730104   0.1421719   0.2038488
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [18.5-25)            NA                0.3205128   0.2782037   0.3628219
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <18.5                NA                0.3970588   0.2806854   0.5134322
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              NA                0.2484472   0.1816548   0.3152396
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                0.2307692   0.0984484   0.3630901
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [18.5-25)            NA                0.2106179   0.1870360   0.2341998
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <18.5                NA                0.2285714   0.0894250   0.3677179
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                0.1798561   0.1512958   0.2084164
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.1850649   0.1416843   0.2284455
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)            NA                0.3173298   0.3047124   0.3299472
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <18.5                NA                0.3860104   0.3374409   0.4345798
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              NA                0.2426995   0.2212931   0.2641060
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.2090909   0.1710911   0.2470907
12 months   ki1017093-NIH-Birth        BANGLADESH                     [18.5-25)            NA                0.5119363   0.4614324   0.5624403
12 months   ki1017093-NIH-Birth        BANGLADESH                     <18.5                NA                0.5913978   0.4913982   0.6913975
12 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)              NA                0.3859649   0.2594671   0.5124627
12 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                0.4285714   0.1691067   0.6880362
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     [18.5-25)            NA                0.3909287   0.3464514   0.4354060
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     <18.5                NA                0.5223881   0.4027022   0.6420740
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              NA                0.3167702   0.2448603   0.3886801
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                0.2631579   0.1230541   0.4032617
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [18.5-25)            NA                0.3303660   0.3013658   0.3593661
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <18.5                NA                0.3666667   0.1941819   0.5391514
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                0.2955272   0.2597749   0.3312794
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.3028169   0.2493649   0.3562689
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)            NA                0.3992577   0.3864958   0.4120195
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       <18.5                NA                0.5078652   0.4614125   0.5543178
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              NA                0.3297935   0.3074107   0.3521763
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.2981744   0.2577913   0.3385576
18 months   ki1017093b-PROVIDE         BANGLADESH                     [18.5-25)            NA                0.4267016   0.3770619   0.4763413
18 months   ki1017093b-PROVIDE         BANGLADESH                     <18.5                NA                0.5233645   0.4286510   0.6180780
18 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)              NA                0.2736842   0.1839549   0.3634135
18 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                0.3157895   0.1066069   0.5249720
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     [18.5-25)            NA                0.4495614   0.4038717   0.4952511
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     <18.5                NA                0.5846154   0.4647329   0.7044978
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              NA                0.4012739   0.3245489   0.4779989
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                0.2972973   0.1499194   0.4446752
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [18.5-25)            NA                0.4130435   0.3774588   0.4486281
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <18.5                NA                0.4285714   0.2168408   0.6403021
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                0.3925439   0.3477086   0.4373791
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.4019139   0.3354209   0.4684069
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)            NA                0.5073512   0.4921374   0.5225649
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       <18.5                NA                0.6084337   0.5559258   0.6609417
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              NA                0.4527145   0.4238429   0.4815861
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.3862275   0.3340076   0.4384475
24 months   ki1017093b-PROVIDE         BANGLADESH                     [18.5-25)            NA                0.4959350   0.4448769   0.5469931
24 months   ki1017093b-PROVIDE         BANGLADESH                     <18.5                NA                0.5922330   0.4972478   0.6872182
24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)              NA                0.3186813   0.2228616   0.4145010
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                0.3333333   0.1153719   0.5512948
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [18.5-25)            NA                0.5188917   0.4697041   0.5680793
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <18.5                NA                0.6229508   0.5012337   0.7446680
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              NA                0.4295775   0.3480947   0.5110602
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                0.3823529   0.2188770   0.5458289
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)            NA                0.7384045   0.7121596   0.7646493
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <18.5                NA                0.8021978   0.7203273   0.8840683
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              NA                0.6847826   0.6299525   0.7396127
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.7878788   0.6892187   0.8865389


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1003416   0.0998099   0.1008733
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2303216   0.2297071   0.2309361
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.3070652   0.3038947   0.3102358
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1975309   0.1968999   0.1981618
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2994075   0.2984727   0.3003423
12 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.5101664   0.5055977   0.5147350
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.3799726   0.3756544   0.3842908
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3157355   0.3149589   0.3165121
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.3848752   0.3839076   0.3858427
18 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.4162521   0.4102608   0.4222434
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.4433566   0.4391230   0.4475903
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4050633   0.4045623   0.4055643
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.4957193   0.4946332   0.4968054
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.4802065   0.4733314   0.4870817
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.5015773   0.4969499   0.5062047
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.7346128   0.7331313   0.7360944


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [18.5-25)            [18.5-25)         1.0000000   1.0000000   1.0000000
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <18.5                [18.5-25)         1.4528672   0.6851692   3.0807329
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              [18.5-25)         0.8568191   0.6502860   1.1289480
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [18.5-25)         0.7249661   0.4849131   1.0838556
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)            [18.5-25)         1.0000000   1.0000000   1.0000000
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       <18.5                [18.5-25)         1.2716726   1.1098469   1.4570939
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              [18.5-25)         0.7775092   0.7030448   0.8598607
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [18.5-25)         0.7153867   0.5956254   0.8592282
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [18.5-25)            [18.5-25)         1.0000000   1.0000000   1.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <18.5                [18.5-25)         1.2388235   0.8982727   1.7084831
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              [18.5-25)         0.7751553   0.5745368   1.0458264
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 [18.5-25)         0.7200000   0.3997591   1.2967809
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [18.5-25)            [18.5-25)         1.0000000   1.0000000   1.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <18.5                [18.5-25)         1.0852420   0.5843977   2.0153234
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              [18.5-25)         0.8539449   0.7031482   1.0370815
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [18.5-25)         0.8786761   0.6776570   1.1393252
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)            [18.5-25)         1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <18.5                [18.5-25)         1.2164329   1.0660558   1.3880221
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              [18.5-25)         0.7648181   0.6942893   0.8425115
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [18.5-25)         0.6589073   0.5470532   0.7936319
12 months   ki1017093-NIH-Birth        BANGLADESH                     [18.5-25)            [18.5-25)         1.0000000   1.0000000   1.0000000
12 months   ki1017093-NIH-Birth        BANGLADESH                     <18.5                [18.5-25)         1.1552176   0.9498262   1.4050230
12 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)              [18.5-25)         0.7539315   0.5354093   1.0616413
12 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 [18.5-25)         0.8371577   0.4533251   1.5459831
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     [18.5-25)            [18.5-25)         1.0000000   1.0000000   1.0000000
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     <18.5                [18.5-25)         1.3362744   1.0346659   1.7258028
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              [18.5-25)         0.8103016   0.6285916   1.0445395
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 [18.5-25)         0.6731608   0.3905550   1.1602602
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [18.5-25)            [18.5-25)         1.0000000   1.0000000   1.0000000
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <18.5                [18.5-25)         1.1098802   0.6877836   1.7910200
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              [18.5-25)         0.8945448   0.7703500   1.0387621
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [18.5-25)         0.9166104   0.7526078   1.1163512
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)            [18.5-25)         1.0000000   1.0000000   1.0000000
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       <18.5                [18.5-25)         1.2720235   1.1545587   1.4014392
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              [18.5-25)         0.8260167   0.7663167   0.8903676
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [18.5-25)         0.7468220   0.6498044   0.8583247
18 months   ki1017093b-PROVIDE         BANGLADESH                     [18.5-25)            [18.5-25)         1.0000000   1.0000000   1.0000000
18 months   ki1017093b-PROVIDE         BANGLADESH                     <18.5                [18.5-25)         1.2265352   0.9891162   1.5209422
18 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)              [18.5-25)         0.6413949   0.4529404   0.9082594
18 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 [18.5-25)         0.7400710   0.3777366   1.4499658
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     [18.5-25)            [18.5-25)         1.0000000   1.0000000   1.0000000
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     <18.5                [18.5-25)         1.3004128   1.0343943   1.6348440
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              [18.5-25)         0.8925897   0.7188057   1.1083890
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 [18.5-25)         0.6613052   0.3986879   1.0969096
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [18.5-25)            [18.5-25)         1.0000000   1.0000000   1.0000000
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <18.5                [18.5-25)         1.0375940   0.6283932   1.7132606
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              [18.5-25)         0.9503693   0.8236823   1.0965415
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [18.5-25)         0.9730546   0.8074746   1.1725884
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)            [18.5-25)         1.0000000   1.0000000   1.0000000
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       <18.5                [18.5-25)         1.1992359   1.0945280   1.3139607
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              [18.5-25)         0.8923100   0.8315914   0.9574621
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [18.5-25)         0.7612627   0.6628097   0.8743399
24 months   ki1017093b-PROVIDE         BANGLADESH                     [18.5-25)            [18.5-25)         1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     <18.5                [18.5-25)         1.1941748   0.9869561   1.4449004
24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)              [18.5-25)         0.6425869   0.4676354   0.8829913
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 [18.5-25)         0.6721311   0.3467187   1.3029590
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [18.5-25)            [18.5-25)         1.0000000   1.0000000   1.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <18.5                [18.5-25)         1.2005411   0.9661884   1.4917371
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              [18.5-25)         0.8278750   0.6696889   1.0234261
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 [18.5-25)         0.7368646   0.4755488   1.1417746
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)            [18.5-25)         1.0000000   1.0000000   1.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <18.5                [18.5-25)         1.0863935   0.9751088   1.2103786
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              [18.5-25)         0.9273815   0.8495965   1.0122881
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [18.5-25)         1.0670017   0.9367710   1.2153371


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [18.5-25)            NA                -0.0083364   -0.0257205    0.0090476
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)            NA                -0.0115202   -0.0217838   -0.0012565
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [18.5-25)            NA                -0.0134476   -0.0558753    0.0289801
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [18.5-25)            NA                -0.0130871   -0.0366774    0.0105033
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)            NA                -0.0179223   -0.0305742   -0.0052703
12 months   ki1017093-NIH-Birth        BANGLADESH                     [18.5-25)            NA                -0.0017700   -0.0524802    0.0489402
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     [18.5-25)            NA                -0.0109562   -0.0556426    0.0337303
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [18.5-25)            NA                -0.0146305   -0.0436410    0.0143801
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)            NA                -0.0143825   -0.0271810   -0.0015840
18 months   ki1017093b-PROVIDE         BANGLADESH                     [18.5-25)            NA                -0.0104495   -0.0604495    0.0395505
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     [18.5-25)            NA                -0.0062048   -0.0520902    0.0396807
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [18.5-25)            NA                -0.0079802   -0.0435684    0.0276080
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)            NA                -0.0116318   -0.0268843    0.0036206
24 months   ki1017093b-PROVIDE         BANGLADESH                     [18.5-25)            NA                -0.0157284   -0.0672473    0.0357905
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [18.5-25)            NA                -0.0173144   -0.0667192    0.0320904
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)            NA                -0.0037916   -0.0300783    0.0224951


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [18.5-25)            NA                -0.0830805   -0.2709713    0.0770339
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)            NA                -0.0500177   -0.0955476   -0.0063800
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [18.5-25)            NA                -0.0437940   -0.1915675    0.0856533
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [18.5-25)            NA                -0.0662533   -0.1926309    0.0467327
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)            NA                -0.0598591   -0.1029843   -0.0184200
12 months   ki1017093-NIH-Birth        BANGLADESH                     [18.5-25)            NA                -0.0034694   -0.1079615    0.0911680
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     [18.5-25)            NA                -0.0288341   -0.1534597    0.0823263
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [18.5-25)            NA                -0.0463377   -0.1423785    0.0416289
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)            NA                -0.0373693   -0.0711691   -0.0046361
18 months   ki1017093b-PROVIDE         BANGLADESH                     [18.5-25)            NA                -0.0251038   -0.1525933    0.0882840
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     [18.5-25)            NA                -0.0139950   -0.1229704    0.0844053
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [18.5-25)            NA                -0.0197011   -0.1114559    0.0644790
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)            NA                -0.0234646   -0.0547039    0.0068495
24 months   ki1017093b-PROVIDE         BANGLADESH                     [18.5-25)            NA                -0.0327534   -0.1458795    0.0692043
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [18.5-25)            NA                -0.0345199   -0.1378936    0.0594627
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)            NA                -0.0051614   -0.0415896    0.0299928
