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
Birth       ki0047075b-MAL-ED          BANGLADESH                     [18.5-25)     246    158    153      5
Birth       ki0047075b-MAL-ED          BANGLADESH                     <18.5         246     30     29      1
Birth       ki0047075b-MAL-ED          BANGLADESH                     [25-30)       246     52     51      1
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=30          246      6      6      0
Birth       ki0047075b-MAL-ED          BRAZIL                         [18.5-25)     184     70     68      2
Birth       ki0047075b-MAL-ED          BRAZIL                         <18.5         184      9      9      0
Birth       ki0047075b-MAL-ED          BRAZIL                         [25-30)       184     69     64      5
Birth       ki0047075b-MAL-ED          BRAZIL                         >=30          184     36     35      1
Birth       ki0047075b-MAL-ED          INDIA                          [18.5-25)     198    117    112      5
Birth       ki0047075b-MAL-ED          INDIA                          <18.5         198     39     37      2
Birth       ki0047075b-MAL-ED          INDIA                          [25-30)       198     32     32      0
Birth       ki0047075b-MAL-ED          INDIA                          >=30          198     10     10      0
Birth       ki0047075b-MAL-ED          NEPAL                          [18.5-25)     172     99     94      5
Birth       ki0047075b-MAL-ED          NEPAL                          <18.5         172      0      0      0
Birth       ki0047075b-MAL-ED          NEPAL                          [25-30)       172     62     61      1
Birth       ki0047075b-MAL-ED          NEPAL                          >=30          172     11     11      0
Birth       ki0047075b-MAL-ED          PERU                           [18.5-25)     276    149    147      2
Birth       ki0047075b-MAL-ED          PERU                           <18.5         276      5      4      1
Birth       ki0047075b-MAL-ED          PERU                           [25-30)       276    106    102      4
Birth       ki0047075b-MAL-ED          PERU                           >=30          276     16     16      0
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [18.5-25)     228     96     95      1
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <18.5         228      5      5      0
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)       228     70     70      0
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=30          228     57     57      0
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [18.5-25)     121     81     76      5
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <18.5         121      7      7      0
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)       121     29     28      1
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30          121      4      4      0
Birth       ki1017093-NIH-Birth        BANGLADESH                     [18.5-25)      28     23     23      0
Birth       ki1017093-NIH-Birth        BANGLADESH                     <18.5          28      5      5      0
Birth       ki1017093-NIH-Birth        BANGLADESH                     [25-30)        28      0      0      0
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=30           28      0      0      0
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [18.5-25)      27     17     16      1
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <18.5          27      6      6      0
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)        27      4      4      0
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=30           27      0      0      0
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)    9634   6598   6394    204
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <18.5        9634    510    484     26
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)      9634   1952   1909     43
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=30         9634    574    564     10
3 months    ki0047075b-MAL-ED          BANGLADESH                     [18.5-25)     250    160    155      5
3 months    ki0047075b-MAL-ED          BANGLADESH                     <18.5         250     32     31      1
3 months    ki0047075b-MAL-ED          BANGLADESH                     [25-30)       250     52     51      1
3 months    ki0047075b-MAL-ED          BANGLADESH                     >=30          250      6      6      0
3 months    ki0047075b-MAL-ED          BRAZIL                         [18.5-25)     221     88     87      1
3 months    ki0047075b-MAL-ED          BRAZIL                         <18.5         221     10     10      0
3 months    ki0047075b-MAL-ED          BRAZIL                         [25-30)       221     82     82      0
3 months    ki0047075b-MAL-ED          BRAZIL                         >=30          221     41     41      0
3 months    ki0047075b-MAL-ED          INDIA                          [18.5-25)     240    141    134      7
3 months    ki0047075b-MAL-ED          INDIA                          <18.5         240     49     47      2
3 months    ki0047075b-MAL-ED          INDIA                          [25-30)       240     39     38      1
3 months    ki0047075b-MAL-ED          INDIA                          >=30          240     11     10      1
3 months    ki0047075b-MAL-ED          NEPAL                          [18.5-25)     236    132    129      3
3 months    ki0047075b-MAL-ED          NEPAL                          <18.5         236      0      0      0
3 months    ki0047075b-MAL-ED          NEPAL                          [25-30)       236     87     87      0
3 months    ki0047075b-MAL-ED          NEPAL                          >=30          236     17     17      0
3 months    ki0047075b-MAL-ED          PERU                           [18.5-25)     289    158    146     12
3 months    ki0047075b-MAL-ED          PERU                           <18.5         289      5      3      2
3 months    ki0047075b-MAL-ED          PERU                           [25-30)       289    109    104      5
3 months    ki0047075b-MAL-ED          PERU                           >=30          289     17     16      1
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [18.5-25)     269    108    104      4
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <18.5         269      8      6      2
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)       269     87     85      2
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30          269     66     64      2
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [18.5-25)     254    176    166     10
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <18.5         254     13     12      1
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)       254     53     51      2
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30          254     12     12      0
3 months    ki1017093-NIH-Birth        BANGLADESH                     [18.5-25)     570    403    383     20
3 months    ki1017093-NIH-Birth        BANGLADESH                     <18.5         570     95     86      9
3 months    ki1017093-NIH-Birth        BANGLADESH                     [25-30)       570     58     54      4
3 months    ki1017093-NIH-Birth        BANGLADESH                     >=30          570     14     14      0
3 months    ki1017093b-PROVIDE         BANGLADESH                     [18.5-25)     644    408    402      6
3 months    ki1017093b-PROVIDE         BANGLADESH                     <18.5         644    119    118      1
3 months    ki1017093b-PROVIDE         BANGLADESH                     [25-30)       644     97     96      1
3 months    ki1017093b-PROVIDE         BANGLADESH                     >=30          644     20     18      2
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     [18.5-25)     728    464    444     20
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     <18.5         728     67     61      6
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)       728    159    152      7
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30          728     38     38      0
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [18.5-25)    2243   1175   1162     13
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <18.5        2243     36     34      2
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)      2243    712    706      6
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30         2243    320    318      2
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)    7751   5301   4971    330
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       <18.5        7751    389    356     33
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)      7751   1603   1530     73
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30         7751    458    443     15
6 months    ki0047075b-MAL-ED          BANGLADESH                     [18.5-25)     241    153    148      5
6 months    ki0047075b-MAL-ED          BANGLADESH                     <18.5         241     32     30      2
6 months    ki0047075b-MAL-ED          BANGLADESH                     [25-30)       241     50     50      0
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30          241      6      5      1
6 months    ki0047075b-MAL-ED          BRAZIL                         [18.5-25)     208     81     81      0
6 months    ki0047075b-MAL-ED          BRAZIL                         <18.5         208      9      9      0
6 months    ki0047075b-MAL-ED          BRAZIL                         [25-30)       208     78     78      0
6 months    ki0047075b-MAL-ED          BRAZIL                         >=30          208     40     40      0
6 months    ki0047075b-MAL-ED          INDIA                          [18.5-25)     235    137    132      5
6 months    ki0047075b-MAL-ED          INDIA                          <18.5         235     49     46      3
6 months    ki0047075b-MAL-ED          INDIA                          [25-30)       235     39     38      1
6 months    ki0047075b-MAL-ED          INDIA                          >=30          235     10     10      0
6 months    ki0047075b-MAL-ED          NEPAL                          [18.5-25)     236    133    132      1
6 months    ki0047075b-MAL-ED          NEPAL                          <18.5         236      0      0      0
6 months    ki0047075b-MAL-ED          NEPAL                          [25-30)       236     87     87      0
6 months    ki0047075b-MAL-ED          NEPAL                          >=30          236     16     16      0
6 months    ki0047075b-MAL-ED          PERU                           [18.5-25)     272    149    143      6
6 months    ki0047075b-MAL-ED          PERU                           <18.5         272      5      3      2
6 months    ki0047075b-MAL-ED          PERU                           [25-30)       272    102     98      4
6 months    ki0047075b-MAL-ED          PERU                           >=30          272     16     16      0
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [18.5-25)     249     99     96      3
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <18.5         249      7      6      1
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)       249     79     78      1
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30          249     64     63      1
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [18.5-25)     247    170    162      8
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <18.5         247     14     12      2
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)       247     52     49      3
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30          247     11     10      1
6 months    ki1017093-NIH-Birth        BANGLADESH                     [18.5-25)     537    374    351     23
6 months    ki1017093-NIH-Birth        BANGLADESH                     <18.5         537     93     83     10
6 months    ki1017093-NIH-Birth        BANGLADESH                     [25-30)       537     56     55      1
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30          537     14     13      1
6 months    ki1017093b-PROVIDE         BANGLADESH                     [18.5-25)     582    370    361      9
6 months    ki1017093b-PROVIDE         BANGLADESH                     <18.5         582    101     99      2
6 months    ki1017093b-PROVIDE         BANGLADESH                     [25-30)       582     92     90      2
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30          582     19     18      1
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [18.5-25)     715    453    441     12
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <18.5         715     67     61      6
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)       715    159    154      5
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30          715     36     36      0
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [18.5-25)    1983   1034   1023     11
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <18.5        1983     34     34      0
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)      1983    635    630      5
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30         1983    280    277      3
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)    7109   4850   4644    206
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <18.5        7109    362    345     17
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)      7109   1472   1425     47
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30         7109    425    410     15
6 months    ki1148112-LCNI-5           MALAWI                         [18.5-25)     836    651    592     59
6 months    ki1148112-LCNI-5           MALAWI                         <18.5         836    145    135     10
6 months    ki1148112-LCNI-5           MALAWI                         [25-30)       836     39     37      2
6 months    ki1148112-LCNI-5           MALAWI                         >=30          836      1      1      0
9 months    ki0047075b-MAL-ED          BANGLADESH                     [18.5-25)     234    151    145      6
9 months    ki0047075b-MAL-ED          BANGLADESH                     <18.5         234     30     26      4
9 months    ki0047075b-MAL-ED          BANGLADESH                     [25-30)       234     47     47      0
9 months    ki0047075b-MAL-ED          BANGLADESH                     >=30          234      6      5      1
9 months    ki0047075b-MAL-ED          BRAZIL                         [18.5-25)     198     76     76      0
9 months    ki0047075b-MAL-ED          BRAZIL                         <18.5         198      9      9      0
9 months    ki0047075b-MAL-ED          BRAZIL                         [25-30)       198     75     75      0
9 months    ki0047075b-MAL-ED          BRAZIL                         >=30          198     38     38      0
9 months    ki0047075b-MAL-ED          INDIA                          [18.5-25)     231    135    128      7
9 months    ki0047075b-MAL-ED          INDIA                          <18.5         231     47     45      2
9 months    ki0047075b-MAL-ED          INDIA                          [25-30)       231     39     38      1
9 months    ki0047075b-MAL-ED          INDIA                          >=30          231     10     10      0
9 months    ki0047075b-MAL-ED          NEPAL                          [18.5-25)     231    128    127      1
9 months    ki0047075b-MAL-ED          NEPAL                          <18.5         231      0      0      0
9 months    ki0047075b-MAL-ED          NEPAL                          [25-30)       231     87     87      0
9 months    ki0047075b-MAL-ED          NEPAL                          >=30          231     16     16      0
9 months    ki0047075b-MAL-ED          PERU                           [18.5-25)     255    139    130      9
9 months    ki0047075b-MAL-ED          PERU                           <18.5         255      5      4      1
9 months    ki0047075b-MAL-ED          PERU                           [25-30)       255     95     93      2
9 months    ki0047075b-MAL-ED          PERU                           >=30          255     16     16      0
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [18.5-25)     246    100     96      4
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <18.5         246      7      6      1
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)       246     78     75      3
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30          246     61     60      1
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [18.5-25)     238    165    146     19
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <18.5         238     13     10      3
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)       238     51     45      6
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30          238      9      8      1
9 months    ki1017093-NIH-Birth        BANGLADESH                     [18.5-25)     507    351    322     29
9 months    ki1017093-NIH-Birth        BANGLADESH                     <18.5         507     89     75     14
9 months    ki1017093-NIH-Birth        BANGLADESH                     [25-30)       507     54     53      1
9 months    ki1017093-NIH-Birth        BANGLADESH                     >=30          507     13     12      1
9 months    ki1017093b-PROVIDE         BANGLADESH                     [18.5-25)     604    384    369     15
9 months    ki1017093b-PROVIDE         BANGLADESH                     <18.5         604    106     99      7
9 months    ki1017093b-PROVIDE         BANGLADESH                     [25-30)       604     95     94      1
9 months    ki1017093b-PROVIDE         BANGLADESH                     >=30          604     19     18      1
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     [18.5-25)     706    449    434     15
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     <18.5         706     66     60      6
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)       706    153    146      7
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30          706     38     38      0
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [18.5-25)    1746    902    879     23
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <18.5        1746     22     22      0
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)      1746    562    556      6
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30         1746    260    257      3
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)    6553   4490   4262    228
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       <18.5        6553    345    320     25
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)      6553   1330   1282     48
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30         6553    388    381      7
9 months    ki1148112-LCNI-5           MALAWI                         [18.5-25)     661    517    475     42
9 months    ki1148112-LCNI-5           MALAWI                         <18.5         661    115    111      4
9 months    ki1148112-LCNI-5           MALAWI                         [25-30)       661     29     28      1
9 months    ki1148112-LCNI-5           MALAWI                         >=30          661      0      0      0
12 months   ki0047075b-MAL-ED          BANGLADESH                     [18.5-25)     233    152    142     10
12 months   ki0047075b-MAL-ED          BANGLADESH                     <18.5         233     29     23      6
12 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)       233     47     47      0
12 months   ki0047075b-MAL-ED          BANGLADESH                     >=30          233      5      4      1
12 months   ki0047075b-MAL-ED          BRAZIL                         [18.5-25)     194     74     74      0
12 months   ki0047075b-MAL-ED          BRAZIL                         <18.5         194      9      9      0
12 months   ki0047075b-MAL-ED          BRAZIL                         [25-30)       194     73     73      0
12 months   ki0047075b-MAL-ED          BRAZIL                         >=30          194     38     38      0
12 months   ki0047075b-MAL-ED          INDIA                          [18.5-25)     227    133    119     14
12 months   ki0047075b-MAL-ED          INDIA                          <18.5         227     45     43      2
12 months   ki0047075b-MAL-ED          INDIA                          [25-30)       227     39     37      2
12 months   ki0047075b-MAL-ED          INDIA                          >=30          227     10     10      0
12 months   ki0047075b-MAL-ED          NEPAL                          [18.5-25)     231    128    124      4
12 months   ki0047075b-MAL-ED          NEPAL                          <18.5         231      0      0      0
12 months   ki0047075b-MAL-ED          NEPAL                          [25-30)       231     87     86      1
12 months   ki0047075b-MAL-ED          NEPAL                          >=30          231     16     16      0
12 months   ki0047075b-MAL-ED          PERU                           [18.5-25)     245    132    124      8
12 months   ki0047075b-MAL-ED          PERU                           <18.5         245      5      4      1
12 months   ki0047075b-MAL-ED          PERU                           [25-30)       245     92     88      4
12 months   ki0047075b-MAL-ED          PERU                           >=30          245     16     16      0
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [18.5-25)     248    102     95      7
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <18.5         248      7      6      1
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)       248     77     74      3
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30          248     62     61      1
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [18.5-25)     231    160    133     27
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <18.5         231     13     10      3
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)       231     49     44      5
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30          231      9      7      2
12 months   ki1017093-NIH-Birth        BANGLADESH                     [18.5-25)     491    339    310     29
12 months   ki1017093-NIH-Birth        BANGLADESH                     <18.5         491     89     76     13
12 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)       491     54     48      6
12 months   ki1017093-NIH-Birth        BANGLADESH                     >=30          491      9      9      0
12 months   ki1017093b-PROVIDE         BANGLADESH                     [18.5-25)     600    380    356     24
12 months   ki1017093b-PROVIDE         BANGLADESH                     <18.5         600    106     94     12
12 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)       600     95     95      0
12 months   ki1017093b-PROVIDE         BANGLADESH                     >=30          600     19     19      0
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     [18.5-25)     706    450    425     25
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     <18.5         706     64     58      6
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)       706    155    145     10
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30          706     37     37      0
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [18.5-25)    1414    736    719     17
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <18.5        1414     20     20      0
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)      1414    453    441     12
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30         1414    205    203      2
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)    5781   4019   3753    266
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       <18.5        5781    322    291     31
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)      5781   1115   1057     58
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30         5781    325    318      7
12 months   ki1148112-LCNI-5           MALAWI                         [18.5-25)     624    487    432     55
12 months   ki1148112-LCNI-5           MALAWI                         <18.5         624    106     97      9
12 months   ki1148112-LCNI-5           MALAWI                         [25-30)       624     30     27      3
12 months   ki1148112-LCNI-5           MALAWI                         >=30          624      1      1      0
18 months   ki0047075b-MAL-ED          BANGLADESH                     [18.5-25)     221    142    119     23
18 months   ki0047075b-MAL-ED          BANGLADESH                     <18.5         221     29     22      7
18 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)       221     46     45      1
18 months   ki0047075b-MAL-ED          BANGLADESH                     >=30          221      4      4      0
18 months   ki0047075b-MAL-ED          BRAZIL                         [18.5-25)     179     68     68      0
18 months   ki0047075b-MAL-ED          BRAZIL                         <18.5         179      7      7      0
18 months   ki0047075b-MAL-ED          BRAZIL                         [25-30)       179     69     69      0
18 months   ki0047075b-MAL-ED          BRAZIL                         >=30          179     35     35      0
18 months   ki0047075b-MAL-ED          INDIA                          [18.5-25)     227    133    113     20
18 months   ki0047075b-MAL-ED          INDIA                          <18.5         227     46     40      6
18 months   ki0047075b-MAL-ED          INDIA                          [25-30)       227     39     33      6
18 months   ki0047075b-MAL-ED          INDIA                          >=30          227      9      9      0
18 months   ki0047075b-MAL-ED          NEPAL                          [18.5-25)     229    128    123      5
18 months   ki0047075b-MAL-ED          NEPAL                          <18.5         229      0      0      0
18 months   ki0047075b-MAL-ED          NEPAL                          [25-30)       229     86     84      2
18 months   ki0047075b-MAL-ED          NEPAL                          >=30          229     15     15      0
18 months   ki0047075b-MAL-ED          PERU                           [18.5-25)     222    119    107     12
18 months   ki0047075b-MAL-ED          PERU                           <18.5         222      5      3      2
18 months   ki0047075b-MAL-ED          PERU                           [25-30)       222     82     76      6
18 months   ki0047075b-MAL-ED          PERU                           >=30          222     16     16      0
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [18.5-25)     237     94     82     12
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <18.5         237      7      6      1
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)       237     74     66      8
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30          237     62     57      5
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [18.5-25)     225    159    109     50
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <18.5         225     12      8      4
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)       225     46     34     12
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30          225      8      5      3
18 months   ki1017093-NIH-Birth        BANGLADESH                     [18.5-25)     463    319    253     66
18 months   ki1017093-NIH-Birth        BANGLADESH                     <18.5         463     83     56     27
18 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)       463     51     46      5
18 months   ki1017093-NIH-Birth        BANGLADESH                     >=30          463     10      7      3
18 months   ki1017093b-PROVIDE         BANGLADESH                     [18.5-25)     552    350    317     33
18 months   ki1017093b-PROVIDE         BANGLADESH                     <18.5         552     96     74     22
18 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)       552     88     86      2
18 months   ki1017093b-PROVIDE         BANGLADESH                     >=30          552     18     18      0
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     [18.5-25)     634    399    370     29
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     <18.5         634     59     52      7
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)       634    142    136      6
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30          634     34     34      0
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [18.5-25)     960    507    483     24
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <18.5         960      6      6      0
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)       960    314    302     12
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30          960    133    130      3
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)    1421   1027    845    182
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       <18.5        1421     86     74     12
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)      1421    256    215     41
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30         1421     52     46      6
18 months   ki1148112-LCNI-5           MALAWI                         [18.5-25)     722    571    493     78
18 months   ki1148112-LCNI-5           MALAWI                         <18.5         722    117    103     14
18 months   ki1148112-LCNI-5           MALAWI                         [25-30)       722     33     29      4
18 months   ki1148112-LCNI-5           MALAWI                         >=30          722      1      1      0
24 months   ki0047075b-MAL-ED          BANGLADESH                     [18.5-25)     212    134    116     18
24 months   ki0047075b-MAL-ED          BANGLADESH                     <18.5         212     29     21      8
24 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)       212     45     45      0
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30          212      4      4      0
24 months   ki0047075b-MAL-ED          BRAZIL                         [18.5-25)     168     62     62      0
24 months   ki0047075b-MAL-ED          BRAZIL                         <18.5         168      6      5      1
24 months   ki0047075b-MAL-ED          BRAZIL                         [25-30)       168     66     66      0
24 months   ki0047075b-MAL-ED          BRAZIL                         >=30          168     34     34      0
24 months   ki0047075b-MAL-ED          INDIA                          [18.5-25)     226    133    117     16
24 months   ki0047075b-MAL-ED          INDIA                          <18.5         226     46     42      4
24 months   ki0047075b-MAL-ED          INDIA                          [25-30)       226     38     30      8
24 months   ki0047075b-MAL-ED          INDIA                          >=30          226      9      9      0
24 months   ki0047075b-MAL-ED          NEPAL                          [18.5-25)     228    127    121      6
24 months   ki0047075b-MAL-ED          NEPAL                          <18.5         228      0      0      0
24 months   ki0047075b-MAL-ED          NEPAL                          [25-30)       228     85     84      1
24 months   ki0047075b-MAL-ED          NEPAL                          >=30          228     16     16      0
24 months   ki0047075b-MAL-ED          PERU                           [18.5-25)     201    106     96     10
24 months   ki0047075b-MAL-ED          PERU                           <18.5         201      4      2      2
24 months   ki0047075b-MAL-ED          PERU                           [25-30)       201     75     72      3
24 months   ki0047075b-MAL-ED          PERU                           >=30          201     16     16      0
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [18.5-25)     234     92     78     14
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <18.5         234      7      5      2
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)       234     75     68      7
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30          234     60     57      3
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [18.5-25)     214    148     97     51
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <18.5         214     11      7      4
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)       214     47     35     12
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30          214      8      6      2
24 months   ki1017093-NIH-Birth        BANGLADESH                     [18.5-25)     429    292    233     59
24 months   ki1017093-NIH-Birth        BANGLADESH                     <18.5         429     80     54     26
24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)       429     48     43      5
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30          429      9      6      3
24 months   ki1017093b-PROVIDE         BANGLADESH                     [18.5-25)     576    364    331     33
24 months   ki1017093b-PROVIDE         BANGLADESH                     <18.5         576    100     85     15
24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)       576     93     92      1
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30          576     19     19      0
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [18.5-25)     514    323    300     23
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <18.5         514     43     36      7
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)       514    122    117      5
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30          514     26     26      0
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [18.5-25)       6      2      2      0
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <18.5           6      0      0      0
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)         6      2      2      0
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30            6      2      1      1
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [18.5-25)     377    270    185     85
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <18.5         377     25     22      3
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)       377     64     47     17
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30          377     18     13      5
24 months   ki1148112-LCNI-5           MALAWI                         [18.5-25)     577    450    400     50
24 months   ki1148112-LCNI-5           MALAWI                         <18.5         577     95     81     14
24 months   ki1148112-LCNI-5           MALAWI                         [25-30)       577     31     28      3
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
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
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
* agecat: 12 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
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

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/f5bc16f5-df74-4b9a-8cd0-8f43c9d1b4ec/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->


