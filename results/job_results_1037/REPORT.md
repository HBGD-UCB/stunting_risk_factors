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
Birth       ki0047075b-MAL-ED          BANGLADESH                     [18.5-25)     246    158    130     28
Birth       ki0047075b-MAL-ED          BANGLADESH                     <18.5         246     30     25      5
Birth       ki0047075b-MAL-ED          BANGLADESH                     [25-30)       246     52     47      5
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=30          246      6      2      4
Birth       ki0047075b-MAL-ED          BRAZIL                         [18.5-25)     184     70     62      8
Birth       ki0047075b-MAL-ED          BRAZIL                         <18.5         184      9      7      2
Birth       ki0047075b-MAL-ED          BRAZIL                         [25-30)       184     69     62      7
Birth       ki0047075b-MAL-ED          BRAZIL                         >=30          184     36     34      2
Birth       ki0047075b-MAL-ED          INDIA                          [18.5-25)     198    117     96     21
Birth       ki0047075b-MAL-ED          INDIA                          <18.5         198     39     32      7
Birth       ki0047075b-MAL-ED          INDIA                          [25-30)       198     32     29      3
Birth       ki0047075b-MAL-ED          INDIA                          >=30          198     10      9      1
Birth       ki0047075b-MAL-ED          NEPAL                          [18.5-25)     172     99     88     11
Birth       ki0047075b-MAL-ED          NEPAL                          <18.5         172      0      0      0
Birth       ki0047075b-MAL-ED          NEPAL                          [25-30)       172     62     56      6
Birth       ki0047075b-MAL-ED          NEPAL                          >=30          172     11     10      1
Birth       ki0047075b-MAL-ED          PERU                           [18.5-25)     276    149    130     19
Birth       ki0047075b-MAL-ED          PERU                           <18.5         276      5      3      2
Birth       ki0047075b-MAL-ED          PERU                           [25-30)       276    106     95     11
Birth       ki0047075b-MAL-ED          PERU                           >=30          276     16     15      1
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [18.5-25)     228     96     81     15
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <18.5         228      5      5      0
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)       228     70     64      6
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=30          228     57     55      2
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [18.5-25)     121     81     70     11
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <18.5         121      7      5      2
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)       121     29     24      5
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30          121      4      4      0
Birth       ki1017093-NIH-Birth        BANGLADESH                     [18.5-25)      28     23     22      1
Birth       ki1017093-NIH-Birth        BANGLADESH                     <18.5          28      5      5      0
Birth       ki1017093-NIH-Birth        BANGLADESH                     [25-30)        28      0      0      0
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=30           28      0      0      0
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [18.5-25)      27     17     13      4
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <18.5          27      6      5      1
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)        27      4      4      0
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=30           27      0      0      0
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)    9634   6598   5912    686
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <18.5        9634    510    432     78
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)      9634   1952   1808    144
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=30         9634    574    526     48
3 months    ki0047075b-MAL-ED          BANGLADESH                     [18.5-25)     250    160    133     27
3 months    ki0047075b-MAL-ED          BANGLADESH                     <18.5         250     32     24      8
3 months    ki0047075b-MAL-ED          BANGLADESH                     [25-30)       250     52     48      4
3 months    ki0047075b-MAL-ED          BANGLADESH                     >=30          250      6      2      4
3 months    ki0047075b-MAL-ED          BRAZIL                         [18.5-25)     221     88     85      3
3 months    ki0047075b-MAL-ED          BRAZIL                         <18.5         221     10     10      0
3 months    ki0047075b-MAL-ED          BRAZIL                         [25-30)       221     82     77      5
3 months    ki0047075b-MAL-ED          BRAZIL                         >=30          221     41     35      6
3 months    ki0047075b-MAL-ED          INDIA                          [18.5-25)     240    141    121     20
3 months    ki0047075b-MAL-ED          INDIA                          <18.5         240     49     40      9
3 months    ki0047075b-MAL-ED          INDIA                          [25-30)       240     39     35      4
3 months    ki0047075b-MAL-ED          INDIA                          >=30          240     11      9      2
3 months    ki0047075b-MAL-ED          NEPAL                          [18.5-25)     236    132    123      9
3 months    ki0047075b-MAL-ED          NEPAL                          <18.5         236      0      0      0
3 months    ki0047075b-MAL-ED          NEPAL                          [25-30)       236     87     84      3
3 months    ki0047075b-MAL-ED          NEPAL                          >=30          236     17     16      1
3 months    ki0047075b-MAL-ED          PERU                           [18.5-25)     289    158    117     41
3 months    ki0047075b-MAL-ED          PERU                           <18.5         289      5      3      2
3 months    ki0047075b-MAL-ED          PERU                           [25-30)       289    109     85     24
3 months    ki0047075b-MAL-ED          PERU                           >=30          289     17     11      6
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [18.5-25)     269    108     84     24
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <18.5         269      8      6      2
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)       269     87     71     16
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30          269     66     58      8
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [18.5-25)     254    176    146     30
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <18.5         254     13     10      3
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)       254     53     44      9
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30          254     12     11      1
3 months    ki1017093-NIH-Birth        BANGLADESH                     [18.5-25)     570    403    319     84
3 months    ki1017093-NIH-Birth        BANGLADESH                     <18.5         570     95     65     30
3 months    ki1017093-NIH-Birth        BANGLADESH                     [25-30)       570     58     46     12
3 months    ki1017093-NIH-Birth        BANGLADESH                     >=30          570     14     10      4
3 months    ki1017093b-PROVIDE         BANGLADESH                     [18.5-25)     644    408    358     50
3 months    ki1017093b-PROVIDE         BANGLADESH                     <18.5         644    119    101     18
3 months    ki1017093b-PROVIDE         BANGLADESH                     [25-30)       644     97     90      7
3 months    ki1017093b-PROVIDE         BANGLADESH                     >=30          644     20     18      2
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     [18.5-25)     728    464    361    103
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     <18.5         728     67     46     21
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)       728    159    129     30
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30          728     38     36      2
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [18.5-25)    2243   1175   1097     78
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <18.5        2243     36     34      2
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)      2243    712    678     34
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30         2243    320    304     16
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)    7751   5301   4271   1030
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       <18.5        7751    389    296     93
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)      7751   1603   1386    217
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30         7751    458    404     54
6 months    ki0047075b-MAL-ED          BANGLADESH                     [18.5-25)     241    153    124     29
6 months    ki0047075b-MAL-ED          BANGLADESH                     <18.5         241     32     22     10
6 months    ki0047075b-MAL-ED          BANGLADESH                     [25-30)       241     50     48      2
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30          241      6      2      4
6 months    ki0047075b-MAL-ED          BRAZIL                         [18.5-25)     208     81     78      3
6 months    ki0047075b-MAL-ED          BRAZIL                         <18.5         208      9      9      0
6 months    ki0047075b-MAL-ED          BRAZIL                         [25-30)       208     78     78      0
6 months    ki0047075b-MAL-ED          BRAZIL                         >=30          208     40     37      3
6 months    ki0047075b-MAL-ED          INDIA                          [18.5-25)     235    137    110     27
6 months    ki0047075b-MAL-ED          INDIA                          <18.5         235     49     41      8
6 months    ki0047075b-MAL-ED          INDIA                          [25-30)       235     39     30      9
6 months    ki0047075b-MAL-ED          INDIA                          >=30          235     10      9      1
6 months    ki0047075b-MAL-ED          NEPAL                          [18.5-25)     236    133    123     10
6 months    ki0047075b-MAL-ED          NEPAL                          <18.5         236      0      0      0
6 months    ki0047075b-MAL-ED          NEPAL                          [25-30)       236     87     85      2
6 months    ki0047075b-MAL-ED          NEPAL                          >=30          236     16     16      0
6 months    ki0047075b-MAL-ED          PERU                           [18.5-25)     272    149    113     36
6 months    ki0047075b-MAL-ED          PERU                           <18.5         272      5      3      2
6 months    ki0047075b-MAL-ED          PERU                           [25-30)       272    102     82     20
6 months    ki0047075b-MAL-ED          PERU                           >=30          272     16     14      2
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [18.5-25)     249     99     77     22
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <18.5         249      7      4      3
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)       249     79     60     19
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30          249     64     58      6
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [18.5-25)     247    170    127     43
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <18.5         247     14     11      3
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)       247     52     43      9
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30          247     11      8      3
6 months    ki1017093-NIH-Birth        BANGLADESH                     [18.5-25)     537    374    279     95
6 months    ki1017093-NIH-Birth        BANGLADESH                     <18.5         537     93     58     35
6 months    ki1017093-NIH-Birth        BANGLADESH                     [25-30)       537     56     47      9
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30          537     14      9      5
6 months    ki1017093b-PROVIDE         BANGLADESH                     [18.5-25)     582    370    309     61
6 months    ki1017093b-PROVIDE         BANGLADESH                     <18.5         582    101     81     20
6 months    ki1017093b-PROVIDE         BANGLADESH                     [25-30)       582     92     84      8
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30          582     19     15      4
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [18.5-25)     715    453    363     90
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <18.5         715     67     42     25
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)       715    159    128     31
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30          715     36     32      4
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [18.5-25)    1983   1034    942     92
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <18.5        1983     34     30      4
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)      1983    635    574     61
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30         1983    280    248     32
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)    7109   4850   3997    853
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <18.5        7109    362    285     77
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)      7109   1472   1284    188
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30         7109    425    367     58
6 months    ki1148112-LCNI-5           MALAWI                         [18.5-25)     836    651    414    237
6 months    ki1148112-LCNI-5           MALAWI                         <18.5         836    145     83     62
6 months    ki1148112-LCNI-5           MALAWI                         [25-30)       836     39     31      8
6 months    ki1148112-LCNI-5           MALAWI                         >=30          836      1      1      0
9 months    ki0047075b-MAL-ED          BANGLADESH                     [18.5-25)     234    151    113     38
9 months    ki0047075b-MAL-ED          BANGLADESH                     <18.5         234     30     19     11
9 months    ki0047075b-MAL-ED          BANGLADESH                     [25-30)       234     47     42      5
9 months    ki0047075b-MAL-ED          BANGLADESH                     >=30          234      6      2      4
9 months    ki0047075b-MAL-ED          BRAZIL                         [18.5-25)     198     76     74      2
9 months    ki0047075b-MAL-ED          BRAZIL                         <18.5         198      9      9      0
9 months    ki0047075b-MAL-ED          BRAZIL                         [25-30)       198     75     75      0
9 months    ki0047075b-MAL-ED          BRAZIL                         >=30          198     38     36      2
9 months    ki0047075b-MAL-ED          INDIA                          [18.5-25)     231    135    110     25
9 months    ki0047075b-MAL-ED          INDIA                          <18.5         231     47     35     12
9 months    ki0047075b-MAL-ED          INDIA                          [25-30)       231     39     25     14
9 months    ki0047075b-MAL-ED          INDIA                          >=30          231     10      9      1
9 months    ki0047075b-MAL-ED          NEPAL                          [18.5-25)     231    128    116     12
9 months    ki0047075b-MAL-ED          NEPAL                          <18.5         231      0      0      0
9 months    ki0047075b-MAL-ED          NEPAL                          [25-30)       231     87     81      6
9 months    ki0047075b-MAL-ED          NEPAL                          >=30          231     16     16      0
9 months    ki0047075b-MAL-ED          PERU                           [18.5-25)     255    139    100     39
9 months    ki0047075b-MAL-ED          PERU                           <18.5         255      5      3      2
9 months    ki0047075b-MAL-ED          PERU                           [25-30)       255     95     75     20
9 months    ki0047075b-MAL-ED          PERU                           >=30          255     16     14      2
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [18.5-25)     246    100     78     22
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <18.5         246      7      4      3
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)       246     78     57     21
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30          246     61     54      7
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [18.5-25)     238    165    101     64
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <18.5         238     13      7      6
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)       238     51     34     17
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30          238      9      6      3
9 months    ki1017093-NIH-Birth        BANGLADESH                     [18.5-25)     507    351    223    128
9 months    ki1017093-NIH-Birth        BANGLADESH                     <18.5         507     89     50     39
9 months    ki1017093-NIH-Birth        BANGLADESH                     [25-30)       507     54     44     10
9 months    ki1017093-NIH-Birth        BANGLADESH                     >=30          507     13      9      4
9 months    ki1017093b-PROVIDE         BANGLADESH                     [18.5-25)     604    384    306     78
9 months    ki1017093b-PROVIDE         BANGLADESH                     <18.5         604    106     72     34
9 months    ki1017093b-PROVIDE         BANGLADESH                     [25-30)       604     95     82     13
9 months    ki1017093b-PROVIDE         BANGLADESH                     >=30          604     19     16      3
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     [18.5-25)     706    449    339    110
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     <18.5         706     66     42     24
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)       706    153    126     27
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30          706     38     35      3
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [18.5-25)    1746    902    766    136
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <18.5        1746     22     19      3
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)      1746    562    482     80
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30         1746    260    221     39
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)    6553   4490   3552    938
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       <18.5        6553    345    246     99
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)      6553   1330   1115    215
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30         6553    388    346     42
9 months    ki1148112-LCNI-5           MALAWI                         [18.5-25)     661    517    351    166
9 months    ki1148112-LCNI-5           MALAWI                         <18.5         661    115     69     46
9 months    ki1148112-LCNI-5           MALAWI                         [25-30)       661     29     21      8
9 months    ki1148112-LCNI-5           MALAWI                         >=30          661      0      0      0
12 months   ki0047075b-MAL-ED          BANGLADESH                     [18.5-25)     233    152    104     48
12 months   ki0047075b-MAL-ED          BANGLADESH                     <18.5         233     29     17     12
12 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)       233     47     36     11
12 months   ki0047075b-MAL-ED          BANGLADESH                     >=30          233      5      1      4
12 months   ki0047075b-MAL-ED          BRAZIL                         [18.5-25)     194     74     71      3
12 months   ki0047075b-MAL-ED          BRAZIL                         <18.5         194      9      8      1
12 months   ki0047075b-MAL-ED          BRAZIL                         [25-30)       194     73     73      0
12 months   ki0047075b-MAL-ED          BRAZIL                         >=30          194     38     36      2
12 months   ki0047075b-MAL-ED          INDIA                          [18.5-25)     227    133     90     43
12 months   ki0047075b-MAL-ED          INDIA                          <18.5         227     45     29     16
12 months   ki0047075b-MAL-ED          INDIA                          [25-30)       227     39     25     14
12 months   ki0047075b-MAL-ED          INDIA                          >=30          227     10      9      1
12 months   ki0047075b-MAL-ED          NEPAL                          [18.5-25)     231    128    110     18
12 months   ki0047075b-MAL-ED          NEPAL                          <18.5         231      0      0      0
12 months   ki0047075b-MAL-ED          NEPAL                          [25-30)       231     87     80      7
12 months   ki0047075b-MAL-ED          NEPAL                          >=30          231     16     15      1
12 months   ki0047075b-MAL-ED          PERU                           [18.5-25)     245    132     96     36
12 months   ki0047075b-MAL-ED          PERU                           <18.5         245      5      2      3
12 months   ki0047075b-MAL-ED          PERU                           [25-30)       245     92     67     25
12 months   ki0047075b-MAL-ED          PERU                           >=30          245     16     12      4
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [18.5-25)     248    102     74     28
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <18.5         248      7      5      2
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)       248     77     57     20
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30          248     62     52     10
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [18.5-25)     231    160     72     88
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <18.5         231     13      5      8
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)       231     49     26     23
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30          231      9      3      6
12 months   ki1017093-NIH-Birth        BANGLADESH                     [18.5-25)     491    339    216    123
12 months   ki1017093-NIH-Birth        BANGLADESH                     <18.5         491     89     44     45
12 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)       491     54     41     13
12 months   ki1017093-NIH-Birth        BANGLADESH                     >=30          491      9      6      3
12 months   ki1017093b-PROVIDE         BANGLADESH                     [18.5-25)     600    380    280    100
12 months   ki1017093b-PROVIDE         BANGLADESH                     <18.5         600    106     65     41
12 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)       600     95     83     12
12 months   ki1017093b-PROVIDE         BANGLADESH                     >=30          600     19     15      4
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     [18.5-25)     706    450    340    110
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     <18.5         706     64     37     27
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)       706    155    125     30
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30          706     37     33      4
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [18.5-25)    1414    736    612    124
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <18.5        1414     20     14      6
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)      1414    453    381     72
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30         1414    205    174     31
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)    5781   4019   3000   1019
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       <18.5        5781    322    215    107
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)      5781   1115    865    250
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30         5781    325    274     51
12 months   ki1148112-LCNI-5           MALAWI                         [18.5-25)     624    487    298    189
12 months   ki1148112-LCNI-5           MALAWI                         <18.5         624    106     58     48
12 months   ki1148112-LCNI-5           MALAWI                         [25-30)       624     30     21      9
12 months   ki1148112-LCNI-5           MALAWI                         >=30          624      1      1      0
18 months   ki0047075b-MAL-ED          BANGLADESH                     [18.5-25)     221    142     72     70
18 months   ki0047075b-MAL-ED          BANGLADESH                     <18.5         221     29      9     20
18 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)       221     46     34     12
18 months   ki0047075b-MAL-ED          BANGLADESH                     >=30          221      4      1      3
18 months   ki0047075b-MAL-ED          BRAZIL                         [18.5-25)     179     68     64      4
18 months   ki0047075b-MAL-ED          BRAZIL                         <18.5         179      7      7      0
18 months   ki0047075b-MAL-ED          BRAZIL                         [25-30)       179     69     68      1
18 months   ki0047075b-MAL-ED          BRAZIL                         >=30          179     35     33      2
18 months   ki0047075b-MAL-ED          INDIA                          [18.5-25)     227    133     72     61
18 months   ki0047075b-MAL-ED          INDIA                          <18.5         227     46     25     21
18 months   ki0047075b-MAL-ED          INDIA                          [25-30)       227     39     21     18
18 months   ki0047075b-MAL-ED          INDIA                          >=30          227      9      6      3
18 months   ki0047075b-MAL-ED          NEPAL                          [18.5-25)     229    128     99     29
18 months   ki0047075b-MAL-ED          NEPAL                          <18.5         229      0      0      0
18 months   ki0047075b-MAL-ED          NEPAL                          [25-30)       229     86     72     14
18 months   ki0047075b-MAL-ED          NEPAL                          >=30          229     15     13      2
18 months   ki0047075b-MAL-ED          PERU                           [18.5-25)     222    119     65     54
18 months   ki0047075b-MAL-ED          PERU                           <18.5         222      5      2      3
18 months   ki0047075b-MAL-ED          PERU                           [25-30)       222     82     47     35
18 months   ki0047075b-MAL-ED          PERU                           >=30          222     16      9      7
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [18.5-25)     237     94     56     38
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <18.5         237      7      3      4
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)       237     74     48     26
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30          237     62     50     12
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [18.5-25)     225    159     45    114
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <18.5         225     12      3      9
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)       225     46     18     28
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30          225      8      3      5
18 months   ki1017093-NIH-Birth        BANGLADESH                     [18.5-25)     463    319    133    186
18 months   ki1017093-NIH-Birth        BANGLADESH                     <18.5         463     83     20     63
18 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)       463     51     33     18
18 months   ki1017093-NIH-Birth        BANGLADESH                     >=30          463     10      5      5
18 months   ki1017093b-PROVIDE         BANGLADESH                     [18.5-25)     552    350    217    133
18 months   ki1017093b-PROVIDE         BANGLADESH                     <18.5         552     96     51     45
18 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)       552     88     65     23
18 months   ki1017093b-PROVIDE         BANGLADESH                     >=30          552     18     13      5
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     [18.5-25)     634    399    278    121
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     <18.5         634     59     31     28
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)       634    142    104     38
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30          634     34     30      4
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [18.5-25)     960    507    377    130
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <18.5         960      6      4      2
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)       960    314    242     72
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30          960    133    107     26
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)    1421   1027    523    504
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       <18.5        1421     86     45     41
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)      1421    256    144    112
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30         1421     52     29     23
18 months   ki1148112-LCNI-5           MALAWI                         [18.5-25)     722    571    320    251
18 months   ki1148112-LCNI-5           MALAWI                         <18.5         722    117     51     66
18 months   ki1148112-LCNI-5           MALAWI                         [25-30)       722     33     20     13
18 months   ki1148112-LCNI-5           MALAWI                         >=30          722      1      1      0
24 months   ki0047075b-MAL-ED          BANGLADESH                     [18.5-25)     212    134     69     65
24 months   ki0047075b-MAL-ED          BANGLADESH                     <18.5         212     29     10     19
24 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)       212     45     34     11
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30          212      4      1      3
24 months   ki0047075b-MAL-ED          BRAZIL                         [18.5-25)     168     62     59      3
24 months   ki0047075b-MAL-ED          BRAZIL                         <18.5         168      6      5      1
24 months   ki0047075b-MAL-ED          BRAZIL                         [25-30)       168     66     66      0
24 months   ki0047075b-MAL-ED          BRAZIL                         >=30          168     34     32      2
24 months   ki0047075b-MAL-ED          INDIA                          [18.5-25)     226    133     75     58
24 months   ki0047075b-MAL-ED          INDIA                          <18.5         226     46     28     18
24 months   ki0047075b-MAL-ED          INDIA                          [25-30)       226     38     23     15
24 months   ki0047075b-MAL-ED          INDIA                          >=30          226      9      6      3
24 months   ki0047075b-MAL-ED          NEPAL                          [18.5-25)     228    127     93     34
24 months   ki0047075b-MAL-ED          NEPAL                          <18.5         228      0      0      0
24 months   ki0047075b-MAL-ED          NEPAL                          [25-30)       228     85     70     15
24 months   ki0047075b-MAL-ED          NEPAL                          >=30          228     16     16      0
24 months   ki0047075b-MAL-ED          PERU                           [18.5-25)     201    106     62     44
24 months   ki0047075b-MAL-ED          PERU                           <18.5         201      4      2      2
24 months   ki0047075b-MAL-ED          PERU                           [25-30)       201     75     50     25
24 months   ki0047075b-MAL-ED          PERU                           >=30          201     16     13      3
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [18.5-25)     234     92     54     38
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <18.5         234      7      2      5
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)       234     75     49     26
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30          234     60     47     13
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [18.5-25)     214    148     37    111
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <18.5         214     11      3      8
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)       214     47     18     29
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30          214      8      3      5
24 months   ki1017093-NIH-Birth        BANGLADESH                     [18.5-25)     429    292    130    162
24 months   ki1017093-NIH-Birth        BANGLADESH                     <18.5         429     80     23     57
24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)       429     48     34     14
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30          429      9      4      5
24 months   ki1017093b-PROVIDE         BANGLADESH                     [18.5-25)     576    364    237    127
24 months   ki1017093b-PROVIDE         BANGLADESH                     <18.5         576    100     58     42
24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)       576     93     76     17
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30          576     19     16      3
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [18.5-25)     514    323    235     88
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <18.5         514     43     27     16
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)       514    122     97     25
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30          514     26     23      3
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [18.5-25)       6      2      2      0
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <18.5           6      0      0      0
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)         6      2      2      0
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30            6      2      1      1
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)     377    270     85    185
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <18.5         377     25      8     17
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)       377     64     28     36
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30          377     18      7     11
24 months   ki1148112-LCNI-5           MALAWI                         [18.5-25)     577    450    252    198
24 months   ki1148112-LCNI-5           MALAWI                         <18.5         577     95     49     46
24 months   ki1148112-LCNI-5           MALAWI                         [25-30)       577     31     21     10
24 months   ki1148112-LCNI-5           MALAWI                         >=30          577      1      1      0


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
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 9 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 9 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 9 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 9 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
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
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 9 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 9 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 9 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9 months, studyid: ki1148112-LCNI-5, country: MALAWI
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
* agecat: 12 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 18 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
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
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/e7256801-1b65-43e5-ab0a-13d893d7d2d5/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->


