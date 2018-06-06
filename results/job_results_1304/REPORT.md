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

**Intervention Variable:** hfoodsec

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                 country        A                              n     nA   nAY0   nAY1
----------  ----------------------  -------------  -------------------------  -----  -----  -----  -----
3 months    ki0047075b-MAL-ED       BANGLADESH     Food Secure                  194    161    118     43
3 months    ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure         194      4      3      1
3 months    ki0047075b-MAL-ED       BANGLADESH     Moderately Food Insecure     194     23     20      3
3 months    ki0047075b-MAL-ED       BANGLADESH     Severely Food Insecure       194      6      3      3
3 months    ki0047075b-MAL-ED       BRAZIL         Food Secure                  129      3      3      0
3 months    ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure         129     11      8      3
3 months    ki0047075b-MAL-ED       BRAZIL         Moderately Food Insecure     129     67     55     12
3 months    ki0047075b-MAL-ED       BRAZIL         Severely Food Insecure       129     48     45      3
3 months    ki0047075b-MAL-ED       INDIA          Food Secure                  212    190    138     52
3 months    ki0047075b-MAL-ED       INDIA          Mildly Food Insecure         212      5      5      0
3 months    ki0047075b-MAL-ED       INDIA          Moderately Food Insecure     212      4      3      1
3 months    ki0047075b-MAL-ED       INDIA          Severely Food Insecure       212     13     11      2
3 months    ki0047075b-MAL-ED       NEPAL          Food Secure                  128     94     82     12
3 months    ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure         128     15     12      3
3 months    ki0047075b-MAL-ED       NEPAL          Moderately Food Insecure     128     16     11      5
3 months    ki0047075b-MAL-ED       NEPAL          Severely Food Insecure       128      3      3      0
3 months    ki0047075b-MAL-ED       PERU           Food Secure                  113     27     15     12
3 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure         113     29     21      8
3 months    ki0047075b-MAL-ED       PERU           Moderately Food Insecure     113     28     22      6
3 months    ki0047075b-MAL-ED       PERU           Severely Food Insecure       113     29     16     13
3 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                  233    132     96     36
3 months    ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure         233     19     17      2
3 months    ki0047075b-MAL-ED       SOUTH AFRICA   Moderately Food Insecure     233     76     54     22
3 months    ki0047075b-MAL-ED       SOUTH AFRICA   Severely Food Insecure       233      6      5      1
3 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure                  629     95     78     17
3 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure         629    492    382    110
3 months    ki1017093-NIH-Birth     BANGLADESH     Moderately Food Insecure     629     36     25     11
3 months    ki1017093-NIH-Birth     BANGLADESH     Severely Food Insecure       629      6      4      2
3 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                  758    453    388     65
3 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure         758    219    180     39
3 months    ki1017093c-NIH-Crypto   BANGLADESH     Moderately Food Insecure     758     62     54      8
3 months    ki1017093c-NIH-Crypto   BANGLADESH     Severely Food Insecure       758     24     15      9
3 months    ki1113344-GMS-Nepal     NEPAL          Food Secure                  575    416    353     63
3 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure         575     81     66     15
3 months    ki1113344-GMS-Nepal     NEPAL          Moderately Food Insecure     575     55     48      7
3 months    ki1113344-GMS-Nepal     NEPAL          Severely Food Insecure       575     23     18      5
3 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure                 8534   4303   2814   1489
3 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure        8534   2817   1676   1141
3 months    kiGH5241-JiVitA-3       BANGLADESH     Moderately Food Insecure    8534   1414    852    562
3 months    kiGH5241-JiVitA-3       BANGLADESH     Severely Food Insecure      8534      0      0      0
3 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure                 1143    608    430    178
3 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure        1143    384    283    101
3 months    kiGH5241-JiVitA-4       BANGLADESH     Moderately Food Insecure    1143    151    116     35
3 months    kiGH5241-JiVitA-4       BANGLADESH     Severely Food Insecure      1143      0      0      0
6 months    ki0047075b-MAL-ED       BANGLADESH     Food Secure                  194    161    109     52
6 months    ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure         194      4      2      2
6 months    ki0047075b-MAL-ED       BANGLADESH     Moderately Food Insecure     194     23     18      5
6 months    ki0047075b-MAL-ED       BANGLADESH     Severely Food Insecure       194      6      2      4
6 months    ki0047075b-MAL-ED       BRAZIL         Food Secure                  129      3      3      0
6 months    ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure         129     11      7      4
6 months    ki0047075b-MAL-ED       BRAZIL         Moderately Food Insecure     129     67     52     15
6 months    ki0047075b-MAL-ED       BRAZIL         Severely Food Insecure       129     48     43      5
6 months    ki0047075b-MAL-ED       INDIA          Food Secure                  212    190    122     68
6 months    ki0047075b-MAL-ED       INDIA          Mildly Food Insecure         212      5      5      0
6 months    ki0047075b-MAL-ED       INDIA          Moderately Food Insecure     212      4      3      1
6 months    ki0047075b-MAL-ED       INDIA          Severely Food Insecure       212     13     10      3
6 months    ki0047075b-MAL-ED       NEPAL          Food Secure                  128     94     81     13
6 months    ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure         128     15     12      3
6 months    ki0047075b-MAL-ED       NEPAL          Moderately Food Insecure     128     16     10      6
6 months    ki0047075b-MAL-ED       NEPAL          Severely Food Insecure       128      3      2      1
6 months    ki0047075b-MAL-ED       PERU           Food Secure                  112     27     13     14
6 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure         112     29     17     12
6 months    ki0047075b-MAL-ED       PERU           Moderately Food Insecure     112     28     16     12
6 months    ki0047075b-MAL-ED       PERU           Severely Food Insecure       112     28     16     12
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                  231    130     79     51
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure         231     19     16      3
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Moderately Food Insecure     231     76     46     30
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Severely Food Insecure       231      6      4      2
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure                  551     83     56     27
6 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure         551    427    271    156
6 months    ki1017093-NIH-Birth     BANGLADESH     Moderately Food Insecure     551     36     20     16
6 months    ki1017093-NIH-Birth     BANGLADESH     Severely Food Insecure       551      5      3      2
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                  736    439    314    125
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure         736    211    138     73
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Moderately Food Insecure     736     62     44     18
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Severely Food Insecure       736     24     14     10
6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure                  549    396    291    105
6 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure         549     79     52     27
6 months    ki1113344-GMS-Nepal     NEPAL          Moderately Food Insecure     549     51     36     15
6 months    ki1113344-GMS-Nepal     NEPAL          Severely Food Insecure       549     23     15      8
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure                 6833   3446   2146   1300
6 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure        6833   2252   1250   1002
6 months    kiGH5241-JiVitA-3       BANGLADESH     Moderately Food Insecure    6833   1135    626    509
6 months    kiGH5241-JiVitA-3       BANGLADESH     Severely Food Insecure      6833      0      0      0
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure                 1171    612    403    209
6 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure        1171    398    268    130
6 months    kiGH5241-JiVitA-4       BANGLADESH     Moderately Food Insecure    1171    161    116     45
6 months    kiGH5241-JiVitA-4       BANGLADESH     Severely Food Insecure      1171      0      0      0
12 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                  194    161     95     66
12 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure         194      4      2      2
12 months   ki0047075b-MAL-ED       BANGLADESH     Moderately Food Insecure     194     23     14      9
12 months   ki0047075b-MAL-ED       BANGLADESH     Severely Food Insecure       194      6      1      5
12 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                  129      3      3      0
12 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure         129     11      7      4
12 months   ki0047075b-MAL-ED       BRAZIL         Moderately Food Insecure     129     67     49     18
12 months   ki0047075b-MAL-ED       BRAZIL         Severely Food Insecure       129     48     43      5
12 months   ki0047075b-MAL-ED       INDIA          Food Secure                  212    190     94     96
12 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure         212      5      5      0
12 months   ki0047075b-MAL-ED       INDIA          Moderately Food Insecure     212      4      2      2
12 months   ki0047075b-MAL-ED       INDIA          Severely Food Insecure       212     13     10      3
12 months   ki0047075b-MAL-ED       NEPAL          Food Secure                  128     94     77     17
12 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure         128     15     12      3
12 months   ki0047075b-MAL-ED       NEPAL          Moderately Food Insecure     128     16      9      7
12 months   ki0047075b-MAL-ED       NEPAL          Severely Food Insecure       128      3      2      1
12 months   ki0047075b-MAL-ED       PERU           Food Secure                  111     27      9     18
12 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure         111     28     13     15
12 months   ki0047075b-MAL-ED       PERU           Moderately Food Insecure     111     28     15     13
12 months   ki0047075b-MAL-ED       PERU           Severely Food Insecure       111     28     13     15
12 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                  231    130     73     57
12 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure         231     19     13      6
12 months   ki0047075b-MAL-ED       SOUTH AFRICA   Moderately Food Insecure     231     76     38     38
12 months   ki0047075b-MAL-ED       SOUTH AFRICA   Severely Food Insecure       231      6      2      4
12 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                  541     80     48     32
12 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure         541    421    202    219
12 months   ki1017093-NIH-Birth     BANGLADESH     Moderately Food Insecure     541     36     14     22
12 months   ki1017093-NIH-Birth     BANGLADESH     Severely Food Insecure       541      4      1      3
12 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                  729    438    281    157
12 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure         729    206    126     80
12 months   ki1017093c-NIH-Crypto   BANGLADESH     Moderately Food Insecure     729     61     35     26
12 months   ki1017093c-NIH-Crypto   BANGLADESH     Severely Food Insecure       729     24     10     14
12 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                  565    408    230    178
12 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure         565     80     40     40
12 months   ki1113344-GMS-Nepal     NEPAL          Moderately Food Insecure     565     55     28     27
12 months   ki1113344-GMS-Nepal     NEPAL          Severely Food Insecure       565     22     13      9
12 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                 8375   4229   2472   1757
12 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure        8375   2771   1428   1343
12 months   kiGH5241-JiVitA-3       BANGLADESH     Moderately Food Insecure    8375   1375    691    684
12 months   kiGH5241-JiVitA-3       BANGLADESH     Severely Food Insecure      8375      0      0      0
12 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                 1405    734    414    320
12 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure        1405    478    266    212
12 months   kiGH5241-JiVitA-4       BANGLADESH     Moderately Food Insecure    1405    193    116     77
12 months   kiGH5241-JiVitA-4       BANGLADESH     Severely Food Insecure      1405      0      0      0
18 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                  194    161     72     89
18 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure         194      4      2      2
18 months   ki0047075b-MAL-ED       BANGLADESH     Moderately Food Insecure     194     23     10     13
18 months   ki0047075b-MAL-ED       BANGLADESH     Severely Food Insecure       194      6      1      5
18 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                  129      3      3      0
18 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure         129     11      7      4
18 months   ki0047075b-MAL-ED       BRAZIL         Moderately Food Insecure     129     67     47     20
18 months   ki0047075b-MAL-ED       BRAZIL         Severely Food Insecure       129     48     43      5
18 months   ki0047075b-MAL-ED       INDIA          Food Secure                  212    190     73    117
18 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure         212      5      5      0
18 months   ki0047075b-MAL-ED       INDIA          Moderately Food Insecure     212      4      2      2
18 months   ki0047075b-MAL-ED       INDIA          Severely Food Insecure       212     13      8      5
18 months   ki0047075b-MAL-ED       NEPAL          Food Secure                  128     94     68     26
18 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure         128     15     10      5
18 months   ki0047075b-MAL-ED       NEPAL          Moderately Food Insecure     128     16      8      8
18 months   ki0047075b-MAL-ED       NEPAL          Severely Food Insecure       128      3      1      2
18 months   ki0047075b-MAL-ED       PERU           Food Secure                  111     27      6     21
18 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure         111     28      8     20
18 months   ki0047075b-MAL-ED       PERU           Moderately Food Insecure     111     28     10     18
18 months   ki0047075b-MAL-ED       PERU           Severely Food Insecure       111     28      8     20
18 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                  231    130     63     67
18 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure         231     19     12      7
18 months   ki0047075b-MAL-ED       SOUTH AFRICA   Moderately Food Insecure     231     76     29     47
18 months   ki0047075b-MAL-ED       SOUTH AFRICA   Severely Food Insecure       231      6      0      6
18 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                  497     76     37     39
18 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure         497    382    128    254
18 months   ki1017093-NIH-Birth     BANGLADESH     Moderately Food Insecure     497     35      8     27
18 months   ki1017093-NIH-Birth     BANGLADESH     Severely Food Insecure       497      4      1      3
18 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                  715    430    250    180
18 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure         715    202    110     92
18 months   ki1017093c-NIH-Crypto   BANGLADESH     Moderately Food Insecure     715     59     29     30
18 months   ki1017093c-NIH-Crypto   BANGLADESH     Severely Food Insecure       715     24      9     15
18 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                  557    404    162    242
18 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure         557     80     26     54
18 months   ki1113344-GMS-Nepal     NEPAL          Moderately Food Insecure     557     54     18     36
18 months   ki1113344-GMS-Nepal     NEPAL          Severely Food Insecure       557     19      8     11
18 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                 7304   3736   1853   1883
18 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure        7304   2394   1014   1380
18 months   kiGH5241-JiVitA-3       BANGLADESH     Moderately Food Insecure    7304   1174    469    705
18 months   kiGH5241-JiVitA-3       BANGLADESH     Severely Food Insecure      7304      0      0      0
18 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                 1357    716    331    385
18 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure        1357    462    199    263
18 months   kiGH5241-JiVitA-4       BANGLADESH     Moderately Food Insecure    1357    179     84     95
18 months   kiGH5241-JiVitA-4       BANGLADESH     Severely Food Insecure      1357      0      0      0
24 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                  194    161     62     99
24 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure         194      4      1      3
24 months   ki0047075b-MAL-ED       BANGLADESH     Moderately Food Insecure     194     23      9     14
24 months   ki0047075b-MAL-ED       BANGLADESH     Severely Food Insecure       194      6      1      5
24 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                  129      3      3      0
24 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure         129     11      7      4
24 months   ki0047075b-MAL-ED       BRAZIL         Moderately Food Insecure     129     67     47     20
24 months   ki0047075b-MAL-ED       BRAZIL         Severely Food Insecure       129     48     43      5
24 months   ki0047075b-MAL-ED       INDIA          Food Secure                  212    190     67    123
24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure         212      5      5      0
24 months   ki0047075b-MAL-ED       INDIA          Moderately Food Insecure     212      4      1      3
24 months   ki0047075b-MAL-ED       INDIA          Severely Food Insecure       212     13      6      7
24 months   ki0047075b-MAL-ED       NEPAL          Food Secure                  128     94     63     31
24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure         128     15      9      6
24 months   ki0047075b-MAL-ED       NEPAL          Moderately Food Insecure     128     16      8      8
24 months   ki0047075b-MAL-ED       NEPAL          Severely Food Insecure       128      3      1      2
24 months   ki0047075b-MAL-ED       PERU           Food Secure                  108     27      6     21
24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure         108     27      6     21
24 months   ki0047075b-MAL-ED       PERU           Moderately Food Insecure     108     27      9     18
24 months   ki0047075b-MAL-ED       PERU           Severely Food Insecure       108     27      7     20
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                  229    129     54     75
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure         229     18     10      8
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Moderately Food Insecure     229     76     26     50
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Severely Food Insecure       229      6      0      6
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                  470     72     30     42
24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure         470    360     80    280
24 months   ki1017093-NIH-Birth     BANGLADESH     Moderately Food Insecure     470     34      4     30
24 months   ki1017093-NIH-Birth     BANGLADESH     Severely Food Insecure       470      4      1      3
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                  634    396    201    195
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure         634    168     81     87
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Moderately Food Insecure     634     49     25     24
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Severely Food Insecure       634     21      9     12
24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                  551    399    135    264
24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure         551     77     19     58
24 months   ki1113344-GMS-Nepal     NEPAL          Moderately Food Insecure     551     55     13     42
24 months   ki1113344-GMS-Nepal     NEPAL          Severely Food Insecure       551     20      7     13
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                    3      2      1      1
24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure           3      0      0      0
24 months   kiGH5241-JiVitA-3       BANGLADESH     Moderately Food Insecure       3      1      1      0
24 months   kiGH5241-JiVitA-3       BANGLADESH     Severely Food Insecure         3      0      0      0
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                 1184    622    259    363
24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure        1184    400    150    250
24 months   kiGH5241-JiVitA-4       BANGLADESH     Moderately Food Insecure    1184    162     71     91
24 months   kiGH5241-JiVitA-4       BANGLADESH     Severely Food Insecure      1184      0      0      0


