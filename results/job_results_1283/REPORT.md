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
3 months    ki0047075b-MAL-ED          BANGLADESH                     >=0          258     34     33      1
3 months    ki0047075b-MAL-ED          BANGLADESH                     <-3          258      7      0      7
3 months    ki0047075b-MAL-ED          BANGLADESH                     [-3--2)      258     38     12     26
3 months    ki0047075b-MAL-ED          BANGLADESH                     [-2--1)      258     96     66     30
3 months    ki0047075b-MAL-ED          BANGLADESH                     [-1-0)       258     83     72     11
3 months    ki0047075b-MAL-ED          BRAZIL                         >=0          233    128    119      9
3 months    ki0047075b-MAL-ED          BRAZIL                         <-3          233      0      0      0
3 months    ki0047075b-MAL-ED          BRAZIL                         [-3--2)      233      9      2      7
3 months    ki0047075b-MAL-ED          BRAZIL                         [-2--1)      233     23     11     12
3 months    ki0047075b-MAL-ED          BRAZIL                         [-1-0)       233     73     63     10
3 months    ki0047075b-MAL-ED          INDIA                          >=0          245     44     43      1
3 months    ki0047075b-MAL-ED          INDIA                          <-3          245      5      0      5
3 months    ki0047075b-MAL-ED          INDIA                          [-3--2)      245     24      9     15
3 months    ki0047075b-MAL-ED          INDIA                          [-2--1)      245     81     50     31
3 months    ki0047075b-MAL-ED          INDIA                          [-1-0)       245     91     77     14
3 months    ki0047075b-MAL-ED          NEPAL                          >=0          233     48     48      0
3 months    ki0047075b-MAL-ED          NEPAL                          <-3          233      4      0      4
3 months    ki0047075b-MAL-ED          NEPAL                          [-3--2)      233     15      5     10
3 months    ki0047075b-MAL-ED          NEPAL                          [-2--1)      233     55     40     15
3 months    ki0047075b-MAL-ED          NEPAL                          [-1-0)       233    111    103      8
3 months    ki0047075b-MAL-ED          PERU                           >=0          299     93     83     10
3 months    ki0047075b-MAL-ED          PERU                           <-3          299      5      0      5
3 months    ki0047075b-MAL-ED          PERU                           [-3--2)      299     10      0     10
3 months    ki0047075b-MAL-ED          PERU                           [-2--1)      299     43      9     34
3 months    ki0047075b-MAL-ED          PERU                           [-1-0)       299    148    107     41
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=0          314    113    105      8
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <-3          314      5      0      5
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [-3--2)      314     16      4     12
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [-2--1)      314     49     24     25
3 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [-1-0)       314    131     99     32
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=0          132     59     53      6
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <-3          132      1      0      1
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-3--2)      132      5      1      4
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-2--1)      132     18     10      8
3 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-1-0)       132     49     34     15
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=0          355     68     59      9
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          <-3          355     12      1     11
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          [-3--2)      355     29      6     23
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          [-2--1)      355    106     62     44
3 months    ki1000108-CMC-V-BCS-2002   INDIA                          [-1-0)       355    140    105     35
3 months    ki1000108-IRC              INDIA                          >=0          404     61     53      8
3 months    ki1000108-IRC              INDIA                          <-3          404     13      3     10
3 months    ki1000108-IRC              INDIA                          [-3--2)      404     41     15     26
3 months    ki1000108-IRC              INDIA                          [-2--1)      404    133     79     54
3 months    ki1000108-IRC              INDIA                          [-1-0)       404    156    127     29
3 months    ki1000109-EE               PAKISTAN                       >=0          376     35     27      8
3 months    ki1000109-EE               PAKISTAN                       <-3          376     47      6     41
3 months    ki1000109-EE               PAKISTAN                       [-3--2)      376     73     14     59
3 months    ki1000109-EE               PAKISTAN                       [-2--1)      376    118     40     78
3 months    ki1000109-EE               PAKISTAN                       [-1-0)       376    103     51     52
3 months    ki1000109-ResPak           PAKISTAN                       >=0            7      4      4      0
3 months    ki1000109-ResPak           PAKISTAN                       <-3            7      1      0      1
3 months    ki1000109-ResPak           PAKISTAN                       [-3--2)        7      0      0      0
3 months    ki1000109-ResPak           PAKISTAN                       [-2--1)        7      1      0      1
3 months    ki1000109-ResPak           PAKISTAN                       [-1-0)         7      1      1      0
3 months    ki1000304b-SAS-CompFeed    INDIA                          >=0          469     42     38      4
3 months    ki1000304b-SAS-CompFeed    INDIA                          <-3          469     31      1     30
3 months    ki1000304b-SAS-CompFeed    INDIA                          [-3--2)      469     50     17     33
3 months    ki1000304b-SAS-CompFeed    INDIA                          [-2--1)      469    177    113     64
3 months    ki1000304b-SAS-CompFeed    INDIA                          [-1-0)       469    169    144     25
3 months    ki1017093-NIH-Birth        BANGLADESH                     >=0           28      2      2      0
3 months    ki1017093-NIH-Birth        BANGLADESH                     <-3           28      0      0      0
3 months    ki1017093-NIH-Birth        BANGLADESH                     [-3--2)       28      4      1      3
3 months    ki1017093-NIH-Birth        BANGLADESH                     [-2--1)       28     15     13      2
3 months    ki1017093-NIH-Birth        BANGLADESH                     [-1-0)        28      7      6      1
3 months    ki1017093b-PROVIDE         BANGLADESH                     >=0          700     66     65      1
3 months    ki1017093b-PROVIDE         BANGLADESH                     <-3          700      4      0      4
3 months    ki1017093b-PROVIDE         BANGLADESH                     [-3--2)      700    114     48     66
3 months    ki1017093b-PROVIDE         BANGLADESH                     [-2--1)      700    292    243     49
3 months    ki1017093b-PROVIDE         BANGLADESH                     [-1-0)       700    224    214     10
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=0          758     99     97      2
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     <-3          758     23      7     16
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     [-3--2)      758    113     68     45
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     [-2--1)      758    285    235     50
3 months    ki1017093c-NIH-Crypto      BANGLADESH                     [-1-0)       758    238    230      8
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=0         2367   1026    992     34
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <-3         2367     22      7     15
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-3--2)     2367     48     30     18
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-2--1)     2367    304    230     74
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-1-0)      2367    967    868     99
3 months    ki1101329-Keneba           GAMBIA                         >=0         1931    377    349     28
3 months    ki1101329-Keneba           GAMBIA                         <-3         1931     26      5     21
3 months    ki1101329-Keneba           GAMBIA                         [-3--2)     1931    118     28     90
3 months    ki1101329-Keneba           GAMBIA                         [-2--1)     1931    542    355    187
3 months    ki1101329-Keneba           GAMBIA                         [-1-0)      1931    868    734    134
3 months    ki1114097-CMIN             BANGLADESH                     >=0           12      2      2      0
3 months    ki1114097-CMIN             BANGLADESH                     <-3           12      3      0      3
3 months    ki1114097-CMIN             BANGLADESH                     [-3--2)       12      3      1      2
3 months    ki1114097-CMIN             BANGLADESH                     [-2--1)       12      1      1      0
3 months    ki1114097-CMIN             BANGLADESH                     [-1-0)        12      3      3      0
3 months    ki1114097-CMIN             BRAZIL                         >=0          115     56     55      1
3 months    ki1114097-CMIN             BRAZIL                         <-3          115      1      0      1
3 months    ki1114097-CMIN             BRAZIL                         [-3--2)      115      2      1      1
3 months    ki1114097-CMIN             BRAZIL                         [-2--1)      115     18     14      4
3 months    ki1114097-CMIN             BRAZIL                         [-1-0)       115     38     38      0
3 months    ki1114097-CMIN             PERU                           >=0           10      8      8      0
3 months    ki1114097-CMIN             PERU                           <-3           10      0      0      0
3 months    ki1114097-CMIN             PERU                           [-3--2)       10      0      0      0
3 months    ki1114097-CMIN             PERU                           [-2--1)       10      0      0      0
3 months    ki1114097-CMIN             PERU                           [-1-0)        10      2      2      0
3 months    ki1114097-CONTENT          PERU                           >=0            2      1      1      0
3 months    ki1114097-CONTENT          PERU                           <-3            2      0      0      0
3 months    ki1114097-CONTENT          PERU                           [-3--2)        2      0      0      0
3 months    ki1114097-CONTENT          PERU                           [-2--1)        2      0      0      0
3 months    ki1114097-CONTENT          PERU                           [-1-0)         2      1      1      0
3 months    ki1119695-PROBIT           BELARUS                        >=0         8125   5045   4976     69
3 months    ki1119695-PROBIT           BELARUS                        <-3         8125      0      0      0
3 months    ki1119695-PROBIT           BELARUS                        [-3--2)     8125      0      0      0
3 months    ki1119695-PROBIT           BELARUS                        [-2--1)     8125    581    356    225
3 months    ki1119695-PROBIT           BELARUS                        [-1-0)      8125   2499   2191    308
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=0        13993   3215   3077    138
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       <-3        13993    412     67    345
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)    13993   1183    489    694
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)    13993   3383   2334   1049
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)     13993   5800   5094    706
3 months    ki1135781-COHORTS          GUATEMALA                      >=0          439    120    104     16
3 months    ki1135781-COHORTS          GUATEMALA                      <-3          439      8      1      7
3 months    ki1135781-COHORTS          GUATEMALA                      [-3--2)      439     43     19     24
3 months    ki1135781-COHORTS          GUATEMALA                      [-2--1)      439    131     90     41
3 months    ki1135781-COHORTS          GUATEMALA                      [-1-0)       439    137    111     26
3 months    ki1135781-COHORTS          INDIA                          >=0         6638    760    741     19
3 months    ki1135781-COHORTS          INDIA                          <-3         6638    284     34    250
3 months    ki1135781-COHORTS          INDIA                          [-3--2)     6638    861    441    420
3 months    ki1135781-COHORTS          INDIA                          [-2--1)     6638   2257   1818    439
3 months    ki1135781-COHORTS          INDIA                          [-1-0)      6638   2476   2352    124
3 months    ki1135781-COHORTS          PHILIPPINES                    >=0         3007    654    648      6
3 months    ki1135781-COHORTS          PHILIPPINES                    <-3         3007     71     16     55
3 months    ki1135781-COHORTS          PHILIPPINES                    [-3--2)     3007    177     79     98
3 months    ki1135781-COHORTS          PHILIPPINES                    [-2--1)     3007    723    555    168
3 months    ki1135781-COHORTS          PHILIPPINES                    [-1-0)      3007   1382   1278    104
3 months    kiGH5241-JiVitA-3          BANGLADESH                     >=0        13336   1399   1223    176
3 months    kiGH5241-JiVitA-3          BANGLADESH                     <-3        13336   1460     71   1389
3 months    kiGH5241-JiVitA-3          BANGLADESH                     [-3--2)    13336   3118    844   2274
3 months    kiGH5241-JiVitA-3          BANGLADESH                     [-2--1)    13336   4790   3484   1306
3 months    kiGH5241-JiVitA-3          BANGLADESH                     [-1-0)     13336   2569   2337    232
3 months    kiGH5241-JiVitA-4          BANGLADESH                     >=0         1156    275    247     28
3 months    kiGH5241-JiVitA-4          BANGLADESH                     <-3         1156     72      1     71
3 months    kiGH5241-JiVitA-4          BANGLADESH                     [-3--2)     1156    165     56    109
3 months    kiGH5241-JiVitA-4          BANGLADESH                     [-2--1)     1156    345    265     80
3 months    kiGH5241-JiVitA-4          BANGLADESH                     [-1-0)      1156    299    271     28
6 months    ki0047075b-MAL-ED          BANGLADESH                     >=0          239     33     31      2
6 months    ki0047075b-MAL-ED          BANGLADESH                     <-3          239      4      0      4
6 months    ki0047075b-MAL-ED          BANGLADESH                     [-3--2)      239     35      7     28
6 months    ki0047075b-MAL-ED          BANGLADESH                     [-2--1)      239     89     55     34
6 months    ki0047075b-MAL-ED          BANGLADESH                     [-1-0)       239     78     65     13
6 months    ki0047075b-MAL-ED          BRAZIL                         >=0          218    124    114     10
6 months    ki0047075b-MAL-ED          BRAZIL                         <-3          218      0      0      0
6 months    ki0047075b-MAL-ED          BRAZIL                         [-3--2)      218      8      2      6
6 months    ki0047075b-MAL-ED          BRAZIL                         [-2--1)      218     22     10     12
6 months    ki0047075b-MAL-ED          BRAZIL                         [-1-0)       218     64     52     12
6 months    ki0047075b-MAL-ED          INDIA                          >=0          234     41     40      1
6 months    ki0047075b-MAL-ED          INDIA                          <-3          234      5      0      5
6 months    ki0047075b-MAL-ED          INDIA                          [-3--2)      234     24      8     16
6 months    ki0047075b-MAL-ED          INDIA                          [-2--1)      234     76     40     36
6 months    ki0047075b-MAL-ED          INDIA                          [-1-0)       234     88     64     24
6 months    ki0047075b-MAL-ED          NEPAL                          >=0          231     48     48      0
6 months    ki0047075b-MAL-ED          NEPAL                          <-3          231      4      0      4
6 months    ki0047075b-MAL-ED          NEPAL                          [-3--2)      231     15      5     10
6 months    ki0047075b-MAL-ED          NEPAL                          [-2--1)      231     54     39     15
6 months    ki0047075b-MAL-ED          NEPAL                          [-1-0)       231    110    100     10
6 months    ki0047075b-MAL-ED          PERU                           >=0          279     86     68     18
6 months    ki0047075b-MAL-ED          PERU                           <-3          279      4      0      4
6 months    ki0047075b-MAL-ED          PERU                           [-3--2)      279      9      0      9
6 months    ki0047075b-MAL-ED          PERU                           [-2--1)      279     42      6     36
6 months    ki0047075b-MAL-ED          PERU                           [-1-0)       279    138     82     56
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=0          271    101     82     19
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <-3          271      3      0      3
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [-3--2)      271     11      1     10
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [-2--1)      271     41     13     28
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [-1-0)       271    115     71     44
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=0          127     58     48     10
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <-3          127      0      0      0
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-3--2)      127      5      1      4
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-2--1)      127     17      8      9
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-1-0)       127     47     27     20
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=0          360     69     48     21
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <-3          360     12      1     11
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [-3--2)      360     30      2     28
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [-2--1)      360    106     44     62
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [-1-0)       360    143     82     61
6 months    ki1000108-IRC              INDIA                          >=0          402     61     49     12
6 months    ki1000108-IRC              INDIA                          <-3          402     13      3     10
6 months    ki1000108-IRC              INDIA                          [-3--2)      402     41     13     28
6 months    ki1000108-IRC              INDIA                          [-2--1)      402    132     61     71
6 months    ki1000108-IRC              INDIA                          [-1-0)       402    155    108     47
6 months    ki1000109-EE               PAKISTAN                       >=0          370     33     21     12
6 months    ki1000109-EE               PAKISTAN                       <-3          370     47      3     44
6 months    ki1000109-EE               PAKISTAN                       [-3--2)      370     72      4     68
6 months    ki1000109-EE               PAKISTAN                       [-2--1)      370    116     28     88
6 months    ki1000109-EE               PAKISTAN                       [-1-0)       370    102     40     62
6 months    ki1000109-ResPak           PAKISTAN                       >=0            6      3      1      2
6 months    ki1000109-ResPak           PAKISTAN                       <-3            6      1      0      1
6 months    ki1000109-ResPak           PAKISTAN                       [-3--2)        6      0      0      0
6 months    ki1000109-ResPak           PAKISTAN                       [-2--1)        6      1      0      1
6 months    ki1000109-ResPak           PAKISTAN                       [-1-0)         6      1      0      1
6 months    ki1000304b-SAS-CompFeed    INDIA                          >=0          367     32     25      7
6 months    ki1000304b-SAS-CompFeed    INDIA                          <-3          367     21      1     20
6 months    ki1000304b-SAS-CompFeed    INDIA                          [-3--2)      367     35      8     27
6 months    ki1000304b-SAS-CompFeed    INDIA                          [-2--1)      367    143     73     70
6 months    ki1000304b-SAS-CompFeed    INDIA                          [-1-0)       367    136    102     34
6 months    ki1017093-NIH-Birth        BANGLADESH                     >=0           22      1      1      0
6 months    ki1017093-NIH-Birth        BANGLADESH                     <-3           22      0      0      0
6 months    ki1017093-NIH-Birth        BANGLADESH                     [-3--2)       22      3      0      3
6 months    ki1017093-NIH-Birth        BANGLADESH                     [-2--1)       22     12      8      4
6 months    ki1017093-NIH-Birth        BANGLADESH                     [-1-0)        22      6      5      1
6 months    ki1017093b-PROVIDE         BANGLADESH                     >=0          640     59     57      2
6 months    ki1017093b-PROVIDE         BANGLADESH                     <-3          640      4      0      4
6 months    ki1017093b-PROVIDE         BANGLADESH                     [-3--2)      640    103     32     71
6 months    ki1017093b-PROVIDE         BANGLADESH                     [-2--1)      640    268    197     71
6 months    ki1017093b-PROVIDE         BANGLADESH                     [-1-0)       640    206    191     15
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=0          736     97     95      2
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <-3          736     23      3     20
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [-3--2)      736    111     42     69
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [-2--1)      736    275    176     99
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [-1-0)       736    230    194     36
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=0         2209    959    853    106
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <-3         2209     21      5     16
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-3--2)     2209     44     24     20
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-2--1)     2209    284    171    113
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-1-0)      2209    901    716    185
6 months    ki1101329-Keneba           GAMBIA                         >=0         1838    372    322     50
6 months    ki1101329-Keneba           GAMBIA                         <-3         1838     25      3     22
6 months    ki1101329-Keneba           GAMBIA                         [-3--2)     1838    113     26     87
6 months    ki1101329-Keneba           GAMBIA                         [-2--1)     1838    511    277    234
6 months    ki1101329-Keneba           GAMBIA                         [-1-0)      1838    817    619    198
6 months    ki1114097-CMIN             BRAZIL                         >=0           87     39     37      2
6 months    ki1114097-CMIN             BRAZIL                         <-3           87      1      0      1
6 months    ki1114097-CMIN             BRAZIL                         [-3--2)       87      1      0      1
6 months    ki1114097-CMIN             BRAZIL                         [-2--1)       87     14      8      6
6 months    ki1114097-CMIN             BRAZIL                         [-1-0)        87     32     27      5
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
6 months    ki1119695-PROBIT           BELARUS                        >=0         7807   4849   4709    140
6 months    ki1119695-PROBIT           BELARUS                        <-3         7807      0      0      0
6 months    ki1119695-PROBIT           BELARUS                        [-3--2)     7807      0      0      0
6 months    ki1119695-PROBIT           BELARUS                        [-2--1)     7807    553    300    253
6 months    ki1119695-PROBIT           BELARUS                        [-1-0)      7807   2405   1984    421
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=0         9068   2131   1950    181
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <-3         9068    225     16    209
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)     9068    716    185    531
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)     9068   2195   1211    984
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)      9068   3801   3035    766
6 months    ki1135781-COHORTS          GUATEMALA                      >=0          127     37     32      5
6 months    ki1135781-COHORTS          GUATEMALA                      <-3          127      2      0      2
6 months    ki1135781-COHORTS          GUATEMALA                      [-3--2)      127     12      4      8
6 months    ki1135781-COHORTS          GUATEMALA                      [-2--1)      127     32     17     15
6 months    ki1135781-COHORTS          GUATEMALA                      [-1-0)       127     44     29     15
6 months    ki1135781-COHORTS          PHILIPPINES                    >=0         2760    591    554     37
6 months    ki1135781-COHORTS          PHILIPPINES                    <-3         2760     58     10     48
6 months    ki1135781-COHORTS          PHILIPPINES                    [-3--2)     2760    154     46    108
6 months    ki1135781-COHORTS          PHILIPPINES                    [-2--1)     2760    671    420    251
6 months    ki1135781-COHORTS          PHILIPPINES                    [-1-0)      2760   1286   1046    240
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=0         9576   1086    918    168
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <-3         9576    954     43    911
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [-3--2)     9576   2206    548   1658
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [-2--1)     9576   3501   2384   1117
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [-1-0)      9576   1829   1609    220
6 months    kiGH5241-JiVitA-4          BANGLADESH                     >=0         1020    249    208     41
6 months    kiGH5241-JiVitA-4          BANGLADESH                     <-3         1020     61      0     61
6 months    kiGH5241-JiVitA-4          BANGLADESH                     [-3--2)     1020    145     37    108
6 months    kiGH5241-JiVitA-4          BANGLADESH                     [-2--1)     1020    304    214     90
6 months    kiGH5241-JiVitA-4          BANGLADESH                     [-1-0)      1020    261    216     45
12 months   ki0047075b-MAL-ED          BANGLADESH                     >=0          233     33     28      5
12 months   ki0047075b-MAL-ED          BANGLADESH                     <-3          233      4      0      4
12 months   ki0047075b-MAL-ED          BANGLADESH                     [-3--2)      233     35      5     30
12 months   ki0047075b-MAL-ED          BANGLADESH                     [-2--1)      233     84     46     38
12 months   ki0047075b-MAL-ED          BANGLADESH                     [-1-0)       233     77     54     23
12 months   ki0047075b-MAL-ED          BRAZIL                         >=0          207    119    107     12
12 months   ki0047075b-MAL-ED          BRAZIL                         <-3          207      0      0      0
12 months   ki0047075b-MAL-ED          BRAZIL                         [-3--2)      207      8      2      6
12 months   ki0047075b-MAL-ED          BRAZIL                         [-2--1)      207     21      9     12
12 months   ki0047075b-MAL-ED          BRAZIL                         [-1-0)       207     59     47     12
12 months   ki0047075b-MAL-ED          INDIA                          >=0          230     41     32      9
12 months   ki0047075b-MAL-ED          INDIA                          <-3          230      5      0      5
12 months   ki0047075b-MAL-ED          INDIA                          [-3--2)      230     22      6     16
12 months   ki0047075b-MAL-ED          INDIA                          [-2--1)      230     74     30     44
12 months   ki0047075b-MAL-ED          INDIA                          [-1-0)       230     88     53     35
12 months   ki0047075b-MAL-ED          NEPAL                          >=0          228     48     47      1
12 months   ki0047075b-MAL-ED          NEPAL                          <-3          228      4      0      4
12 months   ki0047075b-MAL-ED          NEPAL                          [-3--2)      228     15      5     10
12 months   ki0047075b-MAL-ED          NEPAL                          [-2--1)      228     52     36     16
12 months   ki0047075b-MAL-ED          NEPAL                          [-1-0)       228    109     95     14
12 months   ki0047075b-MAL-ED          PERU                           >=0          267     83     60     23
12 months   ki0047075b-MAL-ED          PERU                           <-3          267      4      0      4
12 months   ki0047075b-MAL-ED          PERU                           [-3--2)      267      9      0      9
12 months   ki0047075b-MAL-ED          PERU                           [-2--1)      267     40      5     35
12 months   ki0047075b-MAL-ED          PERU                           [-1-0)       267    131     64     67
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=0          259    100     71     29
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <-3          259      3      0      3
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [-3--2)      259     10      0     10
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [-2--1)      259     37     10     27
12 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [-1-0)       259    109     56     53
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=0          121     55     28     27
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <-3          121      0      0      0
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-3--2)      121      4      0      4
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-2--1)      121     17      4     13
12 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-1-0)       121     45     14     31
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=0          364     68     31     37
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          <-3          364     12      1     11
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          [-3--2)      364     30      1     29
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          [-2--1)      364    107     26     81
12 months   ki1000108-CMC-V-BCS-2002   INDIA                          [-1-0)       364    147     53     94
12 months   ki1000108-IRC              INDIA                          >=0          402     61     45     16
12 months   ki1000108-IRC              INDIA                          <-3          402     12      2     10
12 months   ki1000108-IRC              INDIA                          [-3--2)      402     41     10     31
12 months   ki1000108-IRC              INDIA                          [-2--1)      402    132     48     84
12 months   ki1000108-IRC              INDIA                          [-1-0)       402    156     95     61
12 months   ki1000109-EE               PAKISTAN                       >=0          370     35     19     16
12 months   ki1000109-EE               PAKISTAN                       <-3          370     47      0     47
12 months   ki1000109-EE               PAKISTAN                       [-3--2)      370     71      2     69
12 months   ki1000109-EE               PAKISTAN                       [-2--1)      370    116     20     96
12 months   ki1000109-EE               PAKISTAN                       [-1-0)       370    101     24     77
12 months   ki1000109-ResPak           PAKISTAN                       >=0            6      3      1      2
12 months   ki1000109-ResPak           PAKISTAN                       <-3            6      1      0      1
12 months   ki1000109-ResPak           PAKISTAN                       [-3--2)        6      0      0      0
12 months   ki1000109-ResPak           PAKISTAN                       [-2--1)        6      1      0      1
12 months   ki1000109-ResPak           PAKISTAN                       [-1-0)         6      1      0      1
12 months   ki1000304b-SAS-CompFeed    INDIA                          >=0          424     40     23     17
12 months   ki1000304b-SAS-CompFeed    INDIA                          <-3          424     23      0     23
12 months   ki1000304b-SAS-CompFeed    INDIA                          [-3--2)      424     45      4     41
12 months   ki1000304b-SAS-CompFeed    INDIA                          [-2--1)      424    161     54    107
12 months   ki1000304b-SAS-CompFeed    INDIA                          [-1-0)       424    155     93     62
12 months   ki1017093-NIH-Birth        BANGLADESH                     >=0           17      1      1      0
12 months   ki1017093-NIH-Birth        BANGLADESH                     <-3           17      0      0      0
12 months   ki1017093-NIH-Birth        BANGLADESH                     [-3--2)       17      3      0      3
12 months   ki1017093-NIH-Birth        BANGLADESH                     [-2--1)       17      9      3      6
12 months   ki1017093-NIH-Birth        BANGLADESH                     [-1-0)        17      4      2      2
12 months   ki1017093b-PROVIDE         BANGLADESH                     >=0          609     54     51      3
12 months   ki1017093b-PROVIDE         BANGLADESH                     <-3          609      4      0      4
12 months   ki1017093b-PROVIDE         BANGLADESH                     [-3--2)      609     99     25     74
12 months   ki1017093b-PROVIDE         BANGLADESH                     [-2--1)      609    256    163     93
12 months   ki1017093b-PROVIDE         BANGLADESH                     [-1-0)       609    196    168     28
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=0          729     96     86     10
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     <-3          729     23      3     20
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     [-3--2)      729    108     35     73
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     [-2--1)      729    274    153    121
12 months   ki1017093c-NIH-Crypto      BANGLADESH                     [-1-0)       729    228    175     53
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=0         1976    860    689    171
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <-3         1976     17      3     14
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-3--2)     1976     36     13     23
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-2--1)     1976    252    116    136
12 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-1-0)      1976    811    530    281
12 months   ki1101329-Keneba           GAMBIA                         >=0         1898    379    279    100
12 months   ki1101329-Keneba           GAMBIA                         <-3         1898     25      2     23
12 months   ki1101329-Keneba           GAMBIA                         [-3--2)     1898    110     21     89
12 months   ki1101329-Keneba           GAMBIA                         [-2--1)     1898    526    232    294
12 months   ki1101329-Keneba           GAMBIA                         [-1-0)      1898    858    560    298
12 months   ki1114097-CMIN             BRAZIL                         >=0          112     54     47      7
12 months   ki1114097-CMIN             BRAZIL                         <-3          112      1      0      1
12 months   ki1114097-CMIN             BRAZIL                         [-3--2)      112      2      0      2
12 months   ki1114097-CMIN             BRAZIL                         [-2--1)      112     18      8     10
12 months   ki1114097-CMIN             BRAZIL                         [-1-0)       112     37     26     11
12 months   ki1114097-CMIN             PERU                           >=0            9      8      8      0
12 months   ki1114097-CMIN             PERU                           <-3            9      0      0      0
12 months   ki1114097-CMIN             PERU                           [-3--2)        9      0      0      0
12 months   ki1114097-CMIN             PERU                           [-2--1)        9      0      0      0
12 months   ki1114097-CMIN             PERU                           [-1-0)         9      1      1      0
12 months   ki1114097-CONTENT          PERU                           >=0            2      1      1      0
12 months   ki1114097-CONTENT          PERU                           <-3            2      0      0      0
12 months   ki1114097-CONTENT          PERU                           [-3--2)        2      0      0      0
12 months   ki1114097-CONTENT          PERU                           [-2--1)        2      0      0      0
12 months   ki1114097-CONTENT          PERU                           [-1-0)         2      1      1      0
12 months   ki1119695-PROBIT           BELARUS                        >=0         7943   4952   4659    293
12 months   ki1119695-PROBIT           BELARUS                        <-3         7943      0      0      0
12 months   ki1119695-PROBIT           BELARUS                        [-3--2)     7943      0      0      0
12 months   ki1119695-PROBIT           BELARUS                        [-2--1)     7943    564    265    299
12 months   ki1119695-PROBIT           BELARUS                        [-1-0)      7943   2427   1862    565
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=0        10152   2343   1975    368
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       <-3        10152    265     17    248
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)    10152    791    185    606
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)    10152   2459   1134   1325
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)     10152   4294   3014   1280
12 months   ki1135781-COHORTS          GUATEMALA                      >=0          398    105     49     56
12 months   ki1135781-COHORTS          GUATEMALA                      <-3          398      6      0      6
12 months   ki1135781-COHORTS          GUATEMALA                      [-3--2)      398     39      2     37
12 months   ki1135781-COHORTS          GUATEMALA                      [-2--1)      398    124     24    100
12 months   ki1135781-COHORTS          GUATEMALA                      [-1-0)       398    124     44     80
12 months   ki1135781-COHORTS          INDIA                          >=0         6306    735    648     87
12 months   ki1135781-COHORTS          INDIA                          <-3         6306    235     21    214
12 months   ki1135781-COHORTS          INDIA                          [-3--2)     6306    817    272    545
12 months   ki1135781-COHORTS          INDIA                          [-2--1)     6306   2142   1167    975
12 months   ki1135781-COHORTS          INDIA                          [-1-0)      6306   2377   1783    594
12 months   ki1135781-COHORTS          PHILIPPINES                    >=0         2717    594    467    127
12 months   ki1135781-COHORTS          PHILIPPINES                    <-3         2717     55      8     47
12 months   ki1135781-COHORTS          PHILIPPINES                    [-3--2)     2717    149     30    119
12 months   ki1135781-COHORTS          PHILIPPINES                    [-2--1)     2717    657    264    393
12 months   ki1135781-COHORTS          PHILIPPINES                    [-1-0)      2717   1262    763    499
12 months   kiGH5241-JiVitA-3          BANGLADESH                     >=0         8337    925    760    165
12 months   kiGH5241-JiVitA-3          BANGLADESH                     <-3         8337    768     31    737
12 months   kiGH5241-JiVitA-3          BANGLADESH                     [-3--2)     8337   1900    427   1473
12 months   kiGH5241-JiVitA-3          BANGLADESH                     [-2--1)     8337   3058   1931   1127
12 months   kiGH5241-JiVitA-3          BANGLADESH                     [-1-0)      8337   1686   1416    270
12 months   kiGH5241-JiVitA-4          BANGLADESH                     >=0         1174    292    222     70
12 months   kiGH5241-JiVitA-4          BANGLADESH                     <-3         1174     74      0     74
12 months   kiGH5241-JiVitA-4          BANGLADESH                     [-3--2)     1174    162     32    130
12 months   kiGH5241-JiVitA-4          BANGLADESH                     [-2--1)     1174    345    193    152
12 months   kiGH5241-JiVitA-4          BANGLADESH                     [-1-0)      1174    301    212     89
18 months   ki0047075b-MAL-ED          BANGLADESH                     >=0          225     33     27      6
18 months   ki0047075b-MAL-ED          BANGLADESH                     <-3          225      4      0      4
18 months   ki0047075b-MAL-ED          BANGLADESH                     [-3--2)      225     34      4     30
18 months   ki0047075b-MAL-ED          BANGLADESH                     [-2--1)      225     81     31     50
18 months   ki0047075b-MAL-ED          BANGLADESH                     [-1-0)       225     73     36     37
18 months   ki0047075b-MAL-ED          BRAZIL                         >=0          194    109     95     14
18 months   ki0047075b-MAL-ED          BRAZIL                         <-3          194      0      0      0
18 months   ki0047075b-MAL-ED          BRAZIL                         [-3--2)      194      8      2      6
18 months   ki0047075b-MAL-ED          BRAZIL                         [-2--1)      194     20      8     12
18 months   ki0047075b-MAL-ED          BRAZIL                         [-1-0)       194     57     44     13
18 months   ki0047075b-MAL-ED          INDIA                          >=0          224     39     27     12
18 months   ki0047075b-MAL-ED          INDIA                          <-3          224      5      0      5
18 months   ki0047075b-MAL-ED          INDIA                          [-3--2)      224     22      6     16
18 months   ki0047075b-MAL-ED          INDIA                          [-2--1)      224     70     23     47
18 months   ki0047075b-MAL-ED          INDIA                          [-1-0)       224     88     38     50
18 months   ki0047075b-MAL-ED          NEPAL                          >=0          224     46     41      5
18 months   ki0047075b-MAL-ED          NEPAL                          <-3          224      3      0      3
18 months   ki0047075b-MAL-ED          NEPAL                          [-3--2)      224     15      5     10
18 months   ki0047075b-MAL-ED          NEPAL                          [-2--1)      224     52     28     24
18 months   ki0047075b-MAL-ED          NEPAL                          [-1-0)       224    108     87     21
18 months   ki0047075b-MAL-ED          PERU                           >=0          241     71     38     33
18 months   ki0047075b-MAL-ED          PERU                           <-3          241      4      0      4
18 months   ki0047075b-MAL-ED          PERU                           [-3--2)      241      8      0      8
18 months   ki0047075b-MAL-ED          PERU                           [-2--1)      241     38      3     35
18 months   ki0047075b-MAL-ED          PERU                           [-1-0)       241    120     38     82
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=0          253     97     59     38
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <-3          253      3      0      3
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [-3--2)      253     10      0     10
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [-2--1)      253     36      9     27
18 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [-1-0)       253    107     44     63
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=0          117     54     15     39
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <-3          117      0      0      0
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-3--2)      117      4      0      4
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-2--1)      117     17      2     15
18 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-1-0)       117     42      6     36
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=0          365     69     14     55
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          <-3          365     12      1     11
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          [-3--2)      365     30      0     30
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          [-2--1)      365    107     12     95
18 months   ki1000108-CMC-V-BCS-2002   INDIA                          [-1-0)       365    147     30    117
18 months   ki1000108-IRC              INDIA                          >=0          403     61     45     16
18 months   ki1000108-IRC              INDIA                          <-3          403     12      2     10
18 months   ki1000108-IRC              INDIA                          [-3--2)      403     41      8     33
18 months   ki1000108-IRC              INDIA                          [-2--1)      403    133     43     90
18 months   ki1000108-IRC              INDIA                          [-1-0)       403    156     80     76
18 months   ki1000109-EE               PAKISTAN                       >=0          360     33      7     26
18 months   ki1000109-EE               PAKISTAN                       <-3          360     47      0     47
18 months   ki1000109-EE               PAKISTAN                       [-3--2)      360     66      1     65
18 months   ki1000109-EE               PAKISTAN                       [-2--1)      360    114     12    102
18 months   ki1000109-EE               PAKISTAN                       [-1-0)       360    100     12     88
18 months   ki1000109-ResPak           PAKISTAN                       >=0            5      2      1      1
18 months   ki1000109-ResPak           PAKISTAN                       <-3            5      1      0      1
18 months   ki1000109-ResPak           PAKISTAN                       [-3--2)        5      0      0      0
18 months   ki1000109-ResPak           PAKISTAN                       [-2--1)        5      1      0      1
18 months   ki1000109-ResPak           PAKISTAN                       [-1-0)         5      1      0      1
18 months   ki1000304b-SAS-CompFeed    INDIA                          >=0          415     40     16     24
18 months   ki1000304b-SAS-CompFeed    INDIA                          <-3          415     23      0     23
18 months   ki1000304b-SAS-CompFeed    INDIA                          [-3--2)      415     44      1     43
18 months   ki1000304b-SAS-CompFeed    INDIA                          [-2--1)      415    156     34    122
18 months   ki1000304b-SAS-CompFeed    INDIA                          [-1-0)       415    152     73     79
18 months   ki1017093-NIH-Birth        BANGLADESH                     >=0           17      1      1      0
18 months   ki1017093-NIH-Birth        BANGLADESH                     <-3           17      0      0      0
18 months   ki1017093-NIH-Birth        BANGLADESH                     [-3--2)       17      3      0      3
18 months   ki1017093-NIH-Birth        BANGLADESH                     [-2--1)       17      9      0      9
18 months   ki1017093-NIH-Birth        BANGLADESH                     [-1-0)        17      4      1      3
18 months   ki1017093b-PROVIDE         BANGLADESH                     >=0          604     53     46      7
18 months   ki1017093b-PROVIDE         BANGLADESH                     <-3          604      4      0      4
18 months   ki1017093b-PROVIDE         BANGLADESH                     [-3--2)      604     98     19     79
18 months   ki1017093b-PROVIDE         BANGLADESH                     [-2--1)      604    251    139    112
18 months   ki1017093b-PROVIDE         BANGLADESH                     [-1-0)       604    198    148     50
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=0          715     93     79     14
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     <-3          715     23      3     20
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     [-3--2)      715    106     28     78
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     [-2--1)      715    271    137    134
18 months   ki1017093c-NIH-Crypto      BANGLADESH                     [-1-0)       715    222    151     71
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=0         1437    623    437    186
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <-3         1437     13      2     11
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-3--2)     1437     26      8     18
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-2--1)     1437    178     72    106
18 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-1-0)      1437    597    338    259
18 months   ki1101329-Keneba           GAMBIA                         >=0         1831    369    249    120
18 months   ki1101329-Keneba           GAMBIA                         <-3         1831     25      2     23
18 months   ki1101329-Keneba           GAMBIA                         [-3--2)     1831    108     17     91
18 months   ki1101329-Keneba           GAMBIA                         [-2--1)     1831    502    176    326
18 months   ki1101329-Keneba           GAMBIA                         [-1-0)      1831    827    446    381
18 months   ki1114097-CMIN             BRAZIL                         >=0          114     56     48      8
18 months   ki1114097-CMIN             BRAZIL                         <-3          114      1      0      1
18 months   ki1114097-CMIN             BRAZIL                         [-3--2)      114      2      0      2
18 months   ki1114097-CMIN             BRAZIL                         [-2--1)      114     18      8     10
18 months   ki1114097-CMIN             BRAZIL                         [-1-0)       114     37     23     14
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
18 months   ki1119695-PROBIT           BELARUS                        >=0         7475   4661   4347    314
18 months   ki1119695-PROBIT           BELARUS                        <-3         7475      0      0      0
18 months   ki1119695-PROBIT           BELARUS                        [-3--2)     7475      0      0      0
18 months   ki1119695-PROBIT           BELARUS                        [-2--1)     7475    531    245    286
18 months   ki1119695-PROBIT           BELARUS                        [-1-0)      7475   2283   1713    570
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=0         7262   1423   1037    386
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       <-3         7262    211      8    203
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)     7262    630    112    518
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)     7262   1901    691   1210
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)      7262   3097   1847   1250
18 months   ki1135781-COHORTS          GUATEMALA                      >=0          322     86     27     59
18 months   ki1135781-COHORTS          GUATEMALA                      <-3          322      5      0      5
18 months   ki1135781-COHORTS          GUATEMALA                      [-3--2)      322     33      0     33
18 months   ki1135781-COHORTS          GUATEMALA                      [-2--1)      322    101     11     90
18 months   ki1135781-COHORTS          GUATEMALA                      [-1-0)       322     97     23     74
18 months   ki1135781-COHORTS          PHILIPPINES                    >=0         2591    572    324    248
18 months   ki1135781-COHORTS          PHILIPPINES                    <-3         2591     50      5     45
18 months   ki1135781-COHORTS          PHILIPPINES                    [-3--2)     2591    143     13    130
18 months   ki1135781-COHORTS          PHILIPPINES                    [-2--1)     2591    621    159    462
18 months   ki1135781-COHORTS          PHILIPPINES                    [-1-0)      2591   1205    496    709
18 months   kiGH5241-JiVitA-3          BANGLADESH                     >=0         7295    786    566    220
18 months   kiGH5241-JiVitA-3          BANGLADESH                     <-3         7295    672     25    647
18 months   kiGH5241-JiVitA-3          BANGLADESH                     [-3--2)     7295   1688    294   1394
18 months   kiGH5241-JiVitA-3          BANGLADESH                     [-2--1)     7295   2659   1360   1299
18 months   kiGH5241-JiVitA-3          BANGLADESH                     [-1-0)      7295   1490   1081    409
18 months   kiGH5241-JiVitA-4          BANGLADESH                     >=0         1143    278    170    108
18 months   kiGH5241-JiVitA-4          BANGLADESH                     <-3         1143     72      0     72
18 months   kiGH5241-JiVitA-4          BANGLADESH                     [-3--2)     1143    160     19    141
18 months   kiGH5241-JiVitA-4          BANGLADESH                     [-2--1)     1143    343    149    194
18 months   kiGH5241-JiVitA-4          BANGLADESH                     [-1-0)      1143    290    173    117
24 months   ki0047075b-MAL-ED          BANGLADESH                     >=0          214     32     26      6
24 months   ki0047075b-MAL-ED          BANGLADESH                     <-3          214      4      0      4
24 months   ki0047075b-MAL-ED          BANGLADESH                     [-3--2)      214     31      4     27
24 months   ki0047075b-MAL-ED          BANGLADESH                     [-2--1)      214     76     24     52
24 months   ki0047075b-MAL-ED          BANGLADESH                     [-1-0)       214     71     28     43
24 months   ki0047075b-MAL-ED          BRAZIL                         >=0          176     99     85     14
24 months   ki0047075b-MAL-ED          BRAZIL                         <-3          176      0      0      0
24 months   ki0047075b-MAL-ED          BRAZIL                         [-3--2)      176      7      2      5
24 months   ki0047075b-MAL-ED          BRAZIL                         [-2--1)      176     18      8     10
24 months   ki0047075b-MAL-ED          BRAZIL                         [-1-0)       176     52     41     11
24 months   ki0047075b-MAL-ED          INDIA                          >=0          223     38     24     14
24 months   ki0047075b-MAL-ED          INDIA                          <-3          223      5      0      5
24 months   ki0047075b-MAL-ED          INDIA                          [-3--2)      223     22      6     16
24 months   ki0047075b-MAL-ED          INDIA                          [-2--1)      223     70     18     52
24 months   ki0047075b-MAL-ED          INDIA                          [-1-0)       223     88     36     52
24 months   ki0047075b-MAL-ED          NEPAL                          >=0          222     45     39      6
24 months   ki0047075b-MAL-ED          NEPAL                          <-3          222      3      0      3
24 months   ki0047075b-MAL-ED          NEPAL                          [-3--2)      222     15      4     11
24 months   ki0047075b-MAL-ED          NEPAL                          [-2--1)      222     52     27     25
24 months   ki0047075b-MAL-ED          NEPAL                          [-1-0)       222    107     78     29
24 months   ki0047075b-MAL-ED          PERU                           >=0          215     63     30     33
24 months   ki0047075b-MAL-ED          PERU                           <-3          215      3      0      3
24 months   ki0047075b-MAL-ED          PERU                           [-3--2)      215      7      0      7
24 months   ki0047075b-MAL-ED          PERU                           [-2--1)      215     37      3     34
24 months   ki0047075b-MAL-ED          PERU                           [-1-0)       215    105     27     78
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=0          242     91     49     42
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <-3          242      3      0      3
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [-3--2)      242      9      0      9
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [-2--1)      242     35      9     26
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [-1-0)       242    104     35     69
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=0          113     51     10     41
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <-3          113      0      0      0
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-3--2)      113      4      0      4
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-2--1)      113     17      2     15
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-1-0)       113     41      5     36
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=0          365     69      9     60
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <-3          365     12      1     11
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [-3--2)      365     30      0     30
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [-2--1)      365    107      6    101
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [-1-0)       365    147     12    135
24 months   ki1000108-IRC              INDIA                          >=0          404     61     38     23
24 months   ki1000108-IRC              INDIA                          <-3          404     13      2     11
24 months   ki1000108-IRC              INDIA                          [-3--2)      404     41      8     33
24 months   ki1000108-IRC              INDIA                          [-2--1)      404    133     35     98
24 months   ki1000108-IRC              INDIA                          [-1-0)       404    156     63     93
24 months   ki1000109-EE               PAKISTAN                       >=0          336     32      6     26
24 months   ki1000109-EE               PAKISTAN                       <-3          336     42      0     42
24 months   ki1000109-EE               PAKISTAN                       [-3--2)      336     60      1     59
24 months   ki1000109-EE               PAKISTAN                       [-2--1)      336    109     10     99
24 months   ki1000109-EE               PAKISTAN                       [-1-0)       336     93     10     83
24 months   ki1000304b-SAS-CompFeed    INDIA                          >=0           42      5      1      4
24 months   ki1000304b-SAS-CompFeed    INDIA                          <-3           42      1      0      1
24 months   ki1000304b-SAS-CompFeed    INDIA                          [-3--2)       42      4      0      4
24 months   ki1000304b-SAS-CompFeed    INDIA                          [-2--1)       42     14      3     11
24 months   ki1000304b-SAS-CompFeed    INDIA                          [-1-0)        42     18      8     10
24 months   ki1017093-NIH-Birth        BANGLADESH                     >=0           17      1      1      0
24 months   ki1017093-NIH-Birth        BANGLADESH                     <-3           17      0      0      0
24 months   ki1017093-NIH-Birth        BANGLADESH                     [-3--2)       17      3      0      3
24 months   ki1017093-NIH-Birth        BANGLADESH                     [-2--1)       17      9      0      9
24 months   ki1017093-NIH-Birth        BANGLADESH                     [-1-0)        17      4      1      3
24 months   ki1017093b-PROVIDE         BANGLADESH                     >=0          582     53     43     10
24 months   ki1017093b-PROVIDE         BANGLADESH                     <-3          582      4      0      4
24 months   ki1017093b-PROVIDE         BANGLADESH                     [-3--2)      582     95     15     80
24 months   ki1017093b-PROVIDE         BANGLADESH                     [-2--1)      582    241    116    125
24 months   ki1017093b-PROVIDE         BANGLADESH                     [-1-0)       582    189    128     61
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=0          634     74     59     15
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <-3          634     23      1     22
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [-3--2)      634     98     23     75
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [-2--1)      634    242    108    134
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [-1-0)       634    197    125     72
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=0          950    410    269    141
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <-3          950      9      1      8
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-3--2)      950     11      4      7
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-2--1)      950    129     50     79
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-1-0)       950    391    213    178
24 months   ki1101329-Keneba           GAMBIA                         >=0         1798    361    220    141
24 months   ki1101329-Keneba           GAMBIA                         <-3         1798     23      2     21
24 months   ki1101329-Keneba           GAMBIA                         [-3--2)     1798    108     14     94
24 months   ki1101329-Keneba           GAMBIA                         [-2--1)     1798    499    136    363
24 months   ki1101329-Keneba           GAMBIA                         [-1-0)      1798    807    373    434
24 months   ki1114097-CMIN             BRAZIL                         >=0          115     56     44     12
24 months   ki1114097-CMIN             BRAZIL                         <-3          115      1      0      1
24 months   ki1114097-CMIN             BRAZIL                         [-3--2)      115      2      0      2
24 months   ki1114097-CMIN             BRAZIL                         [-2--1)      115     18      8     10
24 months   ki1114097-CMIN             BRAZIL                         [-1-0)       115     38     23     15
24 months   ki1114097-CMIN             PERU                           >=0            8      7      6      1
24 months   ki1114097-CMIN             PERU                           <-3            8      0      0      0
24 months   ki1114097-CMIN             PERU                           [-3--2)        8      0      0      0
24 months   ki1114097-CMIN             PERU                           [-2--1)        8      0      0      0
24 months   ki1114097-CMIN             PERU                           [-1-0)         8      1      1      0
24 months   ki1114097-CONTENT          PERU                           >=0            2      1      1      0
24 months   ki1114097-CONTENT          PERU                           <-3            2      0      0      0
24 months   ki1114097-CONTENT          PERU                           [-3--2)        2      0      0      0
24 months   ki1114097-CONTENT          PERU                           [-2--1)        2      0      0      0
24 months   ki1114097-CONTENT          PERU                           [-1-0)         2      1      1      0
24 months   ki1119695-PROBIT           BELARUS                        >=0         2076   1295   1137    158
24 months   ki1119695-PROBIT           BELARUS                        <-3         2076      0      0      0
24 months   ki1119695-PROBIT           BELARUS                        [-3--2)     2076      0      0      0
24 months   ki1119695-PROBIT           BELARUS                        [-2--1)     2076    137     62     75
24 months   ki1119695-PROBIT           BELARUS                        [-1-0)      2076    644    449    195
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=0         1875    285    135    150
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <-3         1875     58      0     58
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)     1875    192     15    177
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)     1875    553    114    439
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)      1875    787    269    518
24 months   ki1135781-COHORTS          GUATEMALA                      >=0          311     70     15     55
24 months   ki1135781-COHORTS          GUATEMALA                      <-3          311      5      0      5
24 months   ki1135781-COHORTS          GUATEMALA                      [-3--2)      311     33      0     33
24 months   ki1135781-COHORTS          GUATEMALA                      [-2--1)      311    104      6     98
24 months   ki1135781-COHORTS          GUATEMALA                      [-1-0)       311     99     14     85
24 months   ki1135781-COHORTS          PHILIPPINES                    >=0         2520    549    221    328
24 months   ki1135781-COHORTS          PHILIPPINES                    <-3         2520     44      2     42
24 months   ki1135781-COHORTS          PHILIPPINES                    [-3--2)     2520    142      7    135
24 months   ki1135781-COHORTS          PHILIPPINES                    [-2--1)     2520    601     91    510
24 months   ki1135781-COHORTS          PHILIPPINES                    [-1-0)      2520   1184    306    878
24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=0            3      0      0      0
24 months   kiGH5241-JiVitA-3          BANGLADESH                     <-3            3      0      0      0
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [-3--2)        3      1      0      1
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [-2--1)        3      2      2      0
24 months   kiGH5241-JiVitA-3          BANGLADESH                     [-1-0)         3      0      0      0
24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=0         1005    238    130    108
24 months   kiGH5241-JiVitA-4          BANGLADESH                     <-3         1005     65      0     65
24 months   kiGH5241-JiVitA-4          BANGLADESH                     [-3--2)     1005    146     16    130
24 months   kiGH5241-JiVitA-4          BANGLADESH                     [-2--1)     1005    304    118    186
24 months   kiGH5241-JiVitA-4          BANGLADESH                     [-1-0)      1005    252    138    114


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
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
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
* agecat: 3 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
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
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
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
* agecat: 3 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 3 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 3 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3 months, studyid: ki1114097-CMIN, country: BANGLADESH
* agecat: 3 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 3 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 3 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 3 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 3 months, studyid: ki1135781-COHORTS, country: GUATEMALA
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
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
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
* agecat: 12 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 12 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 12 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 12 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 12 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 12 months, studyid: ki1135781-COHORTS, country: GUATEMALA
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
* agecat: 18 months, studyid: ki1135781-COHORTS, country: GUATEMALA
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
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
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

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots

```
## Warning: Removed 20 rows containing missing values (geom_errorbar).
```

![](/tmp/af4a3a0e-a857-4f6b-addf-a2bcbb1aa2ee/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->


```
## Warning: Removed 34 rows containing missing values (geom_errorbar).
```

![](/tmp/af4a3a0e-a857-4f6b-addf-a2bcbb1aa2ee/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


```
## Warning: Removed 4 rows containing missing values (geom_errorbar).
```

![](/tmp/af4a3a0e-a857-4f6b-addf-a2bcbb1aa2ee/REPORT_files/figure-html/plot_paf-1.png)<!-- -->


```
## Warning: Removed 4 rows containing missing values (geom_errorbar).
```

![](/tmp/af4a3a0e-a857-4f6b-addf-a2bcbb1aa2ee/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki1000109-EE               PAKISTAN                       >=0                  NA                0.2285714   0.0892714   0.3678715
3 months    ki1000109-EE               PAKISTAN                       <-3                  NA                0.8723404   0.7768088   0.9678720
3 months    ki1000109-EE               PAKISTAN                       [-3--2)              NA                0.8082192   0.7177851   0.8986533
3 months    ki1000109-EE               PAKISTAN                       [-2--1)              NA                0.6610169   0.5754944   0.7465395
3 months    ki1000109-EE               PAKISTAN                       [-1-0)               NA                0.5048544   0.4081698   0.6015390
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=0                  NA                0.0331384   0.0221834   0.0440934
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <-3                  NA                0.6818182   0.4871475   0.8764888
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-3--2)              NA                0.3750000   0.2380144   0.5119856
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-2--1)              NA                0.2434211   0.1951697   0.2916724
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-1-0)               NA                0.1023785   0.0832677   0.1214892
3 months    ki1101329-Keneba           GAMBIA                         >=0                  NA                0.0742706   0.0477953   0.1007458
3 months    ki1101329-Keneba           GAMBIA                         <-3                  NA                0.8076923   0.6561635   0.9592211
3 months    ki1101329-Keneba           GAMBIA                         [-3--2)              NA                0.7627119   0.6859337   0.8394900
3 months    ki1101329-Keneba           GAMBIA                         [-2--1)              NA                0.3450185   0.3049874   0.3850495
3 months    ki1101329-Keneba           GAMBIA                         [-1-0)               NA                0.1543779   0.1303353   0.1784205
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=0                  NA                0.0429238   0.0359174   0.0499302
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       <-3                  NA                0.8373786   0.8017446   0.8730127
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)              NA                0.5866441   0.5585820   0.6147063
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)              NA                0.3100798   0.2944933   0.3256663
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)               NA                0.1217241   0.1133092   0.1301391
3 months    ki1135781-COHORTS          INDIA                          >=0                  NA                0.0250000   0.0138994   0.0361006
3 months    ki1135781-COHORTS          INDIA                          <-3                  NA                0.8802817   0.8425234   0.9180400
3 months    ki1135781-COHORTS          INDIA                          [-3--2)              NA                0.4878049   0.4544146   0.5211952
3 months    ki1135781-COHORTS          INDIA                          [-2--1)              NA                0.1945060   0.1781750   0.2108370
3 months    ki1135781-COHORTS          INDIA                          [-1-0)               NA                0.0500808   0.0414890   0.0586726
3 months    ki1135781-COHORTS          PHILIPPINES                    >=0                  NA                0.0091743   0.0018660   0.0164826
3 months    ki1135781-COHORTS          PHILIPPINES                    <-3                  NA                0.7746479   0.6774461   0.8718496
3 months    ki1135781-COHORTS          PHILIPPINES                    [-3--2)              NA                0.5536723   0.4804258   0.6269188
3 months    ki1135781-COHORTS          PHILIPPINES                    [-2--1)              NA                0.2323651   0.2015748   0.2631555
3 months    ki1135781-COHORTS          PHILIPPINES                    [-1-0)               NA                0.0752533   0.0613428   0.0891637
3 months    kiGH5241-JiVitA-3          BANGLADESH                     >=0                  NA                0.1258041          NA          NA
3 months    kiGH5241-JiVitA-3          BANGLADESH                     <-3                  NA                0.9513699          NA          NA
3 months    kiGH5241-JiVitA-3          BANGLADESH                     [-3--2)              NA                0.7293137          NA          NA
3 months    kiGH5241-JiVitA-3          BANGLADESH                     [-2--1)              NA                0.2726514          NA          NA
3 months    kiGH5241-JiVitA-3          BANGLADESH                     [-1-0)               NA                0.0903075          NA          NA
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=0                  NA                0.1105318   0.0906825   0.1303811
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <-3                  NA                0.7619048   0.5796988   0.9441107
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-3--2)              NA                0.4545455   0.3073861   0.6017049
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-2--1)              NA                0.3978873   0.3409488   0.4548258
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-1-0)               NA                0.2053274   0.1789458   0.2317090
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=0                  NA                0.0849366   0.0730993   0.0967740
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <-3                  NA                0.9288889   0.8953050   0.9624728
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)              NA                0.7416201   0.7095548   0.7736854
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)              NA                0.4482916   0.4274855   0.4690976
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)               NA                0.2015259   0.1887727   0.2142791
6 months    ki1135781-COHORTS          PHILIPPINES                    >=0                  NA                0.0626058   0.0430713   0.0821402
6 months    ki1135781-COHORTS          PHILIPPINES                    <-3                  NA                0.8275862   0.7303551   0.9248174
6 months    ki1135781-COHORTS          PHILIPPINES                    [-3--2)              NA                0.7012987   0.6289990   0.7735984
6 months    ki1135781-COHORTS          PHILIPPINES                    [-2--1)              NA                0.3740686   0.3374497   0.4106874
6 months    ki1135781-COHORTS          PHILIPPINES                    [-1-0)               NA                0.1866252   0.1653273   0.2079231
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=0                  NA                0.1546961          NA          NA
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <-3                  NA                0.9549266          NA          NA
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [-3--2)              NA                0.7515866          NA          NA
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [-2--1)              NA                0.3190517          NA          NA
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [-1-0)               NA                0.1202843          NA          NA
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=0                  NA                0.1570636   0.1423297   0.1717975
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       <-3                  NA                0.9358491   0.9063471   0.9653510
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)              NA                0.7661188   0.7366185   0.7956192
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)              NA                0.5388369   0.5191333   0.5585406
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)               NA                0.2980904   0.2844083   0.3117725
12 months   ki1135781-COHORTS          INDIA                          >=0                  NA                0.1183673   0.0950113   0.1417234
12 months   ki1135781-COHORTS          INDIA                          <-3                  NA                0.9106383   0.8741631   0.9471135
12 months   ki1135781-COHORTS          INDIA                          [-3--2)              NA                0.6670747   0.6347576   0.6993917
12 months   ki1135781-COHORTS          INDIA                          [-2--1)              NA                0.4551821   0.4340914   0.4762728
12 months   ki1135781-COHORTS          INDIA                          [-1-0)               NA                0.2498948   0.2324885   0.2673012
12 months   ki1135781-COHORTS          PHILIPPINES                    >=0                  NA                0.2138047   0.1808279   0.2467815
12 months   ki1135781-COHORTS          PHILIPPINES                    <-3                  NA                0.8545455   0.7613536   0.9477373
12 months   ki1135781-COHORTS          PHILIPPINES                    [-3--2)              NA                0.7986577   0.7342582   0.8630573
12 months   ki1135781-COHORTS          PHILIPPINES                    [-2--1)              NA                0.5981735   0.5606781   0.6356689
12 months   ki1135781-COHORTS          PHILIPPINES                    [-1-0)               NA                0.3954041   0.3684235   0.4223847
12 months   kiGH5241-JiVitA-3          BANGLADESH                     >=0                  NA                0.1783784          NA          NA
12 months   kiGH5241-JiVitA-3          BANGLADESH                     <-3                  NA                0.9596354          NA          NA
12 months   kiGH5241-JiVitA-3          BANGLADESH                     [-3--2)              NA                0.7752632          NA          NA
12 months   kiGH5241-JiVitA-3          BANGLADESH                     [-2--1)              NA                0.3685415          NA          NA
12 months   kiGH5241-JiVitA-3          BANGLADESH                     [-1-0)               NA                0.1601423          NA          NA
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=0                  NA                0.2712579   0.2481557   0.2943601
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       <-3                  NA                0.9620853   0.9363133   0.9878572
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)              NA                0.8222222   0.7923656   0.8520789
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)              NA                0.6365071   0.6148831   0.6581311
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)               NA                0.4036164   0.3863360   0.4208968
18 months   ki1135781-COHORTS          PHILIPPINES                    >=0                  NA                0.4335664   0.3929468   0.4741861
18 months   ki1135781-COHORTS          PHILIPPINES                    <-3                  NA                0.9000000   0.8168297   0.9831703
18 months   ki1135781-COHORTS          PHILIPPINES                    [-3--2)              NA                0.9090909   0.8619637   0.9562181
18 months   ki1135781-COHORTS          PHILIPPINES                    [-2--1)              NA                0.7439614   0.7096282   0.7782945
18 months   ki1135781-COHORTS          PHILIPPINES                    [-1-0)               NA                0.5883817   0.5605900   0.6161735
18 months   kiGH5241-JiVitA-3          BANGLADESH                     >=0                  NA                0.2798982          NA          NA
18 months   kiGH5241-JiVitA-3          BANGLADESH                     <-3                  NA                0.9627976          NA          NA
18 months   kiGH5241-JiVitA-3          BANGLADESH                     [-3--2)              NA                0.8258294          NA          NA
18 months   kiGH5241-JiVitA-3          BANGLADESH                     [-2--1)              NA                0.4885295          NA          NA
18 months   kiGH5241-JiVitA-3          BANGLADESH                     [-1-0)               NA                0.2744966          NA          NA


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki1000109-EE               PAKISTAN                       NA                   NA                0.6329787   0.5841953   0.6817622
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1013942   0.0892314   0.1135569
3 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.2382185   0.2192133   0.2572237
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2095333   0.2027900   0.2162767
3 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.1886110   0.1791995   0.1980226
3 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1433322   0.1308057   0.1558588
3 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4031944          NA          NA
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1991852   0.1825264   0.2158439
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2945523   0.2851695   0.3039350
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2478261   0.2317157   0.2639364
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4254386          NA          NA
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.3769701   0.3675424   0.3863977
12 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.3829686   0.3709697   0.3949675
12 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.4361428   0.4174927   0.4547929
12 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4524409          NA          NA
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.4911870   0.4796882   0.5026858
18 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6152065   0.5964685   0.6339445
18 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.5440713          NA          NA


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level      estimate    ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  ----------  -----------
3 months    ki1000109-EE               PAKISTAN                       >=0                  >=0                1.0000000    1.000000     1.000000
3 months    ki1000109-EE               PAKISTAN                       <-3                  >=0                3.8164894    2.054705     7.088896
3 months    ki1000109-EE               PAKISTAN                       [-3--2)              >=0                3.5359589    1.902864     6.570624
3 months    ki1000109-EE               PAKISTAN                       [-2--1)              >=0                2.8919492    1.551017     5.392183
3 months    ki1000109-EE               PAKISTAN                       [-1-0)               >=0                2.2087379    1.166027     4.183887
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=0                  >=0                1.0000000    1.000000     1.000000
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <-3                  >=0               20.5748663   13.293254    31.845109
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-3--2)              >=0               11.3161765    6.914084    18.521016
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-2--1)              >=0                7.3455882    4.996021    10.800128
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-1-0)               >=0                3.0894215    2.113485     4.516013
3 months    ki1101329-Keneba           GAMBIA                         >=0                  >=0                1.0000000    1.000000     1.000000
3 months    ki1101329-Keneba           GAMBIA                         <-3                  >=0               10.8750000    7.269169    16.269483
3 months    ki1101329-Keneba           GAMBIA                         [-3--2)              >=0               10.2693705    7.090489    14.873441
3 months    ki1101329-Keneba           GAMBIA                         [-2--1)              >=0                4.6454270    3.193143     6.758229
3 months    ki1101329-Keneba           GAMBIA                         [-1-0)               >=0                2.0785879    1.408722     3.066985
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=0                  >=0                1.0000000    1.000000     1.000000
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       <-3                  >=0               19.5084941   16.480290    23.093121
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)              >=0               13.6671069   11.529376    16.201207
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)              >=0                7.2239604    6.089768     8.569392
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)               >=0                2.8358194    2.375163     3.385819
3 months    ki1135781-COHORTS          INDIA                          >=0                  >=0                1.0000000    1.000000     1.000000
3 months    ki1135781-COHORTS          INDIA                          <-3                  >=0               35.2112676   22.539634    55.006809
3 months    ki1135781-COHORTS          INDIA                          [-3--2)              >=0               19.5121951   12.450623    30.578851
3 months    ki1135781-COHORTS          INDIA                          [-2--1)              >=0                7.7802393    4.951521    12.224956
3 months    ki1135781-COHORTS          INDIA                          [-1-0)               >=0                2.0032310    1.244516     3.224493
3 months    ki1135781-COHORTS          PHILIPPINES                    >=0                  >=0                1.0000000    1.000000     1.000000
3 months    ki1135781-COHORTS          PHILIPPINES                    <-3                  >=0               84.4366197   37.696744   189.128875
3 months    ki1135781-COHORTS          PHILIPPINES                    [-3--2)              >=0               60.3502825   26.914090   135.325275
3 months    ki1135781-COHORTS          PHILIPPINES                    [-2--1)              >=0               25.3278008   11.294902    56.795311
3 months    ki1135781-COHORTS          PHILIPPINES                    [-1-0)               >=0                8.2026049    3.620749    18.582544
3 months    kiGH5241-JiVitA-3          BANGLADESH                     >=0                  >=0                1.0000000          NA           NA
3 months    kiGH5241-JiVitA-3          BANGLADESH                     <-3                  >=0                7.5623093          NA           NA
3 months    kiGH5241-JiVitA-3          BANGLADESH                     [-3--2)              >=0                5.7972149          NA           NA
3 months    kiGH5241-JiVitA-3          BANGLADESH                     [-2--1)              >=0                2.1672685          NA           NA
3 months    kiGH5241-JiVitA-3          BANGLADESH                     [-1-0)               >=0                0.7178421          NA           NA
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=0                  >=0                1.0000000    1.000000     1.000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <-3                  >=0                6.8930818    5.111300     9.295986
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-3--2)              >=0                4.1123499    2.839914     5.954907
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-2--1)              >=0                3.5997542    2.861200     4.528949
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-1-0)               >=0                1.8576320    1.489575     2.316631
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=0                  >=0                1.0000000    1.000000     1.000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <-3                  >=0               10.9362554    9.469760    12.629853
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)              >=0                8.7314500    7.545959    10.103185
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)              >=0                5.2779522    4.556919     6.113073
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)               >=0                2.3726615    2.035926     2.765091
6 months    ki1135781-COHORTS          PHILIPPINES                    >=0                  >=0                1.0000000    1.000000     1.000000
6 months    ki1135781-COHORTS          PHILIPPINES                    <-3                  >=0               13.2190121    9.471115    18.450023
6 months    ki1135781-COHORTS          PHILIPPINES                    [-3--2)              >=0               11.2018252    8.064430    15.559796
6 months    ki1135781-COHORTS          PHILIPPINES                    [-2--1)              >=0                5.9749869    4.308382     8.286281
6 months    ki1135781-COHORTS          PHILIPPINES                    [-1-0)               >=0                2.9809592    2.138291     4.155710
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=0                  >=0                1.0000000          NA           NA
6 months    kiGH5241-JiVitA-3          BANGLADESH                     <-3                  >=0                6.1729185          NA           NA
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [-3--2)              >=0                4.8584704          NA           NA
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [-2--1)              >=0                2.0624413          NA           NA
6 months    kiGH5241-JiVitA-3          BANGLADESH                     [-1-0)               >=0                0.7775521          NA           NA
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=0                  >=0                1.0000000    1.000000     1.000000
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       <-3                  >=0                5.9584085    5.396980     6.578240
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)              >=0                4.8777621    4.407389     5.398335
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)              >=0                3.4306927    3.102098     3.794095
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)               >=0                1.8978960    1.709687     2.106824
12 months   ki1135781-COHORTS          INDIA                          >=0                  >=0                1.0000000    1.000000     1.000000
12 months   ki1135781-COHORTS          INDIA                          <-3                  >=0                7.6933235    6.290311     9.409269
12 months   ki1135781-COHORTS          INDIA                          [-3--2)              >=0                5.6356308    4.599423     6.905287
12 months   ki1135781-COHORTS          INDIA                          [-2--1)              >=0                3.8455037    3.139989     4.709538
12 months   ki1135781-COHORTS          INDIA                          [-1-0)               >=0                2.1111804    1.712571     2.602568
12 months   ki1135781-COHORTS          PHILIPPINES                    >=0                  >=0                1.0000000    1.000000     1.000000
12 months   ki1135781-COHORTS          PHILIPPINES                    <-3                  >=0                3.9968504    3.308879     4.827863
12 months   ki1135781-COHORTS          PHILIPPINES                    [-3--2)              >=0                3.7354542    3.138752     4.445594
12 months   ki1135781-COHORTS          PHILIPPINES                    [-2--1)              >=0                2.7977564    2.368671     3.304571
12 months   ki1135781-COHORTS          PHILIPPINES                    [-1-0)               >=0                1.8493705    1.562344     2.189128
12 months   kiGH5241-JiVitA-3          BANGLADESH                     >=0                  >=0                1.0000000          NA           NA
12 months   kiGH5241-JiVitA-3          BANGLADESH                     <-3                  >=0                5.3797743          NA           NA
12 months   kiGH5241-JiVitA-3          BANGLADESH                     [-3--2)              >=0                4.3461722          NA           NA
12 months   kiGH5241-JiVitA-3          BANGLADESH                     [-2--1)              >=0                2.0660662          NA           NA
12 months   kiGH5241-JiVitA-3          BANGLADESH                     [-1-0)               >=0                0.8977677          NA           NA
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=0                  >=0                1.0000000    1.000000     1.000000
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       <-3                  >=0                3.5467549    3.243823     3.877976
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)              >=0                3.0311457    2.763107     3.325186
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)              >=0                2.3465016    2.140914     2.571832
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)               >=0                1.4879434    1.352659     1.636759
18 months   ki1135781-COHORTS          PHILIPPINES                    >=0                  >=0                1.0000000    1.000000     1.000000
18 months   ki1135781-COHORTS          PHILIPPINES                    <-3                  >=0                2.0758064    1.819852     2.367760
18 months   ki1135781-COHORTS          PHILIPPINES                    [-3--2)              >=0                2.0967742    1.883868     2.333743
18 months   ki1135781-COHORTS          PHILIPPINES                    [-2--1)              >=0                1.7159109    1.545747     1.904807
18 months   ki1135781-COHORTS          PHILIPPINES                    [-1-0)               >=0                1.3570740    1.221904     1.507197
18 months   kiGH5241-JiVitA-3          BANGLADESH                     >=0                  >=0                1.0000000          NA           NA
18 months   kiGH5241-JiVitA-3          BANGLADESH                     <-3                  >=0                3.4398133          NA           NA
18 months   kiGH5241-JiVitA-3          BANGLADESH                     [-3--2)              >=0                2.9504632          NA           NA
18 months   kiGH5241-JiVitA-3          BANGLADESH                     [-2--1)              >=0                1.7453827          NA           NA
18 months   kiGH5241-JiVitA-3          BANGLADESH                     [-1-0)               >=0                0.9807016          NA           NA


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki1000109-EE               PAKISTAN                       >=0                  NA                0.4044073   0.2696045   0.5392101
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=0                  NA                0.0682558   0.0554533   0.0810583
3 months    ki1101329-Keneba           GAMBIA                         >=0                  NA                0.1639480   0.1358688   0.1920272
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=0                  NA                0.1666095   0.1581240   0.1750951
3 months    ki1135781-COHORTS          INDIA                          >=0                  NA                0.1636110   0.1500617   0.1771603
3 months    ki1135781-COHORTS          PHILIPPINES                    >=0                  NA                0.1341579   0.1204797   0.1478361
3 months    kiGH5241-JiVitA-3          BANGLADESH                     >=0                  NA                0.2773902          NA          NA
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=0                  NA                0.0886533   0.0705035   0.1068032
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=0                  NA                0.2096156   0.1968759   0.2223553
6 months    ki1135781-COHORTS          PHILIPPINES                    >=0                  NA                0.1852203   0.1633636   0.2070770
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=0                  NA                0.2707425          NA          NA
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=0                  NA                0.2199065   0.2055620   0.2342509
12 months   ki1135781-COHORTS          INDIA                          >=0                  NA                0.2646013   0.2408881   0.2883144
12 months   ki1135781-COHORTS          PHILIPPINES                    >=0                  NA                0.2223381   0.1913574   0.2533188
12 months   kiGH5241-JiVitA-3          BANGLADESH                     >=0                  NA                0.2740625          NA          NA
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=0                  NA                0.2199291   0.1985569   0.2413013
18 months   ki1135781-COHORTS          PHILIPPINES                    >=0                  NA                0.1816400   0.1459670   0.2173131
18 months   kiGH5241-JiVitA-3          BANGLADESH                     >=0                  NA                0.2641731          NA          NA


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
3 months    ki1000109-EE               PAKISTAN                       >=0                  NA                0.6388956   0.3462092   0.8005533
3 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=0                  NA                0.6731725   0.5568461   0.7589637
3 months    ki1101329-Keneba           GAMBIA                         >=0                  NA                0.6882251   0.5604533   0.7788550
3 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=0                  NA                0.7951457   0.7599245   0.8251997
3 months    ki1135781-COHORTS          INDIA                          >=0                  NA                0.8674521   0.7941771   0.9146404
3 months    ki1135781-COHORTS          PHILIPPINES                    >=0                  NA                0.9359927   0.8589263   0.9709589
3 months    kiGH5241-JiVitA-3          BANGLADESH                     >=0                  NA                0.6879814          NA          NA
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=0                  NA                0.4450801   0.3527128   0.5242667
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=0                  NA                0.7116415   0.6704787   0.7476624
6 months    ki1135781-COHORTS          PHILIPPINES                    >=0                  NA                0.7473803   0.6584027   0.8131814
6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=0                  NA                0.6363843          NA          NA
12 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=0                  NA                0.5833526   0.5450542   0.6184270
12 months   ki1135781-COHORTS          INDIA                          >=0                  NA                0.6909215   0.6252583   0.7450791
12 months   ki1135781-COHORTS          PHILIPPINES                    >=0                  NA                0.5097828   0.4342839   0.5752058
12 months   kiGH5241-JiVitA-3          BANGLADESH                     >=0                  NA                0.6057422          NA          NA
18 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=0                  NA                0.4477502   0.4023885   0.4896688
18 months   ki1135781-COHORTS          PHILIPPINES                    >=0                  NA                0.2952505   0.2338702   0.3517132
18 months   kiGH5241-JiVitA-3          BANGLADESH                     >=0                  NA                0.4855486          NA          NA
