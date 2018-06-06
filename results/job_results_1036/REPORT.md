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
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=57.5         246     50     43      7
Birth       ki0047075b-MAL-ED          BANGLADESH                     <42.5          246     53     44      9
Birth       ki0047075b-MAL-ED          BANGLADESH                     [42.5-50)      246     85     68     17
Birth       ki0047075b-MAL-ED          BANGLADESH                     [50-57.5)      246     58     49      9
Birth       ki0047075b-MAL-ED          BRAZIL                         >=57.5         184    122    111     11
Birth       ki0047075b-MAL-ED          BRAZIL                         <42.5          184     12      9      3
Birth       ki0047075b-MAL-ED          BRAZIL                         [42.5-50)      184     13     11      2
Birth       ki0047075b-MAL-ED          BRAZIL                         [50-57.5)      184     37     34      3
Birth       ki0047075b-MAL-ED          INDIA                          >=57.5         198     37     34      3
Birth       ki0047075b-MAL-ED          INDIA                          <42.5          198     34     25      9
Birth       ki0047075b-MAL-ED          INDIA                          [42.5-50)      198     67     56     11
Birth       ki0047075b-MAL-ED          INDIA                          [50-57.5)      198     60     51      9
Birth       ki0047075b-MAL-ED          NEPAL                          >=57.5         172     63     56      7
Birth       ki0047075b-MAL-ED          NEPAL                          <42.5          172      2      2      0
Birth       ki0047075b-MAL-ED          NEPAL                          [42.5-50)      172     30     24      6
Birth       ki0047075b-MAL-ED          NEPAL                          [50-57.5)      172     77     72      5
Birth       ki0047075b-MAL-ED          PERU                           >=57.5         276     99     91      8
Birth       ki0047075b-MAL-ED          PERU                           <42.5          276     13      9      4
Birth       ki0047075b-MAL-ED          PERU                           [42.5-50)      276     52     42     10
Birth       ki0047075b-MAL-ED          PERU                           [50-57.5)      276    112    101     11
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=57.5         228    166    152     14
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <42.5          228      2      2      0
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [42.5-50)      228     13     11      2
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [50-57.5)      228     47     40      7
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=57.5         121     56     51      5
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <42.5          121      4      1      3
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [42.5-50)      121     28     24      4
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [50-57.5)      121     33     27      6
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=57.5          28      2      2      0
Birth       ki1017093-NIH-Birth        BANGLADESH                     <42.5           28     12     12      0
Birth       ki1017093-NIH-Birth        BANGLADESH                     [42.5-50)       28      9      8      1
Birth       ki1017093-NIH-Birth        BANGLADESH                     [50-57.5)       28      5      5      0
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=57.5          27      4      4      0
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <42.5           27      8      6      2
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [42.5-50)       27      9      7      2
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [50-57.5)       27      6      5      1
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=57.5       10990   5959   5492    467
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <42.5        10990    146    114     32
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [42.5-50)    10990   1388   1193    195
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [50-57.5)    10990   3497   3078    419
3 months    ki0047075b-MAL-ED          BANGLADESH                     >=57.5         250     50     44      6
3 months    ki0047075b-MAL-ED          BANGLADESH                     <42.5          250     55     41     14
3 months    ki0047075b-MAL-ED          BANGLADESH                     [42.5-50)      250     88     70     18
3 months    ki0047075b-MAL-ED          BANGLADESH                     [50-57.5)      250     57     52      5
3 months    ki0047075b-MAL-ED          BRAZIL                         >=57.5         221    144    133     11
3 months    ki0047075b-MAL-ED          BRAZIL                         <42.5          221     14     14      0
3 months    ki0047075b-MAL-ED          BRAZIL                         [42.5-50)      221     19     18      1
3 months    ki0047075b-MAL-ED          BRAZIL                         [50-57.5)      221     44     42      2
3 months    ki0047075b-MAL-ED          INDIA                          >=57.5         240     43     40      3
3 months    ki0047075b-MAL-ED          INDIA                          <42.5          240     47     37     10
3 months    ki0047075b-MAL-ED          INDIA                          [42.5-50)      240     75     63     12
3 months    ki0047075b-MAL-ED          INDIA                          [50-57.5)      240     75     65     10
3 months    ki0047075b-MAL-ED          NEPAL                          >=57.5         236     87     85      2
3 months    ki0047075b-MAL-ED          NEPAL                          <42.5          236      2      2      0
3 months    ki0047075b-MAL-ED          NEPAL                          [42.5-50)      236     49     43      6
3 months    ki0047075b-MAL-ED          NEPAL                          [50-57.5)      236     98     93      5
3 months    ki0047075b-MAL-ED          PERU                           >=57.5         289    104     83     21
3 months    ki0047075b-MAL-ED          PERU                           <42.5          289     14      9      5
3 months    ki0047075b-MAL-ED          PERU                           [42.5-50)      289     56     41     15
3 months    ki0047075b-MAL-ED          PERU                           [50-57.5)      289    115     83     32
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=57.5         269    194    162     32
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <42.5          269      3      1      2
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [42.5-50)      269     16     10      6
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [50-57.5)      269     56     46     10
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=57.5         254    103     88     15
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <42.5          254      9      5      4
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [42.5-50)      254     67     53     14
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [50-57.5)      254     75     65     10
3 months    ki1017093-NIH-Birth        BANGLADESH                     >=57.5         570     79     65     14
3 months    ki1017093-NIH-Birth        BANGLADESH                     <42.5          570    153    102     51
3 months    ki1017093-NIH-Birth        BANGLADESH                     [42.5-50)      570    197    159     38
3 months    ki1017093-NIH-Birth        BANGLADESH                     [50-57.5)      570    141    114     27
3 months    ki1017093b-PROVIDE         BANGLADESH                     >=57.5         644    118    110      8
3 months    ki1017093b-PROVIDE         BANGLADESH                     <42.5          644    165    133     32
3 months    ki1017093b-PROVIDE         BANGLADESH                     [42.5-50)      644    197    174     23
3 months    ki1017093b-PROVIDE         BANGLADESH                     [50-57.5)      644    164    150     14
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=57.5         728    188    164     24
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     <42.5          728    102     71     31
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     [42.5-50)      728    226    169     57
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     [50-57.5)      728    212    168     44
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=57.5        2250   1429   1361     68
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <42.5         2250     26     23      3
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [42.5-50)     2250    199    176     23
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [50-57.5)     2250    596    558     38
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=57.5        8604   4720   4082    638
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       <42.5         8604    107     67     40
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       [42.5-50)     8604   1045    761    284
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       [50-57.5)     8604   2732   2158    574
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=57.5         241     49     43      6
6 months    ki0047075b-MAL-ED          BANGLADESH                     <42.5          241     54     39     15
6 months    ki0047075b-MAL-ED          BANGLADESH                     [42.5-50)      241     83     60     23
6 months    ki0047075b-MAL-ED          BANGLADESH                     [50-57.5)      241     55     54      1
6 months    ki0047075b-MAL-ED          BRAZIL                         >=57.5         208    138    135      3
6 months    ki0047075b-MAL-ED          BRAZIL                         <42.5          208     11     11      0
6 months    ki0047075b-MAL-ED          BRAZIL                         [42.5-50)      208     18     17      1
6 months    ki0047075b-MAL-ED          BRAZIL                         [50-57.5)      208     41     39      2
6 months    ki0047075b-MAL-ED          INDIA                          >=57.5         235     42     37      5
6 months    ki0047075b-MAL-ED          INDIA                          <42.5          235     46     38      8
6 months    ki0047075b-MAL-ED          INDIA                          [42.5-50)      235     73     57     16
6 months    ki0047075b-MAL-ED          INDIA                          [50-57.5)      235     74     58     16
6 months    ki0047075b-MAL-ED          NEPAL                          >=57.5         236     86     84      2
6 months    ki0047075b-MAL-ED          NEPAL                          <42.5          236      2      2      0
6 months    ki0047075b-MAL-ED          NEPAL                          [42.5-50)      236     49     43      6
6 months    ki0047075b-MAL-ED          NEPAL                          [50-57.5)      236     99     95      4
6 months    ki0047075b-MAL-ED          PERU                           >=57.5         272    100     81     19
6 months    ki0047075b-MAL-ED          PERU                           <42.5          272     13      8      5
6 months    ki0047075b-MAL-ED          PERU                           [42.5-50)      272     54     37     17
6 months    ki0047075b-MAL-ED          PERU                           [50-57.5)      272    105     86     19
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=57.5         249    179    149     30
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <42.5          249      3      1      2
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [42.5-50)      249     16     11      5
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [50-57.5)      249     51     38     13
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=57.5         247     99     80     19
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <42.5          247      8      2      6
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [42.5-50)      247     66     53     13
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [50-57.5)      247     74     54     20
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=57.5         537     74     60     14
6 months    ki1017093-NIH-Birth        BANGLADESH                     <42.5          537    149     84     65
6 months    ki1017093-NIH-Birth        BANGLADESH                     [42.5-50)      537    184    144     40
6 months    ki1017093-NIH-Birth        BANGLADESH                     [50-57.5)      537    130    105     25
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=57.5         582    107     96     11
6 months    ki1017093b-PROVIDE         BANGLADESH                     <42.5          582    145    109     36
6 months    ki1017093b-PROVIDE         BANGLADESH                     [42.5-50)      582    177    149     28
6 months    ki1017093b-PROVIDE         BANGLADESH                     [50-57.5)      582    153    135     18
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=57.5         715    189    163     26
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <42.5          715    101     66     35
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [42.5-50)      715    224    173     51
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [50-57.5)      715    201    163     38
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=57.5        1989   1258   1146    112
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <42.5         1989     25     23      2
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [42.5-50)     1989    175    149     26
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [50-57.5)     1989    531    479     52
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=57.5        7942   4343   3783    560
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <42.5         7942    102     63     39
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [42.5-50)     7942    976    730    246
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [50-57.5)     7942   2521   2041    480
6 months    ki1148112-LCNI-5           MALAWI                         >=57.5         837    127     98     29
6 months    ki1148112-LCNI-5           MALAWI                         <42.5          837     72     28     44
6 months    ki1148112-LCNI-5           MALAWI                         [42.5-50)      837    333    201    132
6 months    ki1148112-LCNI-5           MALAWI                         [50-57.5)      837    305    202    103
9 months    ki0047075b-MAL-ED          BANGLADESH                     >=57.5         234     45     38      7
9 months    ki0047075b-MAL-ED          BANGLADESH                     <42.5          234     52     34     18
9 months    ki0047075b-MAL-ED          BANGLADESH                     [42.5-50)      234     82     56     26
9 months    ki0047075b-MAL-ED          BANGLADESH                     [50-57.5)      234     55     48      7
9 months    ki0047075b-MAL-ED          BRAZIL                         >=57.5         198    131    129      2
9 months    ki0047075b-MAL-ED          BRAZIL                         <42.5          198     11     11      0
9 months    ki0047075b-MAL-ED          BRAZIL                         [42.5-50)      198     17     17      0
9 months    ki0047075b-MAL-ED          BRAZIL                         [50-57.5)      198     39     37      2
9 months    ki0047075b-MAL-ED          INDIA                          >=57.5         231     42     35      7
9 months    ki0047075b-MAL-ED          INDIA                          <42.5          231     44     32     12
9 months    ki0047075b-MAL-ED          INDIA                          [42.5-50)      231     73     60     13
9 months    ki0047075b-MAL-ED          INDIA                          [50-57.5)      231     72     52     20
9 months    ki0047075b-MAL-ED          NEPAL                          >=57.5         231     85     81      4
9 months    ki0047075b-MAL-ED          NEPAL                          <42.5          231      2      2      0
9 months    ki0047075b-MAL-ED          NEPAL                          [42.5-50)      231     48     41      7
9 months    ki0047075b-MAL-ED          NEPAL                          [50-57.5)      231     96     89      7
9 months    ki0047075b-MAL-ED          PERU                           >=57.5         255     93     79     14
9 months    ki0047075b-MAL-ED          PERU                           <42.5          255     13      7      6
9 months    ki0047075b-MAL-ED          PERU                           [42.5-50)      255     51     32     19
9 months    ki0047075b-MAL-ED          PERU                           [50-57.5)      255     98     74     24
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=57.5         246    175    141     34
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <42.5          246      3      2      1
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [42.5-50)      246     16     12      4
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [50-57.5)      246     52     38     14
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=57.5         238     97     64     33
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <42.5          238      8      1      7
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [42.5-50)      238     63     41     22
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [50-57.5)      238     70     42     28
9 months    ki1017093-NIH-Birth        BANGLADESH                     >=57.5         507     70     57     13
9 months    ki1017093-NIH-Birth        BANGLADESH                     <42.5          507    142     73     69
9 months    ki1017093-NIH-Birth        BANGLADESH                     [42.5-50)      507    169    111     58
9 months    ki1017093-NIH-Birth        BANGLADESH                     [50-57.5)      507    126     85     41
9 months    ki1017093b-PROVIDE         BANGLADESH                     >=57.5         604    113    102     11
9 months    ki1017093b-PROVIDE         BANGLADESH                     <42.5          604    153     98     55
9 months    ki1017093b-PROVIDE         BANGLADESH                     [42.5-50)      604    182    142     40
9 months    ki1017093b-PROVIDE         BANGLADESH                     [50-57.5)      604    156    134     22
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=57.5         706    186    162     24
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     <42.5          706    101     61     40
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     [42.5-50)      706    221    163     58
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     [50-57.5)      706    198    156     42
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=57.5        1752   1122    974    148
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <42.5         1752     20     16      4
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [42.5-50)     1752    147    113     34
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [50-57.5)     1752    463    389     74
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=57.5        7357   3976   3382    594
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       <42.5         7357     94     52     42
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       [42.5-50)     7357    939    669    270
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       [50-57.5)     7357   2348   1804    544
9 months    ki1148112-LCNI-5           MALAWI                         >=57.5         662     94     69     25
9 months    ki1148112-LCNI-5           MALAWI                         <42.5          662     60     27     33
9 months    ki1148112-LCNI-5           MALAWI                         [42.5-50)      662    262    175     87
9 months    ki1148112-LCNI-5           MALAWI                         [50-57.5)      662    246    171     75
12 months   ki0047075b-MAL-ED          BANGLADESH                     >=57.5         233     44     31     13
12 months   ki0047075b-MAL-ED          BANGLADESH                     <42.5          233     51     29     22
12 months   ki0047075b-MAL-ED          BANGLADESH                     [42.5-50)      233     83     51     32
12 months   ki0047075b-MAL-ED          BANGLADESH                     [50-57.5)      233     55     47      8
12 months   ki0047075b-MAL-ED          BRAZIL                         >=57.5         194    127    125      2
12 months   ki0047075b-MAL-ED          BRAZIL                         <42.5          194     11     10      1
12 months   ki0047075b-MAL-ED          BRAZIL                         [42.5-50)      194     17     17      0
12 months   ki0047075b-MAL-ED          BRAZIL                         [50-57.5)      194     39     36      3
12 months   ki0047075b-MAL-ED          INDIA                          >=57.5         227     42     33      9
12 months   ki0047075b-MAL-ED          INDIA                          <42.5          227     44     28     16
12 months   ki0047075b-MAL-ED          INDIA                          [42.5-50)      227     69     48     21
12 months   ki0047075b-MAL-ED          INDIA                          [50-57.5)      227     72     44     28
12 months   ki0047075b-MAL-ED          NEPAL                          >=57.5         231     85     78      7
12 months   ki0047075b-MAL-ED          NEPAL                          <42.5          231      2      2      0
12 months   ki0047075b-MAL-ED          NEPAL                          [42.5-50)      231     48     37     11
12 months   ki0047075b-MAL-ED          NEPAL                          [50-57.5)      231     96     88      8
12 months   ki0047075b-MAL-ED          PERU                           >=57.5         245     90     70     20
12 months   ki0047075b-MAL-ED          PERU                           <42.5          245     13      7      6
12 months   ki0047075b-MAL-ED          PERU                           [42.5-50)      245     50     32     18
12 months   ki0047075b-MAL-ED          PERU                           [50-57.5)      245     92     68     24
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=57.5         248    176    137     39
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <42.5          248      3      2      1
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [42.5-50)      248     16     13      3
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [50-57.5)      248     53     36     17
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=57.5         231     95     46     49
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <42.5          231      8      1      7
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [42.5-50)      231     61     25     36
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [50-57.5)      231     67     34     33
12 months   ki1017093-NIH-Birth        BANGLADESH                     >=57.5         491     67     54     13
12 months   ki1017093-NIH-Birth        BANGLADESH                     <42.5          491    138     60     78
12 months   ki1017093-NIH-Birth        BANGLADESH                     [42.5-50)      491    165    103     62
12 months   ki1017093-NIH-Birth        BANGLADESH                     [50-57.5)      491    121     90     31
12 months   ki1017093b-PROVIDE         BANGLADESH                     >=57.5         600    113    100     13
12 months   ki1017093b-PROVIDE         BANGLADESH                     <42.5          600    152     88     64
12 months   ki1017093b-PROVIDE         BANGLADESH                     [42.5-50)      600    179    125     54
12 months   ki1017093b-PROVIDE         BANGLADESH                     [50-57.5)      600    156    130     26
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=57.5         706    184    156     28
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     <42.5          706     97     58     39
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     [42.5-50)      706    224    164     60
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     [50-57.5)      706    201    157     44
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=57.5        1417    898    768    130
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <42.5         1417     17     13      4
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [42.5-50)     1417    120     89     31
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [50-57.5)     1417    382    313     69
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=57.5        6514   3399   2742    657
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       <42.5         6514     86     45     41
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       [42.5-50)     6514    901    583    318
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       [50-57.5)     6514   2128   1546    582
12 months   ki1148112-LCNI-5           MALAWI                         >=57.5         625     88     62     26
12 months   ki1148112-LCNI-5           MALAWI                         <42.5          625     53     20     33
12 months   ki1148112-LCNI-5           MALAWI                         [42.5-50)      625    257    152    105
12 months   ki1148112-LCNI-5           MALAWI                         [50-57.5)      625    227    145     82
18 months   ki0047075b-MAL-ED          BANGLADESH                     >=57.5         221     43     31     12
18 months   ki0047075b-MAL-ED          BANGLADESH                     <42.5          221     48     14     34
18 months   ki0047075b-MAL-ED          BANGLADESH                     [42.5-50)      221     78     33     45
18 months   ki0047075b-MAL-ED          BANGLADESH                     [50-57.5)      221     52     38     14
18 months   ki0047075b-MAL-ED          BRAZIL                         >=57.5         179    116    112      4
18 months   ki0047075b-MAL-ED          BRAZIL                         <42.5          179      9      9      0
18 months   ki0047075b-MAL-ED          BRAZIL                         [42.5-50)      179     17     16      1
18 months   ki0047075b-MAL-ED          BRAZIL                         [50-57.5)      179     37     35      2
18 months   ki0047075b-MAL-ED          INDIA                          >=57.5         227     41     26     15
18 months   ki0047075b-MAL-ED          INDIA                          <42.5          227     44     17     27
18 months   ki0047075b-MAL-ED          INDIA                          [42.5-50)      227     70     41     29
18 months   ki0047075b-MAL-ED          INDIA                          [50-57.5)      227     72     40     32
18 months   ki0047075b-MAL-ED          NEPAL                          >=57.5         229     83     73     10
18 months   ki0047075b-MAL-ED          NEPAL                          <42.5          229      2      1      1
18 months   ki0047075b-MAL-ED          NEPAL                          [42.5-50)      229     48     30     18
18 months   ki0047075b-MAL-ED          NEPAL                          [50-57.5)      229     96     80     16
18 months   ki0047075b-MAL-ED          PERU                           >=57.5         222     81     54     27
18 months   ki0047075b-MAL-ED          PERU                           <42.5          222     13      7      6
18 months   ki0047075b-MAL-ED          PERU                           [42.5-50)      222     43     20     23
18 months   ki0047075b-MAL-ED          PERU                           [50-57.5)      222     85     42     43
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=57.5         237    169    122     47
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <42.5          237      3      2      1
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [42.5-50)      237     16      8      8
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [50-57.5)      237     49     25     24
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=57.5         225     90     33     57
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <42.5          225      7      0      7
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [42.5-50)      225     61     18     43
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [50-57.5)      225     67     18     49
18 months   ki1017093-NIH-Birth        BANGLADESH                     >=57.5         463     63     42     21
18 months   ki1017093-NIH-Birth        BANGLADESH                     <42.5          463    128     27    101
18 months   ki1017093-NIH-Birth        BANGLADESH                     [42.5-50)      463    159     68     91
18 months   ki1017093-NIH-Birth        BANGLADESH                     [50-57.5)      463    113     54     59
18 months   ki1017093b-PROVIDE         BANGLADESH                     >=57.5         552    105     81     24
18 months   ki1017093b-PROVIDE         BANGLADESH                     <42.5          552    139     63     76
18 months   ki1017093b-PROVIDE         BANGLADESH                     [42.5-50)      552    163     93     70
18 months   ki1017093b-PROVIDE         BANGLADESH                     [50-57.5)      552    145    109     36
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=57.5         634    171    139     32
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     <42.5          634     91     47     44
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     [42.5-50)      634    199    135     64
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     [50-57.5)      634    173    122     51
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=57.5         963    617    496    121
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <42.5          963      6      5      1
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [42.5-50)      963     81     43     38
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [50-57.5)      963    259    188     71
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=57.5        1618    772    446    326
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       <42.5         1618     24      8     16
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       [42.5-50)     1618    285    126    159
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       [50-57.5)     1618    537    266    271
18 months   ki1148112-LCNI-5           MALAWI                         >=57.5         723    113     78     35
18 months   ki1148112-LCNI-5           MALAWI                         <42.5          723     58     20     38
18 months   ki1148112-LCNI-5           MALAWI                         [42.5-50)      723    290    139    151
18 months   ki1148112-LCNI-5           MALAWI                         [50-57.5)      723    262    155    107
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=57.5         212     43     32     11
24 months   ki0047075b-MAL-ED          BANGLADESH                     <42.5          212     45     13     32
24 months   ki0047075b-MAL-ED          BANGLADESH                     [42.5-50)      212     73     32     41
24 months   ki0047075b-MAL-ED          BANGLADESH                     [50-57.5)      212     51     37     14
24 months   ki0047075b-MAL-ED          BRAZIL                         >=57.5         168    110    107      3
24 months   ki0047075b-MAL-ED          BRAZIL                         <42.5          168      8      7      1
24 months   ki0047075b-MAL-ED          BRAZIL                         [42.5-50)      168     15     15      0
24 months   ki0047075b-MAL-ED          BRAZIL                         [50-57.5)      168     35     33      2
24 months   ki0047075b-MAL-ED          INDIA                          >=57.5         226     40     28     12
24 months   ki0047075b-MAL-ED          INDIA                          <42.5          226     44     21     23
24 months   ki0047075b-MAL-ED          INDIA                          [42.5-50)      226     70     44     26
24 months   ki0047075b-MAL-ED          INDIA                          [50-57.5)      226     72     39     33
24 months   ki0047075b-MAL-ED          NEPAL                          >=57.5         228     83     74      9
24 months   ki0047075b-MAL-ED          NEPAL                          <42.5          228      2      1      1
24 months   ki0047075b-MAL-ED          NEPAL                          [42.5-50)      228     48     29     19
24 months   ki0047075b-MAL-ED          NEPAL                          [50-57.5)      228     95     75     20
24 months   ki0047075b-MAL-ED          PERU                           >=57.5         201     77     59     18
24 months   ki0047075b-MAL-ED          PERU                           <42.5          201     10      5      5
24 months   ki0047075b-MAL-ED          PERU                           [42.5-50)      201     39     20     19
24 months   ki0047075b-MAL-ED          PERU                           [50-57.5)      201     75     43     32
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=57.5         234    168    117     51
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <42.5          234      3      2      1
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [42.5-50)      234     15      9      6
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [50-57.5)      234     48     24     24
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=57.5         214     87     33     54
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <42.5          214      6      0      6
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [42.5-50)      214     59     16     43
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [50-57.5)      214     62     12     50
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=57.5         429     59     40     19
24 months   ki1017093-NIH-Birth        BANGLADESH                     <42.5          429    123     32     91
24 months   ki1017093-NIH-Birth        BANGLADESH                     [42.5-50)      429    147     68     79
24 months   ki1017093-NIH-Birth        BANGLADESH                     [50-57.5)      429    100     51     49
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=57.5         576    111     93     18
24 months   ki1017093b-PROVIDE         BANGLADESH                     <42.5          576    142     75     67
24 months   ki1017093b-PROVIDE         BANGLADESH                     [42.5-50)      576    170    102     68
24 months   ki1017093b-PROVIDE         BANGLADESH                     [50-57.5)      576    153    117     36
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=57.5         514    143    125     18
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <42.5          514     66     37     29
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [42.5-50)      514    166    112     54
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [50-57.5)      514    139    108     31
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=57.5           6      4      3      1
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <42.5            6      0      0      0
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [42.5-50)        6      1      1      0
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [50-57.5)        6      1      1      0
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=57.5         436    190     83    107
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <42.5          436      9      3      6
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [42.5-50)      436     90     13     77
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [50-57.5)      436    147     47    100
24 months   ki1148112-LCNI-5           MALAWI                         >=57.5         578     86     64     22
24 months   ki1148112-LCNI-5           MALAWI                         <42.5          578     48     19     29
24 months   ki1148112-LCNI-5           MALAWI                         [42.5-50)      578    225    113    112
24 months   ki1148112-LCNI-5           MALAWI                         [50-57.5)      578    219    127     92


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

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/3a3cdd18-f4e8-448a-af6e-921315bcfaeb/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->