```
## Warning: Removed 11 rows containing missing values (geom_errorbar).
```

![](/tmp/e7256801-1b65-43e5-ab0a-13d893d7d2d5/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/e7256801-1b65-43e5-ab0a-13d893d7d2d5/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/e7256801-1b65-43e5-ab0a-13d893d7d2d5/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)            NA                0.1039709   0.0966058   0.1113360
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <18.5                NA                0.1529412   0.1217016   0.1841807
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              NA                0.0737705   0.0621739   0.0853671
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.0836237   0.0609764   0.1062710
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)            NA                0.1943030   0.1836512   0.2049548
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       <18.5                NA                0.2390746   0.1966869   0.2814622
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              NA                0.1353712   0.1186222   0.1521201
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.1179039   0.0883670   0.1474409
6 months    ki1017093-NIH-Birth        BANGLADESH                     [18.5-25)            NA                0.2540107   0.2098527   0.2981687
6 months    ki1017093-NIH-Birth        BANGLADESH                     <18.5                NA                0.3763441   0.2777896   0.4748986
6 months    ki1017093-NIH-Birth        BANGLADESH                     [25-30)              NA                0.1607143   0.0644332   0.2569954
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                0.3571429   0.1059154   0.6083703
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)            NA                0.1758763   0.1651609   0.1865917
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <18.5                NA                0.2127072   0.1705488   0.2548655
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              NA                0.1277174   0.1106653   0.1447695
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.1364706   0.1038312   0.1691100
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)            NA                0.2089087   0.1970168   0.2208005
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       <18.5                NA                0.2869565   0.2392214   0.3346916
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              NA                0.1616541   0.1418680   0.1814402
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.1082474   0.0773305   0.1391644
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [18.5-25)            NA                0.1684783   0.1414280   0.1955285
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <18.5                NA                0.3000000   0.0990924   0.5009076
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                0.1589404   0.1252595   0.1926213
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.1512195   0.1021596   0.2002794
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)            NA                0.2535457   0.2400946   0.2669967
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       <18.5                NA                0.3322981   0.2808449   0.3837514
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              NA                0.2242152   0.1997330   0.2486975
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.1569231   0.1173754   0.1964708
18 months   ki1017093-NIH-Birth        BANGLADESH                     [18.5-25)            NA                0.5830721   0.5289077   0.6372365
18 months   ki1017093-NIH-Birth        BANGLADESH                     <18.5                NA                0.7590361   0.6669306   0.8511417
18 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)              NA                0.3529412   0.2216439   0.4842384
18 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                0.5000000   0.1897673   0.8102327
18 months   ki1017093b-PROVIDE         BANGLADESH                     [18.5-25)            NA                0.3800000   0.3291026   0.4308974
18 months   ki1017093b-PROVIDE         BANGLADESH                     <18.5                NA                0.4687500   0.3688360   0.5686640
18 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)              NA                0.2613636   0.1694799   0.3532473
18 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                0.2777778   0.0706732   0.4848824
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)            NA                0.4907498   0.4601646   0.5213350
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       <18.5                NA                0.4767442   0.3711472   0.5823412
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              NA                0.4375000   0.3767101   0.4982899
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.4423077   0.3072688   0.5773466
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)            NA                0.6851852   0.6297131   0.7406573
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <18.5                NA                0.6800000   0.4969017   0.8630983
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              NA                0.5625000   0.4408015   0.6841985
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.6111111   0.3856034   0.8366188


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0992319   0.0988781   0.0995857
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1798478   0.1791598   0.1805357
6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2681564   0.2630935   0.2732194
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1654241   0.1648875   0.1659608
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1974668   0.1966131   0.1983205
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1647808   0.1638727   0.1656889
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2468431   0.2460314   0.2476548
18 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.5874730   0.5776885   0.5972575
18 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3731884   0.3679687   0.3784081
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.4785362   0.4774214   0.4796511
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.6604775   0.6557274   0.6652275


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)            [18.5-25)         1.0000000   1.0000000   1.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <18.5                [18.5-25)         1.4709998   1.1850072   1.8260147
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              [18.5-25)         0.7095302   0.5971573   0.8430493
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [18.5-25)         0.8042990   0.6079156   1.0641230
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)            [18.5-25)         1.0000000   1.0000000   1.0000000
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       <18.5                [18.5-25)         1.2304215   1.0220151   1.4813256
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              [18.5-25)         0.6967016   0.6085202   0.7976615
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [18.5-25)         0.6068046   0.4695439   0.7841904
6 months    ki1017093-NIH-Birth        BANGLADESH                     [18.5-25)            [18.5-25)         1.0000000   1.0000000   1.0000000
6 months    ki1017093-NIH-Birth        BANGLADESH                     <18.5                [18.5-25)         1.4816072   1.0819925   2.0288125
6 months    ki1017093-NIH-Birth        BANGLADESH                     [25-30)              [18.5-25)         0.6327068   0.3390716   1.1806291
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                 [18.5-25)         1.4060150   0.6812403   2.9018811
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)            [18.5-25)         1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <18.5                [18.5-25)         1.2094136   0.9829312   1.4880811
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              [18.5-25)         0.7261774   0.6270560   0.8409674
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [18.5-25)         0.7759465   0.6062408   0.9931580
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)            [18.5-25)         1.0000000   1.0000000   1.0000000
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       <18.5                [18.5-25)         1.3735978   1.1521318   1.6376347
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              [18.5-25)         0.7738028   0.6760925   0.8856344
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [18.5-25)         0.5181566   0.3872408   0.6933316
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [18.5-25)            [18.5-25)         1.0000000   1.0000000   1.0000000
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <18.5                [18.5-25)         1.7806452   0.8943181   3.5453798
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              [18.5-25)         0.9433882   0.7231479   1.2307042
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [18.5-25)         0.8975610   0.6249662   1.2890548
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)            [18.5-25)         1.0000000   1.0000000   1.0000000
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       <18.5                [18.5-25)         1.3106047   1.1127248   1.5436744
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              [18.5-25)         0.8843190   0.7832260   0.9984604
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [18.5-25)         0.6189145   0.4783890   0.8007189
18 months   ki1017093-NIH-Birth        BANGLADESH                     [18.5-25)            [18.5-25)         1.0000000   1.0000000   1.0000000
18 months   ki1017093-NIH-Birth        BANGLADESH                     <18.5                [18.5-25)         1.3017878   1.1173032   1.5167338
18 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)              [18.5-25)         0.6053131   0.4125321   0.8881829
18 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 [18.5-25)         0.8575269   0.4579095   1.6058901
18 months   ki1017093b-PROVIDE         BANGLADESH                     [18.5-25)            [18.5-25)         1.0000000   1.0000000   1.0000000
18 months   ki1017093b-PROVIDE         BANGLADESH                     <18.5                [18.5-25)         1.2335526   0.9590218   1.5866710
18 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)              [18.5-25)         0.6877990   0.4721472   1.0019493
18 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 [18.5-25)         0.7309942   0.3427130   1.5591834
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)            [18.5-25)         1.0000000   1.0000000   1.0000000
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       <18.5                [18.5-25)         0.9714609   0.7717833   1.2227995
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              [18.5-25)         0.8914931   0.7655636   1.0381370
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [18.5-25)         0.9012897   0.6599903   1.2308107
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)            [18.5-25)         1.0000000   1.0000000   1.0000000
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <18.5                [18.5-25)         0.9924324   0.7491873   1.3146541
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              [18.5-25)         0.8209459   0.6516144   1.0342807
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [18.5-25)         0.8918919   0.6112803   1.3013197


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)            NA                -0.0047390   -0.0121127    0.0026346
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)            NA                -0.0144552   -0.0251292   -0.0037812
6 months    ki1017093-NIH-Birth        BANGLADESH                     [18.5-25)            NA                 0.0141457   -0.0303016    0.0585930
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)            NA                -0.0104522   -0.0211810    0.0002766
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)            NA                -0.0114419   -0.0233643    0.0004806
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [18.5-25)            NA                -0.0036975   -0.0307630    0.0233680
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)            NA                -0.0067026   -0.0201781    0.0067730
18 months   ki1017093-NIH-Birth        BANGLADESH                     [18.5-25)            NA                 0.0044009   -0.0506402    0.0594420
18 months   ki1017093b-PROVIDE         BANGLADESH                     [18.5-25)            NA                -0.0068116   -0.0579759    0.0443527
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)            NA                -0.0122135   -0.0428190    0.0183920
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)            NA                -0.0247077   -0.0803828    0.0309674


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)            NA                -0.0477570   -0.1247715    0.0239843
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)            NA                -0.0803746   -0.1414070   -0.0226058
6 months    ki1017093-NIH-Birth        BANGLADESH                     [18.5-25)            NA                 0.0527518   -0.1282539    0.2047187
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)            NA                -0.0631841   -0.1300708   -0.0002564
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)            NA                -0.0579433   -0.1200960    0.0007606
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [18.5-25)            NA                -0.0224389   -0.2006245    0.1293020
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)            NA                -0.0271531   -0.0832270    0.0260182
18 months   ki1017093-NIH-Birth        BANGLADESH                     [18.5-25)            NA                 0.0074912   -0.0907403    0.0968761
18 months   ki1017093b-PROVIDE         BANGLADESH                     [18.5-25)            NA                -0.0182524   -0.1650414    0.1100419
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)            NA                -0.0255227   -0.0915179    0.0364824
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)            NA                -0.0374089   -0.1252489    0.0435741
