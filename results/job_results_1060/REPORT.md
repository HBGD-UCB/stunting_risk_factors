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

**Intervention Variable:** mwtkg

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        A                n     nA   nAY0   nAY1
----------  -------------------------  -----------------------------  ----------  ------  -----  -----  -----
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=57.5         246     50     50      0
Birth       ki0047075b-MAL-ED          BANGLADESH                     <42.5          246     53     50      3
Birth       ki0047075b-MAL-ED          BANGLADESH                     [42.5-50)      246     85     82      3
Birth       ki0047075b-MAL-ED          BANGLADESH                     [50-57.5)      246     58     57      1
Birth       ki0047075b-MAL-ED          BRAZIL                         >=57.5         184    122    116      6
Birth       ki0047075b-MAL-ED          BRAZIL                         <42.5          184     12     12      0
Birth       ki0047075b-MAL-ED          BRAZIL                         [42.5-50)      184     13     13      0
Birth       ki0047075b-MAL-ED          BRAZIL                         [50-57.5)      184     37     35      2
Birth       ki0047075b-MAL-ED          INDIA                          >=57.5         198     37     37      0
Birth       ki0047075b-MAL-ED          INDIA                          <42.5          198     34     32      2
Birth       ki0047075b-MAL-ED          INDIA                          [42.5-50)      198     67     65      2
Birth       ki0047075b-MAL-ED          INDIA                          [50-57.5)      198     60     57      3
Birth       ki0047075b-MAL-ED          NEPAL                          >=57.5         172     63     62      1
Birth       ki0047075b-MAL-ED          NEPAL                          <42.5          172      2      2      0
Birth       ki0047075b-MAL-ED          NEPAL                          [42.5-50)      172     30     27      3
Birth       ki0047075b-MAL-ED          NEPAL                          [50-57.5)      172     77     75      2
Birth       ki0047075b-MAL-ED          PERU                           >=57.5         276     99     96      3
Birth       ki0047075b-MAL-ED          PERU                           <42.5          276     13     11      2
Birth       ki0047075b-MAL-ED          PERU                           [42.5-50)      276     52     51      1
Birth       ki0047075b-MAL-ED          PERU                           [50-57.5)      276    112    111      1
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=57.5         228    166    166      0
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <42.5          228      2      2      0
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [42.5-50)      228     13     13      0
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [50-57.5)      228     47     46      1
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=57.5         121     56     55      1
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <42.5          121      4      3      1
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [42.5-50)      121     28     26      2
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [50-57.5)      121     33     31      2
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=57.5          28      2      2      0
Birth       ki1017093-NIH-Birth        BANGLADESH                     <42.5           28     12     12      0
Birth       ki1017093-NIH-Birth        BANGLADESH                     [42.5-50)       28      9      9      0
Birth       ki1017093-NIH-Birth        BANGLADESH                     [50-57.5)       28      5      5      0
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=57.5          27      4      4      0
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <42.5           27      8      8      0
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [42.5-50)       27      9      9      0
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [50-57.5)       27      6      5      1
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=57.5       10990   5959   5826    133
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <42.5        10990    146    134     12
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [42.5-50)    10990   1388   1322     66
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [50-57.5)    10990   3497   3379    118
3 months    ki0047075b-MAL-ED          BANGLADESH                     >=57.5         250     50     50      0
3 months    ki0047075b-MAL-ED          BANGLADESH                     <42.5          250     55     52      3
3 months    ki0047075b-MAL-ED          BANGLADESH                     [42.5-50)      250     88     85      3
3 months    ki0047075b-MAL-ED          BANGLADESH                     [50-57.5)      250     57     56      1
3 months    ki0047075b-MAL-ED          BRAZIL                         >=57.5         221    144    144      0
3 months    ki0047075b-MAL-ED          BRAZIL                         <42.5          221     14     14      0
3 months    ki0047075b-MAL-ED          BRAZIL                         [42.5-50)      221     19     19      0
3 months    ki0047075b-MAL-ED          BRAZIL                         [50-57.5)      221     44     43      1
3 months    ki0047075b-MAL-ED          INDIA                          >=57.5         240     43     42      1
3 months    ki0047075b-MAL-ED          INDIA                          <42.5          240     47     44      3
3 months    ki0047075b-MAL-ED          INDIA                          [42.5-50)      240     75     71      4
3 months    ki0047075b-MAL-ED          INDIA                          [50-57.5)      240     75     72      3
3 months    ki0047075b-MAL-ED          NEPAL                          >=57.5         236     87     87      0
3 months    ki0047075b-MAL-ED          NEPAL                          <42.5          236      2      2      0
3 months    ki0047075b-MAL-ED          NEPAL                          [42.5-50)      236     49     46      3
3 months    ki0047075b-MAL-ED          NEPAL                          [50-57.5)      236     98     98      0
3 months    ki0047075b-MAL-ED          PERU                           >=57.5         289    104     98      6
3 months    ki0047075b-MAL-ED          PERU                           <42.5          289     14     10      4
3 months    ki0047075b-MAL-ED          PERU                           [42.5-50)      289     56     51      5
3 months    ki0047075b-MAL-ED          PERU                           [50-57.5)      289    115    110      5
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=57.5         269    194    188      6
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <42.5          269      3      2      1
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [42.5-50)      269     16     14      2
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [50-57.5)      269     56     55      1
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=57.5         254    103     98      5
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <42.5          254      9      7      2
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [42.5-50)      254     67     63      4
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [50-57.5)      254     75     73      2
3 months    ki1017093-NIH-Birth        BANGLADESH                     >=57.5         570     79     75      4
3 months    ki1017093-NIH-Birth        BANGLADESH                     <42.5          570    153    140     13
3 months    ki1017093-NIH-Birth        BANGLADESH                     [42.5-50)      570    197    189      8
3 months    ki1017093-NIH-Birth        BANGLADESH                     [50-57.5)      570    141    133      8
3 months    ki1017093b-PROVIDE         BANGLADESH                     >=57.5         644    118    116      2
3 months    ki1017093b-PROVIDE         BANGLADESH                     <42.5          644    165    161      4
3 months    ki1017093b-PROVIDE         BANGLADESH                     [42.5-50)      644    197    196      1
3 months    ki1017093b-PROVIDE         BANGLADESH                     [50-57.5)      644    164    161      3
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=57.5         728    188    184      4
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     <42.5          728    102     95      7
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     [42.5-50)      728    226    213     13
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     [50-57.5)      728    212    203      9
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=57.5        2250   1429   1419     10
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <42.5         2250     26     24      2
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [42.5-50)     2250    199    194      5
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [50-57.5)     2250    596    590      6
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=57.5        8604   4720   4523    197
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       <42.5         8604    107     90     17
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       [42.5-50)     8604   1045    953     92
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       [50-57.5)     8604   2732   2542    190
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=57.5         241     49     48      1
6 months    ki0047075b-MAL-ED          BANGLADESH                     <42.5          241     54     50      4
6 months    ki0047075b-MAL-ED          BANGLADESH                     [42.5-50)      241     83     80      3
6 months    ki0047075b-MAL-ED          BANGLADESH                     [50-57.5)      241     55     55      0
6 months    ki0047075b-MAL-ED          BRAZIL                         >=57.5         208    138    138      0
6 months    ki0047075b-MAL-ED          BRAZIL                         <42.5          208     11     11      0
6 months    ki0047075b-MAL-ED          BRAZIL                         [42.5-50)      208     18     18      0
6 months    ki0047075b-MAL-ED          BRAZIL                         [50-57.5)      208     41     41      0
6 months    ki0047075b-MAL-ED          INDIA                          >=57.5         235     42     42      0
6 months    ki0047075b-MAL-ED          INDIA                          <42.5          235     46     42      4
6 months    ki0047075b-MAL-ED          INDIA                          [42.5-50)      235     73     71      2
6 months    ki0047075b-MAL-ED          INDIA                          [50-57.5)      235     74     71      3
6 months    ki0047075b-MAL-ED          NEPAL                          >=57.5         236     86     86      0
6 months    ki0047075b-MAL-ED          NEPAL                          <42.5          236      2      2      0
6 months    ki0047075b-MAL-ED          NEPAL                          [42.5-50)      236     49     48      1
6 months    ki0047075b-MAL-ED          NEPAL                          [50-57.5)      236     99     99      0
6 months    ki0047075b-MAL-ED          PERU                           >=57.5         272    100     96      4
6 months    ki0047075b-MAL-ED          PERU                           <42.5          272     13     11      2
6 months    ki0047075b-MAL-ED          PERU                           [42.5-50)      272     54     50      4
6 months    ki0047075b-MAL-ED          PERU                           [50-57.5)      272    105    103      2
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=57.5         249    179    176      3
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <42.5          249      3      2      1
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [42.5-50)      249     16     16      0
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [50-57.5)      249     51     49      2
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=57.5         247     99     94      5
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <42.5          247      8      5      3
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [42.5-50)      247     66     62      4
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [50-57.5)      247     74     72      2
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=57.5         537     74     72      2
6 months    ki1017093-NIH-Birth        BANGLADESH                     <42.5          537    149    128     21
6 months    ki1017093-NIH-Birth        BANGLADESH                     [42.5-50)      537    184    176      8
6 months    ki1017093-NIH-Birth        BANGLADESH                     [50-57.5)      537    130    126      4
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=57.5         582    107    105      2
6 months    ki1017093b-PROVIDE         BANGLADESH                     <42.5          582    145    141      4
6 months    ki1017093b-PROVIDE         BANGLADESH                     [42.5-50)      582    177    171      6
6 months    ki1017093b-PROVIDE         BANGLADESH                     [50-57.5)      582    153    151      2
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=57.5         715    189    185      4
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <42.5          715    101     95      6
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [42.5-50)      715    224    216      8
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [50-57.5)      715    201    196      5
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=57.5        1989   1258   1249      9
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <42.5         1989     25     25      0
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [42.5-50)     1989    175    169      6
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [50-57.5)     1989    531    527      4
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=57.5        7942   4343   4213    130
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <42.5         7942    102     87     15
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [42.5-50)     7942    976    909     67
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [50-57.5)     7942   2521   2402    119
6 months    ki1148112-LCNI-5           MALAWI                         >=57.5         837    127    120      7
6 months    ki1148112-LCNI-5           MALAWI                         <42.5          837     72     62     10
6 months    ki1148112-LCNI-5           MALAWI                         [42.5-50)      837    333    303     30
6 months    ki1148112-LCNI-5           MALAWI                         [50-57.5)      837    305    281     24
9 months    ki0047075b-MAL-ED          BANGLADESH                     >=57.5         234     45     44      1
9 months    ki0047075b-MAL-ED          BANGLADESH                     <42.5          234     52     46      6
9 months    ki0047075b-MAL-ED          BANGLADESH                     [42.5-50)      234     82     78      4
9 months    ki0047075b-MAL-ED          BANGLADESH                     [50-57.5)      234     55     55      0
9 months    ki0047075b-MAL-ED          BRAZIL                         >=57.5         198    131    131      0
9 months    ki0047075b-MAL-ED          BRAZIL                         <42.5          198     11     11      0
9 months    ki0047075b-MAL-ED          BRAZIL                         [42.5-50)      198     17     17      0
9 months    ki0047075b-MAL-ED          BRAZIL                         [50-57.5)      198     39     39      0
9 months    ki0047075b-MAL-ED          INDIA                          >=57.5         231     42     42      0
9 months    ki0047075b-MAL-ED          INDIA                          <42.5          231     44     41      3
9 months    ki0047075b-MAL-ED          INDIA                          [42.5-50)      231     73     69      4
9 months    ki0047075b-MAL-ED          INDIA                          [50-57.5)      231     72     69      3
9 months    ki0047075b-MAL-ED          NEPAL                          >=57.5         231     85     85      0
9 months    ki0047075b-MAL-ED          NEPAL                          <42.5          231      2      2      0
9 months    ki0047075b-MAL-ED          NEPAL                          [42.5-50)      231     48     48      0
9 months    ki0047075b-MAL-ED          NEPAL                          [50-57.5)      231     96     95      1
9 months    ki0047075b-MAL-ED          PERU                           >=57.5         255     93     92      1
9 months    ki0047075b-MAL-ED          PERU                           <42.5          255     13      9      4
9 months    ki0047075b-MAL-ED          PERU                           [42.5-50)      255     51     46      5
9 months    ki0047075b-MAL-ED          PERU                           [50-57.5)      255     98     96      2
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=57.5         246    175    169      6
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <42.5          246      3      2      1
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [42.5-50)      246     16     15      1
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [50-57.5)      246     52     51      1
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=57.5         238     97     88      9
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <42.5          238      8      4      4
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [42.5-50)      238     63     57      6
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [50-57.5)      238     70     60     10
9 months    ki1017093-NIH-Birth        BANGLADESH                     >=57.5         507     70     68      2
9 months    ki1017093-NIH-Birth        BANGLADESH                     <42.5          507    142    114     28
9 months    ki1017093-NIH-Birth        BANGLADESH                     [42.5-50)      507    169    160      9
9 months    ki1017093-NIH-Birth        BANGLADESH                     [50-57.5)      507    126    120      6
9 months    ki1017093b-PROVIDE         BANGLADESH                     >=57.5         604    113    111      2
9 months    ki1017093b-PROVIDE         BANGLADESH                     <42.5          604    153    139     14
9 months    ki1017093b-PROVIDE         BANGLADESH                     [42.5-50)      604    182    176      6
9 months    ki1017093b-PROVIDE         BANGLADESH                     [50-57.5)      604    156    154      2
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=57.5         706    186    183      3
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     <42.5          706    101     92      9
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     [42.5-50)      706    221    214      7
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     [50-57.5)      706    198    189      9
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=57.5        1752   1122   1106     16
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <42.5         1752     20     20      0
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [42.5-50)     1752    147    139      8
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [50-57.5)     1752    463    455      8
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=57.5        7357   3976   3845    131
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       <42.5         7357     94     74     20
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       [42.5-50)     7357    939    872     67
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       [50-57.5)     7357   2348   2215    133
9 months    ki1148112-LCNI-5           MALAWI                         >=57.5         662     94     90      4
9 months    ki1148112-LCNI-5           MALAWI                         <42.5          662     60     55      5
9 months    ki1148112-LCNI-5           MALAWI                         [42.5-50)      662    262    241     21
9 months    ki1148112-LCNI-5           MALAWI                         [50-57.5)      662    246    229     17
12 months   ki0047075b-MAL-ED          BANGLADESH                     >=57.5         233     44     43      1
12 months   ki0047075b-MAL-ED          BANGLADESH                     <42.5          233     51     41     10
12 months   ki0047075b-MAL-ED          BANGLADESH                     [42.5-50)      233     83     77      6
12 months   ki0047075b-MAL-ED          BANGLADESH                     [50-57.5)      233     55     55      0
12 months   ki0047075b-MAL-ED          BRAZIL                         >=57.5         194    127    127      0
12 months   ki0047075b-MAL-ED          BRAZIL                         <42.5          194     11     11      0
12 months   ki0047075b-MAL-ED          BRAZIL                         [42.5-50)      194     17     17      0
12 months   ki0047075b-MAL-ED          BRAZIL                         [50-57.5)      194     39     39      0
12 months   ki0047075b-MAL-ED          INDIA                          >=57.5         227     42     42      0
12 months   ki0047075b-MAL-ED          INDIA                          <42.5          227     44     42      2
12 months   ki0047075b-MAL-ED          INDIA                          [42.5-50)      227     69     59     10
12 months   ki0047075b-MAL-ED          INDIA                          [50-57.5)      227     72     66      6
12 months   ki0047075b-MAL-ED          NEPAL                          >=57.5         231     85     84      1
12 months   ki0047075b-MAL-ED          NEPAL                          <42.5          231      2      2      0
12 months   ki0047075b-MAL-ED          NEPAL                          [42.5-50)      231     48     45      3
12 months   ki0047075b-MAL-ED          NEPAL                          [50-57.5)      231     96     95      1
12 months   ki0047075b-MAL-ED          PERU                           >=57.5         245     90     88      2
12 months   ki0047075b-MAL-ED          PERU                           <42.5          245     13     10      3
12 months   ki0047075b-MAL-ED          PERU                           [42.5-50)      245     50     46      4
12 months   ki0047075b-MAL-ED          PERU                           [50-57.5)      245     92     88      4
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=57.5         248    176    169      7
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <42.5          248      3      2      1
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [42.5-50)      248     16     14      2
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [50-57.5)      248     53     51      2
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=57.5         231     95     84     11
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <42.5          231      8      4      4
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [42.5-50)      231     61     51     10
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [50-57.5)      231     67     55     12
12 months   ki1017093-NIH-Birth        BANGLADESH                     >=57.5         491     67     61      6
12 months   ki1017093-NIH-Birth        BANGLADESH                     <42.5          491    138    112     26
12 months   ki1017093-NIH-Birth        BANGLADESH                     [42.5-50)      491    165    154     11
12 months   ki1017093-NIH-Birth        BANGLADESH                     [50-57.5)      491    121    116      5
12 months   ki1017093b-PROVIDE         BANGLADESH                     >=57.5         600    113    112      1
12 months   ki1017093b-PROVIDE         BANGLADESH                     <42.5          600    152    131     21
12 months   ki1017093b-PROVIDE         BANGLADESH                     [42.5-50)      600    179    168     11
12 months   ki1017093b-PROVIDE         BANGLADESH                     [50-57.5)      600    156    153      3
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=57.5         706    184    180      4
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     <42.5          706     97     88      9
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     [42.5-50)      706    224    211     13
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     [50-57.5)      706    201    186     15
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=57.5        1417    898    882     16
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <42.5         1417     17     17      0
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [42.5-50)     1417    120    117      3
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [50-57.5)     1417    382    370     12
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=57.5        6514   3399   3243    156
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       <42.5         6514     86     64     22
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       [42.5-50)     6514    901    802     99
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       [50-57.5)     6514   2128   1971    157
12 months   ki1148112-LCNI-5           MALAWI                         >=57.5         625     88     83      5
12 months   ki1148112-LCNI-5           MALAWI                         <42.5          625     53     43     10
12 months   ki1148112-LCNI-5           MALAWI                         [42.5-50)      625    257    228     29
12 months   ki1148112-LCNI-5           MALAWI                         [50-57.5)      625    227    204     23
18 months   ki0047075b-MAL-ED          BANGLADESH                     >=57.5         221     43     43      0
18 months   ki0047075b-MAL-ED          BANGLADESH                     <42.5          221     48     33     15
18 months   ki0047075b-MAL-ED          BANGLADESH                     [42.5-50)      221     78     65     13
18 months   ki0047075b-MAL-ED          BANGLADESH                     [50-57.5)      221     52     49      3
18 months   ki0047075b-MAL-ED          BRAZIL                         >=57.5         179    116    116      0
18 months   ki0047075b-MAL-ED          BRAZIL                         <42.5          179      9      9      0
18 months   ki0047075b-MAL-ED          BRAZIL                         [42.5-50)      179     17     17      0
18 months   ki0047075b-MAL-ED          BRAZIL                         [50-57.5)      179     37     37      0
18 months   ki0047075b-MAL-ED          INDIA                          >=57.5         227     41     39      2
18 months   ki0047075b-MAL-ED          INDIA                          <42.5          227     44     37      7
18 months   ki0047075b-MAL-ED          INDIA                          [42.5-50)      227     70     58     12
18 months   ki0047075b-MAL-ED          INDIA                          [50-57.5)      227     72     61     11
18 months   ki0047075b-MAL-ED          NEPAL                          >=57.5         229     83     81      2
18 months   ki0047075b-MAL-ED          NEPAL                          <42.5          229      2      2      0
18 months   ki0047075b-MAL-ED          NEPAL                          [42.5-50)      229     48     45      3
18 months   ki0047075b-MAL-ED          NEPAL                          [50-57.5)      229     96     94      2
18 months   ki0047075b-MAL-ED          PERU                           >=57.5         222     81     79      2
18 months   ki0047075b-MAL-ED          PERU                           <42.5          222     13      9      4
18 months   ki0047075b-MAL-ED          PERU                           [42.5-50)      222     43     38      5
18 months   ki0047075b-MAL-ED          PERU                           [50-57.5)      222     85     76      9
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=57.5         237    169    152     17
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <42.5          237      3      2      1
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [42.5-50)      237     16     14      2
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [50-57.5)      237     49     43      6
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=57.5         225     90     68     22
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <42.5          225      7      3      4
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [42.5-50)      225     61     40     21
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [50-57.5)      225     67     45     22
18 months   ki1017093-NIH-Birth        BANGLADESH                     >=57.5         463     63     55      8
18 months   ki1017093-NIH-Birth        BANGLADESH                     <42.5          463    128     87     41
18 months   ki1017093-NIH-Birth        BANGLADESH                     [42.5-50)      463    159    126     33
18 months   ki1017093-NIH-Birth        BANGLADESH                     [50-57.5)      463    113     94     19
18 months   ki1017093b-PROVIDE         BANGLADESH                     >=57.5         552    105    102      3
18 months   ki1017093b-PROVIDE         BANGLADESH                     <42.5          552    139    105     34
18 months   ki1017093b-PROVIDE         BANGLADESH                     [42.5-50)      552    163    149     14
18 months   ki1017093b-PROVIDE         BANGLADESH                     [50-57.5)      552    145    139      6
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=57.5         634    171    169      2
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     <42.5          634     91     78     13
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     [42.5-50)      634    199    182     17
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     [50-57.5)      634    173    163     10
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=57.5         963    617    596     21
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <42.5          963      6      5      1
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [42.5-50)      963     81     75      6
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [50-57.5)      963    259    248     11
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=57.5        1618    772    661    111
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       <42.5         1618     24     18      6
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       [42.5-50)     1618    285    221     64
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       [50-57.5)     1618    537    438     99
18 months   ki1148112-LCNI-5           MALAWI                         >=57.5         723    113    106      7
18 months   ki1148112-LCNI-5           MALAWI                         <42.5          723     58     44     14
18 months   ki1148112-LCNI-5           MALAWI                         [42.5-50)      723    290    247     43
18 months   ki1148112-LCNI-5           MALAWI                         [50-57.5)      723    262    230     32
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=57.5         212     43     43      0
24 months   ki0047075b-MAL-ED          BANGLADESH                     <42.5          212     45     30     15
24 months   ki0047075b-MAL-ED          BANGLADESH                     [42.5-50)      212     73     63     10
24 months   ki0047075b-MAL-ED          BANGLADESH                     [50-57.5)      212     51     50      1
24 months   ki0047075b-MAL-ED          BRAZIL                         >=57.5         168    110    110      0
24 months   ki0047075b-MAL-ED          BRAZIL                         <42.5          168      8      7      1
24 months   ki0047075b-MAL-ED          BRAZIL                         [42.5-50)      168     15     15      0
24 months   ki0047075b-MAL-ED          BRAZIL                         [50-57.5)      168     35     35      0
24 months   ki0047075b-MAL-ED          INDIA                          >=57.5         226     40     37      3
24 months   ki0047075b-MAL-ED          INDIA                          <42.5          226     44     37      7
24 months   ki0047075b-MAL-ED          INDIA                          [42.5-50)      226     70     61      9
24 months   ki0047075b-MAL-ED          INDIA                          [50-57.5)      226     72     63      9
24 months   ki0047075b-MAL-ED          NEPAL                          >=57.5         228     83     82      1
24 months   ki0047075b-MAL-ED          NEPAL                          <42.5          228      2      1      1
24 months   ki0047075b-MAL-ED          NEPAL                          [42.5-50)      228     48     44      4
24 months   ki0047075b-MAL-ED          NEPAL                          [50-57.5)      228     95     94      1
24 months   ki0047075b-MAL-ED          PERU                           >=57.5         201     77     76      1
24 months   ki0047075b-MAL-ED          PERU                           <42.5          201     10      7      3
24 months   ki0047075b-MAL-ED          PERU                           [42.5-50)      201     39     34      5
24 months   ki0047075b-MAL-ED          PERU                           [50-57.5)      201     75     69      6
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=57.5         234    168    154     14
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <42.5          234      3      2      1
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [42.5-50)      234     15     13      2
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [50-57.5)      234     48     39      9
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=57.5         214     87     66     21
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <42.5          214      6      1      5
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [42.5-50)      214     59     38     21
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [50-57.5)      214     62     40     22
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=57.5         429     59     50      9
24 months   ki1017093-NIH-Birth        BANGLADESH                     <42.5          429    123     81     42
24 months   ki1017093-NIH-Birth        BANGLADESH                     [42.5-50)      429    147    120     27
24 months   ki1017093-NIH-Birth        BANGLADESH                     [50-57.5)      429    100     85     15
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=57.5         576    111    110      1
24 months   ki1017093b-PROVIDE         BANGLADESH                     <42.5          576    142    112     30
24 months   ki1017093b-PROVIDE         BANGLADESH                     [42.5-50)      576    170    157     13
24 months   ki1017093b-PROVIDE         BANGLADESH                     [50-57.5)      576    153    148      5
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=57.5         514    143    142      1
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <42.5          514     66     54     12
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [42.5-50)      514    166    153     13
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [50-57.5)      514    139    130      9
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=57.5           6      4      3      1
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <42.5            6      0      0      0
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [42.5-50)        6      1      1      0
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [50-57.5)        6      1      1      0
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=57.5         436    190    142     48
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <42.5          436      9      7      2
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [42.5-50)      436     90     56     34
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [50-57.5)      436    147    106     41
24 months   ki1148112-LCNI-5           MALAWI                         >=57.5         578     86     81      5
24 months   ki1148112-LCNI-5           MALAWI                         <42.5          578     48     36     12
24 months   ki1148112-LCNI-5           MALAWI                         [42.5-50)      578    225    194     31
24 months   ki1148112-LCNI-5           MALAWI                         [50-57.5)      578    219    200     19


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
* agecat: 12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 18 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 18 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/936049ba-435b-4da7-8fa3-c04e794e2b91/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->


