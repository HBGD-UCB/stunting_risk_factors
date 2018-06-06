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

**Intervention Variable:** birthlen

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        A              n     nA   nAY0   nAY1
----------  -------------------------  -----------------------------  --------  ------  -----  -----  -----
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=0          257     39     39      0
Birth       ki0047075b-MAL-ED          BANGLADESH                     <-3          257      9      0      9
Birth       ki0047075b-MAL-ED          BANGLADESH                     [-3--2)      257     38     38      0
Birth       ki0047075b-MAL-ED          BANGLADESH                     [-2--1)      257     83     83      0
Birth       ki0047075b-MAL-ED          BANGLADESH                     [-1-0)       257     88     88      0
Birth       ki0047075b-MAL-ED          BRAZIL                         >=0          191     44     44      0
Birth       ki0047075b-MAL-ED          BRAZIL                         <-3          191      8      0      8
Birth       ki0047075b-MAL-ED          BRAZIL                         [-3--2)      191     13     13      0
Birth       ki0047075b-MAL-ED          BRAZIL                         [-2--1)      191     48     48      0
Birth       ki0047075b-MAL-ED          BRAZIL                         [-1-0)       191     78     78      0
Birth       ki0047075b-MAL-ED          INDIA                          >=0          206     34     34      0
Birth       ki0047075b-MAL-ED          INDIA                          <-3          206      7      0      7
Birth       ki0047075b-MAL-ED          INDIA                          [-3--2)      206     26     26      0
Birth       ki0047075b-MAL-ED          INDIA                          [-2--1)      206     66     66      0
Birth       ki0047075b-MAL-ED          INDIA                          [-1-0)       206     73     73      0
Birth       ki0047075b-MAL-ED          NEPAL                          >=0          173     45     45      0
Birth       ki0047075b-MAL-ED          NEPAL                          <-3          173      6      0      6
Birth       ki0047075b-MAL-ED          NEPAL                          [-3--2)      173     12     12      0
Birth       ki0047075b-MAL-ED          NEPAL                          [-2--1)      173     46     46      0
Birth       ki0047075b-MAL-ED          NEPAL                          [-1-0)       173     64     64      0
Birth       ki0047075b-MAL-ED          PERU                           >=0          287     44     44      0
Birth       ki0047075b-MAL-ED          PERU                           <-3          287      8      0      8
Birth       ki0047075b-MAL-ED          PERU                           [-3--2)      287     26     26      0
Birth       ki0047075b-MAL-ED          PERU                           [-2--1)      287     94     94      0
Birth       ki0047075b-MAL-ED          PERU                           [-1-0)       287    115    115      0
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=0          262     59     59      0
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <-3          262      2      0      2
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [-3--2)      262     26     26      0
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [-2--1)      262     73     73      0
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [-1-0)       262    102    102      0
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=0          123     24     24      0
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <-3          123      6      0      6
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-3--2)      123     12     12      0
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-2--1)      123     32     32      0
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-1-0)       123     49     49      0
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          >=0           90     13     13      0
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          <-3           90      3      0      3
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          [-3--2)       90     13     13      0
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          [-2--1)       90     21     21      0
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          [-1-0)        90     40     40      0
Birth       ki1000108-IRC              INDIA                          >=0          388    143    143      0
Birth       ki1000108-IRC              INDIA                          <-3          388     16      0     16
Birth       ki1000108-IRC              INDIA                          [-3--2)      388     27     27      0
Birth       ki1000108-IRC              INDIA                          [-2--1)      388     65     65      0
Birth       ki1000108-IRC              INDIA                          [-1-0)       388    137    137      0
Birth       ki1000109-EE               PAKISTAN                       >=0            2      1      1      0
Birth       ki1000109-EE               PAKISTAN                       <-3            2      0      0      0
Birth       ki1000109-EE               PAKISTAN                       [-3--2)        2      1      1      0
Birth       ki1000109-EE               PAKISTAN                       [-2--1)        2      0      0      0
Birth       ki1000109-EE               PAKISTAN                       [-1-0)         2      0      0      0
Birth       ki1000109-ResPak           PAKISTAN                       >=0            7      3      3      0
Birth       ki1000109-ResPak           PAKISTAN                       <-3            7      0      0      0
Birth       ki1000109-ResPak           PAKISTAN                       [-3--2)        7      2      2      0
Birth       ki1000109-ResPak           PAKISTAN                       [-2--1)        7      0      0      0
Birth       ki1000109-ResPak           PAKISTAN                       [-1-0)         7      2      2      0
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=0           28      7      7      0
Birth       ki1017093-NIH-Birth        BANGLADESH                     <-3           28      0      0      0
Birth       ki1017093-NIH-Birth        BANGLADESH                     [-3--2)       28      1      1      0
Birth       ki1017093-NIH-Birth        BANGLADESH                     [-2--1)       28      9      9      0
Birth       ki1017093-NIH-Birth        BANGLADESH                     [-1-0)        28     11     11      0
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=0           27      5      5      0
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <-3           27      1      0      1
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [-3--2)       27      4      4      0
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [-2--1)       27      8      8      0
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [-1-0)        27      9      9      0
Birth       ki1101329-Keneba           GAMBIA                         >=0         1541    825    825      0
Birth       ki1101329-Keneba           GAMBIA                         <-3         1541     30      1     29
Birth       ki1101329-Keneba           GAMBIA                         [-3--2)     1541     52     52      0
Birth       ki1101329-Keneba           GAMBIA                         [-2--1)     1541    163    163      0
Birth       ki1101329-Keneba           GAMBIA                         [-1-0)      1541    471    471      0
Birth       ki1114097-CMIN             BANGLADESH                     >=0           13      2      2      0
Birth       ki1114097-CMIN             BANGLADESH                     <-3           13      5      0      5
Birth       ki1114097-CMIN             BANGLADESH                     [-3--2)       13      1      1      0
Birth       ki1114097-CMIN             BANGLADESH                     [-2--1)       13      4      4      0
Birth       ki1114097-CMIN             BANGLADESH                     [-1-0)        13      1      1      0
Birth       ki1114097-CMIN             BRAZIL                         >=0          115     63     63      0
Birth       ki1114097-CMIN             BRAZIL                         <-3          115      3      0      3
Birth       ki1114097-CMIN             BRAZIL                         [-3--2)      115      2      2      0
Birth       ki1114097-CMIN             BRAZIL                         [-2--1)      115     11     11      0
Birth       ki1114097-CMIN             BRAZIL                         [-1-0)       115     36     36      0
Birth       ki1114097-CMIN             PERU                           >=0           10     10     10      0
Birth       ki1114097-CMIN             PERU                           <-3           10      0      0      0
Birth       ki1114097-CMIN             PERU                           [-3--2)       10      0      0      0
Birth       ki1114097-CMIN             PERU                           [-2--1)       10      0      0      0
Birth       ki1114097-CMIN             PERU                           [-1-0)        10      0      0      0
Birth       ki1114097-CONTENT          PERU                           >=0            2      1      1      0
Birth       ki1114097-CONTENT          PERU                           <-3            2      0      0      0
Birth       ki1114097-CONTENT          PERU                           [-3--2)        2      0      0      0
Birth       ki1114097-CONTENT          PERU                           [-2--1)        2      1      1      0
Birth       ki1114097-CONTENT          PERU                           [-1-0)         2      0      0      0
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=0        13830   4658   4658      0
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <-3        13830    450      9    441
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)    13830    982    982      0
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)    13830   2565   2565      0
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)     13830   5175   5175      0
Birth       ki1135781-COHORTS          GUATEMALA                      >=0          407    242    242      0
Birth       ki1135781-COHORTS          GUATEMALA                      <-3          407      4      0      4
Birth       ki1135781-COHORTS          GUATEMALA                      [-3--2)      407     15     15      0
Birth       ki1135781-COHORTS          GUATEMALA                      [-2--1)      407     39     39      0
Birth       ki1135781-COHORTS          GUATEMALA                      [-1-0)       407    107    107      0
Birth       ki1135781-COHORTS          INDIA                          >=0         6640   1852   1852      0
Birth       ki1135781-COHORTS          INDIA                          <-3         6640    214      8    206
Birth       ki1135781-COHORTS          INDIA                          [-3--2)     6640    578    578      0
Birth       ki1135781-COHORTS          INDIA                          [-2--1)     6640   1568   1568      0
Birth       ki1135781-COHORTS          INDIA                          [-1-0)      6640   2428   2428      0
Birth       ki1135781-COHORTS          PHILIPPINES                    >=0         3050   1328   1328      0
Birth       ki1135781-COHORTS          PHILIPPINES                    <-3         3050     49      3     46
Birth       ki1135781-COHORTS          PHILIPPINES                    [-3--2)     3050    138    138      0
Birth       ki1135781-COHORTS          PHILIPPINES                    [-2--1)     3050    448    448      0
Birth       ki1135781-COHORTS          PHILIPPINES                    [-1-0)      3050   1087   1087      0
3 months    ki0047075b-MAL-ED          BANGLADESH                     >=0          242     38     38      0
3 months    ki0047075b-MAL-ED          BANGLADESH                     <-3          242      6      3      3
3 months    ki0047075b-MAL-ED          BANGLADESH                     [-3--2)      242     34     31      3
3 months    ki0047075b-MAL-ED          BANGLADESH                     [-2--1)      242     79     78      1
3 months    ki0047075b-MAL-ED          BANGLADESH                     [-1-0)       242     85     85      0
3 months    ki0047075b-MAL-ED          BRAZIL                         >=0          185     44     44      0
3 months    ki0047075b-MAL-ED          BRAZIL                         <-3          185      8      8      0
3 months    ki0047075b-MAL-ED          BRAZIL                         [-3--2)      185     11     11      0
3 months    ki0047075b-MAL-ED          BRAZIL                         [-2--1)      185     45     45      0
3 months    ki0047075b-MAL-ED          BRAZIL                         [-1-0)       185     77     77      0
3 months    ki0047075b-MAL-ED          INDIA                          >=0          196     33     33      0
3 months    ki0047075b-MAL-ED          INDIA                          <-3          196      7      3      4
3 months    ki0047075b-MAL-ED          INDIA                          [-3--2)      196     24     19      5
3 months    ki0047075b-MAL-ED          INDIA                          [-2--1)      196     65     64      1
3 months    ki0047075b-MAL-ED          INDIA                          [-1-0)       196     67     67      0
3 months    ki0047075b-MAL-ED          NEPAL                          >=0          171     44     44      0
3 months    ki0047075b-MAL-ED          NEPAL                          <-3          171      6      4      2
3 months    ki0047075b-MAL-ED          NEPAL                          [-3--2)      171     12     12      0
3 months    ki0047075b-MAL-ED          NEPAL                          [-2--1)      171     45     45      0
3 months    ki0047075b-MAL-ED          NEPAL                          [-1-0)       171     64     64      0
3 months    ki0047075b-MAL-ED          PERU                           >=0          277     43     43      0
3 months    ki0047075b-MAL-ED          PERU                           <-3          277      7      1      6
3 months    ki0047075b-MAL-ED          PERU                           [-3--2)      277     26     19      7
3 months    ki0047075b-MAL-ED          PERU                           [-2--1)      277     91     88      3
3 months    ki0047075b-MAL-ED          PERU                           [-1-0)       277    110    108      2
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=0          237     52     52      0
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <-3          237      1      0      1
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [-3--2)      237     24     22      2
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [-2--1)      237     63     60      3
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [-1-0)       237     97     96      1
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=0          119     24     24      0
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <-3          119      5      2      3
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-3--2)      119     12     10      2
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-2--1)      119     30     30      0
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-1-0)       119     48     48      0
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=0           91     14     13      1
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          <-3           91      3      1      2
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          [-3--2)       91     12      8      4
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          [-2--1)       91     22     22      0
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          [-1-0)        91     40     38      2
3 months    ki1000108-IRC              INDIA                          >=0          385    141    139      2
3 months    ki1000108-IRC              INDIA                          <-3          385     16      7      9
3 months    ki1000108-IRC              INDIA                          [-3--2)      385     27     18      9
3 months    ki1000108-IRC              INDIA                          [-2--1)      385     65     56      9
3 months    ki1000108-IRC              INDIA                          [-1-0)       385    136    129      7
3 months    ki1000109-EE               PAKISTAN                       >=0            2      1      1      0
3 months    ki1000109-EE               PAKISTAN                       <-3            2      0      0      0
3 months    ki1000109-EE               PAKISTAN                       [-3--2)        2      1      0      1
3 months    ki1000109-EE               PAKISTAN                       [-2--1)        2      0      0      0
3 months    ki1000109-EE               PAKISTAN                       [-1-0)         2      0      0      0
3 months    ki1000109-ResPak           PAKISTAN                       >=0            6      2      2      0
3 months    ki1000109-ResPak           PAKISTAN                       <-3            6      0      0      0
3 months    ki1000109-ResPak           PAKISTAN                       [-3--2)        6      2      1      1
3 months    ki1000109-ResPak           PAKISTAN                       [-2--1)        6      0      0      0
3 months    ki1000109-ResPak           PAKISTAN                       [-1-0)         6      2      2      0
3 months    ki1017093-NIH-Birth        BANGLADESH                     >=0           23      5      5      0
3 months    ki1017093-NIH-Birth        BANGLADESH                     <-3           23      0      0      0
3 months    ki1017093-NIH-Birth        BANGLADESH                     [-3--2)       23      1      1      0
3 months    ki1017093-NIH-Birth        BANGLADESH                     [-2--1)       23      8      8      0
3 months    ki1017093-NIH-Birth        BANGLADESH                     [-1-0)        23      9      9      0
3 months    ki1017093b-PROVIDE         BANGLADESH                     >=0          645    204    204      0
3 months    ki1017093b-PROVIDE         BANGLADESH                     <-3          645      1      0      1
3 months    ki1017093b-PROVIDE         BANGLADESH                     [-3--2)      645     21     18      3
3 months    ki1017093b-PROVIDE         BANGLADESH                     [-2--1)      645    162    157      5
3 months    ki1017093b-PROVIDE         BANGLADESH                     [-1-0)       645    257    256      1
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=0          728    214    214      0
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     <-3          728      5      0      5
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     [-3--2)      728     46     36     10
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     [-2--1)      728    179    163     16
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     [-1-0)       728    284    282      2
3 months    ki1101329-Keneba           GAMBIA                         >=0         1419    764    757      7
3 months    ki1101329-Keneba           GAMBIA                         <-3         1419     26     21      5
3 months    ki1101329-Keneba           GAMBIA                         [-3--2)     1419     46     40      6
3 months    ki1101329-Keneba           GAMBIA                         [-2--1)     1419    149    140      9
3 months    ki1101329-Keneba           GAMBIA                         [-1-0)      1419    434    427      7
3 months    ki1114097-CMIN             BRAZIL                         >=0           88     48     48      0
3 months    ki1114097-CMIN             BRAZIL                         <-3           88      3      3      0
3 months    ki1114097-CMIN             BRAZIL                         [-3--2)       88      2      1      1
3 months    ki1114097-CMIN             BRAZIL                         [-2--1)       88      9      9      0
3 months    ki1114097-CMIN             BRAZIL                         [-1-0)        88     26     24      2
3 months    ki1114097-CMIN             PERU                           >=0            9      9      9      0
3 months    ki1114097-CMIN             PERU                           <-3            9      0      0      0
3 months    ki1114097-CMIN             PERU                           [-3--2)        9      0      0      0
3 months    ki1114097-CMIN             PERU                           [-2--1)        9      0      0      0
3 months    ki1114097-CMIN             PERU                           [-1-0)         9      0      0      0
3 months    ki1114097-CONTENT          PERU                           >=0            2      1      1      0
3 months    ki1114097-CONTENT          PERU                           <-3            2      0      0      0
3 months    ki1114097-CONTENT          PERU                           [-3--2)        2      0      0      0
3 months    ki1114097-CONTENT          PERU                           [-2--1)        2      1      1      0
3 months    ki1114097-CONTENT          PERU                           [-1-0)         2      0      0      0
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=0         9049   3030   2961     69
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       <-3         9049    280    193     87
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)     9049    622    524     98
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)     9049   1686   1564    122
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)      9049   3431   3287    144
3 months    ki1135781-COHORTS          GUATEMALA                      >=0          361    218    215      3
3 months    ki1135781-COHORTS          GUATEMALA                      <-3          361      1      0      1
3 months    ki1135781-COHORTS          GUATEMALA                      [-3--2)      361     14      6      8
3 months    ki1135781-COHORTS          GUATEMALA                      [-2--1)      361     33     20     13
3 months    ki1135781-COHORTS          GUATEMALA                      [-1-0)       361     95     89      6
3 months    ki1135781-COHORTS          INDIA                          >=0         6465   1805   1803      2
3 months    ki1135781-COHORTS          INDIA                          <-3         6465    197     83    114
3 months    ki1135781-COHORTS          INDIA                          [-3--2)     6465    560    510     50
3 months    ki1135781-COHORTS          INDIA                          [-2--1)     6465   1529   1483     46
3 months    ki1135781-COHORTS          INDIA                          [-1-0)      6465   2374   2356     18
3 months    ki1135781-COHORTS          PHILIPPINES                    >=0         2869   1249   1244      5
3 months    ki1135781-COHORTS          PHILIPPINES                    <-3         2869     40     20     20
3 months    ki1135781-COHORTS          PHILIPPINES                    [-3--2)     2869    126    103     23
3 months    ki1135781-COHORTS          PHILIPPINES                    [-2--1)     2869    425    408     17
3 months    ki1135781-COHORTS          PHILIPPINES                    [-1-0)      2869   1029   1020      9
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=0          233     39     39      0
6 months    ki0047075b-MAL-ED          BANGLADESH                     <-3          233      6      4      2
6 months    ki0047075b-MAL-ED          BANGLADESH                     [-3--2)      233     32     26      6
6 months    ki0047075b-MAL-ED          BANGLADESH                     [-2--1)      233     74     74      0
6 months    ki0047075b-MAL-ED          BANGLADESH                     [-1-0)       233     82     82      0
6 months    ki0047075b-MAL-ED          BRAZIL                         >=0          173     40     40      0
6 months    ki0047075b-MAL-ED          BRAZIL                         <-3          173      7      7      0
6 months    ki0047075b-MAL-ED          BRAZIL                         [-3--2)      173     10     10      0
6 months    ki0047075b-MAL-ED          BRAZIL                         [-2--1)      173     41     41      0
6 months    ki0047075b-MAL-ED          BRAZIL                         [-1-0)       173     75     75      0
6 months    ki0047075b-MAL-ED          INDIA                          >=0          192     33     33      0
6 months    ki0047075b-MAL-ED          INDIA                          <-3          192      7      3      4
6 months    ki0047075b-MAL-ED          INDIA                          [-3--2)      192     23     21      2
6 months    ki0047075b-MAL-ED          INDIA                          [-2--1)      192     64     63      1
6 months    ki0047075b-MAL-ED          INDIA                          [-1-0)       192     65     65      0
6 months    ki0047075b-MAL-ED          NEPAL                          >=0          171     45     45      0
6 months    ki0047075b-MAL-ED          NEPAL                          <-3          171      6      5      1
6 months    ki0047075b-MAL-ED          NEPAL                          [-3--2)      171     12     12      0
6 months    ki0047075b-MAL-ED          NEPAL                          [-2--1)      171     44     44      0
6 months    ki0047075b-MAL-ED          NEPAL                          [-1-0)       171     64     64      0
6 months    ki0047075b-MAL-ED          PERU                           >=0          260     40     40      0
6 months    ki0047075b-MAL-ED          PERU                           <-3          260      7      5      2
6 months    ki0047075b-MAL-ED          PERU                           [-3--2)      260     24     18      6
6 months    ki0047075b-MAL-ED          PERU                           [-2--1)      260     88     86      2
6 months    ki0047075b-MAL-ED          PERU                           [-1-0)       260    101    100      1
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=0          214     48     48      0
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <-3          214      1      0      1
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [-3--2)      214     20     19      1
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [-2--1)      214     56     53      3
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [-1-0)       214     89     89      0
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=0          117     23     23      0
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <-3          117      5      4      1
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-3--2)      117     11      9      2
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-2--1)      117     31     29      2
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-1-0)       117     47     47      0
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=0           91     15     14      1
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <-3           91      3      3      0
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [-3--2)       91     12     11      1
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [-2--1)       91     21     21      0
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [-1-0)        91     40     37      3
6 months    ki1000108-IRC              INDIA                          >=0          386    143    141      2
6 months    ki1000108-IRC              INDIA                          <-3          386     14     10      4
6 months    ki1000108-IRC              INDIA                          [-3--2)      386     27     21      6
6 months    ki1000108-IRC              INDIA                          [-2--1)      386     65     57      8
6 months    ki1000108-IRC              INDIA                          [-1-0)       386    137    129      8
6 months    ki1000109-EE               PAKISTAN                       >=0            2      1      1      0
6 months    ki1000109-EE               PAKISTAN                       <-3            2      0      0      0
6 months    ki1000109-EE               PAKISTAN                       [-3--2)        2      1      0      1
6 months    ki1000109-EE               PAKISTAN                       [-2--1)        2      0      0      0
6 months    ki1000109-EE               PAKISTAN                       [-1-0)         2      0      0      0
6 months    ki1000109-ResPak           PAKISTAN                       >=0            5      1      1      0
6 months    ki1000109-ResPak           PAKISTAN                       <-3            5      0      0      0
6 months    ki1000109-ResPak           PAKISTAN                       [-3--2)        5      2      1      1
6 months    ki1000109-ResPak           PAKISTAN                       [-2--1)        5      0      0      0
6 months    ki1000109-ResPak           PAKISTAN                       [-1-0)         5      2      2      0
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=0           17      3      3      0
6 months    ki1017093-NIH-Birth        BANGLADESH                     <-3           17      0      0      0
6 months    ki1017093-NIH-Birth        BANGLADESH                     [-3--2)       17      1      1      0
6 months    ki1017093-NIH-Birth        BANGLADESH                     [-2--1)       17      8      8      0
6 months    ki1017093-NIH-Birth        BANGLADESH                     [-1-0)        17      5      5      0
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=0          583    186    186      0
6 months    ki1017093b-PROVIDE         BANGLADESH                     <-3          583      1      0      1
6 months    ki1017093b-PROVIDE         BANGLADESH                     [-3--2)      583     20     16      4
6 months    ki1017093b-PROVIDE         BANGLADESH                     [-2--1)      583    148    142      6
6 months    ki1017093b-PROVIDE         BANGLADESH                     [-1-0)       583    228    225      3
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=0          715    216    216      0
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <-3          715      6      2      4
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [-3--2)      715     45     39      6
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [-2--1)      715    174    169      5
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [-1-0)       715    274    266      8
6 months    ki1101329-Keneba           GAMBIA                         >=0         1337    726    714     12
6 months    ki1101329-Keneba           GAMBIA                         <-3         1337     23     20      3
6 months    ki1101329-Keneba           GAMBIA                         [-3--2)     1337     42     37      5
6 months    ki1101329-Keneba           GAMBIA                         [-2--1)     1337    130    124      6
6 months    ki1101329-Keneba           GAMBIA                         [-1-0)      1337    416    408      8
6 months    ki1114097-CMIN             BRAZIL                         >=0          104     58     58      0
6 months    ki1114097-CMIN             BRAZIL                         <-3          104      2      2      0
6 months    ki1114097-CMIN             BRAZIL                         [-3--2)      104      2      1      1
6 months    ki1114097-CMIN             BRAZIL                         [-2--1)      104      9      9      0
6 months    ki1114097-CMIN             BRAZIL                         [-1-0)       104     33     31      2
6 months    ki1114097-CMIN             PERU                           >=0            9      9      9      0
6 months    ki1114097-CMIN             PERU                           <-3            9      0      0      0
6 months    ki1114097-CMIN             PERU                           [-3--2)        9      0      0      0
6 months    ki1114097-CMIN             PERU                           [-2--1)        9      0      0      0
6 months    ki1114097-CMIN             PERU                           [-1-0)         9      0      0      0
6 months    ki1114097-CONTENT          PERU                           >=0            2      1      1      0
6 months    ki1114097-CONTENT          PERU                           <-3            2      0      0      0
6 months    ki1114097-CONTENT          PERU                           [-3--2)        2      0      0      0
6 months    ki1114097-CONTENT          PERU                           [-2--1)        2      1      1      0
6 months    ki1114097-CONTENT          PERU                           [-1-0)         2      0      0      0
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=0         8169   2746   2704     42
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <-3         8169    244    195     49
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)     8169    547    496     51
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)     8169   1495   1412     83
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)      8169   3137   3023    114
6 months    ki1135781-COHORTS          GUATEMALA                      >=0          328    194    184     10
6 months    ki1135781-COHORTS          GUATEMALA                      <-3          328      1      0      1
6 months    ki1135781-COHORTS          GUATEMALA                      [-3--2)      328     14      4     10
6 months    ki1135781-COHORTS          GUATEMALA                      [-2--1)      328     28     20      8
6 months    ki1135781-COHORTS          GUATEMALA                      [-1-0)       328     91     76     15
6 months    ki1135781-COHORTS          INDIA                          >=0         6134   1729   1718     11
6 months    ki1135781-COHORTS          INDIA                          <-3         6134    174    110     64
6 months    ki1135781-COHORTS          INDIA                          [-3--2)     6134    528    448     80
6 months    ki1135781-COHORTS          INDIA                          [-2--1)     6134   1440   1363     77
6 months    ki1135781-COHORTS          INDIA                          [-1-0)      6134   2263   2225     38
6 months    ki1135781-COHORTS          PHILIPPINES                    >=0         2701   1167   1150     17
6 months    ki1135781-COHORTS          PHILIPPINES                    <-3         2701     37     23     14
6 months    ki1135781-COHORTS          PHILIPPINES                    [-3--2)     2701    118    100     18
6 months    ki1135781-COHORTS          PHILIPPINES                    [-2--1)     2701    405    358     47
6 months    ki1135781-COHORTS          PHILIPPINES                    [-1-0)      2701    974    938     36
9 months    ki0047075b-MAL-ED          BANGLADESH                     >=0          227     38     38      0
9 months    ki0047075b-MAL-ED          BANGLADESH                     <-3          227      6      4      2
9 months    ki0047075b-MAL-ED          BANGLADESH                     [-3--2)      227     31     25      6
9 months    ki0047075b-MAL-ED          BANGLADESH                     [-2--1)      227     73     73      0
9 months    ki0047075b-MAL-ED          BANGLADESH                     [-1-0)       227     79     76      3
9 months    ki0047075b-MAL-ED          BRAZIL                         >=0          163     36     36      0
9 months    ki0047075b-MAL-ED          BRAZIL                         <-3          163      7      7      0
9 months    ki0047075b-MAL-ED          BRAZIL                         [-3--2)      163      9      9      0
9 months    ki0047075b-MAL-ED          BRAZIL                         [-2--1)      163     40     40      0
9 months    ki0047075b-MAL-ED          BRAZIL                         [-1-0)       163     71     71      0
9 months    ki0047075b-MAL-ED          INDIA                          >=0          188     33     33      0
9 months    ki0047075b-MAL-ED          INDIA                          <-3          188      6      3      3
9 months    ki0047075b-MAL-ED          INDIA                          [-3--2)      188     22     18      4
9 months    ki0047075b-MAL-ED          INDIA                          [-2--1)      188     62     61      1
9 months    ki0047075b-MAL-ED          INDIA                          [-1-0)       188     65     65      0
9 months    ki0047075b-MAL-ED          NEPAL                          >=0          167     44     44      0
9 months    ki0047075b-MAL-ED          NEPAL                          <-3          167      5      5      0
9 months    ki0047075b-MAL-ED          NEPAL                          [-3--2)      167     12     11      1
9 months    ki0047075b-MAL-ED          NEPAL                          [-2--1)      167     44     44      0
9 months    ki0047075b-MAL-ED          NEPAL                          [-1-0)       167     62     62      0
9 months    ki0047075b-MAL-ED          PERU                           >=0          244     35     35      0
9 months    ki0047075b-MAL-ED          PERU                           <-3          244      7      6      1
9 months    ki0047075b-MAL-ED          PERU                           [-3--2)      244     24     17      7
9 months    ki0047075b-MAL-ED          PERU                           [-2--1)      244     87     84      3
9 months    ki0047075b-MAL-ED          PERU                           [-1-0)       244     91     90      1
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=0          211     48     48      0
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <-3          211      1      1      0
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [-3--2)      211     20     18      2
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [-2--1)      211     57     54      3
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [-1-0)       211     85     82      3
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=0          114     23     23      0
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <-3          114      5      4      1
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-3--2)      114     11      8      3
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-2--1)      114     30     23      7
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-1-0)       114     45     44      1
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=0           92     15     14      1
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          <-3           92      3      3      0
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          [-3--2)       92     12      9      3
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          [-2--1)       92     22     21      1
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          [-1-0)        92     40     37      3
9 months    ki1000108-IRC              INDIA                          >=0          386    143    138      5
9 months    ki1000108-IRC              INDIA                          <-3          386     14     11      3
9 months    ki1000108-IRC              INDIA                          [-3--2)      386     27     20      7
9 months    ki1000108-IRC              INDIA                          [-2--1)      386     65     57      8
9 months    ki1000108-IRC              INDIA                          [-1-0)       386    137    128      9
9 months    ki1000109-EE               PAKISTAN                       >=0            2      1      1      0
9 months    ki1000109-EE               PAKISTAN                       <-3            2      0      0      0
9 months    ki1000109-EE               PAKISTAN                       [-3--2)        2      1      1      0
9 months    ki1000109-EE               PAKISTAN                       [-2--1)        2      0      0      0
9 months    ki1000109-EE               PAKISTAN                       [-1-0)         2      0      0      0
9 months    ki1000109-ResPak           PAKISTAN                       >=0            6      2      1      1
9 months    ki1000109-ResPak           PAKISTAN                       <-3            6      0      0      0
9 months    ki1000109-ResPak           PAKISTAN                       [-3--2)        6      2      2      0
9 months    ki1000109-ResPak           PAKISTAN                       [-2--1)        6      0      0      0
9 months    ki1000109-ResPak           PAKISTAN                       [-1-0)         6      2      2      0
9 months    ki1017093-NIH-Birth        BANGLADESH                     >=0           17      3      3      0
9 months    ki1017093-NIH-Birth        BANGLADESH                     <-3           17      0      0      0
9 months    ki1017093-NIH-Birth        BANGLADESH                     [-3--2)       17      1      0      1
9 months    ki1017093-NIH-Birth        BANGLADESH                     [-2--1)       17      8      7      1
9 months    ki1017093-NIH-Birth        BANGLADESH                     [-1-0)        17      5      5      0
9 months    ki1017093b-PROVIDE         BANGLADESH                     >=0          605    193    191      2
9 months    ki1017093b-PROVIDE         BANGLADESH                     <-3          605      1      0      1
9 months    ki1017093b-PROVIDE         BANGLADESH                     [-3--2)      605     21     15      6
9 months    ki1017093b-PROVIDE         BANGLADESH                     [-2--1)      605    151    141     10
9 months    ki1017093b-PROVIDE         BANGLADESH                     [-1-0)       605    239    233      6
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=0          706    212    212      0
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     <-3          706      6      2      4
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     [-3--2)      706     41     31     10
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     [-2--1)      706    171    164      7
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     [-1-0)       706    276    269      7
9 months    ki1101329-Keneba           GAMBIA                         >=0         1320    724    710     14
9 months    ki1101329-Keneba           GAMBIA                         <-3         1320     26     22      4
9 months    ki1101329-Keneba           GAMBIA                         [-3--2)     1320     41     31     10
9 months    ki1101329-Keneba           GAMBIA                         [-2--1)     1320    134    125      9
9 months    ki1101329-Keneba           GAMBIA                         [-1-0)      1320    395    374     21
9 months    ki1114097-CMIN             BRAZIL                         >=0          106     59     55      4
9 months    ki1114097-CMIN             BRAZIL                         <-3          106      3      3      0
9 months    ki1114097-CMIN             BRAZIL                         [-3--2)      106      2      1      1
9 months    ki1114097-CMIN             BRAZIL                         [-2--1)      106     10     10      0
9 months    ki1114097-CMIN             BRAZIL                         [-1-0)       106     32     29      3
9 months    ki1114097-CMIN             PERU                           >=0            8      8      8      0
9 months    ki1114097-CMIN             PERU                           <-3            8      0      0      0
9 months    ki1114097-CMIN             PERU                           [-3--2)        8      0      0      0
9 months    ki1114097-CMIN             PERU                           [-2--1)        8      0      0      0
9 months    ki1114097-CMIN             PERU                           [-1-0)         8      0      0      0
9 months    ki1114097-CONTENT          PERU                           >=0            2      1      1      0
9 months    ki1114097-CONTENT          PERU                           <-3            2      0      0      0
9 months    ki1114097-CONTENT          PERU                           [-3--2)        2      0      0      0
9 months    ki1114097-CONTENT          PERU                           [-2--1)        2      1      1      0
9 months    ki1114097-CONTENT          PERU                           [-1-0)         2      0      0      0
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=0         7552   2426   2361     65
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       <-3         7552    233    187     46
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)     7552    516    470     46
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)     7552   1439   1347     92
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)      7552   2938   2824    114
9 months    ki1135781-COHORTS          GUATEMALA                      >=0          312    181    164     17
9 months    ki1135781-COHORTS          GUATEMALA                      <-3          312      1      0      1
9 months    ki1135781-COHORTS          GUATEMALA                      [-3--2)      312     14      0     14
9 months    ki1135781-COHORTS          GUATEMALA                      [-2--1)      312     31     16     15
9 months    ki1135781-COHORTS          GUATEMALA                      [-1-0)       312     85     56     29
9 months    ki1135781-COHORTS          INDIA                          >=0         5279   1497   1478     19
9 months    ki1135781-COHORTS          INDIA                          <-3         5279    155    100     55
9 months    ki1135781-COHORTS          INDIA                          [-3--2)     5279    443    358     85
9 months    ki1135781-COHORTS          INDIA                          [-2--1)     5279   1245   1100    145
9 months    ki1135781-COHORTS          INDIA                          [-1-0)      5279   1939   1853     86
9 months    ki1135781-COHORTS          PHILIPPINES                    >=0         2705   1173   1150     23
9 months    ki1135781-COHORTS          PHILIPPINES                    <-3         2705     36     19     17
9 months    ki1135781-COHORTS          PHILIPPINES                    [-3--2)     2705    121     88     33
9 months    ki1135781-COHORTS          PHILIPPINES                    [-2--1)     2705    405    345     60
9 months    ki1135781-COHORTS          PHILIPPINES                    [-1-0)      2705    970    907     63
12 months   ki0047075b-MAL-ED          BANGLADESH                     >=0          226     38     38      0
12 months   ki0047075b-MAL-ED          BANGLADESH                     <-3          226      6      4      2
12 months   ki0047075b-MAL-ED          BANGLADESH                     [-3--2)      226     31     25      6
12 months   ki0047075b-MAL-ED          BANGLADESH                     [-2--1)      226     72     68      4
12 months   ki0047075b-MAL-ED          BANGLADESH                     [-1-0)       226     79     74      5
12 months   ki0047075b-MAL-ED          BRAZIL                         >=0          161     36     36      0
12 months   ki0047075b-MAL-ED          BRAZIL                         <-3          161      7      7      0
12 months   ki0047075b-MAL-ED          BRAZIL                         [-3--2)      161      9      9      0
12 months   ki0047075b-MAL-ED          BRAZIL                         [-2--1)      161     40     40      0
12 months   ki0047075b-MAL-ED          BRAZIL                         [-1-0)       161     69     69      0
12 months   ki0047075b-MAL-ED          INDIA                          >=0          184     32     32      0
12 months   ki0047075b-MAL-ED          INDIA                          <-3          184      6      2      4
12 months   ki0047075b-MAL-ED          INDIA                          [-3--2)      184     22     18      4
12 months   ki0047075b-MAL-ED          INDIA                          [-2--1)      184     60     53      7
12 months   ki0047075b-MAL-ED          INDIA                          [-1-0)       184     64     62      2
12 months   ki0047075b-MAL-ED          NEPAL                          >=0          167     44     44      0
12 months   ki0047075b-MAL-ED          NEPAL                          <-3          167      5      4      1
12 months   ki0047075b-MAL-ED          NEPAL                          [-3--2)      167     12     11      1
12 months   ki0047075b-MAL-ED          NEPAL                          [-2--1)      167     44     44      0
12 months   ki0047075b-MAL-ED          NEPAL                          [-1-0)       167     62     62      0
12 months   ki0047075b-MAL-ED          PERU                           >=0          235     35     35      0
12 months   ki0047075b-MAL-ED          PERU                           <-3          235      7      4      3
12 months   ki0047075b-MAL-ED          PERU                           [-3--2)      235     22     17      5
12 months   ki0047075b-MAL-ED          PERU                           [-2--1)      235     84     81      3
12 months   ki0047075b-MAL-ED          PERU                           [-1-0)       235     87     86      1
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=0          214     48     48      0
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <-3          214      1      1      0
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [-3--2)      214     21     17      4
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [-2--1)      214     57     55      2
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [-1-0)       214     87     82      5
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=0          111     22     21      1
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <-3          111      5      3      2
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-3--2)      111     11      9      2
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-2--1)      111     29     23      6
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-1-0)       111     44     42      2
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=0           92     14     13      1
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          <-3           92      3      3      0
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          [-3--2)       92     13     12      1
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          [-2--1)       92     22     20      2
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          [-1-0)        92     40     37      3
12 months   ki1000108-IRC              INDIA                          >=0          385    142    137      5
12 months   ki1000108-IRC              INDIA                          <-3          385     15     10      5
12 months   ki1000108-IRC              INDIA                          [-3--2)      385     26     19      7
12 months   ki1000108-IRC              INDIA                          [-2--1)      385     65     57      8
12 months   ki1000108-IRC              INDIA                          [-1-0)       385    137    130      7
12 months   ki1000109-EE               PAKISTAN                       >=0            2      1      1      0
12 months   ki1000109-EE               PAKISTAN                       <-3            2      0      0      0
12 months   ki1000109-EE               PAKISTAN                       [-3--2)        2      1      1      0
12 months   ki1000109-EE               PAKISTAN                       [-2--1)        2      0      0      0
12 months   ki1000109-EE               PAKISTAN                       [-1-0)         2      0      0      0
12 months   ki1000109-ResPak           PAKISTAN                       >=0            5      1      1      0
12 months   ki1000109-ResPak           PAKISTAN                       <-3            5      0      0      0
12 months   ki1000109-ResPak           PAKISTAN                       [-3--2)        5      2      2      0
12 months   ki1000109-ResPak           PAKISTAN                       [-2--1)        5      0      0      0
12 months   ki1000109-ResPak           PAKISTAN                       [-1-0)         5      2      2      0
12 months   ki1017093-NIH-Birth        BANGLADESH                     >=0           17      3      3      0
12 months   ki1017093-NIH-Birth        BANGLADESH                     <-3           17      0      0      0
12 months   ki1017093-NIH-Birth        BANGLADESH                     [-3--2)       17      1      0      1
12 months   ki1017093-NIH-Birth        BANGLADESH                     [-2--1)       17      8      6      2
12 months   ki1017093-NIH-Birth        BANGLADESH                     [-1-0)        17      5      5      0
12 months   ki1017093b-PROVIDE         BANGLADESH                     >=0          600    192    191      1
12 months   ki1017093b-PROVIDE         BANGLADESH                     <-3          600      1      1      0
12 months   ki1017093b-PROVIDE         BANGLADESH                     [-3--2)      600     21     16      5
12 months   ki1017093b-PROVIDE         BANGLADESH                     [-2--1)      600    146    124     22
12 months   ki1017093b-PROVIDE         BANGLADESH                     [-1-0)       600    240    232      8
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=0          706    212    211      1
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     <-3          706      6      2      4
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     [-3--2)      706     42     30     12
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     [-2--1)      706    176    164     12
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     [-1-0)       706    270    258     12
12 months   ki1101329-Keneba           GAMBIA                         >=0         1226    674    658     16
12 months   ki1101329-Keneba           GAMBIA                         <-3         1226     25     21      4
12 months   ki1101329-Keneba           GAMBIA                         [-3--2)     1226     42     31     11
12 months   ki1101329-Keneba           GAMBIA                         [-2--1)     1226    124    113     11
12 months   ki1101329-Keneba           GAMBIA                         [-1-0)      1226    361    329     32
12 months   ki1114097-CMIN             BRAZIL                         >=0          111     62     58      4
12 months   ki1114097-CMIN             BRAZIL                         <-3          111      3      3      0
12 months   ki1114097-CMIN             BRAZIL                         [-3--2)      111      2      1      1
12 months   ki1114097-CMIN             BRAZIL                         [-2--1)      111     10     10      0
12 months   ki1114097-CMIN             BRAZIL                         [-1-0)       111     34     31      3
12 months   ki1114097-CMIN             PERU                           >=0            8      8      8      0
12 months   ki1114097-CMIN             PERU                           <-3            8      0      0      0
12 months   ki1114097-CMIN             PERU                           [-3--2)        8      0      0      0
12 months   ki1114097-CMIN             PERU                           [-2--1)        8      0      0      0
12 months   ki1114097-CMIN             PERU                           [-1-0)         8      0      0      0
12 months   ki1114097-CONTENT          PERU                           >=0            2      1      1      0
12 months   ki1114097-CONTENT          PERU                           <-3            2      0      0      0
12 months   ki1114097-CONTENT          PERU                           [-3--2)        2      0      0      0
12 months   ki1114097-CONTENT          PERU                           [-2--1)        2      1      1      0
12 months   ki1114097-CONTENT          PERU                           [-1-0)         2      0      0      0
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=0         6633   2055   1988     67
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       <-3         6633    205    158     47
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)     6633    479    423     56
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)     6633   1306   1189    117
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)      6633   2588   2434    154
12 months   ki1135781-COHORTS          GUATEMALA                      >=0          328    190    161     29
12 months   ki1135781-COHORTS          GUATEMALA                      <-3          328      1      0      1
12 months   ki1135781-COHORTS          GUATEMALA                      [-3--2)      328     14      1     13
12 months   ki1135781-COHORTS          GUATEMALA                      [-2--1)      328     33     13     20
12 months   ki1135781-COHORTS          GUATEMALA                      [-1-0)       328     90     50     40
12 months   ki1135781-COHORTS          INDIA                          >=0         4698   1343   1305     38
12 months   ki1135781-COHORTS          INDIA                          <-3         4698    135     87     48
12 months   ki1135781-COHORTS          INDIA                          [-3--2)     4698    389    286    103
12 months   ki1135781-COHORTS          INDIA                          [-2--1)     4698   1104    914    190
12 months   ki1135781-COHORTS          INDIA                          [-1-0)      4698   1727   1593    134
12 months   ki1135781-COHORTS          PHILIPPINES                    >=0         2580   1121   1064     57
12 months   ki1135781-COHORTS          PHILIPPINES                    <-3         2580     33     15     18
12 months   ki1135781-COHORTS          PHILIPPINES                    [-3--2)     2580    117     68     49
12 months   ki1135781-COHORTS          PHILIPPINES                    [-2--1)     2580    383    288     95
12 months   ki1135781-COHORTS          PHILIPPINES                    [-1-0)      2580    926    801    125
18 months   ki0047075b-MAL-ED          BANGLADESH                     >=0          215     38     37      1
18 months   ki0047075b-MAL-ED          BANGLADESH                     <-3          215      6      4      2
18 months   ki0047075b-MAL-ED          BANGLADESH                     [-3--2)      215     27     20      7
18 months   ki0047075b-MAL-ED          BANGLADESH                     [-2--1)      215     67     56     11
18 months   ki0047075b-MAL-ED          BANGLADESH                     [-1-0)       215     77     69      8
18 months   ki0047075b-MAL-ED          BRAZIL                         >=0          148     31     31      0
18 months   ki0047075b-MAL-ED          BRAZIL                         <-3          148      6      6      0
18 months   ki0047075b-MAL-ED          BRAZIL                         [-3--2)      148      8      8      0
18 months   ki0047075b-MAL-ED          BRAZIL                         [-2--1)      148     38     38      0
18 months   ki0047075b-MAL-ED          BRAZIL                         [-1-0)       148     65     65      0
18 months   ki0047075b-MAL-ED          INDIA                          >=0          184     32     32      0
18 months   ki0047075b-MAL-ED          INDIA                          <-3          184      6      2      4
18 months   ki0047075b-MAL-ED          INDIA                          [-3--2)      184     22     16      6
18 months   ki0047075b-MAL-ED          INDIA                          [-2--1)      184     61     48     13
18 months   ki0047075b-MAL-ED          INDIA                          [-1-0)       184     63     60      3
18 months   ki0047075b-MAL-ED          NEPAL                          >=0          167     44     44      0
18 months   ki0047075b-MAL-ED          NEPAL                          <-3          167      5      3      2
18 months   ki0047075b-MAL-ED          NEPAL                          [-3--2)      167     12     10      2
18 months   ki0047075b-MAL-ED          NEPAL                          [-2--1)      167     44     44      0
18 months   ki0047075b-MAL-ED          NEPAL                          [-1-0)       167     62     62      0
18 months   ki0047075b-MAL-ED          PERU                           >=0          211     32     31      1
18 months   ki0047075b-MAL-ED          PERU                           <-3          211      6      4      2
18 months   ki0047075b-MAL-ED          PERU                           [-3--2)      211     21     15      6
18 months   ki0047075b-MAL-ED          PERU                           [-2--1)      211     72     66      6
18 months   ki0047075b-MAL-ED          PERU                           [-1-0)       211     80     77      3
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=0          204     45     44      1
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <-3          204      1      1      0
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [-3--2)      204     19     15      4
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [-2--1)      204     55     50      5
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [-1-0)       204     84     73     11
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=0          107     19     18      1
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <-3          107      5      1      4
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-3--2)      107     10      4      6
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-2--1)      107     29     19     10
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-1-0)       107     44     36      8
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=0           92     15     14      1
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          <-3           92      3      3      0
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          [-3--2)       92     13     10      3
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          [-2--1)       92     22     19      3
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          [-1-0)        92     39     28     11
18 months   ki1000108-IRC              INDIA                          >=0          384    142    136      6
18 months   ki1000108-IRC              INDIA                          <-3          384     15     14      1
18 months   ki1000108-IRC              INDIA                          [-3--2)      384     27     20      7
18 months   ki1000108-IRC              INDIA                          [-2--1)      384     65     56      9
18 months   ki1000108-IRC              INDIA                          [-1-0)       384    135    126      9
18 months   ki1000109-EE               PAKISTAN                       >=0            2      1      1      0
18 months   ki1000109-EE               PAKISTAN                       <-3            2      0      0      0
18 months   ki1000109-EE               PAKISTAN                       [-3--2)        2      1      1      0
18 months   ki1000109-EE               PAKISTAN                       [-2--1)        2      0      0      0
18 months   ki1000109-EE               PAKISTAN                       [-1-0)         2      0      0      0
18 months   ki1000109-ResPak           PAKISTAN                       >=0            1      0      0      0
18 months   ki1000109-ResPak           PAKISTAN                       <-3            1      0      0      0
18 months   ki1000109-ResPak           PAKISTAN                       [-3--2)        1      1      1      0
18 months   ki1000109-ResPak           PAKISTAN                       [-2--1)        1      0      0      0
18 months   ki1000109-ResPak           PAKISTAN                       [-1-0)         1      0      0      0
18 months   ki1017093-NIH-Birth        BANGLADESH                     >=0           17      3      3      0
18 months   ki1017093-NIH-Birth        BANGLADESH                     <-3           17      0      0      0
18 months   ki1017093-NIH-Birth        BANGLADESH                     [-3--2)       17      1      0      1
18 months   ki1017093-NIH-Birth        BANGLADESH                     [-2--1)       17      8      6      2
18 months   ki1017093-NIH-Birth        BANGLADESH                     [-1-0)        17      5      5      0
18 months   ki1017093b-PROVIDE         BANGLADESH                     >=0          552    177    175      2
18 months   ki1017093b-PROVIDE         BANGLADESH                     <-3          552      1      0      1
18 months   ki1017093b-PROVIDE         BANGLADESH                     [-3--2)      552     20     15      5
18 months   ki1017093b-PROVIDE         BANGLADESH                     [-2--1)      552    134     98     36
18 months   ki1017093b-PROVIDE         BANGLADESH                     [-1-0)       552    220    207     13
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=0          634    189    189      0
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     <-3          634      6      3      3
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     [-3--2)      634     42     31     11
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     [-2--1)      634    159    143     16
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     [-1-0)       634    238    226     12
18 months   ki1101329-Keneba           GAMBIA                         >=0         1190    655    626     29
18 months   ki1101329-Keneba           GAMBIA                         <-3         1190     22     16      6
18 months   ki1101329-Keneba           GAMBIA                         [-3--2)     1190     36     28      8
18 months   ki1101329-Keneba           GAMBIA                         [-2--1)     1190    117    104     13
18 months   ki1101329-Keneba           GAMBIA                         [-1-0)      1190    360    314     46
18 months   ki1114097-CMIN             BRAZIL                         >=0          111     59     57      2
18 months   ki1114097-CMIN             BRAZIL                         <-3          111      3      3      0
18 months   ki1114097-CMIN             BRAZIL                         [-3--2)      111      2      1      1
18 months   ki1114097-CMIN             BRAZIL                         [-2--1)      111     11     11      0
18 months   ki1114097-CMIN             BRAZIL                         [-1-0)       111     36     31      5
18 months   ki1114097-CMIN             PERU                           >=0            8      8      8      0
18 months   ki1114097-CMIN             PERU                           <-3            8      0      0      0
18 months   ki1114097-CMIN             PERU                           [-3--2)        8      0      0      0
18 months   ki1114097-CMIN             PERU                           [-2--1)        8      0      0      0
18 months   ki1114097-CMIN             PERU                           [-1-0)         8      0      0      0
18 months   ki1114097-CONTENT          PERU                           >=0            2      1      1      0
18 months   ki1114097-CONTENT          PERU                           <-3            2      0      0      0
18 months   ki1114097-CONTENT          PERU                           [-3--2)        2      0      0      0
18 months   ki1114097-CONTENT          PERU                           [-2--1)        2      1      1      0
18 months   ki1114097-CONTENT          PERU                           [-1-0)         2      0      0      0
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=0         1683    388    341     47
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       <-3         1683     85     50     35
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)     1683    173    133     40
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)     1683    429    350     79
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)      1683    608    516     92
18 months   ki1135781-COHORTS          GUATEMALA                      >=0          257    143     93     50
18 months   ki1135781-COHORTS          GUATEMALA                      <-3          257      1      0      1
18 months   ki1135781-COHORTS          GUATEMALA                      [-3--2)      257     11      0     11
18 months   ki1135781-COHORTS          GUATEMALA                      [-2--1)      257     27      9     18
18 months   ki1135781-COHORTS          GUATEMALA                      [-1-0)       257     75     28     47
18 months   ki1135781-COHORTS          PHILIPPINES                    >=0         2489   1089    928    161
18 months   ki1135781-COHORTS          PHILIPPINES                    <-3         2489     32     13     19
18 months   ki1135781-COHORTS          PHILIPPINES                    [-3--2)     2489    108     47     61
18 months   ki1135781-COHORTS          PHILIPPINES                    [-2--1)     2489    362    213    149
18 months   ki1135781-COHORTS          PHILIPPINES                    [-1-0)      2489    898    661    237
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=0          206     38     38      0
24 months   ki0047075b-MAL-ED          BANGLADESH                     <-3          206      6      3      3
24 months   ki0047075b-MAL-ED          BANGLADESH                     [-3--2)      206     26     20      6
24 months   ki0047075b-MAL-ED          BANGLADESH                     [-2--1)      206     62     54      8
24 months   ki0047075b-MAL-ED          BANGLADESH                     [-1-0)       206     74     67      7
24 months   ki0047075b-MAL-ED          BRAZIL                         >=0          139     26     26      0
24 months   ki0047075b-MAL-ED          BRAZIL                         <-3          139      5      5      0
24 months   ki0047075b-MAL-ED          BRAZIL                         [-3--2)      139      8      8      0
24 months   ki0047075b-MAL-ED          BRAZIL                         [-2--1)      139     36     35      1
24 months   ki0047075b-MAL-ED          BRAZIL                         [-1-0)       139     64     64      0
24 months   ki0047075b-MAL-ED          INDIA                          >=0          183     32     32      0
24 months   ki0047075b-MAL-ED          INDIA                          <-3          183      6      4      2
24 months   ki0047075b-MAL-ED          INDIA                          [-3--2)      183     22     16      6
24 months   ki0047075b-MAL-ED          INDIA                          [-2--1)      183     60     47     13
24 months   ki0047075b-MAL-ED          INDIA                          [-1-0)       183     63     61      2
24 months   ki0047075b-MAL-ED          NEPAL                          >=0          165     42     42      0
24 months   ki0047075b-MAL-ED          NEPAL                          <-3          165      5      4      1
24 months   ki0047075b-MAL-ED          NEPAL                          [-3--2)      165     12     11      1
24 months   ki0047075b-MAL-ED          NEPAL                          [-2--1)      165     44     44      0
24 months   ki0047075b-MAL-ED          NEPAL                          [-1-0)       165     62     61      1
24 months   ki0047075b-MAL-ED          PERU                           >=0          190     30     29      1
24 months   ki0047075b-MAL-ED          PERU                           <-3          190      3      1      2
24 months   ki0047075b-MAL-ED          PERU                           [-3--2)      190     21     16      5
24 months   ki0047075b-MAL-ED          PERU                           [-2--1)      190     66     61      5
24 months   ki0047075b-MAL-ED          PERU                           [-1-0)       190     70     70      0
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=0          201     44     43      1
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <-3          201      1      1      0
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [-3--2)      201     18     16      2
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [-2--1)      201     55     47      8
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [-1-0)       201     83     73     10
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=0          101     20     19      1
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <-3          101      5      2      3
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-3--2)      101      9      4      5
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-2--1)      101     28     17     11
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-1-0)       101     39     29     10
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=0           93     15     13      2
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <-3           93      3      2      1
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [-3--2)       93     13     10      3
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [-2--1)       93     22     14      8
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [-1-0)        93     40     28     12
24 months   ki1000108-IRC              INDIA                          >=0          387    143    131     12
24 months   ki1000108-IRC              INDIA                          <-3          387     15     13      2
24 months   ki1000108-IRC              INDIA                          [-3--2)      387     27     20      7
24 months   ki1000108-IRC              INDIA                          [-2--1)      387     65     55     10
24 months   ki1000108-IRC              INDIA                          [-1-0)       387    137    129      8
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=0           16      3      2      1
24 months   ki1017093-NIH-Birth        BANGLADESH                     <-3           16      0      0      0
24 months   ki1017093-NIH-Birth        BANGLADESH                     [-3--2)       16      1      0      1
24 months   ki1017093-NIH-Birth        BANGLADESH                     [-2--1)       16      7      6      1
24 months   ki1017093-NIH-Birth        BANGLADESH                     [-1-0)        16      5      5      0
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=0          577    185    183      2
24 months   ki1017093b-PROVIDE         BANGLADESH                     <-3          577      1      0      1
24 months   ki1017093b-PROVIDE         BANGLADESH                     [-3--2)      577     20     15      5
24 months   ki1017093b-PROVIDE         BANGLADESH                     [-2--1)      577    142    112     30
24 months   ki1017093b-PROVIDE         BANGLADESH                     [-1-0)       577    229    218     11
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=0          514    160    159      1
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <-3          514      6      3      3
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [-3--2)      514     31     22      9
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [-2--1)      514    131    119     12
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [-1-0)       514    186    176     10
24 months   ki1101329-Keneba           GAMBIA                         >=0         1057    571    549     22
24 months   ki1101329-Keneba           GAMBIA                         <-3         1057     18     14      4
24 months   ki1101329-Keneba           GAMBIA                         [-3--2)     1057     37     31      6
24 months   ki1101329-Keneba           GAMBIA                         [-2--1)     1057    107     96     11
24 months   ki1101329-Keneba           GAMBIA                         [-1-0)      1057    324    285     39
24 months   ki1114097-CMIN             PERU                           >=0            3      3      3      0
24 months   ki1114097-CMIN             PERU                           <-3            3      0      0      0
24 months   ki1114097-CMIN             PERU                           [-3--2)        3      0      0      0
24 months   ki1114097-CMIN             PERU                           [-2--1)        3      0      0      0
24 months   ki1114097-CMIN             PERU                           [-1-0)         3      0      0      0
24 months   ki1114097-CONTENT          PERU                           >=0            2      1      1      0
24 months   ki1114097-CONTENT          PERU                           <-3            2      0      0      0
24 months   ki1114097-CONTENT          PERU                           [-3--2)        2      0      0      0
24 months   ki1114097-CONTENT          PERU                           [-2--1)        2      1      1      0
24 months   ki1114097-CONTENT          PERU                           [-1-0)         2      0      0      0
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=0          446     69     57     12
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <-3          446     28     16     12
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)      446     66     38     28
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)      446    146    106     40
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)       446    137    101     36
24 months   ki1135781-COHORTS          GUATEMALA                      >=0          262    140     90     50
24 months   ki1135781-COHORTS          GUATEMALA                      <-3          262      1      0      1
24 months   ki1135781-COHORTS          GUATEMALA                      [-3--2)      262     11      1     10
24 months   ki1135781-COHORTS          GUATEMALA                      [-2--1)      262     29      8     21
24 months   ki1135781-COHORTS          GUATEMALA                      [-1-0)       262     81     33     48
24 months   ki1135781-COHORTS          INDIA                          >=0         4761   1364   1283     81
24 months   ki1135781-COHORTS          INDIA                          <-3         4761    137     68     69
24 months   ki1135781-COHORTS          INDIA                          [-3--2)     4761    396    250    146
24 months   ki1135781-COHORTS          INDIA                          [-2--1)     4761   1104    799    305
24 months   ki1135781-COHORTS          INDIA                          [-1-0)      4761   1760   1493    267
24 months   ki1135781-COHORTS          PHILIPPINES                    >=0         2442   1058    875    183
24 months   ki1135781-COHORTS          PHILIPPINES                    <-3         2442     30     12     18
24 months   ki1135781-COHORTS          PHILIPPINES                    [-3--2)     2442    105     48     57
24 months   ki1135781-COHORTS          PHILIPPINES                    [-2--1)     2442    358    207    151
24 months   ki1135781-COHORTS          PHILIPPINES                    [-1-0)      2442    891    612    279


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
* agecat: 12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 12 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 12 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 12 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 12 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 12 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 12 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 12 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 12 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 12 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 18 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 18 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 18 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 18 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 18 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 18 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 18 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 18 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 18 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 18 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 18 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 18 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 18 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 3 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 3 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 3 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 3 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 3 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 3 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 3 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 3 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 3 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 3 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 3 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 9 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 9 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 9 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 9 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 9 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 9 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 9 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 9 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 9 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 9 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 9 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 9 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 9 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 9 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: Birth, studyid: ki1114097-CMIN, country: PERU
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
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
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: Birth, studyid: ki1114097-CMIN, country: PERU
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 3 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 3 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 3 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 3 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 3 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 3 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 3 months, studyid: ki1135781-COHORTS, country: GUATEMALA
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
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 9 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 9 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 9 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 9 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 9 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 9 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 9 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 9 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 9 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 9 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 9 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 12 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 12 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 12 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 12 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 12 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 12 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 18 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 18 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 18 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 18 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 18 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 18 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 18 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 18 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 18 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 18 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/71a67278-8358-4ba1-b8ac-16f982b24240/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->


