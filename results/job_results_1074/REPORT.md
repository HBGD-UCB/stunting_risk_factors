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

**Intervention Variable:** hfoodsec

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                 country        A                             n    nA   nAY0   nAY1
----------  ----------------------  -------------  -------------------------  ----  ----  -----  -----
Birth       ki0047075b-MAL-ED       BANGLADESH     Food Secure                 188   157    153      4
Birth       ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure        188     4      3      1
Birth       ki0047075b-MAL-ED       BANGLADESH     Moderately Food Insecure    188    22     21      1
Birth       ki0047075b-MAL-ED       BANGLADESH     Severely Food Insecure      188     5      5      0
Birth       ki0047075b-MAL-ED       BRAZIL         Food Secure                 105     0      0      0
Birth       ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure        105    11     11      0
Birth       ki0047075b-MAL-ED       BRAZIL         Moderately Food Insecure    105    54     51      3
Birth       ki0047075b-MAL-ED       BRAZIL         Severely Food Insecure      105    40     39      1
Birth       ki0047075b-MAL-ED       INDIA          Food Secure                 170   154    150      4
Birth       ki0047075b-MAL-ED       INDIA          Mildly Food Insecure        170     2      2      0
Birth       ki0047075b-MAL-ED       INDIA          Moderately Food Insecure    170     3      3      0
Birth       ki0047075b-MAL-ED       INDIA          Severely Food Insecure      170    11     10      1
Birth       ki0047075b-MAL-ED       NEPAL          Food Secure                  98    76     76      0
Birth       ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure         98     9      9      0
Birth       ki0047075b-MAL-ED       NEPAL          Moderately Food Insecure     98    11      9      2
Birth       ki0047075b-MAL-ED       NEPAL          Severely Food Insecure       98     2      2      0
Birth       ki0047075b-MAL-ED       PERU           Food Secure                 107    27     27      0
Birth       ki0047075b-MAL-ED       PERU           Mildly Food Insecure        107    25     25      0
Birth       ki0047075b-MAL-ED       PERU           Moderately Food Insecure    107    28     28      0
Birth       ki0047075b-MAL-ED       PERU           Severely Food Insecure      107    27     27      0
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                 195   107    107      0
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure        195    17     17      0
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Moderately Food Insecure    195    66     65      1
Birth       ki0047075b-MAL-ED       SOUTH AFRICA   Severely Food Insecure      195     5      5      0
Birth       ki1017093-NIH-Birth     BANGLADESH     Food Secure                  28     3      3      0
Birth       ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure         28    21     21      0
Birth       ki1017093-NIH-Birth     BANGLADESH     Moderately Food Insecure     28     4      4      0
Birth       ki1017093-NIH-Birth     BANGLADESH     Severely Food Insecure       28     0      0      0
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                  27    14     14      0
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure         27     9      9      0
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Moderately Food Insecure     27     2      2      0
Birth       ki1017093c-NIH-Crypto   BANGLADESH     Severely Food Insecure       27     2      1      1
3 months    ki0047075b-MAL-ED       BANGLADESH     Food Secure                 193   160    157      3
3 months    ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure        193     4      3      1
3 months    ki0047075b-MAL-ED       BANGLADESH     Moderately Food Insecure    193    23     23      0
3 months    ki0047075b-MAL-ED       BANGLADESH     Severely Food Insecure      193     6      6      0
3 months    ki0047075b-MAL-ED       BRAZIL         Food Secure                 129     3      3      0
3 months    ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure        129    11     11      0
3 months    ki0047075b-MAL-ED       BRAZIL         Moderately Food Insecure    129    67     67      0
3 months    ki0047075b-MAL-ED       BRAZIL         Severely Food Insecure      129    48     48      0
3 months    ki0047075b-MAL-ED       INDIA          Food Secure                 211   189    181      8
3 months    ki0047075b-MAL-ED       INDIA          Mildly Food Insecure        211     5      5      0
3 months    ki0047075b-MAL-ED       INDIA          Moderately Food Insecure    211     4      4      0
3 months    ki0047075b-MAL-ED       INDIA          Severely Food Insecure      211    13     11      2
3 months    ki0047075b-MAL-ED       NEPAL          Food Secure                 127    93     93      0
3 months    ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure        127    15     15      0
3 months    ki0047075b-MAL-ED       NEPAL          Moderately Food Insecure    127    16     14      2
3 months    ki0047075b-MAL-ED       NEPAL          Severely Food Insecure      127     3      3      0
3 months    ki0047075b-MAL-ED       PERU           Food Secure                 113    27     25      2
3 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure        113    29     28      1
3 months    ki0047075b-MAL-ED       PERU           Moderately Food Insecure    113    28     28      0
3 months    ki0047075b-MAL-ED       PERU           Severely Food Insecure      113    29     26      3
3 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                 233   132    127      5
3 months    ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure        233    19     18      1
3 months    ki0047075b-MAL-ED       SOUTH AFRICA   Moderately Food Insecure    233    76     73      3
3 months    ki0047075b-MAL-ED       SOUTH AFRICA   Severely Food Insecure      233     6      6      0
3 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure                 570    84     82      2
3 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure        570   446    419     27
3 months    ki1017093-NIH-Birth     BANGLADESH     Moderately Food Insecure    570    35     31      4
3 months    ki1017093-NIH-Birth     BANGLADESH     Severely Food Insecure      570     5      5      0
3 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                 728   432    418     14
3 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure        728   210    199     11
3 months    ki1017093c-NIH-Crypto   BANGLADESH     Moderately Food Insecure    728    62     57      5
3 months    ki1017093c-NIH-Crypto   BANGLADESH     Severely Food Insecure      728    24     21      3
3 months    ki1113344-GMS-Nepal     NEPAL          Food Secure                 553   399    387     12
3 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure        553    79     75      4
3 months    ki1113344-GMS-Nepal     NEPAL          Moderately Food Insecure    553    52     51      1
3 months    ki1113344-GMS-Nepal     NEPAL          Severely Food Insecure      553    23     21      2
6 months    ki0047075b-MAL-ED       BANGLADESH     Food Secure                 193   160    155      5
6 months    ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure        193     4      4      0
6 months    ki0047075b-MAL-ED       BANGLADESH     Moderately Food Insecure    193    23     23      0
6 months    ki0047075b-MAL-ED       BANGLADESH     Severely Food Insecure      193     6      6      0
6 months    ki0047075b-MAL-ED       BRAZIL         Food Secure                 129     3      3      0
6 months    ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure        129    11     11      0
6 months    ki0047075b-MAL-ED       BRAZIL         Moderately Food Insecure    129    67     67      0
6 months    ki0047075b-MAL-ED       BRAZIL         Severely Food Insecure      129    48     48      0
6 months    ki0047075b-MAL-ED       INDIA          Food Secure                 212   190    183      7
6 months    ki0047075b-MAL-ED       INDIA          Mildly Food Insecure        212     5      5      0
6 months    ki0047075b-MAL-ED       INDIA          Moderately Food Insecure    212     4      4      0
6 months    ki0047075b-MAL-ED       INDIA          Severely Food Insecure      212    13     12      1
6 months    ki0047075b-MAL-ED       NEPAL          Food Secure                 128    94     94      0
6 months    ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure        128    15     15      0
6 months    ki0047075b-MAL-ED       NEPAL          Moderately Food Insecure    128    16     16      0
6 months    ki0047075b-MAL-ED       NEPAL          Severely Food Insecure      128     3      3      0
6 months    ki0047075b-MAL-ED       PERU           Food Secure                 111    27     24      3
6 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure        111    28     27      1
6 months    ki0047075b-MAL-ED       PERU           Moderately Food Insecure    111    28     26      2
6 months    ki0047075b-MAL-ED       PERU           Severely Food Insecure      111    28     26      2
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                 228   129    127      2
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure        228    18     17      1
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Moderately Food Insecure    228    75     72      3
6 months    ki0047075b-MAL-ED       SOUTH AFRICA   Severely Food Insecure      228     6      6      0
6 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure                 537    80     77      3
6 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure        537   417    391     26
6 months    ki1017093-NIH-Birth     BANGLADESH     Moderately Food Insecure    537    36     31      5
6 months    ki1017093-NIH-Birth     BANGLADESH     Severely Food Insecure      537     4      3      1
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                 715   427    416     11
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure        715   204    196      8
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Moderately Food Insecure    715    60     56      4
6 months    ki1017093c-NIH-Crypto   BANGLADESH     Severely Food Insecure      715    24     24      0
6 months    ki1113344-GMS-Nepal     NEPAL          Food Secure                 545   395    385     10
6 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure        545    76     72      4
6 months    ki1113344-GMS-Nepal     NEPAL          Moderately Food Insecure    545    52     52      0
6 months    ki1113344-GMS-Nepal     NEPAL          Severely Food Insecure      545    22     19      3
9 months    ki0047075b-MAL-ED       BANGLADESH     Food Secure                 193   160    152      8
9 months    ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure        193     4      4      0
9 months    ki0047075b-MAL-ED       BANGLADESH     Moderately Food Insecure    193    23     22      1
9 months    ki0047075b-MAL-ED       BANGLADESH     Severely Food Insecure      193     6      6      0
9 months    ki0047075b-MAL-ED       BRAZIL         Food Secure                 129     3      3      0
9 months    ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure        129    11     11      0
9 months    ki0047075b-MAL-ED       BRAZIL         Moderately Food Insecure    129    67     67      0
9 months    ki0047075b-MAL-ED       BRAZIL         Severely Food Insecure      129    48     48      0
9 months    ki0047075b-MAL-ED       INDIA          Food Secure                 212   190    183      7
9 months    ki0047075b-MAL-ED       INDIA          Mildly Food Insecure        212     5      5      0
9 months    ki0047075b-MAL-ED       INDIA          Moderately Food Insecure    212     4      4      0
9 months    ki0047075b-MAL-ED       INDIA          Severely Food Insecure      212    13     11      2
9 months    ki0047075b-MAL-ED       NEPAL          Food Secure                 128    94     93      1
9 months    ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure        128    15     15      0
9 months    ki0047075b-MAL-ED       NEPAL          Moderately Food Insecure    128    16     16      0
9 months    ki0047075b-MAL-ED       NEPAL          Severely Food Insecure      128     3      3      0
9 months    ki0047075b-MAL-ED       PERU           Food Secure                 111    27     21      6
9 months    ki0047075b-MAL-ED       PERU           Mildly Food Insecure        111    28     27      1
9 months    ki0047075b-MAL-ED       PERU           Moderately Food Insecure    111    28     27      1
9 months    ki0047075b-MAL-ED       PERU           Severely Food Insecure      111    28     27      1
9 months    ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                 227   129    126      3
9 months    ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure        227    19     18      1
9 months    ki0047075b-MAL-ED       SOUTH AFRICA   Moderately Food Insecure    227    73     68      5
9 months    ki0047075b-MAL-ED       SOUTH AFRICA   Severely Food Insecure      227     6      6      0
9 months    ki1017093-NIH-Birth     BANGLADESH     Food Secure                 507    76     72      4
9 months    ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure        507   392    362     30
9 months    ki1017093-NIH-Birth     BANGLADESH     Moderately Food Insecure    507    35     25     10
9 months    ki1017093-NIH-Birth     BANGLADESH     Severely Food Insecure      507     4      3      1
9 months    ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                 706   428    412     16
9 months    ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure        706   197    188      9
9 months    ki1017093c-NIH-Crypto   BANGLADESH     Moderately Food Insecure    706    58     55      3
9 months    ki1017093c-NIH-Crypto   BANGLADESH     Severely Food Insecure      706    23     23      0
9 months    ki1113344-GMS-Nepal     NEPAL          Food Secure                 535   386    366     20
9 months    ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure        535    77     70      7
9 months    ki1113344-GMS-Nepal     NEPAL          Moderately Food Insecure    535    52     49      3
9 months    ki1113344-GMS-Nepal     NEPAL          Severely Food Insecure      535    20     18      2
12 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                 193   161    150     11
12 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure        193     4      4      0
12 months   ki0047075b-MAL-ED       BANGLADESH     Moderately Food Insecure    193    22     20      2
12 months   ki0047075b-MAL-ED       BANGLADESH     Severely Food Insecure      193     6      5      1
12 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                 129     3      3      0
12 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure        129    11     11      0
12 months   ki0047075b-MAL-ED       BRAZIL         Moderately Food Insecure    129    67     67      0
12 months   ki0047075b-MAL-ED       BRAZIL         Severely Food Insecure      129    48     48      0
12 months   ki0047075b-MAL-ED       INDIA          Food Secure                 211   189    175     14
12 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure        211     5      5      0
12 months   ki0047075b-MAL-ED       INDIA          Moderately Food Insecure    211     4      4      0
12 months   ki0047075b-MAL-ED       INDIA          Severely Food Insecure      211    13     10      3
12 months   ki0047075b-MAL-ED       NEPAL          Food Secure                 128    94     93      1
12 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure        128    15     15      0
12 months   ki0047075b-MAL-ED       NEPAL          Moderately Food Insecure    128    16     13      3
12 months   ki0047075b-MAL-ED       NEPAL          Severely Food Insecure      128     3      3      0
12 months   ki0047075b-MAL-ED       PERU           Food Secure                 111    27     24      3
12 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure        111    28     27      1
12 months   ki0047075b-MAL-ED       PERU           Moderately Food Insecure    111    28     26      2
12 months   ki0047075b-MAL-ED       PERU           Severely Food Insecure      111    28     26      2
12 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                 229   128    122      6
12 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure        229    19     18      1
12 months   ki0047075b-MAL-ED       SOUTH AFRICA   Moderately Food Insecure    229    76     72      4
12 months   ki0047075b-MAL-ED       SOUTH AFRICA   Severely Food Insecure      229     6      6      0
12 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                 491    76     74      2
12 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure        491   377    338     39
12 months   ki1017093-NIH-Birth     BANGLADESH     Moderately Food Insecure    491    35     28      7
12 months   ki1017093-NIH-Birth     BANGLADESH     Severely Food Insecure      491     3      3      0
12 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                 706   427    405     22
12 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure        706   198    186     12
12 months   ki1017093c-NIH-Crypto   BANGLADESH     Moderately Food Insecure    706    57     52      5
12 months   ki1017093c-NIH-Crypto   BANGLADESH     Severely Food Insecure      706    24     22      2
12 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                 541   392    367     25
12 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure        541    78     65     13
12 months   ki1113344-GMS-Nepal     NEPAL          Moderately Food Insecure    541    52     45      7
12 months   ki1113344-GMS-Nepal     NEPAL          Severely Food Insecure      541    19     16      3
18 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                 194   161    142     19
18 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure        194     4      3      1
18 months   ki0047075b-MAL-ED       BANGLADESH     Moderately Food Insecure    194    23     17      6
18 months   ki0047075b-MAL-ED       BANGLADESH     Severely Food Insecure      194     6      4      2
18 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                 129     3      3      0
18 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure        129    11     11      0
18 months   ki0047075b-MAL-ED       BRAZIL         Moderately Food Insecure    129    67     67      0
18 months   ki0047075b-MAL-ED       BRAZIL         Severely Food Insecure      129    48     48      0
18 months   ki0047075b-MAL-ED       INDIA          Food Secure                 212   190    163     27
18 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure        212     5      5      0
18 months   ki0047075b-MAL-ED       INDIA          Moderately Food Insecure    212     4      4      0
18 months   ki0047075b-MAL-ED       INDIA          Severely Food Insecure      212    13     10      3
18 months   ki0047075b-MAL-ED       NEPAL          Food Secure                 127    93     92      1
18 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure        127    15     15      0
18 months   ki0047075b-MAL-ED       NEPAL          Moderately Food Insecure    127    16     12      4
18 months   ki0047075b-MAL-ED       NEPAL          Severely Food Insecure      127     3      3      0
18 months   ki0047075b-MAL-ED       PERU           Food Secure                 108    27     22      5
18 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure        108    27     25      2
18 months   ki0047075b-MAL-ED       PERU           Moderately Food Insecure    108    27     25      2
18 months   ki0047075b-MAL-ED       PERU           Severely Food Insecure      108    27     22      5
18 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                 229   129    117     12
18 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure        229    18     16      2
18 months   ki0047075b-MAL-ED       SOUTH AFRICA   Moderately Food Insecure    229    76     66     10
18 months   ki0047075b-MAL-ED       SOUTH AFRICA   Severely Food Insecure      229     6      5      1
18 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                 463    70     63      7
18 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure        463   355    277     78
18 months   ki1017093-NIH-Birth     BANGLADESH     Moderately Food Insecure    463    34     19     15
18 months   ki1017093-NIH-Birth     BANGLADESH     Severely Food Insecure      463     4      3      1
18 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                 634   392    369     23
18 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure        634   171    158     13
18 months   ki1017093c-NIH-Crypto   BANGLADESH     Moderately Food Insecure    634    49     44      5
18 months   ki1017093c-NIH-Crypto   BANGLADESH     Severely Food Insecure      634    22     21      1
18 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                 534   388    335     53
18 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure        534    74     60     14
18 months   ki1113344-GMS-Nepal     NEPAL          Moderately Food Insecure    534    54     43     11
18 months   ki1113344-GMS-Nepal     NEPAL          Severely Food Insecure      534    18     15      3
24 months   ki0047075b-MAL-ED       BANGLADESH     Food Secure                 194   161    144     17
24 months   ki0047075b-MAL-ED       BANGLADESH     Mildly Food Insecure        194     4      2      2
24 months   ki0047075b-MAL-ED       BANGLADESH     Moderately Food Insecure    194    23     19      4
24 months   ki0047075b-MAL-ED       BANGLADESH     Severely Food Insecure      194     6      4      2
24 months   ki0047075b-MAL-ED       BRAZIL         Food Secure                 129     3      3      0
24 months   ki0047075b-MAL-ED       BRAZIL         Mildly Food Insecure        129    11     11      0
24 months   ki0047075b-MAL-ED       BRAZIL         Moderately Food Insecure    129    67     67      0
24 months   ki0047075b-MAL-ED       BRAZIL         Severely Food Insecure      129    48     48      0
24 months   ki0047075b-MAL-ED       INDIA          Food Secure                 212   190    166     24
24 months   ki0047075b-MAL-ED       INDIA          Mildly Food Insecure        212     5      5      0
24 months   ki0047075b-MAL-ED       INDIA          Moderately Food Insecure    212     4      4      0
24 months   ki0047075b-MAL-ED       INDIA          Severely Food Insecure      212    13     10      3
24 months   ki0047075b-MAL-ED       NEPAL          Food Secure                 128    94     91      3
24 months   ki0047075b-MAL-ED       NEPAL          Mildly Food Insecure        128    15     15      0
24 months   ki0047075b-MAL-ED       NEPAL          Moderately Food Insecure    128    16     13      3
24 months   ki0047075b-MAL-ED       NEPAL          Severely Food Insecure      128     3      3      0
24 months   ki0047075b-MAL-ED       PERU           Food Secure                 107    26     23      3
24 months   ki0047075b-MAL-ED       PERU           Mildly Food Insecure        107    27     25      2
24 months   ki0047075b-MAL-ED       PERU           Moderately Food Insecure    107    27     27      0
24 months   ki0047075b-MAL-ED       PERU           Severely Food Insecure      107    27     23      4
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Food Secure                 228   129    117     12
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Mildly Food Insecure        228    18     14      4
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Moderately Food Insecure    228    75     67      8
24 months   ki0047075b-MAL-ED       SOUTH AFRICA   Severely Food Insecure      228     6      6      0
24 months   ki1017093-NIH-Birth     BANGLADESH     Food Secure                 429    68     61      7
24 months   ki1017093-NIH-Birth     BANGLADESH     Mildly Food Insecure        429   328    258     70
24 months   ki1017093-NIH-Birth     BANGLADESH     Moderately Food Insecure    429    30     16     14
24 months   ki1017093-NIH-Birth     BANGLADESH     Severely Food Insecure      429     3      1      2
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Food Secure                 514   334    314     20
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Mildly Food Insecure        514   124    114     10
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Moderately Food Insecure    514    38     33      5
24 months   ki1017093c-NIH-Crypto   BANGLADESH     Severely Food Insecure      514    18     18      0
24 months   ki1113344-GMS-Nepal     NEPAL          Food Secure                 488   349    316     33
24 months   ki1113344-GMS-Nepal     NEPAL          Mildly Food Insecure        488    69     61      8
24 months   ki1113344-GMS-Nepal     NEPAL          Moderately Food Insecure    488    51     42      9
24 months   ki1113344-GMS-Nepal     NEPAL          Severely Food Insecure      488    19     18      1


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
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 18 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 18 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 18 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 9 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 9 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 9 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH

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
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 9 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 9 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 9 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 18 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 18 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 18 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL


ALL STRATA DROPPED. JOB FINISHED














