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

**Intervention Variable:** fage

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        A             n     nA   nAY0   nAY1
----------  -------------------------  -----------------------------  --------  -----  -----  -----  -----
3 months    ki0047075b-MAL-ED          BANGLADESH                     >=35        151    102     77     25
3 months    ki0047075b-MAL-ED          BANGLADESH                     <25         151      0      0      0
3 months    ki0047075b-MAL-ED          BANGLADESH                     [25-30)     151     14      7      7
3 months    ki0047075b-MAL-ED          BANGLADESH                     [30-35)     151     35     29      6
3 months    ki0047075b-MAL-ED          BRAZIL                         >=35         79     40     36      4
3 months    ki0047075b-MAL-ED          BRAZIL                         <25          79      3      2      1
3 months    ki0047075b-MAL-ED          BRAZIL                         [25-30)      79      8      8      0
3 months    ki0047075b-MAL-ED          BRAZIL                         [30-35)      79     28     21      7
3 months    ki0047075b-MAL-ED          INDIA                          >=35        161     71     52     19
3 months    ki0047075b-MAL-ED          INDIA                          <25         161      3      1      2
3 months    ki0047075b-MAL-ED          INDIA                          [25-30)     161     27     20      7
3 months    ki0047075b-MAL-ED          INDIA                          [30-35)     161     60     43     17
3 months    ki0047075b-MAL-ED          NEPAL                          >=35         79     38     32      6
3 months    ki0047075b-MAL-ED          NEPAL                          <25          79      0      0      0
3 months    ki0047075b-MAL-ED          NEPAL                          [25-30)      79     10      9      1
3 months    ki0047075b-MAL-ED          NEPAL                          [30-35)      79     31     26      5
3 months    ki0047075b-MAL-ED          PERU                           >=35         85     45     31     14
3 months    ki0047075b-MAL-ED          PERU                           <25          85      5      3      2
3 months    ki0047075b-MAL-ED          PERU                           [25-30)      85     18     12      6
3 months    ki0047075b-MAL-ED          PERU                           [30-35)      85     17      8      9
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=35         90     75     58     17
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <25          90      1      1      0
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)      90      6      4      2
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [30-35)      90      8      7      1
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=35        100     65     44     21
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25         100      2      0      2
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)     100      6      1      5
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [30-35)     100     27     21      6
3 months    ki1000304b-SAS-CompFeed    INDIA                          >=35        468     42     26     16
3 months    ki1000304b-SAS-CompFeed    INDIA                          <25         468    129     82     47
3 months    ki1000304b-SAS-CompFeed    INDIA                          [25-30)     468    211    148     63
3 months    ki1000304b-SAS-CompFeed    INDIA                          [30-35)     468     86     57     29
3 months    ki1119695-PROBIT           BELARUS                        >=35       7811    777    726     51
3 months    ki1119695-PROBIT           BELARUS                        <25        7811   2620   2405    215
3 months    ki1119695-PROBIT           BELARUS                        [25-30)    7811   2923   2720    203
3 months    ki1119695-PROBIT           BELARUS                        [30-35)    7811   1491   1398     93
3 months    ki1135781-COHORTS          GUATEMALA                      >=35        492    198    139     59
3 months    ki1135781-COHORTS          GUATEMALA                      <25         492     81     66     15
3 months    ki1135781-COHORTS          GUATEMALA                      [25-30)     492    106     80     26
3 months    ki1135781-COHORTS          GUATEMALA                      [30-35)     492    107     75     32
3 months    ki1135781-COHORTS          PHILIPPINES                    >=35       2949    541    448     93
3 months    ki1135781-COHORTS          PHILIPPINES                    <25        2949    805    674    131
3 months    ki1135781-COHORTS          PHILIPPINES                    [25-30)    2949    954    831    123
3 months    ki1135781-COHORTS          PHILIPPINES                    [30-35)    2949    649    565     84
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=35        151    102     74     28
6 months    ki0047075b-MAL-ED          BANGLADESH                     <25         151      0      0      0
6 months    ki0047075b-MAL-ED          BANGLADESH                     [25-30)     151     14      6      8
6 months    ki0047075b-MAL-ED          BANGLADESH                     [30-35)     151     35     22     13
6 months    ki0047075b-MAL-ED          BRAZIL                         >=35         79     40     35      5
6 months    ki0047075b-MAL-ED          BRAZIL                         <25          79      3      1      2
6 months    ki0047075b-MAL-ED          BRAZIL                         [25-30)      79      8      6      2
6 months    ki0047075b-MAL-ED          BRAZIL                         [30-35)      79     28     21      7
6 months    ki0047075b-MAL-ED          INDIA                          >=35        161     71     49     22
6 months    ki0047075b-MAL-ED          INDIA                          <25         161      3      1      2
6 months    ki0047075b-MAL-ED          INDIA                          [25-30)     161     27     19      8
6 months    ki0047075b-MAL-ED          INDIA                          [30-35)     161     60     38     22
6 months    ki0047075b-MAL-ED          NEPAL                          >=35         79     38     31      7
6 months    ki0047075b-MAL-ED          NEPAL                          <25          79      0      0      0
6 months    ki0047075b-MAL-ED          NEPAL                          [25-30)      79     10      8      2
6 months    ki0047075b-MAL-ED          NEPAL                          [30-35)      79     31     26      5
6 months    ki0047075b-MAL-ED          PERU                           >=35         84     45     29     16
6 months    ki0047075b-MAL-ED          PERU                           <25          84      5      2      3
6 months    ki0047075b-MAL-ED          PERU                           [25-30)      84     18     10      8
6 months    ki0047075b-MAL-ED          PERU                           [30-35)      84     16      6     10
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=35         90     75     49     26
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <25          90      1      1      0
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)      90      6      4      2
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [30-35)      90      8      7      1
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=35        100     65     38     27
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25         100      2      0      2
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)     100      6      1      5
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [30-35)     100     27     18      9
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=35        365     34     18     16
6 months    ki1000304b-SAS-CompFeed    INDIA                          <25         365     93     54     39
6 months    ki1000304b-SAS-CompFeed    INDIA                          [25-30)     365    169    104     65
6 months    ki1000304b-SAS-CompFeed    INDIA                          [30-35)     365     69     33     36
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=35        105     26     18      8
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <25         105     19      9     10
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)     105     35     22     13
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [30-35)     105     25     13     12
6 months    ki1119695-PROBIT           BELARUS                        >=35       7513    745    675     70
6 months    ki1119695-PROBIT           BELARUS                        <25        7513   2517   2238    279
6 months    ki1119695-PROBIT           BELARUS                        [25-30)    7513   2810   2536    274
6 months    ki1119695-PROBIT           BELARUS                        [30-35)    7513   1441   1302    139
6 months    ki1135781-COHORTS          GUATEMALA                      >=35        135     53     35     18
6 months    ki1135781-COHORTS          GUATEMALA                      <25         135     19     16      3
6 months    ki1135781-COHORTS          GUATEMALA                      [25-30)     135     31     21     10
6 months    ki1135781-COHORTS          GUATEMALA                      [30-35)     135     32     15     17
6 months    ki1135781-COHORTS          PHILIPPINES                    >=35       2716    508    362    146
6 months    ki1135781-COHORTS          PHILIPPINES                    <25        2716    736    525    211
6 months    ki1135781-COHORTS          PHILIPPINES                    [25-30)    2716    874    686    188
6 months    ki1135781-COHORTS          PHILIPPINES                    [30-35)    2716    598    465    133
6 months    ki1148112-LCNI-5           MALAWI                         >=35         38     13      9      4
6 months    ki1148112-LCNI-5           MALAWI                         <25          38     10      5      5
6 months    ki1148112-LCNI-5           MALAWI                         [25-30)      38     10      6      4
6 months    ki1148112-LCNI-5           MALAWI                         [30-35)      38      5      2      3
12 months   ki0047075b-MAL-ED          BANGLADESH                     >=35        151    102     63     39
12 months   ki0047075b-MAL-ED          BANGLADESH                     <25         151      0      0      0
12 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)     151     14      6      8
12 months   ki0047075b-MAL-ED          BANGLADESH                     [30-35)     151     35     16     19
12 months   ki0047075b-MAL-ED          BRAZIL                         >=35         79     40     32      8
12 months   ki0047075b-MAL-ED          BRAZIL                         <25          79      3      1      2
12 months   ki0047075b-MAL-ED          BRAZIL                         [25-30)      79      8      6      2
12 months   ki0047075b-MAL-ED          BRAZIL                         [30-35)      79     28     21      7
12 months   ki0047075b-MAL-ED          INDIA                          >=35        161     71     41     30
12 months   ki0047075b-MAL-ED          INDIA                          <25         161      3      0      3
12 months   ki0047075b-MAL-ED          INDIA                          [25-30)     161     27     12     15
12 months   ki0047075b-MAL-ED          INDIA                          [30-35)     161     60     31     29
12 months   ki0047075b-MAL-ED          NEPAL                          >=35         79     38     30      8
12 months   ki0047075b-MAL-ED          NEPAL                          <25          79      0      0      0
12 months   ki0047075b-MAL-ED          NEPAL                          [25-30)      79     10      8      2
12 months   ki0047075b-MAL-ED          NEPAL                          [30-35)      79     31     25      6
12 months   ki0047075b-MAL-ED          PERU                           >=35         83     45     26     19
12 months   ki0047075b-MAL-ED          PERU                           <25          83      5      1      4
12 months   ki0047075b-MAL-ED          PERU                           [25-30)      83     17      8      9
12 months   ki0047075b-MAL-ED          PERU                           [30-35)      83     16      3     13
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=35         90     75     43     32
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <25          90      1      1      0
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)      90      6      4      2
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [30-35)      90      8      4      4
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=35        100     65     21     44
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25         100      2      0      2
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)     100      6      1      5
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [30-35)     100     27     11     16
12 months   ki1000304b-SAS-CompFeed    INDIA                          >=35        423     33     12     21
12 months   ki1000304b-SAS-CompFeed    INDIA                          <25         423    116     47     69
12 months   ki1000304b-SAS-CompFeed    INDIA                          [25-30)     423    195     90    105
12 months   ki1000304b-SAS-CompFeed    INDIA                          [30-35)     423     79     26     53
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=35         99     24      3     21
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          <25          99     18      2     16
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)      99     31      6     25
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          [30-35)      99     26      4     22
12 months   ki1119695-PROBIT           BELARUS                        >=35       7638    760    656    104
12 months   ki1119695-PROBIT           BELARUS                        <25        7638   2555   2178    377
12 months   ki1119695-PROBIT           BELARUS                        [25-30)    7638   2856   2446    410
12 months   ki1119695-PROBIT           BELARUS                        [30-35)    7638   1467   1272    195
12 months   ki1135781-COHORTS          GUATEMALA                      >=35        536    214     63    151
12 months   ki1135781-COHORTS          GUATEMALA                      <25         536     85     26     59
12 months   ki1135781-COHORTS          GUATEMALA                      [25-30)     536    117     34     83
12 months   ki1135781-COHORTS          GUATEMALA                      [30-35)     536    120     27     93
12 months   ki1135781-COHORTS          PHILIPPINES                    >=35       2675    499    256    243
12 months   ki1135781-COHORTS          PHILIPPINES                    <25        2675    729    388    341
12 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)    2675    858    524    334
12 months   ki1135781-COHORTS          PHILIPPINES                    [30-35)    2675    589    332    257
12 months   ki1148112-LCNI-5           MALAWI                         >=35        104     35     20     15
12 months   ki1148112-LCNI-5           MALAWI                         <25         104     23     12     11
12 months   ki1148112-LCNI-5           MALAWI                         [25-30)     104     26     18      8
12 months   ki1148112-LCNI-5           MALAWI                         [30-35)     104     20     11      9
18 months   ki0047075b-MAL-ED          BANGLADESH                     >=35        151    102     52     50
18 months   ki0047075b-MAL-ED          BANGLADESH                     <25         151      0      0      0
18 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)     151     14      4     10
18 months   ki0047075b-MAL-ED          BANGLADESH                     [30-35)     151     35     10     25
18 months   ki0047075b-MAL-ED          BRAZIL                         >=35         79     40     32      8
18 months   ki0047075b-MAL-ED          BRAZIL                         <25          79      3      1      2
18 months   ki0047075b-MAL-ED          BRAZIL                         [25-30)      79      8      5      3
18 months   ki0047075b-MAL-ED          BRAZIL                         [30-35)      79     28     20      8
18 months   ki0047075b-MAL-ED          INDIA                          >=35        161     71     31     40
18 months   ki0047075b-MAL-ED          INDIA                          <25         161      3      0      3
18 months   ki0047075b-MAL-ED          INDIA                          [25-30)     161     27     11     16
18 months   ki0047075b-MAL-ED          INDIA                          [30-35)     161     60     25     35
18 months   ki0047075b-MAL-ED          NEPAL                          >=35         79     38     24     14
18 months   ki0047075b-MAL-ED          NEPAL                          <25          79      0      0      0
18 months   ki0047075b-MAL-ED          NEPAL                          [25-30)      79     10      5      5
18 months   ki0047075b-MAL-ED          NEPAL                          [30-35)      79     31     23      8
18 months   ki0047075b-MAL-ED          PERU                           >=35         83     45     16     29
18 months   ki0047075b-MAL-ED          PERU                           <25          83      5      0      5
18 months   ki0047075b-MAL-ED          PERU                           [25-30)      83     17      6     11
18 months   ki0047075b-MAL-ED          PERU                           [30-35)      83     16      3     13
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=35         90     75     36     39
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <25          90      1      1      0
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)      90      6      4      2
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [30-35)      90      8      4      4
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=35        100     65      8     57
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25         100      2      0      2
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)     100      6      1      5
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [30-35)     100     27      4     23
18 months   ki1000304b-SAS-CompFeed    INDIA                          >=35        414     31      9     22
18 months   ki1000304b-SAS-CompFeed    INDIA                          <25         414    115     38     77
18 months   ki1000304b-SAS-CompFeed    INDIA                          [25-30)     414    190     57    133
18 months   ki1000304b-SAS-CompFeed    INDIA                          [30-35)     414     78     21     57
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=35         93     23      3     20
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          <25          93     16      1     15
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)      93     33      4     29
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          [30-35)      93     21      2     19
18 months   ki1119695-PROBIT           BELARUS                        >=35       7201    714    606    108
18 months   ki1119695-PROBIT           BELARUS                        <25        7201   2413   2027    386
18 months   ki1119695-PROBIT           BELARUS                        [25-30)    7201   2686   2275    411
18 months   ki1119695-PROBIT           BELARUS                        [30-35)    7201   1388   1193    195
18 months   ki1135781-COHORTS          GUATEMALA                      >=35        432    170     28    142
18 months   ki1135781-COHORTS          GUATEMALA                      <25         432     66     12     54
18 months   ki1135781-COHORTS          GUATEMALA                      [25-30)     432     96     18     78
18 months   ki1135781-COHORTS          GUATEMALA                      [30-35)     432    100     17     83
18 months   ki1135781-COHORTS          PHILIPPINES                    >=35       2554    474    165    309
18 months   ki1135781-COHORTS          PHILIPPINES                    <25        2554    692    262    430
18 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)    2554    826    334    492
18 months   ki1135781-COHORTS          PHILIPPINES                    [30-35)    2554    562    211    351
18 months   ki1148112-LCNI-5           MALAWI                         >=35         91     31     13     18
18 months   ki1148112-LCNI-5           MALAWI                         <25          91     20      9     11
18 months   ki1148112-LCNI-5           MALAWI                         [25-30)      91     25     15     10
18 months   ki1148112-LCNI-5           MALAWI                         [30-35)      91     15     10      5
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=35        151    102     45     57
24 months   ki0047075b-MAL-ED          BANGLADESH                     <25         151      0      0      0
24 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)     151     14      4     10
24 months   ki0047075b-MAL-ED          BANGLADESH                     [30-35)     151     35      9     26
24 months   ki0047075b-MAL-ED          BRAZIL                         >=35         79     40     32      8
24 months   ki0047075b-MAL-ED          BRAZIL                         <25          79      3      1      2
24 months   ki0047075b-MAL-ED          BRAZIL                         [25-30)      79      8      5      3
24 months   ki0047075b-MAL-ED          BRAZIL                         [30-35)      79     28     20      8
24 months   ki0047075b-MAL-ED          INDIA                          >=35        161     71     28     43
24 months   ki0047075b-MAL-ED          INDIA                          <25         161      3      0      3
24 months   ki0047075b-MAL-ED          INDIA                          [25-30)     161     27     11     16
24 months   ki0047075b-MAL-ED          INDIA                          [30-35)     161     60     21     39
24 months   ki0047075b-MAL-ED          NEPAL                          >=35         79     38     23     15
24 months   ki0047075b-MAL-ED          NEPAL                          <25          79      0      0      0
24 months   ki0047075b-MAL-ED          NEPAL                          [25-30)      79     10      4      6
24 months   ki0047075b-MAL-ED          NEPAL                          [30-35)      79     31     22      9
24 months   ki0047075b-MAL-ED          PERU                           >=35         80     43     14     29
24 months   ki0047075b-MAL-ED          PERU                           <25          80      5      0      5
24 months   ki0047075b-MAL-ED          PERU                           [25-30)      80     16      5     11
24 months   ki0047075b-MAL-ED          PERU                           [30-35)      80     16      3     13
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=35         89     75     31     44
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <25          89      1      1      0
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)      89      6      4      2
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [30-35)      89      7      3      4
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=35        100     65      5     60
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25         100      2      0      2
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)     100      6      1      5
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [30-35)     100     27      2     25
24 months   ki1000304b-SAS-CompFeed    INDIA                          >=35         43      1      0      1
24 months   ki1000304b-SAS-CompFeed    INDIA                          <25          43     16      6     10
24 months   ki1000304b-SAS-CompFeed    INDIA                          [25-30)      43     18      5     13
24 months   ki1000304b-SAS-CompFeed    INDIA                          [30-35)      43      8      2      6
24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=35          9      1      0      1
24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <25           9      1      0      1
24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)       9      4      0      4
24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [30-35)       9      3      1      2
24 months   ki1119695-PROBIT           BELARUS                        >=35       1990    224    184     40
24 months   ki1119695-PROBIT           BELARUS                        <25        1990    658    535    123
24 months   ki1119695-PROBIT           BELARUS                        [25-30)    1990    719    553    166
24 months   ki1119695-PROBIT           BELARUS                        [30-35)    1990    389    312     77
24 months   ki1135781-COHORTS          GUATEMALA                      >=35        455    175     17    158
24 months   ki1135781-COHORTS          GUATEMALA                      <25         455     78     10     68
24 months   ki1135781-COHORTS          GUATEMALA                      [25-30)     455    103      8     95
24 months   ki1135781-COHORTS          GUATEMALA                      [30-35)     455     99     11     88
24 months   ki1135781-COHORTS          PHILIPPINES                    >=35       2486    453    102    351
24 months   ki1135781-COHORTS          PHILIPPINES                    <25        2486    679    161    518
24 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)    2486    807    211    596
24 months   ki1135781-COHORTS          PHILIPPINES                    [30-35)    2486    547    137    410
24 months   ki1148112-LCNI-5           MALAWI                         >=35         96     35     12     23
24 months   ki1148112-LCNI-5           MALAWI                         <25          96     17      6     11
24 months   ki1148112-LCNI-5           MALAWI                         [25-30)      96     25     13     12
24 months   ki1148112-LCNI-5           MALAWI                         [30-35)      96     19      6     13