```
## Warning: Removed 6 rows containing missing values (geom_errorbar).
```

![](/tmp/f5bc16f5-df74-4b9a-8cd0-8f43c9d1b4ec/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/f5bc16f5-df74-4b9a-8cd0-8f43c9d1b4ec/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/f5bc16f5-df74-4b9a-8cd0-8f43c9d1b4ec/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid              country    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------  ---------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO   ZIMBABWE   [18.5-25)            NA                0.0309185   0.0267416   0.0350954
Birth       ki1126311-ZVITAMBO   ZIMBABWE   <18.5                NA                0.0509804   0.0318896   0.0700712
Birth       ki1126311-ZVITAMBO   ZIMBABWE   [25-30)              NA                0.0220287   0.0155171   0.0285403
Birth       ki1126311-ZVITAMBO   ZIMBABWE   >=30                 NA                0.0174216   0.0067177   0.0281255
3 months    ki1126311-ZVITAMBO   ZIMBABWE   [18.5-25)            NA                0.0622524   0.0557478   0.0687570
3 months    ki1126311-ZVITAMBO   ZIMBABWE   <18.5                NA                0.0848329   0.0571422   0.1125236
3 months    ki1126311-ZVITAMBO   ZIMBABWE   [25-30)              NA                0.0455396   0.0353330   0.0557463
3 months    ki1126311-ZVITAMBO   ZIMBABWE   >=30                 NA                0.0327511   0.0164497   0.0490525
6 months    ki1126311-ZVITAMBO   ZIMBABWE   [18.5-25)            NA                0.0424742   0.0367982   0.0481503
6 months    ki1126311-ZVITAMBO   ZIMBABWE   <18.5                NA                0.0469613   0.0251667   0.0687560
6 months    ki1126311-ZVITAMBO   ZIMBABWE   [25-30)              NA                0.0319293   0.0229473   0.0409114
6 months    ki1126311-ZVITAMBO   ZIMBABWE   >=30                 NA                0.0352941   0.0177499   0.0528383
9 months    ki1126311-ZVITAMBO   ZIMBABWE   [18.5-25)            NA                0.0507795   0.0443573   0.0572017
9 months    ki1126311-ZVITAMBO   ZIMBABWE   <18.5                NA                0.0724638   0.0451049   0.0998226
9 months    ki1126311-ZVITAMBO   ZIMBABWE   [25-30)              NA                0.0360902   0.0260656   0.0461149
9 months    ki1126311-ZVITAMBO   ZIMBABWE   >=30                 NA                0.0180412   0.0047964   0.0312860
12 months   ki1126311-ZVITAMBO   ZIMBABWE   [18.5-25)            NA                0.0661856   0.0584989   0.0738723
12 months   ki1126311-ZVITAMBO   ZIMBABWE   <18.5                NA                0.0962733   0.0640530   0.1284936
12 months   ki1126311-ZVITAMBO   ZIMBABWE   [25-30)              NA                0.0520179   0.0389825   0.0650534
12 months   ki1126311-ZVITAMBO   ZIMBABWE   >=30                 NA                0.0215385   0.0057542   0.0373227
18 months   ki1126311-ZVITAMBO   ZIMBABWE   [18.5-25)            NA                0.1772152   0.1538532   0.2005772
18 months   ki1126311-ZVITAMBO   ZIMBABWE   <18.5                NA                0.1395349   0.0662761   0.2127937
18 months   ki1126311-ZVITAMBO   ZIMBABWE   [25-30)              NA                0.1601562   0.1152143   0.2050982
18 months   ki1126311-ZVITAMBO   ZIMBABWE   >=30                 NA                0.1153846   0.0285185   0.2022507


### Parameter: E(Y)


agecat      studyid              country    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------  ---------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO   ZIMBABWE   NA                   NA                0.0293751   0.0292400   0.0295103
3 months    ki1126311-ZVITAMBO   ZIMBABWE   NA                   NA                0.0581860   0.0579439   0.0584281
6 months    ki1126311-ZVITAMBO   ZIMBABWE   NA                   NA                0.0400900   0.0399824   0.0401977
9 months    ki1126311-ZVITAMBO   ZIMBABWE   NA                   NA                0.0470014   0.0467386   0.0472641
12 months   ki1126311-ZVITAMBO   ZIMBABWE   NA                   NA                0.0626189   0.0622650   0.0629729
18 months   ki1126311-ZVITAMBO   ZIMBABWE   NA                   NA                0.1695989   0.1688270   0.1703708


### Parameter: RR


agecat      studyid              country    intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------  ---------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO   ZIMBABWE   [18.5-25)            [18.5-25)         1.0000000   1.0000000   1.0000000
Birth       ki1126311-ZVITAMBO   ZIMBABWE   <18.5                [18.5-25)         1.6488658   1.1073734   2.4551417
Birth       ki1126311-ZVITAMBO   ZIMBABWE   [25-30)              [18.5-25)         0.7124769   0.5147819   0.9860940
Birth       ki1126311-ZVITAMBO   ZIMBABWE   >=30                 [18.5-25)         0.5634693   0.3003750   1.0570042
3 months    ki1126311-ZVITAMBO   ZIMBABWE   [18.5-25)            [18.5-25)         1.0000000   1.0000000   1.0000000
3 months    ki1126311-ZVITAMBO   ZIMBABWE   <18.5                [18.5-25)         1.3627249   0.9673028   1.9197911
3 months    ki1126311-ZVITAMBO   ZIMBABWE   [25-30)              [18.5-25)         0.7315318   0.5712659   0.9367595
3 months    ki1126311-ZVITAMBO   ZIMBABWE   >=30                 [18.5-25)         0.5261016   0.3163689   0.8748741
6 months    ki1126311-ZVITAMBO   ZIMBABWE   [18.5-25)            [18.5-25)         1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO   ZIMBABWE   <18.5                [18.5-25)         1.1056429   0.6821351   1.7920880
6 months    ki1126311-ZVITAMBO   ZIMBABWE   [25-30)              [18.5-25)         0.7517346   0.5505658   1.0264077
6 months    ki1126311-ZVITAMBO   ZIMBABWE   >=30                 [18.5-25)         0.8309537   0.4966272   1.3903470
9 months    ki1126311-ZVITAMBO   ZIMBABWE   [18.5-25)            [18.5-25)         1.0000000   1.0000000   1.0000000
9 months    ki1126311-ZVITAMBO   ZIMBABWE   <18.5                [18.5-25)         1.4270277   0.9583156   2.1249869
9 months    ki1126311-ZVITAMBO   ZIMBABWE   [25-30)              [18.5-25)         0.7107242   0.5237848   0.9643825
9 months    ki1126311-ZVITAMBO   ZIMBABWE   >=30                 [18.5-25)         0.3552858   0.1686741   0.7483544
12 months   ki1126311-ZVITAMBO   ZIMBABWE   [18.5-25)            [18.5-25)         1.0000000   1.0000000   1.0000000
12 months   ki1126311-ZVITAMBO   ZIMBABWE   <18.5                [18.5-25)         1.4545953   1.0206854   2.0729675
12 months   ki1126311-ZVITAMBO   ZIMBABWE   [25-30)              [18.5-25)         0.7859402   0.5962631   1.0359555
12 months   ki1126311-ZVITAMBO   ZIMBABWE   >=30                 [18.5-25)         0.3254251   0.1549570   0.6834249
18 months   ki1126311-ZVITAMBO   ZIMBABWE   [18.5-25)            [18.5-25)         1.0000000   1.0000000   1.0000000
18 months   ki1126311-ZVITAMBO   ZIMBABWE   <18.5                [18.5-25)         0.7873754   0.4582369   1.3529248
18 months   ki1126311-ZVITAMBO   ZIMBABWE   [25-30)              [18.5-25)         0.9037388   0.6628204   1.2322250
18 months   ki1126311-ZVITAMBO   ZIMBABWE   >=30                 [18.5-25)         0.6510989   0.3031922   1.3982214


### Parameter: PAR


agecat      studyid              country    intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------  ---------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1126311-ZVITAMBO   ZIMBABWE   [18.5-25)            NA                -0.0015433   -0.0057224   0.0026358
3 months    ki1126311-ZVITAMBO   ZIMBABWE   [18.5-25)            NA                -0.0040664   -0.0105754   0.0024427
6 months    ki1126311-ZVITAMBO   ZIMBABWE   [18.5-25)            NA                -0.0023842   -0.0080613   0.0032929
9 months    ki1126311-ZVITAMBO   ZIMBABWE   [18.5-25)            NA                -0.0037781   -0.0102057   0.0026495
12 months   ki1126311-ZVITAMBO   ZIMBABWE   [18.5-25)            NA                -0.0035667   -0.0112615   0.0041281
18 months   ki1126311-ZVITAMBO   ZIMBABWE   [18.5-25)            NA                -0.0076163   -0.0309910   0.0157584


### Parameter: PAF


agecat      studyid              country    intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------  ---------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1126311-ZVITAMBO   ZIMBABWE   [18.5-25)            NA                -0.0525387   -0.2048767   0.0805385
3 months    ki1126311-ZVITAMBO   ZIMBABWE   [18.5-25)            NA                -0.0698856   -0.1878221   0.0363413
6 months    ki1126311-ZVITAMBO   ZIMBABWE   [18.5-25)            NA                -0.0594712   -0.2109823   0.0730838
9 months    ki1126311-ZVITAMBO   ZIMBABWE   [18.5-25)            NA                -0.0803835   -0.2261908   0.0480857
12 months   ki1126311-ZVITAMBO   ZIMBABWE   [18.5-25)            NA                -0.0569587   -0.1872875   0.0590639
18 months   ki1126311-ZVITAMBO   ZIMBABWE   [18.5-25)            NA                -0.0449078   -0.1922418   0.0842191