```
## Warning: Removed 46 rows containing missing values (geom_errorbar).
```

![](/tmp/3a3cdd18-f4e8-448a-af6e-921315bcfaeb/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/3a3cdd18-f4e8-448a-af6e-921315bcfaeb/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/3a3cdd18-f4e8-448a-af6e-921315bcfaeb/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED       BANGLADESH   >=57.5               NA                0.1400000   0.0436258   0.2363742
Birth       ki0047075b-MAL-ED       BANGLADESH   <42.5                NA                0.1698113   0.0685214   0.2711013
Birth       ki0047075b-MAL-ED       BANGLADESH   [42.5-50)            NA                0.2000000   0.1147915   0.2852085
Birth       ki0047075b-MAL-ED       BANGLADESH   [50-57.5)            NA                0.1551724   0.0618019   0.2485430
Birth       ki1126311-ZVITAMBO      ZIMBABWE     >=57.5               NA                0.0783689   0.0715450   0.0851927
Birth       ki1126311-ZVITAMBO      ZIMBABWE     <42.5                NA                0.2191781   0.1520714   0.2862848
Birth       ki1126311-ZVITAMBO      ZIMBABWE     [42.5-50)            NA                0.1404899   0.1222080   0.1587718
Birth       ki1126311-ZVITAMBO      ZIMBABWE     [50-57.5)            NA                0.1198170   0.1090532   0.1305808
3 months    ki0047075b-MAL-ED       BANGLADESH   >=57.5               NA                0.1200000   0.0297462   0.2102538
3 months    ki0047075b-MAL-ED       BANGLADESH   <42.5                NA                0.2545455   0.1391921   0.3698988
3 months    ki0047075b-MAL-ED       BANGLADESH   [42.5-50)            NA                0.2045455   0.1200993   0.2889916
3 months    ki0047075b-MAL-ED       BANGLADESH   [50-57.5)            NA                0.0877193   0.0141337   0.1613049
3 months    ki0047075b-MAL-ED       PERU         >=57.5               NA                0.2019231   0.1246373   0.2792088
3 months    ki0047075b-MAL-ED       PERU         <42.5                NA                0.3571429   0.1057141   0.6085716
3 months    ki0047075b-MAL-ED       PERU         [42.5-50)            NA                0.2678571   0.1516705   0.3840438
3 months    ki0047075b-MAL-ED       PERU         [50-57.5)            NA                0.2782609   0.1962129   0.3603089
3 months    ki1017093-NIH-Birth     BANGLADESH   >=57.5               NA                0.1772152   0.0929381   0.2614923
3 months    ki1017093-NIH-Birth     BANGLADESH   <42.5                NA                0.3333333   0.2585719   0.4080947
3 months    ki1017093-NIH-Birth     BANGLADESH   [42.5-50)            NA                0.1928934   0.1377466   0.2480402
3 months    ki1017093-NIH-Birth     BANGLADESH   [50-57.5)            NA                0.1914894   0.1264861   0.2564926
3 months    ki1017093b-PROVIDE      BANGLADESH   >=57.5               NA                0.0677966   0.0224020   0.1131912
3 months    ki1017093b-PROVIDE      BANGLADESH   <42.5                NA                0.1939394   0.1335639   0.2543149
3 months    ki1017093b-PROVIDE      BANGLADESH   [42.5-50)            NA                0.1167513   0.0718742   0.1616284
3 months    ki1017093b-PROVIDE      BANGLADESH   [50-57.5)            NA                0.0853659   0.0425673   0.1281644
3 months    ki1017093c-NIH-Crypto   BANGLADESH   >=57.5               NA                0.1276596   0.0799245   0.1753946
3 months    ki1017093c-NIH-Crypto   BANGLADESH   <42.5                NA                0.3039216   0.2146000   0.3932431
3 months    ki1017093c-NIH-Crypto   BANGLADESH   [42.5-50)            NA                0.2522124   0.1955539   0.3088708
3 months    ki1017093c-NIH-Crypto   BANGLADESH   [50-57.5)            NA                0.2075472   0.1529181   0.2621762
3 months    ki1126311-ZVITAMBO      ZIMBABWE     >=57.5               NA                0.1351695   0.1254149   0.1449240
3 months    ki1126311-ZVITAMBO      ZIMBABWE     <42.5                NA                0.3738318   0.2821538   0.4655098
3 months    ki1126311-ZVITAMBO      ZIMBABWE     [42.5-50)            NA                0.2717703   0.2447960   0.2987446
3 months    ki1126311-ZVITAMBO      ZIMBABWE     [50-57.5)            NA                0.2101025   0.1948256   0.2253793
6 months    ki0047075b-MAL-ED       INDIA        >=57.5               NA                0.1190476   0.0208986   0.2171967
6 months    ki0047075b-MAL-ED       INDIA        <42.5                NA                0.1739130   0.0641455   0.2836806
6 months    ki0047075b-MAL-ED       INDIA        [42.5-50)            NA                0.2191781   0.1240766   0.3142796
6 months    ki0047075b-MAL-ED       INDIA        [50-57.5)            NA                0.2162162   0.1222221   0.3102103
6 months    ki0047075b-MAL-ED       PERU         >=57.5               NA                0.1900000   0.1129687   0.2670313
6 months    ki0047075b-MAL-ED       PERU         <42.5                NA                0.3846154   0.1196660   0.6495647
6 months    ki0047075b-MAL-ED       PERU         [42.5-50)            NA                0.3148148   0.1907117   0.4389179
6 months    ki0047075b-MAL-ED       PERU         [50-57.5)            NA                0.1809524   0.1071806   0.2547241
6 months    ki1017093-NIH-Birth     BANGLADESH   >=57.5               NA                0.1891892   0.0998700   0.2785084
6 months    ki1017093-NIH-Birth     BANGLADESH   <42.5                NA                0.4362416   0.3565395   0.5159437
6 months    ki1017093-NIH-Birth     BANGLADESH   [42.5-50)            NA                0.2173913   0.1577376   0.2770450
6 months    ki1017093-NIH-Birth     BANGLADESH   [50-57.5)            NA                0.1923077   0.1244963   0.2601191
6 months    ki1017093b-PROVIDE      BANGLADESH   >=57.5               NA                0.1028037   0.0452097   0.1603978
6 months    ki1017093b-PROVIDE      BANGLADESH   <42.5                NA                0.2482759   0.1778983   0.3186534
6 months    ki1017093b-PROVIDE      BANGLADESH   [42.5-50)            NA                0.1581921   0.1043857   0.2119985
6 months    ki1017093b-PROVIDE      BANGLADESH   [50-57.5)            NA                0.1176471   0.0665510   0.1687431
6 months    ki1017093c-NIH-Crypto   BANGLADESH   >=57.5               NA                0.1375661   0.0884256   0.1867067
6 months    ki1017093c-NIH-Crypto   BANGLADESH   <42.5                NA                0.3465347   0.2536645   0.4394048
6 months    ki1017093c-NIH-Crypto   BANGLADESH   [42.5-50)            NA                0.2276786   0.1727260   0.2826312
6 months    ki1017093c-NIH-Crypto   BANGLADESH   [50-57.5)            NA                0.1890547   0.1348866   0.2432228
6 months    ki1126311-ZVITAMBO      ZIMBABWE     >=57.5               NA                0.1289431   0.1189752   0.1389110
6 months    ki1126311-ZVITAMBO      ZIMBABWE     <42.5                NA                0.3823529   0.2880386   0.4766673
6 months    ki1126311-ZVITAMBO      ZIMBABWE     [42.5-50)            NA                0.2520492   0.2248078   0.2792906
6 months    ki1126311-ZVITAMBO      ZIMBABWE     [50-57.5)            NA                0.1904006   0.1750736   0.2057277
6 months    ki1148112-LCNI-5        MALAWI       >=57.5               NA                0.2283465   0.1552975   0.3013954
6 months    ki1148112-LCNI-5        MALAWI       <42.5                NA                0.6111111   0.4984396   0.7237827
6 months    ki1148112-LCNI-5        MALAWI       [42.5-50)            NA                0.3963964   0.3438278   0.4489650
6 months    ki1148112-LCNI-5        MALAWI       [50-57.5)            NA                0.3377049   0.2845979   0.3908120
9 months    ki0047075b-MAL-ED       BANGLADESH   >=57.5               NA                0.1555556   0.0494349   0.2616763
9 months    ki0047075b-MAL-ED       BANGLADESH   <42.5                NA                0.3461538   0.2165706   0.4757371
9 months    ki0047075b-MAL-ED       BANGLADESH   [42.5-50)            NA                0.3170732   0.2161391   0.4180073
9 months    ki0047075b-MAL-ED       BANGLADESH   [50-57.5)            NA                0.1272727   0.0390047   0.2155408
9 months    ki0047075b-MAL-ED       INDIA        >=57.5               NA                0.1666667   0.0537133   0.2796201
9 months    ki0047075b-MAL-ED       INDIA        <42.5                NA                0.2727273   0.1408479   0.4046066
9 months    ki0047075b-MAL-ED       INDIA        [42.5-50)            NA                0.1780822   0.0901287   0.2660357
9 months    ki0047075b-MAL-ED       INDIA        [50-57.5)            NA                0.2777778   0.1740947   0.3814609
9 months    ki0047075b-MAL-ED       PERU         >=57.5               NA                0.1505376   0.0777170   0.2233583
9 months    ki0047075b-MAL-ED       PERU         <42.5                NA                0.4615385   0.1900128   0.7330642
9 months    ki0047075b-MAL-ED       PERU         [42.5-50)            NA                0.3725490   0.2395961   0.5055019
9 months    ki0047075b-MAL-ED       PERU         [50-57.5)            NA                0.2448980   0.1595912   0.3302048
9 months    ki1017093-NIH-Birth     BANGLADESH   >=57.5               NA                0.1857143   0.0945260   0.2769025
9 months    ki1017093-NIH-Birth     BANGLADESH   <42.5                NA                0.4859155   0.4036287   0.5682023
9 months    ki1017093-NIH-Birth     BANGLADESH   [42.5-50)            NA                0.3431953   0.2715443   0.4148463
9 months    ki1017093-NIH-Birth     BANGLADESH   [50-57.5)            NA                0.3253968   0.2435084   0.4072852
9 months    ki1017093b-PROVIDE      BANGLADESH   >=57.5               NA                0.0973451   0.0426452   0.1520451
9 months    ki1017093b-PROVIDE      BANGLADESH   <42.5                NA                0.3594771   0.2833805   0.4355737
9 months    ki1017093b-PROVIDE      BANGLADESH   [42.5-50)            NA                0.2197802   0.1595693   0.2799911
9 months    ki1017093b-PROVIDE      BANGLADESH   [50-57.5)            NA                0.1410256   0.0863637   0.1956875
9 months    ki1017093c-NIH-Crypto   BANGLADESH   >=57.5               NA                0.1290323   0.0808209   0.1772436
9 months    ki1017093c-NIH-Crypto   BANGLADESH   <42.5                NA                0.3960396   0.3005912   0.4914880
9 months    ki1017093c-NIH-Crypto   BANGLADESH   [42.5-50)            NA                0.2624434   0.2043970   0.3204898
9 months    ki1017093c-NIH-Crypto   BANGLADESH   [50-57.5)            NA                0.2121212   0.1551382   0.2691042
9 months    ki1126311-ZVITAMBO      ZIMBABWE     >=57.5               NA                0.1493964   0.1383151   0.1604776
9 months    ki1126311-ZVITAMBO      ZIMBABWE     <42.5                NA                0.4468085   0.3462978   0.5473192
9 months    ki1126311-ZVITAMBO      ZIMBABWE     [42.5-50)            NA                0.2875399   0.2585882   0.3164916
9 months    ki1126311-ZVITAMBO      ZIMBABWE     [50-57.5)            NA                0.2316865   0.2146199   0.2487532
9 months    ki1148112-LCNI-5        MALAWI       >=57.5               NA                0.2659574   0.1765695   0.3553454
9 months    ki1148112-LCNI-5        MALAWI       <42.5                NA                0.5500000   0.4240238   0.6759762
9 months    ki1148112-LCNI-5        MALAWI       [42.5-50)            NA                0.3320611   0.2749917   0.3891304
9 months    ki1148112-LCNI-5        MALAWI       [50-57.5)            NA                0.3048780   0.2473072   0.3624489
12 months   ki0047075b-MAL-ED       BANGLADESH   >=57.5               NA                0.2954545   0.1603545   0.4305546
12 months   ki0047075b-MAL-ED       BANGLADESH   <42.5                NA                0.4313725   0.2951537   0.5675914
12 months   ki0047075b-MAL-ED       BANGLADESH   [42.5-50)            NA                0.3855422   0.2806060   0.4904783
12 months   ki0047075b-MAL-ED       BANGLADESH   [50-57.5)            NA                0.1454545   0.0520793   0.2388298
12 months   ki0047075b-MAL-ED       INDIA        >=57.5               NA                0.2142857   0.0899170   0.3386544
12 months   ki0047075b-MAL-ED       INDIA        <42.5                NA                0.3636364   0.2211849   0.5060878
12 months   ki0047075b-MAL-ED       INDIA        [42.5-50)            NA                0.3043478   0.1955392   0.4131565
12 months   ki0047075b-MAL-ED       INDIA        [50-57.5)            NA                0.3888889   0.2760358   0.5017420
12 months   ki0047075b-MAL-ED       PERU         >=57.5               NA                0.2222222   0.1361553   0.3082892
12 months   ki0047075b-MAL-ED       PERU         <42.5                NA                0.4615385   0.1899909   0.7330860
12 months   ki0047075b-MAL-ED       PERU         [42.5-50)            NA                0.3600000   0.2266809   0.4933191
12 months   ki0047075b-MAL-ED       PERU         [50-57.5)            NA                0.2608696   0.1709582   0.3507809
12 months   ki1017093-NIH-Birth     BANGLADESH   >=57.5               NA                0.1940299   0.0992432   0.2888165
12 months   ki1017093-NIH-Birth     BANGLADESH   <42.5                NA                0.5652174   0.4824241   0.6480107
12 months   ki1017093-NIH-Birth     BANGLADESH   [42.5-50)            NA                0.3757576   0.3017835   0.4497316
12 months   ki1017093-NIH-Birth     BANGLADESH   [50-57.5)            NA                0.2561983   0.1783383   0.3340584
12 months   ki1017093b-PROVIDE      BANGLADESH   >=57.5               NA                0.1150442   0.0561647   0.1739238
12 months   ki1017093b-PROVIDE      BANGLADESH   <42.5                NA                0.4210526   0.3424972   0.4996081
12 months   ki1017093b-PROVIDE      BANGLADESH   [42.5-50)            NA                0.3016760   0.2343810   0.3689710
12 months   ki1017093b-PROVIDE      BANGLADESH   [50-57.5)            NA                0.1666667   0.1081362   0.2251971
12 months   ki1017093c-NIH-Crypto   BANGLADESH   >=57.5               NA                0.1521739   0.1002377   0.2041101
12 months   ki1017093c-NIH-Crypto   BANGLADESH   <42.5                NA                0.4020619   0.3044181   0.4997056
12 months   ki1017093c-NIH-Crypto   BANGLADESH   [42.5-50)            NA                0.2678571   0.2098233   0.3258910
12 months   ki1017093c-NIH-Crypto   BANGLADESH   [50-57.5)            NA                0.2189055   0.1616999   0.2761110
12 months   ki1126311-ZVITAMBO      ZIMBABWE     >=57.5               NA                0.1932921   0.1800160   0.2065683
12 months   ki1126311-ZVITAMBO      ZIMBABWE     <42.5                NA                0.4767442   0.3711763   0.5823121
12 months   ki1126311-ZVITAMBO      ZIMBABWE     [42.5-50)            NA                0.3529412   0.3217349   0.3841475
12 months   ki1126311-ZVITAMBO      ZIMBABWE     [50-57.5)            NA                0.2734962   0.2545558   0.2924367
12 months   ki1148112-LCNI-5        MALAWI       >=57.5               NA                0.2954545   0.2000532   0.3908559
12 months   ki1148112-LCNI-5        MALAWI       <42.5                NA                0.6226415   0.4920383   0.7532448
12 months   ki1148112-LCNI-5        MALAWI       [42.5-50)            NA                0.4085603   0.3484135   0.4687071
12 months   ki1148112-LCNI-5        MALAWI       [50-57.5)            NA                0.3612335   0.2986949   0.4237721
18 months   ki0047075b-MAL-ED       BANGLADESH   >=57.5               NA                0.2790698   0.1447000   0.4134396
18 months   ki0047075b-MAL-ED       BANGLADESH   <42.5                NA                0.7083333   0.5794566   0.8372101
18 months   ki0047075b-MAL-ED       BANGLADESH   [42.5-50)            NA                0.5769231   0.4670341   0.6868121
18 months   ki0047075b-MAL-ED       BANGLADESH   [50-57.5)            NA                0.2692308   0.1483983   0.3900632
18 months   ki0047075b-MAL-ED       INDIA        >=57.5               NA                0.3658537   0.2180915   0.5136158
18 months   ki0047075b-MAL-ED       INDIA        <42.5                NA                0.6136364   0.4694467   0.7578260
18 months   ki0047075b-MAL-ED       INDIA        [42.5-50)            NA                0.4142857   0.2986344   0.5299371
18 months   ki0047075b-MAL-ED       INDIA        [50-57.5)            NA                0.4444444   0.3294139   0.5594750
18 months   ki0047075b-MAL-ED       PERU         >=57.5               NA                0.3333333   0.2304418   0.4362249
18 months   ki0047075b-MAL-ED       PERU         <42.5                NA                0.4615385   0.1899333   0.7331436
18 months   ki0047075b-MAL-ED       PERU         [42.5-50)            NA                0.5348837   0.3854651   0.6843023
18 months   ki0047075b-MAL-ED       PERU         [50-57.5)            NA                0.5058824   0.3993555   0.6124092
18 months   ki1017093-NIH-Birth     BANGLADESH   >=57.5               NA                0.3333333   0.2168024   0.4498642
18 months   ki1017093-NIH-Birth     BANGLADESH   <42.5                NA                0.7890625   0.7183094   0.8598156
18 months   ki1017093-NIH-Birth     BANGLADESH   [42.5-50)            NA                0.5723270   0.4953436   0.6493104
18 months   ki1017093-NIH-Birth     BANGLADESH   [50-57.5)            NA                0.5221239   0.4299256   0.6143222
18 months   ki1017093b-PROVIDE      BANGLADESH   >=57.5               NA                0.2285714   0.1481807   0.3089622
18 months   ki1017093b-PROVIDE      BANGLADESH   <42.5                NA                0.5467626   0.4639309   0.6295943
18 months   ki1017093b-PROVIDE      BANGLADESH   [42.5-50)            NA                0.4294479   0.3533888   0.5055069
18 months   ki1017093b-PROVIDE      BANGLADESH   [50-57.5)            NA                0.2482759   0.1778950   0.3186567
18 months   ki1017093c-NIH-Crypto   BANGLADESH   >=57.5               NA                0.1871345   0.1286314   0.2456376
18 months   ki1017093c-NIH-Crypto   BANGLADESH   <42.5                NA                0.4835165   0.3807612   0.5862717
18 months   ki1017093c-NIH-Crypto   BANGLADESH   [42.5-50)            NA                0.3216080   0.2566597   0.3865564
18 months   ki1017093c-NIH-Crypto   BANGLADESH   [50-57.5)            NA                0.2947977   0.2268012   0.3627942
18 months   ki1126311-ZVITAMBO      ZIMBABWE     >=57.5               NA                0.4222798   0.3874274   0.4571322
18 months   ki1126311-ZVITAMBO      ZIMBABWE     <42.5                NA                0.6666667   0.4780107   0.8553226
18 months   ki1126311-ZVITAMBO      ZIMBABWE     [42.5-50)            NA                0.5578947   0.5002182   0.6155712
18 months   ki1126311-ZVITAMBO      ZIMBABWE     [50-57.5)            NA                0.5046555   0.4623549   0.5469561
18 months   ki1148112-LCNI-5        MALAWI       >=57.5               NA                0.3097345   0.2244221   0.3950469
18 months   ki1148112-LCNI-5        MALAWI       <42.5                NA                0.6551724   0.5327634   0.7775814
18 months   ki1148112-LCNI-5        MALAWI       [42.5-50)            NA                0.5206897   0.4631526   0.5782267
18 months   ki1148112-LCNI-5        MALAWI       [50-57.5)            NA                0.4083969   0.3488370   0.4679569
24 months   ki0047075b-MAL-ED       BANGLADESH   >=57.5               NA                0.2558140   0.1250935   0.3865344
24 months   ki0047075b-MAL-ED       BANGLADESH   <42.5                NA                0.7111111   0.5783708   0.8438514
24 months   ki0047075b-MAL-ED       BANGLADESH   [42.5-50)            NA                0.5616438   0.4475513   0.6757364
24 months   ki0047075b-MAL-ED       BANGLADESH   [50-57.5)            NA                0.2745098   0.1517420   0.3972776
24 months   ki0047075b-MAL-ED       INDIA        >=57.5               NA                0.3000000   0.1576719   0.4423281
24 months   ki0047075b-MAL-ED       INDIA        <42.5                NA                0.5227273   0.3748145   0.6706400
24 months   ki0047075b-MAL-ED       INDIA        [42.5-50)            NA                0.3714286   0.2579858   0.4848714
24 months   ki0047075b-MAL-ED       INDIA        [50-57.5)            NA                0.4583333   0.3429876   0.5736791
24 months   ki0047075b-MAL-ED       PERU         >=57.5               NA                0.2337662   0.1389992   0.3285333
24 months   ki0047075b-MAL-ED       PERU         <42.5                NA                0.5000000   0.1893287   0.8106713
24 months   ki0047075b-MAL-ED       PERU         [42.5-50)            NA                0.4871795   0.3299167   0.6444423
24 months   ki0047075b-MAL-ED       PERU         [50-57.5)            NA                0.4266667   0.3144523   0.5388810
24 months   ki1017093-NIH-Birth     BANGLADESH   >=57.5               NA                0.3220339   0.2026671   0.4414007
24 months   ki1017093-NIH-Birth     BANGLADESH   <42.5                NA                0.7398374   0.6622140   0.8174608
24 months   ki1017093-NIH-Birth     BANGLADESH   [42.5-50)            NA                0.5374150   0.4567199   0.6181100
24 months   ki1017093-NIH-Birth     BANGLADESH   [50-57.5)            NA                0.4900000   0.3919070   0.5880930
24 months   ki1017093b-PROVIDE      BANGLADESH   >=57.5               NA                0.1621622   0.0935314   0.2307929
24 months   ki1017093b-PROVIDE      BANGLADESH   <42.5                NA                0.4718310   0.3896520   0.5540100
24 months   ki1017093b-PROVIDE      BANGLADESH   [42.5-50)            NA                0.4000000   0.3262934   0.4737066
24 months   ki1017093b-PROVIDE      BANGLADESH   [50-57.5)            NA                0.2352941   0.1680224   0.3025658
24 months   ki1017093c-NIH-Crypto   BANGLADESH   >=57.5               NA                0.1258741   0.0714542   0.1802941
24 months   ki1017093c-NIH-Crypto   BANGLADESH   <42.5                NA                0.4393939   0.3195393   0.5592486
24 months   ki1017093c-NIH-Crypto   BANGLADESH   [42.5-50)            NA                0.3253012   0.2539642   0.3966382
24 months   ki1017093c-NIH-Crypto   BANGLADESH   [50-57.5)            NA                0.2230216   0.1537522   0.2922910
24 months   ki1148112-LCNI-5        MALAWI       >=57.5               NA                0.2558140   0.1635190   0.3481089
24 months   ki1148112-LCNI-5        MALAWI       <42.5                NA                0.6041667   0.4657023   0.7426310
24 months   ki1148112-LCNI-5        MALAWI       [42.5-50)            NA                0.4977778   0.4323897   0.5631659
24 months   ki1148112-LCNI-5        MALAWI       [50-57.5)            NA                0.4200913   0.3546648   0.4855178


### Parameter: E(Y)


agecat      studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED       BANGLADESH   NA                   NA                0.1707317   0.1678079   0.1736555
Birth       ki1126311-ZVITAMBO      ZIMBABWE     NA                   NA                0.1012739   0.1007541   0.1017936
3 months    ki0047075b-MAL-ED       BANGLADESH   NA                   NA                0.1720000   0.1641129   0.1798871
3 months    ki0047075b-MAL-ED       PERU         NA                   NA                0.2525952   0.2477490   0.2574414
3 months    ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.2280702   0.2228146   0.2333258
3 months    ki1017093b-PROVIDE      BANGLADESH   NA                   NA                0.1195652   0.1159328   0.1231976
3 months    ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.2142857   0.2099709   0.2186005
3 months    ki1126311-ZVITAMBO      ZIMBABWE     NA                   NA                0.1785216   0.1773880   0.1796553
6 months    ki0047075b-MAL-ED       INDIA        NA                   NA                0.1914894   0.1866458   0.1963329
6 months    ki0047075b-MAL-ED       PERU         NA                   NA                0.2205882   0.2130592   0.2281173
6 months    ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.2681564   0.2592879   0.2770250
6 months    ki1017093b-PROVIDE      BANGLADESH   NA                   NA                0.1597938   0.1553287   0.1642589
6 months    ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.2097902   0.2050132   0.2145672
6 months    ki1126311-ZVITAMBO      ZIMBABWE     NA                   NA                0.1668346   0.1657458   0.1679233
6 months    ki1148112-LCNI-5        MALAWI       NA                   NA                0.3679809   0.3616587   0.3743031
9 months    ki0047075b-MAL-ED       BANGLADESH   NA                   NA                0.2478632   0.2357621   0.2599644
9 months    ki0047075b-MAL-ED       INDIA        NA                   NA                0.2251082   0.2184977   0.2317188
9 months    ki0047075b-MAL-ED       PERU         NA                   NA                0.2470588   0.2354607   0.2586569
9 months    ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.3570020   0.3487281   0.3652758
9 months    ki1017093b-PROVIDE      BANGLADESH   NA                   NA                0.2119205   0.2042283   0.2196128
9 months    ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.2322946   0.2260994   0.2384898
9 months    ki1126311-ZVITAMBO      ZIMBABWE     NA                   NA                0.1970912   0.1957485   0.1984339
9 months    ki1148112-LCNI-5        MALAWI       NA                   NA                0.3323263   0.3268291   0.3378235
12 months   ki0047075b-MAL-ED       BANGLADESH   NA                   NA                0.3218884   0.3080610   0.3357158
12 months   ki0047075b-MAL-ED       INDIA        NA                   NA                0.3259912   0.3177656   0.3342168
12 months   ki0047075b-MAL-ED       PERU         NA                   NA                0.2775510   0.2692162   0.2858859
12 months   ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.3747454   0.3628278   0.3866630
12 months   ki1017093b-PROVIDE      BANGLADESH   NA                   NA                0.2616667   0.2524282   0.2709051
12 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.2422096   0.2364981   0.2479212
12 months   ki1126311-ZVITAMBO      ZIMBABWE     NA                   NA                0.2453178   0.2437855   0.2468501
12 months   ki1148112-LCNI-5        MALAWI       NA                   NA                0.3936000   0.3873835   0.3998165
18 months   ki0047075b-MAL-ED       BANGLADESH   NA                   NA                0.4751131   0.4511365   0.4990898
18 months   ki0047075b-MAL-ED       INDIA        NA                   NA                0.4537445   0.4429476   0.4645414
18 months   ki0047075b-MAL-ED       PERU         NA                   NA                0.4459459   0.4344910   0.4574009
18 months   ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.5874730   0.5742137   0.6007323
18 months   ki1017093b-PROVIDE      BANGLADESH   NA                   NA                0.3731884   0.3624312   0.3839457
18 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.3012618   0.2941126   0.3084110
18 months   ki1126311-ZVITAMBO      ZIMBABWE     NA                   NA                0.4771323   0.4743033   0.4799612
18 months   ki1148112-LCNI-5        MALAWI       NA                   NA                0.4578147   0.4508861   0.4647432
24 months   ki0047075b-MAL-ED       BANGLADESH   NA                   NA                0.4622642   0.4375052   0.4870231
24 months   ki0047075b-MAL-ED       INDIA        NA                   NA                0.4159292   0.4059905   0.4258679
24 months   ki0047075b-MAL-ED       PERU         NA                   NA                0.3681592   0.3530982   0.3832202
24 months   ki1017093-NIH-Birth     BANGLADESH   NA                   NA                0.5547786   0.5419449   0.5676122
24 months   ki1017093b-PROVIDE      BANGLADESH   NA                   NA                0.3281250   0.3183806   0.3378694
24 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.2568093   0.2477856   0.2658330
24 months   ki1148112-LCNI-5        MALAWI       NA                   NA                0.4411765   0.4335510   0.4488019


### Parameter: RR


agecat      studyid                 country      intervention_level   baseline_level     estimate    ci_lower   ci_upper
----------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ---------
Birth       ki0047075b-MAL-ED       BANGLADESH   >=57.5               >=57.5            1.0000000   1.0000000   1.000000
Birth       ki0047075b-MAL-ED       BANGLADESH   <42.5                >=57.5            1.2129380   0.4878157   3.015931
Birth       ki0047075b-MAL-ED       BANGLADESH   [42.5-50)            >=57.5            1.4285714   0.6357904   3.209888
Birth       ki0047075b-MAL-ED       BANGLADESH   [50-57.5)            >=57.5            1.1083744   0.4442330   2.765427
Birth       ki1126311-ZVITAMBO      ZIMBABWE     >=57.5               >=57.5            1.0000000   1.0000000   1.000000
Birth       ki1126311-ZVITAMBO      ZIMBABWE     <42.5                >=57.5            2.7967499   2.0342815   3.844999
Birth       ki1126311-ZVITAMBO      ZIMBABWE     [42.5-50)            >=57.5            1.7926754   1.5328590   2.096530
Birth       ki1126311-ZVITAMBO      ZIMBABWE     [50-57.5)            >=57.5            1.5288853   1.3490895   1.732643
3 months    ki0047075b-MAL-ED       BANGLADESH   >=57.5               >=57.5            1.0000000   1.0000000   1.000000
3 months    ki0047075b-MAL-ED       BANGLADESH   <42.5                >=57.5            2.1212121   0.8815240   5.104275
3 months    ki0047075b-MAL-ED       BANGLADESH   [42.5-50)            >=57.5            1.7045455   0.7227616   4.019963
3 months    ki0047075b-MAL-ED       BANGLADESH   [50-57.5)            >=57.5            0.7309943   0.2369227   2.255388
3 months    ki0047075b-MAL-ED       PERU         >=57.5               >=57.5            1.0000000   1.0000000   1.000000
3 months    ki0047075b-MAL-ED       PERU         <42.5                >=57.5            1.7687075   0.7936834   3.941529
3 months    ki0047075b-MAL-ED       PERU         [42.5-50)            >=57.5            1.3265306   0.7438469   2.365653
3 months    ki0047075b-MAL-ED       PERU         [50-57.5)            >=57.5            1.3780538   0.8500307   2.234075
3 months    ki1017093-NIH-Birth     BANGLADESH   >=57.5               >=57.5            1.0000000   1.0000000   1.000000
3 months    ki1017093-NIH-Birth     BANGLADESH   <42.5                >=57.5            1.8809524   1.1117994   3.182212
3 months    ki1017093-NIH-Birth     BANGLADESH   [42.5-50)            >=57.5            1.0884699   0.6249334   1.895829
3 months    ki1017093-NIH-Birth     BANGLADESH   [50-57.5)            >=57.5            1.0805471   0.6024068   1.938195
3 months    ki1017093b-PROVIDE      BANGLADESH   >=57.5               >=57.5            1.0000000   1.0000000   1.000000
3 months    ki1017093b-PROVIDE      BANGLADESH   <42.5                >=57.5            2.8606061   1.3670170   5.986076
3 months    ki1017093b-PROVIDE      BANGLADESH   [42.5-50)            >=57.5            1.7220812   0.7957070   3.726955
3 months    ki1017093b-PROVIDE      BANGLADESH   [50-57.5)            >=57.5            1.2591463   0.5455095   2.906365
3 months    ki1017093c-NIH-Crypto   BANGLADESH   >=57.5               >=57.5            1.0000000   1.0000000   1.000000
3 months    ki1017093c-NIH-Crypto   BANGLADESH   <42.5                >=57.5            2.3807190   1.4796463   3.830525
3 months    ki1017093c-NIH-Crypto   BANGLADESH   [42.5-50)            >=57.5            1.9756637   1.2772220   3.056044
3 months    ki1017093c-NIH-Crypto   BANGLADESH   [50-57.5)            >=57.5            1.6257862   1.0291327   2.568357
3 months    ki1126311-ZVITAMBO      ZIMBABWE     >=57.5               >=57.5            1.0000000   1.0000000   1.000000
3 months    ki1126311-ZVITAMBO      ZIMBABWE     <42.5                >=57.5            2.7656520   2.1417866   3.571239
3 months    ki1126311-ZVITAMBO      ZIMBABWE     [42.5-50)            >=57.5            2.0105893   1.7783962   2.273098
3 months    ki1126311-ZVITAMBO      ZIMBABWE     [50-57.5)            >=57.5            1.5543632   1.4030128   1.722041
6 months    ki0047075b-MAL-ED       INDIA        >=57.5               >=57.5            1.0000000   1.0000000   1.000000
6 months    ki0047075b-MAL-ED       INDIA        <42.5                >=57.5            1.4608696   0.5172244   4.126139
6 months    ki0047075b-MAL-ED       INDIA        [42.5-50)            >=57.5            1.8410959   0.7252063   4.674027
6 months    ki0047075b-MAL-ED       INDIA        [50-57.5)            >=57.5            1.8162162   0.7151321   4.612632
6 months    ki0047075b-MAL-ED       PERU         >=57.5               >=57.5            1.0000000   1.0000000   1.000000
6 months    ki0047075b-MAL-ED       PERU         <42.5                >=57.5            2.0242915   0.9101922   4.502078
6 months    ki0047075b-MAL-ED       PERU         [42.5-50)            >=57.5            1.6569201   0.9412708   2.916678
6 months    ki0047075b-MAL-ED       PERU         [50-57.5)            >=57.5            0.9523810   0.5359306   1.692438
6 months    ki1017093-NIH-Birth     BANGLADESH   >=57.5               >=57.5            1.0000000   1.0000000   1.000000
6 months    ki1017093-NIH-Birth     BANGLADESH   <42.5                >=57.5            2.3058485   1.3898757   3.825477
6 months    ki1017093-NIH-Birth     BANGLADESH   [42.5-50)            >=57.5            1.1490683   0.6655652   1.983815
6 months    ki1017093-NIH-Birth     BANGLADESH   [50-57.5)            >=57.5            1.0164835   0.5638787   1.832378
6 months    ki1017093b-PROVIDE      BANGLADESH   >=57.5               >=57.5            1.0000000   1.0000000   1.000000
6 months    ki1017093b-PROVIDE      BANGLADESH   <42.5                >=57.5            2.4150470   1.2889840   4.524844
6 months    ki1017093b-PROVIDE      BANGLADESH   [42.5-50)            >=57.5            1.5387776   0.7989845   2.963558
6 months    ki1017093b-PROVIDE      BANGLADESH   [50-57.5)            >=57.5            1.1443850   0.5632682   2.325033
6 months    ki1017093c-NIH-Crypto   BANGLADESH   >=57.5               >=57.5            1.0000000   1.0000000   1.000000
6 months    ki1017093c-NIH-Crypto   BANGLADESH   <42.5                >=57.5            2.5190404   1.6117314   3.937110
6 months    ki1017093c-NIH-Crypto   BANGLADESH   [42.5-50)            >=57.5            1.6550481   1.0754286   2.547063
6 months    ki1017093c-NIH-Crypto   BANGLADESH   [50-57.5)            >=57.5            1.3742824   0.8693636   2.172454
6 months    ki1126311-ZVITAMBO      ZIMBABWE     >=57.5               >=57.5            1.0000000   1.0000000   1.000000
6 months    ki1126311-ZVITAMBO      ZIMBABWE     <42.5                >=57.5            2.9652836   2.2898233   3.839994
6 months    ki1126311-ZVITAMBO      ZIMBABWE     [42.5-50)            >=57.5            1.9547314   1.7115037   2.232525
6 months    ki1126311-ZVITAMBO      ZIMBABWE     [50-57.5)            >=57.5            1.4766249   1.3206874   1.650975
6 months    ki1148112-LCNI-5        MALAWI       >=57.5               >=57.5            1.0000000   1.0000000   1.000000
6 months    ki1148112-LCNI-5        MALAWI       <42.5                >=57.5            2.6762452   1.8499965   3.871515
6 months    ki1148112-LCNI-5        MALAWI       [42.5-50)            >=57.5            1.7359428   1.2278292   2.454330
6 months    ki1148112-LCNI-5        MALAWI       [50-57.5)            >=57.5            1.4789146   1.0354552   2.112297
9 months    ki0047075b-MAL-ED       BANGLADESH   >=57.5               >=57.5            1.0000000   1.0000000   1.000000
9 months    ki0047075b-MAL-ED       BANGLADESH   <42.5                >=57.5            2.2252747   1.0219520   4.845479
9 months    ki0047075b-MAL-ED       BANGLADESH   [42.5-50)            >=57.5            2.0383275   0.9601267   4.327324
9 months    ki0047075b-MAL-ED       BANGLADESH   [50-57.5)            >=57.5            0.8181818   0.3092831   2.164430
9 months    ki0047075b-MAL-ED       INDIA        >=57.5               >=57.5            1.0000000   1.0000000   1.000000
9 months    ki0047075b-MAL-ED       INDIA        <42.5                >=57.5            1.6363636   0.7117209   3.762270
9 months    ki0047075b-MAL-ED       INDIA        [42.5-50)            >=57.5            1.0684932   0.4619301   2.471538
9 months    ki0047075b-MAL-ED       INDIA        [50-57.5)            >=57.5            1.6666667   0.7688307   3.612990
9 months    ki0047075b-MAL-ED       PERU         >=57.5               >=57.5            1.0000000   1.0000000   1.000000
9 months    ki0047075b-MAL-ED       PERU         <42.5                >=57.5            3.0659341   1.4314758   6.566616
9 months    ki0047075b-MAL-ED       PERU         [42.5-50)            >=57.5            2.4747899   1.3566562   4.514471
9 months    ki0047075b-MAL-ED       PERU         [50-57.5)            >=57.5            1.6268222   0.8963044   2.952736
9 months    ki1017093-NIH-Birth     BANGLADESH   >=57.5               >=57.5            1.0000000   1.0000000   1.000000
9 months    ki1017093-NIH-Birth     BANGLADESH   <42.5                >=57.5            2.6164680   1.5564846   4.398312
9 months    ki1017093-NIH-Birth     BANGLADESH   [42.5-50)            >=57.5            1.8479745   1.0838660   3.150768
9 months    ki1017093-NIH-Birth     BANGLADESH   [50-57.5)            >=57.5            1.7521368   1.0091297   3.042209
9 months    ki1017093b-PROVIDE      BANGLADESH   >=57.5               >=57.5            1.0000000   1.0000000   1.000000
9 months    ki1017093b-PROVIDE      BANGLADESH   <42.5                >=57.5            3.6928104   2.0257081   6.731892
9 months    ki1017093b-PROVIDE      BANGLADESH   [42.5-50)            >=57.5            2.2577422   1.2083084   4.218625
9 months    ki1017093b-PROVIDE      BANGLADESH   [50-57.5)            >=57.5            1.4487179   0.7320157   2.867129
9 months    ki1017093c-NIH-Crypto   BANGLADESH   >=57.5               >=57.5            1.0000000   1.0000000   1.000000
9 months    ki1017093c-NIH-Crypto   BANGLADESH   <42.5                >=57.5            3.0693069   1.9676271   4.787820
9 months    ki1017093c-NIH-Crypto   BANGLADESH   [42.5-50)            >=57.5            2.0339367   1.3175565   3.139826
9 months    ki1017093c-NIH-Crypto   BANGLADESH   [50-57.5)            >=57.5            1.6439394   1.0376006   2.604602
9 months    ki1126311-ZVITAMBO      ZIMBABWE     >=57.5               >=57.5            1.0000000   1.0000000   1.000000
9 months    ki1126311-ZVITAMBO      ZIMBABWE     <42.5                >=57.5            2.9907587   2.3599998   3.790101
9 months    ki1126311-ZVITAMBO      ZIMBABWE     [42.5-50)            >=57.5            1.9246781   1.6984227   2.181074
9 months    ki1126311-ZVITAMBO      ZIMBABWE     [50-57.5)            >=57.5            1.5508177   1.3968865   1.721711
9 months    ki1148112-LCNI-5        MALAWI       >=57.5               >=57.5            1.0000000   1.0000000   1.000000
9 months    ki1148112-LCNI-5        MALAWI       <42.5                >=57.5            2.0680000   1.3769309   3.105910
9 months    ki1148112-LCNI-5        MALAWI       [42.5-50)            >=57.5            1.2485496   0.8559796   1.821160
9 months    ki1148112-LCNI-5        MALAWI       [50-57.5)            >=57.5            1.1463415   0.7796290   1.685544
12 months   ki0047075b-MAL-ED       BANGLADESH   >=57.5               >=57.5            1.0000000   1.0000000   1.000000
12 months   ki0047075b-MAL-ED       BANGLADESH   <42.5                >=57.5            1.4600302   0.8375742   2.545074
12 months   ki0047075b-MAL-ED       BANGLADESH   [42.5-50)            >=57.5            1.3049120   0.7664384   2.221699
12 months   ki0047075b-MAL-ED       BANGLADESH   [50-57.5)            >=57.5            0.4923077   0.2238430   1.082754
12 months   ki0047075b-MAL-ED       INDIA        >=57.5               >=57.5            1.0000000   1.0000000   1.000000
12 months   ki0047075b-MAL-ED       INDIA        <42.5                >=57.5            1.6969697   0.8425032   3.418036
12 months   ki0047075b-MAL-ED       INDIA        [42.5-50)            >=57.5            1.4202899   0.7183467   2.808147
12 months   ki0047075b-MAL-ED       INDIA        [50-57.5)            >=57.5            1.8148148   0.9484661   3.472505
12 months   ki0047075b-MAL-ED       PERU         >=57.5               >=57.5            1.0000000   1.0000000   1.000000
12 months   ki0047075b-MAL-ED       PERU         <42.5                >=57.5            2.0769231   1.0268544   4.200799
12 months   ki0047075b-MAL-ED       PERU         [42.5-50)            >=57.5            1.6200000   0.9479674   2.768450
12 months   ki0047075b-MAL-ED       PERU         [50-57.5)            >=57.5            1.1739130   0.6989963   1.971501
12 months   ki1017093-NIH-Birth     BANGLADESH   >=57.5               >=57.5            1.0000000   1.0000000   1.000000
12 months   ki1017093-NIH-Birth     BANGLADESH   <42.5                >=57.5            2.9130435   1.7492626   4.851086
12 months   ki1017093-NIH-Birth     BANGLADESH   [42.5-50)            >=57.5            1.9365967   1.1436679   3.279280
12 months   ki1017093-NIH-Birth     BANGLADESH   [50-57.5)            >=57.5            1.3204069   0.7427532   2.347313
12 months   ki1017093b-PROVIDE      BANGLADESH   >=57.5               >=57.5            1.0000000   1.0000000   1.000000
12 months   ki1017093b-PROVIDE      BANGLADESH   <42.5                >=57.5            3.6599190   2.1227169   6.310313
12 months   ki1017093b-PROVIDE      BANGLADESH   [42.5-50)            >=57.5            2.6222604   1.5004079   4.582920
12 months   ki1017093b-PROVIDE      BANGLADESH   [50-57.5)            >=57.5            1.4487179   0.7787851   2.694946
12 months   ki1017093c-NIH-Crypto   BANGLADESH   >=57.5               >=57.5            1.0000000   1.0000000   1.000000
12 months   ki1017093c-NIH-Crypto   BANGLADESH   <42.5                >=57.5            2.6421208   1.7379387   4.016714
12 months   ki1017093c-NIH-Crypto   BANGLADESH   [42.5-50)            >=57.5            1.7602041   1.1748877   2.637119
12 months   ki1017093c-NIH-Crypto   BANGLADESH   [50-57.5)            >=57.5            1.4385217   0.9359093   2.211053
12 months   ki1126311-ZVITAMBO      ZIMBABWE     >=57.5               >=57.5            1.0000000   1.0000000   1.000000
12 months   ki1126311-ZVITAMBO      ZIMBABWE     <42.5                >=57.5            2.4664437   1.9560646   3.109992
12 months   ki1126311-ZVITAMBO      ZIMBABWE     [42.5-50)            >=57.5            1.8259468   1.6325412   2.042265
12 months   ki1126311-ZVITAMBO      ZIMBABWE     [50-57.5)            >=57.5            1.4149372   1.2834451   1.559901
12 months   ki1148112-LCNI-5        MALAWI       >=57.5               >=57.5            1.0000000   1.0000000   1.000000
12 months   ki1148112-LCNI-5        MALAWI       <42.5                >=57.5            2.1074020   1.4339175   3.097210
12 months   ki1148112-LCNI-5        MALAWI       [42.5-50)            >=57.5            1.3828195   0.9697193   1.971900
12 months   ki1148112-LCNI-5        MALAWI       [50-57.5)            >=57.5            1.2226364   0.8475793   1.763658
18 months   ki0047075b-MAL-ED       BANGLADESH   >=57.5               >=57.5            1.0000000   1.0000000   1.000000
18 months   ki0047075b-MAL-ED       BANGLADESH   <42.5                >=57.5            2.5381944   1.5169957   4.246835
18 months   ki0047075b-MAL-ED       BANGLADESH   [42.5-50)            >=57.5            2.0673077   1.2317662   3.469620
18 months   ki0047075b-MAL-ED       BANGLADESH   [50-57.5)            >=57.5            0.9647436   0.4995144   1.863270
18 months   ki0047075b-MAL-ED       INDIA        >=57.5               >=57.5            1.0000000   1.0000000   1.000000
18 months   ki0047075b-MAL-ED       INDIA        <42.5                >=57.5            1.6772727   1.0511717   2.676293
18 months   ki0047075b-MAL-ED       INDIA        [42.5-50)            >=57.5            1.1323810   0.6930541   1.850197
18 months   ki0047075b-MAL-ED       INDIA        [50-57.5)            >=57.5            1.2148148   0.7519353   1.962636
18 months   ki0047075b-MAL-ED       PERU         >=57.5               >=57.5            1.0000000   1.0000000   1.000000
18 months   ki0047075b-MAL-ED       PERU         <42.5                >=57.5            1.3846154   0.7124132   2.691078
18 months   ki0047075b-MAL-ED       PERU         [42.5-50)            >=57.5            1.6046512   1.0582271   2.433226
18 months   ki0047075b-MAL-ED       PERU         [50-57.5)            >=57.5            1.5176471   1.0444604   2.205208
18 months   ki1017093-NIH-Birth     BANGLADESH   >=57.5               >=57.5            1.0000000   1.0000000   1.000000
18 months   ki1017093-NIH-Birth     BANGLADESH   <42.5                >=57.5            2.3671875   1.6500302   3.396045
18 months   ki1017093-NIH-Birth     BANGLADESH   [42.5-50)            >=57.5            1.7169811   1.1805622   2.497136
18 months   ki1017093-NIH-Birth     BANGLADESH   [50-57.5)            >=57.5            1.5663717   1.0587649   2.317342
18 months   ki1017093b-PROVIDE      BANGLADESH   >=57.5               >=57.5            1.0000000   1.0000000   1.000000
18 months   ki1017093b-PROVIDE      BANGLADESH   <42.5                >=57.5            2.3920863   1.6310378   3.508243
18 months   ki1017093b-PROVIDE      BANGLADESH   [42.5-50)            >=57.5            1.8788344   1.2672712   2.785527
18 months   ki1017093b-PROVIDE      BANGLADESH   [50-57.5)            >=57.5            1.0862069   0.6913993   1.706460
18 months   ki1017093c-NIH-Crypto   BANGLADESH   >=57.5               >=57.5            1.0000000   1.0000000   1.000000
18 months   ki1017093c-NIH-Crypto   BANGLADESH   <42.5                >=57.5            2.5837912   1.7704589   3.770761
18 months   ki1017093c-NIH-Crypto   BANGLADESH   [42.5-50)            >=57.5            1.7185930   1.1845054   2.493498
18 months   ki1017093c-NIH-Crypto   BANGLADESH   [50-57.5)            >=57.5            1.5753251   1.0681796   2.323251
18 months   ki1126311-ZVITAMBO      ZIMBABWE     >=57.5               >=57.5            1.0000000   1.0000000   1.000000
18 months   ki1126311-ZVITAMBO      ZIMBABWE     <42.5                >=57.5            1.5787321   1.1756816   2.119958
18 months   ki1126311-ZVITAMBO      ZIMBABWE     [42.5-50)            >=57.5            1.3211495   1.1574456   1.508007
18 months   ki1126311-ZVITAMBO      ZIMBABWE     [50-57.5)            >=57.5            1.1950737   1.0624461   1.344258
18 months   ki1148112-LCNI-5        MALAWI       >=57.5               >=57.5            1.0000000   1.0000000   1.000000
18 months   ki1148112-LCNI-5        MALAWI       <42.5                >=57.5            2.1152709   1.5164275   2.950600
18 months   ki1148112-LCNI-5        MALAWI       [42.5-50)            >=57.5            1.6810837   1.2493984   2.261923
18 months   ki1148112-LCNI-5        MALAWI       [50-57.5)            >=57.5            1.3185387   0.9654702   1.800723
24 months   ki0047075b-MAL-ED       BANGLADESH   >=57.5               >=57.5            1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED       BANGLADESH   <42.5                >=57.5            2.7797980   1.6134154   4.789391
24 months   ki0047075b-MAL-ED       BANGLADESH   [42.5-50)            >=57.5            2.1955168   1.2668354   3.804988
24 months   ki0047075b-MAL-ED       BANGLADESH   [50-57.5)            >=57.5            1.0730838   0.5441509   2.116157
24 months   ki0047075b-MAL-ED       INDIA        >=57.5               >=57.5            1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED       INDIA        <42.5                >=57.5            1.7424242   1.0028782   3.027329
24 months   ki0047075b-MAL-ED       INDIA        [42.5-50)            >=57.5            1.2380952   0.7042206   2.176704
24 months   ki0047075b-MAL-ED       INDIA        [50-57.5)            >=57.5            1.5277778   0.8929461   2.613937
24 months   ki0047075b-MAL-ED       PERU         >=57.5               >=57.5            1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED       PERU         <42.5                >=57.5            2.1388889   1.0185607   4.491481
24 months   ki0047075b-MAL-ED       PERU         [42.5-50)            >=57.5            2.0840456   1.2412243   3.499163
24 months   ki0047075b-MAL-ED       PERU         [50-57.5)            >=57.5            1.8251852   1.1257499   2.959184
24 months   ki1017093-NIH-Birth     BANGLADESH   >=57.5               >=57.5            1.0000000   1.0000000   1.000000
24 months   ki1017093-NIH-Birth     BANGLADESH   <42.5                >=57.5            2.2973898   1.5629033   3.377048
24 months   ki1017093-NIH-Birth     BANGLADESH   [42.5-50)            >=57.5            1.6688149   1.1187253   2.489390
24 months   ki1017093-NIH-Birth     BANGLADESH   [50-57.5)            >=57.5            1.5215789   0.9984793   2.318729
24 months   ki1017093b-PROVIDE      BANGLADESH   >=57.5               >=57.5            1.0000000   1.0000000   1.000000
24 months   ki1017093b-PROVIDE      BANGLADESH   <42.5                >=57.5            2.9096244   1.8411009   4.598289
24 months   ki1017093b-PROVIDE      BANGLADESH   [42.5-50)            >=57.5            2.4666667   1.5546815   3.913628
24 months   ki1017093b-PROVIDE      BANGLADESH   [50-57.5)            >=57.5            1.4509804   0.8706596   2.418103
24 months   ki1017093c-NIH-Crypto   BANGLADESH   >=57.5               >=57.5            1.0000000   1.0000000   1.000000
24 months   ki1017093c-NIH-Crypto   BANGLADESH   <42.5                >=57.5            3.4907407   2.0936724   5.820047
24 months   ki1017093c-NIH-Crypto   BANGLADESH   [42.5-50)            >=57.5            2.5843373   1.5915302   4.196464
24 months   ki1017093c-NIH-Crypto   BANGLADESH   [50-57.5)            >=57.5            1.7717826   1.0404444   3.017185
24 months   ki1148112-LCNI-5        MALAWI       >=57.5               >=57.5            1.0000000   1.0000000   1.000000
24 months   ki1148112-LCNI-5        MALAWI       <42.5                >=57.5            2.3617424   1.5402938   3.621275
24 months   ki1148112-LCNI-5        MALAWI       [42.5-50)            >=57.5            1.9458586   1.3254402   2.856685
24 months   ki1148112-LCNI-5        MALAWI       [50-57.5)            >=57.5            1.6421752   1.1085495   2.432674


### Parameter: PAR


agecat      studyid                 country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki0047075b-MAL-ED       BANGLADESH   >=57.5               NA                0.0307317   -0.0656868   0.1271503
Birth       ki1126311-ZVITAMBO      ZIMBABWE     >=57.5               NA                0.0229050    0.0160614   0.0297487
3 months    ki0047075b-MAL-ED       BANGLADESH   >=57.5               NA                0.0520000   -0.0385977   0.1425977
3 months    ki0047075b-MAL-ED       PERU         >=57.5               NA                0.0506721   -0.0267655   0.1281096
3 months    ki1017093-NIH-Birth     BANGLADESH   >=57.5               NA                0.0508550   -0.0335858   0.1352958
3 months    ki1017093b-PROVIDE      BANGLADESH   >=57.5               NA                0.0517686    0.0062289   0.0973083
3 months    ki1017093c-NIH-Crypto   BANGLADESH   >=57.5               NA                0.0866261    0.0386965   0.1345558
3 months    ki1126311-ZVITAMBO      ZIMBABWE     >=57.5               NA                0.0433521    0.0335319   0.0531723
6 months    ki0047075b-MAL-ED       INDIA        >=57.5               NA                0.0724417   -0.0258267   0.1707102
6 months    ki0047075b-MAL-ED       PERU         >=57.5               NA                0.0305882   -0.0468101   0.1079866
6 months    ki1017093-NIH-Birth     BANGLADESH   >=57.5               NA                0.0789672   -0.0107912   0.1687257
6 months    ki1017093b-PROVIDE      BANGLADESH   >=57.5               NA                0.0569901   -0.0007768   0.1147570
6 months    ki1017093c-NIH-Crypto   BANGLADESH   >=57.5               NA                0.0722241    0.0228519   0.1215962
6 months    ki1126311-ZVITAMBO      ZIMBABWE     >=57.5               NA                0.0378914    0.0278643   0.0479186
6 months    ki1148112-LCNI-5        MALAWI       >=57.5               NA                0.1396344    0.0663124   0.2129565
9 months    ki0047075b-MAL-ED       BANGLADESH   >=57.5               NA                0.0923077   -0.0145007   0.1991161
9 months    ki0047075b-MAL-ED       INDIA        >=57.5               NA                0.0584416   -0.0547051   0.1715882
9 months    ki0047075b-MAL-ED       PERU         >=57.5               NA                0.0965212    0.0227827   0.1702596
9 months    ki1017093-NIH-Birth     BANGLADESH   >=57.5               NA                0.1712877    0.0797249   0.2628505
9 months    ki1017093b-PROVIDE      BANGLADESH   >=57.5               NA                0.1145754    0.0593373   0.1698135
9 months    ki1017093c-NIH-Crypto   BANGLADESH   >=57.5               NA                0.1032624    0.0546546   0.1518702
9 months    ki1126311-ZVITAMBO      ZIMBABWE     >=57.5               NA                0.0476948    0.0365325   0.0588571
9 months    ki1148112-LCNI-5        MALAWI       >=57.5               NA                0.0663688   -0.0231880   0.1559257
12 months   ki0047075b-MAL-ED       BANGLADESH   >=57.5               NA                0.0264339   -0.1093720   0.1622397
12 months   ki0047075b-MAL-ED       INDIA        >=57.5               NA                0.1117055   -0.0129349   0.2363459
12 months   ki0047075b-MAL-ED       PERU         >=57.5               NA                0.0553288   -0.0311408   0.1417984
12 months   ki1017093-NIH-Birth     BANGLADESH   >=57.5               NA                0.1807156    0.0851827   0.2762485
12 months   ki1017093b-PROVIDE      BANGLADESH   >=57.5               NA                0.1466224    0.0870225   0.2062223
12 months   ki1017093c-NIH-Crypto   BANGLADESH   >=57.5               NA                0.0900357    0.0377864   0.1422851
12 months   ki1126311-ZVITAMBO      ZIMBABWE     >=57.5               NA                0.0520256    0.0386614   0.0653899
12 months   ki1148112-LCNI-5        MALAWI       >=57.5               NA                0.0981455    0.0025418   0.1937491
18 months   ki0047075b-MAL-ED       BANGLADESH   >=57.5               NA                0.1960434    0.0595511   0.3325356
18 months   ki0047075b-MAL-ED       INDIA        >=57.5               NA                0.0878908   -0.0602653   0.2360470
18 months   ki0047075b-MAL-ED       PERU         >=57.5               NA                0.1126126    0.0090854   0.2161398
18 months   ki1017093-NIH-Birth     BANGLADESH   >=57.5               NA                0.2541397    0.1368569   0.3714225
18 months   ki1017093b-PROVIDE      BANGLADESH   >=57.5               NA                0.1446170    0.0635097   0.2257242
18 months   ki1017093c-NIH-Crypto   BANGLADESH   >=57.5               NA                0.1141273    0.0551890   0.1730657
18 months   ki1126311-ZVITAMBO      ZIMBABWE     >=57.5               NA                0.0548525    0.0198854   0.0898195
18 months   ki1148112-LCNI-5        MALAWI       >=57.5               NA                0.1480801    0.0624868   0.2336735
24 months   ki0047075b-MAL-ED       BANGLADESH   >=57.5               NA                0.2064502    0.0734057   0.3394947
24 months   ki0047075b-MAL-ED       INDIA        >=57.5               NA                0.1159292   -0.0267455   0.2586039
24 months   ki0047075b-MAL-ED       PERU         >=57.5               NA                0.1343930    0.0384366   0.2303493
24 months   ki1017093-NIH-Birth     BANGLADESH   >=57.5               NA                0.2327447    0.1126899   0.3527994
24 months   ki1017093b-PROVIDE      BANGLADESH   >=57.5               NA                0.1659628    0.0966438   0.2352819
24 months   ki1017093c-NIH-Crypto   BANGLADESH   >=57.5               NA                0.1309352    0.0757722   0.1860982
24 months   ki1148112-LCNI-5        MALAWI       >=57.5               NA                0.1853625    0.0927531   0.2779719


### Parameter: PAF


agecat      studyid                 country      intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki0047075b-MAL-ED       BANGLADESH   >=57.5               NA                0.1800000   -0.6325599   0.5881315
Birth       ki1126311-ZVITAMBO      ZIMBABWE     >=57.5               NA                0.2261692    0.1556406   0.2908066
3 months    ki0047075b-MAL-ED       BANGLADESH   >=57.5               NA                0.3023256   -0.4821721   0.6715971
3 months    ki0047075b-MAL-ED       PERU         >=57.5               NA                0.2006059   -0.1727223   0.4550876
3 months    ki1017093-NIH-Birth     BANGLADESH   >=57.5               NA                0.2229796   -0.2508619   0.5173242
3 months    ki1017093b-PROVIDE      BANGLADESH   >=57.5               NA                0.4329738   -0.1083905   0.7099229
3 months    ki1017093c-NIH-Crypto   BANGLADESH   >=57.5               NA                0.4042553    0.1336591   0.5903325
3 months    ki1126311-ZVITAMBO      ZIMBABWE     >=57.5               NA                0.2428396    0.1859521   0.2957518
6 months    ki0047075b-MAL-ED       INDIA        >=57.5               NA                0.3783069   -0.4184023   0.7275087
6 months    ki0047075b-MAL-ED       PERU         >=57.5               NA                0.1386667   -0.2938061   0.4265794
6 months    ki1017093-NIH-Birth     BANGLADESH   >=57.5               NA                0.2944820   -0.1325252   0.5604904
6 months    ki1017093b-PROVIDE      BANGLADESH   >=57.5               NA                0.3566476   -0.1273470   0.6328528
6 months    ki1017093c-NIH-Crypto   BANGLADESH   >=57.5               NA                0.3442681    0.0620554   0.5415674
6 months    ki1126311-ZVITAMBO      ZIMBABWE     >=57.5               NA                0.2271198    0.1647730   0.2848126
6 months    ki1148112-LCNI-5        MALAWI       >=57.5               NA                0.3794611    0.1451265   0.5495608
9 months    ki0047075b-MAL-ED       BANGLADESH   >=57.5               NA                0.3724138   -0.2436803   0.6833073
9 months    ki0047075b-MAL-ED       INDIA        >=57.5               NA                0.2596154   -0.4590285   0.6242915
9 months    ki0047075b-MAL-ED       PERU         >=57.5               NA                0.3906810    0.0093596   0.6252226
9 months    ki1017093-NIH-Birth     BANGLADESH   >=57.5               NA                0.4797948    0.1495347   0.6818054
9 months    ki1017093b-PROVIDE      BANGLADESH   >=57.5               NA                0.5406526    0.1933458   0.7384257
9 months    ki1017093c-NIH-Crypto   BANGLADESH   >=57.5               NA                0.4445319    0.1921309   0.6180757
9 months    ki1126311-ZVITAMBO      ZIMBABWE     >=57.5               NA                0.2419937    0.1833772   0.2964027
9 months    ki1148112-LCNI-5        MALAWI       >=57.5               NA                0.1997099   -0.1204436   0.4283833
12 months   ki0047075b-MAL-ED       BANGLADESH   >=57.5               NA                0.0821212   -0.4529343   0.4201380
12 months   ki0047075b-MAL-ED       INDIA        >=57.5               NA                0.3426641   -0.1751260   0.6323028
12 months   ki0047075b-MAL-ED       PERU         >=57.5               NA                0.1993464   -0.1807347   0.4570786
12 months   ki1017093-NIH-Birth     BANGLADESH   >=57.5               NA                0.4822356    0.1552251   0.6826610
12 months   ki1017093b-PROVIDE      BANGLADESH   >=57.5               NA                0.5603405    0.2656278   0.7367813
12 months   ki1017093c-NIH-Crypto   BANGLADESH   >=57.5               NA                0.3717264    0.1154451   0.5537556
12 months   ki1126311-ZVITAMBO      ZIMBABWE     >=57.5               NA                0.2120744    0.1558153   0.2645843
12 months   ki1148112-LCNI-5        MALAWI       >=57.5               NA                0.2493533   -0.0371355   0.4567051
18 months   ki0047075b-MAL-ED       BANGLADESH   >=57.5               NA                0.4126246    0.0468299   0.6380395
18 months   ki0047075b-MAL-ED       INDIA        >=57.5               NA                0.1937012   -0.2083827   0.4619934
18 months   ki0047075b-MAL-ED       PERU         >=57.5               NA                0.2525253   -0.0188625   0.4516252
18 months   ki1017093-NIH-Birth     BANGLADESH   >=57.5               NA                0.4325980    0.1945602   0.6002867
18 months   ki1017093b-PROVIDE      BANGLADESH   >=57.5               NA                0.3875173    0.1283314   0.5696358
18 months   ki1017093c-NIH-Crypto   BANGLADESH   >=57.5               NA                0.3788310    0.1500916   0.5460089
18 months   ki1126311-ZVITAMBO      ZIMBABWE     >=57.5               NA                0.1149628    0.0386138   0.1852486
18 months   ki1148112-LCNI-5        MALAWI       >=57.5               NA                0.3234500    0.1085413   0.4865495
24 months   ki0047075b-MAL-ED       BANGLADESH   >=57.5               NA                0.4466065    0.0749327   0.6689492
24 months   ki0047075b-MAL-ED       INDIA        >=57.5               NA                0.2787234   -0.1598560   0.5514616
24 months   ki0047075b-MAL-ED       PERU         >=57.5               NA                0.3650404    0.0456671   0.5775335
24 months   ki1017093-NIH-Birth     BANGLADESH   >=57.5               NA                0.4195271    0.1584633   0.5996030
24 months   ki1017093b-PROVIDE      BANGLADESH   >=57.5               NA                0.5057915    0.2446200   0.6766634
24 months   ki1017093c-NIH-Crypto   BANGLADESH   >=57.5               NA                0.5098538    0.2436792   0.6823526
24 months   ki1148112-LCNI-5        MALAWI       >=57.5               NA                0.4201550    0.1678907   0.5959423
