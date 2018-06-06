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

**Intervention Variable:** nrooms

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        A        n     nA   nAY0   nAY1
----------  -------------------------  -----------------------------  ---  -----  -----  -----  -----
Birth       ki0047075b-MAL-ED          BANGLADESH                     1      234    144    139      5
Birth       ki0047075b-MAL-ED          BANGLADESH                     2      234     50     49      1
Birth       ki0047075b-MAL-ED          BANGLADESH                     3      234     28     28      0
Birth       ki0047075b-MAL-ED          BANGLADESH                     4+     234     12     12      0
Birth       ki0047075b-MAL-ED          BRAZIL                         1      174      3      3      0
Birth       ki0047075b-MAL-ED          BRAZIL                         2      174     19     19      0
Birth       ki0047075b-MAL-ED          BRAZIL                         3      174     50     46      4
Birth       ki0047075b-MAL-ED          BRAZIL                         4+     174    102     99      3
Birth       ki0047075b-MAL-ED          INDIA                          1      191     69     67      2
Birth       ki0047075b-MAL-ED          INDIA                          2      191     68     64      4
Birth       ki0047075b-MAL-ED          INDIA                          3      191     32     31      1
Birth       ki0047075b-MAL-ED          INDIA                          4+     191     22     22      0
Birth       ki0047075b-MAL-ED          NEPAL                          1      171     36     33      3
Birth       ki0047075b-MAL-ED          NEPAL                          2      171     21     21      0
Birth       ki0047075b-MAL-ED          NEPAL                          3      171     17     17      0
Birth       ki0047075b-MAL-ED          NEPAL                          4+     171     97     94      3
Birth       ki0047075b-MAL-ED          PERU                           1      259     17     17      0
Birth       ki0047075b-MAL-ED          PERU                           2      259     51     50      1
Birth       ki0047075b-MAL-ED          PERU                           3      259     59     58      1
Birth       ki0047075b-MAL-ED          PERU                           4+     259    132    127      5
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1      218     14     14      0
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   2      218     21     21      0
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   3      218     23     23      0
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   4+     218    160    159      1
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1      118      6      6      0
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2      118     24     22      2
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3      118     33     31      2
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+     118     55     54      1
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1       90     38     36      2
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          2       90     28     28      0
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          3       90     19     18      1
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          4+      90      5      5      0
Birth       ki1000108-IRC              INDIA                          1      386    175    167      8
Birth       ki1000108-IRC              INDIA                          2      386    161    153      8
Birth       ki1000108-IRC              INDIA                          3      386     33     33      0
Birth       ki1000108-IRC              INDIA                          4+     386     17     17      0
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1       27     17     17      0
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     2       27      7      7      0
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     3       27      0      0      0
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     4+      27      3      2      1
Birth       ki1114097-CONTENT          PERU                           1        2      0      0      0
Birth       ki1114097-CONTENT          PERU                           2        2      1      1      0
Birth       ki1114097-CONTENT          PERU                           3        2      0      0      0
Birth       ki1114097-CONTENT          PERU                           4+       2      1      1      0
Birth       ki1135781-COHORTS          INDIA                          1     4769   3125   3021    104
Birth       ki1135781-COHORTS          INDIA                          2     4769   1385   1356     29
Birth       ki1135781-COHORTS          INDIA                          3     4769    167    160      7
Birth       ki1135781-COHORTS          INDIA                          4+    4769     92     91      1
3 months    ki0047075b-MAL-ED          BANGLADESH                     1      241    152    149      3
3 months    ki0047075b-MAL-ED          BANGLADESH                     2      241     50     47      3
3 months    ki0047075b-MAL-ED          BANGLADESH                     3      241     28     28      0
3 months    ki0047075b-MAL-ED          BANGLADESH                     4+     241     11     11      0
3 months    ki0047075b-MAL-ED          BRAZIL                         1      210      4      4      0
3 months    ki0047075b-MAL-ED          BRAZIL                         2      210     20     20      0
3 months    ki0047075b-MAL-ED          BRAZIL                         3      210     59     59      0
3 months    ki0047075b-MAL-ED          BRAZIL                         4+     210    127    126      1
3 months    ki0047075b-MAL-ED          INDIA                          1      234     84     82      2
3 months    ki0047075b-MAL-ED          INDIA                          2      234     78     71      7
3 months    ki0047075b-MAL-ED          INDIA                          3      234     47     45      2
3 months    ki0047075b-MAL-ED          INDIA                          4+     234     25     25      0
3 months    ki0047075b-MAL-ED          NEPAL                          1      234     51     50      1
3 months    ki0047075b-MAL-ED          NEPAL                          2      234     31     31      0
3 months    ki0047075b-MAL-ED          NEPAL                          3      234     22     22      0
3 months    ki0047075b-MAL-ED          NEPAL                          4+     234    130    128      2
3 months    ki0047075b-MAL-ED          PERU                           1      272     19     17      2
3 months    ki0047075b-MAL-ED          PERU                           2      272     52     50      2
3 months    ki0047075b-MAL-ED          PERU                           3      272     62     57      5
3 months    ki0047075b-MAL-ED          PERU                           4+     272    139    130      9
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1      257     14     14      0
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2      257     22     22      0
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3      257     25     25      0
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+     257    196    186     10
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1      249     13     13      0
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2      249     63     58      5
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3      249     66     65      1
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+     249    107    100      7
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          1      362    195    181     14
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          2      362    102     91     11
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          3      362     51     43      8
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+     362     14     14      0
3 months    ki1000108-IRC              INDIA                          1      405    184    166     18
3 months    ki1000108-IRC              INDIA                          2      405    168    155     13
3 months    ki1000108-IRC              INDIA                          3      405     36     32      4
3 months    ki1000108-IRC              INDIA                          4+     405     17     16      1
3 months    ki1017093b-PROVIDE         BANGLADESH                     1      645    463    455      8
3 months    ki1017093b-PROVIDE         BANGLADESH                     2      645    101    100      1
3 months    ki1017093b-PROVIDE         BANGLADESH                     3      645     59     58      1
3 months    ki1017093b-PROVIDE         BANGLADESH                     4+     645     22     22      0
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     1      728    349    333     16
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     2      728    186    175     11
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     3      728    102     99      3
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+     728     91     88      3
3 months    ki1113344-GMS-Nepal        NEPAL                          1      571     40     38      2
3 months    ki1113344-GMS-Nepal        NEPAL                          2      571    121    113      8
3 months    ki1113344-GMS-Nepal        NEPAL                          3      571    140    134      6
3 months    ki1113344-GMS-Nepal        NEPAL                          4+     571    270    264      6
3 months    ki1114097-CONTENT          PERU                           1      215     44     44      0
3 months    ki1114097-CONTENT          PERU                           2      215     54     53      1
3 months    ki1114097-CONTENT          PERU                           3      215     39     39      0
3 months    ki1114097-CONTENT          PERU                           4+     215     78     76      2
3 months    ki1135781-COHORTS          INDIA                          1     5077   3327   3172    155
3 months    ki1135781-COHORTS          INDIA                          2     5077   1467   1437     30
3 months    ki1135781-COHORTS          INDIA                          3     5077    185    182      3
3 months    ki1135781-COHORTS          INDIA                          4+    5077     98     98      0
6 months    ki0047075b-MAL-ED          BANGLADESH                     1      240    150    145      5
6 months    ki0047075b-MAL-ED          BANGLADESH                     2      240     50     47      3
6 months    ki0047075b-MAL-ED          BANGLADESH                     3      240     28     28      0
6 months    ki0047075b-MAL-ED          BANGLADESH                     4+     240     12     12      0
6 months    ki0047075b-MAL-ED          BRAZIL                         1      209      4      4      0
6 months    ki0047075b-MAL-ED          BRAZIL                         2      209     20     20      0
6 months    ki0047075b-MAL-ED          BRAZIL                         3      209     59     59      0
6 months    ki0047075b-MAL-ED          BRAZIL                         4+     209    126    126      0
6 months    ki0047075b-MAL-ED          INDIA                          1      235     84     81      3
6 months    ki0047075b-MAL-ED          INDIA                          2      235     78     74      4
6 months    ki0047075b-MAL-ED          INDIA                          3      235     48     46      2
6 months    ki0047075b-MAL-ED          INDIA                          4+     235     25     25      0
6 months    ki0047075b-MAL-ED          NEPAL                          1      236     52     51      1
6 months    ki0047075b-MAL-ED          NEPAL                          2      236     31     31      0
6 months    ki0047075b-MAL-ED          NEPAL                          3      236     22     22      0
6 months    ki0047075b-MAL-ED          NEPAL                          4+     236    131    131      0
6 months    ki0047075b-MAL-ED          PERU                           1      270     19     17      2
6 months    ki0047075b-MAL-ED          PERU                           2      270     50     48      2
6 months    ki0047075b-MAL-ED          PERU                           3      270     62     60      2
6 months    ki0047075b-MAL-ED          PERU                           4+     270    139    133      6
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1      249     14     14      0
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2      249     21     21      0
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3      249     23     23      0
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+     249    191    185      6
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1      247     13     11      2
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2      247     62     56      6
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3      247     64     63      1
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+     247    108    103      5
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1      369    198    179     19
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2      369    106     91     15
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3      369     51     43      8
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+     369     14     14      0
6 months    ki1000108-IRC              INDIA                          1      405    183    172     11
6 months    ki1000108-IRC              INDIA                          2      405    170    156     14
6 months    ki1000108-IRC              INDIA                          3      405     35     32      3
6 months    ki1000108-IRC              INDIA                          4+     405     17     16      1
6 months    ki1017093b-PROVIDE         BANGLADESH                     1      583    415    403     12
6 months    ki1017093b-PROVIDE         BANGLADESH                     2      583     91     89      2
6 months    ki1017093b-PROVIDE         BANGLADESH                     3      583     56     56      0
6 months    ki1017093b-PROVIDE         BANGLADESH                     4+     583     21     21      0
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1      715    339    326     13
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2      715    184    178      6
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     3      715    101     98      3
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+     715     91     90      1
6 months    ki1113344-GMS-Nepal        NEPAL                          1      563     40     38      2
6 months    ki1113344-GMS-Nepal        NEPAL                          2      563    115    108      7
6 months    ki1113344-GMS-Nepal        NEPAL                          3      563    141    136      5
6 months    ki1113344-GMS-Nepal        NEPAL                          4+     563    267    261      6
6 months    ki1114097-CONTENT          PERU                           1      215     44     43      1
6 months    ki1114097-CONTENT          PERU                           2      215     54     53      1
6 months    ki1114097-CONTENT          PERU                           3      215     39     39      0
6 months    ki1114097-CONTENT          PERU                           4+     215     78     76      2
6 months    ki1135781-COHORTS          INDIA                          1     4962   3213   3000    213
6 months    ki1135781-COHORTS          INDIA                          2     4962   1474   1448     26
6 months    ki1135781-COHORTS          INDIA                          3     4962    182    179      3
6 months    ki1135781-COHORTS          INDIA                          4+    4962     93     93      0
9 months    ki0047075b-MAL-ED          BANGLADESH                     1      234    150    142      8
9 months    ki0047075b-MAL-ED          BANGLADESH                     2      234     46     43      3
9 months    ki0047075b-MAL-ED          BANGLADESH                     3      234     27     27      0
9 months    ki0047075b-MAL-ED          BANGLADESH                     4+     234     11     11      0
9 months    ki0047075b-MAL-ED          BRAZIL                         1      199      3      3      0
9 months    ki0047075b-MAL-ED          BRAZIL                         2      199     18     18      0
9 months    ki0047075b-MAL-ED          BRAZIL                         3      199     59     59      0
9 months    ki0047075b-MAL-ED          BRAZIL                         4+     199    119    119      0
9 months    ki0047075b-MAL-ED          INDIA                          1      232     83     81      2
9 months    ki0047075b-MAL-ED          INDIA                          2      232     76     70      6
9 months    ki0047075b-MAL-ED          INDIA                          3      232     48     46      2
9 months    ki0047075b-MAL-ED          INDIA                          4+     232     25     25      0
9 months    ki0047075b-MAL-ED          NEPAL                          1      231     49     49      0
9 months    ki0047075b-MAL-ED          NEPAL                          2      231     31     31      0
9 months    ki0047075b-MAL-ED          NEPAL                          3      231     22     22      0
9 months    ki0047075b-MAL-ED          NEPAL                          4+     231    129    128      1
9 months    ki0047075b-MAL-ED          PERU                           1      256     19     19      0
9 months    ki0047075b-MAL-ED          PERU                           2      256     47     47      0
9 months    ki0047075b-MAL-ED          PERU                           3      256     55     53      2
9 months    ki0047075b-MAL-ED          PERU                           4+     256    135    125     10
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1      248     14     13      1
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2      248     19     19      0
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3      248     24     23      1
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+     248    191    184      7
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1      238     11      9      2
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2      238     58     47     11
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3      238     64     61      3
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+     238    105     92     13
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          1      366    199    172     27
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          2      366    103     89     14
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          3      366     50     44      6
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+     366     14     14      0
9 months    ki1000108-IRC              INDIA                          1      405    183    169     14
9 months    ki1000108-IRC              INDIA                          2      405    170    156     14
9 months    ki1000108-IRC              INDIA                          3      405     35     31      4
9 months    ki1000108-IRC              INDIA                          4+     405     17     15      2
9 months    ki1017093b-PROVIDE         BANGLADESH                     1      605    429    408     21
9 months    ki1017093b-PROVIDE         BANGLADESH                     2      605     97     93      4
9 months    ki1017093b-PROVIDE         BANGLADESH                     3      605     57     57      0
9 months    ki1017093b-PROVIDE         BANGLADESH                     4+     605     22     22      0
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     1      706    332    320     12
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     2      706    184    175      9
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     3      706    101     98      3
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+     706     89     85      4
9 months    ki1113344-GMS-Nepal        NEPAL                          1      551     38     35      3
9 months    ki1113344-GMS-Nepal        NEPAL                          2      551    117    109      8
9 months    ki1113344-GMS-Nepal        NEPAL                          3      551    136    128      8
9 months    ki1113344-GMS-Nepal        NEPAL                          4+     551    260    244     16
9 months    ki1114097-CONTENT          PERU                           1      214     44     41      3
9 months    ki1114097-CONTENT          PERU                           2      214     54     54      0
9 months    ki1114097-CONTENT          PERU                           3      214     38     38      0
9 months    ki1114097-CONTENT          PERU                           4+     214     78     76      2
9 months    ki1135781-COHORTS          INDIA                          1     4337   2793   2493    300
9 months    ki1135781-COHORTS          INDIA                          2     4337   1306   1253     53
9 months    ki1135781-COHORTS          INDIA                          3     4337    156    149      7
9 months    ki1135781-COHORTS          INDIA                          4+    4337     82     80      2
12 months   ki0047075b-MAL-ED          BANGLADESH                     1      233    149    136     13
12 months   ki0047075b-MAL-ED          BANGLADESH                     2      233     46     42      4
12 months   ki0047075b-MAL-ED          BANGLADESH                     3      233     27     27      0
12 months   ki0047075b-MAL-ED          BANGLADESH                     4+     233     11     11      0
12 months   ki0047075b-MAL-ED          BRAZIL                         1      195      2      2      0
12 months   ki0047075b-MAL-ED          BRAZIL                         2      195     18     18      0
12 months   ki0047075b-MAL-ED          BRAZIL                         3      195     57     57      0
12 months   ki0047075b-MAL-ED          BRAZIL                         4+     195    118    118      0
12 months   ki0047075b-MAL-ED          INDIA                          1      228     82     75      7
12 months   ki0047075b-MAL-ED          INDIA                          2      228     74     65      9
12 months   ki0047075b-MAL-ED          INDIA                          3      228     47     45      2
12 months   ki0047075b-MAL-ED          INDIA                          4+     228     25     25      0
12 months   ki0047075b-MAL-ED          NEPAL                          1      231     49     48      1
12 months   ki0047075b-MAL-ED          NEPAL                          2      231     31     31      0
12 months   ki0047075b-MAL-ED          NEPAL                          3      231     22     22      0
12 months   ki0047075b-MAL-ED          NEPAL                          4+     231    129    125      4
12 months   ki0047075b-MAL-ED          PERU                           1      246     18     17      1
12 months   ki0047075b-MAL-ED          PERU                           2      246     46     45      1
12 months   ki0047075b-MAL-ED          PERU                           3      246     53     53      0
12 months   ki0047075b-MAL-ED          PERU                           4+     246    129    118     11
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1      251     14     13      1
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2      251     21     20      1
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3      251     24     23      1
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+     251    192    183      9
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1      231     11     10      1
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2      231     55     42     13
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3      231     60     53      7
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+     231    105     89     16
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          1      368    200    153     47
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          2      368    105     81     24
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          3      368     49     39     10
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+     368     14     12      2
12 months   ki1000108-IRC              INDIA                          1      404    184    168     16
12 months   ki1000108-IRC              INDIA                          2      404    169    157     12
12 months   ki1000108-IRC              INDIA                          3      404     34     30      4
12 months   ki1000108-IRC              INDIA                          4+     404     17     15      2
12 months   ki1017093b-PROVIDE         BANGLADESH                     1      600    425    396     29
12 months   ki1017093b-PROVIDE         BANGLADESH                     2      600     96     91      5
12 months   ki1017093b-PROVIDE         BANGLADESH                     3      600     57     56      1
12 months   ki1017093b-PROVIDE         BANGLADESH                     4+     600     22     21      1
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     1      706    331    315     16
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     2      706    183    166     17
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     3      706    102     99      3
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+     706     90     85      5
12 months   ki1113344-GMS-Nepal        NEPAL                          1      558     38     31      7
12 months   ki1113344-GMS-Nepal        NEPAL                          2      558    119    104     15
12 months   ki1113344-GMS-Nepal        NEPAL                          3      558    136    127      9
12 months   ki1113344-GMS-Nepal        NEPAL                          4+     558    265    245     20
12 months   ki1114097-CONTENT          PERU                           1      215     44     43      1
12 months   ki1114097-CONTENT          PERU                           2      215     54     54      0
12 months   ki1114097-CONTENT          PERU                           3      215     39     39      0
12 months   ki1114097-CONTENT          PERU                           4+     215     78     76      2
12 months   ki1135781-COHORTS          INDIA                          1     3874   2451   2057    394
12 months   ki1135781-COHORTS          INDIA                          2     3874   1202   1131     71
12 months   ki1135781-COHORTS          INDIA                          3     3874    143    133     10
12 months   ki1135781-COHORTS          INDIA                          4+    3874     78     75      3
18 months   ki0047075b-MAL-ED          BANGLADESH                     1      221    140    115     25
18 months   ki0047075b-MAL-ED          BANGLADESH                     2      221     43     37      6
18 months   ki0047075b-MAL-ED          BANGLADESH                     3      221     27     27      0
18 months   ki0047075b-MAL-ED          BANGLADESH                     4+     221     11     11      0
18 months   ki0047075b-MAL-ED          BRAZIL                         1      180      1      1      0
18 months   ki0047075b-MAL-ED          BRAZIL                         2      180     17     17      0
18 months   ki0047075b-MAL-ED          BRAZIL                         3      180     51     51      0
18 months   ki0047075b-MAL-ED          BRAZIL                         4+     180    111    111      0
18 months   ki0047075b-MAL-ED          INDIA                          1      228     82     70     12
18 months   ki0047075b-MAL-ED          INDIA                          2      228     74     60     14
18 months   ki0047075b-MAL-ED          INDIA                          3      228     47     43      4
18 months   ki0047075b-MAL-ED          INDIA                          4+     228     25     23      2
18 months   ki0047075b-MAL-ED          NEPAL                          1      229     49     47      2
18 months   ki0047075b-MAL-ED          NEPAL                          2      229     31     31      0
18 months   ki0047075b-MAL-ED          NEPAL                          3      229     22     21      1
18 months   ki0047075b-MAL-ED          NEPAL                          4+     229    127    123      4
18 months   ki0047075b-MAL-ED          PERU                           1      222     17     15      2
18 months   ki0047075b-MAL-ED          PERU                           2      222     39     35      4
18 months   ki0047075b-MAL-ED          PERU                           3      222     48     46      2
18 months   ki0047075b-MAL-ED          PERU                           4+     222    118    106     12
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1      241     13     12      1
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2      241     20     19      1
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3      241     23     19      4
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+     241    185    165     20
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1      225     10      7      3
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2      225     51     33     18
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3      225     61     45     16
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+     225    103     71     32
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          1      369    200    139     61
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          2      369    105     71     34
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          3      369     51     39     12
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+     369     13     11      2
18 months   ki1000108-IRC              INDIA                          1      403    182    166     16
18 months   ki1000108-IRC              INDIA                          2      403    169    156     13
18 months   ki1000108-IRC              INDIA                          3      403     35     33      2
18 months   ki1000108-IRC              INDIA                          4+     403     17     14      3
18 months   ki1017093b-PROVIDE         BANGLADESH                     1      552    382    338     44
18 months   ki1017093b-PROVIDE         BANGLADESH                     2      552     91     85      6
18 months   ki1017093b-PROVIDE         BANGLADESH                     3      552     57     52      5
18 months   ki1017093b-PROVIDE         BANGLADESH                     4+     552     22     20      2
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     1      634    287    267     20
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     2      634    169    153     16
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     3      634     92     91      1
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+     634     86     81      5
18 months   ki1113344-GMS-Nepal        NEPAL                          1      550     37     31      6
18 months   ki1113344-GMS-Nepal        NEPAL                          2      550    120    100     20
18 months   ki1113344-GMS-Nepal        NEPAL                          3      550    136    116     20
18 months   ki1113344-GMS-Nepal        NEPAL                          4+     550    257    218     39
18 months   ki1114097-CONTENT          PERU                           1      200     38     36      2
18 months   ki1114097-CONTENT          PERU                           2      200     51     50      1
18 months   ki1114097-CONTENT          PERU                           3      200     38     37      1
18 months   ki1114097-CONTENT          PERU                           4+     200     73     72      1
24 months   ki0047075b-MAL-ED          BANGLADESH                     1      212    134    113     21
24 months   ki0047075b-MAL-ED          BANGLADESH                     2      212     40     36      4
24 months   ki0047075b-MAL-ED          BANGLADESH                     3      212     27     26      1
24 months   ki0047075b-MAL-ED          BANGLADESH                     4+     212     11     11      0
24 months   ki0047075b-MAL-ED          BRAZIL                         1      169      0      0      0
24 months   ki0047075b-MAL-ED          BRAZIL                         2      169     16     16      0
24 months   ki0047075b-MAL-ED          BRAZIL                         3      169     49     48      1
24 months   ki0047075b-MAL-ED          BRAZIL                         4+     169    104    104      0
24 months   ki0047075b-MAL-ED          INDIA                          1      227     82     73      9
24 months   ki0047075b-MAL-ED          INDIA                          2      227     74     62     12
24 months   ki0047075b-MAL-ED          INDIA                          3      227     46     42      4
24 months   ki0047075b-MAL-ED          INDIA                          4+     227     25     22      3
24 months   ki0047075b-MAL-ED          NEPAL                          1      228     48     47      1
24 months   ki0047075b-MAL-ED          NEPAL                          2      228     31     31      0
24 months   ki0047075b-MAL-ED          NEPAL                          3      228     22     21      1
24 months   ki0047075b-MAL-ED          NEPAL                          4+     228    127    122      5
24 months   ki0047075b-MAL-ED          PERU                           1      201     16     13      3
24 months   ki0047075b-MAL-ED          PERU                           2      201     32     32      0
24 months   ki0047075b-MAL-ED          PERU                           3      201     43     41      2
24 months   ki0047075b-MAL-ED          PERU                           4+     201    110    100     10
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1      238     13     10      3
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2      238     19     17      2
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3      238     23     20      3
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+     238    183    165     18
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1      214      9      7      2
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2      214     50     28     22
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3      214     57     42     15
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+     214     98     68     30
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1      372    201    130     71
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2      372    106     72     34
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3      372     51     36     15
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+     372     14     11      3
24 months   ki1000108-IRC              INDIA                          1      407    184    159     25
24 months   ki1000108-IRC              INDIA                          2      407    170    158     12
24 months   ki1000108-IRC              INDIA                          3      407     36     34      2
24 months   ki1000108-IRC              INDIA                          4+     407     17     15      2
24 months   ki1017093b-PROVIDE         BANGLADESH                     1      577    406    369     37
24 months   ki1017093b-PROVIDE         BANGLADESH                     2      577     92     85      7
24 months   ki1017093b-PROVIDE         BANGLADESH                     3      577     57     53      4
24 months   ki1017093b-PROVIDE         BANGLADESH                     4+     577     22     21      1
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1      514    217    200     17
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2      514    137    121     16
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3      514     78     78      0
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+     514     82     80      2
24 months   ki1113344-GMS-Nepal        NEPAL                          1      499     36     30      6
24 months   ki1113344-GMS-Nepal        NEPAL                          2      499    108     92     16
24 months   ki1113344-GMS-Nepal        NEPAL                          3      499    118    108     10
24 months   ki1113344-GMS-Nepal        NEPAL                          4+     499    237    215     22
24 months   ki1114097-CONTENT          PERU                           1      164     30     28      2
24 months   ki1114097-CONTENT          PERU                           2      164     39     38      1
24 months   ki1114097-CONTENT          PERU                           3      164     32     32      0
24 months   ki1114097-CONTENT          PERU                           4+     164     63     63      0
24 months   ki1135781-COHORTS          INDIA                          1     3749   2302   1670    632
24 months   ki1135781-COHORTS          INDIA                          2     3749   1221   1089    132
24 months   ki1135781-COHORTS          INDIA                          3     3749    150    140     10
24 months   ki1135781-COHORTS          INDIA                          4+    3749     76     73      3


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
* agecat: 12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 12 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 12 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 18 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 18 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 18 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 18 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 18 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 3 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 3 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 3 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 9 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 9 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 9 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 9 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 9 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 9 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA

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
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 3 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 3 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 3 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 9 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 9 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 9 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 9 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 9 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 9 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 12 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 12 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 18 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 18 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 18 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 18 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/492b1154-33ac-4ddb-b1be-ccb9f2942c47/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->


