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

**Intervention Variable:** fage

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        A             n    nA   nAY0   nAY1
----------  -------------------------  -----------------------------  --------  -----  ----  -----  -----
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=35        145    99     83     16
Birth       ki0047075b-MAL-ED          BANGLADESH                     <25         145     0      0      0
Birth       ki0047075b-MAL-ED          BANGLADESH                     [25-30)     145    13     11      2
Birth       ki0047075b-MAL-ED          BANGLADESH                     [30-35)     145    33     31      2
Birth       ki0047075b-MAL-ED          BRAZIL                         >=35         68    35     31      4
Birth       ki0047075b-MAL-ED          BRAZIL                         <25          68     3      3      0
Birth       ki0047075b-MAL-ED          BRAZIL                         [25-30)      68     7      7      0
Birth       ki0047075b-MAL-ED          BRAZIL                         [30-35)      68    23     20      3
Birth       ki0047075b-MAL-ED          INDIA                          >=35        131    57     49      8
Birth       ki0047075b-MAL-ED          INDIA                          <25         131     2      2      0
Birth       ki0047075b-MAL-ED          INDIA                          [25-30)     131    24     20      4
Birth       ki0047075b-MAL-ED          INDIA                          [30-35)     131    48     40      8
Birth       ki0047075b-MAL-ED          NEPAL                          >=35         61    31     28      3
Birth       ki0047075b-MAL-ED          NEPAL                          <25          61     0      0      0
Birth       ki0047075b-MAL-ED          NEPAL                          [25-30)      61     6      6      0
Birth       ki0047075b-MAL-ED          NEPAL                          [30-35)      61    24     22      2
Birth       ki0047075b-MAL-ED          PERU                           >=35         80    42     40      2
Birth       ki0047075b-MAL-ED          PERU                           <25          80     4      3      1
Birth       ki0047075b-MAL-ED          PERU                           [25-30)      80    17     15      2
Birth       ki0047075b-MAL-ED          PERU                           [30-35)      80    17     12      5
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=35         76    63     56      7
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <25          76     1      1      0
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)      76     5      4      1
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [30-35)      76     7      6      1
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=35         46    27     24      3
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25          46     1      1      0
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)      46     3      3      0
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [30-35)      46    15     13      2
Birth       ki1135781-COHORTS          GUATEMALA                      >=35        390   155    147      8
Birth       ki1135781-COHORTS          GUATEMALA                      <25         390    65     63      2
Birth       ki1135781-COHORTS          GUATEMALA                      [25-30)     390    82     78      4
Birth       ki1135781-COHORTS          GUATEMALA                      [30-35)     390    88     83      5
Birth       ki1135781-COHORTS          PHILIPPINES                    >=35       2944   539    501     38
Birth       ki1135781-COHORTS          PHILIPPINES                    <25        2944   804    746     58
Birth       ki1135781-COHORTS          PHILIPPINES                    [25-30)    2944   954    902     52
Birth       ki1135781-COHORTS          PHILIPPINES                    [30-35)    2944   647    615     32
3 months    ki0047075b-MAL-ED          BANGLADESH                     >=35        151   102     89     13
3 months    ki0047075b-MAL-ED          BANGLADESH                     <25         151     0      0      0
3 months    ki0047075b-MAL-ED          BANGLADESH                     [25-30)     151    14      9      5
3 months    ki0047075b-MAL-ED          BANGLADESH                     [30-35)     151    35     31      4
3 months    ki0047075b-MAL-ED          BRAZIL                         >=35         79    40     40      0
3 months    ki0047075b-MAL-ED          BRAZIL                         <25          79     3      3      0
3 months    ki0047075b-MAL-ED          BRAZIL                         [25-30)      79     8      7      1
3 months    ki0047075b-MAL-ED          BRAZIL                         [30-35)      79    28     25      3
3 months    ki0047075b-MAL-ED          INDIA                          >=35        160    71     63      8
3 months    ki0047075b-MAL-ED          INDIA                          <25         160     3      2      1
3 months    ki0047075b-MAL-ED          INDIA                          [25-30)     160    27     23      4
3 months    ki0047075b-MAL-ED          INDIA                          [30-35)     160    59     52      7
3 months    ki0047075b-MAL-ED          NEPAL                          >=35         79    38     38      0
3 months    ki0047075b-MAL-ED          NEPAL                          <25          79     0      0      0
3 months    ki0047075b-MAL-ED          NEPAL                          [25-30)      79    10      9      1
3 months    ki0047075b-MAL-ED          NEPAL                          [30-35)      79    31     28      3
3 months    ki0047075b-MAL-ED          PERU                           >=35         85    45     36      9
3 months    ki0047075b-MAL-ED          PERU                           <25          85     5      4      1
3 months    ki0047075b-MAL-ED          PERU                           [25-30)      85    18     14      4
3 months    ki0047075b-MAL-ED          PERU                           [30-35)      85    17      9      8
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=35         90    75     66      9
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <25          90     1      1      0
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)      90     6      6      0
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [30-35)      90     8      7      1
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=35        100    65     49     16
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25         100     2      1      1
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)     100     6      4      2
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [30-35)     100    27     25      2
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=35         97    25     17      8
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          <25          97    17      9      8
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)      97    31     20     11
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          [30-35)      97    24     13     11
3 months    ki1135781-COHORTS          GUATEMALA                      >=35        455   185    123     62
3 months    ki1135781-COHORTS          GUATEMALA                      <25         455    74     58     16
3 months    ki1135781-COHORTS          GUATEMALA                      [25-30)     455    95     66     29
3 months    ki1135781-COHORTS          GUATEMALA                      [30-35)     455   101     66     35
3 months    ki1135781-COHORTS          PHILIPPINES                    >=35       2785   524    445     79
3 months    ki1135781-COHORTS          PHILIPPINES                    <25        2785   746    640    106
3 months    ki1135781-COHORTS          PHILIPPINES                    [25-30)    2785   896    801     95
3 months    ki1135781-COHORTS          PHILIPPINES                    [30-35)    2785   619    551     68
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=35        150   101     83     18
6 months    ki0047075b-MAL-ED          BANGLADESH                     <25         150     0      0      0
6 months    ki0047075b-MAL-ED          BANGLADESH                     [25-30)     150    14      9      5
6 months    ki0047075b-MAL-ED          BANGLADESH                     [30-35)     150    35     28      7
6 months    ki0047075b-MAL-ED          BRAZIL                         >=35         79    40     40      0
6 months    ki0047075b-MAL-ED          BRAZIL                         <25          79     3      3      0
6 months    ki0047075b-MAL-ED          BRAZIL                         [25-30)      79     8      8      0
6 months    ki0047075b-MAL-ED          BRAZIL                         [30-35)      79    28     28      0
6 months    ki0047075b-MAL-ED          INDIA                          >=35        161    71     57     14
6 months    ki0047075b-MAL-ED          INDIA                          <25         161     3      1      2
6 months    ki0047075b-MAL-ED          INDIA                          [25-30)     161    27     22      5
6 months    ki0047075b-MAL-ED          INDIA                          [30-35)     161    60     51      9
6 months    ki0047075b-MAL-ED          NEPAL                          >=35         79    38     37      1
6 months    ki0047075b-MAL-ED          NEPAL                          <25          79     0      0      0
6 months    ki0047075b-MAL-ED          NEPAL                          [25-30)      79    10      9      1
6 months    ki0047075b-MAL-ED          NEPAL                          [30-35)      79    31     29      2
6 months    ki0047075b-MAL-ED          PERU                           >=35         83    45     38      7
6 months    ki0047075b-MAL-ED          PERU                           <25          83     5      3      2
6 months    ki0047075b-MAL-ED          PERU                           [25-30)      83    17     14      3
6 months    ki0047075b-MAL-ED          PERU                           [30-35)      83    16      9      7
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=35         89    74     64     10
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <25          89     1      1      0
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)      89     6      5      1
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [30-35)      89     8      7      1
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=35        100    65     44     21
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25         100     2      0      2
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)     100     6      5      1
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [30-35)     100    27     24      3
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=35         96    24     15      9
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <25          96    18      8     10
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)      96    28     13     15
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [30-35)      96    26     12     14
6 months    ki1135781-COHORTS          GUATEMALA                      >=35        445   181     98     83
6 months    ki1135781-COHORTS          GUATEMALA                      <25         445    67     43     24
6 months    ki1135781-COHORTS          GUATEMALA                      [25-30)     445    94     54     40
6 months    ki1135781-COHORTS          GUATEMALA                      [30-35)     445   103     49     54
6 months    ki1135781-COHORTS          PHILIPPINES                    >=35       2624   496    371    125
6 months    ki1135781-COHORTS          PHILIPPINES                    <25        2624   714    544    170
6 months    ki1135781-COHORTS          PHILIPPINES                    [25-30)    2624   834    675    159
6 months    ki1135781-COHORTS          PHILIPPINES                    [30-35)    2624   580    478    102
6 months    ki1148112-LCNI-5           MALAWI                         >=35        106    36     28      8
6 months    ki1148112-LCNI-5           MALAWI                         <25         106    23     13     10
6 months    ki1148112-LCNI-5           MALAWI                         [25-30)     106    27     20      7
6 months    ki1148112-LCNI-5           MALAWI                         [30-35)     106    20     12      8
9 months    ki0047075b-MAL-ED          BANGLADESH                     >=35        150   101     74     27
9 months    ki0047075b-MAL-ED          BANGLADESH                     <25         150     0      0      0
9 months    ki0047075b-MAL-ED          BANGLADESH                     [25-30)     150    14     10      4
9 months    ki0047075b-MAL-ED          BANGLADESH                     [30-35)     150    35     27      8
9 months    ki0047075b-MAL-ED          BRAZIL                         >=35         79    40     40      0
9 months    ki0047075b-MAL-ED          BRAZIL                         <25          79     3      3      0
9 months    ki0047075b-MAL-ED          BRAZIL                         [25-30)      79     8      8      0
9 months    ki0047075b-MAL-ED          BRAZIL                         [30-35)      79    28     28      0
9 months    ki0047075b-MAL-ED          INDIA                          >=35        161    71     55     16
9 months    ki0047075b-MAL-ED          INDIA                          <25         161     3      3      0
9 months    ki0047075b-MAL-ED          INDIA                          [25-30)     161    27     20      7
9 months    ki0047075b-MAL-ED          INDIA                          [30-35)     161    60     45     15
9 months    ki0047075b-MAL-ED          NEPAL                          >=35         79    38     35      3
9 months    ki0047075b-MAL-ED          NEPAL                          <25          79     0      0      0
9 months    ki0047075b-MAL-ED          NEPAL                          [25-30)      79    10      8      2
9 months    ki0047075b-MAL-ED          NEPAL                          [30-35)      79    31     27      4
9 months    ki0047075b-MAL-ED          PERU                           >=35         83    45     35     10
9 months    ki0047075b-MAL-ED          PERU                           <25          83     5      3      2
9 months    ki0047075b-MAL-ED          PERU                           [25-30)      83    17     11      6
9 months    ki0047075b-MAL-ED          PERU                           [30-35)      83    16      8      8
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=35         87    74     65      9
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <25          87     1      1      0
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)      87     6      5      1
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [30-35)      87     6      3      3
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=35         99    65     36     29
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25          99     2      0      2
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)      99     6      1      5
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [30-35)      99    26     16     10
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=35         85    22      8     14
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          <25          85    18      7     11
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)      85    27      9     18
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          [30-35)      85    18      4     14
9 months    ki1135781-COHORTS          GUATEMALA                      >=35        435   171     66    105
9 months    ki1135781-COHORTS          GUATEMALA                      <25         435    64     30     34
9 months    ki1135781-COHORTS          GUATEMALA                      [25-30)     435    95     37     58
9 months    ki1135781-COHORTS          GUATEMALA                      [30-35)     435   105     32     73
9 months    ki1135781-COHORTS          PHILIPPINES                    >=35       2628   490    339    151
9 months    ki1135781-COHORTS          PHILIPPINES                    <25        2628   718    514    204
9 months    ki1135781-COHORTS          PHILIPPINES                    [25-30)    2628   841    628    213
9 months    ki1135781-COHORTS          PHILIPPINES                    [30-35)    2628   579    421    158
9 months    ki1148112-LCNI-5           MALAWI                         >=35         86    31     22      9
9 months    ki1148112-LCNI-5           MALAWI                         <25          86    21     14      7
9 months    ki1148112-LCNI-5           MALAWI                         [25-30)      86    18     13      5
9 months    ki1148112-LCNI-5           MALAWI                         [30-35)      86    16     11      5
12 months   ki0047075b-MAL-ED          BANGLADESH                     >=35        150   102     71     31
12 months   ki0047075b-MAL-ED          BANGLADESH                     <25         150     0      0      0
12 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)     150    14      9      5
12 months   ki0047075b-MAL-ED          BANGLADESH                     [30-35)     150    34     20     14
12 months   ki0047075b-MAL-ED          BRAZIL                         >=35         79    40     39      1
12 months   ki0047075b-MAL-ED          BRAZIL                         <25          79     3      3      0
12 months   ki0047075b-MAL-ED          BRAZIL                         [25-30)      79     8      8      0
12 months   ki0047075b-MAL-ED          BRAZIL                         [30-35)      79    28     28      0
12 months   ki0047075b-MAL-ED          INDIA                          >=35        160    71     51     20
12 months   ki0047075b-MAL-ED          INDIA                          <25         160     3      1      2
12 months   ki0047075b-MAL-ED          INDIA                          [25-30)     160    27     15     12
12 months   ki0047075b-MAL-ED          INDIA                          [30-35)     160    59     41     18
12 months   ki0047075b-MAL-ED          NEPAL                          >=35         79    38     32      6
12 months   ki0047075b-MAL-ED          NEPAL                          <25          79     0      0      0
12 months   ki0047075b-MAL-ED          NEPAL                          [25-30)      79    10      7      3
12 months   ki0047075b-MAL-ED          NEPAL                          [30-35)      79    31     27      4
12 months   ki0047075b-MAL-ED          PERU                           >=35         83    45     32     13
12 months   ki0047075b-MAL-ED          PERU                           <25          83     5      1      4
12 months   ki0047075b-MAL-ED          PERU                           [25-30)      83    17     14      3
12 months   ki0047075b-MAL-ED          PERU                           [30-35)      83    16      8      8
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=35         89    75     59     16
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <25          89     1      1      0
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)      89     6      6      0
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [30-35)      89     7      5      2
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=35         99    64     27     37
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25          99     2      0      2
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)      99     6      1      5
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [30-35)      99    27     13     14
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=35         92    24      5     19
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          <25          92    17      4     13
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)      92    30      6     24
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          [30-35)      92    21      4     17
12 months   ki1135781-COHORTS          GUATEMALA                      >=35        509   202     60    142
12 months   ki1135781-COHORTS          GUATEMALA                      <25         509    79     27     52
12 months   ki1135781-COHORTS          GUATEMALA                      [25-30)     509   113     32     81
12 months   ki1135781-COHORTS          GUATEMALA                      [30-35)     509   115     32     83
12 months   ki1135781-COHORTS          PHILIPPINES                    >=35       2507   465    259    206
12 months   ki1135781-COHORTS          PHILIPPINES                    <25        2507   678    423    255
12 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)    2507   811    523    288
12 months   ki1135781-COHORTS          PHILIPPINES                    [30-35)    2507   553    327    226
12 months   ki1148112-LCNI-5           MALAWI                         >=35         80    26     18      8
12 months   ki1148112-LCNI-5           MALAWI                         <25          80    19     12      7
12 months   ki1148112-LCNI-5           MALAWI                         [25-30)      80    19     14      5
12 months   ki1148112-LCNI-5           MALAWI                         [30-35)      80    16     11      5
18 months   ki0047075b-MAL-ED          BANGLADESH                     >=35        151   102     56     46
18 months   ki0047075b-MAL-ED          BANGLADESH                     <25         151     0      0      0
18 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)     151    14      7      7
18 months   ki0047075b-MAL-ED          BANGLADESH                     [30-35)     151    35     16     19
18 months   ki0047075b-MAL-ED          BRAZIL                         >=35         79    40     40      0
18 months   ki0047075b-MAL-ED          BRAZIL                         <25          79     3      3      0
18 months   ki0047075b-MAL-ED          BRAZIL                         [25-30)      79     8      7      1
18 months   ki0047075b-MAL-ED          BRAZIL                         [30-35)      79    28     27      1
18 months   ki0047075b-MAL-ED          INDIA                          >=35        161    71     44     27
18 months   ki0047075b-MAL-ED          INDIA                          <25         161     3      0      3
18 months   ki0047075b-MAL-ED          INDIA                          [25-30)     161    27     13     14
18 months   ki0047075b-MAL-ED          INDIA                          [30-35)     161    60     32     28
18 months   ki0047075b-MAL-ED          NEPAL                          >=35         79    38     30      8
18 months   ki0047075b-MAL-ED          NEPAL                          <25          79     0      0      0
18 months   ki0047075b-MAL-ED          NEPAL                          [25-30)      79    10      6      4
18 months   ki0047075b-MAL-ED          NEPAL                          [30-35)      79    31     24      7
18 months   ki0047075b-MAL-ED          PERU                           >=35         80    43     23     20
18 months   ki0047075b-MAL-ED          PERU                           <25          80     5      4      1
18 months   ki0047075b-MAL-ED          PERU                           [25-30)      80    16      9      7
18 months   ki0047075b-MAL-ED          PERU                           [30-35)      80    16      6     10
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=35         89    75     55     20
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <25          89     1      1      0
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)      89     6      5      1
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [30-35)      89     7      4      3
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=35         99    65     14     51
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25          99     2      0      2
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)      99     6      1      5
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [30-35)      99    26      6     20
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=35         84    19      2     17
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          <25          84    16      2     14
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)      84    29      3     26
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          [30-35)      84    20      3     17
18 months   ki1135781-COHORTS          GUATEMALA                      >=35        417   161     24    137
18 months   ki1135781-COHORTS          GUATEMALA                      <25         417    64     12     52
18 months   ki1135781-COHORTS          GUATEMALA                      [25-30)     417    96     16     80
18 months   ki1135781-COHORTS          GUATEMALA                      [30-35)     417    96     13     83
18 months   ki1135781-COHORTS          PHILIPPINES                    >=35       2416   446    177    269
18 months   ki1135781-COHORTS          PHILIPPINES                    <25        2416   654    271    383
18 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)    2416   783    336    447
18 months   ki1135781-COHORTS          PHILIPPINES                    [30-35)    2416   533    206    327
18 months   ki1148112-LCNI-5           MALAWI                         >=35         95    33     17     16
18 months   ki1148112-LCNI-5           MALAWI                         <25          95    19     11      8
18 months   ki1148112-LCNI-5           MALAWI                         [25-30)      95    25     15     10
18 months   ki1148112-LCNI-5           MALAWI                         [30-35)      95    18     11      7
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=35        151   102     59     43
24 months   ki0047075b-MAL-ED          BANGLADESH                     <25         151     0      0      0
24 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)     151    14      7      7
24 months   ki0047075b-MAL-ED          BANGLADESH                     [30-35)     151    35     16     19
24 months   ki0047075b-MAL-ED          BRAZIL                         >=35         79    40     40      0
24 months   ki0047075b-MAL-ED          BRAZIL                         <25          79     3      3      0
24 months   ki0047075b-MAL-ED          BRAZIL                         [25-30)      79     8      8      0
24 months   ki0047075b-MAL-ED          BRAZIL                         [30-35)      79    28     27      1
24 months   ki0047075b-MAL-ED          INDIA                          >=35        161    71     45     26
24 months   ki0047075b-MAL-ED          INDIA                          <25         161     3      0      3
24 months   ki0047075b-MAL-ED          INDIA                          [25-30)     161    27     15     12
24 months   ki0047075b-MAL-ED          INDIA                          [30-35)     161    60     35     25
24 months   ki0047075b-MAL-ED          NEPAL                          >=35         79    38     28     10
24 months   ki0047075b-MAL-ED          NEPAL                          <25          79     0      0      0
24 months   ki0047075b-MAL-ED          NEPAL                          [25-30)      79    10      8      2
24 months   ki0047075b-MAL-ED          NEPAL                          [30-35)      79    31     24      7
24 months   ki0047075b-MAL-ED          PERU                           >=35         79    42     28     14
24 months   ki0047075b-MAL-ED          PERU                           <25          79     5      3      2
24 months   ki0047075b-MAL-ED          PERU                           [25-30)      79    16     12      4
24 months   ki0047075b-MAL-ED          PERU                           [30-35)      79    16     10      6
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=35         89    75     51     24
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <25          89     1      1      0
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)      89     6      5      1
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [30-35)      89     7      4      3
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=35        100    65     16     49
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25         100     2      0      2
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)     100     6      1      5
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [30-35)     100    27      7     20
24 months   ki1135781-COHORTS          GUATEMALA                      >=35        495   193     35    158
24 months   ki1135781-COHORTS          GUATEMALA                      <25         495    82     12     70
24 months   ki1135781-COHORTS          GUATEMALA                      [25-30)     495   113     15     98
24 months   ki1135781-COHORTS          GUATEMALA                      [30-35)     495   107     17     90
24 months   ki1135781-COHORTS          PHILIPPINES                    >=35       2371   443    167    276
24 months   ki1135781-COHORTS          PHILIPPINES                    <25        2371   648    230    418
24 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)    2371   761    304    457
24 months   ki1135781-COHORTS          PHILIPPINES                    [30-35)    2371   519    201    318
24 months   ki1148112-LCNI-5           MALAWI                         >=35         74    28     16     12
24 months   ki1148112-LCNI-5           MALAWI                         <25          74    16     10      6
24 months   ki1148112-LCNI-5           MALAWI                         [25-30)      74    17     11      6
24 months   ki1148112-LCNI-5           MALAWI                         [30-35)      74    13      9      4


