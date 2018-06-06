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
Birth       ki0047075b-MAL-ED          BANGLADESH                     1      234    144    116     28
Birth       ki0047075b-MAL-ED          BANGLADESH                     2      234     50     42      8
Birth       ki0047075b-MAL-ED          BANGLADESH                     3      234     28     26      2
Birth       ki0047075b-MAL-ED          BANGLADESH                     4+     234     12     12      0
Birth       ki0047075b-MAL-ED          BRAZIL                         1      174      3      3      0
Birth       ki0047075b-MAL-ED          BRAZIL                         2      174     19     18      1
Birth       ki0047075b-MAL-ED          BRAZIL                         3      174     50     43      7
Birth       ki0047075b-MAL-ED          BRAZIL                         4+     174    102     93      9
Birth       ki0047075b-MAL-ED          INDIA                          1      191     69     63      6
Birth       ki0047075b-MAL-ED          INDIA                          2      191     68     51     17
Birth       ki0047075b-MAL-ED          INDIA                          3      191     32     27      5
Birth       ki0047075b-MAL-ED          INDIA                          4+     191     22     20      2
Birth       ki0047075b-MAL-ED          NEPAL                          1      171     36     33      3
Birth       ki0047075b-MAL-ED          NEPAL                          2      171     21     20      1
Birth       ki0047075b-MAL-ED          NEPAL                          3      171     17     13      4
Birth       ki0047075b-MAL-ED          NEPAL                          4+     171     97     87     10
Birth       ki0047075b-MAL-ED          PERU                           1      259     17     16      1
Birth       ki0047075b-MAL-ED          PERU                           2      259     51     47      4
Birth       ki0047075b-MAL-ED          PERU                           3      259     59     54      5
Birth       ki0047075b-MAL-ED          PERU                           4+     259    132    111     21
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   1      218     14     14      0
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   2      218     21     19      2
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   3      218     23     21      2
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   4+     218    160    142     18
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1      118      6      6      0
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2      118     24     19      5
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3      118     33     29      4
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+     118     55     48      7
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          1       90     38     32      6
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          2       90     28     22      6
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          3       90     19     16      3
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          4+      90      5      4      1
Birth       ki1000108-IRC              INDIA                          1      386    175    156     19
Birth       ki1000108-IRC              INDIA                          2      386    161    141     20
Birth       ki1000108-IRC              INDIA                          3      386     33     28      5
Birth       ki1000108-IRC              INDIA                          4+     386     17     16      1
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     1       27     17     14      3
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     2       27      7      6      1
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     3       27      0      0      0
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     4+      27      3      2      1
Birth       ki1114097-CONTENT          PERU                           1        2      0      0      0
Birth       ki1114097-CONTENT          PERU                           2        2      1      1      0
Birth       ki1114097-CONTENT          PERU                           3        2      0      0      0
Birth       ki1114097-CONTENT          PERU                           4+       2      1      1      0
Birth       ki1135781-COHORTS          INDIA                          1     4769   3125   2705    420
Birth       ki1135781-COHORTS          INDIA                          2     4769   1385   1263    122
Birth       ki1135781-COHORTS          INDIA                          3     4769    167    152     15
Birth       ki1135781-COHORTS          INDIA                          4+    4769     92     84      8
3 months    ki0047075b-MAL-ED          BANGLADESH                     1      241    152    125     27
3 months    ki0047075b-MAL-ED          BANGLADESH                     2      241     50     39     11
3 months    ki0047075b-MAL-ED          BANGLADESH                     3      241     28     26      2
3 months    ki0047075b-MAL-ED          BANGLADESH                     4+     241     11     10      1
3 months    ki0047075b-MAL-ED          BRAZIL                         1      210      4      4      0
3 months    ki0047075b-MAL-ED          BRAZIL                         2      210     20     18      2
3 months    ki0047075b-MAL-ED          BRAZIL                         3      210     59     55      4
3 months    ki0047075b-MAL-ED          BRAZIL                         4+     210    127    119      8
3 months    ki0047075b-MAL-ED          INDIA                          1      234     84     70     14
3 months    ki0047075b-MAL-ED          INDIA                          2      234     78     64     14
3 months    ki0047075b-MAL-ED          INDIA                          3      234     47     43      4
3 months    ki0047075b-MAL-ED          INDIA                          4+     234     25     23      2
3 months    ki0047075b-MAL-ED          NEPAL                          1      234     51     45      6
3 months    ki0047075b-MAL-ED          NEPAL                          2      234     31     30      1
3 months    ki0047075b-MAL-ED          NEPAL                          3      234     22     22      0
3 months    ki0047075b-MAL-ED          NEPAL                          4+     234    130    124      6
3 months    ki0047075b-MAL-ED          PERU                           1      272     19      9     10
3 months    ki0047075b-MAL-ED          PERU                           2      272     52     38     14
3 months    ki0047075b-MAL-ED          PERU                           3      272     62     48     14
3 months    ki0047075b-MAL-ED          PERU                           4+     272    139    109     30
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1      257     14     10      4
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2      257     22     19      3
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3      257     25     22      3
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+     257    196    157     39
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1      249     13     10      3
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2      249     63     51     12
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3      249     66     60      6
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+     249    107     86     21
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          1      362    195    149     46
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          2      362    102     73     29
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          3      362     51     38     13
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+     362     14     12      2
3 months    ki1000108-IRC              INDIA                          1      405    184    147     37
3 months    ki1000108-IRC              INDIA                          2      405    168    125     43
3 months    ki1000108-IRC              INDIA                          3      405     36     31      5
3 months    ki1000108-IRC              INDIA                          4+     405     17     11      6
3 months    ki1017093b-PROVIDE         BANGLADESH                     1      645    463    402     61
3 months    ki1017093b-PROVIDE         BANGLADESH                     2      645    101     94      7
3 months    ki1017093b-PROVIDE         BANGLADESH                     3      645     59     53      6
3 months    ki1017093b-PROVIDE         BANGLADESH                     4+     645     22     18      4
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     1      728    349    271     78
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     2      728    186    142     44
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     3      728    102     85     17
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+     728     91     74     17
3 months    ki1113344-GMS-Nepal        NEPAL                          1      571     40     32      8
3 months    ki1113344-GMS-Nepal        NEPAL                          2      571    121    106     15
3 months    ki1113344-GMS-Nepal        NEPAL                          3      571    140    113     27
3 months    ki1113344-GMS-Nepal        NEPAL                          4+     571    270    236     34
3 months    ki1114097-CONTENT          PERU                           1      215     44     39      5
3 months    ki1114097-CONTENT          PERU                           2      215     54     50      4
3 months    ki1114097-CONTENT          PERU                           3      215     39     34      5
3 months    ki1114097-CONTENT          PERU                           4+     215     78     72      6
3 months    ki1135781-COHORTS          INDIA                          1     5077   3327   2708    619
3 months    ki1135781-COHORTS          INDIA                          2     5077   1467   1320    147
3 months    ki1135781-COHORTS          INDIA                          3     5077    185    169     16
3 months    ki1135781-COHORTS          INDIA                          4+    5077     98     93      5
6 months    ki0047075b-MAL-ED          BANGLADESH                     1      240    150    120     30
6 months    ki0047075b-MAL-ED          BANGLADESH                     2      240     50     40     10
6 months    ki0047075b-MAL-ED          BANGLADESH                     3      240     28     24      4
6 months    ki0047075b-MAL-ED          BANGLADESH                     4+     240     12     11      1
6 months    ki0047075b-MAL-ED          BRAZIL                         1      209      4      4      0
6 months    ki0047075b-MAL-ED          BRAZIL                         2      209     20     20      0
6 months    ki0047075b-MAL-ED          BRAZIL                         3      209     59     58      1
6 months    ki0047075b-MAL-ED          BRAZIL                         4+     209    126    121      5
6 months    ki0047075b-MAL-ED          INDIA                          1      235     84     64     20
6 months    ki0047075b-MAL-ED          INDIA                          2      235     78     59     19
6 months    ki0047075b-MAL-ED          INDIA                          3      235     48     43      5
6 months    ki0047075b-MAL-ED          INDIA                          4+     235     25     24      1
6 months    ki0047075b-MAL-ED          NEPAL                          1      236     52     49      3
6 months    ki0047075b-MAL-ED          NEPAL                          2      236     31     31      0
6 months    ki0047075b-MAL-ED          NEPAL                          3      236     22     21      1
6 months    ki0047075b-MAL-ED          NEPAL                          4+     236    131    123      8
6 months    ki0047075b-MAL-ED          PERU                           1      270     19     12      7
6 months    ki0047075b-MAL-ED          PERU                           2      270     50     41      9
6 months    ki0047075b-MAL-ED          PERU                           3      270     62     54      8
6 months    ki0047075b-MAL-ED          PERU                           4+     270    139    103     36
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1      249     14     10      4
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2      249     21     19      2
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3      249     23     20      3
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+     249    191    151     40
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1      247     13      9      4
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2      247     62     42     20
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3      247     64     54     10
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+     247    108     84     24
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1      369    198    143     55
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2      369    106     70     36
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3      369     51     35     16
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+     369     14     10      4
6 months    ki1000108-IRC              INDIA                          1      405    183    140     43
6 months    ki1000108-IRC              INDIA                          2      405    170    123     47
6 months    ki1000108-IRC              INDIA                          3      405     35     29      6
6 months    ki1000108-IRC              INDIA                          4+     405     17     13      4
6 months    ki1017093b-PROVIDE         BANGLADESH                     1      583    415    346     69
6 months    ki1017093b-PROVIDE         BANGLADESH                     2      583     91     77     14
6 months    ki1017093b-PROVIDE         BANGLADESH                     3      583     56     49      7
6 months    ki1017093b-PROVIDE         BANGLADESH                     4+     583     21     17      4
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1      715    339    261     78
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2      715    184    141     43
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     3      715    101     87     14
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+     715     91     76     15
6 months    ki1113344-GMS-Nepal        NEPAL                          1      563     40     28     12
6 months    ki1113344-GMS-Nepal        NEPAL                          2      563    115     90     25
6 months    ki1113344-GMS-Nepal        NEPAL                          3      563    141    111     30
6 months    ki1113344-GMS-Nepal        NEPAL                          4+     563    267    215     52
6 months    ki1114097-CONTENT          PERU                           1      215     44     36      8
6 months    ki1114097-CONTENT          PERU                           2      215     54     50      4
6 months    ki1114097-CONTENT          PERU                           3      215     39     36      3
6 months    ki1114097-CONTENT          PERU                           4+     215     78     74      4
6 months    ki1135781-COHORTS          INDIA                          1     4962   3213   2448    765
6 months    ki1135781-COHORTS          INDIA                          2     4962   1474   1294    180
6 months    ki1135781-COHORTS          INDIA                          3     4962    182    163     19
6 months    ki1135781-COHORTS          INDIA                          4+    4962     93     87      6
9 months    ki0047075b-MAL-ED          BANGLADESH                     1      234    150    107     43
9 months    ki0047075b-MAL-ED          BANGLADESH                     2      234     46     38      8
9 months    ki0047075b-MAL-ED          BANGLADESH                     3      234     27     21      6
9 months    ki0047075b-MAL-ED          BANGLADESH                     4+     234     11     10      1
9 months    ki0047075b-MAL-ED          BRAZIL                         1      199      3      3      0
9 months    ki0047075b-MAL-ED          BRAZIL                         2      199     18     18      0
9 months    ki0047075b-MAL-ED          BRAZIL                         3      199     59     58      1
9 months    ki0047075b-MAL-ED          BRAZIL                         4+     199    119    116      3
9 months    ki0047075b-MAL-ED          INDIA                          1      232     83     66     17
9 months    ki0047075b-MAL-ED          INDIA                          2      232     76     52     24
9 months    ki0047075b-MAL-ED          INDIA                          3      232     48     39      9
9 months    ki0047075b-MAL-ED          INDIA                          4+     232     25     22      3
9 months    ki0047075b-MAL-ED          NEPAL                          1      231     49     47      2
9 months    ki0047075b-MAL-ED          NEPAL                          2      231     31     28      3
9 months    ki0047075b-MAL-ED          NEPAL                          3      231     22     19      3
9 months    ki0047075b-MAL-ED          NEPAL                          4+     231    129    119     10
9 months    ki0047075b-MAL-ED          PERU                           1      256     19     13      6
9 months    ki0047075b-MAL-ED          PERU                           2      256     47     36     11
9 months    ki0047075b-MAL-ED          PERU                           3      256     55     44     11
9 months    ki0047075b-MAL-ED          PERU                           4+     256    135    100     35
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1      248     14      8      6
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2      248     19     16      3
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3      248     24     18      6
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+     248    191    153     38
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1      238     11      7      4
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2      238     58     35     23
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3      238     64     41     23
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+     238    105     65     40
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          1      366    199    125     74
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          2      366    103     65     38
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          3      366     50     33     17
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+     366     14      8      6
9 months    ki1000108-IRC              INDIA                          1      405    183    131     52
9 months    ki1000108-IRC              INDIA                          2      405    170    123     47
9 months    ki1000108-IRC              INDIA                          3      405     35     28      7
9 months    ki1000108-IRC              INDIA                          4+     405     17     12      5
9 months    ki1017093b-PROVIDE         BANGLADESH                     1      605    429    332     97
9 months    ki1017093b-PROVIDE         BANGLADESH                     2      605     97     79     18
9 months    ki1017093b-PROVIDE         BANGLADESH                     3      605     57     46     11
9 months    ki1017093b-PROVIDE         BANGLADESH                     4+     605     22     19      3
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     1      706    332    247     85
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     2      706    184    137     47
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     3      706    101     84     17
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+     706     89     74     15
9 months    ki1113344-GMS-Nepal        NEPAL                          1      551     38     26     12
9 months    ki1113344-GMS-Nepal        NEPAL                          2      551    117     82     35
9 months    ki1113344-GMS-Nepal        NEPAL                          3      551    136     98     38
9 months    ki1113344-GMS-Nepal        NEPAL                          4+     551    260    190     70
9 months    ki1114097-CONTENT          PERU                           1      214     44     35      9
9 months    ki1114097-CONTENT          PERU                           2      214     54     48      6
9 months    ki1114097-CONTENT          PERU                           3      214     38     36      2
9 months    ki1114097-CONTENT          PERU                           4+     214     78     73      5
9 months    ki1135781-COHORTS          INDIA                          1     4337   2793   1873    920
9 months    ki1135781-COHORTS          INDIA                          2     4337   1306   1079    227
9 months    ki1135781-COHORTS          INDIA                          3     4337    156    124     32
9 months    ki1135781-COHORTS          INDIA                          4+    4337     82     77      5
12 months   ki0047075b-MAL-ED          BANGLADESH                     1      233    149     95     54
12 months   ki0047075b-MAL-ED          BANGLADESH                     2      233     46     34     12
12 months   ki0047075b-MAL-ED          BANGLADESH                     3      233     27     21      6
12 months   ki0047075b-MAL-ED          BANGLADESH                     4+     233     11      8      3
12 months   ki0047075b-MAL-ED          BRAZIL                         1      195      2      2      0
12 months   ki0047075b-MAL-ED          BRAZIL                         2      195     18     18      0
12 months   ki0047075b-MAL-ED          BRAZIL                         3      195     57     56      1
12 months   ki0047075b-MAL-ED          BRAZIL                         4+     195    118    113      5
12 months   ki0047075b-MAL-ED          INDIA                          1      228     82     64     18
12 months   ki0047075b-MAL-ED          INDIA                          2      228     74     39     35
12 months   ki0047075b-MAL-ED          INDIA                          3      228     47     33     14
12 months   ki0047075b-MAL-ED          INDIA                          4+     228     25     17      8
12 months   ki0047075b-MAL-ED          NEPAL                          1      231     49     43      6
12 months   ki0047075b-MAL-ED          NEPAL                          2      231     31     27      4
12 months   ki0047075b-MAL-ED          NEPAL                          3      231     22     19      3
12 months   ki0047075b-MAL-ED          NEPAL                          4+     231    129    116     13
12 months   ki0047075b-MAL-ED          PERU                           1      246     18     13      5
12 months   ki0047075b-MAL-ED          PERU                           2      246     46     33     13
12 months   ki0047075b-MAL-ED          PERU                           3      246     53     41     12
12 months   ki0047075b-MAL-ED          PERU                           4+     246    129     90     39
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1      251     14      8      6
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2      251     21     19      2
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3      251     24     17      7
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+     251    192    148     44
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1      231     11      6      5
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2      231     55     22     33
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3      231     60     28     32
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+     231    105     50     55
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          1      368    200     99    101
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          2      368    105     48     57
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          3      368     49     30     19
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+     368     14      8      6
12 months   ki1000108-IRC              INDIA                          1      404    184    128     56
12 months   ki1000108-IRC              INDIA                          2      404    169    119     50
12 months   ki1000108-IRC              INDIA                          3      404     34     27      7
12 months   ki1000108-IRC              INDIA                          4+     404     17     11      6
12 months   ki1017093b-PROVIDE         BANGLADESH                     1      600    425    307    118
12 months   ki1017093b-PROVIDE         BANGLADESH                     2      600     96     72     24
12 months   ki1017093b-PROVIDE         BANGLADESH                     3      600     57     45     12
12 months   ki1017093b-PROVIDE         BANGLADESH                     4+     600     22     19      3
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     1      706    331    242     89
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     2      706    183    131     52
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     3      706    102     90     12
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+     706     90     72     18
12 months   ki1113344-GMS-Nepal        NEPAL                          1      558     38     22     16
12 months   ki1113344-GMS-Nepal        NEPAL                          2      558    119     70     49
12 months   ki1113344-GMS-Nepal        NEPAL                          3      558    136     98     38
12 months   ki1113344-GMS-Nepal        NEPAL                          4+     558    265    177     88
12 months   ki1114097-CONTENT          PERU                           1      215     44     34     10
12 months   ki1114097-CONTENT          PERU                           2      215     54     47      7
12 months   ki1114097-CONTENT          PERU                           3      215     39     37      2
12 months   ki1114097-CONTENT          PERU                           4+     215     78     71      7
12 months   ki1135781-COHORTS          INDIA                          1     3874   2451   1367   1084
12 months   ki1135781-COHORTS          INDIA                          2     3874   1202    916    286
12 months   ki1135781-COHORTS          INDIA                          3     3874    143    112     31
12 months   ki1135781-COHORTS          INDIA                          4+    3874     78     72      6
18 months   ki0047075b-MAL-ED          BANGLADESH                     1      221    140     69     71
18 months   ki0047075b-MAL-ED          BANGLADESH                     2      221     43     21     22
18 months   ki0047075b-MAL-ED          BANGLADESH                     3      221     27     18      9
18 months   ki0047075b-MAL-ED          BANGLADESH                     4+     221     11      8      3
18 months   ki0047075b-MAL-ED          BRAZIL                         1      180      1      1      0
18 months   ki0047075b-MAL-ED          BRAZIL                         2      180     17     17      0
18 months   ki0047075b-MAL-ED          BRAZIL                         3      180     51     49      2
18 months   ki0047075b-MAL-ED          BRAZIL                         4+     180    111    106      5
18 months   ki0047075b-MAL-ED          INDIA                          1      228     82     55     27
18 months   ki0047075b-MAL-ED          INDIA                          2      228     74     28     46
18 months   ki0047075b-MAL-ED          INDIA                          3      228     47     27     20
18 months   ki0047075b-MAL-ED          INDIA                          4+     228     25     14     11
18 months   ki0047075b-MAL-ED          NEPAL                          1      229     49     39     10
18 months   ki0047075b-MAL-ED          NEPAL                          2      229     31     26      5
18 months   ki0047075b-MAL-ED          NEPAL                          3      229     22     16      6
18 months   ki0047075b-MAL-ED          NEPAL                          4+     229    127    103     24
18 months   ki0047075b-MAL-ED          PERU                           1      222     17      6     11
18 months   ki0047075b-MAL-ED          PERU                           2      222     39     22     17
18 months   ki0047075b-MAL-ED          PERU                           3      222     48     30     18
18 months   ki0047075b-MAL-ED          PERU                           4+     222    118     65     53
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1      241     13      7      6
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2      241     20     15      5
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3      241     23     13     10
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+     241    185    124     61
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1      225     10      3      7
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2      225     51      9     42
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3      225     61     22     39
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+     225    103     35     68
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          1      369    200     56    144
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          2      369    105     33     72
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          3      369     51     21     30
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+     369     13      5      8
18 months   ki1000108-IRC              INDIA                          1      403    182    115     67
18 months   ki1000108-IRC              INDIA                          2      403    169    110     59
18 months   ki1000108-IRC              INDIA                          3      403     35     26      9
18 months   ki1000108-IRC              INDIA                          4+     403     17      8      9
18 months   ki1017093b-PROVIDE         BANGLADESH                     1      552    382    227    155
18 months   ki1017093b-PROVIDE         BANGLADESH                     2      552     91     61     30
18 months   ki1017093b-PROVIDE         BANGLADESH                     3      552     57     42     15
18 months   ki1017093b-PROVIDE         BANGLADESH                     4+     552     22     16      6
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     1      634    287    186    101
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     2      634    169    116     53
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     3      634     92     73     19
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+     634     86     68     18
18 months   ki1113344-GMS-Nepal        NEPAL                          1      550     37     14     23
18 months   ki1113344-GMS-Nepal        NEPAL                          2      550    120     52     68
18 months   ki1113344-GMS-Nepal        NEPAL                          3      550    136     70     66
18 months   ki1113344-GMS-Nepal        NEPAL                          4+     550    257    122    135
18 months   ki1114097-CONTENT          PERU                           1      200     38     29      9
18 months   ki1114097-CONTENT          PERU                           2      200     51     43      8
18 months   ki1114097-CONTENT          PERU                           3      200     38     35      3
18 months   ki1114097-CONTENT          PERU                           4+     200     73     66      7
24 months   ki0047075b-MAL-ED          BANGLADESH                     1      212    134     70     64
24 months   ki0047075b-MAL-ED          BANGLADESH                     2      212     40     21     19
24 months   ki0047075b-MAL-ED          BANGLADESH                     3      212     27     16     11
24 months   ki0047075b-MAL-ED          BANGLADESH                     4+     212     11      7      4
24 months   ki0047075b-MAL-ED          BRAZIL                         1      169      0      0      0
24 months   ki0047075b-MAL-ED          BRAZIL                         2      169     16     16      0
24 months   ki0047075b-MAL-ED          BRAZIL                         3      169     49     47      2
24 months   ki0047075b-MAL-ED          BRAZIL                         4+     169    104    100      4
24 months   ki0047075b-MAL-ED          INDIA                          1      227     82     56     26
24 months   ki0047075b-MAL-ED          INDIA                          2      227     74     33     41
24 months   ki0047075b-MAL-ED          INDIA                          3      227     46     29     17
24 months   ki0047075b-MAL-ED          INDIA                          4+     227     25     14     11
24 months   ki0047075b-MAL-ED          NEPAL                          1      228     48     38     10
24 months   ki0047075b-MAL-ED          NEPAL                          2      228     31     25      6
24 months   ki0047075b-MAL-ED          NEPAL                          3      228     22     15      7
24 months   ki0047075b-MAL-ED          NEPAL                          4+     228    127    101     26
24 months   ki0047075b-MAL-ED          PERU                           1      201     16      7      9
24 months   ki0047075b-MAL-ED          PERU                           2      201     32     20     12
24 months   ki0047075b-MAL-ED          PERU                           3      201     43     29     14
24 months   ki0047075b-MAL-ED          PERU                           4+     201    110     71     39
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1      238     13      8      5
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2      238     19     14      5
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3      238     23     12     11
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+     238    183    120     63
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1      214      9      4      5
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2      214     50      7     43
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3      214     57     21     36
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+     214     98     29     69
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1      372    201     46    155
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2      372    106     35     71
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3      372     51     19     32
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+     372     14      6      8
24 months   ki1000108-IRC              INDIA                          1      407    184    102     82
24 months   ki1000108-IRC              INDIA                          2      407    170    109     61
24 months   ki1000108-IRC              INDIA                          3      407     36     18     18
24 months   ki1000108-IRC              INDIA                          4+     407     17      9      8
24 months   ki1017093b-PROVIDE         BANGLADESH                     1      577    406    262    144
24 months   ki1017093b-PROVIDE         BANGLADESH                     2      577     92     65     27
24 months   ki1017093b-PROVIDE         BANGLADESH                     3      577     57     43     14
24 months   ki1017093b-PROVIDE         BANGLADESH                     4+     577     22     17      5
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1      514    217    150     67
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2      514    137     94     43
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3      514     78     69      9
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+     514     82     69     13
24 months   ki1113344-GMS-Nepal        NEPAL                          1      499     36     16     20
24 months   ki1113344-GMS-Nepal        NEPAL                          2      499    108     56     52
24 months   ki1113344-GMS-Nepal        NEPAL                          3      499    118     65     53
24 months   ki1113344-GMS-Nepal        NEPAL                          4+     499    237    139     98
24 months   ki1114097-CONTENT          PERU                           1      164     30     23      7
24 months   ki1114097-CONTENT          PERU                           2      164     39     32      7
24 months   ki1114097-CONTENT          PERU                           3      164     32     30      2
24 months   ki1114097-CONTENT          PERU                           4+     164     63     58      5
24 months   ki1135781-COHORTS          INDIA                          1     3749   2302    943   1359
24 months   ki1135781-COHORTS          INDIA                          2     3749   1221    796    425
24 months   ki1135781-COHORTS          INDIA                          3     3749    150     97     53
24 months   ki1135781-COHORTS          INDIA                          4+    3749     76     63     13


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
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 9 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/5bf079dc-a984-44fa-88d9-5345fed5d672/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->