```
## Warning: Removed 3 rows containing missing values (geom_errorbar).
```

![](/tmp/492b1154-33ac-4ddb-b1be-ccb9f2942c47/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/492b1154-33ac-4ddb-b1be-ccb9f2942c47/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/492b1154-33ac-4ddb-b1be-ccb9f2942c47/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid               country   intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  --------  -------------------  ---------------  ----------  ----------  ----------
12 months   ki1113344-GMS-Nepal   NEPAL     1                    NA                0.1842105   0.0608455   0.3075756
12 months   ki1113344-GMS-Nepal   NEPAL     2                    NA                0.1260504   0.0663635   0.1857374
12 months   ki1113344-GMS-Nepal   NEPAL     3                    NA                0.0661765   0.0243595   0.1079934
12 months   ki1113344-GMS-Nepal   NEPAL     4+                   NA                0.0754717   0.0436395   0.1073039
18 months   ki1113344-GMS-Nepal   NEPAL     1                    NA                0.1621622   0.0432854   0.2810390
18 months   ki1113344-GMS-Nepal   NEPAL     2                    NA                0.1666667   0.0999266   0.2334067
18 months   ki1113344-GMS-Nepal   NEPAL     3                    NA                0.1470588   0.0874818   0.2066359
18 months   ki1113344-GMS-Nepal   NEPAL     4+                   NA                0.1517510   0.1078470   0.1956550
24 months   ki1113344-GMS-Nepal   NEPAL     1                    NA                0.1666667   0.0448053   0.2885281
24 months   ki1113344-GMS-Nepal   NEPAL     2                    NA                0.1481481   0.0810822   0.2152141
24 months   ki1113344-GMS-Nepal   NEPAL     3                    NA                0.0847458   0.0344452   0.1350463
24 months   ki1113344-GMS-Nepal   NEPAL     4+                   NA                0.0928270   0.0558449   0.1298091


### Parameter: E(Y)


agecat      studyid               country   intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  --------  -------------------  ---------------  ----------  ----------  ----------
12 months   ki1113344-GMS-Nepal   NEPAL     NA                   NA                0.0913978   0.0886208   0.0941749
18 months   ki1113344-GMS-Nepal   NEPAL     NA                   NA                0.1545455   0.1539338   0.1551571
24 months   ki1113344-GMS-Nepal   NEPAL     NA                   NA                0.1082164   0.1056795   0.1107533


### Parameter: RR


agecat      studyid               country   intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  --------------------  --------  -------------------  ---------------  ----------  ----------  ----------
12 months   ki1113344-GMS-Nepal   NEPAL     1                    1                 1.0000000   1.0000000   1.0000000
12 months   ki1113344-GMS-Nepal   NEPAL     2                    1                 0.6842737   0.3013188   1.5539375
12 months   ki1113344-GMS-Nepal   NEPAL     3                    1                 0.3592437   0.1430573   0.9021282
12 months   ki1113344-GMS-Nepal   NEPAL     4+                   1                 0.4097035   0.1856730   0.9040464
18 months   ki1113344-GMS-Nepal   NEPAL     1                    1                 1.0000000   1.0000000   1.0000000
18 months   ki1113344-GMS-Nepal   NEPAL     2                    1                 1.0277778   0.4457866   2.3695804
18 months   ki1113344-GMS-Nepal   NEPAL     3                    1                 0.9068627   0.3924550   2.0955271
18 months   ki1113344-GMS-Nepal   NEPAL     4+                   1                 0.9357977   0.4255148   2.0580183
24 months   ki1113344-GMS-Nepal   NEPAL     1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal   NEPAL     2                    1                 0.8888889   0.3761572   2.1005141
24 months   ki1113344-GMS-Nepal   NEPAL     3                    1                 0.5084746   0.1982758   1.3039733
24 months   ki1113344-GMS-Nepal   NEPAL     4+                   1                 0.5569620   0.2422169   1.2806980


### Parameter: PAR


agecat      studyid               country   intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  --------------------  --------  -------------------  ---------------  -----------  -----------  ----------
12 months   ki1113344-GMS-Nepal   NEPAL     1                    NA                -0.0928127   -0.2162090   0.0305836
18 months   ki1113344-GMS-Nepal   NEPAL     1                    NA                -0.0076167   -0.1264951   0.1112617
24 months   ki1113344-GMS-Nepal   NEPAL     1                    NA                -0.0584502   -0.1803380   0.0634376


### Parameter: PAF


agecat      studyid               country   intervention_level   baseline_level      estimate    ci_lower     ci_upper
----------  --------------------  --------  -------------------  ---------------  -----------  ----------  -----------
12 months   ki1113344-GMS-Nepal   NEPAL     1                    NA                -1.0154799   -2.940242   -0.0309416
18 months   ki1113344-GMS-Nepal   NEPAL     1                    NA                -0.0492846   -1.184076    0.4958976
24 months   ki1113344-GMS-Nepal   NEPAL     1                    NA                -0.5401235   -2.200819    0.2589459
