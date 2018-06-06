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
3 months    ki0047075b-MAL-ED          BANGLADESH                     1      242    152    107     45
3 months    ki0047075b-MAL-ED          BANGLADESH                     2      242     50     37     13
3 months    ki0047075b-MAL-ED          BANGLADESH                     3      242     28     22      6
3 months    ki0047075b-MAL-ED          BANGLADESH                     4+     242     12     11      1
3 months    ki0047075b-MAL-ED          BRAZIL                         1      210      4      4      0
3 months    ki0047075b-MAL-ED          BRAZIL                         2      210     20     16      4
3 months    ki0047075b-MAL-ED          BRAZIL                         3      210     59     49     10
3 months    ki0047075b-MAL-ED          BRAZIL                         4+     210    127    108     19
3 months    ki0047075b-MAL-ED          INDIA                          1      235     84     62     22
3 months    ki0047075b-MAL-ED          INDIA                          2      235     78     50     28
3 months    ki0047075b-MAL-ED          INDIA                          3      235     48     38     10
3 months    ki0047075b-MAL-ED          INDIA                          4+     235     25     22      3
3 months    ki0047075b-MAL-ED          NEPAL                          1      236     52     43      9
3 months    ki0047075b-MAL-ED          NEPAL                          2      236     31     28      3
3 months    ki0047075b-MAL-ED          NEPAL                          3      236     22     17      5
3 months    ki0047075b-MAL-ED          NEPAL                          4+     236    131    112     19
3 months    ki0047075b-MAL-ED          PERU                           1      272     19      9     10
3 months    ki0047075b-MAL-ED          PERU                           2      272     52     34     18
3 months    ki0047075b-MAL-ED          PERU                           3      272     62     41     21
3 months    ki0047075b-MAL-ED          PERU                           4+     272    139     94     45
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1      257     14     12      2
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2      257     22     16      6
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3      257     25     18      7
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+     257    196    141     55
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1      250     13      9      4
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2      250     63     44     19
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3      250     66     51     15
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+     250    108     70     38
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          1      362    196    128     68
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          2      362    101     63     38
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          3      362     51     35     16
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+     362     14     11      3
3 months    ki1000108-IRC              INDIA                          1      408    185    129     56
3 months    ki1000108-IRC              INDIA                          2      408    170    114     56
3 months    ki1000108-IRC              INDIA                          3      408     36     26     10
3 months    ki1000108-IRC              INDIA                          4+     408     17      9      8
3 months    ki1017093b-PROVIDE         BANGLADESH                     1      700    507    410     97
3 months    ki1017093b-PROVIDE         BANGLADESH                     2      700    108     90     18
3 months    ki1017093b-PROVIDE         BANGLADESH                     3      700     62     51     11
3 months    ki1017093b-PROVIDE         BANGLADESH                     4+     700     23     19      4
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     1      758    368    304     64
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     2      758    191    158     33
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     3      758    104     93     11
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+     758     95     82     13
3 months    ki1113344-GMS-Nepal        NEPAL                          1      593     39     31      8
3 months    ki1113344-GMS-Nepal        NEPAL                          2      593    128    105     23
3 months    ki1113344-GMS-Nepal        NEPAL                          3      593    149    123     26
3 months    ki1113344-GMS-Nepal        NEPAL                          4+     593    277    240     37
3 months    ki1114097-CONTENT          PERU                           1      215     44     36      8
3 months    ki1114097-CONTENT          PERU                           2      215     54     48      6
3 months    ki1114097-CONTENT          PERU                           3      215     39     32      7
3 months    ki1114097-CONTENT          PERU                           4+     215     78     64     14
3 months    ki1135781-COHORTS          INDIA                          1     5193   3403   2654    749
3 months    ki1135781-COHORTS          INDIA                          2     5193   1501   1294    207
3 months    ki1135781-COHORTS          INDIA                          3     5193    188    164     24
3 months    ki1135781-COHORTS          INDIA                          4+    5193    101     91     10
6 months    ki0047075b-MAL-ED          BANGLADESH                     1      242    152     96     56
6 months    ki0047075b-MAL-ED          BANGLADESH                     2      242     50     33     17
6 months    ki0047075b-MAL-ED          BANGLADESH                     3      242     28     22      6
6 months    ki0047075b-MAL-ED          BANGLADESH                     4+     242     12     10      2
6 months    ki0047075b-MAL-ED          BRAZIL                         1      210      4      4      0
6 months    ki0047075b-MAL-ED          BRAZIL                         2      210     20     16      4
6 months    ki0047075b-MAL-ED          BRAZIL                         3      210     59     46     13
6 months    ki0047075b-MAL-ED          BRAZIL                         4+     210    127    104     23
6 months    ki0047075b-MAL-ED          INDIA                          1      235     84     58     26
6 months    ki0047075b-MAL-ED          INDIA                          2      235     78     45     33
6 months    ki0047075b-MAL-ED          INDIA                          3      235     48     34     14
6 months    ki0047075b-MAL-ED          INDIA                          4+     235     25     18      7
6 months    ki0047075b-MAL-ED          NEPAL                          1      236     52     43      9
6 months    ki0047075b-MAL-ED          NEPAL                          2      236     31     28      3
6 months    ki0047075b-MAL-ED          NEPAL                          3      236     22     16      6
6 months    ki0047075b-MAL-ED          NEPAL                          4+     236    131    109     22
6 months    ki0047075b-MAL-ED          PERU                           1      271     19      7     12
6 months    ki0047075b-MAL-ED          PERU                           2      271     51     27     24
6 months    ki0047075b-MAL-ED          PERU                           3      271     62     37     25
6 months    ki0047075b-MAL-ED          PERU                           4+     271    139     79     60
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1      255     14      9      5
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2      255     22     14      8
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3      255     24     13     11
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+     255    195    120     75
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1      250     13      8      5
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2      250     63     31     32
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3      250     66     45     21
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+     250    108     64     44
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1      367    198     92    106
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2      367    104     51     53
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3      367     51     29     22
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+     367     14      7      7
6 months    ki1000108-IRC              INDIA                          1      406    183    107     76
6 months    ki1000108-IRC              INDIA                          2      406    170     97     73
6 months    ki1000108-IRC              INDIA                          3      406     36     23     13
6 months    ki1000108-IRC              INDIA                          4+     406     17      6     11
6 months    ki1017093b-PROVIDE         BANGLADESH                     1      640    458    336    122
6 months    ki1017093b-PROVIDE         BANGLADESH                     2      640    101     79     22
6 months    ki1017093b-PROVIDE         BANGLADESH                     3      640     59     44     15
6 months    ki1017093b-PROVIDE         BANGLADESH                     4+     640     22     18      4
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1      736    352    240    112
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2      736    189    126     63
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     3      736    104     79     25
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+     736     91     65     26
6 months    ki1113344-GMS-Nepal        NEPAL                          1      567     39     25     14
6 months    ki1113344-GMS-Nepal        NEPAL                          2      567    118     83     35
6 months    ki1113344-GMS-Nepal        NEPAL                          3      567    142     97     45
6 months    ki1113344-GMS-Nepal        NEPAL                          4+     567    268    200     68
6 months    ki1114097-CONTENT          PERU                           1      215     44     31     13
6 months    ki1114097-CONTENT          PERU                           2      215     54     46      8
6 months    ki1114097-CONTENT          PERU                           3      215     39     31      8
6 months    ki1114097-CONTENT          PERU                           4+     215     78     59     19
12 months   ki0047075b-MAL-ED          BANGLADESH                     1      239    151     80     71
12 months   ki0047075b-MAL-ED          BANGLADESH                     2      239     48     28     20
12 months   ki0047075b-MAL-ED          BANGLADESH                     3      239     28     18     10
12 months   ki0047075b-MAL-ED          BANGLADESH                     4+     239     12     10      2
12 months   ki0047075b-MAL-ED          BRAZIL                         1      207      4      4      0
12 months   ki0047075b-MAL-ED          BRAZIL                         2      207     18     15      3
12 months   ki0047075b-MAL-ED          BRAZIL                         3      207     59     45     14
12 months   ki0047075b-MAL-ED          BRAZIL                         4+     207    126    101     25
12 months   ki0047075b-MAL-ED          INDIA                          1      235     84     52     32
12 months   ki0047075b-MAL-ED          INDIA                          2      235     78     32     46
12 months   ki0047075b-MAL-ED          INDIA                          3      235     48     26     22
12 months   ki0047075b-MAL-ED          INDIA                          4+     235     25     13     12
12 months   ki0047075b-MAL-ED          NEPAL                          1      235     51     41     10
12 months   ki0047075b-MAL-ED          NEPAL                          2      235     31     27      4
12 months   ki0047075b-MAL-ED          NEPAL                          3      235     22     15      7
12 months   ki0047075b-MAL-ED          NEPAL                          4+     235    131    105     26
12 months   ki0047075b-MAL-ED          PERU                           1      270     19      6     13
12 months   ki0047075b-MAL-ED          PERU                           2      270     50     23     27
12 months   ki0047075b-MAL-ED          PERU                           3      270     62     34     28
12 months   ki0047075b-MAL-ED          PERU                           4+     270    139     67     72
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1      255     14      7      7
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2      255     22     11     11
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3      255     24     12     12
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+     255    195    106     89
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1      245     12      4      8
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2      245     61     21     40
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3      245     65     25     40
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+     245    107     34     73
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          1      372    201     58    143
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          2      372    106     31     75
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          3      372     51     19     32
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+     372     14      4     10
12 months   ki1000108-IRC              INDIA                          1      406    184     91     93
12 months   ki1000108-IRC              INDIA                          2      406    170     84     86
12 months   ki1000108-IRC              INDIA                          3      406     35     19     16
12 months   ki1000108-IRC              INDIA                          4+     406     17      5     12
12 months   ki1017093b-PROVIDE         BANGLADESH                     1      609    433    283    150
12 months   ki1017093b-PROVIDE         BANGLADESH                     2      609     97     67     30
12 months   ki1017093b-PROVIDE         BANGLADESH                     3      609     57     40     17
12 months   ki1017093b-PROVIDE         BANGLADESH                     4+     609     22     17      5
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     1      729    346    205    141
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     2      729    188    116     72
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     3      729    104     74     30
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+     729     91     57     34
12 months   ki1113344-GMS-Nepal        NEPAL                          1      582     40     21     19
12 months   ki1113344-GMS-Nepal        NEPAL                          2      582    124     65     59
12 months   ki1113344-GMS-Nepal        NEPAL                          3      582    143     75     68
12 months   ki1113344-GMS-Nepal        NEPAL                          4+     582    275    156    119
12 months   ki1114097-CONTENT          PERU                           1      215     44     29     15
12 months   ki1114097-CONTENT          PERU                           2      215     54     45      9
12 months   ki1114097-CONTENT          PERU                           3      215     39     31      8
12 months   ki1114097-CONTENT          PERU                           4+     215     78     56     22
12 months   ki1135781-COHORTS          INDIA                          1     5022   3257   1740   1517
12 months   ki1135781-COHORTS          INDIA                          2     5022   1487   1059    428
12 months   ki1135781-COHORTS          INDIA                          3     5022    184    137     47
12 months   ki1135781-COHORTS          INDIA                          4+    5022     94     77     17
18 months   ki0047075b-MAL-ED          BANGLADESH                     1      231    148     60     88
18 months   ki0047075b-MAL-ED          BANGLADESH                     2      231     45     18     27
18 months   ki0047075b-MAL-ED          BANGLADESH                     3      231     27     14     13
18 months   ki0047075b-MAL-ED          BANGLADESH                     4+     231     11      8      3
18 months   ki0047075b-MAL-ED          BRAZIL                         1      194      2      2      0
18 months   ki0047075b-MAL-ED          BRAZIL                         2      194     18     15      3
18 months   ki0047075b-MAL-ED          BRAZIL                         3      194     57     41     16
18 months   ki0047075b-MAL-ED          BRAZIL                         4+     194    117     91     26
18 months   ki0047075b-MAL-ED          INDIA                          1      229     83     43     40
18 months   ki0047075b-MAL-ED          INDIA                          2      229     74     22     52
18 months   ki0047075b-MAL-ED          INDIA                          3      229     47     21     26
18 months   ki0047075b-MAL-ED          INDIA                          4+     229     25     10     15
18 months   ki0047075b-MAL-ED          NEPAL                          1      231     49     34     15
18 months   ki0047075b-MAL-ED          NEPAL                          2      231     31     23      8
18 months   ki0047075b-MAL-ED          NEPAL                          3      231     22     12     10
18 months   ki0047075b-MAL-ED          NEPAL                          4+     231    129     94     35
18 months   ki0047075b-MAL-ED          PERU                           1      244     18      4     14
18 months   ki0047075b-MAL-ED          PERU                           2      244     46     12     34
18 months   ki0047075b-MAL-ED          PERU                           3      244     53     22     31
18 months   ki0047075b-MAL-ED          PERU                           4+     244    127     42     85
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1      252     14      5      9
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2      252     21     10     11
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3      252     24     10     14
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+     252    193     87    106
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1      233     11      4      7
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2      233     55      6     49
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3      233     62     16     46
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+     233    105     17     88
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          1      373    202     25    177
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          2      373    106     17     89
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          3      373     51     13     38
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+     373     14      2     12
18 months   ki1000108-IRC              INDIA                          1      407    185     81    104
18 months   ki1000108-IRC              INDIA                          2      407    170     74     96
18 months   ki1000108-IRC              INDIA                          3      407     35     17     18
18 months   ki1000108-IRC              INDIA                          4+     407     17      5     12
18 months   ki1017093b-PROVIDE         BANGLADESH                     1      604    428    242    186
18 months   ki1017093b-PROVIDE         BANGLADESH                     2      604     96     58     38
18 months   ki1017093b-PROVIDE         BANGLADESH                     3      604     58     36     22
18 months   ki1017093b-PROVIDE         BANGLADESH                     4+     604     22     16      6
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     1      715    337    173    164
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     2      715    185    101     84
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     3      715    102     71     31
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+     715     91     53     38
18 months   ki1113344-GMS-Nepal        NEPAL                          1      574     39     13     26
18 months   ki1113344-GMS-Nepal        NEPAL                          2      574    120     44     76
18 months   ki1113344-GMS-Nepal        NEPAL                          3      574    143     54     89
18 months   ki1113344-GMS-Nepal        NEPAL                          4+     574    272    105    167
18 months   ki1114097-CONTENT          PERU                           1      214     44     29     15
18 months   ki1114097-CONTENT          PERU                           2      214     54     43     11
18 months   ki1114097-CONTENT          PERU                           3      214     39     29     10
18 months   ki1114097-CONTENT          PERU                           4+     214     77     53     24
24 months   ki0047075b-MAL-ED          BANGLADESH                     1      219    140     51     89
24 months   ki0047075b-MAL-ED          BANGLADESH                     2      219     41     15     26
24 months   ki0047075b-MAL-ED          BANGLADESH                     3      219     27     10     17
24 months   ki0047075b-MAL-ED          BANGLADESH                     4+     219     11      7      4
24 months   ki0047075b-MAL-ED          BRAZIL                         1      176      1      1      0
24 months   ki0047075b-MAL-ED          BRAZIL                         2      176     17     14      3
24 months   ki0047075b-MAL-ED          BRAZIL                         3      176     51     35     16
24 months   ki0047075b-MAL-ED          BRAZIL                         4+     176    107     86     21
24 months   ki0047075b-MAL-ED          INDIA                          1      228     82     37     45
24 months   ki0047075b-MAL-ED          INDIA                          2      228     74     19     55
24 months   ki0047075b-MAL-ED          INDIA                          3      228     47     21     26
24 months   ki0047075b-MAL-ED          INDIA                          4+     228     25      9     16
24 months   ki0047075b-MAL-ED          NEPAL                          1      229     48     30     18
24 months   ki0047075b-MAL-ED          NEPAL                          2      229     31     22      9
24 months   ki0047075b-MAL-ED          NEPAL                          3      229     22     12     10
24 months   ki0047075b-MAL-ED          NEPAL                          4+     229    128     85     43
24 months   ki0047075b-MAL-ED          PERU                           1      218     17      3     14
24 months   ki0047075b-MAL-ED          PERU                           2      218     39      8     31
24 months   ki0047075b-MAL-ED          PERU                           3      218     46     15     31
24 months   ki0047075b-MAL-ED          PERU                           4+     218    116     35     81
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1      242     13      5      8
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2      242     20      7     13
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3      242     23      6     17
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+     242    186     75    111
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1      228      9      3      6
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2      228     54      4     50
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3      228     62      8     54
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+     228    103     12     91
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1      373    202     11    191
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2      373    106      8     98
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3      373     51      7     44
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4+     373     14      2     12
24 months   ki1000108-IRC              INDIA                          1      408    185     65    120
24 months   ki1000108-IRC              INDIA                          2      408    170     66    104
24 months   ki1000108-IRC              INDIA                          3      408     36     10     26
24 months   ki1000108-IRC              INDIA                          4+     408     17      4     13
24 months   ki1017093b-PROVIDE         BANGLADESH                     1      582    410    204    206
24 months   ki1017093b-PROVIDE         BANGLADESH                     2      582     93     52     41
24 months   ki1017093b-PROVIDE         BANGLADESH                     3      582     57     31     26
24 months   ki1017093b-PROVIDE         BANGLADESH                     4+     582     22     15      7
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1      634    287    125    162
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2      634    168     83     85
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3      634     93     58     35
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+     634     86     50     36
24 months   ki1113344-GMS-Nepal        NEPAL                          1      568     40     11     29
24 months   ki1113344-GMS-Nepal        NEPAL                          2      568    123     37     86
24 months   ki1113344-GMS-Nepal        NEPAL                          3      568    139     46     93
24 months   ki1113344-GMS-Nepal        NEPAL                          4+     568    266     82    184
24 months   ki1114097-CONTENT          PERU                           1      197     38     25     13
24 months   ki1114097-CONTENT          PERU                           2      197     50     38     12
24 months   ki1114097-CONTENT          PERU                           3      197     38     28     10
24 months   ki1114097-CONTENT          PERU                           4+     197     71     49     22


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

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/3cc9b83d-0c5c-41bf-9528-3522509f2ccc/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->


