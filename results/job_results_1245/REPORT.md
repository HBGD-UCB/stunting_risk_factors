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

agecat      studyid                    country                        A             n     nA   nAY0   nAY1
----------  -------------------------  -----------------------------  --------  -----  -----  -----  -----
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=35        145     99     83     16
Birth       ki0047075b-MAL-ED          BANGLADESH                     <25         145      0      0      0
Birth       ki0047075b-MAL-ED          BANGLADESH                     [25-30)     145     13     11      2
Birth       ki0047075b-MAL-ED          BANGLADESH                     [30-35)     145     33     31      2
Birth       ki0047075b-MAL-ED          BRAZIL                         >=35         68     35     31      4
Birth       ki0047075b-MAL-ED          BRAZIL                         <25          68      3      3      0
Birth       ki0047075b-MAL-ED          BRAZIL                         [25-30)      68      7      7      0
Birth       ki0047075b-MAL-ED          BRAZIL                         [30-35)      68     23     20      3
Birth       ki0047075b-MAL-ED          INDIA                          >=35        131     57     49      8
Birth       ki0047075b-MAL-ED          INDIA                          <25         131      2      2      0
Birth       ki0047075b-MAL-ED          INDIA                          [25-30)     131     24     20      4
Birth       ki0047075b-MAL-ED          INDIA                          [30-35)     131     48     40      8
Birth       ki0047075b-MAL-ED          NEPAL                          >=35         61     31     28      3
Birth       ki0047075b-MAL-ED          NEPAL                          <25          61      0      0      0
Birth       ki0047075b-MAL-ED          NEPAL                          [25-30)      61      6      6      0
Birth       ki0047075b-MAL-ED          NEPAL                          [30-35)      61     24     22      2
Birth       ki0047075b-MAL-ED          PERU                           >=35         80     42     40      2
Birth       ki0047075b-MAL-ED          PERU                           <25          80      4      3      1
Birth       ki0047075b-MAL-ED          PERU                           [25-30)      80     17     15      2
Birth       ki0047075b-MAL-ED          PERU                           [30-35)      80     17     12      5
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=35         76     63     56      7
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <25          76      1      1      0
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)      76      5      4      1
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [30-35)      76      7      6      1
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=35         46     27     24      3
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25          46      1      1      0
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)      46      3      3      0
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [30-35)      46     15     13      2
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=35         70      5      4      1
Birth       ki1000304b-SAS-CompFeed    INDIA                          <25          70     23     14      9
Birth       ki1000304b-SAS-CompFeed    INDIA                          [25-30)      70     26     20      6
Birth       ki1000304b-SAS-CompFeed    INDIA                          [30-35)      70     16     15      1
Birth       ki1119695-PROBIT           BELARUS                        >=35       6524    663    663      0
Birth       ki1119695-PROBIT           BELARUS                        <25        6524   2144   2135      9
Birth       ki1119695-PROBIT           BELARUS                        [25-30)    6524   2447   2437     10
Birth       ki1119695-PROBIT           BELARUS                        [30-35)    6524   1270   1269      1
Birth       ki1135781-COHORTS          GUATEMALA                      >=35        390    155    147      8
Birth       ki1135781-COHORTS          GUATEMALA                      <25         390     65     63      2
Birth       ki1135781-COHORTS          GUATEMALA                      [25-30)     390     82     78      4
Birth       ki1135781-COHORTS          GUATEMALA                      [30-35)     390     88     83      5
Birth       ki1135781-COHORTS          PHILIPPINES                    >=35       2944    539    501     38
Birth       ki1135781-COHORTS          PHILIPPINES                    <25        2944    804    746     58
Birth       ki1135781-COHORTS          PHILIPPINES                    [25-30)    2944    954    902     52
Birth       ki1135781-COHORTS          PHILIPPINES                    [30-35)    2944    647    615     32
3 months    ki0047075b-MAL-ED          BANGLADESH                     >=35        151    102     89     13
3 months    ki0047075b-MAL-ED          BANGLADESH                     <25         151      0      0      0
3 months    ki0047075b-MAL-ED          BANGLADESH                     [25-30)     151     14      9      5
3 months    ki0047075b-MAL-ED          BANGLADESH                     [30-35)     151     35     31      4
3 months    ki0047075b-MAL-ED          BRAZIL                         >=35         79     40     40      0
3 months    ki0047075b-MAL-ED          BRAZIL                         <25          79      3      3      0
3 months    ki0047075b-MAL-ED          BRAZIL                         [25-30)      79      8      7      1
3 months    ki0047075b-MAL-ED          BRAZIL                         [30-35)      79     28     25      3
3 months    ki0047075b-MAL-ED          INDIA                          >=35        160     71     63      8
3 months    ki0047075b-MAL-ED          INDIA                          <25         160      3      2      1
3 months    ki0047075b-MAL-ED          INDIA                          [25-30)     160     27     23      4
3 months    ki0047075b-MAL-ED          INDIA                          [30-35)     160     59     52      7
3 months    ki0047075b-MAL-ED          NEPAL                          >=35         79     38     38      0
3 months    ki0047075b-MAL-ED          NEPAL                          <25          79      0      0      0
3 months    ki0047075b-MAL-ED          NEPAL                          [25-30)      79     10      9      1
3 months    ki0047075b-MAL-ED          NEPAL                          [30-35)      79     31     28      3
3 months    ki0047075b-MAL-ED          PERU                           >=35         85     45     36      9
3 months    ki0047075b-MAL-ED          PERU                           <25          85      5      4      1
3 months    ki0047075b-MAL-ED          PERU                           [25-30)      85     18     14      4
3 months    ki0047075b-MAL-ED          PERU                           [30-35)      85     17      9      8
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=35         90     75     66      9
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <25          90      1      1      0
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)      90      6      6      0
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [30-35)      90      8      7      1
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=35        100     65     49     16
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25         100      2      1      1
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)     100      6      4      2
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [30-35)     100     27     25      2
3 months    ki1000304b-SAS-CompFeed    INDIA                          >=35        410     35     25     10
3 months    ki1000304b-SAS-CompFeed    INDIA                          <25         410    102     75     27
3 months    ki1000304b-SAS-CompFeed    INDIA                          [25-30)     410    192    149     43
3 months    ki1000304b-SAS-CompFeed    INDIA                          [30-35)     410     81     52     29
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=35         97     25     17      8
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          <25          97     17      9      8
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)      97     31     20     11
3 months    ki1000304b-SAS-FoodSuppl   INDIA                          [30-35)      97     24     13     11
3 months    ki1119695-PROBIT           BELARUS                        >=35       7746    770    719     51
3 months    ki1119695-PROBIT           BELARUS                        <25        7746   2600   2426    174
3 months    ki1119695-PROBIT           BELARUS                        [25-30)    7746   2897   2734    163
3 months    ki1119695-PROBIT           BELARUS                        [30-35)    7746   1479   1395     84
3 months    ki1135781-COHORTS          GUATEMALA                      >=35        455    185    123     62
3 months    ki1135781-COHORTS          GUATEMALA                      <25         455     74     58     16
3 months    ki1135781-COHORTS          GUATEMALA                      [25-30)     455     95     66     29
3 months    ki1135781-COHORTS          GUATEMALA                      [30-35)     455    101     66     35
3 months    ki1135781-COHORTS          PHILIPPINES                    >=35       2785    524    445     79
3 months    ki1135781-COHORTS          PHILIPPINES                    <25        2785    746    640    106
3 months    ki1135781-COHORTS          PHILIPPINES                    [25-30)    2785    896    801     95
3 months    ki1135781-COHORTS          PHILIPPINES                    [30-35)    2785    619    551     68
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=35        150    101     83     18
6 months    ki0047075b-MAL-ED          BANGLADESH                     <25         150      0      0      0
6 months    ki0047075b-MAL-ED          BANGLADESH                     [25-30)     150     14      9      5
6 months    ki0047075b-MAL-ED          BANGLADESH                     [30-35)     150     35     28      7
6 months    ki0047075b-MAL-ED          BRAZIL                         >=35         79     40     40      0
6 months    ki0047075b-MAL-ED          BRAZIL                         <25          79      3      3      0
6 months    ki0047075b-MAL-ED          BRAZIL                         [25-30)      79      8      8      0
6 months    ki0047075b-MAL-ED          BRAZIL                         [30-35)      79     28     28      0
6 months    ki0047075b-MAL-ED          INDIA                          >=35        161     71     57     14
6 months    ki0047075b-MAL-ED          INDIA                          <25         161      3      1      2
6 months    ki0047075b-MAL-ED          INDIA                          [25-30)     161     27     22      5
6 months    ki0047075b-MAL-ED          INDIA                          [30-35)     161     60     51      9
6 months    ki0047075b-MAL-ED          NEPAL                          >=35         79     38     37      1
6 months    ki0047075b-MAL-ED          NEPAL                          <25          79      0      0      0
6 months    ki0047075b-MAL-ED          NEPAL                          [25-30)      79     10      9      1
6 months    ki0047075b-MAL-ED          NEPAL                          [30-35)      79     31     29      2
6 months    ki0047075b-MAL-ED          PERU                           >=35         83     45     38      7
6 months    ki0047075b-MAL-ED          PERU                           <25          83      5      3      2
6 months    ki0047075b-MAL-ED          PERU                           [25-30)      83     17     14      3
6 months    ki0047075b-MAL-ED          PERU                           [30-35)      83     16      9      7
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=35         89     74     64     10
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <25          89      1      1      0
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)      89      6      5      1
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [30-35)      89      8      7      1
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=35        100     65     44     21
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25         100      2      0      2
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)     100      6      5      1
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [30-35)     100     27     24      3
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=35        409     34     24     10
6 months    ki1000304b-SAS-CompFeed    INDIA                          <25         409    108     81     27
6 months    ki1000304b-SAS-CompFeed    INDIA                          [25-30)     409    189    142     47
6 months    ki1000304b-SAS-CompFeed    INDIA                          [30-35)     409     78     51     27
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=35         96     24     15      9
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <25          96     18      8     10
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)      96     28     13     15
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [30-35)      96     26     12     14
6 months    ki1119695-PROBIT           BELARUS                        >=35       7365    737    680     57
6 months    ki1119695-PROBIT           BELARUS                        <25        7365   2449   2285    164
6 months    ki1119695-PROBIT           BELARUS                        [25-30)    7365   2771   2569    202
6 months    ki1119695-PROBIT           BELARUS                        [30-35)    7365   1408   1322     86
6 months    ki1135781-COHORTS          GUATEMALA                      >=35        445    181     98     83
6 months    ki1135781-COHORTS          GUATEMALA                      <25         445     67     43     24
6 months    ki1135781-COHORTS          GUATEMALA                      [25-30)     445     94     54     40
6 months    ki1135781-COHORTS          GUATEMALA                      [30-35)     445    103     49     54
6 months    ki1135781-COHORTS          PHILIPPINES                    >=35       2624    496    371    125
6 months    ki1135781-COHORTS          PHILIPPINES                    <25        2624    714    544    170
6 months    ki1135781-COHORTS          PHILIPPINES                    [25-30)    2624    834    675    159
6 months    ki1135781-COHORTS          PHILIPPINES                    [30-35)    2624    580    478    102
6 months    ki1148112-LCNI-5           MALAWI                         >=35        106     36     28      8
6 months    ki1148112-LCNI-5           MALAWI                         <25         106     23     13     10
6 months    ki1148112-LCNI-5           MALAWI                         [25-30)     106     27     20      7
6 months    ki1148112-LCNI-5           MALAWI                         [30-35)     106     20     12      8
9 months    ki0047075b-MAL-ED          BANGLADESH                     >=35        150    101     74     27
9 months    ki0047075b-MAL-ED          BANGLADESH                     <25         150      0      0      0
9 months    ki0047075b-MAL-ED          BANGLADESH                     [25-30)     150     14     10      4
9 months    ki0047075b-MAL-ED          BANGLADESH                     [30-35)     150     35     27      8
9 months    ki0047075b-MAL-ED          BRAZIL                         >=35         79     40     40      0
9 months    ki0047075b-MAL-ED          BRAZIL                         <25          79      3      3      0
9 months    ki0047075b-MAL-ED          BRAZIL                         [25-30)      79      8      8      0
9 months    ki0047075b-MAL-ED          BRAZIL                         [30-35)      79     28     28      0
9 months    ki0047075b-MAL-ED          INDIA                          >=35        161     71     55     16
9 months    ki0047075b-MAL-ED          INDIA                          <25         161      3      3      0
9 months    ki0047075b-MAL-ED          INDIA                          [25-30)     161     27     20      7
9 months    ki0047075b-MAL-ED          INDIA                          [30-35)     161     60     45     15
9 months    ki0047075b-MAL-ED          NEPAL                          >=35         79     38     35      3
9 months    ki0047075b-MAL-ED          NEPAL                          <25          79      0      0      0
9 months    ki0047075b-MAL-ED          NEPAL                          [25-30)      79     10      8      2
9 months    ki0047075b-MAL-ED          NEPAL                          [30-35)      79     31     27      4
9 months    ki0047075b-MAL-ED          PERU                           >=35         83     45     35     10
9 months    ki0047075b-MAL-ED          PERU                           <25          83      5      3      2
9 months    ki0047075b-MAL-ED          PERU                           [25-30)      83     17     11      6
9 months    ki0047075b-MAL-ED          PERU                           [30-35)      83     16      8      8
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=35         87     74     65      9
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <25          87      1      1      0
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)      87      6      5      1
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [30-35)      87      6      3      3
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=35         99     65     36     29
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25          99      2      0      2
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)      99      6      1      5
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [30-35)      99     26     16     10
9 months    ki1000304b-SAS-CompFeed    INDIA                          >=35        402     31     21     10
9 months    ki1000304b-SAS-CompFeed    INDIA                          <25         402    106     61     45
9 months    ki1000304b-SAS-CompFeed    INDIA                          [25-30)     402    187    117     70
9 months    ki1000304b-SAS-CompFeed    INDIA                          [30-35)     402     78     52     26
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=35         85     22      8     14
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          <25          85     18      7     11
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)      85     27      9     18
9 months    ki1000304b-SAS-FoodSuppl   INDIA                          [30-35)      85     18      4     14
9 months    ki1119695-PROBIT           BELARUS                        >=35       7203    723    694     29
9 months    ki1119695-PROBIT           BELARUS                        <25        7203   2397   2288    109
9 months    ki1119695-PROBIT           BELARUS                        [25-30)    7203   2691   2582    109
9 months    ki1119695-PROBIT           BELARUS                        [30-35)    7203   1392   1325     67
9 months    ki1135781-COHORTS          GUATEMALA                      >=35        435    171     66    105
9 months    ki1135781-COHORTS          GUATEMALA                      <25         435     64     30     34
9 months    ki1135781-COHORTS          GUATEMALA                      [25-30)     435     95     37     58
9 months    ki1135781-COHORTS          GUATEMALA                      [30-35)     435    105     32     73
9 months    ki1135781-COHORTS          PHILIPPINES                    >=35       2628    490    339    151
9 months    ki1135781-COHORTS          PHILIPPINES                    <25        2628    718    514    204
9 months    ki1135781-COHORTS          PHILIPPINES                    [25-30)    2628    841    628    213
9 months    ki1135781-COHORTS          PHILIPPINES                    [30-35)    2628    579    421    158
9 months    ki1148112-LCNI-5           MALAWI                         >=35         86     31     22      9
9 months    ki1148112-LCNI-5           MALAWI                         <25          86     21     14      7
9 months    ki1148112-LCNI-5           MALAWI                         [25-30)      86     18     13      5
9 months    ki1148112-LCNI-5           MALAWI                         [30-35)      86     16     11      5
12 months   ki0047075b-MAL-ED          BANGLADESH                     >=35        150    102     71     31
12 months   ki0047075b-MAL-ED          BANGLADESH                     <25         150      0      0      0
12 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)     150     14      9      5
12 months   ki0047075b-MAL-ED          BANGLADESH                     [30-35)     150     34     20     14
12 months   ki0047075b-MAL-ED          BRAZIL                         >=35         79     40     39      1
12 months   ki0047075b-MAL-ED          BRAZIL                         <25          79      3      3      0
12 months   ki0047075b-MAL-ED          BRAZIL                         [25-30)      79      8      8      0
12 months   ki0047075b-MAL-ED          BRAZIL                         [30-35)      79     28     28      0
12 months   ki0047075b-MAL-ED          INDIA                          >=35        160     71     51     20
12 months   ki0047075b-MAL-ED          INDIA                          <25         160      3      1      2
12 months   ki0047075b-MAL-ED          INDIA                          [25-30)     160     27     15     12
12 months   ki0047075b-MAL-ED          INDIA                          [30-35)     160     59     41     18
12 months   ki0047075b-MAL-ED          NEPAL                          >=35         79     38     32      6
12 months   ki0047075b-MAL-ED          NEPAL                          <25          79      0      0      0
12 months   ki0047075b-MAL-ED          NEPAL                          [25-30)      79     10      7      3
12 months   ki0047075b-MAL-ED          NEPAL                          [30-35)      79     31     27      4
12 months   ki0047075b-MAL-ED          PERU                           >=35         83     45     32     13
12 months   ki0047075b-MAL-ED          PERU                           <25          83      5      1      4
12 months   ki0047075b-MAL-ED          PERU                           [25-30)      83     17     14      3
12 months   ki0047075b-MAL-ED          PERU                           [30-35)      83     16      8      8
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=35         89     75     59     16
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <25          89      1      1      0
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)      89      6      6      0
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [30-35)      89      7      5      2
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=35         99     64     27     37
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25          99      2      0      2
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)      99      6      1      5
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [30-35)      99     27     13     14
12 months   ki1000304b-SAS-CompFeed    INDIA                          >=35        412     32     20     12
12 months   ki1000304b-SAS-CompFeed    INDIA                          <25         412    113     66     47
12 months   ki1000304b-SAS-CompFeed    INDIA                          [25-30)     412    187    111     76
12 months   ki1000304b-SAS-CompFeed    INDIA                          [30-35)     412     80     34     46
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=35         92     24      5     19
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          <25          92     17      4     13
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)      92     30      6     24
12 months   ki1000304b-SAS-FoodSuppl   INDIA                          [30-35)      92     21      4     17
12 months   ki1119695-PROBIT           BELARUS                        >=35       7441    746    724     22
12 months   ki1119695-PROBIT           BELARUS                        <25        7441   2492   2402     90
12 months   ki1119695-PROBIT           BELARUS                        [25-30)    7441   2769   2680     89
12 months   ki1119695-PROBIT           BELARUS                        [30-35)    7441   1434   1383     51
12 months   ki1135781-COHORTS          GUATEMALA                      >=35        509    202     60    142
12 months   ki1135781-COHORTS          GUATEMALA                      <25         509     79     27     52
12 months   ki1135781-COHORTS          GUATEMALA                      [25-30)     509    113     32     81
12 months   ki1135781-COHORTS          GUATEMALA                      [30-35)     509    115     32     83
12 months   ki1135781-COHORTS          PHILIPPINES                    >=35       2507    465    259    206
12 months   ki1135781-COHORTS          PHILIPPINES                    <25        2507    678    423    255
12 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)    2507    811    523    288
12 months   ki1135781-COHORTS          PHILIPPINES                    [30-35)    2507    553    327    226
12 months   ki1148112-LCNI-5           MALAWI                         >=35         80     26     18      8
12 months   ki1148112-LCNI-5           MALAWI                         <25          80     19     12      7
12 months   ki1148112-LCNI-5           MALAWI                         [25-30)      80     19     14      5
12 months   ki1148112-LCNI-5           MALAWI                         [30-35)      80     16     11      5
18 months   ki0047075b-MAL-ED          BANGLADESH                     >=35        151    102     56     46
18 months   ki0047075b-MAL-ED          BANGLADESH                     <25         151      0      0      0
18 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)     151     14      7      7
18 months   ki0047075b-MAL-ED          BANGLADESH                     [30-35)     151     35     16     19
18 months   ki0047075b-MAL-ED          BRAZIL                         >=35         79     40     40      0
18 months   ki0047075b-MAL-ED          BRAZIL                         <25          79      3      3      0
18 months   ki0047075b-MAL-ED          BRAZIL                         [25-30)      79      8      7      1
18 months   ki0047075b-MAL-ED          BRAZIL                         [30-35)      79     28     27      1
18 months   ki0047075b-MAL-ED          INDIA                          >=35        161     71     44     27
18 months   ki0047075b-MAL-ED          INDIA                          <25         161      3      0      3
18 months   ki0047075b-MAL-ED          INDIA                          [25-30)     161     27     13     14
18 months   ki0047075b-MAL-ED          INDIA                          [30-35)     161     60     32     28
18 months   ki0047075b-MAL-ED          NEPAL                          >=35         79     38     30      8
18 months   ki0047075b-MAL-ED          NEPAL                          <25          79      0      0      0
18 months   ki0047075b-MAL-ED          NEPAL                          [25-30)      79     10      6      4
18 months   ki0047075b-MAL-ED          NEPAL                          [30-35)      79     31     24      7
18 months   ki0047075b-MAL-ED          PERU                           >=35         80     43     23     20
18 months   ki0047075b-MAL-ED          PERU                           <25          80      5      4      1
18 months   ki0047075b-MAL-ED          PERU                           [25-30)      80     16      9      7
18 months   ki0047075b-MAL-ED          PERU                           [30-35)      80     16      6     10
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=35         89     75     55     20
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <25          89      1      1      0
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)      89      6      5      1
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [30-35)      89      7      4      3
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=35         99     65     14     51
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25          99      2      0      2
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)      99      6      1      5
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [30-35)      99     26      6     20
18 months   ki1000304b-SAS-CompFeed    INDIA                          >=35        393     29     11     18
18 months   ki1000304b-SAS-CompFeed    INDIA                          <25         393    107     59     48
18 months   ki1000304b-SAS-CompFeed    INDIA                          [25-30)     393    180     86     94
18 months   ki1000304b-SAS-CompFeed    INDIA                          [30-35)     393     77     32     45
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=35         84     19      2     17
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          <25          84     16      2     14
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)      84     29      3     26
18 months   ki1000304b-SAS-FoodSuppl   INDIA                          [30-35)      84     20      3     17
18 months   ki1119695-PROBIT           BELARUS                        >=35        734     75     67      8
18 months   ki1119695-PROBIT           BELARUS                        <25         734    250    222     28
18 months   ki1119695-PROBIT           BELARUS                        [25-30)     734    278    251     27
18 months   ki1119695-PROBIT           BELARUS                        [30-35)     734    131    119     12
18 months   ki1135781-COHORTS          GUATEMALA                      >=35        417    161     24    137
18 months   ki1135781-COHORTS          GUATEMALA                      <25         417     64     12     52
18 months   ki1135781-COHORTS          GUATEMALA                      [25-30)     417     96     16     80
18 months   ki1135781-COHORTS          GUATEMALA                      [30-35)     417     96     13     83
18 months   ki1135781-COHORTS          PHILIPPINES                    >=35       2416    446    177    269
18 months   ki1135781-COHORTS          PHILIPPINES                    <25        2416    654    271    383
18 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)    2416    783    336    447
18 months   ki1135781-COHORTS          PHILIPPINES                    [30-35)    2416    533    206    327
18 months   ki1148112-LCNI-5           MALAWI                         >=35         95     33     17     16
18 months   ki1148112-LCNI-5           MALAWI                         <25          95     19     11      8
18 months   ki1148112-LCNI-5           MALAWI                         [25-30)      95     25     15     10
18 months   ki1148112-LCNI-5           MALAWI                         [30-35)      95     18     11      7
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=35        151    102     59     43
24 months   ki0047075b-MAL-ED          BANGLADESH                     <25         151      0      0      0
24 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)     151     14      7      7
24 months   ki0047075b-MAL-ED          BANGLADESH                     [30-35)     151     35     16     19
24 months   ki0047075b-MAL-ED          BRAZIL                         >=35         79     40     40      0
24 months   ki0047075b-MAL-ED          BRAZIL                         <25          79      3      3      0
24 months   ki0047075b-MAL-ED          BRAZIL                         [25-30)      79      8      8      0
24 months   ki0047075b-MAL-ED          BRAZIL                         [30-35)      79     28     27      1
24 months   ki0047075b-MAL-ED          INDIA                          >=35        161     71     45     26
24 months   ki0047075b-MAL-ED          INDIA                          <25         161      3      0      3
24 months   ki0047075b-MAL-ED          INDIA                          [25-30)     161     27     15     12
24 months   ki0047075b-MAL-ED          INDIA                          [30-35)     161     60     35     25
24 months   ki0047075b-MAL-ED          NEPAL                          >=35         79     38     28     10
24 months   ki0047075b-MAL-ED          NEPAL                          <25          79      0      0      0
24 months   ki0047075b-MAL-ED          NEPAL                          [25-30)      79     10      8      2
24 months   ki0047075b-MAL-ED          NEPAL                          [30-35)      79     31     24      7
24 months   ki0047075b-MAL-ED          PERU                           >=35         79     42     28     14
24 months   ki0047075b-MAL-ED          PERU                           <25          79      5      3      2
24 months   ki0047075b-MAL-ED          PERU                           [25-30)      79     16     12      4
24 months   ki0047075b-MAL-ED          PERU                           [30-35)      79     16     10      6
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=35         89     75     51     24
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <25          89      1      1      0
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)      89      6      5      1
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [30-35)      89      7      4      3
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=35        100     65     16     49
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25         100      2      0      2
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)     100      6      1      5
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [30-35)     100     27      7     20
24 months   ki1119695-PROBIT           BELARUS                        >=35       1580    178    160     18
24 months   ki1119695-PROBIT           BELARUS                        <25        1580    484    435     49
24 months   ki1119695-PROBIT           BELARUS                        [25-30)    1580    611    546     65
24 months   ki1119695-PROBIT           BELARUS                        [30-35)    1580    307    280     27
24 months   ki1135781-COHORTS          GUATEMALA                      >=35        495    193     35    158
24 months   ki1135781-COHORTS          GUATEMALA                      <25         495     82     12     70
24 months   ki1135781-COHORTS          GUATEMALA                      [25-30)     495    113     15     98
24 months   ki1135781-COHORTS          GUATEMALA                      [30-35)     495    107     17     90
24 months   ki1135781-COHORTS          PHILIPPINES                    >=35       2371    443    167    276
24 months   ki1135781-COHORTS          PHILIPPINES                    <25        2371    648    230    418
24 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)    2371    761    304    457
24 months   ki1135781-COHORTS          PHILIPPINES                    [30-35)    2371    519    201    318
24 months   ki1148112-LCNI-5           MALAWI                         >=35         74     28     16     12
24 months   ki1148112-LCNI-5           MALAWI                         <25          74     16     10      6
24 months   ki1148112-LCNI-5           MALAWI                         [25-30)      74     17     11      6
24 months   ki1148112-LCNI-5           MALAWI                         [30-35)      74     13      9      4


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
* agecat: 3 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
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
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 9 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 9 months, studyid: ki1119695-PROBIT, country: BELARUS
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
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
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
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
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

