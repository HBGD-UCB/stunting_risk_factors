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
Birth       ki0047075b-MAL-ED       BANGLADESH     Food Secure                  188    157    133     24
Birth       ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure         188      4      3      1
Birth       ki0047075b-MAL-ED       BANGLADESH     Moderately Food Insecure     188     22     19      3
Birth       ki0047075b-MAL-ED       BANGLADESH     Severely Food Insecure       188      5      4      1
Birth       ki0047075b-MAL-ED       BRAZIL         Food Secure                  105      0      0      0
Birth       ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure         105     11     10      1
Birth       ki0047075b-MAL-ED       BRAZIL         Moderately Food Insecure     105     54     46      8
Birth       ki0047075b-MAL-ED       BRAZIL         Severely Food Insecure       105     40     38      2
Birth       ki0047075b-MAL-ED       INDIA          Food Secure                  170    154    133     21
Birth       ki0047075b-MAL-ED       INDIA          Mildly Food Insecure         170      2      2      0
Birth       ki0047075b-MAL-ED       INDIA          Moderately Food Insecure     170      3      2      1
Birth       ki0047075b-MAL-ED       INDIA          Severely Food Insecure       170     11      9      2
Birth       ki0047075b-MAL-ED       NEPAL          Food Secure                   98     76     70      6
Birth       ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure          98      9      9      0
Birth       ki0047075b-MAL-ED       NEPAL          Moderately Food Insecure      98     11      8      3
Birth       ki0047075b-MAL-ED       NEPAL          Severely Food Insecure        98      2      2      0
Birth       ki0047075b-MAL-ED       PERU           Food Secure                  107     27     22      5
Birth       ki0047075b-MAL-ED       PERU           Mildly Food Insecure         107     25     22      3
Birth       ki0047075b-MAL-ED       PERU           Moderately Food Insecure     107     28     26      2
Birth       ki0047075b-MAL-ED       PERU           Severely Food Insecure       107     27     24      3
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                  195    107     94     13
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure         195     17     17      0
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Moderately Food Insecure     195     66     60      6
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Severely Food Insecure       195      5      5      0
Birth       ki1017093-NIH-Birth     BANGLADESH     Food Secure                   28      3      3      0
Birth       ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure          28     21     21      0
Birth       ki1017093-NIH-Birth     BANGLADESH     Moderately Food Insecure      28      4      3      1
Birth       ki1017093-NIH-Birth     BANGLADESH     Severely Food Insecure        28      0      0      0
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                   27     14     14      0
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure          27      9      5      4
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Moderately Food Insecure      27      2      2      0
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Severely Food Insecure        27      2      1      1
Birth       kiGH5241-JiVitA-3       BANGLADESH     Food Secure                 6267   2983   2084    899
Birth       kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure        6267   2152   1415    737
Birth       kiGH5241-JiVitA-3       BANGLADESH     Moderately Food Insecure    6267   1132    756    376
Birth       kiGH5241-JiVitA-3       BANGLADESH     Severely Food Insecure      6267      0      0      0
Birth       kiGH5241-JiVitA-4       BANGLADESH     Food Secure                  222    116     76     40
Birth       kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure         222     75     53     22
Birth       kiGH5241-JiVitA-4       BANGLADESH     Moderately Food Insecure     222     31     24      7
Birth       kiGH5241-JiVitA-4       BANGLADESH     Severely Food Insecure       222      0      0      0
3 months    ki0047075b-MAL-ED       BANGLADESH     Food Secure                  193    160    136     24
3 months    ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure         193      4      3      1
3 months    ki0047075b-MAL-ED       BANGLADESH     Moderately Food Insecure     193     23     20      3
3 months    ki0047075b-MAL-ED       BANGLADESH     Severely Food Insecure       193      6      5      1
3 months    ki0047075b-MAL-ED       BRAZIL         Food Secure                  129      3      3      0
3 months    ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure         129     11     10      1
3 months    ki0047075b-MAL-ED       BRAZIL         Moderately Food Insecure     129     67     62      5
3 months    ki0047075b-MAL-ED       BRAZIL         Severely Food Insecure       129     48     47      1
3 months    ki0047075b-MAL-ED       INDIA          Food Secure                  211    189    161     28
3 months    ki0047075b-MAL-ED       INDIA          Mildly Food Insecure         211      5      5      0
3 months    ki0047075b-MAL-ED       INDIA          Moderately Food Insecure     211      4      4      0
3 months    ki0047075b-MAL-ED       INDIA          Severely Food Insecure       211     13     11      2
3 months    ki0047075b-MAL-ED       NEPAL          Food Secure                  127     93     90      3
3 months    ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure         127     15     14      1
3 months    ki0047075b-MAL-ED       NEPAL          Moderately Food Insecure     127     16     14      2
3 months    ki0047075b-MAL-ED       NEPAL          Severely Food Insecure       127      3      3      0
3 months    ki0047075b-MAL-ED       PERU           Food Secure                  113     27     16     11
3 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure         113     29     24      5
3 months    ki0047075b-MAL-ED       PERU           Moderately Food Insecure     113     28     25      3
3 months    ki0047075b-MAL-ED       PERU           Severely Food Insecure       113     29     20      9
3 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                  233    132    106     26
3 months    ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure         233     19     16      3
3 months    ki0047075b-MAL-ED       SOUTH AFRICA   Moderately Food Insecure     233     76     61     15
3 months    ki0047075b-MAL-ED       SOUTH AFRICA   Severely Food Insecure       233      6      6      0
3 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure                  570     84     70     14
3 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure         570    446    343    103
3 months    ki1017093-NIH-Birth     BANGLADESH     Moderately Food Insecure     570     35     24     11
3 months    ki1017093-NIH-Birth     BANGLADESH     Severely Food Insecure       570      5      3      2
3 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                  728    432    341     91
3 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure         728    210    162     48
3 months    ki1017093c-NIH-Crypto   BANGLADESH     Moderately Food Insecure     728     62     51     11
3 months    ki1017093c-NIH-Crypto   BANGLADESH     Severely Food Insecure       728     24     18      6
3 months    ki1113344-GMS-Nepal     NEPAL          Food Secure                  553    399    345     54
3 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure         553     79     63     16
3 months    ki1113344-GMS-Nepal     NEPAL          Moderately Food Insecure     553     52     45      7
3 months    ki1113344-GMS-Nepal     NEPAL          Severely Food Insecure       553     23     20      3
3 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure                 8095   4116   3180    936
3 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure        8095   2661   1899    762
3 months    kiGH5241-JiVitA-3       BANGLADESH     Moderately Food Insecure    8095   1318    912    406
3 months    kiGH5241-JiVitA-3       BANGLADESH     Severely Food Insecure      8095      0      0      0
3 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure                  892    461    362     99
3 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure         892    301    222     79
3 months    kiGH5241-JiVitA-4       BANGLADESH     Moderately Food Insecure     892    130    111     19
3 months    kiGH5241-JiVitA-4       BANGLADESH     Severely Food Insecure       892      0      0      0
6 months    ki0047075b-MAL-ED       BANGLADESH     Food Secure                  193    160    128     32
6 months    ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure         193      4      2      2
6 months    ki0047075b-MAL-ED       BANGLADESH     Moderately Food Insecure     193     23     21      2
6 months    ki0047075b-MAL-ED       BANGLADESH     Severely Food Insecure       193      6      4      2
6 months    ki0047075b-MAL-ED       BRAZIL         Food Secure                  129      3      3      0
6 months    ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure         129     11     11      0
6 months    ki0047075b-MAL-ED       BRAZIL         Moderately Food Insecure     129     67     65      2
6 months    ki0047075b-MAL-ED       BRAZIL         Severely Food Insecure       129     48     48      0
6 months    ki0047075b-MAL-ED       INDIA          Food Secure                  212    190    152     38
6 months    ki0047075b-MAL-ED       INDIA          Mildly Food Insecure         212      5      5      0
6 months    ki0047075b-MAL-ED       INDIA          Moderately Food Insecure     212      4      4      0
6 months    ki0047075b-MAL-ED       INDIA          Severely Food Insecure       212     13     10      3
6 months    ki0047075b-MAL-ED       NEPAL          Food Secure                  128     94     91      3
6 months    ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure         128     15     15      0
6 months    ki0047075b-MAL-ED       NEPAL          Moderately Food Insecure     128     16     12      4
6 months    ki0047075b-MAL-ED       NEPAL          Severely Food Insecure       128      3      3      0
6 months    ki0047075b-MAL-ED       PERU           Food Secure                  111     27     19      8
6 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure         111     28     22      6
6 months    ki0047075b-MAL-ED       PERU           Moderately Food Insecure     111     28     20      8
6 months    ki0047075b-MAL-ED       PERU           Severely Food Insecure       111     28     21      7
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                  228    129    104     25
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure         228     18     15      3
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Moderately Food Insecure     228     75     59     16
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Severely Food Insecure       228      6      6      0
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure                  537     80     60     20
6 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure         537    417    308    109
6 months    ki1017093-NIH-Birth     BANGLADESH     Moderately Food Insecure     537     36     23     13
6 months    ki1017093-NIH-Birth     BANGLADESH     Severely Food Insecure       537      4      2      2
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                  715    427    342     85
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure         715    204    158     46
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Moderately Food Insecure     715     60     46     14
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Severely Food Insecure       715     24     19      5
6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure                  545    395    314     81
6 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure         545     76     56     20
6 months    ki1113344-GMS-Nepal     NEPAL          Moderately Food Insecure     545     52     42     10
6 months    ki1113344-GMS-Nepal     NEPAL          Severely Food Insecure       545     22     18      4
6 months    kiGH5241-JiVitA-3       BANGLADESH     Food Secure                 8314   4190   3223    967
6 months    kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure        8314   2759   1989    770
6 months    kiGH5241-JiVitA-3       BANGLADESH     Moderately Food Insecure    8314   1365    924    441
6 months    kiGH5241-JiVitA-3       BANGLADESH     Severely Food Insecure      8314      0      0      0
6 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure                 1241    636    494    142
6 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure        1241    432    320    112
6 months    kiGH5241-JiVitA-4       BANGLADESH     Moderately Food Insecure    1241    173    132     41
6 months    kiGH5241-JiVitA-4       BANGLADESH     Severely Food Insecure      1241      0      0      0
9 months    ki0047075b-MAL-ED       BANGLADESH     Food Secure                  193    160    121     39
9 months    ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure         193      4      2      2
9 months    ki0047075b-MAL-ED       BANGLADESH     Moderately Food Insecure     193     23     18      5
9 months    ki0047075b-MAL-ED       BANGLADESH     Severely Food Insecure       193      6      3      3
9 months    ki0047075b-MAL-ED       BRAZIL         Food Secure                  129      3      3      0
9 months    ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure         129     11     11      0
9 months    ki0047075b-MAL-ED       BRAZIL         Moderately Food Insecure     129     67     65      2
9 months    ki0047075b-MAL-ED       BRAZIL         Severely Food Insecure       129     48     48      0
9 months    ki0047075b-MAL-ED       INDIA          Food Secure                  212    190    145     45
9 months    ki0047075b-MAL-ED       INDIA          Mildly Food Insecure         212      5      5      0
9 months    ki0047075b-MAL-ED       INDIA          Moderately Food Insecure     212      4      3      1
9 months    ki0047075b-MAL-ED       INDIA          Severely Food Insecure       212     13     10      3
9 months    ki0047075b-MAL-ED       NEPAL          Food Secure                  128     94     88      6
9 months    ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure         128     15     14      1
9 months    ki0047075b-MAL-ED       NEPAL          Moderately Food Insecure     128     16     11      5
9 months    ki0047075b-MAL-ED       NEPAL          Severely Food Insecure       128      3      2      1
9 months    ki0047075b-MAL-ED       PERU           Food Secure                  111     27     15     12
9 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure         111     28     21      7
9 months    ki0047075b-MAL-ED       PERU           Moderately Food Insecure     111     28     21      7
9 months    ki0047075b-MAL-ED       PERU           Severely Food Insecure       111     28     19      9
9 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                  227    129    103     26
9 months    ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure         227     19     15      4
9 months    ki0047075b-MAL-ED       SOUTH AFRICA   Moderately Food Insecure     227     73     56     17
9 months    ki0047075b-MAL-ED       SOUTH AFRICA   Severely Food Insecure       227      6      4      2
9 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure                  507     76     55     21
9 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure         507    392    251    141
9 months    ki1017093-NIH-Birth     BANGLADESH     Moderately Food Insecure     507     35     19     16
9 months    ki1017093-NIH-Birth     BANGLADESH     Severely Food Insecure       507      4      1      3
9 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                  706    428    333     95
9 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure         706    197    153     44
9 months    ki1017093c-NIH-Crypto   BANGLADESH     Moderately Food Insecure     706     58     41     17
9 months    ki1017093c-NIH-Crypto   BANGLADESH     Severely Food Insecure       706     23     15      8
9 months    ki1113344-GMS-Nepal     NEPAL          Food Secure                  535    386    282    104
9 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure         535     77     51     26
9 months    ki1113344-GMS-Nepal     NEPAL          Moderately Food Insecure     535     52     38     14
9 months    ki1113344-GMS-Nepal     NEPAL          Severely Food Insecure       535     20     15      5
9 months    kiGH5241-JiVitA-4       BANGLADESH     Food Secure                 1266    665    484    181
9 months    kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure        1266    432    306    126
9 months    kiGH5241-JiVitA-4       BANGLADESH     Moderately Food Insecure    1266    169    127     42
9 months    kiGH5241-JiVitA-4       BANGLADESH     Severely Food Insecure      1266      0      0      0
12 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                  193    161    113     48
12 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure         193      4      2      2
12 months   ki0047075b-MAL-ED       BANGLADESH     Moderately Food Insecure     193     22     15      7
12 months   ki0047075b-MAL-ED       BANGLADESH     Severely Food Insecure       193      6      1      5
12 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                  129      3      3      0
12 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure         129     11     11      0
12 months   ki0047075b-MAL-ED       BRAZIL         Moderately Food Insecure     129     67     64      3
12 months   ki0047075b-MAL-ED       BRAZIL         Severely Food Insecure       129     48     48      0
12 months   ki0047075b-MAL-ED       INDIA          Food Secure                  211    189    123     66
12 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure         211      5      5      0
12 months   ki0047075b-MAL-ED       INDIA          Moderately Food Insecure     211      4      3      1
12 months   ki0047075b-MAL-ED       INDIA          Severely Food Insecure       211     13     10      3
12 months   ki0047075b-MAL-ED       NEPAL          Food Secure                  128     94     82     12
12 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure         128     15     13      2
12 months   ki0047075b-MAL-ED       NEPAL          Moderately Food Insecure     128     16     11      5
12 months   ki0047075b-MAL-ED       NEPAL          Severely Food Insecure       128      3      1      2
12 months   ki0047075b-MAL-ED       PERU           Food Secure                  111     27     18      9
12 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure         111     28     17     11
12 months   ki0047075b-MAL-ED       PERU           Moderately Food Insecure     111     28     17     11
12 months   ki0047075b-MAL-ED       PERU           Severely Food Insecure       111     28     19      9
12 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                  229    128     99     29
12 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure         229     19     14      5
12 months   ki0047075b-MAL-ED       SOUTH AFRICA   Moderately Food Insecure     229     76     55     21
12 months   ki0047075b-MAL-ED       SOUTH AFRICA   Severely Food Insecure       229      6      6      0
12 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                  491     76     59     17
12 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure         491    377    233    144
12 months   ki1017093-NIH-Birth     BANGLADESH     Moderately Food Insecure     491     35     14     21
12 months   ki1017093-NIH-Birth     BANGLADESH     Severely Food Insecure       491      3      1      2
12 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                  706    427    328     99
12 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure         706    198    153     45
12 months   ki1017093c-NIH-Crypto   BANGLADESH     Moderately Food Insecure     706     57     37     20
12 months   ki1017093c-NIH-Crypto   BANGLADESH     Severely Food Insecure       706     24     17      7
12 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                  541    392    268    124
12 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure         541     78     48     30
12 months   ki1113344-GMS-Nepal     NEPAL          Moderately Food Insecure     541     52     31     21
12 months   ki1113344-GMS-Nepal     NEPAL          Severely Food Insecure       541     19     13      6
12 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                 7181   3671   2351   1320
12 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure        7181   2349   1366    983
12 months   kiGH5241-JiVitA-3       BANGLADESH     Moderately Food Insecure    7181   1161    617    544
12 months   kiGH5241-JiVitA-3       BANGLADESH     Severely Food Insecure      7181      0      0      0
12 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                 1263    662    448    214
12 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure        1263    430    278    152
12 months   kiGH5241-JiVitA-4       BANGLADESH     Moderately Food Insecure    1263    171    118     53
12 months   kiGH5241-JiVitA-4       BANGLADESH     Severely Food Insecure      1263      0      0      0
18 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                  194    161     86     75
18 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure         194      4      2      2
18 months   ki0047075b-MAL-ED       BANGLADESH     Moderately Food Insecure     194     23     11     12
18 months   ki0047075b-MAL-ED       BANGLADESH     Severely Food Insecure       194      6      2      4
18 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                  129      3      3      0
18 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure         129     11     11      0
18 months   ki0047075b-MAL-ED       BRAZIL         Moderately Food Insecure     129     67     63      4
18 months   ki0047075b-MAL-ED       BRAZIL         Severely Food Insecure       129     48     48      0
18 months   ki0047075b-MAL-ED       INDIA          Food Secure                  212    190     99     91
18 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure         212      5      5      0
18 months   ki0047075b-MAL-ED       INDIA          Moderately Food Insecure     212      4      2      2
18 months   ki0047075b-MAL-ED       INDIA          Severely Food Insecure       212     13      9      4
18 months   ki0047075b-MAL-ED       NEPAL          Food Secure                  127     93     78     15
18 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure         127     15     13      2
18 months   ki0047075b-MAL-ED       NEPAL          Moderately Food Insecure     127     16      8      8
18 months   ki0047075b-MAL-ED       NEPAL          Severely Food Insecure       127      3      2      1
18 months   ki0047075b-MAL-ED       PERU           Food Secure                  108     27     13     14
18 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure         108     27     17     10
18 months   ki0047075b-MAL-ED       PERU           Moderately Food Insecure     108     27     12     15
18 months   ki0047075b-MAL-ED       PERU           Severely Food Insecure       108     27     11     16
18 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                  229    129     85     44
18 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure         229     18     12      6
18 months   ki0047075b-MAL-ED       SOUTH AFRICA   Moderately Food Insecure     229     76     51     25
18 months   ki0047075b-MAL-ED       SOUTH AFRICA   Severely Food Insecure       229      6      4      2
18 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                  463     70     44     26
18 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure         463    355    140    215
18 months   ki1017093-NIH-Birth     BANGLADESH     Moderately Food Insecure     463     34      6     28
18 months   ki1017093-NIH-Birth     BANGLADESH     Severely Food Insecure       463      4      1      3
18 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                  634    392    280    112
18 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure         634    171    118     53
18 months   ki1017093c-NIH-Crypto   BANGLADESH     Moderately Food Insecure     634     49     30     19
18 months   ki1017093c-NIH-Crypto   BANGLADESH     Severely Food Insecure       634     22     15      7
18 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                  534    388    198    190
18 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure         534     74     27     47
18 months   ki1113344-GMS-Nepal     NEPAL          Moderately Food Insecure     534     54     19     35
18 months   ki1113344-GMS-Nepal     NEPAL          Severely Food Insecure       534     18     10      8
18 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                 1219    649    367    282
18 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure        1219    407    220    187
18 months   kiGH5241-JiVitA-4       BANGLADESH     Moderately Food Insecure    1219    163     95     68
18 months   kiGH5241-JiVitA-4       BANGLADESH     Severely Food Insecure      1219      0      0      0
24 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                  194    161     90     71
24 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure         194      4      1      3
24 months   ki0047075b-MAL-ED       BANGLADESH     Moderately Food Insecure     194     23     10     13
24 months   ki0047075b-MAL-ED       BANGLADESH     Severely Food Insecure       194      6      2      4
24 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                  129      3      3      0
24 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure         129     11     11      0
24 months   ki0047075b-MAL-ED       BRAZIL         Moderately Food Insecure     129     67     65      2
24 months   ki0047075b-MAL-ED       BRAZIL         Severely Food Insecure       129     48     48      0
24 months   ki0047075b-MAL-ED       INDIA          Food Secure                  212    190    108     82
24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure         212      5      5      0
24 months   ki0047075b-MAL-ED       INDIA          Moderately Food Insecure     212      4      2      2
24 months   ki0047075b-MAL-ED       INDIA          Severely Food Insecure       212     13      8      5
24 months   ki0047075b-MAL-ED       NEPAL          Food Secure                  128     94     77     17
24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure         128     15     13      2
24 months   ki0047075b-MAL-ED       NEPAL          Moderately Food Insecure     128     16      8      8
24 months   ki0047075b-MAL-ED       NEPAL          Severely Food Insecure       128      3      1      2
24 months   ki0047075b-MAL-ED       PERU           Food Secure                  107     26     14     12
24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure         107     27     20      7
24 months   ki0047075b-MAL-ED       PERU           Moderately Food Insecure     107     27     16     11
24 months   ki0047075b-MAL-ED       PERU           Severely Food Insecure       107     27     17     10
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                  228    129     88     41
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure         228     18     12      6
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Moderately Food Insecure     228     75     46     29
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Severely Food Insecure       228      6      3      3
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                  429     68     46     22
24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure         429    328    136    192
24 months   ki1017093-NIH-Birth     BANGLADESH     Moderately Food Insecure     429     30      9     21
24 months   ki1017093-NIH-Birth     BANGLADESH     Severely Food Insecure       429      3      0      3
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                  514    334    254     80
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure         514    124     91     33
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Moderately Food Insecure     514     38     24     14
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Severely Food Insecure       514     18     13      5
24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                  488    349    206    143
24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure         488     69     30     39
24 months   ki1113344-GMS-Nepal     NEPAL          Moderately Food Insecure     488     51     25     26
24 months   ki1113344-GMS-Nepal     NEPAL          Severely Food Insecure       488     19     13      6
24 months   kiGH5241-JiVitA-3       BANGLADESH     Food Secure                 4077   1947   1081    866
24 months   kiGH5241-JiVitA-3       BANGLADESH     Mildly Food Insecure        4077   1373    701    672
24 months   kiGH5241-JiVitA-3       BANGLADESH     Moderately Food Insecure    4077    757    335    422
24 months   kiGH5241-JiVitA-3       BANGLADESH     Severely Food Insecure      4077      0      0      0
24 months   kiGH5241-JiVitA-4       BANGLADESH     Food Secure                 1238    655    399    256
24 months   kiGH5241-JiVitA-4       BANGLADESH     Mildly Food Insecure        1238    422    251    171
24 months   kiGH5241-JiVitA-4       BANGLADESH     Moderately Food Insecure    1238    161    107     54
24 months   kiGH5241-JiVitA-4       BANGLADESH     Severely Food Insecure      1238      0      0      0


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
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 9 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 9 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 9 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 9 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 3 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 3 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 3 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 9 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 9 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
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
![](/tmp/2f967270-fef4-441c-8413-e28d0286c130/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->


```
## Warning: Removed 15 rows containing missing values (geom_errorbar).
```

![](/tmp/2f967270-fef4-441c-8413-e28d0286c130/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/2f967270-fef4-441c-8413-e28d0286c130/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/2f967270-fef4-441c-8413-e28d0286c130/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                 country      intervention_level         baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -----------  -------------------------  ---------------  ----------  ----------  ----------
3 months    ki1017093c-NIH-Crypto   BANGLADESH   Food Secure                NA                0.2106481   0.1721696   0.2491267
3 months    ki1017093c-NIH-Crypto   BANGLADESH   Mildly Food Insecure       NA                0.2285714   0.1717391   0.2854038
3 months    ki1017093c-NIH-Crypto   BANGLADESH   Moderately Food Insecure   NA                0.1774194   0.0822624   0.2725763
3 months    ki1017093c-NIH-Crypto   BANGLADESH   Severely Food Insecure     NA                0.2500000   0.0766429   0.4233571
6 months    ki0047075b-MAL-ED       PERU         Food Secure                NA                0.2962963   0.1232791   0.4693135
6 months    ki0047075b-MAL-ED       PERU         Mildly Food Insecure       NA                0.2142857   0.0616124   0.3669590
6 months    ki0047075b-MAL-ED       PERU         Moderately Food Insecure   NA                0.2857143   0.1176265   0.4538021
6 months    ki0047075b-MAL-ED       PERU         Severely Food Insecure     NA                0.2500000   0.0888854   0.4111146
6 months    ki1017093c-NIH-Crypto   BANGLADESH   Food Secure                NA                0.1990632   0.1611638   0.2369627
6 months    ki1017093c-NIH-Crypto   BANGLADESH   Mildly Food Insecure       NA                0.2254902   0.1681031   0.2828773
6 months    ki1017093c-NIH-Crypto   BANGLADESH   Moderately Food Insecure   NA                0.2333333   0.1262386   0.3404281
6 months    ki1017093c-NIH-Crypto   BANGLADESH   Severely Food Insecure     NA                0.2083333   0.0457422   0.3709245
9 months    ki0047075b-MAL-ED       PERU         Food Secure                NA                0.4444444   0.2561646   0.6327243
9 months    ki0047075b-MAL-ED       PERU         Mildly Food Insecure       NA                0.2500000   0.0888854   0.4111146
9 months    ki0047075b-MAL-ED       PERU         Moderately Food Insecure   NA                0.2500000   0.0888854   0.4111146
9 months    ki0047075b-MAL-ED       PERU         Severely Food Insecure     NA                0.3214286   0.1476588   0.4951983
9 months    ki1017093c-NIH-Crypto   BANGLADESH   Food Secure                NA                0.2219626   0.1825646   0.2613606
9 months    ki1017093c-NIH-Crypto   BANGLADESH   Mildly Food Insecure       NA                0.2233503   0.1651495   0.2815510
9 months    ki1017093c-NIH-Crypto   BANGLADESH   Moderately Food Insecure   NA                0.2931034   0.1758757   0.4103312
9 months    ki1017093c-NIH-Crypto   BANGLADESH   Severely Food Insecure     NA                0.3478261   0.1530414   0.5426107
9 months    ki1113344-GMS-Nepal     NEPAL        Food Secure                NA                0.2694301   0.2251289   0.3137312
9 months    ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure       NA                0.3376623   0.2319343   0.4433903
9 months    ki1113344-GMS-Nepal     NEPAL        Moderately Food Insecure   NA                0.2692308   0.1485591   0.3899024
9 months    ki1113344-GMS-Nepal     NEPAL        Severely Food Insecure     NA                0.2500000   0.0600497   0.4399503
12 months   ki0047075b-MAL-ED       PERU         Food Secure                NA                0.3333333   0.1547154   0.5119513
12 months   ki0047075b-MAL-ED       PERU         Mildly Food Insecure       NA                0.3928571   0.2111395   0.5745747
12 months   ki0047075b-MAL-ED       PERU         Moderately Food Insecure   NA                0.3928571   0.2111395   0.5745747
12 months   ki0047075b-MAL-ED       PERU         Severely Food Insecure     NA                0.3214286   0.1476588   0.4951983
12 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure                NA                0.2318501   0.1917940   0.2719062
12 months   ki1017093c-NIH-Crypto   BANGLADESH   Mildly Food Insecure       NA                0.2272727   0.1688597   0.2856858
12 months   ki1017093c-NIH-Crypto   BANGLADESH   Moderately Food Insecure   NA                0.3508772   0.2268950   0.4748594
12 months   ki1017093c-NIH-Crypto   BANGLADESH   Severely Food Insecure     NA                0.2916667   0.1096913   0.4736420
12 months   ki1113344-GMS-Nepal     NEPAL        Food Secure                NA                0.3163265   0.2702480   0.3624051
12 months   ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure       NA                0.3846154   0.2765494   0.4926814
12 months   ki1113344-GMS-Nepal     NEPAL        Moderately Food Insecure   NA                0.4038462   0.2703603   0.5373320
12 months   ki1113344-GMS-Nepal     NEPAL        Severely Food Insecure     NA                0.3157895   0.1065870   0.5249919
18 months   ki0047075b-MAL-ED       PERU         Food Secure                NA                0.5185185   0.3291716   0.7078654
18 months   ki0047075b-MAL-ED       PERU         Mildly Food Insecure       NA                0.3703704   0.1873721   0.5533686
18 months   ki0047075b-MAL-ED       PERU         Moderately Food Insecure   NA                0.5555556   0.3672519   0.7438592
18 months   ki0047075b-MAL-ED       PERU         Severely Food Insecure     NA                0.5925926   0.4063930   0.7787922
18 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure                NA                0.2857143   0.2409584   0.3304701
18 months   ki1017093c-NIH-Crypto   BANGLADESH   Mildly Food Insecure       NA                0.3099415   0.2405709   0.3793122
18 months   ki1017093c-NIH-Crypto   BANGLADESH   Moderately Food Insecure   NA                0.3877551   0.2512232   0.5242870
18 months   ki1017093c-NIH-Crypto   BANGLADESH   Severely Food Insecure     NA                0.3181818   0.1233986   0.5129650
18 months   ki1113344-GMS-Nepal     NEPAL        Food Secure                NA                0.4896907   0.4399036   0.5394778
18 months   ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure       NA                0.6351351   0.5253513   0.7449190
18 months   ki1113344-GMS-Nepal     NEPAL        Moderately Food Insecure   NA                0.6481481   0.5206584   0.7756379
18 months   ki1113344-GMS-Nepal     NEPAL        Severely Food Insecure     NA                0.4444444   0.2146755   0.6742134
24 months   ki0047075b-MAL-ED       PERU         Food Secure                NA                0.4615385   0.2690159   0.6540610
24 months   ki0047075b-MAL-ED       PERU         Mildly Food Insecure       NA                0.2592593   0.0931838   0.4253347
24 months   ki0047075b-MAL-ED       PERU         Moderately Food Insecure   NA                0.4074074   0.2211997   0.5936151
24 months   ki0047075b-MAL-ED       PERU         Severely Food Insecure     NA                0.3703704   0.1873641   0.5533766
24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure                NA                0.2395210   0.1937054   0.2853365
24 months   ki1017093c-NIH-Crypto   BANGLADESH   Mildly Food Insecure       NA                0.2661290   0.1882687   0.3439893
24 months   ki1017093c-NIH-Crypto   BANGLADESH   Moderately Food Insecure   NA                0.3684211   0.2149010   0.5219411
24 months   ki1017093c-NIH-Crypto   BANGLADESH   Severely Food Insecure     NA                0.2777778   0.0706593   0.4848963
24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure                NA                0.4097421   0.3580937   0.4613905
24 months   ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure       NA                0.5652174   0.4481293   0.6823055
24 months   ki1113344-GMS-Nepal     NEPAL        Moderately Food Insecure   NA                0.5098039   0.3724646   0.6471433
24 months   ki1113344-GMS-Nepal     NEPAL        Severely Food Insecure     NA                0.3157895   0.1065660   0.5250130


### Parameter: E(Y)


agecat      studyid                 country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.2142857   0.1844587   0.2441127
6 months    ki0047075b-MAL-ED       PERU         NA                   NA                0.2612613   0.1791629   0.3433597
6 months    ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.2097902   0.1799252   0.2396552
9 months    ki0047075b-MAL-ED       PERU         NA                   NA                0.3153153   0.2284854   0.4021453
9 months    ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.2322946   0.2011222   0.2634670
9 months    ki1113344-GMS-Nepal     NEPAL        NA                   NA                0.2785047   0.2404848   0.3165245
12 months   ki0047075b-MAL-ED       PERU         NA                   NA                0.3603604   0.2706406   0.4500801
12 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.2422096   0.2105851   0.2738341
12 months   ki1113344-GMS-Nepal     NEPAL        NA                   NA                0.3345656   0.2947692   0.3743621
18 months   ki0047075b-MAL-ED       PERU         NA                   NA                0.5092593   0.4145371   0.6039814
18 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.3012618   0.2655201   0.3370036
18 months   ki1113344-GMS-Nepal     NEPAL        NA                   NA                0.5243446   0.4819472   0.5667420
24 months   ki0047075b-MAL-ED       PERU         NA                   NA                0.3738318   0.2817277   0.4659358
24 months   ki1017093c-NIH-Crypto   BANGLADESH   NA                   NA                0.2568093   0.2190047   0.2946140
24 months   ki1113344-GMS-Nepal     NEPAL        NA                   NA                0.4385246   0.3944543   0.4825949


### Parameter: RR


agecat      studyid                 country      intervention_level         baseline_level     estimate    ci_lower   ci_upper
----------  ----------------------  -----------  -------------------------  ---------------  ----------  ----------  ---------
3 months    ki1017093c-NIH-Crypto   BANGLADESH   Food Secure                Food Secure       1.0000000   1.0000000   1.000000
3 months    ki1017093c-NIH-Crypto   BANGLADESH   Mildly Food Insecure       Food Secure       1.0850863   0.7970250   1.477259
3 months    ki1017093c-NIH-Crypto   BANGLADESH   Moderately Food Insecure   Food Secure       0.8422545   0.4779422   1.484265
3 months    ki1017093c-NIH-Crypto   BANGLADESH   Severely Food Insecure     Food Secure       1.1868132   0.5793707   2.431130
6 months    ki0047075b-MAL-ED       PERU         Food Secure                Food Secure       1.0000000   1.0000000   1.000000
6 months    ki0047075b-MAL-ED       PERU         Mildly Food Insecure       Food Secure       0.7232143   0.2878706   1.816924
6 months    ki0047075b-MAL-ED       PERU         Moderately Food Insecure   Food Secure       0.9642857   0.4209368   2.208994
6 months    ki0047075b-MAL-ED       PERU         Severely Food Insecure     Food Secure       0.8437500   0.3536114   2.013267
6 months    ki1017093c-NIH-Crypto   BANGLADESH   Food Secure                Food Secure       1.0000000   1.0000000   1.000000
6 months    ki1017093c-NIH-Crypto   BANGLADESH   Mildly Food Insecure       Food Secure       1.1327566   0.8243345   1.556574
6 months    ki1017093c-NIH-Crypto   BANGLADESH   Moderately Food Insecure   Food Secure       1.1721569   0.7131575   1.926575
6 months    ki1017093c-NIH-Crypto   BANGLADESH   Severely Food Insecure     Food Secure       1.0465686   0.4686927   2.336938
9 months    ki0047075b-MAL-ED       PERU         Food Secure                Food Secure       1.0000000   1.0000000   1.000000
9 months    ki0047075b-MAL-ED       PERU         Mildly Food Insecure       Food Secure       0.5625000   0.2601259   1.216358
9 months    ki0047075b-MAL-ED       PERU         Moderately Food Insecure   Food Secure       0.5625000   0.2601259   1.216358
9 months    ki0047075b-MAL-ED       PERU         Severely Food Insecure     Food Secure       0.7232143   0.3639004   1.437313
9 months    ki1017093c-NIH-Crypto   BANGLADESH   Food Secure                Food Secure       1.0000000   1.0000000   1.000000
9 months    ki1017093c-NIH-Crypto   BANGLADESH   Mildly Food Insecure       Food Secure       1.0062517   0.7341382   1.379226
9 months    ki1017093c-NIH-Crypto   BANGLADESH   Moderately Food Insecure   Food Secure       1.3205082   0.8525236   2.045388
9 months    ki1017093c-NIH-Crypto   BANGLADESH   Severely Food Insecure     Food Secure       1.5670481   0.8708645   2.819773
9 months    ki1113344-GMS-Nepal     NEPAL        Food Secure                Food Secure       1.0000000   1.0000000   1.000000
9 months    ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure       Food Secure       1.2532468   0.8799181   1.784970
9 months    ki1113344-GMS-Nepal     NEPAL        Moderately Food Insecure   Food Secure       0.9992604   0.6199250   1.610713
9 months    ki1113344-GMS-Nepal     NEPAL        Severely Food Insecure     Food Secure       0.9278846   0.4264599   2.018876
12 months   ki0047075b-MAL-ED       PERU         Food Secure                Food Secure       1.0000000   1.0000000   1.000000
12 months   ki0047075b-MAL-ED       PERU         Mildly Food Insecure       Food Secure       1.1785714   0.5806670   2.392130
12 months   ki0047075b-MAL-ED       PERU         Moderately Food Insecure   Food Secure       1.1785714   0.5806670   2.392130
12 months   ki0047075b-MAL-ED       PERU         Severely Food Insecure     Food Secure       0.9642857   0.4504289   2.064359
12 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure                Food Secure       1.0000000   1.0000000   1.000000
12 months   ki1017093c-NIH-Crypto   BANGLADESH   Mildly Food Insecure       Food Secure       0.9802571   0.7191911   1.336090
12 months   ki1017093c-NIH-Crypto   BANGLADESH   Moderately Food Insecure   Food Secure       1.5133794   1.0212430   2.242676
12 months   ki1017093c-NIH-Crypto   BANGLADESH   Severely Food Insecure     Food Secure       1.2579966   0.6584455   2.403472
12 months   ki1113344-GMS-Nepal     NEPAL        Food Secure                Food Secure       1.0000000   1.0000000   1.000000
12 months   ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure       Food Secure       1.2158809   0.8860177   1.668552
12 months   ki1113344-GMS-Nepal     NEPAL        Moderately Food Insecure   Food Secure       1.2766749   0.8896278   1.832113
12 months   ki1113344-GMS-Nepal     NEPAL        Severely Food Insecure     Food Secure       0.9983022   0.5066172   1.967180
18 months   ki0047075b-MAL-ED       PERU         Food Secure                Food Secure       1.0000000   1.0000000   1.000000
18 months   ki0047075b-MAL-ED       PERU         Mildly Food Insecure       Food Secure       0.7142857   0.3864066   1.320381
18 months   ki0047075b-MAL-ED       PERU         Moderately Food Insecure   Food Secure       1.0714286   0.6510055   1.763363
18 months   ki0047075b-MAL-ED       PERU         Severely Food Insecure     Food Secure       1.1428571   0.7059486   1.850166
18 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure                Food Secure       1.0000000   1.0000000   1.000000
18 months   ki1017093c-NIH-Crypto   BANGLADESH   Mildly Food Insecure       Food Secure       1.0847953   0.8254735   1.425583
18 months   ki1017093c-NIH-Crypto   BANGLADESH   Moderately Food Insecure   Food Secure       1.3571429   0.9231172   1.995236
18 months   ki1017093c-NIH-Crypto   BANGLADESH   Severely Food Insecure     Food Secure       1.1136364   0.5919880   2.094951
18 months   ki1113344-GMS-Nepal     NEPAL        Food Secure                Food Secure       1.0000000   1.0000000   1.000000
18 months   ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure       Food Secure       1.2970128   1.0613360   1.585023
18 months   ki1113344-GMS-Nepal     NEPAL        Moderately Food Insecure   Food Secure       1.3235867   1.0606951   1.651636
18 months   ki1113344-GMS-Nepal     NEPAL        Severely Food Insecure     Food Secure       0.9076023   0.5358872   1.537156
24 months   ki0047075b-MAL-ED       PERU         Food Secure                Food Secure       1.0000000   1.0000000   1.000000
24 months   ki0047075b-MAL-ED       PERU         Mildly Food Insecure       Food Secure       0.5617284   0.2615430   1.206451
24 months   ki0047075b-MAL-ED       PERU         Moderately Food Insecure   Food Secure       0.8827160   0.4754279   1.638918
24 months   ki0047075b-MAL-ED       PERU         Severely Food Insecure     Food Secure       0.8024691   0.4203332   1.532015
24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure                Food Secure       1.0000000   1.0000000   1.000000
24 months   ki1017093c-NIH-Crypto   BANGLADESH   Mildly Food Insecure       Food Secure       1.1110887   0.7833260   1.575995
24 months   ki1017093c-NIH-Crypto   BANGLADESH   Moderately Food Insecure   Food Secure       1.5381579   0.9724689   2.432911
24 months   ki1017093c-NIH-Crypto   BANGLADESH   Severely Food Insecure     Food Secure       1.1597222   0.5370896   2.504155
24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure                Food Secure       1.0000000   1.0000000   1.000000
24 months   ki1113344-GMS-Nepal     NEPAL        Mildly Food Insecure       Food Secure       1.3794466   1.0824103   1.757996
24 months   ki1113344-GMS-Nepal     NEPAL        Moderately Food Insecure   Food Secure       1.2442068   0.9241050   1.675189
24 months   ki1113344-GMS-Nepal     NEPAL        Severely Food Insecure     Food Secure       0.7707030   0.3926340   1.512816


### Parameter: PAR


agecat      studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
3 months    ki1017093c-NIH-Crypto   BANGLADESH   Food Secure          NA                 0.0036376   -0.0211224   0.0283975
6 months    ki0047075b-MAL-ED       PERU         Food Secure          NA                -0.0350350   -0.1837366   0.1136665
6 months    ki1017093c-NIH-Crypto   BANGLADESH   Food Secure          NA                 0.0107270   -0.0140254   0.0354794
9 months    ki0047075b-MAL-ED       PERU         Food Secure          NA                -0.1291291   -0.2895758   0.0313176
9 months    ki1017093c-NIH-Crypto   BANGLADESH   Food Secure          NA                 0.0103320   -0.0150044   0.0356684
9 months    ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                 0.0090746   -0.0149275   0.0330767
12 months   ki0047075b-MAL-ED       PERU         Food Secure          NA                 0.0270270   -0.1292834   0.1833375
12 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure          NA                 0.0103595   -0.0154040   0.0361230
12 months   ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                 0.0182391   -0.0068621   0.0433403
18 months   ki0047075b-MAL-ED       PERU         Food Secure          NA                -0.0092593   -0.1732666   0.1547481
18 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure          NA                 0.0155475   -0.0127995   0.0438946
18 months   ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                 0.0346538    0.0086884   0.0606193
24 months   ki0047075b-MAL-ED       PERU         Food Secure          NA                -0.0877067   -0.2536441   0.0782307
24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure          NA                 0.0172884   -0.0110010   0.0455777
24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                 0.0287825    0.0005997   0.0569652


### Parameter: PAF


agecat      studyid                 country      intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ----------------------  -----------  -------------------  ---------------  -----------  -----------  ----------
3 months    ki1017093c-NIH-Crypto   BANGLADESH   Food Secure          NA                 0.0169753   -0.1056234   0.1259795
6 months    ki0047075b-MAL-ED       PERU         Food Secure          NA                -0.1340996   -0.8728000   0.3132305
6 months    ki1017093c-NIH-Crypto   BANGLADESH   Food Secure          NA                 0.0511319   -0.0743775   0.1619793
9 months    ki0047075b-MAL-ED       PERU         Food Secure          NA                -0.4095238   -1.0276785   0.0201813
9 months    ki1017093c-NIH-Crypto   BANGLADESH   Food Secure          NA                 0.0444780   -0.0709835   0.1474917
9 months    ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                 0.0325834   -0.0575222   0.1150116
12 months   ki0047075b-MAL-ED       PERU         Food Secure          NA                 0.0750000   -0.4784410   0.4212654
12 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure          NA                 0.0427709   -0.0696691   0.1433915
12 months   ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                 0.0545157   -0.0235526   0.1266296
18 months   ki0047075b-MAL-ED       PERU         Food Secure          NA                -0.0181818   -0.3970150   0.2579219
18 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure          NA                 0.0516081   -0.0472722   0.1411524
18 months   ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                 0.0660898    0.0149125   0.1146084
24 months   ki0047075b-MAL-ED       PERU         Food Secure          NA                -0.2346154   -0.7713345   0.1394764
24 months   ki1017093c-NIH-Crypto   BANGLADESH   Food Secure          NA                 0.0673199   -0.0494277   0.1710795
24 months   ki1113344-GMS-Nepal     NEPAL        Food Secure          NA                 0.0656348   -0.0010605   0.1278866