The following strata were considered:

* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 12 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 12 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 12 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 12 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 12 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 18 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 18 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 18 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 18 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 18 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 3 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 3 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 3 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots

```
## Warning: Removed 36 rows containing missing values (geom_errorbar).
```

![](/tmp/e55d1630-95ab-4198-ac0c-5e73b147d967/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->


```
## Warning: Removed 49 rows containing missing values (geom_errorbar).
```

![](/tmp/e55d1630-95ab-4198-ac0c-5e73b147d967/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


```
## Warning: Removed 9 rows containing missing values (geom_errorbar).
```

![](/tmp/e55d1630-95ab-4198-ac0c-5e73b147d967/REPORT_files/figure-html/plot_paf-1.png)<!-- -->


```
## Warning: Removed 9 rows containing missing values (geom_errorbar).
```

![](/tmp/e55d1630-95ab-4198-ac0c-5e73b147d967/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki1000304b-SAS-CompFeed    INDIA         >=35                 NA                0.3809524          NA          NA
3 months    ki1000304b-SAS-CompFeed    INDIA         <25                  NA                0.3643411          NA          NA
3 months    ki1000304b-SAS-CompFeed    INDIA         [25-30)              NA                0.2985782          NA          NA
3 months    ki1000304b-SAS-CompFeed    INDIA         [30-35)              NA                0.3372093          NA          NA
3 months    ki1119695-PROBIT           BELARUS       >=35                 NA                0.0656371          NA          NA
3 months    ki1119695-PROBIT           BELARUS       <25                  NA                0.0820611          NA          NA
3 months    ki1119695-PROBIT           BELARUS       [25-30)              NA                0.0694492          NA          NA
3 months    ki1119695-PROBIT           BELARUS       [30-35)              NA                0.0623742          NA          NA
3 months    ki1135781-COHORTS          GUATEMALA     >=35                 NA                0.2979798   0.2342085   0.3617511
3 months    ki1135781-COHORTS          GUATEMALA     <25                  NA                0.1851852   0.1005054   0.2698650
3 months    ki1135781-COHORTS          GUATEMALA     [25-30)              NA                0.2452830   0.1632927   0.3272734
3 months    ki1135781-COHORTS          GUATEMALA     [30-35)              NA                0.2990654   0.2122254   0.3859054
3 months    ki1135781-COHORTS          PHILIPPINES   >=35                 NA                0.1719039   0.1401054   0.2037024
3 months    ki1135781-COHORTS          PHILIPPINES   <25                  NA                0.1627329   0.1372298   0.1882361
3 months    ki1135781-COHORTS          PHILIPPINES   [25-30)              NA                0.1289308   0.1076616   0.1502001
3 months    ki1135781-COHORTS          PHILIPPINES   [30-35)              NA                0.1294299   0.1036002   0.1552595
6 months    ki1000304b-SAS-CompFeed    INDIA         >=35                 NA                0.4705882          NA          NA
6 months    ki1000304b-SAS-CompFeed    INDIA         <25                  NA                0.4193548          NA          NA
6 months    ki1000304b-SAS-CompFeed    INDIA         [25-30)              NA                0.3846154          NA          NA
6 months    ki1000304b-SAS-CompFeed    INDIA         [30-35)              NA                0.5217391          NA          NA
6 months    ki1000304b-SAS-FoodSuppl   INDIA         >=35                 NA                0.3076923   0.1294350   0.4859496
6 months    ki1000304b-SAS-FoodSuppl   INDIA         <25                  NA                0.5263158   0.3007273   0.7519043
6 months    ki1000304b-SAS-FoodSuppl   INDIA         [25-30)              NA                0.3714286   0.2105838   0.5322734
6 months    ki1000304b-SAS-FoodSuppl   INDIA         [30-35)              NA                0.4800000   0.2832212   0.6767788
6 months    ki1119695-PROBIT           BELARUS       >=35                 NA                0.0939597          NA          NA
6 months    ki1119695-PROBIT           BELARUS       <25                  NA                0.1108462          NA          NA
6 months    ki1119695-PROBIT           BELARUS       [25-30)              NA                0.0975089          NA          NA
6 months    ki1119695-PROBIT           BELARUS       [30-35)              NA                0.0964608          NA          NA
6 months    ki1135781-COHORTS          PHILIPPINES   >=35                 NA                0.2874016   0.2480408   0.3267623
6 months    ki1135781-COHORTS          PHILIPPINES   <25                  NA                0.2866848   0.2540085   0.3193610
6 months    ki1135781-COHORTS          PHILIPPINES   [25-30)              NA                0.2151030   0.1878570   0.2423489
6 months    ki1135781-COHORTS          PHILIPPINES   [30-35)              NA                0.2224080   0.1890709   0.2557452
12 months   ki1000304b-SAS-CompFeed    INDIA         >=35                 NA                0.6363636          NA          NA
12 months   ki1000304b-SAS-CompFeed    INDIA         <25                  NA                0.5948276          NA          NA
12 months   ki1000304b-SAS-CompFeed    INDIA         [25-30)              NA                0.5384615          NA          NA
12 months   ki1000304b-SAS-CompFeed    INDIA         [30-35)              NA                0.6708861          NA          NA
12 months   ki1119695-PROBIT           BELARUS       >=35                 NA                0.1368421          NA          NA
12 months   ki1119695-PROBIT           BELARUS       <25                  NA                0.1475538          NA          NA
12 months   ki1119695-PROBIT           BELARUS       [25-30)              NA                0.1435574          NA          NA
12 months   ki1119695-PROBIT           BELARUS       [30-35)              NA                0.1329243          NA          NA
12 months   ki1135781-COHORTS          GUATEMALA     >=35                 NA                0.7056075   0.6444863   0.7667287
12 months   ki1135781-COHORTS          GUATEMALA     <25                  NA                0.6941176   0.5960698   0.7921655
12 months   ki1135781-COHORTS          GUATEMALA     [25-30)              NA                0.7094017   0.6270537   0.7917498
12 months   ki1135781-COHORTS          GUATEMALA     [30-35)              NA                0.7750000   0.7002166   0.8497834
12 months   ki1135781-COHORTS          PHILIPPINES   >=35                 NA                0.4869739   0.4431106   0.5308373
12 months   ki1135781-COHORTS          PHILIPPINES   <25                  NA                0.4677641   0.4315372   0.5039909
12 months   ki1135781-COHORTS          PHILIPPINES   [25-30)              NA                0.3892774   0.3566459   0.4219089
12 months   ki1135781-COHORTS          PHILIPPINES   [30-35)              NA                0.4363328   0.3962745   0.4763910
12 months   ki1148112-LCNI-5           MALAWI        >=35                 NA                0.4285714   0.2638293   0.5933136
12 months   ki1148112-LCNI-5           MALAWI        <25                  NA                0.4782609   0.2731251   0.6833966
12 months   ki1148112-LCNI-5           MALAWI        [25-30)              NA                0.3076923   0.1294268   0.4859578
12 months   ki1148112-LCNI-5           MALAWI        [30-35)              NA                0.4500000   0.2309119   0.6690881
18 months   ki1000304b-SAS-CompFeed    INDIA         >=35                 NA                0.7096774          NA          NA
18 months   ki1000304b-SAS-CompFeed    INDIA         <25                  NA                0.6695652          NA          NA
18 months   ki1000304b-SAS-CompFeed    INDIA         [25-30)              NA                0.7000000          NA          NA
18 months   ki1000304b-SAS-CompFeed    INDIA         [30-35)              NA                0.7307692          NA          NA
18 months   ki1119695-PROBIT           BELARUS       >=35                 NA                0.1512605          NA          NA
18 months   ki1119695-PROBIT           BELARUS       <25                  NA                0.1599668          NA          NA
18 months   ki1119695-PROBIT           BELARUS       [25-30)              NA                0.1530156          NA          NA
18 months   ki1119695-PROBIT           BELARUS       [30-35)              NA                0.1404899          NA          NA
18 months   ki1135781-COHORTS          GUATEMALA     >=35                 NA                0.8352941   0.7794727   0.8911156
18 months   ki1135781-COHORTS          GUATEMALA     <25                  NA                0.8181818   0.7250232   0.9113404
18 months   ki1135781-COHORTS          GUATEMALA     [25-30)              NA                0.8125000   0.7343322   0.8906678
18 months   ki1135781-COHORTS          GUATEMALA     [30-35)              NA                0.8300000   0.7562920   0.9037080
18 months   ki1135781-COHORTS          PHILIPPINES   >=35                 NA                0.6518987   0.6090057   0.6947918
18 months   ki1135781-COHORTS          PHILIPPINES   <25                  NA                0.6213873   0.5852414   0.6575332
18 months   ki1135781-COHORTS          PHILIPPINES   [25-30)              NA                0.5956416   0.5621668   0.6291165
18 months   ki1135781-COHORTS          PHILIPPINES   [30-35)              NA                0.6245552   0.5845125   0.6645979
18 months   ki1148112-LCNI-5           MALAWI        >=35                 NA                0.5806452   0.4059773   0.7553130
18 months   ki1148112-LCNI-5           MALAWI        <25                  NA                0.5500000   0.3307598   0.7692402
18 months   ki1148112-LCNI-5           MALAWI        [25-30)              NA                0.4000000   0.2068996   0.5931004
18 months   ki1148112-LCNI-5           MALAWI        [30-35)              NA                0.3333333   0.0934524   0.5732142
24 months   ki1119695-PROBIT           BELARUS       >=35                 NA                0.1785714          NA          NA
24 months   ki1119695-PROBIT           BELARUS       <25                  NA                0.1869301          NA          NA
24 months   ki1119695-PROBIT           BELARUS       [25-30)              NA                0.2308762          NA          NA
24 months   ki1119695-PROBIT           BELARUS       [30-35)              NA                0.1979434          NA          NA
24 months   ki1135781-COHORTS          GUATEMALA     >=35                 NA                0.9028571   0.8589311   0.9467832
24 months   ki1135781-COHORTS          GUATEMALA     <25                  NA                0.8717949   0.7975206   0.9460691
24 months   ki1135781-COHORTS          GUATEMALA     [25-30)              NA                0.9223301   0.8705841   0.9740761
24 months   ki1135781-COHORTS          GUATEMALA     [30-35)              NA                0.8888889   0.8269147   0.9508631
24 months   ki1135781-COHORTS          PHILIPPINES   >=35                 NA                0.7748344   0.7363627   0.8133062
24 months   ki1135781-COHORTS          PHILIPPINES   <25                  NA                0.7628866   0.7308896   0.7948836
24 months   ki1135781-COHORTS          PHILIPPINES   [25-30)              NA                0.7385378   0.7082136   0.7688620
24 months   ki1135781-COHORTS          PHILIPPINES   [30-35)              NA                0.7495430   0.7132262   0.7858597
24 months   ki1148112-LCNI-5           MALAWI        >=35                 NA                0.6571429   0.4990638   0.8152219
24 months   ki1148112-LCNI-5           MALAWI        <25                  NA                0.6470588   0.4186986   0.8754191
24 months   ki1148112-LCNI-5           MALAWI        [25-30)              NA                0.4800000   0.2831324   0.6768676
24 months   ki1148112-LCNI-5           MALAWI        [30-35)              NA                0.6842105   0.4741044   0.8943167


### Parameter: E(Y)


agecat      studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki1000304b-SAS-CompFeed    INDIA         NA                   NA                0.3311966          NA          NA
3 months    ki1119695-PROBIT           BELARUS       NA                   NA                0.0719498          NA          NA
3 months    ki1135781-COHORTS          GUATEMALA     NA                   NA                0.2682927   0.2291022   0.3074832
3 months    ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.1461512   0.1333993   0.1589032
6 months    ki1000304b-SAS-CompFeed    INDIA         NA                   NA                0.4273973          NA          NA
6 months    ki1000304b-SAS-FoodSuppl   INDIA         NA                   NA                0.4095238   0.3150150   0.5040326
6 months    ki1119695-PROBIT           BELARUS       NA                   NA                0.1014242          NA          NA
6 months    ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.2496318   0.2333520   0.2659117
12 months   ki1000304b-SAS-CompFeed    INDIA         NA                   NA                0.5862884          NA          NA
12 months   ki1119695-PROBIT           BELARUS       NA                   NA                0.1421838          NA          NA
12 months   ki1135781-COHORTS          GUATEMALA     NA                   NA                0.7201493   0.6821088   0.7581897
12 months   ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.4392523   0.4204415   0.4580632
12 months   ki1148112-LCNI-5           MALAWI        NA                   NA                0.4134615   0.3183583   0.5085648
18 months   ki1000304b-SAS-CompFeed    INDIA         NA                   NA                0.6980676          NA          NA
18 months   ki1119695-PROBIT           BELARUS       NA                   NA                0.1527566          NA          NA
18 months   ki1135781-COHORTS          GUATEMALA     NA                   NA                0.8263889   0.7906295   0.8621483
18 months   ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.6194205   0.6005867   0.6382543
18 months   ki1148112-LCNI-5           MALAWI        NA                   NA                0.4835165   0.3802735   0.5867595
24 months   ki1119695-PROBIT           BELARUS       NA                   NA                0.2040201          NA          NA
24 months   ki1135781-COHORTS          GUATEMALA     NA                   NA                0.8989011   0.8711711   0.9266311
24 months   ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.7542237   0.7372957   0.7711516
24 months   ki1148112-LCNI-5           MALAWI        NA                   NA                0.6145833   0.5167151   0.7124516


### Parameter: RR


agecat      studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki1000304b-SAS-CompFeed    INDIA         >=35                 >=35              1.0000000          NA          NA
3 months    ki1000304b-SAS-CompFeed    INDIA         <25                  >=35              0.9563953          NA          NA
3 months    ki1000304b-SAS-CompFeed    INDIA         [25-30)              >=35              0.7837678          NA          NA
3 months    ki1000304b-SAS-CompFeed    INDIA         [30-35)              >=35              0.8851744          NA          NA
3 months    ki1119695-PROBIT           BELARUS       >=35                 >=35              1.0000000          NA          NA
3 months    ki1119695-PROBIT           BELARUS       <25                  >=35              1.2502245          NA          NA
3 months    ki1119695-PROBIT           BELARUS       [25-30)              >=35              1.0580789          NA          NA
3 months    ki1119695-PROBIT           BELARUS       [30-35)              >=35              0.9502900          NA          NA
3 months    ki1135781-COHORTS          GUATEMALA     >=35                 >=35              1.0000000   1.0000000   1.0000000
3 months    ki1135781-COHORTS          GUATEMALA     <25                  >=35              0.6214689   0.3751071   1.0296356
3 months    ki1135781-COHORTS          GUATEMALA     [25-30)              >=35              0.8231532   0.5534844   1.2242101
3 months    ki1135781-COHORTS          GUATEMALA     [30-35)              >=35              1.0036433   0.6997163   1.4395832
3 months    ki1135781-COHORTS          PHILIPPINES   >=35                 >=35              1.0000000   1.0000000   1.0000000
3 months    ki1135781-COHORTS          PHILIPPINES   <25                  >=35              0.9466506   0.7428466   1.2063694
3 months    ki1135781-COHORTS          PHILIPPINES   [25-30)              >=35              0.7500169   0.5853695   0.9609749
3 months    ki1135781-COHORTS          PHILIPPINES   [30-35)              >=35              0.7529201   0.5735531   0.9883805
6 months    ki1000304b-SAS-CompFeed    INDIA         >=35                 >=35              1.0000000          NA          NA
6 months    ki1000304b-SAS-CompFeed    INDIA         <25                  >=35              0.8911290          NA          NA
6 months    ki1000304b-SAS-CompFeed    INDIA         [25-30)              >=35              0.8173077          NA          NA
6 months    ki1000304b-SAS-CompFeed    INDIA         [30-35)              >=35              1.1086957          NA          NA
6 months    ki1000304b-SAS-FoodSuppl   INDIA         >=35                 >=35              1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA         <25                  >=35              1.7105263   0.8320572   3.5164653
6 months    ki1000304b-SAS-FoodSuppl   INDIA         [25-30)              >=35              1.2071429   0.5856460   2.4881822
6 months    ki1000304b-SAS-FoodSuppl   INDIA         [30-35)              >=35              1.5600000   0.7671842   3.1721196
6 months    ki1119695-PROBIT           BELARUS       >=35                 >=35              1.0000000          NA          NA
6 months    ki1119695-PROBIT           BELARUS       <25                  >=35              1.1797207          NA          NA
6 months    ki1119695-PROBIT           BELARUS       [25-30)              >=35              1.0377732          NA          NA
6 months    ki1119695-PROBIT           BELARUS       [30-35)              >=35              1.0266184          NA          NA
6 months    ki1135781-COHORTS          PHILIPPINES   >=35                 >=35              1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          PHILIPPINES   <25                  >=35              0.9975060   0.8347057   1.1920586
6 months    ki1135781-COHORTS          PHILIPPINES   [25-30)              >=35              0.7484405   0.6210697   0.9019328
6 months    ki1135781-COHORTS          PHILIPPINES   [30-35)              >=35              0.7738581   0.6316603   0.9480670
12 months   ki1000304b-SAS-CompFeed    INDIA         >=35                 >=35              1.0000000          NA          NA
12 months   ki1000304b-SAS-CompFeed    INDIA         <25                  >=35              0.9347291          NA          NA
12 months   ki1000304b-SAS-CompFeed    INDIA         [25-30)              >=35              0.8461538          NA          NA
12 months   ki1000304b-SAS-CompFeed    INDIA         [30-35)              >=35              1.0542495          NA          NA
12 months   ki1119695-PROBIT           BELARUS       >=35                 >=35              1.0000000          NA          NA
12 months   ki1119695-PROBIT           BELARUS       <25                  >=35              1.0782779          NA          NA
12 months   ki1119695-PROBIT           BELARUS       [25-30)              >=35              1.0490735          NA          NA
12 months   ki1119695-PROBIT           BELARUS       [30-35)              >=35              0.9713701          NA          NA
12 months   ki1135781-COHORTS          GUATEMALA     >=35                 >=35              1.0000000   1.0000000   1.0000000
12 months   ki1135781-COHORTS          GUATEMALA     <25                  >=35              0.9837164   0.8335034   1.1610006
12 months   ki1135781-COHORTS          GUATEMALA     [25-30)              >=35              1.0053773   0.8698142   1.1620681
12 months   ki1135781-COHORTS          GUATEMALA     [30-35)              >=35              1.0983444   0.9647684   1.2504145
12 months   ki1135781-COHORTS          PHILIPPINES   >=35                 >=35              1.0000000   1.0000000   1.0000000
12 months   ki1135781-COHORTS          PHILIPPINES   <25                  >=35              0.9605525   0.8529646   1.0817110
12 months   ki1135781-COHORTS          PHILIPPINES   [25-30)              >=35              0.7993803   0.7068315   0.9040470
12 months   ki1135781-COHORTS          PHILIPPINES   [30-35)              >=35              0.8960084   0.7878719   1.0189869
12 months   ki1148112-LCNI-5           MALAWI        >=35                 >=35              1.0000000   1.0000000   1.0000000
12 months   ki1148112-LCNI-5           MALAWI        <25                  >=35              1.1159420   0.6273409   1.9850875
12 months   ki1148112-LCNI-5           MALAWI        [25-30)              >=35              0.7179487   0.3582072   1.4389728
12 months   ki1148112-LCNI-5           MALAWI        [30-35)              >=35              1.0500000   0.5646609   1.9524994
18 months   ki1000304b-SAS-CompFeed    INDIA         >=35                 >=35              1.0000000          NA          NA
18 months   ki1000304b-SAS-CompFeed    INDIA         <25                  >=35              0.9434783          NA          NA
18 months   ki1000304b-SAS-CompFeed    INDIA         [25-30)              >=35              0.9863636          NA          NA
18 months   ki1000304b-SAS-CompFeed    INDIA         [30-35)              >=35              1.0297203          NA          NA
18 months   ki1119695-PROBIT           BELARUS       >=35                 >=35              1.0000000          NA          NA
18 months   ki1119695-PROBIT           BELARUS       <25                  >=35              1.0575586          NA          NA
18 months   ki1119695-PROBIT           BELARUS       [25-30)              >=35              1.0116034          NA          NA
18 months   ki1119695-PROBIT           BELARUS       [30-35)              >=35              0.9287944          NA          NA
18 months   ki1135781-COHORTS          GUATEMALA     >=35                 >=35              1.0000000   1.0000000   1.0000000
18 months   ki1135781-COHORTS          GUATEMALA     <25                  >=35              0.9795134   0.8583674   1.1177575
18 months   ki1135781-COHORTS          GUATEMALA     [25-30)              >=35              0.9727113   0.8651885   1.0935966
18 months   ki1135781-COHORTS          GUATEMALA     [30-35)              >=35              0.9936620   0.8891411   1.1104695
18 months   ki1135781-COHORTS          PHILIPPINES   >=35                 >=35              1.0000000   1.0000000   1.0000000
18 months   ki1135781-COHORTS          PHILIPPINES   <25                  >=35              0.9531960   0.8730537   1.0406950
18 months   ki1135781-COHORTS          PHILIPPINES   [25-30)              >=35              0.9137027   0.8379630   0.9962882
18 months   ki1135781-COHORTS          PHILIPPINES   [30-35)              >=35              0.9580555   0.8739621   1.0502404
18 months   ki1148112-LCNI-5           MALAWI        >=35                 >=35              1.0000000   1.0000000   1.0000000
18 months   ki1148112-LCNI-5           MALAWI        <25                  >=35              0.9472222   0.5748716   1.5607485
18 months   ki1148112-LCNI-5           MALAWI        [25-30)              >=35              0.6888889   0.3900500   1.2166849
18 months   ki1148112-LCNI-5           MALAWI        [30-35)              >=35              0.5740741   0.2631630   1.2523077
24 months   ki1119695-PROBIT           BELARUS       >=35                 >=35              1.0000000          NA          NA
24 months   ki1119695-PROBIT           BELARUS       <25                  >=35              1.0468085          NA          NA
24 months   ki1119695-PROBIT           BELARUS       [25-30)              >=35              1.2929068          NA          NA
24 months   ki1119695-PROBIT           BELARUS       [30-35)              >=35              1.1084833          NA          NA
24 months   ki1135781-COHORTS          GUATEMALA     >=35                 >=35              1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          GUATEMALA     <25                  >=35              0.9655956   0.8753599   1.0651331
24 months   ki1135781-COHORTS          GUATEMALA     [25-30)              >=35              1.0215681   0.9484541   1.1003183
24 months   ki1135781-COHORTS          GUATEMALA     [30-35)              >=35              0.9845288   0.9042856   1.0718926
24 months   ki1135781-COHORTS          PHILIPPINES   >=35                 >=35              1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          PHILIPPINES   <25                  >=35              0.9845801   0.9226222   1.0506988
24 months   ki1135781-COHORTS          PHILIPPINES   [25-30)              >=35              0.9531556   0.8936806   1.0165887
24 months   ki1135781-COHORTS          PHILIPPINES   [30-35)              >=35              0.9673589   0.9025235   1.0368518
24 months   ki1148112-LCNI-5           MALAWI        >=35                 >=35              1.0000000   1.0000000   1.0000000
24 months   ki1148112-LCNI-5           MALAWI        <25                  >=35              0.9846547   0.6423832   1.5092937
24 months   ki1148112-LCNI-5           MALAWI        [25-30)              >=35              0.7304348   0.4540280   1.1751146
24 months   ki1148112-LCNI-5           MALAWI        [30-35)              >=35              1.0411899   0.7048871   1.5379433


### Parameter: PAR


agecat      studyid                    country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
3 months    ki1000304b-SAS-CompFeed    INDIA         >=35                 NA                -0.0497558           NA           NA
3 months    ki1119695-PROBIT           BELARUS       >=35                 NA                 0.0063127           NA           NA
3 months    ki1135781-COHORTS          GUATEMALA     >=35                 NA                -0.0296871   -0.0779511    0.0185769
3 months    ki1135781-COHORTS          PHILIPPINES   >=35                 NA                -0.0257526   -0.0540857    0.0025804
6 months    ki1000304b-SAS-CompFeed    INDIA         >=35                 NA                -0.0431910           NA           NA
6 months    ki1000304b-SAS-FoodSuppl   INDIA         >=35                 NA                 0.1018315   -0.0561908    0.2598538
6 months    ki1119695-PROBIT           BELARUS       >=35                 NA                 0.0074645           NA           NA
6 months    ki1135781-COHORTS          PHILIPPINES   >=35                 NA                -0.0377698   -0.0729088   -0.0026307
12 months   ki1000304b-SAS-CompFeed    INDIA         >=35                 NA                -0.0500752           NA           NA
12 months   ki1119695-PROBIT           BELARUS       >=35                 NA                 0.0053417           NA           NA
12 months   ki1135781-COHORTS          GUATEMALA     >=35                 NA                 0.0145418   -0.0323604    0.0614439
12 months   ki1135781-COHORTS          PHILIPPINES   >=35                 NA                -0.0477216   -0.0872188   -0.0082244
12 months   ki1148112-LCNI-5           MALAWI        >=35                 NA                -0.0151099   -0.1489654    0.1187457
18 months   ki1000304b-SAS-CompFeed    INDIA         >=35                 NA                -0.0116098           NA           NA
18 months   ki1119695-PROBIT           BELARUS       >=35                 NA                 0.0014961           NA           NA
18 months   ki1135781-COHORTS          GUATEMALA     >=35                 NA                -0.0089052   -0.0529772    0.0351667
18 months   ki1135781-COHORTS          PHILIPPINES   >=35                 NA                -0.0324782   -0.0713578    0.0064013
18 months   ki1148112-LCNI-5           MALAWI        >=35                 NA                -0.0971287   -0.2398932    0.0456359
24 months   ki1119695-PROBIT           BELARUS       >=35                 NA                 0.0254487           NA           NA
24 months   ki1135781-COHORTS          GUATEMALA     >=35                 NA                -0.0039560   -0.0388017    0.0308896
24 months   ki1135781-COHORTS          PHILIPPINES   >=35                 NA                -0.0206108   -0.0556426    0.0144211
24 months   ki1148112-LCNI-5           MALAWI        >=35                 NA                -0.0425595   -0.1704112    0.0852922


### Parameter: PAF


agecat      studyid                    country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
3 months    ki1000304b-SAS-CompFeed    INDIA         >=35                 NA                -0.1502304           NA           NA
3 months    ki1119695-PROBIT           BELARUS       >=35                 NA                 0.0877382           NA           NA
3 months    ki1135781-COHORTS          GUATEMALA     >=35                 NA                -0.1106520   -0.3057747    0.0553134
3 months    ki1135781-COHORTS          PHILIPPINES   >=35                 NA                -0.1762054   -0.3865281    0.0022133
6 months    ki1000304b-SAS-CompFeed    INDIA         >=35                 NA                -0.1010558           NA           NA
6 months    ki1000304b-SAS-FoodSuppl   INDIA         >=35                 NA                 0.2486583   -0.2559814    0.5505393
6 months    ki1119695-PROBIT           BELARUS       >=35                 NA                 0.0735965           NA           NA
6 months    ki1135781-COHORTS          PHILIPPINES   >=35                 NA                -0.1513019   -0.3009407   -0.0188750
12 months   ki1000304b-SAS-CompFeed    INDIA         >=35                 NA                -0.0854106           NA           NA
12 months   ki1119695-PROBIT           BELARUS       >=35                 NA                 0.0375691           NA           NA
12 months   ki1135781-COHORTS          GUATEMALA     >=35                 NA                 0.0201927   -0.0471867    0.0832367
12 months   ki1135781-COHORTS          PHILIPPINES   >=35                 NA                -0.1086428   -0.2024053   -0.0221919
12 months   ki1148112-LCNI-5           MALAWI        >=35                 NA                -0.0365449   -0.4166163    0.2415552
18 months   ki1000304b-SAS-CompFeed    INDIA         >=35                 NA                -0.0166313           NA           NA
18 months   ki1119695-PROBIT           BELARUS       >=35                 NA                 0.0097937           NA           NA
18 months   ki1135781-COHORTS          GUATEMALA     >=35                 NA                -0.0107761   -0.0655574    0.0411888
18 months   ki1135781-COHORTS          PHILIPPINES   >=35                 NA                -0.0524332   -0.1171625    0.0085455
18 months   ki1148112-LCNI-5           MALAWI        >=35                 NA                -0.2008798   -0.5405579    0.0639026
24 months   ki1119695-PROBIT           BELARUS       >=35                 NA                 0.1247361           NA           NA
24 months   ki1135781-COHORTS          GUATEMALA     >=35                 NA                -0.0044010   -0.0439276    0.0336291
24 months   ki1135781-COHORTS          PHILIPPINES   >=35                 NA                -0.0273272   -0.0748632    0.0181066
24 months   ki1148112-LCNI-5           MALAWI        >=35                 NA                -0.0692494   -0.2997494    0.1203733
