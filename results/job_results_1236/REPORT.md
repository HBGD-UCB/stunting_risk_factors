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
Birth       ki0047075b-MAL-ED          BANGLADESH                     [-3--2)      257     38      0     38
Birth       ki0047075b-MAL-ED          BANGLADESH                     [-2--1)      257     83     83      0
Birth       ki0047075b-MAL-ED          BANGLADESH                     [-1-0)       257     88     88      0
Birth       ki0047075b-MAL-ED          BRAZIL                         >=0          191     44     44      0
Birth       ki0047075b-MAL-ED          BRAZIL                         <-3          191      8      0      8
Birth       ki0047075b-MAL-ED          BRAZIL                         [-3--2)      191     13      0     13
Birth       ki0047075b-MAL-ED          BRAZIL                         [-2--1)      191     48     48      0
Birth       ki0047075b-MAL-ED          BRAZIL                         [-1-0)       191     78     78      0
Birth       ki0047075b-MAL-ED          INDIA                          >=0          206     34     34      0
Birth       ki0047075b-MAL-ED          INDIA                          <-3          206      7      0      7
Birth       ki0047075b-MAL-ED          INDIA                          [-3--2)      206     26      0     26
Birth       ki0047075b-MAL-ED          INDIA                          [-2--1)      206     66     66      0
Birth       ki0047075b-MAL-ED          INDIA                          [-1-0)       206     73     73      0
Birth       ki0047075b-MAL-ED          NEPAL                          >=0          173     45     45      0
Birth       ki0047075b-MAL-ED          NEPAL                          <-3          173      6      0      6
Birth       ki0047075b-MAL-ED          NEPAL                          [-3--2)      173     12      0     12
Birth       ki0047075b-MAL-ED          NEPAL                          [-2--1)      173     46     46      0
Birth       ki0047075b-MAL-ED          NEPAL                          [-1-0)       173     64     64      0
Birth       ki0047075b-MAL-ED          PERU                           >=0          287     44     44      0
Birth       ki0047075b-MAL-ED          PERU                           <-3          287      8      0      8
Birth       ki0047075b-MAL-ED          PERU                           [-3--2)      287     26      0     26
Birth       ki0047075b-MAL-ED          PERU                           [-2--1)      287     94     94      0
Birth       ki0047075b-MAL-ED          PERU                           [-1-0)       287    115    115      0
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=0          262     59     59      0
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <-3          262      2      0      2
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [-3--2)      262     26      0     26
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [-2--1)      262     73     73      0
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [-1-0)       262    102    102      0
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=0          123     24     24      0
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <-3          123      6      0      6
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-3--2)      123     12      0     12
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-2--1)      123     32     32      0
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-1-0)       123     49     49      0
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          >=0           90     13     13      0
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          <-3           90      3      0      3
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          [-3--2)       90     13      0     13
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          [-2--1)       90     21     21      0
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          [-1-0)        90     40     40      0
Birth       ki1000108-IRC              INDIA                          >=0          388    143    143      0
Birth       ki1000108-IRC              INDIA                          <-3          388     16      0     16
Birth       ki1000108-IRC              INDIA                          [-3--2)      388     27      0     27
Birth       ki1000108-IRC              INDIA                          [-2--1)      388     65     63      2
Birth       ki1000108-IRC              INDIA                          [-1-0)       388    137    137      0
Birth       ki1000109-EE               PAKISTAN                       >=0            2      1      1      0
Birth       ki1000109-EE               PAKISTAN                       <-3            2      0      0      0
Birth       ki1000109-EE               PAKISTAN                       [-3--2)        2      1      0      1
Birth       ki1000109-EE               PAKISTAN                       [-2--1)        2      0      0      0
Birth       ki1000109-EE               PAKISTAN                       [-1-0)         2      0      0      0
Birth       ki1000109-ResPak           PAKISTAN                       >=0            7      3      3      0
Birth       ki1000109-ResPak           PAKISTAN                       <-3            7      0      0      0
Birth       ki1000109-ResPak           PAKISTAN                       [-3--2)        7      2      0      2
Birth       ki1000109-ResPak           PAKISTAN                       [-2--1)        7      0      0      0
Birth       ki1000109-ResPak           PAKISTAN                       [-1-0)         7      2      2      0
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=0           70      4      4      0
Birth       ki1000304b-SAS-CompFeed    INDIA                          <-3           70      4      0      4
Birth       ki1000304b-SAS-CompFeed    INDIA                          [-3--2)       70     13      0     13
Birth       ki1000304b-SAS-CompFeed    INDIA                          [-2--1)       70     21     21      0
Birth       ki1000304b-SAS-CompFeed    INDIA                          [-1-0)        70     28     28      0
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=0           28      7      7      0
Birth       ki1017093-NIH-Birth        BANGLADESH                     <-3           28      0      0      0
Birth       ki1017093-NIH-Birth        BANGLADESH                     [-3--2)       28      1      0      1
Birth       ki1017093-NIH-Birth        BANGLADESH                     [-2--1)       28      9      9      0
Birth       ki1017093-NIH-Birth        BANGLADESH                     [-1-0)        28     11     11      0
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=0           27      5      5      0
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <-3           27      1      0      1
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [-3--2)       27      4      0      4
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [-2--1)       27      8      8      0
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [-1-0)        27      9      9      0
Birth       ki1101329-Keneba           GAMBIA                         >=0         1541    825    825      0
Birth       ki1101329-Keneba           GAMBIA                         <-3         1541     30      0     30
Birth       ki1101329-Keneba           GAMBIA                         [-3--2)     1541     52      0     52
Birth       ki1101329-Keneba           GAMBIA                         [-2--1)     1541    163    163      0
Birth       ki1101329-Keneba           GAMBIA                         [-1-0)      1541    471    471      0
Birth       ki1114097-CMIN             BANGLADESH                     >=0           13      2      2      0
Birth       ki1114097-CMIN             BANGLADESH                     <-3           13      5      0      5
Birth       ki1114097-CMIN             BANGLADESH                     [-3--2)       13      1      0      1
Birth       ki1114097-CMIN             BANGLADESH                     [-2--1)       13      4      4      0
Birth       ki1114097-CMIN             BANGLADESH                     [-1-0)        13      1      1      0
Birth       ki1114097-CMIN             BRAZIL                         >=0          115     63     63      0
Birth       ki1114097-CMIN             BRAZIL                         <-3          115      3      0      3
Birth       ki1114097-CMIN             BRAZIL                         [-3--2)      115      2      0      2
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
Birth       ki1119695-PROBIT           BELARUS                        >=0         6779   6208   6208      0
Birth       ki1119695-PROBIT           BELARUS                        <-3         6779      5      0      5
Birth       ki1119695-PROBIT           BELARUS                        [-3--2)     6779     16      0     16
Birth       ki1119695-PROBIT           BELARUS                        [-2--1)     6779     55     55      0
Birth       ki1119695-PROBIT           BELARUS                        [-1-0)      6779    495    495      0
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=0        13830   4658   4658      0
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <-3        13830    450      0    450
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)    13830    982      0    982
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)    13830   2565   2565      0
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)     13830   5175   5175      0
Birth       ki1135781-COHORTS          GUATEMALA                      >=0          407    242    242      0
Birth       ki1135781-COHORTS          GUATEMALA                      <-3          407      4      0      4
Birth       ki1135781-COHORTS          GUATEMALA                      [-3--2)      407     15      0     15
Birth       ki1135781-COHORTS          GUATEMALA                      [-2--1)      407     39     39      0
Birth       ki1135781-COHORTS          GUATEMALA                      [-1-0)       407    107    107      0
Birth       ki1135781-COHORTS          INDIA                          >=0         6640   1852   1852      0
Birth       ki1135781-COHORTS          INDIA                          <-3         6640    214      0    214
Birth       ki1135781-COHORTS          INDIA                          [-3--2)     6640    578      0    578
Birth       ki1135781-COHORTS          INDIA                          [-2--1)     6640   1568   1568      0
Birth       ki1135781-COHORTS          INDIA                          [-1-0)      6640   2428   2428      0
Birth       ki1135781-COHORTS          PHILIPPINES                    >=0         3050   1328   1328      0
Birth       ki1135781-COHORTS          PHILIPPINES                    <-3         3050     49      0     49
Birth       ki1135781-COHORTS          PHILIPPINES                    [-3--2)     3050    138      0    138
Birth       ki1135781-COHORTS          PHILIPPINES                    [-2--1)     3050    448    448      0
Birth       ki1135781-COHORTS          PHILIPPINES                    [-1-0)      3050   1087   1087      0
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=0         9746    665    665      0
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <-3         9746   1141      0   1141
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [-3--2)     9746   2185      0   2185
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [-2--1)     9746   3413   3413      0
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [-1-0)      9746   2342   2342      0
Birth       kiGH5241-JiVitA-4          BANGLADESH                     >=0          224     14     14      0
Birth       kiGH5241-JiVitA-4          BANGLADESH                     <-3          224     18      0     18
Birth       kiGH5241-JiVitA-4          BANGLADESH                     [-3--2)      224     51      0     51
Birth       kiGH5241-JiVitA-4          BANGLADESH                     [-2--1)      224     79     79      0
Birth       kiGH5241-JiVitA-4          BANGLADESH                     [-1-0)       224     62     62      0
3 months    ki0047075b-MAL-ED          BANGLADESH                     >=0          242     38     37      1
3 months    ki0047075b-MAL-ED          BANGLADESH                     <-3          242      6      1      5
3 months    ki0047075b-MAL-ED          BANGLADESH                     [-3--2)      242     34     13     21
3 months    ki0047075b-MAL-ED          BANGLADESH                     [-2--1)      242     79     67     12
3 months    ki0047075b-MAL-ED          BANGLADESH                     [-1-0)       242     85     82      3
3 months    ki0047075b-MAL-ED          BRAZIL                         >=0          185     44     44      0
3 months    ki0047075b-MAL-ED          BRAZIL                         <-3          185      8      6      2
3 months    ki0047075b-MAL-ED          BRAZIL                         [-3--2)      185     11     10      1
3 months    ki0047075b-MAL-ED          BRAZIL                         [-2--1)      185     45     38      7
3 months    ki0047075b-MAL-ED          BRAZIL                         [-1-0)       185     77     75      2
3 months    ki0047075b-MAL-ED          INDIA                          >=0          196     33     33      0
3 months    ki0047075b-MAL-ED          INDIA                          <-3          196      7      0      7
3 months    ki0047075b-MAL-ED          INDIA                          [-3--2)      196     24     12     12
3 months    ki0047075b-MAL-ED          INDIA                          [-2--1)      196     65     58      7
3 months    ki0047075b-MAL-ED          INDIA                          [-1-0)       196     67     65      2
3 months    ki0047075b-MAL-ED          NEPAL                          >=0          171     44     44      0
3 months    ki0047075b-MAL-ED          NEPAL                          <-3          171      6      2      4
3 months    ki0047075b-MAL-ED          NEPAL                          [-3--2)      171     12      9      3
3 months    ki0047075b-MAL-ED          NEPAL                          [-2--1)      171     45     45      0
3 months    ki0047075b-MAL-ED          NEPAL                          [-1-0)       171     64     64      0
3 months    ki0047075b-MAL-ED          PERU                           >=0          277     43     40      3
3 months    ki0047075b-MAL-ED          PERU                           <-3          277      7      1      6
3 months    ki0047075b-MAL-ED          PERU                           [-3--2)      277     26      5     21
3 months    ki0047075b-MAL-ED          PERU                           [-2--1)      277     91     62     29
3 months    ki0047075b-MAL-ED          PERU                           [-1-0)       277    110    100     10
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=0          237     52     48      4
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <-3          237      1      0      1
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [-3--2)      237     24     11     13
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [-2--1)      237     63     49     14
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [-1-0)       237     97     85     12
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=0          119     24     24      0
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <-3          119      5      1      4
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-3--2)      119     12      6      6
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-2--1)      119     30     24      6
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-1-0)       119     48     47      1
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=0           91     14     12      2
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          <-3           91      3      1      2
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          [-3--2)       91     12      5      7
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          [-2--1)       91     22     19      3
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          [-1-0)        91     40     31      9
3 months    ki1000108-IRC              INDIA                          >=0          385    141    129     12
3 months    ki1000108-IRC              INDIA                          <-3          385     16      5     11
3 months    ki1000108-IRC              INDIA                          [-3--2)      385     27     13     14
3 months    ki1000108-IRC              INDIA                          [-2--1)      385     65     45     20
3 months    ki1000108-IRC              INDIA                          [-1-0)       385    136    106     30
3 months    ki1000109-EE               PAKISTAN                       >=0            2      1      1      0
3 months    ki1000109-EE               PAKISTAN                       <-3            2      0      0      0
3 months    ki1000109-EE               PAKISTAN                       [-3--2)        2      1      0      1
3 months    ki1000109-EE               PAKISTAN                       [-2--1)        2      0      0      0
3 months    ki1000109-EE               PAKISTAN                       [-1-0)         2      0      0      0
3 months    ki1000109-ResPak           PAKISTAN                       >=0            6      2      1      1
3 months    ki1000109-ResPak           PAKISTAN                       <-3            6      0      0      0
3 months    ki1000109-ResPak           PAKISTAN                       [-3--2)        6      2      0      2
3 months    ki1000109-ResPak           PAKISTAN                       [-2--1)        6      0      0      0
3 months    ki1000109-ResPak           PAKISTAN                       [-1-0)         6      2      2      0
3 months    ki1000304b-SAS-CompFeed    INDIA                          >=0          409     66     62      4
3 months    ki1000304b-SAS-CompFeed    INDIA                          <-3          409     18      2     16
3 months    ki1000304b-SAS-CompFeed    INDIA                          [-3--2)      409     55     24     31
3 months    ki1000304b-SAS-CompFeed    INDIA                          [-2--1)      409    127     88     39
3 months    ki1000304b-SAS-CompFeed    INDIA                          [-1-0)       409    143    124     19
3 months    ki1017093-NIH-Birth        BANGLADESH                     >=0           23      5      5      0
3 months    ki1017093-NIH-Birth        BANGLADESH                     <-3           23      0      0      0
3 months    ki1017093-NIH-Birth        BANGLADESH                     [-3--2)       23      1      0      1
3 months    ki1017093-NIH-Birth        BANGLADESH                     [-2--1)       23      8      6      2
3 months    ki1017093-NIH-Birth        BANGLADESH                     [-1-0)        23      9      8      1
3 months    ki1017093b-PROVIDE         BANGLADESH                     >=0          645    204    202      2
3 months    ki1017093b-PROVIDE         BANGLADESH                     <-3          645      1      0      1
3 months    ki1017093b-PROVIDE         BANGLADESH                     [-3--2)      645     21      6     15
3 months    ki1017093b-PROVIDE         BANGLADESH                     [-2--1)      645    162    113     49
3 months    ki1017093b-PROVIDE         BANGLADESH                     [-1-0)       645    257    246     11
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=0          728    214    212      2
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     <-3          728      5      0      5
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     [-3--2)      728     46     11     35
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     [-2--1)      728    179    105     74
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     [-1-0)       728    284    244     40
3 months    ki1101329-Keneba           GAMBIA                         >=0         1419    764    730     34
3 months    ki1101329-Keneba           GAMBIA                         <-3         1419     26     17      9
3 months    ki1101329-Keneba           GAMBIA                         [-3--2)     1419     46     23     23
3 months    ki1101329-Keneba           GAMBIA                         [-2--1)     1419    149     97     52
3 months    ki1101329-Keneba           GAMBIA                         [-1-0)      1419    434    386     48
3 months    ki1114097-CMIN             BRAZIL                         >=0           88     48     47      1
3 months    ki1114097-CMIN             BRAZIL                         <-3           88      3      2      1
3 months    ki1114097-CMIN             BRAZIL                         [-3--2)       88      2      1      1
3 months    ki1114097-CMIN             BRAZIL                         [-2--1)       88      9      8      1
3 months    ki1114097-CMIN             BRAZIL                         [-1-0)        88     26     22      4
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
3 months    ki1119695-PROBIT           BELARUS                        >=0         8054   7348   7056    292
3 months    ki1119695-PROBIT           BELARUS                        <-3         8054      6      4      2
3 months    ki1119695-PROBIT           BELARUS                        [-3--2)     8054     19      8     11
3 months    ki1119695-PROBIT           BELARUS                        [-2--1)     8054     64     33     31
3 months    ki1119695-PROBIT           BELARUS                        [-1-0)      8054    617    447    170
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=0         9049   3030   2793    237
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       <-3         9049    280    103    177
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)     9049    622    380    242
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)     9049   1686   1256    430
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)      9049   3431   2903    528
3 months    ki1135781-COHORTS          GUATEMALA                      >=0          361    218    188     30
3 months    ki1135781-COHORTS          GUATEMALA                      <-3          361      1      0      1
3 months    ki1135781-COHORTS          GUATEMALA                      [-3--2)      361     14      2     12
3 months    ki1135781-COHORTS          GUATEMALA                      [-2--1)      361     33      8     25
3 months    ki1135781-COHORTS          GUATEMALA                      [-1-0)       361     95     54     41
3 months    ki1135781-COHORTS          INDIA                          >=0         6465   1805   1774     31
3 months    ki1135781-COHORTS          INDIA                          <-3         6465    197     31    166
3 months    ki1135781-COHORTS          INDIA                          [-3--2)     6465    560    233    327
3 months    ki1135781-COHORTS          INDIA                          [-2--1)     6465   1529   1228    301
3 months    ki1135781-COHORTS          INDIA                          [-1-0)      6465   2374   2244    130
3 months    ki1135781-COHORTS          PHILIPPINES                    >=0         2869   1249   1211     38
3 months    ki1135781-COHORTS          PHILIPPINES                    <-3         2869     40      6     34
3 months    ki1135781-COHORTS          PHILIPPINES                    [-3--2)     2869    126     60     66
3 months    ki1135781-COHORTS          PHILIPPINES                    [-2--1)     2869    425    307    118
3 months    ki1135781-COHORTS          PHILIPPINES                    [-1-0)      2869   1029    931     98
3 months    kiGH5241-JiVitA-3          BANGLADESH                     >=0        12072   2031   1832    199
3 months    kiGH5241-JiVitA-3          BANGLADESH                     <-3        12072   1121    139    982
3 months    kiGH5241-JiVitA-3          BANGLADESH                     [-3--2)    12072   2300   1123   1177
3 months    kiGH5241-JiVitA-3          BANGLADESH                     [-2--1)    12072   3794   3024    770
3 months    kiGH5241-JiVitA-3          BANGLADESH                     [-1-0)     12072   2826   2630    196
3 months    kiGH5241-JiVitA-4          BANGLADESH                     >=0          844    286    257     29
3 months    kiGH5241-JiVitA-4          BANGLADESH                     <-3          844     43     11     32
3 months    kiGH5241-JiVitA-4          BANGLADESH                     [-3--2)      844    104     49     55
3 months    kiGH5241-JiVitA-4          BANGLADESH                     [-2--1)      844    195    156     39
3 months    kiGH5241-JiVitA-4          BANGLADESH                     [-1-0)       844    216    186     30
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=0          233     39     39      0
6 months    ki0047075b-MAL-ED          BANGLADESH                     <-3          233      6      2      4
6 months    ki0047075b-MAL-ED          BANGLADESH                     [-3--2)      233     32     14     18
6 months    ki0047075b-MAL-ED          BANGLADESH                     [-2--1)      233     74     59     15
6 months    ki0047075b-MAL-ED          BANGLADESH                     [-1-0)       233     82     76      6
6 months    ki0047075b-MAL-ED          BRAZIL                         >=0          173     40     40      0
6 months    ki0047075b-MAL-ED          BRAZIL                         <-3          173      7      7      0
6 months    ki0047075b-MAL-ED          BRAZIL                         [-3--2)      173     10      9      1
6 months    ki0047075b-MAL-ED          BRAZIL                         [-2--1)      173     41     40      1
6 months    ki0047075b-MAL-ED          BRAZIL                         [-1-0)       173     75     73      2
6 months    ki0047075b-MAL-ED          INDIA                          >=0          192     33     33      0
6 months    ki0047075b-MAL-ED          INDIA                          <-3          192      7      1      6
6 months    ki0047075b-MAL-ED          INDIA                          [-3--2)      192     23     16      7
6 months    ki0047075b-MAL-ED          INDIA                          [-2--1)      192     64     43     21
6 months    ki0047075b-MAL-ED          INDIA                          [-1-0)       192     65     61      4
6 months    ki0047075b-MAL-ED          NEPAL                          >=0          171     45     45      0
6 months    ki0047075b-MAL-ED          NEPAL                          <-3          171      6      2      4
6 months    ki0047075b-MAL-ED          NEPAL                          [-3--2)      171     12      9      3
6 months    ki0047075b-MAL-ED          NEPAL                          [-2--1)      171     44     43      1
6 months    ki0047075b-MAL-ED          NEPAL                          [-1-0)       171     64     64      0
6 months    ki0047075b-MAL-ED          PERU                           >=0          260     40     39      1
6 months    ki0047075b-MAL-ED          PERU                           <-3          260      7      2      5
6 months    ki0047075b-MAL-ED          PERU                           [-3--2)      260     24     10     14
6 months    ki0047075b-MAL-ED          PERU                           [-2--1)      260     88     62     26
6 months    ki0047075b-MAL-ED          PERU                           [-1-0)       260    101     91     10
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=0          214     48     45      3
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <-3          214      1      0      1
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [-3--2)      214     20     14      6
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [-2--1)      214     56     40     16
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [-1-0)       214     89     73     16
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=0          117     23     22      1
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <-3          117      5      1      4
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-3--2)      117     11      3      8
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-2--1)      117     31     23      8
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-1-0)       117     47     47      0
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=0           91     15     10      5
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <-3           91      3      3      0
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [-3--2)       91     12      6      6
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [-2--1)       91     21     16      5
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [-1-0)        91     40     32      8
6 months    ki1000108-IRC              INDIA                          >=0          386    143    124     19
6 months    ki1000108-IRC              INDIA                          <-3          386     14      6      8
6 months    ki1000108-IRC              INDIA                          [-3--2)      386     27     13     14
6 months    ki1000108-IRC              INDIA                          [-2--1)      386     65     42     23
6 months    ki1000108-IRC              INDIA                          [-1-0)       386    137    108     29
6 months    ki1000109-EE               PAKISTAN                       >=0            2      1      1      0
6 months    ki1000109-EE               PAKISTAN                       <-3            2      0      0      0
6 months    ki1000109-EE               PAKISTAN                       [-3--2)        2      1      0      1
6 months    ki1000109-EE               PAKISTAN                       [-2--1)        2      0      0      0
6 months    ki1000109-EE               PAKISTAN                       [-1-0)         2      0      0      0
6 months    ki1000109-ResPak           PAKISTAN                       >=0            5      1      1      0
6 months    ki1000109-ResPak           PAKISTAN                       <-3            5      0      0      0
6 months    ki1000109-ResPak           PAKISTAN                       [-3--2)        5      2      0      2
6 months    ki1000109-ResPak           PAKISTAN                       [-2--1)        5      0      0      0
6 months    ki1000109-ResPak           PAKISTAN                       [-1-0)         5      2      2      0
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=0          408     63     55      8
6 months    ki1000304b-SAS-CompFeed    INDIA                          <-3          408     18      2     16
6 months    ki1000304b-SAS-CompFeed    INDIA                          [-3--2)      408     55     24     31
6 months    ki1000304b-SAS-CompFeed    INDIA                          [-2--1)      408    130     93     37
6 months    ki1000304b-SAS-CompFeed    INDIA                          [-1-0)       408    142    122     20
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=0           17      3      3      0
6 months    ki1017093-NIH-Birth        BANGLADESH                     <-3           17      0      0      0
6 months    ki1017093-NIH-Birth        BANGLADESH                     [-3--2)       17      1      0      1
6 months    ki1017093-NIH-Birth        BANGLADESH                     [-2--1)       17      8      6      2
6 months    ki1017093-NIH-Birth        BANGLADESH                     [-1-0)        17      5      4      1
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=0          583    186    183      3
6 months    ki1017093b-PROVIDE         BANGLADESH                     <-3          583      1      0      1
6 months    ki1017093b-PROVIDE         BANGLADESH                     [-3--2)      583     20      7     13
6 months    ki1017093b-PROVIDE         BANGLADESH                     [-2--1)      583    148     91     57
6 months    ki1017093b-PROVIDE         BANGLADESH                     [-1-0)       583    228    208     20
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=0          715    216    211      5
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <-3          715      6      1      5
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [-3--2)      715     45     14     31
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [-2--1)      715    174    110     64
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [-1-0)       715    274    229     45
6 months    ki1101329-Keneba           GAMBIA                         >=0         1337    726    672     54
6 months    ki1101329-Keneba           GAMBIA                         <-3         1337     23     18      5
6 months    ki1101329-Keneba           GAMBIA                         [-3--2)     1337     42     26     16
6 months    ki1101329-Keneba           GAMBIA                         [-2--1)     1337    130     97     33
6 months    ki1101329-Keneba           GAMBIA                         [-1-0)      1337    416    344     72
6 months    ki1114097-CMIN             BRAZIL                         >=0          104     58     54      4
6 months    ki1114097-CMIN             BRAZIL                         <-3          104      2      2      0
6 months    ki1114097-CMIN             BRAZIL                         [-3--2)      104      2      1      1
6 months    ki1114097-CMIN             BRAZIL                         [-2--1)      104      9      9      0
6 months    ki1114097-CMIN             BRAZIL                         [-1-0)       104     33     28      5
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
6 months    ki1119695-PROBIT           BELARUS                        >=0         7662   7001   6609    392
6 months    ki1119695-PROBIT           BELARUS                        <-3         7662      5      5      0
6 months    ki1119695-PROBIT           BELARUS                        [-3--2)     7662     16      8      8
6 months    ki1119695-PROBIT           BELARUS                        [-2--1)     7662     62     37     25
6 months    ki1119695-PROBIT           BELARUS                        [-1-0)      7662    578    456    122
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=0         8169   2746   2513    233
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <-3         8169    244    102    142
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)     8169    547    364    183
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)     8169   1495   1160    335
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)      8169   3137   2678    459
6 months    ki1135781-COHORTS          GUATEMALA                      >=0          328    194    143     51
6 months    ki1135781-COHORTS          GUATEMALA                      <-3          328      1      0      1
6 months    ki1135781-COHORTS          GUATEMALA                      [-3--2)      328     14      0     14
6 months    ki1135781-COHORTS          GUATEMALA                      [-2--1)      328     28      4     24
6 months    ki1135781-COHORTS          GUATEMALA                      [-1-0)       328     91     40     51
6 months    ki1135781-COHORTS          INDIA                          >=0         6134   1729   1658     71
6 months    ki1135781-COHORTS          INDIA                          <-3         6134    174     55    119
6 months    ki1135781-COHORTS          INDIA                          [-3--2)     6134    528    249    279
6 months    ki1135781-COHORTS          INDIA                          [-2--1)     6134   1440   1045    395
6 months    ki1135781-COHORTS          INDIA                          [-1-0)      6134   2263   1984    279
6 months    ki1135781-COHORTS          PHILIPPINES                    >=0         2701   1167   1070     97
6 months    ki1135781-COHORTS          PHILIPPINES                    <-3         2701     37      3     34
6 months    ki1135781-COHORTS          PHILIPPINES                    [-3--2)     2701    118     50     68
6 months    ki1135781-COHORTS          PHILIPPINES                    [-2--1)     2701    405    252    153
6 months    ki1135781-COHORTS          PHILIPPINES                    [-1-0)      2701    974    754    220
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=0         8143   1366   1246    120
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <-3         8143    726    168    558
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [-3--2)     8143   1501    797    704
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [-2--1)     8143   2578   2019    559
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [-1-0)      8143   1972   1789    183
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >=0         1041    347    317     30
6 months    kiGH5241-JiVitA-4          BANGLADESH                     <-3         1041     50     11     39
6 months    kiGH5241-JiVitA-4          BANGLADESH                     [-3--2)     1041    133     70     63
6 months    kiGH5241-JiVitA-4          BANGLADESH                     [-2--1)     1041    240    172     68
6 months    kiGH5241-JiVitA-4          BANGLADESH                     [-1-0)      1041    271    231     40
9 months    ki0047075b-MAL-ED          BANGLADESH                     >=0          227     38     38      0
9 months    ki0047075b-MAL-ED          BANGLADESH                     <-3          227      6      2      4
9 months    ki0047075b-MAL-ED          BANGLADESH                     [-3--2)      227     31     10     21
9 months    ki0047075b-MAL-ED          BANGLADESH                     [-2--1)      227     73     53     20
9 months    ki0047075b-MAL-ED          BANGLADESH                     [-1-0)       227     79     67     12
9 months    ki0047075b-MAL-ED          BRAZIL                         >=0          163     36     36      0
9 months    ki0047075b-MAL-ED          BRAZIL                         <-3          163      7      7      0
9 months    ki0047075b-MAL-ED          BRAZIL                         [-3--2)      163      9      8      1
9 months    ki0047075b-MAL-ED          BRAZIL                         [-2--1)      163     40     40      0
9 months    ki0047075b-MAL-ED          BRAZIL                         [-1-0)       163     71     70      1
9 months    ki0047075b-MAL-ED          INDIA                          >=0          188     33     33      0
9 months    ki0047075b-MAL-ED          INDIA                          <-3          188      6      1      5
9 months    ki0047075b-MAL-ED          INDIA                          [-3--2)      188     22     15      7
9 months    ki0047075b-MAL-ED          INDIA                          [-2--1)      188     62     38     24
9 months    ki0047075b-MAL-ED          INDIA                          [-1-0)       188     65     58      7
9 months    ki0047075b-MAL-ED          NEPAL                          >=0          167     44     44      0
9 months    ki0047075b-MAL-ED          NEPAL                          <-3          167      5      2      3
9 months    ki0047075b-MAL-ED          NEPAL                          [-3--2)      167     12      9      3
9 months    ki0047075b-MAL-ED          NEPAL                          [-2--1)      167     44     40      4
9 months    ki0047075b-MAL-ED          NEPAL                          [-1-0)       167     62     61      1
9 months    ki0047075b-MAL-ED          PERU                           >=0          244     35     34      1
9 months    ki0047075b-MAL-ED          PERU                           <-3          244      7      1      6
9 months    ki0047075b-MAL-ED          PERU                           [-3--2)      244     24      9     15
9 months    ki0047075b-MAL-ED          PERU                           [-2--1)      244     87     60     27
9 months    ki0047075b-MAL-ED          PERU                           [-1-0)       244     91     81     10
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=0          211     48     44      4
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <-3          211      1      0      1
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [-3--2)      211     20     15      5
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [-2--1)      211     57     42     15
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [-1-0)       211     85     67     18
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=0          114     23     22      1
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <-3          114      5      2      3
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-3--2)      114     11      2      9
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-2--1)      114     30     14     16
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-1-0)       114     45     29     16
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=0           92     15     11      4
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          <-3           92      3      1      2
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          [-3--2)       92     12      7      5
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          [-2--1)       92     22     19      3
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          [-1-0)        92     40     33      7
9 months    ki1000108-IRC              INDIA                          >=0          386    143    120     23
9 months    ki1000108-IRC              INDIA                          <-3          386     14      7      7
9 months    ki1000108-IRC              INDIA                          [-3--2)      386     27     13     14
9 months    ki1000108-IRC              INDIA                          [-2--1)      386     65     42     23
9 months    ki1000108-IRC              INDIA                          [-1-0)       386    137    100     37
9 months    ki1000109-EE               PAKISTAN                       >=0            2      1      1      0
9 months    ki1000109-EE               PAKISTAN                       <-3            2      0      0      0
9 months    ki1000109-EE               PAKISTAN                       [-3--2)        2      1      0      1
9 months    ki1000109-EE               PAKISTAN                       [-2--1)        2      0      0      0
9 months    ki1000109-EE               PAKISTAN                       [-1-0)         2      0      0      0
9 months    ki1000109-ResPak           PAKISTAN                       >=0            6      2      1      1
9 months    ki1000109-ResPak           PAKISTAN                       <-3            6      0      0      0
9 months    ki1000109-ResPak           PAKISTAN                       [-3--2)        6      2      2      0
9 months    ki1000109-ResPak           PAKISTAN                       [-2--1)        6      0      0      0
9 months    ki1000109-ResPak           PAKISTAN                       [-1-0)         6      2      2      0
9 months    ki1000304b-SAS-CompFeed    INDIA                          >=0          401     64     50     14
9 months    ki1000304b-SAS-CompFeed    INDIA                          <-3          401     16      2     14
9 months    ki1000304b-SAS-CompFeed    INDIA                          [-3--2)      401     57     20     37
9 months    ki1000304b-SAS-CompFeed    INDIA                          [-2--1)      401    125     69     56
9 months    ki1000304b-SAS-CompFeed    INDIA                          [-1-0)       401    139    108     31
9 months    ki1017093-NIH-Birth        BANGLADESH                     >=0           17      3      3      0
9 months    ki1017093-NIH-Birth        BANGLADESH                     <-3           17      0      0      0
9 months    ki1017093-NIH-Birth        BANGLADESH                     [-3--2)       17      1      0      1
9 months    ki1017093-NIH-Birth        BANGLADESH                     [-2--1)       17      8      5      3
9 months    ki1017093-NIH-Birth        BANGLADESH                     [-1-0)        17      5      4      1
9 months    ki1017093b-PROVIDE         BANGLADESH                     >=0          605    193    183     10
9 months    ki1017093b-PROVIDE         BANGLADESH                     <-3          605      1      0      1
9 months    ki1017093b-PROVIDE         BANGLADESH                     [-3--2)      605     21      6     15
9 months    ki1017093b-PROVIDE         BANGLADESH                     [-2--1)      605    151     82     69
9 months    ki1017093b-PROVIDE         BANGLADESH                     [-1-0)       605    239    205     34
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=0          706    212    205      7
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     <-3          706      6      1      5
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     [-3--2)      706     41     13     28
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     [-2--1)      706    171    107     64
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     [-1-0)       706    276    216     60
9 months    ki1101329-Keneba           GAMBIA                         >=0         1320    724    653     71
9 months    ki1101329-Keneba           GAMBIA                         <-3         1320     26     18      8
9 months    ki1101329-Keneba           GAMBIA                         [-3--2)     1320     41     25     16
9 months    ki1101329-Keneba           GAMBIA                         [-2--1)     1320    134     85     49
9 months    ki1101329-Keneba           GAMBIA                         [-1-0)      1320    395    303     92
9 months    ki1114097-CMIN             BRAZIL                         >=0          106     59     51      8
9 months    ki1114097-CMIN             BRAZIL                         <-3          106      3      2      1
9 months    ki1114097-CMIN             BRAZIL                         [-3--2)      106      2      1      1
9 months    ki1114097-CMIN             BRAZIL                         [-2--1)      106     10      8      2
9 months    ki1114097-CMIN             BRAZIL                         [-1-0)       106     32     27      5
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
9 months    ki1119695-PROBIT           BELARUS                        >=0         7480   6855   6612    243
9 months    ki1119695-PROBIT           BELARUS                        <-3         7480      5      4      1
9 months    ki1119695-PROBIT           BELARUS                        [-3--2)     7480     17     13      4
9 months    ki1119695-PROBIT           BELARUS                        [-2--1)     7480     57     45     12
9 months    ki1119695-PROBIT           BELARUS                        [-1-0)      7480    546    470     76
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=0         7552   2426   2137    289
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       <-3         7552    233    112    121
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)     7552    516    341    175
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)     7552   1439   1066    373
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)      7552   2938   2401    537
9 months    ki1135781-COHORTS          GUATEMALA                      >=0          312    181     99     82
9 months    ki1135781-COHORTS          GUATEMALA                      <-3          312      1      0      1
9 months    ki1135781-COHORTS          GUATEMALA                      [-3--2)      312     14      0     14
9 months    ki1135781-COHORTS          GUATEMALA                      [-2--1)      312     31      2     29
9 months    ki1135781-COHORTS          GUATEMALA                      [-1-0)       312     85     23     62
9 months    ki1135781-COHORTS          INDIA                          >=0         5279   1497   1383    114
9 months    ki1135781-COHORTS          INDIA                          <-3         5279    155     55    100
9 months    ki1135781-COHORTS          INDIA                          [-3--2)     5279    443    188    255
9 months    ki1135781-COHORTS          INDIA                          [-2--1)     5279   1245    772    473
9 months    ki1135781-COHORTS          INDIA                          [-1-0)      5279   1939   1514    425
9 months    ki1135781-COHORTS          PHILIPPINES                    >=0         2705   1173   1018    155
9 months    ki1135781-COHORTS          PHILIPPINES                    <-3         2705     36      6     30
9 months    ki1135781-COHORTS          PHILIPPINES                    [-3--2)     2705    121     40     81
9 months    ki1135781-COHORTS          PHILIPPINES                    [-2--1)     2705    405    212    193
9 months    ki1135781-COHORTS          PHILIPPINES                    [-1-0)      2705    970    684    286
9 months    kiGH5241-JiVitA-4          BANGLADESH                     >=0         1057    338    292     46
9 months    kiGH5241-JiVitA-4          BANGLADESH                     <-3         1057     55     21     34
9 months    kiGH5241-JiVitA-4          BANGLADESH                     [-3--2)     1057    145     65     80
9 months    kiGH5241-JiVitA-4          BANGLADESH                     [-2--1)     1057    248    175     73
9 months    kiGH5241-JiVitA-4          BANGLADESH                     [-1-0)      1057    271    222     49
12 months   ki0047075b-MAL-ED          BANGLADESH                     >=0          226     38     36      2
12 months   ki0047075b-MAL-ED          BANGLADESH                     <-3          226      6      2      4
12 months   ki0047075b-MAL-ED          BANGLADESH                     [-3--2)      226     31      7     24
12 months   ki0047075b-MAL-ED          BANGLADESH                     [-2--1)      226     72     49     23
12 months   ki0047075b-MAL-ED          BANGLADESH                     [-1-0)       226     79     60     19
12 months   ki0047075b-MAL-ED          BRAZIL                         >=0          161     36     36      0
12 months   ki0047075b-MAL-ED          BRAZIL                         <-3          161      7      7      0
12 months   ki0047075b-MAL-ED          BRAZIL                         [-3--2)      161      9      7      2
12 months   ki0047075b-MAL-ED          BRAZIL                         [-2--1)      161     40     40      0
12 months   ki0047075b-MAL-ED          BRAZIL                         [-1-0)       161     69     68      1
12 months   ki0047075b-MAL-ED          INDIA                          >=0          184     32     31      1
12 months   ki0047075b-MAL-ED          INDIA                          <-3          184      6      0      6
12 months   ki0047075b-MAL-ED          INDIA                          [-3--2)      184     22     11     11
12 months   ki0047075b-MAL-ED          INDIA                          [-2--1)      184     60     33     27
12 months   ki0047075b-MAL-ED          INDIA                          [-1-0)       184     64     51     13
12 months   ki0047075b-MAL-ED          NEPAL                          >=0          167     44     44      0
12 months   ki0047075b-MAL-ED          NEPAL                          <-3          167      5      2      3
12 months   ki0047075b-MAL-ED          NEPAL                          [-3--2)      167     12      8      4
12 months   ki0047075b-MAL-ED          NEPAL                          [-2--1)      167     44     36      8
12 months   ki0047075b-MAL-ED          NEPAL                          [-1-0)       167     62     59      3
12 months   ki0047075b-MAL-ED          PERU                           >=0          235     35     31      4
12 months   ki0047075b-MAL-ED          PERU                           <-3          235      7      1      6
12 months   ki0047075b-MAL-ED          PERU                           [-3--2)      235     22      6     16
12 months   ki0047075b-MAL-ED          PERU                           [-2--1)      235     84     61     23
12 months   ki0047075b-MAL-ED          PERU                           [-1-0)       235     87     72     15
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=0          214     48     44      4
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <-3          214      1      1      0
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [-3--2)      214     21     13      8
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [-2--1)      214     57     41     16
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [-1-0)       214     87     69     18
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=0          111     22     19      3
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <-3          111      5      1      4
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-3--2)      111     11      2      9
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-2--1)      111     29     10     19
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-1-0)       111     44     21     23
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=0           92     14     10      4
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          <-3           92      3      0      3
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          [-3--2)       92     13      6      7
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          [-2--1)       92     22     15      7
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          [-1-0)        92     40     24     16
12 months   ki1000108-IRC              INDIA                          >=0          385    142    113     29
12 months   ki1000108-IRC              INDIA                          <-3          385     15      9      6
12 months   ki1000108-IRC              INDIA                          [-3--2)      385     26     13     13
12 months   ki1000108-IRC              INDIA                          [-2--1)      385     65     40     25
12 months   ki1000108-IRC              INDIA                          [-1-0)       385    137     98     39
12 months   ki1000109-EE               PAKISTAN                       >=0            2      1      1      0
12 months   ki1000109-EE               PAKISTAN                       <-3            2      0      0      0
12 months   ki1000109-EE               PAKISTAN                       [-3--2)        2      1      0      1
12 months   ki1000109-EE               PAKISTAN                       [-2--1)        2      0      0      0
12 months   ki1000109-EE               PAKISTAN                       [-1-0)         2      0      0      0
12 months   ki1000109-ResPak           PAKISTAN                       >=0            5      1      1      0
12 months   ki1000109-ResPak           PAKISTAN                       <-3            5      0      0      0
12 months   ki1000109-ResPak           PAKISTAN                       [-3--2)        5      2      1      1
12 months   ki1000109-ResPak           PAKISTAN                       [-2--1)        5      0      0      0
12 months   ki1000109-ResPak           PAKISTAN                       [-1-0)         5      2      2      0
12 months   ki1000304b-SAS-CompFeed    INDIA                          >=0          411     67     53     14
12 months   ki1000304b-SAS-CompFeed    INDIA                          <-3          411     17      2     15
12 months   ki1000304b-SAS-CompFeed    INDIA                          [-3--2)      411     60     19     41
12 months   ki1000304b-SAS-CompFeed    INDIA                          [-2--1)      411    127     57     70
12 months   ki1000304b-SAS-CompFeed    INDIA                          [-1-0)       411    140     98     42
12 months   ki1017093-NIH-Birth        BANGLADESH                     >=0           17      3      3      0
12 months   ki1017093-NIH-Birth        BANGLADESH                     <-3           17      0      0      0
12 months   ki1017093-NIH-Birth        BANGLADESH                     [-3--2)       17      1      0      1
12 months   ki1017093-NIH-Birth        BANGLADESH                     [-2--1)       17      8      4      4
12 months   ki1017093-NIH-Birth        BANGLADESH                     [-1-0)        17      5      2      3
12 months   ki1017093b-PROVIDE         BANGLADESH                     >=0          600    192    177     15
12 months   ki1017093b-PROVIDE         BANGLADESH                     <-3          600      1      0      1
12 months   ki1017093b-PROVIDE         BANGLADESH                     [-3--2)      600     21      8     13
12 months   ki1017093b-PROVIDE         BANGLADESH                     [-2--1)      600    146     74     72
12 months   ki1017093b-PROVIDE         BANGLADESH                     [-1-0)       600    240    184     56
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=0          706    212    201     11
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     <-3          706      6      1      5
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     [-3--2)      706     42     16     26
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     [-2--1)      706    176    104     72
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     [-1-0)       706    270    213     57
12 months   ki1101329-Keneba           GAMBIA                         >=0         1226    674    574    100
12 months   ki1101329-Keneba           GAMBIA                         <-3         1226     25     14     11
12 months   ki1101329-Keneba           GAMBIA                         [-3--2)     1226     42     17     25
12 months   ki1101329-Keneba           GAMBIA                         [-2--1)     1226    124     71     53
12 months   ki1101329-Keneba           GAMBIA                         [-1-0)      1226    361    249    112
12 months   ki1114097-CMIN             BRAZIL                         >=0          111     62     52     10
12 months   ki1114097-CMIN             BRAZIL                         <-3          111      3      2      1
12 months   ki1114097-CMIN             BRAZIL                         [-3--2)      111      2      1      1
12 months   ki1114097-CMIN             BRAZIL                         [-2--1)      111     10      8      2
12 months   ki1114097-CMIN             BRAZIL                         [-1-0)       111     34     24     10
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
12 months   ki1119695-PROBIT           BELARUS                        >=0         7733   7065   6883    182
12 months   ki1119695-PROBIT           BELARUS                        <-3         7733      5      5      0
12 months   ki1119695-PROBIT           BELARUS                        [-3--2)     7733     17     14      3
12 months   ki1119695-PROBIT           BELARUS                        [-2--1)     7733     62     50     12
12 months   ki1119695-PROBIT           BELARUS                        [-1-0)      7733    584    517     67
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=0         6633   2055   1746    309
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       <-3         6633    205     91    114
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)     6633    479    288    191
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)     6633   1306    905    401
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)      6633   2588   1980    608
12 months   ki1135781-COHORTS          GUATEMALA                      >=0          328    190     87    103
12 months   ki1135781-COHORTS          GUATEMALA                      <-3          328      1      0      1
12 months   ki1135781-COHORTS          GUATEMALA                      [-3--2)      328     14      0     14
12 months   ki1135781-COHORTS          GUATEMALA                      [-2--1)      328     33      3     30
12 months   ki1135781-COHORTS          GUATEMALA                      [-1-0)       328     90     15     75
12 months   ki1135781-COHORTS          INDIA                          >=0         4698   1343   1172    171
12 months   ki1135781-COHORTS          INDIA                          <-3         4698    135     32    103
12 months   ki1135781-COHORTS          INDIA                          [-3--2)     4698    389    153    236
12 months   ki1135781-COHORTS          INDIA                          [-2--1)     4698   1104    582    522
12 months   ki1135781-COHORTS          INDIA                          [-1-0)      4698   1727   1187    540
12 months   ki1135781-COHORTS          PHILIPPINES                    >=0         2580   1121    867    254
12 months   ki1135781-COHORTS          PHILIPPINES                    <-3         2580     33      4     29
12 months   ki1135781-COHORTS          PHILIPPINES                    [-3--2)     2580    117     26     91
12 months   ki1135781-COHORTS          PHILIPPINES                    [-2--1)     2580    383    149    234
12 months   ki1135781-COHORTS          PHILIPPINES                    [-1-0)      2580    926    534    392
12 months   kiGH5241-JiVitA-3          BANGLADESH                     >=0         7052   1155    952    203
12 months   kiGH5241-JiVitA-3          BANGLADESH                     <-3         7052    617    124    493
12 months   kiGH5241-JiVitA-3          BANGLADESH                     [-3--2)     7052   1314    510    804
12 months   kiGH5241-JiVitA-3          BANGLADESH                     [-2--1)     7052   2234   1333    901
12 months   kiGH5241-JiVitA-3          BANGLADESH                     [-1-0)      7052   1732   1344    388
12 months   kiGH5241-JiVitA-4          BANGLADESH                     >=0         1058    331    279     52
12 months   kiGH5241-JiVitA-4          BANGLADESH                     <-3         1058     62     17     45
12 months   kiGH5241-JiVitA-4          BANGLADESH                     [-3--2)     1058    148     64     84
12 months   kiGH5241-JiVitA-4          BANGLADESH                     [-2--1)     1058    246    160     86
12 months   kiGH5241-JiVitA-4          BANGLADESH                     [-1-0)      1058    271    202     69
18 months   ki0047075b-MAL-ED          BANGLADESH                     >=0          215     38     30      8
18 months   ki0047075b-MAL-ED          BANGLADESH                     <-3          215      6      1      5
18 months   ki0047075b-MAL-ED          BANGLADESH                     [-3--2)      215     27      6     21
18 months   ki0047075b-MAL-ED          BANGLADESH                     [-2--1)      215     67     30     37
18 months   ki0047075b-MAL-ED          BANGLADESH                     [-1-0)       215     77     48     29
18 months   ki0047075b-MAL-ED          BRAZIL                         >=0          148     31     30      1
18 months   ki0047075b-MAL-ED          BRAZIL                         <-3          148      6      6      0
18 months   ki0047075b-MAL-ED          BRAZIL                         [-3--2)      148      8      7      1
18 months   ki0047075b-MAL-ED          BRAZIL                         [-2--1)      148     38     36      2
18 months   ki0047075b-MAL-ED          BRAZIL                         [-1-0)       148     65     62      3
18 months   ki0047075b-MAL-ED          INDIA                          >=0          184     32     28      4
18 months   ki0047075b-MAL-ED          INDIA                          <-3          184      6      0      6
18 months   ki0047075b-MAL-ED          INDIA                          [-3--2)      184     22      8     14
18 months   ki0047075b-MAL-ED          INDIA                          [-2--1)      184     61     30     31
18 months   ki0047075b-MAL-ED          INDIA                          [-1-0)       184     63     39     24
18 months   ki0047075b-MAL-ED          NEPAL                          >=0          167     44     44      0
18 months   ki0047075b-MAL-ED          NEPAL                          <-3          167      5      1      4
18 months   ki0047075b-MAL-ED          NEPAL                          [-3--2)      167     12      8      4
18 months   ki0047075b-MAL-ED          NEPAL                          [-2--1)      167     44     30     14
18 months   ki0047075b-MAL-ED          NEPAL                          [-1-0)       167     62     54      8
18 months   ki0047075b-MAL-ED          PERU                           >=0          211     32     23      9
18 months   ki0047075b-MAL-ED          PERU                           <-3          211      6      1      5
18 months   ki0047075b-MAL-ED          PERU                           [-3--2)      211     21      8     13
18 months   ki0047075b-MAL-ED          PERU                           [-2--1)      211     72     33     39
18 months   ki0047075b-MAL-ED          PERU                           [-1-0)       211     80     53     27
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=0          204     45     35     10
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <-3          204      1      1      0
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [-3--2)      204     19      8     11
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [-2--1)      204     55     35     20
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [-1-0)       204     84     57     27
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=0          107     19     12      7
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <-3          107      5      0      5
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-3--2)      107     10      0     10
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-2--1)      107     29      5     24
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-1-0)       107     44     15     29
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=0           92     15      6      9
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          <-3           92      3      0      3
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          [-3--2)       92     13      5      8
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          [-2--1)       92     22      9     13
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          [-1-0)        92     39     15     24
18 months   ki1000108-IRC              INDIA                          >=0          384    142    108     34
18 months   ki1000108-IRC              INDIA                          <-3          384     15     10      5
18 months   ki1000108-IRC              INDIA                          [-3--2)      384     27      8     19
18 months   ki1000108-IRC              INDIA                          [-2--1)      384     65     31     34
18 months   ki1000108-IRC              INDIA                          [-1-0)       384    135     89     46
18 months   ki1000109-EE               PAKISTAN                       >=0            2      1      0      1
18 months   ki1000109-EE               PAKISTAN                       <-3            2      0      0      0
18 months   ki1000109-EE               PAKISTAN                       [-3--2)        2      1      0      1
18 months   ki1000109-EE               PAKISTAN                       [-2--1)        2      0      0      0
18 months   ki1000109-EE               PAKISTAN                       [-1-0)         2      0      0      0
18 months   ki1000109-ResPak           PAKISTAN                       >=0            1      0      0      0
18 months   ki1000109-ResPak           PAKISTAN                       <-3            1      0      0      0
18 months   ki1000109-ResPak           PAKISTAN                       [-3--2)        1      1      1      0
18 months   ki1000109-ResPak           PAKISTAN                       [-2--1)        1      0      0      0
18 months   ki1000109-ResPak           PAKISTAN                       [-1-0)         1      0      0      0
18 months   ki1000304b-SAS-CompFeed    INDIA                          >=0          392     65     47     18
18 months   ki1000304b-SAS-CompFeed    INDIA                          <-3          392     17      3     14
18 months   ki1000304b-SAS-CompFeed    INDIA                          [-3--2)      392     60     15     45
18 months   ki1000304b-SAS-CompFeed    INDIA                          [-2--1)      392    120     45     75
18 months   ki1000304b-SAS-CompFeed    INDIA                          [-1-0)       392    130     77     53
18 months   ki1017093-NIH-Birth        BANGLADESH                     >=0           17      3      2      1
18 months   ki1017093-NIH-Birth        BANGLADESH                     <-3           17      0      0      0
18 months   ki1017093-NIH-Birth        BANGLADESH                     [-3--2)       17      1      0      1
18 months   ki1017093-NIH-Birth        BANGLADESH                     [-2--1)       17      8      2      6
18 months   ki1017093-NIH-Birth        BANGLADESH                     [-1-0)        17      5      0      5
18 months   ki1017093b-PROVIDE         BANGLADESH                     >=0          552    177    144     33
18 months   ki1017093b-PROVIDE         BANGLADESH                     <-3          552      1      0      1
18 months   ki1017093b-PROVIDE         BANGLADESH                     [-3--2)      552     20      5     15
18 months   ki1017093b-PROVIDE         BANGLADESH                     [-2--1)      552    134     53     81
18 months   ki1017093b-PROVIDE         BANGLADESH                     [-1-0)       552    220    144     76
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=0          634    189    173     16
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     <-3          634      6      1      5
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     [-3--2)      634     42     19     23
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     [-2--1)      634    159     87     72
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     [-1-0)       634    238    163     75
18 months   ki1101329-Keneba           GAMBIA                         >=0         1190    655    519    136
18 months   ki1101329-Keneba           GAMBIA                         <-3         1190     22      9     13
18 months   ki1101329-Keneba           GAMBIA                         [-3--2)     1190     36     11     25
18 months   ki1101329-Keneba           GAMBIA                         [-2--1)     1190    117     54     63
18 months   ki1101329-Keneba           GAMBIA                         [-1-0)      1190    360    210    150
18 months   ki1114097-CMIN             BRAZIL                         >=0          111     59     47     12
18 months   ki1114097-CMIN             BRAZIL                         <-3          111      3      2      1
18 months   ki1114097-CMIN             BRAZIL                         [-3--2)      111      2      1      1
18 months   ki1114097-CMIN             BRAZIL                         [-2--1)      111     11      7      4
18 months   ki1114097-CMIN             BRAZIL                         [-1-0)       111     36     26     10
18 months   ki1114097-CMIN             PERU                           >=0            8      8      7      1
18 months   ki1114097-CMIN             PERU                           <-3            8      0      0      0
18 months   ki1114097-CMIN             PERU                           [-3--2)        8      0      0      0
18 months   ki1114097-CMIN             PERU                           [-2--1)        8      0      0      0
18 months   ki1114097-CMIN             PERU                           [-1-0)         8      0      0      0
18 months   ki1114097-CONTENT          PERU                           >=0            2      1      1      0
18 months   ki1114097-CONTENT          PERU                           <-3            2      0      0      0
18 months   ki1114097-CONTENT          PERU                           [-3--2)        2      0      0      0
18 months   ki1114097-CONTENT          PERU                           [-2--1)        2      1      1      0
18 months   ki1114097-CONTENT          PERU                           [-1-0)         2      0      0      0
18 months   ki1119695-PROBIT           BELARUS                        >=0          764    695    631     64
18 months   ki1119695-PROBIT           BELARUS                        <-3          764      1      1      0
18 months   ki1119695-PROBIT           BELARUS                        [-3--2)      764      3      1      2
18 months   ki1119695-PROBIT           BELARUS                        [-2--1)      764      5      5      0
18 months   ki1119695-PROBIT           BELARUS                        [-1-0)       764     60     47     13
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=0         1683    388    239    149
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       <-3         1683     85     25     60
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)     1683    173     76     97
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)     1683    429    198    231
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)      1683    608    346    262
18 months   ki1135781-COHORTS          GUATEMALA                      >=0          257    143     29    114
18 months   ki1135781-COHORTS          GUATEMALA                      <-3          257      1      0      1
18 months   ki1135781-COHORTS          GUATEMALA                      [-3--2)      257     11      0     11
18 months   ki1135781-COHORTS          GUATEMALA                      [-2--1)      257     27      1     26
18 months   ki1135781-COHORTS          GUATEMALA                      [-1-0)       257     75      6     69
18 months   ki1135781-COHORTS          PHILIPPINES                    >=0         2489   1089    616    473
18 months   ki1135781-COHORTS          PHILIPPINES                    <-3         2489     32      2     30
18 months   ki1135781-COHORTS          PHILIPPINES                    [-3--2)     2489    108     12     96
18 months   ki1135781-COHORTS          PHILIPPINES                    [-2--1)     2489    362     89    273
18 months   ki1135781-COHORTS          PHILIPPINES                    [-1-0)      2489    898    307    591
18 months   kiGH5241-JiVitA-4          BANGLADESH                     >=0         1035    321    235     86
18 months   kiGH5241-JiVitA-4          BANGLADESH                     <-3         1035     60     14     46
18 months   kiGH5241-JiVitA-4          BANGLADESH                     [-3--2)     1035    141     49     92
18 months   kiGH5241-JiVitA-4          BANGLADESH                     [-2--1)     1035    248    120    128
18 months   kiGH5241-JiVitA-4          BANGLADESH                     [-1-0)      1035    265    171     94
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=0          206     38     31      7
24 months   ki0047075b-MAL-ED          BANGLADESH                     <-3          206      6      1      5
24 months   ki0047075b-MAL-ED          BANGLADESH                     [-3--2)      206     26      7     19
24 months   ki0047075b-MAL-ED          BANGLADESH                     [-2--1)      206     62     28     34
24 months   ki0047075b-MAL-ED          BANGLADESH                     [-1-0)       206     74     46     28
24 months   ki0047075b-MAL-ED          BRAZIL                         >=0          139     26     26      0
24 months   ki0047075b-MAL-ED          BRAZIL                         <-3          139      5      5      0
24 months   ki0047075b-MAL-ED          BRAZIL                         [-3--2)      139      8      7      1
24 months   ki0047075b-MAL-ED          BRAZIL                         [-2--1)      139     36     33      3
24 months   ki0047075b-MAL-ED          BRAZIL                         [-1-0)       139     64     62      2
24 months   ki0047075b-MAL-ED          INDIA                          >=0          183     32     28      4
24 months   ki0047075b-MAL-ED          INDIA                          <-3          183      6      0      6
24 months   ki0047075b-MAL-ED          INDIA                          [-3--2)      183     22     10     12
24 months   ki0047075b-MAL-ED          INDIA                          [-2--1)      183     60     27     33
24 months   ki0047075b-MAL-ED          INDIA                          [-1-0)       183     63     45     18
24 months   ki0047075b-MAL-ED          NEPAL                          >=0          165     42     41      1
24 months   ki0047075b-MAL-ED          NEPAL                          <-3          165      5      0      5
24 months   ki0047075b-MAL-ED          NEPAL                          [-3--2)      165     12      7      5
24 months   ki0047075b-MAL-ED          NEPAL                          [-2--1)      165     44     30     14
24 months   ki0047075b-MAL-ED          NEPAL                          [-1-0)       165     62     51     11
24 months   ki0047075b-MAL-ED          PERU                           >=0          190     30     23      7
24 months   ki0047075b-MAL-ED          PERU                           <-3          190      3      0      3
24 months   ki0047075b-MAL-ED          PERU                           [-3--2)      190     21      8     13
24 months   ki0047075b-MAL-ED          PERU                           [-2--1)      190     66     37     29
24 months   ki0047075b-MAL-ED          PERU                           [-1-0)       190     70     53     17
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=0          201     44     31     13
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <-3          201      1      1      0
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [-3--2)      201     18     10      8
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [-2--1)      201     55     30     25
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [-1-0)       201     83     57     26
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=0          101     20     14      6
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <-3          101      5      0      5
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-3--2)      101      9      1      8
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-2--1)      101     28      8     20
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-1-0)       101     39     16     23
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=0           93     15      5     10
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <-3           93      3      1      2
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [-3--2)       93     13      4      9
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [-2--1)       93     22      7     15
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [-1-0)        93     40     10     30
24 months   ki1000108-IRC              INDIA                          >=0          387    143     96     47
24 months   ki1000108-IRC              INDIA                          <-3          387     15      5     10
24 months   ki1000108-IRC              INDIA                          [-3--2)      387     27     13     14
24 months   ki1000108-IRC              INDIA                          [-2--1)      387     65     32     33
24 months   ki1000108-IRC              INDIA                          [-1-0)       387    137     84     53
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=0           16      3      2      1
24 months   ki1017093-NIH-Birth        BANGLADESH                     <-3           16      0      0      0
24 months   ki1017093-NIH-Birth        BANGLADESH                     [-3--2)       16      1      0      1
24 months   ki1017093-NIH-Birth        BANGLADESH                     [-2--1)       16      7      1      6
24 months   ki1017093-NIH-Birth        BANGLADESH                     [-1-0)        16      5      0      5
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=0          577    185    159     26
24 months   ki1017093b-PROVIDE         BANGLADESH                     <-3          577      1      0      1
24 months   ki1017093b-PROVIDE         BANGLADESH                     [-3--2)      577     20     10     10
24 months   ki1017093b-PROVIDE         BANGLADESH                     [-2--1)      577    142     60     82
24 months   ki1017093b-PROVIDE         BANGLADESH                     [-1-0)       577    229    158     71
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=0          514    160    143     17
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <-3          514      6      1      5
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [-3--2)      514     31     17     14
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [-2--1)      514    131     85     46
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [-1-0)       514    186    136     50
24 months   ki1101329-Keneba           GAMBIA                         >=0         1057    571    439    132
24 months   ki1101329-Keneba           GAMBIA                         <-3         1057     18     12      6
24 months   ki1101329-Keneba           GAMBIA                         [-3--2)     1057     37     19     18
24 months   ki1101329-Keneba           GAMBIA                         [-2--1)     1057    107     52     55
24 months   ki1101329-Keneba           GAMBIA                         [-1-0)      1057    324    194    130
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
24 months   ki1119695-PROBIT           BELARUS                        >=0         1618   1507   1363    144
24 months   ki1119695-PROBIT           BELARUS                        <-3         1618      2      2      0
24 months   ki1119695-PROBIT           BELARUS                        [-3--2)     1618      4      3      1
24 months   ki1119695-PROBIT           BELARUS                        [-2--1)     1618      9      8      1
24 months   ki1119695-PROBIT           BELARUS                        [-1-0)      1618     96     80     16
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=0          446     69     38     31
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <-3          446     28      2     26
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)      446     66     16     50
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)      446    146     39    107
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)       446    137     60     77
24 months   ki1135781-COHORTS          GUATEMALA                      >=0          262    140     32    108
24 months   ki1135781-COHORTS          GUATEMALA                      <-3          262      1      0      1
24 months   ki1135781-COHORTS          GUATEMALA                      [-3--2)      262     11      0     11
24 months   ki1135781-COHORTS          GUATEMALA                      [-2--1)      262     29      1     28
24 months   ki1135781-COHORTS          GUATEMALA                      [-1-0)       262     81      9     72
24 months   ki1135781-COHORTS          INDIA                          >=0         4761   1364   1032    332
24 months   ki1135781-COHORTS          INDIA                          <-3         4761    137     30    107
24 months   ki1135781-COHORTS          INDIA                          [-3--2)     4761    396    117    279
24 months   ki1135781-COHORTS          INDIA                          [-2--1)     4761   1104    421    683
24 months   ki1135781-COHORTS          INDIA                          [-1-0)      4761   1760    958    802
24 months   ki1135781-COHORTS          PHILIPPINES                    >=0         2442   1058    563    495
24 months   ki1135781-COHORTS          PHILIPPINES                    <-3         2442     30      2     28
24 months   ki1135781-COHORTS          PHILIPPINES                    [-3--2)     2442    105     12     93
24 months   ki1135781-COHORTS          PHILIPPINES                    [-2--1)     2442    358     80    278
24 months   ki1135781-COHORTS          PHILIPPINES                    [-1-0)      2442    891    278    613
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=0         4192    696    497    199
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <-3         4192    380     79    301
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [-3--2)     4192    797    273    524
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [-2--1)     4192   1295    626    669
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [-1-0)      4192   1024    700    324
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=0         1049    340    263     77
24 months   kiGH5241-JiVitA-4          BANGLADESH                     <-3         1049     59     20     39
24 months   kiGH5241-JiVitA-4          BANGLADESH                     [-3--2)     1049    141     51     90
24 months   kiGH5241-JiVitA-4          BANGLADESH                     [-2--1)     1049    242    131    111
24 months   kiGH5241-JiVitA-4          BANGLADESH                     [-1-0)      1049    267    184     83


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
* agecat: 12 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 12 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 12 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 12 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 12 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 12 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 12 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 12 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 12 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 12 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 12 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 12 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
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
* agecat: 18 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 18 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 18 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 18 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 18 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 18 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 18 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 18 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 18 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 18 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 18 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 18 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 18 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
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
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
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
* agecat: 3 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 3 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 3 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 3 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 3 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 3 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 3 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 3 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 3 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 3 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 3 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 3 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
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
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
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
* agecat: 9 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 9 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 9 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 9 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 9 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 9 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 9 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 9 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 9 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 9 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 9 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 9 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 9 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 9 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
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
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: Birth, studyid: ki1114097-CMIN, country: PERU
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
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
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: Birth, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: Birth, studyid: ki1114097-CMIN, country: PERU
* agecat: Birth, studyid: ki1114097-CONTENT, country: PERU
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 3 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 3 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 3 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 3 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 3 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 3 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 3 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 3 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 9 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 9 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 9 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 9 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 9 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 9 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 9 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 9 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 9 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 9 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 9 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 9 months, studyid: ki1119695-PROBIT, country: BELARUS
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
* agecat: 12 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 12 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 12 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 12 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 12 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 12 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 12 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 18 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 18 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 18 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 18 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 18 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 18 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 18 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 18 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 18 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 18 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 18 months, studyid: ki1119695-PROBIT, country: BELARUS
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
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots

