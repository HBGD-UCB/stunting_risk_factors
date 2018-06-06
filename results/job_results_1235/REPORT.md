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

**Intervention Variable:** birthwt

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
Birth       ki0047075b-MAL-ED          BANGLADESH                     >=0          257     34     34      0
Birth       ki0047075b-MAL-ED          BANGLADESH                     <-3          257      7      0      7
Birth       ki0047075b-MAL-ED          BANGLADESH                     [-3--2)      257     38     16     22
Birth       ki0047075b-MAL-ED          BANGLADESH                     [-2--1)      257     96     82     14
Birth       ki0047075b-MAL-ED          BANGLADESH                     [-1-0)       257     82     78      4
Birth       ki0047075b-MAL-ED          BRAZIL                         >=0          191    111    106      5
Birth       ki0047075b-MAL-ED          BRAZIL                         <-3          191      0      0      0
Birth       ki0047075b-MAL-ED          BRAZIL                         [-3--2)      191      6      2      4
Birth       ki0047075b-MAL-ED          BRAZIL                         [-2--1)      191     19     13      6
Birth       ki0047075b-MAL-ED          BRAZIL                         [-1-0)       191     55     49      6
Birth       ki0047075b-MAL-ED          INDIA                          >=0          206     40     40      0
Birth       ki0047075b-MAL-ED          INDIA                          <-3          206      2      0      2
Birth       ki0047075b-MAL-ED          INDIA                          [-3--2)      206     21     11     10
Birth       ki0047075b-MAL-ED          INDIA                          [-2--1)      206     68     51     17
Birth       ki0047075b-MAL-ED          INDIA                          [-1-0)       206     75     71      4
Birth       ki0047075b-MAL-ED          NEPAL                          >=0          173     32     32      0
Birth       ki0047075b-MAL-ED          NEPAL                          <-3          173      4      0      4
Birth       ki0047075b-MAL-ED          NEPAL                          [-3--2)      173     12      5      7
Birth       ki0047075b-MAL-ED          NEPAL                          [-2--1)      173     40     36      4
Birth       ki0047075b-MAL-ED          NEPAL                          [-1-0)       173     85     82      3
Birth       ki0047075b-MAL-ED          PERU                           >=0          287     90     90      0
Birth       ki0047075b-MAL-ED          PERU                           <-3          287      4      0      4
Birth       ki0047075b-MAL-ED          PERU                           [-3--2)      287      9      2      7
Birth       ki0047075b-MAL-ED          PERU                           [-2--1)      287     42     24     18
Birth       ki0047075b-MAL-ED          PERU                           [-1-0)       287    142    137      5
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   >=0          262     91     91      0
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   <-3          262      5      2      3
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [-3--2)      262     11      4      7
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [-2--1)      262     39     30      9
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   [-1-0)       262    116    107      9
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=0          123     55     53      2
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <-3          123      1      0      1
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-3--2)      123      5      1      4
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-2--1)      123     17     11      6
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-1-0)       123     45     40      5
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          >=0           90     11     10      1
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          <-3           90      2      0      2
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          [-3--2)       90      8      4      4
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          [-2--1)       90     32     26      6
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          [-1-0)        90     37     34      3
Birth       ki1000108-IRC              INDIA                          >=0          383     58     55      3
Birth       ki1000108-IRC              INDIA                          <-3          383     12      7      5
Birth       ki1000108-IRC              INDIA                          [-3--2)      383     39     30      9
Birth       ki1000108-IRC              INDIA                          [-2--1)      383    124    107     17
Birth       ki1000108-IRC              INDIA                          [-1-0)       383    150    140     10
Birth       ki1000109-EE               PAKISTAN                       >=0            2      0      0      0
Birth       ki1000109-EE               PAKISTAN                       <-3            2      0      0      0
Birth       ki1000109-EE               PAKISTAN                       [-3--2)        2      0      0      0
Birth       ki1000109-EE               PAKISTAN                       [-2--1)        2      2      1      1
Birth       ki1000109-EE               PAKISTAN                       [-1-0)         2      0      0      0
Birth       ki1000109-ResPak           PAKISTAN                       >=0            7      4      4      0
Birth       ki1000109-ResPak           PAKISTAN                       <-3            7      1      0      1
Birth       ki1000109-ResPak           PAKISTAN                       [-3--2)        7      0      0      0
Birth       ki1000109-ResPak           PAKISTAN                       [-2--1)        7      1      0      1
Birth       ki1000109-ResPak           PAKISTAN                       [-1-0)         7      1      1      0
Birth       ki1000304b-SAS-CompFeed    INDIA                          >=0           70      2      2      0
Birth       ki1000304b-SAS-CompFeed    INDIA                          <-3           70      3      0      3
Birth       ki1000304b-SAS-CompFeed    INDIA                          [-3--2)       70      8      4      4
Birth       ki1000304b-SAS-CompFeed    INDIA                          [-2--1)       70     27     19      8
Birth       ki1000304b-SAS-CompFeed    INDIA                          [-1-0)        70     30     28      2
Birth       ki1017093-NIH-Birth        BANGLADESH                     >=0           28      2      2      0
Birth       ki1017093-NIH-Birth        BANGLADESH                     <-3           28      0      0      0
Birth       ki1017093-NIH-Birth        BANGLADESH                     [-3--2)       28      4      3      1
Birth       ki1017093-NIH-Birth        BANGLADESH                     [-2--1)       28     15     15      0
Birth       ki1017093-NIH-Birth        BANGLADESH                     [-1-0)        28      7      7      0
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     >=0           27      1      1      0
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     <-3           27      0      0      0
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [-3--2)       27      7      5      2
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [-2--1)       27      9      6      3
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     [-1-0)        27     10     10      0
Birth       ki1101329-Keneba           GAMBIA                         >=0         1541    288    286      2
Birth       ki1101329-Keneba           GAMBIA                         <-3         1541     18      6     12
Birth       ki1101329-Keneba           GAMBIA                         [-3--2)     1541     95     68     27
Birth       ki1101329-Keneba           GAMBIA                         [-2--1)     1541    435    408     27
Birth       ki1101329-Keneba           GAMBIA                         [-1-0)      1541    705    691     14
Birth       ki1114097-CMIN             BANGLADESH                     >=0           12      2      2      0
Birth       ki1114097-CMIN             BANGLADESH                     <-3           12      3      0      3
Birth       ki1114097-CMIN             BANGLADESH                     [-3--2)       12      3      1      2
Birth       ki1114097-CMIN             BANGLADESH                     [-2--1)       12      1      1      0
Birth       ki1114097-CMIN             BANGLADESH                     [-1-0)        12      3      3      0
Birth       ki1114097-CMIN             BRAZIL                         >=0          115     56     55      1
Birth       ki1114097-CMIN             BRAZIL                         <-3          115      1      0      1
Birth       ki1114097-CMIN             BRAZIL                         [-3--2)      115      2      1      1
Birth       ki1114097-CMIN             BRAZIL                         [-2--1)      115     18     16      2
Birth       ki1114097-CMIN             BRAZIL                         [-1-0)       115     38     38      0
Birth       ki1114097-CMIN             PERU                           >=0           10      8      8      0
Birth       ki1114097-CMIN             PERU                           <-3           10      0      0      0
Birth       ki1114097-CMIN             PERU                           [-3--2)       10      0      0      0
Birth       ki1114097-CMIN             PERU                           [-2--1)       10      0      0      0
Birth       ki1114097-CMIN             PERU                           [-1-0)        10      2      2      0
Birth       ki1114097-CONTENT          PERU                           >=0            2      1      1      0
Birth       ki1114097-CONTENT          PERU                           <-3            2      0      0      0
Birth       ki1114097-CONTENT          PERU                           [-3--2)        2      0      0      0
Birth       ki1114097-CONTENT          PERU                           [-2--1)        2      0      0      0
Birth       ki1114097-CONTENT          PERU                           [-1-0)         2      1      1      0
Birth       ki1119695-PROBIT           BELARUS                        >=0         6779   4238   4236      2
Birth       ki1119695-PROBIT           BELARUS                        <-3         6779      0      0      0
Birth       ki1119695-PROBIT           BELARUS                        [-3--2)     6779      0      0      0
Birth       ki1119695-PROBIT           BELARUS                        [-2--1)     6779    495    480     15
Birth       ki1119695-PROBIT           BELARUS                        [-1-0)      6779   2046   2042      4
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=0        13830   3171   3128     43
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <-3        13830    404    147    257
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)    13830   1172    754    418
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)    13830   3345   2900    445
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)     13830   5738   5469    269
Birth       ki1135781-COHORTS          GUATEMALA                      >=0          383    103    102      1
Birth       ki1135781-COHORTS          GUATEMALA                      <-3          383      5      2      3
Birth       ki1135781-COHORTS          GUATEMALA                      [-3--2)      383     38     29      9
Birth       ki1135781-COHORTS          GUATEMALA                      [-2--1)      383    113    109      4
Birth       ki1135781-COHORTS          GUATEMALA                      [-1-0)       383    124    124      0
Birth       ki1135781-COHORTS          INDIA                          >=0         6637    760    754      6
Birth       ki1135781-COHORTS          INDIA                          <-3         6637    284     59    225
Birth       ki1135781-COHORTS          INDIA                          [-3--2)     6637    861    547    314
Birth       ki1135781-COHORTS          INDIA                          [-2--1)     6637   2256   2056    200
Birth       ki1135781-COHORTS          INDIA                          [-1-0)      6637   2476   2430     46
Birth       ki1135781-COHORTS          PHILIPPINES                    >=0         3002    654    654      0
Birth       ki1135781-COHORTS          PHILIPPINES                    <-3         3002     71     24     47
Birth       ki1135781-COHORTS          PHILIPPINES                    [-3--2)     3002    177    120     57
Birth       ki1135781-COHORTS          PHILIPPINES                    [-2--1)     3002    720    663     57
Birth       ki1135781-COHORTS          PHILIPPINES                    [-1-0)      3002   1380   1363     17
Birth       kiGH5241-JiVitA-3          BANGLADESH                     >=0         9739    282    282      0
Birth       kiGH5241-JiVitA-3          BANGLADESH                     <-3         9739   1112     77   1035
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [-3--2)     9739   2567    974   1593
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [-2--1)     9739   3902   3251    651
Birth       kiGH5241-JiVitA-3          BANGLADESH                     [-1-0)      9739   1876   1835     41
Birth       kiGH5241-JiVitA-4          BANGLADESH                     >=0          224     12     12      0
Birth       kiGH5241-JiVitA-4          BANGLADESH                     <-3          224     20      0     20
Birth       kiGH5241-JiVitA-4          BANGLADESH                     [-3--2)      224     34     12     22
Birth       kiGH5241-JiVitA-4          BANGLADESH                     [-2--1)      224     93     67     26
Birth       kiGH5241-JiVitA-4          BANGLADESH                     [-1-0)       224     65     64      1
3 months    ki0047075b-MAL-ED          BANGLADESH                     >=0          243     33     33      0
3 months    ki0047075b-MAL-ED          BANGLADESH                     <-3          243      4      0      4
3 months    ki0047075b-MAL-ED          BANGLADESH                     [-3--2)      243     35     16     19
3 months    ki0047075b-MAL-ED          BANGLADESH                     [-2--1)      243     92     79     13
3 months    ki0047075b-MAL-ED          BANGLADESH                     [-1-0)       243     79     73      6
3 months    ki0047075b-MAL-ED          BRAZIL                         >=0          225    126    125      1
3 months    ki0047075b-MAL-ED          BRAZIL                         <-3          225      0      0      0
3 months    ki0047075b-MAL-ED          BRAZIL                         [-3--2)      225      9      7      2
3 months    ki0047075b-MAL-ED          BRAZIL                         [-2--1)      225     22     14      8
3 months    ki0047075b-MAL-ED          BRAZIL                         [-1-0)       225     68     65      3
3 months    ki0047075b-MAL-ED          INDIA                          >=0          235     43     43      0
3 months    ki0047075b-MAL-ED          INDIA                          <-3          235      5      1      4
3 months    ki0047075b-MAL-ED          INDIA                          [-3--2)      235     23     14      9
3 months    ki0047075b-MAL-ED          INDIA                          [-2--1)      235     76     61     15
3 months    ki0047075b-MAL-ED          INDIA                          [-1-0)       235     88     81      7
3 months    ki0047075b-MAL-ED          NEPAL                          >=0          229     47     47      0
3 months    ki0047075b-MAL-ED          NEPAL                          <-3          229      4      2      2
3 months    ki0047075b-MAL-ED          NEPAL                          [-3--2)      229     15     11      4
3 months    ki0047075b-MAL-ED          NEPAL                          [-2--1)      229     53     49      4
3 months    ki0047075b-MAL-ED          NEPAL                          [-1-0)       229    110    108      2
3 months    ki0047075b-MAL-ED          PERU                           >=0          288     91     82      9
3 months    ki0047075b-MAL-ED          PERU                           <-3          288      4      1      3
3 months    ki0047075b-MAL-ED          PERU                           [-3--2)      288     10      1      9
3 months    ki0047075b-MAL-ED          PERU                           [-2--1)      288     42     16     26
3 months    ki0047075b-MAL-ED          PERU                           [-1-0)       288    141    115     26
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=0          281    106     96     10
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <-3          281      4      2      2
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [-3--2)      281     12      4      8
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [-2--1)      281     42     27     15
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [-1-0)       281    117     98     19
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=0          127     58     56      2
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <-3          127      0      0      0
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-3--2)      127      5      2      3
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-2--1)      127     17     13      4
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-1-0)       127     47     39      8
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=0          355     68     63      5
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          <-3          355     12      3      9
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          [-3--2)      355     29      9     20
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          [-2--1)      355    105     78     27
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          [-1-0)       355    141    114     27
3 months    ki1000108-IRC              INDIA                          >=0          401     60     58      2
3 months    ki1000108-IRC              INDIA                          <-3          401     13      4      9
3 months    ki1000108-IRC              INDIA                          [-3--2)      401     41     21     20
3 months    ki1000108-IRC              INDIA                          [-2--1)      401    133     96     37
3 months    ki1000108-IRC              INDIA                          [-1-0)       401    154    134     20
3 months    ki1000109-EE               PAKISTAN                       >=0          373     34     28      6
3 months    ki1000109-EE               PAKISTAN                       <-3          373     46      9     37
3 months    ki1000109-EE               PAKISTAN                       [-3--2)      373     73     14     59
3 months    ki1000109-EE               PAKISTAN                       [-2--1)      373    118     50     68
3 months    ki1000109-EE               PAKISTAN                       [-1-0)       373    102     58     44
3 months    ki1000109-ResPak           PAKISTAN                       >=0            6      3      2      1
3 months    ki1000109-ResPak           PAKISTAN                       <-3            6      1      0      1
3 months    ki1000109-ResPak           PAKISTAN                       [-3--2)        6      0      0      0
3 months    ki1000109-ResPak           PAKISTAN                       [-2--1)        6      1      0      1
3 months    ki1000109-ResPak           PAKISTAN                       [-1-0)         6      1      1      0
3 months    ki1000304b-SAS-CompFeed    INDIA                          >=0          411     40     37      3
3 months    ki1000304b-SAS-CompFeed    INDIA                          <-3          411     22      2     20
3 months    ki1000304b-SAS-CompFeed    INDIA                          [-3--2)      411     44     17     27
3 months    ki1000304b-SAS-CompFeed    INDIA                          [-2--1)      411    155    114     41
3 months    ki1000304b-SAS-CompFeed    INDIA                          [-1-0)       411    150    131     19
3 months    ki1017093-NIH-Birth        BANGLADESH                     >=0           23      1      1      0
3 months    ki1017093-NIH-Birth        BANGLADESH                     <-3           23      0      0      0
3 months    ki1017093-NIH-Birth        BANGLADESH                     [-3--2)       23      3      1      2
3 months    ki1017093-NIH-Birth        BANGLADESH                     [-2--1)       23     12     11      1
3 months    ki1017093-NIH-Birth        BANGLADESH                     [-1-0)        23      7      6      1
3 months    ki1017093b-PROVIDE         BANGLADESH                     >=0          645     59     59      0
3 months    ki1017093b-PROVIDE         BANGLADESH                     <-3          645      4      2      2
3 months    ki1017093b-PROVIDE         BANGLADESH                     [-3--2)      645    105     64     41
3 months    ki1017093b-PROVIDE         BANGLADESH                     [-2--1)      645    271    243     28
3 months    ki1017093b-PROVIDE         BANGLADESH                     [-1-0)       645    206    199      7
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=0          728     96     95      1
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     <-3          728     23      4     19
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     [-3--2)      728    109     61     48
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     [-2--1)      728    274    204     70
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     [-1-0)       728    226    208     18
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=0         2266    983    967     16
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <-3         2266     21      9     12
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-3--2)     2266     45     34     11
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-2--1)     2266    293    248     45
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-1-0)      2266    924    874     50
3 months    ki1101329-Keneba           GAMBIA                         >=0         1803    360    350     10
3 months    ki1101329-Keneba           GAMBIA                         <-3         1803     24      6     18
3 months    ki1101329-Keneba           GAMBIA                         [-3--2)     1803    111     47     64
3 months    ki1101329-Keneba           GAMBIA                         [-2--1)     1803    505    409     96
3 months    ki1101329-Keneba           GAMBIA                         [-1-0)      1803    803    746     57
3 months    ki1114097-CMIN             BRAZIL                         >=0           88     40     40      0
3 months    ki1114097-CMIN             BRAZIL                         <-3           88      1      0      1
3 months    ki1114097-CMIN             BRAZIL                         [-3--2)       88      2      2      0
3 months    ki1114097-CMIN             BRAZIL                         [-2--1)       88     13      8      5
3 months    ki1114097-CMIN             BRAZIL                         [-1-0)        88     32     30      2
3 months    ki1114097-CMIN             PERU                           >=0            9      8      8      0
3 months    ki1114097-CMIN             PERU                           <-3            9      0      0      0
3 months    ki1114097-CMIN             PERU                           [-3--2)        9      0      0      0
3 months    ki1114097-CMIN             PERU                           [-2--1)        9      0      0      0
3 months    ki1114097-CMIN             PERU                           [-1-0)         9      1      1      0
3 months    ki1114097-CONTENT          PERU                           >=0            2      1      1      0
3 months    ki1114097-CONTENT          PERU                           <-3            2      0      0      0
3 months    ki1114097-CONTENT          PERU                           [-3--2)        2      0      0      0
3 months    ki1114097-CONTENT          PERU                           [-2--1)        2      0      0      0
3 months    ki1114097-CONTENT          PERU                           [-1-0)         2      1      1      0
3 months    ki1119695-PROBIT           BELARUS                        >=0         8057   5006   4933     73
3 months    ki1119695-PROBIT           BELARUS                        <-3         8057      0      0      0
3 months    ki1119695-PROBIT           BELARUS                        [-3--2)     8057      0      0      0
3 months    ki1119695-PROBIT           BELARUS                        [-2--1)     8057    576    390    186
3 months    ki1119695-PROBIT           BELARUS                        [-1-0)      8057   2475   2228    247
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=0         9163   2163   2070     93
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       <-3         9163    243     54    189
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)     9163    720    362    358
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)     9163   2192   1600    592
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)      9163   3845   3446    399
3 months    ki1135781-COHORTS          GUATEMALA                      >=0          405    109     89     20
3 months    ki1135781-COHORTS          GUATEMALA                      <-3          405      6      0      6
3 months    ki1135781-COHORTS          GUATEMALA                      [-3--2)      405     37     13     24
3 months    ki1135781-COHORTS          GUATEMALA                      [-2--1)      405    122     79     43
3 months    ki1135781-COHORTS          GUATEMALA                      [-1-0)       405    131    100     31
3 months    ki1135781-COHORTS          INDIA                          >=0         6463    728    715     13
3 months    ki1135781-COHORTS          INDIA                          <-3         6463    272     64    208
3 months    ki1135781-COHORTS          INDIA                          [-3--2)     6463    845    546    299
3 months    ki1135781-COHORTS          INDIA                          [-2--1)     6463   2199   1863    336
3 months    ki1135781-COHORTS          INDIA                          [-1-0)      6463   2419   2322     97
3 months    ki1135781-COHORTS          PHILIPPINES                    >=0         2831    614    608      6
3 months    ki1135781-COHORTS          PHILIPPINES                    <-3         2831     60     20     40
3 months    ki1135781-COHORTS          PHILIPPINES                    [-3--2)     2831    159     88     71
3 months    ki1135781-COHORTS          PHILIPPINES                    [-2--1)     2831    692    552    140
3 months    ki1135781-COHORTS          PHILIPPINES                    [-1-0)      2831   1306   1215     91
3 months    kiGH5241-JiVitA-3          BANGLADESH                     >=0        12274   1362   1203    159
3 months    kiGH5241-JiVitA-3          BANGLADESH                     <-3        12274   1231    245    986
3 months    kiGH5241-JiVitA-3          BANGLADESH                     [-3--2)    12274   2841   1556   1285
3 months    kiGH5241-JiVitA-3          BANGLADESH                     [-2--1)    12274   4450   3666    784
3 months    kiGH5241-JiVitA-3          BANGLADESH                     [-1-0)     12274   2390   2209    181
3 months    kiGH5241-JiVitA-4          BANGLADESH                     >=0          853    232    206     26
3 months    kiGH5241-JiVitA-4          BANGLADESH                     <-3          853     43      8     35
3 months    kiGH5241-JiVitA-4          BANGLADESH                     [-3--2)      853    125     67     58
3 months    kiGH5241-JiVitA-4          BANGLADESH                     [-2--1)      853    241    200     41
3 months    kiGH5241-JiVitA-4          BANGLADESH                     [-1-0)       853    212    185     27
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=0          234     33     32      1
6 months    ki0047075b-MAL-ED          BANGLADESH                     <-3          234      4      2      2
6 months    ki0047075b-MAL-ED          BANGLADESH                     [-3--2)      234     34     19     15
6 months    ki0047075b-MAL-ED          BANGLADESH                     [-2--1)      234     86     70     16
6 months    ki0047075b-MAL-ED          BANGLADESH                     [-1-0)       234     77     68      9
6 months    ki0047075b-MAL-ED          BRAZIL                         >=0          209    120    120      0
6 months    ki0047075b-MAL-ED          BRAZIL                         <-3          209      0      0      0
6 months    ki0047075b-MAL-ED          BRAZIL                         [-3--2)      209      8      7      1
6 months    ki0047075b-MAL-ED          BRAZIL                         [-2--1)      209     21     18      3
6 months    ki0047075b-MAL-ED          BRAZIL                         [-1-0)       209     60     58      2
6 months    ki0047075b-MAL-ED          INDIA                          >=0          231     41     39      2
6 months    ki0047075b-MAL-ED          INDIA                          <-3          231      5      1      4
6 months    ki0047075b-MAL-ED          INDIA                          [-3--2)      231     22     15      7
6 months    ki0047075b-MAL-ED          INDIA                          [-2--1)      231     75     55     20
6 months    ki0047075b-MAL-ED          INDIA                          [-1-0)       231     88     77     11
6 months    ki0047075b-MAL-ED          NEPAL                          >=0          229     48     47      1
6 months    ki0047075b-MAL-ED          NEPAL                          <-3          229      4      2      2
6 months    ki0047075b-MAL-ED          NEPAL                          [-3--2)      229     15     13      2
6 months    ki0047075b-MAL-ED          NEPAL                          [-2--1)      229     53     49      4
6 months    ki0047075b-MAL-ED          NEPAL                          [-1-0)       229    109    107      2
6 months    ki0047075b-MAL-ED          PERU                           >=0          270     83     76      7
6 months    ki0047075b-MAL-ED          PERU                           <-3          270      4      1      3
6 months    ki0047075b-MAL-ED          PERU                           [-3--2)      270      9      2      7
6 months    ki0047075b-MAL-ED          PERU                           [-2--1)      270     40     20     20
6 months    ki0047075b-MAL-ED          PERU                           [-1-0)       270    134    112     22
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=0          254    100     90     10
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <-3          254      3      3      0
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [-3--2)      254     10      6      4
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [-2--1)      254     37     25     12
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [-1-0)       254    104     80     24
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=0          124     55     53      2
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <-3          124      0      0      0
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-3--2)      124      5      1      4
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-2--1)      124     17     10      7
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-1-0)       124     47     39      8
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=0          361     69     58     11
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <-3          361     11      2      9
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [-3--2)      361     30     12     18
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [-2--1)      361    105     70     35
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [-1-0)       361    146    110     36
6 months    ki1000108-IRC              INDIA                          >=0          401     61     53      8
6 months    ki1000108-IRC              INDIA                          <-3          401     11      5      6
6 months    ki1000108-IRC              INDIA                          [-3--2)      401     41     25     16
6 months    ki1000108-IRC              INDIA                          [-2--1)      401    132     91     41
6 months    ki1000108-IRC              INDIA                          [-1-0)       401    156    132     24
6 months    ki1000109-EE               PAKISTAN                       >=0          369     35     27      8
6 months    ki1000109-EE               PAKISTAN                       <-3          369     46      9     37
6 months    ki1000109-EE               PAKISTAN                       [-3--2)      369     69     19     50
6 months    ki1000109-EE               PAKISTAN                       [-2--1)      369    116     54     62
6 months    ki1000109-EE               PAKISTAN                       [-1-0)       369    103     70     33
6 months    ki1000109-ResPak           PAKISTAN                       >=0            5      2      2      0
6 months    ki1000109-ResPak           PAKISTAN                       <-3            5      1      0      1
6 months    ki1000109-ResPak           PAKISTAN                       [-3--2)        5      0      0      0
6 months    ki1000109-ResPak           PAKISTAN                       [-2--1)        5      1      0      1
6 months    ki1000109-ResPak           PAKISTAN                       [-1-0)         5      1      1      0
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=0          410     39     32      7
6 months    ki1000304b-SAS-CompFeed    INDIA                          <-3          410     24      5     19
6 months    ki1000304b-SAS-CompFeed    INDIA                          [-3--2)      410     41     26     15
6 months    ki1000304b-SAS-CompFeed    INDIA                          [-2--1)      410    160    110     50
6 months    ki1000304b-SAS-CompFeed    INDIA                          [-1-0)       410    146    124     22
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=0           17      1      1      0
6 months    ki1017093-NIH-Birth        BANGLADESH                     <-3           17      0      0      0
6 months    ki1017093-NIH-Birth        BANGLADESH                     [-3--2)       17      3      1      2
6 months    ki1017093-NIH-Birth        BANGLADESH                     [-2--1)       17      9      7      2
6 months    ki1017093-NIH-Birth        BANGLADESH                     [-1-0)        17      4      4      0
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=0          583     51     50      1
6 months    ki1017093b-PROVIDE         BANGLADESH                     <-3          583      4      1      3
6 months    ki1017093b-PROVIDE         BANGLADESH                     [-3--2)      583     92     54     38
6 months    ki1017093b-PROVIDE         BANGLADESH                     [-2--1)      583    246    205     41
6 months    ki1017093b-PROVIDE         BANGLADESH                     [-1-0)       583    190    179     11
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=0          715     92     87      5
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <-3          715     22      8     14
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [-3--2)      715    108     63     45
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [-2--1)      715    271    208     63
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [-1-0)       715    222    199     23
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=0         2010    860    805     55
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <-3         2010     17     11      6
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-3--2)     2010     39     28     11
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-2--1)     2010    259    215     44
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-1-0)      2010    835    757     78
6 months    ki1101329-Keneba           GAMBIA                         >=0         1724    351    331     20
6 months    ki1101329-Keneba           GAMBIA                         <-3         1724     24     10     14
6 months    ki1101329-Keneba           GAMBIA                         [-3--2)     1724    104     60     44
6 months    ki1101329-Keneba           GAMBIA                         [-2--1)     1724    477    381     96
6 months    ki1101329-Keneba           GAMBIA                         [-1-0)      1724    768    698     70
6 months    ki1114097-CMIN             BRAZIL                         >=0          104     50     49      1
6 months    ki1114097-CMIN             BRAZIL                         <-3          104      0      0      0
6 months    ki1114097-CMIN             BRAZIL                         [-3--2)      104      1      1      0
6 months    ki1114097-CMIN             BRAZIL                         [-2--1)      104     16     14      2
6 months    ki1114097-CMIN             BRAZIL                         [-1-0)       104     37     30      7
6 months    ki1114097-CMIN             PERU                           >=0            9      8      8      0
6 months    ki1114097-CMIN             PERU                           <-3            9      0      0      0
6 months    ki1114097-CMIN             PERU                           [-3--2)        9      0      0      0
6 months    ki1114097-CMIN             PERU                           [-2--1)        9      0      0      0
6 months    ki1114097-CMIN             PERU                           [-1-0)         9      1      1      0
6 months    ki1114097-CONTENT          PERU                           >=0            2      1      1      0
6 months    ki1114097-CONTENT          PERU                           <-3            2      0      0      0
6 months    ki1114097-CONTENT          PERU                           [-3--2)        2      0      0      0
6 months    ki1114097-CONTENT          PERU                           [-2--1)        2      0      0      0
6 months    ki1114097-CONTENT          PERU                           [-1-0)         2      1      1      0
6 months    ki1119695-PROBIT           BELARUS                        >=0         7665   4788   4628    160
6 months    ki1119695-PROBIT           BELARUS                        <-3         7665      0      0      0
6 months    ki1119695-PROBIT           BELARUS                        [-3--2)     7665      0      0      0
6 months    ki1119695-PROBIT           BELARUS                        [-2--1)     7665    540    400    140
6 months    ki1119695-PROBIT           BELARUS                        [-1-0)      7665   2337   2090    247
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=0         8265   1955   1845    110
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <-3         8265    212     83    129
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)     8265    637    392    245
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)     8265   1949   1459    490
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)      8265   3512   3114    398
6 months    ki1135781-COHORTS          GUATEMALA                      >=0          375    102     78     24
6 months    ki1135781-COHORTS          GUATEMALA                      <-3          375      6      0      6
6 months    ki1135781-COHORTS          GUATEMALA                      [-3--2)      375     36      8     28
6 months    ki1135781-COHORTS          GUATEMALA                      [-2--1)      375    117     59     58
6 months    ki1135781-COHORTS          GUATEMALA                      [-1-0)       375    114     66     48
6 months    ki1135781-COHORTS          INDIA                          >=0         6261    729    706     23
6 months    ki1135781-COHORTS          INDIA                          <-3         6261    231     72    159
6 months    ki1135781-COHORTS          INDIA                          [-3--2)     6261    810    516    294
6 months    ki1135781-COHORTS          INDIA                          [-2--1)     6261   2131   1658    473
6 months    ki1135781-COHORTS          INDIA                          [-1-0)      6261   2360   2149    211
6 months    ki1135781-COHORTS          PHILIPPINES                    >=0         2664    580    530     50
6 months    ki1135781-COHORTS          PHILIPPINES                    <-3         2664     52     20     32
6 months    ki1135781-COHORTS          PHILIPPINES                    [-3--2)     2664    152     78     74
6 months    ki1135781-COHORTS          PHILIPPINES                    [-2--1)     2664    643    443    200
6 months    ki1135781-COHORTS          PHILIPPINES                    [-1-0)      2664   1237   1033    204
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=0         8282    923    825     98
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <-3         8282    757    240    517
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [-3--2)     8282   1889   1118    771
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [-2--1)     8282   3028   2411    617
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [-1-0)      8282   1685   1520    165
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >=0         1050    260    233     27
6 months    kiGH5241-JiVitA-4          BANGLADESH                     <-3         1050     61     19     42
6 months    kiGH5241-JiVitA-4          BANGLADESH                     [-3--2)     1050    137     74     63
6 months    kiGH5241-JiVitA-4          BANGLADESH                     [-2--1)     1050    310    242     68
6 months    kiGH5241-JiVitA-4          BANGLADESH                     [-1-0)      1050    282    239     43
9 months    ki0047075b-MAL-ED          BANGLADESH                     >=0          228     33     30      3
9 months    ki0047075b-MAL-ED          BANGLADESH                     <-3          228      4      2      2
9 months    ki0047075b-MAL-ED          BANGLADESH                     [-3--2)      228     34     15     19
9 months    ki0047075b-MAL-ED          BANGLADESH                     [-2--1)      228     81     60     21
9 months    ki0047075b-MAL-ED          BANGLADESH                     [-1-0)       228     76     63     13
9 months    ki0047075b-MAL-ED          BRAZIL                         >=0          199    111    111      0
9 months    ki0047075b-MAL-ED          BRAZIL                         <-3          199      0      0      0
9 months    ki0047075b-MAL-ED          BRAZIL                         [-3--2)      199      8      7      1
9 months    ki0047075b-MAL-ED          BRAZIL                         [-2--1)      199     21     20      1
9 months    ki0047075b-MAL-ED          BRAZIL                         [-1-0)       199     59     57      2
9 months    ki0047075b-MAL-ED          INDIA                          >=0          227     41     36      5
9 months    ki0047075b-MAL-ED          INDIA                          <-3          227      5      1      4
9 months    ki0047075b-MAL-ED          INDIA                          [-3--2)      227     22     14      8
9 months    ki0047075b-MAL-ED          INDIA                          [-2--1)      227     71     52     19
9 months    ki0047075b-MAL-ED          INDIA                          [-1-0)       227     88     72     16
9 months    ki0047075b-MAL-ED          NEPAL                          >=0          224     46     45      1
9 months    ki0047075b-MAL-ED          NEPAL                          <-3          224      3      1      2
9 months    ki0047075b-MAL-ED          NEPAL                          [-3--2)      224     15     13      2
9 months    ki0047075b-MAL-ED          NEPAL                          [-2--1)      224     52     48      4
9 months    ki0047075b-MAL-ED          NEPAL                          [-1-0)       224    108    101      7
9 months    ki0047075b-MAL-ED          PERU                           >=0          253     73     67      6
9 months    ki0047075b-MAL-ED          PERU                           <-3          253      4      2      2
9 months    ki0047075b-MAL-ED          PERU                           [-3--2)      253      9      1      8
9 months    ki0047075b-MAL-ED          PERU                           [-2--1)      253     40     20     20
9 months    ki0047075b-MAL-ED          PERU                           [-1-0)       253    127    101     26
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=0          250     98     86     12
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <-3          250      3      3      0
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [-3--2)      250     10      6      4
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [-2--1)      250     36     24     12
9 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [-1-0)       250    103     78     25
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=0          120     54     40     14
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <-3          120      0      0      0
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-3--2)      120      4      1      3
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-2--1)      120     17      8      9
9 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-1-0)       120     45     25     20
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=0          358     67     53     14
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          <-3          358     12      2     10
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          [-3--2)      358     30     10     20
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          [-2--1)      358    104     65     39
9 months    ki1000108-CMC-V-BCS-2002   INDIA                          [-1-0)       358    145     97     48
9 months    ki1000108-IRC              INDIA                          >=0          401     61     53      8
9 months    ki1000108-IRC              INDIA                          <-3          401     11      4      7
9 months    ki1000108-IRC              INDIA                          [-3--2)      401     41     23     18
9 months    ki1000108-IRC              INDIA                          [-2--1)      401    132     84     48
9 months    ki1000108-IRC              INDIA                          [-1-0)       401    156    131     25
9 months    ki1000109-EE               PAKISTAN                       >=0          363     34     25      9
9 months    ki1000109-EE               PAKISTAN                       <-3          363     47      8     39
9 months    ki1000109-EE               PAKISTAN                       [-3--2)      363     67     14     53
9 months    ki1000109-EE               PAKISTAN                       [-2--1)      363    114     47     67
9 months    ki1000109-EE               PAKISTAN                       [-1-0)       363    101     55     46
9 months    ki1000109-ResPak           PAKISTAN                       >=0            6      3      2      1
9 months    ki1000109-ResPak           PAKISTAN                       <-3            6      1      1      0
9 months    ki1000109-ResPak           PAKISTAN                       [-3--2)        6      0      0      0
9 months    ki1000109-ResPak           PAKISTAN                       [-2--1)        6      1      1      0
9 months    ki1000109-ResPak           PAKISTAN                       [-1-0)         6      1      1      0
9 months    ki1000304b-SAS-CompFeed    INDIA                          >=0          403     38     29      9
9 months    ki1000304b-SAS-CompFeed    INDIA                          <-3          403     21      2     19
9 months    ki1000304b-SAS-CompFeed    INDIA                          [-3--2)      403     42     13     29
9 months    ki1000304b-SAS-CompFeed    INDIA                          [-2--1)      403    153     87     66
9 months    ki1000304b-SAS-CompFeed    INDIA                          [-1-0)       403    149    119     30
9 months    ki1017093-NIH-Birth        BANGLADESH                     >=0           17      1      1      0
9 months    ki1017093-NIH-Birth        BANGLADESH                     <-3           17      0      0      0
9 months    ki1017093-NIH-Birth        BANGLADESH                     [-3--2)       17      3      1      2
9 months    ki1017093-NIH-Birth        BANGLADESH                     [-2--1)       17      9      6      3
9 months    ki1017093-NIH-Birth        BANGLADESH                     [-1-0)        17      4      4      0
9 months    ki1017093b-PROVIDE         BANGLADESH                     >=0          605     53     51      2
9 months    ki1017093b-PROVIDE         BANGLADESH                     <-3          605      4      0      4
9 months    ki1017093b-PROVIDE         BANGLADESH                     [-3--2)      605     99     55     44
9 months    ki1017093b-PROVIDE         BANGLADESH                     [-2--1)      605    254    197     57
9 months    ki1017093b-PROVIDE         BANGLADESH                     [-1-0)       605    195    173     22
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=0          706     95     90      5
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     <-3          706     22      8     14
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     [-3--2)      706    100     57     43
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     [-2--1)      706    268    196     72
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     [-1-0)       706    221    191     30
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=0         1771    782    711     71
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <-3         1771     15      9      6
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-3--2)     1771     30     20     10
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-2--1)     1771    220    161     59
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-1-0)      1771    724    608    116
9 months    ki1101329-Keneba           GAMBIA                         >=0         1717    345    321     24
9 months    ki1101329-Keneba           GAMBIA                         <-3         1717     25     11     14
9 months    ki1101329-Keneba           GAMBIA                         [-3--2)     1717    105     62     43
9 months    ki1101329-Keneba           GAMBIA                         [-2--1)     1717    473    334    139
9 months    ki1101329-Keneba           GAMBIA                         [-1-0)      1717    769    675     94
9 months    ki1114097-CMIN             BRAZIL                         >=0          106     52     49      3
9 months    ki1114097-CMIN             BRAZIL                         <-3          106      1      0      1
9 months    ki1114097-CMIN             BRAZIL                         [-3--2)      106      2      1      1
9 months    ki1114097-CMIN             BRAZIL                         [-2--1)      106     16     10      6
9 months    ki1114097-CMIN             BRAZIL                         [-1-0)       106     35     29      6
9 months    ki1114097-CMIN             PERU                           >=0            8      7      7      0
9 months    ki1114097-CMIN             PERU                           <-3            8      0      0      0
9 months    ki1114097-CMIN             PERU                           [-3--2)        8      0      0      0
9 months    ki1114097-CMIN             PERU                           [-2--1)        8      0      0      0
9 months    ki1114097-CMIN             PERU                           [-1-0)         8      1      1      0
9 months    ki1114097-CONTENT          PERU                           >=0            2      1      1      0
9 months    ki1114097-CONTENT          PERU                           <-3            2      0      0      0
9 months    ki1114097-CONTENT          PERU                           [-3--2)        2      0      0      0
9 months    ki1114097-CONTENT          PERU                           [-2--1)        2      0      0      0
9 months    ki1114097-CONTENT          PERU                           [-1-0)         2      1      1      0
9 months    ki1119695-PROBIT           BELARUS                        >=0         7483   4672   4564    108
9 months    ki1119695-PROBIT           BELARUS                        <-3         7483      0      0      0
9 months    ki1119695-PROBIT           BELARUS                        [-3--2)     7483      0      0      0
9 months    ki1119695-PROBIT           BELARUS                        [-2--1)     7483    529    451     78
9 months    ki1119695-PROBIT           BELARUS                        [-1-0)      7483   2282   2132    150
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=0         7650   1654   1521    133
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       <-3         7650    200     85    115
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)     7650    611    368    243
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)     7650   1893   1375    518
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)      7650   3292   2788    504
9 months    ki1135781-COHORTS          GUATEMALA                      >=0          359     91     49     42
9 months    ki1135781-COHORTS          GUATEMALA                      <-3          359      5      1      4
9 months    ki1135781-COHORTS          GUATEMALA                      [-3--2)      359     39      2     37
9 months    ki1135781-COHORTS          GUATEMALA                      [-2--1)      359    111     36     75
9 months    ki1135781-COHORTS          GUATEMALA                      [-1-0)       359    113     54     59
9 months    ki1135781-COHORTS          INDIA                          >=0         5394    644    601     43
9 months    ki1135781-COHORTS          INDIA                          <-3         5394    202     62    140
9 months    ki1135781-COHORTS          INDIA                          [-3--2)     5394    683    390    293
9 months    ki1135781-COHORTS          INDIA                          [-2--1)     5394   1832   1263    569
9 months    ki1135781-COHORTS          INDIA                          [-1-0)      5394   2033   1692    341
9 months    ki1135781-COHORTS          PHILIPPINES                    >=0         2668    582    505     77
9 months    ki1135781-COHORTS          PHILIPPINES                    <-3         2668     52     20     32
9 months    ki1135781-COHORTS          PHILIPPINES                    [-3--2)     2668    148     68     80
9 months    ki1135781-COHORTS          PHILIPPINES                    [-2--1)     2668    647    392    255
9 months    ki1135781-COHORTS          PHILIPPINES                    [-1-0)      2668   1239    953    286
9 months    kiGH5241-JiVitA-4          BANGLADESH                     >=0         1068    263    223     40
9 months    kiGH5241-JiVitA-4          BANGLADESH                     <-3         1068     67     26     41
9 months    kiGH5241-JiVitA-4          BANGLADESH                     [-3--2)     1068    144     70     74
9 months    kiGH5241-JiVitA-4          BANGLADESH                     [-2--1)     1068    322    238     84
9 months    kiGH5241-JiVitA-4          BANGLADESH                     [-1-0)      1068    272    226     46
12 months   ki0047075b-MAL-ED          BANGLADESH                     >=0          227     33     29      4
12 months   ki0047075b-MAL-ED          BANGLADESH                     <-3          227      4      2      2
12 months   ki0047075b-MAL-ED          BANGLADESH                     [-3--2)      227     34     12     22
12 months   ki0047075b-MAL-ED          BANGLADESH                     [-2--1)      227     81     55     26
12 months   ki0047075b-MAL-ED          BANGLADESH                     [-1-0)       227     75     56     19
12 months   ki0047075b-MAL-ED          BRAZIL                         >=0          195    109    108      1
12 months   ki0047075b-MAL-ED          BRAZIL                         <-3          195      0      0      0
12 months   ki0047075b-MAL-ED          BRAZIL                         [-3--2)      195      8      7      1
12 months   ki0047075b-MAL-ED          BRAZIL                         [-2--1)      195     21     20      1
12 months   ki0047075b-MAL-ED          BRAZIL                         [-1-0)       195     57     54      3
12 months   ki0047075b-MAL-ED          INDIA                          >=0          223     39     29     10
12 months   ki0047075b-MAL-ED          INDIA                          <-3          223      5      1      4
12 months   ki0047075b-MAL-ED          INDIA                          [-3--2)      223     21      9     12
12 months   ki0047075b-MAL-ED          INDIA                          [-2--1)      223     70     44     26
12 months   ki0047075b-MAL-ED          INDIA                          [-1-0)       223     88     67     21
12 months   ki0047075b-MAL-ED          NEPAL                          >=0          224     46     44      2
12 months   ki0047075b-MAL-ED          NEPAL                          <-3          224      3      1      2
12 months   ki0047075b-MAL-ED          NEPAL                          [-3--2)      224     15     12      3
12 months   ki0047075b-MAL-ED          NEPAL                          [-2--1)      224     52     46      6
12 months   ki0047075b-MAL-ED          NEPAL                          [-1-0)       224    108     98     10
12 months   ki0047075b-MAL-ED          PERU                           >=0          243     72     63      9
12 months   ki0047075b-MAL-ED          PERU                           <-3          243      4      2      2
12 months   ki0047075b-MAL-ED          PERU                           [-3--2)      243      8      0      8
12 months   ki0047075b-MAL-ED          PERU                           [-2--1)      243     38     18     20
12 months   ki0047075b-MAL-ED          PERU                           [-1-0)       243    121     93     28
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=0          252     96     78     18
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <-3          252      3      3      0
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [-3--2)      252     10      6      4
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [-2--1)      252     37     27     10
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [-1-0)       252    106     78     28
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=0          117     54     35     19
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <-3          117      0      0      0
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-3--2)      117      4      0      4
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-2--1)      117     17      5     12
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-1-0)       117     42     17     25
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=0          360     67     50     17
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          <-3          360     12      3      9
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          [-3--2)      360     30      5     25
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          [-2--1)      360    104     47     57
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          [-1-0)       360    147     77     70
12 months   ki1000108-IRC              INDIA                          >=0          400     61     51     10
12 months   ki1000108-IRC              INDIA                          <-3          400     11      5      6
12 months   ki1000108-IRC              INDIA                          [-3--2)      400     41     22     19
12 months   ki1000108-IRC              INDIA                          [-2--1)      400    131     78     53
12 months   ki1000108-IRC              INDIA                          [-1-0)       400    156    130     26
12 months   ki1000109-EE               PAKISTAN                       >=0          354     32     21     11
12 months   ki1000109-EE               PAKISTAN                       <-3          354     45      6     39
12 months   ki1000109-EE               PAKISTAN                       [-3--2)      354     65      8     57
12 months   ki1000109-EE               PAKISTAN                       [-2--1)      354    113     30     83
12 months   ki1000109-EE               PAKISTAN                       [-1-0)       354     99     37     62
12 months   ki1000109-ResPak           PAKISTAN                       >=0            5      2      2      0
12 months   ki1000109-ResPak           PAKISTAN                       <-3            5      1      0      1
12 months   ki1000109-ResPak           PAKISTAN                       [-3--2)        5      0      0      0
12 months   ki1000109-ResPak           PAKISTAN                       [-2--1)        5      1      1      0
12 months   ki1000109-ResPak           PAKISTAN                       [-1-0)         5      1      1      0
12 months   ki1000304b-SAS-CompFeed    INDIA                          >=0          413     39     29     10
12 months   ki1000304b-SAS-CompFeed    INDIA                          <-3          413     23      3     20
12 months   ki1000304b-SAS-CompFeed    INDIA                          [-3--2)      413     45     12     33
12 months   ki1000304b-SAS-CompFeed    INDIA                          [-2--1)      413    156     79     77
12 months   ki1000304b-SAS-CompFeed    INDIA                          [-1-0)       413    150    107     43
12 months   ki1017093-NIH-Birth        BANGLADESH                     >=0           17      1      1      0
12 months   ki1017093-NIH-Birth        BANGLADESH                     <-3           17      0      0      0
12 months   ki1017093-NIH-Birth        BANGLADESH                     [-3--2)       17      3      1      2
12 months   ki1017093-NIH-Birth        BANGLADESH                     [-2--1)       17      9      6      3
12 months   ki1017093-NIH-Birth        BANGLADESH                     [-1-0)        17      4      1      3
12 months   ki1017093b-PROVIDE         BANGLADESH                     >=0          600     53     50      3
12 months   ki1017093b-PROVIDE         BANGLADESH                     <-3          600      4      0      4
12 months   ki1017093b-PROVIDE         BANGLADESH                     [-3--2)      600     97     51     46
12 months   ki1017093b-PROVIDE         BANGLADESH                     [-2--1)      600    249    178     71
12 months   ki1017093b-PROVIDE         BANGLADESH                     [-1-0)       600    197    164     33
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=0          706     90     86      4
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     <-3          706     23      9     14
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     [-3--2)      706    104     57     47
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     [-2--1)      706    268    196     72
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     [-1-0)       706    221    187     34
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=0         1429    618    555     63
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <-3         1429     12      6      6
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-3--2)     1429     25     17      8
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-2--1)     1429    178    121     57
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-1-0)      1429    596    494    102
12 months   ki1101329-Keneba           GAMBIA                         >=0         1616    333    290     43
12 months   ki1101329-Keneba           GAMBIA                         <-3         1616     22      7     15
12 months   ki1101329-Keneba           GAMBIA                         [-3--2)     1616     95     39     56
12 months   ki1101329-Keneba           GAMBIA                         [-2--1)     1616    443    283    160
12 months   ki1101329-Keneba           GAMBIA                         [-1-0)      1616    723    589    134
12 months   ki1114097-CMIN             BRAZIL                         >=0          111     54     47      7
12 months   ki1114097-CMIN             BRAZIL                         <-3          111      1      0      1
12 months   ki1114097-CMIN             BRAZIL                         [-3--2)      111      2      1      1
12 months   ki1114097-CMIN             BRAZIL                         [-2--1)      111     18     12      6
12 months   ki1114097-CMIN             BRAZIL                         [-1-0)       111     36     27      9
12 months   ki1114097-CMIN             PERU                           >=0            8      7      7      0
12 months   ki1114097-CMIN             PERU                           <-3            8      0      0      0
12 months   ki1114097-CMIN             PERU                           [-3--2)        8      0      0      0
12 months   ki1114097-CMIN             PERU                           [-2--1)        8      0      0      0
12 months   ki1114097-CMIN             PERU                           [-1-0)         8      1      1      0
12 months   ki1114097-CONTENT          PERU                           >=0            2      1      1      0
12 months   ki1114097-CONTENT          PERU                           <-3            2      0      0      0
12 months   ki1114097-CONTENT          PERU                           [-3--2)        2      0      0      0
12 months   ki1114097-CONTENT          PERU                           [-2--1)        2      0      0      0
12 months   ki1114097-CONTENT          PERU                           [-1-0)         2      1      1      0
12 months   ki1119695-PROBIT           BELARUS                        >=0         7736   4819   4742     77
12 months   ki1119695-PROBIT           BELARUS                        <-3         7736      0      0      0
12 months   ki1119695-PROBIT           BELARUS                        [-3--2)     7736      0      0      0
12 months   ki1119695-PROBIT           BELARUS                        [-2--1)     7736    544    478     66
12 months   ki1119695-PROBIT           BELARUS                        [-1-0)      7736   2373   2252    121
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=0         6731   1345   1183    162
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       <-3         6731    189     79    110
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)     6731    560    321    239
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)     6731   1758   1181    577
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)      6731   2879   2322    557
12 months   ki1135781-COHORTS          GUATEMALA                      >=0          377     98     48     50
12 months   ki1135781-COHORTS          GUATEMALA                      <-3          377      4      0      4
12 months   ki1135781-COHORTS          GUATEMALA                      [-3--2)      377     39      4     35
12 months   ki1135781-COHORTS          GUATEMALA                      [-2--1)      377    117     23     94
12 months   ki1135781-COHORTS          GUATEMALA                      [-1-0)       377    119     44     75
12 months   ki1135781-COHORTS          INDIA                          >=0         4810    580    518     62
12 months   ki1135781-COHORTS          INDIA                          <-3         4810    168     41    127
12 months   ki1135781-COHORTS          INDIA                          [-3--2)     4810    596    278    318
12 months   ki1135781-COHORTS          INDIA                          [-2--1)     4810   1629    974    655
12 months   ki1135781-COHORTS          INDIA                          [-1-0)      4810   1837   1397    440
12 months   ki1135781-COHORTS          PHILIPPINES                    >=0         2544    566    436    130
12 months   ki1135781-COHORTS          PHILIPPINES                    <-3         2544     47     12     35
12 months   ki1135781-COHORTS          PHILIPPINES                    [-3--2)     2544    141     49     92
12 months   ki1135781-COHORTS          PHILIPPINES                    [-2--1)     2544    617    306    311
12 months   ki1135781-COHORTS          PHILIPPINES                    [-1-0)      2544   1173    761    412
12 months   kiGH5241-JiVitA-3          BANGLADESH                     >=0         7172    764    597    167
12 months   kiGH5241-JiVitA-3          BANGLADESH                     <-3         7172    662    193    469
12 months   kiGH5241-JiVitA-3          BANGLADESH                     [-3--2)     7172   1671    729    942
12 months   kiGH5241-JiVitA-3          BANGLADESH                     [-2--1)     7172   2606   1666    940
12 months   kiGH5241-JiVitA-3          BANGLADESH                     [-1-0)      7172   1469   1142    327
12 months   kiGH5241-JiVitA-4          BANGLADESH                     >=0         1069    253    209     44
12 months   kiGH5241-JiVitA-4          BANGLADESH                     <-3         1069     71     18     53
12 months   kiGH5241-JiVitA-4          BANGLADESH                     [-3--2)     1069    153     66     87
12 months   kiGH5241-JiVitA-4          BANGLADESH                     [-2--1)     1069    318    227     91
12 months   kiGH5241-JiVitA-4          BANGLADESH                     [-1-0)      1069    274    209     65
18 months   ki0047075b-MAL-ED          BANGLADESH                     >=0          216     32     27      5
18 months   ki0047075b-MAL-ED          BANGLADESH                     <-3          216      4      0      4
18 months   ki0047075b-MAL-ED          BANGLADESH                     [-3--2)      216     32      8     24
18 months   ki0047075b-MAL-ED          BANGLADESH                     [-2--1)      216     77     40     37
18 months   ki0047075b-MAL-ED          BANGLADESH                     [-1-0)       216     71     40     31
18 months   ki0047075b-MAL-ED          BRAZIL                         >=0          180    101     98      3
18 months   ki0047075b-MAL-ED          BRAZIL                         <-3          180      0      0      0
18 months   ki0047075b-MAL-ED          BRAZIL                         [-3--2)      180      7      7      0
18 months   ki0047075b-MAL-ED          BRAZIL                         [-2--1)      180     19     17      2
18 months   ki0047075b-MAL-ED          BRAZIL                         [-1-0)       180     53     51      2
18 months   ki0047075b-MAL-ED          INDIA                          >=0          223     38     27     11
18 months   ki0047075b-MAL-ED          INDIA                          <-3          223      5      1      4
18 months   ki0047075b-MAL-ED          INDIA                          [-3--2)      223     22     10     12
18 months   ki0047075b-MAL-ED          INDIA                          [-2--1)      223     70     35     35
18 months   ki0047075b-MAL-ED          INDIA                          [-1-0)       223     88     49     39
18 months   ki0047075b-MAL-ED          NEPAL                          >=0          222     46     43      3
18 months   ki0047075b-MAL-ED          NEPAL                          <-3          222      3      0      3
18 months   ki0047075b-MAL-ED          NEPAL                          [-3--2)      222     15     13      2
18 months   ki0047075b-MAL-ED          NEPAL                          [-2--1)      222     52     36     16
18 months   ki0047075b-MAL-ED          NEPAL                          [-1-0)       222    106     90     16
18 months   ki0047075b-MAL-ED          PERU                           >=0          219     64     43     21
18 months   ki0047075b-MAL-ED          PERU                           <-3          219      3      2      1
18 months   ki0047075b-MAL-ED          PERU                           [-3--2)      219      7      0      7
18 months   ki0047075b-MAL-ED          PERU                           [-2--1)      219     38     15     23
18 months   ki0047075b-MAL-ED          PERU                           [-1-0)       219    107     62     45
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=0          241     91     66     25
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <-3          241      3      3      0
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [-3--2)      241      9      4      5
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [-2--1)      241     34     22     12
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [-1-0)       241    104     64     40
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=0          112     51     19     32
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <-3          112      0      0      0
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-3--2)      112      4      0      4
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-2--1)      112     17      3     14
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-1-0)       112     40     10     30
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=0          361     68     30     38
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          <-3          361     12      1     11
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          [-3--2)      361     30      3     27
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          [-2--1)      361    105     23     82
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          [-1-0)       361    146     57     89
18 months   ki1000108-IRC              INDIA                          >=0          399     61     53      8
18 months   ki1000108-IRC              INDIA                          <-3          399     11      3      8
18 months   ki1000108-IRC              INDIA                          [-3--2)      399     40     17     23
18 months   ki1000108-IRC              INDIA                          [-2--1)      399    131     69     62
18 months   ki1000108-IRC              INDIA                          [-1-0)       399    156    118     38
18 months   ki1000109-EE               PAKISTAN                       >=0          347     33      9     24
18 months   ki1000109-EE               PAKISTAN                       <-3          347     45      1     44
18 months   ki1000109-EE               PAKISTAN                       [-3--2)      347     63      4     59
18 months   ki1000109-EE               PAKISTAN                       [-2--1)      347    111     17     94
18 months   ki1000109-EE               PAKISTAN                       [-1-0)       347     95     22     73
18 months   ki1000109-ResPak           PAKISTAN                       >=0            1      0      0      0
18 months   ki1000109-ResPak           PAKISTAN                       <-3            1      0      0      0
18 months   ki1000109-ResPak           PAKISTAN                       [-3--2)        1      0      0      0
18 months   ki1000109-ResPak           PAKISTAN                       [-2--1)        1      1      1      0
18 months   ki1000109-ResPak           PAKISTAN                       [-1-0)         1      0      0      0
18 months   ki1000304b-SAS-CompFeed    INDIA                          >=0          394     36     20     16
18 months   ki1000304b-SAS-CompFeed    INDIA                          <-3          394     23      1     22
18 months   ki1000304b-SAS-CompFeed    INDIA                          [-3--2)      394     42      9     33
18 months   ki1000304b-SAS-CompFeed    INDIA                          [-2--1)      394    147     61     86
18 months   ki1000304b-SAS-CompFeed    INDIA                          [-1-0)       394    146     96     50
18 months   ki1017093-NIH-Birth        BANGLADESH                     >=0           17      1      1      0
18 months   ki1017093-NIH-Birth        BANGLADESH                     <-3           17      0      0      0
18 months   ki1017093-NIH-Birth        BANGLADESH                     [-3--2)       17      3      1      2
18 months   ki1017093-NIH-Birth        BANGLADESH                     [-2--1)       17      9      1      8
18 months   ki1017093-NIH-Birth        BANGLADESH                     [-1-0)        17      4      1      3
18 months   ki1017093b-PROVIDE         BANGLADESH                     >=0          552     50     41      9
18 months   ki1017093b-PROVIDE         BANGLADESH                     <-3          552      4      0      4
18 months   ki1017093b-PROVIDE         BANGLADESH                     [-3--2)      552     87     37     50
18 months   ki1017093b-PROVIDE         BANGLADESH                     [-2--1)      552    231    141     90
18 months   ki1017093b-PROVIDE         BANGLADESH                     [-1-0)       552    180    127     53
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=0          634     74     67      7
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     <-3          634     23      8     15
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     [-3--2)      634     98     49     49
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     [-2--1)      634    243    170     73
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     [-1-0)       634    196    149     47
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=0          969    425    356     69
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <-3          969      5      3      2
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-3--2)      969     14     10      4
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-2--1)      969    124     81     43
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-1-0)       969    401    285    116
18 months   ki1101329-Keneba           GAMBIA                         >=0         1618    319    272     47
18 months   ki1101329-Keneba           GAMBIA                         <-3         1618     22      8     14
18 months   ki1101329-Keneba           GAMBIA                         [-3--2)     1618     98     32     66
18 months   ki1101329-Keneba           GAMBIA                         [-2--1)     1618    436    235    201
18 months   ki1101329-Keneba           GAMBIA                         [-1-0)      1618    743    535    208
18 months   ki1114097-CMIN             BRAZIL                         >=0          111     54     47      7
18 months   ki1114097-CMIN             BRAZIL                         <-3          111      1      0      1
18 months   ki1114097-CMIN             BRAZIL                         [-3--2)      111      2      1      1
18 months   ki1114097-CMIN             BRAZIL                         [-2--1)      111     16     10      6
18 months   ki1114097-CMIN             BRAZIL                         [-1-0)       111     38     25     13
18 months   ki1114097-CMIN             PERU                           >=0            8      7      6      1
18 months   ki1114097-CMIN             PERU                           <-3            8      0      0      0
18 months   ki1114097-CMIN             PERU                           [-3--2)        8      0      0      0
18 months   ki1114097-CMIN             PERU                           [-2--1)        8      0      0      0
18 months   ki1114097-CMIN             PERU                           [-1-0)         8      1      1      0
18 months   ki1114097-CONTENT          PERU                           >=0            2      1      1      0
18 months   ki1114097-CONTENT          PERU                           <-3            2      0      0      0
18 months   ki1114097-CONTENT          PERU                           [-3--2)        2      0      0      0
18 months   ki1114097-CONTENT          PERU                           [-2--1)        2      0      0      0
18 months   ki1114097-CONTENT          PERU                           [-1-0)         2      1      1      0
18 months   ki1119695-PROBIT           BELARUS                        >=0          764    474    442     32
18 months   ki1119695-PROBIT           BELARUS                        <-3          764      0      0      0
18 months   ki1119695-PROBIT           BELARUS                        [-3--2)      764      0      0      0
18 months   ki1119695-PROBIT           BELARUS                        [-2--1)      764     54     44     10
18 months   ki1119695-PROBIT           BELARUS                        [-1-0)       764    236    199     37
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=0         1707    250    166     84
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       <-3         1707     60     21     39
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)     1707    177     64    113
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)     1707    501    223    278
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)      1707    719    422    297
18 months   ki1135781-COHORTS          GUATEMALA                      >=0          302     73     19     54
18 months   ki1135781-COHORTS          GUATEMALA                      <-3          302      5      0      5
18 months   ki1135781-COHORTS          GUATEMALA                      [-3--2)      302     33      2     31
18 months   ki1135781-COHORTS          GUATEMALA                      [-2--1)      302     95      7     88
18 months   ki1135781-COHORTS          GUATEMALA                      [-1-0)       302     96     17     79
18 months   ki1135781-COHORTS          PHILIPPINES                    >=0         2451    542    299    243
18 months   ki1135781-COHORTS          PHILIPPINES                    <-3         2451     39      9     30
18 months   ki1135781-COHORTS          PHILIPPINES                    [-3--2)     2451    138     25    113
18 months   ki1135781-COHORTS          PHILIPPINES                    [-2--1)     2451    579    168    411
18 months   ki1135781-COHORTS          PHILIPPINES                    [-1-0)      2451   1153    515    638
18 months   kiGH5241-JiVitA-4          BANGLADESH                     >=0         1044    248    173     75
18 months   kiGH5241-JiVitA-4          BANGLADESH                     <-3         1044     68     16     52
18 months   kiGH5241-JiVitA-4          BANGLADESH                     [-3--2)     1044    149     48    101
18 months   kiGH5241-JiVitA-4          BANGLADESH                     [-2--1)     1044    311    179    132
18 months   kiGH5241-JiVitA-4          BANGLADESH                     [-1-0)      1044    268    176     92
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=0          207     31     27      4
24 months   ki0047075b-MAL-ED          BANGLADESH                     <-3          207      4      0      4
24 months   ki0047075b-MAL-ED          BANGLADESH                     [-3--2)      207     29     10     19
24 months   ki0047075b-MAL-ED          BANGLADESH                     [-2--1)      207     73     38     35
24 months   ki0047075b-MAL-ED          BANGLADESH                     [-1-0)       207     70     38     32
24 months   ki0047075b-MAL-ED          BRAZIL                         >=0          169     96     94      2
24 months   ki0047075b-MAL-ED          BRAZIL                         <-3          169      0      0      0
24 months   ki0047075b-MAL-ED          BRAZIL                         [-3--2)      169      7      7      0
24 months   ki0047075b-MAL-ED          BRAZIL                         [-2--1)      169     17     15      2
24 months   ki0047075b-MAL-ED          BRAZIL                         [-1-0)       169     49     47      2
24 months   ki0047075b-MAL-ED          INDIA                          >=0          222     38     28     10
24 months   ki0047075b-MAL-ED          INDIA                          <-3          222      5      1      4
24 months   ki0047075b-MAL-ED          INDIA                          [-3--2)      222     22     10     12
24 months   ki0047075b-MAL-ED          INDIA                          [-2--1)      222     69     33     36
24 months   ki0047075b-MAL-ED          INDIA                          [-1-0)       222     88     57     31
24 months   ki0047075b-MAL-ED          NEPAL                          >=0          221     45     41      4
24 months   ki0047075b-MAL-ED          NEPAL                          <-3          221      3      0      3
24 months   ki0047075b-MAL-ED          NEPAL                          [-3--2)      221     15     10      5
24 months   ki0047075b-MAL-ED          NEPAL                          [-2--1)      221     52     38     14
24 months   ki0047075b-MAL-ED          NEPAL                          [-1-0)       221    106     87     19
24 months   ki0047075b-MAL-ED          PERU                           >=0          198     57     44     13
24 months   ki0047075b-MAL-ED          PERU                           <-3          198      3      2      1
24 months   ki0047075b-MAL-ED          PERU                           [-3--2)      198      6      0      6
24 months   ki0047075b-MAL-ED          PERU                           [-2--1)      198     35     17     18
24 months   ki0047075b-MAL-ED          PERU                           [-1-0)       198     97     63     34
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=0          238     89     60     29
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <-3          238      3      3      0
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [-3--2)      238      8      4      4
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [-2--1)      238     34     24     10
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [-1-0)       238    104     63     41
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=0          106     49     24     25
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <-3          106      0      0      0
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-3--2)      106      4      0      4
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-2--1)      106     15      4     11
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-1-0)       106     38     13     25
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=0          364     69     27     42
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <-3          364     12      3      9
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [-3--2)      364     30      2     28
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [-2--1)      364    106     24     82
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [-1-0)       364    147     49     98
24 months   ki1000108-IRC              INDIA                          >=0          403     61     51     10
24 months   ki1000108-IRC              INDIA                          <-3          403     12      2     10
24 months   ki1000108-IRC              INDIA                          [-3--2)      403     41     18     23
24 months   ki1000108-IRC              INDIA                          [-2--1)      403    133     67     66
24 months   ki1000108-IRC              INDIA                          [-1-0)       403    156     99     57
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=0           16      1      1      0
24 months   ki1017093-NIH-Birth        BANGLADESH                     <-3           16      0      0      0
24 months   ki1017093-NIH-Birth        BANGLADESH                     [-3--2)       16      3      1      2
24 months   ki1017093-NIH-Birth        BANGLADESH                     [-2--1)       16      8      0      8
24 months   ki1017093-NIH-Birth        BANGLADESH                     [-1-0)        16      4      1      3
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=0          577     51     43      8
24 months   ki1017093b-PROVIDE         BANGLADESH                     <-3          577      4      2      2
24 months   ki1017093b-PROVIDE         BANGLADESH                     [-3--2)      577     94     49     45
24 months   ki1017093b-PROVIDE         BANGLADESH                     [-2--1)      577    243    150     93
24 months   ki1017093b-PROVIDE         BANGLADESH                     [-1-0)       577    185    143     42
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=0          514     60     56      4
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <-3          514     17      5     12
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [-3--2)      514     81     47     34
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [-2--1)      514    197    147     50
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [-1-0)       514    159    127     32
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=0            6      3      2      1
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <-3            6      0      0      0
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-3--2)        6      0      0      0
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-2--1)        6      2      2      0
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-1-0)         6      1      1      0
24 months   ki1101329-Keneba           GAMBIA                         >=0         1435    284    230     54
24 months   ki1101329-Keneba           GAMBIA                         <-3         1435     19      7     12
24 months   ki1101329-Keneba           GAMBIA                         [-3--2)     1435     89     33     56
24 months   ki1101329-Keneba           GAMBIA                         [-2--1)     1435    397    222    175
24 months   ki1101329-Keneba           GAMBIA                         [-1-0)      1435    646    451    195
24 months   ki1114097-CMIN             PERU                           >=0            3      2      2      0
24 months   ki1114097-CMIN             PERU                           <-3            3      0      0      0
24 months   ki1114097-CMIN             PERU                           [-3--2)        3      0      0      0
24 months   ki1114097-CMIN             PERU                           [-2--1)        3      0      0      0
24 months   ki1114097-CMIN             PERU                           [-1-0)         3      1      1      0
24 months   ki1114097-CONTENT          PERU                           >=0            2      1      1      0
24 months   ki1114097-CONTENT          PERU                           <-3            2      0      0      0
24 months   ki1114097-CONTENT          PERU                           [-3--2)        2      0      0      0
24 months   ki1114097-CONTENT          PERU                           [-2--1)        2      0      0      0
24 months   ki1114097-CONTENT          PERU                           [-1-0)         2      1      1      0
24 months   ki1119695-PROBIT           BELARUS                        >=0         1619   1041    960     81
24 months   ki1119695-PROBIT           BELARUS                        <-3         1619      0      0      0
24 months   ki1119695-PROBIT           BELARUS                        [-3--2)     1619      0      0      0
24 months   ki1119695-PROBIT           BELARUS                        [-2--1)     1619    114     91     23
24 months   ki1119695-PROBIT           BELARUS                        [-1-0)      1619    464    406     58
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=0          455     55     29     26
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <-3          455     15      1     14
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)      455     57     11     46
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)      455    156     47    109
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)       455    172     71    101
24 months   ki1135781-COHORTS          GUATEMALA                      >=0          308     68     18     50
24 months   ki1135781-COHORTS          GUATEMALA                      <-3          308      5      0      5
24 months   ki1135781-COHORTS          GUATEMALA                      [-3--2)      308     35      1     34
24 months   ki1135781-COHORTS          GUATEMALA                      [-2--1)      308    103     10     93
24 months   ki1135781-COHORTS          GUATEMALA                      [-1-0)       308     97     19     78
24 months   ki1135781-COHORTS          INDIA                          >=0         4861    609    475    134
24 months   ki1135781-COHORTS          INDIA                          <-3         4861    161     27    134
24 months   ki1135781-COHORTS          INDIA                          [-3--2)     4861    598    218    380
24 months   ki1135781-COHORTS          INDIA                          [-2--1)     4861   1646    755    891
24 months   ki1135781-COHORTS          INDIA                          [-1-0)      4861   1847   1148    699
24 months   ki1135781-COHORTS          PHILIPPINES                    >=0         2404    519    276    243
24 months   ki1135781-COHORTS          PHILIPPINES                    <-3         2404     39      7     32
24 months   ki1135781-COHORTS          PHILIPPINES                    [-3--2)     2404    132     23    109
24 months   ki1135781-COHORTS          PHILIPPINES                    [-2--1)     2404    578    163    415
24 months   ki1135781-COHORTS          PHILIPPINES                    [-1-0)      2404   1136    456    680
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=0         4266    453    311    142
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <-3         4266    410    116    294
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [-3--2)     4266   1008    369    639
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [-2--1)     4266   1529    829    700
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [-1-0)      4266    866    584    282
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=0         1059    259    192     67
24 months   kiGH5241-JiVitA-4          BANGLADESH                     <-3         1059     67     22     45
24 months   kiGH5241-JiVitA-4          BANGLADESH                     [-3--2)     1059    144     59     85
24 months   kiGH5241-JiVitA-4          BANGLADESH                     [-2--1)     1059    318    183    135
24 months   kiGH5241-JiVitA-4          BANGLADESH                     [-1-0)      1059    271    196     75


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
* agecat: 12 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
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
* agecat: 18 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
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
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
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
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
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
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
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
* agecat: 9 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
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
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
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
* agecat: 3 months, studyid: ki1000108-IRC, country: INDIA
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
* agecat: 6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
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
* agecat: 9 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 9 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 9 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 9 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
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
* agecat: 18 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 18 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 18 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 18 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 18 months, studyid: ki1119695-PROBIT, country: BELARUS
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
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots

```
## Warning: Removed 55 rows containing missing values (geom_errorbar).
```

![](/tmp/ecfa00a0-f446-4958-9c3a-d7cfff55e005/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->


```
## Warning: Removed 92 rows containing missing values (geom_errorbar).
```

![](/tmp/ecfa00a0-f446-4958-9c3a-d7cfff55e005/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


```
## Warning: Removed 11 rows containing missing values (geom_errorbar).
```

![](/tmp/ecfa00a0-f446-4958-9c3a-d7cfff55e005/REPORT_files/figure-html/plot_paf-1.png)<!-- -->


```
## Warning: Removed 11 rows containing missing values (geom_errorbar).
```

![](/tmp/ecfa00a0-f446-4958-9c3a-d7cfff55e005/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=0                  NA                0.0135604   0.0095347   0.0175861
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <-3                  NA                0.6361386   0.5892230   0.6830542
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)              NA                0.3566553   0.3292303   0.3840803
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)              NA                0.1330344   0.1215251   0.1445437
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)               NA                0.0468804   0.0414109   0.0523500
Birth       ki1135781-COHORTS          INDIA                          >=0                  NA                0.0078947   0.0016023   0.0141872
Birth       ki1135781-COHORTS          INDIA                          <-3                  NA                0.7922535   0.7450667   0.8394403
Birth       ki1135781-COHORTS          INDIA                          [-3--2)              NA                0.3646922   0.3325383   0.3968462
Birth       ki1135781-COHORTS          INDIA                          [-2--1)              NA                0.0886525   0.0769225   0.1003825
Birth       ki1135781-COHORTS          INDIA                          [-1-0)               NA                0.0185784   0.0132593   0.0238974
3 months    ki1000109-EE               PAKISTAN                       >=0                  NA                0.1764706   0.0481586   0.3047826
3 months    ki1000109-EE               PAKISTAN                       <-3                  NA                0.8043478   0.6895546   0.9191411
3 months    ki1000109-EE               PAKISTAN                       [-3--2)              NA                0.8082192   0.7177841   0.8986542
3 months    ki1000109-EE               PAKISTAN                       [-2--1)              NA                0.5762712   0.4869926   0.6655498
3 months    ki1000109-EE               PAKISTAN                       [-1-0)               NA                0.4313725   0.3351291   0.5276160
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=0                  NA                0.0162767   0.0083647   0.0241887
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <-3                  NA                0.5714286   0.3597256   0.7831315
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-3--2)              NA                0.2444444   0.1188527   0.3700362
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-2--1)              NA                0.1535836   0.1122908   0.1948764
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-1-0)               NA                0.0541126   0.0395218   0.0687033
3 months    ki1101329-Keneba           GAMBIA                         >=0                  NA                0.0277778   0.0107973   0.0447582
3 months    ki1101329-Keneba           GAMBIA                         <-3                  NA                0.7500000   0.5767140   0.9232860
3 months    ki1101329-Keneba           GAMBIA                         [-3--2)              NA                0.5765766   0.4846327   0.6685205
3 months    ki1101329-Keneba           GAMBIA                         [-2--1)              NA                0.1900990   0.1558673   0.2243307
3 months    ki1101329-Keneba           GAMBIA                         [-1-0)               NA                0.0709838   0.0532173   0.0887503
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=0                  NA                0.0429958   0.0344469   0.0515448
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       <-3                  NA                0.7777778   0.7255032   0.8300523
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)              NA                0.4972222   0.4606990   0.5337454
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)              NA                0.2700730   0.2514850   0.2886610
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)               NA                0.1037711   0.0941313   0.1134110
3 months    ki1135781-COHORTS          INDIA                          >=0                  NA                0.0178571   0.0082364   0.0274779
3 months    ki1135781-COHORTS          INDIA                          <-3                  NA                0.7647059   0.7142920   0.8151197
3 months    ki1135781-COHORTS          INDIA                          [-3--2)              NA                0.3538462   0.3216037   0.3860886
3 months    ki1135781-COHORTS          INDIA                          [-2--1)              NA                0.1527967   0.1377577   0.1678358
3 months    ki1135781-COHORTS          INDIA                          [-1-0)               NA                0.0400992   0.0322803   0.0479181
3 months    ki1135781-COHORTS          PHILIPPINES                    >=0                  NA                0.0097720   0.0019898   0.0175541
3 months    ki1135781-COHORTS          PHILIPPINES                    <-3                  NA                0.6666667   0.5473660   0.7859673
3 months    ki1135781-COHORTS          PHILIPPINES                    [-3--2)              NA                0.4465409   0.3692551   0.5238267
3 months    ki1135781-COHORTS          PHILIPPINES                    [-2--1)              NA                0.2023121   0.1723758   0.2322485
3 months    ki1135781-COHORTS          PHILIPPINES                    [-1-0)               NA                0.0696784   0.0558676   0.0834892
3 months    kiGH5241-JiVitA-3          BANGLADESH                     >=0                  NA                0.1167401          NA          NA
3 months    kiGH5241-JiVitA-3          BANGLADESH                     <-3                  NA                0.8009748          NA          NA
3 months    kiGH5241-JiVitA-3          BANGLADESH                     [-3--2)              NA                0.4523055          NA          NA
3 months    kiGH5241-JiVitA-3          BANGLADESH                     [-2--1)              NA                0.1761798          NA          NA
3 months    kiGH5241-JiVitA-3          BANGLADESH                     [-1-0)               NA                0.0757322          NA          NA
3 months    kiGH5241-JiVitA-4          BANGLADESH                     >=0                  NA                0.1120690          NA          NA
3 months    kiGH5241-JiVitA-4          BANGLADESH                     <-3                  NA                0.8139535          NA          NA
3 months    kiGH5241-JiVitA-4          BANGLADESH                     [-3--2)              NA                0.4640000          NA          NA
3 months    kiGH5241-JiVitA-4          BANGLADESH                     [-2--1)              NA                0.1701245          NA          NA
3 months    kiGH5241-JiVitA-4          BANGLADESH                     [-1-0)               NA                0.1273585          NA          NA
6 months    ki1000108-IRC              INDIA                          >=0                  NA                0.1311475   0.0463314   0.2159637
6 months    ki1000108-IRC              INDIA                          <-3                  NA                0.5454545   0.2508348   0.8400743
6 months    ki1000108-IRC              INDIA                          [-3--2)              NA                0.3902439   0.2407428   0.5397450
6 months    ki1000108-IRC              INDIA                          [-2--1)              NA                0.3106061   0.2315670   0.3896452
6 months    ki1000108-IRC              INDIA                          [-1-0)               NA                0.1538462   0.0971575   0.2105348
6 months    ki1000109-EE               PAKISTAN                       >=0                  NA                0.2285714   0.0892679   0.3678750
6 months    ki1000109-EE               PAKISTAN                       <-3                  NA                0.8043478   0.6895529   0.9191428
6 months    ki1000109-EE               PAKISTAN                       [-3--2)              NA                0.7246377   0.6190956   0.8301797
6 months    ki1000109-EE               PAKISTAN                       [-2--1)              NA                0.5344828   0.4435871   0.6253784
6 months    ki1000109-EE               PAKISTAN                       [-1-0)               NA                0.3203883   0.2301508   0.4106259
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=0                  NA                0.1794872          NA          NA
6 months    ki1000304b-SAS-CompFeed    INDIA                          <-3                  NA                0.7916667          NA          NA
6 months    ki1000304b-SAS-CompFeed    INDIA                          [-3--2)              NA                0.3658537          NA          NA
6 months    ki1000304b-SAS-CompFeed    INDIA                          [-2--1)              NA                0.3125000          NA          NA
6 months    ki1000304b-SAS-CompFeed    INDIA                          [-1-0)               NA                0.1506849          NA          NA
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=0                  NA                0.0543478   0.0079909   0.1007048
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <-3                  NA                0.6363636   0.4352104   0.8375169
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [-3--2)              NA                0.4166667   0.3236217   0.5097116
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [-2--1)              NA                0.2324723   0.1821454   0.2827992
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [-1-0)               NA                0.1036036   0.0634880   0.1437192
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=0                  NA                0.0639535   0.0475971   0.0803099
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <-3                  NA                0.3529412   0.1257169   0.5801655
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-3--2)              NA                0.2820513   0.1407863   0.4233163
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-2--1)              NA                0.1698842   0.1241383   0.2156301
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-1-0)               NA                0.0934132   0.0736698   0.1131566
6 months    ki1101329-Keneba           GAMBIA                         >=0                  NA                0.0569801   0.0327228   0.0812374
6 months    ki1101329-Keneba           GAMBIA                         <-3                  NA                0.5833333   0.3860360   0.7806307
6 months    ki1101329-Keneba           GAMBIA                         [-3--2)              NA                0.4230769   0.3280983   0.5180556
6 months    ki1101329-Keneba           GAMBIA                         [-2--1)              NA                0.2012579   0.1652668   0.2372489
6 months    ki1101329-Keneba           GAMBIA                         [-1-0)               NA                0.0911458   0.0707844   0.1115073
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=0                  NA                0.0562660   0.0460507   0.0664812
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <-3                  NA                0.6084906   0.5427846   0.6741965
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)              NA                0.3846154   0.3468328   0.4223979
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)              NA                0.2514110   0.2321498   0.2706721
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)               NA                0.1133257   0.1028413   0.1238101
6 months    ki1135781-COHORTS          INDIA                          >=0                  NA                0.0315501   0.0188602   0.0442400
6 months    ki1135781-COHORTS          INDIA                          <-3                  NA                0.6883117   0.6285766   0.7480468
6 months    ki1135781-COHORTS          INDIA                          [-3--2)              NA                0.3629630   0.3298458   0.3960802
6 months    ki1135781-COHORTS          INDIA                          [-2--1)              NA                0.2219615   0.2043162   0.2396069
6 months    ki1135781-COHORTS          INDIA                          [-1-0)               NA                0.0894068   0.0778942   0.1009194
6 months    ki1135781-COHORTS          PHILIPPINES                    >=0                  NA                0.0862069   0.0633609   0.1090529
6 months    ki1135781-COHORTS          PHILIPPINES                    <-3                  NA                0.6153846   0.4831289   0.7476404
6 months    ki1135781-COHORTS          PHILIPPINES                    [-3--2)              NA                0.4868421   0.4073677   0.5663165
6 months    ki1135781-COHORTS          PHILIPPINES                    [-2--1)              NA                0.3110420   0.2752546   0.3468294
6 months    ki1135781-COHORTS          PHILIPPINES                    [-1-0)               NA                0.1649151   0.1442308   0.1855994
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=0                  NA                0.1061755          NA          NA
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <-3                  NA                0.6829590          NA          NA
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [-3--2)              NA                0.4081525          NA          NA
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [-2--1)              NA                0.2037649          NA          NA
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [-1-0)               NA                0.0979229          NA          NA
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >=0                  NA                0.1038462          NA          NA
6 months    kiGH5241-JiVitA-4          BANGLADESH                     <-3                  NA                0.6885246          NA          NA
6 months    kiGH5241-JiVitA-4          BANGLADESH                     [-3--2)              NA                0.4598540          NA          NA
6 months    kiGH5241-JiVitA-4          BANGLADESH                     [-2--1)              NA                0.2193548          NA          NA
6 months    kiGH5241-JiVitA-4          BANGLADESH                     [-1-0)               NA                0.1524823          NA          NA
9 months    ki1000109-EE               PAKISTAN                       >=0                  NA                0.2647059   0.1162081   0.4132037
9 months    ki1000109-EE               PAKISTAN                       <-3                  NA                0.8297872   0.7221958   0.9373787
9 months    ki1000109-EE               PAKISTAN                       [-3--2)              NA                0.7910448   0.6935600   0.8885296
9 months    ki1000109-EE               PAKISTAN                       [-2--1)              NA                0.5877193   0.4972344   0.6782042
9 months    ki1000109-EE               PAKISTAN                       [-1-0)               NA                0.4554455   0.3581875   0.5527035
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=0                  NA                0.0526316   0.0076974   0.0975657
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     <-3                  NA                0.6363636   0.4352086   0.8375187
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     [-3--2)              NA                0.4300000   0.3328981   0.5271019
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     [-2--1)              NA                0.2686567   0.2155502   0.3217633
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     [-1-0)               NA                0.1357466   0.0905564   0.1809369
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=0                  NA                0.0907928   0.0706498   0.1109359
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <-3                  NA                0.4000000   0.1520120   0.6479880
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-3--2)              NA                0.3333333   0.1645988   0.5020678
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-2--1)              NA                0.2681818   0.2096252   0.3267384
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-1-0)               NA                0.1602210   0.1334944   0.1869476
9 months    ki1101329-Keneba           GAMBIA                         >=0                  NA                0.0695652   0.0427115   0.0964189
9 months    ki1101329-Keneba           GAMBIA                         <-3                  NA                0.5600000   0.3653632   0.7546368
9 months    ki1101329-Keneba           GAMBIA                         [-3--2)              NA                0.4095238   0.3154387   0.5036089
9 months    ki1101329-Keneba           GAMBIA                         [-2--1)              NA                0.2938689   0.2528047   0.3349331
9 months    ki1101329-Keneba           GAMBIA                         [-1-0)               NA                0.1222367   0.0990787   0.1453947
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=0                  NA                0.0804111   0.0673053   0.0935169
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       <-3                  NA                0.5750000   0.5064843   0.6435157
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)              NA                0.3977087   0.3588988   0.4365185
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)              NA                0.2736397   0.2535550   0.2937245
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)               NA                0.1530984   0.1407972   0.1653996
9 months    ki1135781-COHORTS          INDIA                          >=0                  NA                0.0667702   0.0474891   0.0860513
9 months    ki1135781-COHORTS          INDIA                          <-3                  NA                0.6930693   0.6294599   0.7566787
9 months    ki1135781-COHORTS          INDIA                          [-3--2)              NA                0.4289898   0.3918684   0.4661111
9 months    ki1135781-COHORTS          INDIA                          [-2--1)              NA                0.3105895   0.2893982   0.3317808
9 months    ki1135781-COHORTS          INDIA                          [-1-0)               NA                0.1677324   0.1514897   0.1839752
9 months    ki1135781-COHORTS          PHILIPPINES                    >=0                  NA                0.1323024   0.1047705   0.1598343
9 months    ki1135781-COHORTS          PHILIPPINES                    <-3                  NA                0.6153846   0.4831289   0.7476403
9 months    ki1135781-COHORTS          PHILIPPINES                    [-3--2)              NA                0.5405405   0.4602367   0.6208444
9 months    ki1135781-COHORTS          PHILIPPINES                    [-2--1)              NA                0.3941267   0.3564662   0.4317872
9 months    ki1135781-COHORTS          PHILIPPINES                    [-1-0)               NA                0.2308313   0.2073646   0.2542980
9 months    kiGH5241-JiVitA-4          BANGLADESH                     >=0                  NA                0.1520913          NA          NA
9 months    kiGH5241-JiVitA-4          BANGLADESH                     <-3                  NA                0.6119403          NA          NA
9 months    kiGH5241-JiVitA-4          BANGLADESH                     [-3--2)              NA                0.5138889          NA          NA
9 months    kiGH5241-JiVitA-4          BANGLADESH                     [-2--1)              NA                0.2608696          NA          NA
9 months    kiGH5241-JiVitA-4          BANGLADESH                     [-1-0)               NA                0.1691176          NA          NA
12 months   ki1000108-IRC              INDIA                          >=0                  NA                0.1639344   0.0709132   0.2569556
12 months   ki1000108-IRC              INDIA                          <-3                  NA                0.5454545   0.2508339   0.8400752
12 months   ki1000108-IRC              INDIA                          [-3--2)              NA                0.4634146   0.3105863   0.6162430
12 months   ki1000108-IRC              INDIA                          [-2--1)              NA                0.4045802   0.3204271   0.4887332
12 months   ki1000108-IRC              INDIA                          [-1-0)               NA                0.1666667   0.1081118   0.2252215
12 months   ki1000109-EE               PAKISTAN                       >=0                  NA                0.3437500   0.1789552   0.5085448
12 months   ki1000109-EE               PAKISTAN                       <-3                  NA                0.8666667   0.7672060   0.9661274
12 months   ki1000109-EE               PAKISTAN                       [-3--2)              NA                0.8769231   0.7969443   0.9569019
12 months   ki1000109-EE               PAKISTAN                       [-2--1)              NA                0.7345133   0.6529782   0.8160483
12 months   ki1000109-EE               PAKISTAN                       [-1-0)               NA                0.6262626   0.5308279   0.7216973
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=0                  NA                0.1019417   0.0780782   0.1258052
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <-3                  NA                0.5000000   0.2170045   0.7829955
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-3--2)              NA                0.3200000   0.1370807   0.5029193
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-2--1)              NA                0.3202247   0.2516601   0.3887894
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-1-0)               NA                0.1711409   0.1408931   0.2013888
12 months   ki1101329-Keneba           GAMBIA                         >=0                  NA                0.1291291   0.0931004   0.1651579
12 months   ki1101329-Keneba           GAMBIA                         <-3                  NA                0.6818182   0.4871284   0.8765080
12 months   ki1101329-Keneba           GAMBIA                         [-3--2)              NA                0.5894737   0.4905219   0.6884254
12 months   ki1101329-Keneba           GAMBIA                         [-2--1)              NA                0.3611738   0.3164303   0.4059173
12 months   ki1101329-Keneba           GAMBIA                         [-1-0)               NA                0.1853389   0.1570064   0.2136714
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=0                  NA                0.1204461   0.1030502   0.1378420
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       <-3                  NA                0.5820106   0.5116876   0.6523336
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)              NA                0.4267857   0.3858172   0.4677542
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)              NA                0.3282139   0.3062623   0.3501654
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)               NA                0.1934700   0.1790396   0.2079003
12 months   ki1135781-COHORTS          INDIA                          >=0                  NA                0.1068966   0.0817481   0.1320450
12 months   ki1135781-COHORTS          INDIA                          <-3                  NA                0.7559524   0.6909958   0.8209090
12 months   ki1135781-COHORTS          INDIA                          [-3--2)              NA                0.5335570   0.4935018   0.5736123
12 months   ki1135781-COHORTS          INDIA                          [-2--1)              NA                0.4020872   0.3782743   0.4259000
12 months   ki1135781-COHORTS          INDIA                          [-1-0)               NA                0.2395210   0.2200021   0.2590398
12 months   ki1135781-COHORTS          PHILIPPINES                    >=0                  NA                0.2296820   0.1950224   0.2643416
12 months   ki1135781-COHORTS          PHILIPPINES                    <-3                  NA                0.7446809   0.6199967   0.8693650
12 months   ki1135781-COHORTS          PHILIPPINES                    [-3--2)              NA                0.6524823   0.5738688   0.7310957
12 months   ki1135781-COHORTS          PHILIPPINES                    [-2--1)              NA                0.5040519   0.4645928   0.5435109
12 months   ki1135781-COHORTS          PHILIPPINES                    [-1-0)               NA                0.3512361   0.3239132   0.3785591
12 months   kiGH5241-JiVitA-3          BANGLADESH                     >=0                  NA                0.2185864          NA          NA
12 months   kiGH5241-JiVitA-3          BANGLADESH                     <-3                  NA                0.7084592          NA          NA
12 months   kiGH5241-JiVitA-3          BANGLADESH                     [-3--2)              NA                0.5637343          NA          NA
12 months   kiGH5241-JiVitA-3          BANGLADESH                     [-2--1)              NA                0.3607061          NA          NA
12 months   kiGH5241-JiVitA-3          BANGLADESH                     [-1-0)               NA                0.2226004          NA          NA
12 months   kiGH5241-JiVitA-4          BANGLADESH                     >=0                  NA                0.1739130          NA          NA
12 months   kiGH5241-JiVitA-4          BANGLADESH                     <-3                  NA                0.7464789          NA          NA
12 months   kiGH5241-JiVitA-4          BANGLADESH                     [-3--2)              NA                0.5686275          NA          NA
12 months   kiGH5241-JiVitA-4          BANGLADESH                     [-2--1)              NA                0.2861635          NA          NA
12 months   kiGH5241-JiVitA-4          BANGLADESH                     [-1-0)               NA                0.2372263          NA          NA
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=0                  NA                0.0945946   0.0278633   0.1613259
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     <-3                  NA                0.6521739   0.4573736   0.8469743
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     [-3--2)              NA                0.5000000   0.4009287   0.5990713
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     [-2--1)              NA                0.3004115   0.2427259   0.3580971
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     [-1-0)               NA                0.2397959   0.1799756   0.2996163
18 months   ki1101329-Keneba           GAMBIA                         >=0                  NA                0.1473354   0.1084282   0.1862426
18 months   ki1101329-Keneba           GAMBIA                         <-3                  NA                0.6363636   0.4352890   0.8374383
18 months   ki1101329-Keneba           GAMBIA                         [-3--2)              NA                0.6734694   0.5805962   0.7663425
18 months   ki1101329-Keneba           GAMBIA                         [-2--1)              NA                0.4610092   0.4142050   0.5078133
18 months   ki1101329-Keneba           GAMBIA                         [-1-0)               NA                0.2799462   0.2476532   0.3122391
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=0                  NA                0.3360000   0.2774322   0.3945678
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       <-3                  NA                0.6500000   0.5292769   0.7707231
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)              NA                0.6384181   0.5676162   0.7092199
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)              NA                0.5548902   0.5113597   0.5984207
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)               NA                0.4130737   0.3770726   0.4490749
18 months   ki1135781-COHORTS          PHILIPPINES                    >=0                  NA                0.4483395   0.4064624   0.4902166
18 months   ki1135781-COHORTS          PHILIPPINES                    <-3                  NA                0.7692308   0.6369729   0.9014887
18 months   ki1135781-COHORTS          PHILIPPINES                    [-3--2)              NA                0.8188406   0.7545678   0.8831134
18 months   ki1135781-COHORTS          PHILIPPINES                    [-2--1)              NA                0.7098446   0.6728707   0.7468184
18 months   ki1135781-COHORTS          PHILIPPINES                    [-1-0)               NA                0.5533391   0.5246375   0.5820408
18 months   kiGH5241-JiVitA-4          BANGLADESH                     >=0                  NA                0.3024194          NA          NA
18 months   kiGH5241-JiVitA-4          BANGLADESH                     <-3                  NA                0.7647059          NA          NA
18 months   kiGH5241-JiVitA-4          BANGLADESH                     [-3--2)              NA                0.6778523          NA          NA
18 months   kiGH5241-JiVitA-4          BANGLADESH                     [-2--1)              NA                0.4244373          NA          NA
18 months   kiGH5241-JiVitA-4          BANGLADESH                     [-1-0)               NA                0.3432836          NA          NA
24 months   ki1101329-Keneba           GAMBIA                         >=0                  NA                0.1901408   0.1444864   0.2357953
24 months   ki1101329-Keneba           GAMBIA                         <-3                  NA                0.6315789   0.4146044   0.8485535
24 months   ki1101329-Keneba           GAMBIA                         [-3--2)              NA                0.6292135   0.5288293   0.7295977
24 months   ki1101329-Keneba           GAMBIA                         [-2--1)              NA                0.4408060   0.3919510   0.4896611
24 months   ki1101329-Keneba           GAMBIA                         [-1-0)               NA                0.3018576   0.2664451   0.3372701
24 months   ki1135781-COHORTS          INDIA                          >=0                  NA                0.2200328   0.1871275   0.2529382
24 months   ki1135781-COHORTS          INDIA                          <-3                  NA                0.8322981   0.7745832   0.8900131
24 months   ki1135781-COHORTS          INDIA                          [-3--2)              NA                0.6354515   0.5968716   0.6740314
24 months   ki1135781-COHORTS          INDIA                          [-2--1)              NA                0.5413123   0.5172376   0.5653869
24 months   ki1135781-COHORTS          INDIA                          [-1-0)               NA                0.3784515   0.3563307   0.4005724
24 months   ki1135781-COHORTS          PHILIPPINES                    >=0                  NA                0.4682081   0.4252698   0.5111464
24 months   ki1135781-COHORTS          PHILIPPINES                    <-3                  NA                0.8205128   0.7000465   0.9409791
24 months   ki1135781-COHORTS          PHILIPPINES                    [-3--2)              NA                0.8257576   0.7610352   0.8904800
24 months   ki1135781-COHORTS          PHILIPPINES                    [-2--1)              NA                0.7179931   0.6813017   0.7546845
24 months   ki1135781-COHORTS          PHILIPPINES                    [-1-0)               NA                0.5985915   0.5700809   0.6271022
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=0                  NA                0.3134658          NA          NA
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <-3                  NA                0.7170732          NA          NA
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [-3--2)              NA                0.6339286          NA          NA
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [-2--1)              NA                0.4578156          NA          NA
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [-1-0)               NA                0.3256351          NA          NA
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=0                  NA                0.2586873          NA          NA
24 months   kiGH5241-JiVitA-4          BANGLADESH                     <-3                  NA                0.6716418          NA          NA
24 months   kiGH5241-JiVitA-4          BANGLADESH                     [-3--2)              NA                0.5902778          NA          NA
24 months   kiGH5241-JiVitA-4          BANGLADESH                     [-2--1)              NA                0.4245283          NA          NA
24 months   kiGH5241-JiVitA-4          BANGLADESH                     [-1-0)               NA                0.2767528          NA          NA


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1035430   0.0984652   0.1086208
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                0.1191804   0.1113849   0.1269758
3 months    ki1000109-EE               PAKISTAN                       NA                   NA                0.5737265   0.5234722   0.6239808
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0591350   0.0494210   0.0688491
3 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.1358846   0.1200634   0.1517059
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1779985   0.1701660   0.1858309
3 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.1474547   0.1388100   0.1560995
3 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1229248   0.1108273   0.1350222
3 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2766009          NA          NA
3 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2192263          NA          NA
6 months    ki1000108-IRC              INDIA                          NA                   NA                0.2369077   0.1952403   0.2785751
6 months    ki1000109-EE               PAKISTAN                       NA                   NA                0.5149051   0.4638428   0.5659675
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2756098          NA          NA
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2097902   0.1799252   0.2396552
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0965174   0.0836046   0.1094302
6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.1415313   0.1250727   0.1579900
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1660012   0.1579791   0.1740234
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.1852739   0.1756495   0.1948983
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2102102   0.1947347   0.2256857
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2617725          NA          NA
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2314286          NA          NA
9 months    ki1000109-EE               PAKISTAN                       NA                   NA                0.5895317   0.5388574   0.6402059
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2322946   0.2011222   0.2634670
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1479390   0.1313989   0.1644791
9 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.1828771   0.1645871   0.2011671
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1977778   0.1888513   0.2067043
9 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.2569522   0.2452903   0.2686140
9 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2736132   0.2566936   0.2905328
9 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2668539          NA          NA
12 months   ki1000108-IRC              INDIA                          NA                   NA                0.2850000   0.2407068   0.3292932
12 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.7118644   0.6646192   0.7591096
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1651505   0.1458917   0.1844092
12 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.2524752   0.2312875   0.2736630
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2443916   0.2341249   0.2546583
12 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.3330561   0.3197355   0.3463767
12 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.3852201   0.3663059   0.4041344
12 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.3966815          NA          NA
12 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.3180543          NA          NA
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.3012618   0.2655201   0.3370036
18 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.3312732   0.3083323   0.3542141
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.4751025   0.4514057   0.4987993
18 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.5854753   0.5659681   0.6049825
18 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.4329502          NA          NA
24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.3428571   0.3182897   0.3674246
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.4603991   0.4463860   0.4744122
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6152246   0.5957714   0.6346779
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4821847          NA          NA
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.3843248          NA          NA


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level       estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ------------  -----------  -----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=0                  >=0                 1.0000000    1.0000000     1.000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       <-3                  >=0                46.9115243   34.5487263    63.698183
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)              >=0                26.3012541   19.3549975    35.740432
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)              >=0                 9.8105120    7.2011189    13.365443
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)               >=0                 3.4571603    2.5129954     4.756060
Birth       ki1135781-COHORTS          INDIA                          >=0                  >=0                 1.0000000    1.0000000     1.000000
Birth       ki1135781-COHORTS          INDIA                          <-3                  >=0               100.3521122   45.1240621   223.174642
Birth       ki1135781-COHORTS          INDIA                          [-3--2)              >=0                46.1943474   20.7168753   103.003841
Birth       ki1135781-COHORTS          INDIA                          [-2--1)              >=0                11.2293144    5.0056767    25.190900
Birth       ki1135781-COHORTS          INDIA                          [-1-0)               >=0                 2.3532579    1.0089312     5.488801
3 months    ki1000109-EE               PAKISTAN                       >=0                  >=0                 1.0000000    1.0000000     1.000000
3 months    ki1000109-EE               PAKISTAN                       <-3                  >=0                 4.5579710    2.1725517     9.562534
3 months    ki1000109-EE               PAKISTAN                       [-3--2)              >=0                 4.5799087    2.1946406     9.557630
3 months    ki1000109-EE               PAKISTAN                       [-2--1)              >=0                 3.2655367    1.5527087     6.867824
3 months    ki1000109-EE               PAKISTAN                       [-1-0)               >=0                 2.4444444    1.1425424     5.229835
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=0                  >=0                 1.0000000    1.0000000     1.000000
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <-3                  >=0                35.1071388   19.0529667    64.688676
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-3--2)              >=0                15.0180538    7.4035618    30.463978
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-2--1)              >=0                 9.4357924    5.4141476    16.444727
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-1-0)               >=0                 3.3245397    1.9068665     5.796192
3 months    ki1101329-Keneba           GAMBIA                         >=0                  >=0                 1.0000000    1.0000000     1.000000
3 months    ki1101329-Keneba           GAMBIA                         <-3                  >=0                27.0000000   14.0459526    51.901072
3 months    ki1101329-Keneba           GAMBIA                         [-3--2)              >=0                20.7567568   11.0355186    39.041477
3 months    ki1101329-Keneba           GAMBIA                         [-2--1)              >=0                 6.8435644    3.6184367    12.943262
3 months    ki1101329-Keneba           GAMBIA                         [-1-0)               >=0                 2.5554172    1.3200436     4.946925
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=0                  >=0                 1.0000000    1.0000000     1.000000
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       <-3                  >=0                18.0896047   14.6648413    22.314173
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)              >=0                11.5644259    9.3555236    14.294865
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)              >=0                 6.2813747    5.0895091     7.752352
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)               >=0                 2.4135155    1.9379324     3.005810
3 months    ki1135781-COHORTS          INDIA                          >=0                  >=0                 1.0000000    1.0000000     1.000000
3 months    ki1135781-COHORTS          INDIA                          <-3                  >=0                42.8235279   24.8860318    73.690115
3 months    ki1135781-COHORTS          INDIA                          [-3--2)              >=0                19.8153839   11.4735566    34.222121
3 months    ki1135781-COHORTS          INDIA                          [-2--1)              >=0                 8.5566163    4.9482087    14.796402
3 months    ki1135781-COHORTS          INDIA                          [-1-0)               >=0                 2.2455559    1.2661630     3.982521
3 months    ki1135781-COHORTS          PHILIPPINES                    >=0                  >=0                 1.0000000    1.0000000     1.000000
3 months    ki1135781-COHORTS          PHILIPPINES                    <-3                  >=0                68.2222222   30.1606669   154.315938
3 months    ki1135781-COHORTS          PHILIPPINES                    [-3--2)              >=0                45.6960168   20.2275834   103.231607
3 months    ki1135781-COHORTS          PHILIPPINES                    [-2--1)              >=0                20.7032755    9.2099839    46.539236
3 months    ki1135781-COHORTS          PHILIPPINES                    [-1-0)               >=0                 7.1304237    3.1383651    16.200455
3 months    kiGH5241-JiVitA-3          BANGLADESH                     >=0                  >=0                 1.0000000           NA           NA
3 months    kiGH5241-JiVitA-3          BANGLADESH                     <-3                  >=0                 6.8611805           NA           NA
3 months    kiGH5241-JiVitA-3          BANGLADESH                     [-3--2)              >=0                 3.8744662           NA           NA
3 months    kiGH5241-JiVitA-3          BANGLADESH                     [-2--1)              >=0                 1.5091626           NA           NA
3 months    kiGH5241-JiVitA-3          BANGLADESH                     [-1-0)               >=0                 0.6487250           NA           NA
3 months    kiGH5241-JiVitA-4          BANGLADESH                     >=0                  >=0                 1.0000000           NA           NA
3 months    kiGH5241-JiVitA-4          BANGLADESH                     <-3                  >=0                 7.2629696           NA           NA
3 months    kiGH5241-JiVitA-4          BANGLADESH                     [-3--2)              >=0                 4.1403077           NA           NA
3 months    kiGH5241-JiVitA-4          BANGLADESH                     [-2--1)              >=0                 1.5180338           NA           NA
3 months    kiGH5241-JiVitA-4          BANGLADESH                     [-1-0)               >=0                 1.1364296           NA           NA
6 months    ki1000108-IRC              INDIA                          >=0                  >=0                 1.0000000    1.0000000     1.000000
6 months    ki1000108-IRC              INDIA                          <-3                  >=0                 4.1590909    1.7908365     9.659194
6 months    ki1000108-IRC              INDIA                          [-3--2)              >=0                 2.9756098    1.4032277     6.309919
6 months    ki1000108-IRC              INDIA                          [-2--1)              >=0                 2.3683712    1.1820112     4.745456
6 months    ki1000108-IRC              INDIA                          [-1-0)               >=0                 1.1730769    0.5572738     2.469360
6 months    ki1000109-EE               PAKISTAN                       >=0                  >=0                 1.0000000    1.0000000     1.000000
6 months    ki1000109-EE               PAKISTAN                       <-3                  >=0                 3.5190217    1.8818261     6.580584
6 months    ki1000109-EE               PAKISTAN                       [-3--2)              >=0                 3.1702899    1.6941956     5.932454
6 months    ki1000109-EE               PAKISTAN                       [-2--1)              >=0                 2.3383621    1.2419902     4.402561
6 months    ki1000109-EE               PAKISTAN                       [-1-0)               >=0                 1.4016990    0.7162675     2.743054
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=0                  >=0                 1.0000000           NA           NA
6 months    ki1000304b-SAS-CompFeed    INDIA                          <-3                  >=0                 4.4107143           NA           NA
6 months    ki1000304b-SAS-CompFeed    INDIA                          [-3--2)              >=0                 2.0383275           NA           NA
6 months    ki1000304b-SAS-CompFeed    INDIA                          [-2--1)              >=0                 1.7410714           NA           NA
6 months    ki1000304b-SAS-CompFeed    INDIA                          [-1-0)               >=0                 0.8395303           NA           NA
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=0                  >=0                 1.0000000    1.0000000     1.000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <-3                  >=0                11.7090909    4.7148190    29.079124
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [-3--2)              >=0                 7.6666667    3.1745543    18.515285
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [-2--1)              >=0                 4.2774908    1.7742096    10.312720
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [-1-0)               >=0                 1.9063063    0.7470885     4.864221
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=0                  >=0                 1.0000000    1.0000000     1.000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <-3                  >=0                 5.5187166    2.7604763    11.032963
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-3--2)              >=0                 4.4102564    2.5132155     7.739234
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-2--1)              >=0                 2.6563707    1.8323225     3.851017
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-1-0)               >=0                 1.4606424    1.0482172     2.035338
6 months    ki1101329-Keneba           GAMBIA                         >=0                  >=0                 1.0000000    1.0000000     1.000000
6 months    ki1101329-Keneba           GAMBIA                         <-3                  >=0                10.2375000    5.9437455    17.633058
6 months    ki1101329-Keneba           GAMBIA                         [-3--2)              >=0                 7.4250000    4.5885833    12.014738
6 months    ki1101329-Keneba           GAMBIA                         [-2--1)              >=0                 3.5320755    2.2258403     5.604875
6 months    ki1101329-Keneba           GAMBIA                         [-1-0)               >=0                 1.5996094    0.9890509     2.587076
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=0                  >=0                 1.0000000    1.0000000     1.000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <-3                  >=0                10.8145369    8.7552479    13.358183
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)              >=0                 6.8356643    5.5607237     8.402918
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)              >=0                 4.4682588    3.6690890     5.441497
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)               >=0                 2.0141075    1.6428134     2.469318
6 months    ki1135781-COHORTS          INDIA                          >=0                  >=0                 1.0000000    1.0000000     1.000000
6 months    ki1135781-COHORTS          INDIA                          <-3                  >=0                21.8164879   14.4572434    32.921846
6 months    ki1135781-COHORTS          INDIA                          [-3--2)              >=0                11.5043478    7.6163076    17.377189
6 months    ki1135781-COHORTS          INDIA                          [-2--1)              >=0                 7.0352151    4.6689443    10.600737
6 months    ki1135781-COHORTS          INDIA                          [-1-0)               >=0                 2.8338062    1.8576221     4.322977
6 months    ki1135781-COHORTS          PHILIPPINES                    >=0                  >=0                 1.0000000    1.0000000     1.000000
6 months    ki1135781-COHORTS          PHILIPPINES                    <-3                  >=0                 7.1384615    5.0748247    10.041260
6 months    ki1135781-COHORTS          PHILIPPINES                    [-3--2)              >=0                 5.6473684    4.1368401     7.709452
6 months    ki1135781-COHORTS          PHILIPPINES                    [-2--1)              >=0                 3.6080871    2.7027383     4.816705
6 months    ki1135781-COHORTS          PHILIPPINES                    [-1-0)               >=0                 1.9130154    1.4268732     2.564788
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=0                  >=0                 1.0000000           NA           NA
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <-3                  >=0                 6.4323592           NA           NA
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [-3--2)              >=0                 3.8441298           NA           NA
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [-2--1)              >=0                 1.9191323           NA           NA
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [-1-0)               >=0                 0.9222734           NA           NA
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >=0                  >=0                 1.0000000           NA           NA
6 months    kiGH5241-JiVitA-4          BANGLADESH                     <-3                  >=0                 6.6302367           NA           NA
6 months    kiGH5241-JiVitA-4          BANGLADESH                     [-3--2)              >=0                 4.4282238           NA           NA
6 months    kiGH5241-JiVitA-4          BANGLADESH                     [-2--1)              >=0                 2.1123058           NA           NA
6 months    kiGH5241-JiVitA-4          BANGLADESH                     [-1-0)               >=0                 1.4683478           NA           NA
9 months    ki1000109-EE               PAKISTAN                       >=0                  >=0                 1.0000000    1.0000000     1.000000
9 months    ki1000109-EE               PAKISTAN                       <-3                  >=0                 3.1347518    1.7625630     5.575215
9 months    ki1000109-EE               PAKISTAN                       [-3--2)              >=0                 2.9883914    1.6826454     5.307406
9 months    ki1000109-EE               PAKISTAN                       [-2--1)              >=0                 2.2202729    1.2409727     3.972377
9 months    ki1000109-EE               PAKISTAN                       [-1-0)               >=0                 1.7205721    0.9440238     3.135904
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=0                  >=0                 1.0000000    1.0000000     1.000000
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     <-3                  >=0                12.0909091    4.8649928    30.049394
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     [-3--2)              >=0                 8.1700000    3.3782567    19.758386
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     [-2--1)              >=0                 5.1044776    2.1250242    12.261362
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     [-1-0)               >=0                 2.5791855    1.0316052     6.448395
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=0                  >=0                 1.0000000    1.0000000     1.000000
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <-3                  >=0                 4.4056338    2.2805431     8.510959
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-3--2)              >=0                 3.6713615    2.1125083     6.380517
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-2--1)              >=0                 2.9537772    2.1636660     4.032415
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-1-0)               >=0                 1.7646876    1.3369641     2.329249
9 months    ki1101329-Keneba           GAMBIA                         >=0                  >=0                 1.0000000    1.0000000     1.000000
9 months    ki1101329-Keneba           GAMBIA                         <-3                  >=0                 8.0500000    4.7885855    13.532702
9 months    ki1101329-Keneba           GAMBIA                         [-3--2)              >=0                 5.8869048    3.7566020     9.225264
9 months    ki1101329-Keneba           GAMBIA                         [-2--1)              >=0                 4.2243658    2.8020012     6.368758
9 months    ki1101329-Keneba           GAMBIA                         [-1-0)               >=0                 1.7571521    1.1430368     2.701211
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=0                  >=0                 1.0000000    1.0000000     1.000000
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       <-3                  >=0                 7.1507519    5.8434413     8.750538
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)              >=0                 4.9459410    4.0902348     5.980667
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)              >=0                 3.4030083    2.8459877     4.069050
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)               >=0                 1.9039458    1.5875857     2.283347
9 months    ki1135781-COHORTS          INDIA                          >=0                  >=0                 1.0000000    1.0000000     1.000000
9 months    ki1135781-COHORTS          INDIA                          <-3                  >=0                10.3799217    7.6665863    14.053553
9 months    ki1135781-COHORTS          INDIA                          [-3--2)              >=0                 6.4248698    4.7527452     8.685286
9 months    ki1135781-COHORTS          INDIA                          [-2--1)              >=0                 4.6516198    3.4573308     6.258460
9 months    ki1135781-COHORTS          INDIA                          [-1-0)               >=0                 2.5120855    1.8525094     3.406500
9 months    ki1135781-COHORTS          PHILIPPINES                    >=0                  >=0                 1.0000000    1.0000000     1.000000
9 months    ki1135781-COHORTS          PHILIPPINES                    <-3                  >=0                 4.6513487    3.4487177     6.273359
9 months    ki1135781-COHORTS          PHILIPPINES                    [-3--2)              >=0                 4.0856441    3.1638604     5.275987
9 months    ki1135781-COHORTS          PHILIPPINES                    [-2--1)              >=0                 2.9789839    2.3692994     3.745557
9 months    ki1135781-COHORTS          PHILIPPINES                    [-1-0)               >=0                 1.7447250    1.3840223     2.199434
9 months    kiGH5241-JiVitA-4          BANGLADESH                     >=0                  >=0                 1.0000000           NA           NA
9 months    kiGH5241-JiVitA-4          BANGLADESH                     <-3                  >=0                 4.0235075           NA           NA
9 months    kiGH5241-JiVitA-4          BANGLADESH                     [-3--2)              >=0                 3.3788194           NA           NA
9 months    kiGH5241-JiVitA-4          BANGLADESH                     [-2--1)              >=0                 1.7152174           NA           NA
9 months    kiGH5241-JiVitA-4          BANGLADESH                     [-1-0)               >=0                 1.1119485           NA           NA
12 months   ki1000108-IRC              INDIA                          >=0                  >=0                 1.0000000    1.0000000     1.000000
12 months   ki1000108-IRC              INDIA                          <-3                  >=0                 3.3272727    1.5200556     7.283118
12 months   ki1000108-IRC              INDIA                          [-3--2)              >=0                 2.8268293    1.4664594     5.449154
12 months   ki1000108-IRC              INDIA                          [-2--1)              >=0                 2.4679389    1.3485529     4.516488
12 months   ki1000108-IRC              INDIA                          [-1-0)               >=0                 1.0166667    0.5215971     1.981628
12 months   ki1000109-EE               PAKISTAN                       >=0                  >=0                 1.0000000    1.0000000     1.000000
12 months   ki1000109-EE               PAKISTAN                       <-3                  >=0                 2.5212121    1.5400147     4.127565
12 months   ki1000109-EE               PAKISTAN                       [-3--2)              >=0                 2.5510490    1.5659666     4.155804
12 months   ki1000109-EE               PAKISTAN                       [-2--1)              >=0                 2.1367659    1.3063103     3.495164
12 months   ki1000109-EE               PAKISTAN                       [-1-0)               >=0                 1.8218549    1.1016568     3.012876
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=0                  >=0                 1.0000000    1.0000000     1.000000
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <-3                  >=0                 4.9047619    2.6583797     9.049380
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-3--2)              >=0                 3.1390476    1.6925252     5.821845
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-2--1)              >=0                 3.1412520    2.2873157     4.313993
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-1-0)               >=0                 1.6788111    1.2520314     2.251067
12 months   ki1101329-Keneba           GAMBIA                         >=0                  >=0                 1.0000000    1.0000000     1.000000
12 months   ki1101329-Keneba           GAMBIA                         <-3                  >=0                 5.2801268    3.5421018     7.870959
12 months   ki1101329-Keneba           GAMBIA                         [-3--2)              >=0                 4.5649939    3.2962955     6.321997
12 months   ki1101329-Keneba           GAMBIA                         [-2--1)              >=0                 2.7969972    2.0611556     3.795538
12 months   ki1101329-Keneba           GAMBIA                         [-1-0)               >=0                 1.4352987    1.0441741     1.972930
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=0                  >=0                 1.0000000    1.0000000     1.000000
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       <-3                  >=0                 4.8321249    4.0027458     5.833353
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)              >=0                 3.5433752    2.9792157     4.214367
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)              >=0                 2.7249856    2.3240238     3.195125
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)               >=0                 1.6062783    1.3652924     1.889800
12 months   ki1135781-COHORTS          INDIA                          >=0                  >=0                 1.0000000    1.0000000     1.000000
12 months   ki1135781-COHORTS          INDIA                          <-3                  >=0                 7.0718126    5.5049946     9.084574
12 months   ki1135781-COHORTS          INDIA                          [-3--2)              >=0                 4.9913401    3.8991430     6.389475
12 months   ki1135781-COHORTS          INDIA                          [-2--1)              >=0                 3.7614606    2.9511870     4.794202
12 months   ki1135781-COHORTS          INDIA                          [-1-0)               >=0                 2.2406799    1.7468344     2.874140
12 months   ki1135781-COHORTS          PHILIPPINES                    >=0                  >=0                 1.0000000    1.0000000     1.000000
12 months   ki1135781-COHORTS          PHILIPPINES                    <-3                  >=0                 3.2422259    2.5879330     4.061940
12 months   ki1135781-COHORTS          PHILIPPINES                    [-3--2)              >=0                 2.8408074    2.3419585     3.445914
12 months   ki1135781-COHORTS          PHILIPPINES                    [-2--1)              >=0                 2.1945643    1.8514770     2.601227
12 months   ki1135781-COHORTS          PHILIPPINES                    [-1-0)               >=0                 1.5292281    1.2904483     1.812191
12 months   kiGH5241-JiVitA-3          BANGLADESH                     >=0                  >=0                 1.0000000           NA           NA
12 months   kiGH5241-JiVitA-3          BANGLADESH                     <-3                  >=0                 3.2410948           NA           NA
12 months   kiGH5241-JiVitA-3          BANGLADESH                     [-3--2)              >=0                 2.5790000           NA           NA
12 months   kiGH5241-JiVitA-3          BANGLADESH                     [-2--1)              >=0                 1.6501762           NA           NA
12 months   kiGH5241-JiVitA-3          BANGLADESH                     [-1-0)               >=0                 1.0183635           NA           NA
12 months   kiGH5241-JiVitA-4          BANGLADESH                     >=0                  >=0                 1.0000000           NA           NA
12 months   kiGH5241-JiVitA-4          BANGLADESH                     <-3                  >=0                 4.2922535           NA           NA
12 months   kiGH5241-JiVitA-4          BANGLADESH                     [-3--2)              >=0                 3.2696078           NA           NA
12 months   kiGH5241-JiVitA-4          BANGLADESH                     [-2--1)              >=0                 1.6454403           NA           NA
12 months   kiGH5241-JiVitA-4          BANGLADESH                     [-1-0)               >=0                 1.3640511           NA           NA
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=0                  >=0                 1.0000000    1.0000000     1.000000
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     <-3                  >=0                 6.8944096    3.2047553    14.831986
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     [-3--2)              >=0                 5.2857140    2.5402534    10.998420
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     [-2--1)              >=0                 3.1757788    1.5287346     6.597333
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     [-1-0)               >=0                 2.5349853    1.1995339     5.357206
18 months   ki1101329-Keneba           GAMBIA                         >=0                  >=0                 1.0000000    1.0000000     1.000000
18 months   ki1101329-Keneba           GAMBIA                         <-3                  >=0                 4.3191489    2.8612678     6.519854
18 months   ki1101329-Keneba           GAMBIA                         [-3--2)              >=0                 4.5709944    3.3933559     6.157323
18 months   ki1101329-Keneba           GAMBIA                         [-2--1)              >=0                 3.1289772    2.3579441     4.152133
18 months   ki1101329-Keneba           GAMBIA                         [-1-0)               >=0                 1.9000601    1.4243532     2.534644
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=0                  >=0                 1.0000000    1.0000000     1.000000
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       <-3                  >=0                 1.9345238    1.4995255     2.495711
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)              >=0                 1.9000538    1.5454017     2.336095
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)              >=0                 1.6514590    1.3641212     1.999321
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)               >=0                 1.2293861    1.0116995     1.493912
18 months   ki1135781-COHORTS          PHILIPPINES                    >=0                  >=0                 1.0000000    1.0000000     1.000000
18 months   ki1135781-COHORTS          PHILIPPINES                    <-3                  >=0                 1.7157328    1.4108208     2.086544
18 months   ki1135781-COHORTS          PHILIPPINES                    [-3--2)              >=0                 1.8263852    1.6166117     2.063379
18 months   ki1135781-COHORTS          PHILIPPINES                    [-2--1)              >=0                 1.5832747    1.4226891     1.761986
18 months   ki1135781-COHORTS          PHILIPPINES                    [-1-0)               >=0                 1.2341967    1.1091340     1.373361
18 months   kiGH5241-JiVitA-4          BANGLADESH                     >=0                  >=0                 1.0000000           NA           NA
18 months   kiGH5241-JiVitA-4          BANGLADESH                     <-3                  >=0                 2.5286275           NA           NA
18 months   kiGH5241-JiVitA-4          BANGLADESH                     [-3--2)              >=0                 2.2414318           NA           NA
18 months   kiGH5241-JiVitA-4          BANGLADESH                     [-2--1)              >=0                 1.4034727           NA           NA
18 months   kiGH5241-JiVitA-4          BANGLADESH                     [-1-0)               >=0                 1.1351244           NA           NA
24 months   ki1101329-Keneba           GAMBIA                         >=0                  >=0                 1.0000000    1.0000000     1.000000
24 months   ki1101329-Keneba           GAMBIA                         <-3                  >=0                 3.3216374    2.1843608     5.051031
24 months   ki1101329-Keneba           GAMBIA                         [-3--2)              >=0                 3.3091968    2.4804165     4.414897
24 months   ki1101329-Keneba           GAMBIA                         [-2--1)              >=0                 2.3183133    1.7795963     3.020110
24 months   ki1101329-Keneba           GAMBIA                         [-1-0)               >=0                 1.5875473    1.2152558     2.073890
24 months   ki1135781-COHORTS          INDIA                          >=0                  >=0                 1.0000000    1.0000000     1.000000
24 months   ki1135781-COHORTS          INDIA                          <-3                  >=0                 3.7826087    3.2077559     4.460479
24 months   ki1135781-COHORTS          INDIA                          [-3--2)              >=0                 2.8879848    2.4575320     3.393834
24 months   ki1135781-COHORTS          INDIA                          [-2--1)              >=0                 2.4601431    2.1047550     2.875539
24 months   ki1135781-COHORTS          INDIA                          [-1-0)               >=0                 1.7199775    1.4648413     2.019552
24 months   ki1135781-COHORTS          PHILIPPINES                    >=0                  >=0                 1.0000000    1.0000000     1.000000
24 months   ki1135781-COHORTS          PHILIPPINES                    <-3                  >=0                 1.7524533    1.4738971     2.083655
24 months   ki1135781-COHORTS          PHILIPPINES                    [-3--2)              >=0                 1.7636551    1.5632233     1.989786
24 months   ki1135781-COHORTS          PHILIPPINES                    [-2--1)              >=0                 1.5334914    1.3806609     1.703239
24 months   ki1135781-COHORTS          PHILIPPINES                    [-1-0)               >=0                 1.2784733    1.1529546     1.417657
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=0                  >=0                 1.0000000           NA           NA
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <-3                  >=0                 2.2875644           NA           NA
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [-3--2)              >=0                 2.0223214           NA           NA
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [-2--1)              >=0                 1.4604961           NA           NA
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [-1-0)               >=0                 1.0388218           NA           NA
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=0                  >=0                 1.0000000           NA           NA
24 months   kiGH5241-JiVitA-4          BANGLADESH                     <-3                  >=0                 2.5963466           NA           NA
24 months   kiGH5241-JiVitA-4          BANGLADESH                     [-3--2)              >=0                 2.2818201           NA           NA
24 months   kiGH5241-JiVitA-4          BANGLADESH                     [-2--1)              >=0                 1.6410870           NA           NA
24 months   kiGH5241-JiVitA-4          BANGLADESH                     [-1-0)               >=0                 1.0698353           NA           NA


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=0                  NA                0.0899826   0.0841040   0.0958613
Birth       ki1135781-COHORTS          INDIA                          >=0                  NA                0.1112856   0.1017307   0.1208405
3 months    ki1000109-EE               PAKISTAN                       >=0                  NA                0.3972560   0.2708123   0.5236996
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=0                  NA                0.0428583   0.0327267   0.0529900
3 months    ki1101329-Keneba           GAMBIA                         >=0                  NA                0.1081069   0.0875276   0.1286861
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=0                  NA                0.1350026   0.1250063   0.1449990
3 months    ki1135781-COHORTS          INDIA                          >=0                  NA                0.1295976   0.1174964   0.1416988
3 months    ki1135781-COHORTS          PHILIPPINES                    >=0                  NA                0.1131528   0.0997125   0.1265930
3 months    kiGH5241-JiVitA-3          BANGLADESH                     >=0                  NA                0.1598609          NA          NA
3 months    kiGH5241-JiVitA-4          BANGLADESH                     >=0                  NA                0.1071573          NA          NA
6 months    ki1000108-IRC              INDIA                          >=0                  NA                0.1057602   0.0236547   0.1878657
6 months    ki1000109-EE               PAKISTAN                       >=0                  NA                0.2863337   0.1509395   0.4217279
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=0                  NA                0.0961226          NA          NA
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=0                  NA                0.1554424   0.1055639   0.2053209
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=0                  NA                0.0325639   0.0182342   0.0468936
6 months    ki1101329-Keneba           GAMBIA                         >=0                  NA                0.0845513   0.0596574   0.1094451
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=0                  NA                0.1097352   0.0988109   0.1206595
6 months    ki1135781-COHORTS          INDIA                          >=0                  NA                0.1537238   0.1390214   0.1684263
6 months    ki1135781-COHORTS          PHILIPPINES                    >=0                  NA                0.1240033   0.1008914   0.1471152
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=0                  NA                0.1555970          NA          NA
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >=0                  NA                0.1275824          NA          NA
9 months    ki1000109-EE               PAKISTAN                       >=0                  NA                0.3248258   0.1816874   0.4679642
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=0                  NA                0.1796630   0.1301916   0.2291344
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=0                  NA                0.0571462   0.0392297   0.0750626
9 months    ki1101329-Keneba           GAMBIA                         >=0                  NA                0.1133119   0.0856379   0.1409859
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=0                  NA                0.1173667   0.1040561   0.1306772
9 months    ki1135781-COHORTS          INDIA                          >=0                  NA                0.1901820   0.1697128   0.2106512
9 months    ki1135781-COHORTS          PHILIPPINES                    >=0                  NA                0.1413108   0.1145980   0.1680236
9 months    kiGH5241-JiVitA-4          BANGLADESH                     >=0                  NA                0.1147627          NA          NA
12 months   ki1000108-IRC              INDIA                          >=0                  NA                0.1210656   0.0317589   0.2103723
12 months   ki1000109-EE               PAKISTAN                       >=0                  NA                0.3681144   0.2116547   0.5245741
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=0                  NA                0.0632087   0.0420472   0.0843703
12 months   ki1101329-Keneba           GAMBIA                         >=0                  NA                0.1233461   0.0885321   0.1581602
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=0                  NA                0.1239455   0.1070020   0.1408891
12 months   ki1135781-COHORTS          INDIA                          >=0                  NA                0.2261596   0.2005205   0.2517986
12 months   ki1135781-COHORTS          PHILIPPINES                    >=0                  NA                0.1555381   0.1235303   0.1875460
12 months   kiGH5241-JiVitA-3          BANGLADESH                     >=0                  NA                0.1780952          NA          NA
12 months   kiGH5241-JiVitA-4          BANGLADESH                     >=0                  NA                0.1441412          NA          NA
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=0                  NA                0.2066672   0.1381762   0.2751583
18 months   ki1101329-Keneba           GAMBIA                         >=0                  NA                0.1839378   0.1459489   0.2219266
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=0                  NA                0.1391025   0.0844492   0.1937558
18 months   ki1135781-COHORTS          PHILIPPINES                    >=0                  NA                0.1371358   0.1002764   0.1739953
18 months   kiGH5241-JiVitA-4          BANGLADESH                     >=0                  NA                0.1305308          NA          NA
24 months   ki1101329-Keneba           GAMBIA                         >=0                  NA                0.1527163   0.1095553   0.1958773
24 months   ki1135781-COHORTS          INDIA                          >=0                  NA                0.2403663   0.2086200   0.2721125
24 months   ki1135781-COHORTS          PHILIPPINES                    >=0                  NA                0.1470165   0.1092534   0.1847797
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=0                  NA                0.1687189          NA          NA
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=0                  NA                0.1256376          NA          NA


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       >=0                  NA                0.8690362    0.8246321   0.9021969
Birth       ki1135781-COHORTS          INDIA                          >=0                  NA                0.9337581    0.8535049   0.9700468
3 months    ki1000109-EE               PAKISTAN                       >=0                  NA                0.6924134    0.3732249   0.8490535
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=0                  NA                0.7247536    0.5662499   0.8253359
3 months    ki1101329-Keneba           GAMBIA                         >=0                  NA                0.7955782    0.6285339   0.8875045
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=0                  NA                0.7584483    0.7072442   0.8006966
3 months    ki1135781-COHORTS          INDIA                          >=0                  NA                0.8788975    0.7933091   0.9290446
3 months    ki1135781-COHORTS          PHILIPPINES                    >=0                  NA                0.9205043    0.8250694   0.9638739
3 months    kiGH5241-JiVitA-3          BANGLADESH                     >=0                  NA                0.5779476           NA          NA
3 months    kiGH5241-JiVitA-4          BANGLADESH                     >=0                  NA                0.4887977           NA          NA
6 months    ki1000108-IRC              INDIA                          >=0                  NA                0.4464193   -0.0243647   0.7008374
6 months    ki1000109-EE               PAKISTAN                       >=0                  NA                0.5560902    0.1979108   0.7543217
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=0                  NA                0.3487633           NA          NA
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=0                  NA                0.7409420    0.4021720   0.8877419
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=0                  NA                0.3373891    0.1784614   0.4655720
6 months    ki1101329-Keneba           GAMBIA                         >=0                  NA                0.5974032    0.3956250   0.7318152
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=0                  NA                0.6610508    0.5969388   0.7149649
6 months    ki1135781-COHORTS          INDIA                          >=0                  NA                0.8297112    0.7465763   0.8855740
6 months    ki1135781-COHORTS          PHILIPPINES                    >=0                  NA                0.5899015    0.4727811   0.6810038
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=0                  NA                0.5943978           NA          NA
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >=0                  NA                0.5512820           NA          NA
9 months    ki1000109-EE               PAKISTAN                       >=0                  NA                0.5509896    0.2266250   0.7393110
9 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=0                  NA                0.7734275    0.4761587   0.9020026
9 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=0                  NA                0.3862820    0.2599370   0.4910571
9 months    ki1101329-Keneba           GAMBIA                         >=0                  NA                0.6196068    0.4497858   0.7370133
9 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=0                  NA                0.5934269    0.5254058   0.6516989
9 months    ki1135781-COHORTS          INDIA                          >=0                  NA                0.7401455    0.6550340   0.8042579
9 months    ki1135781-COHORTS          PHILIPPINES                    >=0                  NA                0.5164619    0.4123988   0.6020956
9 months    kiGH5241-JiVitA-4          BANGLADESH                     >=0                  NA                0.4300580           NA          NA
12 months   ki1000108-IRC              INDIA                          >=0                  NA                0.4247915    0.0147284   0.6641892
12 months   ki1000109-EE               PAKISTAN                       >=0                  NA                0.5171131    0.2329400   0.6960084
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=0                  NA                0.3827341    0.2476975   0.4935319
12 months   ki1101329-Keneba           GAMBIA                         >=0                  NA                0.4885474    0.3355595   0.6063097
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=0                  NA                0.5071595    0.4353201   0.5698593
12 months   ki1135781-COHORTS          INDIA                          >=0                  NA                0.6790434    0.5962525   0.7448576
12 months   ki1135781-COHORTS          PHILIPPINES                    >=0                  NA                0.4037643    0.3152959   0.4808021
12 months   kiGH5241-JiVitA-3          BANGLADESH                     >=0                  NA                0.4489625           NA          NA
12 months   kiGH5241-JiVitA-4          BANGLADESH                     >=0                  NA                0.4531969           NA          NA
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=0                  NA                0.6860054    0.3743690   0.8424109
18 months   ki1101329-Keneba           GAMBIA                         >=0                  NA                0.5552449    0.4291515   0.6534859
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=0                  NA                0.2927842    0.1675598   0.3991711
18 months   ki1135781-COHORTS          PHILIPPINES                    >=0                  NA                0.2342299    0.1680048   0.2951837
18 months   kiGH5241-JiVitA-4          BANGLADESH                     >=0                  NA                0.3014916           NA          NA
24 months   ki1101329-Keneba           GAMBIA                         >=0                  NA                0.4454225    0.3062537   0.5566735
24 months   ki1135781-COHORTS          INDIA                          >=0                  NA                0.5220824    0.4482972   0.5859995
24 months   ki1135781-COHORTS          PHILIPPINES                    >=0                  NA                0.2389640    0.1743205   0.2985465
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=0                  NA                0.3499052           NA          NA
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=0                  NA                0.3269047           NA          NA