```
## Warning: Removed 39 rows containing missing values (geom_errorbar).
```

![](/tmp/3cc9b83d-0c5c-41bf-9528-3522509f2ccc/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/3cc9b83d-0c5c-41bf-9528-3522509f2ccc/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/3cc9b83d-0c5c-41bf-9528-3522509f2ccc/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki0047075b-MAL-ED          PERU                           1                    NA                0.5263158   0.3013903   0.7512413
3 months    ki0047075b-MAL-ED          PERU                           2                    NA                0.3461538   0.2166095   0.4756982
3 months    ki0047075b-MAL-ED          PERU                           3                    NA                0.3387097   0.2206880   0.4567314
3 months    ki0047075b-MAL-ED          PERU                           4+                   NA                0.3237410   0.2458126   0.4016694
3 months    ki1000108-IRC              INDIA                          1                    NA                0.3027027   0.2364182   0.3689872
3 months    ki1000108-IRC              INDIA                          2                    NA                0.3294118   0.2586736   0.4001500
3 months    ki1000108-IRC              INDIA                          3                    NA                0.2777778   0.1312858   0.4242698
3 months    ki1000108-IRC              INDIA                          4+                   NA                0.4705882   0.2330280   0.7081485
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.1739130   0.1351614   0.2126647
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     2                    NA                0.1727749   0.1191248   0.2264249
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     3                    NA                0.1057692   0.0466236   0.1649148
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                0.1368421   0.0676864   0.2059978
3 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.2051282   0.0782919   0.3319645
3 months    ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.1796875   0.1131206   0.2462544
3 months    ki1113344-GMS-Nepal        NEPAL                          3                    NA                0.1744966   0.1135044   0.2354889
3 months    ki1113344-GMS-Nepal        NEPAL                          4+                   NA                0.1335740   0.0934780   0.1736700
3 months    ki1114097-CONTENT          PERU                           1                    NA                0.1818182   0.0675888   0.2960475
3 months    ki1114097-CONTENT          PERU                           2                    NA                0.1111111   0.0270943   0.1951279
3 months    ki1114097-CONTENT          PERU                           3                    NA                0.1794872   0.0587649   0.3002095
3 months    ki1114097-CONTENT          PERU                           4+                   NA                0.1794872   0.0941236   0.2648507
3 months    ki1135781-COHORTS          INDIA                          1                    NA                0.2200999   0.2061783   0.2340215
3 months    ki1135781-COHORTS          INDIA                          2                    NA                0.1379081   0.1204631   0.1553531
3 months    ki1135781-COHORTS          INDIA                          3                    NA                0.1276596   0.0799527   0.1753664
3 months    ki1135781-COHORTS          INDIA                          4+                   NA                0.0990099   0.0407555   0.1572643
6 months    ki0047075b-MAL-ED          INDIA                          1                    NA                0.3095238   0.2104507   0.4085969
6 months    ki0047075b-MAL-ED          INDIA                          2                    NA                0.4230769   0.3132028   0.5329510
6 months    ki0047075b-MAL-ED          INDIA                          3                    NA                0.2916667   0.1628074   0.4205260
6 months    ki0047075b-MAL-ED          INDIA                          4+                   NA                0.2800000   0.1036200   0.4563800
6 months    ki0047075b-MAL-ED          PERU                           1                    NA                0.6315789   0.4142788   0.8488791
6 months    ki0047075b-MAL-ED          PERU                           2                    NA                0.4705882   0.3333475   0.6078290
6 months    ki0047075b-MAL-ED          PERU                           3                    NA                0.4032258   0.2808955   0.5255561
6 months    ki0047075b-MAL-ED          PERU                           4+                   NA                0.4316547   0.3491615   0.5141478
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.3571429   0.1056559   0.6086298
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                0.3636364   0.1622286   0.5650442
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                0.4583333   0.2585991   0.6580676
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                0.3846154   0.3161973   0.4530334
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                0.3846154   0.1196230   0.6496078
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                0.5079365   0.3842383   0.6316347
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                0.3181818   0.2055870   0.4307766
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   NA                0.4074074   0.3145537   0.5002611
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                0.5353535   0.4657887   0.6049184
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                    NA                0.5096154   0.4134069   0.6058239
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                    NA                0.4313726   0.2952608   0.5674843
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+                   NA                0.5000000   0.2377312   0.7622688
6 months    ki1000108-IRC              INDIA                          1                    NA                0.4153005   0.3438171   0.4867840
6 months    ki1000108-IRC              INDIA                          2                    NA                0.4294118   0.3549116   0.5039120
6 months    ki1000108-IRC              INDIA                          3                    NA                0.3611111   0.2040150   0.5182072
6 months    ki1000108-IRC              INDIA                          4+                   NA                0.6470588   0.4196108   0.8745069
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.3181818   0.2694913   0.3668723
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2                    NA                0.3333333   0.2660812   0.4005855
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     3                    NA                0.2403846   0.1582026   0.3225666
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                0.2857143   0.1928338   0.3785948
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.3589744   0.2082899   0.5096588
6 months    ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.2966102   0.2141239   0.3790964
6 months    ki1113344-GMS-Nepal        NEPAL                          3                    NA                0.3169014   0.2403081   0.3934947
6 months    ki1113344-GMS-Nepal        NEPAL                          4+                   NA                0.2537313   0.2015880   0.3058747
6 months    ki1114097-CONTENT          PERU                           1                    NA                0.2954545   0.1603301   0.4305790
6 months    ki1114097-CONTENT          PERU                           2                    NA                0.1481481   0.0531766   0.2431197
6 months    ki1114097-CONTENT          PERU                           3                    NA                0.2051282   0.0781032   0.3321533
6 months    ki1114097-CONTENT          PERU                           4+                   NA                0.2435897   0.1481078   0.3390717
12 months   ki0047075b-MAL-ED          INDIA                          1                    NA                0.3809524   0.2768809   0.4850239
12 months   ki0047075b-MAL-ED          INDIA                          2                    NA                0.5897436   0.4803515   0.6991357
12 months   ki0047075b-MAL-ED          INDIA                          3                    NA                0.4583333   0.3170762   0.5995904
12 months   ki0047075b-MAL-ED          INDIA                          4+                   NA                0.4800000   0.2837424   0.6762576
12 months   ki0047075b-MAL-ED          PERU                           1                    NA                0.6842105   0.4748134   0.8936077
12 months   ki0047075b-MAL-ED          PERU                           2                    NA                0.5400000   0.4015973   0.6784027
12 months   ki0047075b-MAL-ED          PERU                           3                    NA                0.4516129   0.3275092   0.5757166
12 months   ki0047075b-MAL-ED          PERU                           4+                   NA                0.5179856   0.4347642   0.6012071
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.5000000   0.2375737   0.7624263
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                0.5000000   0.2906563   0.7093437
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                0.5000000   0.2995686   0.7004314
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                0.4564103   0.3863620   0.5264585
12 months   ki1000108-IRC              INDIA                          1                    NA                0.5054348   0.4331047   0.5777649
12 months   ki1000108-IRC              INDIA                          2                    NA                0.5058824   0.4306336   0.5811311
12 months   ki1000108-IRC              INDIA                          3                    NA                0.4571429   0.2919017   0.6223841
12 months   ki1000108-IRC              INDIA                          4+                   NA                0.7058824   0.4890192   0.9227455
12 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.3464203   0.3015652   0.3912754
12 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.3092784   0.2172238   0.4013329
12 months   ki1017093b-PROVIDE         BANGLADESH                     3                    NA                0.2982456   0.1793825   0.4171087
12 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                0.2272727   0.0520137   0.4025318
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.4075145   0.3557039   0.4593250
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                    NA                0.3829787   0.3134435   0.4525139
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                    NA                0.2884615   0.2013305   0.3755925
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                0.3736264   0.2741635   0.4730892
12 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.4750000   0.3201119   0.6298881
12 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.4758065   0.3878289   0.5637840
12 months   ki1113344-GMS-Nepal        NEPAL                          3                    NA                0.4755245   0.3936021   0.5574469
12 months   ki1113344-GMS-Nepal        NEPAL                          4+                   NA                0.4327273   0.3741191   0.4913355
12 months   ki1114097-CONTENT          PERU                           1                    NA                0.3409091   0.2005224   0.4812958
12 months   ki1114097-CONTENT          PERU                           2                    NA                0.1666667   0.0670350   0.2662983
12 months   ki1114097-CONTENT          PERU                           3                    NA                0.2051282   0.0781032   0.3321533
12 months   ki1114097-CONTENT          PERU                           4+                   NA                0.2820513   0.1819536   0.3821489
12 months   ki1135781-COHORTS          INDIA                          1                    NA                0.4657660   0.4486331   0.4828990
12 months   ki1135781-COHORTS          INDIA                          2                    NA                0.2878278   0.2648137   0.3108420
12 months   ki1135781-COHORTS          INDIA                          3                    NA                0.2554348   0.1924154   0.3184541
12 months   ki1135781-COHORTS          INDIA                          4+                   NA                0.1808511   0.1030350   0.2586671
18 months   ki0047075b-MAL-ED          INDIA                          1                    NA                0.4819277   0.3741955   0.5896599
18 months   ki0047075b-MAL-ED          INDIA                          2                    NA                0.7027027   0.5983355   0.8070699
18 months   ki0047075b-MAL-ED          INDIA                          3                    NA                0.5531915   0.4107462   0.6956367
18 months   ki0047075b-MAL-ED          INDIA                          4+                   NA                0.6000000   0.4075429   0.7924571
18 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                0.3061224   0.1767979   0.4354470
18 months   ki0047075b-MAL-ED          NEPAL                          2                    NA                0.2580645   0.1036968   0.4124323
18 months   ki0047075b-MAL-ED          NEPAL                          3                    NA                0.4545455   0.2460259   0.6630650
18 months   ki0047075b-MAL-ED          NEPAL                          4+                   NA                0.2713178   0.1944219   0.3482138
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.6428571   0.3913643   0.8943500
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                0.5238095   0.3097774   0.7378416
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                0.5833333   0.3857007   0.7809660
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                0.5492228   0.4788851   0.6195605
18 months   ki1000108-IRC              INDIA                          1                    NA                0.5621622   0.4905835   0.6337409
18 months   ki1000108-IRC              INDIA                          2                    NA                0.5647059   0.4900850   0.6393268
18 months   ki1000108-IRC              INDIA                          3                    NA                0.5142857   0.3485024   0.6800691
18 months   ki1000108-IRC              INDIA                          4+                   NA                0.7058824   0.4890198   0.9227449
18 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.4345794   0.3875785   0.4815804
18 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.3958333   0.2979279   0.4937388
18 months   ki1017093b-PROVIDE         BANGLADESH                     3                    NA                0.3793103   0.2543338   0.5042869
18 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                0.2727273   0.0864716   0.4589829
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.4866469   0.4332455   0.5400482
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                    NA                0.4540541   0.3822590   0.5258491
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                    NA                0.3039216   0.2145989   0.3932443
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                0.4175824   0.3161867   0.5189781
18 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.6666667   0.5185895   0.8147439
18 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.6333333   0.5470379   0.7196288
18 months   ki1113344-GMS-Nepal        NEPAL                          3                    NA                0.6223776   0.5428506   0.7019046
18 months   ki1113344-GMS-Nepal        NEPAL                          4+                   NA                0.6139706   0.5560642   0.6718769
18 months   ki1114097-CONTENT          PERU                           1                    NA                0.3409091   0.2005208   0.4812974
18 months   ki1114097-CONTENT          PERU                           2                    NA                0.2037037   0.0960311   0.3113763
18 months   ki1114097-CONTENT          PERU                           3                    NA                0.2564103   0.1190480   0.3937725
18 months   ki1114097-CONTENT          PERU                           4+                   NA                0.3116883   0.2079898   0.4153869
24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                0.5487805   0.4408389   0.6567221
24 months   ki0047075b-MAL-ED          INDIA                          2                    NA                0.7432432   0.6434932   0.8429933
24 months   ki0047075b-MAL-ED          INDIA                          3                    NA                0.5531915   0.4107449   0.6956381
24 months   ki0047075b-MAL-ED          INDIA                          4+                   NA                0.6400000   0.4514295   0.8285705
24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                0.3750000   0.2377433   0.5122567
24 months   ki0047075b-MAL-ED          NEPAL                          2                    NA                0.2903226   0.1301868   0.4504584
24 months   ki0047075b-MAL-ED          NEPAL                          3                    NA                0.4545455   0.2460220   0.6630690
24 months   ki0047075b-MAL-ED          NEPAL                          4+                   NA                0.3359375   0.2539350   0.4179400
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                0.6153846   0.3503746   0.8803946
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                0.6500000   0.4405295   0.8594705
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                0.7391304   0.5593032   0.9189577
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   NA                0.5967742   0.5261311   0.6674173
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.5024390   0.4540001   0.5508779
24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    NA                0.4408602   0.3398673   0.5418531
24 months   ki1017093b-PROVIDE         BANGLADESH                     3                    NA                0.4561404   0.3267277   0.5855530
24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   NA                0.3181818   0.1233849   0.5129788
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                0.5644599   0.5070509   0.6218690
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                    NA                0.5059524   0.4302908   0.5816140
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                    NA                0.3763441   0.2778037   0.4748845
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   NA                0.4186047   0.3142578   0.5229515
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                0.7250000   0.5865044   0.8634956
24 months   ki1113344-GMS-Nepal        NEPAL                          2                    NA                0.6991870   0.6180679   0.7803061
24 months   ki1113344-GMS-Nepal        NEPAL                          3                    NA                0.6690647   0.5907707   0.7473588
24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   NA                0.6917293   0.6361870   0.7472717
24 months   ki1114097-CONTENT          PERU                           1                    NA                0.3421053   0.1908817   0.4933288
24 months   ki1114097-CONTENT          PERU                           2                    NA                0.2400000   0.1213192   0.3586808
24 months   ki1114097-CONTENT          PERU                           3                    NA                0.2631579   0.1227936   0.4035222
24 months   ki1114097-CONTENT          PERU                           4+                   NA                0.3098592   0.2020204   0.4176979


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki0047075b-MAL-ED          PERU                           NA                   NA                0.3455882   0.3395922   0.3515843
3 months    ki1000108-IRC              INDIA                          NA                   NA                0.3186275   0.3151614   0.3220935
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1596306   0.1578774   0.1613838
3 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1585160   0.1565521   0.1604800
3 months    ki1114097-CONTENT          PERU                           NA                   NA                0.1627907   0.1587789   0.1668025
3 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.1906412   0.1895266   0.1917559
6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.3404255   0.3328641   0.3479869
6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                0.4464945   0.4399046   0.4530843
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.3882353   0.3852793   0.3911913
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4080000   0.3995073   0.4164927
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.5122616   0.5087058   0.5158174
6 months    ki1000108-IRC              INDIA                          NA                   NA                0.4261084   0.4212623   0.4309545
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.3070652   0.3048713   0.3092591
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.2857143   0.2829560   0.2884725
6 months    ki1114097-CONTENT          PERU                           NA                   NA                0.2232558   0.2163027   0.2302089
12 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.4765957   0.4654344   0.4877571
12 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.5185185   0.5119238   0.5251133
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.4666667   0.4643928   0.4689406
12 months   ki1000108-IRC              INDIA                          NA                   NA                0.5098522   0.5056474   0.5140570
12 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3316913   0.3295395   0.3338431
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.3799726   0.3771016   0.3828436
12 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.4553265   0.4535872   0.4570657
12 months   ki1114097-CONTENT          PERU                           NA                   NA                0.2511628   0.2425088   0.2598168
12 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.4000398   0.3975358   0.4025438
18 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.5807860   0.5687895   0.5927826
18 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.2943723   0.2873573   0.3013873
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.5555556   0.5524961   0.5586150
18 months   ki1000108-IRC              INDIA                          NA                   NA                0.5651106   0.5619528   0.5682683
18 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.4172185   0.4144713   0.4199658
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.4433566   0.4388523   0.4478610
18 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.6236934   0.6225644   0.6248224
18 months   ki1114097-CONTENT          PERU                           NA                   NA                0.2803738   0.2734031   0.2873445
24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.6228070   0.6113845   0.6342296
24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.3493450   0.3438790   0.3548109
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.6157025   0.6103156   0.6210893
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.4810997   0.4778029   0.4843965
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.5015773   0.4960526   0.5071020
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.6901408   0.6889390   0.6913426
24 months   ki1114097-CONTENT          PERU                           NA                   NA                0.2893401   0.2840296   0.2946506


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki0047075b-MAL-ED          PERU                           1                    1                 1.0000000   1.0000000   1.0000000
3 months    ki0047075b-MAL-ED          PERU                           2                    1                 0.6576923   0.3726646   1.1607198
3 months    ki0047075b-MAL-ED          PERU                           3                    1                 0.6435484   0.3707732   1.1170023
3 months    ki0047075b-MAL-ED          PERU                           4+                   1                 0.6151079   0.3766478   1.0045399
3 months    ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
3 months    ki1000108-IRC              INDIA                          2                    1                 1.0882353   0.8008023   1.4788371
3 months    ki1000108-IRC              INDIA                          3                    1                 0.9176587   0.5184272   1.6243314
3 months    ki1000108-IRC              INDIA                          4+                   1                 1.5546218   0.8967031   2.6952612
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     2                    1                 0.9934555   0.6778969   1.4559054
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     3                    1                 0.6081731   0.3331209   1.1103310
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+                   1                 0.7868421   0.4529207   1.3669512
3 months    ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
3 months    ki1113344-GMS-Nepal        NEPAL                          2                    1                 0.8759766   0.4260380   1.8010950
3 months    ki1113344-GMS-Nepal        NEPAL                          3                    1                 0.8506711   0.4181095   1.7307462
3 months    ki1113344-GMS-Nepal        NEPAL                          4+                   1                 0.6511733   0.3274831   1.2948045
3 months    ki1114097-CONTENT          PERU                           1                    1                 1.0000000   1.0000000   1.0000000
3 months    ki1114097-CONTENT          PERU                           2                    1                 0.6111111   0.2286479   1.6333269
3 months    ki1114097-CONTENT          PERU                           3                    1                 0.9871795   0.3932608   2.4780588
3 months    ki1114097-CONTENT          PERU                           4+                   1                 0.9871795   0.4489344   2.1707479
3 months    ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
3 months    ki1135781-COHORTS          INDIA                          2                    1                 0.6265703   0.5439359   0.7217584
3 months    ki1135781-COHORTS          INDIA                          3                    1                 0.5800074   0.3970341   0.8473039
3 months    ki1135781-COHORTS          INDIA                          4+                   1                 0.4498407   0.2489207   0.8129363
6 months    ki0047075b-MAL-ED          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED          INDIA                          2                    1                 1.3668639   0.9051379   2.0641241
6 months    ki0047075b-MAL-ED          INDIA                          3                    1                 0.9423077   0.5460799   1.6260327
6 months    ki0047075b-MAL-ED          INDIA                          4+                   1                 0.9046154   0.4462702   1.8337075
6 months    ki0047075b-MAL-ED          PERU                           1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED          PERU                           2                    1                 0.7450980   0.4746063   1.1697508
6 months    ki0047075b-MAL-ED          PERU                           3                    1                 0.6384409   0.4035573   1.0100343
6 months    ki0047075b-MAL-ED          PERU                           4+                   1                 0.6834532   0.4610867   1.0130596
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                 1.0181818   0.4156665   2.4940530
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                 1.2833333   0.5606594   2.9375133
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   1                 1.0769231   0.5209104   2.2264160
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                 1.3206349   0.6359463   2.7424902
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                 0.8272727   0.3813018   1.7948517
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4+                   1                 1.0592593   0.5126671   2.1886137
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                    1                 0.9519231   0.7569524   1.1971130
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                    1                 0.8057714   0.5728130   1.1334719
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          4+                   1                 0.9339623   0.5440511   1.6033155
6 months    ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1000108-IRC              INDIA                          2                    1                 1.0339783   0.8097926   1.3202285
6 months    ki1000108-IRC              INDIA                          3                    1                 0.8695175   0.5446207   1.3882337
6 months    ki1000108-IRC              INDIA                          4+                   1                 1.5580495   1.0534222   2.3044115
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2                    1                 1.0476190   0.8132594   1.3495149
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     3                    1                 0.7554945   0.5194703   1.0987577
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     4+                   1                 0.8979592   0.6269244   1.2861689
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          2                    1                 0.8262712   0.4993944   1.3671041
6 months    ki1113344-GMS-Nepal        NEPAL                          3                    1                 0.8827968   0.5438760   1.4329189
6 months    ki1113344-GMS-Nepal        NEPAL                          4+                   1                 0.7068230   0.4429295   1.1279420
6 months    ki1114097-CONTENT          PERU                           1                    1                 1.0000000   1.0000000   1.0000000
6 months    ki1114097-CONTENT          PERU                           2                    1                 0.5014245   0.2281439   1.1020526
6 months    ki1114097-CONTENT          PERU                           3                    1                 0.6942801   0.3215170   1.4992205
6 months    ki1114097-CONTENT          PERU                           4+                   1                 0.8244576   0.4514153   1.5057760
12 months   ki0047075b-MAL-ED          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
12 months   ki0047075b-MAL-ED          INDIA                          2                    1                 1.5480769   1.1127159   2.1537772
12 months   ki0047075b-MAL-ED          INDIA                          3                    1                 1.2031250   0.7969817   1.8162397
12 months   ki0047075b-MAL-ED          INDIA                          4+                   1                 1.2600000   0.7705690   2.0602958
12 months   ki0047075b-MAL-ED          PERU                           1                    1                 1.0000000   1.0000000   1.0000000
12 months   ki0047075b-MAL-ED          PERU                           2                    1                 0.7892308   0.5294663   1.1764398
12 months   ki0047075b-MAL-ED          PERU                           3                    1                 0.6600496   0.4374679   0.9958800
12 months   ki0047075b-MAL-ED          PERU                           4+                   1                 0.7570559   0.5358136   1.0696512
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                 1.0000000   1.0000000   1.0000000
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                 1.0000000   0.5109959   1.9569627
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                 1.0000000   0.5166317   1.9356147
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   1                 0.9128205   0.5283227   1.5771446
12 months   ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
12 months   ki1000108-IRC              INDIA                          2                    1                 1.0008855   0.8142205   1.2303447
12 months   ki1000108-IRC              INDIA                          3                    1                 0.9044547   0.6131258   1.3342096
12 months   ki1000108-IRC              INDIA                          4+                   1                 1.3965844   0.9951243   1.9600044
12 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
12 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                 0.8927835   0.6453267   1.2351300
12 months   ki1017093b-PROVIDE         BANGLADESH                     3                    1                 0.8609357   0.5662143   1.3090630
12 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   1                 0.6560606   0.3001608   1.4339497
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                    1                 0.9397918   0.7529557   1.1729888
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                    1                 0.7078560   0.5100558   0.9823633
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   1                 0.9168420   0.6826103   1.2314483
12 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
12 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                 1.0016978   0.6885553   1.4572517
12 months   ki1113344-GMS-Nepal        NEPAL                          3                    1                 1.0011042   0.6923325   1.4475842
12 months   ki1113344-GMS-Nepal        NEPAL                          4+                   1                 0.9110048   0.6399941   1.2967772
12 months   ki1114097-CONTENT          PERU                           1                    1                 1.0000000   1.0000000   1.0000000
12 months   ki1114097-CONTENT          PERU                           2                    1                 0.4888889   0.2365676   1.0103344
12 months   ki1114097-CONTENT          PERU                           3                    1                 0.6017094   0.2860319   1.2657827
12 months   ki1114097-CONTENT          PERU                           4+                   1                 0.8273504   0.4803924   1.4248950
12 months   ki1135781-COHORTS          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
12 months   ki1135781-COHORTS          INDIA                          2                    1                 0.6179666   0.5659020   0.6748213
12 months   ki1135781-COHORTS          INDIA                          3                    1                 0.5484186   0.4273476   0.7037901
12 months   ki1135781-COHORTS          INDIA                          4+                   1                 0.3882874   0.2521184   0.5980009
18 months   ki0047075b-MAL-ED          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
18 months   ki0047075b-MAL-ED          INDIA                          2                    1                 1.4581081   1.1148879   1.9069892
18 months   ki0047075b-MAL-ED          INDIA                          3                    1                 1.1478723   0.8162098   1.6143041
18 months   ki0047075b-MAL-ED          INDIA                          4+                   1                 1.2450000   0.8421156   1.8406320
18 months   ki0047075b-MAL-ED          NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
18 months   ki0047075b-MAL-ED          NEPAL                          2                    1                 0.8430108   0.4053149   1.7533706
18 months   ki0047075b-MAL-ED          NEPAL                          3                    1                 1.4848485   0.7958695   2.7702721
18 months   ki0047075b-MAL-ED          NEPAL                          4+                   1                 0.8863049   0.5329030   1.4740701
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                 1.0000000   1.0000000   1.0000000
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                 0.8148148   0.4627886   1.4346142
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                 0.9074074   0.5408099   1.5225095
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   1                 0.8543466   0.5660582   1.2894576
18 months   ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
18 months   ki1000108-IRC              INDIA                          2                    1                 1.0045249   0.8361151   1.2068556
18 months   ki1000108-IRC              INDIA                          3                    1                 0.9148352   0.6468742   1.2937961
18 months   ki1000108-IRC              INDIA                          4+                   1                 1.2556561   0.9004110   1.7510584
18 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
18 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                 0.9108423   0.6953517   1.1931138
18 months   ki1017093b-PROVIDE         BANGLADESH                     3                    1                 0.8728217   0.6170507   1.2346112
18 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   1                 0.6275660   0.3143166   1.2530013
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                    1                 0.9330257   0.7696734   1.1310473
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                    1                 0.6245218   0.4563538   0.8546602
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   1                 0.8580809   0.6573642   1.1200836
18 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
18 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                 0.9500000   0.7320754   1.2327965
18 months   ki1113344-GMS-Nepal        NEPAL                          3                    1                 0.9335664   0.7225338   1.2062360
18 months   ki1113344-GMS-Nepal        NEPAL                          4+                   1                 0.9209559   0.7235009   1.1722994
18 months   ki1114097-CONTENT          PERU                           1                    1                 1.0000000   1.0000000   1.0000000
18 months   ki1114097-CONTENT          PERU                           2                    1                 0.5975309   0.3057446   1.1677823
18 months   ki1114097-CONTENT          PERU                           3                    1                 0.7521368   0.3826869   1.4782573
18 months   ki1114097-CONTENT          PERU                           4+                   1                 0.9142857   0.5384718   1.5523902
24 months   ki0047075b-MAL-ED          INDIA                          1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          INDIA                          2                    1                 1.3543544   1.0673791   1.7184857
24 months   ki0047075b-MAL-ED          INDIA                          3                    1                 1.0080378   0.7290429   1.3938005
24 months   ki0047075b-MAL-ED          INDIA                          4+                   1                 1.1662222   0.8183273   1.6620175
24 months   ki0047075b-MAL-ED          NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          NEPAL                          2                    1                 0.7741935   0.3993543   1.5008621
24 months   ki0047075b-MAL-ED          NEPAL                          3                    1                 1.2121212   0.6740149   2.1798298
24 months   ki0047075b-MAL-ED          NEPAL                          4+                   1                 0.8958333   0.5769794   1.3908943
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                 1.0562500   0.6168399   1.8086769
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                 1.2010870   0.7324291   1.9696239
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4+                   1                 0.9697581   0.6204420   1.5157431
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     2                    1                 0.8774402   0.6843488   1.1250131
24 months   ki1017093b-PROVIDE         BANGLADESH                     3                    1                 0.9078522   0.6727922   1.2250373
24 months   ki1017093b-PROVIDE         BANGLADESH                     4+                   1                 0.6332745   0.3407472   1.1769330
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2                    1                 0.8963477   0.7480554   1.0740371
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     3                    1                 0.6667330   0.5034550   0.8829646
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     4+                   1                 0.7416021   0.5665637   0.9707182
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          2                    1                 0.9643959   0.7712416   1.2059248
24 months   ki1113344-GMS-Nepal        NEPAL                          3                    1                 0.9228479   0.7376305   1.1545730
24 months   ki1113344-GMS-Nepal        NEPAL                          4+                   1                 0.9541094   0.7755409   1.1737934
24 months   ki1114097-CONTENT          PERU                           1                    1                 1.0000000   1.0000000   1.0000000
24 months   ki1114097-CONTENT          PERU                           2                    1                 0.7015385   0.3614062   1.3617814
24 months   ki1114097-CONTENT          PERU                           3                    1                 0.7692308   0.3847698   1.5378441
24 months   ki1114097-CONTENT          PERU                           4+                   1                 0.9057421   0.5160245   1.5897866


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
3 months    ki0047075b-MAL-ED          PERU                           1                    NA                -0.1807276   -0.4057330    0.0442779
3 months    ki1000108-IRC              INDIA                          1                    NA                 0.0159247   -0.0504504    0.0822998
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0142824   -0.0530737    0.0245088
3 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0466122   -0.1734637    0.0802393
3 months    ki1114097-CONTENT          PERU                           1                    NA                -0.0190275   -0.1333272    0.0952723
3 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.0294587   -0.0434248   -0.0154925
6 months    ki0047075b-MAL-ED          INDIA                          1                    NA                 0.0309017   -0.0684595    0.1302630
6 months    ki0047075b-MAL-ED          PERU                           1                    NA                -0.1850845   -0.4024846    0.0323156
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.0310924   -0.2204119    0.2825968
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0233846   -0.2417438    0.2885131
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.0230920   -0.0927476    0.0465637
6 months    ki1000108-IRC              INDIA                          1                    NA                 0.0108078   -0.0608397    0.0824554
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0111166   -0.0598565    0.0376233
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0732601   -0.2239698    0.0774496
6 months    ki1114097-CONTENT          PERU                           1                    NA                -0.0721987   -0.2075020    0.0631045
12 months   ki0047075b-MAL-ED          INDIA                          1                    NA                 0.0956434   -0.0090249    0.2003117
12 months   ki0047075b-MAL-ED          PERU                           1                    NA                -0.1656920   -0.3751930    0.0438089
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.0333333   -0.2957695    0.2291028
12 months   ki1000108-IRC              INDIA                          1                    NA                 0.0044174   -0.0680348    0.0768696
12 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0147290   -0.0596357    0.0301777
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0275419   -0.0794320    0.0243482
12 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0196735   -0.1745714    0.1352243
12 months   ki1114097-CONTENT          PERU                           1                    NA                -0.0897463   -0.2303995    0.0509069
12 months   ki1135781-COHORTS          INDIA                          1                    NA                -0.0657262   -0.0830412   -0.0484113
18 months   ki0047075b-MAL-ED          INDIA                          1                    NA                 0.0988583   -0.0095398    0.2072564
18 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.0117502   -0.1412649    0.1177646
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.0873016   -0.3388131    0.1642099
18 months   ki1000108-IRC              INDIA                          1                    NA                 0.0029484   -0.0686999    0.0745967
18 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0173609   -0.0644420    0.0297202
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0432902   -0.0968812    0.0103007
18 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0429733   -0.1910548    0.1051082
18 months   ki1114097-CONTENT          PERU                           1                    NA                -0.0605353   -0.2010965    0.0800260
24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                 0.0740265   -0.0345178    0.1825708
24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.0256550   -0.1630205    0.1117104
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.0003179   -0.2647469    0.2653826
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0213394   -0.0698903    0.0272116
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0628826   -0.1205569   -0.0052084
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0348592   -0.1733600    0.1036417
24 months   ki1114097-CONTENT          PERU                           1                    NA                -0.0527652   -0.2040819    0.0985516


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
3 months    ki0047075b-MAL-ED          PERU                           1                    NA                -0.5229563   -1.3358222    0.0070323
3 months    ki1000108-IRC              INDIA                          1                    NA                 0.0499792   -0.1829063    0.2370152
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0894718   -0.3617699    0.1283779
3 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.2940535   -1.4018290    0.3027920
3 months    ki1114097-CONTENT          PERU                           1                    NA                -0.1168831   -1.0944404    0.4044099
3 months    ki1135781-COHORTS          INDIA                          1                    NA                -0.1545241   -0.2302397   -0.0834684
6 months    ki0047075b-MAL-ED          INDIA                          1                    NA                 0.0907738   -0.2531881    0.3403286
6 months    ki0047075b-MAL-ED          PERU                           1                    NA                -0.4145281   -0.9960515   -0.0024238
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.0800866   -0.8602837    0.5451013
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0573152   -0.8781199    0.5268382
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.0450784   -0.1903163    0.0824380
6 months    ki1000108-IRC              INDIA                          1                    NA                 0.0253640   -0.1581324    0.1797870
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0362027   -0.2077471    0.1109760
6 months    ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.2564103   -0.9119689    0.1743764
6 months    ki1114097-CONTENT          PERU                           1                    NA                -0.3233902   -1.0930037    0.1632306
12 months   ki0047075b-MAL-ED          INDIA                          1                    NA                 0.2006803   -0.0514765    0.3923668
12 months   ki0047075b-MAL-ED          PERU                           1                    NA                -0.3195489   -0.7924727    0.0285993
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.0714286   -0.8109798    0.3661116
12 months   ki1000108-IRC              INDIA                          1                    NA                 0.0086641   -0.1441251    0.1410495
12 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0444058   -0.1889759    0.0825856
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0724839   -0.2181578    0.0557695
12 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0432075   -0.4454240    0.2470846
12 months   ki1114097-CONTENT          PERU                           1                    NA                -0.3573232   -1.0518762    0.1021260
12 months   ki1135781-COHORTS          INDIA                          1                    NA                -0.1642992   -0.2085636   -0.1216560
18 months   ki0047075b-MAL-ED          INDIA                          1                    NA                 0.1702147   -0.0386360    0.3370693
18 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.0399160   -0.5876768    0.3188631
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.1571429   -0.7112153    0.2175271
18 months   ki1000108-IRC              INDIA                          1                    NA                 0.0052174   -0.1300016    0.1242557
18 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0416110   -0.1608140    0.0653511
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.0976420   -0.2255219    0.0168939
18 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0689013   -0.3347640    0.1440060
18 months   ki1114097-CONTENT          PERU                           1                    NA                -0.2159091   -0.8368413    0.1951210
24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                 0.1188595   -0.0735905    0.2768112
24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.0734375   -0.5483938    0.2558301
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.0005163   -0.5375860    0.3503012
24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                -0.0443554   -0.1503321    0.0518579
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                    NA                -0.1253698   -0.2465909   -0.0159364
24 months   ki1113344-GMS-Nepal        NEPAL                          1                    NA                -0.0505102   -0.2716463    0.1321709
24 months   ki1114097-CONTENT          PERU                           1                    NA                -0.1823638   -0.8403111    0.2403544