```
## Warning: Removed 50 rows containing missing values (geom_errorbar).
```

![](/tmp/c146e7a3-5caf-42dd-8965-4f986b3c69fc/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->


```
## Warning: Removed 74 rows containing missing values (geom_errorbar).
```

![](/tmp/c146e7a3-5caf-42dd-8965-4f986b3c69fc/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


```
## Warning: Removed 10 rows containing missing values (geom_errorbar).
```

![](/tmp/c146e7a3-5caf-42dd-8965-4f986b3c69fc/REPORT_files/figure-html/plot_paf-1.png)<!-- -->


```
## Warning: Removed 10 rows containing missing values (geom_errorbar).
```

![](/tmp/c146e7a3-5caf-42dd-8965-4f986b3c69fc/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid              country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki1000108-IRC        INDIA         >=0                  NA                0.0851064   0.0389885   0.1312243
3 months    ki1000108-IRC        INDIA         <-3                  NA                0.6875000   0.4600876   0.9149124
3 months    ki1000108-IRC        INDIA         [-3--2)              NA                0.5185185   0.3298051   0.7072320
3 months    ki1000108-IRC        INDIA         [-2--1)              NA                0.3076923   0.1953446   0.4200400
3 months    ki1000108-IRC        INDIA         [-1-0)               NA                0.2205882   0.1508103   0.2903662
3 months    ki1101329-Keneba     GAMBIA        >=0                  NA                0.0445026   0.0298754   0.0591298
3 months    ki1101329-Keneba     GAMBIA        <-3                  NA                0.3461538   0.1632230   0.5290847
3 months    ki1101329-Keneba     GAMBIA        [-3--2)              NA                0.5000000   0.3554586   0.6445414
3 months    ki1101329-Keneba     GAMBIA        [-2--1)              NA                0.3489933   0.2724320   0.4255546
3 months    ki1101329-Keneba     GAMBIA        [-1-0)               NA                0.1105991   0.0810815   0.1401167
3 months    ki1126311-ZVITAMBO   ZIMBABWE      >=0                  NA                0.0782178   0.0686565   0.0877791
3 months    ki1126311-ZVITAMBO   ZIMBABWE      <-3                  NA                0.6321429   0.5756569   0.6886288
3 months    ki1126311-ZVITAMBO   ZIMBABWE      [-3--2)              NA                0.3890675   0.3507510   0.4273840
3 months    ki1126311-ZVITAMBO   ZIMBABWE      [-2--1)              NA                0.2550415   0.2342343   0.2758488
3 months    ki1126311-ZVITAMBO   ZIMBABWE      [-1-0)               NA                0.1538910   0.1418162   0.1659658
3 months    ki1135781-COHORTS    INDIA         >=0                  NA                0.0171745   0.0111804   0.0231686
3 months    ki1135781-COHORTS    INDIA         <-3                  NA                0.8426396   0.7917865   0.8934927
3 months    ki1135781-COHORTS    INDIA         [-3--2)              NA                0.5839286   0.5431012   0.6247559
3 months    ki1135781-COHORTS    INDIA         [-2--1)              NA                0.1968607   0.1769286   0.2167928
3 months    ki1135781-COHORTS    INDIA         [-1-0)               NA                0.0547599   0.0456073   0.0639125
3 months    ki1135781-COHORTS    PHILIPPINES   >=0                  NA                0.0304243   0.0208976   0.0399511
3 months    ki1135781-COHORTS    PHILIPPINES   <-3                  NA                0.8500000   0.7393252   0.9606748
3 months    ki1135781-COHORTS    PHILIPPINES   [-3--2)              NA                0.5238095   0.4365896   0.6110294
3 months    ki1135781-COHORTS    PHILIPPINES   [-2--1)              NA                0.2776471   0.2350627   0.3202315
3 months    ki1135781-COHORTS    PHILIPPINES   [-1-0)               NA                0.0952381   0.0772995   0.1131767
3 months    kiGH5241-JiVitA-3    BANGLADESH    >=0                  NA                0.0979813          NA          NA
3 months    kiGH5241-JiVitA-3    BANGLADESH    <-3                  NA                0.8760036          NA          NA
3 months    kiGH5241-JiVitA-3    BANGLADESH    [-3--2)              NA                0.5117391          NA          NA
3 months    kiGH5241-JiVitA-3    BANGLADESH    [-2--1)              NA                0.2029520          NA          NA
3 months    kiGH5241-JiVitA-3    BANGLADESH    [-1-0)               NA                0.0693560          NA          NA
3 months    kiGH5241-JiVitA-4    BANGLADESH    >=0                  NA                0.1013986          NA          NA
3 months    kiGH5241-JiVitA-4    BANGLADESH    <-3                  NA                0.7441860          NA          NA
3 months    kiGH5241-JiVitA-4    BANGLADESH    [-3--2)              NA                0.5288462          NA          NA
3 months    kiGH5241-JiVitA-4    BANGLADESH    [-2--1)              NA                0.2000000          NA          NA
3 months    kiGH5241-JiVitA-4    BANGLADESH    [-1-0)               NA                0.1388889          NA          NA
6 months    ki1000108-IRC        INDIA         >=0                  NA                0.1328671   0.0771620   0.1885722
6 months    ki1000108-IRC        INDIA         <-3                  NA                0.5714286   0.3118673   0.8309899
6 months    ki1000108-IRC        INDIA         [-3--2)              NA                0.5185185   0.3298057   0.7072313
6 months    ki1000108-IRC        INDIA         [-2--1)              NA                0.3538462   0.2374523   0.4702400
6 months    ki1000108-IRC        INDIA         [-1-0)               NA                0.2116788   0.1431866   0.2801711
6 months    ki1101329-Keneba     GAMBIA        >=0                  NA                0.0743802   0.0552866   0.0934737
6 months    ki1101329-Keneba     GAMBIA        <-3                  NA                0.2173913   0.0487593   0.3860233
6 months    ki1101329-Keneba     GAMBIA        [-3--2)              NA                0.3809524   0.2340316   0.5278732
6 months    ki1101329-Keneba     GAMBIA        [-2--1)              NA                0.2538462   0.1790054   0.3286869
6 months    ki1101329-Keneba     GAMBIA        [-1-0)               NA                0.1730769   0.1367092   0.2094446
6 months    ki1126311-ZVITAMBO   ZIMBABWE      >=0                  NA                0.0848507   0.0744276   0.0952738
6 months    ki1126311-ZVITAMBO   ZIMBABWE      <-3                  NA                0.5819672   0.5200753   0.6438592
6 months    ki1126311-ZVITAMBO   ZIMBABWE      [-3--2)              NA                0.3345521   0.2950091   0.3740951
6 months    ki1126311-ZVITAMBO   ZIMBABWE      [-2--1)              NA                0.2240803   0.2029422   0.2452183
6 months    ki1126311-ZVITAMBO   ZIMBABWE      [-1-0)               NA                0.1463181   0.1339497   0.1586866
6 months    ki1135781-COHORTS    INDIA         >=0                  NA                0.0410642   0.0317099   0.0504185
6 months    ki1135781-COHORTS    INDIA         <-3                  NA                0.6839080   0.6148182   0.7529979
6 months    ki1135781-COHORTS    INDIA         [-3--2)              NA                0.5284091   0.4858263   0.5709919
6 months    ki1135781-COHORTS    INDIA         [-2--1)              NA                0.2743056   0.2512595   0.2973516
6 months    ki1135781-COHORTS    INDIA         [-1-0)               NA                0.1232877   0.1097411   0.1368342
6 months    kiGH5241-JiVitA-3    BANGLADESH    >=0                  NA                0.0878477          NA          NA
6 months    kiGH5241-JiVitA-3    BANGLADESH    <-3                  NA                0.7685950          NA          NA
6 months    kiGH5241-JiVitA-3    BANGLADESH    [-3--2)              NA                0.4690207          NA          NA
6 months    kiGH5241-JiVitA-3    BANGLADESH    [-2--1)              NA                0.2168348          NA          NA
6 months    kiGH5241-JiVitA-3    BANGLADESH    [-1-0)               NA                0.0927992          NA          NA
6 months    kiGH5241-JiVitA-4    BANGLADESH    >=0                  NA                0.0864553          NA          NA
6 months    kiGH5241-JiVitA-4    BANGLADESH    <-3                  NA                0.7800000          NA          NA
6 months    kiGH5241-JiVitA-4    BANGLADESH    [-3--2)              NA                0.4736842          NA          NA
6 months    kiGH5241-JiVitA-4    BANGLADESH    [-2--1)              NA                0.2833333          NA          NA
6 months    kiGH5241-JiVitA-4    BANGLADESH    [-1-0)               NA                0.1476015          NA          NA
9 months    ki1000108-IRC        INDIA         >=0                  NA                0.1608392   0.1005469   0.2211315
9 months    ki1000108-IRC        INDIA         <-3                  NA                0.5000000   0.2377489   0.7622511
9 months    ki1000108-IRC        INDIA         [-3--2)              NA                0.5185185   0.3298057   0.7072313
9 months    ki1000108-IRC        INDIA         [-2--1)              NA                0.3538462   0.2374523   0.4702400
9 months    ki1000108-IRC        INDIA         [-1-0)               NA                0.2700730   0.1956287   0.3445173
9 months    ki1101329-Keneba     GAMBIA        >=0                  NA                0.0980663   0.0763947   0.1197379
9 months    ki1101329-Keneba     GAMBIA        <-3                  NA                0.3076923   0.1302187   0.4851660
9 months    ki1101329-Keneba     GAMBIA        [-3--2)              NA                0.3902439   0.2408727   0.5396151
9 months    ki1101329-Keneba     GAMBIA        [-2--1)              NA                0.3656716   0.2840955   0.4472477
9 months    ki1101329-Keneba     GAMBIA        [-1-0)               NA                0.2329114   0.1912118   0.2746110
9 months    ki1126311-ZVITAMBO   ZIMBABWE      >=0                  NA                0.1191261   0.1062350   0.1320173
9 months    ki1126311-ZVITAMBO   ZIMBABWE      <-3                  NA                0.5193133   0.4551562   0.5834704
9 months    ki1126311-ZVITAMBO   ZIMBABWE      [-3--2)              NA                0.3391473   0.2982967   0.3799979
9 months    ki1126311-ZVITAMBO   ZIMBABWE      [-2--1)              NA                0.2592078   0.2365656   0.2818500
9 months    ki1126311-ZVITAMBO   ZIMBABWE      [-1-0)               NA                0.1827774   0.1688014   0.1967534
9 months    ki1135781-COHORTS    INDIA         >=0                  NA                0.0761523   0.0627148   0.0895899
9 months    ki1135781-COHORTS    INDIA         <-3                  NA                0.6451613   0.5698304   0.7204922
9 months    ki1135781-COHORTS    INDIA         [-3--2)              NA                0.5756208   0.5295916   0.6216499
9 months    ki1135781-COHORTS    INDIA         [-2--1)              NA                0.3799197   0.3529563   0.4068831
9 months    ki1135781-COHORTS    INDIA         [-1-0)               NA                0.2191851   0.2007698   0.2376005
9 months    ki1135781-COHORTS    PHILIPPINES   >=0                  NA                0.1321398   0.1127568   0.1515228
9 months    ki1135781-COHORTS    PHILIPPINES   <-3                  NA                0.8333333   0.7115716   0.9550951
9 months    ki1135781-COHORTS    PHILIPPINES   [-3--2)              NA                0.6694215   0.5855870   0.7532560
9 months    ki1135781-COHORTS    PHILIPPINES   [-2--1)              NA                0.4765432   0.4278921   0.5251943
9 months    ki1135781-COHORTS    PHILIPPINES   [-1-0)               NA                0.2948454   0.2661454   0.3235454
9 months    kiGH5241-JiVitA-4    BANGLADESH    >=0                  NA                0.1360947          NA          NA
9 months    kiGH5241-JiVitA-4    BANGLADESH    <-3                  NA                0.6181818          NA          NA
9 months    kiGH5241-JiVitA-4    BANGLADESH    [-3--2)              NA                0.5517241          NA          NA
9 months    kiGH5241-JiVitA-4    BANGLADESH    [-2--1)              NA                0.2943548          NA          NA
9 months    kiGH5241-JiVitA-4    BANGLADESH    [-1-0)               NA                0.1808118          NA          NA
12 months   ki1000108-IRC        INDIA         >=0                  NA                0.2042254   0.1378329   0.2706178
12 months   ki1000108-IRC        INDIA         <-3                  NA                0.4000000   0.1517594   0.6482406
12 months   ki1000108-IRC        INDIA         [-3--2)              NA                0.5000000   0.3075596   0.6924404
12 months   ki1000108-IRC        INDIA         [-2--1)              NA                0.3846154   0.2661905   0.5030402
12 months   ki1000108-IRC        INDIA         [-1-0)               NA                0.2846715   0.2090096   0.3603334
12 months   ki1101329-Keneba     GAMBIA        >=0                  NA                0.1483680   0.1215212   0.1752147
12 months   ki1101329-Keneba     GAMBIA        <-3                  NA                0.4400000   0.2453405   0.6346595
12 months   ki1101329-Keneba     GAMBIA        [-3--2)              NA                0.5952381   0.4467315   0.7437447
12 months   ki1101329-Keneba     GAMBIA        [-2--1)              NA                0.4274194   0.3403110   0.5145277
12 months   ki1101329-Keneba     GAMBIA        [-1-0)               NA                0.3102493   0.2625103   0.3579883
12 months   ki1126311-ZVITAMBO   ZIMBABWE      >=0                  NA                0.1503650   0.1349101   0.1658198
12 months   ki1126311-ZVITAMBO   ZIMBABWE      <-3                  NA                0.5560976   0.4880797   0.6241155
12 months   ki1126311-ZVITAMBO   ZIMBABWE      [-3--2)              NA                0.3987474   0.3548953   0.4425995
12 months   ki1126311-ZVITAMBO   ZIMBABWE      [-2--1)              NA                0.3070444   0.2820258   0.3320630
12 months   ki1126311-ZVITAMBO   ZIMBABWE      [-1-0)               NA                0.2349304   0.2185955   0.2512654
12 months   ki1135781-COHORTS    INDIA         >=0                  NA                0.1273269   0.1094973   0.1451565
12 months   ki1135781-COHORTS    INDIA         <-3                  NA                0.7629630   0.6912187   0.8347072
12 months   ki1135781-COHORTS    INDIA         [-3--2)              NA                0.6066838   0.5581358   0.6552318
12 months   ki1135781-COHORTS    INDIA         [-2--1)              NA                0.4728261   0.4433726   0.5022796
12 months   ki1135781-COHORTS    INDIA         [-1-0)               NA                0.3126809   0.2908145   0.3345474
12 months   kiGH5241-JiVitA-3    BANGLADESH    >=0                  NA                0.1757576          NA          NA
12 months   kiGH5241-JiVitA-3    BANGLADESH    <-3                  NA                0.7990276          NA          NA
12 months   kiGH5241-JiVitA-3    BANGLADESH    [-3--2)              NA                0.6118721          NA          NA
12 months   kiGH5241-JiVitA-3    BANGLADESH    [-2--1)              NA                0.4033124          NA          NA
12 months   kiGH5241-JiVitA-3    BANGLADESH    [-1-0)               NA                0.2240185          NA          NA
12 months   kiGH5241-JiVitA-4    BANGLADESH    >=0                  NA                0.1570997          NA          NA
12 months   kiGH5241-JiVitA-4    BANGLADESH    <-3                  NA                0.7258065          NA          NA
12 months   kiGH5241-JiVitA-4    BANGLADESH    [-3--2)              NA                0.5675676          NA          NA
12 months   kiGH5241-JiVitA-4    BANGLADESH    [-2--1)              NA                0.3495935          NA          NA
12 months   kiGH5241-JiVitA-4    BANGLADESH    [-1-0)               NA                0.2546125          NA          NA
18 months   ki1000108-IRC        INDIA         >=0                  NA                0.2394366   0.1691564   0.3097168
18 months   ki1000108-IRC        INDIA         <-3                  NA                0.3333333   0.0944629   0.5722038
18 months   ki1000108-IRC        INDIA         [-3--2)              NA                0.7037037   0.5312429   0.8761645
18 months   ki1000108-IRC        INDIA         [-2--1)              NA                0.5230769   0.4014962   0.6446576
18 months   ki1000108-IRC        INDIA         [-1-0)               NA                0.3407407   0.2606859   0.4207956
18 months   ki1101329-Keneba     GAMBIA        >=0                  NA                0.2076336   0.1765578   0.2387094
18 months   ki1101329-Keneba     GAMBIA        <-3                  NA                0.5909091   0.3853723   0.7964459
18 months   ki1101329-Keneba     GAMBIA        [-3--2)              NA                0.6944444   0.5439075   0.8449814
18 months   ki1101329-Keneba     GAMBIA        [-2--1)              NA                0.5384615   0.4480926   0.6288304
18 months   ki1101329-Keneba     GAMBIA        [-1-0)               NA                0.4166667   0.3657181   0.4676153
18 months   ki1126311-ZVITAMBO   ZIMBABWE      >=0                  NA                0.3840206   0.3356121   0.4324291
18 months   ki1126311-ZVITAMBO   ZIMBABWE      <-3                  NA                0.7058824   0.6089889   0.8027758
18 months   ki1126311-ZVITAMBO   ZIMBABWE      [-3--2)              NA                0.5606936   0.4867160   0.6346713
18 months   ki1126311-ZVITAMBO   ZIMBABWE      [-2--1)              NA                0.5384615   0.4912737   0.5856493
18 months   ki1126311-ZVITAMBO   ZIMBABWE      [-1-0)               NA                0.4309211   0.3915470   0.4702951
18 months   kiGH5241-JiVitA-4    BANGLADESH    >=0                  NA                0.2679128          NA          NA
18 months   kiGH5241-JiVitA-4    BANGLADESH    <-3                  NA                0.7666667          NA          NA
18 months   kiGH5241-JiVitA-4    BANGLADESH    [-3--2)              NA                0.6524823          NA          NA
18 months   kiGH5241-JiVitA-4    BANGLADESH    [-2--1)              NA                0.5161290          NA          NA
18 months   kiGH5241-JiVitA-4    BANGLADESH    [-1-0)               NA                0.3547170          NA          NA
24 months   ki1000108-IRC        INDIA         >=0                  NA                0.3286713   0.2515827   0.4057600
24 months   ki1000108-IRC        INDIA         <-3                  NA                0.6666667   0.4277986   0.9055347
24 months   ki1000108-IRC        INDIA         [-3--2)              NA                0.5185185   0.3298063   0.7072307
24 months   ki1000108-IRC        INDIA         [-2--1)              NA                0.5076923   0.3859976   0.6293871
24 months   ki1000108-IRC        INDIA         [-1-0)               NA                0.3868613   0.3052018   0.4685208
24 months   ki1101329-Keneba     GAMBIA        >=0                  NA                0.2311734   0.1965780   0.2657688
24 months   ki1101329-Keneba     GAMBIA        <-3                  NA                0.3333333   0.1154565   0.5512102
24 months   ki1101329-Keneba     GAMBIA        [-3--2)              NA                0.4864865   0.3253611   0.6476119
24 months   ki1101329-Keneba     GAMBIA        [-2--1)              NA                0.5140187   0.4192727   0.6087647
24 months   ki1101329-Keneba     GAMBIA        [-1-0)               NA                0.4012346   0.3478386   0.4546306
24 months   ki1135781-COHORTS    INDIA         >=0                  NA                0.2434018   0.2206256   0.2661779
24 months   ki1135781-COHORTS    INDIA         <-3                  NA                0.7810219   0.7117646   0.8502792
24 months   ki1135781-COHORTS    INDIA         [-3--2)              NA                0.7045455   0.6596041   0.7494868
24 months   ki1135781-COHORTS    INDIA         [-2--1)              NA                0.6186594   0.5900050   0.6473138
24 months   ki1135781-COHORTS    INDIA         [-1-0)               NA                0.4556818   0.4324119   0.4789517
24 months   kiGH5241-JiVitA-3    BANGLADESH    >=0                  NA                0.2859195          NA          NA
24 months   kiGH5241-JiVitA-3    BANGLADESH    <-3                  NA                0.7921053          NA          NA
24 months   kiGH5241-JiVitA-3    BANGLADESH    [-3--2)              NA                0.6574655          NA          NA
24 months   kiGH5241-JiVitA-3    BANGLADESH    [-2--1)              NA                0.5166023          NA          NA
24 months   kiGH5241-JiVitA-3    BANGLADESH    [-1-0)               NA                0.3164063          NA          NA
24 months   kiGH5241-JiVitA-4    BANGLADESH    >=0                  NA                0.2264706          NA          NA
24 months   kiGH5241-JiVitA-4    BANGLADESH    <-3                  NA                0.6610169          NA          NA
24 months   kiGH5241-JiVitA-4    BANGLADESH    [-3--2)              NA                0.6382979          NA          NA
24 months   kiGH5241-JiVitA-4    BANGLADESH    [-2--1)              NA                0.4586777          NA          NA
24 months   kiGH5241-JiVitA-4    BANGLADESH    [-1-0)               NA                0.3108614          NA          NA


### Parameter: E(Y)


agecat      studyid              country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki1000108-IRC        INDIA         NA                   NA                0.2259740   0.1841439   0.2678042
3 months    ki1101329-Keneba     GAMBIA        NA                   NA                0.1169838   0.1002553   0.1337123
3 months    ki1126311-ZVITAMBO   ZIMBABWE      NA                   NA                0.1783622   0.1704743   0.1862502
3 months    ki1135781-COHORTS    INDIA         NA                   NA                0.1477185   0.1390687   0.1563683
3 months    ki1135781-COHORTS    PHILIPPINES   NA                   NA                0.1233879   0.1113515   0.1354244
3 months    kiGH5241-JiVitA-3    BANGLADESH    NA                   NA                0.2753479          NA          NA
3 months    kiGH5241-JiVitA-4    BANGLADESH    NA                   NA                0.2191943          NA          NA
6 months    ki1000108-IRC        INDIA         NA                   NA                0.2409326   0.1982152   0.2836501
6 months    ki1101329-Keneba     GAMBIA        NA                   NA                0.1346298   0.1163270   0.1529325
6 months    ki1126311-ZVITAMBO   ZIMBABWE      NA                   NA                0.1655037   0.1574443   0.1735632
6 months    ki1135781-COHORTS    INDIA         NA                   NA                0.1863384   0.1765934   0.1960835
6 months    kiGH5241-JiVitA-3    BANGLADESH    NA                   NA                0.2608375          NA          NA
6 months    kiGH5241-JiVitA-4    BANGLADESH    NA                   NA                0.2305476          NA          NA
9 months    ki1000108-IRC        INDIA         NA                   NA                0.2694301   0.2251129   0.3137472
9 months    ki1101329-Keneba     GAMBIA        NA                   NA                0.1787879   0.1581092   0.1994665
9 months    ki1126311-ZVITAMBO   ZIMBABWE      NA                   NA                0.1979608   0.1889734   0.2069482
9 months    ki1135781-COHORTS    INDIA         NA                   NA                0.2589506   0.2471325   0.2707686
9 months    ki1135781-COHORTS    PHILIPPINES   NA                   NA                0.2754159   0.2585782   0.2922536
9 months    kiGH5241-JiVitA-4    BANGLADESH    NA                   NA                0.2667928          NA          NA
12 months   ki1000108-IRC        INDIA         NA                   NA                0.2909091   0.2454823   0.3363359
12 months   ki1101329-Keneba     GAMBIA        NA                   NA                0.2455139   0.2214124   0.2696153
12 months   ki1126311-ZVITAMBO   ZIMBABWE      NA                   NA                0.2446857   0.2343392   0.2550322
12 months   ki1135781-COHORTS    INDIA         NA                   NA                0.3346105   0.3211163   0.3481046
12 months   kiGH5241-JiVitA-3    BANGLADESH    NA                   NA                0.3954906          NA          NA
12 months   kiGH5241-JiVitA-4    BANGLADESH    NA                   NA                0.3175803          NA          NA
18 months   ki1000108-IRC        INDIA         NA                   NA                0.3593750   0.3113215   0.4074285
18 months   ki1101329-Keneba     GAMBIA        NA                   NA                0.3252101   0.2985830   0.3518372
18 months   ki1126311-ZVITAMBO   ZIMBABWE      NA                   NA                0.4747475   0.4508831   0.4986119
18 months   kiGH5241-JiVitA-4    BANGLADESH    NA                   NA                0.4309179          NA          NA
24 months   ki1000108-IRC        INDIA         NA                   NA                0.4056848   0.3567004   0.4546691
24 months   ki1101329-Keneba     GAMBIA        NA                   NA                0.3226112   0.2944160   0.3508063
24 months   ki1135781-COHORTS    INDIA         NA                   NA                0.4627179   0.4485533   0.4768825
24 months   kiGH5241-JiVitA-3    BANGLADESH    NA                   NA                0.4811546          NA          NA
24 months   kiGH5241-JiVitA-4    BANGLADESH    NA                   NA                0.3813155          NA          NA


### Parameter: RR


agecat      studyid              country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  -------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
3 months    ki1000108-IRC        INDIA         >=0                  >=0                1.0000000    1.0000000    1.000000
3 months    ki1000108-IRC        INDIA         <-3                  >=0                8.0781250    4.2814534   15.241577
3 months    ki1000108-IRC        INDIA         [-3--2)              >=0                6.0925926    3.1718411   11.702883
3 months    ki1000108-IRC        INDIA         [-2--1)              >=0                3.6153846    1.8809495    6.949153
3 months    ki1000108-IRC        INDIA         [-1-0)               >=0                2.5919118    1.3839457    4.854241
3 months    ki1101329-Keneba     GAMBIA        >=0                  >=0                1.0000000    1.0000000    1.000000
3 months    ki1101329-Keneba     GAMBIA        <-3                  >=0                7.7782803    4.1744955   14.493163
3 months    ki1101329-Keneba     GAMBIA        [-3--2)              >=0               11.2352937    7.2524370   17.405436
3 months    ki1101329-Keneba     GAMBIA        [-2--1)              >=0                7.8420842    5.2821622   11.642635
3 months    ki1101329-Keneba     GAMBIA        [-1-0)               >=0                2.4852263    1.6273793    3.795273
3 months    ki1126311-ZVITAMBO   ZIMBABWE      >=0                  >=0                1.0000000    1.0000000    1.000000
3 months    ki1126311-ZVITAMBO   ZIMBABWE      <-3                  >=0                8.0818264    6.9462434    9.403056
3 months    ki1126311-ZVITAMBO   ZIMBABWE      [-3--2)              >=0                4.9741544    4.2515326    5.819598
3 months    ki1126311-ZVITAMBO   ZIMBABWE      [-2--1)              >=0                3.2606574    2.8150070    3.776860
3 months    ki1126311-ZVITAMBO   ZIMBABWE      [-1-0)               >=0                1.9674671    1.7014687    2.275050
3 months    ki1135781-COHORTS    INDIA         >=0                  >=0                1.0000000    1.0000000    1.000000
3 months    ki1135781-COHORTS    INDIA         <-3                  >=0               49.0633670   34.4297992   69.916585
3 months    ki1135781-COHORTS    INDIA         [-3--2)              >=0               33.9997100   23.8171636   48.535598
3 months    ki1135781-COHORTS    INDIA         [-2--1)              >=0               11.4623719    7.9698756   16.485323
3 months    ki1135781-COHORTS    INDIA         [-1-0)               >=0                3.1884391    2.1653092    4.695008
3 months    ki1135781-COHORTS    PHILIPPINES   >=0                  >=0                1.0000000    1.0000000    1.000000
3 months    ki1135781-COHORTS    PHILIPPINES   <-3                  >=0               27.9381579   19.9030376   39.217163
3 months    ki1135781-COHORTS    PHILIPPINES   [-3--2)              >=0               17.2167920   12.0762043   24.545620
3 months    ki1135781-COHORTS    PHILIPPINES   [-2--1)              >=0                9.1258204    6.4393879   12.932999
3 months    ki1135781-COHORTS    PHILIPPINES   [-1-0)               >=0                3.1303258    2.1721625    4.511145
3 months    kiGH5241-JiVitA-3    BANGLADESH    >=0                  >=0                1.0000000           NA          NA
3 months    kiGH5241-JiVitA-3    BANGLADESH    <-3                  >=0                8.9405188           NA          NA
3 months    kiGH5241-JiVitA-3    BANGLADESH    [-3--2)              >=0                5.2228250           NA          NA
3 months    kiGH5241-JiVitA-3    BANGLADESH    [-2--1)              >=0                2.0713345           NA          NA
3 months    kiGH5241-JiVitA-3    BANGLADESH    [-1-0)               >=0                0.7078492           NA          NA
3 months    kiGH5241-JiVitA-4    BANGLADESH    >=0                  >=0                1.0000000           NA          NA
3 months    kiGH5241-JiVitA-4    BANGLADESH    <-3                  >=0                7.3392140           NA          NA
3 months    kiGH5241-JiVitA-4    BANGLADESH    [-3--2)              >=0                5.2155172           NA          NA
3 months    kiGH5241-JiVitA-4    BANGLADESH    [-2--1)              >=0                1.9724138           NA          NA
3 months    kiGH5241-JiVitA-4    BANGLADESH    [-1-0)               >=0                1.3697318           NA          NA
6 months    ki1000108-IRC        INDIA         >=0                  >=0                1.0000000    1.0000000    1.000000
6 months    ki1000108-IRC        INDIA         <-3                  >=0                4.3007519    2.3178653    7.979957
6 months    ki1000108-IRC        INDIA         [-3--2)              >=0                3.9025341    2.2399212    6.799245
6 months    ki1000108-IRC        INDIA         [-2--1)              >=0                2.6631579    1.5630196    4.537634
6 months    ki1000108-IRC        INDIA         [-1-0)               >=0                1.5931617    0.9381239    2.705575
6 months    ki1101329-Keneba     GAMBIA        >=0                  >=0                1.0000000    1.0000000    1.000000
6 months    ki1101329-Keneba     GAMBIA        <-3                  >=0                2.9227053    1.2910176    6.616646
6 months    ki1101329-Keneba     GAMBIA        [-3--2)              >=0                5.1216931    3.2226294    8.139856
6 months    ki1101329-Keneba     GAMBIA        [-2--1)              >=0                3.4128205    2.3085462    5.045316
6 months    ki1101329-Keneba     GAMBIA        [-1-0)               >=0                2.3269231    1.6699793    3.242298
6 months    ki1126311-ZVITAMBO   ZIMBABWE      >=0                  >=0                1.0000000    1.0000000    1.000000
6 months    ki1126311-ZVITAMBO   ZIMBABWE      <-3                  >=0                6.8587209    5.8301336    8.068778
6 months    ki1126311-ZVITAMBO   ZIMBABWE      [-3--2)              >=0                3.9428329    3.3248629    4.675661
6 months    ki1126311-ZVITAMBO   ZIMBABWE      [-2--1)              >=0                2.6408773    2.2619541    3.083278
6 months    ki1126311-ZVITAMBO   ZIMBABWE      [-1-0)               >=0                1.7244189    1.4855348    2.001717
6 months    ki1135781-COHORTS    INDIA         >=0                  >=0                1.0000000    1.0000000    1.000000
6 months    ki1135781-COHORTS    INDIA         <-3                  >=0               16.6546041   12.9810889   21.367687
6 months    ki1135781-COHORTS    INDIA         [-3--2)              >=0               12.8678764   10.1057254   16.384993
6 months    ki1135781-COHORTS    INDIA         [-2--1)              >=0                6.6799191    5.2399336    8.515627
6 months    ki1135781-COHORTS    INDIA         [-1-0)               >=0                3.0023150    2.3314046    3.866294
6 months    kiGH5241-JiVitA-3    BANGLADESH    >=0                  >=0                1.0000000           NA          NA
6 months    kiGH5241-JiVitA-3    BANGLADESH    <-3                  >=0                8.7491736           NA          NA
6 months    kiGH5241-JiVitA-3    BANGLADESH    [-3--2)              >=0                5.3390184           NA          NA
6 months    kiGH5241-JiVitA-3    BANGLADESH    [-2--1)              >=0                2.4683023           NA          NA
6 months    kiGH5241-JiVitA-3    BANGLADESH    [-1-0)               >=0                1.0563641           NA          NA
6 months    kiGH5241-JiVitA-4    BANGLADESH    >=0                  >=0                1.0000000           NA          NA
6 months    kiGH5241-JiVitA-4    BANGLADESH    <-3                  >=0                9.0220000           NA          NA
6 months    kiGH5241-JiVitA-4    BANGLADESH    [-3--2)              >=0                5.4789474           NA          NA
6 months    kiGH5241-JiVitA-4    BANGLADESH    [-2--1)              >=0                3.2772222           NA          NA
6 months    kiGH5241-JiVitA-4    BANGLADESH    [-1-0)               >=0                1.7072571           NA          NA
9 months    ki1000108-IRC        INDIA         >=0                  >=0                1.0000000    1.0000000    1.000000
9 months    ki1000108-IRC        INDIA         <-3                  >=0                3.1086957    1.6315243    5.923288
9 months    ki1000108-IRC        INDIA         [-3--2)              >=0                3.2238325    1.9119018    5.435999
9 months    ki1000108-IRC        INDIA         [-2--1)              >=0                2.2000000    1.3360767    3.622547
9 months    ki1000108-IRC        INDIA         [-1-0)               >=0                1.6791495    1.0544200    2.674023
9 months    ki1101329-Keneba     GAMBIA        >=0                  >=0                1.0000000    1.0000000    1.000000
9 months    ki1101329-Keneba     GAMBIA        <-3                  >=0                3.1375947    1.6917808    5.819017
9 months    ki1101329-Keneba     GAMBIA        [-3--2)              >=0                3.9793884    2.5578077    6.191057
9 months    ki1101329-Keneba     GAMBIA        [-2--1)              >=0                3.7288206    2.7239424    5.104404
9 months    ki1101329-Keneba     GAMBIA        [-1-0)               >=0                2.3750401    1.7871144    3.156382
9 months    ki1126311-ZVITAMBO   ZIMBABWE      >=0                  >=0                1.0000000    1.0000000    1.000000
9 months    ki1126311-ZVITAMBO   ZIMBABWE      <-3                  >=0                4.3593567    3.6991012    5.137462
9 months    ki1126311-ZVITAMBO   ZIMBABWE      [-3--2)              >=0                2.8469596    2.4213603    3.347366
9 months    ki1126311-ZVITAMBO   ZIMBABWE      [-2--1)              >=0                2.1759103    1.8934044    2.500568
9 months    ki1126311-ZVITAMBO   ZIMBABWE      [-1-0)               >=0                1.5343182    1.3439092    1.751705
9 months    ki1135781-COHORTS    INDIA         >=0                  >=0                1.0000000    1.0000000    1.000000
9 months    ki1135781-COHORTS    INDIA         <-3                  >=0                8.4719864    6.8563478   10.468336
9 months    ki1135781-COHORTS    INDIA         [-3--2)              >=0                7.5588096    6.2275580    9.174640
9 months    ki1135781-COHORTS    INDIA         [-2--1)              >=0                4.9889453    4.1248539    6.034050
9 months    ki1135781-COHORTS    INDIA         [-1-0)               >=0                2.8782471    2.3672862    3.499495
9 months    ki1135781-COHORTS    PHILIPPINES   >=0                  >=0                1.0000000    1.0000000    1.000000
9 months    ki1135781-COHORTS    PHILIPPINES   <-3                  >=0                6.3064516    5.1270587    7.757144
9 months    ki1135781-COHORTS    PHILIPPINES   [-3--2)              >=0                5.0660091    4.1773605    6.143700
9 months    ki1135781-COHORTS    PHILIPPINES   [-2--1)              >=0                3.6063560    3.0161524    4.312051
9 months    ki1135781-COHORTS    PHILIPPINES   [-1-0)               >=0                2.2313136    1.8711370    2.660821
9 months    kiGH5241-JiVitA-4    BANGLADESH    >=0                  >=0                1.0000000           NA          NA
9 months    kiGH5241-JiVitA-4    BANGLADESH    <-3                  >=0                4.5422925           NA          NA
9 months    kiGH5241-JiVitA-4    BANGLADESH    [-3--2)              >=0                4.0539730           NA          NA
9 months    kiGH5241-JiVitA-4    BANGLADESH    [-2--1)              >=0                2.1628682           NA          NA
9 months    kiGH5241-JiVitA-4    BANGLADESH    [-1-0)               >=0                1.3285737           NA          NA
12 months   ki1000108-IRC        INDIA         >=0                  >=0                1.0000000    1.0000000    1.000000
12 months   ki1000108-IRC        INDIA         <-3                  >=0                1.9586207    0.9720444    3.946522
12 months   ki1000108-IRC        INDIA         [-3--2)              >=0                2.4482759    1.4793152    4.051912
12 months   ki1000108-IRC        INDIA         [-2--1)              >=0                1.8832891    1.2035280    2.946984
12 months   ki1000108-IRC        INDIA         [-1-0)               >=0                1.3939089    0.9159412    2.121296
12 months   ki1101329-Keneba     GAMBIA        >=0                  >=0                1.0000000    1.0000000    1.000000
12 months   ki1101329-Keneba     GAMBIA        <-3                  >=0                2.9656000    1.8387713    4.782968
12 months   ki1101329-Keneba     GAMBIA        [-3--2)              >=0                4.0119048    2.9478188    5.460098
12 months   ki1101329-Keneba     GAMBIA        [-2--1)              >=0                2.8808065    2.1935760    3.783341
12 months   ki1101329-Keneba     GAMBIA        [-1-0)               >=0                2.0910803    1.6489763    2.651716
12 months   ki1126311-ZVITAMBO   ZIMBABWE      >=0                  >=0                1.0000000    1.0000000    1.000000
12 months   ki1126311-ZVITAMBO   ZIMBABWE      <-3                  >=0                3.6983187    3.1522424    4.338994
12 months   ki1126311-ZVITAMBO   ZIMBABWE      [-3--2)              >=0                2.6518637    2.2812760    3.082653
12 months   ki1126311-ZVITAMBO   ZIMBABWE      [-2--1)              >=0                2.0419944    1.7909835    2.328185
12 months   ki1126311-ZVITAMBO   ZIMBABWE      [-1-0)               >=0                1.5624015    1.3800674    1.768826
12 months   ki1135781-COHORTS    INDIA         >=0                  >=0                1.0000000    1.0000000    1.000000
12 months   ki1135781-COHORTS    INDIA         <-3                  >=0                5.9921594    5.0620832    7.093122
12 months   ki1135781-COHORTS    INDIA         [-3--2)              >=0                4.7647740    4.0550691    5.598689
12 months   ki1135781-COHORTS    INDIA         [-2--1)              >=0                3.7134821    3.1858186    4.328542
12 months   ki1135781-COHORTS    INDIA         [-1-0)               >=0                2.4557340    2.0999303    2.871824
12 months   kiGH5241-JiVitA-3    BANGLADESH    >=0                  >=0                1.0000000           NA          NA
12 months   kiGH5241-JiVitA-3    BANGLADESH    <-3                  >=0                4.5461912           NA          NA
12 months   kiGH5241-JiVitA-3    BANGLADESH    [-3--2)              >=0                3.4813415           NA          NA
12 months   kiGH5241-JiVitA-3    BANGLADESH    [-2--1)              >=0                2.2947087           NA          NA
12 months   kiGH5241-JiVitA-3    BANGLADESH    [-1-0)               >=0                1.2745879           NA          NA
12 months   kiGH5241-JiVitA-4    BANGLADESH    >=0                  >=0                1.0000000           NA          NA
12 months   kiGH5241-JiVitA-4    BANGLADESH    <-3                  >=0                4.6200372           NA          NA
12 months   kiGH5241-JiVitA-4    BANGLADESH    [-3--2)              >=0                3.6127859           NA          NA
12 months   kiGH5241-JiVitA-4    BANGLADESH    [-2--1)              >=0                2.2252971           NA          NA
12 months   kiGH5241-JiVitA-4    BANGLADESH    [-1-0)               >=0                1.6207068           NA          NA
18 months   ki1000108-IRC        INDIA         >=0                  >=0                1.0000000    1.0000000    1.000000
18 months   ki1000108-IRC        INDIA         <-3                  >=0                1.3921569    0.6417600    3.019977
18 months   ki1000108-IRC        INDIA         [-3--2)              >=0                2.9389978    2.0050798    4.307912
18 months   ki1000108-IRC        INDIA         [-2--1)              >=0                2.1846154    1.5023519    3.176715
18 months   ki1000108-IRC        INDIA         [-1-0)               >=0                1.4230937    0.9771275    2.072601
18 months   ki1101329-Keneba     GAMBIA        >=0                  >=0                1.0000000    1.0000000    1.000000
18 months   ki1101329-Keneba     GAMBIA        <-3                  >=0                2.8459225    1.9488176    4.155994
18 months   ki1101329-Keneba     GAMBIA        [-3--2)              >=0                3.3445670    2.5700263    4.352535
18 months   ki1101329-Keneba     GAMBIA        [-2--1)              >=0                2.5933258    2.0710832    3.247257
18 months   ki1101329-Keneba     GAMBIA        [-1-0)               >=0                2.0067402    1.6540817    2.434587
18 months   ki1126311-ZVITAMBO   ZIMBABWE      >=0                  >=0                1.0000000    1.0000000    1.000000
18 months   ki1126311-ZVITAMBO   ZIMBABWE      <-3                  >=0                1.8381366    1.5255979    2.214703
18 months   ki1126311-ZVITAMBO   ZIMBABWE      [-3--2)              >=0                1.4600613    1.2165267    1.752349
18 months   ki1126311-ZVITAMBO   ZIMBABWE      [-2--1)              >=0                1.4021683    1.2026097    1.634841
18 months   ki1126311-ZVITAMBO   ZIMBABWE      [-1-0)               >=0                1.1221300    0.9603468    1.311168
18 months   kiGH5241-JiVitA-4    BANGLADESH    >=0                  >=0                1.0000000           NA          NA
18 months   kiGH5241-JiVitA-4    BANGLADESH    <-3                  >=0                2.8616279           NA          NA
18 months   kiGH5241-JiVitA-4    BANGLADESH    [-3--2)              >=0                2.4354280           NA          NA
18 months   kiGH5241-JiVitA-4    BANGLADESH    [-2--1)              >=0                1.9264816           NA          NA
18 months   kiGH5241-JiVitA-4    BANGLADESH    [-1-0)               >=0                1.3240018           NA          NA
24 months   ki1000108-IRC        INDIA         >=0                  >=0                1.0000000    1.0000000    1.000000
24 months   ki1000108-IRC        INDIA         <-3                  >=0                2.0283688    1.3217923    3.112652
24 months   ki1000108-IRC        INDIA         [-3--2)              >=0                1.5776202    1.0232071    2.432436
24 months   ki1000108-IRC        INDIA         [-2--1)              >=0                1.5446809    1.1045671    2.160158
24 months   ki1000108-IRC        INDIA         [-1-0)               >=0                1.1770461    0.8585286    1.613735
24 months   ki1101329-Keneba     GAMBIA        >=0                  >=0                1.0000000    1.0000000    1.000000
24 months   ki1101329-Keneba     GAMBIA        <-3                  >=0                1.4419192    0.7374416    2.819384
24 months   ki1101329-Keneba     GAMBIA        [-3--2)              >=0                2.1044226    1.4631601    3.026733
24 months   ki1101329-Keneba     GAMBIA        [-2--1)              >=0                2.2235202    1.7535916    2.819381
24 months   ki1101329-Keneba     GAMBIA        [-1-0)               >=0                1.7356435    1.4206497    2.120479
24 months   ki1135781-COHORTS    INDIA         >=0                  >=0                1.0000000    1.0000000    1.000000
24 months   ki1135781-COHORTS    INDIA         <-3                  >=0                3.2087767    2.8206666    3.650289
24 months   ki1135781-COHORTS    INDIA         [-3--2)              >=0                2.8945783    2.5846541    3.241665
24 months   ki1135781-COHORTS    INDIA         [-2--1)              >=0                2.5417212    2.2897246    2.821451
24 months   ki1135781-COHORTS    INDIA         [-1-0)               >=0                1.8721386    1.6828346    2.082737
24 months   kiGH5241-JiVitA-3    BANGLADESH    >=0                  >=0                1.0000000           NA          NA
24 months   kiGH5241-JiVitA-3    BANGLADESH    <-3                  >=0                2.7703782           NA          NA
24 months   kiGH5241-JiVitA-3    BANGLADESH    [-3--2)              >=0                2.2994773           NA          NA
24 months   kiGH5241-JiVitA-3    BANGLADESH    [-2--1)              >=0                1.8068101           NA          NA
24 months   kiGH5241-JiVitA-3    BANGLADESH    [-1-0)               >=0                1.1066269           NA          NA
24 months   kiGH5241-JiVitA-4    BANGLADESH    >=0                  >=0                1.0000000           NA          NA
24 months   kiGH5241-JiVitA-4    BANGLADESH    <-3                  >=0                2.9187761           NA          NA
24 months   kiGH5241-JiVitA-4    BANGLADESH    [-3--2)              >=0                2.8184581           NA          NA
24 months   kiGH5241-JiVitA-4    BANGLADESH    [-2--1)              >=0                2.0253300           NA          NA
24 months   kiGH5241-JiVitA-4    BANGLADESH    [-1-0)               >=0                1.3726349           NA          NA


### Parameter: PAR


agecat      studyid              country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki1000108-IRC        INDIA         >=0                  NA                0.1408676   0.0927141   0.1890212
3 months    ki1101329-Keneba     GAMBIA        >=0                  NA                0.0724812   0.0562513   0.0887110
3 months    ki1126311-ZVITAMBO   ZIMBABWE      >=0                  NA                0.1001444   0.0905311   0.1097578
3 months    ki1135781-COHORTS    INDIA         >=0                  NA                0.1305440   0.1210211   0.1400669
3 months    ki1135781-COHORTS    PHILIPPINES   >=0                  NA                0.0929636   0.0804491   0.1054781
3 months    kiGH5241-JiVitA-3    BANGLADESH    >=0                  NA                0.1773666          NA          NA
3 months    kiGH5241-JiVitA-4    BANGLADESH    >=0                  NA                0.1177957          NA          NA
6 months    ki1000108-IRC        INDIA         >=0                  NA                0.1080655   0.0567948   0.1593362
6 months    ki1101329-Keneba     GAMBIA        >=0                  NA                0.0602496   0.0428245   0.0776747
6 months    ki1126311-ZVITAMBO   ZIMBABWE      >=0                  NA                0.0806530   0.0706252   0.0906809
6 months    ki1135781-COHORTS    INDIA         >=0                  NA                0.1452742   0.1337356   0.1568129
6 months    kiGH5241-JiVitA-3    BANGLADESH    >=0                  NA                0.1729898          NA          NA
6 months    kiGH5241-JiVitA-4    BANGLADESH    >=0                  NA                0.1440922          NA          NA
9 months    ki1000108-IRC        INDIA         >=0                  NA                0.1085909   0.0546858   0.1624960
9 months    ki1101329-Keneba     GAMBIA        >=0                  NA                0.0807216   0.0611751   0.1002680
9 months    ki1126311-ZVITAMBO   ZIMBABWE      >=0                  NA                0.0788347   0.0669946   0.0906747
9 months    ki1135781-COHORTS    INDIA         >=0                  NA                0.1827983   0.1680394   0.1975571
9 months    ki1135781-COHORTS    PHILIPPINES   >=0                  NA                0.1432761   0.1250176   0.1615345
9 months    kiGH5241-JiVitA-4    BANGLADESH    >=0                  NA                0.1306981          NA          NA
12 months   ki1000108-IRC        INDIA         >=0                  NA                0.0866837   0.0299390   0.1434285
12 months   ki1101329-Keneba     GAMBIA        >=0                  NA                0.0971459   0.0745814   0.1197105
12 months   ki1126311-ZVITAMBO   ZIMBABWE      >=0                  NA                0.0943207   0.0802529   0.1083885
12 months   ki1135781-COHORTS    INDIA         >=0                  NA                0.2072836   0.1894444   0.2251228
12 months   kiGH5241-JiVitA-3    BANGLADESH    >=0                  NA                0.2197331          NA          NA
12 months   kiGH5241-JiVitA-4    BANGLADESH    >=0                  NA                0.1604806          NA          NA
18 months   ki1000108-IRC        INDIA         >=0                  NA                0.1199384   0.0599766   0.1799001
18 months   ki1101329-Keneba     GAMBIA        >=0                  NA                0.1175765   0.0928456   0.1423074
18 months   ki1126311-ZVITAMBO   ZIMBABWE      >=0                  NA                0.0907269   0.0479203   0.1335334
18 months   kiGH5241-JiVitA-4    BANGLADESH    >=0                  NA                0.1630051          NA          NA
24 months   ki1000108-IRC        INDIA         >=0                  NA                0.0770134   0.0141613   0.1398656
24 months   ki1101329-Keneba     GAMBIA        >=0                  NA                0.0914378   0.0650044   0.1178711
24 months   ki1135781-COHORTS    INDIA         >=0                  NA                0.2193162   0.1987699   0.2398624
24 months   kiGH5241-JiVitA-3    BANGLADESH    >=0                  NA                0.1952350          NA          NA
24 months   kiGH5241-JiVitA-4    BANGLADESH    >=0                  NA                0.1548450          NA          NA


### Parameter: PAF


agecat      studyid              country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki1000108-IRC        INDIA         >=0                  NA                0.6233798   0.3809852   0.7708572
3 months    ki1101329-Keneba     GAMBIA        >=0                  NA                0.6195830   0.4914894   0.7154099
3 months    ki1126311-ZVITAMBO   ZIMBABWE      >=0                  NA                0.5614665   0.5095692   0.6078721
3 months    ki1135781-COHORTS    INDIA         >=0                  NA                0.8837348   0.8362391   0.9174553
3 months    ki1135781-COHORTS    PHILIPPINES   >=0                  NA                0.7534253   0.6691055   0.8162585
3 months    kiGH5241-JiVitA-3    BANGLADESH    >=0                  NA                0.6441546          NA          NA
3 months    kiGH5241-JiVitA-4    BANGLADESH    >=0                  NA                0.5374031          NA          NA
6 months    ki1000108-IRC        INDIA         >=0                  NA                0.4485300   0.2032520   0.6182994
6 months    ki1101329-Keneba     GAMBIA        >=0                  NA                0.4475207   0.3172206   0.5529546
6 months    ki1126311-ZVITAMBO   ZIMBABWE      >=0                  NA                0.4873186   0.4272896   0.5410555
6 months    ki1135781-COHORTS    INDIA         >=0                  NA                0.7796257   0.7255341   0.8230569
6 months    kiGH5241-JiVitA-3    BANGLADESH    >=0                  NA                0.6632090          NA          NA
6 months    kiGH5241-JiVitA-4    BANGLADESH    >=0                  NA                0.6250000          NA          NA
9 months    ki1000108-IRC        INDIA         >=0                  NA                0.4030393   0.1740455   0.5685451
9 months    ki1101329-Keneba     GAMBIA        >=0                  NA                0.4514936   0.3425382   0.5423928
9 months    ki1126311-ZVITAMBO   ZIMBABWE      >=0                  NA                0.3982337   0.3375038   0.4533967
9 months    ki1135781-COHORTS    INDIA         >=0                  NA                0.7059195   0.6523263   0.7512514
9 months    ki1135781-COHORTS    PHILIPPINES   >=0                  NA                0.5202172   0.4548784   0.5777244
9 months    kiGH5241-JiVitA-4    BANGLADESH    >=0                  NA                0.4898863          NA          NA
12 months   ki1000108-IRC        INDIA         >=0                  NA                0.2979754   0.0762422   0.4664850
12 months   ki1101329-Keneba     GAMBIA        >=0                  NA                0.3956840   0.3023585   0.4765251
12 months   ki1126311-ZVITAMBO   ZIMBABWE      >=0                  NA                0.3854770   0.3267525   0.4390792
12 months   ki1135781-COHORTS    INDIA         >=0                  NA                0.6194773   0.5665353   0.6659532
12 months   kiGH5241-JiVitA-3    BANGLADESH    >=0                  NA                0.5555961          NA          NA
12 months   kiGH5241-JiVitA-4    BANGLADESH    >=0                  NA                0.5053230          NA          NA
18 months   ki1000108-IRC        INDIA         >=0                  NA                0.3337416   0.1460828   0.4801600
18 months   ki1101329-Keneba     GAMBIA        >=0                  NA                0.3615401   0.2833090   0.4312318
18 months   ki1126311-ZVITAMBO   ZIMBABWE      >=0                  NA                0.1911055   0.0954569   0.2766400
18 months   kiGH5241-JiVitA-4    BANGLADESH    >=0                  NA                0.3782742          NA          NA
24 months   ki1000108-IRC        INDIA         >=0                  NA                0.1898356   0.0188847   0.3309998
24 months   ki1101329-Keneba     GAMBIA        >=0                  NA                0.2834303   0.1979678   0.3597861
24 months   ki1135781-COHORTS    INDIA         >=0                  NA                0.4739738   0.4278852   0.5163495
24 months   kiGH5241-JiVitA-3    BANGLADESH    >=0                  NA                0.4057637          NA          NA
24 months   kiGH5241-JiVitA-4    BANGLADESH    >=0                  NA                0.4060809          NA          NA
