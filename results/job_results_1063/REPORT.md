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
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=35        145    99     98      1
Birth       ki0047075b-MAL-ED          BANGLADESH                     <25         145     0      0      0
Birth       ki0047075b-MAL-ED          BANGLADESH                     [25-30)     145    13     12      1
Birth       ki0047075b-MAL-ED          BANGLADESH                     [30-35)     145    33     32      1
Birth       ki0047075b-MAL-ED          BRAZIL                         >=35         68    35     33      2
Birth       ki0047075b-MAL-ED          BRAZIL                         <25          68     3      3      0
Birth       ki0047075b-MAL-ED          BRAZIL                         [25-30)      68     7      7      0
Birth       ki0047075b-MAL-ED          BRAZIL                         [30-35)      68    23     22      1
Birth       ki0047075b-MAL-ED          INDIA                          >=35        131    57     55      2
Birth       ki0047075b-MAL-ED          INDIA                          <25         131     2      2      0
Birth       ki0047075b-MAL-ED          INDIA                          [25-30)     131    24     23      1
Birth       ki0047075b-MAL-ED          INDIA                          [30-35)     131    48     47      1
Birth       ki0047075b-MAL-ED          NEPAL                          >=35         61    31     31      0
Birth       ki0047075b-MAL-ED          NEPAL                          <25          61     0      0      0
Birth       ki0047075b-MAL-ED          NEPAL                          [25-30)      61     6      6      0
Birth       ki0047075b-MAL-ED          NEPAL                          [30-35)      61    24     22      2
Birth       ki0047075b-MAL-ED          PERU                           >=35         80    42     42      0
Birth       ki0047075b-MAL-ED          PERU                           <25          80     4      4      0
Birth       ki0047075b-MAL-ED          PERU                           [25-30)      80    17     17      0
Birth       ki0047075b-MAL-ED          PERU                           [30-35)      80    17     17      0
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=35         76    63     62      1
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <25          76     1      1      0
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)      76     5      5      0
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [30-35)      76     7      7      0
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=35         46    27     26      1
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25          46     1      1      0
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)      46     3      3      0
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [30-35)      46    15     14      1
Birth       ki1135781-COHORTS          GUATEMALA                      >=35        390   155    153      2
Birth       ki1135781-COHORTS          GUATEMALA                      <25         390    65     63      2
Birth       ki1135781-COHORTS          GUATEMALA                      [25-30)     390    82     82      0
Birth       ki1135781-COHORTS          GUATEMALA                      [30-35)     390    88     88      0
Birth       ki1135781-COHORTS          PHILIPPINES                    >=35       2944   539    529     10
Birth       ki1135781-COHORTS          PHILIPPINES                    <25        2944   804    791     13
Birth       ki1135781-COHORTS          PHILIPPINES                    [25-30)    2944   954    939     15
Birth       ki1135781-COHORTS          PHILIPPINES                    [30-35)    2944   647    641      6
3 months    ki0047075b-MAL-ED          BANGLADESH                     >=35        151   102    102      0
3 months    ki0047075b-MAL-ED          BANGLADESH                     <25         151     0      0      0
3 months    ki0047075b-MAL-ED          BANGLADESH                     [25-30)     151    14     13      1
3 months    ki0047075b-MAL-ED          BANGLADESH                     [30-35)     151    35     35      0
3 months    ki0047075b-MAL-ED          BRAZIL                         >=35         79    40     40      0
3 months    ki0047075b-MAL-ED          BRAZIL                         <25          79     3      3      0
3 months    ki0047075b-MAL-ED          BRAZIL                         [25-30)      79     8      8      0
3 months    ki0047075b-MAL-ED          BRAZIL                         [30-35)      79    28     28      0
3 months    ki0047075b-MAL-ED          INDIA                          >=35        160    71     68      3
3 months    ki0047075b-MAL-ED          INDIA                          <25         160     3      3      0
3 months    ki0047075b-MAL-ED          INDIA                          [25-30)     160    27     25      2
3 months    ki0047075b-MAL-ED          INDIA                          [30-35)     160    59     58      1
3 months    ki0047075b-MAL-ED          NEPAL                          >=35         79    38     38      0
3 months    ki0047075b-MAL-ED          NEPAL                          <25          79     0      0      0
3 months    ki0047075b-MAL-ED          NEPAL                          [25-30)      79    10      9      1
3 months    ki0047075b-MAL-ED          NEPAL                          [30-35)      79    31     30      1
3 months    ki0047075b-MAL-ED          PERU                           >=35         85    45     42      3
3 months    ki0047075b-MAL-ED          PERU                           <25          85     5      5      0
3 months    ki0047075b-MAL-ED          PERU                           [25-30)      85    18     18      0
3 months    ki0047075b-MAL-ED          PERU                           [30-35)      85    17     15      2
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=35         90    75     74      1
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <25          90     1      1      0
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)      90     6      6      0
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [30-35)      90     8      8      0
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=35        100    65     62      3
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25         100     2      2      0
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)     100     6      6      0
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [30-35)     100    27     26      1
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=35         97    25     21      4
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          <25          97    17     15      2
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)      97    31     28      3
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          [30-35)      97    24     20      4
3 months    ki1135781-COHORTS          GUATEMALA                      >=35        455   185    166     19
3 months    ki1135781-COHORTS          GUATEMALA                      <25         455    74     70      4
3 months    ki1135781-COHORTS          GUATEMALA                      [25-30)     455    95     88      7
3 months    ki1135781-COHORTS          GUATEMALA                      [30-35)     455   101     90     11
3 months    ki1135781-COHORTS          PHILIPPINES                    >=35       2785   524    498     26
3 months    ki1135781-COHORTS          PHILIPPINES                    <25        2785   746    725     21
3 months    ki1135781-COHORTS          PHILIPPINES                    [25-30)    2785   896    878     18
3 months    ki1135781-COHORTS          PHILIPPINES                    [30-35)    2785   619    611      8
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=35        150   101     99      2
6 months    ki0047075b-MAL-ED          BANGLADESH                     <25         150     0      0      0
6 months    ki0047075b-MAL-ED          BANGLADESH                     [25-30)     150    14     13      1
6 months    ki0047075b-MAL-ED          BANGLADESH                     [30-35)     150    35     35      0
6 months    ki0047075b-MAL-ED          BRAZIL                         >=35         79    40     40      0
6 months    ki0047075b-MAL-ED          BRAZIL                         <25          79     3      3      0
6 months    ki0047075b-MAL-ED          BRAZIL                         [25-30)      79     8      8      0
6 months    ki0047075b-MAL-ED          BRAZIL                         [30-35)      79    28     28      0
6 months    ki0047075b-MAL-ED          INDIA                          >=35        161    71     68      3
6 months    ki0047075b-MAL-ED          INDIA                          <25         161     3      3      0
6 months    ki0047075b-MAL-ED          INDIA                          [25-30)     161    27     26      1
6 months    ki0047075b-MAL-ED          INDIA                          [30-35)     161    60     58      2
6 months    ki0047075b-MAL-ED          NEPAL                          >=35         79    38     38      0
6 months    ki0047075b-MAL-ED          NEPAL                          <25          79     0      0      0
6 months    ki0047075b-MAL-ED          NEPAL                          [25-30)      79    10     10      0
6 months    ki0047075b-MAL-ED          NEPAL                          [30-35)      79    31     31      0
6 months    ki0047075b-MAL-ED          PERU                           >=35         83    45     43      2
6 months    ki0047075b-MAL-ED          PERU                           <25          83     5      5      0
6 months    ki0047075b-MAL-ED          PERU                           [25-30)      83    17     17      0
6 months    ki0047075b-MAL-ED          PERU                           [30-35)      83    16     13      3
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=35         89    74     73      1
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <25          89     1      1      0
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)      89     6      6      0
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [30-35)      89     8      8      0
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=35        100    65     61      4
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25         100     2      2      0
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)     100     6      5      1
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [30-35)     100    27     26      1
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=35         96    24     22      2
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <25          96    18     17      1
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)      96    28     24      4
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [30-35)      96    26     18      8
6 months    ki1135781-COHORTS          GUATEMALA                      >=35        445   181    147     34
6 months    ki1135781-COHORTS          GUATEMALA                      <25         445    67     61      6
6 months    ki1135781-COHORTS          GUATEMALA                      [25-30)     445    94     86      8
6 months    ki1135781-COHORTS          GUATEMALA                      [30-35)     445   103     82     21
6 months    ki1135781-COHORTS          PHILIPPINES                    >=35       2624   496    458     38
6 months    ki1135781-COHORTS          PHILIPPINES                    <25        2624   714    681     33
6 months    ki1135781-COHORTS          PHILIPPINES                    [25-30)    2624   834    804     30
6 months    ki1135781-COHORTS          PHILIPPINES                    [30-35)    2624   580    554     26
6 months    ki1148112-LCNI-5           MALAWI                         >=35        106    36     34      2
6 months    ki1148112-LCNI-5           MALAWI                         <25         106    23     19      4
6 months    ki1148112-LCNI-5           MALAWI                         [25-30)     106    27     25      2
6 months    ki1148112-LCNI-5           MALAWI                         [30-35)     106    20     19      1
9 months    ki0047075b-MAL-ED          BANGLADESH                     >=35        150   101     98      3
9 months    ki0047075b-MAL-ED          BANGLADESH                     <25         150     0      0      0
9 months    ki0047075b-MAL-ED          BANGLADESH                     [25-30)     150    14     12      2
9 months    ki0047075b-MAL-ED          BANGLADESH                     [30-35)     150    35     34      1
9 months    ki0047075b-MAL-ED          BRAZIL                         >=35         79    40     40      0
9 months    ki0047075b-MAL-ED          BRAZIL                         <25          79     3      3      0
9 months    ki0047075b-MAL-ED          BRAZIL                         [25-30)      79     8      8      0
9 months    ki0047075b-MAL-ED          BRAZIL                         [30-35)      79    28     28      0
9 months    ki0047075b-MAL-ED          INDIA                          >=35        161    71     69      2
9 months    ki0047075b-MAL-ED          INDIA                          <25         161     3      3      0
9 months    ki0047075b-MAL-ED          INDIA                          [25-30)     161    27     24      3
9 months    ki0047075b-MAL-ED          INDIA                          [30-35)     161    60     58      2
9 months    ki0047075b-MAL-ED          NEPAL                          >=35         79    38     38      0
9 months    ki0047075b-MAL-ED          NEPAL                          <25          79     0      0      0
9 months    ki0047075b-MAL-ED          NEPAL                          [25-30)      79    10     10      0
9 months    ki0047075b-MAL-ED          NEPAL                          [30-35)      79    31     31      0
9 months    ki0047075b-MAL-ED          PERU                           >=35         83    45     43      2
9 months    ki0047075b-MAL-ED          PERU                           <25          83     5      4      1
9 months    ki0047075b-MAL-ED          PERU                           [25-30)      83    17     17      0
9 months    ki0047075b-MAL-ED          PERU                           [30-35)      83    16     13      3
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=35         87    74     73      1
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <25          87     1      1      0
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)      87     6      6      0
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [30-35)      87     6      5      1
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=35         99    65     55     10
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25          99     2      2      0
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)      99     6      5      1
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [30-35)      99    26     24      2
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=35         85    22     19      3
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          <25          85    18     12      6
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)      85    27     21      6
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          [30-35)      85    18     13      5
9 months    ki1135781-COHORTS          GUATEMALA                      >=35        435   171    120     51
9 months    ki1135781-COHORTS          GUATEMALA                      <25         435    64     55      9
9 months    ki1135781-COHORTS          GUATEMALA                      [25-30)     435    95     77     18
9 months    ki1135781-COHORTS          GUATEMALA                      [30-35)     435   105     73     32
9 months    ki1135781-COHORTS          PHILIPPINES                    >=35       2628   490    440     50
9 months    ki1135781-COHORTS          PHILIPPINES                    <25        2628   718    665     53
9 months    ki1135781-COHORTS          PHILIPPINES                    [25-30)    2628   841    791     50
9 months    ki1135781-COHORTS          PHILIPPINES                    [30-35)    2628   579    541     38
9 months    ki1148112-LCNI-5           MALAWI                         >=35         86    31     30      1
9 months    ki1148112-LCNI-5           MALAWI                         <25          86    21     19      2
9 months    ki1148112-LCNI-5           MALAWI                         [25-30)      86    18     16      2
9 months    ki1148112-LCNI-5           MALAWI                         [30-35)      86    16     15      1
12 months   ki0047075b-MAL-ED          BANGLADESH                     >=35        150   102     96      6
12 months   ki0047075b-MAL-ED          BANGLADESH                     <25         150     0      0      0
12 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)     150    14     12      2
12 months   ki0047075b-MAL-ED          BANGLADESH                     [30-35)     150    34     32      2
12 months   ki0047075b-MAL-ED          BRAZIL                         >=35         79    40     40      0
12 months   ki0047075b-MAL-ED          BRAZIL                         <25          79     3      3      0
12 months   ki0047075b-MAL-ED          BRAZIL                         [25-30)      79     8      8      0
12 months   ki0047075b-MAL-ED          BRAZIL                         [30-35)      79    28     28      0
12 months   ki0047075b-MAL-ED          INDIA                          >=35        160    71     67      4
12 months   ki0047075b-MAL-ED          INDIA                          <25         160     3      3      0
12 months   ki0047075b-MAL-ED          INDIA                          [25-30)     160    27     23      4
12 months   ki0047075b-MAL-ED          INDIA                          [30-35)     160    59     53      6
12 months   ki0047075b-MAL-ED          NEPAL                          >=35         79    38     38      0
12 months   ki0047075b-MAL-ED          NEPAL                          <25          79     0      0      0
12 months   ki0047075b-MAL-ED          NEPAL                          [25-30)      79    10      9      1
12 months   ki0047075b-MAL-ED          NEPAL                          [30-35)      79    31     30      1
12 months   ki0047075b-MAL-ED          PERU                           >=35         83    45     43      2
12 months   ki0047075b-MAL-ED          PERU                           <25          83     5      5      0
12 months   ki0047075b-MAL-ED          PERU                           [25-30)      83    17     17      0
12 months   ki0047075b-MAL-ED          PERU                           [30-35)      83    16     15      1
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=35         89    75     73      2
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <25          89     1      1      0
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)      89     6      6      0
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [30-35)      89     7      6      1
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=35         99    64     52     12
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25          99     2      0      2
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)      99     6      5      1
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [30-35)      99    27     24      3
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=35         92    24     15      9
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          <25          92    17      7     10
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)      92    30     15     15
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          [30-35)      92    21     14      7
12 months   ki1135781-COHORTS          GUATEMALA                      >=35        509   202    126     76
12 months   ki1135781-COHORTS          GUATEMALA                      <25         509    79     61     18
12 months   ki1135781-COHORTS          GUATEMALA                      [25-30)     509   113     77     36
12 months   ki1135781-COHORTS          GUATEMALA                      [30-35)     509   115     71     44
12 months   ki1135781-COHORTS          PHILIPPINES                    >=35       2507   465    391     74
12 months   ki1135781-COHORTS          PHILIPPINES                    <25        2507   678    594     84
12 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)    2507   811    703    108
12 months   ki1135781-COHORTS          PHILIPPINES                    [30-35)    2507   553    486     67
12 months   ki1148112-LCNI-5           MALAWI                         >=35         80    26     22      4
12 months   ki1148112-LCNI-5           MALAWI                         <25          80    19     17      2
12 months   ki1148112-LCNI-5           MALAWI                         [25-30)      80    19     17      2
12 months   ki1148112-LCNI-5           MALAWI                         [30-35)      80    16     14      2
18 months   ki0047075b-MAL-ED          BANGLADESH                     >=35        151   102     91     11
18 months   ki0047075b-MAL-ED          BANGLADESH                     <25         151     0      0      0
18 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)     151    14     11      3
18 months   ki0047075b-MAL-ED          BANGLADESH                     [30-35)     151    35     27      8
18 months   ki0047075b-MAL-ED          BRAZIL                         >=35         79    40     40      0
18 months   ki0047075b-MAL-ED          BRAZIL                         <25          79     3      3      0
18 months   ki0047075b-MAL-ED          BRAZIL                         [25-30)      79     8      8      0
18 months   ki0047075b-MAL-ED          BRAZIL                         [30-35)      79    28     28      0
18 months   ki0047075b-MAL-ED          INDIA                          >=35        161    71     62      9
18 months   ki0047075b-MAL-ED          INDIA                          <25         161     3      3      0
18 months   ki0047075b-MAL-ED          INDIA                          [25-30)     161    27     22      5
18 months   ki0047075b-MAL-ED          INDIA                          [30-35)     161    60     52      8
18 months   ki0047075b-MAL-ED          NEPAL                          >=35         79    38     37      1
18 months   ki0047075b-MAL-ED          NEPAL                          <25          79     0      0      0
18 months   ki0047075b-MAL-ED          NEPAL                          [25-30)      79    10      9      1
18 months   ki0047075b-MAL-ED          NEPAL                          [30-35)      79    31     30      1
18 months   ki0047075b-MAL-ED          PERU                           >=35         80    43     38      5
18 months   ki0047075b-MAL-ED          PERU                           <25          80     5      5      0
18 months   ki0047075b-MAL-ED          PERU                           [25-30)      80    16     16      0
18 months   ki0047075b-MAL-ED          PERU                           [30-35)      80    16     14      2
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=35         89    75     69      6
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <25          89     1      1      0
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)      89     6      6      0
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [30-35)      89     7      6      1
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=35         99    65     42     23
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25          99     2      0      2
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)      99     6      3      3
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [30-35)      99    26     20      6
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=35         84    19     10      9
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          <25          84    16      8      8
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)      84    29     17     12
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          [30-35)      84    20     12      8
18 months   ki1135781-COHORTS          GUATEMALA                      >=35        417   161     80     81
18 months   ki1135781-COHORTS          GUATEMALA                      <25         417    64     37     27
18 months   ki1135781-COHORTS          GUATEMALA                      [25-30)     417    96     51     45
18 months   ki1135781-COHORTS          GUATEMALA                      [30-35)     417    96     42     54
18 months   ki1135781-COHORTS          PHILIPPINES                    >=35       2416   446    325    121
18 months   ki1135781-COHORTS          PHILIPPINES                    <25        2416   654    495    159
18 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)    2416   783    594    189
18 months   ki1135781-COHORTS          PHILIPPINES                    [30-35)    2416   533    393    140
18 months   ki1148112-LCNI-5           MALAWI                         >=35         95    33     28      5
18 months   ki1148112-LCNI-5           MALAWI                         <25          95    19     17      2
18 months   ki1148112-LCNI-5           MALAWI                         [25-30)      95    25     21      4
18 months   ki1148112-LCNI-5           MALAWI                         [30-35)      95    18     16      2
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=35        151   102     90     12
24 months   ki0047075b-MAL-ED          BANGLADESH                     <25         151     0      0      0
24 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)     151    14     12      2
24 months   ki0047075b-MAL-ED          BANGLADESH                     [30-35)     151    35     29      6
24 months   ki0047075b-MAL-ED          BRAZIL                         >=35         79    40     40      0
24 months   ki0047075b-MAL-ED          BRAZIL                         <25          79     3      3      0
24 months   ki0047075b-MAL-ED          BRAZIL                         [25-30)      79     8      8      0
24 months   ki0047075b-MAL-ED          BRAZIL                         [30-35)      79    28     28      0
24 months   ki0047075b-MAL-ED          INDIA                          >=35        161    71     63      8
24 months   ki0047075b-MAL-ED          INDIA                          <25         161     3      3      0
24 months   ki0047075b-MAL-ED          INDIA                          [25-30)     161    27     23      4
24 months   ki0047075b-MAL-ED          INDIA                          [30-35)     161    60     52      8
24 months   ki0047075b-MAL-ED          NEPAL                          >=35         79    38     38      0
24 months   ki0047075b-MAL-ED          NEPAL                          <25          79     0      0      0
24 months   ki0047075b-MAL-ED          NEPAL                          [25-30)      79    10      9      1
24 months   ki0047075b-MAL-ED          NEPAL                          [30-35)      79    31     29      2
24 months   ki0047075b-MAL-ED          PERU                           >=35         79    42     39      3
24 months   ki0047075b-MAL-ED          PERU                           <25          79     5      5      0
24 months   ki0047075b-MAL-ED          PERU                           [25-30)      79    16     15      1
24 months   ki0047075b-MAL-ED          PERU                           [30-35)      79    16     15      1
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=35         89    75     68      7
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <25          89     1      1      0
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)      89     6      6      0
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [30-35)      89     7      7      0
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=35        100    65     40     25
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25         100     2      0      2
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)     100     6      3      3
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [30-35)     100    27     18      9
24 months   ki1135781-COHORTS          GUATEMALA                      >=35        495   193     94     99
24 months   ki1135781-COHORTS          GUATEMALA                      <25         495    82     45     37
24 months   ki1135781-COHORTS          GUATEMALA                      [25-30)     495   113     60     53
24 months   ki1135781-COHORTS          GUATEMALA                      [30-35)     495   107     49     58
24 months   ki1135781-COHORTS          PHILIPPINES                    >=35       2371   443    301    142
24 months   ki1135781-COHORTS          PHILIPPINES                    <25        2371   648    474    174
24 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)    2371   761    549    212
24 months   ki1135781-COHORTS          PHILIPPINES                    [30-35)    2371   519    376    143
24 months   ki1148112-LCNI-5           MALAWI                         >=35         74    28     28      0
24 months   ki1148112-LCNI-5           MALAWI                         <25          74    16     15      1
24 months   ki1148112-LCNI-5           MALAWI                         [25-30)      74    17     15      2
24 months   ki1148112-LCNI-5           MALAWI                         [30-35)      74    13     10      3


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
* agecat: 3 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 3 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 9 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18 months, studyid: ki1148112-LCNI-5, country: MALAWI
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
![](/tmp/523344a8-5bcc-4992-844f-d207c0e0d905/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->


```
## Warning: Removed 14 rows containing missing values (geom_errorbar).
```

![](/tmp/523344a8-5bcc-4992-844f-d207c0e0d905/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/523344a8-5bcc-4992-844f-d207c0e0d905/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/523344a8-5bcc-4992-844f-d207c0e0d905/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1135781-COHORTS          PHILIPPINES   >=35                 NA                0.0185529   0.0071591   0.0299466
Birth       ki1135781-COHORTS          PHILIPPINES   <25                  NA                0.0161692   0.0074495   0.0248888
Birth       ki1135781-COHORTS          PHILIPPINES   [25-30)              NA                0.0157233   0.0078278   0.0236187
Birth       ki1135781-COHORTS          PHILIPPINES   [30-35)              NA                0.0092736   0.0018865   0.0166606
3 months    ki1135781-COHORTS          PHILIPPINES   >=35                 NA                0.0496183   0.0310219   0.0682148
3 months    ki1135781-COHORTS          PHILIPPINES   <25                  NA                0.0281501   0.0162789   0.0400214
3 months    ki1135781-COHORTS          PHILIPPINES   [25-30)              NA                0.0200893   0.0109007   0.0292778
3 months    ki1135781-COHORTS          PHILIPPINES   [30-35)              NA                0.0129241   0.0040248   0.0218234
6 months    ki1135781-COHORTS          GUATEMALA     >=35                 NA                0.1878453   0.1308792   0.2448115
6 months    ki1135781-COHORTS          GUATEMALA     <25                  NA                0.0895522   0.0211036   0.1580009
6 months    ki1135781-COHORTS          GUATEMALA     [25-30)              NA                0.0851064   0.0286336   0.1415791
6 months    ki1135781-COHORTS          GUATEMALA     [30-35)              NA                0.2038835   0.1259907   0.2817763
6 months    ki1135781-COHORTS          PHILIPPINES   >=35                 NA                0.0766129   0.0532012   0.1000246
6 months    ki1135781-COHORTS          PHILIPPINES   <25                  NA                0.0462185   0.0308152   0.0616218
6 months    ki1135781-COHORTS          PHILIPPINES   [25-30)              NA                0.0359712   0.0233305   0.0486119
6 months    ki1135781-COHORTS          PHILIPPINES   [30-35)              NA                0.0448276   0.0279842   0.0616710
9 months    ki1135781-COHORTS          GUATEMALA     >=35                 NA                0.2982456   0.2295974   0.3668939
9 months    ki1135781-COHORTS          GUATEMALA     <25                  NA                0.1406250   0.0553581   0.2258919
9 months    ki1135781-COHORTS          GUATEMALA     [25-30)              NA                0.1894737   0.1105797   0.2683677
9 months    ki1135781-COHORTS          GUATEMALA     [30-35)              NA                0.3047619   0.2166164   0.3929074
9 months    ki1135781-COHORTS          PHILIPPINES   >=35                 NA                0.1020408   0.0752338   0.1288478
9 months    ki1135781-COHORTS          PHILIPPINES   <25                  NA                0.0738162   0.0546871   0.0929452
9 months    ki1135781-COHORTS          PHILIPPINES   [25-30)              NA                0.0594530   0.0434681   0.0754379
9 months    ki1135781-COHORTS          PHILIPPINES   [30-35)              NA                0.0656304   0.0454559   0.0858049
12 months   ki1000304b-SAS-FoodSuppl   INDIA         >=35                 NA                0.3750000   0.1802528   0.5697472
12 months   ki1000304b-SAS-FoodSuppl   INDIA         <25                  NA                0.5882353   0.3530030   0.8234676
12 months   ki1000304b-SAS-FoodSuppl   INDIA         [25-30)              NA                0.5000000   0.3201002   0.6798998
12 months   ki1000304b-SAS-FoodSuppl   INDIA         [30-35)              NA                0.3333333   0.1306092   0.5360574
12 months   ki1135781-COHORTS          GUATEMALA     >=35                 NA                0.3762376   0.3093663   0.4431090
12 months   ki1135781-COHORTS          GUATEMALA     <25                  NA                0.2278481   0.1352642   0.3204320
12 months   ki1135781-COHORTS          GUATEMALA     [25-30)              NA                0.3185841   0.2325929   0.4045753
12 months   ki1135781-COHORTS          GUATEMALA     [30-35)              NA                0.3826087   0.2936919   0.4715255
12 months   ki1135781-COHORTS          PHILIPPINES   >=35                 NA                0.1591398   0.1258846   0.1923950
12 months   ki1135781-COHORTS          PHILIPPINES   <25                  NA                0.1238938   0.0990897   0.1486979
12 months   ki1135781-COHORTS          PHILIPPINES   [25-30)              NA                0.1331689   0.1097809   0.1565569
12 months   ki1135781-COHORTS          PHILIPPINES   [30-35)              NA                0.1211573   0.0939552   0.1483594
18 months   ki1000304b-SAS-FoodSuppl   INDIA         >=35                 NA                0.4736842   0.2478241   0.6995443
18 months   ki1000304b-SAS-FoodSuppl   INDIA         <25                  NA                0.5000000   0.2535330   0.7464670
18 months   ki1000304b-SAS-FoodSuppl   INDIA         [25-30)              NA                0.4137931   0.2334636   0.5941226
18 months   ki1000304b-SAS-FoodSuppl   INDIA         [30-35)              NA                0.4000000   0.1840072   0.6159928
18 months   ki1135781-COHORTS          GUATEMALA     >=35                 NA                0.5031056   0.4257809   0.5804303
18 months   ki1135781-COHORTS          GUATEMALA     <25                  NA                0.4218750   0.3007365   0.5430135
18 months   ki1135781-COHORTS          GUATEMALA     [25-30)              NA                0.4687500   0.3688066   0.5686934
18 months   ki1135781-COHORTS          GUATEMALA     [30-35)              NA                0.5625000   0.4631463   0.6618537
18 months   ki1135781-COHORTS          PHILIPPINES   >=35                 NA                0.2713004   0.2300271   0.3125738
18 months   ki1135781-COHORTS          PHILIPPINES   <25                  NA                0.2431193   0.2102362   0.2760023
18 months   ki1135781-COHORTS          PHILIPPINES   [25-30)              NA                0.2413793   0.2114001   0.2713585
18 months   ki1135781-COHORTS          PHILIPPINES   [30-35)              NA                0.2626642   0.2252955   0.3000328
24 months   ki1135781-COHORTS          GUATEMALA     >=35                 NA                0.5129534   0.4423651   0.5835417
24 months   ki1135781-COHORTS          GUATEMALA     <25                  NA                0.4512195   0.3434059   0.5590331
24 months   ki1135781-COHORTS          GUATEMALA     [25-30)              NA                0.4690265   0.3769216   0.5611315
24 months   ki1135781-COHORTS          GUATEMALA     [30-35)              NA                0.5420561   0.4475579   0.6365543
24 months   ki1135781-COHORTS          PHILIPPINES   >=35                 NA                0.3205418   0.2770746   0.3640089
24 months   ki1135781-COHORTS          PHILIPPINES   <25                  NA                0.2685185   0.2343881   0.3026489
24 months   ki1135781-COHORTS          PHILIPPINES   [25-30)              NA                0.2785808   0.2467229   0.3104387
24 months   ki1135781-COHORTS          PHILIPPINES   [30-35)              NA                0.2755299   0.2370839   0.3139758


### Parameter: E(Y)


agecat      studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.0149457   0.0148311   0.0150602
3 months    ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.0262118   0.0257488   0.0266749
6 months    ki1135781-COHORTS          GUATEMALA     NA                   NA                0.1550562   0.1502510   0.1598613
6 months    ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.0483994   0.0478532   0.0489455
9 months    ki1135781-COHORTS          GUATEMALA     NA                   NA                0.2528736   0.2467831   0.2589640
9 months    ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.0726788   0.0721014   0.0732563
12 months   ki1000304b-SAS-FoodSuppl   INDIA         NA                   NA                0.4456522   0.4262674   0.4650370
12 months   ki1135781-COHORTS          GUATEMALA     NA                   NA                0.3418468   0.3370982   0.3465953
12 months   ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.1328281   0.1323027   0.1333535
18 months   ki1000304b-SAS-FoodSuppl   INDIA         NA                   NA                0.4404762   0.4319786   0.4489738
18 months   ki1135781-COHORTS          GUATEMALA     NA                   NA                0.4964029   0.4920503   0.5007555
18 months   ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.2520695   0.2515782   0.2525609
24 months   ki1135781-COHORTS          GUATEMALA     NA                   NA                0.4989899   0.4961190   0.5018608
24 months   ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.2830030   0.2822615   0.2837444


### Parameter: RR


agecat      studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1135781-COHORTS          PHILIPPINES   >=35                 >=35              1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          PHILIPPINES   <25                  >=35              0.8715174   0.3848851   1.9734270
Birth       ki1135781-COHORTS          PHILIPPINES   [25-30)              >=35              0.8474843   0.3833644   1.8734906
Birth       ki1135781-COHORTS          PHILIPPINES   [30-35)              >=35              0.4998454   0.1828163   1.3666478
3 months    ki1135781-COHORTS          PHILIPPINES   >=35                 >=35              1.0000000   1.0000000   1.0000000
3 months    ki1135781-COHORTS          PHILIPPINES   <25                  >=35              0.5673335   0.3227114   0.9973841
3 months    ki1135781-COHORTS          PHILIPPINES   [25-30)              >=35              0.4048764   0.2241359   0.7313636
3 months    ki1135781-COHORTS          PHILIPPINES   [30-35)              >=35              0.2604697   0.1189274   0.5704698
6 months    ki1135781-COHORTS          GUATEMALA     >=35                 >=35              1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          GUATEMALA     <25                  >=35              0.4767340   0.2094850   1.0849239
6 months    ki1135781-COHORTS          GUATEMALA     [25-30)              >=35              0.4530663   0.2184306   0.9397450
6 months    ki1135781-COHORTS          GUATEMALA     [30-35)              >=35              1.0853798   0.6664123   1.7677484
6 months    ki1135781-COHORTS          PHILIPPINES   >=35                 >=35              1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          PHILIPPINES   <25                  >=35              0.6032729   0.3838325   0.9481692
6 months    ki1135781-COHORTS          PHILIPPINES   [25-30)              >=35              0.4695191   0.2947167   0.7480004
6 months    ki1135781-COHORTS          PHILIPPINES   [30-35)              >=35              0.5851180   0.3605025   0.9496830
9 months    ki1135781-COHORTS          GUATEMALA     >=35                 >=35              1.0000000   1.0000000   1.0000000
9 months    ki1135781-COHORTS          GUATEMALA     <25                  >=35              0.4715074   0.2465030   0.9018926
9 months    ki1135781-COHORTS          GUATEMALA     [25-30)              >=35              0.6352941   0.3947761   1.0223481
9 months    ki1135781-COHORTS          GUATEMALA     [30-35)              >=35              1.0218487   0.7060814   1.4788307
9 months    ki1135781-COHORTS          PHILIPPINES   >=35                 >=35              1.0000000   1.0000000   1.0000000
9 months    ki1135781-COHORTS          PHILIPPINES   <25                  >=35              0.7233983   0.5001689   1.0462568
9 months    ki1135781-COHORTS          PHILIPPINES   [25-30)              >=35              0.5826397   0.4000797   0.8485035
9 months    ki1135781-COHORTS          PHILIPPINES   [30-35)              >=35              0.6431779   0.4292588   0.9637025
12 months   ki1000304b-SAS-FoodSuppl   INDIA         >=35                 >=35              1.0000000   1.0000000   1.0000000
12 months   ki1000304b-SAS-FoodSuppl   INDIA         <25                  >=35              1.5686275   0.8144440   3.0211923
12 months   ki1000304b-SAS-FoodSuppl   INDIA         [25-30)              >=35              1.3333333   0.7088543   2.5079593
12 months   ki1000304b-SAS-FoodSuppl   INDIA         [30-35)              >=35              0.8888889   0.3995101   1.9777307
12 months   ki1135781-COHORTS          GUATEMALA     >=35                 >=35              1.0000000   1.0000000   1.0000000
12 months   ki1135781-COHORTS          GUATEMALA     <25                  >=35              0.6055963   0.3886586   0.9436222
12 months   ki1135781-COHORTS          GUATEMALA     [25-30)              >=35              0.8467629   0.6129236   1.1698153
12 months   ki1135781-COHORTS          GUATEMALA     [30-35)              >=35              1.0169336   0.7589797   1.3625582
12 months   ki1135781-COHORTS          PHILIPPINES   >=35                 >=35              1.0000000   1.0000000   1.0000000
12 months   ki1135781-COHORTS          PHILIPPINES   <25                  >=35              0.7785219   0.5828920   1.0398090
12 months   ki1135781-COHORTS          PHILIPPINES   [25-30)              >=35              0.8368047   0.6369053   1.0994447
12 months   ki1135781-COHORTS          PHILIPPINES   [30-35)              >=35              0.7613264   0.5602276   1.0346115
18 months   ki1000304b-SAS-FoodSuppl   INDIA         >=35                 >=35              1.0000000   1.0000000   1.0000000
18 months   ki1000304b-SAS-FoodSuppl   INDIA         <25                  >=35              1.0555556   0.5316637   2.0956809
18 months   ki1000304b-SAS-FoodSuppl   INDIA         [25-30)              >=35              0.8735632   0.4578835   1.6666089
18 months   ki1000304b-SAS-FoodSuppl   INDIA         [30-35)              >=35              0.8444444   0.4108829   1.7354979
18 months   ki1135781-COHORTS          GUATEMALA     >=35                 >=35              1.0000000   1.0000000   1.0000000
18 months   ki1135781-COHORTS          GUATEMALA     <25                  >=35              0.8385417   0.6054521   1.1613672
18 months   ki1135781-COHORTS          GUATEMALA     [25-30)              >=35              0.9317130   0.7163658   1.2117958
18 months   ki1135781-COHORTS          GUATEMALA     [30-35)              >=35              1.1180556   0.8846659   1.4130174
18 months   ki1135781-COHORTS          PHILIPPINES   >=35                 >=35              1.0000000   1.0000000   1.0000000
18 months   ki1135781-COHORTS          PHILIPPINES   <25                  >=35              0.8961256   0.7310760   1.0984371
18 months   ki1135781-COHORTS          PHILIPPINES   [25-30)              >=35              0.8897122   0.7310682   1.0827823
18 months   ki1135781-COHORTS          PHILIPPINES   [30-35)              >=35              0.9681671   0.7861252   1.1923642
24 months   ki1135781-COHORTS          GUATEMALA     >=35                 >=35              1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          GUATEMALA     <25                  >=35              0.8796502   0.6676685   1.1589351
24 months   ki1135781-COHORTS          GUATEMALA     [25-30)              >=35              0.9143649   0.7194148   1.1621433
24 months   ki1135781-COHORTS          GUATEMALA     [30-35)              >=35              1.0567356   0.8462702   1.3195432
24 months   ki1135781-COHORTS          PHILIPPINES   >=35                 >=35              1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          PHILIPPINES   <25                  >=35              0.8377021   0.6956177   1.0088082
24 months   ki1135781-COHORTS          PHILIPPINES   [25-30)              >=35              0.8690937   0.7278266   1.0377798
24 months   ki1135781-COHORTS          PHILIPPINES   [30-35)              >=35              0.8595756   0.7075905   1.0442058


### Parameter: PAR


agecat      studyid                    country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1135781-COHORTS          PHILIPPINES   >=35                 NA                -0.0036072   -0.0150015    0.0077871
3 months    ki1135781-COHORTS          PHILIPPINES   >=35                 NA                -0.0234065   -0.0420087   -0.0048042
6 months    ki1135781-COHORTS          GUATEMALA     >=35                 NA                -0.0327891   -0.0899576    0.0243793
6 months    ki1135781-COHORTS          PHILIPPINES   >=35                 NA                -0.0282135   -0.0516316   -0.0047954
9 months    ki1135781-COHORTS          GUATEMALA     >=35                 NA                -0.0453721   -0.1142899    0.0235458
9 months    ki1135781-COHORTS          PHILIPPINES   >=35                 NA                -0.0293620   -0.0561752   -0.0025488
12 months   ki1000304b-SAS-FoodSuppl   INDIA         >=35                 NA                 0.0706522   -0.1250575    0.2663618
12 months   ki1135781-COHORTS          GUATEMALA     >=35                 NA                -0.0343909   -0.1014306    0.0326489
12 months   ki1135781-COHORTS          PHILIPPINES   >=35                 NA                -0.0263117   -0.0595711    0.0069476
18 months   ki1000304b-SAS-FoodSuppl   INDIA         >=35                 NA                -0.0332080   -0.2592279    0.1928119
18 months   ki1135781-COHORTS          GUATEMALA     >=35                 NA                -0.0067027   -0.0841498    0.0707444
18 months   ki1135781-COHORTS          PHILIPPINES   >=35                 NA                -0.0192309   -0.0605072    0.0220454
24 months   ki1135781-COHORTS          GUATEMALA     >=35                 NA                -0.0139635   -0.0846101    0.0566832
24 months   ki1135781-COHORTS          PHILIPPINES   >=35                 NA                -0.0375388   -0.0810123    0.0059347


### Parameter: PAF


agecat      studyid                    country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1135781-COHORTS          PHILIPPINES   >=35                 NA                -0.2413560   -1.2941792    0.3283154
3 months    ki1135781-COHORTS          PHILIPPINES   >=35                 NA                -0.8929729   -1.7548281   -0.3007514
6 months    ki1135781-COHORTS          GUATEMALA     >=35                 NA                -0.2114661   -0.6432427    0.1068574
6 months    ki1135781-COHORTS          PHILIPPINES   >=35                 NA                -0.5829312   -1.1491466   -0.1658912
9 months    ki1135781-COHORTS          GUATEMALA     >=35                 NA                -0.1794258   -0.4865499    0.0642458
9 months    ki1135781-COHORTS          PHILIPPINES   >=35                 NA                -0.4039962   -0.8260426   -0.0794957
12 months   ki1000304b-SAS-FoodSuppl   INDIA         >=35                 NA                 0.1585366   -0.4169855    0.5003049
12 months   ki1135781-COHORTS          GUATEMALA     >=35                 NA                -0.1006032   -0.3153955    0.0791155
12 months   ki1135781-COHORTS          PHILIPPINES   >=35                 NA                -0.1980884   -0.4765868    0.0278825
18 months   ki1000304b-SAS-FoodSuppl   INDIA         >=35                 NA                -0.0753912   -0.7330631    0.3327039
18 months   ki1135781-COHORTS          GUATEMALA     >=35                 NA                -0.0135026   -0.1821761    0.1311045
18 months   ki1135781-COHORTS          PHILIPPINES   >=35                 NA                -0.0762921   -0.2531571    0.0756109
24 months   ki1135781-COHORTS          GUATEMALA     >=35                 NA                -0.0279835   -0.1797834    0.1042847
24 months   ki1135781-COHORTS          PHILIPPINES   >=35                 NA                -0.1326446   -0.2971712    0.0110143