The following strata were considered:

* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
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
* agecat: 18 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
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
* agecat: 3 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 3 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 3 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 9 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 9 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 9 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
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
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
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
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/f3dd37bd-f92f-47eb-8d1a-91e8a6661976/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->


```
## Warning: Removed 19 rows containing missing values (geom_errorbar).
```

![](/tmp/f3dd37bd-f92f-47eb-8d1a-91e8a6661976/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/f3dd37bd-f92f-47eb-8d1a-91e8a6661976/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/f3dd37bd-f92f-47eb-8d1a-91e8a6661976/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1135781-COHORTS          PHILIPPINES   >=35                 NA                0.0705009   0.0488862   0.0921156
Birth       ki1135781-COHORTS          PHILIPPINES   <25                  NA                0.0721393   0.0542530   0.0900256
Birth       ki1135781-COHORTS          PHILIPPINES   [25-30)              NA                0.0545073   0.0400993   0.0689154
Birth       ki1135781-COHORTS          PHILIPPINES   [30-35)              NA                0.0494590   0.0327490   0.0661691
3 months    ki1000304b-SAS-FoodSuppl   INDIA         >=35                 NA                0.3200000   0.1361948   0.5038052
3 months    ki1000304b-SAS-FoodSuppl   INDIA         <25                  NA                0.4705882   0.2320867   0.7090898
3 months    ki1000304b-SAS-FoodSuppl   INDIA         [25-30)              NA                0.3548387   0.1855347   0.5241427
3 months    ki1000304b-SAS-FoodSuppl   INDIA         [30-35)              NA                0.4583333   0.2579556   0.6587111
3 months    ki1135781-COHORTS          GUATEMALA     >=35                 NA                0.3351351   0.2670399   0.4032304
3 months    ki1135781-COHORTS          GUATEMALA     <25                  NA                0.2162162   0.1223191   0.3101133
3 months    ki1135781-COHORTS          GUATEMALA     [25-30)              NA                0.3052632   0.2125564   0.3979699
3 months    ki1135781-COHORTS          GUATEMALA     [30-35)              NA                0.3465347   0.2536274   0.4394419
3 months    ki1135781-COHORTS          PHILIPPINES   >=35                 NA                0.1507634   0.1201210   0.1814058
3 months    ki1135781-COHORTS          PHILIPPINES   <25                  NA                0.1420912   0.1170323   0.1671500
3 months    ki1135781-COHORTS          PHILIPPINES   [25-30)              NA                0.1060268   0.0858644   0.1261892
3 months    ki1135781-COHORTS          PHILIPPINES   [30-35)              NA                0.1098546   0.0852158   0.1344935
6 months    ki1000304b-SAS-FoodSuppl   INDIA         >=35                 NA                0.3750000   0.1802973   0.5697027
6 months    ki1000304b-SAS-FoodSuppl   INDIA         <25                  NA                0.5555556   0.3247968   0.7863143
6 months    ki1000304b-SAS-FoodSuppl   INDIA         [25-30)              NA                0.5357143   0.3500185   0.7214101
6 months    ki1000304b-SAS-FoodSuppl   INDIA         [30-35)              NA                0.5384615   0.3458348   0.7310883
6 months    ki1135781-COHORTS          GUATEMALA     >=35                 NA                0.4585635   0.3858909   0.5312362
6 months    ki1135781-COHORTS          GUATEMALA     <25                  NA                0.3582090   0.2432708   0.4731471
6 months    ki1135781-COHORTS          GUATEMALA     [25-30)              NA                0.4255319   0.3254693   0.5255945
6 months    ki1135781-COHORTS          GUATEMALA     [30-35)              NA                0.5242718   0.4277166   0.6208271
6 months    ki1135781-COHORTS          PHILIPPINES   >=35                 NA                0.2520161   0.2137997   0.2902326
6 months    ki1135781-COHORTS          PHILIPPINES   <25                  NA                0.2380952   0.2068483   0.2693422
6 months    ki1135781-COHORTS          PHILIPPINES   [25-30)              NA                0.1906475   0.1639831   0.2173119
6 months    ki1135781-COHORTS          PHILIPPINES   [30-35)              NA                0.1758621   0.1448734   0.2068507
6 months    ki1148112-LCNI-5           MALAWI        >=35                 NA                0.2222222   0.0857713   0.3586732
6 months    ki1148112-LCNI-5           MALAWI        <25                  NA                0.4347826   0.2312255   0.6383397
6 months    ki1148112-LCNI-5           MALAWI        [25-30)              NA                0.2592593   0.0931764   0.4253421
6 months    ki1148112-LCNI-5           MALAWI        [30-35)              NA                0.4000000   0.1842767   0.6157233
9 months    ki1135781-COHORTS          GUATEMALA     >=35                 NA                0.6140351   0.5409851   0.6870851
9 months    ki1135781-COHORTS          GUATEMALA     <25                  NA                0.5312500   0.4088510   0.6536490
9 months    ki1135781-COHORTS          GUATEMALA     [25-30)              NA                0.6105263   0.5123567   0.7086960
9 months    ki1135781-COHORTS          GUATEMALA     [30-35)              NA                0.6952381   0.6070926   0.7833836
9 months    ki1135781-COHORTS          PHILIPPINES   >=35                 NA                0.3081633   0.2672725   0.3490540
9 months    ki1135781-COHORTS          PHILIPPINES   <25                  NA                0.2841226   0.2511281   0.3171170
9 months    ki1135781-COHORTS          PHILIPPINES   [25-30)              NA                0.2532699   0.2238727   0.2826671
9 months    ki1135781-COHORTS          PHILIPPINES   [30-35)              NA                0.2728843   0.2365947   0.3091739
9 months    ki1148112-LCNI-5           MALAWI        >=35                 NA                0.2903226   0.1295996   0.4510455
9 months    ki1148112-LCNI-5           MALAWI        <25                  NA                0.3333333   0.1305315   0.5361352
9 months    ki1148112-LCNI-5           MALAWI        [25-30)              NA                0.2777778   0.0696473   0.4859083
9 months    ki1148112-LCNI-5           MALAWI        [30-35)              NA                0.3125000   0.0840510   0.5409490
12 months   ki1135781-COHORTS          GUATEMALA     >=35                 NA                0.7029703   0.6398938   0.7660468
12 months   ki1135781-COHORTS          GUATEMALA     <25                  NA                0.6582278   0.5535348   0.7629209
12 months   ki1135781-COHORTS          GUATEMALA     [25-30)              NA                0.7168142   0.6336617   0.7999666
12 months   ki1135781-COHORTS          GUATEMALA     [30-35)              NA                0.7217391   0.6397526   0.8037256
12 months   ki1135781-COHORTS          PHILIPPINES   >=35                 NA                0.4430108   0.3978523   0.4881692
12 months   ki1135781-COHORTS          PHILIPPINES   <25                  NA                0.3761062   0.3396366   0.4125757
12 months   ki1135781-COHORTS          PHILIPPINES   [25-30)              NA                0.3551171   0.3221751   0.3880592
12 months   ki1135781-COHORTS          PHILIPPINES   [30-35)              NA                0.4086799   0.3676996   0.4496602
12 months   ki1148112-LCNI-5           MALAWI        >=35                 NA                0.3076923   0.1291666   0.4862180
12 months   ki1148112-LCNI-5           MALAWI        <25                  NA                0.3684211   0.1501537   0.5866884
12 months   ki1148112-LCNI-5           MALAWI        [25-30)              NA                0.2631579   0.0639080   0.4624078
12 months   ki1148112-LCNI-5           MALAWI        [30-35)              NA                0.3125000   0.0839502   0.5410498
18 months   ki1135781-COHORTS          GUATEMALA     >=35                 NA                0.8509317   0.7958513   0.9060120
18 months   ki1135781-COHORTS          GUATEMALA     <25                  NA                0.8125000   0.7167604   0.9082396
18 months   ki1135781-COHORTS          GUATEMALA     [25-30)              NA                0.8333333   0.7586940   0.9079726
18 months   ki1135781-COHORTS          GUATEMALA     [30-35)              NA                0.8645833   0.7960545   0.9331122
18 months   ki1135781-COHORTS          PHILIPPINES   >=35                 NA                0.6031390   0.5577241   0.6485539
18 months   ki1135781-COHORTS          PHILIPPINES   <25                  NA                0.5856269   0.5478649   0.6233889
18 months   ki1135781-COHORTS          PHILIPPINES   [25-30)              NA                0.5708812   0.5362060   0.6055564
18 months   ki1135781-COHORTS          PHILIPPINES   [30-35)              NA                0.6135084   0.5721604   0.6548565
18 months   ki1148112-LCNI-5           MALAWI        >=35                 NA                0.4848485   0.3134293   0.6562677
18 months   ki1148112-LCNI-5           MALAWI        <25                  NA                0.4210526   0.1978718   0.6442335
18 months   ki1148112-LCNI-5           MALAWI        [25-30)              NA                0.4000000   0.2069448   0.5930552
18 months   ki1148112-LCNI-5           MALAWI        [30-35)              NA                0.3888889   0.1624857   0.6152921
24 months   ki1135781-COHORTS          GUATEMALA     >=35                 NA                0.8186528   0.7642385   0.8730672
24 months   ki1135781-COHORTS          GUATEMALA     <25                  NA                0.8536585   0.7770802   0.9302369
24 months   ki1135781-COHORTS          GUATEMALA     [25-30)              NA                0.8672566   0.8046345   0.9298788
24 months   ki1135781-COHORTS          GUATEMALA     [30-35)              NA                0.8411215   0.7717857   0.9104573
24 months   ki1135781-COHORTS          PHILIPPINES   >=35                 NA                0.6230248   0.5778864   0.6681633
24 months   ki1135781-COHORTS          PHILIPPINES   <25                  NA                0.6450617   0.6082124   0.6819110
24 months   ki1135781-COHORTS          PHILIPPINES   [25-30)              NA                0.6005256   0.5657193   0.6353319
24 months   ki1135781-COHORTS          PHILIPPINES   [30-35)              NA                0.6127168   0.5707988   0.6546347


### Parameter: E(Y)


agecat      studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.0611413   0.0607923   0.0614903
3 months    ki1000304b-SAS-FoodSuppl   INDIA         NA                   NA                0.3917526   0.3791828   0.4043223
3 months    ki1135781-COHORTS          GUATEMALA     NA                   NA                0.3120879   0.3079907   0.3161851
3 months    ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.1249551   0.1242407   0.1256696
6 months    ki1000304b-SAS-FoodSuppl   INDIA         NA                   NA                0.5000000   0.4854192   0.5145808
6 months    ki1135781-COHORTS          GUATEMALA     NA                   NA                0.4516854   0.4468532   0.4565176
6 months    ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.2118902   0.2107285   0.2130520
6 months    ki1148112-LCNI-5           MALAWI        NA                   NA                0.3113208   0.2940238   0.3286177
9 months    ki1135781-COHORTS          GUATEMALA     NA                   NA                0.6206897   0.6159310   0.6254483
9 months    ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.2762557   0.2755119   0.2769995
9 months    ki1148112-LCNI-5           MALAWI        NA                   NA                0.3023256   0.2979065   0.3067446
12 months   ki1135781-COHORTS          GUATEMALA     NA                   NA                0.7033399   0.7015310   0.7051488
12 months   ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.3889110   0.3876467   0.3901754
12 months   ki1148112-LCNI-5           MALAWI        NA                   NA                0.3125000   0.3044628   0.3205372
18 months   ki1135781-COHORTS          GUATEMALA     NA                   NA                0.8441247   0.8424755   0.8457739
18 months   ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.5902318   0.5895675   0.5908960
18 months   ki1148112-LCNI-5           MALAWI        NA                   NA                0.4315789   0.4234534   0.4397045
24 months   ki1135781-COHORTS          GUATEMALA     NA                   NA                0.8404040   0.8386889   0.8421192
24 months   ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.6195698   0.6188649   0.6202747


### Parameter: RR


agecat      studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1135781-COHORTS          PHILIPPINES   >=35                 >=35              1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          PHILIPPINES   <25                  >=35              1.0232391   0.6898198   1.5178141
Birth       ki1135781-COHORTS          PHILIPPINES   [25-30)              >=35              0.7731436   0.5157693   1.1589502
Birth       ki1135781-COHORTS          PHILIPPINES   [30-35)              >=35              0.7015375   0.4445433   1.1071021
3 months    ki1000304b-SAS-FoodSuppl   INDIA         >=35                 >=35              1.0000000   1.0000000   1.0000000
3 months    ki1000304b-SAS-FoodSuppl   INDIA         <25                  >=35              1.4705882   0.6836166   3.1635128
3 months    ki1000304b-SAS-FoodSuppl   INDIA         [25-30)              >=35              1.1088710   0.5255190   2.3397723
3 months    ki1000304b-SAS-FoodSuppl   INDIA         [30-35)              >=35              1.4322917   0.6958869   2.9479781
3 months    ki1135781-COHORTS          GUATEMALA     >=35                 >=35              1.0000000   1.0000000   1.0000000
3 months    ki1135781-COHORTS          GUATEMALA     <25                  >=35              0.6451613   0.3994319   1.0420628
3 months    ki1135781-COHORTS          GUATEMALA     [25-30)              >=35              0.9108659   0.6320686   1.3126370
3 months    ki1135781-COHORTS          GUATEMALA     [30-35)              >=35              1.0340147   0.7386354   1.4475157
3 months    ki1135781-COHORTS          PHILIPPINES   >=35                 >=35              1.0000000   1.0000000   1.0000000
3 months    ki1135781-COHORTS          PHILIPPINES   <25                  >=35              0.9424780   0.7201202   1.2334952
3 months    ki1135781-COHORTS          PHILIPPINES   [25-30)              >=35              0.7032663   0.5324015   0.9289671
3 months    ki1135781-COHORTS          PHILIPPINES   [30-35)              >=35              0.7286559   0.5383578   0.9862202
6 months    ki1000304b-SAS-FoodSuppl   INDIA         >=35                 >=35              1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA         <25                  >=35              1.4814815   0.7619556   2.8804662
6 months    ki1000304b-SAS-FoodSuppl   INDIA         [25-30)              >=35              1.4285714   0.7652072   2.6670113
6 months    ki1000304b-SAS-FoodSuppl   INDIA         [30-35)              >=35              1.4358974   0.7643526   2.6974482
6 months    ki1135781-COHORTS          GUATEMALA     >=35                 >=35              1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          GUATEMALA     <25                  >=35              0.7811545   0.5461539   1.1172718
6 months    ki1135781-COHORTS          GUATEMALA     [25-30)              >=35              0.9279672   0.6988460   1.2322073
6 months    ki1135781-COHORTS          GUATEMALA     [30-35)              >=35              1.1432916   0.8966784   1.4577308
6 months    ki1135781-COHORTS          PHILIPPINES   >=35                 >=35              1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          PHILIPPINES   <25                  >=35              0.9447619   0.7730833   1.1545651
6 months    ki1135781-COHORTS          PHILIPPINES   [25-30)              >=35              0.7564892   0.6154752   0.9298115
6 months    ki1135781-COHORTS          PHILIPPINES   [30-35)              >=35              0.6978207   0.5530703   0.8804553
6 months    ki1148112-LCNI-5           MALAWI        >=35                 >=35              1.0000000   1.0000000   1.0000000
6 months    ki1148112-LCNI-5           MALAWI        <25                  >=35              1.9565217   0.9039436   4.2347526
6 months    ki1148112-LCNI-5           MALAWI        [25-30)              >=35              1.1666667   0.4803650   2.8334932
6 months    ki1148112-LCNI-5           MALAWI        [30-35)              >=35              1.8000000   0.7949660   4.0756458
9 months    ki1135781-COHORTS          GUATEMALA     >=35                 >=35              1.0000000   1.0000000   1.0000000
9 months    ki1135781-COHORTS          GUATEMALA     <25                  >=35              0.8651786   0.6675644   1.1212910
9 months    ki1135781-COHORTS          GUATEMALA     [25-30)              >=35              0.9942857   0.8140355   1.2144484
9 months    ki1135781-COHORTS          GUATEMALA     [30-35)              >=35              1.1322449   0.9515544   1.3472466
9 months    ki1135781-COHORTS          PHILIPPINES   >=35                 >=35              1.0000000   1.0000000   1.0000000
9 months    ki1135781-COHORTS          PHILIPPINES   <25                  >=35              0.9219871   0.7729389   1.0997768
9 months    ki1135781-COHORTS          PHILIPPINES   [25-30)              >=35              0.8218693   0.6890318   0.9803162
9 months    ki1135781-COHORTS          PHILIPPINES   [30-35)              >=35              0.8855185   0.7338548   1.0685263
9 months    ki1148112-LCNI-5           MALAWI        >=35                 >=35              1.0000000   1.0000000   1.0000000
9 months    ki1148112-LCNI-5           MALAWI        <25                  >=35              1.1481481   0.5043797   2.6135949
9 months    ki1148112-LCNI-5           MALAWI        [25-30)              >=35              0.9567901   0.3769013   2.4288780
9 months    ki1148112-LCNI-5           MALAWI        [30-35)              >=35              1.0763889   0.4302503   2.6928817
12 months   ki1135781-COHORTS          GUATEMALA     >=35                 >=35              1.0000000   1.0000000   1.0000000
12 months   ki1135781-COHORTS          GUATEMALA     <25                  >=35              0.9363523   0.7800629   1.1239551
12 months   ki1135781-COHORTS          GUATEMALA     [25-30)              >=35              1.0196934   0.8805984   1.1807591
12 months   ki1135781-COHORTS          GUATEMALA     [30-35)              >=35              1.0266993   0.8883317   1.1866193
12 months   ki1135781-COHORTS          PHILIPPINES   >=35                 >=35              1.0000000   1.0000000   1.0000000
12 months   ki1135781-COHORTS          PHILIPPINES   <25                  >=35              0.8489776   0.7375577   0.9772292
12 months   ki1135781-COHORTS          PHILIPPINES   [25-30)              >=35              0.8015994   0.6983938   0.9200561
12 months   ki1135781-COHORTS          PHILIPPINES   [30-35)              >=35              0.9225057   0.7995944   1.0643105
12 months   ki1148112-LCNI-5           MALAWI        >=35                 >=35              1.0000000   1.0000000   1.0000000
12 months   ki1148112-LCNI-5           MALAWI        <25                  >=35              1.1973684   0.5225124   2.7438416
12 months   ki1148112-LCNI-5           MALAWI        [25-30)              >=35              0.8552632   0.3294792   2.2200949
12 months   ki1148112-LCNI-5           MALAWI        [30-35)              >=35              1.0156250   0.3992958   2.5832832
18 months   ki1135781-COHORTS          GUATEMALA     >=35                 >=35              1.0000000   1.0000000   1.0000000
18 months   ki1135781-COHORTS          GUATEMALA     <25                  >=35              0.9548358   0.8347210   1.0922349
18 months   ki1135781-COHORTS          GUATEMALA     [25-30)              >=35              0.9793187   0.8768610   1.0937483
18 months   ki1135781-COHORTS          GUATEMALA     [30-35)              >=35              1.0160432   0.9172099   1.1255262
18 months   ki1135781-COHORTS          PHILIPPINES   >=35                 >=35              1.0000000   1.0000000   1.0000000
18 months   ki1135781-COHORTS          PHILIPPINES   <25                  >=35              0.9709651   0.8793266   1.0721536
18 months   ki1135781-COHORTS          PHILIPPINES   [25-30)              >=35              0.9465168   0.8592386   1.0426605
18 months   ki1135781-COHORTS          PHILIPPINES   [30-35)              >=35              1.0171924   0.9194240   1.1253572
18 months   ki1148112-LCNI-5           MALAWI        >=35                 >=35              1.0000000   1.0000000   1.0000000
18 months   ki1148112-LCNI-5           MALAWI        <25                  >=35              0.8684211   0.4592199   1.6422526
18 months   ki1148112-LCNI-5           MALAWI        [25-30)              >=35              0.8250000   0.4535492   1.5006642
18 months   ki1148112-LCNI-5           MALAWI        [30-35)              >=35              0.8020833   0.4058919   1.5849977
24 months   ki1135781-COHORTS          GUATEMALA     >=35                 >=35              1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          GUATEMALA     <25                  >=35              1.0427601   0.9326022   1.1659297
24 months   ki1135781-COHORTS          GUATEMALA     [25-30)              >=35              1.0593704   0.9603404   1.1686124
24 months   ki1135781-COHORTS          GUATEMALA     [30-35)              >=35              1.0274459   0.9242098   1.1422136
24 months   ki1135781-COHORTS          PHILIPPINES   >=35                 >=35              1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          PHILIPPINES   <25                  >=35              1.0353708   0.9441192   1.1354422
24 months   ki1135781-COHORTS          PHILIPPINES   [25-30)              >=35              0.9638871   0.8784796   1.0575981
24 months   ki1135781-COHORTS          PHILIPPINES   [30-35)              >=35              0.9834548   0.8901812   1.0865017


### Parameter: PAR


agecat      studyid                    country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1135781-COHORTS          PHILIPPINES   >=35                 NA                -0.0093596   -0.0309771    0.0122579
3 months    ki1000304b-SAS-FoodSuppl   INDIA         >=35                 NA                 0.0717526   -0.1124819    0.2559871
3 months    ki1135781-COHORTS          GUATEMALA     >=35                 NA                -0.0230472   -0.0912656    0.0451712
3 months    ki1135781-COHORTS          PHILIPPINES   >=35                 NA                -0.0258082   -0.0564590    0.0048425
6 months    ki1000304b-SAS-FoodSuppl   INDIA         >=35                 NA                 0.1250000   -0.0702479    0.3202479
6 months    ki1135781-COHORTS          GUATEMALA     >=35                 NA                -0.0068781   -0.0797112    0.0659550
6 months    ki1135781-COHORTS          PHILIPPINES   >=35                 NA                -0.0401259   -0.0783600   -0.0018918
6 months    ki1148112-LCNI-5           MALAWI        >=35                 NA                 0.0890985   -0.0484444    0.2266414
9 months    ki1135781-COHORTS          GUATEMALA     >=35                 NA                 0.0066546   -0.0665503    0.0798594
9 months    ki1135781-COHORTS          PHILIPPINES   >=35                 NA                -0.0319076   -0.0728051    0.0089899
9 months    ki1148112-LCNI-5           MALAWI        >=35                 NA                 0.0120030   -0.1487807    0.1727867
12 months   ki1135781-COHORTS          GUATEMALA     >=35                 NA                 0.0003696   -0.0627329    0.0634721
12 months   ki1135781-COHORTS          PHILIPPINES   >=35                 NA                -0.0540997   -0.0992758   -0.0089236
12 months   ki1148112-LCNI-5           MALAWI        >=35                 NA                 0.0048077   -0.1738988    0.1835142
18 months   ki1135781-COHORTS          GUATEMALA     >=35                 NA                -0.0068070   -0.0619120    0.0482980
18 months   ki1135781-COHORTS          PHILIPPINES   >=35                 NA                -0.0129072   -0.0583270    0.0325125
18 months   ki1148112-LCNI-5           MALAWI        >=35                 NA                -0.0532695   -0.2248812    0.1183422
24 months   ki1135781-COHORTS          GUATEMALA     >=35                 NA                 0.0217512   -0.0326902    0.0761926
24 months   ki1135781-COHORTS          PHILIPPINES   >=35                 NA                -0.0034550   -0.0485990    0.0416889


### Parameter: PAF


agecat      studyid                    country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1135781-COHORTS          PHILIPPINES   >=35                 NA                -0.1530818   -0.5668683    0.1514298
3 months    ki1000304b-SAS-FoodSuppl   INDIA         >=35                 NA                 0.1831579   -0.4520513    0.5404907
3 months    ki1135781-COHORTS          GUATEMALA     >=35                 NA                -0.0738485   -0.3163463    0.1239763
3 months    ki1135781-COHORTS          PHILIPPINES   >=35                 NA                -0.2065401   -0.4785850    0.0154512
6 months    ki1000304b-SAS-FoodSuppl   INDIA         >=35                 NA                 0.2500000   -0.2615528    0.5541209
6 months    ki1135781-COHORTS          GUATEMALA     >=35                 NA                -0.0152277   -0.1899990    0.1338755
6 months    ki1135781-COHORTS          PHILIPPINES   >=35                 NA                -0.1893711   -0.3842613   -0.0219195
6 months    ki1148112-LCNI-5           MALAWI        >=35                 NA                 0.2861953   -0.3223256    0.6146810
9 months    ki1135781-COHORTS          GUATEMALA     >=35                 NA                 0.0107212   -0.1145323    0.1218985
9 months    ki1135781-COHORTS          PHILIPPINES   >=35                 NA                -0.1155001   -0.2738221    0.0231443
9 months    ki1148112-LCNI-5           MALAWI        >=35                 NA                 0.0397022   -0.6707662    0.4480546
12 months   ki1135781-COHORTS          GUATEMALA     >=35                 NA                 0.0005255   -0.0933429    0.0863348
12 months   ki1135781-COHORTS          PHILIPPINES   >=35                 NA                -0.1391056   -0.2614104   -0.0286593
12 months   ki1148112-LCNI-5           MALAWI        >=35                 NA                 0.0153846   -0.7599301    0.4491444
18 months   ki1135781-COHORTS          GUATEMALA     >=35                 NA                -0.0080639   -0.0755052    0.0551483
18 months   ki1135781-COHORTS          PHILIPPINES   >=35                 NA                -0.0218681   -0.1017925    0.0522586
18 months   ki1148112-LCNI-5           MALAWI        >=35                 NA                -0.1234294   -0.6006969    0.2115349
24 months   ki1135781-COHORTS          GUATEMALA     >=35                 NA                 0.0258818   -0.0410990    0.0885533
24 months   ki1135781-COHORTS          PHILIPPINES   >=35                 NA                -0.0055765   -0.0811448    0.0647098