```
## Warning: Removed 19 rows containing missing values (geom_errorbar).
```

![](/tmp/71a67278-8358-4ba1-b8ac-16f982b24240/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/71a67278-8358-4ba1-b8ac-16f982b24240/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/71a67278-8358-4ba1-b8ac-16f982b24240/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid              country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki1101329-Keneba     GAMBIA        >=0                  NA                0.0091623   0.0024037   0.0159209
3 months    ki1101329-Keneba     GAMBIA        <-3                  NA                0.1923077   0.0407647   0.3438507
3 months    ki1101329-Keneba     GAMBIA        [-3--2)              NA                0.1304348   0.0330771   0.2277924
3 months    ki1101329-Keneba     GAMBIA        [-2--1)              NA                0.0604027   0.0221372   0.0986682
3 months    ki1101329-Keneba     GAMBIA        [-1-0)               NA                0.0161290   0.0042733   0.0279848
3 months    ki1126311-ZVITAMBO   ZIMBABWE      >=0                  NA                0.0227723   0.0174604   0.0280842
3 months    ki1126311-ZVITAMBO   ZIMBABWE      <-3                  NA                0.3107143   0.2565050   0.3649235
3 months    ki1126311-ZVITAMBO   ZIMBABWE      [-3--2)              NA                0.1575563   0.1289234   0.1861892
3 months    ki1126311-ZVITAMBO   ZIMBABWE      [-2--1)              NA                0.0723606   0.0599931   0.0847282
3 months    ki1126311-ZVITAMBO   ZIMBABWE      [-1-0)               NA                0.0419703   0.0352603   0.0486803
3 months    ki1135781-COHORTS    PHILIPPINES   >=0                  NA                0.0040032   0.0005007   0.0075057
3 months    ki1135781-COHORTS    PHILIPPINES   <-3                  NA                0.5000000   0.3450242   0.6549758
3 months    ki1135781-COHORTS    PHILIPPINES   [-3--2)              NA                0.1825397   0.1150790   0.2500003
3 months    ki1135781-COHORTS    PHILIPPINES   [-2--1)              NA                0.0400000   0.0213665   0.0586335
3 months    ki1135781-COHORTS    PHILIPPINES   [-1-0)               NA                0.0087464   0.0030562   0.0144365
6 months    ki1126311-ZVITAMBO   ZIMBABWE      >=0                  NA                0.0152950   0.0107046   0.0198854
6 months    ki1126311-ZVITAMBO   ZIMBABWE      <-3                  NA                0.2008197   0.1505501   0.2510893
6 months    ki1126311-ZVITAMBO   ZIMBABWE      [-3--2)              NA                0.0932358   0.0688678   0.1176038
6 months    ki1126311-ZVITAMBO   ZIMBABWE      [-2--1)              NA                0.0555184   0.0439101   0.0671267
6 months    ki1126311-ZVITAMBO   ZIMBABWE      [-1-0)               NA                0.0363405   0.0297915   0.0428894
6 months    ki1135781-COHORTS    INDIA         >=0                  NA                0.0063621   0.0026141   0.0101101
6 months    ki1135781-COHORTS    INDIA         <-3                  NA                0.3678161   0.2961612   0.4394710
6 months    ki1135781-COHORTS    INDIA         [-3--2)              NA                0.1515152   0.1209296   0.1821007
6 months    ki1135781-COHORTS    INDIA         [-2--1)              NA                0.0534722   0.0418515   0.0650929
6 months    ki1135781-COHORTS    INDIA         [-1-0)               NA                0.0167919   0.0114975   0.0220862
6 months    ki1135781-COHORTS    PHILIPPINES   >=0                  NA                0.0145673   0.0076919   0.0214426
6 months    ki1135781-COHORTS    PHILIPPINES   <-3                  NA                0.3783784   0.2220802   0.5346765
6 months    ki1135781-COHORTS    PHILIPPINES   [-3--2)              NA                0.1525424   0.0876578   0.2174270
6 months    ki1135781-COHORTS    PHILIPPINES   [-2--1)              NA                0.1160494   0.0848507   0.1472481
6 months    ki1135781-COHORTS    PHILIPPINES   [-1-0)               NA                0.0369610   0.0251103   0.0488117
9 months    ki1126311-ZVITAMBO   ZIMBABWE      >=0                  NA                0.0267931   0.0203670   0.0332191
9 months    ki1126311-ZVITAMBO   ZIMBABWE      <-3                  NA                0.1974249   0.1463106   0.2485392
9 months    ki1126311-ZVITAMBO   ZIMBABWE      [-3--2)              NA                0.0891473   0.0645589   0.1137357
9 months    ki1126311-ZVITAMBO   ZIMBABWE      [-2--1)              NA                0.0639333   0.0512928   0.0765738
9 months    ki1126311-ZVITAMBO   ZIMBABWE      [-1-0)               NA                0.0388019   0.0318182   0.0457856
9 months    ki1135781-COHORTS    INDIA         >=0                  NA                0.0126921   0.0070209   0.0183632
9 months    ki1135781-COHORTS    INDIA         <-3                  NA                0.3548387   0.2795078   0.4301696
9 months    ki1135781-COHORTS    INDIA         [-3--2)              NA                0.1918736   0.1552016   0.2285456
9 months    ki1135781-COHORTS    INDIA         [-2--1)              NA                0.1164659   0.0986455   0.1342862
9 months    ki1135781-COHORTS    INDIA         [-1-0)               NA                0.0443528   0.0351882   0.0535173
9 months    ki1135781-COHORTS    PHILIPPINES   >=0                  NA                0.0196078   0.0116720   0.0275437
9 months    ki1135781-COHORTS    PHILIPPINES   <-3                  NA                0.4722222   0.3091140   0.6353305
9 months    ki1135781-COHORTS    PHILIPPINES   [-3--2)              NA                0.2727273   0.1933587   0.3520959
9 months    ki1135781-COHORTS    PHILIPPINES   [-2--1)              NA                0.1481481   0.1135438   0.1827525
9 months    ki1135781-COHORTS    PHILIPPINES   [-1-0)               NA                0.0649485   0.0494373   0.0804596
12 months   ki1000108-IRC        INDIA         >=0                  NA                0.0352113   0.0048566   0.0655659
12 months   ki1000108-IRC        INDIA         <-3                  NA                0.3333333   0.0944637   0.5722030
12 months   ki1000108-IRC        INDIA         [-3--2)              NA                0.2692308   0.0985130   0.4399485
12 months   ki1000108-IRC        INDIA         [-2--1)              NA                0.1230769   0.0431073   0.2030466
12 months   ki1000108-IRC        INDIA         [-1-0)               NA                0.0510949   0.0141757   0.0880141
12 months   ki1126311-ZVITAMBO   ZIMBABWE      >=0                  NA                0.0326034   0.0249243   0.0402825
12 months   ki1126311-ZVITAMBO   ZIMBABWE      <-3                  NA                0.2292683   0.1717207   0.2868159
12 months   ki1126311-ZVITAMBO   ZIMBABWE      [-3--2)              NA                0.1169102   0.0881335   0.1456870
12 months   ki1126311-ZVITAMBO   ZIMBABWE      [-2--1)              NA                0.0895865   0.0740966   0.1050765
12 months   ki1126311-ZVITAMBO   ZIMBABWE      [-1-0)               NA                0.0595054   0.0503904   0.0686204
12 months   ki1135781-COHORTS    INDIA         >=0                  NA                0.0282949   0.0194258   0.0371639
12 months   ki1135781-COHORTS    INDIA         <-3                  NA                0.3555556   0.2747997   0.4363114
12 months   ki1135781-COHORTS    INDIA         [-3--2)              NA                0.2647815   0.2209313   0.3086317
12 months   ki1135781-COHORTS    INDIA         [-2--1)              NA                0.1721014   0.1498330   0.1943699
12 months   ki1135781-COHORTS    INDIA         [-1-0)               NA                0.0775912   0.0649725   0.0902099
12 months   ki1135781-COHORTS    PHILIPPINES   >=0                  NA                0.0508475   0.0379848   0.0637102
12 months   ki1135781-COHORTS    PHILIPPINES   <-3                  NA                0.5454545   0.3755350   0.7153741
12 months   ki1135781-COHORTS    PHILIPPINES   [-3--2)              NA                0.4188034   0.3293893   0.5082175
12 months   ki1135781-COHORTS    PHILIPPINES   [-2--1)              NA                0.2480418   0.2047812   0.2913023
12 months   ki1135781-COHORTS    PHILIPPINES   [-1-0)               NA                0.1349892   0.1129758   0.1570026
18 months   ki1101329-Keneba     GAMBIA        >=0                  NA                0.0442748   0.0285149   0.0600348
18 months   ki1101329-Keneba     GAMBIA        <-3                  NA                0.2727273   0.0865476   0.4589069
18 months   ki1101329-Keneba     GAMBIA        [-3--2)              NA                0.2222222   0.0863593   0.3580851
18 months   ki1101329-Keneba     GAMBIA        [-2--1)              NA                0.1111111   0.0541419   0.1680803
18 months   ki1101329-Keneba     GAMBIA        [-1-0)               NA                0.1277778   0.0932777   0.1622779
18 months   ki1126311-ZVITAMBO   ZIMBABWE      >=0                  NA                0.1211340   0.0886585   0.1536095
18 months   ki1126311-ZVITAMBO   ZIMBABWE      <-3                  NA                0.4117647   0.3071078   0.5164216
18 months   ki1126311-ZVITAMBO   ZIMBABWE      [-3--2)              NA                0.2312139   0.1683699   0.2940579
18 months   ki1126311-ZVITAMBO   ZIMBABWE      [-2--1)              NA                0.1841492   0.1474599   0.2208384
18 months   ki1126311-ZVITAMBO   ZIMBABWE      [-1-0)               NA                0.1513158   0.1228226   0.1798089
18 months   ki1135781-COHORTS    PHILIPPINES   >=0                  NA                0.1478421   0.1267567   0.1689274
18 months   ki1135781-COHORTS    PHILIPPINES   <-3                  NA                0.5937500   0.4235503   0.7639497
18 months   ki1135781-COHORTS    PHILIPPINES   [-3--2)              NA                0.5648148   0.4712929   0.6583368
18 months   ki1135781-COHORTS    PHILIPPINES   [-2--1)              NA                0.4116022   0.3608967   0.4623078
18 months   ki1135781-COHORTS    PHILIPPINES   [-1-0)               NA                0.2639198   0.2350864   0.2927532
24 months   ki1126311-ZVITAMBO   ZIMBABWE      >=0                  NA                0.1739130   0.0843786   0.2634474
24 months   ki1126311-ZVITAMBO   ZIMBABWE      <-3                  NA                0.4285714   0.2450659   0.6120769
24 months   ki1126311-ZVITAMBO   ZIMBABWE      [-3--2)              NA                0.4242424   0.3048737   0.5436111
24 months   ki1126311-ZVITAMBO   ZIMBABWE      [-2--1)              NA                0.2739726   0.2015475   0.3463977
24 months   ki1126311-ZVITAMBO   ZIMBABWE      [-1-0)               NA                0.2627737   0.1889890   0.3365585
24 months   ki1135781-COHORTS    INDIA         >=0                  NA                0.0593842   0.0468404   0.0719279
24 months   ki1135781-COHORTS    INDIA         <-3                  NA                0.5036496   0.4199176   0.5873817
24 months   ki1135781-COHORTS    INDIA         [-3--2)              NA                0.3686869   0.3211646   0.4162092
24 months   ki1135781-COHORTS    INDIA         [-2--1)              NA                0.2762681   0.2498888   0.3026474
24 months   ki1135781-COHORTS    INDIA         [-1-0)               NA                0.1517045   0.1349431   0.1684659
24 months   ki1135781-COHORTS    PHILIPPINES   >=0                  NA                0.1729679   0.1501729   0.1957628
24 months   ki1135781-COHORTS    PHILIPPINES   <-3                  NA                0.6000000   0.4246596   0.7753404
24 months   ki1135781-COHORTS    PHILIPPINES   [-3--2)              NA                0.5428571   0.4475531   0.6381611
24 months   ki1135781-COHORTS    PHILIPPINES   [-2--1)              NA                0.4217877   0.3706212   0.4729543
24 months   ki1135781-COHORTS    PHILIPPINES   [-1-0)               NA                0.3131313   0.2826735   0.3435891


### Parameter: E(Y)


agecat      studyid              country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki1101329-Keneba     GAMBIA        NA                   NA                0.0239605   0.0221856   0.0257355
3 months    ki1126311-ZVITAMBO   ZIMBABWE      NA                   NA                0.0574649   0.0562978   0.0586321
3 months    ki1135781-COHORTS    PHILIPPINES   NA                   NA                0.0257930   0.0233229   0.0282630
6 months    ki1126311-ZVITAMBO   ZIMBABWE      NA                   NA                0.0414983   0.0407426   0.0422541
6 months    ki1135781-COHORTS    INDIA         NA                   NA                0.0440170   0.0423080   0.0457259
6 months    ki1135781-COHORTS    PHILIPPINES   NA                   NA                0.0488708   0.0467393   0.0510022
9 months    ki1126311-ZVITAMBO   ZIMBABWE      NA                   NA                0.0480667   0.0473428   0.0487907
9 months    ki1135781-COHORTS    INDIA         NA                   NA                0.0738776   0.0719144   0.0758409
9 months    ki1135781-COHORTS    PHILIPPINES   NA                   NA                0.0724584   0.0695364   0.0753805
12 months   ki1000108-IRC        INDIA         NA                   NA                0.0831169   0.0752037   0.0910300
12 months   ki1126311-ZVITAMBO   ZIMBABWE      NA                   NA                0.0664858   0.0655591   0.0674124
12 months   ki1135781-COHORTS    INDIA         NA                   NA                0.1091954   0.1068170   0.1115738
12 months   ki1135781-COHORTS    PHILIPPINES   NA                   NA                0.1333333   0.1293265   0.1373402
18 months   ki1101329-Keneba     GAMBIA        NA                   NA                0.0857143   0.0827313   0.0886973
18 months   ki1126311-ZVITAMBO   ZIMBABWE      NA                   NA                0.1740939   0.1710533   0.1771345
18 months   ki1135781-COHORTS    PHILIPPINES   NA                   NA                0.2519084   0.2472177   0.2565990
24 months   ki1126311-ZVITAMBO   ZIMBABWE      NA                   NA                0.2869955   0.2796444   0.2943466
24 months   ki1135781-COHORTS    INDIA         NA                   NA                0.1823146   0.1791280   0.1855013
24 months   ki1135781-COHORTS    PHILIPPINES   NA                   NA                0.2817363   0.2772945   0.2861781


### Parameter: RR


agecat      studyid              country       intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------  ------------  -------------------  ---------------  -----------  -----------  -----------
3 months    ki1101329-Keneba     GAMBIA        >=0                  >=0                 1.000000    1.0000000     1.000000
3 months    ki1101329-Keneba     GAMBIA        <-3                  >=0                20.989011    7.1320131    61.769177
3 months    ki1101329-Keneba     GAMBIA        [-3--2)              >=0                14.236025    4.9846634    40.657590
3 months    ki1101329-Keneba     GAMBIA        [-2--1)              >=0                 6.592522    2.4932462    17.431628
3 months    ki1101329-Keneba     GAMBIA        [-1-0)               >=0                 1.760369    0.6213608     4.987276
3 months    ki1126311-ZVITAMBO   ZIMBABWE      >=0                  >=0                 1.000000    1.0000000     1.000000
3 months    ki1126311-ZVITAMBO   ZIMBABWE      <-3                  >=0                13.644410   10.1964490    18.258309
3 months    ki1126311-ZVITAMBO   ZIMBABWE      [-3--2)              >=0                 6.918775    5.1476486     9.299285
3 months    ki1126311-ZVITAMBO   ZIMBABWE      [-2--1)              >=0                 3.177575    2.3796198     4.243107
3 months    ki1126311-ZVITAMBO   ZIMBABWE      [-1-0)               >=0                 1.843042    1.3890573     2.445403
3 months    ki1135781-COHORTS    PHILIPPINES   >=0                  >=0                 1.000000    1.0000000     1.000000
3 months    ki1135781-COHORTS    PHILIPPINES   <-3                  >=0               124.900000   49.3686040   315.990503
3 months    ki1135781-COHORTS    PHILIPPINES   [-3--2)              >=0                45.598413   17.6388362   117.877122
3 months    ki1135781-COHORTS    PHILIPPINES   [-2--1)              >=0                 9.992000    3.7083218    26.923247
3 months    ki1135781-COHORTS    PHILIPPINES   [-1-0)               >=0                 2.184840    0.7343682     6.500178
6 months    ki1126311-ZVITAMBO   ZIMBABWE      >=0                  >=0                 1.000000    1.0000000     1.000000
6 months    ki1126311-ZVITAMBO   ZIMBABWE      <-3                  >=0                13.129778    8.8823634    19.408244
6 months    ki1126311-ZVITAMBO   ZIMBABWE      [-3--2)              >=0                 6.095846    4.0944529     9.075532
6 months    ki1126311-ZVITAMBO   ZIMBABWE      [-2--1)              >=0                 3.629845    2.5178654     5.232914
6 months    ki1126311-ZVITAMBO   ZIMBABWE      [-1-0)               >=0                 2.375973    1.6741959     3.371915
6 months    ki1135781-COHORTS    INDIA         >=0                  >=0                 1.000000    1.0000000     1.000000
6 months    ki1135781-COHORTS    INDIA         <-3                  >=0                57.813997   31.0854310   107.524913
6 months    ki1135781-COHORTS    INDIA         [-3--2)              >=0                23.815425   12.7762941    44.392722
6 months    ki1135781-COHORTS    INDIA         [-2--1)              >=0                 8.404860    4.4856665    15.748313
6 months    ki1135781-COHORTS    INDIA         [-1-0)               >=0                 2.639376    1.3530483     5.148602
6 months    ki1135781-COHORTS    PHILIPPINES   >=0                  >=0                 1.000000    1.0000000     1.000000
6 months    ki1135781-COHORTS    PHILIPPINES   <-3                  >=0                25.974563   13.8725294    48.634095
6 months    ki1135781-COHORTS    PHILIPPINES   [-3--2)              >=0                10.471585    5.5472533    19.767278
6 months    ki1135781-COHORTS    PHILIPPINES   [-2--1)              >=0                 7.966449    4.6277405    13.713886
6 months    ki1135781-COHORTS    PHILIPPINES   [-1-0)               >=0                 2.537263    1.4340565     4.489156
9 months    ki1126311-ZVITAMBO   ZIMBABWE      >=0                  >=0                 1.000000    1.0000000     1.000000
9 months    ki1126311-ZVITAMBO   ZIMBABWE      <-3                  >=0                 7.368505    5.1773360    10.487026
9 months    ki1126311-ZVITAMBO   ZIMBABWE      [-3--2)              >=0                 3.327251    2.3085847     4.795406
9 months    ki1126311-ZVITAMBO   ZIMBABWE      [-2--1)              >=0                 2.386187    1.7486927     3.256083
9 months    ki1126311-ZVITAMBO   ZIMBABWE      [-1-0)               >=0                 1.448206    1.0730057     1.954605
9 months    ki1135781-COHORTS    INDIA         >=0                  >=0                 1.000000    1.0000000     1.000000
9 months    ki1135781-COHORTS    INDIA         <-3                  >=0                27.957555   17.0473065    45.850345
9 months    ki1135781-COHORTS    INDIA         [-3--2)              >=0                15.117619    9.2986983    24.577893
9 months    ki1135781-COHORTS    INDIA         [-2--1)              >=0                 9.176284    5.7220334    14.715781
9 months    ki1135781-COHORTS    INDIA         [-1-0)               >=0                 3.494531    2.1359461     5.717253
9 months    ki1135781-COHORTS    PHILIPPINES   >=0                  >=0                 1.000000    1.0000000     1.000000
9 months    ki1135781-COHORTS    PHILIPPINES   <-3                  >=0                24.083333   14.1460943    41.001206
9 months    ki1135781-COHORTS    PHILIPPINES   [-3--2)              >=0                13.909091    8.4489971    22.897724
9 months    ki1135781-COHORTS    PHILIPPINES   [-2--1)              >=0                 7.555555    4.7350283    12.056194
9 months    ki1135781-COHORTS    PHILIPPINES   [-1-0)               >=0                 3.312371    2.0703673     5.299447
12 months   ki1000108-IRC        INDIA         >=0                  >=0                 1.000000    1.0000000     1.000000
12 months   ki1000108-IRC        INDIA         <-3                  >=0                 9.466667    3.0856165    29.043719
12 months   ki1000108-IRC        INDIA         [-3--2)              >=0                 7.646154    2.6222728    22.295037
12 months   ki1000108-IRC        INDIA         [-2--1)              >=0                 3.495385    1.1875948    10.287780
12 months   ki1000108-IRC        INDIA         [-1-0)               >=0                 1.451095    0.4711768     4.468973
12 months   ki1126311-ZVITAMBO   ZIMBABWE      >=0                  >=0                 1.000000    1.0000000     1.000000
12 months   ki1126311-ZVITAMBO   ZIMBABWE      <-3                  >=0                 7.032035    4.9841838     9.921286
12 months   ki1126311-ZVITAMBO   ZIMBABWE      [-3--2)              >=0                 3.585829    2.5505580     5.041315
12 months   ki1126311-ZVITAMBO   ZIMBABWE      [-2--1)              >=0                 2.747766    2.0515715     3.680211
12 months   ki1126311-ZVITAMBO   ZIMBABWE      [-1-0)               >=0                 1.825129    1.3780802     2.417199
12 months   ki1135781-COHORTS    INDIA         >=0                  >=0                 1.000000    1.0000000     1.000000
12 months   ki1135781-COHORTS    INDIA         <-3                  >=0                12.566082    8.5327570    18.505908
12 months   ki1135781-COHORTS    INDIA         [-3--2)              >=0                 9.357935    6.5647463    13.339579
12 months   ki1135781-COHORTS    INDIA         [-2--1)              >=0                 6.082427    4.3331579     8.537867
12 months   ki1135781-COHORTS    INDIA         [-1-0)               >=0                 2.742236    1.9263832     3.903616
12 months   ki1135781-COHORTS    PHILIPPINES   >=0                  >=0                 1.000000    1.0000000     1.000000
12 months   ki1135781-COHORTS    PHILIPPINES   <-3                  >=0                10.727273    7.1814136    16.023917
12 months   ki1135781-COHORTS    PHILIPPINES   [-3--2)              >=0                 8.236467    5.9153589    11.468348
12 months   ki1135781-COHORTS    PHILIPPINES   [-2--1)              >=0                 4.878155    3.5876755     6.632817
12 months   ki1135781-COHORTS    PHILIPPINES   [-1-0)               >=0                 2.654788    1.9647998     3.587082
18 months   ki1101329-Keneba     GAMBIA        >=0                  >=0                 1.000000    1.0000000     1.000000
18 months   ki1101329-Keneba     GAMBIA        <-3                  >=0                 6.159874    2.8524196    13.302409
18 months   ki1101329-Keneba     GAMBIA        [-3--2)              >=0                 5.019157    2.4739233    10.182990
18 months   ki1101329-Keneba     GAMBIA        [-2--1)              >=0                 2.509578    1.3443934     4.684629
18 months   ki1101329-Keneba     GAMBIA        [-1-0)               >=0                 2.886015    1.8461522     4.511591
18 months   ki1126311-ZVITAMBO   ZIMBABWE      >=0                  >=0                 1.000000    1.0000000     1.000000
18 months   ki1126311-ZVITAMBO   ZIMBABWE      <-3                  >=0                 3.399249    2.3493250     4.918389
18 months   ki1126311-ZVITAMBO   ZIMBABWE      [-3--2)              >=0                 1.908744    1.3030043     2.796080
18 months   ki1126311-ZVITAMBO   ZIMBABWE      [-2--1)              >=0                 1.520210    1.0885289     2.123085
18 months   ki1126311-ZVITAMBO   ZIMBABWE      [-1-0)               >=0                 1.249160    0.9001932     1.733407
18 months   ki1135781-COHORTS    PHILIPPINES   >=0                  >=0                 1.000000    1.0000000     1.000000
18 months   ki1135781-COHORTS    PHILIPPINES   <-3                  >=0                 4.016110    2.9157930     5.531648
18 months   ki1135781-COHORTS    PHILIPPINES   [-3--2)              >=0                 3.820393    3.0704338     4.753532
18 months   ki1135781-COHORTS    PHILIPPINES   [-2--1)              >=0                 2.784067    2.3058616     3.361446
18 months   ki1135781-COHORTS    PHILIPPINES   [-1-0)               >=0                 1.785147    1.4915930     2.136474
24 months   ki1126311-ZVITAMBO   ZIMBABWE      >=0                  >=0                 1.000000    1.0000000     1.000000
24 months   ki1126311-ZVITAMBO   ZIMBABWE      <-3                  >=0                 2.464286    1.2614855     4.813931
24 months   ki1126311-ZVITAMBO   ZIMBABWE      [-3--2)              >=0                 2.439394    1.3566991     4.386119
24 months   ki1126311-ZVITAMBO   ZIMBABWE      [-2--1)              >=0                 1.575343    0.8831557     2.810041
24 months   ki1126311-ZVITAMBO   ZIMBABWE      [-1-0)               >=0                 1.510949    0.8405653     2.715990
24 months   ki1135781-COHORTS    INDIA         >=0                  >=0                 1.000000    1.0000000     1.000000
24 months   ki1135781-COHORTS    INDIA         <-3                  >=0                 8.481211    6.4821047    11.096850
24 months   ki1135781-COHORTS    INDIA         [-3--2)              >=0                 6.208505    4.8475224     7.951594
24 months   ki1135781-COHORTS    INDIA         [-2--1)              >=0                 4.652219    3.6896607     5.865888
24 months   ki1135781-COHORTS    INDIA         [-1-0)               >=0                 2.554630    2.0127974     3.242320
24 months   ki1135781-COHORTS    PHILIPPINES   >=0                  >=0                 1.000000    1.0000000     1.000000
24 months   ki1135781-COHORTS    PHILIPPINES   <-3                  >=0                 3.468853    2.5174551     4.779802
24 months   ki1135781-COHORTS    PHILIPPINES   [-3--2)              >=0                 3.138486    2.5199023     3.908918
24 months   ki1135781-COHORTS    PHILIPPINES   [-2--1)              >=0                 2.438532    2.0386284     2.916882
24 months   ki1135781-COHORTS    PHILIPPINES   [-1-0)               >=0                 1.810344    1.5368292     2.132537


### Parameter: PAR


agecat      studyid              country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki1101329-Keneba     GAMBIA        >=0                  NA                0.0147982   0.0078104   0.0217860
3 months    ki1126311-ZVITAMBO   ZIMBABWE      >=0                  NA                0.0346926   0.0292540   0.0401313
3 months    ki1135781-COHORTS    PHILIPPINES   >=0                  NA                0.0217898   0.0175039   0.0260756
6 months    ki1126311-ZVITAMBO   ZIMBABWE      >=0                  NA                0.0262034   0.0215512   0.0308556
6 months    ki1135781-COHORTS    INDIA         >=0                  NA                0.0376549   0.0335357   0.0417741
6 months    ki1135781-COHORTS    PHILIPPINES   >=0                  NA                0.0343035   0.0271053   0.0415017
9 months    ki1126311-ZVITAMBO   ZIMBABWE      >=0                  NA                0.0212737   0.0148069   0.0277404
9 months    ki1135781-COHORTS    INDIA         >=0                  NA                0.0611856   0.0551842   0.0671869
9 months    ki1135781-COHORTS    PHILIPPINES   >=0                  NA                0.0528506   0.0443938   0.0613073
12 months   ki1000108-IRC        INDIA         >=0                  NA                0.0479056   0.0165365   0.0792748
12 months   ki1126311-ZVITAMBO   ZIMBABWE      >=0                  NA                0.0338823   0.0261476   0.0416171
12 months   ki1135781-COHORTS    INDIA         >=0                  NA                0.0809005   0.0717181   0.0900830
12 months   ki1135781-COHORTS    PHILIPPINES   >=0                  NA                0.0824859   0.0690135   0.0959582
18 months   ki1101329-Keneba     GAMBIA        >=0                  NA                0.0414395   0.0253997   0.0574792
18 months   ki1126311-ZVITAMBO   ZIMBABWE      >=0                  NA                0.0529599   0.0203423   0.0855774
18 months   ki1135781-COHORTS    PHILIPPINES   >=0                  NA                0.1040663   0.0824656   0.1256671
24 months   ki1126311-ZVITAMBO   ZIMBABWE      >=0                  NA                0.1130825   0.0232468   0.2029181
24 months   ki1135781-COHORTS    INDIA         >=0                  NA                0.1229305   0.1099883   0.1358727
24 months   ki1135781-COHORTS    PHILIPPINES   >=0                  NA                0.1087684   0.0855448   0.1319921


### Parameter: PAF


agecat      studyid              country       intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------  ------------  -------------------  ---------------  ----------  -----------  ----------
3 months    ki1101329-Keneba     GAMBIA        >=0                  NA                0.6176086    0.1974371   0.8178047
3 months    ki1126311-ZVITAMBO   ZIMBABWE      >=0                  NA                0.6037186    0.4991684   0.6864436
3 months    ki1135781-COHORTS    PHILIPPINES   >=0                  NA                0.8447948    0.6257618   0.9356328
6 months    ki1126311-ZVITAMBO   ZIMBABWE      >=0                  NA                0.6314316    0.5021475   0.7271428
6 months    ki1135781-COHORTS    INDIA         >=0                  NA                0.8554634    0.7391548   0.9199110
6 months    ki1135781-COHORTS    PHILIPPINES   >=0                  NA                0.7019228    0.5211743   0.8144419
9 months    ki1126311-ZVITAMBO   ZIMBABWE      >=0                  NA                0.4425859    0.2911659   0.5616598
9 months    ki1135781-COHORTS    INDIA         >=0                  NA                0.8282017    0.7312082   0.8901951
9 months    ki1135781-COHORTS    PHILIPPINES   >=0                  NA                0.7293918    0.5935726   0.8198231
12 months   ki1000108-IRC        INDIA         >=0                  NA                0.5763644   -0.0084679   0.8220399
12 months   ki1126311-ZVITAMBO   ZIMBABWE      >=0                  NA                0.5096182    0.3791273   0.6126833
12 months   ki1135781-COHORTS    INDIA         >=0                  NA                0.7408786    0.6452180   0.8107461
12 months   ki1135781-COHORTS    PHILIPPINES   >=0                  NA                0.6186441    0.5080002   0.7044057
18 months   ki1101329-Keneba     GAMBIA        >=0                  NA                0.4834605    0.2613632   0.6387765
18 months   ki1126311-ZVITAMBO   ZIMBABWE      >=0                  NA                0.3042029    0.0897476   0.4681325
18 months   ki1135781-COHORTS    PHILIPPINES   >=0                  NA                0.4131118    0.3223267   0.4917349
24 months   ki1126311-ZVITAMBO   ZIMBABWE      >=0                  NA                0.3940217   -0.0146548   0.6380940
24 months   ki1135781-COHORTS    INDIA         >=0                  NA                0.6742765    0.5973766   0.7364887
24 months   ki1135781-COHORTS    PHILIPPINES   >=0                  NA                0.3860646    0.2989240   0.4623741