```
## Warning: Removed 13 rows containing missing values (geom_errorbar).
```

![](/tmp/936049ba-435b-4da7-8fa3-c04e794e2b91/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/936049ba-435b-4da7-8fa3-c04e794e2b91/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/936049ba-435b-4da7-8fa3-c04e794e2b91/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO    ZIMBABWE     >=57.5               NA                0.0223192   0.0185684   0.0260699
Birth       ki1126311-ZVITAMBO    ZIMBABWE     <42.5                NA                0.0821918   0.0376383   0.1267453
Birth       ki1126311-ZVITAMBO    ZIMBABWE     [42.5-50)            NA                0.0475504   0.0363542   0.0587467
Birth       ki1126311-ZVITAMBO    ZIMBABWE     [50-57.5)            NA                0.0337432   0.0277583   0.0397281
3 months    ki1126311-ZVITAMBO    ZIMBABWE     >=57.5               NA                0.0417373   0.0360316   0.0474430
3 months    ki1126311-ZVITAMBO    ZIMBABWE     <42.5                NA                0.1588785   0.0896088   0.2281482
3 months    ki1126311-ZVITAMBO    ZIMBABWE     [42.5-50)            NA                0.0880383   0.0708576   0.1052189
3 months    ki1126311-ZVITAMBO    ZIMBABWE     [50-57.5)            NA                0.0695461   0.0600068   0.0790854
6 months    ki1126311-ZVITAMBO    ZIMBABWE     >=57.5               NA                0.0299332   0.0248650   0.0350015
6 months    ki1126311-ZVITAMBO    ZIMBABWE     <42.5                NA                0.1470588   0.0783234   0.2157942
6 months    ki1126311-ZVITAMBO    ZIMBABWE     [42.5-50)            NA                0.0686475   0.0527833   0.0845118
6 months    ki1126311-ZVITAMBO    ZIMBABWE     [50-57.5)            NA                0.0472035   0.0389245   0.0554825
6 months    ki1148112-LCNI-5      MALAWI       >=57.5               NA                0.0551181   0.0154043   0.0948319
6 months    ki1148112-LCNI-5      MALAWI       <42.5                NA                0.1388889   0.0589598   0.2188180
6 months    ki1148112-LCNI-5      MALAWI       [42.5-50)            NA                0.0900901   0.0593204   0.1208598
6 months    ki1148112-LCNI-5      MALAWI       [50-57.5)            NA                0.0786885   0.0484531   0.1089240
9 months    ki1126311-ZVITAMBO    ZIMBABWE     >=57.5               NA                0.0329477   0.0273990   0.0384964
9 months    ki1126311-ZVITAMBO    ZIMBABWE     <42.5                NA                0.2127660   0.1300257   0.2955062
9 months    ki1126311-ZVITAMBO    ZIMBABWE     [42.5-50)            NA                0.0713525   0.0548870   0.0878180
9 months    ki1126311-ZVITAMBO    ZIMBABWE     [50-57.5)            NA                0.0566440   0.0472933   0.0659946
12 months   ki1017093-NIH-Birth   BANGLADESH   >=57.5               NA                0.0895522   0.0211108   0.1579937
12 months   ki1017093-NIH-Birth   BANGLADESH   <42.5                NA                0.1884058   0.1230976   0.2537140
12 months   ki1017093-NIH-Birth   BANGLADESH   [42.5-50)            NA                0.0666667   0.0285670   0.1047664
12 months   ki1017093-NIH-Birth   BANGLADESH   [50-57.5)            NA                0.0413223   0.0058224   0.0768222
12 months   ki1126311-ZVITAMBO    ZIMBABWE     >=57.5               NA                0.0458959   0.0388604   0.0529313
12 months   ki1126311-ZVITAMBO    ZIMBABWE     <42.5                NA                0.2558140   0.1635918   0.3480361
12 months   ki1126311-ZVITAMBO    ZIMBABWE     [42.5-50)            NA                0.1098779   0.0894559   0.1302999
12 months   ki1126311-ZVITAMBO    ZIMBABWE     [50-57.5)            NA                0.0737782   0.0626707   0.0848857
12 months   ki1148112-LCNI-5      MALAWI       >=57.5               NA                0.0568182   0.0084126   0.1052238
12 months   ki1148112-LCNI-5      MALAWI       <42.5                NA                0.1886792   0.0832609   0.2940976
12 months   ki1148112-LCNI-5      MALAWI       [42.5-50)            NA                0.1128405   0.0741270   0.1515540
12 months   ki1148112-LCNI-5      MALAWI       [50-57.5)            NA                0.1013216   0.0620357   0.1406074
18 months   ki1017093-NIH-Birth   BANGLADESH   >=57.5               NA                0.1269841   0.0446778   0.2092904
18 months   ki1017093-NIH-Birth   BANGLADESH   <42.5                NA                0.3203125   0.2393928   0.4012322
18 months   ki1017093-NIH-Birth   BANGLADESH   [42.5-50)            NA                0.2075472   0.1444421   0.2706522
18 months   ki1017093-NIH-Birth   BANGLADESH   [50-57.5)            NA                0.1681416   0.0991111   0.2371720
18 months   ki1126311-ZVITAMBO    ZIMBABWE     >=57.5               NA                0.1437824   0.1190242   0.1685406
18 months   ki1126311-ZVITAMBO    ZIMBABWE     <42.5                NA                0.2500000   0.0767085   0.4232915
18 months   ki1126311-ZVITAMBO    ZIMBABWE     [42.5-50)            NA                0.2245614   0.1760994   0.2730234
18 months   ki1126311-ZVITAMBO    ZIMBABWE     [50-57.5)            NA                0.1843575   0.1515499   0.2171652
18 months   ki1148112-LCNI-5      MALAWI       >=57.5               NA                0.0619469   0.0174702   0.1064236
18 months   ki1148112-LCNI-5      MALAWI       <42.5                NA                0.2413793   0.1311754   0.3515832
18 months   ki1148112-LCNI-5      MALAWI       [42.5-50)            NA                0.1482759   0.1073466   0.1892052
18 months   ki1148112-LCNI-5      MALAWI       [50-57.5)            NA                0.1221374   0.0824607   0.1618141
24 months   ki1017093-NIH-Birth   BANGLADESH   >=57.5               NA                0.1525424   0.0606915   0.2443932
24 months   ki1017093-NIH-Birth   BANGLADESH   <42.5                NA                0.3414634   0.2575630   0.4253639
24 months   ki1017093-NIH-Birth   BANGLADESH   [42.5-50)            NA                0.1836735   0.1210047   0.2463423
24 months   ki1017093-NIH-Birth   BANGLADESH   [50-57.5)            NA                0.1500000   0.0799336   0.2200664
24 months   ki1148112-LCNI-5      MALAWI       >=57.5               NA                0.0581395   0.0086397   0.1076394
24 months   ki1148112-LCNI-5      MALAWI       <42.5                NA                0.2500000   0.1273961   0.3726039
24 months   ki1148112-LCNI-5      MALAWI       [42.5-50)            NA                0.1377778   0.0927032   0.1828524
24 months   ki1148112-LCNI-5      MALAWI       [50-57.5)            NA                0.0867580   0.0494459   0.1240701


### Parameter: E(Y)


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO    ZIMBABWE     NA                   NA                0.0299363   0.0297389   0.0301338
3 months    ki1126311-ZVITAMBO    ZIMBABWE     NA                   NA                0.0576476   0.0572128   0.0580824
6 months    ki1126311-ZVITAMBO    ZIMBABWE     NA                   NA                0.0416772   0.0412855   0.0420688
6 months    ki1148112-LCNI-5      MALAWI       NA                   NA                0.0848268   0.0834540   0.0861995
9 months    ki1126311-ZVITAMBO    ZIMBABWE     NA                   NA                0.0477097   0.0471676   0.0482517
12 months   ki1017093-NIH-Birth   BANGLADESH   NA                   NA                0.0977597   0.0925753   0.1029440
12 months   ki1126311-ZVITAMBO    ZIMBABWE     NA                   NA                0.0666257   0.0658685   0.0673830
12 months   ki1148112-LCNI-5      MALAWI       NA                   NA                0.1072000   0.1047867   0.1096133
18 months   ki1017093-NIH-Birth   BANGLADESH   NA                   NA                0.2181425   0.2119143   0.2243708
18 months   ki1126311-ZVITAMBO    ZIMBABWE     NA                   NA                0.1730532   0.1715069   0.1745994
18 months   ki1148112-LCNI-5      MALAWI       NA                   NA                0.1327801   0.1296278   0.1359324
24 months   ki1017093-NIH-Birth   BANGLADESH   NA                   NA                0.2167832   0.2091806   0.2243858
24 months   ki1148112-LCNI-5      MALAWI       NA                   NA                0.1159170   0.1118390   0.1199949


### Parameter: RR


agecat      studyid               country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO    ZIMBABWE     >=57.5               >=57.5            1.0000000   1.0000000    1.000000
Birth       ki1126311-ZVITAMBO    ZIMBABWE     <42.5                >=57.5            3.6825626   2.0877557    6.495620
Birth       ki1126311-ZVITAMBO    ZIMBABWE     [42.5-50)            >=57.5            2.1304739   1.5953056    2.845172
Birth       ki1126311-ZVITAMBO    ZIMBABWE     [50-57.5)            >=57.5            1.5118480   1.1841160    1.930287
3 months    ki1126311-ZVITAMBO    ZIMBABWE     >=57.5               >=57.5            1.0000000   1.0000000    1.000000
3 months    ki1126311-ZVITAMBO    ZIMBABWE     <42.5                >=57.5            3.8066319   2.4104747    6.011449
3 months    ki1126311-ZVITAMBO    ZIMBABWE     [42.5-50)            >=57.5            2.1093433   1.6621452    2.676860
3 months    ki1126311-ZVITAMBO    ZIMBABWE     [50-57.5)            >=57.5            1.6662825   1.3729199    2.022330
6 months    ki1126311-ZVITAMBO    ZIMBABWE     >=57.5               >=57.5            1.0000000   1.0000000    1.000000
6 months    ki1126311-ZVITAMBO    ZIMBABWE     <42.5                >=57.5            4.9128959   2.9884046    8.076733
6 months    ki1126311-ZVITAMBO    ZIMBABWE     [42.5-50)            >=57.5            2.2933559   1.7220738    3.054156
6 months    ki1126311-ZVITAMBO    ZIMBABWE     [50-57.5)            >=57.5            1.5769597   1.2357969    2.012306
6 months    ki1148112-LCNI-5      MALAWI       >=57.5               >=57.5            1.0000000   1.0000000    1.000000
6 months    ki1148112-LCNI-5      MALAWI       <42.5                >=57.5            2.5198413   1.0020590    6.336553
6 months    ki1148112-LCNI-5      MALAWI       [42.5-50)            >=57.5            1.6344916   0.7363560    3.628086
6 months    ki1148112-LCNI-5      MALAWI       [50-57.5)            >=57.5            1.4276347   0.6309328    3.230361
9 months    ki1126311-ZVITAMBO    ZIMBABWE     >=57.5               >=57.5            1.0000000   1.0000000    1.000000
9 months    ki1126311-ZVITAMBO    ZIMBABWE     <42.5                >=57.5            6.4576904   4.2270005    9.865569
9 months    ki1126311-ZVITAMBO    ZIMBABWE     [42.5-50)            >=57.5            2.1656302   1.6274772    2.881733
9 months    ki1126311-ZVITAMBO    ZIMBABWE     [50-57.5)            >=57.5            1.7192088   1.3580379    2.176433
12 months   ki1017093-NIH-Birth   BANGLADESH   >=57.5               >=57.5            1.0000000   1.0000000    1.000000
12 months   ki1017093-NIH-Birth   BANGLADESH   <42.5                >=57.5            2.1038647   0.9089889    4.869418
12 months   ki1017093-NIH-Birth   BANGLADESH   [42.5-50)            >=57.5            0.7444444   0.2866694    1.933229
12 months   ki1017093-NIH-Birth   BANGLADESH   [50-57.5)            >=57.5            0.4614326   0.1461291    1.457068
12 months   ki1126311-ZVITAMBO    ZIMBABWE     >=57.5               >=57.5            1.0000000   1.0000000    1.000000
12 months   ki1126311-ZVITAMBO    ZIMBABWE     <42.5                >=57.5            5.5737924   3.7672064    8.246737
12 months   ki1126311-ZVITAMBO    ZIMBABWE     [42.5-50)            >=57.5            2.3940706   1.8815105    3.046262
12 months   ki1126311-ZVITAMBO    ZIMBABWE     [50-57.5)            >=57.5            1.6075133   1.2967091    1.992813
12 months   ki1148112-LCNI-5      MALAWI       >=57.5               >=57.5            1.0000000   1.0000000    1.000000
12 months   ki1148112-LCNI-5      MALAWI       <42.5                >=57.5            3.3207547   1.1988783    9.198108
12 months   ki1148112-LCNI-5      MALAWI       [42.5-50)            >=57.5            1.9859922   0.7927029    4.975591
12 months   ki1148112-LCNI-5      MALAWI       [50-57.5)            >=57.5            1.7832599   0.6993673    4.546990
18 months   ki1017093-NIH-Birth   BANGLADESH   >=57.5               >=57.5            1.0000000   1.0000000    1.000000
18 months   ki1017093-NIH-Birth   BANGLADESH   <42.5                >=57.5            2.5224609   1.2580725    5.057585
18 months   ki1017093-NIH-Birth   BANGLADESH   [42.5-50)            >=57.5            1.6344340   0.7988057    3.344210
18 months   ki1017093-NIH-Birth   BANGLADESH   [50-57.5)            >=57.5            1.3241150   0.6147739    2.851911
18 months   ki1126311-ZVITAMBO    ZIMBABWE     >=57.5               >=57.5            1.0000000   1.0000000    1.000000
18 months   ki1126311-ZVITAMBO    ZIMBABWE     <42.5                >=57.5            1.7387387   0.8512296    3.551583
18 months   ki1126311-ZVITAMBO    ZIMBABWE     [42.5-50)            >=57.5            1.5618144   1.1850244    2.058409
18 months   ki1126311-ZVITAMBO    ZIMBABWE     [50-57.5)            >=57.5            1.2821984   1.0009504    1.642472
18 months   ki1148112-LCNI-5      MALAWI       >=57.5               >=57.5            1.0000000   1.0000000    1.000000
18 months   ki1148112-LCNI-5      MALAWI       <42.5                >=57.5            3.8965517   1.6640313    9.124297
18 months   ki1148112-LCNI-5      MALAWI       [42.5-50)            >=57.5            2.3935961   1.1091358    5.165555
18 months   ki1148112-LCNI-5      MALAWI       [50-57.5)            >=57.5            1.9716467   0.8965657    4.335868
24 months   ki1017093-NIH-Birth   BANGLADESH   >=57.5               >=57.5            1.0000000   1.0000000    1.000000
24 months   ki1017093-NIH-Birth   BANGLADESH   <42.5                >=57.5            2.2384824   1.1681975    4.289346
24 months   ki1017093-NIH-Birth   BANGLADESH   [42.5-50)            >=57.5            1.2040816   0.6026815    2.405603
24 months   ki1017093-NIH-Birth   BANGLADESH   [50-57.5)            >=57.5            0.9833333   0.4589195    2.107002
24 months   ki1148112-LCNI-5      MALAWI       >=57.5               >=57.5            1.0000000   1.0000000    1.000000
24 months   ki1148112-LCNI-5      MALAWI       <42.5                >=57.5            4.3000000   1.6097436   11.486301
24 months   ki1148112-LCNI-5      MALAWI       [42.5-50)            >=57.5            2.3697778   0.9519016    5.899609
24 months   ki1148112-LCNI-5      MALAWI       [50-57.5)            >=57.5            1.4922374   0.5748891    3.873395


### Parameter: PAR


agecat      studyid               country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1126311-ZVITAMBO    ZIMBABWE     >=57.5               NA                0.0076171    0.0038612   0.0113731
3 months    ki1126311-ZVITAMBO    ZIMBABWE     >=57.5               NA                0.0159103    0.0101881   0.0216325
6 months    ki1126311-ZVITAMBO    ZIMBABWE     >=57.5               NA                0.0117439    0.0066606   0.0168273
6 months    ki1148112-LCNI-5      MALAWI       >=57.5               NA                0.0297087   -0.0100289   0.0694462
9 months    ki1126311-ZVITAMBO    ZIMBABWE     >=57.5               NA                0.0147620    0.0091869   0.0203371
12 months   ki1017093-NIH-Birth   BANGLADESH   >=57.5               NA                0.0082074   -0.0604301   0.0768450
12 months   ki1126311-ZVITAMBO    ZIMBABWE     >=57.5               NA                0.0207299    0.0136538   0.0278059
12 months   ki1148112-LCNI-5      MALAWI       >=57.5               NA                0.0503818    0.0019161   0.0988476
18 months   ki1017093-NIH-Birth   BANGLADESH   >=57.5               NA                0.0911584    0.0086168   0.1737000
18 months   ki1126311-ZVITAMBO    ZIMBABWE     >=57.5               NA                0.0292708    0.0044644   0.0540772
18 months   ki1148112-LCNI-5      MALAWI       >=57.5               NA                0.0708332    0.0262449   0.1154215
24 months   ki1017093-NIH-Birth   BANGLADESH   >=57.5               NA                0.0642408   -0.0279241   0.1564058
24 months   ki1148112-LCNI-5      MALAWI       >=57.5               NA                0.0577774    0.0081099   0.1074450


### Parameter: PAF


agecat      studyid               country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  --------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1126311-ZVITAMBO    ZIMBABWE     >=57.5               NA                0.2544444    0.1178960   0.3698552
3 months    ki1126311-ZVITAMBO    ZIMBABWE     >=57.5               NA                0.2759927    0.1697608   0.3686318
6 months    ki1126311-ZVITAMBO    ZIMBABWE     >=57.5               NA                0.2817834    0.1490526   0.3938109
6 months    ki1148112-LCNI-5      MALAWI       >=57.5               NA                0.3502273   -0.3358546   0.6839443
9 months    ki1126311-ZVITAMBO    ZIMBABWE     >=57.5               NA                0.3094127    0.1824314   0.4166719
12 months   ki1017093-NIH-Birth   BANGLADESH   >=57.5               NA                0.0839552   -0.9707426   0.5742021
12 months   ki1126311-ZVITAMBO    ZIMBABWE     >=57.5               NA                0.3111392    0.1966816   0.4092888
12 months   ki1148112-LCNI-5      MALAWI       >=57.5               NA                0.4699796   -0.2428368   0.7739675
18 months   ki1017093-NIH-Birth   BANGLADESH   >=57.5               NA                0.4178846   -0.1137181   0.6957414
18 months   ki1126311-ZVITAMBO    ZIMBABWE     >=57.5               NA                0.1691432    0.0127917   0.3007322
18 months   ki1148112-LCNI-5      MALAWI       >=57.5               NA                0.5334624    0.0430868   0.7725422
24 months   ki1017093-NIH-Birth   BANGLADESH   >=57.5               NA                0.2963368   -0.2862078   0.6150374
24 months   ki1148112-LCNI-5      MALAWI       >=57.5               NA                0.4984380   -0.1759730   0.7860798