```
## Warning: Removed 43 rows containing missing values (geom_errorbar).
```

![](/tmp/5bf079dc-a984-44fa-88d9-5345fed5d672/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/5bf079dc-a984-44fa-88d9-5345fed5d672/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/5bf079dc-a984-44fa-88d9-5345fed5d672/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1135781-COHORTS          INDIA                          1                    NA                0.1344000   0.1224401   0.1463599
Birth       ki1135781-COHORTS          INDIA                          2                    NA                0.0880866   0.0731587   0.1030146
Birth       ki1135781-COHORTS          INDIA                          3                    NA                0.0898204   0.0464507   0.1331901
Birth       ki1135781-COHORTS          INDIA                          4+                   NA                0.0869565   0.0293732   0.1445398
3 months    ki0047075b-MAL-ED          PERU                           1                    NA                0.5263158   0.3013903   0.7512413
3 months    ki0047075b-MAL-ED          PERU                           2                    NA                0.2692308   0.1484497   0.3900118
3 months    ki0047075b-MAL-ED          PERU                           3                    NA                0.2258065   0.1215399   0.3300730
3 months    ki0047075b-MAL-ED          PERU                           4+                   NA                0.2158273   0.1473101   0.2843445
3 months    ki1000108-IRC              INDIA                          1                    NA                0.2010870   0.1431017   0.2590722
3 months    ki1000108-IRC              INDIA                          2                    NA                0.2559524   0.1898815   0.3220233
3 months    ki1000108-IRC              INDIA                          3                    NA                0.1388889   0.0257799   0.2519979
3 months    ki1000108-IRC              INDIA                          4+                   NA                0.3529412   0.1254925   0.5803899
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.2234957   0.1797596   0.2672318
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     2                    NA                0.2365591   0.1754442   0.2976741
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     3                    NA                0.1666667   0.0942931   0.2390403
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                0.1868132   0.1066777   0.2669487
3 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.2000000   0.0759323   0.3240677
3 months    ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.1239669   0.0651978   0.1827361
3 months    ki1113344-GMS-Nepal        NEPAL                          3                    NA                0.1928571   0.1274451   0.2582692
3 months    ki1113344-GMS-Nepal        NEPAL                          4+                   NA                0.1259259   0.0863183   0.1655335
3 months    ki1135781-COHORTS          INDIA                          1                    NA                0.1860535   0.1728289   0.1992781
3 months    ki1135781-COHORTS          INDIA                          2                    NA                0.1002045   0.0848374   0.1155716
3 months    ki1135781-COHORTS          INDIA                          3                    NA                0.0864865   0.0459789   0.1269941
3 months    ki1135781-COHORTS          INDIA                          4+                   NA                0.0510204   0.0074513   0.0945895
6 months    ki0047075b-MAL-ED          PERU                           1                    NA                0.3684211   0.1511194   0.5857227
6 months    ki0047075b-MAL-ED          PERU                           2                    NA                0.1800000   0.0733129   0.2866871
6 months    ki0047075b-MAL-ED          PERU                           3                    NA                0.1290323   0.0454319   0.2126326
6 months    ki0047075b-MAL-ED          PERU                           4+                   NA                0.2589928   0.1860300   0.3319556
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.2300885   0.1852532   0.2749238
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2                    NA                0.2336957   0.1725073   0.2948840
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     3                    NA                0.1386139   0.0711776   0.2060501
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                0.1648352   0.0885496   0.2411207
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.3000000   0.1578608   0.4421392
6 months    ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.2173913   0.1419379   0.2928447
6 months    ki1113344-GMS-Nepal        NEPAL                          3                    NA                0.2127660   0.1451534   0.2803785
6 months    ki1113344-GMS-Nepal        NEPAL                          4+                   NA                0.1947566   0.1472134   0.2422997
6 months    ki1135781-COHORTS          INDIA                          1                    NA                0.2380952   0.2233666   0.2528239
6 months    ki1135781-COHORTS          INDIA                          2                    NA                0.1221167   0.1054000   0.1388333
6 months    ki1135781-COHORTS          INDIA                          3                    NA                0.1043956   0.0599677   0.1488235
6 months    ki1135781-COHORTS          INDIA                          4+                   NA                0.0645161   0.0145814   0.1144509
9 months    ki0047075b-MAL-ED          PERU                           1                    NA                0.3157895   0.1063711   0.5252079
9 months    ki0047075b-MAL-ED          PERU                           2                    NA                0.2340426   0.1127599   0.3553252
9 months    ki0047075b-MAL-ED          PERU                           3                    NA                0.2000000   0.0940803   0.3059197
9 months    ki0047075b-MAL-ED          PERU                           4+                   NA                0.2592593   0.1851911   0.3333274
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.3718593   0.3046184   0.4391002
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                    NA                0.3689320   0.2756206   0.4622435
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                    NA                0.3400000   0.2085173   0.4714827
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                0.4285714   0.1689917   0.6881512
9 months    ki1000108-IRC              INDIA                          1                    NA                0.2841530   0.2187277   0.3495783
9 months    ki1000108-IRC              INDIA                          2                    NA                0.2764706   0.2091554   0.3437858
9 months    ki1000108-IRC              INDIA                          3                    NA                0.2000000   0.0673183   0.3326817
9 months    ki1000108-IRC              INDIA                          4+                   NA                0.2941176   0.0772538   0.5109815
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.2560241   0.2090448   0.3030034
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     2                    NA                0.2554348   0.1923770   0.3184925
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     3                    NA                0.1683168   0.0952975   0.2413362
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                0.1685393   0.0907120   0.2463667
9 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.3157895   0.1678635   0.4637155
9 months    ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.2991453   0.2161020   0.3821886
9 months    ki1113344-GMS-Nepal        NEPAL                          3                    NA                0.2794118   0.2039305   0.3548930
9 months    ki1113344-GMS-Nepal        NEPAL                          4+                   NA                0.2692308   0.2152662   0.3231953
9 months    ki1135781-COHORTS          INDIA                          1                    NA                0.3293949   0.3119626   0.3468272
9 months    ki1135781-COHORTS          INDIA                          2                    NA                0.1738132   0.1532587   0.1943677
9 months    ki1135781-COHORTS          INDIA                          3                    NA                0.2051282   0.1417563   0.2685002
9 months    ki1135781-COHORTS          INDIA                          4+                   NA                0.0609756   0.0091782   0.1127730
12 months   ki0047075b-MAL-ED          INDIA                          1                    NA                0.2195122   0.1297263   0.3092981
12 months   ki0047075b-MAL-ED          INDIA                          2                    NA                0.4729730   0.3589686   0.5869773
12 months   ki0047075b-MAL-ED          INDIA                          3                    NA                0.2978723   0.1668405   0.4289042
12 months   ki0047075b-MAL-ED          INDIA                          4+                   NA                0.3200000   0.1367424   0.5032576
12 months   ki0047075b-MAL-ED          PERU                           1                    NA                0.2777778   0.0704390   0.4851166
12 months   ki0047075b-MAL-ED          PERU                           2                    NA                0.2826087   0.1522246   0.4129928
12 months   ki0047075b-MAL-ED          PERU                           3                    NA                0.2264151   0.1135132   0.3393170
12 months   ki0047075b-MAL-ED          PERU                           4+                   NA                0.3023256   0.2229108   0.3817404
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.4545455   0.1596543   0.7494366
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                0.6000000   0.4702479   0.7297521
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                0.5333333   0.4068255   0.6598411
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                0.5238095   0.4280741   0.6195449
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.5050000   0.4356139   0.5743861
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    NA                0.5428571   0.4474429   0.6382714
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    NA                0.3877551   0.2511452   0.5243650
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                0.4285714   0.1689936   0.6881492
12 months   ki1000108-IRC              INDIA                          1                    NA                0.3043478   0.2377809   0.3709148
12 months   ki1000108-IRC              INDIA                          2                    NA                0.2958580   0.2269587   0.3647573
12 months   ki1000108-IRC              INDIA                          3                    NA                0.2058824   0.0698010   0.3419638
12 months   ki1000108-IRC              INDIA                          4+                   NA                0.3529412   0.1254918   0.5803906
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.2688822   0.2210834   0.3166809
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                    NA                0.2841530   0.2187622   0.3495438
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                    NA                0.1176471   0.0550769   0.1802173
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                0.2000000   0.1173021   0.2826979
12 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.4210526   0.2639319   0.5781734
12 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.4117647   0.3232604   0.5002690
12 months   ki1113344-GMS-Nepal        NEPAL                          3                    NA                0.2794118   0.2039314   0.3548921
12 months   ki1113344-GMS-Nepal        NEPAL                          4+                   NA                0.3320755   0.2753214   0.3888295
12 months   ki1135781-COHORTS          INDIA                          1                    NA                0.4422685   0.4226037   0.4619332
12 months   ki1135781-COHORTS          INDIA                          2                    NA                0.2379368   0.2138611   0.2620124
12 months   ki1135781-COHORTS          INDIA                          3                    NA                0.2167832   0.1492387   0.2843277
12 months   ki1135781-COHORTS          INDIA                          4+                   NA                0.0769232   0.0177801   0.1360663
18 months   ki0047075b-MAL-ED          INDIA                          1                    NA                0.3292683   0.2273282   0.4312084
18 months   ki0047075b-MAL-ED          INDIA                          2                    NA                0.6216216   0.5108795   0.7323638
18 months   ki0047075b-MAL-ED          INDIA                          3                    NA                0.4255319   0.2838701   0.5671937
18 months   ki0047075b-MAL-ED          INDIA                          4+                   NA                0.4400000   0.2449918   0.6350082
18 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                0.2040816   0.0909884   0.3171749
18 months   ki0047075b-MAL-ED          NEPAL                          2                    NA                0.1612903   0.0315343   0.2910464
18 months   ki0047075b-MAL-ED          NEPAL                          3                    NA                0.2727273   0.0862182   0.4592364
18 months   ki0047075b-MAL-ED          NEPAL                          4+                   NA                0.1889764   0.1207398   0.2572129
18 months   ki0047075b-MAL-ED          PERU                           1                    NA                0.6470588   0.4193777   0.8747399
18 months   ki0047075b-MAL-ED          PERU                           2                    NA                0.4358974   0.2799180   0.5918769
18 months   ki0047075b-MAL-ED          PERU                           3                    NA                0.3750000   0.2377338   0.5122662
18 months   ki0047075b-MAL-ED          PERU                           4+                   NA                0.4491525   0.3592028   0.5391023
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.4615385   0.1899817   0.7330952
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                0.2500000   0.0598324   0.4401676
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                0.4347826   0.2317663   0.6377989
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                0.3297297   0.2618455   0.3976140
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.7200000   0.6576886   0.7823114
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    NA                0.6857143   0.5967990   0.7746296
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    NA                0.5882353   0.4529806   0.7234900
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                0.6153846   0.3505637   0.8802056
18 months   ki1000108-IRC              INDIA                          1                    NA                0.3681319   0.2979755   0.4382882
18 months   ki1000108-IRC              INDIA                          2                    NA                0.3491124   0.2771543   0.4210706
18 months   ki1000108-IRC              INDIA                          3                    NA                0.2571429   0.1121677   0.4021180
18 months   ki1000108-IRC              INDIA                          4+                   NA                0.5294118   0.2918479   0.7669757
18 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.4057592   0.3564729   0.4550454
18 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.3296703   0.2329973   0.4263433
18 months   ki1017093b-PROVIDE         BANGLADESH                     3                    NA                0.2631579   0.1487385   0.3775773
18 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                0.2727273   0.0864571   0.4589975
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.3519164   0.2966215   0.4072113
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                    NA                0.3136095   0.2436047   0.3836143
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                    NA                0.2065217   0.1237376   0.2893059
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                0.2093023   0.1232557   0.2953490
18 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.6216216   0.4652101   0.7780331
18 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.5666667   0.4779250   0.6554083
18 months   ki1113344-GMS-Nepal        NEPAL                          3                    NA                0.4852941   0.4012212   0.5693670
18 months   ki1113344-GMS-Nepal        NEPAL                          4+                   NA                0.5252918   0.4641849   0.5863987
24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                0.3170732   0.2161324   0.4180140
24 months   ki0047075b-MAL-ED          INDIA                          2                    NA                0.5540541   0.4405509   0.6675573
24 months   ki0047075b-MAL-ED          INDIA                          3                    NA                0.3695652   0.2297696   0.5093608
24 months   ki0047075b-MAL-ED          INDIA                          4+                   NA                0.4400000   0.2449899   0.6350101
24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                0.2083333   0.0931917   0.3234750
24 months   ki0047075b-MAL-ED          NEPAL                          2                    NA                0.1935484   0.0541667   0.3329301
24 months   ki0047075b-MAL-ED          NEPAL                          3                    NA                0.3181818   0.1231241   0.5132396
24 months   ki0047075b-MAL-ED          NEPAL                          4+                   NA                0.2047244   0.1343938   0.2750550
24 months   ki0047075b-MAL-ED          PERU                           1                    NA                0.5625000   0.3188191   0.8061809
24 months   ki0047075b-MAL-ED          PERU                           2                    NA                0.3750000   0.2068442   0.5431558
24 months   ki0047075b-MAL-ED          PERU                           3                    NA                0.3255814   0.1851735   0.4659893
24 months   ki0047075b-MAL-ED          PERU                           4+                   NA                0.3545455   0.2649257   0.4441652
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.3846154   0.1195962   0.6496346
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                0.2631579   0.0647399   0.4615759
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                0.4782609   0.2736835   0.6828382
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                0.3442623   0.2752786   0.4132460
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.7711443   0.7129898   0.8292988
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    NA                0.6698113   0.5801641   0.7594586
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    NA                0.6274510   0.4945803   0.7603217
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                0.5714286   0.3118546   0.8310026
24 months   ki1000108-IRC              INDIA                          1                    NA                0.4456522   0.3737466   0.5175577
24 months   ki1000108-IRC              INDIA                          2                    NA                0.3588235   0.2866319   0.4310152
24 months   ki1000108-IRC              INDIA                          3                    NA                0.5000000   0.3364686   0.6635314
24 months   ki1000108-IRC              INDIA                          4+                   NA                0.4705882   0.2330272   0.7081492
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.3546798   0.3081032   0.4012564
24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.2934783   0.2003500   0.3866065
24 months   ki1017093b-PROVIDE         BANGLADESH                     3                    NA                0.2456140   0.1337705   0.3574575
24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                0.2272727   0.0520057   0.4025397
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.3087558   0.2472290   0.3702826
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                    NA                0.3138686   0.2360850   0.3916523
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                    NA                0.1153846   0.0444146   0.1863546
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                0.1585366   0.0794056   0.2376675
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.5555556   0.3930737   0.7180374
24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.4814815   0.3871528   0.5758102
24 months   ki1113344-GMS-Nepal        NEPAL                          3                    NA                0.4491525   0.3593155   0.5389896
24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   NA                0.4135021   0.3507423   0.4762619
24 months   ki1135781-COHORTS          INDIA                          1                    NA                0.5903562   0.5702647   0.6104478
24 months   ki1135781-COHORTS          INDIA                          2                    NA                0.3480753   0.3213525   0.3747982
24 months   ki1135781-COHORTS          INDIA                          3                    NA                0.3533333   0.2768278   0.4298389
24 months   ki1135781-COHORTS          INDIA                          4+                   NA                0.1710526   0.0863830   0.2557222


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                0.1184735   0.1178501   0.1190968
3 months    ki0047075b-MAL-ED          PERU                           NA                   NA                0.2500000   0.2406751   0.2593249
3 months    ki1000108-IRC              INDIA                          NA                   NA                0.2246914   0.2203269   0.2290558
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2142857   0.2125359   0.2160355
3 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1471103   0.1444695   0.1497511
3 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.1550128   0.1538202   0.1562054
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                0.2222222   0.2141841   0.2302604
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2097902   0.2071301   0.2124503
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.2113677   0.2091851   0.2135502
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.1954857   0.1938630   0.1971084
9 months    ki0047075b-MAL-ED          PERU                           NA                   NA                0.2460938   0.2423406   0.2498469
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.3688525   0.3672140   0.3704909
9 months    ki1000108-IRC              INDIA                          NA                   NA                0.2740741   0.2718095   0.2763387
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2322946   0.2294335   0.2351557
9 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.2813067   0.2800692   0.2825443
9 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.2729998   0.2706891   0.2753104
12 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.3289474   0.3151510   0.3427437
12 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.2804878   0.2767703   0.2842053
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.5411255   0.5364048   0.5458463
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.4972826   0.4922685   0.5022967
12 months   ki1000108-IRC              INDIA                          NA                   NA                0.2945545   0.2917087   0.2974002
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2422096   0.2379960   0.2464232
12 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.3422939   0.3381708   0.3464170
12 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.3631905   0.3598478   0.3665332
18 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.4561404   0.4402619   0.4720188
18 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.1965066   0.1929053   0.2001078
18 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.4459459   0.4373928   0.4544991
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.3402490   0.3340416   0.3464563
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.6883469   0.6836451   0.6930487
18 months   ki1000108-IRC              INDIA                          NA                   NA                0.3573201   0.3527330   0.3619072
18 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3731884   0.3688508   0.3775260
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.3012618   0.2965543   0.3059694
18 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.5309091   0.5278222   0.5339960
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.4185022   0.4053077   0.4316967
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.2149123   0.2104854   0.2193391
24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.3681592   0.3599564   0.3763620
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.3529412   0.3468701   0.3590122
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.7150538   0.7085290   0.7215786
24 months   ki1000108-IRC              INDIA                          NA                   NA                0.4152334   0.4103592   0.4201077
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3292894   0.3258765   0.3327024
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2568093   0.2497884   0.2638303
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.4468938   0.4433354   0.4504522
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.4934649   0.4894738   0.4974561


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          INDIA                          2                    1                 0.6554066   0.5412298   0.7936699
Birth       ki1135781-COHORTS          INDIA                          3                    1                 0.6683062   0.4090207   1.0919576
Birth       ki1135781-COHORTS          INDIA                          4+                   1                 0.6469979   0.3316841   1.2620634
3 months    ki0047075b-MAL-ED          PERU                           1                    1                 1.0000000   1.0000000   1.0000000
3 months    ki0047075b-MAL-ED          PERU                           2                    1                 0.5115385   0.2752923   0.9505227
3 months    ki0047075b-MAL-ED          PERU                           3                    1                 0.4290323   0.2286897   0.8048841
3 months    ki0047075b-MAL-ED          PERU                           4+                   1                 0.4100719   0.2407990   0.6983377
3 months    ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
3 months    ki1000108-IRC              INDIA                          2                    1                 1.2728443   0.8643582   1.8743762
3 months    ki1000108-IRC              INDIA                          3                    1                 0.6906907   0.2911280   1.6386386
3 months    ki1000108-IRC              INDIA                          4+                   1                 1.7551669   0.8663668   3.5557816
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     2                    1                 1.0584505   0.7654495   1.4636073
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     3                    1                 0.7457265   0.4631541   1.2006976
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+                   1                 0.8358693   0.5216427   1.3393792
3 months    ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
3 months    ki1113344-GMS-Nepal        NEPAL                          2                    1                 0.6198347   0.2839243   1.3531602
3 months    ki1113344-GMS-Nepal        NEPAL                          3                    1                 0.9642857   0.4755067   1.9554867
3 months    ki1113344-GMS-Nepal        NEPAL                          4+                   1                 0.6296296   0.3140684   1.2622521
3 months    ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
3 months    ki1135781-COHORTS          INDIA                          2                    1                 0.5385789   0.4548217   0.6377605
3 months    ki1135781-COHORTS          INDIA                          3                    1                 0.4648474   0.2894484   0.7465340
3 months    ki1135781-COHORTS          INDIA                          4+                   1                 0.2742244   0.1164009   0.6460348
6 months    ki0047075b-MAL-ED          PERU                           1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED          PERU                           2                    1                 0.4885714   0.2117300   1.1273891
6 months    ki0047075b-MAL-ED          PERU                           3                    1                 0.3502304   0.1458278   0.8411381
6 months    ki0047075b-MAL-ED          PERU                           4+                   1                 0.7029805   0.3656530   1.3515042
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2                    1                 1.0156773   0.7328408   1.4076731
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     3                    1                 0.6024372   0.3567037   1.0174565
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+                   1                 0.7163990   0.4335851   1.1836835
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          2                    1                 0.7246377   0.4027619   1.3037475
6 months    ki1113344-GMS-Nepal        NEPAL                          3                    1                 0.7092199   0.4008824   1.2547142
6 months    ki1113344-GMS-Nepal        NEPAL                          4+                   1                 0.6491885   0.3809755   1.1062280
6 months    ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          INDIA                          2                    1                 0.5128901   0.4413519   0.5960238
6 months    ki1135781-COHORTS          INDIA                          3                    1                 0.4384615   0.2852105   0.6740583
6 months    ki1135781-COHORTS          INDIA                          4+                   1                 0.2709677   0.1246542   0.5890177
9 months    ki0047075b-MAL-ED          PERU                           1                    1                 1.0000000   1.0000000   1.0000000
9 months    ki0047075b-MAL-ED          PERU                           2                    1                 0.7411348   0.3194389   1.7195174
9 months    ki0047075b-MAL-ED          PERU                           3                    1                 0.6333333   0.2710544   1.4798179
9 months    ki0047075b-MAL-ED          PERU                           4+                   1                 0.8209877   0.3987875   1.6901750
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                    1                 0.9921281   0.7270089   1.3539286
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                    1                 0.9143243   0.5966222   1.4012033
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+                   1                 1.1525097   0.6125284   2.1685173
9 months    ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
9 months    ki1000108-IRC              INDIA                          2                    1                 0.9729638   0.6959241   1.3602900
9 months    ki1000108-IRC              INDIA                          3                    1                 0.7038462   0.3487418   1.4205334
9 months    ki1000108-IRC              INDIA                          4+                   1                 1.0350679   0.4780771   2.2409891
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     2                    1                 0.9976982   0.7335231   1.3570148
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     3                    1                 0.6574257   0.4104688   1.0529635
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+                   1                 0.6582948   0.4005165   1.0819829
9 months    ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
9 months    ki1113344-GMS-Nepal        NEPAL                          2                    1                 0.9472934   0.5495493   1.6329106
9 months    ki1113344-GMS-Nepal        NEPAL                          3                    1                 0.8848039   0.5152334   1.5194627
9 months    ki1113344-GMS-Nepal        NEPAL                          4+                   1                 0.8525641   0.5122097   1.4190781
9 months    ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
9 months    ki1135781-COHORTS          INDIA                          2                    1                 0.5276741   0.4635530   0.6006648
9 months    ki1135781-COHORTS          INDIA                          3                    1                 0.6227425   0.4551808   0.8519872
9 months    ki1135781-COHORTS          INDIA                          4+                   1                 0.1851140   0.0790316   0.4335884
12 months   ki0047075b-MAL-ED          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
12 months   ki0047075b-MAL-ED          INDIA                          2                    1                 2.1546547   1.3402646   3.4638956
12 months   ki0047075b-MAL-ED          INDIA                          3                    1                 1.3569740   0.7442230   2.4742293
12 months   ki0047075b-MAL-ED          INDIA                          4+                   1                 1.4577778   0.7212017   2.9466320
12 months   ki0047075b-MAL-ED          PERU                           1                    1                 1.0000000   1.0000000   1.0000000
12 months   ki0047075b-MAL-ED          PERU                           2                    1                 1.0173913   0.4230557   2.4466873
12 months   ki0047075b-MAL-ED          PERU                           3                    1                 0.8150943   0.3321689   2.0001236
12 months   ki0047075b-MAL-ED          PERU                           4+                   1                 1.0883721   0.4933143   2.4012153
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                 1.3200000   0.6661623   2.6155788
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                 1.1733333   0.5880664   2.3410812
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   1                 1.1523810   0.5873212   2.2610826
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    1                 1.0749646   0.8600144   1.3436391
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    1                 0.7678319   0.5260608   1.1207180
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                   1                 0.8486563   0.4560416   1.5792804
12 months   ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
12 months   ki1000108-IRC              INDIA                          2                    1                 0.9721048   0.7062559   1.3380246
12 months   ki1000108-IRC              INDIA                          3                    1                 0.6764706   0.3371992   1.3570983
12 months   ki1000108-IRC              INDIA                          4+                   1                 1.1596639   0.5871854   2.2902823
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                    1                 1.0567938   0.7901352   1.4134454
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                    1                 0.4375413   0.2497353   0.7665812
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   1                 0.7438202   0.4742410   1.1666399
12 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
12 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                 0.9779412   0.6357544   1.5043058
12 months   ki1113344-GMS-Nepal        NEPAL                          3                    1                 0.6636029   0.4186372   1.0519106
12 months   ki1113344-GMS-Nepal        NEPAL                          4+                   1                 0.7886792   0.5231782   1.1889159
12 months   ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
12 months   ki1135781-COHORTS          INDIA                          2                    1                 0.5379917   0.4816992   0.6008628
12 months   ki1135781-COHORTS          INDIA                          3                    1                 0.4901621   0.3578104   0.6714697
12 months   ki1135781-COHORTS          INDIA                          4+                   1                 0.1739287   0.0805197   0.3756994
18 months   ki0047075b-MAL-ED          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
18 months   ki0047075b-MAL-ED          INDIA                          2                    1                 1.8878879   1.3208365   2.6983814
18 months   ki0047075b-MAL-ED          INDIA                          3                    1                 1.2923562   0.8202479   2.0361948
18 months   ki0047075b-MAL-ED          INDIA                          4+                   1                 1.3362963   0.7782371   2.2945291
18 months   ki0047075b-MAL-ED          NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
18 months   ki0047075b-MAL-ED          NEPAL                          2                    1                 0.7903226   0.2975445   2.0992149
18 months   ki0047075b-MAL-ED          NEPAL                          3                    1                 1.3363636   0.5541864   3.2225039
18 months   ki0047075b-MAL-ED          NEPAL                          4+                   1                 0.9259843   0.4779186   1.7941274
18 months   ki0047075b-MAL-ED          PERU                           1                    1                 1.0000000   1.0000000   1.0000000
18 months   ki0047075b-MAL-ED          PERU                           2                    1                 0.6736597   0.4078377   1.1127400
18 months   ki0047075b-MAL-ED          PERU                           3                    1                 0.5795455   0.3488016   0.9629339
18 months   ki0047075b-MAL-ED          PERU                           4+                   1                 0.6941448   0.4630389   1.0405973
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                 1.0000000   1.0000000   1.0000000
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                 0.5416667   0.2070550   1.4170285
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                 0.9420290   0.4444754   1.9965529
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   1                 0.7144144   0.3830289   1.3325051
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    1                 0.9523810   0.8149028   1.1130523
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    1                 0.8169935   0.6390294   1.0445190
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                   1                 0.8547009   0.5510367   1.3257076
18 months   ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
18 months   ki1000108-IRC              INDIA                          2                    1                 0.9483352   0.7162217   1.2556723
18 months   ki1000108-IRC              INDIA                          3                    1                 0.6985075   0.3852204   1.2665805
18 months   ki1000108-IRC              INDIA                          4+                   1                 1.4381036   0.8832052   2.3416324
18 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
18 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                 0.8124778   0.5915141   1.1159839
18 months   ki1017093b-PROVIDE         BANGLADESH                     3                    1                 0.6485569   0.4129422   1.0186074
18 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   1                 0.6721408   0.3358820   1.3450354
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                    1                 0.8911477   0.6782613   1.1708529
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                    1                 0.5868489   0.3815426   0.9026295
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   1                 0.5947502   0.3829968   0.9235790
18 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
18 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                 0.9115942   0.6777802   1.2260671
18 months   ki1113344-GMS-Nepal        NEPAL                          3                    1                 0.7806905   0.5751832   1.0596237
18 months   ki1113344-GMS-Nepal        NEPAL                          4+                   1                 0.8450347   0.6404490   1.1149735
24 months   ki0047075b-MAL-ED          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          INDIA                          2                    1                 1.7474012   1.1966904   2.5515465
24 months   ki0047075b-MAL-ED          INDIA                          3                    1                 1.1655518   0.7109093   1.9109485
24 months   ki0047075b-MAL-ED          INDIA                          4+                   1                 1.3876923   0.8040864   2.3948793
24 months   ki0047075b-MAL-ED          NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          2                    1                 0.9290323   0.3747911   2.3028854
24 months   ki0047075b-MAL-ED          NEPAL                          3                    1                 1.5272727   0.6690422   3.4864199
24 months   ki0047075b-MAL-ED          NEPAL                          4+                   1                 0.9826772   0.5126187   1.8837676
24 months   ki0047075b-MAL-ED          PERU                           1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          PERU                           2                    1                 0.6666667   0.3573779   1.2436259
24 months   ki0047075b-MAL-ED          PERU                           3                    1                 0.5788114   0.3140987   1.0666157
24 months   ki0047075b-MAL-ED          PERU                           4+                   1                 0.6303030   0.3817009   1.0408199
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                 0.6842105   0.2463740   1.9001355
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                 1.2434783   0.5526044   2.7980924
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   1                 0.8950820   0.4367323   1.8344688
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    1                 0.8685940   0.7449017   1.0128257
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    1                 0.8136622   0.6498589   1.0187538
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+                   1                 0.7410138   0.4675693   1.1743747
24 months   ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1000108-IRC              INDIA                          2                    1                 0.8051650   0.6221307   1.0420490
24 months   ki1000108-IRC              INDIA                          3                    1                 1.1219512   0.7790912   1.6156960
24 months   ki1000108-IRC              INDIA                          4+                   1                 1.0559541   0.6215552   1.7939503
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                 0.8274457   0.5869375   1.1665062
24 months   ki1017093b-PROVIDE         BANGLADESH                     3                    1                 0.6924951   0.4311177   1.1123401
24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   1                 0.6407828   0.2930709   1.4010350
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                    1                 1.0165595   0.7396495   1.3971392
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                    1                 0.3737084   0.1957674   0.7133873
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   1                 0.5134692   0.2999896   0.8788661
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                 0.8666667   0.6094963   1.2323474
24 months   ki1113344-GMS-Nepal        NEPAL                          3                    1                 0.8084746   0.5672663   1.1522475
24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   1                 0.7443038   0.5353629   1.0347900
24 months   ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          INDIA                          2                    1                 0.5896022   0.5421104   0.6412546
24 months   ki1135781-COHORTS          INDIA                          3                    1                 0.5985087   0.4807069   0.7451790
24 months   ki1135781-COHORTS          INDIA                          4+                   1                 0.2897448   0.1764152   0.4758776


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1135781-COHORTS          INDIA                          1                    NA                -0.0159265   -0.0279026   -0.0039504
3 months    ki0047075b-MAL-ED          PERU                           1                    NA                -0.2763158   -0.5014345   -0.0511971
3 months    ki1000108-IRC              INDIA                          1                    NA                 0.0236044   -0.0345449    0.0817537
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0092100   -0.0529811    0.0345611
3 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0528897   -0.1769855    0.0712061
3 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.0310407   -0.0443189   -0.0177625
6 months    ki0047075b-MAL-ED          PERU                           1                    NA                -0.1461988   -0.3636491    0.0712515
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0202983   -0.0652124    0.0246159
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0886323   -0.2307883    0.0535236
6 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.0426095   -0.0574273   -0.0277918
9 months    ki0047075b-MAL-ED          PERU                           1                    NA                -0.0696957   -0.2791478    0.1397563
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.0030068   -0.0702677    0.0642540
9 months    ki1000108-IRC              INDIA                          1                    NA                -0.0100789   -0.0755434    0.0553855
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0237295   -0.0707958    0.0233369
9 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0344828   -0.1824139    0.1134484
9 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.0563951   -0.0739799   -0.0388104
12 months   ki0047075b-MAL-ED          INDIA                          1                    NA                 0.1094352    0.0185955    0.2002748
12 months   ki0047075b-MAL-ED          PERU                           1                    NA                 0.0027100   -0.2046621    0.2100821
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0865801   -0.2083489    0.3815090
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.0077174   -0.0772844    0.0618496
12 months   ki1000108-IRC              INDIA                          1                    NA                -0.0097934   -0.0764211    0.0568344
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0266725   -0.0746567    0.0213116
12 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0787587   -0.2359336    0.0784161
12 months   ki1135781-COHORTS          INDIA                          1                    NA                -0.0790780   -0.0990248   -0.0591311
18 months   ki0047075b-MAL-ED          INDIA                          1                    NA                 0.1268721    0.0237027    0.2300414
18 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.0075751   -0.1207256    0.1055755
18 months   ki0047075b-MAL-ED          PERU                           1                    NA                -0.2011129   -0.4289546    0.0267288
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.1212895   -0.3929172    0.1503382
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.0316531   -0.0941417    0.0308354
18 months   ki1000108-IRC              INDIA                          1                    NA                -0.0108118   -0.0811179    0.0594944
18 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0325708   -0.0820475    0.0169060
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0506545   -0.1061495    0.0048404
18 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0907125   -0.2471545    0.0657294
24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                 0.1014290   -0.0003705    0.2032285
24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                 0.0065789   -0.1086478    0.1218057
24 months   ki0047075b-MAL-ED          PERU                           1                    NA                -0.1943408   -0.4381597    0.0494781
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.0316742   -0.2967630    0.2334145
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.0560905   -0.1146099    0.0024289
24 months   ki1000108-IRC              INDIA                          1                    NA                -0.0304188   -0.1024893    0.0416518
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0253904   -0.0720918    0.0213111
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0519464   -0.1138725    0.0099797
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.1086618   -0.2711826    0.0538591
24 months   ki1135781-COHORTS          INDIA                          1                    NA                -0.0968913   -0.1173754   -0.0764071


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1135781-COHORTS          INDIA                          1                    NA                -0.1344312   -0.2402016   -0.0376813
3 months    ki0047075b-MAL-ED          PERU                           1                    NA                -1.1052632   -2.2330424   -0.3708861
3 months    ki1000108-IRC              INDIA                          1                    NA                 0.1050526   -0.1948521    0.3296819
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0429799   -0.2686374    0.1425389
3 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.3595238   -1.5287691    0.2690891
3 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.2002460   -0.2891989   -0.1174308
6 months    ki0047075b-MAL-ED          PERU                           1                    NA                -0.6578947   -1.9935965    0.0818352
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0967552   -0.3332628    0.0977984
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.4193277   -1.2798122    0.1163784
6 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.2179676   -0.2964091   -0.1442723
9 months    ki0047075b-MAL-ED          PERU                           1                    NA                -0.2832080   -1.4910315    0.3389795
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.0081519   -0.2080371    0.1586598
9 months    ki1000108-IRC              INDIA                          1                    NA                -0.0367745   -0.3053997    0.1765731
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.1021525   -0.3246837    0.0829960
9 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.1225806   -0.7933459    0.2972983
9 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.2065758   -0.2730061   -0.1436121
12 months   ki0047075b-MAL-ED          INDIA                          1                    NA                 0.3326829   -0.0067016    0.5576524
12 months   ki0047075b-MAL-ED          PERU                           1                    NA                 0.0096618   -1.0892986    0.5305747
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.1600000   -0.6071555    0.5609634
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.0155191   -0.1655203    0.1151770
12 months   ki1000108-IRC              INDIA                          1                    NA                -0.0332481   -0.2861336    0.1699139
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.1101217   -0.3272210    0.0714657
12 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.2300909   -0.7868320    0.1531808
12 months   ki1135781-COHORTS          INDIA                          1                    NA                -0.2177314   -0.2742981   -0.1636757
18 months   ki0047075b-MAL-ED          INDIA                          1                    NA                 0.2781426    0.0142780    0.4713741
18 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.0385488   -0.8081135    0.4034758
18 months   ki0047075b-MAL-ED          PERU                           1                    NA                -0.4509804   -1.0639727   -0.0200445
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.3564728   -1.4437739    0.2470586
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.0459843   -0.1408471    0.0409907
18 months   ki1000108-IRC              INDIA                          1                    NA                -0.0302579   -0.2470927    0.1488753
18 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0872770   -0.2283821    0.0376193
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.1681413   -0.3679511    0.0024833
18 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.1708626   -0.5059537    0.0896670
24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                 0.2423620   -0.0432695    0.4497919
24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                 0.0306122   -0.6853498    0.4424228
24 months   ki0047075b-MAL-ED          PERU                           1                    NA                -0.5278716   -1.3576342    0.0098584
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.0897436   -1.1710416    0.4530086
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.0784424   -0.1635563    0.0004454
24 months   ki1000108-IRC              INDIA                          1                    NA                -0.0732570   -0.2617170    0.0870531
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0771066   -0.2287616    0.0558310
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.2022762   -0.4701386    0.0167810
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.2431490   -0.6656633    0.0721898
24 months   ki1135781-COHORTS          INDIA                          1                    NA                -0.1963489   -0.2389387   -0.1552231