The following strata were considered:

* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 12 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 12 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 18 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 18 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 18 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 18 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 18 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 3 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 3 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 3 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 3 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 12 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 12 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 18 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 18 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 18 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/38dc9a33-f27d-4f2d-9071-c0dea99adc85/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->


```
## Warning: Removed 15 rows containing missing values (geom_errorbar).
```

![](/tmp/38dc9a33-f27d-4f2d-9071-c0dea99adc85/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/38dc9a33-f27d-4f2d-9071-c0dea99adc85/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/38dc9a33-f27d-4f2d-9071-c0dea99adc85/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                 country      intervention_level         baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -----------  -------------------------  ---------------  ----------  ----------  ----------
3 months    ki0047075b-MAL-ED       PERU         Food Secure                NA                0.4444444   0.2561797   0.6327091
3 months    ki0047075b-MAL-ED       PERU         Mildly Food Insecure       NA                0.2758621   0.1124681   0.4392560
3 months    ki0047075b-MAL-ED       PERU         Moderately Food Insecure   NA                0.2142857   0.0616247   0.3669468
3 months    ki0047075b-MAL-ED       PERU         Severely Food Insecure     NA                0.4482759   0.2664679   0.6300839
3 months    ki1017093c-NIH-Crypto   BANGLADESH   Food Secure                NA                0.1434879   0.1111836   0.1757921
3 months    ki1017093c-NIH-Crypto   BANGLADESH   Mildly Food Insecure       NA                0.1780822   0.1273788   0.2287856
3 months    ki1017093c-NIH-Crypto   BANGLADESH   Moderately Food Insecure   NA                0.1290323   0.0455318   0.2125328
3 months    ki1017093c-NIH-Crypto   BANGLADESH   Severely Food Insecure     NA                0.3750000   0.1811862   0.5688138
3 months    ki1113344-GMS-Nepal     NEPAL        Food Secure                NA                0.1514423   0.1169642   0.1859204
3 months    ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure       NA                0.1851852   0.1005178   0.2698526
3 months    ki1113344-GMS-Nepal     NEPAL        Moderately Food Insecure   NA                0.1272727   0.0391168   0.2154287
3 months    ki1113344-GMS-Nepal     NEPAL        Severely Food Insecure     NA                0.2173913   0.0486756   0.3861070
6 months    ki0047075b-MAL-ED       PERU         Food Secure                NA                0.5185185   0.3292032   0.7078338
6 months    ki0047075b-MAL-ED       PERU         Mildly Food Insecure       NA                0.4137931   0.2337346   0.5938516
6 months    ki0047075b-MAL-ED       PERU         Moderately Food Insecure   NA                0.4285714   0.2444479   0.6126949
6 months    ki0047075b-MAL-ED       PERU         Severely Food Insecure     NA                0.4285714   0.2444479   0.6126949
6 months    ki1017093c-NIH-Crypto   BANGLADESH   Food Secure                NA                0.2847380   0.2424939   0.3269822
6 months    ki1017093c-NIH-Crypto   BANGLADESH   Mildly Food Insecure       NA                0.3459716   0.2817441   0.4101990
6 months    ki1017093c-NIH-Crypto   BANGLADESH   Moderately Food Insecure   NA                0.2903226   0.1772601   0.4033850
6 months    ki1017093c-NIH-Crypto   BANGLADESH   Severely Food Insecure     NA                0.4166667   0.2192924   0.6140409
6 months    ki1113344-GMS-Nepal     NEPAL        Food Secure                NA                0.2651515   0.2216362   0.3086669
6 months    ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure       NA                0.3417722   0.2370866   0.4464577
6 months    ki1113344-GMS-Nepal     NEPAL        Moderately Food Insecure   NA                0.2941176   0.1689519   0.4192834
6 months    ki1113344-GMS-Nepal     NEPAL        Severely Food Insecure     NA                0.3478261   0.1530019   0.5426503
12 months   ki0047075b-MAL-ED       PERU         Food Secure                NA                0.6666667   0.4880487   0.8452846
12 months   ki0047075b-MAL-ED       PERU         Mildly Food Insecure       NA                0.5357143   0.3501504   0.7212782
12 months   ki0047075b-MAL-ED       PERU         Moderately Food Insecure   NA                0.4642857   0.2787218   0.6498496
12 months   ki0047075b-MAL-ED       PERU         Severely Food Insecure     NA                0.5357143   0.3501504   0.7212782
12 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure                NA                0.3584475   0.3135070   0.4033880
12 months   ki1017093c-NIH-Crypto   BANGLADESH   Mildly Food Insecure       NA                0.3883495   0.3217493   0.4549497
12 months   ki1017093c-NIH-Crypto   BANGLADESH   Moderately Food Insecure   NA                0.4262295   0.3020437   0.5504154
12 months   ki1017093c-NIH-Crypto   BANGLADESH   Severely Food Insecure     NA                0.5833333   0.3859578   0.7807089
12 months   ki1113344-GMS-Nepal     NEPAL        Food Secure                NA                0.4362745   0.3881112   0.4844378
12 months   ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure       NA                0.5000000   0.3903376   0.6096624
12 months   ki1113344-GMS-Nepal     NEPAL        Moderately Food Insecure   NA                0.4909091   0.3586731   0.6231451
12 months   ki1113344-GMS-Nepal     NEPAL        Severely Food Insecure     NA                0.4090909   0.2034585   0.6147234
18 months   ki0047075b-MAL-ED       PERU         Food Secure                NA                0.7777778   0.6202516   0.9353040
18 months   ki0047075b-MAL-ED       PERU         Mildly Food Insecure       NA                0.7142857   0.5461979   0.8823735
18 months   ki0047075b-MAL-ED       PERU         Moderately Food Insecure   NA                0.6428571   0.4645731   0.8211412
18 months   ki0047075b-MAL-ED       PERU         Severely Food Insecure     NA                0.7142857   0.5461979   0.8823735
18 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure                NA                0.4186047   0.3719435   0.4652658
18 months   ki1017093c-NIH-Crypto   BANGLADESH   Mildly Food Insecure       NA                0.4554455   0.3867205   0.5241706
18 months   ki1017093c-NIH-Crypto   BANGLADESH   Moderately Food Insecure   NA                0.5084746   0.3808208   0.6361283
18 months   ki1017093c-NIH-Crypto   BANGLADESH   Severely Food Insecure     NA                0.6250000   0.4311785   0.8188215
18 months   ki1113344-GMS-Nepal     NEPAL        Food Secure                NA                0.5990099   0.5511765   0.6468433
18 months   ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure       NA                0.6750000   0.5722725   0.7777275
18 months   ki1113344-GMS-Nepal     NEPAL        Moderately Food Insecure   NA                0.6666667   0.5408219   0.7925114
18 months   ki1113344-GMS-Nepal     NEPAL        Severely Food Insecure     NA                0.5789474   0.3567447   0.8011500
24 months   ki0047075b-MAL-ED       PERU         Food Secure                NA                0.7777778   0.6202317   0.9353239
24 months   ki0047075b-MAL-ED       PERU         Mildly Food Insecure       NA                0.7777778   0.6202317   0.9353239
24 months   ki0047075b-MAL-ED       PERU         Moderately Food Insecure   NA                0.6666667   0.4880262   0.8453072
24 months   ki0047075b-MAL-ED       PERU         Severely Food Insecure     NA                0.7407407   0.5746726   0.9068089
24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure                NA                0.4924242   0.4431451   0.5417034
24 months   ki1017093c-NIH-Crypto   BANGLADESH   Mildly Food Insecure       NA                0.5178571   0.4422385   0.5934758
24 months   ki1017093c-NIH-Crypto   BANGLADESH   Moderately Food Insecure   NA                0.4897959   0.3497171   0.6298747
24 months   ki1017093c-NIH-Crypto   BANGLADESH   Severely Food Insecure     NA                0.5714286   0.3596052   0.7832519
24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure                NA                0.6616541   0.6151863   0.7081219
24 months   ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure       NA                0.7532468   0.6568645   0.8496290
24 months   ki1113344-GMS-Nepal     NEPAL        Moderately Food Insecure   NA                0.7636364   0.6512549   0.8760179
24 months   ki1113344-GMS-Nepal     NEPAL        Severely Food Insecure     NA                0.6500000   0.4407727   0.8592273


### Parameter: E(Y)


agecat      studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki0047075b-MAL-ED       PERU         NA                   NA                0.3451327   0.2570869   0.4331786
3 months    ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.1596306   0.1335394   0.1857218
3 months    ki1113344-GMS-Nepal     NEPAL        NA                   NA                0.1565217   0.1267971   0.1862464
6 months    ki0047075b-MAL-ED       PERU         NA                   NA                0.4464286   0.3539482   0.5389089
6 months    ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.3070652   0.2737175   0.3404129
6 months    ki1113344-GMS-Nepal     NEPAL        NA                   NA                0.2823315   0.2446438   0.3200192
12 months   ki0047075b-MAL-ED       PERU         NA                   NA                0.5495495   0.4565719   0.6425272
12 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.3799726   0.3447141   0.4152311
12 months   ki1113344-GMS-Nepal     NEPAL        NA                   NA                0.4495575   0.4085034   0.4906117
18 months   ki0047075b-MAL-ED       PERU         NA                   NA                0.7117117   0.6270636   0.7963598
18 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.4433566   0.4069178   0.4797954
18 months   ki1113344-GMS-Nepal     NEPAL        NA                   NA                0.6157989   0.5753684   0.6562295
24 months   ki0047075b-MAL-ED       PERU         NA                   NA                0.7407407   0.6577066   0.8237748
24 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.5015773   0.4626267   0.5405279
24 months   ki1113344-GMS-Nepal     NEPAL        NA                   NA                0.6842105   0.6453633   0.7230578


### Parameter: RR


agecat      studyid                 country      intervention_level         baseline_level     estimate    ci_lower   ci_upper
----------  ----------------------  -----------  -------------------------  ---------------  ----------  ----------  ---------
3 months    ki0047075b-MAL-ED       PERU         Food Secure                Food Secure       1.0000000   1.0000000   1.000000
3 months    ki0047075b-MAL-ED       PERU         Mildly Food Insecure       Food Secure       0.6206897   0.2996588   1.285648
3 months    ki0047075b-MAL-ED       PERU         Moderately Food Insecure   Food Secure       0.4821429   0.2104824   1.104424
3 months    ki0047075b-MAL-ED       PERU         Severely Food Insecure     Food Secure       1.0086207   0.5610953   1.813089
3 months    ki1017093c-NIH-Crypto   BANGLADESH   Food Secure                Food Secure       1.0000000   1.0000000   1.000000
3 months    ki1017093c-NIH-Crypto   BANGLADESH   Mildly Food Insecure       Food Secure       1.2410959   0.8633107   1.784200
3 months    ki1017093c-NIH-Crypto   BANGLADESH   Moderately Food Insecure   Food Secure       0.8992556   0.4532275   1.784226
3 months    ki1017093c-NIH-Crypto   BANGLADESH   Severely Food Insecure     Food Secure       2.6134615   1.4872552   4.592474
3 months    ki1113344-GMS-Nepal     NEPAL        Food Secure                Food Secure       1.0000000   1.0000000   1.000000
3 months    ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure       Food Secure       1.2228101   0.7337407   2.037865
3 months    ki1113344-GMS-Nepal     NEPAL        Moderately Food Insecure   Food Secure       0.8404040   0.4053590   1.742354
3 months    ki1113344-GMS-Nepal     NEPAL        Severely Food Insecure     Food Secure       1.4354727   0.6393510   3.222927
6 months    ki0047075b-MAL-ED       PERU         Food Secure                Food Secure       1.0000000   1.0000000   1.000000
6 months    ki0047075b-MAL-ED       PERU         Mildly Food Insecure       Food Secure       0.7980296   0.4521984   1.408345
6 months    ki0047075b-MAL-ED       PERU         Moderately Food Insecure   Food Secure       0.8265306   0.4703278   1.452504
6 months    ki0047075b-MAL-ED       PERU         Severely Food Insecure     Food Secure       0.8265306   0.4703278   1.452504
6 months    ki1017093c-NIH-Crypto   BANGLADESH   Food Secure                Food Secure       1.0000000   1.0000000   1.000000
6 months    ki1017093c-NIH-Crypto   BANGLADESH   Mildly Food Insecure       Food Secure       1.2150521   0.9580483   1.540999
6 months    ki1017093c-NIH-Crypto   BANGLADESH   Moderately Food Insecure   Food Secure       1.0196129   0.6721207   1.546761
6 months    ki1017093c-NIH-Crypto   BANGLADESH   Severely Food Insecure     Food Secure       1.4633333   0.8907682   2.403930
6 months    ki1113344-GMS-Nepal     NEPAL        Food Secure                Food Secure       1.0000000   1.0000000   1.000000
6 months    ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure       Food Secure       1.2889693   0.9105968   1.824564
6 months    ki1113344-GMS-Nepal     NEPAL        Moderately Food Insecure   Food Secure       1.1092437   0.7029753   1.750306
6 months    ki1113344-GMS-Nepal     NEPAL        Severely Food Insecure     Food Secure       1.3118012   0.7317867   2.351536
12 months   ki0047075b-MAL-ED       PERU         Food Secure                Food Secure       1.0000000   1.0000000   1.000000
12 months   ki0047075b-MAL-ED       PERU         Mildly Food Insecure       Food Secure       0.8035714   0.5186103   1.245110
12 months   ki0047075b-MAL-ED       PERU         Moderately Food Insecure   Food Secure       0.6964286   0.4304340   1.126799
12 months   ki0047075b-MAL-ED       PERU         Severely Food Insecure     Food Secure       0.8035714   0.5186103   1.245110
12 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure                Food Secure       1.0000000   1.0000000   1.000000
12 months   ki1017093c-NIH-Crypto   BANGLADESH   Mildly Food Insecure       Food Secure       1.0834209   0.8760659   1.339855
12 months   ki1017093c-NIH-Crypto   BANGLADESH   Moderately Food Insecure   Food Secure       1.1890989   0.8658933   1.632945
12 months   ki1017093c-NIH-Crypto   BANGLADESH   Severely Food Insecure     Food Secure       1.6273885   1.1344376   2.334543
12 months   ki1113344-GMS-Nepal     NEPAL        Food Secure                Food Secure       1.0000000   1.0000000   1.000000
12 months   ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure       Food Secure       1.1460674   0.8965462   1.465034
12 months   ki1113344-GMS-Nepal     NEPAL        Moderately Food Insecure   Food Secure       1.1252298   0.8410310   1.505464
12 months   ki1113344-GMS-Nepal     NEPAL        Severely Food Insecure     Food Secure       0.9376915   0.5604745   1.568788
18 months   ki0047075b-MAL-ED       PERU         Food Secure                Food Secure       1.0000000   1.0000000   1.000000
18 months   ki0047075b-MAL-ED       PERU         Mildly Food Insecure       Food Secure       0.9183673   0.6732516   1.252724
18 months   ki0047075b-MAL-ED       PERU         Moderately Food Insecure   Food Secure       0.8265306   0.5862957   1.165202
18 months   ki0047075b-MAL-ED       PERU         Severely Food Insecure     Food Secure       0.9183673   0.6732516   1.252724
18 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure                Food Secure       1.0000000   1.0000000   1.000000
18 months   ki1017093c-NIH-Crypto   BANGLADESH   Mildly Food Insecure       Food Secure       1.0880088   0.9018980   1.312524
18 months   ki1017093c-NIH-Crypto   BANGLADESH   Moderately Food Insecure   Food Secure       1.2146893   0.9229337   1.598674
18 months   ki1017093c-NIH-Crypto   BANGLADESH   Severely Food Insecure     Food Secure       1.4930556   1.0738877   2.075836
18 months   ki1113344-GMS-Nepal     NEPAL        Food Secure                Food Secure       1.0000000   1.0000000   1.000000
18 months   ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure       Food Secure       1.1268595   0.9489187   1.338168
18 months   ki1113344-GMS-Nepal     NEPAL        Moderately Food Insecure   Food Secure       1.1129477   0.9066936   1.366120
18 months   ki1113344-GMS-Nepal     NEPAL        Severely Food Insecure     Food Secure       0.9665072   0.6530574   1.430404
24 months   ki0047075b-MAL-ED       PERU         Food Secure                Food Secure       1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED       PERU         Mildly Food Insecure       Food Secure       1.0000000   0.7509155   1.331708
24 months   ki0047075b-MAL-ED       PERU         Moderately Food Insecure   Food Secure       0.8571429   0.6125913   1.199321
24 months   ki0047075b-MAL-ED       PERU         Severely Food Insecure     Food Secure       0.9523810   0.7040285   1.288342
24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure                Food Secure       1.0000000   1.0000000   1.000000
24 months   ki1017093c-NIH-Crypto   BANGLADESH   Mildly Food Insecure       Food Secure       1.0516484   0.8810287   1.255310
24 months   ki1017093c-NIH-Crypto   BANGLADESH   Moderately Food Insecure   Food Secure       0.9946625   0.7346585   1.346685
24 months   ki1017093c-NIH-Crypto   BANGLADESH   Severely Food Insecure     Food Secure       1.1604396   0.7904421   1.703629
24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure                Food Secure       1.0000000   1.0000000   1.000000
24 months   ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure       Food Secure       1.1384298   0.9838202   1.317336
24 months   ki1113344-GMS-Nepal     NEPAL        Moderately Food Insecure   Food Secure       1.1541322   0.9804771   1.358544
24 months   ki1113344-GMS-Nepal     NEPAL        Severely Food Insecure     Food Secure       0.9823864   0.7066421   1.365731


### Parameter: PAR


agecat      studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
3 months    ki0047075b-MAL-ED       PERU         Food Secure          NA                -0.0993117   -0.2613550   0.0627316
3 months    ki1017093c-NIH-Crypto   BANGLADESH   Food Secure          NA                 0.0161427   -0.0056974   0.0379829
3 months    ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                 0.0050794   -0.0136886   0.0238474
6 months    ki0047075b-MAL-ED       PERU         Food Secure          NA                -0.0720899   -0.2367495   0.0925696
6 months    ki1017093c-NIH-Crypto   BANGLADESH   Food Secure          NA                 0.0223272   -0.0053814   0.0500357
6 months    ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                 0.0171800   -0.0069492   0.0413092
12 months   ki0047075b-MAL-ED       PERU         Food Secure          NA                -0.1171171   -0.2753201   0.0410858
12 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure          NA                 0.0215251   -0.0073870   0.0504372
12 months   ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                 0.0132830   -0.0123084   0.0388744
18 months   ki0047075b-MAL-ED       PERU         Food Secure          NA                -0.0660661   -0.2071614   0.0750293
18 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure          NA                 0.0247520   -0.0050178   0.0545218
18 months   ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                 0.0167890   -0.0077787   0.0413568
24 months   ki0047075b-MAL-ED       PERU         Food Secure          NA                -0.0370370   -0.1759797   0.1019056
24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure          NA                 0.0091530   -0.0210455   0.0393516
24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                 0.0225564   -0.0007066   0.0458194


### Parameter: PAF


agecat      studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
3 months    ki0047075b-MAL-ED       PERU         Food Secure          NA                -0.2877493   -0.8572229   0.1071087
3 months    ki1017093c-NIH-Crypto   BANGLADESH   Food Secure          NA                 0.1011256   -0.0458853   0.2274726
3 months    ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                 0.0324519   -0.0950864   0.1451366
6 months    ki0047075b-MAL-ED       PERU         Food Secure          NA                -0.1614815   -0.5974244   0.1554910
6 months    ki1017093c-NIH-Crypto   BANGLADESH   Food Secure          NA                 0.0727115   -0.0219939   0.1586408
6 months    ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                 0.0608504   -0.0285125   0.1424490
12 months   ki0047075b-MAL-ED       PERU         Food Secure          NA                -0.2131148   -0.5435984   0.0466125
12 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure          NA                 0.0566490   -0.0226245   0.1297773
12 months   ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                 0.0295469   -0.0291213   0.0848705
18 months   ki0047075b-MAL-ED       PERU         Food Secure          NA                -0.0928270   -0.3118110   0.0896014
18 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure          NA                 0.0558286   -0.0138479   0.1207166
18 months   ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                 0.0272638   -0.0135499   0.0664340
24 months   ki0047075b-MAL-ED       PERU         Food Secure          NA                -0.0500000   -0.2558705   0.1221229
24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure          NA                 0.0182485   -0.0438605   0.0766621
24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                 0.0329670   -0.0018074   0.0665344