```
## Warning: Removed 44 rows containing missing values (geom_errorbar).
```

![](/tmp/ee926fd7-2762-4f04-ade1-231a878d1115/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->


```
## Warning: Removed 63 rows containing missing values (geom_errorbar).
```

![](/tmp/ee926fd7-2762-4f04-ade1-231a878d1115/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


```
## Warning: Removed 11 rows containing missing values (geom_errorbar).
```

![](/tmp/ee926fd7-2762-4f04-ade1-231a878d1115/REPORT_files/figure-html/plot_paf-1.png)<!-- -->


```
## Warning: Removed 11 rows containing missing values (geom_errorbar).
```

![](/tmp/ee926fd7-2762-4f04-ade1-231a878d1115/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1135781-COHORTS          PHILIPPINES   >=35                 NA                0.0705009   0.0488862   0.0921156
Birth       ki1135781-COHORTS          PHILIPPINES   <25                  NA                0.0721393   0.0542530   0.0900256
Birth       ki1135781-COHORTS          PHILIPPINES   [25-30)              NA                0.0545073   0.0400993   0.0689154
Birth       ki1135781-COHORTS          PHILIPPINES   [30-35)              NA                0.0494590   0.0327490   0.0661691
3 months    ki1000304b-SAS-CompFeed    INDIA         >=35                 NA                0.2857143          NA          NA
3 months    ki1000304b-SAS-CompFeed    INDIA         <25                  NA                0.2647059          NA          NA
3 months    ki1000304b-SAS-CompFeed    INDIA         [25-30)              NA                0.2239583          NA          NA
3 months    ki1000304b-SAS-CompFeed    INDIA         [30-35)              NA                0.3580247          NA          NA
3 months    ki1000304b-SAS-FoodSuppl   INDIA         >=35                 NA                0.3200000   0.1361948   0.5038052
3 months    ki1000304b-SAS-FoodSuppl   INDIA         <25                  NA                0.4705882   0.2320867   0.7090898
3 months    ki1000304b-SAS-FoodSuppl   INDIA         [25-30)              NA                0.3548387   0.1855347   0.5241427
3 months    ki1000304b-SAS-FoodSuppl   INDIA         [30-35)              NA                0.4583333   0.2579556   0.6587111
3 months    ki1119695-PROBIT           BELARUS       >=35                 NA                0.0662338          NA          NA
3 months    ki1119695-PROBIT           BELARUS       <25                  NA                0.0669231          NA          NA
3 months    ki1119695-PROBIT           BELARUS       [25-30)              NA                0.0562651          NA          NA
3 months    ki1119695-PROBIT           BELARUS       [30-35)              NA                0.0567951          NA          NA
3 months    ki1135781-COHORTS          GUATEMALA     >=35                 NA                0.3351351   0.2670399   0.4032304
3 months    ki1135781-COHORTS          GUATEMALA     <25                  NA                0.2162162   0.1223191   0.3101133
3 months    ki1135781-COHORTS          GUATEMALA     [25-30)              NA                0.3052632   0.2125564   0.3979699
3 months    ki1135781-COHORTS          GUATEMALA     [30-35)              NA                0.3465347   0.2536274   0.4394419
3 months    ki1135781-COHORTS          PHILIPPINES   >=35                 NA                0.1507634   0.1201210   0.1814058
3 months    ki1135781-COHORTS          PHILIPPINES   <25                  NA                0.1420912   0.1170323   0.1671500
3 months    ki1135781-COHORTS          PHILIPPINES   [25-30)              NA                0.1060268   0.0858644   0.1261892
3 months    ki1135781-COHORTS          PHILIPPINES   [30-35)              NA                0.1098546   0.0852158   0.1344935
6 months    ki1000304b-SAS-CompFeed    INDIA         >=35                 NA                0.2941176          NA          NA
6 months    ki1000304b-SAS-CompFeed    INDIA         <25                  NA                0.2500000          NA          NA
6 months    ki1000304b-SAS-CompFeed    INDIA         [25-30)              NA                0.2486772          NA          NA
6 months    ki1000304b-SAS-CompFeed    INDIA         [30-35)              NA                0.3461538          NA          NA
6 months    ki1000304b-SAS-FoodSuppl   INDIA         >=35                 NA                0.3750000   0.1802973   0.5697027
6 months    ki1000304b-SAS-FoodSuppl   INDIA         <25                  NA                0.5555556   0.3247968   0.7863143
6 months    ki1000304b-SAS-FoodSuppl   INDIA         [25-30)              NA                0.5357143   0.3500185   0.7214101
6 months    ki1000304b-SAS-FoodSuppl   INDIA         [30-35)              NA                0.5384615   0.3458348   0.7310883
6 months    ki1119695-PROBIT           BELARUS       >=35                 NA                0.0773406          NA          NA
6 months    ki1119695-PROBIT           BELARUS       <25                  NA                0.0669661          NA          NA
6 months    ki1119695-PROBIT           BELARUS       [25-30)              NA                0.0728979          NA          NA
6 months    ki1119695-PROBIT           BELARUS       [30-35)              NA                0.0610795          NA          NA
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
9 months    ki1000304b-SAS-CompFeed    INDIA         >=35                 NA                0.3225806          NA          NA
9 months    ki1000304b-SAS-CompFeed    INDIA         <25                  NA                0.4245283          NA          NA
9 months    ki1000304b-SAS-CompFeed    INDIA         [25-30)              NA                0.3743316          NA          NA
9 months    ki1000304b-SAS-CompFeed    INDIA         [30-35)              NA                0.3333333          NA          NA
9 months    ki1119695-PROBIT           BELARUS       >=35                 NA                0.0401107          NA          NA
9 months    ki1119695-PROBIT           BELARUS       <25                  NA                0.0454735          NA          NA
9 months    ki1119695-PROBIT           BELARUS       [25-30)              NA                0.0405054          NA          NA
9 months    ki1119695-PROBIT           BELARUS       [30-35)              NA                0.0481322          NA          NA
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
12 months   ki1000304b-SAS-CompFeed    INDIA         >=35                 NA                0.3750000          NA          NA
12 months   ki1000304b-SAS-CompFeed    INDIA         <25                  NA                0.4159292          NA          NA
12 months   ki1000304b-SAS-CompFeed    INDIA         [25-30)              NA                0.4064171          NA          NA
12 months   ki1000304b-SAS-CompFeed    INDIA         [30-35)              NA                0.5750000          NA          NA
12 months   ki1119695-PROBIT           BELARUS       >=35                 NA                0.0294906          NA          NA
12 months   ki1119695-PROBIT           BELARUS       <25                  NA                0.0361156          NA          NA
12 months   ki1119695-PROBIT           BELARUS       [25-30)              NA                0.0321416          NA          NA
12 months   ki1119695-PROBIT           BELARUS       [30-35)              NA                0.0355649          NA          NA
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
18 months   ki1000304b-SAS-CompFeed    INDIA         >=35                 NA                0.6206897          NA          NA
18 months   ki1000304b-SAS-CompFeed    INDIA         <25                  NA                0.4485981          NA          NA
18 months   ki1000304b-SAS-CompFeed    INDIA         [25-30)              NA                0.5222222          NA          NA
18 months   ki1000304b-SAS-CompFeed    INDIA         [30-35)              NA                0.5844156          NA          NA
18 months   ki1119695-PROBIT           BELARUS       >=35                 NA                0.1066667          NA          NA
18 months   ki1119695-PROBIT           BELARUS       <25                  NA                0.1120000          NA          NA
18 months   ki1119695-PROBIT           BELARUS       [25-30)              NA                0.0971223          NA          NA
18 months   ki1119695-PROBIT           BELARUS       [30-35)              NA                0.0916031          NA          NA
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
24 months   ki1119695-PROBIT           BELARUS       >=35                 NA                0.1011236          NA          NA
24 months   ki1119695-PROBIT           BELARUS       <25                  NA                0.1012397          NA          NA
24 months   ki1119695-PROBIT           BELARUS       [25-30)              NA                0.1063830          NA          NA
24 months   ki1119695-PROBIT           BELARUS       [30-35)              NA                0.0879479          NA          NA
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
Birth       ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.0611413   0.0524852   0.0697974
3 months    ki1000304b-SAS-CompFeed    INDIA         NA                   NA                0.2658537          NA          NA
3 months    ki1000304b-SAS-FoodSuppl   INDIA         NA                   NA                0.3917526   0.2941057   0.4893995
3 months    ki1119695-PROBIT           BELARUS       NA                   NA                0.0609347          NA          NA
3 months    ki1135781-COHORTS          GUATEMALA     NA                   NA                0.3120879   0.2694668   0.3547091
3 months    ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.1249551   0.1126721   0.1372382
6 months    ki1000304b-SAS-CompFeed    INDIA         NA                   NA                0.2713936          NA          NA
6 months    ki1000304b-SAS-FoodSuppl   INDIA         NA                   NA                0.5000000   0.3994560   0.6005440
6 months    ki1119695-PROBIT           BELARUS       NA                   NA                0.0691107          NA          NA
6 months    ki1135781-COHORTS          GUATEMALA     NA                   NA                0.4516854   0.4053951   0.4979756
6 months    ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.2118902   0.1962516   0.2275288
6 months    ki1148112-LCNI-5           MALAWI        NA                   NA                0.3113208   0.2227550   0.3998865
9 months    ki1000304b-SAS-CompFeed    INDIA         NA                   NA                0.3756219          NA          NA
9 months    ki1119695-PROBIT           BELARUS       NA                   NA                0.0435929          NA          NA
9 months    ki1135781-COHORTS          GUATEMALA     NA                   NA                0.6206897   0.5750400   0.6663393
9 months    ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.2762557   0.2591569   0.2933545
9 months    ki1148112-LCNI-5           MALAWI        NA                   NA                0.3023256   0.2046913   0.3999599
12 months   ki1000304b-SAS-CompFeed    INDIA         NA                   NA                0.4393204          NA          NA
12 months   ki1119695-PROBIT           BELARUS       NA                   NA                0.0338664          NA          NA
12 months   ki1135781-COHORTS          GUATEMALA     NA                   NA                0.7033399   0.6636181   0.7430616
12 months   ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.3889110   0.3698242   0.4079979
12 months   ki1148112-LCNI-5           MALAWI        NA                   NA                0.3125000   0.2102894   0.4147106
18 months   ki1000304b-SAS-CompFeed    INDIA         NA                   NA                0.5216285          NA          NA
18 months   ki1119695-PROBIT           BELARUS       NA                   NA                0.1021798          NA          NA
18 months   ki1135781-COHORTS          GUATEMALA     NA                   NA                0.8441247   0.8092674   0.8789820
18 months   ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.5902318   0.5706176   0.6098460
18 months   ki1148112-LCNI-5           MALAWI        NA                   NA                0.4315789   0.3314524   0.5317055
24 months   ki1119695-PROBIT           BELARUS       NA                   NA                0.1006329          NA          NA
24 months   ki1135781-COHORTS          GUATEMALA     NA                   NA                0.8404040   0.8081087   0.8726994
24 months   ki1135781-COHORTS          PHILIPPINES   NA                   NA                0.6195698   0.6000239   0.6391157


### Parameter: RR


agecat      studyid                    country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1135781-COHORTS          PHILIPPINES   >=35                 >=35              1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          PHILIPPINES   <25                  >=35              1.0232391   0.6898198   1.5178141
Birth       ki1135781-COHORTS          PHILIPPINES   [25-30)              >=35              0.7731436   0.5157693   1.1589502
Birth       ki1135781-COHORTS          PHILIPPINES   [30-35)              >=35              0.7015375   0.4445433   1.1071021
3 months    ki1000304b-SAS-CompFeed    INDIA         >=35                 >=35              1.0000000          NA          NA
3 months    ki1000304b-SAS-CompFeed    INDIA         <25                  >=35              0.9264706          NA          NA
3 months    ki1000304b-SAS-CompFeed    INDIA         [25-30)              >=35              0.7838542          NA          NA
3 months    ki1000304b-SAS-CompFeed    INDIA         [30-35)              >=35              1.2530864          NA          NA
3 months    ki1000304b-SAS-FoodSuppl   INDIA         >=35                 >=35              1.0000000   1.0000000   1.0000000
3 months    ki1000304b-SAS-FoodSuppl   INDIA         <25                  >=35              1.4705882   0.6836166   3.1635128
3 months    ki1000304b-SAS-FoodSuppl   INDIA         [25-30)              >=35              1.1088710   0.5255190   2.3397723
3 months    ki1000304b-SAS-FoodSuppl   INDIA         [30-35)              >=35              1.4322917   0.6958869   2.9479781
3 months    ki1119695-PROBIT           BELARUS       >=35                 >=35              1.0000000          NA          NA
3 months    ki1119695-PROBIT           BELARUS       <25                  >=35              1.0104072          NA          NA
3 months    ki1119695-PROBIT           BELARUS       [25-30)              >=35              0.8494927          NA          NA
3 months    ki1119695-PROBIT           BELARUS       [30-35)              >=35              0.8574951          NA          NA
3 months    ki1135781-COHORTS          GUATEMALA     >=35                 >=35              1.0000000   1.0000000   1.0000000
3 months    ki1135781-COHORTS          GUATEMALA     <25                  >=35              0.6451613   0.3994319   1.0420628
3 months    ki1135781-COHORTS          GUATEMALA     [25-30)              >=35              0.9108659   0.6320686   1.3126370
3 months    ki1135781-COHORTS          GUATEMALA     [30-35)              >=35              1.0340147   0.7386354   1.4475157
3 months    ki1135781-COHORTS          PHILIPPINES   >=35                 >=35              1.0000000   1.0000000   1.0000000
3 months    ki1135781-COHORTS          PHILIPPINES   <25                  >=35              0.9424780   0.7201202   1.2334952
3 months    ki1135781-COHORTS          PHILIPPINES   [25-30)              >=35              0.7032663   0.5324015   0.9289671
3 months    ki1135781-COHORTS          PHILIPPINES   [30-35)              >=35              0.7286559   0.5383578   0.9862202
6 months    ki1000304b-SAS-CompFeed    INDIA         >=35                 >=35              1.0000000          NA          NA
6 months    ki1000304b-SAS-CompFeed    INDIA         <25                  >=35              0.8500000          NA          NA
6 months    ki1000304b-SAS-CompFeed    INDIA         [25-30)              >=35              0.8455026          NA          NA
6 months    ki1000304b-SAS-CompFeed    INDIA         [30-35)              >=35              1.1769231          NA          NA
6 months    ki1000304b-SAS-FoodSuppl   INDIA         >=35                 >=35              1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA         <25                  >=35              1.4814815   0.7619556   2.8804662
6 months    ki1000304b-SAS-FoodSuppl   INDIA         [25-30)              >=35              1.4285714   0.7652072   2.6670113
6 months    ki1000304b-SAS-FoodSuppl   INDIA         [30-35)              >=35              1.4358974   0.7643526   2.6974482
6 months    ki1119695-PROBIT           BELARUS       >=35                 >=35              1.0000000          NA          NA
6 months    ki1119695-PROBIT           BELARUS       <25                  >=35              0.8658600          NA          NA
6 months    ki1119695-PROBIT           BELARUS       [25-30)              >=35              0.9425567          NA          NA
6 months    ki1119695-PROBIT           BELARUS       [30-35)              >=35              0.7897478          NA          NA
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
9 months    ki1000304b-SAS-CompFeed    INDIA         >=35                 >=35              1.0000000          NA          NA
9 months    ki1000304b-SAS-CompFeed    INDIA         <25                  >=35              1.3160377          NA          NA
9 months    ki1000304b-SAS-CompFeed    INDIA         [25-30)              >=35              1.1604278          NA          NA
9 months    ki1000304b-SAS-CompFeed    INDIA         [30-35)              >=35              1.0333333          NA          NA
9 months    ki1119695-PROBIT           BELARUS       >=35                 >=35              1.0000000          NA          NA
9 months    ki1119695-PROBIT           BELARUS       <25                  >=35              1.1337016          NA          NA
9 months    ki1119695-PROBIT           BELARUS       [25-30)              >=35              1.0098412          NA          NA
9 months    ki1119695-PROBIT           BELARUS       [30-35)              >=35              1.1999851          NA          NA
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
12 months   ki1000304b-SAS-CompFeed    INDIA         >=35                 >=35              1.0000000          NA          NA
12 months   ki1000304b-SAS-CompFeed    INDIA         <25                  >=35              1.1091445          NA          NA
12 months   ki1000304b-SAS-CompFeed    INDIA         [25-30)              >=35              1.0837790          NA          NA
12 months   ki1000304b-SAS-CompFeed    INDIA         [30-35)              >=35              1.5333333          NA          NA
12 months   ki1119695-PROBIT           BELARUS       >=35                 >=35              1.0000000          NA          NA
12 months   ki1119695-PROBIT           BELARUS       <25                  >=35              1.2246461          NA          NA
12 months   ki1119695-PROBIT           BELARUS       [25-30)              >=35              1.0898913          NA          NA
12 months   ki1119695-PROBIT           BELARUS       [30-35)              >=35              1.2059719          NA          NA
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
18 months   ki1000304b-SAS-CompFeed    INDIA         >=35                 >=35              1.0000000          NA          NA
18 months   ki1000304b-SAS-CompFeed    INDIA         <25                  >=35              0.7227414          NA          NA
18 months   ki1000304b-SAS-CompFeed    INDIA         [25-30)              >=35              0.8413580          NA          NA
18 months   ki1000304b-SAS-CompFeed    INDIA         [30-35)              >=35              0.9415584          NA          NA
18 months   ki1119695-PROBIT           BELARUS       >=35                 >=35              1.0000000          NA          NA
18 months   ki1119695-PROBIT           BELARUS       <25                  >=35              1.0500000          NA          NA
18 months   ki1119695-PROBIT           BELARUS       [25-30)              >=35              0.9105216          NA          NA
18 months   ki1119695-PROBIT           BELARUS       [30-35)              >=35              0.8587787          NA          NA
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
24 months   ki1119695-PROBIT           BELARUS       >=35                 >=35              1.0000000          NA          NA
24 months   ki1119695-PROBIT           BELARUS       <25                  >=35              1.0011478          NA          NA
24 months   ki1119695-PROBIT           BELARUS       [25-30)              >=35              1.0520095          NA          NA
24 months   ki1119695-PROBIT           BELARUS       [30-35)              >=35              0.8697068          NA          NA
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
Birth       ki1135781-COHORTS          PHILIPPINES   >=35                 NA                -0.0093596   -0.0286223    0.0099031
3 months    ki1000304b-SAS-CompFeed    INDIA         >=35                 NA                -0.0198606           NA           NA
3 months    ki1000304b-SAS-FoodSuppl   INDIA         >=35                 NA                 0.0717526   -0.0891967    0.2327018
3 months    ki1119695-PROBIT           BELARUS       >=35                 NA                -0.0052991           NA           NA
3 months    ki1135781-COHORTS          GUATEMALA     >=35                 NA                -0.0230472   -0.0748430    0.0287486
3 months    ki1135781-COHORTS          PHILIPPINES   >=35                 NA                -0.0258082   -0.0529467    0.0013303
6 months    ki1000304b-SAS-CompFeed    INDIA         >=35                 NA                -0.0227240           NA           NA
6 months    ki1000304b-SAS-FoodSuppl   INDIA         >=35                 NA                 0.1250000   -0.0454807    0.2954807
6 months    ki1119695-PROBIT           BELARUS       >=35                 NA                -0.0082299           NA           NA
6 months    ki1135781-COHORTS          GUATEMALA     >=35                 NA                -0.0068781   -0.0628052    0.0490490
6 months    ki1135781-COHORTS          PHILIPPINES   >=35                 NA                -0.0401259   -0.0740806   -0.0061712
6 months    ki1148112-LCNI-5           MALAWI        >=35                 NA                 0.0890985   -0.0284429    0.2066400
9 months    ki1000304b-SAS-CompFeed    INDIA         >=35                 NA                 0.0530412           NA           NA
9 months    ki1119695-PROBIT           BELARUS       >=35                 NA                 0.0034823           NA           NA
9 months    ki1135781-COHORTS          GUATEMALA     >=35                 NA                 0.0066546   -0.0501324    0.0634415
9 months    ki1135781-COHORTS          PHILIPPINES   >=35                 NA                -0.0319076   -0.0685259    0.0047108
9 months    ki1148112-LCNI-5           MALAWI        >=35                 NA                 0.0120030   -0.1173854    0.1413914
12 months   ki1000304b-SAS-CompFeed    INDIA         >=35                 NA                 0.0643204           NA           NA
12 months   ki1119695-PROBIT           BELARUS       >=35                 NA                 0.0043758           NA           NA
12 months   ki1135781-COHORTS          GUATEMALA     >=35                 NA                 0.0003696   -0.0486055    0.0493447
12 months   ki1135781-COHORTS          PHILIPPINES   >=35                 NA                -0.0540997   -0.0946841   -0.0135153
12 months   ki1148112-LCNI-5           MALAWI        >=35                 NA                 0.0048077   -0.1421685    0.1517839
18 months   ki1000304b-SAS-CompFeed    INDIA         >=35                 NA                -0.0990612           NA           NA
18 months   ki1119695-PROBIT           BELARUS       >=35                 NA                -0.0044868           NA           NA
18 months   ki1135781-COHORTS          GUATEMALA     >=35                 NA                -0.0068070   -0.0504669    0.0368530
18 months   ki1135781-COHORTS          PHILIPPINES   >=35                 NA                -0.0129072   -0.0539650    0.0281505
18 months   ki1148112-LCNI-5           MALAWI        >=35                 NA                -0.0532695   -0.1910932    0.0845541
24 months   ki1119695-PROBIT           BELARUS       >=35                 NA                -0.0004907           NA           NA
24 months   ki1135781-COHORTS          GUATEMALA     >=35                 NA                 0.0217512   -0.0194191    0.0629214
24 months   ki1135781-COHORTS          PHILIPPINES   >=35                 NA                -0.0034550   -0.0441755    0.0372654


### Parameter: PAF


agecat      studyid                    country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki1135781-COHORTS          PHILIPPINES   >=35                 NA                -0.1530818   -0.5145436    0.1221133
3 months    ki1000304b-SAS-CompFeed    INDIA         >=35                 NA                -0.0747051           NA           NA
3 months    ki1000304b-SAS-FoodSuppl   INDIA         >=35                 NA                 0.1831579   -0.3509648    0.5061078
3 months    ki1119695-PROBIT           BELARUS       >=35                 NA                -0.0869635           NA           NA
3 months    ki1135781-COHORTS          GUATEMALA     >=35                 NA                -0.0738485   -0.2533170    0.0799211
3 months    ki1135781-COHORTS          PHILIPPINES   >=35                 NA                -0.2065401   -0.4437558   -0.0083000
6 months    ki1000304b-SAS-CompFeed    INDIA         >=35                 NA                -0.0837308           NA           NA
6 months    ki1000304b-SAS-FoodSuppl   INDIA         >=35                 NA                 0.2500000   -0.1845905    0.5251524
6 months    ki1119695-PROBIT           BELARUS       >=35                 NA                -0.1190831           NA           NA
6 months    ki1135781-COHORTS          GUATEMALA     >=35                 NA                -0.0152277   -0.1469210    0.1013441
6 months    ki1135781-COHORTS          PHILIPPINES   >=35                 NA                -0.1893711   -0.3606631   -0.0396428
6 months    ki1148112-LCNI-5           MALAWI        >=35                 NA                 0.2861953   -0.2061228    0.5775578
9 months    ki1000304b-SAS-CompFeed    INDIA         >=35                 NA                 0.1412091           NA           NA
9 months    ki1119695-PROBIT           BELARUS       >=35                 NA                 0.0798821           NA           NA
9 months    ki1135781-COHORTS          GUATEMALA     >=35                 NA                 0.0107212   -0.0851413    0.0981152
9 months    ki1135781-COHORTS          PHILIPPINES   >=35                 NA                -0.1155001   -0.2562170    0.0094542
9 months    ki1148112-LCNI-5           MALAWI        >=35                 NA                 0.0397022   -0.4994909    0.3850101
12 months   ki1000304b-SAS-CompFeed    INDIA         >=35                 NA                 0.1464088           NA           NA
12 months   ki1119695-PROBIT           BELARUS       >=35                 NA                 0.1292076           NA           NA
12 months   ki1135781-COHORTS          GUATEMALA     >=35                 NA                 0.0005255   -0.0715897    0.0677875
12 months   ki1135781-COHORTS          PHILIPPINES   >=35                 NA                -0.1391056   -0.2484990   -0.0392972
12 months   ki1148112-LCNI-5           MALAWI        >=35                 NA                 0.0153846   -0.5875082    0.3893150
18 months   ki1000304b-SAS-CompFeed    INDIA         >=35                 NA                -0.1899075           NA           NA
18 months   ki1119695-PROBIT           BELARUS       >=35                 NA                -0.0439111           NA           NA
18 months   ki1135781-COHORTS          GUATEMALA     >=35                 NA                -0.0080639   -0.0611472    0.0423638
18 months   ki1135781-COHORTS          PHILIPPINES   >=35                 NA                -0.0218681   -0.0938604    0.0453861
18 months   ki1148112-LCNI-5           MALAWI        >=35                 NA                -0.1234294   -0.4939937    0.1552215
24 months   ki1119695-PROBIT           BELARUS       >=35                 NA                -0.0048760           NA           NA
24 months   ki1135781-COHORTS          GUATEMALA     >=35                 NA                 0.0258818   -0.0244578    0.0737478
24 months   ki1135781-COHORTS          PHILIPPINES   >=35                 NA                -0.0055765   -0.0734962    0.0580460
