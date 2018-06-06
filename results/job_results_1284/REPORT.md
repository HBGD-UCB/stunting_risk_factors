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
3 months    ki0047075b-MAL-ED          BANGLADESH                     >=0          257     39     39      0
3 months    ki0047075b-MAL-ED          BANGLADESH                     <-3          257      9      0      9
3 months    ki0047075b-MAL-ED          BANGLADESH                     [-3--2)      257     38      0     38
3 months    ki0047075b-MAL-ED          BANGLADESH                     [-2--1)      257     83     57     26
3 months    ki0047075b-MAL-ED          BANGLADESH                     [-1-0)       257     88     86      2
3 months    ki0047075b-MAL-ED          BRAZIL                         >=0          191     44     44      0
3 months    ki0047075b-MAL-ED          BRAZIL                         <-3          191      8      0      8
3 months    ki0047075b-MAL-ED          BRAZIL                         [-3--2)      191     13      0     13
3 months    ki0047075b-MAL-ED          BRAZIL                         [-2--1)      191     48     37     11
3 months    ki0047075b-MAL-ED          BRAZIL                         [-1-0)       191     78     76      2
3 months    ki0047075b-MAL-ED          INDIA                          >=0          206     34     33      1
3 months    ki0047075b-MAL-ED          INDIA                          <-3          206      7      0      7
3 months    ki0047075b-MAL-ED          INDIA                          [-3--2)      206     26      0     26
3 months    ki0047075b-MAL-ED          INDIA                          [-2--1)      206     66     47     19
3 months    ki0047075b-MAL-ED          INDIA                          [-1-0)       206     73     70      3
3 months    ki0047075b-MAL-ED          NEPAL                          >=0          173     45     45      0
3 months    ki0047075b-MAL-ED          NEPAL                          <-3          173      6      0      6
3 months    ki0047075b-MAL-ED          NEPAL                          [-3--2)      173     12      0     12
3 months    ki0047075b-MAL-ED          NEPAL                          [-2--1)      173     46     38      8
3 months    ki0047075b-MAL-ED          NEPAL                          [-1-0)       173     64     64      0
3 months    ki0047075b-MAL-ED          PERU                           >=0          287     44     42      2
3 months    ki0047075b-MAL-ED          PERU                           <-3          287      8      0      8
3 months    ki0047075b-MAL-ED          PERU                           [-3--2)      287     26      0     26
3 months    ki0047075b-MAL-ED          PERU                           [-2--1)      287     94     51     43
3 months    ki0047075b-MAL-ED          PERU                           [-1-0)       287    115     99     16
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=0          262     59     57      2
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <-3          262      2      0      2
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [-3--2)      262     26      0     26
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [-2--1)      262     73     46     27
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [-1-0)       262    102     90     12
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=0          123     24     23      1
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <-3          123      6      0      6
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-3--2)      123     12      0     12
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-2--1)      123     32     24      8
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-1-0)       123     49     44      5
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=0           91     14      9      5
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          <-3           91      3      0      3
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          [-3--2)       91     13      0     13
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          [-2--1)       91     21     15      6
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          [-1-0)        91     40     29     11
3 months    ki1000108-IRC              INDIA                          >=0          388    143    128     15
3 months    ki1000108-IRC              INDIA                          <-3          388     16      0     16
3 months    ki1000108-IRC              INDIA                          [-3--2)      388     27      0     27
3 months    ki1000108-IRC              INDIA                          [-2--1)      388     65     40     25
3 months    ki1000108-IRC              INDIA                          [-1-0)       388    137     96     41
3 months    ki1000109-EE               PAKISTAN                       >=0            2      1      1      0
3 months    ki1000109-EE               PAKISTAN                       <-3            2      0      0      0
3 months    ki1000109-EE               PAKISTAN                       [-3--2)        2      1      0      1
3 months    ki1000109-EE               PAKISTAN                       [-2--1)        2      0      0      0
3 months    ki1000109-EE               PAKISTAN                       [-1-0)         2      0      0      0
3 months    ki1000109-ResPak           PAKISTAN                       >=0            7      3      3      0
3 months    ki1000109-ResPak           PAKISTAN                       <-3            7      0      0      0
3 months    ki1000109-ResPak           PAKISTAN                       [-3--2)        7      2      0      2
3 months    ki1000109-ResPak           PAKISTAN                       [-2--1)        7      0      0      0
3 months    ki1000109-ResPak           PAKISTAN                       [-1-0)         7      2      2      0
3 months    ki1000304b-SAS-CompFeed    INDIA                          >=0          468     74     70      4
3 months    ki1000304b-SAS-CompFeed    INDIA                          <-3          468     24      0     24
3 months    ki1000304b-SAS-CompFeed    INDIA                          [-3--2)      468     66      0     66
3 months    ki1000304b-SAS-CompFeed    INDIA                          [-2--1)      468    147    103     44
3 months    ki1000304b-SAS-CompFeed    INDIA                          [-1-0)       468    157    139     18
3 months    ki1017093-NIH-Birth        BANGLADESH                     >=0           28      7      7      0
3 months    ki1017093-NIH-Birth        BANGLADESH                     <-3           28      0      0      0
3 months    ki1017093-NIH-Birth        BANGLADESH                     [-3--2)       28      1      0      1
3 months    ki1017093-NIH-Birth        BANGLADESH                     [-2--1)       28      9      5      4
3 months    ki1017093-NIH-Birth        BANGLADESH                     [-1-0)        28     11     10      1
3 months    ki1017093b-PROVIDE         BANGLADESH                     >=0          700    219    216      3
3 months    ki1017093b-PROVIDE         BANGLADESH                     <-3          700      1      0      1
3 months    ki1017093b-PROVIDE         BANGLADESH                     [-3--2)      700     21      0     21
3 months    ki1017093b-PROVIDE         BANGLADESH                     [-2--1)      700    180     95     85
3 months    ki1017093b-PROVIDE         BANGLADESH                     [-1-0)       700    279    259     20
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=0          758    222    222      0
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     <-3          758      6      0      6
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     [-3--2)      758     47      0     47
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     [-2--1)      758    187    128     59
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     [-1-0)       758    296    287      9
3 months    ki1101329-Keneba           GAMBIA                         >=0         1541    825    744     81
3 months    ki1101329-Keneba           GAMBIA                         <-3         1541     30      0     30
3 months    ki1101329-Keneba           GAMBIA                         [-3--2)     1541     52      0     52
3 months    ki1101329-Keneba           GAMBIA                         [-2--1)     1541    163     83     80
3 months    ki1101329-Keneba           GAMBIA                         [-1-0)      1541    471    379     92
3 months    ki1114097-CMIN             BANGLADESH                     >=0           13      2      2      0
3 months    ki1114097-CMIN             BANGLADESH                     <-3           13      5      0      5
3 months    ki1114097-CMIN             BANGLADESH                     [-3--2)       13      1      0      1
3 months    ki1114097-CMIN             BANGLADESH                     [-2--1)       13      4      4      0
3 months    ki1114097-CMIN             BANGLADESH                     [-1-0)        13      1      1      0
3 months    ki1114097-CMIN             BRAZIL                         >=0          115     63     62      1
3 months    ki1114097-CMIN             BRAZIL                         <-3          115      3      0      3
3 months    ki1114097-CMIN             BRAZIL                         [-3--2)      115      2      0      2
3 months    ki1114097-CMIN             BRAZIL                         [-2--1)      115     11     11      0
3 months    ki1114097-CMIN             BRAZIL                         [-1-0)       115     36     35      1
3 months    ki1114097-CMIN             PERU                           >=0           10     10     10      0
3 months    ki1114097-CMIN             PERU                           <-3           10      0      0      0
3 months    ki1114097-CMIN             PERU                           [-3--2)       10      0      0      0
3 months    ki1114097-CMIN             PERU                           [-2--1)       10      0      0      0
3 months    ki1114097-CMIN             PERU                           [-1-0)        10      0      0      0
3 months    ki1114097-CONTENT          PERU                           >=0            2      1      1      0
3 months    ki1114097-CONTENT          PERU                           <-3            2      0      0      0
3 months    ki1114097-CONTENT          PERU                           [-3--2)        2      0      0      0
3 months    ki1114097-CONTENT          PERU                           [-2--1)        2      1      1      0
3 months    ki1114097-CONTENT          PERU                           [-1-0)         2      0      0      0
3 months    ki1119695-PROBIT           BELARUS                        >=0         8122   7406   7120    286
3 months    ki1119695-PROBIT           BELARUS                        <-3         8122      6      0      6
3 months    ki1119695-PROBIT           BELARUS                        [-3--2)     8122     19      1     18
3 months    ki1119695-PROBIT           BELARUS                        [-2--1)     8122     66     19     47
3 months    ki1119695-PROBIT           BELARUS                        [-1-0)      8122    625    380    245
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=0        13867   4675   4363    312
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       <-3        13867    451      1    450
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)    13867    983      0    983
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)    13867   2572   2072    500
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)     13867   5186   4526    660
3 months    ki1135781-COHORTS          GUATEMALA                      >=0          407    242    219     23
3 months    ki1135781-COHORTS          GUATEMALA                      <-3          407      4      0      4
3 months    ki1135781-COHORTS          GUATEMALA                      [-3--2)      407     15      0     15
3 months    ki1135781-COHORTS          GUATEMALA                      [-2--1)      407     39     18     21
3 months    ki1135781-COHORTS          GUATEMALA                      [-1-0)       407    107     71     36
3 months    ki1135781-COHORTS          INDIA                          >=0         6640   1852   1821     31
3 months    ki1135781-COHORTS          INDIA                          <-3         6640    214      0    214
3 months    ki1135781-COHORTS          INDIA                          [-3--2)     6640    578      0    578
3 months    ki1135781-COHORTS          INDIA                          [-2--1)     6640   1568   1267    301
3 months    ki1135781-COHORTS          INDIA                          [-1-0)      6640   2428   2298    130
3 months    ki1135781-COHORTS          PHILIPPINES                    >=0         3050   1328   1290     38
3 months    ki1135781-COHORTS          PHILIPPINES                    <-3         3050     49      0     49
3 months    ki1135781-COHORTS          PHILIPPINES                    [-3--2)     3050    138      0    138
3 months    ki1135781-COHORTS          PHILIPPINES                    [-2--1)     3050    448    330    118
3 months    ki1135781-COHORTS          PHILIPPINES                    [-1-0)      3050   1087    989     98
3 months    kiGH5241-JiVitA-3          BANGLADESH                     >=0        13155   2138   1917    221
3 months    kiGH5241-JiVitA-3          BANGLADESH                     <-3        13155   1352      0   1352
3 months    kiGH5241-JiVitA-3          BANGLADESH                     [-3--2)    13155   2540      0   2540
3 months    kiGH5241-JiVitA-3          BANGLADESH                     [-2--1)    13155   4078   3110    968
3 months    kiGH5241-JiVitA-3          BANGLADESH                     [-1-0)     13155   3047   2823    224
3 months    kiGH5241-JiVitA-4          BANGLADESH                     >=0         1156    364    334     30
3 months    kiGH5241-JiVitA-4          BANGLADESH                     <-3         1156     62      0     62
3 months    kiGH5241-JiVitA-4          BANGLADESH                     [-3--2)     1156    156      0    156
3 months    kiGH5241-JiVitA-4          BANGLADESH                     [-2--1)     1156    272    235     37
3 months    kiGH5241-JiVitA-4          BANGLADESH                     [-1-0)      1156    302    271     31
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=0          238     39     38      1
6 months    ki0047075b-MAL-ED          BANGLADESH                     <-3          238      6      0      6
6 months    ki0047075b-MAL-ED          BANGLADESH                     [-3--2)      238     33      0     33
6 months    ki0047075b-MAL-ED          BANGLADESH                     [-2--1)      238     78     45     33
6 months    ki0047075b-MAL-ED          BANGLADESH                     [-1-0)       238     82     74      8
6 months    ki0047075b-MAL-ED          BRAZIL                         >=0          180     43     43      0
6 months    ki0047075b-MAL-ED          BRAZIL                         <-3          180      7      0      7
6 months    ki0047075b-MAL-ED          BRAZIL                         [-3--2)      180     10      0     10
6 months    ki0047075b-MAL-ED          BRAZIL                         [-2--1)      180     45     31     14
6 months    ki0047075b-MAL-ED          BRAZIL                         [-1-0)       180     75     72      3
6 months    ki0047075b-MAL-ED          INDIA                          >=0          195     33     32      1
6 months    ki0047075b-MAL-ED          INDIA                          <-3          195      7      0      7
6 months    ki0047075b-MAL-ED          INDIA                          [-3--2)      195     25      0     25
6 months    ki0047075b-MAL-ED          INDIA                          [-2--1)      195     65     36     29
6 months    ki0047075b-MAL-ED          INDIA                          [-1-0)       195     65     58      7
6 months    ki0047075b-MAL-ED          NEPAL                          >=0          172     45     45      0
6 months    ki0047075b-MAL-ED          NEPAL                          <-3          172      6      0      6
6 months    ki0047075b-MAL-ED          NEPAL                          [-3--2)      172     12      0     12
6 months    ki0047075b-MAL-ED          NEPAL                          [-2--1)      172     45     35     10
6 months    ki0047075b-MAL-ED          NEPAL                          [-1-0)       172     64     64      0
6 months    ki0047075b-MAL-ED          PERU                           >=0          268     42     39      3
6 months    ki0047075b-MAL-ED          PERU                           <-3          268      7      0      7
6 months    ki0047075b-MAL-ED          PERU                           [-3--2)      268     25      0     25
6 months    ki0047075b-MAL-ED          PERU                           [-2--1)      268     89     35     54
6 months    ki0047075b-MAL-ED          PERU                           [-1-0)       268    105     77     28
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=0          229     49     43      6
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <-3          229      1      0      1
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [-3--2)      229     23      0     23
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [-2--1)      229     62     30     32
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [-1-0)       229     94     71     23
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=0          119     24     21      3
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <-3          119      5      0      5
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-3--2)      119     11      0     11
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-2--1)      119     31     17     14
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-1-0)       119     48     41      7
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=0           91     14      7      7
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <-3           91      3      0      3
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [-3--2)       91     13      0     13
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [-2--1)       91     21     11     10
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [-1-0)        91     40     23     17
6 months    ki1000108-IRC              INDIA                          >=0          386    142    109     33
6 months    ki1000108-IRC              INDIA                          <-3          386     15      0     15
6 months    ki1000108-IRC              INDIA                          [-3--2)      386     27      0     27
6 months    ki1000108-IRC              INDIA                          [-2--1)      386     65     28     37
6 months    ki1000108-IRC              INDIA                          [-1-0)       386    137     86     51
6 months    ki1000109-EE               PAKISTAN                       >=0            2      1      1      0
6 months    ki1000109-EE               PAKISTAN                       <-3            2      0      0      0
6 months    ki1000109-EE               PAKISTAN                       [-3--2)        2      1      0      1
6 months    ki1000109-EE               PAKISTAN                       [-2--1)        2      0      0      0
6 months    ki1000109-EE               PAKISTAN                       [-1-0)         2      0      0      0
6 months    ki1000109-ResPak           PAKISTAN                       >=0            6      2      0      2
6 months    ki1000109-ResPak           PAKISTAN                       <-3            6      0      0      0
6 months    ki1000109-ResPak           PAKISTAN                       [-3--2)        6      2      0      2
6 months    ki1000109-ResPak           PAKISTAN                       [-2--1)        6      0      0      0
6 months    ki1000109-ResPak           PAKISTAN                       [-1-0)         6      2      1      1
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=0          364     54     46      8
6 months    ki1000304b-SAS-CompFeed    INDIA                          <-3          364     16      0     16
6 months    ki1000304b-SAS-CompFeed    INDIA                          [-3--2)      364     48      0     48
6 months    ki1000304b-SAS-CompFeed    INDIA                          [-2--1)      364    119     58     61
6 months    ki1000304b-SAS-CompFeed    INDIA                          [-1-0)       364    127    103     24
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=0           22      5      5      0
6 months    ki1017093-NIH-Birth        BANGLADESH                     <-3           22      0      0      0
6 months    ki1017093-NIH-Birth        BANGLADESH                     [-3--2)       22      1      0      1
6 months    ki1017093-NIH-Birth        BANGLADESH                     [-2--1)       22      8      2      6
6 months    ki1017093-NIH-Birth        BANGLADESH                     [-1-0)        22      8      7      1
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=0          640    204    199      5
6 months    ki1017093b-PROVIDE         BANGLADESH                     <-3          640      1      0      1
6 months    ki1017093b-PROVIDE         BANGLADESH                     [-3--2)      640     21      0     21
6 months    ki1017093b-PROVIDE         BANGLADESH                     [-2--1)      640    160     59    101
6 months    ki1017093b-PROVIDE         BANGLADESH                     [-1-0)       640    254    219     35
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=0          736    218    214      4
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <-3          736      6      0      6
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [-3--2)      736     45      0     45
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [-2--1)      736    181     67    114
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [-1-0)       736    286    229     57
6 months    ki1101329-Keneba           GAMBIA                         >=0         1431    775    648    127
6 months    ki1101329-Keneba           GAMBIA                         <-3         1431     27      0     27
6 months    ki1101329-Keneba           GAMBIA                         [-3--2)     1431     46      0     46
6 months    ki1101329-Keneba           GAMBIA                         [-2--1)     1431    143     57     86
6 months    ki1101329-Keneba           GAMBIA                         [-1-0)      1431    440    292    148
6 months    ki1114097-CMIN             BRAZIL                         >=0           87     47     43      4
6 months    ki1114097-CMIN             BRAZIL                         <-3           87      3      0      3
6 months    ki1114097-CMIN             BRAZIL                         [-3--2)       87      2      0      2
6 months    ki1114097-CMIN             BRAZIL                         [-2--1)       87      8      7      1
6 months    ki1114097-CMIN             BRAZIL                         [-1-0)        87     27     22      5
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
6 months    ki1119695-PROBIT           BELARUS                        >=0         7804   7122   6638    484
6 months    ki1119695-PROBIT           BELARUS                        <-3         7804      6      0      6
6 months    ki1119695-PROBIT           BELARUS                        [-3--2)     7804     18      0     18
6 months    ki1119695-PROBIT           BELARUS                        [-2--1)     7804     60     16     44
6 months    ki1119695-PROBIT           BELARUS                        [-1-0)      7804    598    336    262
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=0         8970   3022   2641    381
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <-3         8970    265      0    265
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)     8970    620      0    620
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)     8970   1656   1078    578
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)      8970   3407   2602    805
6 months    ki1135781-COHORTS          GUATEMALA                      >=0          125     81     64     17
6 months    ki1135781-COHORTS          GUATEMALA                      <-3          125      0      0      0
6 months    ki1135781-COHORTS          GUATEMALA                      [-3--2)      125      5      0      5
6 months    ki1135781-COHORTS          GUATEMALA                      [-2--1)      125     11      2      9
6 months    ki1135781-COHORTS          GUATEMALA                      [-1-0)       125     28     12     16
6 months    ki1135781-COHORTS          PHILIPPINES                    >=0         2798   1213   1112    101
6 months    ki1135781-COHORTS          PHILIPPINES                    <-3         2798     38      0     38
6 months    ki1135781-COHORTS          PHILIPPINES                    [-3--2)     2798    123      0    123
6 months    ki1135781-COHORTS          PHILIPPINES                    [-2--1)     2798    420    219    201
6 months    ki1135781-COHORTS          PHILIPPINES                    [-1-0)      2798   1004    768    236
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=0         9426   1616   1399    217
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <-3         9426    866      0    866
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [-3--2)     9426   1761      0   1761
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [-2--1)     9426   2970   2019    951
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [-1-0)      9426   2213   1994    219
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >=0         1011    320    274     46
6 months    kiGH5241-JiVitA-4          BANGLADESH                     <-3         1011     57      0     57
6 months    kiGH5241-JiVitA-4          BANGLADESH                     [-3--2)     1011    129      0    129
6 months    kiGH5241-JiVitA-4          BANGLADESH                     [-2--1)     1011    239    178     61
6 months    kiGH5241-JiVitA-4          BANGLADESH                     [-1-0)      1011    266    216     50
12 months   ki0047075b-MAL-ED          BANGLADESH                     >=0          232     38     36      2
12 months   ki0047075b-MAL-ED          BANGLADESH                     <-3          232      6      0      6
12 months   ki0047075b-MAL-ED          BANGLADESH                     [-3--2)      232     31      0     31
12 months   ki0047075b-MAL-ED          BANGLADESH                     [-2--1)      232     76     36     40
12 months   ki0047075b-MAL-ED          BANGLADESH                     [-1-0)       232     81     61     20
12 months   ki0047075b-MAL-ED          BRAZIL                         >=0          171     39     39      0
12 months   ki0047075b-MAL-ED          BRAZIL                         <-3          171      7      0      7
12 months   ki0047075b-MAL-ED          BRAZIL                         [-3--2)      171     10      0     10
12 months   ki0047075b-MAL-ED          BRAZIL                         [-2--1)      171     40     25     15
12 months   ki0047075b-MAL-ED          BRAZIL                         [-1-0)       171     75     72      3
12 months   ki0047075b-MAL-ED          INDIA                          >=0          191     33     32      1
12 months   ki0047075b-MAL-ED          INDIA                          <-3          191      7      0      7
12 months   ki0047075b-MAL-ED          INDIA                          [-3--2)      191     23      0     23
12 months   ki0047075b-MAL-ED          INDIA                          [-2--1)      191     63     26     37
12 months   ki0047075b-MAL-ED          INDIA                          [-1-0)       191     65     47     18
12 months   ki0047075b-MAL-ED          NEPAL                          >=0          170     45     45      0
12 months   ki0047075b-MAL-ED          NEPAL                          <-3          170      6      0      6
12 months   ki0047075b-MAL-ED          NEPAL                          [-3--2)      170     12      0     12
12 months   ki0047075b-MAL-ED          NEPAL                          [-2--1)      170     44     32     12
12 months   ki0047075b-MAL-ED          NEPAL                          [-1-0)       170     63     61      2
12 months   ki0047075b-MAL-ED          PERU                           >=0          257     40     34      6
12 months   ki0047075b-MAL-ED          PERU                           <-3          257      7      0      7
12 months   ki0047075b-MAL-ED          PERU                           [-3--2)      257     24      0     24
12 months   ki0047075b-MAL-ED          PERU                           [-2--1)      257     88     31     57
12 months   ki0047075b-MAL-ED          PERU                           [-1-0)       257     98     60     38
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=0          220     49     40      9
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <-3          220      1      0      1
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [-3--2)      220     21      0     21
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [-2--1)      220     59     21     38
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [-1-0)       220     90     58     32
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=0          115     23     18      5
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <-3          115      5      0      5
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-3--2)      115     11      0     11
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-2--1)      115     30      9     21
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-1-0)       115     46     18     28
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=0           93     15      7      8
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          <-3           93      3      0      3
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          [-3--2)       93     13      0     13
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          [-2--1)       93     22     11     11
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          [-1-0)        93     40     16     24
12 months   ki1000108-IRC              INDIA                          >=0          387    143     92     51
12 months   ki1000108-IRC              INDIA                          <-3          387     15      0     15
12 months   ki1000108-IRC              INDIA                          [-3--2)      387     27      0     27
12 months   ki1000108-IRC              INDIA                          [-2--1)      387     65     23     42
12 months   ki1000108-IRC              INDIA                          [-1-0)       387    137     75     62
12 months   ki1000109-EE               PAKISTAN                       >=0            2      1      1      0
12 months   ki1000109-EE               PAKISTAN                       <-3            2      0      0      0
12 months   ki1000109-EE               PAKISTAN                       [-3--2)        2      1      0      1
12 months   ki1000109-EE               PAKISTAN                       [-2--1)        2      0      0      0
12 months   ki1000109-EE               PAKISTAN                       [-1-0)         2      0      0      0
12 months   ki1000109-ResPak           PAKISTAN                       >=0            6      2      0      2
12 months   ki1000109-ResPak           PAKISTAN                       <-3            6      0      0      0
12 months   ki1000109-ResPak           PAKISTAN                       [-3--2)        6      2      0      2
12 months   ki1000109-ResPak           PAKISTAN                       [-2--1)        6      0      0      0
12 months   ki1000109-ResPak           PAKISTAN                       [-1-0)         6      2      1      1
12 months   ki1000304b-SAS-CompFeed    INDIA                          >=0          422     69     44     25
12 months   ki1000304b-SAS-CompFeed    INDIA                          <-3          422     17      0     17
12 months   ki1000304b-SAS-CompFeed    INDIA                          [-3--2)      422     60      0     60
12 months   ki1000304b-SAS-CompFeed    INDIA                          [-2--1)      422    134     42     92
12 months   ki1000304b-SAS-CompFeed    INDIA                          [-1-0)       422    142     87     55
12 months   ki1017093-NIH-Birth        BANGLADESH                     >=0           17      3      2      1
12 months   ki1017093-NIH-Birth        BANGLADESH                     <-3           17      0      0      0
12 months   ki1017093-NIH-Birth        BANGLADESH                     [-3--2)       17      1      0      1
12 months   ki1017093-NIH-Birth        BANGLADESH                     [-2--1)       17      8      1      7
12 months   ki1017093-NIH-Birth        BANGLADESH                     [-1-0)        17      5      3      2
12 months   ki1017093b-PROVIDE         BANGLADESH                     >=0          609    195    181     14
12 months   ki1017093b-PROVIDE         BANGLADESH                     <-3          609      1      0      1
12 months   ki1017093b-PROVIDE         BANGLADESH                     [-3--2)      609     21      0     21
12 months   ki1017093b-PROVIDE         BANGLADESH                     [-2--1)      609    153     44    109
12 months   ki1017093b-PROVIDE         BANGLADESH                     [-1-0)       609    239    182     57
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=0          729    217    205     12
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     <-3          729      6      0      6
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     [-3--2)      729     45      0     45
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     [-2--1)      729    179     53    126
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     [-1-0)       729    282    194     88
12 months   ki1101329-Keneba           GAMBIA                         >=0         1441    786    577    209
12 months   ki1101329-Keneba           GAMBIA                         <-3         1441     28      0     28
12 months   ki1101329-Keneba           GAMBIA                         [-3--2)     1441     45      0     45
12 months   ki1101329-Keneba           GAMBIA                         [-2--1)     1441    146     49     97
12 months   ki1101329-Keneba           GAMBIA                         [-1-0)      1441    436    228    208
12 months   ki1114097-CMIN             BRAZIL                         >=0          112     61     50     11
12 months   ki1114097-CMIN             BRAZIL                         <-3          112      3      0      3
12 months   ki1114097-CMIN             BRAZIL                         [-3--2)      112      2      0      2
12 months   ki1114097-CMIN             BRAZIL                         [-2--1)      112     11      7      4
12 months   ki1114097-CMIN             BRAZIL                         [-1-0)       112     35     24     11
12 months   ki1114097-CMIN             PERU                           >=0            9      9      9      0
12 months   ki1114097-CMIN             PERU                           <-3            9      0      0      0
12 months   ki1114097-CMIN             PERU                           [-3--2)        9      0      0      0
12 months   ki1114097-CMIN             PERU                           [-2--1)        9      0      0      0
12 months   ki1114097-CMIN             PERU                           [-1-0)         9      0      0      0
12 months   ki1114097-CONTENT          PERU                           >=0            2      1      1      0
12 months   ki1114097-CONTENT          PERU                           <-3            2      0      0      0
12 months   ki1114097-CONTENT          PERU                           [-3--2)        2      0      0      0
12 months   ki1114097-CONTENT          PERU                           [-2--1)        2      1      1      0
12 months   ki1114097-CONTENT          PERU                           [-1-0)         2      0      0      0
12 months   ki1119695-PROBIT           BELARUS                        >=0         7940   7248   6464    784
12 months   ki1119695-PROBIT           BELARUS                        <-3         7940      5      0      5
12 months   ki1119695-PROBIT           BELARUS                        [-3--2)     7940     18      1     17
12 months   ki1119695-PROBIT           BELARUS                        [-2--1)     7940     63     16     47
12 months   ki1119695-PROBIT           BELARUS                        [-1-0)      7940    606    302    304
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=0        10025   3311   2627    684
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       <-3        10025    299      1    298
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)    10025    687      0    687
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)    10025   1851   1001    850
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)     10025   3877   2615   1262
12 months   ki1135781-COHORTS          GUATEMALA                      >=0          344    200     91    109
12 months   ki1135781-COHORTS          GUATEMALA                      <-3          344      1      0      1
12 months   ki1135781-COHORTS          GUATEMALA                      [-3--2)      344     14      0     14
12 months   ki1135781-COHORTS          GUATEMALA                      [-2--1)      344     33      2     31
12 months   ki1135781-COHORTS          GUATEMALA                      [-1-0)       344     96     11     85
12 months   ki1135781-COHORTS          INDIA                          >=0         6174   1744   1523    221
12 months   ki1135781-COHORTS          INDIA                          <-3         6174    178      0    178
12 months   ki1135781-COHORTS          INDIA                          [-3--2)     6174    533      0    533
12 months   ki1135781-COHORTS          INDIA                          [-2--1)     6174   1449    706    743
12 months   ki1135781-COHORTS          INDIA                          [-1-0)      6174   2270   1571    699
12 months   ki1135781-COHORTS          PHILIPPINES                    >=0         2755   1199    912    287
12 months   ki1135781-COHORTS          PHILIPPINES                    <-3         2755     38      0     38
12 months   ki1135781-COHORTS          PHILIPPINES                    [-3--2)     2755    122      0    122
12 months   ki1135781-COHORTS          PHILIPPINES                    [-2--1)     2755    409    127    282
12 months   ki1135781-COHORTS          PHILIPPINES                    [-1-0)      2755    987    506    481
12 months   kiGH5241-JiVitA-3          BANGLADESH                     >=0         8198   1373   1166    207
12 months   kiGH5241-JiVitA-3          BANGLADESH                     <-3         8198    734      0    734
12 months   kiGH5241-JiVitA-3          BANGLADESH                     [-3--2)     8198   1514      0   1514
12 months   kiGH5241-JiVitA-3          BANGLADESH                     [-2--1)     8198   2595   1622    973
12 months   kiGH5241-JiVitA-3          BANGLADESH                     [-1-0)      8198   1982   1701    281
12 months   kiGH5241-JiVitA-4          BANGLADESH                     >=0         1163    378    293     85
12 months   kiGH5241-JiVitA-4          BANGLADESH                     <-3         1163     61      0     61
12 months   kiGH5241-JiVitA-4          BANGLADESH                     [-3--2)     1163    155      0    155
12 months   kiGH5241-JiVitA-4          BANGLADESH                     [-2--1)     1163    269    147    122
12 months   kiGH5241-JiVitA-4          BANGLADESH                     [-1-0)      1163    300    211     89
18 months   ki0047075b-MAL-ED          BANGLADESH                     >=0          224     38     32      6
18 months   ki0047075b-MAL-ED          BANGLADESH                     <-3          224      6      0      6
18 months   ki0047075b-MAL-ED          BANGLADESH                     [-3--2)      224     31      0     31
18 months   ki0047075b-MAL-ED          BANGLADESH                     [-2--1)      224     70     21     49
18 months   ki0047075b-MAL-ED          BANGLADESH                     [-1-0)       224     79     45     34
18 months   ki0047075b-MAL-ED          BRAZIL                         >=0          160     36     35      1
18 months   ki0047075b-MAL-ED          BRAZIL                         <-3          160      7      0      7
18 months   ki0047075b-MAL-ED          BRAZIL                         [-3--2)      160      9      0      9
18 months   ki0047075b-MAL-ED          BRAZIL                         [-2--1)      160     39     22     17
18 months   ki0047075b-MAL-ED          BRAZIL                         [-1-0)       160     69     65      4
18 months   ki0047075b-MAL-ED          INDIA                          >=0          185     32     28      4
18 months   ki0047075b-MAL-ED          INDIA                          <-3          185      6      0      6
18 months   ki0047075b-MAL-ED          INDIA                          [-3--2)      185     22      0     22
18 months   ki0047075b-MAL-ED          INDIA                          [-2--1)      185     61     21     40
18 months   ki0047075b-MAL-ED          INDIA                          [-1-0)       185     64     33     31
18 months   ki0047075b-MAL-ED          NEPAL                          >=0          167     44     44      0
18 months   ki0047075b-MAL-ED          NEPAL                          <-3          167      5      0      5
18 months   ki0047075b-MAL-ED          NEPAL                          [-3--2)      167     12      0     12
18 months   ki0047075b-MAL-ED          NEPAL                          [-2--1)      167     44     25     19
18 months   ki0047075b-MAL-ED          NEPAL                          [-1-0)       167     62     51     11
18 months   ki0047075b-MAL-ED          PERU                           >=0          233     35     23     12
18 months   ki0047075b-MAL-ED          PERU                           <-3          233      7      0      7
18 months   ki0047075b-MAL-ED          PERU                           [-3--2)      233     22      0     22
18 months   ki0047075b-MAL-ED          PERU                           [-2--1)      233     82     19     63
18 months   ki0047075b-MAL-ED          PERU                           [-1-0)       233     87     36     51
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=0          215     48     32     16
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <-3          215      1      0      1
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [-3--2)      215     21      0     21
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [-2--1)      215     56     16     40
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [-1-0)       215     89     47     42
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=0          111     22     12     10
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <-3          111      5      0      5
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-3--2)      111     11      0     11
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-2--1)      111     29      3     26
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-1-0)       111     44      7     37
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=0           93     15      6      9
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          <-3           93      3      0      3
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          [-3--2)       93     13      0     13
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          [-2--1)       93     22      7     15
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          [-1-0)        93     40      9     31
18 months   ki1000108-IRC              INDIA                          >=0          388    143     86     57
18 months   ki1000108-IRC              INDIA                          <-3          388     16      0     16
18 months   ki1000108-IRC              INDIA                          [-3--2)      388     27      0     27
18 months   ki1000108-IRC              INDIA                          [-2--1)      388     65     19     46
18 months   ki1000108-IRC              INDIA                          [-1-0)       388    137     64     73
18 months   ki1000109-EE               PAKISTAN                       >=0            2      1      0      1
18 months   ki1000109-EE               PAKISTAN                       <-3            2      0      0      0
18 months   ki1000109-EE               PAKISTAN                       [-3--2)        2      1      0      1
18 months   ki1000109-EE               PAKISTAN                       [-2--1)        2      0      0      0
18 months   ki1000109-EE               PAKISTAN                       [-1-0)         2      0      0      0
18 months   ki1000109-ResPak           PAKISTAN                       >=0            5      1      0      1
18 months   ki1000109-ResPak           PAKISTAN                       <-3            5      0      0      0
18 months   ki1000109-ResPak           PAKISTAN                       [-3--2)        5      2      0      2
18 months   ki1000109-ResPak           PAKISTAN                       [-2--1)        5      0      0      0
18 months   ki1000109-ResPak           PAKISTAN                       [-1-0)         5      2      1      1
18 months   ki1000304b-SAS-CompFeed    INDIA                          >=0          413     69     33     36
18 months   ki1000304b-SAS-CompFeed    INDIA                          <-3          413     17      0     17
18 months   ki1000304b-SAS-CompFeed    INDIA                          [-3--2)      413     60      0     60
18 months   ki1000304b-SAS-CompFeed    INDIA                          [-2--1)      413    128     27    101
18 months   ki1000304b-SAS-CompFeed    INDIA                          [-1-0)       413    139     64     75
18 months   ki1017093-NIH-Birth        BANGLADESH                     >=0           17      3      2      1
18 months   ki1017093-NIH-Birth        BANGLADESH                     <-3           17      0      0      0
18 months   ki1017093-NIH-Birth        BANGLADESH                     [-3--2)       17      1      0      1
18 months   ki1017093-NIH-Birth        BANGLADESH                     [-2--1)       17      8      0      8
18 months   ki1017093-NIH-Birth        BANGLADESH                     [-1-0)        17      5      0      5
18 months   ki1017093b-PROVIDE         BANGLADESH                     >=0          604    193    165     28
18 months   ki1017093b-PROVIDE         BANGLADESH                     <-3          604      1      0      1
18 months   ki1017093b-PROVIDE         BANGLADESH                     [-3--2)      604     21      0     21
18 months   ki1017093b-PROVIDE         BANGLADESH                     [-2--1)      604    149     34    115
18 months   ki1017093b-PROVIDE         BANGLADESH                     [-1-0)       604    240    153     87
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=0          715    213    190     23
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     <-3          715      6      0      6
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     [-3--2)      715     44      0     44
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     [-2--1)      715    177     44    133
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     [-1-0)       715    275    164    111
18 months   ki1101329-Keneba           GAMBIA                         >=0         1361    749    468    281
18 months   ki1101329-Keneba           GAMBIA                         <-3         1361     28      0     28
18 months   ki1101329-Keneba           GAMBIA                         [-3--2)     1361     47      0     47
18 months   ki1101329-Keneba           GAMBIA                         [-2--1)     1361    134     32    102
18 months   ki1101329-Keneba           GAMBIA                         [-1-0)      1361    403    161    242
18 months   ki1114097-CMIN             BRAZIL                         >=0          114     63     51     12
18 months   ki1114097-CMIN             BRAZIL                         <-3          114      3      0      3
18 months   ki1114097-CMIN             BRAZIL                         [-3--2)      114      2      0      2
18 months   ki1114097-CMIN             BRAZIL                         [-2--1)      114     11      6      5
18 months   ki1114097-CMIN             BRAZIL                         [-1-0)       114     35     22     13
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
18 months   ki1119695-PROBIT           BELARUS                        >=0         7472   6816   6005    811
18 months   ki1119695-PROBIT           BELARUS                        <-3         7472      4      0      4
18 months   ki1119695-PROBIT           BELARUS                        [-3--2)     7472     17      1     16
18 months   ki1119695-PROBIT           BELARUS                        [-2--1)     7472     57     16     41
18 months   ki1119695-PROBIT           BELARUS                        [-1-0)      7472    578    280    298
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=0         7158   2221   1508    713
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       <-3         7158    229      0    229
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)     7158    515      0    515
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)     7158   1427    602    825
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)      7158   2766   1536   1230
18 months   ki1135781-COHORTS          GUATEMALA                      >=0          279    160     45    115
18 months   ki1135781-COHORTS          GUATEMALA                      <-3          279      1      0      1
18 months   ki1135781-COHORTS          GUATEMALA                      [-3--2)      279     13      0     13
18 months   ki1135781-COHORTS          GUATEMALA                      [-2--1)      279     26      1     25
18 months   ki1135781-COHORTS          GUATEMALA                      [-1-0)       279     79      6     73
18 months   ki1135781-COHORTS          PHILIPPINES                    >=0         2627   1138    633    505
18 months   ki1135781-COHORTS          PHILIPPINES                    <-3         2627     35      0     35
18 months   ki1135781-COHORTS          PHILIPPINES                    [-3--2)     2627    116      0    116
18 months   ki1135781-COHORTS          PHILIPPINES                    [-2--1)     2627    392     69    323
18 months   ki1135781-COHORTS          PHILIPPINES                    [-1-0)      2627    946    303    643
18 months   kiGH5241-JiVitA-3          BANGLADESH                     >=0         7173   1176    908    268
18 months   kiGH5241-JiVitA-3          BANGLADESH                     <-3         7173    625      0    625
18 months   kiGH5241-JiVitA-3          BANGLADESH                     [-3--2)     7173   1331      0   1331
18 months   kiGH5241-JiVitA-3          BANGLADESH                     [-2--1)     7173   2284   1091   1193
18 months   kiGH5241-JiVitA-3          BANGLADESH                     [-1-0)      7173   1757   1275    482
18 months   kiGH5241-JiVitA-4          BANGLADESH                     >=0         1132    359    232    127
18 months   kiGH5241-JiVitA-4          BANGLADESH                     <-3         1132     63      0     63
18 months   kiGH5241-JiVitA-4          BANGLADESH                     [-3--2)     1132    152      0    152
18 months   kiGH5241-JiVitA-4          BANGLADESH                     [-2--1)     1132    265    106    159
18 months   kiGH5241-JiVitA-4          BANGLADESH                     [-1-0)      1132    293    169    124
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=0          213     38     28     10
24 months   ki0047075b-MAL-ED          BANGLADESH                     <-3          213      6      0      6
24 months   ki0047075b-MAL-ED          BANGLADESH                     [-3--2)      213     27      0     27
24 months   ki0047075b-MAL-ED          BANGLADESH                     [-2--1)      213     65     17     48
24 months   ki0047075b-MAL-ED          BANGLADESH                     [-1-0)       213     77     37     40
24 months   ki0047075b-MAL-ED          BRAZIL                         >=0          144     29     28      1
24 months   ki0047075b-MAL-ED          BRAZIL                         <-3          144      5      0      5
24 months   ki0047075b-MAL-ED          BRAZIL                         [-3--2)      144      8      0      8
24 months   ki0047075b-MAL-ED          BRAZIL                         [-2--1)      144     37     20     17
24 months   ki0047075b-MAL-ED          BRAZIL                         [-1-0)       144     65     61      4
24 months   ki0047075b-MAL-ED          INDIA                          >=0          184     32     25      7
24 months   ki0047075b-MAL-ED          INDIA                          <-3          184      6      0      6
24 months   ki0047075b-MAL-ED          INDIA                          [-3--2)      184     22      0     22
24 months   ki0047075b-MAL-ED          INDIA                          [-2--1)      184     61     18     43
24 months   ki0047075b-MAL-ED          INDIA                          [-1-0)       184     63     31     32
24 months   ki0047075b-MAL-ED          NEPAL                          >=0          166     43     41      2
24 months   ki0047075b-MAL-ED          NEPAL                          <-3          166      5      0      5
24 months   ki0047075b-MAL-ED          NEPAL                          [-3--2)      166     12      0     12
24 months   ki0047075b-MAL-ED          NEPAL                          [-2--1)      166     44     23     21
24 months   ki0047075b-MAL-ED          NEPAL                          [-1-0)       166     62     46     16
24 months   ki0047075b-MAL-ED          PERU                           >=0          207     32     20     12
24 months   ki0047075b-MAL-ED          PERU                           <-3          207      6      0      6
24 months   ki0047075b-MAL-ED          PERU                           [-3--2)      207     21      0     21
24 months   ki0047075b-MAL-ED          PERU                           [-2--1)      207     70     11     59
24 months   ki0047075b-MAL-ED          PERU                           [-1-0)       207     78     28     50
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=0          205     45     26     19
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <-3          205      1      0      1
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [-3--2)      205     19      0     19
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [-2--1)      205     55     13     42
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [-1-0)       205     85     39     46
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=0          107     20      8     12
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <-3          107      5      0      5
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-3--2)      107     10      0     10
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-2--1)      107     29      3     26
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-1-0)       107     43      5     38
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=0           93     15      4     11
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <-3           93      3      0      3
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [-3--2)       93     13      0     13
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [-2--1)       93     22      1     21
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [-1-0)        93     40      5     35
24 months   ki1000108-IRC              INDIA                          >=0          388    143     71     72
24 months   ki1000108-IRC              INDIA                          <-3          388     16      0     16
24 months   ki1000108-IRC              INDIA                          [-3--2)      388     27      0     27
24 months   ki1000108-IRC              INDIA                          [-2--1)      388     65     18     47
24 months   ki1000108-IRC              INDIA                          [-1-0)       388    137     51     86
24 months   ki1000109-EE               PAKISTAN                       >=0            2      1      0      1
24 months   ki1000109-EE               PAKISTAN                       <-3            2      0      0      0
24 months   ki1000109-EE               PAKISTAN                       [-3--2)        2      1      0      1
24 months   ki1000109-EE               PAKISTAN                       [-2--1)        2      0      0      0
24 months   ki1000109-EE               PAKISTAN                       [-1-0)         2      0      0      0
24 months   ki1000304b-SAS-CompFeed    INDIA                          >=0           42     10      5      5
24 months   ki1000304b-SAS-CompFeed    INDIA                          <-3           42      2      0      2
24 months   ki1000304b-SAS-CompFeed    INDIA                          [-3--2)       42      6      0      6
24 months   ki1000304b-SAS-CompFeed    INDIA                          [-2--1)       42     10      4      6
24 months   ki1000304b-SAS-CompFeed    INDIA                          [-1-0)        42     14      3     11
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=0           17      3      2      1
24 months   ki1017093-NIH-Birth        BANGLADESH                     <-3           17      0      0      0
24 months   ki1017093-NIH-Birth        BANGLADESH                     [-3--2)       17      1      0      1
24 months   ki1017093-NIH-Birth        BANGLADESH                     [-2--1)       17      8      0      8
24 months   ki1017093-NIH-Birth        BANGLADESH                     [-1-0)        17      5      0      5
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=0          582    188    150     38
24 months   ki1017093b-PROVIDE         BANGLADESH                     <-3          582      1      0      1
24 months   ki1017093b-PROVIDE         BANGLADESH                     [-3--2)      582     21      0     21
24 months   ki1017093b-PROVIDE         BANGLADESH                     [-2--1)      582    142     28    114
24 months   ki1017093b-PROVIDE         BANGLADESH                     [-1-0)       582    230    124    106
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=0          634    190    158     32
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <-3          634      6      0      6
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [-3--2)      634     42      0     42
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [-2--1)      634    159     35    124
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [-1-0)       634    237    123    114
24 months   ki1101329-Keneba           GAMBIA                         >=0         1295    712    381    331
24 months   ki1101329-Keneba           GAMBIA                         <-3         1295     25      0     25
24 months   ki1101329-Keneba           GAMBIA                         [-3--2)     1295     40      0     40
24 months   ki1101329-Keneba           GAMBIA                         [-2--1)     1295    129     30     99
24 months   ki1101329-Keneba           GAMBIA                         [-1-0)      1295    389    124    265
24 months   ki1114097-CMIN             BRAZIL                         >=0          115     63     47     16
24 months   ki1114097-CMIN             BRAZIL                         <-3          115      3      0      3
24 months   ki1114097-CMIN             BRAZIL                         [-3--2)      115      2      0      2
24 months   ki1114097-CMIN             BRAZIL                         [-2--1)      115     11      6      5
24 months   ki1114097-CMIN             BRAZIL                         [-1-0)       115     36     22     14
24 months   ki1114097-CMIN             PERU                           >=0            8      8      7      1
24 months   ki1114097-CMIN             PERU                           <-3            8      0      0      0
24 months   ki1114097-CMIN             PERU                           [-3--2)        8      0      0      0
24 months   ki1114097-CMIN             PERU                           [-2--1)        8      0      0      0
24 months   ki1114097-CMIN             PERU                           [-1-0)         8      0      0      0
24 months   ki1114097-CONTENT          PERU                           >=0            2      1      1      0
24 months   ki1114097-CONTENT          PERU                           <-3            2      0      0      0
24 months   ki1114097-CONTENT          PERU                           [-3--2)        2      0      0      0
24 months   ki1114097-CONTENT          PERU                           [-2--1)        2      1      1      0
24 months   ki1114097-CONTENT          PERU                           [-1-0)         2      0      0      0
24 months   ki1119695-PROBIT           BELARUS                        >=0         2076   1923   1590    333
24 months   ki1119695-PROBIT           BELARUS                        <-3         2076      1      0      1
24 months   ki1119695-PROBIT           BELARUS                        [-3--2)     2076      4      0      4
24 months   ki1119695-PROBIT           BELARUS                        [-2--1)     2076     11      4      7
24 months   ki1119695-PROBIT           BELARUS                        [-1-0)      2076    137     54     83
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=0         1847    426    187    239
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <-3         1847     88      0     88
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)     1847    190      0    190
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)     1847    481    108    373
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)      1847    662    229    433
24 months   ki1135781-COHORTS          GUATEMALA                      >=0          261    140     22    118
24 months   ki1135781-COHORTS          GUATEMALA                      <-3          261      1      0      1
24 months   ki1135781-COHORTS          GUATEMALA                      [-3--2)      261     10      0     10
24 months   ki1135781-COHORTS          GUATEMALA                      [-2--1)      261     28      1     27
24 months   ki1135781-COHORTS          GUATEMALA                      [-1-0)       261     82      3     79
24 months   ki1135781-COHORTS          PHILIPPINES                    >=0         2559   1117    432    685
24 months   ki1135781-COHORTS          PHILIPPINES                    <-3         2559     36      0     36
24 months   ki1135781-COHORTS          PHILIPPINES                    [-3--2)     2559    108      0    108
24 months   ki1135781-COHORTS          PHILIPPINES                    [-2--1)     2559    375     38    337
24 months   ki1135781-COHORTS          PHILIPPINES                    [-1-0)      2559    923    162    761
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=0            3      0      0      0
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <-3            3      0      0      0
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [-3--2)        3      1      0      1
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [-2--1)        3      1      1      0
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [-1-0)         3      1      1      0
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=0          995    307    183    124
24 months   kiGH5241-JiVitA-4          BANGLADESH                     <-3          995     58      0     58
24 months   kiGH5241-JiVitA-4          BANGLADESH                     [-3--2)      995    140      0    140
24 months   kiGH5241-JiVitA-4          BANGLADESH                     [-2--1)      995    234     81    153
24 months   kiGH5241-JiVitA-4          BANGLADESH                     [-1-0)       995    256    136    120


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
* agecat: 18 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
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
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
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
* agecat: 3 months, studyid: ki1114097-CMIN, country: BANGLADESH
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
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

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
* agecat: 3 months, studyid: ki1114097-CMIN, country: BANGLADESH
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
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
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
* agecat: 18 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
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
* agecat: 24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 24 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH


ALL STRATA DROPPED. JOB FINISHED














